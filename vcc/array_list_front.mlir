// Exported from SeaHorn (array_list_front.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm23")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm24")
  %v2 = sea.mem.nondet "region.56" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm25")
  %v3 = sea.mem.nondet "region.96" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm26")
  %v4 = sea.mem.nondet "region.105" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm27")
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
  sea.assume %v73 loc("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":20:5)
  %v74 = sea.const 0 : i64 loc("_48"("seahorn/lib/proof_allocators.c":17:15))
  %v75 = sea.icmp eq, %v26, %v74 : i64 loc("_48"("seahorn/lib/proof_allocators.c":17:15))
  %v76 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v75, ^bb32(%v43, %v76 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb29 loc("seahorn/lib/proof_allocators.c":17:10)
^bb29:
  %v77 = sea.nondet "nd_malloc_is_fail" [14] : i1 loc("_50"("seahorn/lib/sea_allocators.c":11:10))
  %v78 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v77, ^bb31(%v43, %v78 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb30 loc("seahorn/lib/sea_allocators.c":11:10)
^bb30:
  %v79 = sea.const 1 : i64 loc("malloc51.i")
  %v80 = sea.mul %v26, %v79 : i64 loc("malloc51.i")
  %v81 = sea.alloca %v80 align 16 [15] : i64 -> !sea.ptr<64> loc("malloc51.i")
  sea.br ^bb31(%v43, %v81 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb31(%v82 : !sea.mem<!sea.ptr<64>, i8>, %v83 : !sea.ptr<64>):
  %v84 = sea.memhavoc %v82[%v83], %v26 [16] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v85 = sea.ptr.null : !sea.ptr<64> loc("_53"("seahorn/lib/sea_allocators.c":45:10))
  %v86 = sea.ptr.cmp ne, %v83, %v85 : !sea.ptr<64> loc("_53"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v86 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb32(%v84, %v83 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb32(%v87 : !sea.mem<!sea.ptr<64>, i8>, %v88 : !sea.ptr<64>):
  %v89 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":24:33)
  %v90 = sea.store %v2[%v8], %v89 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":24:33)
  %v91 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":24:33))
  %v92 = sea.store %v90[%v91], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":24:33)
  %v93 = sea.ptr.index %v8 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy5.i"("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":24:33))
  %v94 = sea.store %v92[%v93], %v29 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":24:33)
  %v95 = sea.ptr.index %v8 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i"("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":24:33))
  %v96 = sea.store %v94[%v95], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":24:33)
  %v97 = sea.ptr.index %v8 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy11.i"("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":24:33))
  %v98 = sea.store %v96[%v97], %v44 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":24:33)
  %v99 = sea.nondet "nd_size_t" [17] : i64 loc("_55"("seahorn/lib/utils.c":46:20))
  sea.br ^bb33
^bb33:
  %v100 = sea.store %v3[%v10], %v99 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v101 = sea.const 0 : i64 loc("_57"("seahorn/lib/utils.c":47:12))
  %v102 = sea.icmp ne, %v23, %v101 : i64 loc("_57"("seahorn/lib/utils.c":47:12))
  %v103 = sea.ptr.null : !sea.ptr<64> loc("_58")
  %v104 = sea.ptr.cmp ne, %v44, %v103 : !sea.ptr<64> loc("_58")
  %v105 = sea.and %v102, %v104 : i1 loc("or.cond.i48.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v105, ^bb36, ^bb34 loc("seahorn/lib/utils.c":47:16)
^bb34:
  %v106 = sea.nondet "nd_uint8_t" [18] : i8 loc("_70"("seahorn/lib/utils.c":51:21))
  %v107 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_71"("seahorn/lib/utils.c":51:14))
  sea.br ^bb35
^bb35:
  %v108 = sea.store %v100[%v107], %v106 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb41(%v108 : !sea.mem<!sea.ptr<64>, i8>)
^bb36:
  sea.br ^bb37
^bb37:
  %v109 = sea.icmp ult, %v99, %v23 : i64 loc("_61"("seahorn/lib/utils.c":48:27))
  sea.assume %v109 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb38
^bb38:
  %v110 = sea.ptr.index %v44 [%v99] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_63"("seahorn/lib/utils.c":49:21))
  %v111 = sea.const 1 : i64 loc("_64"("seahorn/lib/utils.c":49:21))
  %v112 = sea.ptr.dereferenceable %v110, %v111 : !sea.ptr<64>, i64 loc("_64"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v112, ^bb39, ^bb128
^bb39:
  %v113 = sea.load %v87[%v110] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_66"("seahorn/lib/utils.c":49:21))
  %v114 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_67"("seahorn/lib/utils.c":49:14))
  sea.br ^bb40
^bb40:
  %v115 = sea.store %v100[%v114], %v113 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb41(%v115 : !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/lib/utils.c":50:3)
^bb41(%v116 : !sea.mem<!sea.ptr<64>, i8>):
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
  sea.br ^bb55(%v104 : i1)
^bb52:
  sea.br ^bb53
^bb53:
  %v117 = sea.ptr.null : !sea.ptr<64> loc("_81"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v118 = sea.ptr.cmp eq, %v44, %v117 : !sea.ptr<64> loc("_81"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v119 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v118, ^bb54, ^bb55(%v119 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb54:
  %v120 = sea.const 1 : i1
  sea.br ^bb55(%v120 : i1)
^bb55(%v121 : i1):
  sea.br ^bb56
^bb56:
  %v122 = sea.and %v68, %v121 : i1 loc("or.cond3.i19.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v123 = sea.const 0 : i1 loc("spec.select18"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v124 = sea.select %v122, %v71, %v123 : i1 loc("spec.select18"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.assume %v124 loc("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":29:5)
  %v125 = sea.ptr.null : !sea.ptr<64> loc(".not.i"("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":30:12))
  %v126 = sea.ptr.cmp ne, %v88, %v125 : !sea.ptr<64> loc(".not.i"("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":30:12))
  sea.assume %v126 loc("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":30:5)
  sea.br ^bb57
^bb57:
  %v127 = sea.const 0 : i64 loc(".not.i33.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v128 = sea.icmp eq, %v29, %v127 : i64 loc(".not.i33.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  sea.cond_br %v128, ^bb66, ^bb58 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb58:
  sea.br ^bb59
^bb59:
  %v129 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v130 = sea.ptr.cmp eq, %v44, %v129 : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v131 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v132 = sea.xor %v130, %v131 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v132 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb60
^bb60:
  sea.br ^bb61
^bb61:
  sea.br ^bb62
^bb62:
  %v133 = sea.ptr.dereferenceable %v88, %v26 : !sea.ptr<64>, i64 loc("_92"("seahorn/lib/bcmp.c":161:3))
  %v134 = sea.ptr.dereferenceable %v88, %v26 : !sea.ptr<64>, i64 loc("_93"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v134, ^bb63, ^bb128 loc("seahorn/lib/bcmp.c":161:3)
^bb63:
  %v135 = sea.ptr.dereferenceable %v44, %v26 : !sea.ptr<64>, i64 loc("_95"("seahorn/lib/bcmp.c":162:3))
  %v136 = sea.ptr.dereferenceable %v44, %v26 : !sea.ptr<64>, i64 loc("_96"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v136, ^bb64, ^bb128 loc("seahorn/lib/bcmp.c":162:3)
^bb64:
  %v137 = sea.memmove %v87[%v88], %v87[%v44], %v26 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  %v138 = sea.load %v46[%v45] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_98"("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":36:9))
  %v139 = sea.ptr.null : !sea.ptr<64> loc("_99"("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":36:9))
  %v140 = sea.ptr.cmp ne, %v138, %v139 : !sea.ptr<64> loc("_99"("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":36:9))
  %v141 = sea.ptr.null : !sea.ptr<64> loc(".not14.i"("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":36:9))
  %v142 = sea.ptr.cmp eq, %v138, %v141 : !sea.ptr<64> loc(".not14.i"("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":36:9))
  sea.cond_br %v142, ^bb128, ^bb65 loc("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":36:9)
^bb65:
  %v143 = sea.load %v31[%v30] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_101"("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":37:9))
  %v144 = sea.const 0 : i64 loc("_102"("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":37:9))
  %v145 = sea.icmp ne, %v143, %v144 : i64 loc("_102"("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":37:9))
  %v146 = sea.const 0 : i64 loc(".not15.i"("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":37:9))
  %v147 = sea.icmp eq, %v143, %v146 : i64 loc(".not15.i"("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":37:9))
  sea.cond_br %v147, ^bb128, ^bb68(%v137, %v138, %v143 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64) loc("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":37:9)
^bb66:
  sea.br ^bb67
^bb67:
  %v148 = sea.const 0 : i64 loc("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":33:9)
  sea.br ^bb68(%v87, %v44, %v148 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64) loc("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":33:9)
^bb68(%v149 : !sea.mem<!sea.ptr<64>, i8>, %v150 : !sea.ptr<64>, %v151 : i64):
  sea.br ^bb69
^bb69:
  sea.br ^bb70
^bb70:
  %v152 = sea.load %v28[%v27] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_108"("aws-c-common/include/aws/common/array_list.inl":91:51))
  sea.br ^bb71
^bb71:
  %v153 = sea.mul %v151, %v152 : i64 loc("_110"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v154 = sea.umulo %v151, %v152 : i64 loc("_110"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v154, ^bb72, ^bb73 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb72:
  sea.br ^bb73 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb73:
  %v155 = sea.const 1 : i1 loc("_114"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v156 = sea.xor %v154, %v155 : i1 loc("_114"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb74
^bb74:
  %v157 = sea.load %v25[%v24] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_116"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v158 = sea.icmp uge, %v157, %v153 : i64 loc("_117"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb75
^bb75:
  %v159 = sea.const 0 : i64 loc("_119"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v160 = sea.icmp eq, %v157, %v159 : i64 loc("_119"("aws-c-common/include/aws/common/array_list.inl":93:26))
  sea.cond_br %v160, ^bb80, ^bb76 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb76:
  sea.br ^bb77
^bb77:
  sea.br ^bb78
^bb78:
  sea.br ^bb79
^bb79:
  %v161 = sea.ptr.null : !sea.ptr<64> loc("_126"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v162 = sea.ptr.cmp ne, %v150, %v161 : !sea.ptr<64> loc("_126"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb83(%v162 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb80:
  sea.br ^bb81
^bb81:
  %v163 = sea.ptr.null : !sea.ptr<64> loc("_122"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v164 = sea.ptr.cmp eq, %v150, %v163 : !sea.ptr<64> loc("_122"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v165 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v164, ^bb82, ^bb83(%v165 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb82:
  %v166 = sea.const 1 : i1
  sea.br ^bb83(%v166 : i1)
^bb83(%v167 : i1):
  sea.br ^bb84
^bb84:
  %v168 = sea.const 0 : i1 loc("or.cond.i23.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v169 = sea.select %v156, %v158, %v168 : i1 loc("or.cond.i23.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v170 = sea.const 0 : i1 loc("or.cond3.i24.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v171 = sea.select %v169, %v167, %v170 : i1 loc("or.cond3.i24.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v172 = sea.const 0 : i64 loc("_129")
  %v173 = sea.icmp ne, %v152, %v172 : i64 loc("_129")
  %v174 = sea.const 0 : i1 loc("spec.select19"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v175 = sea.select %v171, %v173, %v174 : i1 loc("spec.select19"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb85
^bb85:
  sea.br ^bb86
^bb86:
  sea.br ^bb87
^bb87:
  sea.cond_br %v154, ^bb88, ^bb89 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb88:
  sea.br ^bb89 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb89:
  sea.br ^bb90
^bb90:
  sea.br ^bb91
^bb91:
  sea.cond_br %v160, ^bb96, ^bb92 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb92:
  sea.br ^bb93
^bb93:
  sea.br ^bb94
^bb94:
  sea.br ^bb95
^bb95:
  %v176 = sea.ptr.null : !sea.ptr<64> loc("_142"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v177 = sea.ptr.cmp ne, %v150, %v176 : !sea.ptr<64> loc("_142"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb99(%v177 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb96:
  sea.br ^bb97
^bb97:
  %v178 = sea.ptr.null : !sea.ptr<64> loc("_138"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v179 = sea.ptr.cmp eq, %v150, %v178 : !sea.ptr<64> loc("_138"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v180 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v179, ^bb98, ^bb99(%v180 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb98:
  %v181 = sea.const 1 : i1
  sea.br ^bb99(%v181 : i1)
^bb99(%v182 : i1):
  sea.br ^bb100
^bb100:
  %v183 = sea.const 0 : i1 loc("or.cond3.i29.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v184 = sea.select %v169, %v182, %v183 : i1 loc("or.cond3.i29.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.cond_br %v184, ^bb102, ^bb101 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb101:
  sea.br ^bb128 loc("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":41:5)
^bb102:
  %v185 = sea.const 0 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v186 = sea.icmp eq, %v152, %v185 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  sea.cond_br %v186, ^bb128, ^bb103 loc("seahorn/jobs/array_list_front/aws_array_list_front_harness.c":41:5)
^bb103:
  sea.br ^bb104
^bb104:
  %v187 = sea.load %v48[%v6] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_148"("seahorn/lib/utils.c":65:3))
  sea.br ^bb105
^bb105:
  %v188 = sea.load %v90[%v8] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_150"("seahorn/lib/utils.c":65:3))
  %v189 = sea.ptr.cmp eq, %v187, %v188 : !sea.ptr<64> loc("_151"("seahorn/lib/utils.c":65:3))
  sea.br ^bb106
^bb106:
  %v190 = sea.const 1 : i1 loc("or.cond")
  %v191 = sea.const 0 : i1 loc("or.cond")
  %v192 = sea.select %v190, %v189, %v191 : i1 loc("or.cond")
  sea.cond_br %v192, ^bb107, ^bb128
^bb107:
  sea.br ^bb108
^bb108:
  sea.br ^bb109
^bb109:
  %v193 = sea.load %v92[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_156"("seahorn/lib/utils.c":66:3))
  %v194 = sea.icmp eq, %v157, %v193 : i64 loc("_157"("seahorn/lib/utils.c":66:3))
  sea.br ^bb110
^bb110:
  %v195 = sea.const 1 : i1 loc("or.cond5")
  %v196 = sea.const 0 : i1 loc("or.cond5")
  %v197 = sea.select %v195, %v194, %v196 : i1 loc("or.cond5")
  sea.cond_br %v197, ^bb111, ^bb128
^bb111:
  sea.br ^bb112
^bb112:
  sea.br ^bb113
^bb113:
  %v198 = sea.load %v94[%v93] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_162"("seahorn/lib/utils.c":67:3))
  %v199 = sea.icmp eq, %v151, %v198 : i64 loc("_163"("seahorn/lib/utils.c":67:3))
  sea.br ^bb114
^bb114:
  %v200 = sea.const 1 : i1 loc("or.cond7")
  %v201 = sea.const 0 : i1 loc("or.cond7")
  %v202 = sea.select %v200, %v199, %v201 : i1 loc("or.cond7")
  sea.cond_br %v202, ^bb115, ^bb128
^bb115:
  sea.br ^bb116
^bb116:
  sea.br ^bb117
^bb117:
  %v203 = sea.load %v96[%v95] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_168"("seahorn/lib/utils.c":68:3))
  %v204 = sea.icmp eq, %v152, %v203 : i64 loc("_169"("seahorn/lib/utils.c":68:3))
  sea.br ^bb118
^bb118:
  %v205 = sea.const 1 : i1 loc("or.cond9")
  %v206 = sea.const 0 : i1 loc("or.cond9")
  %v207 = sea.select %v205, %v204, %v206 : i1 loc("or.cond9")
  sea.cond_br %v207, ^bb119, ^bb128
^bb119:
  sea.br ^bb120
^bb120:
  %v208 = sea.const 1 : i1 loc("seahorn/lib/utils.c":69:7)
  %v209 = sea.xor %v160, %v208 : i1 loc("seahorn/lib/utils.c":69:7)
  sea.assume %v209 loc("seahorn/lib/utils.c":69:7)
  sea.br ^bb121
^bb121:
  %v210 = sea.ptr.null : !sea.ptr<64> loc("_174"("seahorn/lib/utils.c":39:7))
  %v211 = sea.ptr.cmp ne, %v150, %v210 : !sea.ptr<64> loc("_174"("seahorn/lib/utils.c":39:7))
  sea.assume %v211 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb122
^bb122:
  %v212 = sea.load %v116[%v10] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_176"("seahorn/lib/utils.c":40:5))
  %v213 = sea.ptr.index %v150 [%v212] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_177"("seahorn/lib/utils.c":40:5))
  %v214 = sea.const 1 : i64 loc("_178"("seahorn/lib/utils.c":40:5))
  %v215 = sea.ptr.dereferenceable %v213, %v214 : !sea.ptr<64>, i64 loc("_178"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v215, ^bb123, ^bb128
^bb123:
  %v216 = sea.load %v149[%v213] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_180"("seahorn/lib/utils.c":40:5))
  %v217 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_181"("seahorn/lib/utils.c":40:5))
  sea.br ^bb124
^bb124:
  %v218 = sea.load %v116[%v217] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_183"("seahorn/lib/utils.c":40:5))
  %v219 = sea.icmp eq, %v216, %v218 : i8 loc("_184"("seahorn/lib/utils.c":40:5))
  sea.br ^bb125
^bb125:
  %v220 = sea.const 1 : i64 loc("_186"("seahorn/lib/utils.c":40:5))
  %v221 = sea.ptr.dereferenceable %v213, %v220 : !sea.ptr<64>, i64 loc("_186"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v221, ^bb126, ^bb128
^bb126:
  sea.br ^bb127
^bb127:
  %v222 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v223 = sea.xor %v219, %v222 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v223 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb128 loc("seahorn/lib/utils.c":40:5)
^bb128:
  sea.br ^bb129
^bb129:
  %v224 = sea.const 0 : i1
  sea.assert %v224
  sea.halt
}
