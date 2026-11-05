// Exported from SeaHorn (string_compare.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm12")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm13")
  %v2 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v3 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v4 = sea.store %v0[%v2], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v5 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_0")
  %v6 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_0")
  %v7 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v8 = sea.store %v4[%v6], %v7 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v9 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_1")
  %v10 = sea.ptr.index %v9 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_1")
  %v11 = sea.const 0 : i8
  %v12 = sea.const 24 : i64
  %v13 = sea.memset %v8[%v10], %v11, %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v14 = sea.nondet "nd_bool" [2] : i1 loc("_2"("seahorn/jobs/string_compare/aws_string_compare_harness.c":13:32))
  %v15 = sea.ptr.null : !sea.ptr<64> loc("seahorn/jobs/string_compare/aws_string_compare_harness.c":13:32)
  sea.cond_br %v14, ^bb1, ^bb10(%v1, %v15 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/jobs/string_compare/aws_string_compare_harness.c":13:32)
^bb1:
  %v16 = sea.nondet "nd_size_t" [3] : i64 loc("_4"("seahorn/lib/string_helper.c":24:16))
  %v17 = sea.const 10 : i64 loc("_5"("seahorn/lib/string_helper.c":25:14))
  %v18 = sea.icmp ult, %v16, %v17 : i64 loc("_5"("seahorn/lib/string_helper.c":25:14))
  sea.assume %v18 loc("seahorn/lib/string_helper.c":25:3)
  %v19 = sea.const 25 : i64 loc("_6"("seahorn/lib/string_helper.c":11:61))
  %v20 = sea.add %v16, %v19 : i64 loc("_6"("seahorn/lib/string_helper.c":11:61))
  %v21 = sea.nondet "nd_malloc_is_fail" [4] : i1 loc("_7"("seahorn/lib/sea_allocators.c":11:10))
  %v22 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v21, ^bb3(%v1, %v22 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb2 loc("seahorn/lib/sea_allocators.c":11:10)
^bb2:
  %v23 = sea.const 1 : i64 loc("malloc.i")
  %v24 = sea.mul %v20, %v23 : i64 loc("malloc.i")
  %v25 = sea.alloca %v24 align 16 [5] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb3(%v1, %v25 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb3(%v26 : !sea.mem<!sea.ptr<64>, i8>, %v27 : !sea.ptr<64>):
  %v28 = sea.memhavoc %v26[%v27], %v20 [6] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v29 = sea.ptr.null : !sea.ptr<64> loc("_10"("seahorn/lib/sea_allocators.c":45:10))
  %v30 = sea.ptr.cmp ne, %v27, %v29 : !sea.ptr<64> loc("_10"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v30 loc("seahorn/lib/sea_allocators.c":45:3)
  %v31 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i.i"("seahorn/lib/string_helper.c":13:7))
  %v32 = sea.ptr.cmp eq, %v27, %v31 : !sea.ptr<64> loc(".not.i.i.i"("seahorn/lib/string_helper.c":13:7))
  %v33 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":13:7)
  sea.cond_br %v32, ^bb10(%v28, %v33 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/string_helper.c":13:7)
^bb4:
  %v34 = sea.nondet "nd_bool" [7] : i1 loc("_12"("seahorn/lib/string_helper.c":16:9))
  %v35 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.cond_br %v34, ^bb5, ^bb6(%v35 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb5:
  %v36 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.br ^bb6(%v36 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb6(%v37 : !sea.ptr<64>):
  %v38 = sea.const 8 : i64 loc("_16"("seahorn/lib/string_helper.c":15:49))
  %v39 = sea.ptr.dereferenceable %v27, %v38 : !sea.ptr<64>, i64 loc("_16"("seahorn/lib/string_helper.c":15:49))
  sea.cond_br %v39, ^bb7, ^bb96
^bb7:
  %v40 = sea.store %v28[%v27], %v37 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/string_helper.c":15:49)
  %v41 = sea.ptr.index %v27 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_18"("seahorn/lib/string_helper.c":17:23))
  %v42 = sea.const 8 : i64 loc("_19"("seahorn/lib/string_helper.c":17:28))
  %v43 = sea.ptr.dereferenceable %v41, %v42 : !sea.ptr<64>, i64 loc("_19"("seahorn/lib/string_helper.c":17:28))
  sea.cond_br %v43, ^bb8, ^bb96
^bb8:
  %v44 = sea.store %v40[%v41], %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/string_helper.c":17:28)
  %v45 = sea.ptr.index %v27 [%v16] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_21"("seahorn/lib/string_helper.c":18:18))
  %v46 = sea.const 1 : i64 loc("_22"("seahorn/lib/string_helper.c":18:34))
  %v47 = sea.ptr.dereferenceable %v45, %v46 : !sea.ptr<64>, i64 loc("_22"("seahorn/lib/string_helper.c":18:34))
  sea.cond_br %v47, ^bb9, ^bb96
^bb9:
  %v48 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":18:34)
  %v49 = sea.store %v44[%v45], %v48 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":18:34)
  sea.br ^bb10(%v49, %v27 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/string_helper.c":19:3)
^bb10(%v50 : !sea.mem<!sea.ptr<64>, i8>, %v51 : !sea.ptr<64>):
  %v52 = sea.nondet "nd_bool" [8] : i1 loc("_25"("seahorn/jobs/string_compare/aws_string_compare_harness.c":16:32))
  sea.cond_br %v52, ^bb20, ^bb11 loc("seahorn/jobs/string_compare/aws_string_compare_harness.c":16:32)
^bb11:
  %v53 = sea.nondet "nd_size_t" [9] : i64 loc("_30"("seahorn/lib/string_helper.c":24:16))
  %v54 = sea.const 10 : i64 loc("_31"("seahorn/lib/string_helper.c":25:14))
  %v55 = sea.icmp ult, %v53, %v54 : i64 loc("_31"("seahorn/lib/string_helper.c":25:14))
  sea.assume %v55 loc("seahorn/lib/string_helper.c":25:3)
  %v56 = sea.const 25 : i64 loc("_32"("seahorn/lib/string_helper.c":11:61))
  %v57 = sea.add %v53, %v56 : i64 loc("_32"("seahorn/lib/string_helper.c":11:61))
  %v58 = sea.nondet "nd_malloc_is_fail" [10] : i1 loc("_33"("seahorn/lib/sea_allocators.c":11:10))
  %v59 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v58, ^bb13(%v50, %v59 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb12 loc("seahorn/lib/sea_allocators.c":11:10)
^bb12:
  %v60 = sea.const 1 : i64 loc("malloc23.i")
  %v61 = sea.mul %v57, %v60 : i64 loc("malloc23.i")
  %v62 = sea.alloca %v61 align 16 [11] : i64 -> !sea.ptr<64> loc("malloc23.i")
  sea.br ^bb13(%v50, %v62 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb13(%v63 : !sea.mem<!sea.ptr<64>, i8>, %v64 : !sea.ptr<64>):
  %v65 = sea.memhavoc %v63[%v64], %v57 [12] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v66 = sea.ptr.null : !sea.ptr<64> loc("_36"("seahorn/lib/sea_allocators.c":45:10))
  %v67 = sea.ptr.cmp ne, %v64, %v66 : !sea.ptr<64> loc("_36"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v67 loc("seahorn/lib/sea_allocators.c":45:3)
  %v68 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i17.i"("seahorn/lib/string_helper.c":13:7))
  %v69 = sea.ptr.cmp eq, %v64, %v68 : !sea.ptr<64> loc(".not.i.i17.i"("seahorn/lib/string_helper.c":13:7))
  %v70 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":13:7)
  sea.cond_br %v69, ^bb21(%v65, %v70 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb14 loc("seahorn/lib/string_helper.c":13:7)
^bb14:
  %v71 = sea.nondet "nd_bool" [13] : i1 loc("_38"("seahorn/lib/string_helper.c":16:9))
  %v72 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.cond_br %v71, ^bb15, ^bb16(%v72 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb15:
  %v73 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.br ^bb16(%v73 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb16(%v74 : !sea.ptr<64>):
  %v75 = sea.const 8 : i64 loc("_42"("seahorn/lib/string_helper.c":15:49))
  %v76 = sea.ptr.dereferenceable %v64, %v75 : !sea.ptr<64>, i64 loc("_42"("seahorn/lib/string_helper.c":15:49))
  sea.cond_br %v76, ^bb17, ^bb96
^bb17:
  %v77 = sea.store %v65[%v64], %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/string_helper.c":15:49)
  %v78 = sea.ptr.index %v64 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_44"("seahorn/lib/string_helper.c":17:23))
  %v79 = sea.const 8 : i64 loc("_45"("seahorn/lib/string_helper.c":17:28))
  %v80 = sea.ptr.dereferenceable %v78, %v79 : !sea.ptr<64>, i64 loc("_45"("seahorn/lib/string_helper.c":17:28))
  sea.cond_br %v80, ^bb18, ^bb96
^bb18:
  %v81 = sea.store %v77[%v78], %v53 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/string_helper.c":17:28)
  %v82 = sea.ptr.index %v64 [%v53] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_47"("seahorn/lib/string_helper.c":18:18))
  %v83 = sea.const 1 : i64 loc("_48"("seahorn/lib/string_helper.c":18:34))
  %v84 = sea.ptr.dereferenceable %v82, %v83 : !sea.ptr<64>, i64 loc("_48"("seahorn/lib/string_helper.c":18:34))
  sea.cond_br %v84, ^bb19, ^bb96
^bb19:
  %v85 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":18:34)
  %v86 = sea.store %v81[%v82], %v85 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":18:34)
  sea.br ^bb21(%v86, %v64 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/string_helper.c":19:3)
^bb20:
  %v87 = sea.nondet "nd_bool" [14] : i1 loc("_27"("seahorn/jobs/string_compare/aws_string_compare_harness.c":17:14))
  %v88 = sea.ptr.null : !sea.ptr<64> loc("_28"("seahorn/jobs/string_compare/aws_string_compare_harness.c":17:14))
  %v89 = sea.select %v87, %v51, %v88 : !sea.ptr<64> loc("_28"("seahorn/jobs/string_compare/aws_string_compare_harness.c":17:14))
  sea.br ^bb21(%v50, %v89 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/jobs/string_compare/aws_string_compare_harness.c":16:32)
^bb21(%v90 : !sea.mem<!sea.ptr<64>, i8>, %v91 : !sea.ptr<64>):
  %v92 = sea.nondet "nd_bool" [15] : i1 loc("_51"("seahorn/jobs/string_compare/aws_string_compare_harness.c":19:29))
  %v93 = sea.ptr.cmp ne, %v91, %v51 : !sea.ptr<64> loc("_52"("aws-c-common/source/string.c":246:11))
  %v94 = sea.const 0 : i1 loc(".not9"("aws-c-common/source/string.c":246:9))
  %v95 = sea.select %v92, %v93, %v94 : i1 loc(".not9"("aws-c-common/source/string.c":246:9))
  sea.cond_br %v95, ^bb22, ^bb76 loc("aws-c-common/source/string.c":246:9)
^bb22:
  %v96 = sea.ptr.null : !sea.ptr<64> loc("_54"("aws-c-common/source/string.c":249:11))
  %v97 = sea.ptr.cmp eq, %v51, %v96 : !sea.ptr<64> loc("_54"("aws-c-common/source/string.c":249:11))
  %v98 = sea.ptr.null : !sea.ptr<64> loc("_55")
  %v99 = sea.ptr.cmp eq, %v91, %v98 : !sea.ptr<64> loc("_55")
  %v100 = sea.const 1 : i1 loc("or.cond"("aws-c-common/source/string.c":249:9))
  %v101 = sea.select %v97, %v100, %v99 : i1 loc("or.cond"("aws-c-common/source/string.c":249:9))
  sea.cond_br %v101, ^bb80, ^bb23 loc("aws-c-common/source/string.c":249:9)
^bb23:
  %v102 = sea.ptr.index %v51 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_57"("aws-c-common/source/string.c":256:23))
  %v103 = sea.const 8 : i64 loc("_58"("aws-c-common/source/string.c":256:23))
  %v104 = sea.ptr.dereferenceable %v102, %v103 : !sea.ptr<64>, i64 loc("_58"("aws-c-common/source/string.c":256:23))
  sea.cond_br %v104, ^bb24, ^bb96
^bb24:
  %v105 = sea.load %v90[%v102] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_60"("aws-c-common/source/string.c":256:23))
  %v106 = sea.ptr.index %v91 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_61"("aws-c-common/source/string.c":257:23))
  %v107 = sea.const 8 : i64 loc("_62"("aws-c-common/source/string.c":257:23))
  %v108 = sea.ptr.dereferenceable %v106, %v107 : !sea.ptr<64>, i64 loc("_62"("aws-c-common/source/string.c":257:23))
  sea.cond_br %v108, ^bb25, ^bb96
^bb25:
  %v109 = sea.load %v90[%v106] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_63"("aws-c-common/source/string.c":257:23))
  %v110 = sea.umin %v105, %v109 : i64 loc("_64"("aws-c-common/source/string.c":258:22))
  %v111 = sea.ptr.index %v51 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_65"("aws-c-common/include/aws/common/string.inl":17:17))
  %v112 = sea.ptr.index %v91 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_66"("aws-c-common/include/aws/common/string.inl":17:17))
  %v113 = sea.const 0 : i64 loc(".not7"("seahorn/lib/bcmp.c":60:11))
  %v114 = sea.icmp eq, %v110, %v113 : i64 loc(".not7"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v114, ^bb75, ^bb26 loc("seahorn/lib/bcmp.c":60:9)
^bb26:
  %v115 = sea.const 1 : i64 loc("_70"("seahorn/lib/bcmp.c":61:11))
  %v116 = sea.ptr.dereferenceable %v111, %v115 : !sea.ptr<64>, i64 loc("_70"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v116, ^bb27, ^bb96
^bb27:
  %v117 = sea.load %v90[%v111] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_72"("seahorn/lib/bcmp.c":61:11))
  %v118 = sea.const 1 : i64 loc("_73"("seahorn/lib/bcmp.c":61:20))
  %v119 = sea.ptr.dereferenceable %v112, %v118 : !sea.ptr<64>, i64 loc("_73"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v119, ^bb28, ^bb96
^bb28:
  %v120 = sea.load %v90[%v112] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_75"("seahorn/lib/bcmp.c":61:20))
  %v121 = sea.icmp eq, %v117, %v120 : i8 loc(".not2.i.i"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v121, ^bb29, ^bb65(%v112, %v111 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb29:
  %v122 = sea.const 1 : i64 loc(".not10"("seahorn/lib/bcmp.c":60:11))
  %v123 = sea.icmp eq, %v110, %v122 : i64 loc(".not10"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v123, ^bb75, ^bb30 loc("seahorn/lib/bcmp.c":60:9)
^bb30:
  %v124 = sea.ptr.index %v51 [] strides [] offset 17 inbounds : !sea.ptr<64> loc("_81"("seahorn/lib/bcmp.c":61:11))
  %v125 = sea.const 1 : i64 loc("_82"("seahorn/lib/bcmp.c":61:11))
  %v126 = sea.ptr.dereferenceable %v124, %v125 : !sea.ptr<64>, i64 loc("_82"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v126, ^bb31, ^bb96
^bb31:
  %v127 = sea.load %v90[%v124] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_84"("seahorn/lib/bcmp.c":61:11))
  %v128 = sea.ptr.index %v91 [] strides [] offset 17 inbounds : !sea.ptr<64> loc("_85"("seahorn/lib/bcmp.c":61:20))
  %v129 = sea.const 1 : i64 loc("_86"("seahorn/lib/bcmp.c":61:20))
  %v130 = sea.ptr.dereferenceable %v128, %v129 : !sea.ptr<64>, i64 loc("_86"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v130, ^bb32, ^bb96
^bb32:
  %v131 = sea.load %v90[%v128] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_88"("seahorn/lib/bcmp.c":61:20))
  %v132 = sea.icmp eq, %v127, %v131 : i8 loc(".not2.i.i.1"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v132, ^bb33, ^bb65(%v128, %v124 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb33:
  %v133 = sea.const 2 : i64 loc("_89"("seahorn/lib/bcmp.c":60:11))
  %v134 = sea.icmp ugt, %v110, %v133 : i64 loc("_89"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v134, ^bb34, ^bb75 loc("seahorn/lib/bcmp.c":60:9)
^bb34:
  %v135 = sea.ptr.index %v51 [] strides [] offset 18 inbounds : !sea.ptr<64> loc("_91"("seahorn/lib/bcmp.c":61:11))
  %v136 = sea.const 1 : i64 loc("_92"("seahorn/lib/bcmp.c":61:11))
  %v137 = sea.ptr.dereferenceable %v135, %v136 : !sea.ptr<64>, i64 loc("_92"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v137, ^bb35, ^bb96
^bb35:
  %v138 = sea.load %v90[%v135] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_94"("seahorn/lib/bcmp.c":61:11))
  %v139 = sea.ptr.index %v91 [] strides [] offset 18 inbounds : !sea.ptr<64> loc("_95"("seahorn/lib/bcmp.c":61:20))
  %v140 = sea.const 1 : i64 loc("_96"("seahorn/lib/bcmp.c":61:20))
  %v141 = sea.ptr.dereferenceable %v139, %v140 : !sea.ptr<64>, i64 loc("_96"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v141, ^bb36, ^bb96
^bb36:
  %v142 = sea.load %v90[%v139] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_98"("seahorn/lib/bcmp.c":61:20))
  %v143 = sea.icmp eq, %v138, %v142 : i8 loc(".not2.i.i.2"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v143, ^bb37, ^bb65(%v139, %v135 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb37:
  %v144 = sea.const 3 : i64 loc(".not11"("seahorn/lib/bcmp.c":60:11))
  %v145 = sea.icmp eq, %v110, %v144 : i64 loc(".not11"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v145, ^bb75, ^bb38 loc("seahorn/lib/bcmp.c":60:9)
^bb38:
  %v146 = sea.ptr.index %v51 [] strides [] offset 19 inbounds : !sea.ptr<64> loc("_100"("seahorn/lib/bcmp.c":61:11))
  %v147 = sea.const 1 : i64 loc("_101"("seahorn/lib/bcmp.c":61:11))
  %v148 = sea.ptr.dereferenceable %v146, %v147 : !sea.ptr<64>, i64 loc("_101"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v148, ^bb39, ^bb96
^bb39:
  %v149 = sea.load %v90[%v146] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_103"("seahorn/lib/bcmp.c":61:11))
  %v150 = sea.ptr.index %v91 [] strides [] offset 19 inbounds : !sea.ptr<64> loc("_104"("seahorn/lib/bcmp.c":61:20))
  %v151 = sea.const 1 : i64 loc("_105"("seahorn/lib/bcmp.c":61:20))
  %v152 = sea.ptr.dereferenceable %v150, %v151 : !sea.ptr<64>, i64 loc("_105"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v152, ^bb40, ^bb96
^bb40:
  %v153 = sea.load %v90[%v150] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_107"("seahorn/lib/bcmp.c":61:20))
  %v154 = sea.icmp eq, %v149, %v153 : i8 loc(".not2.i.i.3"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v154, ^bb41, ^bb65(%v150, %v146 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb41:
  %v155 = sea.const 4 : i64 loc("_108"("seahorn/lib/bcmp.c":60:11))
  %v156 = sea.icmp ugt, %v110, %v155 : i64 loc("_108"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v156, ^bb42, ^bb75 loc("seahorn/lib/bcmp.c":60:9)
^bb42:
  %v157 = sea.ptr.index %v51 [] strides [] offset 20 inbounds : !sea.ptr<64> loc("_110"("seahorn/lib/bcmp.c":61:11))
  %v158 = sea.const 1 : i64 loc("_111"("seahorn/lib/bcmp.c":61:11))
  %v159 = sea.ptr.dereferenceable %v157, %v158 : !sea.ptr<64>, i64 loc("_111"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v159, ^bb43, ^bb96
^bb43:
  %v160 = sea.load %v90[%v157] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_113"("seahorn/lib/bcmp.c":61:11))
  %v161 = sea.ptr.index %v91 [] strides [] offset 20 inbounds : !sea.ptr<64> loc("_114"("seahorn/lib/bcmp.c":61:20))
  %v162 = sea.const 1 : i64 loc("_115"("seahorn/lib/bcmp.c":61:20))
  %v163 = sea.ptr.dereferenceable %v161, %v162 : !sea.ptr<64>, i64 loc("_115"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v163, ^bb44, ^bb96
^bb44:
  %v164 = sea.load %v90[%v161] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_117"("seahorn/lib/bcmp.c":61:20))
  %v165 = sea.icmp eq, %v160, %v164 : i8 loc(".not2.i.i.4"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v165, ^bb45, ^bb65(%v161, %v157 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb45:
  %v166 = sea.const 5 : i64 loc(".not12"("seahorn/lib/bcmp.c":60:11))
  %v167 = sea.icmp eq, %v110, %v166 : i64 loc(".not12"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v167, ^bb75, ^bb46 loc("seahorn/lib/bcmp.c":60:9)
^bb46:
  %v168 = sea.ptr.index %v51 [] strides [] offset 21 inbounds : !sea.ptr<64> loc("_119"("seahorn/lib/bcmp.c":61:11))
  %v169 = sea.const 1 : i64 loc("_120"("seahorn/lib/bcmp.c":61:11))
  %v170 = sea.ptr.dereferenceable %v168, %v169 : !sea.ptr<64>, i64 loc("_120"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v170, ^bb47, ^bb96
^bb47:
  %v171 = sea.load %v90[%v168] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_122"("seahorn/lib/bcmp.c":61:11))
  %v172 = sea.ptr.index %v91 [] strides [] offset 21 inbounds : !sea.ptr<64> loc("_123"("seahorn/lib/bcmp.c":61:20))
  %v173 = sea.const 1 : i64 loc("_124"("seahorn/lib/bcmp.c":61:20))
  %v174 = sea.ptr.dereferenceable %v172, %v173 : !sea.ptr<64>, i64 loc("_124"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v174, ^bb48, ^bb96
^bb48:
  %v175 = sea.load %v90[%v172] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_126"("seahorn/lib/bcmp.c":61:20))
  %v176 = sea.icmp eq, %v171, %v175 : i8 loc(".not2.i.i.5"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v176, ^bb49, ^bb65(%v172, %v168 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb49:
  %v177 = sea.const 6 : i64 loc("_127"("seahorn/lib/bcmp.c":60:11))
  %v178 = sea.icmp ugt, %v110, %v177 : i64 loc("_127"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v178, ^bb50, ^bb75 loc("seahorn/lib/bcmp.c":60:9)
^bb50:
  %v179 = sea.ptr.index %v51 [] strides [] offset 22 inbounds : !sea.ptr<64> loc("_129"("seahorn/lib/bcmp.c":61:11))
  %v180 = sea.const 1 : i64 loc("_130"("seahorn/lib/bcmp.c":61:11))
  %v181 = sea.ptr.dereferenceable %v179, %v180 : !sea.ptr<64>, i64 loc("_130"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v181, ^bb51, ^bb96
^bb51:
  %v182 = sea.load %v90[%v179] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_132"("seahorn/lib/bcmp.c":61:11))
  %v183 = sea.ptr.index %v91 [] strides [] offset 22 inbounds : !sea.ptr<64> loc("_133"("seahorn/lib/bcmp.c":61:20))
  %v184 = sea.const 1 : i64 loc("_134"("seahorn/lib/bcmp.c":61:20))
  %v185 = sea.ptr.dereferenceable %v183, %v184 : !sea.ptr<64>, i64 loc("_134"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v185, ^bb52, ^bb96
^bb52:
  %v186 = sea.load %v90[%v183] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_136"("seahorn/lib/bcmp.c":61:20))
  %v187 = sea.icmp eq, %v182, %v186 : i8 loc(".not2.i.i.6"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v187, ^bb53, ^bb65(%v183, %v179 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb53:
  %v188 = sea.const 7 : i64 loc(".not13"("seahorn/lib/bcmp.c":60:11))
  %v189 = sea.icmp eq, %v110, %v188 : i64 loc(".not13"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v189, ^bb75, ^bb54 loc("seahorn/lib/bcmp.c":60:9)
^bb54:
  %v190 = sea.ptr.index %v51 [] strides [] offset 23 inbounds : !sea.ptr<64> loc("_138"("seahorn/lib/bcmp.c":61:11))
  %v191 = sea.const 1 : i64 loc("_139"("seahorn/lib/bcmp.c":61:11))
  %v192 = sea.ptr.dereferenceable %v190, %v191 : !sea.ptr<64>, i64 loc("_139"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v192, ^bb55, ^bb96
^bb55:
  %v193 = sea.load %v90[%v190] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_141"("seahorn/lib/bcmp.c":61:11))
  %v194 = sea.ptr.index %v91 [] strides [] offset 23 inbounds : !sea.ptr<64> loc("_142"("seahorn/lib/bcmp.c":61:20))
  %v195 = sea.const 1 : i64 loc("_143"("seahorn/lib/bcmp.c":61:20))
  %v196 = sea.ptr.dereferenceable %v194, %v195 : !sea.ptr<64>, i64 loc("_143"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v196, ^bb56, ^bb96
^bb56:
  %v197 = sea.load %v90[%v194] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_145"("seahorn/lib/bcmp.c":61:20))
  %v198 = sea.icmp eq, %v193, %v197 : i8 loc(".not2.i.i.7"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v198, ^bb57, ^bb65(%v194, %v190 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb57:
  %v199 = sea.const 8 : i64 loc("_146"("seahorn/lib/bcmp.c":60:11))
  %v200 = sea.icmp ugt, %v110, %v199 : i64 loc("_146"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v200, ^bb58, ^bb75 loc("seahorn/lib/bcmp.c":60:9)
^bb58:
  %v201 = sea.ptr.index %v51 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_148"("seahorn/lib/bcmp.c":61:11))
  %v202 = sea.const 1 : i64 loc("_149"("seahorn/lib/bcmp.c":61:11))
  %v203 = sea.ptr.dereferenceable %v201, %v202 : !sea.ptr<64>, i64 loc("_149"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v203, ^bb59, ^bb96
^bb59:
  %v204 = sea.load %v90[%v201] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_151"("seahorn/lib/bcmp.c":61:11))
  %v205 = sea.ptr.index %v91 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_152"("seahorn/lib/bcmp.c":61:20))
  %v206 = sea.const 1 : i64 loc("_153"("seahorn/lib/bcmp.c":61:20))
  %v207 = sea.ptr.dereferenceable %v205, %v206 : !sea.ptr<64>, i64 loc("_153"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v207, ^bb60, ^bb96
^bb60:
  %v208 = sea.load %v90[%v205] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_155"("seahorn/lib/bcmp.c":61:20))
  %v209 = sea.icmp eq, %v204, %v208 : i8 loc(".not2.i.i.8"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v209, ^bb61, ^bb65(%v205, %v201 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb61:
  %v210 = sea.const 9 : i64 loc(".not14"("seahorn/lib/bcmp.c":60:11))
  %v211 = sea.icmp eq, %v110, %v210 : i64 loc(".not14"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v211, ^bb75, ^bb62 loc("seahorn/lib/bcmp.c":60:9)
^bb62:
  %v212 = sea.ptr.index %v51 [] strides [] offset 25 inbounds : !sea.ptr<64> loc("_157"("seahorn/lib/bcmp.c":61:11))
  %v213 = sea.const 1 : i64 loc("_158"("seahorn/lib/bcmp.c":61:11))
  %v214 = sea.ptr.dereferenceable %v212, %v213 : !sea.ptr<64>, i64 loc("_158"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v214, ^bb63, ^bb96
^bb63:
  %v215 = sea.load %v90[%v212] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_160"("seahorn/lib/bcmp.c":61:11))
  %v216 = sea.ptr.index %v91 [] strides [] offset 25 inbounds : !sea.ptr<64> loc("_161"("seahorn/lib/bcmp.c":61:20))
  %v217 = sea.const 1 : i64 loc("_162"("seahorn/lib/bcmp.c":61:20))
  %v218 = sea.ptr.dereferenceable %v216, %v217 : !sea.ptr<64>, i64 loc("_162"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v218, ^bb64, ^bb96
^bb64:
  %v219 = sea.load %v90[%v216] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_164"("seahorn/lib/bcmp.c":61:20))
  %v220 = sea.icmp eq, %v215, %v219 : i8 loc(".not2.i.i.9"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v220, ^bb67, ^bb65(%v216, %v212 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb65(%v221 : !sea.ptr<64>, %v222 : !sea.ptr<64>):
  %v223 = sea.const 1 : i64 loc("_77"("seahorn/lib/bcmp.c":62:16))
  %v224 = sea.ptr.dereferenceable %v222, %v223 : !sea.ptr<64>, i64 loc("_77"("seahorn/lib/bcmp.c":62:16))
  sea.cond_br %v224, ^bb66, ^bb96
^bb66:
  %v225 = sea.const 1 : i64 loc("_79"("seahorn/lib/bcmp.c":62:24))
  %v226 = sea.ptr.dereferenceable %v221, %v225 : !sea.ptr<64>, i64 loc("_79"("seahorn/lib/bcmp.c":62:24))
  sea.cond_br %v226, ^bb81, ^bb96
^bb67:
  %v227 = sea.const 10 : i64 loc("_165"("seahorn/lib/bcmp.c":67:31))
  %v228 = sea.icmp ugt, %v110, %v227 : i64 loc("_165"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v228, ^bb68, ^bb75 loc("seahorn/lib/bcmp.c":67:3)
^bb68:
  %v229 = sea.ptr.index %v51 [] strides [] offset 26 inbounds : !sea.ptr<64> loc("_67"("seahorn/lib/bcmp.c":68:9))
  %v230 = sea.const 1 : i64 loc("_68"("seahorn/lib/bcmp.c":68:9))
  %v231 = sea.ptr.dereferenceable %v229, %v230 : !sea.ptr<64>, i64 loc("_68"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v231, ^bb69, ^bb96
^bb69:
  %v232 = sea.load %v90[%v229] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_169"("seahorn/lib/bcmp.c":68:9))
  %v233 = sea.ptr.index %v91 [] strides [] offset 26 inbounds : !sea.ptr<64> loc("_170"("seahorn/lib/bcmp.c":68:18))
  %v234 = sea.const 1 : i64 loc("_171"("seahorn/lib/bcmp.c":68:18))
  %v235 = sea.ptr.dereferenceable %v233, %v234 : !sea.ptr<64>, i64 loc("_171"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v235, ^bb70, ^bb96
^bb70:
  %v236 = sea.load %v90[%v233] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_173"("seahorn/lib/bcmp.c":68:18))
  %v237 = sea.icmp eq, %v232, %v236 : i8 loc(".not.i22.i"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v237, ^bb73, ^bb71 loc("seahorn/lib/bcmp.c":68:9)
^bb71:
  %v238 = sea.const 1 : i64 loc("_175"("seahorn/lib/bcmp.c":69:14))
  %v239 = sea.ptr.dereferenceable %v229, %v238 : !sea.ptr<64>, i64 loc("_175"("seahorn/lib/bcmp.c":69:14))
  sea.cond_br %v239, ^bb72, ^bb96
^bb72:
  %v240 = sea.const 1 : i64 loc("_177"("seahorn/lib/bcmp.c":69:22))
  %v241 = sea.ptr.dereferenceable %v233, %v240 : !sea.ptr<64>, i64 loc("_177"("seahorn/lib/bcmp.c":69:22))
  sea.cond_br %v241, ^bb81, ^bb96
^bb73:
  %v242 = sea.const 11 : i64 loc("exitcond29.not"("seahorn/lib/bcmp.c":67:31))
  %v243 = sea.icmp eq, %v110, %v242 : i64 loc("exitcond29.not"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v243, ^bb75, ^bb74 loc("seahorn/lib/bcmp.c":67:3)
^bb74:
  %v244 = sea.ptr.index %v51 [] strides [] offset 27 inbounds : !sea.ptr<64> loc("_167"("seahorn/lib/bcmp.c":68:9))
  %v245 = sea.const 1 : i64 loc("_168"("seahorn/lib/bcmp.c":68:9))
  %v246 = sea.ptr.dereferenceable %v244, %v245 : !sea.ptr<64>, i64 loc("_168"("seahorn/lib/bcmp.c":68:9))
  %v247 = sea.const 1 : i1
  %v248 = sea.xor %v246, %v247 : i1
  sea.assume %v248
  sea.br ^bb96
^bb75:
  %v249 = sea.icmp eq, %v105, %v109 : i64 loc("_178"("aws-c-common/source/string.c":266:15))
  sea.cond_br %v249, ^bb76, ^bb81 loc("aws-c-common/source/string.c":266:9)
^bb76:
  %v250 = sea.ptr.null : !sea.ptr<64> loc("_179")
  %v251 = sea.ptr.cmp ne, %v51, %v250 : !sea.ptr<64> loc("_179")
  %v252 = sea.and %v251, %v92 : i1 loc("or.cond.i"("seahorn/jobs/string_compare/aws_string_compare_harness.c":21:30))
  %v253 = sea.ptr.null : !sea.ptr<64> loc("_180")
  %v254 = sea.ptr.cmp ne, %v91, %v253 : !sea.ptr<64> loc("_180")
  %v255 = sea.const 0 : i1 loc("or.cond3.i"("seahorn/jobs/string_compare/aws_string_compare_harness.c":21:30))
  %v256 = sea.select %v252, %v254, %v255 : i1 loc("or.cond3.i"("seahorn/jobs/string_compare/aws_string_compare_harness.c":21:30))
  sea.cond_br %v256, ^bb77, ^bb80 loc("seahorn/jobs/string_compare/aws_string_compare_harness.c":21:30)
^bb77:
  %v257 = sea.ptr.index %v51 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_182"("seahorn/jobs/string_compare/aws_string_compare_harness.c":22:67))
  %v258 = sea.const 8 : i64 loc("_183"("seahorn/jobs/string_compare/aws_string_compare_harness.c":22:67))
  %v259 = sea.ptr.dereferenceable %v257, %v258 : !sea.ptr<64>, i64 loc("_183"("seahorn/jobs/string_compare/aws_string_compare_harness.c":22:67))
  sea.cond_br %v259, ^bb78, ^bb96
^bb78:
  %v260 = sea.load %v90[%v257] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_184"("seahorn/jobs/string_compare/aws_string_compare_harness.c":22:67))
  %v261 = sea.const 0 : i64 loc(".not"("seahorn/lib/utils.c":16:11))
  %v262 = sea.icmp eq, %v260, %v261 : i64 loc(".not"("seahorn/lib/utils.c":16:11))
  sea.cond_br %v262, ^bb81, ^bb79 loc("seahorn/lib/utils.c":16:15)
^bb79:
  %v263 = sea.ptr.index %v51 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_186"("seahorn/jobs/string_compare/aws_string_compare_harness.c":22:39))
  %v264 = sea.ptr.index %v91 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_187"("seahorn/jobs/string_compare/aws_string_compare_harness.c":22:53))
  %v265 = sea.nondet "nd_size_t" [16] : i64 loc("_188"("seahorn/lib/utils.c":17:16))
  %v266 = sea.icmp ult, %v265, %v260 : i64 loc("_189"("seahorn/lib/utils.c":19:14))
  %v267 = sea.const 36028797018963967 : i64 loc("_190"("seahorn/lib/utils.c":19:20))
  %v268 = sea.icmp ult, %v260, %v267 : i64 loc("_190"("seahorn/lib/utils.c":19:20))
  %v269 = sea.and %v268, %v266 : i1 loc("_191"("seahorn/lib/utils.c":19:20))
  sea.assume %v269 loc("seahorn/lib/utils.c":19:5)
  %v270 = sea.ptr.index %v263 [%v265] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_192"("seahorn/lib/utils.c":20:5))
  %v271 = sea.load %v90[%v270] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_193"("seahorn/lib/utils.c":20:5))
  %v272 = sea.ptr.index %v264 [%v265] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_194"("seahorn/lib/utils.c":20:5))
  %v273 = sea.load %v90[%v272] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_195"("seahorn/lib/utils.c":20:5))
  %v274 = sea.icmp eq, %v271, %v273 : i8 loc("_196"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v274, ^bb81, ^bb96 loc("seahorn/lib/utils.c":20:5)
^bb80:
  %v275 = sea.ptr.null : !sea.ptr<64> loc(".not.i"("seahorn/jobs/string_compare/aws_string_compare_harness.c":25:9))
  %v276 = sea.ptr.cmp eq, %v51, %v275 : !sea.ptr<64> loc(".not.i"("seahorn/jobs/string_compare/aws_string_compare_harness.c":25:9))
  sea.cond_br %v276, ^bb87, ^bb81 loc("seahorn/jobs/string_compare/aws_string_compare_harness.c":25:9)
^bb81:
  %v277 = sea.ptr.index %v51 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_197"("aws-c-common/include/aws/common/string.inl":35:19))
  %v278 = sea.const 8 : i64 loc("_198"("aws-c-common/include/aws/common/string.inl":35:19))
  %v279 = sea.ptr.dereferenceable %v277, %v278 : !sea.ptr<64>, i64 loc("_198"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v279, ^bb82, ^bb96
^bb82:
  %v280 = sea.const 8 : i64 loc("_200"("aws-c-common/include/aws/common/string.inl":35:88))
  %v281 = sea.ptr.dereferenceable %v277, %v280 : !sea.ptr<64>, i64 loc("_200"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v281, ^bb83, ^bb96
^bb83:
  %v282 = sea.load %v90[%v277] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_202"("aws-c-common/include/aws/common/string.inl":35:88))
  %v283 = sea.ptr.index %v51 [%v282] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_203"("aws-c-common/include/aws/common/string.inl":35:72))
  %v284 = sea.const 1 : i64 loc("_204"("aws-c-common/include/aws/common/string.inl":35:72))
  %v285 = sea.ptr.dereferenceable %v283, %v284 : !sea.ptr<64>, i64 loc("_204"("aws-c-common/include/aws/common/string.inl":35:72))
  sea.cond_br %v285, ^bb84, ^bb96
^bb84:
  %v286 = sea.load %v90[%v283] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_205"("aws-c-common/include/aws/common/string.inl":35:72))
  %v287 = sea.const 0 : i8 loc("_206"("aws-c-common/include/aws/common/string.inl":35:93))
  %v288 = sea.icmp eq, %v286, %v287 : i8 loc("_206"("aws-c-common/include/aws/common/string.inl":35:93))
  %v289 = sea.const 8 : i64 loc("_207"("aws-c-common/include/aws/common/string.inl":35:19))
  %v290 = sea.ptr.dereferenceable %v277, %v289 : !sea.ptr<64>, i64 loc("_207"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v290, ^bb85, ^bb96
^bb85:
  %v291 = sea.const 8 : i64 loc("_209"("aws-c-common/include/aws/common/string.inl":35:88))
  %v292 = sea.ptr.dereferenceable %v277, %v291 : !sea.ptr<64>, i64 loc("_209"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v292, ^bb86, ^bb96
^bb86:
  %v293 = sea.const 1 : i64 loc("_211"("aws-c-common/include/aws/common/string.inl":35:72))
  %v294 = sea.ptr.dereferenceable %v283, %v293 : !sea.ptr<64>, i64 loc("_211"("aws-c-common/include/aws/common/string.inl":35:72))
  %v295 = sea.const 0 : i1 loc("_212")
  %v296 = sea.select %v294, %v288, %v295 : i1 loc("_212")
  sea.cond_br %v296, ^bb87, ^bb96
^bb87:
  %v297 = sea.ptr.null : !sea.ptr<64> loc(".not4.i"("seahorn/jobs/string_compare/aws_string_compare_harness.c":28:9))
  %v298 = sea.ptr.cmp eq, %v91, %v297 : !sea.ptr<64> loc(".not4.i"("seahorn/jobs/string_compare/aws_string_compare_harness.c":28:9))
  %v299 = sea.const 1 : i1 loc("seahorn/jobs/string_compare/aws_string_compare_harness.c":28:9)
  %v300 = sea.xor %v298, %v299 : i1 loc("seahorn/jobs/string_compare/aws_string_compare_harness.c":28:9)
  sea.assume %v300 loc("seahorn/jobs/string_compare/aws_string_compare_harness.c":28:9)
  sea.cond_br %v298, ^bb94, ^bb88 loc("aws-c-common/include/aws/common/string.inl":35:16)
^bb88:
  %v301 = sea.ptr.index %v91 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_215"("aws-c-common/include/aws/common/string.inl":35:19))
  %v302 = sea.const 8 : i64 loc("_216"("aws-c-common/include/aws/common/string.inl":35:19))
  %v303 = sea.ptr.dereferenceable %v301, %v302 : !sea.ptr<64>, i64 loc("_216"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v303, ^bb89, ^bb96
^bb89:
  %v304 = sea.const 8 : i64 loc("_218"("aws-c-common/include/aws/common/string.inl":35:88))
  %v305 = sea.ptr.dereferenceable %v301, %v304 : !sea.ptr<64>, i64 loc("_218"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v305, ^bb90, ^bb96
^bb90:
  %v306 = sea.load %v90[%v301] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_220"("aws-c-common/include/aws/common/string.inl":35:88))
  %v307 = sea.ptr.index %v91 [%v306] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_221"("aws-c-common/include/aws/common/string.inl":35:72))
  %v308 = sea.const 1 : i64 loc("_222"("aws-c-common/include/aws/common/string.inl":35:72))
  %v309 = sea.ptr.dereferenceable %v307, %v308 : !sea.ptr<64>, i64 loc("_222"("aws-c-common/include/aws/common/string.inl":35:72))
  sea.cond_br %v309, ^bb91, ^bb96
^bb91:
  %v310 = sea.load %v90[%v307] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_224"("aws-c-common/include/aws/common/string.inl":35:72))
  %v311 = sea.const 0 : i8 loc("_225"("aws-c-common/include/aws/common/string.inl":35:93))
  %v312 = sea.icmp eq, %v310, %v311 : i8 loc("_225"("aws-c-common/include/aws/common/string.inl":35:93))
  %v313 = sea.const 8 : i64 loc("_226"("aws-c-common/include/aws/common/string.inl":35:19))
  %v314 = sea.ptr.dereferenceable %v301, %v313 : !sea.ptr<64>, i64 loc("_226"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v314, ^bb92, ^bb96
^bb92:
  %v315 = sea.const 8 : i64 loc("_228"("aws-c-common/include/aws/common/string.inl":35:88))
  %v316 = sea.ptr.dereferenceable %v301, %v315 : !sea.ptr<64>, i64 loc("_228"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v316, ^bb93, ^bb96
^bb93:
  %v317 = sea.const 1 : i64 loc("_230"("aws-c-common/include/aws/common/string.inl":35:72))
  %v318 = sea.ptr.dereferenceable %v307, %v317 : !sea.ptr<64>, i64 loc("_230"("aws-c-common/include/aws/common/string.inl":35:72))
  sea.cond_br %v318, ^bb95(%v312 : i1), ^bb96
^bb94:
  %v319 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/string.inl":35:16)
  sea.br ^bb95(%v319 : i1) loc("aws-c-common/include/aws/common/string.inl":35:16)
^bb95(%v320 : i1):
  %v321 = sea.const 1 : i1 loc("seahorn/jobs/string_compare/aws_string_compare_harness.c":29:9)
  %v322 = sea.xor %v320, %v321 : i1 loc("seahorn/jobs/string_compare/aws_string_compare_harness.c":29:9)
  sea.assume %v322 loc("seahorn/jobs/string_compare/aws_string_compare_harness.c":29:9)
  sea.br ^bb96 loc("seahorn/jobs/string_compare/aws_string_compare_harness.c":29:9)
^bb96:
  sea.br ^bb97
^bb97:
  %v323 = sea.const 0 : i1
  sea.assert %v323
  sea.halt
}
