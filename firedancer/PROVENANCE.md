# firedancer: provenance

Code under test: Firedancer (https://github.com/firedancer-io/firedancer)
at 37c658197b29deada95ea95a1afb04f7baea28fa, Apache-2.0.
Harnesses: written for sea-mlir's application studies, in `harness/` here
(the C harnesses, `mutants/`, `proofs/`, `mocks/` sed scripts, `sea.yaml`
with the unroll bound 8).

## Groups (job name prefix)

| prefix | harness | what | remarks |
|---|---|---|---|
| `frag-<cfg>-K<k>` | reasm_frag.c | FD-FRAG: fd_tpu_reasm fragment / cancel spec, K steps (K <= 2; reach / mutant configs up to their shortest violating K) | mock `no-orig`; per-job `--ptr-mode=address` (pointer/offset conversions) |
| `step-<cfg>` | reasm_step.c | FD-FRAG inductive step, split into claims / Inv / verify_state per operation | |
| `txn-<cfg>`, `txn-pf-<cfg>` | txn_parse.c | TX-PARSE: fd_txn_parse_core; bounded configs and proof mode (`pf-`, inductive cut overlays `txn-*-cut`, discharge `txn-reads` / `txn-writes`) | |
| `hpack-<cfg>` | hpack_{huff,skip,rd}.c | HPACK: nghttp2 Huffman contract (H), fd_hpack_skip invariant (C3), fd_hpack_rd_next (C1/C2) | exported with `--horn-sea-mlir-allow-uninit-globals` |
| `h2fc-<cfg>` | h2fc_step.c | h2 / gRPC flow-control step per frame kind vs RFC 9113 6.9 ghost windows | gRPC callbacks extracted verbatim from fd_grpc_client.c; rbuf no-data overlay |
| `h2fc-blowup-<x>` | h2fc_step.c | SeaM VC-generation blowup repro inputs (tag `blowup-regression`) | copied, old export (see below) |

Tags: `proof` (expected unsat by the harness), `reach` (vacuity / reachability
checks, sat), `mutant` (mutant or historical revert applied, see `mutant:`),
`blowup-regression`.

## Export (all jobs except h2fc-blowup-*)

Re-exported 2026-11-04 with SeaHorn's sea-mlir export profile (seahorn
branch sea-mlir at 1312254b1142e781ff5eda66a5c7255fd47a1e2c,
`share/seahorn/profiles/sea-mlir-export.yaml`), clang 18.1.3:

    clang-18 -c -emit-llvm -D__SEAHORN__ -fdeclspec -O1 -Xclang -disable-llvm-optzns \
      -fgnu89-inline -m64 -g -std=c17 -DFD_DCHECK_STYLE=1 [-DFD_H2_HAS_SOCKETS=0] \
      -I<copies> -I<seahorn>/include -I<fd>/src ... <defines> -o harness.bc harness/<file>.c
    sea yama -y sea-mlir-export -y harness/sea.yaml --bound=8 \
      --horn-sea-mlir-out=<job>.mlir [--horn-sea-mlir-allow-uninit-globals] harness.bc

`tools/export/run_{frag,hpack,h2fc}.sh` are the harness scripts with only the
SeaHorn step changed (the original used verify-c-common's configured
`sea.yaml` with `--horn-bmc-engine=sea-mlir`); mutants, mocks and proof
overlays are sed scripts applied to copies of the Firedancer files (each
must change its file). `tools/export/export_apps.py` takes the job tables
(defines, mutant, expectation) from the harness sweeps (`sweep.py`,
`step_sweep.py`, `txn_sweep.py`, `hpack_sweep.py`, `h2fc_sweep.py`; not
included) and
records per job in `manifest.yaml`: `export.env` (SRC, TARGET, MOCKS,
PROOFS, PATCHES, MUT), `export.defines`, bound, and the `.mlir` sha256.

## h2fc-blowup-*

Copied from an earlier export (the h2fc ablation set): produced by
the original run_h2fc.sh (verify-c-common sea.yaml settings) from
h2fc_step.c with these ablation switches: tx-proof-overlay (OP 4, ring
copies overlaid), tx-reach-ring / -off0 (OP 4, 38 symbolic memmoves; ring
offset 0), rx-proof / -off0 / -nosplit / -ns1 (OP 5 RX DATA; ablations),
rx-end (OP 5 end-of-step reach, sat). They were >900 s / 20-30 GB under SeaM
before sea-mlir 6f76741 (row grouping).

## Debug locations

File names in `loc(...)` are relative paths:

- harness files: `firedancer/harness/<file>` (this repository);
- Firedancer sources: `src/...`, relative to the Firedancer root (`..`
  components resolved);
- per-job copies made by the export scripts (Firedancer files with a mutant,
  mock or proof overlay applied, and the extracted `grpc_fc_cb.c`):
  `OUT/<file>`, OUT being the script's output directory.

Line and column numbers are as exported. Line 1 of each SeaHorn-exported
`.mlir` names the exported bitcode by its file name only.
