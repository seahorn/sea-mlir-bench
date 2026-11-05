#!/usr/bin/env bash
# bench export copy of the stellar harness's run_scope.sh (EXPORT=1 path only):
# clang -> SeaHorn with the sea-mlir-export profile -> OUT/prog.mlir.
#   [SRC=file.c] run_scope.sh OUTDIR [-DKEY=VAL ...]   (default scope_port.c)
set -euo pipefail
# harness sources: stellar/harness/ in this repository (override with HERE)
HERE=${HERE:-$(cd "$(dirname "${BASH_SOURCE[0]}")/../../stellar/harness" && pwd)}
SEA=${SEA:?SEA=<seahorn install with the sea-mlir-export profile>}
OUT=$1; shift
mkdir -p "$OUT"
DEFS=("$@")
clang-18 -c -emit-llvm -D__SEAHORN__ -fdeclspec -O1 -Xclang -disable-llvm-optzns \
  -fgnu89-inline -m64 -g -I"$SEA/include" "${DEFS[@]}" \
  -o "$OUT/scope_port.bc" "$HERE/${SRC:-scope_port.c}"
rm -f "$OUT/prog.mlir" "$OUT/sea.log"
"$SEA/bin/sea" yama -y sea-mlir-export -y "$HERE/sea.yaml" --bound="${BOUND:-8}" \
  --horn-sea-mlir-out="$OUT/prog.mlir" ${SEA_EXTRA:-} "$OUT/scope_port.bc" > "$OUT/sea.log" 2>&1 \
  || { echo "export failed, see $OUT/sea.log" >&2; exit 1; }
