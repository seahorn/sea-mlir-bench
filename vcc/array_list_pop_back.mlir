// Exported from SeaHorn (array_list_pop_back.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
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
  sea.assume %v73 loc("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":20:5)
  %v74 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":23:33)
  %v75 = sea.store %v2[%v8], %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":23:33)
  %v76 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":23:33))
  %v77 = sea.store %v75[%v76], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":23:33)
  %v78 = sea.ptr.index %v8 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy5.i"("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":23:33))
  %v79 = sea.store %v77[%v78], %v29 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":23:33)
  %v80 = sea.ptr.index %v8 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i"("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":23:33))
  %v81 = sea.store %v79[%v80], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":23:33)
  %v82 = sea.ptr.index %v8 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy11.i"("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":23:33))
  %v83 = sea.store %v81[%v82], %v44 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":23:33)
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
  sea.cond_br %v97, ^bb35, ^bb114
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
  %v102 = sea.const 0 : i64 loc(".not.i29.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v103 = sea.icmp eq, %v29, %v102 : i64 loc(".not.i29.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  sea.cond_br %v103, ^bb54, ^bb39 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb39:
  sea.br ^bb40
^bb40:
  %v104 = sea.ptr.null : !sea.ptr<64> loc(".not1.i30.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v105 = sea.ptr.cmp eq, %v44, %v104 : !sea.ptr<64> loc(".not1.i30.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v106 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v107 = sea.xor %v105, %v106 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v107 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb41
^bb41:
  sea.br ^bb42
^bb42:
  %v108 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":282:9)
  %v109 = sea.xor %v105, %v108 : i1 loc("aws-c-common/include/aws/common/array_list.inl":282:9)
  sea.assume %v109 loc("aws-c-common/include/aws/common/array_list.inl":282:9)
  sea.br ^bb43
^bb43:
  sea.br ^bb44
^bb44:
  sea.br ^bb45
^bb45:
  %v110 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v111 = sea.xor %v105, %v110 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v111 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb46
^bb46:
  sea.br ^bb47
^bb47:
  sea.br ^bb48
^bb48:
  %v112 = sea.const 18446744073709551615 : i64 loc("_77"("aws-c-common/include/aws/common/array_list.inl":284:82))
  %v113 = sea.add %v29, %v112 : i64 loc("_77"("aws-c-common/include/aws/common/array_list.inl":284:82))
  %v114 = sea.mul %v113, %v26 : i64 loc("_78"("aws-c-common/include/aws/common/array_list.inl":284:51))
  %v115 = sea.ptr.index %v44 [%v114] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_79"("aws-c-common/include/aws/common/array_list.inl":286:47))
  %v116 = sea.const 0 : i8 loc("aws-c-common/include/aws/common/array_list.inl":286:9)
  %v117 = sea.memset %v43[%v115], %v116, %v26 inplace : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/include/aws/common/array_list.inl":286:9)
  sea.br ^bb49
^bb49:
  sea.br ^bb50
^bb50:
  %v118 = sea.load %v46[%v45] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_82"("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":30:9))
  %v119 = sea.ptr.null : !sea.ptr<64> loc("_83"("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":30:9))
  %v120 = sea.ptr.cmp ne, %v118, %v119 : !sea.ptr<64> loc("_83"("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":30:9))
  %v121 = sea.ptr.null : !sea.ptr<64> loc(".not13.i"("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":30:9))
  %v122 = sea.ptr.cmp eq, %v118, %v121 : !sea.ptr<64> loc(".not13.i"("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":30:9))
  sea.cond_br %v122, ^bb114, ^bb51 loc("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":30:9)
^bb51:
  %v123 = sea.load %v48[%v6] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_85"("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":31:9))
  %v124 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_86"("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":31:9))
  %v125 = sea.ptr.cmp eq, %v123, %v124 : !sea.ptr<64> loc("_86"("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":31:9))
  sea.cond_br %v125, ^bb52, ^bb114 loc("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":31:9)
^bb52:
  %v126 = sea.load %v25[%v24] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_88"("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":32:9))
  %v127 = sea.icmp eq, %v126, %v23 : i64 loc("_89"("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":32:9))
  sea.cond_br %v127, ^bb53, ^bb114 loc("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":32:9)
^bb53:
  %v128 = sea.load %v28[%v27] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_91"("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":33:9))
  %v129 = sea.icmp eq, %v128, %v26 : i64 loc("_92"("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":33:9))
  sea.cond_br %v129, ^bb81(%v118, %v113 : !sea.ptr<64>, i64), ^bb114 loc("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":33:9)
^bb54:
  sea.br ^bb55
^bb55:
  sea.br ^bb56
^bb56:
  sea.br ^bb57
^bb57:
  sea.br ^bb58
^bb58:
  sea.br ^bb59
^bb59:
  sea.br ^bb60
^bb60:
  sea.br ^bb61
^bb61:
  sea.br ^bb62
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
  %v130 = sea.const 0 : i64 loc("seahorn/lib/utils.c":69:7)
  sea.cond_br %v33, ^bb81(%v44, %v130 : !sea.ptr<64>, i64), ^bb73 loc("seahorn/lib/utils.c":69:7)
^bb73:
  sea.br ^bb74
^bb74:
  %v131 = sea.ptr.null : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v132 = sea.ptr.cmp eq, %v44, %v131 : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v133 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/utils.c":39:14)
  %v134 = sea.const 0 : i64 loc("seahorn/lib/utils.c":39:14)
  sea.cond_br %v132, ^bb81(%v133, %v134 : !sea.ptr<64>, i64), ^bb75 loc("seahorn/lib/utils.c":39:14)
^bb75:
  sea.br ^bb76
^bb76:
  %v135 = sea.ptr.index %v44 [%v84] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_115"("seahorn/lib/utils.c":40:5))
  %v136 = sea.const 1 : i64 loc("_116"("seahorn/lib/utils.c":40:5))
  %v137 = sea.ptr.dereferenceable %v135, %v136 : !sea.ptr<64>, i64 loc("_116"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v137, ^bb77, ^bb114
^bb77:
  %v138 = sea.load %v43[%v135] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_118"("seahorn/lib/utils.c":40:5))
  sea.br ^bb78
^bb78:
  %v139 = sea.icmp eq, %v138, %v101 : i8 loc("_120"("seahorn/lib/utils.c":40:5))
  sea.br ^bb79
^bb79:
  %v140 = sea.const 1 : i64 loc("_122"("seahorn/lib/utils.c":40:5))
  %v141 = sea.ptr.dereferenceable %v135, %v140 : !sea.ptr<64>, i64 loc("_122"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v141, ^bb80, ^bb114
^bb80:
  %v142 = sea.const 1 : i1 loc("or.cond11")
  %v143 = sea.const 0 : i1 loc("or.cond11")
  %v144 = sea.select %v142, %v139, %v143 : i1 loc("or.cond11")
  %v145 = sea.const 0 : i64
  sea.cond_br %v144, ^bb81(%v44, %v145 : !sea.ptr<64>, i64), ^bb114
^bb81(%v146 : !sea.ptr<64>, %v147 : i64):
  sea.br ^bb82
^bb82:
  sea.br ^bb83
^bb83:
  sea.br ^bb84
^bb84:
  %v148 = sea.mul %v147, %v26 : i64 loc("_129"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v149 = sea.umulo %v147, %v26 : i64 loc("_129"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v149, ^bb85, ^bb86 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb85:
  sea.br ^bb86 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb86:
  %v150 = sea.const 1 : i1 loc("_133"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v151 = sea.xor %v149, %v150 : i1 loc("_133"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb87
^bb87:
  %v152 = sea.icmp uge, %v23, %v148 : i64 loc("_135"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb88
^bb88:
  sea.cond_br %v33, ^bb93, ^bb89 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb89:
  sea.br ^bb90
^bb90:
  sea.br ^bb91
^bb91:
  sea.br ^bb92
^bb92:
  %v153 = sea.ptr.null : !sea.ptr<64> loc("_143"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v154 = sea.ptr.cmp ne, %v146, %v153 : !sea.ptr<64> loc("_143"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb96(%v154 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb93:
  sea.br ^bb94
^bb94:
  %v155 = sea.ptr.null : !sea.ptr<64> loc("_139"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v156 = sea.ptr.cmp eq, %v146, %v155 : !sea.ptr<64> loc("_139"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v157 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v156, ^bb95, ^bb96(%v157 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb95:
  %v158 = sea.const 1 : i1
  sea.br ^bb96(%v158 : i1)
^bb96(%v159 : i1):
  sea.br ^bb97
^bb97:
  %v160 = sea.const 0 : i1 loc("or.cond.i16.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v161 = sea.select %v151, %v152, %v160 : i1 loc("or.cond.i16.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v162 = sea.const 0 : i1 loc("or.cond3.i17.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v163 = sea.select %v161, %v159, %v162 : i1 loc("or.cond3.i17.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v164 = sea.const 0 : i1 loc("spec.select18"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v165 = sea.select %v163, %v71, %v164 : i1 loc("spec.select18"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb98
^bb98:
  sea.br ^bb99
^bb99:
  sea.br ^bb100
^bb100:
  sea.cond_br %v149, ^bb101, ^bb102 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb101:
  sea.br ^bb102 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb102:
  sea.br ^bb103
^bb103:
  sea.br ^bb104
^bb104:
  sea.cond_br %v33, ^bb109, ^bb105 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb105:
  sea.br ^bb106
^bb106:
  sea.br ^bb107
^bb107:
  sea.br ^bb108
^bb108:
  %v166 = sea.ptr.null : !sea.ptr<64> loc("_158"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v167 = sea.ptr.cmp ne, %v146, %v166 : !sea.ptr<64> loc("_158"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb112(%v167 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb109:
  sea.br ^bb110
^bb110:
  %v168 = sea.ptr.null : !sea.ptr<64> loc("_154"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v169 = sea.ptr.cmp eq, %v146, %v168 : !sea.ptr<64> loc("_154"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v170 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v169, ^bb111, ^bb112(%v170 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb111:
  %v171 = sea.const 1 : i1
  sea.br ^bb112(%v171 : i1)
^bb112(%v172 : i1):
  sea.br ^bb113
^bb113:
  %v173 = sea.const 0 : i1 loc("or.cond3.i22.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v174 = sea.select %v161, %v172, %v173 : i1 loc("or.cond3.i22.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v175 = sea.const 0 : i1 loc("spec.select19"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v176 = sea.select %v174, %v71, %v175 : i1 loc("spec.select19"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v177 = sea.const 1 : i1 loc("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":38:5)
  %v178 = sea.xor %v176, %v177 : i1 loc("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":38:5)
  sea.assume %v178 loc("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":38:5)
  sea.br ^bb114 loc("seahorn/jobs/array_list_pop_back/aws_array_list_pop_back_harness.c":38:5)
^bb114:
  sea.br ^bb115
^bb115:
  %v179 = sea.const 0 : i1
  sea.assert %v179
  sea.halt
}
