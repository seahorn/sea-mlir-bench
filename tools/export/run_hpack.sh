#!/usr/bin/env bash
# Run one HPACK proof configuration (hpack_*.c): copy the HPACK sources into
# OUTDIR, apply proof overlays and an optional mutant to the copies, then
# clang -> SeaHorn front end (vcc settings) -> sea-mlir export (prog.mlir).
# The caller runs sea-vc. Same pipeline as run_frag.sh, but several files
# can be patched: the harness includes the copies (-I OUTDIR comes first;
# fd_hpack.c finds its private header next to itself).
#   SRC=hpack_skip.c PATCHES="fd_hpack.c:hpack-skip-cut" [MUT=file:name] \
#     run_hpack.sh OUTDIR [-DKEY=VAL ...]
# PATCHES / MUT entries are FILE:NAME, FILE one of the copied files, NAME a
# sed script proofs/NAME.sed (PATCHES) or mutants/NAME.sed (MUT). Each script
# must change its file (checked).
set -euo pipefail
# harness sources: firedancer/harness/ in this repository (override with HERE)
HERE=${HERE:-$(cd "$(dirname "${BASH_SOURCE[0]}")/../../firedancer/harness" && pwd)}
SEA=${SEA:?SEA=<seahorn install with the sea-mlir-export profile>}
FD=${FD:?FD=<firedancer checkout at 37c658197b29deada95ea95a1afb04f7baea28fa>}
H2="$FD/src/waltz/h2"
OUT=$(realpath -m "$1"); shift
mkdir -p "$OUT"
DEFS=("$@")
SRC=${SRC:?SRC=hpack_*.c}
FILES=(fd_hpack.c fd_hpack_private.h nghttp2_hd_huffman.c nghttp2_hd_huffman_data.c)
for f in "${FILES[@]}"; do cp "$H2/$f" "$OUT/$f"; done
apply() {  # FILE SCRIPT
  local f="$OUT/$1" s="$2"
  [[ -f "$f" ]] || { echo "unknown file $1" >&2; exit 2; }
  cp "$f" "$OUT/before.tmp"
  sed -i -f "$s" "$f"
  if cmp -s "$OUT/before.tmp" "$f"; then echo "$s did not apply to $1" >&2; exit 2; fi
  rm -f "$OUT/before.tmp"
}
for p in ${PATCHES:-}; do apply "${p%%:*}" "$HERE/proofs/${p#*:}.sed"; done
for m in ${MUT:-}; do apply "${m%%:*}" "$HERE/mutants/${m#*:}.sed"; done
: > "$OUT/applied.diff"
for f in "${FILES[@]}"; do diff "$H2/$f" "$OUT/$f" >> "$OUT/applied.diff" || true; done
clang-18 -c -emit-llvm -D__SEAHORN__ -fdeclspec -O1 -Xclang -disable-llvm-optzns \
  -fgnu89-inline -m64 -g -std=c17 -DFD_DCHECK_STYLE=1 \
  -I"$OUT" -I"$SEA/include" -I"$FD/src" -I"$H2" -I"$HERE" "${DEFS[@]}" \
  -o "$OUT/harness.bc" "$HERE/$SRC"
rm -f "$OUT/prog.mlir" "$OUT/sea.log"
# bench export: SeaHorn sea-mlir-export profile (docs/sea-mlir-export.md)
"$SEA/bin/sea" yama -y sea-mlir-export -y "$HERE/sea.yaml" --bound="${BOUND:-8}" \
  --horn-sea-mlir-out="$OUT/prog.mlir" ${SEA_EXTRA:-} "$OUT/harness.bc" > "$OUT/sea.log" 2>&1 \
  || { echo "export failed, see $OUT/sea.log" >&2; exit 1; }
[[ -s "$OUT/prog.mlir" ]] || { echo "export failed, see $OUT/sea.log" >&2; exit 1; }
