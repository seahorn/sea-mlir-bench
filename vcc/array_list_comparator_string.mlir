// Exported from SeaHorn (array_list_comparator_string.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.16" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm16")
  %v1 = sea.mem.nondet "region.24" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm17")
  %v2 = sea.mem.nondet "region.0" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm18")
  %v3 = sea.mem.nondet "region.32" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm19")
  %v4 = sea.const 8 : i64 loc("_0")
  %v5 = sea.alloca %v4 align 8 [4] : i64 -> !sea.ptr<64> loc("_0")
  %v6 = sea.const 8 : i64 loc("_1")
  %v7 = sea.alloca %v6 align 8 [5] : i64 -> !sea.ptr<64> loc("_1")
  %v8 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v9 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v10 = sea.store %v2[%v8], %v9 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v11 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_2")
  %v12 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_2")
  %v13 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v14 = sea.store %v10[%v12], %v13 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v15 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_3")
  %v16 = sea.ptr.index %v15 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_3")
  %v17 = sea.const 0 : i8
  %v18 = sea.const 24 : i64
  %v19 = sea.memset %v14[%v16], %v17, %v18 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v20 = sea.nondet "nd_size_t" [6] : i64 loc("_4"("seahorn/lib/string_helper.c":24:16))
  %v21 = sea.const 10 : i64 loc("_5"("seahorn/lib/string_helper.c":25:14))
  %v22 = sea.icmp ult, %v20, %v21 : i64 loc("_5"("seahorn/lib/string_helper.c":25:14))
  sea.assume %v22 loc("seahorn/lib/string_helper.c":25:3)
  %v23 = sea.const 25 : i64 loc("_6"("seahorn/lib/string_helper.c":11:61))
  %v24 = sea.add %v20, %v23 : i64 loc("_6"("seahorn/lib/string_helper.c":11:61))
  %v25 = sea.nondet "nd_malloc_is_fail" [7] : i1 loc("_7"("seahorn/lib/sea_allocators.c":11:10))
  %v26 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v25, ^bb2(%v3, %v26 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb1 loc("seahorn/lib/sea_allocators.c":11:10)
^bb1:
  %v27 = sea.const 1 : i64 loc("malloc.i")
  %v28 = sea.mul %v24, %v27 : i64 loc("malloc.i")
  %v29 = sea.alloca %v28 align 16 [8] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb2(%v3, %v29 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb2(%v30 : !sea.mem<!sea.ptr<64>, i8>, %v31 : !sea.ptr<64>):
  %v32 = sea.memhavoc %v30[%v31], %v24 [9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v33 = sea.ptr.null : !sea.ptr<64> loc("_10"("seahorn/lib/sea_allocators.c":45:10))
  %v34 = sea.ptr.cmp ne, %v31, %v33 : !sea.ptr<64> loc("_10"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v34 loc("seahorn/lib/sea_allocators.c":45:3)
  %v35 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i3.i"("seahorn/lib/string_helper.c":13:7))
  %v36 = sea.ptr.cmp eq, %v31, %v35 : !sea.ptr<64> loc(".not.i.i3.i"("seahorn/lib/string_helper.c":13:7))
  sea.cond_br %v36, ^bb9(%v32 : !sea.mem<!sea.ptr<64>, i8>), ^bb3 loc("seahorn/lib/string_helper.c":13:7)
^bb3:
  %v37 = sea.nondet "nd_bool" [10] : i1 loc("_12"("seahorn/lib/string_helper.c":16:9))
  %v38 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.cond_br %v37, ^bb4, ^bb5(%v38 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb4:
  %v39 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.br ^bb5(%v39 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb5(%v40 : !sea.ptr<64>):
  %v41 = sea.const 8 : i64 loc("_16"("seahorn/lib/string_helper.c":15:49))
  %v42 = sea.ptr.dereferenceable %v31, %v41 : !sea.ptr<64>, i64 loc("_16"("seahorn/lib/string_helper.c":15:49))
  sea.cond_br %v42, ^bb6, ^bb115
^bb6:
  %v43 = sea.store %v32[%v31], %v40 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/string_helper.c":15:49)
  %v44 = sea.ptr.index %v31 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_18"("seahorn/lib/string_helper.c":17:23))
  %v45 = sea.const 8 : i64 loc("_19"("seahorn/lib/string_helper.c":17:28))
  %v46 = sea.ptr.dereferenceable %v44, %v45 : !sea.ptr<64>, i64 loc("_19"("seahorn/lib/string_helper.c":17:28))
  sea.cond_br %v46, ^bb7, ^bb115
^bb7:
  %v47 = sea.store %v43[%v44], %v20 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/string_helper.c":17:28)
  %v48 = sea.ptr.index %v31 [%v20] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_21"("seahorn/lib/string_helper.c":18:18))
  %v49 = sea.const 1 : i64 loc("_22"("seahorn/lib/string_helper.c":18:34))
  %v50 = sea.ptr.dereferenceable %v48, %v49 : !sea.ptr<64>, i64 loc("_22"("seahorn/lib/string_helper.c":18:34))
  sea.cond_br %v50, ^bb8, ^bb115
^bb8:
  %v51 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":18:34)
  %v52 = sea.store %v47[%v48], %v51 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":18:34)
  sea.br ^bb9(%v52 : !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/lib/string_helper.c":19:3)
^bb9(%v53 : !sea.mem<!sea.ptr<64>, i8>):
  %v54 = sea.store %v0[%v5], %v31 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_comparator_string/aws_array_list_comparator_string_harness.c":14:24)
  %v55 = sea.nondet "nd_bool" [11] : i1 loc("_24"("seahorn/jobs/array_list_comparator_string/aws_array_list_comparator_string_harness.c":15:32))
  sea.cond_br %v55, ^bb19(%v53, %v31 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb10 loc("seahorn/jobs/array_list_comparator_string/aws_array_list_comparator_string_harness.c":15:32)
^bb10:
  %v56 = sea.nondet "nd_size_t" [12] : i64 loc("_26"("seahorn/lib/string_helper.c":24:16))
  %v57 = sea.const 10 : i64 loc("_27"("seahorn/lib/string_helper.c":25:14))
  %v58 = sea.icmp ult, %v56, %v57 : i64 loc("_27"("seahorn/lib/string_helper.c":25:14))
  sea.assume %v58 loc("seahorn/lib/string_helper.c":25:3)
  %v59 = sea.const 25 : i64 loc("_28"("seahorn/lib/string_helper.c":11:61))
  %v60 = sea.add %v56, %v59 : i64 loc("_28"("seahorn/lib/string_helper.c":11:61))
  %v61 = sea.nondet "nd_malloc_is_fail" [13] : i1 loc("_29"("seahorn/lib/sea_allocators.c":11:10))
  %v62 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v61, ^bb12(%v53, %v62 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb11 loc("seahorn/lib/sea_allocators.c":11:10)
^bb11:
  %v63 = sea.const 1 : i64 loc("malloc11.i")
  %v64 = sea.mul %v60, %v63 : i64 loc("malloc11.i")
  %v65 = sea.alloca %v64 align 16 [14] : i64 -> !sea.ptr<64> loc("malloc11.i")
  sea.br ^bb12(%v53, %v65 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb12(%v66 : !sea.mem<!sea.ptr<64>, i8>, %v67 : !sea.ptr<64>):
  %v68 = sea.memhavoc %v66[%v67], %v60 [15] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v69 = sea.ptr.null : !sea.ptr<64> loc("_32"("seahorn/lib/sea_allocators.c":45:10))
  %v70 = sea.ptr.cmp ne, %v67, %v69 : !sea.ptr<64> loc("_32"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v70 loc("seahorn/lib/sea_allocators.c":45:3)
  %v71 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i6.i"("seahorn/lib/string_helper.c":13:7))
  %v72 = sea.ptr.cmp eq, %v67, %v71 : !sea.ptr<64> loc(".not.i.i6.i"("seahorn/lib/string_helper.c":13:7))
  %v73 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":13:7)
  sea.cond_br %v72, ^bb19(%v68, %v73 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb13 loc("seahorn/lib/string_helper.c":13:7)
^bb13:
  %v74 = sea.nondet "nd_bool" [16] : i1 loc("_34"("seahorn/lib/string_helper.c":16:9))
  %v75 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.cond_br %v74, ^bb14, ^bb15(%v75 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb14:
  %v76 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.br ^bb15(%v76 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb15(%v77 : !sea.ptr<64>):
  %v78 = sea.const 8 : i64 loc("_38"("seahorn/lib/string_helper.c":15:49))
  %v79 = sea.ptr.dereferenceable %v67, %v78 : !sea.ptr<64>, i64 loc("_38"("seahorn/lib/string_helper.c":15:49))
  sea.cond_br %v79, ^bb16, ^bb115
^bb16:
  %v80 = sea.store %v68[%v67], %v77 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/string_helper.c":15:49)
  %v81 = sea.ptr.index %v67 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_40"("seahorn/lib/string_helper.c":17:23))
  %v82 = sea.const 8 : i64 loc("_41"("seahorn/lib/string_helper.c":17:28))
  %v83 = sea.ptr.dereferenceable %v81, %v82 : !sea.ptr<64>, i64 loc("_41"("seahorn/lib/string_helper.c":17:28))
  sea.cond_br %v83, ^bb17, ^bb115
^bb17:
  %v84 = sea.store %v80[%v81], %v56 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/string_helper.c":17:28)
  %v85 = sea.ptr.index %v67 [%v56] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_43"("seahorn/lib/string_helper.c":18:18))
  %v86 = sea.const 1 : i64 loc("_44"("seahorn/lib/string_helper.c":18:34))
  %v87 = sea.ptr.dereferenceable %v85, %v86 : !sea.ptr<64>, i64 loc("_44"("seahorn/lib/string_helper.c":18:34))
  sea.cond_br %v87, ^bb18, ^bb115
^bb18:
  %v88 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":18:34)
  %v89 = sea.store %v84[%v85], %v88 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":18:34)
  sea.br ^bb19(%v89, %v67 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/string_helper.c":19:3)
^bb19(%v90 : !sea.mem<!sea.ptr<64>, i8>, %v91 : !sea.ptr<64>):
  %v92 = sea.store %v1[%v7], %v91 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_comparator_string/aws_array_list_comparator_string_harness.c":15:24)
  %v93 = sea.nondet "nd_bool" [17] : i1 loc("_47"("seahorn/jobs/array_list_comparator_string/aws_array_list_comparator_string_harness.c":17:31))
  %v94 = sea.nondet "nd_bool" [18] : i1 loc("_48"("seahorn/jobs/array_list_comparator_string/aws_array_list_comparator_string_harness.c":18:31))
  %v95 = sea.ptr.null : !sea.ptr<64> loc("..i"("seahorn/jobs/array_list_comparator_string/aws_array_list_comparator_string_harness.c":19:42))
  %v96 = sea.select %v93, %v5, %v95 : !sea.ptr<64> loc("..i"("seahorn/jobs/array_list_comparator_string/aws_array_list_comparator_string_harness.c":19:42))
  %v97 = sea.ptr.null : !sea.ptr<64> loc("_49"("seahorn/jobs/array_list_comparator_string/aws_array_list_comparator_string_harness.c":19:78))
  %v98 = sea.select %v94, %v7, %v97 : !sea.ptr<64> loc("_49"("seahorn/jobs/array_list_comparator_string/aws_array_list_comparator_string_harness.c":19:78))
  %v99 = sea.ptr.cmp eq, %v96, %v98 : !sea.ptr<64> loc("_50"("aws-c-common/source/string.c":276:11))
  %v100 = sea.const 1 : i1 loc(".not"("aws-c-common/source/string.c":276:9))
  %v101 = sea.xor %v93, %v100 : i1 loc(".not"("aws-c-common/source/string.c":276:9))
  %v102 = sea.or %v99, %v101 : i1 loc("brmerge"("aws-c-common/source/string.c":276:9))
  %v103 = sea.const 1 : i1 loc(".not7"("aws-c-common/source/string.c":276:9))
  %v104 = sea.xor %v94, %v103 : i1 loc(".not7"("aws-c-common/source/string.c":276:9))
  %v105 = sea.const 1 : i1 loc("brmerge8"("aws-c-common/source/string.c":276:9))
  %v106 = sea.select %v102, %v105, %v104 : i1 loc("brmerge8"("aws-c-common/source/string.c":276:9))
  sea.cond_br %v106, ^bb113(%v99 : i1), ^bb20 loc("aws-c-common/source/string.c":276:9)
^bb20:
  %v107 = sea.const 8 : i64 loc("_52"("aws-c-common/source/string.c":285:38))
  %v108 = sea.ptr.dereferenceable %v96, %v107 : !sea.ptr<64>, i64 loc("_52"("aws-c-common/source/string.c":285:38))
  sea.cond_br %v108, ^bb21, ^bb115
^bb21:
  %v109 = sea.load %v54[%v96] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_54"("aws-c-common/source/string.c":285:38))
  %v110 = sea.const 8 : i64 loc("_55"("aws-c-common/source/string.c":286:38))
  %v111 = sea.ptr.dereferenceable %v98, %v110 : !sea.ptr<64>, i64 loc("_55"("aws-c-common/source/string.c":286:38))
  sea.cond_br %v111, ^bb22, ^bb115
^bb22:
  %v112 = sea.load %v92[%v98] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_57"("aws-c-common/source/string.c":286:38))
  %v113 = sea.ptr.cmp eq, %v109, %v112 : !sea.ptr<64> loc("_58"("aws-c-common/source/string.c":246:11))
  %v114 = sea.const 1 : i1 loc("aws-c-common/source/string.c":246:9)
  sea.cond_br %v113, ^bb113(%v114 : i1), ^bb23 loc("aws-c-common/source/string.c":246:9)
^bb23:
  %v115 = sea.ptr.null : !sea.ptr<64> loc("_60"("aws-c-common/source/string.c":249:11))
  %v116 = sea.ptr.cmp eq, %v109, %v115 : !sea.ptr<64> loc("_60"("aws-c-common/source/string.c":249:11))
  %v117 = sea.ptr.null : !sea.ptr<64> loc("_61")
  %v118 = sea.ptr.cmp eq, %v112, %v117 : !sea.ptr<64> loc("_61")
  %v119 = sea.const 1 : i1 loc("or.cond"("aws-c-common/source/string.c":249:9))
  %v120 = sea.select %v116, %v119, %v118 : i1 loc("or.cond"("aws-c-common/source/string.c":249:9))
  %v121 = sea.const 0 : i1 loc("aws-c-common/source/string.c":249:9)
  sea.cond_br %v120, ^bb113(%v121 : i1), ^bb24 loc("aws-c-common/source/string.c":249:9)
^bb24:
  %v122 = sea.ptr.index %v109 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_63"("aws-c-common/source/string.c":256:23))
  %v123 = sea.const 8 : i64 loc("_64"("aws-c-common/source/string.c":256:23))
  %v124 = sea.ptr.dereferenceable %v122, %v123 : !sea.ptr<64>, i64 loc("_64"("aws-c-common/source/string.c":256:23))
  sea.cond_br %v124, ^bb25, ^bb115
^bb25:
  %v125 = sea.load %v90[%v122] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_66"("aws-c-common/source/string.c":256:23))
  %v126 = sea.ptr.index %v112 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_67"("aws-c-common/source/string.c":257:23))
  %v127 = sea.const 8 : i64 loc("_68"("aws-c-common/source/string.c":257:23))
  %v128 = sea.ptr.dereferenceable %v126, %v127 : !sea.ptr<64>, i64 loc("_68"("aws-c-common/source/string.c":257:23))
  sea.cond_br %v128, ^bb26, ^bb115
^bb26:
  %v129 = sea.load %v90[%v126] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_70"("aws-c-common/source/string.c":257:23))
  %v130 = sea.umin %v125, %v129 : i64 loc("_71"("aws-c-common/source/string.c":258:22))
  %v131 = sea.ptr.index %v109 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_72"("aws-c-common/include/aws/common/string.inl":17:17))
  %v132 = sea.ptr.index %v112 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_73"("aws-c-common/include/aws/common/string.inl":17:17))
  %v133 = sea.const 0 : i64 loc(".not15"("seahorn/lib/bcmp.c":60:11))
  %v134 = sea.icmp eq, %v130, %v133 : i64 loc(".not15"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v134, ^bb112, ^bb27 loc("seahorn/lib/bcmp.c":60:9)
^bb27:
  %v135 = sea.const 1 : i64 loc("_77"("seahorn/lib/bcmp.c":61:11))
  %v136 = sea.ptr.dereferenceable %v131, %v135 : !sea.ptr<64>, i64 loc("_77"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v136, ^bb28, ^bb115
^bb28:
  %v137 = sea.load %v90[%v131] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_79"("seahorn/lib/bcmp.c":61:11))
  %v138 = sea.const 1 : i64 loc("_80"("seahorn/lib/bcmp.c":61:20))
  %v139 = sea.ptr.dereferenceable %v132, %v138 : !sea.ptr<64>, i64 loc("_80"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v139, ^bb29, ^bb115
^bb29:
  %v140 = sea.load %v90[%v132] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_82"("seahorn/lib/bcmp.c":61:20))
  %v141 = sea.icmp eq, %v137, %v140 : i8 loc(".not2.i.i"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v141, ^bb30, ^bb66(%v132, %v131 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb30:
  %v142 = sea.const 1 : i64 loc(".not31"("seahorn/lib/bcmp.c":60:11))
  %v143 = sea.icmp eq, %v130, %v142 : i64 loc(".not31"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v143, ^bb112, ^bb31 loc("seahorn/lib/bcmp.c":60:9)
^bb31:
  %v144 = sea.ptr.index %v109 [] strides [] offset 17 inbounds : !sea.ptr<64> loc("_89"("seahorn/lib/bcmp.c":61:11))
  %v145 = sea.const 1 : i64 loc("_90"("seahorn/lib/bcmp.c":61:11))
  %v146 = sea.ptr.dereferenceable %v144, %v145 : !sea.ptr<64>, i64 loc("_90"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v146, ^bb32, ^bb115
^bb32:
  %v147 = sea.load %v90[%v144] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_92"("seahorn/lib/bcmp.c":61:11))
  %v148 = sea.ptr.index %v112 [] strides [] offset 17 inbounds : !sea.ptr<64> loc("_93"("seahorn/lib/bcmp.c":61:20))
  %v149 = sea.const 1 : i64 loc("_94"("seahorn/lib/bcmp.c":61:20))
  %v150 = sea.ptr.dereferenceable %v148, %v149 : !sea.ptr<64>, i64 loc("_94"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v150, ^bb33, ^bb115
^bb33:
  %v151 = sea.load %v90[%v148] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_96"("seahorn/lib/bcmp.c":61:20))
  %v152 = sea.icmp eq, %v147, %v151 : i8 loc(".not2.i.i.1"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v152, ^bb34, ^bb66(%v148, %v144 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb34:
  %v153 = sea.const 2 : i64 loc("_98"("seahorn/lib/bcmp.c":60:11))
  %v154 = sea.icmp ugt, %v130, %v153 : i64 loc("_98"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v154, ^bb35, ^bb112 loc("seahorn/lib/bcmp.c":60:9)
^bb35:
  %v155 = sea.ptr.index %v109 [] strides [] offset 18 inbounds : !sea.ptr<64> loc("_100"("seahorn/lib/bcmp.c":61:11))
  %v156 = sea.const 1 : i64 loc("_101"("seahorn/lib/bcmp.c":61:11))
  %v157 = sea.ptr.dereferenceable %v155, %v156 : !sea.ptr<64>, i64 loc("_101"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v157, ^bb36, ^bb115
^bb36:
  %v158 = sea.load %v90[%v155] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_103"("seahorn/lib/bcmp.c":61:11))
  %v159 = sea.ptr.index %v112 [] strides [] offset 18 inbounds : !sea.ptr<64> loc("_104"("seahorn/lib/bcmp.c":61:20))
  %v160 = sea.const 1 : i64 loc("_105"("seahorn/lib/bcmp.c":61:20))
  %v161 = sea.ptr.dereferenceable %v159, %v160 : !sea.ptr<64>, i64 loc("_105"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v161, ^bb37, ^bb115
^bb37:
  %v162 = sea.load %v90[%v159] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_107"("seahorn/lib/bcmp.c":61:20))
  %v163 = sea.icmp eq, %v158, %v162 : i8 loc(".not2.i.i.2"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v163, ^bb38, ^bb66(%v159, %v155 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb38:
  %v164 = sea.const 3 : i64 loc(".not32"("seahorn/lib/bcmp.c":60:11))
  %v165 = sea.icmp eq, %v130, %v164 : i64 loc(".not32"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v165, ^bb112, ^bb39 loc("seahorn/lib/bcmp.c":60:9)
^bb39:
  %v166 = sea.ptr.index %v109 [] strides [] offset 19 inbounds : !sea.ptr<64> loc("_110"("seahorn/lib/bcmp.c":61:11))
  %v167 = sea.const 1 : i64 loc("_111"("seahorn/lib/bcmp.c":61:11))
  %v168 = sea.ptr.dereferenceable %v166, %v167 : !sea.ptr<64>, i64 loc("_111"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v168, ^bb40, ^bb115
^bb40:
  %v169 = sea.load %v90[%v166] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_113"("seahorn/lib/bcmp.c":61:11))
  %v170 = sea.ptr.index %v112 [] strides [] offset 19 inbounds : !sea.ptr<64> loc("_114"("seahorn/lib/bcmp.c":61:20))
  %v171 = sea.const 1 : i64 loc("_115"("seahorn/lib/bcmp.c":61:20))
  %v172 = sea.ptr.dereferenceable %v170, %v171 : !sea.ptr<64>, i64 loc("_115"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v172, ^bb41, ^bb115
^bb41:
  %v173 = sea.load %v90[%v170] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_117"("seahorn/lib/bcmp.c":61:20))
  %v174 = sea.icmp eq, %v169, %v173 : i8 loc(".not2.i.i.3"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v174, ^bb42, ^bb66(%v170, %v166 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb42:
  %v175 = sea.const 4 : i64 loc("_119"("seahorn/lib/bcmp.c":60:11))
  %v176 = sea.icmp ugt, %v130, %v175 : i64 loc("_119"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v176, ^bb43, ^bb112 loc("seahorn/lib/bcmp.c":60:9)
^bb43:
  %v177 = sea.ptr.index %v109 [] strides [] offset 20 inbounds : !sea.ptr<64> loc("_121"("seahorn/lib/bcmp.c":61:11))
  %v178 = sea.const 1 : i64 loc("_122"("seahorn/lib/bcmp.c":61:11))
  %v179 = sea.ptr.dereferenceable %v177, %v178 : !sea.ptr<64>, i64 loc("_122"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v179, ^bb44, ^bb115
^bb44:
  %v180 = sea.load %v90[%v177] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_124"("seahorn/lib/bcmp.c":61:11))
  %v181 = sea.ptr.index %v112 [] strides [] offset 20 inbounds : !sea.ptr<64> loc("_125"("seahorn/lib/bcmp.c":61:20))
  %v182 = sea.const 1 : i64 loc("_126"("seahorn/lib/bcmp.c":61:20))
  %v183 = sea.ptr.dereferenceable %v181, %v182 : !sea.ptr<64>, i64 loc("_126"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v183, ^bb45, ^bb115
^bb45:
  %v184 = sea.load %v90[%v181] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_128"("seahorn/lib/bcmp.c":61:20))
  %v185 = sea.icmp eq, %v180, %v184 : i8 loc(".not2.i.i.4"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v185, ^bb46, ^bb66(%v181, %v177 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb46:
  %v186 = sea.const 5 : i64 loc(".not33"("seahorn/lib/bcmp.c":60:11))
  %v187 = sea.icmp eq, %v130, %v186 : i64 loc(".not33"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v187, ^bb112, ^bb47 loc("seahorn/lib/bcmp.c":60:9)
^bb47:
  %v188 = sea.ptr.index %v109 [] strides [] offset 21 inbounds : !sea.ptr<64> loc("_131"("seahorn/lib/bcmp.c":61:11))
  %v189 = sea.const 1 : i64 loc("_132"("seahorn/lib/bcmp.c":61:11))
  %v190 = sea.ptr.dereferenceable %v188, %v189 : !sea.ptr<64>, i64 loc("_132"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v190, ^bb48, ^bb115
^bb48:
  %v191 = sea.load %v90[%v188] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_134"("seahorn/lib/bcmp.c":61:11))
  %v192 = sea.ptr.index %v112 [] strides [] offset 21 inbounds : !sea.ptr<64> loc("_135"("seahorn/lib/bcmp.c":61:20))
  %v193 = sea.const 1 : i64 loc("_136"("seahorn/lib/bcmp.c":61:20))
  %v194 = sea.ptr.dereferenceable %v192, %v193 : !sea.ptr<64>, i64 loc("_136"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v194, ^bb49, ^bb115
^bb49:
  %v195 = sea.load %v90[%v192] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_138"("seahorn/lib/bcmp.c":61:20))
  %v196 = sea.icmp eq, %v191, %v195 : i8 loc(".not2.i.i.5"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v196, ^bb50, ^bb66(%v192, %v188 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb50:
  %v197 = sea.const 6 : i64 loc("_140"("seahorn/lib/bcmp.c":60:11))
  %v198 = sea.icmp ugt, %v130, %v197 : i64 loc("_140"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v198, ^bb51, ^bb112 loc("seahorn/lib/bcmp.c":60:9)
^bb51:
  %v199 = sea.ptr.index %v109 [] strides [] offset 22 inbounds : !sea.ptr<64> loc("_142"("seahorn/lib/bcmp.c":61:11))
  %v200 = sea.const 1 : i64 loc("_143"("seahorn/lib/bcmp.c":61:11))
  %v201 = sea.ptr.dereferenceable %v199, %v200 : !sea.ptr<64>, i64 loc("_143"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v201, ^bb52, ^bb115
^bb52:
  %v202 = sea.load %v90[%v199] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_145"("seahorn/lib/bcmp.c":61:11))
  %v203 = sea.ptr.index %v112 [] strides [] offset 22 inbounds : !sea.ptr<64> loc("_146"("seahorn/lib/bcmp.c":61:20))
  %v204 = sea.const 1 : i64 loc("_147"("seahorn/lib/bcmp.c":61:20))
  %v205 = sea.ptr.dereferenceable %v203, %v204 : !sea.ptr<64>, i64 loc("_147"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v205, ^bb53, ^bb115
^bb53:
  %v206 = sea.load %v90[%v203] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_149"("seahorn/lib/bcmp.c":61:20))
  %v207 = sea.icmp eq, %v202, %v206 : i8 loc(".not2.i.i.6"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v207, ^bb54, ^bb66(%v203, %v199 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb54:
  %v208 = sea.const 7 : i64 loc(".not34"("seahorn/lib/bcmp.c":60:11))
  %v209 = sea.icmp eq, %v130, %v208 : i64 loc(".not34"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v209, ^bb112, ^bb55 loc("seahorn/lib/bcmp.c":60:9)
^bb55:
  %v210 = sea.ptr.index %v109 [] strides [] offset 23 inbounds : !sea.ptr<64> loc("_152"("seahorn/lib/bcmp.c":61:11))
  %v211 = sea.const 1 : i64 loc("_153"("seahorn/lib/bcmp.c":61:11))
  %v212 = sea.ptr.dereferenceable %v210, %v211 : !sea.ptr<64>, i64 loc("_153"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v212, ^bb56, ^bb115
^bb56:
  %v213 = sea.load %v90[%v210] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_155"("seahorn/lib/bcmp.c":61:11))
  %v214 = sea.ptr.index %v112 [] strides [] offset 23 inbounds : !sea.ptr<64> loc("_156"("seahorn/lib/bcmp.c":61:20))
  %v215 = sea.const 1 : i64 loc("_157"("seahorn/lib/bcmp.c":61:20))
  %v216 = sea.ptr.dereferenceable %v214, %v215 : !sea.ptr<64>, i64 loc("_157"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v216, ^bb57, ^bb115
^bb57:
  %v217 = sea.load %v90[%v214] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_159"("seahorn/lib/bcmp.c":61:20))
  %v218 = sea.icmp eq, %v213, %v217 : i8 loc(".not2.i.i.7"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v218, ^bb58, ^bb66(%v214, %v210 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb58:
  %v219 = sea.const 8 : i64 loc("_161"("seahorn/lib/bcmp.c":60:11))
  %v220 = sea.icmp ugt, %v130, %v219 : i64 loc("_161"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v220, ^bb59, ^bb112 loc("seahorn/lib/bcmp.c":60:9)
^bb59:
  %v221 = sea.ptr.index %v109 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_163"("seahorn/lib/bcmp.c":61:11))
  %v222 = sea.const 1 : i64 loc("_164"("seahorn/lib/bcmp.c":61:11))
  %v223 = sea.ptr.dereferenceable %v221, %v222 : !sea.ptr<64>, i64 loc("_164"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v223, ^bb60, ^bb115
^bb60:
  %v224 = sea.load %v90[%v221] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_166"("seahorn/lib/bcmp.c":61:11))
  %v225 = sea.ptr.index %v112 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_167"("seahorn/lib/bcmp.c":61:20))
  %v226 = sea.const 1 : i64 loc("_168"("seahorn/lib/bcmp.c":61:20))
  %v227 = sea.ptr.dereferenceable %v225, %v226 : !sea.ptr<64>, i64 loc("_168"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v227, ^bb61, ^bb115
^bb61:
  %v228 = sea.load %v90[%v225] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_170"("seahorn/lib/bcmp.c":61:20))
  %v229 = sea.icmp eq, %v224, %v228 : i8 loc(".not2.i.i.8"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v229, ^bb62, ^bb66(%v225, %v221 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb62:
  %v230 = sea.const 9 : i64 loc(".not35"("seahorn/lib/bcmp.c":60:11))
  %v231 = sea.icmp eq, %v130, %v230 : i64 loc(".not35"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v231, ^bb112, ^bb63 loc("seahorn/lib/bcmp.c":60:9)
^bb63:
  %v232 = sea.ptr.index %v109 [] strides [] offset 25 inbounds : !sea.ptr<64> loc("_173"("seahorn/lib/bcmp.c":61:11))
  %v233 = sea.const 1 : i64 loc("_174"("seahorn/lib/bcmp.c":61:11))
  %v234 = sea.ptr.dereferenceable %v232, %v233 : !sea.ptr<64>, i64 loc("_174"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v234, ^bb64, ^bb115
^bb64:
  %v235 = sea.load %v90[%v232] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_176"("seahorn/lib/bcmp.c":61:11))
  %v236 = sea.ptr.index %v112 [] strides [] offset 25 inbounds : !sea.ptr<64> loc("_177"("seahorn/lib/bcmp.c":61:20))
  %v237 = sea.const 1 : i64 loc("_178"("seahorn/lib/bcmp.c":61:20))
  %v238 = sea.ptr.dereferenceable %v236, %v237 : !sea.ptr<64>, i64 loc("_178"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v238, ^bb65, ^bb115
^bb65:
  %v239 = sea.load %v90[%v236] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_180"("seahorn/lib/bcmp.c":61:20))
  %v240 = sea.icmp eq, %v235, %v239 : i8 loc(".not2.i.i.9"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v240, ^bb68, ^bb66(%v236, %v232 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb66(%v241 : !sea.ptr<64>, %v242 : !sea.ptr<64>):
  %v243 = sea.const 1 : i64 loc("_84"("seahorn/lib/bcmp.c":62:16))
  %v244 = sea.ptr.dereferenceable %v242, %v243 : !sea.ptr<64>, i64 loc("_84"("seahorn/lib/bcmp.c":62:16))
  sea.cond_br %v244, ^bb67, ^bb115
^bb67:
  %v245 = sea.const 1 : i64 loc("_86"("seahorn/lib/bcmp.c":62:24))
  %v246 = sea.ptr.dereferenceable %v241, %v245 : !sea.ptr<64>, i64 loc("_86"("seahorn/lib/bcmp.c":62:24))
  %v247 = sea.const 0 : i1
  sea.cond_br %v246, ^bb113(%v247 : i1), ^bb115
^bb68:
  %v248 = sea.const 10 : i64 loc("_181"("seahorn/lib/bcmp.c":67:31))
  %v249 = sea.icmp ugt, %v130, %v248 : i64 loc("_181"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v249, ^bb69, ^bb112 loc("seahorn/lib/bcmp.c":67:3)
^bb69:
  %v250 = sea.ptr.index %v109 [] strides [] offset 26 inbounds : !sea.ptr<64> loc("_74"("seahorn/lib/bcmp.c":68:9))
  %v251 = sea.const 1 : i64 loc("_75"("seahorn/lib/bcmp.c":68:9))
  %v252 = sea.ptr.dereferenceable %v250, %v251 : !sea.ptr<64>, i64 loc("_75"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v252, ^bb70, ^bb115
^bb70:
  %v253 = sea.load %v90[%v250] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_266"("seahorn/lib/bcmp.c":68:9))
  %v254 = sea.ptr.index %v112 [] strides [] offset 26 inbounds : !sea.ptr<64> loc("_267"("seahorn/lib/bcmp.c":68:18))
  %v255 = sea.const 1 : i64 loc("_268"("seahorn/lib/bcmp.c":68:18))
  %v256 = sea.ptr.dereferenceable %v254, %v255 : !sea.ptr<64>, i64 loc("_268"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v256, ^bb71, ^bb115
^bb71:
  %v257 = sea.load %v90[%v254] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_270"("seahorn/lib/bcmp.c":68:18))
  %v258 = sea.icmp eq, %v253, %v257 : i8 loc(".not.i.i"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v258, ^bb72, ^bb108(%v254, %v250 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb72:
  %v259 = sea.const 11 : i64 loc("exitcond23.not"("seahorn/lib/bcmp.c":67:31))
  %v260 = sea.icmp eq, %v130, %v259 : i64 loc("exitcond23.not"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v260, ^bb112, ^bb73 loc("seahorn/lib/bcmp.c":67:3)
^bb73:
  %v261 = sea.ptr.index %v109 [] strides [] offset 27 inbounds : !sea.ptr<64> loc("_183"("seahorn/lib/bcmp.c":68:9))
  %v262 = sea.const 1 : i64 loc("_184"("seahorn/lib/bcmp.c":68:9))
  %v263 = sea.ptr.dereferenceable %v261, %v262 : !sea.ptr<64>, i64 loc("_184"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v263, ^bb74, ^bb115
^bb74:
  %v264 = sea.load %v90[%v261] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_186"("seahorn/lib/bcmp.c":68:9))
  %v265 = sea.ptr.index %v112 [] strides [] offset 27 inbounds : !sea.ptr<64> loc("_187"("seahorn/lib/bcmp.c":68:18))
  %v266 = sea.const 1 : i64 loc("_188"("seahorn/lib/bcmp.c":68:18))
  %v267 = sea.ptr.dereferenceable %v265, %v266 : !sea.ptr<64>, i64 loc("_188"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v267, ^bb75, ^bb115
^bb75:
  %v268 = sea.load %v90[%v265] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_190"("seahorn/lib/bcmp.c":68:18))
  %v269 = sea.icmp eq, %v264, %v268 : i8 loc(".not.i.i.1"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v269, ^bb76, ^bb108(%v265, %v261 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb76:
  %v270 = sea.const 12 : i64 loc("exitcond23.not.1"("seahorn/lib/bcmp.c":67:31))
  %v271 = sea.icmp eq, %v130, %v270 : i64 loc("exitcond23.not.1"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v271, ^bb112, ^bb77 loc("seahorn/lib/bcmp.c":67:3)
^bb77:
  %v272 = sea.ptr.index %v109 [] strides [] offset 28 inbounds : !sea.ptr<64> loc("_192"("seahorn/lib/bcmp.c":68:9))
  %v273 = sea.const 1 : i64 loc("_193"("seahorn/lib/bcmp.c":68:9))
  %v274 = sea.ptr.dereferenceable %v272, %v273 : !sea.ptr<64>, i64 loc("_193"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v274, ^bb78, ^bb115
^bb78:
  %v275 = sea.load %v90[%v272] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_195"("seahorn/lib/bcmp.c":68:9))
  %v276 = sea.ptr.index %v112 [] strides [] offset 28 inbounds : !sea.ptr<64> loc("_196"("seahorn/lib/bcmp.c":68:18))
  %v277 = sea.const 1 : i64 loc("_197"("seahorn/lib/bcmp.c":68:18))
  %v278 = sea.ptr.dereferenceable %v276, %v277 : !sea.ptr<64>, i64 loc("_197"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v278, ^bb79, ^bb115
^bb79:
  %v279 = sea.load %v90[%v276] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_199"("seahorn/lib/bcmp.c":68:18))
  %v280 = sea.icmp eq, %v275, %v279 : i8 loc(".not.i.i.2"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v280, ^bb80, ^bb108(%v276, %v272 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb80:
  %v281 = sea.const 13 : i64 loc("exitcond23.not.2"("seahorn/lib/bcmp.c":67:31))
  %v282 = sea.icmp eq, %v130, %v281 : i64 loc("exitcond23.not.2"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v282, ^bb112, ^bb81 loc("seahorn/lib/bcmp.c":67:3)
^bb81:
  %v283 = sea.ptr.index %v109 [] strides [] offset 29 inbounds : !sea.ptr<64> loc("_201"("seahorn/lib/bcmp.c":68:9))
  %v284 = sea.const 1 : i64 loc("_202"("seahorn/lib/bcmp.c":68:9))
  %v285 = sea.ptr.dereferenceable %v283, %v284 : !sea.ptr<64>, i64 loc("_202"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v285, ^bb82, ^bb115
^bb82:
  %v286 = sea.load %v90[%v283] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_204"("seahorn/lib/bcmp.c":68:9))
  %v287 = sea.ptr.index %v112 [] strides [] offset 29 inbounds : !sea.ptr<64> loc("_205"("seahorn/lib/bcmp.c":68:18))
  %v288 = sea.const 1 : i64 loc("_206"("seahorn/lib/bcmp.c":68:18))
  %v289 = sea.ptr.dereferenceable %v287, %v288 : !sea.ptr<64>, i64 loc("_206"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v289, ^bb83, ^bb115
^bb83:
  %v290 = sea.load %v90[%v287] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_208"("seahorn/lib/bcmp.c":68:18))
  %v291 = sea.icmp eq, %v286, %v290 : i8 loc(".not.i.i.3"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v291, ^bb84, ^bb108(%v287, %v283 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb84:
  %v292 = sea.const 14 : i64 loc("exitcond23.not.3"("seahorn/lib/bcmp.c":67:31))
  %v293 = sea.icmp eq, %v130, %v292 : i64 loc("exitcond23.not.3"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v293, ^bb112, ^bb85 loc("seahorn/lib/bcmp.c":67:3)
^bb85:
  %v294 = sea.ptr.index %v109 [] strides [] offset 30 inbounds : !sea.ptr<64> loc("_210"("seahorn/lib/bcmp.c":68:9))
  %v295 = sea.const 1 : i64 loc("_211"("seahorn/lib/bcmp.c":68:9))
  %v296 = sea.ptr.dereferenceable %v294, %v295 : !sea.ptr<64>, i64 loc("_211"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v296, ^bb86, ^bb115
^bb86:
  %v297 = sea.load %v90[%v294] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_213"("seahorn/lib/bcmp.c":68:9))
  %v298 = sea.ptr.index %v112 [] strides [] offset 30 inbounds : !sea.ptr<64> loc("_214"("seahorn/lib/bcmp.c":68:18))
  %v299 = sea.const 1 : i64 loc("_215"("seahorn/lib/bcmp.c":68:18))
  %v300 = sea.ptr.dereferenceable %v298, %v299 : !sea.ptr<64>, i64 loc("_215"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v300, ^bb87, ^bb115
^bb87:
  %v301 = sea.load %v90[%v298] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_217"("seahorn/lib/bcmp.c":68:18))
  %v302 = sea.icmp eq, %v297, %v301 : i8 loc(".not.i.i.4"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v302, ^bb88, ^bb108(%v298, %v294 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb88:
  %v303 = sea.const 15 : i64 loc("exitcond23.not.4"("seahorn/lib/bcmp.c":67:31))
  %v304 = sea.icmp eq, %v130, %v303 : i64 loc("exitcond23.not.4"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v304, ^bb112, ^bb89 loc("seahorn/lib/bcmp.c":67:3)
^bb89:
  %v305 = sea.ptr.index %v109 [] strides [] offset 31 inbounds : !sea.ptr<64> loc("_219"("seahorn/lib/bcmp.c":68:9))
  %v306 = sea.const 1 : i64 loc("_220"("seahorn/lib/bcmp.c":68:9))
  %v307 = sea.ptr.dereferenceable %v305, %v306 : !sea.ptr<64>, i64 loc("_220"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v307, ^bb90, ^bb115
^bb90:
  %v308 = sea.load %v90[%v305] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_222"("seahorn/lib/bcmp.c":68:9))
  %v309 = sea.ptr.index %v112 [] strides [] offset 31 inbounds : !sea.ptr<64> loc("_223"("seahorn/lib/bcmp.c":68:18))
  %v310 = sea.const 1 : i64 loc("_224"("seahorn/lib/bcmp.c":68:18))
  %v311 = sea.ptr.dereferenceable %v309, %v310 : !sea.ptr<64>, i64 loc("_224"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v311, ^bb91, ^bb115
^bb91:
  %v312 = sea.load %v90[%v309] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_226"("seahorn/lib/bcmp.c":68:18))
  %v313 = sea.icmp eq, %v308, %v312 : i8 loc(".not.i.i.5"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v313, ^bb92, ^bb108(%v309, %v305 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb92:
  %v314 = sea.const 16 : i64 loc("exitcond23.not.5"("seahorn/lib/bcmp.c":67:31))
  %v315 = sea.icmp eq, %v130, %v314 : i64 loc("exitcond23.not.5"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v315, ^bb112, ^bb93 loc("seahorn/lib/bcmp.c":67:3)
^bb93:
  %v316 = sea.ptr.index %v109 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_228"("seahorn/lib/bcmp.c":68:9))
  %v317 = sea.const 1 : i64 loc("_229"("seahorn/lib/bcmp.c":68:9))
  %v318 = sea.ptr.dereferenceable %v316, %v317 : !sea.ptr<64>, i64 loc("_229"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v318, ^bb94, ^bb115
^bb94:
  %v319 = sea.load %v90[%v316] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_231"("seahorn/lib/bcmp.c":68:9))
  %v320 = sea.ptr.index %v112 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_232"("seahorn/lib/bcmp.c":68:18))
  %v321 = sea.const 1 : i64 loc("_233"("seahorn/lib/bcmp.c":68:18))
  %v322 = sea.ptr.dereferenceable %v320, %v321 : !sea.ptr<64>, i64 loc("_233"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v322, ^bb95, ^bb115
^bb95:
  %v323 = sea.load %v90[%v320] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_235"("seahorn/lib/bcmp.c":68:18))
  %v324 = sea.icmp eq, %v319, %v323 : i8 loc(".not.i.i.6"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v324, ^bb96, ^bb108(%v320, %v316 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb96:
  %v325 = sea.const 17 : i64 loc("exitcond23.not.6"("seahorn/lib/bcmp.c":67:31))
  %v326 = sea.icmp eq, %v130, %v325 : i64 loc("exitcond23.not.6"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v326, ^bb112, ^bb97 loc("seahorn/lib/bcmp.c":67:3)
^bb97:
  %v327 = sea.ptr.index %v109 [] strides [] offset 33 inbounds : !sea.ptr<64> loc("_237"("seahorn/lib/bcmp.c":68:9))
  %v328 = sea.const 1 : i64 loc("_238"("seahorn/lib/bcmp.c":68:9))
  %v329 = sea.ptr.dereferenceable %v327, %v328 : !sea.ptr<64>, i64 loc("_238"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v329, ^bb98, ^bb115
^bb98:
  %v330 = sea.load %v90[%v327] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_240"("seahorn/lib/bcmp.c":68:9))
  %v331 = sea.ptr.index %v112 [] strides [] offset 33 inbounds : !sea.ptr<64> loc("_241"("seahorn/lib/bcmp.c":68:18))
  %v332 = sea.const 1 : i64 loc("_242"("seahorn/lib/bcmp.c":68:18))
  %v333 = sea.ptr.dereferenceable %v331, %v332 : !sea.ptr<64>, i64 loc("_242"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v333, ^bb99, ^bb115
^bb99:
  %v334 = sea.load %v90[%v331] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_244"("seahorn/lib/bcmp.c":68:18))
  %v335 = sea.icmp eq, %v330, %v334 : i8 loc(".not.i.i.7"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v335, ^bb100, ^bb108(%v331, %v327 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb100:
  %v336 = sea.const 18 : i64 loc("exitcond23.not.7"("seahorn/lib/bcmp.c":67:31))
  %v337 = sea.icmp eq, %v130, %v336 : i64 loc("exitcond23.not.7"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v337, ^bb112, ^bb101 loc("seahorn/lib/bcmp.c":67:3)
^bb101:
  %v338 = sea.ptr.index %v109 [] strides [] offset 34 inbounds : !sea.ptr<64> loc("_246"("seahorn/lib/bcmp.c":68:9))
  %v339 = sea.const 1 : i64 loc("_247"("seahorn/lib/bcmp.c":68:9))
  %v340 = sea.ptr.dereferenceable %v338, %v339 : !sea.ptr<64>, i64 loc("_247"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v340, ^bb102, ^bb115
^bb102:
  %v341 = sea.load %v90[%v338] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_249"("seahorn/lib/bcmp.c":68:9))
  %v342 = sea.ptr.index %v112 [] strides [] offset 34 inbounds : !sea.ptr<64> loc("_250"("seahorn/lib/bcmp.c":68:18))
  %v343 = sea.const 1 : i64 loc("_251"("seahorn/lib/bcmp.c":68:18))
  %v344 = sea.ptr.dereferenceable %v342, %v343 : !sea.ptr<64>, i64 loc("_251"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v344, ^bb103, ^bb115
^bb103:
  %v345 = sea.load %v90[%v342] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_253"("seahorn/lib/bcmp.c":68:18))
  %v346 = sea.icmp eq, %v341, %v345 : i8 loc(".not.i.i.8"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v346, ^bb104, ^bb108(%v342, %v338 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb104:
  %v347 = sea.const 19 : i64 loc("exitcond23.not.8"("seahorn/lib/bcmp.c":67:31))
  %v348 = sea.icmp eq, %v130, %v347 : i64 loc("exitcond23.not.8"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v348, ^bb112, ^bb105 loc("seahorn/lib/bcmp.c":67:3)
^bb105:
  %v349 = sea.ptr.index %v109 [] strides [] offset 35 inbounds : !sea.ptr<64> loc("_255"("seahorn/lib/bcmp.c":68:9))
  %v350 = sea.const 1 : i64 loc("_256"("seahorn/lib/bcmp.c":68:9))
  %v351 = sea.ptr.dereferenceable %v349, %v350 : !sea.ptr<64>, i64 loc("_256"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v351, ^bb106, ^bb115
^bb106:
  %v352 = sea.load %v90[%v349] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_258"("seahorn/lib/bcmp.c":68:9))
  %v353 = sea.ptr.index %v112 [] strides [] offset 35 inbounds : !sea.ptr<64> loc("_259"("seahorn/lib/bcmp.c":68:18))
  %v354 = sea.const 1 : i64 loc("_260"("seahorn/lib/bcmp.c":68:18))
  %v355 = sea.ptr.dereferenceable %v353, %v354 : !sea.ptr<64>, i64 loc("_260"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v355, ^bb107, ^bb115
^bb107:
  %v356 = sea.load %v90[%v353] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_262"("seahorn/lib/bcmp.c":68:18))
  %v357 = sea.icmp eq, %v352, %v356 : i8 loc(".not.i.i.9"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v357, ^bb110, ^bb108(%v353, %v349 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb108(%v358 : !sea.ptr<64>, %v359 : !sea.ptr<64>):
  %v360 = sea.const 1 : i64 loc("_272"("seahorn/lib/bcmp.c":69:14))
  %v361 = sea.ptr.dereferenceable %v359, %v360 : !sea.ptr<64>, i64 loc("_272"("seahorn/lib/bcmp.c":69:14))
  sea.cond_br %v361, ^bb109, ^bb115
^bb109:
  %v362 = sea.const 1 : i64 loc("_274"("seahorn/lib/bcmp.c":69:22))
  %v363 = sea.ptr.dereferenceable %v358, %v362 : !sea.ptr<64>, i64 loc("_274"("seahorn/lib/bcmp.c":69:22))
  %v364 = sea.const 0 : i1
  sea.cond_br %v363, ^bb113(%v364 : i1), ^bb115
^bb110:
  %v365 = sea.const 20 : i64 loc("exitcond23.not.9"("seahorn/lib/bcmp.c":67:31))
  %v366 = sea.icmp eq, %v130, %v365 : i64 loc("exitcond23.not.9"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v366, ^bb112, ^bb111 loc("seahorn/lib/bcmp.c":67:3)
^bb111:
  %v367 = sea.ptr.index %v109 [] strides [] offset 36 inbounds : !sea.ptr<64> loc("_264"("seahorn/lib/bcmp.c":68:9))
  %v368 = sea.const 1 : i64 loc("_265"("seahorn/lib/bcmp.c":68:9))
  %v369 = sea.ptr.dereferenceable %v367, %v368 : !sea.ptr<64>, i64 loc("_265"("seahorn/lib/bcmp.c":68:9))
  %v370 = sea.const 1 : i1
  %v371 = sea.xor %v369, %v370 : i1
  sea.assume %v371
  sea.br ^bb115
^bb112:
  %v372 = sea.icmp eq, %v125, %v129 : i64 loc("_275"("aws-c-common/source/string.c":266:15))
  sea.br ^bb113(%v372 : i1) loc("aws-c-common/source/string.c":266:9)
^bb113(%v373 : i1):
  %v374 = sea.and %v93, %v94 : i1 loc("or.cond.i")
  %v375 = sea.const 0 : i1 loc("or.cond2.i"("seahorn/jobs/array_list_comparator_string/aws_array_list_comparator_string_harness.c":19:9))
  %v376 = sea.select %v373, %v374, %v375 : i1 loc("or.cond2.i"("seahorn/jobs/array_list_comparator_string/aws_array_list_comparator_string_harness.c":19:9))
  sea.assume %v376 loc("seahorn/jobs/array_list_comparator_string/aws_array_list_comparator_string_harness.c":19:9)
  %v377 = sea.ptr.index %v31 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_276"("seahorn/jobs/array_list_comparator_string/aws_array_list_comparator_string_harness.c":21:67))
  %v378 = sea.const 8 : i64 loc("_277"("seahorn/jobs/array_list_comparator_string/aws_array_list_comparator_string_harness.c":21:67))
  %v379 = sea.ptr.dereferenceable %v377, %v378 : !sea.ptr<64>, i64 loc("_277"("seahorn/jobs/array_list_comparator_string/aws_array_list_comparator_string_harness.c":21:67))
  sea.cond_br %v379, ^bb114, ^bb115
^bb114:
  %v380 = sea.ptr.index %v91 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_278"("seahorn/jobs/array_list_comparator_string/aws_array_list_comparator_string_harness.c":21:53))
  %v381 = sea.ptr.index %v31 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_279"("seahorn/jobs/array_list_comparator_string/aws_array_list_comparator_string_harness.c":21:39))
  %v382 = sea.load %v90[%v377] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_280"("seahorn/jobs/array_list_comparator_string/aws_array_list_comparator_string_harness.c":21:67))
  %v383 = sea.const 0 : i64 loc("_281"("seahorn/lib/utils.c":16:11))
  %v384 = sea.icmp ne, %v382, %v383 : i64 loc("_281"("seahorn/lib/utils.c":16:11))
  sea.assume %v384 loc("seahorn/lib/utils.c":16:15)
  %v385 = sea.nondet "nd_size_t" [19] : i64 loc("_282"("seahorn/lib/utils.c":17:16))
  %v386 = sea.icmp ult, %v385, %v382 : i64 loc("_283"("seahorn/lib/utils.c":19:14))
  %v387 = sea.const 36028797018963967 : i64 loc("_284"("seahorn/lib/utils.c":19:20))
  %v388 = sea.icmp ult, %v382, %v387 : i64 loc("_284"("seahorn/lib/utils.c":19:20))
  %v389 = sea.and %v388, %v386 : i1 loc("_285"("seahorn/lib/utils.c":19:20))
  sea.assume %v389 loc("seahorn/lib/utils.c":19:5)
  %v390 = sea.ptr.index %v381 [%v385] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_286"("seahorn/lib/utils.c":20:5))
  %v391 = sea.load %v90[%v390] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_287"("seahorn/lib/utils.c":20:5))
  %v392 = sea.ptr.index %v380 [%v385] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_288"("seahorn/lib/utils.c":20:5))
  %v393 = sea.load %v90[%v392] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_289"("seahorn/lib/utils.c":20:5))
  %v394 = sea.icmp eq, %v391, %v393 : i8 loc("_290"("seahorn/lib/utils.c":20:5))
  %v395 = sea.const 1 : i1 loc("seahorn/lib/utils.c":20:5)
  %v396 = sea.xor %v394, %v395 : i1 loc("seahorn/lib/utils.c":20:5)
  sea.assume %v396 loc("seahorn/lib/utils.c":20:5)
  sea.br ^bb115 loc("seahorn/lib/utils.c":20:5)
^bb115:
  sea.br ^bb116
^bb116:
  %v397 = sea.const 0 : i1
  sea.assert %v397
  sea.halt
}
