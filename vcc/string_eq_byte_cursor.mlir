// Exported from SeaHorn (string_eq_byte_cursor.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.16" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm12")
  %v1 = sea.mem.nondet "region.0" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm13")
  %v2 = sea.mem.nondet "region.32" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm14")
  %v3 = sea.mem.nondet "region.33" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm15")
  %v4 = sea.const 16 : i64 loc("_0")
  %v5 = sea.alloca %v4 align 8 [4] : i64 -> !sea.ptr<64> loc("_0")
  %v6 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v7 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v8 = sea.store %v1[%v6], %v7 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v9 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_1")
  %v10 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_1")
  %v11 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v12 = sea.store %v8[%v10], %v11 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v13 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_2")
  %v14 = sea.ptr.index %v13 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_2")
  %v15 = sea.const 0 : i8
  %v16 = sea.const 24 : i64
  %v17 = sea.memset %v12[%v14], %v15, %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v18 = sea.nondet "nd_bool" [5] : i1 loc("_3"("seahorn/jobs/string_eq_byte_cursor/aws_string_eq_byte_cursor_harness.c":13:30))
  %v19 = sea.ptr.null : !sea.ptr<64> loc("seahorn/jobs/string_eq_byte_cursor/aws_string_eq_byte_cursor_harness.c":13:30)
  sea.cond_br %v18, ^bb1, ^bb10(%v2, %v19 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/jobs/string_eq_byte_cursor/aws_string_eq_byte_cursor_harness.c":13:30)
^bb1:
  %v20 = sea.nondet "nd_size_t" [6] : i64 loc("_5"("seahorn/lib/string_helper.c":24:16))
  %v21 = sea.const 16 : i64 loc("_6"("seahorn/lib/string_helper.c":25:14))
  %v22 = sea.icmp ult, %v20, %v21 : i64 loc("_6"("seahorn/lib/string_helper.c":25:14))
  sea.assume %v22 loc("seahorn/lib/string_helper.c":25:3)
  %v23 = sea.const 25 : i64 loc("_7"("seahorn/lib/string_helper.c":11:61))
  %v24 = sea.add %v20, %v23 : i64 loc("_7"("seahorn/lib/string_helper.c":11:61))
  %v25 = sea.nondet "nd_malloc_is_fail" [7] : i1 loc("_8"("seahorn/lib/sea_allocators.c":11:10))
  %v26 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v25, ^bb3(%v2, %v26 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb2 loc("seahorn/lib/sea_allocators.c":11:10)
^bb2:
  %v27 = sea.const 1 : i64 loc("malloc.i")
  %v28 = sea.mul %v24, %v27 : i64 loc("malloc.i")
  %v29 = sea.alloca %v28 align 16 [8] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb3(%v2, %v29 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb3(%v30 : !sea.mem<!sea.ptr<64>, i8>, %v31 : !sea.ptr<64>):
  %v32 = sea.memhavoc %v30[%v31], %v24 [9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v33 = sea.ptr.null : !sea.ptr<64> loc("_11"("seahorn/lib/sea_allocators.c":45:10))
  %v34 = sea.ptr.cmp ne, %v31, %v33 : !sea.ptr<64> loc("_11"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v34 loc("seahorn/lib/sea_allocators.c":45:3)
  %v35 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i16.i"("seahorn/lib/string_helper.c":13:7))
  %v36 = sea.ptr.cmp eq, %v31, %v35 : !sea.ptr<64> loc(".not.i.i16.i"("seahorn/lib/string_helper.c":13:7))
  %v37 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":13:7)
  sea.cond_br %v36, ^bb10(%v32, %v37 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/string_helper.c":13:7)
^bb4:
  %v38 = sea.nondet "nd_bool" [10] : i1 loc("_13"("seahorn/lib/string_helper.c":16:9))
  %v39 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.cond_br %v38, ^bb5, ^bb6(%v39 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb5:
  %v40 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.br ^bb6(%v40 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb6(%v41 : !sea.ptr<64>):
  %v42 = sea.const 8 : i64 loc("_17"("seahorn/lib/string_helper.c":15:49))
  %v43 = sea.ptr.dereferenceable %v31, %v42 : !sea.ptr<64>, i64 loc("_17"("seahorn/lib/string_helper.c":15:49))
  sea.cond_br %v43, ^bb7, ^bb106
^bb7:
  %v44 = sea.store %v32[%v31], %v41 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/string_helper.c":15:49)
  %v45 = sea.ptr.index %v31 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_19"("seahorn/lib/string_helper.c":17:23))
  %v46 = sea.const 8 : i64 loc("_20"("seahorn/lib/string_helper.c":17:28))
  %v47 = sea.ptr.dereferenceable %v45, %v46 : !sea.ptr<64>, i64 loc("_20"("seahorn/lib/string_helper.c":17:28))
  sea.cond_br %v47, ^bb8, ^bb106
^bb8:
  %v48 = sea.store %v44[%v45], %v20 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/string_helper.c":17:28)
  %v49 = sea.ptr.index %v31 [%v20] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_22"("seahorn/lib/string_helper.c":18:18))
  %v50 = sea.const 1 : i64 loc("_23"("seahorn/lib/string_helper.c":18:34))
  %v51 = sea.ptr.dereferenceable %v49, %v50 : !sea.ptr<64>, i64 loc("_23"("seahorn/lib/string_helper.c":18:34))
  sea.cond_br %v51, ^bb9, ^bb106
^bb9:
  %v52 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":18:34)
  %v53 = sea.store %v48[%v49], %v52 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":18:34)
  sea.br ^bb10(%v53, %v31 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/string_helper.c":19:3)
^bb10(%v54 : !sea.mem<!sea.ptr<64>, i8>, %v55 : !sea.ptr<64>):
  %v56 = sea.nondet "nd_size_t" [11] : i64 loc("_26"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb11
^bb11:
  %v57 = sea.store %v0[%v5], %v56 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb12
^bb12:
  %v58 = sea.const 11 : i64 loc("_29"("seahorn/lib/byte_buf_helper.c":33:24))
  %v59 = sea.icmp ult, %v56, %v58 : i64 loc("_29"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v59 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v60 = sea.nondet "nd_malloc_is_fail" [12] : i1 loc("_30"("seahorn/lib/sea_allocators.c":11:10))
  %v61 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v60, ^bb14(%v3, %v61 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb13 loc("seahorn/lib/sea_allocators.c":11:10)
^bb13:
  %v62 = sea.const 10 : i64 loc("malloc22.i5")
  %v63 = sea.alloca %v62 align 16 [13] : i64 -> !sea.ptr<64> loc("malloc22.i5")
  sea.br ^bb14(%v3, %v63 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb14(%v64 : !sea.mem<!sea.ptr<64>, i8>, %v65 : !sea.ptr<64>):
  %v66 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v67 = sea.memhavoc %v64[%v65], %v66 [14] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v68 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_33"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb15
^bb15:
  %v69 = sea.store %v57[%v68], %v65 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  sea.br ^bb16
^bb16:
  %v70 = sea.const 0 : i64 loc("_35"("aws-c-common/source/byte_buf.c":66:26))
  %v71 = sea.icmp eq, %v56, %v70 : i64 loc("_35"("aws-c-common/source/byte_buf.c":66:26))
  %v72 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v71, ^bb22(%v72 : i1), ^bb17 loc("aws-c-common/source/byte_buf.c":66:32)
^bb17:
  sea.br ^bb18
^bb18:
  sea.br ^bb19
^bb19:
  %v73 = sea.ptr.null : !sea.ptr<64> loc(".not2.i8.i"("aws-c-common/source/byte_buf.c":66:55))
  %v74 = sea.ptr.cmp eq, %v65, %v73 : !sea.ptr<64> loc(".not2.i8.i"("aws-c-common/source/byte_buf.c":66:55))
  %v75 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v74, ^bb22(%v75 : i1), ^bb20 loc("aws-c-common/source/byte_buf.c":66:67)
^bb20:
  sea.br ^bb21
^bb21:
  %v76 = sea.const 1 : i1
  sea.br ^bb22(%v76 : i1)
^bb22(%v77 : i1):
  sea.assume %v77 loc("seahorn/jobs/string_eq_byte_cursor/aws_string_eq_byte_cursor_harness.c":19:5)
  %v78 = sea.nondet "nd_bool" [15] : i1 loc("_42"("seahorn/jobs/string_eq_byte_cursor/aws_string_eq_byte_cursor_harness.c":21:29))
  %v79 = sea.ptr.null : !sea.ptr<64> loc("..i"("seahorn/jobs/string_eq_byte_cursor/aws_string_eq_byte_cursor_harness.c":22:40))
  %v80 = sea.select %v78, %v5, %v79 : !sea.ptr<64> loc("..i"("seahorn/jobs/string_eq_byte_cursor/aws_string_eq_byte_cursor_harness.c":22:40))
  %v81 = sea.ptr.null : !sea.ptr<64> loc("_43"("aws-c-common/source/string.c":326:13))
  %v82 = sea.ptr.cmp ne, %v55, %v81 : !sea.ptr<64> loc("_43"("aws-c-common/source/string.c":326:13))
  %v83 = sea.and %v82, %v78 : i1 loc("or.cond3.i.i.not")
  sea.cond_br %v83, ^bb23, ^bb91 loc("aws-c-common/source/string.c":326:21)
^bb23:
  %v84 = sea.ptr.index %v55 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_45"("aws-c-common/source/string.c":332:30))
  %v85 = sea.ptr.index %v55 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_46"("aws-c-common/source/string.c":332:42))
  %v86 = sea.const 8 : i64 loc("_47"("aws-c-common/source/string.c":332:42))
  %v87 = sea.ptr.dereferenceable %v85, %v86 : !sea.ptr<64>, i64 loc("_47"("aws-c-common/source/string.c":332:42))
  sea.cond_br %v87, ^bb24, ^bb106
^bb24:
  %v88 = sea.load %v54[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_49"("aws-c-common/source/string.c":332:42))
  sea.br ^bb25
^bb25:
  %v89 = sea.const 8 : i64 loc("_51"("aws-c-common/source/string.c":332:62))
  %v90 = sea.ptr.dereferenceable %v80, %v89 : !sea.ptr<64>, i64 loc("_51"("aws-c-common/source/string.c":332:62))
  sea.cond_br %v90, ^bb26, ^bb106
^bb26:
  %v91 = sea.load %v57[%v80] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_53"("aws-c-common/source/string.c":332:62))
  %v92 = sea.icmp eq, %v88, %v91 : i64 loc(".not.i.i.i"("aws-c-common/source/byte_buf.c":425:15))
  sea.cond_br %v92, ^bb27, ^bb91 loc("aws-c-common/source/byte_buf.c":425:9)
^bb27:
  %v93 = sea.const 0 : i64 loc("_55"("aws-c-common/source/byte_buf.c":429:15))
  %v94 = sea.icmp eq, %v88, %v93 : i64 loc("_55"("aws-c-common/source/byte_buf.c":429:15))
  sea.cond_br %v94, ^bb78, ^bb28 loc("aws-c-common/source/byte_buf.c":429:9)
^bb28:
  %v95 = sea.ptr.cmp eq, %v84, %v65 : !sea.ptr<64> loc("_57"("seahorn/lib/bcmp.c":55:10))
  sea.cond_br %v95, ^bb78, ^bb29 loc("seahorn/lib/bcmp.c":55:7)
^bb29:
  %v96 = sea.const 1 : i64 loc("_60"("seahorn/lib/bcmp.c":61:11))
  %v97 = sea.ptr.dereferenceable %v84, %v96 : !sea.ptr<64>, i64 loc("_60"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v97, ^bb30, ^bb106
^bb30:
  %v98 = sea.load %v54[%v84] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_62"("seahorn/lib/bcmp.c":61:11))
  %v99 = sea.const 1 : i64 loc("_63"("seahorn/lib/bcmp.c":61:20))
  %v100 = sea.ptr.dereferenceable %v65, %v99 : !sea.ptr<64>, i64 loc("_63"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v100, ^bb31, ^bb106
^bb31:
  %v101 = sea.load %v67[%v65] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_65"("seahorn/lib/bcmp.c":61:20))
  %v102 = sea.icmp eq, %v98, %v101 : i8 loc(".not2.i21.i"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v102, ^bb32, ^bb68(%v65, %v84 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb32:
  %v103 = sea.const 1 : i64 loc(".not"("seahorn/lib/bcmp.c":60:11))
  %v104 = sea.icmp eq, %v88, %v103 : i64 loc(".not"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v104, ^bb78, ^bb33 loc("seahorn/lib/bcmp.c":60:9)
^bb33:
  %v105 = sea.ptr.index %v55 [] strides [] offset 17 inbounds : !sea.ptr<64> loc("_71"("seahorn/lib/bcmp.c":61:11))
  %v106 = sea.const 1 : i64 loc("_72"("seahorn/lib/bcmp.c":61:11))
  %v107 = sea.ptr.dereferenceable %v105, %v106 : !sea.ptr<64>, i64 loc("_72"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v107, ^bb34, ^bb106
^bb34:
  %v108 = sea.load %v54[%v105] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_74"("seahorn/lib/bcmp.c":61:11))
  %v109 = sea.ptr.index %v65 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_75"("seahorn/lib/bcmp.c":61:20))
  %v110 = sea.const 1 : i64 loc("_76"("seahorn/lib/bcmp.c":61:20))
  %v111 = sea.ptr.dereferenceable %v109, %v110 : !sea.ptr<64>, i64 loc("_76"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v111, ^bb35, ^bb106
^bb35:
  %v112 = sea.load %v67[%v109] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_78"("seahorn/lib/bcmp.c":61:20))
  %v113 = sea.icmp eq, %v108, %v112 : i8 loc(".not2.i21.i.1"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v113, ^bb36, ^bb68(%v109, %v105 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb36:
  %v114 = sea.const 2 : i64 loc("_79"("seahorn/lib/bcmp.c":60:11))
  %v115 = sea.icmp ugt, %v88, %v114 : i64 loc("_79"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v115, ^bb37, ^bb78 loc("seahorn/lib/bcmp.c":60:9)
^bb37:
  %v116 = sea.ptr.index %v55 [] strides [] offset 18 inbounds : !sea.ptr<64> loc("_81"("seahorn/lib/bcmp.c":61:11))
  %v117 = sea.const 1 : i64 loc("_82"("seahorn/lib/bcmp.c":61:11))
  %v118 = sea.ptr.dereferenceable %v116, %v117 : !sea.ptr<64>, i64 loc("_82"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v118, ^bb38, ^bb106
^bb38:
  %v119 = sea.load %v54[%v116] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_84"("seahorn/lib/bcmp.c":61:11))
  %v120 = sea.ptr.index %v65 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_85"("seahorn/lib/bcmp.c":61:20))
  %v121 = sea.const 1 : i64 loc("_86"("seahorn/lib/bcmp.c":61:20))
  %v122 = sea.ptr.dereferenceable %v120, %v121 : !sea.ptr<64>, i64 loc("_86"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v122, ^bb39, ^bb106
^bb39:
  %v123 = sea.load %v67[%v120] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_88"("seahorn/lib/bcmp.c":61:20))
  %v124 = sea.icmp eq, %v119, %v123 : i8 loc(".not2.i21.i.2"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v124, ^bb40, ^bb68(%v120, %v116 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb40:
  %v125 = sea.const 3 : i64 loc(".not6"("seahorn/lib/bcmp.c":60:11))
  %v126 = sea.icmp eq, %v88, %v125 : i64 loc(".not6"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v126, ^bb78, ^bb41 loc("seahorn/lib/bcmp.c":60:9)
^bb41:
  %v127 = sea.ptr.index %v55 [] strides [] offset 19 inbounds : !sea.ptr<64> loc("_90"("seahorn/lib/bcmp.c":61:11))
  %v128 = sea.const 1 : i64 loc("_91"("seahorn/lib/bcmp.c":61:11))
  %v129 = sea.ptr.dereferenceable %v127, %v128 : !sea.ptr<64>, i64 loc("_91"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v129, ^bb42, ^bb106
^bb42:
  %v130 = sea.load %v54[%v127] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_93"("seahorn/lib/bcmp.c":61:11))
  %v131 = sea.ptr.index %v65 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_94"("seahorn/lib/bcmp.c":61:20))
  %v132 = sea.const 1 : i64 loc("_95"("seahorn/lib/bcmp.c":61:20))
  %v133 = sea.ptr.dereferenceable %v131, %v132 : !sea.ptr<64>, i64 loc("_95"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v133, ^bb43, ^bb106
^bb43:
  %v134 = sea.load %v67[%v131] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_97"("seahorn/lib/bcmp.c":61:20))
  %v135 = sea.icmp eq, %v130, %v134 : i8 loc(".not2.i21.i.3"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v135, ^bb44, ^bb68(%v131, %v127 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb44:
  %v136 = sea.const 4 : i64 loc("_98"("seahorn/lib/bcmp.c":60:11))
  %v137 = sea.icmp ugt, %v88, %v136 : i64 loc("_98"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v137, ^bb45, ^bb78 loc("seahorn/lib/bcmp.c":60:9)
^bb45:
  %v138 = sea.ptr.index %v55 [] strides [] offset 20 inbounds : !sea.ptr<64> loc("_100"("seahorn/lib/bcmp.c":61:11))
  %v139 = sea.const 1 : i64 loc("_101"("seahorn/lib/bcmp.c":61:11))
  %v140 = sea.ptr.dereferenceable %v138, %v139 : !sea.ptr<64>, i64 loc("_101"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v140, ^bb46, ^bb106
^bb46:
  %v141 = sea.load %v54[%v138] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_103"("seahorn/lib/bcmp.c":61:11))
  %v142 = sea.ptr.index %v65 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_104"("seahorn/lib/bcmp.c":61:20))
  %v143 = sea.const 1 : i64 loc("_105"("seahorn/lib/bcmp.c":61:20))
  %v144 = sea.ptr.dereferenceable %v142, %v143 : !sea.ptr<64>, i64 loc("_105"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v144, ^bb47, ^bb106
^bb47:
  %v145 = sea.load %v67[%v142] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_107"("seahorn/lib/bcmp.c":61:20))
  %v146 = sea.icmp eq, %v141, %v145 : i8 loc(".not2.i21.i.4"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v146, ^bb48, ^bb68(%v142, %v138 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb48:
  %v147 = sea.const 5 : i64 loc(".not7"("seahorn/lib/bcmp.c":60:11))
  %v148 = sea.icmp eq, %v88, %v147 : i64 loc(".not7"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v148, ^bb78, ^bb49 loc("seahorn/lib/bcmp.c":60:9)
^bb49:
  %v149 = sea.ptr.index %v55 [] strides [] offset 21 inbounds : !sea.ptr<64> loc("_109"("seahorn/lib/bcmp.c":61:11))
  %v150 = sea.const 1 : i64 loc("_110"("seahorn/lib/bcmp.c":61:11))
  %v151 = sea.ptr.dereferenceable %v149, %v150 : !sea.ptr<64>, i64 loc("_110"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v151, ^bb50, ^bb106
^bb50:
  %v152 = sea.load %v54[%v149] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_112"("seahorn/lib/bcmp.c":61:11))
  %v153 = sea.ptr.index %v65 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_113"("seahorn/lib/bcmp.c":61:20))
  %v154 = sea.const 1 : i64 loc("_114"("seahorn/lib/bcmp.c":61:20))
  %v155 = sea.ptr.dereferenceable %v153, %v154 : !sea.ptr<64>, i64 loc("_114"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v155, ^bb51, ^bb106
^bb51:
  %v156 = sea.load %v67[%v153] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_116"("seahorn/lib/bcmp.c":61:20))
  %v157 = sea.icmp eq, %v152, %v156 : i8 loc(".not2.i21.i.5"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v157, ^bb52, ^bb68(%v153, %v149 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb52:
  %v158 = sea.const 6 : i64 loc("_117"("seahorn/lib/bcmp.c":60:11))
  %v159 = sea.icmp ugt, %v88, %v158 : i64 loc("_117"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v159, ^bb53, ^bb78 loc("seahorn/lib/bcmp.c":60:9)
^bb53:
  %v160 = sea.ptr.index %v55 [] strides [] offset 22 inbounds : !sea.ptr<64> loc("_119"("seahorn/lib/bcmp.c":61:11))
  %v161 = sea.const 1 : i64 loc("_120"("seahorn/lib/bcmp.c":61:11))
  %v162 = sea.ptr.dereferenceable %v160, %v161 : !sea.ptr<64>, i64 loc("_120"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v162, ^bb54, ^bb106
^bb54:
  %v163 = sea.load %v54[%v160] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_122"("seahorn/lib/bcmp.c":61:11))
  %v164 = sea.ptr.index %v65 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_123"("seahorn/lib/bcmp.c":61:20))
  %v165 = sea.const 1 : i64 loc("_124"("seahorn/lib/bcmp.c":61:20))
  %v166 = sea.ptr.dereferenceable %v164, %v165 : !sea.ptr<64>, i64 loc("_124"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v166, ^bb55, ^bb106
^bb55:
  %v167 = sea.load %v67[%v164] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_126"("seahorn/lib/bcmp.c":61:20))
  %v168 = sea.icmp eq, %v163, %v167 : i8 loc(".not2.i21.i.6"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v168, ^bb56, ^bb68(%v164, %v160 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb56:
  %v169 = sea.const 7 : i64 loc(".not8"("seahorn/lib/bcmp.c":60:11))
  %v170 = sea.icmp eq, %v88, %v169 : i64 loc(".not8"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v170, ^bb78, ^bb57 loc("seahorn/lib/bcmp.c":60:9)
^bb57:
  %v171 = sea.ptr.index %v55 [] strides [] offset 23 inbounds : !sea.ptr<64> loc("_128"("seahorn/lib/bcmp.c":61:11))
  %v172 = sea.const 1 : i64 loc("_129"("seahorn/lib/bcmp.c":61:11))
  %v173 = sea.ptr.dereferenceable %v171, %v172 : !sea.ptr<64>, i64 loc("_129"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v173, ^bb58, ^bb106
^bb58:
  %v174 = sea.load %v54[%v171] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_131"("seahorn/lib/bcmp.c":61:11))
  %v175 = sea.ptr.index %v65 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_132"("seahorn/lib/bcmp.c":61:20))
  %v176 = sea.const 1 : i64 loc("_133"("seahorn/lib/bcmp.c":61:20))
  %v177 = sea.ptr.dereferenceable %v175, %v176 : !sea.ptr<64>, i64 loc("_133"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v177, ^bb59, ^bb106
^bb59:
  %v178 = sea.load %v67[%v175] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_135"("seahorn/lib/bcmp.c":61:20))
  %v179 = sea.icmp eq, %v174, %v178 : i8 loc(".not2.i21.i.7"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v179, ^bb60, ^bb68(%v175, %v171 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb60:
  %v180 = sea.const 8 : i64 loc("_136"("seahorn/lib/bcmp.c":60:11))
  %v181 = sea.icmp ugt, %v88, %v180 : i64 loc("_136"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v181, ^bb61, ^bb78 loc("seahorn/lib/bcmp.c":60:9)
^bb61:
  %v182 = sea.ptr.index %v55 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_138"("seahorn/lib/bcmp.c":61:11))
  %v183 = sea.const 1 : i64 loc("_139"("seahorn/lib/bcmp.c":61:11))
  %v184 = sea.ptr.dereferenceable %v182, %v183 : !sea.ptr<64>, i64 loc("_139"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v184, ^bb62, ^bb106
^bb62:
  %v185 = sea.load %v54[%v182] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_141"("seahorn/lib/bcmp.c":61:11))
  %v186 = sea.ptr.index %v65 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_142"("seahorn/lib/bcmp.c":61:20))
  %v187 = sea.const 1 : i64 loc("_143"("seahorn/lib/bcmp.c":61:20))
  %v188 = sea.ptr.dereferenceable %v186, %v187 : !sea.ptr<64>, i64 loc("_143"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v188, ^bb63, ^bb106
^bb63:
  %v189 = sea.load %v67[%v186] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_145"("seahorn/lib/bcmp.c":61:20))
  %v190 = sea.icmp eq, %v185, %v189 : i8 loc(".not2.i21.i.8"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v190, ^bb64, ^bb68(%v186, %v182 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb64:
  %v191 = sea.const 9 : i64 loc(".not9"("seahorn/lib/bcmp.c":60:11))
  %v192 = sea.icmp eq, %v88, %v191 : i64 loc(".not9"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v192, ^bb78, ^bb65 loc("seahorn/lib/bcmp.c":60:9)
^bb65:
  %v193 = sea.ptr.index %v55 [] strides [] offset 25 inbounds : !sea.ptr<64> loc("_147"("seahorn/lib/bcmp.c":61:11))
  %v194 = sea.const 1 : i64 loc("_148"("seahorn/lib/bcmp.c":61:11))
  %v195 = sea.ptr.dereferenceable %v193, %v194 : !sea.ptr<64>, i64 loc("_148"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v195, ^bb66, ^bb106
^bb66:
  %v196 = sea.load %v54[%v193] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_150"("seahorn/lib/bcmp.c":61:11))
  %v197 = sea.ptr.index %v65 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_151"("seahorn/lib/bcmp.c":61:20))
  %v198 = sea.const 1 : i64 loc("_152"("seahorn/lib/bcmp.c":61:20))
  %v199 = sea.ptr.dereferenceable %v197, %v198 : !sea.ptr<64>, i64 loc("_152"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v199, ^bb67, ^bb106
^bb67:
  %v200 = sea.load %v67[%v197] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_154"("seahorn/lib/bcmp.c":61:20))
  %v201 = sea.icmp eq, %v196, %v200 : i8 loc(".not2.i21.i.9"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v201, ^bb70, ^bb68(%v197, %v193 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb68(%v202 : !sea.ptr<64>, %v203 : !sea.ptr<64>):
  %v204 = sea.const 1 : i64 loc("_67"("seahorn/lib/bcmp.c":62:16))
  %v205 = sea.ptr.dereferenceable %v203, %v204 : !sea.ptr<64>, i64 loc("_67"("seahorn/lib/bcmp.c":62:16))
  sea.cond_br %v205, ^bb69, ^bb106
^bb69:
  %v206 = sea.const 1 : i64 loc("_69"("seahorn/lib/bcmp.c":62:24))
  %v207 = sea.ptr.dereferenceable %v202, %v206 : !sea.ptr<64>, i64 loc("_69"("seahorn/lib/bcmp.c":62:24))
  sea.cond_br %v207, ^bb91, ^bb106
^bb70:
  %v208 = sea.const 10 : i64 loc("_155"("seahorn/lib/bcmp.c":67:31))
  %v209 = sea.icmp ugt, %v88, %v208 : i64 loc("_155"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v209, ^bb71, ^bb78 loc("seahorn/lib/bcmp.c":67:3)
^bb71:
  %v210 = sea.ptr.index %v55 [] strides [] offset 26 inbounds : !sea.ptr<64> loc("_58"("seahorn/lib/bcmp.c":68:9))
  %v211 = sea.const 1 : i64 loc("_59"("seahorn/lib/bcmp.c":68:9))
  %v212 = sea.ptr.dereferenceable %v210, %v211 : !sea.ptr<64>, i64 loc("_59"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v212, ^bb72, ^bb106
^bb72:
  %v213 = sea.load %v54[%v210] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_159"("seahorn/lib/bcmp.c":68:9))
  %v214 = sea.ptr.index %v65 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_160"("seahorn/lib/bcmp.c":68:18))
  %v215 = sea.const 1 : i64 loc("_161"("seahorn/lib/bcmp.c":68:18))
  %v216 = sea.ptr.dereferenceable %v214, %v215 : !sea.ptr<64>, i64 loc("_161"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v216, ^bb73, ^bb106
^bb73:
  %v217 = sea.load %v67[%v214] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_163"("seahorn/lib/bcmp.c":68:18))
  %v218 = sea.icmp eq, %v213, %v217 : i8 loc(".not.i20.i"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v218, ^bb76, ^bb74 loc("seahorn/lib/bcmp.c":68:9)
^bb74:
  %v219 = sea.const 1 : i64 loc("_165"("seahorn/lib/bcmp.c":69:14))
  %v220 = sea.ptr.dereferenceable %v210, %v219 : !sea.ptr<64>, i64 loc("_165"("seahorn/lib/bcmp.c":69:14))
  sea.cond_br %v220, ^bb75, ^bb106
^bb75:
  %v221 = sea.const 1 : i64 loc("_167"("seahorn/lib/bcmp.c":69:22))
  %v222 = sea.ptr.dereferenceable %v214, %v221 : !sea.ptr<64>, i64 loc("_167"("seahorn/lib/bcmp.c":69:22))
  sea.cond_br %v222, ^bb91, ^bb106
^bb76:
  %v223 = sea.const 11 : i64 loc("exitcond27.not"("seahorn/lib/bcmp.c":67:31))
  %v224 = sea.icmp eq, %v88, %v223 : i64 loc("exitcond27.not"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v224, ^bb78, ^bb77 loc("seahorn/lib/bcmp.c":67:3)
^bb77:
  %v225 = sea.ptr.index %v55 [] strides [] offset 27 inbounds : !sea.ptr<64> loc("_157"("seahorn/lib/bcmp.c":68:9))
  %v226 = sea.const 1 : i64 loc("_158"("seahorn/lib/bcmp.c":68:9))
  %v227 = sea.ptr.dereferenceable %v225, %v226 : !sea.ptr<64>, i64 loc("_158"("seahorn/lib/bcmp.c":68:9))
  %v228 = sea.const 1 : i1
  %v229 = sea.xor %v227, %v228 : i1
  sea.assume %v229
  sea.br ^bb106
^bb78:
  %v230 = sea.const 8 : i64 loc("_168"("aws-c-common/include/aws/common/string.inl":35:19))
  %v231 = sea.ptr.dereferenceable %v85, %v230 : !sea.ptr<64>, i64 loc("_168"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v231, ^bb79, ^bb106
^bb79:
  %v232 = sea.const 8 : i64 loc("_170"("aws-c-common/include/aws/common/string.inl":35:88))
  %v233 = sea.ptr.dereferenceable %v85, %v232 : !sea.ptr<64>, i64 loc("_170"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v233, ^bb80, ^bb106
^bb80:
  %v234 = sea.ptr.index %v55 [%v88] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_172"("aws-c-common/include/aws/common/string.inl":35:72))
  %v235 = sea.const 1 : i64 loc("_173"("aws-c-common/include/aws/common/string.inl":35:72))
  %v236 = sea.ptr.dereferenceable %v234, %v235 : !sea.ptr<64>, i64 loc("_173"("aws-c-common/include/aws/common/string.inl":35:72))
  sea.cond_br %v236, ^bb81, ^bb106
^bb81:
  %v237 = sea.load %v54[%v234] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_174"("aws-c-common/include/aws/common/string.inl":35:72))
  %v238 = sea.const 0 : i8 loc("_175"("aws-c-common/include/aws/common/string.inl":35:93))
  %v239 = sea.icmp eq, %v237, %v238 : i8 loc("_175"("aws-c-common/include/aws/common/string.inl":35:93))
  %v240 = sea.const 8 : i64 loc("_176"("aws-c-common/include/aws/common/string.inl":35:19))
  %v241 = sea.ptr.dereferenceable %v85, %v240 : !sea.ptr<64>, i64 loc("_176"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v241, ^bb82, ^bb106
^bb82:
  %v242 = sea.const 8 : i64 loc("_178"("aws-c-common/include/aws/common/string.inl":35:88))
  %v243 = sea.ptr.dereferenceable %v85, %v242 : !sea.ptr<64>, i64 loc("_178"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v243, ^bb83, ^bb106
^bb83:
  %v244 = sea.const 1 : i64 loc("_180"("aws-c-common/include/aws/common/string.inl":35:72))
  %v245 = sea.ptr.dereferenceable %v234, %v244 : !sea.ptr<64>, i64 loc("_180"("aws-c-common/include/aws/common/string.inl":35:72))
  %v246 = sea.const 0 : i1 loc("_181")
  %v247 = sea.select %v245, %v239, %v246 : i1 loc("_181")
  sea.cond_br %v247, ^bb84, ^bb106
^bb84:
  %v248 = sea.const 8 : i64 loc("_183"("seahorn/jobs/string_eq_byte_cursor/aws_string_eq_byte_cursor_harness.c":25:13))
  %v249 = sea.ptr.dereferenceable %v85, %v248 : !sea.ptr<64>, i64 loc("_183"("seahorn/jobs/string_eq_byte_cursor/aws_string_eq_byte_cursor_harness.c":25:13))
  sea.cond_br %v249, ^bb85, ^bb106
^bb85:
  %v250 = sea.icmp eq, %v88, %v56 : i64 loc("_185"("seahorn/jobs/string_eq_byte_cursor/aws_string_eq_byte_cursor_harness.c":25:13))
  %v251 = sea.const 8 : i64 loc("_186"("seahorn/jobs/string_eq_byte_cursor/aws_string_eq_byte_cursor_harness.c":25:13))
  %v252 = sea.ptr.dereferenceable %v85, %v251 : !sea.ptr<64>, i64 loc("_186"("seahorn/jobs/string_eq_byte_cursor/aws_string_eq_byte_cursor_harness.c":25:13))
  %v253 = sea.const 0 : i1 loc("_187")
  %v254 = sea.select %v252, %v250, %v253 : i1 loc("_187")
  sea.cond_br %v254, ^bb86, ^bb106
^bb86:
  %v255 = sea.const 8 : i64 loc("_189"("seahorn/jobs/string_eq_byte_cursor/aws_string_eq_byte_cursor_harness.c":26:22))
  %v256 = sea.ptr.dereferenceable %v85, %v255 : !sea.ptr<64>, i64 loc("_189"("seahorn/jobs/string_eq_byte_cursor/aws_string_eq_byte_cursor_harness.c":26:22))
  sea.cond_br %v256, ^bb87, ^bb106
^bb87:
  sea.cond_br %v71, ^bb91, ^bb88 loc("seahorn/jobs/string_eq_byte_cursor/aws_string_eq_byte_cursor_harness.c":26:17)
^bb88:
  %v257 = sea.const 8 : i64 loc("_192"("seahorn/jobs/string_eq_byte_cursor/aws_string_eq_byte_cursor_harness.c":27:65))
  %v258 = sea.ptr.dereferenceable %v85, %v257 : !sea.ptr<64>, i64 loc("_192"("seahorn/jobs/string_eq_byte_cursor/aws_string_eq_byte_cursor_harness.c":27:65))
  sea.cond_br %v258, ^bb89, ^bb106
^bb89:
  %v259 = sea.ptr.null : !sea.ptr<64> loc(".not4.i.i"("seahorn/lib/utils.c":15:3))
  %v260 = sea.ptr.cmp ne, %v65, %v259 : !sea.ptr<64> loc(".not4.i.i"("seahorn/lib/utils.c":15:3))
  %v261 = sea.ptr.null : !sea.ptr<64> loc(".not6.i.i.not"("seahorn/lib/utils.c":15:3))
  %v262 = sea.ptr.cmp eq, %v65, %v261 : !sea.ptr<64> loc(".not6.i.i.not"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v262, ^bb106, ^bb90 loc("seahorn/lib/utils.c":15:3)
^bb90:
  %v263 = sea.nondet "nd_size_t" [16] : i64 loc("_194"("seahorn/lib/utils.c":17:16))
  %v264 = sea.icmp ult, %v263, %v56 : i64 loc("_195"("seahorn/lib/utils.c":19:14))
  %v265 = sea.const 36028797018963967 : i64 loc("_196"("seahorn/lib/utils.c":19:20))
  %v266 = sea.icmp ult, %v56, %v265 : i64 loc("_196"("seahorn/lib/utils.c":19:20))
  %v267 = sea.and %v266, %v264 : i1 loc("_197"("seahorn/lib/utils.c":19:20))
  sea.assume %v267 loc("seahorn/lib/utils.c":19:5)
  %v268 = sea.ptr.index %v84 [%v263] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_198"("seahorn/lib/utils.c":20:5))
  %v269 = sea.load %v54[%v268] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_199"("seahorn/lib/utils.c":20:5))
  %v270 = sea.ptr.index %v65 [%v263] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_200"("seahorn/lib/utils.c":20:5))
  %v271 = sea.load %v67[%v270] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_201"("seahorn/lib/utils.c":20:5))
  %v272 = sea.icmp eq, %v269, %v271 : i8 loc("_202"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v272, ^bb91, ^bb106 loc("seahorn/lib/utils.c":20:5)
^bb91:
  sea.br ^bb92
^bb92:
  %v273 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v71, ^bb98(%v273 : i1), ^bb93 loc("aws-c-common/source/byte_buf.c":66:32)
^bb93:
  sea.br ^bb94
^bb94:
  sea.br ^bb95
^bb95:
  %v274 = sea.ptr.null : !sea.ptr<64> loc(".not2.i4.i"("aws-c-common/source/byte_buf.c":66:55))
  %v275 = sea.ptr.cmp eq, %v65, %v274 : !sea.ptr<64> loc(".not2.i4.i"("aws-c-common/source/byte_buf.c":66:55))
  %v276 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v275, ^bb98(%v276 : i1), ^bb96 loc("aws-c-common/source/byte_buf.c":66:67)
^bb96:
  sea.br ^bb97
^bb97:
  %v277 = sea.const 1 : i1
  sea.br ^bb98(%v277 : i1)
^bb98(%v278 : i1):
  sea.br ^bb99
^bb99:
  %v279 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v71, ^bb105(%v279 : i1), ^bb100 loc("aws-c-common/source/byte_buf.c":66:32)
^bb100:
  sea.br ^bb101
^bb101:
  sea.br ^bb102
^bb102:
  %v280 = sea.ptr.null : !sea.ptr<64> loc(".not2.i.i"("aws-c-common/source/byte_buf.c":66:55))
  %v281 = sea.ptr.cmp eq, %v65, %v280 : !sea.ptr<64> loc(".not2.i.i"("aws-c-common/source/byte_buf.c":66:55))
  %v282 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v281, ^bb105(%v282 : i1), ^bb103 loc("aws-c-common/source/byte_buf.c":66:67)
^bb103:
  sea.br ^bb104
^bb104:
  %v283 = sea.const 1 : i1
  sea.br ^bb105(%v283 : i1)
^bb105(%v284 : i1):
  %v285 = sea.const 1 : i1 loc("seahorn/jobs/string_eq_byte_cursor/aws_string_eq_byte_cursor_harness.c":31:5)
  %v286 = sea.xor %v284, %v285 : i1 loc("seahorn/jobs/string_eq_byte_cursor/aws_string_eq_byte_cursor_harness.c":31:5)
  sea.assume %v286 loc("seahorn/jobs/string_eq_byte_cursor/aws_string_eq_byte_cursor_harness.c":31:5)
  sea.br ^bb106 loc("seahorn/jobs/string_eq_byte_cursor/aws_string_eq_byte_cursor_harness.c":31:5)
^bb106:
  sea.br ^bb107
^bb107:
  %v287 = sea.const 0 : i1
  sea.assert %v287
  sea.halt
}
