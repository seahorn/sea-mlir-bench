// Exported from SeaHorn (hash_ptr.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.ptr.nondet "nd_voidp" [0] : !sea.ptr<64> loc("_0"("seahorn/jobs/hash_ptr/aws_hash_ptr_harness.c":7:17))
  sea.br ^bb1
^bb1:
  sea.br ^bb2
^bb2:
  sea.br ^bb3
^bb3:
  sea.br ^bb4
^bb4:
  %v1 = sea.const 1 : i1
  sea.assume %v1
  sea.br ^bb5
^bb5:
  %v2 = sea.const 1 : i1
  %v3 = sea.const 1 : i1
  %v4 = sea.xor %v2, %v3 : i1
  sea.assume %v4
  sea.br ^bb6
^bb6:
  sea.br ^bb7
^bb7:
  %v5 = sea.const 0 : i1
  sea.assert %v5
  sea.halt
}
