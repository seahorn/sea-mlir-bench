# vcc: provenance

verify-c-common (https://github.com/seahorn/verify-c-common, commit
a3e6b0b97435e030320a4d1d443b36a03429c539): SeaHorn proof harnesses for
aws-c-common (https://github.com/awslabs/aws-c-common, commit
b0fe4ee08f754784cf39918e53f922bbd751941b, Apache-2.0). 228 jobs from
`seahorn/jobs` and `seahorn/jobs_unsafe` (tag `unsafe`).

Copied from sea-mlir's corpus `vcc-pi2` ($SEA_BENCH_HOME/corpus/vcc-pi2,
`bench.py export vcc-pi2`, 2026-11-02), not re-exported: SeaHorn dev18
build, verify-c-common's configured
`seahorn/sea.yaml` (+ the job's own sea.yaml), the bounded pipeline `fpf`,
`--horn-bmc-engine=sea-mlir --horn-unify-assumes=false`, MemSSA optimize on,
`sea.ptr.index` exported. The exact command and bitcode sha256 per job are in
`manifest.yaml` (`export:`).

Configuration: `--lower --seam --widen-memory=8` (SeaHorn's word size 8, as
in sea-mlir's vcc jobsets).

License note: aws-c-common is Apache-2.0. The verify-c-common repository
has no license file; its harnesses are written by the SeaHorn team (the
verify-c-common authors), adapting aws-c-common's CBMC proofs (Apache-2.0).

Debug locations: file names in `loc(...)` are as exported, relative to the
verify-c-common root (`seahorn/jobs/...`, `seahorn/lib/...`,
`aws-c-common/...`). Line 1 of each SeaHorn-exported `.mlir` names the
exported bitcode by its file name only.
