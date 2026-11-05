// Exported from SeaHorn (array_list_clear.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm3")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm4")
  %v2 = sea.const 40 : i64 loc("_0")
  %v3 = sea.alloca %v2 align 8 [2] : i64 -> !sea.ptr<64> loc("_0")
  %v4 = sea.nondet "nd_size_t" [3] : i64 loc("_1"("seahorn/lib/array_list_helper.c":26:24))
  %v5 = sea.ptr.index %v3 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_2"("seahorn/lib/array_list_helper.c":26:9))
  sea.br ^bb1
^bb1:
  %v6 = sea.store %v0[%v5], %v4 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":26:22)
  %v7 = sea.nondet "nd_size_t" [4] : i64 loc("_4"("seahorn/lib/array_list_helper.c":27:21))
  sea.br ^bb2
^bb2:
  %v8 = sea.nondet "nd_size_t" [5] : i64 loc("_6"("seahorn/lib/array_list_helper.c":28:18))
  sea.br ^bb3
^bb3:
  sea.br ^bb4
^bb4:
  %v9 = sea.const 0 : i64 loc("_9"("seahorn/lib/proof_allocators.c":21:15))
  %v10 = sea.icmp eq, %v4, %v9 : i64 loc("_9"("seahorn/lib/proof_allocators.c":21:15))
  %v11 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v10, ^bb8(%v11 : !sea.ptr<64>), ^bb5 loc("seahorn/lib/proof_allocators.c":21:10)
^bb5:
  %v12 = sea.nondet "nd_malloc_is_fail" [6] : i1 loc("_11"("seahorn/lib/sea_allocators.c":11:10))
  %v13 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v12, ^bb7(%v1, %v13 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb6 loc("seahorn/lib/sea_allocators.c":11:10)
^bb6:
  %v14 = sea.const 1 : i64 loc("malloc.i")
  %v15 = sea.mul %v4, %v14 : i64 loc("malloc.i")
  %v16 = sea.alloca %v15 align 16 [7] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb7(%v1, %v16 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb7(%v17 : !sea.mem<!sea.ptr<64>, i8>, %v18 : !sea.ptr<64>):
  %v19 = sea.memhavoc %v17[%v18], %v4 [8] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb8(%v18 : !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb8(%v20 : !sea.ptr<64>):
  sea.br ^bb9
^bb9:
  sea.br ^bb10
^bb10:
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  %v21 = sea.const 3 : i64 loc("_17"("seahorn/lib/array_list_helper.c":38:47))
  %v22 = sea.icmp ult, %v7, %v21 : i64 loc("_17"("seahorn/lib/array_list_helper.c":38:47))
  %v23 = sea.const 9223372036854775809 : i64 loc("_18"("seahorn/lib/array_list_helper.c":39:41))
  %v24 = sea.icmp ult, %v8, %v23 : i64 loc("_18"("seahorn/lib/array_list_helper.c":39:41))
  %v25 = sea.const 0 : i1 loc("_19"("seahorn/lib/array_list_helper.c":40:31))
  %v26 = sea.select %v22, %v24, %v25 : i1 loc("_19"("seahorn/lib/array_list_helper.c":40:31))
  sea.assume %v26 loc("seahorn/lib/array_list_helper.c":31:3)
  sea.br ^bb13
^bb13:
  sea.br ^bb14
^bb14:
  sea.br ^bb15
^bb15:
  %v27 = sea.mul %v8, %v7 : i64 loc("_23"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v28 = sea.umulo %v8, %v7 : i64 loc("_23"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v28, ^bb16, ^bb17 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb16:
  sea.br ^bb17 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb17:
  %v29 = sea.const 1 : i1 loc("_27"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v30 = sea.xor %v28, %v29 : i1 loc("_27"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb18
^bb18:
  %v31 = sea.icmp uge, %v4, %v27 : i64 loc("_29"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb19
^bb19:
  sea.cond_br %v10, ^bb24, ^bb20 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb20:
  sea.br ^bb21
^bb21:
  sea.br ^bb22
^bb22:
  sea.br ^bb23
^bb23:
  %v32 = sea.ptr.null : !sea.ptr<64> loc("_37"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v33 = sea.ptr.cmp ne, %v20, %v32 : !sea.ptr<64> loc("_37"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb27(%v33 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb24:
  sea.br ^bb25
^bb25:
  %v34 = sea.ptr.null : !sea.ptr<64> loc("_33"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v35 = sea.ptr.cmp eq, %v20, %v34 : !sea.ptr<64> loc("_33"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v36 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v35, ^bb26, ^bb27(%v36 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb26:
  %v37 = sea.const 1 : i1
  sea.br ^bb27(%v37 : i1)
^bb27(%v38 : i1):
  sea.br ^bb28
^bb28:
  %v39 = sea.const 0 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v40 = sea.select %v30, %v31, %v39 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v41 = sea.and %v40, %v38 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v42 = sea.const 0 : i64 loc("_40")
  %v43 = sea.icmp ne, %v7, %v42 : i64 loc("_40")
  %v44 = sea.const 0 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v45 = sea.select %v41, %v43, %v44 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.assume %v45 loc("seahorn/jobs/array_list_clear/aws_array_list_clear_harness.c":19:5)
  sea.br ^bb29
^bb29:
  %v46 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("aws-c-common/include/aws/common/array_list.inl":299:9))
  %v47 = sea.ptr.cmp eq, %v20, %v46 : !sea.ptr<64> loc(".not.i.i"("aws-c-common/include/aws/common/array_list.inl":299:9))
  sea.cond_br %v47, ^bb31(%v8 : i64), ^bb30 loc("aws-c-common/include/aws/common/array_list.inl":299:9)
^bb30:
  %v48 = sea.const 0 : i64
  sea.br ^bb31(%v48 : i64)
^bb31(%v49 : i64):
  sea.br ^bb32
^bb32:
  sea.br ^bb33
^bb33:
  sea.br ^bb34
^bb34:
  %v50 = sea.mul %v49, %v7 : i64 loc("_47"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v51 = sea.umulo %v49, %v7 : i64 loc("_47"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v51, ^bb35, ^bb36 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb35:
  sea.br ^bb36 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb36:
  %v52 = sea.const 1 : i1 loc("_51"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v53 = sea.xor %v51, %v52 : i1 loc("_51"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb37
^bb37:
  %v54 = sea.icmp uge, %v4, %v50 : i64 loc("_53"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb38
^bb38:
  sea.cond_br %v10, ^bb43, ^bb39 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb39:
  sea.br ^bb40
^bb40:
  sea.br ^bb41
^bb41:
  sea.br ^bb42
^bb42:
  %v55 = sea.ptr.null : !sea.ptr<64> loc("_60"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v56 = sea.ptr.cmp ne, %v20, %v55 : !sea.ptr<64> loc("_60"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb46(%v56 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb43:
  sea.br ^bb44
^bb44:
  %v57 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v47, ^bb45, ^bb46(%v57 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb45:
  %v58 = sea.const 1 : i1
  sea.br ^bb46(%v58 : i1)
^bb46(%v59 : i1):
  sea.br ^bb47
^bb47:
  %v60 = sea.const 0 : i1 loc("or.cond.i15.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v61 = sea.select %v53, %v54, %v60 : i1 loc("or.cond.i15.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v62 = sea.and %v61, %v59 : i1 loc("or.cond3.i16.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v63 = sea.const 0 : i1 loc("spec.select8"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v64 = sea.select %v62, %v43, %v63 : i1 loc("spec.select8"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb48
^bb48:
  sea.br ^bb49
^bb49:
  sea.br ^bb50
^bb50:
  sea.cond_br %v51, ^bb51, ^bb52 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb51:
  sea.br ^bb52 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb52:
  sea.br ^bb53
^bb53:
  sea.br ^bb54
^bb54:
  sea.cond_br %v10, ^bb59, ^bb55 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb55:
  sea.br ^bb56
^bb56:
  sea.br ^bb57
^bb57:
  sea.br ^bb58
^bb58:
  %v65 = sea.ptr.null : !sea.ptr<64> loc("_74"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v66 = sea.ptr.cmp ne, %v20, %v65 : !sea.ptr<64> loc("_74"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb62(%v66 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb59:
  sea.br ^bb60
^bb60:
  %v67 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v47, ^bb61, ^bb62(%v67 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb61:
  %v68 = sea.const 1 : i1
  sea.br ^bb62(%v68 : i1)
^bb62(%v69 : i1):
  sea.br ^bb63
^bb63:
  %v70 = sea.and %v61, %v69 : i1 loc("or.cond3.i21.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.cond_br %v70, ^bb65, ^bb64 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb64:
  sea.br ^bb68 loc("seahorn/jobs/array_list_clear/aws_array_list_clear_harness.c":28:5)
^bb65:
  %v71 = sea.const 0 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v72 = sea.icmp eq, %v7, %v71 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  sea.cond_br %v72, ^bb68, ^bb66 loc("seahorn/jobs/array_list_clear/aws_array_list_clear_harness.c":28:5)
^bb66:
  %v73 = sea.const 0 : i64 loc("_79"("seahorn/jobs/array_list_clear/aws_array_list_clear_harness.c":29:5))
  %v74 = sea.icmp eq, %v49, %v73 : i64 loc("_79"("seahorn/jobs/array_list_clear/aws_array_list_clear_harness.c":29:5))
  sea.cond_br %v74, ^bb67, ^bb68 loc("seahorn/jobs/array_list_clear/aws_array_list_clear_harness.c":29:5)
^bb67:
  %v75 = sea.const 1 : i1 loc("seahorn/jobs/array_list_clear/aws_array_list_clear_harness.c":33:5)
  %v76 = sea.const 1 : i1 loc("seahorn/jobs/array_list_clear/aws_array_list_clear_harness.c":33:5)
  %v77 = sea.xor %v75, %v76 : i1 loc("seahorn/jobs/array_list_clear/aws_array_list_clear_harness.c":33:5)
  sea.assume %v77 loc("seahorn/jobs/array_list_clear/aws_array_list_clear_harness.c":33:5)
  sea.br ^bb68 loc("seahorn/jobs/array_list_clear/aws_array_list_clear_harness.c":33:5)
^bb68:
  sea.br ^bb69
^bb69:
  %v78 = sea.const 0 : i1
  sea.assert %v78
  sea.halt
}
