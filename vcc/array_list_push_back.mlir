// Exported from SeaHorn (array_list_push_back.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm27")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm28")
  %v2 = sea.mem.nondet "region.56" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm29")
  %v3 = sea.mem.nondet "region.96" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm30")
  %v4 = sea.mem.nondet "region.105" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm31")
  %v5 = sea.const 40 : i64 loc("_0")
  %v6 = sea.alloca %v5 align 8 [5] : i64 -> !sea.ptr<64> loc("_0")
  %v7 = sea.const 40 : i64 loc("_1")
  %v8 = sea.alloca %v7 align 8 [6] : i64 -> !sea.ptr<64> loc("_1")
  %v9 = sea.const 16 : i64 loc("_2")
  %v10 = sea.alloca %v9 align 8 [7] : i64 -> !sea.ptr<64> loc("_2")
  %v11 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v12 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v13 = sea.store %v0[%v11], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v14 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_3")
  %v15 = sea.ptr.index %v14 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_3")
  %v16 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v17 = sea.store %v13[%v15], %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v18 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_4")
  %v19 = sea.ptr.index %v18 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_4")
  %v20 = sea.const 0 : i8
  %v21 = sea.const 24 : i64
  %v22 = sea.memset %v17[%v19], %v20, %v21 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v23 = sea.nondet "nd_size_t" [8] : i64 loc("_5"("seahorn/lib/array_list_helper.c":26:24))
  %v24 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_6"("seahorn/lib/array_list_helper.c":26:9))
  sea.br ^bb1
^bb1:
  %v25 = sea.store %v1[%v24], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":26:22)
  %v26 = sea.nondet "nd_size_t" [9] : i64 loc("_8"("seahorn/lib/array_list_helper.c":27:21))
  %v27 = sea.ptr.index %v6 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_9"("seahorn/lib/array_list_helper.c":27:9))
  sea.br ^bb2
^bb2:
  %v28 = sea.store %v25[%v27], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":27:19)
  %v29 = sea.nondet "nd_size_t" [10] : i64 loc("_11"("seahorn/lib/array_list_helper.c":28:18))
  %v30 = sea.ptr.index %v6 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_12"("seahorn/lib/array_list_helper.c":28:9))
  sea.br ^bb3
^bb3:
  %v31 = sea.store %v28[%v30], %v29 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":28:16)
  sea.br ^bb4
^bb4:
  %v32 = sea.const 0 : i64 loc("_15"("seahorn/lib/proof_allocators.c":21:15))
  %v33 = sea.icmp eq, %v23, %v32 : i64 loc("_15"("seahorn/lib/proof_allocators.c":21:15))
  %v34 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v33, ^bb8(%v4, %v34 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb5 loc("seahorn/lib/proof_allocators.c":21:10)
^bb5:
  %v35 = sea.nondet "nd_malloc_is_fail" [11] : i1 loc("_17"("seahorn/lib/sea_allocators.c":11:10))
  %v36 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v35, ^bb7(%v4, %v36 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb6 loc("seahorn/lib/sea_allocators.c":11:10)
^bb6:
  %v37 = sea.const 1 : i64 loc("malloc.i")
  %v38 = sea.mul %v23, %v37 : i64 loc("malloc.i")
  %v39 = sea.alloca %v38 align 16 [12] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb7(%v4, %v39 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb7(%v40 : !sea.mem<!sea.ptr<64>, i8>, %v41 : !sea.ptr<64>):
  %v42 = sea.memhavoc %v40[%v41], %v23 [13] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb8(%v42, %v41 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb8(%v43 : !sea.mem<!sea.ptr<64>, i8>, %v44 : !sea.ptr<64>):
  %v45 = sea.ptr.index %v6 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_21"("seahorn/lib/array_list_helper.c":29:9))
  sea.br ^bb9
^bb9:
  %v46 = sea.store %v31[%v45], %v44 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":29:14)
  sea.br ^bb10
^bb10:
  %v47 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  %v48 = sea.store %v46[%v6], %v47 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  %v49 = sea.const 3 : i64 loc("_24"("seahorn/lib/array_list_helper.c":38:47))
  %v50 = sea.icmp ult, %v26, %v49 : i64 loc("_24"("seahorn/lib/array_list_helper.c":38:47))
  %v51 = sea.const 9223372036854775809 : i64 loc("_25"("seahorn/lib/array_list_helper.c":39:41))
  %v52 = sea.icmp ult, %v29, %v51 : i64 loc("_25"("seahorn/lib/array_list_helper.c":39:41))
  %v53 = sea.const 0 : i1 loc("_26"("seahorn/lib/array_list_helper.c":40:31))
  %v54 = sea.select %v50, %v52, %v53 : i1 loc("_26"("seahorn/lib/array_list_helper.c":40:31))
  sea.assume %v54 loc("seahorn/lib/array_list_helper.c":31:3)
  sea.br ^bb13
^bb13:
  sea.br ^bb14
^bb14:
  sea.br ^bb15
^bb15:
  %v55 = sea.mul %v29, %v26 : i64 loc("_30"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v56 = sea.umulo %v29, %v26 : i64 loc("_30"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v56, ^bb16, ^bb17 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb16:
  sea.br ^bb17 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb17:
  %v57 = sea.const 1 : i1 loc("_34"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v58 = sea.xor %v56, %v57 : i1 loc("_34"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb18
^bb18:
  %v59 = sea.icmp uge, %v23, %v55 : i64 loc("_36"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb19
^bb19:
  sea.cond_br %v33, ^bb24, ^bb20 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb20:
  sea.br ^bb21
^bb21:
  sea.br ^bb22
^bb22:
  sea.br ^bb23
^bb23:
  %v60 = sea.ptr.null : !sea.ptr<64> loc("_44"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v61 = sea.ptr.cmp ne, %v44, %v60 : !sea.ptr<64> loc("_44"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb27(%v61 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb24:
  sea.br ^bb25
^bb25:
  %v62 = sea.ptr.null : !sea.ptr<64> loc("_40"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v63 = sea.ptr.cmp eq, %v44, %v62 : !sea.ptr<64> loc("_40"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v64 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v63, ^bb26, ^bb27(%v64 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb26:
  %v65 = sea.const 1 : i1
  sea.br ^bb27(%v65 : i1)
^bb27(%v66 : i1):
  sea.br ^bb28
^bb28:
  %v67 = sea.const 0 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v68 = sea.select %v58, %v59, %v67 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v69 = sea.and %v68, %v66 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v70 = sea.const 0 : i64 loc("_47")
  %v71 = sea.icmp ne, %v26, %v70 : i64 loc("_47")
  %v72 = sea.const 0 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v73 = sea.select %v69, %v71, %v72 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.assume %v73 loc("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":20:5)
  %v74 = sea.ptr.null : !sea.ptr<64> loc("_48"("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":24:26))
  %v75 = sea.ptr.cmp ne, %v44, %v74 : !sea.ptr<64> loc("_48"("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":24:26))
  sea.assume %v75 loc("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":24:9)
  %v76 = sea.const 0 : i64 loc("_49"("seahorn/lib/proof_allocators.c":17:15))
  %v77 = sea.icmp eq, %v26, %v76 : i64 loc("_49"("seahorn/lib/proof_allocators.c":17:15))
  %v78 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v77, ^bb32(%v43, %v78 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb29 loc("seahorn/lib/proof_allocators.c":17:10)
^bb29:
  %v79 = sea.nondet "nd_malloc_is_fail" [14] : i1 loc("_51"("seahorn/lib/sea_allocators.c":11:10))
  %v80 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v79, ^bb31(%v43, %v80 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb30 loc("seahorn/lib/sea_allocators.c":11:10)
^bb30:
  %v81 = sea.const 1 : i64 loc("malloc63.i")
  %v82 = sea.mul %v26, %v81 : i64 loc("malloc63.i")
  %v83 = sea.alloca %v82 align 16 [15] : i64 -> !sea.ptr<64> loc("malloc63.i")
  sea.br ^bb31(%v43, %v83 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb31(%v84 : !sea.mem<!sea.ptr<64>, i8>, %v85 : !sea.ptr<64>):
  %v86 = sea.memhavoc %v84[%v85], %v26 [16] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v87 = sea.ptr.null : !sea.ptr<64> loc("_54"("seahorn/lib/sea_allocators.c":45:10))
  %v88 = sea.ptr.cmp ne, %v85, %v87 : !sea.ptr<64> loc("_54"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v88 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb32(%v86, %v85 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb32(%v89 : !sea.mem<!sea.ptr<64>, i8>, %v90 : !sea.ptr<64>):
  %v91 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":29:33)
  %v92 = sea.store %v2[%v8], %v91 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":29:33)
  %v93 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":29:33))
  %v94 = sea.store %v92[%v93], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":29:33)
  %v95 = sea.ptr.index %v8 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy5.i"("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":29:33))
  %v96 = sea.store %v94[%v95], %v29 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":29:33)
  %v97 = sea.ptr.index %v8 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i"("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":29:33))
  %v98 = sea.store %v96[%v97], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":29:33)
  %v99 = sea.ptr.index %v8 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy11.i"("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":29:33))
  %v100 = sea.store %v98[%v99], %v44 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":29:33)
  %v101 = sea.nondet "nd_size_t" [17] : i64 loc("_56"("seahorn/lib/utils.c":46:20))
  sea.br ^bb33
^bb33:
  %v102 = sea.store %v3[%v10], %v101 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v103 = sea.const 0 : i64 loc("_58"("seahorn/lib/utils.c":47:12))
  %v104 = sea.icmp ne, %v23, %v103 : i64 loc("_58"("seahorn/lib/utils.c":47:12))
  %v105 = sea.and %v104, %v75 : i1 loc("or.cond.i53.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v105, ^bb36, ^bb34 loc("seahorn/lib/utils.c":47:16)
^bb34:
  %v106 = sea.nondet "nd_uint8_t" [18] : i8 loc("_70"("seahorn/lib/utils.c":51:21))
  %v107 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_71"("seahorn/lib/utils.c":51:14))
  sea.br ^bb35
^bb35:
  %v108 = sea.store %v102[%v107], %v106 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb41(%v106 : i8)
^bb36:
  sea.br ^bb37
^bb37:
  %v109 = sea.icmp ult, %v101, %v23 : i64 loc("_61"("seahorn/lib/utils.c":48:27))
  sea.assume %v109 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb38
^bb38:
  %v110 = sea.ptr.index %v44 [%v101] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_63"("seahorn/lib/utils.c":49:21))
  %v111 = sea.const 1 : i64 loc("_64"("seahorn/lib/utils.c":49:21))
  %v112 = sea.ptr.dereferenceable %v110, %v111 : !sea.ptr<64>, i64 loc("_64"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v112, ^bb39, ^bb163
^bb39:
  %v113 = sea.load %v89[%v110] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_66"("seahorn/lib/utils.c":49:21))
  %v114 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_67"("seahorn/lib/utils.c":49:14))
  sea.br ^bb40
^bb40:
  %v115 = sea.store %v102[%v114], %v113 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb41(%v113 : i8) loc("seahorn/lib/utils.c":50:3)
^bb41(%v116 : i8):
  sea.br ^bb42
^bb42:
  sea.br ^bb43
^bb43:
  sea.br ^bb44
^bb44:
  sea.cond_br %v56, ^bb45, ^bb46 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb45:
  sea.br ^bb46 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb46:
  sea.br ^bb47
^bb47:
  sea.br ^bb48
^bb48:
  sea.cond_br %v33, ^bb52, ^bb49 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb49:
  sea.br ^bb50
^bb50:
  sea.br ^bb51
^bb51:
  sea.br ^bb55(%v75 : i1)
^bb52:
  sea.br ^bb53
^bb53:
  %v117 = sea.ptr.null : !sea.ptr<64> loc("_82"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v118 = sea.ptr.cmp eq, %v44, %v117 : !sea.ptr<64> loc("_82"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v119 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v118, ^bb54, ^bb55(%v119 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb54:
  %v120 = sea.const 1 : i1
  sea.br ^bb55(%v120 : i1)
^bb55(%v121 : i1):
  sea.br ^bb56
^bb56:
  %v122 = sea.and %v68, %v121 : i1 loc("or.cond3.i17.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v123 = sea.const 0 : i1 loc("spec.select33"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v124 = sea.select %v122, %v71, %v123 : i1 loc("spec.select33"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.assume %v124 loc("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":34:5)
  %v125 = sea.ptr.null : !sea.ptr<64> loc(".not.i"("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":35:12))
  %v126 = sea.ptr.cmp ne, %v90, %v125 : !sea.ptr<64> loc(".not.i"("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":35:12))
  sea.assume %v126 loc("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":35:5)
  sea.br ^bb57
^bb57:
  %v127 = sea.const 0 : i64 loc(".not.i31.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v128 = sea.icmp eq, %v29, %v127 : i64 loc(".not.i31.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  sea.cond_br %v128, ^bb60, ^bb58 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb58:
  sea.br ^bb59
^bb59:
  %v129 = sea.ptr.null : !sea.ptr<64> loc(".not1.i32.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v130 = sea.ptr.cmp eq, %v44, %v129 : !sea.ptr<64> loc(".not1.i32.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v131 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v132 = sea.xor %v130, %v131 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v132 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb60 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb60:
  sea.br ^bb61
^bb61:
  sea.br ^bb62
^bb62:
  %v133 = sea.const 1 : i64 loc("_92"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v134 = sea.add %v29, %v133 : i64 loc("_92"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v135 = sea.const 1 : i64 loc("_92"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v136 = sea.uaddo %v29, %v135 : i64 loc("_92"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v136, ^bb103, ^bb63 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb63:
  sea.br ^bb64
^bb64:
  sea.br ^bb65
^bb65:
  %v137 = sea.mul %v134, %v26 : i64 loc("_97"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v138 = sea.umulo %v134, %v26 : i64 loc("_97"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v138, ^bb102, ^bb66 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb66:
  sea.br ^bb67
^bb67:
  %v139 = sea.icmp ult, %v23, %v137 : i64 loc("_102"("aws-c-common/source/array_list.c":116:28))
  sea.cond_br %v139, ^bb68, ^bb86(%v89, %v48, %v44 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("aws-c-common/source/array_list.c":116:9)
^bb68:
  sea.br ^bb69
^bb69:
  sea.br ^bb70
^bb70:
  %v140 = sea.const 1 : i64 loc("_106"("aws-c-common/source/array_list.c":129:58))
  %v141 = sea.shl %v23, %v140 : i64 loc("_106"("aws-c-common/source/array_list.c":129:58))
  %v142 = sea.umax %v141, %v137 : i64 loc("_107"("aws-c-common/source/array_list.c":130:27))
  sea.br ^bb71
^bb71:
  %v143 = sea.icmp ult, %v142, %v23 : i64 loc("_109"("aws-c-common/source/array_list.c":132:22))
  sea.cond_br %v143, ^bb101, ^bb72 loc("aws-c-common/source/array_list.c":132:13)
^bb72:
  sea.br ^bb73
^bb73:
  %v144 = sea.nondet "nd_malloc_is_fail" [19] : i1 loc("_113"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v144, ^bb100, ^bb74 loc("seahorn/lib/sea_allocators.c":11:10)
^bb74:
  %v145 = sea.const 1 : i64 loc("malloc64.i")
  %v146 = sea.mul %v142, %v145 : i64 loc("malloc64.i")
  %v147 = sea.alloca %v146 align 16 [20] : i64 -> !sea.ptr<64> loc("malloc64.i")
  %v148 = sea.memhavoc %v89[%v147], %v142 [21] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb75
^bb75:
  %v149 = sea.ptr.null : !sea.ptr<64> loc(".not5.i.i.i"("aws-c-common/source/array_list.c":150:13))
  %v150 = sea.ptr.cmp eq, %v44, %v149 : !sea.ptr<64> loc(".not5.i.i.i"("aws-c-common/source/array_list.c":150:13))
  sea.cond_br %v150, ^bb83(%v148 : !sea.mem<!sea.ptr<64>, i8>), ^bb76 loc("aws-c-common/source/array_list.c":150:13)
^bb76:
  sea.br ^bb77
^bb77:
  sea.br ^bb78
^bb78:
  %v151 = sea.ptr.dereferenceable %v147, %v23 : !sea.ptr<64>, i64 loc("_119"("seahorn/lib/bcmp.c":161:3))
  %v152 = sea.ptr.dereferenceable %v147, %v23 : !sea.ptr<64>, i64 loc("_120"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v152, ^bb79, ^bb163 loc("seahorn/lib/bcmp.c":161:3)
^bb79:
  %v153 = sea.ptr.dereferenceable %v44, %v23 : !sea.ptr<64>, i64 loc("_122"("seahorn/lib/bcmp.c":162:3))
  %v154 = sea.ptr.dereferenceable %v44, %v23 : !sea.ptr<64>, i64 loc("_123"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v154, ^bb80, ^bb163 loc("seahorn/lib/bcmp.c":162:3)
^bb80:
  %v155 = sea.memmove %v148[%v147], %v148[%v44], %v23 inplace align 16 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb81
^bb81:
  sea.br ^bb82
^bb82:
  sea.br ^bb83(%v155 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/array_list.c":160:9)
^bb83(%v156 : !sea.mem<!sea.ptr<64>, i8>):
  sea.br ^bb84
^bb84:
  %v157 = sea.store %v48[%v45], %v147 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/array_list.c":161:20)
  sea.br ^bb85
^bb85:
  %v158 = sea.store %v157[%v24], %v142 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/array_list.c":162:28)
  sea.br ^bb86(%v156, %v158, %v147 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>)
^bb86(%v159 : !sea.mem<!sea.ptr<64>, i8>, %v160 : !sea.mem<!sea.ptr<64>, i8>, %v161 : !sea.ptr<64>):
  sea.br ^bb87
^bb87:
  %v162 = sea.ptr.null : !sea.ptr<64> loc(".not1.i36.i"("aws-c-common/include/aws/common/array_list.inl":388:5))
  %v163 = sea.ptr.cmp eq, %v161, %v162 : !sea.ptr<64> loc(".not1.i36.i"("aws-c-common/include/aws/common/array_list.inl":388:5))
  %v164 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":388:5)
  %v165 = sea.xor %v163, %v164 : i1 loc("aws-c-common/include/aws/common/array_list.inl":388:5)
  sea.assume %v165 loc("aws-c-common/include/aws/common/array_list.inl":388:5)
  sea.br ^bb88
^bb88:
  sea.br ^bb89
^bb89:
  sea.br ^bb90
^bb90:
  %v166 = sea.mul %v29, %v26 : i64 loc("_133"("aws-c-common/include/aws/common/array_list.inl":390:62))
  %v167 = sea.ptr.index %v161 [%v166] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_134"("aws-c-common/include/aws/common/array_list.inl":390:43))
  %v168 = sea.ptr.dereferenceable %v167, %v26 : !sea.ptr<64>, i64 loc("_135"("seahorn/lib/bcmp.c":161:3))
  %v169 = sea.ptr.dereferenceable %v167, %v26 : !sea.ptr<64>, i64 loc("_136"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v169, ^bb91, ^bb163 loc("seahorn/lib/bcmp.c":161:3)
^bb91:
  %v170 = sea.ptr.dereferenceable %v90, %v26 : !sea.ptr<64>, i64 loc("_138"("seahorn/lib/bcmp.c":162:3))
  %v171 = sea.ptr.dereferenceable %v90, %v26 : !sea.ptr<64>, i64 loc("_139"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v171, ^bb92, ^bb163 loc("seahorn/lib/bcmp.c":162:3)
^bb92:
  %v172 = sea.memmove %v159[%v167], %v159[%v90], %v26 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb93
^bb93:
  %v173 = sea.load %v160[%v30] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_141"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v174 = sea.const 0 : i64 loc(".not.i5.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v175 = sea.icmp eq, %v173, %v174 : i64 loc(".not.i5.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  sea.cond_br %v175, ^bb96, ^bb94 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb94:
  sea.br ^bb95
^bb95:
  %v176 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v177 = sea.xor %v163, %v176 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v177 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb96 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb96:
  sea.br ^bb97
^bb97:
  %v178 = sea.icmp ugt, %v173, %v29 : i64 loc(".not2.i.i"("aws-c-common/include/aws/common/array_list.inl":396:15))
  sea.cond_br %v178, ^bb99(%v173 : i64), ^bb98 loc("aws-c-common/include/aws/common/array_list.inl":396:9)
^bb98:
  sea.br ^bb99(%v134 : i64)
^bb99(%v179 : i64):
  %v180 = sea.load %v96[%v95] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_147"("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":39:9))
  %v181 = sea.const 1 : i64 loc("_148"("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":39:9))
  %v182 = sea.add %v180, %v181 : i64 loc("_148"("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":39:9))
  %v183 = sea.icmp eq, %v179, %v182 : i64 loc("_149"("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":39:9))
  sea.cond_br %v183, ^bb130(%v160, %v179 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb163 loc("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":39:9)
^bb100:
  sea.br ^bb104 loc("aws-c-common/source/array_list.c":145:13)
^bb101:
  sea.br ^bb104 loc("aws-c-common/source/array_list.c":140:13)
^bb102:
  sea.br ^bb104
^bb103:
  sea.br ^bb104 loc("aws-c-common/source/array_list.c":111:9)
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
  sea.br ^bb117
^bb117:
  sea.br ^bb118
^bb118:
  sea.br ^bb119
^bb119:
  sea.br ^bb120
^bb120:
  sea.br ^bb121
^bb121:
  sea.cond_br %v33, ^bb130(%v48, %v29 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb122 loc("seahorn/lib/utils.c":69:7)
^bb122:
  sea.br ^bb123
^bb123:
  %v184 = sea.ptr.null : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v185 = sea.ptr.cmp eq, %v44, %v184 : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  sea.cond_br %v185, ^bb130(%v48, %v29 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb124 loc("seahorn/lib/utils.c":39:14)
^bb124:
  sea.br ^bb125
^bb125:
  %v186 = sea.ptr.index %v44 [%v101] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_171"("seahorn/lib/utils.c":40:5))
  %v187 = sea.const 1 : i64 loc("_172"("seahorn/lib/utils.c":40:5))
  %v188 = sea.ptr.dereferenceable %v186, %v187 : !sea.ptr<64>, i64 loc("_172"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v188, ^bb126, ^bb163
^bb126:
  %v189 = sea.load %v89[%v186] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_174"("seahorn/lib/utils.c":40:5))
  sea.br ^bb127
^bb127:
  %v190 = sea.icmp eq, %v189, %v116 : i8 loc("_176"("seahorn/lib/utils.c":40:5))
  sea.br ^bb128
^bb128:
  %v191 = sea.const 1 : i64 loc("_178"("seahorn/lib/utils.c":40:5))
  %v192 = sea.ptr.dereferenceable %v186, %v191 : !sea.ptr<64>, i64 loc("_178"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v192, ^bb129, ^bb163
^bb129:
  %v193 = sea.const 1 : i1 loc("or.cond18")
  %v194 = sea.const 0 : i1 loc("or.cond18")
  %v195 = sea.select %v193, %v190, %v194 : i1 loc("or.cond18")
  sea.cond_br %v195, ^bb130(%v48, %v29 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb163
^bb130(%v196 : !sea.mem<!sea.ptr<64>, i8>, %v197 : i64):
  sea.br ^bb131
^bb131:
  sea.br ^bb132
^bb132:
  %v198 = sea.load %v196[%v27] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_183"("aws-c-common/include/aws/common/array_list.inl":91:51))
  sea.br ^bb133
^bb133:
  %v199 = sea.mul %v197, %v198 : i64 loc("_185"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v200 = sea.umulo %v197, %v198 : i64 loc("_185"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v200, ^bb134, ^bb135 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb134:
  sea.br ^bb135 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb135:
  %v201 = sea.const 1 : i1 loc("_189"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v202 = sea.xor %v200, %v201 : i1 loc("_189"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb136
^bb136:
  %v203 = sea.load %v196[%v24] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_191"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v204 = sea.icmp uge, %v203, %v199 : i64 loc("_192"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb137
^bb137:
  %v205 = sea.const 0 : i64 loc("_194"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v206 = sea.icmp eq, %v203, %v205 : i64 loc("_194"("aws-c-common/include/aws/common/array_list.inl":93:26))
  sea.cond_br %v206, ^bb142, ^bb138 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb138:
  sea.br ^bb139
^bb139:
  sea.br ^bb140
^bb140:
  sea.br ^bb141
^bb141:
  %v207 = sea.load %v196[%v45] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_202"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v208 = sea.ptr.null : !sea.ptr<64> loc("_203"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v209 = sea.ptr.cmp ne, %v207, %v208 : !sea.ptr<64> loc("_203"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb145(%v207, %v209 : !sea.ptr<64>, i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb142:
  sea.br ^bb143
^bb143:
  %v210 = sea.load %v196[%v45] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_197"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v211 = sea.ptr.null : !sea.ptr<64> loc("_198"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v212 = sea.ptr.cmp eq, %v210, %v211 : !sea.ptr<64> loc("_198"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v213 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v212, ^bb144, ^bb145(%v210, %v213 : !sea.ptr<64>, i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb144:
  %v214 = sea.ptr.null : !sea.ptr<64>
  %v215 = sea.const 1 : i1
  sea.br ^bb145(%v214, %v215 : !sea.ptr<64>, i1)
^bb145(%v216 : !sea.ptr<64>, %v217 : i1):
  sea.br ^bb146
^bb146:
  %v218 = sea.const 0 : i1 loc("or.cond.i21.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v219 = sea.select %v202, %v204, %v218 : i1 loc("or.cond.i21.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v220 = sea.const 0 : i1 loc("or.cond3.i22.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v221 = sea.select %v219, %v217, %v220 : i1 loc("or.cond3.i22.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v222 = sea.const 0 : i64 loc("_207")
  %v223 = sea.icmp ne, %v198, %v222 : i64 loc("_207")
  %v224 = sea.const 0 : i1 loc("spec.select34"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v225 = sea.select %v221, %v223, %v224 : i1 loc("spec.select34"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb147
^bb147:
  sea.br ^bb148
^bb148:
  sea.br ^bb149
^bb149:
  sea.cond_br %v200, ^bb150, ^bb151 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb150:
  sea.br ^bb151 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb151:
  sea.br ^bb152
^bb152:
  sea.br ^bb153
^bb153:
  sea.cond_br %v206, ^bb158, ^bb154 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb154:
  sea.br ^bb155
^bb155:
  sea.br ^bb156
^bb156:
  sea.br ^bb157
^bb157:
  %v226 = sea.ptr.null : !sea.ptr<64> loc("_220"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v227 = sea.ptr.cmp ne, %v216, %v226 : !sea.ptr<64> loc("_220"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb161(%v227 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb158:
  sea.br ^bb159
^bb159:
  %v228 = sea.ptr.null : !sea.ptr<64> loc("_216"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v229 = sea.ptr.cmp eq, %v216, %v228 : !sea.ptr<64> loc("_216"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v230 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v229, ^bb160, ^bb161(%v230 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb160:
  %v231 = sea.const 1 : i1
  sea.br ^bb161(%v231 : i1)
^bb161(%v232 : i1):
  sea.br ^bb162
^bb162:
  %v233 = sea.const 0 : i1 loc("or.cond3.i27.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v234 = sea.select %v219, %v232, %v233 : i1 loc("or.cond3.i27.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v235 = sea.const 0 : i1 loc("spec.select35"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v236 = sea.select %v234, %v223, %v235 : i1 loc("spec.select35"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v237 = sea.const 1 : i1 loc("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":44:5)
  %v238 = sea.xor %v236, %v237 : i1 loc("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":44:5)
  sea.assume %v238 loc("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":44:5)
  sea.br ^bb163 loc("seahorn/jobs/array_list_push_back/aws_array_list_push_back_harness.c":44:5)
^bb163:
  sea.br ^bb164
^bb164:
  %v239 = sea.const 0 : i1
  sea.assert %v239
  sea.halt
}
