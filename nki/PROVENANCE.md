# nki: provenance

Kernels: aws-neuron/nki-library (https://github.com/aws-neuron/nki-library)
at ad2f1b921d8e5949fa3b9a186e5f9130269353dc (Apache-2.0), loaded unchanged
(or with a named source mutation) by the NK-SHIM harness: a fake `nki`
package that traces a kernel into a `sea.program` with symbolic tensor
contents (written for sea-mlir's application studies; not included here).
No SeaHorn: the harness writes sea MLIR directly.

All files are copied (not regenerated) from the harness's output:

- `sweep-<probe>-<shape>-<case>`: `sweep/<probe>/<shape>/<case>.mlir`
  from `sweep.py` (small-instance structural sweep; scaled
  tile constants pmax=2, fmax=1 / P=2, HT=2): probes gather
  (gather_probe.py --claim all), dyn (dyn_add_probe.py), scatter
  (scatter_probe.py); cases good (proof), nopre* (precondition dropped),
  mut-* (kernel mutants). `harness-expected` is the sweep's structural
  expectation (equivalent mutants expect unsat).
- `gather-hw-<shape>-all-<case>`: `nki/hw-*-all/` from
  `run_gather.py --claim all` (hardware tile constants;
  scaling probes). The removed `mut-row-stride` case is left out.
- `widthof-blowup-*` (tag `blowup-regression`):
  the widthOf regression set (SeaM widthOf blowup on dyn-add M4H4 and the
  seam-wide widthOf path on scatter K4 int8).

Configuration: `sea-vc --lower --seam` (no memory widening), as the harness
ran it.

Debug locations: the harness emits no file locations.
