#!/usr/bin/env bash
# Run one FD-FRAG configuration: clang -> SeaHorn front end with the
# verify-c-common (vcc) settings -> sea-mlir export (prog.mlir) -> (caller
# runs sea-vc). Same pattern as run_scope.sh.
#   [MUT=name] run_frag.sh OUTDIR [-DKEY=VAL ...]
# MUT names a sed script in mutants/<name>.sed, applied to a copy of the
# pinned fd_tpu_reasm.c in OUTDIR; the harness includes that copy. The source
# tree is never modified. The script must change the file (checked).
set -euo pipefail
# harness sources: firedancer/harness/ in this repository (override with HERE)
HERE=${HERE:-$(cd "$(dirname "${BASH_SOURCE[0]}")/../../firedancer/harness" && pwd)}
SEA=${SEA:?SEA=<seahorn install with the sea-mlir-export profile>}
FD=${FD:?FD=<firedancer checkout at 37c658197b29deada95ea95a1afb04f7baea28fa>}
OUT=$(realpath -m "$1"); shift
mkdir -p "$OUT"
DEFS=("$@")
# SRC: harness file; TARGET: the Firedancer file mocks/mutants patch;
# MACRO: the harness's include macro for it (defaults: FD-FRAG)
SRC=${SRC:-reasm_frag.c}
TARGET=${TARGET:-disco/quic/fd_tpu_reasm.c}
MACRO=${MACRO:-REASM_C}
TBASE=$(basename "$TARGET")
# MOCKS="a b": mocks/<a>.sed ... (labelled environment mocks, see each file),
# applied first; then MUT. Each script must change the file (checked).
SCRIPTS=()
for m in ${MOCKS:-}; do SCRIPTS+=("$HERE/mocks/$m.sed"); done
# PROOFS="a": proofs/<a>.sed, proof overlays (inductive cuts), after mocks
for p in ${PROOFS:-}; do SCRIPTS+=("$HERE/proofs/$p.sed"); done
[[ -n "${MUT:-}" ]] && SCRIPTS+=("$HERE/mutants/$MUT.sed")
if (( ${#SCRIPTS[@]} )); then
  cp "$FD/src/$TARGET" "$OUT/$TBASE"
  for s in "${SCRIPTS[@]}"; do
    cp "$OUT/$TBASE" "$OUT/before.c"
    sed -i -f "$s" "$OUT/$TBASE"
    if cmp -s "$OUT/before.c" "$OUT/$TBASE"; then
      echo "$s did not apply" >&2; exit 2
    fi
  done
  rm -f "$OUT/before.c"
  diff "$FD/src/$TARGET" "$OUT/$TBASE" > "$OUT/applied.diff" || true
  DEFS+=("-D$MACRO=\"$OUT/$TBASE\"")
fi
# FD_DCHECK_STYLE=1: Firedancer's debug contracts become checks
clang-18 -c -emit-llvm -D__SEAHORN__ -fdeclspec -O1 -Xclang -disable-llvm-optzns \
  -fgnu89-inline -m64 -g -std=c17 -DFD_DCHECK_STYLE=1 \
  -I"$SEA/include" -I"$FD/src" -I"$FD/src/$(dirname "$TARGET")" -I"$HERE" "${DEFS[@]}" \
  -o "$OUT/harness.bc" "$HERE/$SRC"
rm -f "$OUT/prog.mlir" "$OUT/sea.log"
# bench export: SeaHorn sea-mlir-export profile (docs/sea-mlir-export.md)
"$SEA/bin/sea" yama -y sea-mlir-export -y "$HERE/sea.yaml" --bound="${BOUND:-8}" \
  --horn-sea-mlir-out="$OUT/prog.mlir" ${SEA_EXTRA:-} "$OUT/harness.bc" > "$OUT/sea.log" 2>&1 \
  || { echo "export failed, see $OUT/sea.log" >&2; exit 1; }
[[ -s "$OUT/prog.mlir" ]] || { echo "export failed, see $OUT/sea.log" >&2; exit 1; }
