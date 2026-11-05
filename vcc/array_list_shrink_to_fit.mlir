// Exported from SeaHorn (array_list_shrink_to_fit.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.16" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm25")
  %v1 = sea.mem.nondet "region.56" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm26")
  %v2 = sea.mem.nondet "region.96" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm27")
  %v3 = sea.mem.nondet "region.0" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm28")
  %v4 = sea.mem.nondet "region.105" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm29")
  %v5 = sea.const 40 : i64 loc("_0")
  %v6 = sea.alloca %v5 align 8 [5] : i64 -> !sea.ptr<64> loc("_0")
  %v7 = sea.const 40 : i64 loc("_1")
  %v8 = sea.alloca %v7 align 8 [6] : i64 -> !sea.ptr<64> loc("_1")
  %v9 = sea.const 16 : i64 loc("_2")
  %v10 = sea.alloca %v9 align 8 [7] : i64 -> !sea.ptr<64> loc("_2")
  %v11 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v12 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v13 = sea.store %v3[%v11], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
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
  %v25 = sea.store %v0[%v24], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":26:22)
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
  sea.assume %v73 loc("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":20:5)
  %v74 = sea.nondet "nd_size_t" [14] : i64 loc("_48"("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":23:16))
  sea.br ^bb29
^bb29:
  %v75 = sea.const 0 : i64 loc(".not.i35.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v76 = sea.icmp eq, %v29, %v75 : i64 loc(".not.i35.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  sea.cond_br %v76, ^bb32, ^bb30 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb30:
  sea.br ^bb31
^bb31:
  %v77 = sea.ptr.null : !sea.ptr<64> loc(".not1.i36.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v78 = sea.ptr.cmp eq, %v44, %v77 : !sea.ptr<64> loc(".not1.i36.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v79 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v80 = sea.xor %v78, %v79 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v80 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb32 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb32:
  sea.br ^bb33
^bb33:
  %v81 = sea.icmp ugt, %v29, %v74 : i64 loc(".not.i29.i"("aws-c-common/include/aws/common/array_list.inl":209:11))
  sea.cond_br %v81, ^bb38, ^bb34 loc("aws-c-common/include/aws/common/array_list.inl":209:9)
^bb34:
  sea.br ^bb35
^bb35:
  %v82 = sea.ptr.null : !sea.ptr<64> loc(".not.i39.i"("aws-c-common/include/aws/common/array_list.inl":299:9))
  %v83 = sea.ptr.cmp eq, %v44, %v82 : !sea.ptr<64> loc(".not.i39.i"("aws-c-common/include/aws/common/array_list.inl":299:9))
  %v84 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":299:9)
  %v85 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":299:9)
  sea.cond_br %v83, ^bb50(%v43, %v84, %v26, %v29, %v23, %v85 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64, i64, i64, !sea.ptr<64>), ^bb36 loc("aws-c-common/include/aws/common/array_list.inl":299:9)
^bb36:
  sea.br ^bb37
^bb37:
  %v86 = sea.const 0 : i64 loc("aws-c-common/include/aws/common/array_list.inl":303:22)
  %v87 = sea.store %v48[%v30], %v86 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":303:22)
  %v88 = sea.const 0 : i64 loc("aws-c-common/include/aws/common/array_list.inl":304:5)
  %v89 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":304:5)
  sea.br ^bb50(%v43, %v44, %v26, %v88, %v23, %v89 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64, i64, i64, !sea.ptr<64>) loc("aws-c-common/include/aws/common/array_list.inl":304:5)
^bb38:
  %v90 = sea.const 0 : i64 loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":215:11))
  %v91 = sea.icmp eq, %v74, %v90 : i64 loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":215:11))
  %v92 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":215:9)
  sea.cond_br %v91, ^bb50(%v43, %v44, %v26, %v29, %v23, %v92 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64, i64, i64, !sea.ptr<64>), ^bb39 loc("aws-c-common/include/aws/common/array_list.inl":215:9)
^bb39:
  sea.br ^bb40
^bb40:
  %v93 = sea.mul %v74, %v26 : i64 loc("_60"("aws-c-common/include/aws/common/array_list.inl":216:48))
  sea.br ^bb41
^bb41:
  sea.br ^bb42
^bb42:
  %v94 = sea.ptr.null : !sea.ptr<64> loc(".not1.i33.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v95 = sea.ptr.cmp eq, %v44, %v94 : !sea.ptr<64> loc(".not1.i33.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v96 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v97 = sea.xor %v95, %v96 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v97 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb43
^bb43:
  %v98 = sea.sub %v29, %v74 : i64 loc("_63"("aws-c-common/include/aws/common/array_list.inl":217:62))
  sea.br ^bb44
^bb44:
  %v99 = sea.mul %v98, %v26 : i64 loc("_65"("aws-c-common/include/aws/common/array_list.inl":218:50))
  sea.br ^bb45
^bb45:
  sea.br ^bb46
^bb46:
  %v100 = sea.ptr.index %v44 [%v93] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_68"("aws-c-common/include/aws/common/array_list.inl":219:51))
  %v101 = sea.ptr.dereferenceable %v44, %v99 : !sea.ptr<64>, i64 loc("_69"("seahorn/lib/bcmp.c":142:3))
  %v102 = sea.ptr.dereferenceable %v44, %v99 : !sea.ptr<64>, i64 loc("_70"("seahorn/lib/bcmp.c":142:3))
  sea.cond_br %v102, ^bb47, ^bb146 loc("seahorn/lib/bcmp.c":142:3)
^bb47:
  %v103 = sea.ptr.dereferenceable %v100, %v99 : !sea.ptr<64>, i64 loc("_72"("seahorn/lib/bcmp.c":143:3))
  %v104 = sea.ptr.dereferenceable %v100, %v99 : !sea.ptr<64>, i64 loc("_73"("seahorn/lib/bcmp.c":143:3))
  sea.cond_br %v104, ^bb48, ^bb146 loc("seahorn/lib/bcmp.c":143:3)
^bb48:
  %v105 = sea.memmove %v43[%v44], %v43[%v100], %v99 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":144:10)
  sea.br ^bb49
^bb49:
  %v106 = sea.store %v48[%v30], %v98 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":220:22)
  %v107 = sea.load %v48[%v6] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc(".pmcpy.i.pre"("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":27:33))
  %v108 = sea.load %v25[%v24] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc(".pmcpy5.i.pre"("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":27:33))
  %v109 = sea.load %v28[%v27] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc(".pmcpy11.i.pre"("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":27:33))
  %v110 = sea.load %v46[%v45] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc(".pmcpy14.i.pre"("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":27:33))
  sea.br ^bb50(%v105, %v110, %v109, %v98, %v108, %v107 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64, i64, i64, !sea.ptr<64>) loc("aws-c-common/include/aws/common/array_list.inl":224:5)
^bb50(%v111 : !sea.mem<!sea.ptr<64>, i8>, %v112 : !sea.ptr<64>, %v113 : i64, %v114 : i64, %v115 : i64, %v116 : !sea.ptr<64>):
  %v117 = sea.store %v1[%v8], %v116 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":27:33)
  %v118 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy4.i"("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":27:33))
  %v119 = sea.store %v117[%v118], %v115 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":27:33)
  %v120 = sea.ptr.index %v8 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy7.i"("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":27:33))
  %v121 = sea.store %v119[%v120], %v114 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":27:33)
  %v122 = sea.ptr.index %v8 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy10.i"("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":27:33))
  %v123 = sea.store %v121[%v122], %v113 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":27:33)
  %v124 = sea.ptr.index %v8 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy13.i"("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":27:33))
  %v125 = sea.store %v123[%v124], %v112 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":27:33)
  %v126 = sea.nondet "nd_size_t" [15] : i64 loc("_80"("seahorn/lib/utils.c":46:20))
  sea.br ^bb51
^bb51:
  %v127 = sea.store %v2[%v10], %v126 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v128 = sea.const 0 : i64 loc("_82"("seahorn/lib/utils.c":47:12))
  %v129 = sea.icmp ne, %v115, %v128 : i64 loc("_82"("seahorn/lib/utils.c":47:12))
  %v130 = sea.ptr.null : !sea.ptr<64> loc("_83")
  %v131 = sea.ptr.cmp ne, %v112, %v130 : !sea.ptr<64> loc("_83")
  %v132 = sea.and %v131, %v129 : i1 loc("or.cond.i50.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v132, ^bb54, ^bb52 loc("seahorn/lib/utils.c":47:16)
^bb52:
  %v133 = sea.nondet "nd_uint8_t" [16] : i8 loc("_95"("seahorn/lib/utils.c":51:21))
  %v134 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_96"("seahorn/lib/utils.c":51:14))
  sea.br ^bb53
^bb53:
  %v135 = sea.store %v127[%v134], %v133 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb59(%v133 : i8)
^bb54:
  sea.br ^bb55
^bb55:
  %v136 = sea.icmp ult, %v126, %v115 : i64 loc("_86"("seahorn/lib/utils.c":48:27))
  sea.assume %v136 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb56
^bb56:
  %v137 = sea.ptr.index %v112 [%v126] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_88"("seahorn/lib/utils.c":49:21))
  %v138 = sea.const 1 : i64 loc("_89"("seahorn/lib/utils.c":49:21))
  %v139 = sea.ptr.dereferenceable %v137, %v138 : !sea.ptr<64>, i64 loc("_89"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v139, ^bb57, ^bb146
^bb57:
  %v140 = sea.load %v111[%v137] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_91"("seahorn/lib/utils.c":49:21))
  %v141 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_92"("seahorn/lib/utils.c":49:14))
  sea.br ^bb58
^bb58:
  %v142 = sea.store %v127[%v141], %v140 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb59(%v140 : i8) loc("seahorn/lib/utils.c":50:3)
^bb59(%v143 : i8):
  sea.br ^bb60
^bb60:
  %v144 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("aws-c-common/source/array_list.c":29:9))
  %v145 = sea.ptr.cmp eq, %v116, %v144 : !sea.ptr<64> loc(".not.i.i"("aws-c-common/source/array_list.c":29:9))
  sea.cond_br %v145, ^bb86, ^bb61 loc("aws-c-common/source/array_list.c":29:9)
^bb61:
  sea.br ^bb62
^bb62:
  sea.br ^bb63
^bb63:
  sea.br ^bb64
^bb64:
  %v146 = sea.mul %v114, %v113 : i64 loc("_104"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v147 = sea.umulo %v114, %v113 : i64 loc("_104"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v147, ^bb84, ^bb65 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb65:
  sea.br ^bb66
^bb66:
  %v148 = sea.icmp ult, %v146, %v115 : i64 loc("_108"("aws-c-common/source/array_list.c":36:24))
  sea.cond_br %v148, ^bb67, ^bb79(%v115, %v112 : i64, !sea.ptr<64>) loc("aws-c-common/source/array_list.c":36:13)
^bb67:
  %v149 = sea.const 0 : i64 loc(".not4.i.i"("aws-c-common/source/array_list.c":39:28))
  %v150 = sea.icmp eq, %v146, %v149 : i64 loc(".not4.i.i"("aws-c-common/source/array_list.c":39:28))
  %v151 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/array_list.c":39:17)
  sea.cond_br %v150, ^bb77(%v151 : !sea.ptr<64>), ^bb68 loc("aws-c-common/source/array_list.c":39:17)
^bb68:
  sea.br ^bb69
^bb69:
  %v152 = sea.nondet "nd_malloc_is_fail" [17] : i1 loc("_112"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v152, ^bb76, ^bb70 loc("seahorn/lib/sea_allocators.c":11:10)
^bb70:
  %v153 = sea.const 1 : i64 loc("malloc59.i")
  %v154 = sea.mul %v146, %v153 : i64 loc("malloc59.i")
  %v155 = sea.alloca %v154 align 16 [18] : i64 -> !sea.ptr<64> loc("malloc59.i")
  %v156 = sea.memhavoc %v111[%v155], %v146 [19] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb71
^bb71:
  %v157 = sea.ptr.dereferenceable %v155, %v146 : !sea.ptr<64>, i64 loc("_115"("seahorn/lib/bcmp.c":161:3))
  %v158 = sea.ptr.dereferenceable %v155, %v146 : !sea.ptr<64>, i64 loc("_116"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v158, ^bb72, ^bb146 loc("seahorn/lib/bcmp.c":161:3)
^bb72:
  %v159 = sea.ptr.dereferenceable %v112, %v146 : !sea.ptr<64>, i64 loc("_118"("seahorn/lib/bcmp.c":162:3))
  %v160 = sea.ptr.dereferenceable %v112, %v146 : !sea.ptr<64>, i64 loc("_119"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v160, ^bb73, ^bb146 loc("seahorn/lib/bcmp.c":162:3)
^bb73:
  sea.br ^bb74
^bb74:
  sea.br ^bb75
^bb75:
  sea.br ^bb77(%v155 : !sea.ptr<64>) loc("aws-c-common/source/array_list.c":48:13)
^bb76:
  sea.br ^bb85 loc("aws-c-common/source/array_list.c":41:21)
^bb77(%v161 : !sea.ptr<64>):
  sea.br ^bb78
^bb78:
  sea.br ^bb79(%v146, %v161 : i64, !sea.ptr<64>)
^bb79(%v162 : i64, %v163 : !sea.ptr<64>):
  %v164 = sea.const 0 : i64 loc("_125"("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":33:9))
  %v165 = sea.icmp eq, %v162, %v164 : i64 loc("_125"("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":33:9))
  %v166 = sea.ptr.null : !sea.ptr<64> loc("_126"("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":33:9))
  %v167 = sea.ptr.cmp eq, %v163, %v166 : !sea.ptr<64> loc("_126"("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":33:9))
  %v168 = sea.const 0 : i1 loc("or.cond"("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":33:9))
  %v169 = sea.select %v165, %v167, %v168 : i1 loc("or.cond"("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":33:9))
  sea.cond_br %v169, ^bb83, ^bb80 loc("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":33:9)
^bb80:
  sea.cond_br %v167, ^bb82, ^bb81 loc("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":33:9)
^bb81:
  %v170 = sea.icmp eq, %v162, %v146 : i64 loc("_130"("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":33:9))
  sea.cond_br %v170, ^bb113(%v163, %v146 : !sea.ptr<64>, i64), ^bb146 loc("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":33:9)
^bb82:
  sea.br ^bb146 loc("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":33:9)
^bb83:
  %v171 = sea.ptr.null : !sea.ptr<64>
  %v172 = sea.const 0 : i64
  sea.br ^bb113(%v171, %v172 : !sea.ptr<64>, i64)
^bb84:
  sea.br ^bb85 loc("aws-c-common/source/array_list.c":31:13)
^bb85:
  sea.br ^bb87 loc("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":32:9)
^bb86:
  sea.br ^bb87 loc("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":32:9)
^bb87:
  sea.br ^bb88
^bb88:
  sea.br ^bb89
^bb89:
  sea.br ^bb90
^bb90:
  sea.br ^bb91
^bb91:
  sea.br ^bb92
^bb92:
  sea.br ^bb93
^bb93:
  sea.br ^bb94
^bb94:
  sea.br ^bb95
^bb95:
  sea.br ^bb96
^bb96:
  sea.br ^bb97
^bb97:
  sea.br ^bb98
^bb98:
  sea.br ^bb99
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
  %v173 = sea.const 0 : i64 loc(".not.i52.i"("seahorn/lib/utils.c":69:25))
  %v174 = sea.icmp eq, %v115, %v173 : i64 loc(".not.i52.i"("seahorn/lib/utils.c":69:25))
  %v175 = sea.const 0 : i64 loc("seahorn/lib/utils.c":69:7)
  sea.cond_br %v174, ^bb113(%v112, %v175 : !sea.ptr<64>, i64), ^bb105 loc("seahorn/lib/utils.c":69:7)
^bb105:
  sea.br ^bb106
^bb106:
  %v176 = sea.ptr.null : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v177 = sea.ptr.cmp eq, %v112, %v176 : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v178 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/utils.c":39:14)
  sea.cond_br %v177, ^bb113(%v178, %v115 : !sea.ptr<64>, i64), ^bb107 loc("seahorn/lib/utils.c":39:14)
^bb107:
  sea.br ^bb108
^bb108:
  %v179 = sea.ptr.index %v112 [%v126] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_153"("seahorn/lib/utils.c":40:5))
  %v180 = sea.const 1 : i64 loc("_154"("seahorn/lib/utils.c":40:5))
  %v181 = sea.ptr.dereferenceable %v179, %v180 : !sea.ptr<64>, i64 loc("_154"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v181, ^bb109, ^bb146
^bb109:
  %v182 = sea.load %v111[%v179] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_156"("seahorn/lib/utils.c":40:5))
  sea.br ^bb110
^bb110:
  %v183 = sea.icmp eq, %v182, %v143 : i8 loc("_158"("seahorn/lib/utils.c":40:5))
  sea.br ^bb111
^bb111:
  %v184 = sea.const 1 : i64 loc("_160"("seahorn/lib/utils.c":40:5))
  %v185 = sea.ptr.dereferenceable %v179, %v184 : !sea.ptr<64>, i64 loc("_160"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v185, ^bb112, ^bb146
^bb112:
  %v186 = sea.const 1 : i1 loc("or.cond20")
  %v187 = sea.const 0 : i1 loc("or.cond20")
  %v188 = sea.select %v186, %v183, %v187 : i1 loc("or.cond20")
  sea.cond_br %v188, ^bb113(%v112, %v115 : !sea.ptr<64>, i64), ^bb146
^bb113(%v189 : !sea.ptr<64>, %v190 : i64):
  sea.br ^bb114
^bb114:
  sea.br ^bb115
^bb115:
  sea.br ^bb116
^bb116:
  %v191 = sea.mul %v114, %v113 : i64 loc("_167"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v192 = sea.umulo %v114, %v113 : i64 loc("_167"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v192, ^bb117, ^bb118 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb117:
  sea.br ^bb118 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb118:
  %v193 = sea.const 1 : i1 loc("_171"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v194 = sea.xor %v192, %v193 : i1 loc("_171"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb119
^bb119:
  %v195 = sea.icmp uge, %v190, %v191 : i64 loc("_173"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb120
^bb120:
  %v196 = sea.const 0 : i64 loc("_175"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v197 = sea.icmp eq, %v190, %v196 : i64 loc("_175"("aws-c-common/include/aws/common/array_list.inl":93:26))
  sea.cond_br %v197, ^bb125, ^bb121 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb121:
  sea.br ^bb122
^bb122:
  sea.br ^bb123
^bb123:
  sea.br ^bb124
^bb124:
  %v198 = sea.ptr.null : !sea.ptr<64> loc("_182"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v199 = sea.ptr.cmp ne, %v189, %v198 : !sea.ptr<64> loc("_182"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb128(%v199 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb125:
  sea.br ^bb126
^bb126:
  %v200 = sea.ptr.null : !sea.ptr<64> loc("_178"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v201 = sea.ptr.cmp eq, %v189, %v200 : !sea.ptr<64> loc("_178"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v202 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v201, ^bb127, ^bb128(%v202 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb127:
  %v203 = sea.const 1 : i1
  sea.br ^bb128(%v203 : i1)
^bb128(%v204 : i1):
  sea.br ^bb129
^bb129:
  %v205 = sea.const 0 : i1 loc("or.cond.i21.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v206 = sea.select %v194, %v195, %v205 : i1 loc("or.cond.i21.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v207 = sea.const 0 : i1 loc("or.cond3.i22.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v208 = sea.select %v206, %v204, %v207 : i1 loc("or.cond3.i22.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v209 = sea.const 0 : i64 loc("_185")
  %v210 = sea.icmp ne, %v113, %v209 : i64 loc("_185")
  %v211 = sea.const 0 : i1 loc("spec.select34"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v212 = sea.select %v208, %v210, %v211 : i1 loc("spec.select34"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb130
^bb130:
  sea.br ^bb131
^bb131:
  sea.br ^bb132
^bb132:
  sea.cond_br %v192, ^bb133, ^bb134 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb133:
  sea.br ^bb134 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb134:
  sea.br ^bb135
^bb135:
  sea.br ^bb136
^bb136:
  sea.cond_br %v197, ^bb141, ^bb137 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb137:
  sea.br ^bb138
^bb138:
  sea.br ^bb139
^bb139:
  sea.br ^bb140
^bb140:
  %v213 = sea.ptr.null : !sea.ptr<64> loc("_198"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v214 = sea.ptr.cmp ne, %v189, %v213 : !sea.ptr<64> loc("_198"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb144(%v214 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb141:
  sea.br ^bb142
^bb142:
  %v215 = sea.ptr.null : !sea.ptr<64> loc("_194"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v216 = sea.ptr.cmp eq, %v189, %v215 : !sea.ptr<64> loc("_194"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v217 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v216, ^bb143, ^bb144(%v217 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb143:
  %v218 = sea.const 1 : i1
  sea.br ^bb144(%v218 : i1)
^bb144(%v219 : i1):
  sea.br ^bb145
^bb145:
  %v220 = sea.const 0 : i1 loc("or.cond3.i27.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v221 = sea.select %v206, %v219, %v220 : i1 loc("or.cond3.i27.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v222 = sea.const 0 : i1 loc("spec.select35"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v223 = sea.select %v221, %v210, %v222 : i1 loc("spec.select35"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v224 = sea.const 1 : i1 loc("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":40:5)
  %v225 = sea.xor %v223, %v224 : i1 loc("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":40:5)
  sea.assume %v225 loc("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":40:5)
  sea.br ^bb146 loc("seahorn/jobs/array_list_shrink_to_fit/aws_array_list_shrink_to_fit_harness.c":40:5)
^bb146:
  sea.br ^bb147
^bb147:
  %v226 = sea.const 0 : i1
  sea.assert %v226
  sea.halt
}
