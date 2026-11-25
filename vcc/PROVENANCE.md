# vcc: provenance

verify-c-common (https://github.com/seahorn/verify-c-common, commit
a3e6b0b97435e030320a4d1d443b36a03429c539): SeaHorn proof harnesses for
aws-c-common (https://github.com/awslabs/aws-c-common, commit
b0fe4ee08f754784cf39918e53f922bbd751941b, Apache-2.0). 228 jobs from
`seahorn/jobs` and `seahorn/jobs_unsafe` (tag `unsafe`), and six re-exports
of four of them (below).

Copied from sea-mlir's corpus `vcc-pi2` ($SEA_BENCH_HOME/corpus/vcc-pi2,
`bench.py export vcc-pi2`, 2026-11-02), not re-exported: SeaHorn dev18
build, verify-c-common's configured
`seahorn/sea.yaml` (+ the job's own sea.yaml), the bounded pipeline `fpf`,
`--horn-bmc-engine=sea-mlir --horn-unify-assumes=false`, MemSSA optimize on,
`sea.ptr.index` exported. The exact command and bitcode sha256 per job are in
`manifest.yaml` (`export:`).

## Global initializers as fills (`*-fill`, `*-fill-erase`)

Six jobs re-export four of the jobs above from the same bitcode
(`bitcode-sha256` as theirs) with a newer SeaHorn (dev18 at
67474bf6d58fe923f5cbb5947def9e794ce613fe), which writes a global
initializer as one `sea.mem.fill` (aws-c-common's `s_tolower_table`, 256
bytes) instead of a chain of byte stores:
`array_eq_ignore_case-fill`, `array_eq_ignore_case2-fill`,
`byte_cursor_eq_ignore_case-fill`, `byte_cursor_eq_ignore_case2-fill`, and,
with `--horn-sea-mlir-mem-ssa=erase` (the seaimp form: a region variable and
`seaimp.mem.fill`), `array_eq_ignore_case-fill-erase` and
`byte_cursor_eq_ignore_case2-fill-erase`. They are tagged `mem-fill`; the
original jobs stay as they are. The expanded SeaHorn command of each export
is its `export.command`. A counter rule of the manifest pins the form of the
lowering: under `--seam` the fill stays one `mfill` term
(`vc.expand-mem-fill` kept=1 expanded=0).

Their verdicts, tiers and times were established on 2026-11-24 with sea-mlir
fd6d8a7 (sea-vc sha256 af61104be0ba...), two jobs in parallel, not by the family's
`established` run.

Configuration: `--lower --seam --widen-memory=8` (SeaHorn's word size 8, as
in sea-mlir's vcc jobsets).

License note: aws-c-common is Apache-2.0. The verify-c-common repository
has no license file; its harnesses are written by the SeaHorn team (the
verify-c-common authors), adapting aws-c-common's CBMC proofs (Apache-2.0).

Debug locations: file names in `loc(...)` are as exported, relative to the
verify-c-common root (`seahorn/jobs/...`, `seahorn/lib/...`,
`aws-c-common/...`). Line 1 of each SeaHorn-exported `.mlir` names the
exported bitcode by its file name only.
