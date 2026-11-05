// Exported from SeaHorn (array_list_init_dynamic.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm4")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm5")
  %v2 = sea.mem.nondet "region.17" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm6")
  %v3 = sea.const 40 : i64 loc("_0")
  %v4 = sea.alloca %v3 align 8 [3] : i64 -> !sea.ptr<64> loc("_0")
  %v5 = sea.nondet "nd_size_t" [4] : i64 loc("_1"("seahorn/lib/array_list_helper.c":26:24))
  %v6 = sea.ptr.index %v4 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_2"("seahorn/lib/array_list_helper.c":26:9))
  sea.br ^bb1
^bb1:
  %v7 = sea.store %v0[%v6], %v5 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":26:22)
  %v8 = sea.nondet "nd_size_t" [5] : i64 loc("_4"("seahorn/lib/array_list_helper.c":27:21))
  sea.br ^bb2
^bb2:
  %v9 = sea.nondet "nd_size_t" [6] : i64 loc("_6"("seahorn/lib/array_list_helper.c":28:18))
  sea.br ^bb3
^bb3:
  sea.br ^bb4
^bb4:
  %v10 = sea.const 0 : i64 loc("_9"("seahorn/lib/proof_allocators.c":21:15))
  %v11 = sea.icmp eq, %v5, %v10 : i64 loc("_9"("seahorn/lib/proof_allocators.c":21:15))
  sea.cond_br %v11, ^bb8, ^bb5 loc("seahorn/lib/proof_allocators.c":21:10)
^bb5:
  %v12 = sea.nondet "nd_malloc_is_fail" [7] : i1 loc("_11"("seahorn/lib/sea_allocators.c":11:10))
  %v13 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v12, ^bb7(%v1, %v13 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb6 loc("seahorn/lib/sea_allocators.c":11:10)
^bb6:
  %v14 = sea.const 1 : i64 loc("malloc.i")
  %v15 = sea.mul %v5, %v14 : i64 loc("malloc.i")
  %v16 = sea.alloca %v15 align 16 [8] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb7(%v1, %v16 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb7(%v17 : !sea.mem<!sea.ptr<64>, i8>, %v18 : !sea.ptr<64>):
  %v19 = sea.memhavoc %v17[%v18], %v5 [9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb8 loc("seahorn/lib/proof_allocators.c":21:10)
^bb8:
  sea.br ^bb9
^bb9:
  sea.br ^bb10
^bb10:
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  %v20 = sea.const 3 : i64 loc("_16"("seahorn/lib/array_list_helper.c":38:47))
  %v21 = sea.icmp ult, %v8, %v20 : i64 loc("_16"("seahorn/lib/array_list_helper.c":38:47))
  %v22 = sea.const 9223372036854775809 : i64 loc("_17"("seahorn/lib/array_list_helper.c":39:41))
  %v23 = sea.icmp ult, %v9, %v22 : i64 loc("_17"("seahorn/lib/array_list_helper.c":39:41))
  %v24 = sea.const 0 : i1 loc("_18"("seahorn/lib/array_list_helper.c":40:31))
  %v25 = sea.select %v21, %v23, %v24 : i1 loc("_18"("seahorn/lib/array_list_helper.c":40:31))
  sea.assume %v25 loc("seahorn/lib/array_list_helper.c":31:3)
  %v26 = sea.nondet "nd_size_t" [10] : i64 loc("_19"("seahorn/jobs/array_list_init_dynamic/aws_array_list_init_dynamic_harness.c":22:24))
  %v27 = sea.nondet "nd_size_t" [11] : i64 loc("_20"("seahorn/jobs/array_list_init_dynamic/aws_array_list_init_dynamic_harness.c":23:38))
  %v28 = sea.const 18446744073709551615 : i64 loc("_21"("seahorn/jobs/array_list_init_dynamic/aws_array_list_init_dynamic_harness.c":27:26))
  %v29 = sea.add %v26, %v28 : i64 loc("_21"("seahorn/jobs/array_list_init_dynamic/aws_array_list_init_dynamic_harness.c":27:26))
  %v30 = sea.const 2 : i64 loc("_22"("seahorn/jobs/array_list_init_dynamic/aws_array_list_init_dynamic_harness.c":27:26))
  %v31 = sea.icmp ult, %v29, %v30 : i64 loc("_22"("seahorn/jobs/array_list_init_dynamic/aws_array_list_init_dynamic_harness.c":27:26))
  sea.assume %v31 loc("seahorn/jobs/array_list_init_dynamic/aws_array_list_init_dynamic_harness.c":27:5)
  %v32 = sea.const 9223372036854775809 : i64 loc("_23"("seahorn/jobs/array_list_init_dynamic/aws_array_list_init_dynamic_harness.c":28:36))
  %v33 = sea.icmp ult, %v27, %v32 : i64 loc("_23"("seahorn/jobs/array_list_init_dynamic/aws_array_list_init_dynamic_harness.c":28:36))
  sea.assume %v33 loc("seahorn/jobs/array_list_init_dynamic/aws_array_list_init_dynamic_harness.c":28:5)
  %v34 = sea.const 0 : i64 loc(".not2.i.i"("aws-c-common/include/aws/common/array_list.inl":26:5))
  %v35 = sea.icmp eq, %v26, %v34 : i64 loc(".not2.i.i"("aws-c-common/include/aws/common/array_list.inl":26:5))
  %v36 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":26:5)
  %v37 = sea.xor %v35, %v36 : i1 loc("aws-c-common/include/aws/common/array_list.inl":26:5)
  sea.assume %v37 loc("aws-c-common/include/aws/common/array_list.inl":26:5)
  sea.br ^bb13
^bb13:
  %v38 = sea.mul %v27, %v26 : i64 loc("_25"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v39 = sea.umulo %v27, %v26 : i64 loc("_25"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v39, ^bb61, ^bb14 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb14:
  %v40 = sea.const 0 : i64 loc(".not4.i.i"("aws-c-common/include/aws/common/array_list.inl":35:25))
  %v41 = sea.icmp eq, %v38, %v40 : i64 loc(".not4.i.i"("aws-c-common/include/aws/common/array_list.inl":35:25))
  %v42 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":35:9)
  sea.cond_br %v41, ^bb22(%v42 : !sea.ptr<64>), ^bb15 loc("aws-c-common/include/aws/common/array_list.inl":35:9)
^bb15:
  %v43 = sea.nondet "nd_malloc_is_fail" [12] : i1 loc("_29"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v43, ^bb17, ^bb16 loc("seahorn/lib/sea_allocators.c":11:10)
^bb16:
  %v44 = sea.const 1 : i64 loc("malloc30.i")
  %v45 = sea.mul %v38, %v44 : i64 loc("malloc30.i")
  %v46 = sea.alloca %v45 align 16 [13] : i64 -> !sea.ptr<64> loc("malloc30.i")
  %v47 = sea.memhavoc %v2[%v46], %v38 [14] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb18(%v46 : !sea.ptr<64>) loc("seahorn/lib/allocator_override.c":19:7)
^bb17:
  %v48 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/allocator_override.c":21:3)
  sea.br ^bb18(%v48 : !sea.ptr<64>) loc("seahorn/lib/allocator_override.c":21:3)
^bb18(%v49 : !sea.ptr<64>):
  sea.br ^bb19
^bb19:
  sea.br ^bb20
^bb20:
  sea.cond_br %v43, ^bb62, ^bb21 loc("aws-c-common/include/aws/common/array_list.inl":37:13)
^bb21:
  sea.br ^bb22(%v49 : !sea.ptr<64>)
^bb22(%v50 : !sea.ptr<64>):
  sea.br ^bb23
^bb23:
  sea.br ^bb24
^bb24:
  sea.br ^bb25
^bb25:
  sea.cond_br %v41, ^bb28, ^bb26 loc("aws-c-common/include/aws/common/array_list.inl":49:5)
^bb26:
  sea.br ^bb27
^bb27:
  %v51 = sea.ptr.null : !sea.ptr<64> loc(".not6.i.i"("aws-c-common/include/aws/common/array_list.inl":49:5))
  %v52 = sea.ptr.cmp eq, %v50, %v51 : !sea.ptr<64> loc(".not6.i.i"("aws-c-common/include/aws/common/array_list.inl":49:5))
  %v53 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":49:5)
  %v54 = sea.xor %v52, %v53 : i1 loc("aws-c-common/include/aws/common/array_list.inl":49:5)
  sea.assume %v54 loc("aws-c-common/include/aws/common/array_list.inl":49:5)
  sea.br ^bb28 loc("aws-c-common/include/aws/common/array_list.inl":49:5)
^bb28:
  sea.br ^bb29
^bb29:
  sea.br ^bb30
^bb30:
  sea.br ^bb31
^bb31:
  sea.br ^bb32
^bb32:
  sea.br ^bb33
^bb33:
  sea.cond_br %v41, ^bb38, ^bb34 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb34:
  sea.br ^bb35
^bb35:
  sea.br ^bb36
^bb36:
  sea.br ^bb37
^bb37:
  %v55 = sea.ptr.null : !sea.ptr<64> loc("_52"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v56 = sea.ptr.cmp ne, %v50, %v55 : !sea.ptr<64> loc("_52"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb41(%v56 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb38:
  sea.br ^bb39
^bb39:
  %v57 = sea.ptr.null : !sea.ptr<64> loc("_48"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v58 = sea.ptr.cmp eq, %v50, %v57 : !sea.ptr<64> loc("_48"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v59 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v58, ^bb40, ^bb41(%v59 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb40:
  %v60 = sea.const 1 : i1
  sea.br ^bb41(%v60 : i1)
^bb41(%v61 : i1):
  sea.br ^bb42
^bb42:
  %v62 = sea.const 0 : i64 loc("_55")
  %v63 = sea.icmp ne, %v26, %v62 : i64 loc("_55")
  %v64 = sea.const 0 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v65 = sea.select %v61, %v63, %v64 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb43
^bb43:
  sea.br ^bb44
^bb44:
  sea.br ^bb45
^bb45:
  sea.br ^bb46
^bb46:
  sea.br ^bb47
^bb47:
  sea.cond_br %v41, ^bb53, ^bb48 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb48:
  sea.br ^bb49
^bb49:
  sea.br ^bb50
^bb50:
  sea.br ^bb51
^bb51:
  sea.br ^bb52
^bb52:
  %v66 = sea.ptr.null : !sea.ptr<64> loc(".not"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v67 = sea.ptr.cmp eq, %v50, %v66 : !sea.ptr<64> loc(".not"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.cond_br %v67, ^bb56, ^bb59 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb53:
  sea.br ^bb54
^bb54:
  %v68 = sea.ptr.null : !sea.ptr<64> loc("_62"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v69 = sea.ptr.cmp eq, %v50, %v68 : !sea.ptr<64> loc("_62"("aws-c-common/include/aws/common/array_list.inl":93:26))
  sea.cond_br %v69, ^bb57, ^bb55 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb55:
  sea.br ^bb56
^bb56:
  sea.br ^bb73 loc("seahorn/jobs/array_list_init_dynamic/aws_array_list_init_dynamic_harness.c":33:9)
^bb57:
  sea.br ^bb58
^bb58:
  sea.br ^bb59
^bb59:
  sea.cond_br %v35, ^bb73, ^bb60 loc("seahorn/jobs/array_list_init_dynamic/aws_array_list_init_dynamic_harness.c":33:9)
^bb60:
  %v70 = sea.mul %v27, %v26 : i64 loc("_68"("seahorn/jobs/array_list_init_dynamic/aws_array_list_init_dynamic_harness.c":37:9))
  %v71 = sea.icmp eq, %v38, %v70 : i64 loc("_69"("seahorn/jobs/array_list_init_dynamic/aws_array_list_init_dynamic_harness.c":37:9))
  %v72 = sea.const 1 : i1 loc("seahorn/jobs/array_list_init_dynamic/aws_array_list_init_dynamic_harness.c":37:9)
  %v73 = sea.xor %v71, %v72 : i1 loc("seahorn/jobs/array_list_init_dynamic/aws_array_list_init_dynamic_harness.c":37:9)
  sea.assume %v73 loc("seahorn/jobs/array_list_init_dynamic/aws_array_list_init_dynamic_harness.c":37:9)
  sea.br ^bb73 loc("seahorn/jobs/array_list_init_dynamic/aws_array_list_init_dynamic_harness.c":37:9)
^bb61:
  sea.br ^bb62 loc("aws-c-common/include/aws/common/array_list.inl":31:9)
^bb62:
  sea.br ^bb63
^bb63:
  sea.br ^bb64
^bb64:
  sea.br ^bb65
^bb65:
  sea.br ^bb66
^bb66:
  sea.br ^bb67
^bb67:
  sea.br ^bb68
^bb68:
  sea.br ^bb69
^bb69:
  sea.br ^bb70
^bb70:
  sea.br ^bb71
^bb71:
  sea.br ^bb72
^bb72:
  %v74 = sea.const 1 : i1 loc("seahorn/jobs/array_list_init_dynamic/aws_array_list_init_dynamic_harness.c":40:9)
  %v75 = sea.const 1 : i1 loc("seahorn/jobs/array_list_init_dynamic/aws_array_list_init_dynamic_harness.c":40:9)
  %v76 = sea.xor %v74, %v75 : i1 loc("seahorn/jobs/array_list_init_dynamic/aws_array_list_init_dynamic_harness.c":40:9)
  sea.assume %v76 loc("seahorn/jobs/array_list_init_dynamic/aws_array_list_init_dynamic_harness.c":40:9)
  sea.br ^bb73 loc("seahorn/jobs/array_list_init_dynamic/aws_array_list_init_dynamic_harness.c":40:9)
^bb73:
  sea.br ^bb74
^bb74:
  %v77 = sea.const 0 : i1
  sea.assert %v77
  sea.halt
}
