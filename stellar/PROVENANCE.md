# stellar: provenance

Code under test: hand ports to C of stellar-core
(https://github.com/stellar/stellar-core) at
a1f4383b588f56c01c72fe3318eb9d87fe09053e, Apache-2.0. The ports
(`harness/*_port.c`, `harness/ttl_commute.c`) are modified versions of the
stellar-core sources named in each file's header (file:line cited), with
ghost-state specifications and mutants written for verification. License
decision: a hand port is a derived work of the Apache-2.0 original; Apache-2.0
section 4 allows distributing it with the license, the attribution notices,
and a statement of the changes (`NOTICE`, `harness/PORT.md`, file headers).
Hence the public set.

| prefix | port | stellar-core source |
|---|---|---|
| `scope-` | scope_port.c | src/ledger/LedgerEntryScope.{h,cpp} (ST-SCOPE) |
| `ttl-` | ttl_merge_port.c | src/transactions/ParallelApplyUtils.cpp:577-626 (ST-TTL) |
| `comm-` | ttl_commute.c | ParallelApplyUtils.cpp RO TTL bump commutation (ST-TTL-COMM) |
| `part-` | txset_port.c | src/herder/ParallelTxSetBuilder.cpp (ST-PART) |
| `conf-` | conflicts_port.c | ParallelTxSetBuilder.cpp:568-698 prepareBuilderTxs (ST-CONF) |
| `fee-` | fee_port.c | src/herder/TxSetFrame.cpp:2311-2338, src/util/numeric.h (ST-FEE) |
| `val-` | validator_port.c | src/herder/TxSetFrame.cpp:1981-2025 (ST-VAL) |

Each `<prefix><cfg>-K<k>` job is one configuration at size K (calls,
threads, transactions, fees or clusters; see `harness/PORT.md` and the file
headers), for K = 1..kmin (counterexample configurations: unsat below the
shortest violating K, sat at it) or K = 1..3 (4 for part / val) for proofs,
as in the harness sweep (`sweep.py`, not included).

## Export

Re-exported 2026-11-04 with SeaHorn's sea-mlir export profile (seahorn
sea-mlir branch 1312254b1142e781ff5eda66a5c7255fd47a1e2c), clang 18.1.3:

    clang-18 -c -emit-llvm -D__SEAHORN__ -fdeclspec -O1 -Xclang -disable-llvm-optzns \
      -fgnu89-inline -m64 -g -I<seahorn>/include <defines> -o port.bc harness/<port>.c
    sea yama -y sea-mlir-export -y harness/sea.yaml --bound=8 --horn-sea-mlir-out=<job>.mlir port.bc

(`tools/export/run_scope.sh`, `tools/export/export_apps.py`). The original
harness verified with `sea-vc --lower --seam` (no memory widening); the
manifest's default adds `--widen-memory=4` like the other C applications.

`part-inb-dead-unroll` (tag `inb-regression`) is copied from an earlier
export (`stellar-txset-inb-dead-unroll.mlir`): an early txset_port.c (-DN=2)
exported with verify-c-common's settings, bound 8, whose dead unrolled loop
copies made sea-vc's static A-INB check report violations on infeasible
paths.

## Debug locations

File names in `loc(...)` are the ports' paths in this repository
(`stellar/harness/<file>`); line and column numbers are as exported. Line 1
of each SeaHorn-exported `.mlir` names the exported bitcode by its file name
only.
