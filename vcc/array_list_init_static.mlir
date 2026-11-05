// Exported from SeaHorn (array_list_init_static.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm21")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm22")
  %v2 = sea.mem.nondet "region.56" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm23")
  %v3 = sea.mem.nondet "region.65" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm24")
  %v4 = sea.const 40 : i64 loc("_0")
  %v5 = sea.alloca %v4 align 8 [4] : i64 -> !sea.ptr<64> loc("_0")
  %v6 = sea.const 16 : i64 loc("_1")
  %v7 = sea.alloca %v6 align 8 [5] : i64 -> !sea.ptr<64> loc("_1")
  %v8 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v9 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v10 = sea.store %v0[%v8], %v9 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v11 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_2")
  %v12 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_2")
  %v13 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v14 = sea.store %v10[%v12], %v13 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v15 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_3")
  %v16 = sea.ptr.index %v15 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_3")
  %v17 = sea.const 0 : i8
  %v18 = sea.const 24 : i64
  %v19 = sea.memset %v14[%v16], %v17, %v18 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v20 = sea.nondet "nd_size_t" [6] : i64 loc("_4"("seahorn/lib/array_list_helper.c":26:24))
  %v21 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_5"("seahorn/lib/array_list_helper.c":26:9))
  sea.br ^bb1
^bb1:
  %v22 = sea.store %v1[%v21], %v20 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":26:22)
  %v23 = sea.nondet "nd_size_t" [7] : i64 loc("_7"("seahorn/lib/array_list_helper.c":27:21))
  %v24 = sea.ptr.index %v5 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_8"("seahorn/lib/array_list_helper.c":27:9))
  sea.br ^bb2
^bb2:
  %v25 = sea.store %v22[%v24], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":27:19)
  %v26 = sea.nondet "nd_size_t" [8] : i64 loc("_10"("seahorn/lib/array_list_helper.c":28:18))
  %v27 = sea.ptr.index %v5 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_11"("seahorn/lib/array_list_helper.c":28:9))
  sea.br ^bb3
^bb3:
  %v28 = sea.store %v25[%v27], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":28:16)
  sea.br ^bb4
^bb4:
  %v29 = sea.const 0 : i64 loc("_14"("seahorn/lib/proof_allocators.c":21:15))
  %v30 = sea.icmp eq, %v20, %v29 : i64 loc("_14"("seahorn/lib/proof_allocators.c":21:15))
  %v31 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v30, ^bb8(%v3, %v31 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb5 loc("seahorn/lib/proof_allocators.c":21:10)
^bb5:
  %v32 = sea.nondet "nd_malloc_is_fail" [9] : i1 loc("_16"("seahorn/lib/sea_allocators.c":11:10))
  %v33 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v32, ^bb7(%v3, %v33 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb6 loc("seahorn/lib/sea_allocators.c":11:10)
^bb6:
  %v34 = sea.const 1 : i64 loc("malloc.i")
  %v35 = sea.mul %v20, %v34 : i64 loc("malloc.i")
  %v36 = sea.alloca %v35 align 16 [10] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb7(%v3, %v36 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb7(%v37 : !sea.mem<!sea.ptr<64>, i8>, %v38 : !sea.ptr<64>):
  %v39 = sea.memhavoc %v37[%v38], %v20 [11] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb8(%v39, %v38 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb8(%v40 : !sea.mem<!sea.ptr<64>, i8>, %v41 : !sea.ptr<64>):
  %v42 = sea.ptr.index %v5 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_20"("seahorn/lib/array_list_helper.c":29:9))
  sea.br ^bb9
^bb9:
  %v43 = sea.store %v28[%v42], %v41 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":29:14)
  sea.br ^bb10
^bb10:
  %v44 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  %v45 = sea.store %v43[%v5], %v44 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  %v46 = sea.const 3 : i64 loc("_23"("seahorn/lib/array_list_helper.c":38:47))
  %v47 = sea.icmp ult, %v23, %v46 : i64 loc("_23"("seahorn/lib/array_list_helper.c":38:47))
  %v48 = sea.const 9223372036854775809 : i64 loc("_24"("seahorn/lib/array_list_helper.c":39:41))
  %v49 = sea.icmp ult, %v26, %v48 : i64 loc("_24"("seahorn/lib/array_list_helper.c":39:41))
  %v50 = sea.const 0 : i1 loc("_25"("seahorn/lib/array_list_helper.c":40:31))
  %v51 = sea.select %v47, %v49, %v50 : i1 loc("_25"("seahorn/lib/array_list_helper.c":40:31))
  sea.assume %v51 loc("seahorn/lib/array_list_helper.c":31:3)
  %v52 = sea.nondet "nd_size_t" [12] : i64 loc("_26"("seahorn/jobs/array_list_init_static/aws_array_list_init_static_harness.c":20:24))
  %v53 = sea.nondet "nd_size_t" [13] : i64 loc("_27"("seahorn/jobs/array_list_init_static/aws_array_list_init_static_harness.c":21:38))
  %v54 = sea.nondet "nd_size_t" [14] : i64 loc("_28"("seahorn/jobs/array_list_init_static/aws_array_list_init_static_harness.c":22:18))
  %v55 = sea.const 18446744073709551615 : i64 loc("_29"("seahorn/jobs/array_list_init_static/aws_array_list_init_static_harness.c":29:40))
  %v56 = sea.add %v53, %v55 : i64 loc("_29"("seahorn/jobs/array_list_init_static/aws_array_list_init_static_harness.c":29:40))
  %v57 = sea.const 18446744073709551615 : i64 loc("_30"("seahorn/jobs/array_list_init_static/aws_array_list_init_static_harness.c":29:40))
  %v58 = sea.icmp sgt, %v56, %v57 : i64 loc("_30"("seahorn/jobs/array_list_init_static/aws_array_list_init_static_harness.c":29:40))
  sea.assume %v58 loc("seahorn/jobs/array_list_init_static/aws_array_list_init_static_harness.c":29:5)
  %v59 = sea.const 18446744073709551615 : i64 loc("_31"("seahorn/jobs/array_list_init_static/aws_array_list_init_static_harness.c":30:26))
  %v60 = sea.add %v52, %v59 : i64 loc("_31"("seahorn/jobs/array_list_init_static/aws_array_list_init_static_harness.c":30:26))
  %v61 = sea.const 2 : i64 loc("_32"("seahorn/jobs/array_list_init_static/aws_array_list_init_static_harness.c":30:26))
  %v62 = sea.icmp ult, %v60, %v61 : i64 loc("_32"("seahorn/jobs/array_list_init_static/aws_array_list_init_static_harness.c":30:26))
  sea.assume %v62 loc("seahorn/jobs/array_list_init_static/aws_array_list_init_static_harness.c":30:5)
  sea.br ^bb13
^bb13:
  %v63 = sea.mul %v53, %v52 : i64 loc("_34"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v64 = sea.umulo %v53, %v52 : i64 loc("_34"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v64, ^bb14, ^bb15 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb14:
  sea.br ^bb15 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb15:
  %v65 = sea.const 1 : i1 loc(".not.i"("seahorn/jobs/array_list_init_static/aws_array_list_init_static_harness.c":38:9))
  %v66 = sea.xor %v64, %v65 : i1 loc(".not.i"("seahorn/jobs/array_list_init_static/aws_array_list_init_static_harness.c":38:9))
  sea.assume %v66 loc("seahorn/jobs/array_list_init_static/aws_array_list_init_static_harness.c":38:9)
  %v67 = sea.const 0 : i64 loc("_38"("seahorn/lib/proof_allocators.c":17:15))
  %v68 = sea.icmp eq, %v63, %v67 : i64 loc("_38"("seahorn/lib/proof_allocators.c":17:15))
  %v69 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v68, ^bb19(%v40, %v69 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb16 loc("seahorn/lib/proof_allocators.c":17:10)
^bb16:
  %v70 = sea.nondet "nd_malloc_is_fail" [15] : i1 loc("_40"("seahorn/lib/sea_allocators.c":11:10))
  %v71 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v70, ^bb18(%v40, %v71 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb17 loc("seahorn/lib/sea_allocators.c":11:10)
^bb17:
  %v72 = sea.const 1 : i64 loc("malloc26.i")
  %v73 = sea.mul %v63, %v72 : i64 loc("malloc26.i")
  %v74 = sea.alloca %v73 align 16 [16] : i64 -> !sea.ptr<64> loc("malloc26.i")
  sea.br ^bb18(%v40, %v74 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb18(%v75 : !sea.mem<!sea.ptr<64>, i8>, %v76 : !sea.ptr<64>):
  %v77 = sea.memhavoc %v75[%v76], %v63 [17] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v78 = sea.ptr.null : !sea.ptr<64> loc("_43"("seahorn/lib/sea_allocators.c":45:10))
  %v79 = sea.ptr.cmp ne, %v76, %v78 : !sea.ptr<64> loc("_43"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v79 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb19(%v77, %v76 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb19(%v80 : !sea.mem<!sea.ptr<64>, i8>, %v81 : !sea.ptr<64>):
  %v82 = sea.nondet "nd_size_t" [18] : i64 loc("_45"("seahorn/lib/utils.c":46:20))
  sea.br ^bb20
^bb20:
  %v83 = sea.store %v2[%v7], %v82 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v84 = sea.const 0 : i64 loc("_47"("seahorn/lib/utils.c":47:12))
  %v85 = sea.icmp ne, %v63, %v84 : i64 loc("_47"("seahorn/lib/utils.c":47:12))
  %v86 = sea.ptr.null : !sea.ptr<64> loc("_48")
  %v87 = sea.ptr.cmp ne, %v81, %v86 : !sea.ptr<64> loc("_48")
  %v88 = sea.and %v85, %v87 : i1 loc("or.cond.i21.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v88, ^bb23, ^bb21 loc("seahorn/lib/utils.c":47:16)
^bb21:
  %v89 = sea.nondet "nd_uint8_t" [19] : i8 loc("_60"("seahorn/lib/utils.c":51:21))
  %v90 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_61"("seahorn/lib/utils.c":51:14))
  sea.br ^bb22
^bb22:
  %v91 = sea.store %v83[%v90], %v89 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb28(%v89 : i8)
^bb23:
  sea.br ^bb24
^bb24:
  %v92 = sea.icmp ult, %v82, %v63 : i64 loc("_51"("seahorn/lib/utils.c":48:27))
  sea.assume %v92 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb25
^bb25:
  %v93 = sea.ptr.index %v81 [%v82] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_53"("seahorn/lib/utils.c":49:21))
  %v94 = sea.const 1 : i64 loc("_54"("seahorn/lib/utils.c":49:21))
  %v95 = sea.ptr.dereferenceable %v93, %v94 : !sea.ptr<64>, i64 loc("_54"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v95, ^bb26, ^bb79
^bb26:
  %v96 = sea.load %v80[%v93] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_56"("seahorn/lib/utils.c":49:21))
  %v97 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_57"("seahorn/lib/utils.c":49:14))
  sea.br ^bb27
^bb27:
  %v98 = sea.store %v83[%v97], %v96 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb28(%v96 : i8) loc("seahorn/lib/utils.c":50:3)
^bb28(%v99 : i8):
  %v100 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":66:5))
  %v101 = sea.ptr.cmp eq, %v81, %v100 : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":66:5))
  %v102 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":66:5)
  %v103 = sea.xor %v101, %v102 : i1 loc("aws-c-common/include/aws/common/array_list.inl":66:5)
  sea.assume %v103 loc("aws-c-common/include/aws/common/array_list.inl":66:5)
  %v104 = sea.const 0 : i64 loc(".not2.i.i"("aws-c-common/include/aws/common/array_list.inl":67:5))
  %v105 = sea.icmp eq, %v53, %v104 : i64 loc(".not2.i.i"("aws-c-common/include/aws/common/array_list.inl":67:5))
  %v106 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":67:5)
  %v107 = sea.xor %v105, %v106 : i1 loc("aws-c-common/include/aws/common/array_list.inl":67:5)
  sea.assume %v107 loc("aws-c-common/include/aws/common/array_list.inl":67:5)
  %v108 = sea.const 0 : i64 loc(".not3.i.i"("aws-c-common/include/aws/common/array_list.inl":68:5))
  %v109 = sea.icmp eq, %v52, %v108 : i64 loc(".not3.i.i"("aws-c-common/include/aws/common/array_list.inl":68:5))
  %v110 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":68:5)
  %v111 = sea.xor %v109, %v110 : i1 loc("aws-c-common/include/aws/common/array_list.inl":68:5)
  sea.assume %v111 loc("aws-c-common/include/aws/common/array_list.inl":68:5)
  sea.br ^bb29
^bb29:
  %v112 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":71:17)
  %v113 = sea.store %v45[%v5], %v112 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":71:17)
  sea.br ^bb30
^bb30:
  sea.cond_br %v64, ^bb31, ^bb32 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb31:
  sea.br ^bb32 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb32:
  sea.assume %v66 loc("aws-c-common/include/aws/common/array_list.inl":75:5)
  sea.br ^bb33
^bb33:
  %v114 = sea.store %v113[%v21], %v63 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":76:24)
  sea.br ^bb34
^bb34:
  %v115 = sea.store %v114[%v24], %v52 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":78:21)
  sea.br ^bb35
^bb35:
  %v116 = sea.const 0 : i64 loc("aws-c-common/include/aws/common/array_list.inl":79:18)
  %v117 = sea.store %v115[%v27], %v116 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":79:18)
  sea.br ^bb36
^bb36:
  %v118 = sea.store %v117[%v42], %v81 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":80:16)
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
  sea.cond_br %v68, ^bb45, ^bb42 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb42:
  sea.br ^bb43
^bb43:
  sea.br ^bb44
^bb44:
  sea.br ^bb49(%v87 : i1)
^bb45:
  sea.br ^bb46
^bb46:
  sea.cond_br %v101, ^bb48, ^bb47 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb47:
  %v119 = sea.const 0 : i1
  sea.br ^bb51(%v119 : i1)
^bb48:
  %v120 = sea.const 1 : i1
  sea.br ^bb49(%v120 : i1)
^bb49(%v121 : i1):
  sea.br ^bb50
^bb50:
  %v122 = sea.const 0 : i64 loc("_81")
  %v123 = sea.icmp ne, %v52, %v122 : i64 loc("_81")
  %v124 = sea.const 0 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v125 = sea.select %v121, %v123, %v124 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb51(%v125 : i1) loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb51(%v126 : i1):
  sea.br ^bb52
^bb52:
  sea.br ^bb53
^bb53:
  sea.br ^bb54
^bb54:
  sea.br ^bb55
^bb55:
  sea.br ^bb56
^bb56:
  sea.cond_br %v68, ^bb62, ^bb57 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb57:
  sea.br ^bb58
^bb58:
  sea.br ^bb59
^bb59:
  sea.br ^bb60
^bb60:
  sea.br ^bb61
^bb61:
  sea.cond_br %v87, ^bb68, ^bb65 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb62:
  sea.br ^bb63
^bb63:
  sea.cond_br %v101, ^bb66, ^bb64 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb64:
  sea.br ^bb65
^bb65:
  sea.br ^bb79 loc("seahorn/jobs/array_list_init_static/aws_array_list_init_static_harness.c":48:5)
^bb66:
  sea.br ^bb67
^bb67:
  sea.br ^bb68
^bb68:
  sea.cond_br %v109, ^bb79, ^bb69 loc("seahorn/jobs/array_list_init_static/aws_array_list_init_static_harness.c":48:5)
^bb69:
  %v127 = sea.mul %v53, %v52 : i64 loc("_94"("seahorn/jobs/array_list_init_static/aws_array_list_init_static_harness.c":52:5))
  %v128 = sea.icmp eq, %v63, %v127 : i64 loc("_95"("seahorn/jobs/array_list_init_static/aws_array_list_init_static_harness.c":52:5))
  sea.cond_br %v128, ^bb70, ^bb79 loc("seahorn/jobs/array_list_init_static/aws_array_list_init_static_harness.c":52:5)
^bb70:
  sea.cond_br %v88, ^bb71, ^bb72 loc("seahorn/lib/utils.c":15:3)
^bb71:
  %v129 = sea.nondet "nd_size_t" [20] : i64 loc("_98"("seahorn/lib/utils.c":17:16))
  %v130 = sea.icmp ult, %v129, %v63 : i64 loc("_99"("seahorn/lib/utils.c":19:14))
  %v131 = sea.const 36028797018963967 : i64 loc("_100"("seahorn/lib/utils.c":19:20))
  %v132 = sea.icmp ult, %v63, %v131 : i64 loc("_100"("seahorn/lib/utils.c":19:20))
  %v133 = sea.and %v132, %v130 : i1 loc("_101"("seahorn/lib/utils.c":19:20))
  sea.assume %v133 loc("seahorn/lib/utils.c":19:5)
  sea.br ^bb72 loc("seahorn/lib/utils.c":20:5)
^bb72:
  sea.assume %v87 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb73
^bb73:
  %v134 = sea.ptr.index %v81 [%v82] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_103"("seahorn/lib/utils.c":40:5))
  %v135 = sea.const 1 : i64 loc("_104"("seahorn/lib/utils.c":40:5))
  %v136 = sea.ptr.dereferenceable %v134, %v135 : !sea.ptr<64>, i64 loc("_104"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v136, ^bb74, ^bb79
^bb74:
  %v137 = sea.load %v80[%v134] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_106"("seahorn/lib/utils.c":40:5))
  sea.br ^bb75
^bb75:
  %v138 = sea.icmp eq, %v137, %v99 : i8 loc("_108"("seahorn/lib/utils.c":40:5))
  sea.br ^bb76
^bb76:
  %v139 = sea.const 1 : i64 loc("_110"("seahorn/lib/utils.c":40:5))
  %v140 = sea.ptr.dereferenceable %v134, %v139 : !sea.ptr<64>, i64 loc("_110"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v140, ^bb77, ^bb79
^bb77:
  sea.br ^bb78
^bb78:
  %v141 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v142 = sea.xor %v138, %v141 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v142 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb79 loc("seahorn/lib/utils.c":40:5)
^bb79:
  sea.br ^bb80
^bb80:
  %v143 = sea.const 0 : i1
  sea.assert %v143
  sea.halt
}
