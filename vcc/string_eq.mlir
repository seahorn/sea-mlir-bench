// Exported from SeaHorn (string_eq.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
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
  %v14 = sea.nondet "nd_bool" [2] : i1 loc("_2"("seahorn/jobs/string_eq/aws_string_eq_harness.c":13:32))
  %v15 = sea.ptr.null : !sea.ptr<64> loc("seahorn/jobs/string_eq/aws_string_eq_harness.c":13:32)
  sea.cond_br %v14, ^bb1, ^bb10(%v1, %v15 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/jobs/string_eq/aws_string_eq_harness.c":13:32)
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
  %v31 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i14.i"("seahorn/lib/string_helper.c":13:7))
  %v32 = sea.ptr.cmp eq, %v27, %v31 : !sea.ptr<64> loc(".not.i.i14.i"("seahorn/lib/string_helper.c":13:7))
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
  sea.cond_br %v39, ^bb7, ^bb95
^bb7:
  %v40 = sea.store %v28[%v27], %v37 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/string_helper.c":15:49)
  %v41 = sea.ptr.index %v27 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_18"("seahorn/lib/string_helper.c":17:23))
  %v42 = sea.const 8 : i64 loc("_19"("seahorn/lib/string_helper.c":17:28))
  %v43 = sea.ptr.dereferenceable %v41, %v42 : !sea.ptr<64>, i64 loc("_19"("seahorn/lib/string_helper.c":17:28))
  sea.cond_br %v43, ^bb8, ^bb95
^bb8:
  %v44 = sea.store %v40[%v41], %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/string_helper.c":17:28)
  %v45 = sea.ptr.index %v27 [%v16] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_21"("seahorn/lib/string_helper.c":18:18))
  %v46 = sea.const 1 : i64 loc("_22"("seahorn/lib/string_helper.c":18:34))
  %v47 = sea.ptr.dereferenceable %v45, %v46 : !sea.ptr<64>, i64 loc("_22"("seahorn/lib/string_helper.c":18:34))
  sea.cond_br %v47, ^bb9, ^bb95
^bb9:
  %v48 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":18:34)
  %v49 = sea.store %v44[%v45], %v48 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":18:34)
  sea.br ^bb10(%v49, %v27 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/string_helper.c":19:3)
^bb10(%v50 : !sea.mem<!sea.ptr<64>, i8>, %v51 : !sea.ptr<64>):
  %v52 = sea.nondet "nd_bool" [8] : i1 loc("_25"("seahorn/jobs/string_eq/aws_string_eq_harness.c":15:32))
  sea.cond_br %v52, ^bb20(%v50, %v51 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb11 loc("seahorn/jobs/string_eq/aws_string_eq_harness.c":15:32)
^bb11:
  %v53 = sea.nondet "nd_size_t" [9] : i64 loc("_27"("seahorn/lib/string_helper.c":24:16))
  %v54 = sea.const 10 : i64 loc("_28"("seahorn/lib/string_helper.c":25:14))
  %v55 = sea.icmp ult, %v53, %v54 : i64 loc("_28"("seahorn/lib/string_helper.c":25:14))
  sea.assume %v55 loc("seahorn/lib/string_helper.c":25:3)
  %v56 = sea.const 25 : i64 loc("_29"("seahorn/lib/string_helper.c":11:61))
  %v57 = sea.add %v53, %v56 : i64 loc("_29"("seahorn/lib/string_helper.c":11:61))
  %v58 = sea.nondet "nd_malloc_is_fail" [10] : i1 loc("_30"("seahorn/lib/sea_allocators.c":11:10))
  %v59 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v58, ^bb13(%v50, %v59 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb12 loc("seahorn/lib/sea_allocators.c":11:10)
^bb12:
  %v60 = sea.const 1 : i64 loc("malloc22.i")
  %v61 = sea.mul %v57, %v60 : i64 loc("malloc22.i")
  %v62 = sea.alloca %v61 align 16 [11] : i64 -> !sea.ptr<64> loc("malloc22.i")
  sea.br ^bb13(%v50, %v62 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb13(%v63 : !sea.mem<!sea.ptr<64>, i8>, %v64 : !sea.ptr<64>):
  %v65 = sea.memhavoc %v63[%v64], %v57 [12] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v66 = sea.ptr.null : !sea.ptr<64> loc("_33"("seahorn/lib/sea_allocators.c":45:10))
  %v67 = sea.ptr.cmp ne, %v64, %v66 : !sea.ptr<64> loc("_33"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v67 loc("seahorn/lib/sea_allocators.c":45:3)
  %v68 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i16.i"("seahorn/lib/string_helper.c":13:7))
  %v69 = sea.ptr.cmp eq, %v64, %v68 : !sea.ptr<64> loc(".not.i.i16.i"("seahorn/lib/string_helper.c":13:7))
  %v70 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":13:7)
  sea.cond_br %v69, ^bb20(%v65, %v70 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb14 loc("seahorn/lib/string_helper.c":13:7)
^bb14:
  %v71 = sea.nondet "nd_bool" [13] : i1 loc("_35"("seahorn/lib/string_helper.c":16:9))
  %v72 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.cond_br %v71, ^bb15, ^bb16(%v72 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb15:
  %v73 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.br ^bb16(%v73 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb16(%v74 : !sea.ptr<64>):
  %v75 = sea.const 8 : i64 loc("_39"("seahorn/lib/string_helper.c":15:49))
  %v76 = sea.ptr.dereferenceable %v64, %v75 : !sea.ptr<64>, i64 loc("_39"("seahorn/lib/string_helper.c":15:49))
  sea.cond_br %v76, ^bb17, ^bb95
^bb17:
  %v77 = sea.store %v65[%v64], %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/string_helper.c":15:49)
  %v78 = sea.ptr.index %v64 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_41"("seahorn/lib/string_helper.c":17:23))
  %v79 = sea.const 8 : i64 loc("_42"("seahorn/lib/string_helper.c":17:28))
  %v80 = sea.ptr.dereferenceable %v78, %v79 : !sea.ptr<64>, i64 loc("_42"("seahorn/lib/string_helper.c":17:28))
  sea.cond_br %v80, ^bb18, ^bb95
^bb18:
  %v81 = sea.store %v77[%v78], %v53 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/string_helper.c":17:28)
  %v82 = sea.ptr.index %v64 [%v53] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_44"("seahorn/lib/string_helper.c":18:18))
  %v83 = sea.const 1 : i64 loc("_45"("seahorn/lib/string_helper.c":18:34))
  %v84 = sea.ptr.dereferenceable %v82, %v83 : !sea.ptr<64>, i64 loc("_45"("seahorn/lib/string_helper.c":18:34))
  sea.cond_br %v84, ^bb19, ^bb95
^bb19:
  %v85 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":18:34)
  %v86 = sea.store %v81[%v82], %v85 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":18:34)
  sea.br ^bb20(%v86, %v64 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/string_helper.c":19:3)
^bb20(%v87 : !sea.mem<!sea.ptr<64>, i8>, %v88 : !sea.ptr<64>):
  %v89 = sea.ptr.cmp eq, %v51, %v88 : !sea.ptr<64> loc("_48"("aws-c-common/source/string.c":296:11))
  %v90 = sea.const 1 : i1 loc("aws-c-common/source/string.c":296:9)
  sea.cond_br %v89, ^bb75(%v90 : i1), ^bb21 loc("aws-c-common/source/string.c":296:9)
^bb21:
  %v91 = sea.ptr.null : !sea.ptr<64> loc("_50"("aws-c-common/source/string.c":299:11))
  %v92 = sea.ptr.cmp eq, %v51, %v91 : !sea.ptr<64> loc("_50"("aws-c-common/source/string.c":299:11))
  %v93 = sea.ptr.null : !sea.ptr<64> loc("_51")
  %v94 = sea.ptr.cmp eq, %v88, %v93 : !sea.ptr<64> loc("_51")
  %v95 = sea.or %v92, %v94 : i1 loc("or.cond.i.i"("aws-c-common/source/string.c":299:19))
  %v96 = sea.const 0 : i1 loc("aws-c-common/source/string.c":299:19)
  sea.cond_br %v95, ^bb75(%v96 : i1), ^bb22 loc("aws-c-common/source/string.c":299:19)
^bb22:
  %v97 = sea.ptr.index %v51 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_53"("aws-c-common/source/string.c":302:28))
  %v98 = sea.ptr.index %v51 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_54"("aws-c-common/source/string.c":302:38))
  %v99 = sea.const 8 : i64 loc("_55"("aws-c-common/source/string.c":302:38))
  %v100 = sea.ptr.dereferenceable %v98, %v99 : !sea.ptr<64>, i64 loc("_55"("aws-c-common/source/string.c":302:38))
  sea.cond_br %v100, ^bb23, ^bb95
^bb23:
  %v101 = sea.load %v87[%v98] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_57"("aws-c-common/source/string.c":302:38))
  %v102 = sea.ptr.index %v88 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_58"("aws-c-common/source/string.c":302:56))
  %v103 = sea.const 8 : i64 loc("_59"("aws-c-common/source/string.c":302:56))
  %v104 = sea.ptr.dereferenceable %v102, %v103 : !sea.ptr<64>, i64 loc("_59"("aws-c-common/source/string.c":302:56))
  sea.cond_br %v104, ^bb24, ^bb95
^bb24:
  %v105 = sea.ptr.index %v88 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_61"("aws-c-common/source/string.c":302:46))
  %v106 = sea.load %v87[%v102] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_62"("aws-c-common/source/string.c":302:56))
  %v107 = sea.icmp eq, %v101, %v106 : i64 loc(".not.i.i.i"("aws-c-common/source/byte_buf.c":425:15))
  %v108 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":425:9)
  sea.cond_br %v107, ^bb25, ^bb75(%v108 : i1) loc("aws-c-common/source/byte_buf.c":425:9)
^bb25:
  %v109 = sea.const 0 : i64 loc("_64"("aws-c-common/source/byte_buf.c":429:15))
  %v110 = sea.icmp eq, %v101, %v109 : i64 loc("_64"("aws-c-common/source/byte_buf.c":429:15))
  %v111 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":429:9)
  sea.cond_br %v110, ^bb75(%v111 : i1), ^bb26 loc("aws-c-common/source/byte_buf.c":429:9)
^bb26:
  %v112 = sea.const 1 : i64 loc("_66"("seahorn/lib/bcmp.c":61:11))
  %v113 = sea.ptr.dereferenceable %v97, %v112 : !sea.ptr<64>, i64 loc("_66"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v113, ^bb27, ^bb95
^bb27:
  %v114 = sea.load %v87[%v97] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_70"("seahorn/lib/bcmp.c":61:11))
  %v115 = sea.const 1 : i64 loc("_71"("seahorn/lib/bcmp.c":61:20))
  %v116 = sea.ptr.dereferenceable %v105, %v115 : !sea.ptr<64>, i64 loc("_71"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v116, ^bb28, ^bb95
^bb28:
  %v117 = sea.load %v87[%v105] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_73"("seahorn/lib/bcmp.c":61:20))
  %v118 = sea.icmp eq, %v114, %v117 : i8 loc(".not2.i.i"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v118, ^bb29, ^bb65(%v105, %v97 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb29:
  %v119 = sea.const 1 : i64 loc(".not6"("seahorn/lib/bcmp.c":60:11))
  %v120 = sea.icmp eq, %v101, %v119 : i64 loc(".not6"("seahorn/lib/bcmp.c":60:11))
  %v121 = sea.const 1 : i1 loc("seahorn/lib/bcmp.c":60:9)
  sea.cond_br %v120, ^bb75(%v121 : i1), ^bb30 loc("seahorn/lib/bcmp.c":60:9)
^bb30:
  %v122 = sea.ptr.index %v51 [] strides [] offset 17 inbounds : !sea.ptr<64> loc("_80"("seahorn/lib/bcmp.c":61:11))
  %v123 = sea.const 1 : i64 loc("_81"("seahorn/lib/bcmp.c":61:11))
  %v124 = sea.ptr.dereferenceable %v122, %v123 : !sea.ptr<64>, i64 loc("_81"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v124, ^bb31, ^bb95
^bb31:
  %v125 = sea.load %v87[%v122] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_83"("seahorn/lib/bcmp.c":61:11))
  %v126 = sea.ptr.index %v88 [] strides [] offset 17 inbounds : !sea.ptr<64> loc("_84"("seahorn/lib/bcmp.c":61:20))
  %v127 = sea.const 1 : i64 loc("_85"("seahorn/lib/bcmp.c":61:20))
  %v128 = sea.ptr.dereferenceable %v126, %v127 : !sea.ptr<64>, i64 loc("_85"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v128, ^bb32, ^bb95
^bb32:
  %v129 = sea.load %v87[%v126] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_87"("seahorn/lib/bcmp.c":61:20))
  %v130 = sea.icmp eq, %v125, %v129 : i8 loc(".not2.i.i.1"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v130, ^bb33, ^bb65(%v126, %v122 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb33:
  %v131 = sea.const 2 : i64 loc("_89"("seahorn/lib/bcmp.c":60:11))
  %v132 = sea.icmp ugt, %v101, %v131 : i64 loc("_89"("seahorn/lib/bcmp.c":60:11))
  %v133 = sea.const 1 : i1 loc("seahorn/lib/bcmp.c":60:9)
  sea.cond_br %v132, ^bb34, ^bb75(%v133 : i1) loc("seahorn/lib/bcmp.c":60:9)
^bb34:
  %v134 = sea.ptr.index %v51 [] strides [] offset 18 inbounds : !sea.ptr<64> loc("_91"("seahorn/lib/bcmp.c":61:11))
  %v135 = sea.const 1 : i64 loc("_92"("seahorn/lib/bcmp.c":61:11))
  %v136 = sea.ptr.dereferenceable %v134, %v135 : !sea.ptr<64>, i64 loc("_92"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v136, ^bb35, ^bb95
^bb35:
  %v137 = sea.load %v87[%v134] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_94"("seahorn/lib/bcmp.c":61:11))
  %v138 = sea.ptr.index %v88 [] strides [] offset 18 inbounds : !sea.ptr<64> loc("_95"("seahorn/lib/bcmp.c":61:20))
  %v139 = sea.const 1 : i64 loc("_96"("seahorn/lib/bcmp.c":61:20))
  %v140 = sea.ptr.dereferenceable %v138, %v139 : !sea.ptr<64>, i64 loc("_96"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v140, ^bb36, ^bb95
^bb36:
  %v141 = sea.load %v87[%v138] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_98"("seahorn/lib/bcmp.c":61:20))
  %v142 = sea.icmp eq, %v137, %v141 : i8 loc(".not2.i.i.2"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v142, ^bb37, ^bb65(%v138, %v134 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb37:
  %v143 = sea.const 3 : i64 loc(".not20"("seahorn/lib/bcmp.c":60:11))
  %v144 = sea.icmp eq, %v101, %v143 : i64 loc(".not20"("seahorn/lib/bcmp.c":60:11))
  %v145 = sea.const 1 : i1 loc("seahorn/lib/bcmp.c":60:9)
  sea.cond_br %v144, ^bb75(%v145 : i1), ^bb38 loc("seahorn/lib/bcmp.c":60:9)
^bb38:
  %v146 = sea.ptr.index %v51 [] strides [] offset 19 inbounds : !sea.ptr<64> loc("_101"("seahorn/lib/bcmp.c":61:11))
  %v147 = sea.const 1 : i64 loc("_102"("seahorn/lib/bcmp.c":61:11))
  %v148 = sea.ptr.dereferenceable %v146, %v147 : !sea.ptr<64>, i64 loc("_102"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v148, ^bb39, ^bb95
^bb39:
  %v149 = sea.load %v87[%v146] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_104"("seahorn/lib/bcmp.c":61:11))
  %v150 = sea.ptr.index %v88 [] strides [] offset 19 inbounds : !sea.ptr<64> loc("_105"("seahorn/lib/bcmp.c":61:20))
  %v151 = sea.const 1 : i64 loc("_106"("seahorn/lib/bcmp.c":61:20))
  %v152 = sea.ptr.dereferenceable %v150, %v151 : !sea.ptr<64>, i64 loc("_106"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v152, ^bb40, ^bb95
^bb40:
  %v153 = sea.load %v87[%v150] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_108"("seahorn/lib/bcmp.c":61:20))
  %v154 = sea.icmp eq, %v149, %v153 : i8 loc(".not2.i.i.3"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v154, ^bb41, ^bb65(%v150, %v146 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb41:
  %v155 = sea.const 4 : i64 loc("_110"("seahorn/lib/bcmp.c":60:11))
  %v156 = sea.icmp ugt, %v101, %v155 : i64 loc("_110"("seahorn/lib/bcmp.c":60:11))
  %v157 = sea.const 1 : i1 loc("seahorn/lib/bcmp.c":60:9)
  sea.cond_br %v156, ^bb42, ^bb75(%v157 : i1) loc("seahorn/lib/bcmp.c":60:9)
^bb42:
  %v158 = sea.ptr.index %v51 [] strides [] offset 20 inbounds : !sea.ptr<64> loc("_112"("seahorn/lib/bcmp.c":61:11))
  %v159 = sea.const 1 : i64 loc("_113"("seahorn/lib/bcmp.c":61:11))
  %v160 = sea.ptr.dereferenceable %v158, %v159 : !sea.ptr<64>, i64 loc("_113"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v160, ^bb43, ^bb95
^bb43:
  %v161 = sea.load %v87[%v158] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_115"("seahorn/lib/bcmp.c":61:11))
  %v162 = sea.ptr.index %v88 [] strides [] offset 20 inbounds : !sea.ptr<64> loc("_116"("seahorn/lib/bcmp.c":61:20))
  %v163 = sea.const 1 : i64 loc("_117"("seahorn/lib/bcmp.c":61:20))
  %v164 = sea.ptr.dereferenceable %v162, %v163 : !sea.ptr<64>, i64 loc("_117"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v164, ^bb44, ^bb95
^bb44:
  %v165 = sea.load %v87[%v162] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_119"("seahorn/lib/bcmp.c":61:20))
  %v166 = sea.icmp eq, %v161, %v165 : i8 loc(".not2.i.i.4"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v166, ^bb45, ^bb65(%v162, %v158 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb45:
  %v167 = sea.const 5 : i64 loc(".not21"("seahorn/lib/bcmp.c":60:11))
  %v168 = sea.icmp eq, %v101, %v167 : i64 loc(".not21"("seahorn/lib/bcmp.c":60:11))
  %v169 = sea.const 1 : i1 loc("seahorn/lib/bcmp.c":60:9)
  sea.cond_br %v168, ^bb75(%v169 : i1), ^bb46 loc("seahorn/lib/bcmp.c":60:9)
^bb46:
  %v170 = sea.ptr.index %v51 [] strides [] offset 21 inbounds : !sea.ptr<64> loc("_122"("seahorn/lib/bcmp.c":61:11))
  %v171 = sea.const 1 : i64 loc("_123"("seahorn/lib/bcmp.c":61:11))
  %v172 = sea.ptr.dereferenceable %v170, %v171 : !sea.ptr<64>, i64 loc("_123"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v172, ^bb47, ^bb95
^bb47:
  %v173 = sea.load %v87[%v170] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_125"("seahorn/lib/bcmp.c":61:11))
  %v174 = sea.ptr.index %v88 [] strides [] offset 21 inbounds : !sea.ptr<64> loc("_126"("seahorn/lib/bcmp.c":61:20))
  %v175 = sea.const 1 : i64 loc("_127"("seahorn/lib/bcmp.c":61:20))
  %v176 = sea.ptr.dereferenceable %v174, %v175 : !sea.ptr<64>, i64 loc("_127"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v176, ^bb48, ^bb95
^bb48:
  %v177 = sea.load %v87[%v174] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_129"("seahorn/lib/bcmp.c":61:20))
  %v178 = sea.icmp eq, %v173, %v177 : i8 loc(".not2.i.i.5"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v178, ^bb49, ^bb65(%v174, %v170 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb49:
  %v179 = sea.const 6 : i64 loc("_131"("seahorn/lib/bcmp.c":60:11))
  %v180 = sea.icmp ugt, %v101, %v179 : i64 loc("_131"("seahorn/lib/bcmp.c":60:11))
  %v181 = sea.const 1 : i1 loc("seahorn/lib/bcmp.c":60:9)
  sea.cond_br %v180, ^bb50, ^bb75(%v181 : i1) loc("seahorn/lib/bcmp.c":60:9)
^bb50:
  %v182 = sea.ptr.index %v51 [] strides [] offset 22 inbounds : !sea.ptr<64> loc("_133"("seahorn/lib/bcmp.c":61:11))
  %v183 = sea.const 1 : i64 loc("_134"("seahorn/lib/bcmp.c":61:11))
  %v184 = sea.ptr.dereferenceable %v182, %v183 : !sea.ptr<64>, i64 loc("_134"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v184, ^bb51, ^bb95
^bb51:
  %v185 = sea.load %v87[%v182] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_136"("seahorn/lib/bcmp.c":61:11))
  %v186 = sea.ptr.index %v88 [] strides [] offset 22 inbounds : !sea.ptr<64> loc("_137"("seahorn/lib/bcmp.c":61:20))
  %v187 = sea.const 1 : i64 loc("_138"("seahorn/lib/bcmp.c":61:20))
  %v188 = sea.ptr.dereferenceable %v186, %v187 : !sea.ptr<64>, i64 loc("_138"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v188, ^bb52, ^bb95
^bb52:
  %v189 = sea.load %v87[%v186] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_140"("seahorn/lib/bcmp.c":61:20))
  %v190 = sea.icmp eq, %v185, %v189 : i8 loc(".not2.i.i.6"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v190, ^bb53, ^bb65(%v186, %v182 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb53:
  %v191 = sea.const 7 : i64 loc(".not22"("seahorn/lib/bcmp.c":60:11))
  %v192 = sea.icmp eq, %v101, %v191 : i64 loc(".not22"("seahorn/lib/bcmp.c":60:11))
  %v193 = sea.const 1 : i1 loc("seahorn/lib/bcmp.c":60:9)
  sea.cond_br %v192, ^bb75(%v193 : i1), ^bb54 loc("seahorn/lib/bcmp.c":60:9)
^bb54:
  %v194 = sea.ptr.index %v51 [] strides [] offset 23 inbounds : !sea.ptr<64> loc("_143"("seahorn/lib/bcmp.c":61:11))
  %v195 = sea.const 1 : i64 loc("_144"("seahorn/lib/bcmp.c":61:11))
  %v196 = sea.ptr.dereferenceable %v194, %v195 : !sea.ptr<64>, i64 loc("_144"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v196, ^bb55, ^bb95
^bb55:
  %v197 = sea.load %v87[%v194] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_146"("seahorn/lib/bcmp.c":61:11))
  %v198 = sea.ptr.index %v88 [] strides [] offset 23 inbounds : !sea.ptr<64> loc("_147"("seahorn/lib/bcmp.c":61:20))
  %v199 = sea.const 1 : i64 loc("_148"("seahorn/lib/bcmp.c":61:20))
  %v200 = sea.ptr.dereferenceable %v198, %v199 : !sea.ptr<64>, i64 loc("_148"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v200, ^bb56, ^bb95
^bb56:
  %v201 = sea.load %v87[%v198] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_150"("seahorn/lib/bcmp.c":61:20))
  %v202 = sea.icmp eq, %v197, %v201 : i8 loc(".not2.i.i.7"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v202, ^bb57, ^bb65(%v198, %v194 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb57:
  %v203 = sea.const 8 : i64 loc("_152"("seahorn/lib/bcmp.c":60:11))
  %v204 = sea.icmp ugt, %v101, %v203 : i64 loc("_152"("seahorn/lib/bcmp.c":60:11))
  %v205 = sea.const 1 : i1 loc("seahorn/lib/bcmp.c":60:9)
  sea.cond_br %v204, ^bb58, ^bb75(%v205 : i1) loc("seahorn/lib/bcmp.c":60:9)
^bb58:
  %v206 = sea.ptr.index %v51 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_154"("seahorn/lib/bcmp.c":61:11))
  %v207 = sea.const 1 : i64 loc("_155"("seahorn/lib/bcmp.c":61:11))
  %v208 = sea.ptr.dereferenceable %v206, %v207 : !sea.ptr<64>, i64 loc("_155"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v208, ^bb59, ^bb95
^bb59:
  %v209 = sea.load %v87[%v206] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_157"("seahorn/lib/bcmp.c":61:11))
  %v210 = sea.ptr.index %v88 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_158"("seahorn/lib/bcmp.c":61:20))
  %v211 = sea.const 1 : i64 loc("_159"("seahorn/lib/bcmp.c":61:20))
  %v212 = sea.ptr.dereferenceable %v210, %v211 : !sea.ptr<64>, i64 loc("_159"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v212, ^bb60, ^bb95
^bb60:
  %v213 = sea.load %v87[%v210] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_161"("seahorn/lib/bcmp.c":61:20))
  %v214 = sea.icmp eq, %v209, %v213 : i8 loc(".not2.i.i.8"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v214, ^bb61, ^bb65(%v210, %v206 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb61:
  %v215 = sea.const 9 : i64 loc(".not23"("seahorn/lib/bcmp.c":60:11))
  %v216 = sea.icmp eq, %v101, %v215 : i64 loc(".not23"("seahorn/lib/bcmp.c":60:11))
  %v217 = sea.const 1 : i1 loc("seahorn/lib/bcmp.c":60:9)
  sea.cond_br %v216, ^bb75(%v217 : i1), ^bb62 loc("seahorn/lib/bcmp.c":60:9)
^bb62:
  %v218 = sea.ptr.index %v51 [] strides [] offset 25 inbounds : !sea.ptr<64> loc("_164"("seahorn/lib/bcmp.c":61:11))
  %v219 = sea.const 1 : i64 loc("_165"("seahorn/lib/bcmp.c":61:11))
  %v220 = sea.ptr.dereferenceable %v218, %v219 : !sea.ptr<64>, i64 loc("_165"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v220, ^bb63, ^bb95
^bb63:
  %v221 = sea.load %v87[%v218] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_167"("seahorn/lib/bcmp.c":61:11))
  %v222 = sea.ptr.index %v88 [] strides [] offset 25 inbounds : !sea.ptr<64> loc("_168"("seahorn/lib/bcmp.c":61:20))
  %v223 = sea.const 1 : i64 loc("_169"("seahorn/lib/bcmp.c":61:20))
  %v224 = sea.ptr.dereferenceable %v222, %v223 : !sea.ptr<64>, i64 loc("_169"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v224, ^bb64, ^bb95
^bb64:
  %v225 = sea.load %v87[%v222] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_171"("seahorn/lib/bcmp.c":61:20))
  %v226 = sea.icmp eq, %v221, %v225 : i8 loc(".not2.i.i.9"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v226, ^bb67, ^bb65(%v222, %v218 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb65(%v227 : !sea.ptr<64>, %v228 : !sea.ptr<64>):
  %v229 = sea.const 1 : i64 loc("_75"("seahorn/lib/bcmp.c":62:16))
  %v230 = sea.ptr.dereferenceable %v228, %v229 : !sea.ptr<64>, i64 loc("_75"("seahorn/lib/bcmp.c":62:16))
  sea.cond_br %v230, ^bb66, ^bb95
^bb66:
  %v231 = sea.const 1 : i64 loc("_77"("seahorn/lib/bcmp.c":62:24))
  %v232 = sea.ptr.dereferenceable %v227, %v231 : !sea.ptr<64>, i64 loc("_77"("seahorn/lib/bcmp.c":62:24))
  %v233 = sea.const 0 : i1
  sea.cond_br %v232, ^bb75(%v233 : i1), ^bb95
^bb67:
  %v234 = sea.const 10 : i64 loc("_172"("seahorn/lib/bcmp.c":67:31))
  %v235 = sea.icmp ugt, %v101, %v234 : i64 loc("_172"("seahorn/lib/bcmp.c":67:31))
  %v236 = sea.const 1 : i1 loc("seahorn/lib/bcmp.c":67:3)
  sea.cond_br %v235, ^bb68, ^bb75(%v236 : i1) loc("seahorn/lib/bcmp.c":67:3)
^bb68:
  %v237 = sea.ptr.index %v51 [] strides [] offset 26 inbounds : !sea.ptr<64> loc("_67"("seahorn/lib/bcmp.c":68:9))
  %v238 = sea.const 1 : i64 loc("_68"("seahorn/lib/bcmp.c":68:9))
  %v239 = sea.ptr.dereferenceable %v237, %v238 : !sea.ptr<64>, i64 loc("_68"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v239, ^bb69, ^bb95
^bb69:
  %v240 = sea.load %v87[%v237] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_176"("seahorn/lib/bcmp.c":68:9))
  %v241 = sea.ptr.index %v88 [] strides [] offset 26 inbounds : !sea.ptr<64> loc("_177"("seahorn/lib/bcmp.c":68:18))
  %v242 = sea.const 1 : i64 loc("_178"("seahorn/lib/bcmp.c":68:18))
  %v243 = sea.ptr.dereferenceable %v241, %v242 : !sea.ptr<64>, i64 loc("_178"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v243, ^bb70, ^bb95
^bb70:
  %v244 = sea.load %v87[%v241] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_180"("seahorn/lib/bcmp.c":68:18))
  %v245 = sea.icmp eq, %v240, %v244 : i8 loc(".not.i21.i"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v245, ^bb73, ^bb71 loc("seahorn/lib/bcmp.c":68:9)
^bb71:
  %v246 = sea.const 1 : i64 loc("_182"("seahorn/lib/bcmp.c":69:14))
  %v247 = sea.ptr.dereferenceable %v237, %v246 : !sea.ptr<64>, i64 loc("_182"("seahorn/lib/bcmp.c":69:14))
  sea.cond_br %v247, ^bb72, ^bb95
^bb72:
  %v248 = sea.const 1 : i64 loc("_184"("seahorn/lib/bcmp.c":69:22))
  %v249 = sea.ptr.dereferenceable %v241, %v248 : !sea.ptr<64>, i64 loc("_184"("seahorn/lib/bcmp.c":69:22))
  %v250 = sea.const 0 : i1
  sea.cond_br %v249, ^bb75(%v250 : i1), ^bb95
^bb73:
  %v251 = sea.const 11 : i64 loc("exitcond24.not"("seahorn/lib/bcmp.c":67:31))
  %v252 = sea.icmp eq, %v101, %v251 : i64 loc("exitcond24.not"("seahorn/lib/bcmp.c":67:31))
  %v253 = sea.const 1 : i1 loc("seahorn/lib/bcmp.c":67:3)
  sea.cond_br %v252, ^bb75(%v253 : i1), ^bb74 loc("seahorn/lib/bcmp.c":67:3)
^bb74:
  %v254 = sea.ptr.index %v51 [] strides [] offset 27 inbounds : !sea.ptr<64> loc("_174"("seahorn/lib/bcmp.c":68:9))
  %v255 = sea.const 1 : i64 loc("_175"("seahorn/lib/bcmp.c":68:9))
  %v256 = sea.ptr.dereferenceable %v254, %v255 : !sea.ptr<64>, i64 loc("_175"("seahorn/lib/bcmp.c":68:9))
  %v257 = sea.const 1 : i1
  %v258 = sea.xor %v256, %v257 : i1
  sea.assume %v258
  sea.br ^bb95
^bb75(%v259 : i1):
  %v260 = sea.ptr.null : !sea.ptr<64> loc("_185")
  %v261 = sea.ptr.cmp ne, %v51, %v260 : !sea.ptr<64> loc("_185")
  %v262 = sea.and %v261, %v259 : i1 loc("or.cond.i"("seahorn/jobs/string_eq/aws_string_eq_harness.c":17:37))
  %v263 = sea.ptr.null : !sea.ptr<64> loc("_186")
  %v264 = sea.ptr.cmp ne, %v88, %v263 : !sea.ptr<64> loc("_186")
  %v265 = sea.and %v264, %v262 : i1 loc("or.cond3.i"("seahorn/jobs/string_eq/aws_string_eq_harness.c":17:37))
  sea.assume %v265 loc("seahorn/jobs/string_eq/aws_string_eq_harness.c":17:37)
  %v266 = sea.ptr.index %v51 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_187"("seahorn/jobs/string_eq/aws_string_eq_harness.c":18:9))
  %v267 = sea.const 8 : i64 loc("_188"("seahorn/jobs/string_eq/aws_string_eq_harness.c":18:9))
  %v268 = sea.ptr.dereferenceable %v266, %v267 : !sea.ptr<64>, i64 loc("_188"("seahorn/jobs/string_eq/aws_string_eq_harness.c":18:9))
  sea.cond_br %v268, ^bb76, ^bb95
^bb76:
  %v269 = sea.load %v87[%v266] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_190"("seahorn/jobs/string_eq/aws_string_eq_harness.c":18:9))
  %v270 = sea.ptr.index %v88 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_191"("seahorn/jobs/string_eq/aws_string_eq_harness.c":18:9))
  %v271 = sea.const 8 : i64 loc("_192"("seahorn/jobs/string_eq/aws_string_eq_harness.c":18:9))
  %v272 = sea.ptr.dereferenceable %v270, %v271 : !sea.ptr<64>, i64 loc("_192"("seahorn/jobs/string_eq/aws_string_eq_harness.c":18:9))
  sea.cond_br %v272, ^bb77, ^bb95
^bb77:
  %v273 = sea.load %v87[%v270] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_194"("seahorn/jobs/string_eq/aws_string_eq_harness.c":18:9))
  %v274 = sea.icmp eq, %v269, %v273 : i64 loc("_195"("seahorn/jobs/string_eq/aws_string_eq_harness.c":18:9))
  %v275 = sea.const 8 : i64 loc("_196"("seahorn/jobs/string_eq/aws_string_eq_harness.c":18:9))
  %v276 = sea.ptr.dereferenceable %v266, %v275 : !sea.ptr<64>, i64 loc("_196"("seahorn/jobs/string_eq/aws_string_eq_harness.c":18:9))
  sea.cond_br %v276, ^bb78, ^bb95
^bb78:
  %v277 = sea.const 8 : i64 loc("_198"("seahorn/jobs/string_eq/aws_string_eq_harness.c":18:9))
  %v278 = sea.ptr.dereferenceable %v270, %v277 : !sea.ptr<64>, i64 loc("_198"("seahorn/jobs/string_eq/aws_string_eq_harness.c":18:9))
  %v279 = sea.const 0 : i1 loc("_199")
  %v280 = sea.select %v278, %v274, %v279 : i1 loc("_199")
  sea.cond_br %v280, ^bb79, ^bb95
^bb79:
  %v281 = sea.const 8 : i64 loc("_201"("seahorn/jobs/string_eq/aws_string_eq_harness.c":19:63))
  %v282 = sea.ptr.dereferenceable %v266, %v281 : !sea.ptr<64>, i64 loc("_201"("seahorn/jobs/string_eq/aws_string_eq_harness.c":19:63))
  sea.cond_br %v282, ^bb80, ^bb95
^bb80:
  %v283 = sea.const 0 : i64 loc(".not"("seahorn/lib/utils.c":16:11))
  %v284 = sea.icmp eq, %v269, %v283 : i64 loc(".not"("seahorn/lib/utils.c":16:11))
  sea.cond_br %v284, ^bb82, ^bb81 loc("seahorn/lib/utils.c":16:15)
^bb81:
  %v285 = sea.ptr.index %v51 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_203"("seahorn/jobs/string_eq/aws_string_eq_harness.c":19:35))
  %v286 = sea.ptr.index %v88 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_204"("seahorn/jobs/string_eq/aws_string_eq_harness.c":19:49))
  %v287 = sea.nondet "nd_size_t" [14] : i64 loc("_205"("seahorn/lib/utils.c":17:16))
  %v288 = sea.icmp ult, %v287, %v269 : i64 loc("_206"("seahorn/lib/utils.c":19:14))
  %v289 = sea.const 36028797018963967 : i64 loc("_207"("seahorn/lib/utils.c":19:20))
  %v290 = sea.icmp ult, %v269, %v289 : i64 loc("_207"("seahorn/lib/utils.c":19:20))
  %v291 = sea.and %v290, %v288 : i1 loc("_208"("seahorn/lib/utils.c":19:20))
  sea.assume %v291 loc("seahorn/lib/utils.c":19:5)
  %v292 = sea.ptr.index %v285 [%v287] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_209"("seahorn/lib/utils.c":20:5))
  %v293 = sea.load %v87[%v292] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_210"("seahorn/lib/utils.c":20:5))
  %v294 = sea.ptr.index %v286 [%v287] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_211"("seahorn/lib/utils.c":20:5))
  %v295 = sea.load %v87[%v294] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_212"("seahorn/lib/utils.c":20:5))
  %v296 = sea.icmp eq, %v293, %v295 : i8 loc("_213"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v296, ^bb82, ^bb95 loc("seahorn/lib/utils.c":20:5)
^bb82:
  %v297 = sea.const 8 : i64 loc("_215"("aws-c-common/include/aws/common/string.inl":35:19))
  %v298 = sea.ptr.dereferenceable %v266, %v297 : !sea.ptr<64>, i64 loc("_215"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v298, ^bb83, ^bb95
^bb83:
  %v299 = sea.const 8 : i64 loc("_217"("aws-c-common/include/aws/common/string.inl":35:88))
  %v300 = sea.ptr.dereferenceable %v266, %v299 : !sea.ptr<64>, i64 loc("_217"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v300, ^bb84, ^bb95
^bb84:
  %v301 = sea.ptr.index %v51 [%v269] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_219"("aws-c-common/include/aws/common/string.inl":35:72))
  %v302 = sea.const 1 : i64 loc("_220"("aws-c-common/include/aws/common/string.inl":35:72))
  %v303 = sea.ptr.dereferenceable %v301, %v302 : !sea.ptr<64>, i64 loc("_220"("aws-c-common/include/aws/common/string.inl":35:72))
  sea.cond_br %v303, ^bb85, ^bb95
^bb85:
  %v304 = sea.load %v87[%v301] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_222"("aws-c-common/include/aws/common/string.inl":35:72))
  %v305 = sea.const 0 : i8 loc("_223"("aws-c-common/include/aws/common/string.inl":35:93))
  %v306 = sea.icmp eq, %v304, %v305 : i8 loc("_223"("aws-c-common/include/aws/common/string.inl":35:93))
  %v307 = sea.const 8 : i64 loc("_224"("aws-c-common/include/aws/common/string.inl":35:19))
  %v308 = sea.ptr.dereferenceable %v266, %v307 : !sea.ptr<64>, i64 loc("_224"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v308, ^bb86, ^bb95
^bb86:
  %v309 = sea.const 8 : i64 loc("_226"("aws-c-common/include/aws/common/string.inl":35:88))
  %v310 = sea.ptr.dereferenceable %v266, %v309 : !sea.ptr<64>, i64 loc("_226"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v310, ^bb87, ^bb95
^bb87:
  %v311 = sea.const 1 : i64 loc("_228"("aws-c-common/include/aws/common/string.inl":35:72))
  %v312 = sea.ptr.dereferenceable %v301, %v311 : !sea.ptr<64>, i64 loc("_228"("aws-c-common/include/aws/common/string.inl":35:72))
  %v313 = sea.const 0 : i1 loc("_229")
  %v314 = sea.select %v312, %v306, %v313 : i1 loc("_229")
  sea.cond_br %v314, ^bb88, ^bb95
^bb88:
  %v315 = sea.const 8 : i64 loc("_231"("aws-c-common/include/aws/common/string.inl":35:19))
  %v316 = sea.ptr.dereferenceable %v270, %v315 : !sea.ptr<64>, i64 loc("_231"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v316, ^bb89, ^bb95
^bb89:
  %v317 = sea.const 8 : i64 loc("_233"("aws-c-common/include/aws/common/string.inl":35:88))
  %v318 = sea.ptr.dereferenceable %v270, %v317 : !sea.ptr<64>, i64 loc("_233"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v318, ^bb90, ^bb95
^bb90:
  %v319 = sea.ptr.index %v88 [%v269] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_235"("aws-c-common/include/aws/common/string.inl":35:72))
  %v320 = sea.const 1 : i64 loc("_236"("aws-c-common/include/aws/common/string.inl":35:72))
  %v321 = sea.ptr.dereferenceable %v319, %v320 : !sea.ptr<64>, i64 loc("_236"("aws-c-common/include/aws/common/string.inl":35:72))
  sea.cond_br %v321, ^bb91, ^bb95
^bb91:
  %v322 = sea.load %v87[%v319] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_238"("aws-c-common/include/aws/common/string.inl":35:72))
  %v323 = sea.const 0 : i8 loc("_239"("aws-c-common/include/aws/common/string.inl":35:93))
  %v324 = sea.icmp eq, %v322, %v323 : i8 loc("_239"("aws-c-common/include/aws/common/string.inl":35:93))
  %v325 = sea.const 8 : i64 loc("_240"("aws-c-common/include/aws/common/string.inl":35:19))
  %v326 = sea.ptr.dereferenceable %v270, %v325 : !sea.ptr<64>, i64 loc("_240"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v326, ^bb92, ^bb95
^bb92:
  %v327 = sea.const 8 : i64 loc("_242"("aws-c-common/include/aws/common/string.inl":35:88))
  %v328 = sea.ptr.dereferenceable %v270, %v327 : !sea.ptr<64>, i64 loc("_242"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v328, ^bb93, ^bb95
^bb93:
  %v329 = sea.const 1 : i64 loc("_244"("aws-c-common/include/aws/common/string.inl":35:72))
  %v330 = sea.ptr.dereferenceable %v319, %v329 : !sea.ptr<64>, i64 loc("_244"("aws-c-common/include/aws/common/string.inl":35:72))
  sea.cond_br %v330, ^bb94, ^bb95
^bb94:
  %v331 = sea.const 1 : i1 loc("seahorn/jobs/string_eq/aws_string_eq_harness.c":21:9)
  %v332 = sea.xor %v324, %v331 : i1 loc("seahorn/jobs/string_eq/aws_string_eq_harness.c":21:9)
  sea.assume %v332 loc("seahorn/jobs/string_eq/aws_string_eq_harness.c":21:9)
  sea.br ^bb95 loc("seahorn/jobs/string_eq/aws_string_eq_harness.c":21:9)
^bb95:
  sea.br ^bb96
^bb96:
  %v333 = sea.const 0 : i1
  sea.assert %v333
  sea.halt
}
