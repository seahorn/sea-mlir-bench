// Exported from SeaHorn (array_list_clean_up.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm1")
  %v1 = sea.nondet "nd_size_t" [1] : i64 loc("_0"("seahorn/lib/array_list_helper.c":26:24))
  sea.br ^bb1
^bb1:
  %v2 = sea.nondet "nd_size_t" [2] : i64 loc("_2"("seahorn/lib/array_list_helper.c":27:21))
  sea.br ^bb2
^bb2:
  %v3 = sea.nondet "nd_size_t" [3] : i64 loc("_4"("seahorn/lib/array_list_helper.c":28:18))
  sea.br ^bb3
^bb3:
  sea.br ^bb4
^bb4:
  %v4 = sea.const 0 : i64 loc("_7"("seahorn/lib/proof_allocators.c":21:15))
  %v5 = sea.icmp eq, %v1, %v4 : i64 loc("_7"("seahorn/lib/proof_allocators.c":21:15))
  %v6 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v5, ^bb8(%v6 : !sea.ptr<64>), ^bb5 loc("seahorn/lib/proof_allocators.c":21:10)
^bb5:
  %v7 = sea.nondet "nd_malloc_is_fail" [4] : i1 loc("_9"("seahorn/lib/sea_allocators.c":11:10))
  %v8 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v7, ^bb7(%v0, %v8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb6 loc("seahorn/lib/sea_allocators.c":11:10)
^bb6:
  %v9 = sea.const 1 : i64 loc("malloc.i")
  %v10 = sea.mul %v1, %v9 : i64 loc("malloc.i")
  %v11 = sea.alloca %v10 align 16 [5] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb7(%v0, %v11 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb7(%v12 : !sea.mem<!sea.ptr<64>, i8>, %v13 : !sea.ptr<64>):
  %v14 = sea.memhavoc %v12[%v13], %v1 [6] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb8(%v13 : !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb8(%v15 : !sea.ptr<64>):
  sea.br ^bb9
^bb9:
  sea.br ^bb10
^bb10:
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  %v16 = sea.const 3 : i64 loc("_15"("seahorn/lib/array_list_helper.c":38:47))
  %v17 = sea.icmp ult, %v2, %v16 : i64 loc("_15"("seahorn/lib/array_list_helper.c":38:47))
  %v18 = sea.const 9223372036854775809 : i64 loc("_16"("seahorn/lib/array_list_helper.c":39:41))
  %v19 = sea.icmp ult, %v3, %v18 : i64 loc("_16"("seahorn/lib/array_list_helper.c":39:41))
  %v20 = sea.const 0 : i1 loc("_17"("seahorn/lib/array_list_helper.c":40:31))
  %v21 = sea.select %v17, %v19, %v20 : i1 loc("_17"("seahorn/lib/array_list_helper.c":40:31))
  sea.assume %v21 loc("seahorn/lib/array_list_helper.c":31:3)
  sea.br ^bb13
^bb13:
  sea.br ^bb14
^bb14:
  sea.br ^bb15
^bb15:
  %v22 = sea.mul %v3, %v2 : i64 loc("_21"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v23 = sea.umulo %v3, %v2 : i64 loc("_21"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v23, ^bb16, ^bb17 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb16:
  sea.br ^bb17 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb17:
  %v24 = sea.const 1 : i1 loc("_25"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v25 = sea.xor %v23, %v24 : i1 loc("_25"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb18
^bb18:
  %v26 = sea.icmp uge, %v1, %v22 : i64 loc("_27"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb19
^bb19:
  sea.cond_br %v5, ^bb24, ^bb20 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb20:
  sea.br ^bb21
^bb21:
  sea.br ^bb22
^bb22:
  sea.br ^bb23
^bb23:
  %v27 = sea.ptr.null : !sea.ptr<64> loc("_35"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v28 = sea.ptr.cmp ne, %v15, %v27 : !sea.ptr<64> loc("_35"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb27(%v28 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb24:
  sea.br ^bb25
^bb25:
  %v29 = sea.ptr.null : !sea.ptr<64> loc("_31"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v30 = sea.ptr.cmp eq, %v15, %v29 : !sea.ptr<64> loc("_31"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v31 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v30, ^bb26, ^bb27(%v31 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb26:
  %v32 = sea.const 1 : i1
  sea.br ^bb27(%v32 : i1)
^bb27(%v33 : i1):
  sea.br ^bb28
^bb28:
  %v34 = sea.const 0 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v35 = sea.select %v25, %v26, %v34 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v36 = sea.and %v35, %v33 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v37 = sea.const 0 : i64 loc("_38")
  %v38 = sea.icmp ne, %v2, %v37 : i64 loc("_38")
  %v39 = sea.const 0 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v40 = sea.select %v36, %v38, %v39 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.assume %v40 loc("seahorn/jobs/array_list_clean_up/aws_array_list_clean_up_harness.c":18:5)
  sea.br ^bb29
^bb29:
  sea.br ^bb30
^bb30:
  %v41 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":114:24))
  %v42 = sea.ptr.cmp eq, %v15, %v41 : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":114:24))
  sea.cond_br %v42, ^bb34, ^bb31 loc("aws-c-common/include/aws/common/array_list.inl":114:9)
^bb31:
  sea.br ^bb32
^bb32:
  sea.br ^bb33
^bb33:
  sea.br ^bb34 loc("aws-c-common/include/aws/common/array_list.inl":116:5)
^bb34:
  sea.br ^bb35
^bb35:
  sea.br ^bb36
^bb36:
  sea.br ^bb37
^bb37:
  sea.br ^bb38
^bb38:
  sea.br ^bb39
^bb39:
  sea.br ^bb40
^bb40:
  sea.br ^bb41
^bb41:
  sea.br ^bb42
^bb42:
  sea.br ^bb43
^bb43:
  sea.br ^bb44
^bb44:
  %v43 = sea.const 1 : i1 loc("seahorn/jobs/array_list_clean_up/aws_array_list_clean_up_harness.c":24:5)
  %v44 = sea.const 1 : i1 loc("seahorn/jobs/array_list_clean_up/aws_array_list_clean_up_harness.c":24:5)
  %v45 = sea.xor %v43, %v44 : i1 loc("seahorn/jobs/array_list_clean_up/aws_array_list_clean_up_harness.c":24:5)
  sea.assume %v45 loc("seahorn/jobs/array_list_clean_up/aws_array_list_clean_up_harness.c":24:5)
  sea.br ^bb45 loc("seahorn/jobs/array_list_clean_up/aws_array_list_clean_up_harness.c":24:5)
^bb45:
  sea.br ^bb46
^bb46:
  %v46 = sea.const 0 : i1
  sea.assert %v46
  sea.halt
}
