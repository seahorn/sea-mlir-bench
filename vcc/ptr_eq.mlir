// Exported from SeaHorn (ptr_eq.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.ptr.nondet "nd_voidp" [0] : !sea.ptr<64> loc("_0"("seahorn/jobs/ptr_eq/aws_ptr_eq_harness.c":10:16))
  %v1 = sea.ptr.nondet "nd_voidp" [1] : !sea.ptr<64> loc("_1"("seahorn/jobs/ptr_eq/aws_ptr_eq_harness.c":11:16))
  %v2 = sea.const 1 : i1 loc("seahorn/jobs/ptr_eq/aws_ptr_eq_harness.c":13:5)
  %v3 = sea.const 1 : i1 loc("seahorn/jobs/ptr_eq/aws_ptr_eq_harness.c":13:5)
  %v4 = sea.xor %v2, %v3 : i1 loc("seahorn/jobs/ptr_eq/aws_ptr_eq_harness.c":13:5)
  sea.assume %v4 loc("seahorn/jobs/ptr_eq/aws_ptr_eq_harness.c":13:5)
  sea.br ^bb1
^bb1:
  %v5 = sea.const 0 : i1
  sea.assert %v5
  sea.halt
}
