// Exported from SeaHorn (array_list_pop_front.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm22")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm23")
  %v2 = sea.mem.nondet "region.56" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm24")
  %v3 = sea.mem.nondet "region.96" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm25")
  %v4 = sea.mem.nondet "region.105" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm26")
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
  sea.assume %v73 loc("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":20:5)
  %v74 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":23:33)
  %v75 = sea.store %v2[%v8], %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":23:33)
  %v76 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":23:33))
  %v77 = sea.store %v75[%v76], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":23:33)
  %v78 = sea.ptr.index %v8 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy5.i"("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":23:33))
  %v79 = sea.store %v77[%v78], %v29 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":23:33)
  %v80 = sea.ptr.index %v8 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i"("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":23:33))
  %v81 = sea.store %v79[%v80], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":23:33)
  %v82 = sea.ptr.index %v8 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy11.i"("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":23:33))
  %v83 = sea.store %v81[%v82], %v44 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":23:33)
  %v84 = sea.nondet "nd_size_t" [14] : i64 loc("_48"("seahorn/lib/utils.c":46:20))
  sea.br ^bb29
^bb29:
  %v85 = sea.store %v3[%v10], %v84 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v86 = sea.const 0 : i64 loc("_50"("seahorn/lib/utils.c":47:12))
  %v87 = sea.icmp ne, %v23, %v86 : i64 loc("_50"("seahorn/lib/utils.c":47:12))
  %v88 = sea.ptr.null : !sea.ptr<64> loc("_51")
  %v89 = sea.ptr.cmp ne, %v44, %v88 : !sea.ptr<64> loc("_51")
  %v90 = sea.and %v87, %v89 : i1 loc("or.cond.i41.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v90, ^bb32, ^bb30 loc("seahorn/lib/utils.c":47:16)
^bb30:
  %v91 = sea.nondet "nd_uint8_t" [15] : i8 loc("_63"("seahorn/lib/utils.c":51:21))
  %v92 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_64"("seahorn/lib/utils.c":51:14))
  sea.br ^bb31
^bb31:
  %v93 = sea.store %v85[%v92], %v91 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb37(%v91 : i8)
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
  sea.cond_br %v97, ^bb35, ^bb124
^bb35:
  %v98 = sea.load %v43[%v95] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_59"("seahorn/lib/utils.c":49:21))
  %v99 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_60"("seahorn/lib/utils.c":49:14))
  sea.br ^bb36
^bb36:
  %v100 = sea.store %v85[%v99], %v98 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb37(%v98 : i8) loc("seahorn/lib/utils.c":50:3)
^bb37(%v101 : i8):
  sea.br ^bb38
^bb38:
  %v102 = sea.const 0 : i64 loc(".not.i25.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v103 = sea.icmp eq, %v29, %v102 : i64 loc(".not.i25.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  sea.cond_br %v103, ^bb64, ^bb39 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb39:
  sea.br ^bb40
^bb40:
  %v104 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v105 = sea.ptr.cmp eq, %v44, %v104 : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v106 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v107 = sea.xor %v105, %v106 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v107 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb41
^bb41:
  sea.br ^bb42
^bb42:
  sea.br ^bb43
^bb43:
  %v108 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v109 = sea.xor %v105, %v108 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v109 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb44
^bb44:
  %v110 = sea.const 1 : i64 loc(".not.i26.i.not"("aws-c-common/include/aws/common/array_list.inl":209:11))
  %v111 = sea.icmp eq, %v29, %v110 : i64 loc(".not.i26.i.not"("aws-c-common/include/aws/common/array_list.inl":209:11))
  sea.cond_br %v111, ^bb56, ^bb45 loc("aws-c-common/include/aws/common/array_list.inl":209:9)
^bb45:
  sea.br ^bb46
^bb46:
  sea.br ^bb47
^bb47:
  sea.br ^bb48
^bb48:
  %v112 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v113 = sea.xor %v105, %v112 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v113 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb49
^bb49:
  sea.br ^bb50
^bb50:
  %v114 = sea.const 18446744073709551615 : i64 loc("_81"("aws-c-common/include/aws/common/array_list.inl":217:62))
  %v115 = sea.add %v29, %v114 : i64 loc("_81"("aws-c-common/include/aws/common/array_list.inl":217:62))
  %v116 = sea.mul %v115, %v26 : i64 loc("_82"("aws-c-common/include/aws/common/array_list.inl":218:50))
  sea.br ^bb51
^bb51:
  sea.br ^bb52
^bb52:
  %v117 = sea.ptr.index %v44 [%v26] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_85"("aws-c-common/include/aws/common/array_list.inl":219:51))
  %v118 = sea.ptr.dereferenceable %v44, %v116 : !sea.ptr<64>, i64 loc("_86"("seahorn/lib/bcmp.c":142:3))
  %v119 = sea.ptr.dereferenceable %v44, %v116 : !sea.ptr<64>, i64 loc("_87"("seahorn/lib/bcmp.c":142:3))
  sea.cond_br %v119, ^bb53, ^bb124 loc("seahorn/lib/bcmp.c":142:3)
^bb53:
  %v120 = sea.ptr.dereferenceable %v117, %v116 : !sea.ptr<64>, i64 loc("_89"("seahorn/lib/bcmp.c":143:3))
  %v121 = sea.ptr.dereferenceable %v117, %v116 : !sea.ptr<64>, i64 loc("_90"("seahorn/lib/bcmp.c":143:3))
  sea.cond_br %v121, ^bb54, ^bb124 loc("seahorn/lib/bcmp.c":143:3)
^bb54:
  %v122 = sea.memmove %v43[%v44], %v43[%v117], %v116 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":144:10)
  sea.br ^bb55
^bb55:
  %v123 = sea.load %v46[%v45] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc(".pre"("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":30:9))
  %v124 = sea.ptr.null : !sea.ptr<64> loc("_92"("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":30:9))
  %v125 = sea.ptr.cmp ne, %v123, %v124 : !sea.ptr<64> loc("_92"("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":30:9))
  %v126 = sea.ptr.null : !sea.ptr<64> loc(".not13.i"("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":30:9))
  %v127 = sea.ptr.cmp eq, %v123, %v126 : !sea.ptr<64> loc(".not13.i"("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":30:9))
  sea.cond_br %v127, ^bb124, ^bb60(%v115, %v123 : i64, !sea.ptr<64>) loc("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":30:9)
^bb56:
  sea.br ^bb57
^bb57:
  sea.cond_br %v105, ^bb63, ^bb58 loc("aws-c-common/include/aws/common/array_list.inl":299:9)
^bb58:
  sea.br ^bb59
^bb59:
  %v128 = sea.const 0 : i64 loc("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":30:9)
  sea.br ^bb60(%v128, %v44 : i64, !sea.ptr<64>) loc("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":30:9)
^bb60(%v129 : i64, %v130 : !sea.ptr<64>):
  %v131 = sea.load %v48[%v6] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_96"("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":31:9))
  %v132 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_97"("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":31:9))
  %v133 = sea.ptr.cmp eq, %v131, %v132 : !sea.ptr<64> loc("_97"("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":31:9))
  sea.cond_br %v133, ^bb61, ^bb124 loc("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":31:9)
^bb61:
  %v134 = sea.load %v25[%v24] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_99"("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":32:9))
  %v135 = sea.icmp eq, %v134, %v23 : i64 loc("_100"("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":32:9))
  sea.cond_br %v135, ^bb62, ^bb124 loc("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":32:9)
^bb62:
  %v136 = sea.load %v28[%v27] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_102"("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":33:9))
  %v137 = sea.icmp eq, %v136, %v26 : i64 loc("_103"("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":33:9))
  sea.cond_br %v137, ^bb91(%v130, %v129 : !sea.ptr<64>, i64), ^bb124 loc("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":33:9)
^bb63:
  sea.br ^bb124 loc("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":29:9)
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
  sea.br ^bb73
^bb73:
  sea.br ^bb74
^bb74:
  sea.br ^bb75
^bb75:
  sea.br ^bb76
^bb76:
  sea.br ^bb77
^bb77:
  sea.br ^bb78
^bb78:
  sea.br ^bb79
^bb79:
  sea.br ^bb80
^bb80:
  sea.br ^bb81
^bb81:
  sea.br ^bb82
^bb82:
  %v138 = sea.const 0 : i64 loc("seahorn/lib/utils.c":69:7)
  sea.cond_br %v33, ^bb91(%v44, %v138 : !sea.ptr<64>, i64), ^bb83 loc("seahorn/lib/utils.c":69:7)
^bb83:
  sea.br ^bb84
^bb84:
  %v139 = sea.ptr.null : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v140 = sea.ptr.cmp eq, %v44, %v139 : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v141 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/utils.c":39:14)
  %v142 = sea.const 0 : i64 loc("seahorn/lib/utils.c":39:14)
  sea.cond_br %v140, ^bb91(%v141, %v142 : !sea.ptr<64>, i64), ^bb85 loc("seahorn/lib/utils.c":39:14)
^bb85:
  sea.br ^bb86
^bb86:
  %v143 = sea.ptr.index %v44 [%v84] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_126"("seahorn/lib/utils.c":40:5))
  %v144 = sea.const 1 : i64 loc("_127"("seahorn/lib/utils.c":40:5))
  %v145 = sea.ptr.dereferenceable %v143, %v144 : !sea.ptr<64>, i64 loc("_127"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v145, ^bb87, ^bb124
^bb87:
  %v146 = sea.load %v43[%v143] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_129"("seahorn/lib/utils.c":40:5))
  sea.br ^bb88
^bb88:
  %v147 = sea.icmp eq, %v146, %v101 : i8 loc("_131"("seahorn/lib/utils.c":40:5))
  sea.br ^bb89
^bb89:
  %v148 = sea.const 1 : i64 loc("_133"("seahorn/lib/utils.c":40:5))
  %v149 = sea.ptr.dereferenceable %v143, %v148 : !sea.ptr<64>, i64 loc("_133"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v149, ^bb90, ^bb124
^bb90:
  %v150 = sea.const 1 : i1 loc("or.cond11")
  %v151 = sea.const 0 : i1 loc("or.cond11")
  %v152 = sea.select %v150, %v147, %v151 : i1 loc("or.cond11")
  %v153 = sea.const 0 : i64
  sea.cond_br %v152, ^bb91(%v44, %v153 : !sea.ptr<64>, i64), ^bb124
^bb91(%v154 : !sea.ptr<64>, %v155 : i64):
  sea.br ^bb92
^bb92:
  sea.br ^bb93
^bb93:
  sea.br ^bb94
^bb94:
  %v156 = sea.mul %v155, %v26 : i64 loc("_140"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v157 = sea.umulo %v155, %v26 : i64 loc("_140"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v157, ^bb95, ^bb96 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb95:
  sea.br ^bb96 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb96:
  %v158 = sea.const 1 : i1 loc("_144"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v159 = sea.xor %v157, %v158 : i1 loc("_144"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb97
^bb97:
  %v160 = sea.icmp uge, %v23, %v156 : i64 loc("_146"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb98
^bb98:
  sea.cond_br %v33, ^bb103, ^bb99 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb99:
  sea.br ^bb100
^bb100:
  sea.br ^bb101
^bb101:
  sea.br ^bb102
^bb102:
  %v161 = sea.ptr.null : !sea.ptr<64> loc("_154"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v162 = sea.ptr.cmp ne, %v154, %v161 : !sea.ptr<64> loc("_154"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb106(%v162 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb103:
  sea.br ^bb104
^bb104:
  %v163 = sea.ptr.null : !sea.ptr<64> loc("_150"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v164 = sea.ptr.cmp eq, %v154, %v163 : !sea.ptr<64> loc("_150"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v165 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v164, ^bb105, ^bb106(%v165 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb105:
  %v166 = sea.const 1 : i1
  sea.br ^bb106(%v166 : i1)
^bb106(%v167 : i1):
  sea.br ^bb107
^bb107:
  %v168 = sea.const 0 : i1 loc("or.cond.i16.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v169 = sea.select %v159, %v160, %v168 : i1 loc("or.cond.i16.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v170 = sea.const 0 : i1 loc("or.cond3.i17.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v171 = sea.select %v169, %v167, %v170 : i1 loc("or.cond3.i17.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v172 = sea.const 0 : i1 loc("spec.select18"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v173 = sea.select %v171, %v71, %v172 : i1 loc("spec.select18"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb108
^bb108:
  sea.br ^bb109
^bb109:
  sea.br ^bb110
^bb110:
  sea.cond_br %v157, ^bb111, ^bb112 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb111:
  sea.br ^bb112 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb112:
  sea.br ^bb113
^bb113:
  sea.br ^bb114
^bb114:
  sea.cond_br %v33, ^bb119, ^bb115 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb115:
  sea.br ^bb116
^bb116:
  sea.br ^bb117
^bb117:
  sea.br ^bb118
^bb118:
  %v174 = sea.ptr.null : !sea.ptr<64> loc("_169"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v175 = sea.ptr.cmp ne, %v154, %v174 : !sea.ptr<64> loc("_169"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb122(%v175 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb119:
  sea.br ^bb120
^bb120:
  %v176 = sea.ptr.null : !sea.ptr<64> loc("_165"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v177 = sea.ptr.cmp eq, %v154, %v176 : !sea.ptr<64> loc("_165"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v178 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v177, ^bb121, ^bb122(%v178 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb121:
  %v179 = sea.const 1 : i1
  sea.br ^bb122(%v179 : i1)
^bb122(%v180 : i1):
  sea.br ^bb123
^bb123:
  %v181 = sea.const 0 : i1 loc("or.cond3.i22.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v182 = sea.select %v169, %v180, %v181 : i1 loc("or.cond3.i22.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v183 = sea.const 0 : i1 loc("spec.select19"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v184 = sea.select %v182, %v71, %v183 : i1 loc("spec.select19"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v185 = sea.const 1 : i1 loc("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":38:5)
  %v186 = sea.xor %v184, %v185 : i1 loc("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":38:5)
  sea.assume %v186 loc("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":38:5)
  sea.br ^bb124 loc("seahorn/jobs/array_list_pop_front/aws_array_list_pop_front_harness.c":38:5)
^bb124:
  sea.br ^bb125
^bb125:
  %v187 = sea.const 0 : i1
  sea.assert %v187
  sea.halt
}
