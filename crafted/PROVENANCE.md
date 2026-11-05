# crafted: provenance

Crafted array benchmarks (bAnd, bAnd2, bOr, bOr2, mapavg, mapavg2, mapsum,
mapsum2, xor, xor2, and a bAnd select-size series bAnd_s10..s100) from a
verify-c-common fork
(https://github.com/danblitzhou/verify-c-common, commit 32e93ea,
`seahorn/jobs_bench/`, "feat(bench): add crafted arrays jobs from svcomp").
The programs are adaptations of SV-COMP array tasks; the fork has no
license file. They are distributed here under Apache-2.0 (`LICENSE`).

Copied from sea-mlir's corpus `array-crafted`
($SEA_BENCH_HOME/corpus/array-crafted); export command:

    cd <verify-c-common>/build
    sea yama --yforce -y seahorn/sea.yaml -y <fork>/seahorn/jobs_bench/<job>/sea.yaml fpf \
      --horn-bmc-engine=sea-mlir --horn-sea-mlir-out=<job>.mlir <job>.bc

(SeaHorn dev18; the job yaml sets bound 1000, horn-bv2-word-size 1). How
the bitcode and the _sNN variants were built is not recorded. Not
re-exported (costly).

Configuration: `sea-vc --lower --seam --widen-memory=4` (sea-mlir jobset
array-crafted).

Debug locations: file names in `loc(...)` are relative to the root of the
verify-c-common fork (`seahorn/jobs_bench/<job>/<file>.c`). Line 1 of each
SeaHorn-exported `.mlir` names the exported bitcode by its file name only.
