// Exported from SeaHorn (array_list_get_at_ptr.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm23")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm24")
  %v2 = sea.mem.nondet "region.56" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm25")
  %v3 = sea.mem.nondet "region.96" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm26")
  %v4 = sea.mem.nondet "region.106" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm27")
  %v5 = sea.mem.nondet "region.105" [5] : !sea.mem<!sea.ptr<64>, i8> loc("sm28")
  %v6 = sea.const 40 : i64 loc("_0")
  %v7 = sea.alloca %v6 align 8 [6] : i64 -> !sea.ptr<64> loc("_0")
  %v8 = sea.const 40 : i64 loc("_1")
  %v9 = sea.alloca %v8 align 8 [7] : i64 -> !sea.ptr<64> loc("_1")
  %v10 = sea.const 16 : i64 loc("_2")
  %v11 = sea.alloca %v10 align 8 [8] : i64 -> !sea.ptr<64> loc("_2")
  %v12 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v13 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v14 = sea.store %v0[%v12], %v13 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v15 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_3")
  %v16 = sea.ptr.index %v15 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_3")
  %v17 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v18 = sea.store %v14[%v16], %v17 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v19 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_4")
  %v20 = sea.ptr.index %v19 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_4")
  %v21 = sea.const 0 : i8
  %v22 = sea.const 24 : i64
  %v23 = sea.memset %v18[%v20], %v21, %v22 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v24 = sea.nondet "nd_size_t" [9] : i64 loc("_5"("seahorn/lib/array_list_helper.c":26:24))
  %v25 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_6"("seahorn/lib/array_list_helper.c":26:9))
  sea.br ^bb1
^bb1:
  %v26 = sea.store %v1[%v25], %v24 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":26:22)
  %v27 = sea.nondet "nd_size_t" [10] : i64 loc("_8"("seahorn/lib/array_list_helper.c":27:21))
  %v28 = sea.ptr.index %v7 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_9"("seahorn/lib/array_list_helper.c":27:9))
  sea.br ^bb2
^bb2:
  %v29 = sea.store %v26[%v28], %v27 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":27:19)
  %v30 = sea.nondet "nd_size_t" [11] : i64 loc("_11"("seahorn/lib/array_list_helper.c":28:18))
  %v31 = sea.ptr.index %v7 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_12"("seahorn/lib/array_list_helper.c":28:9))
  sea.br ^bb3
^bb3:
  %v32 = sea.store %v29[%v31], %v30 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":28:16)
  sea.br ^bb4
^bb4:
  %v33 = sea.const 0 : i64 loc("_15"("seahorn/lib/proof_allocators.c":21:15))
  %v34 = sea.icmp eq, %v24, %v33 : i64 loc("_15"("seahorn/lib/proof_allocators.c":21:15))
  %v35 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v34, ^bb8(%v5, %v35 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb5 loc("seahorn/lib/proof_allocators.c":21:10)
^bb5:
  %v36 = sea.nondet "nd_malloc_is_fail" [12] : i1 loc("_17"("seahorn/lib/sea_allocators.c":11:10))
  %v37 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v36, ^bb7(%v5, %v37 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb6 loc("seahorn/lib/sea_allocators.c":11:10)
^bb6:
  %v38 = sea.const 1 : i64 loc("malloc.i")
  %v39 = sea.mul %v24, %v38 : i64 loc("malloc.i")
  %v40 = sea.alloca %v39 align 16 [13] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb7(%v5, %v40 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb7(%v41 : !sea.mem<!sea.ptr<64>, i8>, %v42 : !sea.ptr<64>):
  %v43 = sea.memhavoc %v41[%v42], %v24 [14] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb8(%v43, %v42 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb8(%v44 : !sea.mem<!sea.ptr<64>, i8>, %v45 : !sea.ptr<64>):
  %v46 = sea.ptr.index %v7 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_21"("seahorn/lib/array_list_helper.c":29:9))
  sea.br ^bb9
^bb9:
  %v47 = sea.store %v32[%v46], %v45 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":29:14)
  sea.br ^bb10
^bb10:
  %v48 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  %v49 = sea.store %v47[%v7], %v48 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  %v50 = sea.const 3 : i64 loc("_24"("seahorn/lib/array_list_helper.c":38:47))
  %v51 = sea.icmp ult, %v27, %v50 : i64 loc("_24"("seahorn/lib/array_list_helper.c":38:47))
  %v52 = sea.const 9223372036854775809 : i64 loc("_25"("seahorn/lib/array_list_helper.c":39:41))
  %v53 = sea.icmp ult, %v30, %v52 : i64 loc("_25"("seahorn/lib/array_list_helper.c":39:41))
  %v54 = sea.const 0 : i1 loc("_26"("seahorn/lib/array_list_helper.c":40:31))
  %v55 = sea.select %v51, %v53, %v54 : i1 loc("_26"("seahorn/lib/array_list_helper.c":40:31))
  sea.assume %v55 loc("seahorn/lib/array_list_helper.c":31:3)
  sea.br ^bb13
^bb13:
  sea.br ^bb14
^bb14:
  sea.br ^bb15
^bb15:
  %v56 = sea.mul %v30, %v27 : i64 loc("_30"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v57 = sea.umulo %v30, %v27 : i64 loc("_30"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v57, ^bb16, ^bb17 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb16:
  sea.br ^bb17 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb17:
  %v58 = sea.const 1 : i1 loc("_34"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v59 = sea.xor %v57, %v58 : i1 loc("_34"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb18
^bb18:
  %v60 = sea.icmp uge, %v24, %v56 : i64 loc("_36"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb19
^bb19:
  sea.cond_br %v34, ^bb24, ^bb20 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb20:
  sea.br ^bb21
^bb21:
  sea.br ^bb22
^bb22:
  sea.br ^bb23
^bb23:
  %v61 = sea.ptr.null : !sea.ptr<64> loc("_44"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v62 = sea.ptr.cmp ne, %v45, %v61 : !sea.ptr<64> loc("_44"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb27(%v62 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb24:
  sea.br ^bb25
^bb25:
  %v63 = sea.ptr.null : !sea.ptr<64> loc("_40"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v64 = sea.ptr.cmp eq, %v45, %v63 : !sea.ptr<64> loc("_40"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v65 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v64, ^bb26, ^bb27(%v65 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb26:
  %v66 = sea.const 1 : i1
  sea.br ^bb27(%v66 : i1)
^bb27(%v67 : i1):
  sea.br ^bb28
^bb28:
  %v68 = sea.const 0 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v69 = sea.select %v59, %v60, %v68 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v70 = sea.and %v69, %v67 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v71 = sea.const 0 : i64 loc("_47")
  %v72 = sea.icmp ne, %v27, %v71 : i64 loc("_47")
  %v73 = sea.const 0 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v74 = sea.select %v70, %v72, %v73 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.assume %v74 loc("seahorn/jobs/array_list_get_at_ptr/aws_array_list_get_at_ptr_harness.c":20:5)
  %v75 = sea.nondet "nd_malloc_is_fail" [15] : i1 loc("_48"("seahorn/lib/sea_allocators.c":11:10))
  %v76 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v75, ^bb30(%v4, %v76 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb29 loc("seahorn/lib/sea_allocators.c":11:10)
^bb29:
  %v77 = sea.const 8 : i64 loc("malloc48.i3")
  %v78 = sea.alloca %v77 align 16 [16] : i64 -> !sea.ptr<64> loc("malloc48.i3")
  sea.br ^bb30(%v4, %v78 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb30(%v79 : !sea.mem<!sea.ptr<64>, i8>, %v80 : !sea.ptr<64>):
  %v81 = sea.const 8 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v82 = sea.memhavoc %v79[%v80], %v81 [17] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v83 = sea.ptr.null : !sea.ptr<64> loc("_51"("seahorn/lib/sea_allocators.c":45:10))
  %v84 = sea.ptr.cmp ne, %v80, %v83 : !sea.ptr<64> loc("_51"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v84 loc("seahorn/lib/sea_allocators.c":45:3)
  %v85 = sea.nondet "nd_size_t" [18] : i64 loc("_52"("seahorn/jobs/array_list_get_at_ptr/aws_array_list_get_at_ptr_harness.c":22:20))
  %v86 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/array_list_get_at_ptr/aws_array_list_get_at_ptr_harness.c":25:33)
  %v87 = sea.store %v2[%v9], %v86 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_get_at_ptr/aws_array_list_get_at_ptr_harness.c":25:33)
  %v88 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs/array_list_get_at_ptr/aws_array_list_get_at_ptr_harness.c":25:33))
  %v89 = sea.store %v87[%v88], %v24 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_get_at_ptr/aws_array_list_get_at_ptr_harness.c":25:33)
  %v90 = sea.ptr.index %v9 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy5.i"("seahorn/jobs/array_list_get_at_ptr/aws_array_list_get_at_ptr_harness.c":25:33))
  %v91 = sea.store %v89[%v90], %v30 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_get_at_ptr/aws_array_list_get_at_ptr_harness.c":25:33)
  %v92 = sea.ptr.index %v9 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i"("seahorn/jobs/array_list_get_at_ptr/aws_array_list_get_at_ptr_harness.c":25:33))
  %v93 = sea.store %v91[%v92], %v27 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_get_at_ptr/aws_array_list_get_at_ptr_harness.c":25:33)
  %v94 = sea.ptr.index %v9 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy11.i"("seahorn/jobs/array_list_get_at_ptr/aws_array_list_get_at_ptr_harness.c":25:33))
  %v95 = sea.store %v93[%v94], %v45 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_get_at_ptr/aws_array_list_get_at_ptr_harness.c":25:33)
  %v96 = sea.nondet "nd_size_t" [19] : i64 loc("_53"("seahorn/lib/utils.c":46:20))
  sea.br ^bb31
^bb31:
  %v97 = sea.store %v3[%v11], %v96 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v98 = sea.const 0 : i64 loc("_55"("seahorn/lib/utils.c":47:12))
  %v99 = sea.icmp ne, %v24, %v98 : i64 loc("_55"("seahorn/lib/utils.c":47:12))
  %v100 = sea.ptr.null : !sea.ptr<64> loc("_56")
  %v101 = sea.ptr.cmp ne, %v45, %v100 : !sea.ptr<64> loc("_56")
  %v102 = sea.and %v99, %v101 : i1 loc("or.cond.i45.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v102, ^bb34, ^bb32 loc("seahorn/lib/utils.c":47:16)
^bb32:
  %v103 = sea.nondet "nd_uint8_t" [20] : i8 loc("_68"("seahorn/lib/utils.c":51:21))
  %v104 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_69"("seahorn/lib/utils.c":51:14))
  sea.br ^bb33
^bb33:
  %v105 = sea.store %v97[%v104], %v103 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb39(%v103 : i8)
^bb34:
  sea.br ^bb35
^bb35:
  %v106 = sea.icmp ult, %v96, %v24 : i64 loc("_59"("seahorn/lib/utils.c":48:27))
  sea.assume %v106 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb36
^bb36:
  %v107 = sea.ptr.index %v45 [%v96] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_61"("seahorn/lib/utils.c":49:21))
  %v108 = sea.const 1 : i64 loc("_62"("seahorn/lib/utils.c":49:21))
  %v109 = sea.ptr.dereferenceable %v107, %v108 : !sea.ptr<64>, i64 loc("_62"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v109, ^bb37, ^bb124
^bb37:
  %v110 = sea.load %v44[%v107] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_64"("seahorn/lib/utils.c":49:21))
  %v111 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_65"("seahorn/lib/utils.c":49:14))
  sea.br ^bb38
^bb38:
  %v112 = sea.store %v97[%v111], %v110 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb39(%v110 : i8) loc("seahorn/lib/utils.c":50:3)
^bb39(%v113 : i8):
  sea.br ^bb40
^bb40:
  sea.br ^bb41
^bb41:
  sea.br ^bb42
^bb42:
  sea.cond_br %v57, ^bb43, ^bb44 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb43:
  sea.br ^bb44 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb44:
  sea.br ^bb45
^bb45:
  sea.br ^bb46
^bb46:
  sea.cond_br %v34, ^bb50, ^bb47 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb47:
  sea.br ^bb48
^bb48:
  sea.br ^bb49
^bb49:
  sea.br ^bb53(%v101 : i1)
^bb50:
  sea.br ^bb51
^bb51:
  %v114 = sea.ptr.null : !sea.ptr<64> loc("_80"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v115 = sea.ptr.cmp eq, %v45, %v114 : !sea.ptr<64> loc("_80"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v116 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v115, ^bb52, ^bb53(%v116 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb52:
  %v117 = sea.const 1 : i1
  sea.br ^bb53(%v117 : i1)
^bb53(%v118 : i1):
  sea.br ^bb54
^bb54:
  %v119 = sea.and %v69, %v118 : i1 loc("or.cond3.i17.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v120 = sea.const 0 : i1 loc("spec.select18"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v121 = sea.select %v119, %v72, %v120 : i1 loc("spec.select18"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.assume %v121 loc("seahorn/jobs/array_list_get_at_ptr/aws_array_list_get_at_ptr_harness.c":30:5)
  sea.assume %v84 loc("seahorn/jobs/array_list_get_at_ptr/aws_array_list_get_at_ptr_harness.c":31:5)
  sea.br ^bb55
^bb55:
  %v122 = sea.const 0 : i64 loc(".not.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v123 = sea.icmp eq, %v30, %v122 : i64 loc(".not.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  sea.cond_br %v123, ^bb58, ^bb56 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb56:
  sea.br ^bb57
^bb57:
  %v124 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v125 = sea.ptr.cmp eq, %v45, %v124 : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v126 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v127 = sea.xor %v125, %v126 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v127 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb58 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb58:
  sea.br ^bb59
^bb59:
  %v128 = sea.icmp ugt, %v30, %v85 : i64 loc("_89"("aws-c-common/include/aws/common/array_list.inl":367:37))
  sea.cond_br %v128, ^bb61, ^bb60 loc("aws-c-common/include/aws/common/array_list.inl":367:9)
^bb60:
  sea.br ^bb66
^bb61:
  sea.br ^bb62
^bb62:
  sea.br ^bb63
^bb63:
  %v129 = sea.const 8 : i64 loc("_93"("aws-c-common/include/aws/common/array_list.inl":368:14))
  %v130 = sea.ptr.dereferenceable %v80, %v129 : !sea.ptr<64>, i64 loc("_93"("aws-c-common/include/aws/common/array_list.inl":368:14))
  sea.cond_br %v130, ^bb64, ^bb124
^bb64:
  %v131 = sea.mul %v85, %v27 : i64 loc("_95"("aws-c-common/include/aws/common/array_list.inl":368:66))
  %v132 = sea.ptr.index %v45 [%v131] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_96"("aws-c-common/include/aws/common/array_list.inl":368:47))
  %v133 = sea.store %v82[%v80], %v132 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":368:14)
  %v134 = sea.ptr.null : !sea.ptr<64> loc(".not13.i"("seahorn/jobs/array_list_get_at_ptr/aws_array_list_get_at_ptr_harness.c":38:9))
  %v135 = sea.ptr.cmp eq, %v45, %v134 : !sea.ptr<64> loc(".not13.i"("seahorn/jobs/array_list_get_at_ptr/aws_array_list_get_at_ptr_harness.c":38:9))
  sea.cond_br %v135, ^bb124, ^bb65 loc("seahorn/jobs/array_list_get_at_ptr/aws_array_list_get_at_ptr_harness.c":38:9)
^bb65:
  sea.br ^bb66 loc("seahorn/jobs/array_list_get_at_ptr/aws_array_list_get_at_ptr_harness.c":39:9)
^bb66:
  sea.br ^bb67
^bb67:
  sea.br ^bb68
^bb68:
  sea.br ^bb69
^bb69:
  sea.cond_br %v57, ^bb70, ^bb71 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb70:
  sea.br ^bb71 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb71:
  sea.br ^bb72
^bb72:
  sea.br ^bb73
^bb73:
  sea.cond_br %v34, ^bb77, ^bb74 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb74:
  sea.br ^bb75
^bb75:
  sea.br ^bb76
^bb76:
  sea.br ^bb80(%v101 : i1)
^bb77:
  sea.br ^bb78
^bb78:
  %v136 = sea.ptr.null : !sea.ptr<64> loc("_107"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v137 = sea.ptr.cmp eq, %v45, %v136 : !sea.ptr<64> loc("_107"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v138 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v137, ^bb79, ^bb80(%v138 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb79:
  %v139 = sea.const 1 : i1
  sea.br ^bb80(%v139 : i1)
^bb80(%v140 : i1):
  sea.br ^bb81
^bb81:
  %v141 = sea.and %v69, %v140 : i1 loc("or.cond3.i22.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v142 = sea.const 0 : i1 loc("spec.select19"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v143 = sea.select %v141, %v72, %v142 : i1 loc("spec.select19"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb82
^bb82:
  sea.br ^bb83
^bb83:
  sea.br ^bb84
^bb84:
  sea.cond_br %v57, ^bb85, ^bb86 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb85:
  sea.br ^bb86 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb86:
  sea.br ^bb87
^bb87:
  sea.br ^bb88
^bb88:
  sea.cond_br %v34, ^bb92, ^bb89 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb89:
  sea.br ^bb90
^bb90:
  sea.br ^bb91
^bb91:
  sea.br ^bb95(%v101 : i1)
^bb92:
  sea.br ^bb93
^bb93:
  %v144 = sea.ptr.null : !sea.ptr<64> loc("_120"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v145 = sea.ptr.cmp eq, %v45, %v144 : !sea.ptr<64> loc("_120"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v146 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v145, ^bb94, ^bb95(%v146 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb94:
  %v147 = sea.const 1 : i1
  sea.br ^bb95(%v147 : i1)
^bb95(%v148 : i1):
  sea.br ^bb96
^bb96:
  %v149 = sea.and %v69, %v148 : i1 loc("or.cond3.i27.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.cond_br %v149, ^bb98, ^bb97 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb97:
  sea.br ^bb124 loc("seahorn/jobs/array_list_get_at_ptr/aws_array_list_get_at_ptr_harness.c":43:5)
^bb98:
  %v150 = sea.const 0 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v151 = sea.icmp eq, %v27, %v150 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  sea.cond_br %v151, ^bb124, ^bb99 loc("seahorn/jobs/array_list_get_at_ptr/aws_array_list_get_at_ptr_harness.c":43:5)
^bb99:
  sea.br ^bb100
^bb100:
  sea.br ^bb101
^bb101:
  sea.br ^bb102
^bb102:
  sea.br ^bb103
^bb103:
  sea.br ^bb104
^bb104:
  sea.br ^bb105
^bb105:
  sea.br ^bb106
^bb106:
  sea.br ^bb107
^bb107:
  sea.br ^bb108
^bb108:
  sea.br ^bb109
^bb109:
  sea.br ^bb110
^bb110:
  sea.br ^bb111
^bb111:
  sea.br ^bb112
^bb112:
  sea.br ^bb113
^bb113:
  sea.br ^bb114
^bb114:
  sea.br ^bb115
^bb115:
  sea.br ^bb116
^bb116:
  %v152 = sea.const 1 : i1 loc("seahorn/lib/utils.c":69:7)
  %v153 = sea.xor %v34, %v152 : i1 loc("seahorn/lib/utils.c":69:7)
  sea.assume %v153 loc("seahorn/lib/utils.c":69:7)
  sea.br ^bb117
^bb117:
  sea.assume %v101 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb118
^bb118:
  %v154 = sea.ptr.index %v45 [%v96] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_146"("seahorn/lib/utils.c":40:5))
  %v155 = sea.const 1 : i64 loc("_147"("seahorn/lib/utils.c":40:5))
  %v156 = sea.ptr.dereferenceable %v154, %v155 : !sea.ptr<64>, i64 loc("_147"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v156, ^bb119, ^bb124
^bb119:
  %v157 = sea.load %v44[%v154] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_149"("seahorn/lib/utils.c":40:5))
  sea.br ^bb120
^bb120:
  %v158 = sea.icmp eq, %v157, %v113 : i8 loc("_151"("seahorn/lib/utils.c":40:5))
  sea.br ^bb121
^bb121:
  %v159 = sea.const 1 : i64 loc("_153"("seahorn/lib/utils.c":40:5))
  %v160 = sea.ptr.dereferenceable %v154, %v159 : !sea.ptr<64>, i64 loc("_153"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v160, ^bb122, ^bb124
^bb122:
  sea.br ^bb123
^bb123:
  %v161 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v162 = sea.xor %v158, %v161 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v162 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb124 loc("seahorn/lib/utils.c":40:5)
^bb124:
  sea.br ^bb125
^bb125:
  %v163 = sea.const 0 : i1
  sea.assert %v163
  sea.halt
}
