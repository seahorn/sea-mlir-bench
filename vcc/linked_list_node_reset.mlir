// Exported from SeaHorn (linked_list_node_reset.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm2")
  %v1 = sea.const 16 : i64 loc("_0")
  %v2 = sea.alloca %v1 align 8 [1] : i64 -> !sea.ptr<64> loc("_0")
  %v3 = sea.const 0 : i8 loc("aws-c-common/include/aws/common/linked_list.inl":20:5)
  %v4 = sea.const 16 : i64 loc("aws-c-common/include/aws/common/linked_list.inl":20:5)
  %v5 = sea.memset %v0[%v2], %v3, %v4 inplace align 8 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/include/aws/common/linked_list.inl":20:5)
  %v6 = sea.nondet "nd_size_t" [2] : i64 loc("_1"("seahorn/lib/utils.c":27:16))
  %v7 = sea.const 16 : i64 loc("_2"("seahorn/lib/utils.c":28:14))
  %v8 = sea.icmp ult, %v6, %v7 : i64 loc("_2"("seahorn/lib/utils.c":28:14))
  sea.assume %v8 loc("seahorn/lib/utils.c":28:5)
  %v9 = sea.ptr.index %v2 [%v6] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_3"("seahorn/lib/utils.c":29:5))
  %v10 = sea.const 1 : i64 loc("_4"("seahorn/lib/utils.c":29:5))
  %v11 = sea.ptr.dereferenceable %v9, %v10 : !sea.ptr<64>, i64 loc("_4"("seahorn/lib/utils.c":29:5))
  sea.cond_br %v11, ^bb1, ^bb3
^bb1:
  %v12 = sea.load %v5[%v9] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_6"("seahorn/lib/utils.c":29:5))
  %v13 = sea.const 0 : i8 loc("_7"("seahorn/lib/utils.c":29:5))
  %v14 = sea.icmp eq, %v12, %v13 : i8 loc("_7"("seahorn/lib/utils.c":29:5))
  %v15 = sea.const 1 : i64 loc("_8"("seahorn/lib/utils.c":29:5))
  %v16 = sea.ptr.dereferenceable %v9, %v15 : !sea.ptr<64>, i64 loc("_8"("seahorn/lib/utils.c":29:5))
  sea.cond_br %v16, ^bb2, ^bb3
^bb2:
  %v17 = sea.const 1 : i1 loc("seahorn/lib/utils.c":29:5)
  %v18 = sea.xor %v14, %v17 : i1 loc("seahorn/lib/utils.c":29:5)
  sea.assume %v18 loc("seahorn/lib/utils.c":29:5)
  sea.br ^bb3 loc("seahorn/lib/utils.c":29:5)
^bb3:
  sea.br ^bb4
^bb4:
  %v19 = sea.const 0 : i1
  sea.assert %v19
  sea.halt
}
