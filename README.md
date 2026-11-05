# sea-mlir-bench

Public benchmark set for [sea-mlir](https://github.com/seahorn/sea-mlir)'s
VC generator (`sea-vc`): verification tasks as `sea.program` MLIR files with
expected verdicts. Benchmarks are kept outside the sea-mlir repository (they
do not ship with it) and are connected to a sea-mlir checkout on demand.

## Layout

    <family>/<job>.mlir        one verification task (main as sea.program)
    <family>/manifest.yaml     per job: expected verdict, tier, time, tags,
                               per-job sea-vc args, export provenance
    <family>/PROVENANCE.md     where the jobs come from, how they were made
    <family>/harness/          harness sources (application families)
    tools/export/              the scripts that exported the application families

| family | jobs | source | license |
|---|---|---|---|
| `vcc` | aws-c-common proof harnesses (verify-c-common) | awslabs/aws-c-common | Apache-2.0 |
| `firedancer` | FD-FRAG, FD-FRAG step, TX-PARSE, HPACK, H2FC (+ blowup repros) | firedancer-io/firedancer | Apache-2.0 (+ nghttp2 MIT parts) |
| `stellar` | C ports of stellar-core components (ST-SCOPE, TTL, PART, CONF, FEE, VAL) | stellar/stellar-core | Apache-2.0 |
| `nki` | NKI kernels (gather, dynamic-shape add, scatter-add) traced into sea.program by the NK-SHIM harness | aws-neuron/nki-library | Apache-2.0 |
| `crafted` | crafted array benchmarks (bAnd, bOr, mapsum, mapavg, xor), adapted from SV-COMP tasks | verify-c-common fork | Apache-2.0 |

`bench.py suites` (in sea-mlir) prints the current counts per tier and verdict.

## Manifest

```yaml
family: firedancer
license: ...
sources: {...}                 # upstream repositories and commits
defaults:                      # the configuration the verdicts were established with
  args: [--lower, --seam, --widen-memory=4]
  timeout: 900                 # seconds
  mem: 16384                   # MB (RLIMIT_AS)
established: {...}             # sea-mlir commit, sea-vc sha256, date, par, config
jobs:
  frag-spec-K1:
    expected: unsat            # sat | unsat | unknown-ok (not solved when established)
    tier: quick                # smoke <5 s | quick <60 s | full <900 s | hard (tracked, not gated)
    time: 12.3                 # wall seconds when established
    harness-expected: unsat    # the harness author's expectation (when the harness states one)
    tags: [proof]              # proof | reach | mutant | blowup-regression | inb-regression | unsafe
    args: [--ptr-mode=address] # appended to the configuration's args
    mutant: ...                # the mutant applied (sed script under harness/mutants)
    export: {...}              # how the .mlir was produced
    sha256: ...                # of the .mlir
```

Expected verdicts are observations of sea-mlir's default configuration
(`--lower --seam`, `--widen-memory=4` for the C applications, `=8` for vcc)
at the commit recorded under `established`, cross-checked against the
harness authors' expectations. A `mutant` job is a deliberately broken
variant of the code under test (expected `sat`, unless the mutant is
equivalent on the bounded harness).

## Use with sea-mlir

In a sea-mlir checkout (needs `just` and Python 3 with PyYAML):

```sh
# once per machine: where the benchmark repos are (URL or local path)
cat > bench/sources.local.yaml <<EOF
sources:
  public: https://github.com/seahorn/sea-mlir-bench.git
EOF
just bench-connect          # -> bench/work/public
just bench-list             # families, tiers, verdicts
just bench-smoke            # the smoke gate
just bench-gate quick       # quick gate (smoke + quick jobs)
```

Gate records are committed in sea-mlir under `bench/gates/`. See
sea-mlir's `docs/Benchmarks.md` and `python3 utils/bench.py --agent`.

## Licenses

The `.mlir` files are compiled from third-party code together with harness
code (assumptions, assertions, ghost state) written for sea-mlir. Each file
is a derived work of the upstream code it contains and is distributed under
that code's license:

- `vcc/`: aws-c-common, Apache-2.0 (`LICENSE`, `NOTICE-aws-c-common`);
  harnesses from seahorn/verify-c-common, Apache-2.0.
- `nki/`: aws-neuron/nki-library (ad2f1b9), Apache-2.0
  (`LICENSE-nki-library`, `NOTICE-nki-library`); traced by the NK-SHIM
  harness (Apache-2.0).
- `crafted/`: array benchmarks adapted from SV-COMP tasks in a
  verify-c-common fork; distributed under Apache-2.0 (`LICENSE`).
- `firedancer/`: Firedancer, Apache-2.0 (`LICENSE-firedancer`,
  `NOTICE-firedancer`); the HPACK jobs also contain nghttp2's Huffman decoder
  (MIT, reproduced in `NOTICE-firedancer`).
- `stellar/`: hand ports of stellar-core C++ to C (modified versions in the
  sense of Apache-2.0 section 4), Apache-2.0 (`LICENSE`, `COPYING-stellar-core`).

Harness sources, mutants, proof overlays, manifests and tools in this
repository: Apache-2.0 (`LICENSE`).
See `NOTICE`.
