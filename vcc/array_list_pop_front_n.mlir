// Exported from SeaHorn (array_list_pop_front_n.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm24")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm25")
  %v2 = sea.mem.nondet "region.56" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm26")
  %v3 = sea.mem.nondet "region.96" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm27")
  %v4 = sea.mem.nondet "region.105" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm28")
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
  sea.assume %v73 loc("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":20:5)
  %v74 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":23:33)
  %v75 = sea.store %v2[%v8], %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":23:33)
  %v76 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":23:33))
  %v77 = sea.store %v75[%v76], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":23:33)
  %v78 = sea.ptr.index %v8 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy5.i"("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":23:33))
  %v79 = sea.store %v77[%v78], %v29 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":23:33)
  %v80 = sea.ptr.index %v8 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i"("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":23:33))
  %v81 = sea.store %v79[%v80], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":23:33)
  %v82 = sea.ptr.index %v8 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy11.i"("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":23:33))
  %v83 = sea.store %v81[%v82], %v44 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":23:33)
  %v84 = sea.nondet "nd_size_t" [14] : i64 loc("_48"("seahorn/lib/utils.c":46:20))
  sea.br ^bb29
^bb29:
  %v85 = sea.store %v3[%v10], %v84 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v86 = sea.const 0 : i64 loc("_50"("seahorn/lib/utils.c":47:12))
  %v87 = sea.icmp ne, %v23, %v86 : i64 loc("_50"("seahorn/lib/utils.c":47:12))
  %v88 = sea.ptr.null : !sea.ptr<64> loc("_51")
  %v89 = sea.ptr.cmp ne, %v44, %v88 : !sea.ptr<64> loc("_51")
  %v90 = sea.and %v87, %v89 : i1 loc("or.cond.i43.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v90, ^bb32, ^bb30 loc("seahorn/lib/utils.c":47:16)
^bb30:
  %v91 = sea.nondet "nd_uint8_t" [15] : i8 loc("_63"("seahorn/lib/utils.c":51:21))
  %v92 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_64"("seahorn/lib/utils.c":51:14))
  sea.br ^bb31
^bb31:
  %v93 = sea.store %v85[%v92], %v91 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb37(%v93 : !sea.mem<!sea.ptr<64>, i8>)
^bb32:
  sea.br ^bb33
^bb33:
  %v94 = sea.icmp ult, %v84, %v23 : i64 loc("_54"("seahorn/lib/utils.c":48:27))
  sea.assume %v94 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb34
^bb34:
  %v95 = sea.ptr.index %v44 [%v84] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_56"("seahorn/lib/utils.c":49:21))
  %v96 = sea.const 1 : i64 loc("_57"("seahorn/lib/utils.c":49:21))
  %v97 = sea.ptr.dereferenceable %v95, %v96 : !sea.ptr<64>, i64 loc("_57"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v97, ^bb35, ^bb126
^bb35:
  %v98 = sea.load %v43[%v95] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_59"("seahorn/lib/utils.c":49:21))
  %v99 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_60"("seahorn/lib/utils.c":49:14))
  sea.br ^bb36
^bb36:
  %v100 = sea.store %v85[%v99], %v98 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb37(%v100 : !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/lib/utils.c":50:3)
^bb37(%v101 : !sea.mem<!sea.ptr<64>, i8>):
  %v102 = sea.nondet "nd_size_t" [16] : i64 loc("_66"("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":28:16))
  sea.br ^bb38
^bb38:
  %v103 = sea.const 0 : i64 loc(".not.i28.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v104 = sea.icmp eq, %v29, %v103 : i64 loc(".not.i28.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  sea.cond_br %v104, ^bb41, ^bb39 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb39:
  sea.br ^bb40
^bb40:
  %v105 = sea.ptr.null : !sea.ptr<64> loc(".not1.i29.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v106 = sea.ptr.cmp eq, %v44, %v105 : !sea.ptr<64> loc(".not1.i29.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v107 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v108 = sea.xor %v106, %v107 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v108 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb41 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb41:
  sea.br ^bb42
^bb42:
  %v109 = sea.icmp ugt, %v29, %v102 : i64 loc(".not.i.i"("aws-c-common/include/aws/common/array_list.inl":209:11))
  sea.cond_br %v109, ^bb47, ^bb43 loc("aws-c-common/include/aws/common/array_list.inl":209:9)
^bb43:
  sea.br ^bb44
^bb44:
  %v110 = sea.ptr.null : !sea.ptr<64> loc(".not.i32.i"("aws-c-common/include/aws/common/array_list.inl":299:9))
  %v111 = sea.ptr.cmp eq, %v44, %v110 : !sea.ptr<64> loc(".not.i32.i"("aws-c-common/include/aws/common/array_list.inl":299:9))
  sea.cond_br %v111, ^bb59(%v43, %v48, %v29 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64), ^bb45 loc("aws-c-common/include/aws/common/array_list.inl":299:9)
^bb45:
  sea.br ^bb46
^bb46:
  %v112 = sea.const 0 : i64 loc("aws-c-common/include/aws/common/array_list.inl":303:22)
  %v113 = sea.store %v48[%v30], %v112 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":303:22)
  %v114 = sea.const 0 : i64 loc("aws-c-common/include/aws/common/array_list.inl":304:5)
  sea.br ^bb59(%v43, %v113, %v114 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/include/aws/common/array_list.inl":304:5)
^bb47:
  %v115 = sea.const 0 : i64 loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":215:11))
  %v116 = sea.icmp eq, %v102, %v115 : i64 loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":215:11))
  sea.cond_br %v116, ^bb59(%v43, %v48, %v29 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64), ^bb48 loc("aws-c-common/include/aws/common/array_list.inl":215:9)
^bb48:
  sea.br ^bb49
^bb49:
  %v117 = sea.mul %v102, %v26 : i64 loc("_78"("aws-c-common/include/aws/common/array_list.inl":216:48))
  sea.br ^bb50
^bb50:
  sea.br ^bb51
^bb51:
  %v118 = sea.ptr.null : !sea.ptr<64> loc(".not1.i26.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v119 = sea.ptr.cmp eq, %v44, %v118 : !sea.ptr<64> loc(".not1.i26.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v120 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v121 = sea.xor %v119, %v120 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v121 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb52
^bb52:
  %v122 = sea.sub %v29, %v102 : i64 loc("_81"("aws-c-common/include/aws/common/array_list.inl":217:62))
  sea.br ^bb53
^bb53:
  %v123 = sea.mul %v122, %v26 : i64 loc("_83"("aws-c-common/include/aws/common/array_list.inl":218:50))
  sea.br ^bb54
^bb54:
  sea.br ^bb55
^bb55:
  %v124 = sea.ptr.index %v44 [%v117] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_86"("aws-c-common/include/aws/common/array_list.inl":219:51))
  %v125 = sea.ptr.dereferenceable %v44, %v123 : !sea.ptr<64>, i64 loc("_87"("seahorn/lib/bcmp.c":142:3))
  %v126 = sea.ptr.dereferenceable %v44, %v123 : !sea.ptr<64>, i64 loc("_88"("seahorn/lib/bcmp.c":142:3))
  sea.cond_br %v126, ^bb56, ^bb126 loc("seahorn/lib/bcmp.c":142:3)
^bb56:
  %v127 = sea.ptr.dereferenceable %v124, %v123 : !sea.ptr<64>, i64 loc("_90"("seahorn/lib/bcmp.c":143:3))
  %v128 = sea.ptr.dereferenceable %v124, %v123 : !sea.ptr<64>, i64 loc("_91"("seahorn/lib/bcmp.c":143:3))
  sea.cond_br %v128, ^bb57, ^bb126 loc("seahorn/lib/bcmp.c":143:3)
^bb57:
  %v129 = sea.memmove %v43[%v44], %v43[%v124], %v123 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":144:10)
  sea.br ^bb58
^bb58:
  %v130 = sea.store %v48[%v30], %v122 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":220:22)
  sea.br ^bb59(%v129, %v130, %v122 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/include/aws/common/array_list.inl":224:5)
^bb59(%v131 : !sea.mem<!sea.ptr<64>, i8>, %v132 : !sea.mem<!sea.ptr<64>, i8>, %v133 : i64):
  sea.br ^bb60
^bb60:
  sea.br ^bb61
^bb61:
  %v134 = sea.load %v132[%v27] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_96"("aws-c-common/include/aws/common/array_list.inl":91:51))
  sea.br ^bb62
^bb62:
  %v135 = sea.mul %v133, %v134 : i64 loc("_98"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v136 = sea.umulo %v133, %v134 : i64 loc("_98"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v136, ^bb63, ^bb64 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb63:
  sea.br ^bb64 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb64:
  %v137 = sea.const 1 : i1 loc("_102"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v138 = sea.xor %v136, %v137 : i1 loc("_102"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb65
^bb65:
  %v139 = sea.load %v132[%v24] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_104"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v140 = sea.icmp uge, %v139, %v135 : i64 loc("_105"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb66
^bb66:
  %v141 = sea.const 0 : i64 loc("_107"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v142 = sea.icmp eq, %v139, %v141 : i64 loc("_107"("aws-c-common/include/aws/common/array_list.inl":93:26))
  sea.cond_br %v142, ^bb71, ^bb67 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb67:
  sea.br ^bb68
^bb68:
  sea.br ^bb69
^bb69:
  sea.br ^bb70
^bb70:
  %v143 = sea.load %v132[%v45] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_115"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v144 = sea.ptr.null : !sea.ptr<64> loc("_116"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v145 = sea.ptr.cmp ne, %v143, %v144 : !sea.ptr<64> loc("_116"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb74(%v143, %v145 : !sea.ptr<64>, i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb71:
  sea.br ^bb72
^bb72:
  %v146 = sea.load %v132[%v45] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_110"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v147 = sea.ptr.null : !sea.ptr<64> loc("_111"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v148 = sea.ptr.cmp eq, %v146, %v147 : !sea.ptr<64> loc("_111"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v149 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v148, ^bb73, ^bb74(%v146, %v149 : !sea.ptr<64>, i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb73:
  %v150 = sea.ptr.null : !sea.ptr<64>
  %v151 = sea.const 1 : i1
  sea.br ^bb74(%v150, %v151 : !sea.ptr<64>, i1)
^bb74(%v152 : !sea.ptr<64>, %v153 : i1):
  sea.br ^bb75
^bb75:
  %v154 = sea.const 0 : i1 loc("or.cond.i15.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v155 = sea.select %v138, %v140, %v154 : i1 loc("or.cond.i15.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v156 = sea.const 0 : i1 loc("or.cond3.i16.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v157 = sea.select %v155, %v153, %v156 : i1 loc("or.cond3.i16.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v158 = sea.const 0 : i64 loc("_120")
  %v159 = sea.icmp ne, %v134, %v158 : i64 loc("_120")
  %v160 = sea.const 0 : i1 loc("spec.select15"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v161 = sea.select %v157, %v159, %v160 : i1 loc("spec.select15"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb76
^bb76:
  sea.br ^bb77
^bb77:
  sea.br ^bb78
^bb78:
  sea.cond_br %v136, ^bb79, ^bb80 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb79:
  sea.br ^bb80 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb80:
  sea.br ^bb81
^bb81:
  sea.br ^bb82
^bb82:
  sea.cond_br %v142, ^bb87, ^bb83 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb83:
  sea.br ^bb84
^bb84:
  sea.br ^bb85
^bb85:
  sea.br ^bb86
^bb86:
  %v162 = sea.ptr.null : !sea.ptr<64> loc("_133"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v163 = sea.ptr.cmp ne, %v152, %v162 : !sea.ptr<64> loc("_133"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb90(%v163 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb87:
  sea.br ^bb88
^bb88:
  %v164 = sea.ptr.null : !sea.ptr<64> loc("_129"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v165 = sea.ptr.cmp eq, %v152, %v164 : !sea.ptr<64> loc("_129"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v166 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v165, ^bb89, ^bb90(%v166 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb89:
  %v167 = sea.const 1 : i1
  sea.br ^bb90(%v167 : i1)
^bb90(%v168 : i1):
  sea.br ^bb91
^bb91:
  %v169 = sea.const 0 : i1 loc("or.cond3.i21.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v170 = sea.select %v155, %v168, %v169 : i1 loc("or.cond3.i21.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.cond_br %v170, ^bb93, ^bb92 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb92:
  sea.br ^bb126 loc("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":32:5)
^bb93:
  %v171 = sea.const 0 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v172 = sea.icmp eq, %v134, %v171 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  sea.cond_br %v172, ^bb126, ^bb94 loc("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":32:5)
^bb94:
  %v173 = sea.const 0 : i64 loc("_138"("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":33:11))
  %v174 = sea.icmp eq, %v102, %v173 : i64 loc("_138"("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":33:11))
  sea.cond_br %v174, ^bb101, ^bb95 loc("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":33:9)
^bb95:
  %v175 = sea.load %v132[%v6] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_183"("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":36:9))
  %v176 = sea.load %v75[%v8] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_184"("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":36:9))
  %v177 = sea.ptr.cmp eq, %v175, %v176 : !sea.ptr<64> loc("_185"("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":36:9))
  sea.cond_br %v177, ^bb96, ^bb126 loc("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":36:9)
^bb96:
  %v178 = sea.load %v77[%v76] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_187"("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":37:9))
  %v179 = sea.icmp eq, %v139, %v178 : i64 loc("_188"("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":37:9))
  sea.cond_br %v179, ^bb97, ^bb126 loc("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":37:9)
^bb97:
  %v180 = sea.load %v81[%v80] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_190"("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":38:9))
  %v181 = sea.icmp eq, %v134, %v180 : i64 loc("_191"("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":38:9))
  sea.cond_br %v181, ^bb98, ^bb126 loc("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":38:9)
^bb98:
  %v182 = sea.load %v79[%v78] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_193"("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":39:19))
  %v183 = sea.icmp ult, %v102, %v182 : i64 loc(".not.i"("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":39:12))
  sea.cond_br %v183, ^bb100, ^bb99 loc("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":39:9)
^bb99:
  %v184 = sea.const 0 : i64 loc("_195"("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":39:29))
  %v185 = sea.icmp eq, %v133, %v184 : i64 loc("_195"("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":39:29))
  %v186 = sea.const 1 : i1 loc("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":39:29)
  %v187 = sea.xor %v185, %v186 : i1 loc("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":39:29)
  sea.assume %v187 loc("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":39:29)
  sea.br ^bb126 loc("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":39:29)
^bb100:
  %v188 = sea.sub %v182, %v102 : i64 loc("_197"("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":39:57))
  %v189 = sea.icmp eq, %v133, %v188 : i64 loc("_198"("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":39:57))
  %v190 = sea.const 1 : i1 loc("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":39:57)
  %v191 = sea.xor %v189, %v190 : i1 loc("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":39:57)
  sea.assume %v191 loc("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":39:57)
  sea.br ^bb126 loc("seahorn/jobs/array_list_pop_front_n/aws_array_list_pop_front_n_harness.c":39:57)
^bb101:
  sea.br ^bb102
^bb102:
  %v192 = sea.load %v132[%v6] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_141"("seahorn/lib/utils.c":65:3))
  sea.br ^bb103
^bb103:
  %v193 = sea.load %v75[%v8] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_143"("seahorn/lib/utils.c":65:3))
  %v194 = sea.ptr.cmp eq, %v192, %v193 : !sea.ptr<64> loc("_144"("seahorn/lib/utils.c":65:3))
  sea.br ^bb104
^bb104:
  %v195 = sea.const 1 : i1 loc("or.cond")
  %v196 = sea.const 0 : i1 loc("or.cond")
  %v197 = sea.select %v195, %v194, %v196 : i1 loc("or.cond")
  sea.cond_br %v197, ^bb105, ^bb126
^bb105:
  sea.br ^bb106
^bb106:
  sea.br ^bb107
^bb107:
  %v198 = sea.load %v77[%v76] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_149"("seahorn/lib/utils.c":66:3))
  %v199 = sea.icmp eq, %v139, %v198 : i64 loc("_150"("seahorn/lib/utils.c":66:3))
  sea.br ^bb108
^bb108:
  %v200 = sea.const 1 : i1 loc("or.cond5")
  %v201 = sea.const 0 : i1 loc("or.cond5")
  %v202 = sea.select %v200, %v199, %v201 : i1 loc("or.cond5")
  sea.cond_br %v202, ^bb109, ^bb126
^bb109:
  sea.br ^bb110
^bb110:
  sea.br ^bb111
^bb111:
  %v203 = sea.load %v79[%v78] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_155"("seahorn/lib/utils.c":67:3))
  %v204 = sea.icmp eq, %v133, %v203 : i64 loc("_156"("seahorn/lib/utils.c":67:3))
  sea.br ^bb112
^bb112:
  %v205 = sea.const 1 : i1 loc("or.cond7")
  %v206 = sea.const 0 : i1 loc("or.cond7")
  %v207 = sea.select %v205, %v204, %v206 : i1 loc("or.cond7")
  sea.cond_br %v207, ^bb113, ^bb126
^bb113:
  sea.br ^bb114
^bb114:
  sea.br ^bb115
^bb115:
  %v208 = sea.load %v81[%v80] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_161"("seahorn/lib/utils.c":68:3))
  %v209 = sea.icmp eq, %v134, %v208 : i64 loc("_162"("seahorn/lib/utils.c":68:3))
  sea.br ^bb116
^bb116:
  %v210 = sea.const 1 : i1 loc("or.cond9")
  %v211 = sea.const 0 : i1 loc("or.cond9")
  %v212 = sea.select %v210, %v209, %v211 : i1 loc("or.cond9")
  sea.cond_br %v212, ^bb117, ^bb126
^bb117:
  sea.br ^bb118
^bb118:
  %v213 = sea.const 1 : i1 loc("seahorn/lib/utils.c":69:7)
  %v214 = sea.xor %v142, %v213 : i1 loc("seahorn/lib/utils.c":69:7)
  sea.assume %v214 loc("seahorn/lib/utils.c":69:7)
  sea.br ^bb119
^bb119:
  %v215 = sea.ptr.null : !sea.ptr<64> loc("_167"("seahorn/lib/utils.c":39:7))
  %v216 = sea.ptr.cmp ne, %v152, %v215 : !sea.ptr<64> loc("_167"("seahorn/lib/utils.c":39:7))
  sea.assume %v216 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb120
^bb120:
  %v217 = sea.load %v101[%v10] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_169"("seahorn/lib/utils.c":40:5))
  %v218 = sea.ptr.index %v152 [%v217] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_170"("seahorn/lib/utils.c":40:5))
  %v219 = sea.const 1 : i64 loc("_171"("seahorn/lib/utils.c":40:5))
  %v220 = sea.ptr.dereferenceable %v218, %v219 : !sea.ptr<64>, i64 loc("_171"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v220, ^bb121, ^bb126
^bb121:
  %v221 = sea.load %v131[%v218] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_173"("seahorn/lib/utils.c":40:5))
  %v222 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_174"("seahorn/lib/utils.c":40:5))
  sea.br ^bb122
^bb122:
  %v223 = sea.load %v101[%v222] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_176"("seahorn/lib/utils.c":40:5))
  %v224 = sea.icmp eq, %v221, %v223 : i8 loc("_177"("seahorn/lib/utils.c":40:5))
  sea.br ^bb123
^bb123:
  %v225 = sea.const 1 : i64 loc("_179"("seahorn/lib/utils.c":40:5))
  %v226 = sea.ptr.dereferenceable %v218, %v225 : !sea.ptr<64>, i64 loc("_179"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v226, ^bb124, ^bb126
^bb124:
  sea.br ^bb125
^bb125:
  %v227 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v228 = sea.xor %v224, %v227 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v228 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb126 loc("seahorn/lib/utils.c":40:5)
^bb126:
  sea.br ^bb127
^bb127:
  %v229 = sea.const 0 : i1
  sea.assert %v229
  sea.halt
}
