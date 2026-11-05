// Exported from SeaHorn (byte_cursor_compare_lookup2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm13")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm14")
  %v2 = sea.mem.nondet "region.33" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm15")
  %v3 = sea.mem.nondet "region.32" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm16")
  %v4 = sea.const 16 : i64 loc("_0")
  %v5 = sea.alloca %v4 align 8 [4] : i64 -> !sea.ptr<64> loc("_0")
  %v6 = sea.const 16 : i64 loc("_1")
  %v7 = sea.alloca %v6 align 8 [5] : i64 -> !sea.ptr<64> loc("_1")
  %v8 = sea.const 256 : i64 loc("_2")
  %v9 = sea.alloca %v8 align 16 [6] : i64 -> !sea.ptr<64> loc("_2")
  %v10 = sea.nondet "nd_size_t" [7] : i64 loc("_3"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb1
^bb1:
  %v11 = sea.store %v0[%v5], %v10 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb2
^bb2:
  %v12 = sea.const 11 : i64 loc("_6"("seahorn/lib/byte_buf_helper.c":33:24))
  %v13 = sea.icmp ult, %v10, %v12 : i64 loc("_6"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v13 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v14 = sea.nondet "nd_malloc_is_fail" [8] : i1 loc("_7"("seahorn/lib/sea_allocators.c":11:10))
  %v15 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v14, ^bb4(%v2, %v15 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/sea_allocators.c":11:10)
^bb3:
  %v16 = sea.const 10 : i64 loc("malloc.i6")
  %v17 = sea.alloca %v16 align 16 [9] : i64 -> !sea.ptr<64> loc("malloc.i6")
  sea.br ^bb4(%v2, %v17 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb4(%v18 : !sea.mem<!sea.ptr<64>, i8>, %v19 : !sea.ptr<64>):
  %v20 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v21 = sea.memhavoc %v18[%v19], %v20 [10] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v22 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_10"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb5
^bb5:
  %v23 = sea.store %v11[%v22], %v19 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  %v24 = sea.const 256 : i64 loc("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":21:5)
  %v25 = sea.memhavoc %v3[%v9], %v24 [11] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":21:5)
  sea.br ^bb6
^bb6:
  %v26 = sea.const 0 : i64 loc("_12"("aws-c-common/source/byte_buf.c":66:26))
  %v27 = sea.icmp eq, %v10, %v26 : i64 loc("_12"("aws-c-common/source/byte_buf.c":66:26))
  %v28 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v27, ^bb12(%v28 : i1), ^bb7 loc("aws-c-common/source/byte_buf.c":66:32)
^bb7:
  sea.br ^bb8
^bb8:
  sea.br ^bb9
^bb9:
  %v29 = sea.ptr.null : !sea.ptr<64> loc(".not2.i23.i"("aws-c-common/source/byte_buf.c":66:55))
  %v30 = sea.ptr.cmp eq, %v19, %v29 : !sea.ptr<64> loc(".not2.i23.i"("aws-c-common/source/byte_buf.c":66:55))
  %v31 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v30, ^bb12(%v31 : i1), ^bb10 loc("aws-c-common/source/byte_buf.c":66:67)
^bb10:
  sea.br ^bb11
^bb11:
  %v32 = sea.const 1 : i1
  sea.br ^bb12(%v32 : i1)
^bb12(%v33 : i1):
  sea.assume %v33 loc("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":24:5)
  %v34 = sea.nondet "nd_bool" [12] : i1 loc("_19"("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":25:9))
  sea.cond_br %v34, ^bb26, ^bb13 loc("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":25:9)
^bb13:
  %v35 = sea.nondet "nd_size_t" [13] : i64 loc("_22"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb14
^bb14:
  %v36 = sea.store %v1[%v7], %v35 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb15
^bb15:
  %v37 = sea.const 11 : i64 loc("_25"("seahorn/lib/byte_buf_helper.c":33:24))
  %v38 = sea.icmp ult, %v35, %v37 : i64 loc("_25"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v38 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v39 = sea.nondet "nd_malloc_is_fail" [14] : i1 loc("_26"("seahorn/lib/sea_allocators.c":11:10))
  %v40 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v39, ^bb17(%v21, %v40 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb16 loc("seahorn/lib/sea_allocators.c":11:10)
^bb16:
  %v41 = sea.const 10 : i64 loc("malloc53.i7")
  %v42 = sea.alloca %v41 align 16 [15] : i64 -> !sea.ptr<64> loc("malloc53.i7")
  sea.br ^bb17(%v21, %v42 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb17(%v43 : !sea.mem<!sea.ptr<64>, i8>, %v44 : !sea.ptr<64>):
  %v45 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v46 = sea.memhavoc %v43[%v44], %v45 [16] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v47 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_29"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb18
^bb18:
  %v48 = sea.store %v36[%v47], %v44 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  sea.br ^bb19
^bb19:
  %v49 = sea.const 0 : i64 loc("_31"("aws-c-common/source/byte_buf.c":66:26))
  %v50 = sea.icmp eq, %v35, %v49 : i64 loc("_31"("aws-c-common/source/byte_buf.c":66:26))
  %v51 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v50, ^bb25(%v51 : i1), ^bb20 loc("aws-c-common/source/byte_buf.c":66:32)
^bb20:
  sea.br ^bb21
^bb21:
  sea.br ^bb22
^bb22:
  %v52 = sea.ptr.null : !sea.ptr<64> loc(".not2.i19.i"("aws-c-common/source/byte_buf.c":66:55))
  %v53 = sea.ptr.cmp eq, %v44, %v52 : !sea.ptr<64> loc(".not2.i19.i"("aws-c-common/source/byte_buf.c":66:55))
  %v54 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v53, ^bb25(%v54 : i1), ^bb23 loc("aws-c-common/source/byte_buf.c":66:67)
^bb23:
  sea.br ^bb24
^bb24:
  %v55 = sea.const 1 : i1
  sea.br ^bb25(%v55 : i1)
^bb25(%v56 : i1):
  sea.assume %v56 loc("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":29:9)
  sea.br ^bb27(%v46, %v48, %v44 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>)
^bb26:
  %v57 = sea.store %v1[%v7], %v10 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":26:15)
  %v58 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":26:15))
  %v59 = sea.store %v57[%v58], %v19 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":26:15)
  sea.br ^bb27(%v21, %v59, %v19 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":27:5)
^bb27(%v60 : !sea.mem<!sea.ptr<64>, i8>, %v61 : !sea.mem<!sea.ptr<64>, i8>, %v62 : !sea.ptr<64>):
  sea.tracking_on loc("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":33:5)
  %v63 = sea.mem.reset_modified %v60[%v19] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":34:5)
  %v64 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_40"("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":35:36))
  %v65 = sea.mem.reset_modified %v63[%v62] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":35:5)
  sea.br ^bb28
^bb28:
  %v66 = sea.load %v11[%v5] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_42"("aws-c-common/source/byte_buf.c":902:14))
  %v67 = sea.const 0 : i64 loc("_43"("aws-c-common/source/byte_buf.c":902:18))
  %v68 = sea.icmp eq, %v66, %v67 : i64 loc("_43"("aws-c-common/source/byte_buf.c":902:18))
  sea.cond_br %v68, ^bb100, ^bb29 loc("aws-c-common/source/byte_buf.c":902:23)
^bb29:
  sea.br ^bb30
^bb30:
  sea.br ^bb31
^bb31:
  %v69 = sea.load %v61[%v7] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_50"("aws-c-common/source/byte_buf.c":906:21))
  %v70 = sea.const 0 : i64 loc("_51"("aws-c-common/source/byte_buf.c":906:25))
  %v71 = sea.icmp eq, %v69, %v70 : i64 loc("_51"("aws-c-common/source/byte_buf.c":906:25))
  %v72 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":906:16)
  sea.cond_br %v71, ^bb104(%v72 : i1), ^bb32 loc("aws-c-common/source/byte_buf.c":906:16)
^bb32:
  sea.br ^bb33
^bb33:
  sea.br ^bb34
^bb34:
  sea.br ^bb35
^bb35:
  sea.br ^bb36
^bb36:
  %v73 = sea.const 0 : i64 loc("_57"("aws-c-common/source/byte_buf.c":915:21))
  %v74 = sea.icmp sgt, %v66, %v73 : i64 loc("_57"("aws-c-common/source/byte_buf.c":915:21))
  %v75 = sea.const 0 : i64 loc("_58"("aws-c-common/source/byte_buf.c":915:31))
  %v76 = sea.icmp sgt, %v69, %v75 : i64 loc("_58"("aws-c-common/source/byte_buf.c":915:31))
  %v77 = sea.and %v74, %v76 : i1 loc("_59"("aws-c-common/source/byte_buf.c":915:31))
  sea.cond_br %v77, ^bb37, ^bb97(%v74, %v76 : i1, i1) loc("aws-c-common/source/byte_buf.c":915:5)
^bb37:
  %v78 = sea.const 1 : i64 loc("_60"("aws-c-common/source/byte_buf.c":916:36))
  %v79 = sea.ptr.dereferenceable %v19, %v78 : !sea.ptr<64>, i64 loc("_60"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v79, ^bb38, ^bb255
^bb38:
  %v80 = sea.load %v65[%v19] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_63"("aws-c-common/source/byte_buf.c":916:36))
  %v81 = sea.zext %v80 : i8 to i64 loc("_64"("aws-c-common/source/byte_buf.c":916:23))
  %v82 = sea.ptr.index %v9 [%v81] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_65"("aws-c-common/source/byte_buf.c":916:23))
  %v83 = sea.const 1 : i64 loc("_66"("aws-c-common/source/byte_buf.c":916:23))
  %v84 = sea.ptr.dereferenceable %v82, %v83 : !sea.ptr<64>, i64 loc("_66"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v84, ^bb39, ^bb255
^bb39:
  %v85 = sea.load %v25[%v82] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_68"("aws-c-common/source/byte_buf.c":916:23))
  %v86 = sea.const 1 : i64 loc("_69"("aws-c-common/source/byte_buf.c":917:36))
  %v87 = sea.ptr.dereferenceable %v62, %v86 : !sea.ptr<64>, i64 loc("_69"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v87, ^bb40, ^bb255
^bb40:
  %v88 = sea.load %v65[%v62] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_71"("aws-c-common/source/byte_buf.c":917:36))
  %v89 = sea.zext %v88 : i8 to i64 loc("_72"("aws-c-common/source/byte_buf.c":917:23))
  %v90 = sea.ptr.index %v9 [%v89] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_73"("aws-c-common/source/byte_buf.c":917:23))
  %v91 = sea.const 1 : i64 loc("_74"("aws-c-common/source/byte_buf.c":917:23))
  %v92 = sea.ptr.dereferenceable %v90, %v91 : !sea.ptr<64>, i64 loc("_74"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v92, ^bb41, ^bb255
^bb41:
  %v93 = sea.load %v25[%v90] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_76"("aws-c-common/source/byte_buf.c":917:23))
  %v94 = sea.icmp eq, %v85, %v93 : i8 loc("or.cond45.not"("aws-c-common/source/byte_buf.c":921:13))
  %v95 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":921:13)
  sea.cond_br %v94, ^bb42, ^bb104(%v95 : i1) loc("aws-c-common/source/byte_buf.c":921:13)
^bb42:
  %v96 = sea.ptr.index %v19 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_78"("aws-c-common/source/byte_buf.c":929:17))
  %v97 = sea.ptr.index %v62 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_79"("aws-c-common/source/byte_buf.c":930:17))
  %v98 = sea.const 1 : i64 loc("_80"("aws-c-common/source/byte_buf.c":915:21))
  %v99 = sea.icmp ne, %v66, %v98 : i64 loc("_80"("aws-c-common/source/byte_buf.c":915:21))
  %v100 = sea.const 1 : i64 loc("_81"("aws-c-common/source/byte_buf.c":915:31))
  %v101 = sea.icmp ne, %v69, %v100 : i64 loc("_81"("aws-c-common/source/byte_buf.c":915:31))
  %v102 = sea.and %v99, %v101 : i1 loc("_82"("aws-c-common/source/byte_buf.c":915:31))
  sea.cond_br %v102, ^bb43, ^bb97(%v99, %v101 : i1, i1) loc("aws-c-common/source/byte_buf.c":915:5)
^bb43:
  %v103 = sea.const 1 : i64 loc("_83"("aws-c-common/source/byte_buf.c":916:36))
  %v104 = sea.ptr.dereferenceable %v96, %v103 : !sea.ptr<64>, i64 loc("_83"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v104, ^bb44, ^bb255
^bb44:
  %v105 = sea.load %v65[%v96] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_85"("aws-c-common/source/byte_buf.c":916:36))
  %v106 = sea.zext %v105 : i8 to i64 loc("_86"("aws-c-common/source/byte_buf.c":916:23))
  %v107 = sea.ptr.index %v9 [%v106] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_87"("aws-c-common/source/byte_buf.c":916:23))
  %v108 = sea.const 1 : i64 loc("_88"("aws-c-common/source/byte_buf.c":916:23))
  %v109 = sea.ptr.dereferenceable %v107, %v108 : !sea.ptr<64>, i64 loc("_88"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v109, ^bb45, ^bb255
^bb45:
  %v110 = sea.load %v25[%v107] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_90"("aws-c-common/source/byte_buf.c":916:23))
  %v111 = sea.const 1 : i64 loc("_91"("aws-c-common/source/byte_buf.c":917:36))
  %v112 = sea.ptr.dereferenceable %v97, %v111 : !sea.ptr<64>, i64 loc("_91"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v112, ^bb46, ^bb255
^bb46:
  %v113 = sea.load %v63[%v97] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_93"("aws-c-common/source/byte_buf.c":917:36))
  %v114 = sea.zext %v113 : i8 to i64 loc("_94"("aws-c-common/source/byte_buf.c":917:23))
  %v115 = sea.ptr.index %v9 [%v114] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_95"("aws-c-common/source/byte_buf.c":917:23))
  %v116 = sea.const 1 : i64 loc("_96"("aws-c-common/source/byte_buf.c":917:23))
  %v117 = sea.ptr.dereferenceable %v115, %v116 : !sea.ptr<64>, i64 loc("_96"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v117, ^bb47, ^bb255
^bb47:
  %v118 = sea.load %v25[%v115] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_98"("aws-c-common/source/byte_buf.c":917:23))
  %v119 = sea.icmp eq, %v110, %v118 : i8 loc("or.cond45.not.1"("aws-c-common/source/byte_buf.c":921:13))
  %v120 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":921:13)
  sea.cond_br %v119, ^bb48, ^bb104(%v120 : i1) loc("aws-c-common/source/byte_buf.c":921:13)
^bb48:
  %v121 = sea.ptr.index %v19 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_100"("aws-c-common/source/byte_buf.c":929:17))
  %v122 = sea.ptr.index %v62 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_101"("aws-c-common/source/byte_buf.c":930:17))
  %v123 = sea.const 2 : i64 loc("_102"("aws-c-common/source/byte_buf.c":915:21))
  %v124 = sea.icmp ugt, %v66, %v123 : i64 loc("_102"("aws-c-common/source/byte_buf.c":915:21))
  %v125 = sea.const 2 : i64 loc("_103"("aws-c-common/source/byte_buf.c":915:31))
  %v126 = sea.icmp ugt, %v69, %v125 : i64 loc("_103"("aws-c-common/source/byte_buf.c":915:31))
  %v127 = sea.and %v124, %v126 : i1 loc("_104"("aws-c-common/source/byte_buf.c":915:31))
  sea.cond_br %v127, ^bb49, ^bb97(%v124, %v126 : i1, i1) loc("aws-c-common/source/byte_buf.c":915:5)
^bb49:
  %v128 = sea.const 1 : i64 loc("_105"("aws-c-common/source/byte_buf.c":916:36))
  %v129 = sea.ptr.dereferenceable %v121, %v128 : !sea.ptr<64>, i64 loc("_105"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v129, ^bb50, ^bb255
^bb50:
  %v130 = sea.load %v65[%v121] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_107"("aws-c-common/source/byte_buf.c":916:36))
  %v131 = sea.zext %v130 : i8 to i64 loc("_108"("aws-c-common/source/byte_buf.c":916:23))
  %v132 = sea.ptr.index %v9 [%v131] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_109"("aws-c-common/source/byte_buf.c":916:23))
  %v133 = sea.const 1 : i64 loc("_110"("aws-c-common/source/byte_buf.c":916:23))
  %v134 = sea.ptr.dereferenceable %v132, %v133 : !sea.ptr<64>, i64 loc("_110"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v134, ^bb51, ^bb255
^bb51:
  %v135 = sea.load %v25[%v132] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_112"("aws-c-common/source/byte_buf.c":916:23))
  %v136 = sea.const 1 : i64 loc("_113"("aws-c-common/source/byte_buf.c":917:36))
  %v137 = sea.ptr.dereferenceable %v122, %v136 : !sea.ptr<64>, i64 loc("_113"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v137, ^bb52, ^bb255
^bb52:
  %v138 = sea.load %v63[%v122] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_115"("aws-c-common/source/byte_buf.c":917:36))
  %v139 = sea.zext %v138 : i8 to i64 loc("_116"("aws-c-common/source/byte_buf.c":917:23))
  %v140 = sea.ptr.index %v9 [%v139] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_117"("aws-c-common/source/byte_buf.c":917:23))
  %v141 = sea.const 1 : i64 loc("_118"("aws-c-common/source/byte_buf.c":917:23))
  %v142 = sea.ptr.dereferenceable %v140, %v141 : !sea.ptr<64>, i64 loc("_118"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v142, ^bb53, ^bb255
^bb53:
  %v143 = sea.load %v25[%v140] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_120"("aws-c-common/source/byte_buf.c":917:23))
  %v144 = sea.icmp eq, %v135, %v143 : i8 loc("or.cond45.not.2"("aws-c-common/source/byte_buf.c":921:13))
  %v145 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":921:13)
  sea.cond_br %v144, ^bb54, ^bb104(%v145 : i1) loc("aws-c-common/source/byte_buf.c":921:13)
^bb54:
  %v146 = sea.ptr.index %v19 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_122"("aws-c-common/source/byte_buf.c":929:17))
  %v147 = sea.ptr.index %v62 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_123"("aws-c-common/source/byte_buf.c":930:17))
  %v148 = sea.const 3 : i64 loc("_124"("aws-c-common/source/byte_buf.c":915:21))
  %v149 = sea.icmp ugt, %v66, %v148 : i64 loc("_124"("aws-c-common/source/byte_buf.c":915:21))
  %v150 = sea.const 3 : i64 loc("_125"("aws-c-common/source/byte_buf.c":915:31))
  %v151 = sea.icmp ugt, %v69, %v150 : i64 loc("_125"("aws-c-common/source/byte_buf.c":915:31))
  %v152 = sea.and %v149, %v151 : i1 loc("_126"("aws-c-common/source/byte_buf.c":915:31))
  sea.cond_br %v152, ^bb55, ^bb97(%v149, %v151 : i1, i1) loc("aws-c-common/source/byte_buf.c":915:5)
^bb55:
  %v153 = sea.const 1 : i64 loc("_127"("aws-c-common/source/byte_buf.c":916:36))
  %v154 = sea.ptr.dereferenceable %v146, %v153 : !sea.ptr<64>, i64 loc("_127"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v154, ^bb56, ^bb255
^bb56:
  %v155 = sea.load %v65[%v146] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_129"("aws-c-common/source/byte_buf.c":916:36))
  %v156 = sea.zext %v155 : i8 to i64 loc("_130"("aws-c-common/source/byte_buf.c":916:23))
  %v157 = sea.ptr.index %v9 [%v156] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_131"("aws-c-common/source/byte_buf.c":916:23))
  %v158 = sea.const 1 : i64 loc("_132"("aws-c-common/source/byte_buf.c":916:23))
  %v159 = sea.ptr.dereferenceable %v157, %v158 : !sea.ptr<64>, i64 loc("_132"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v159, ^bb57, ^bb255
^bb57:
  %v160 = sea.load %v25[%v157] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_134"("aws-c-common/source/byte_buf.c":916:23))
  %v161 = sea.const 1 : i64 loc("_135"("aws-c-common/source/byte_buf.c":917:36))
  %v162 = sea.ptr.dereferenceable %v147, %v161 : !sea.ptr<64>, i64 loc("_135"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v162, ^bb58, ^bb255
^bb58:
  %v163 = sea.load %v63[%v147] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_137"("aws-c-common/source/byte_buf.c":917:36))
  %v164 = sea.zext %v163 : i8 to i64 loc("_138"("aws-c-common/source/byte_buf.c":917:23))
  %v165 = sea.ptr.index %v9 [%v164] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_139"("aws-c-common/source/byte_buf.c":917:23))
  %v166 = sea.const 1 : i64 loc("_140"("aws-c-common/source/byte_buf.c":917:23))
  %v167 = sea.ptr.dereferenceable %v165, %v166 : !sea.ptr<64>, i64 loc("_140"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v167, ^bb59, ^bb255
^bb59:
  %v168 = sea.load %v25[%v165] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_142"("aws-c-common/source/byte_buf.c":917:23))
  %v169 = sea.icmp eq, %v160, %v168 : i8 loc("or.cond45.not.3"("aws-c-common/source/byte_buf.c":921:13))
  %v170 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":921:13)
  sea.cond_br %v169, ^bb60, ^bb104(%v170 : i1) loc("aws-c-common/source/byte_buf.c":921:13)
^bb60:
  %v171 = sea.ptr.index %v19 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_144"("aws-c-common/source/byte_buf.c":929:17))
  %v172 = sea.ptr.index %v62 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_145"("aws-c-common/source/byte_buf.c":930:17))
  %v173 = sea.const 4 : i64 loc("_146"("aws-c-common/source/byte_buf.c":915:21))
  %v174 = sea.icmp ugt, %v66, %v173 : i64 loc("_146"("aws-c-common/source/byte_buf.c":915:21))
  %v175 = sea.const 4 : i64 loc("_147"("aws-c-common/source/byte_buf.c":915:31))
  %v176 = sea.icmp ugt, %v69, %v175 : i64 loc("_147"("aws-c-common/source/byte_buf.c":915:31))
  %v177 = sea.and %v174, %v176 : i1 loc("_148"("aws-c-common/source/byte_buf.c":915:31))
  sea.cond_br %v177, ^bb61, ^bb97(%v174, %v176 : i1, i1) loc("aws-c-common/source/byte_buf.c":915:5)
^bb61:
  %v178 = sea.const 1 : i64 loc("_149"("aws-c-common/source/byte_buf.c":916:36))
  %v179 = sea.ptr.dereferenceable %v171, %v178 : !sea.ptr<64>, i64 loc("_149"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v179, ^bb62, ^bb255
^bb62:
  %v180 = sea.load %v65[%v171] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_151"("aws-c-common/source/byte_buf.c":916:36))
  %v181 = sea.zext %v180 : i8 to i64 loc("_152"("aws-c-common/source/byte_buf.c":916:23))
  %v182 = sea.ptr.index %v9 [%v181] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_153"("aws-c-common/source/byte_buf.c":916:23))
  %v183 = sea.const 1 : i64 loc("_154"("aws-c-common/source/byte_buf.c":916:23))
  %v184 = sea.ptr.dereferenceable %v182, %v183 : !sea.ptr<64>, i64 loc("_154"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v184, ^bb63, ^bb255
^bb63:
  %v185 = sea.load %v25[%v182] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_156"("aws-c-common/source/byte_buf.c":916:23))
  %v186 = sea.const 1 : i64 loc("_157"("aws-c-common/source/byte_buf.c":917:36))
  %v187 = sea.ptr.dereferenceable %v172, %v186 : !sea.ptr<64>, i64 loc("_157"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v187, ^bb64, ^bb255
^bb64:
  %v188 = sea.load %v63[%v172] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_159"("aws-c-common/source/byte_buf.c":917:36))
  %v189 = sea.zext %v188 : i8 to i64 loc("_160"("aws-c-common/source/byte_buf.c":917:23))
  %v190 = sea.ptr.index %v9 [%v189] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_161"("aws-c-common/source/byte_buf.c":917:23))
  %v191 = sea.const 1 : i64 loc("_162"("aws-c-common/source/byte_buf.c":917:23))
  %v192 = sea.ptr.dereferenceable %v190, %v191 : !sea.ptr<64>, i64 loc("_162"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v192, ^bb65, ^bb255
^bb65:
  %v193 = sea.load %v25[%v190] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_164"("aws-c-common/source/byte_buf.c":917:23))
  %v194 = sea.icmp eq, %v185, %v193 : i8 loc("or.cond45.not.4"("aws-c-common/source/byte_buf.c":921:13))
  %v195 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":921:13)
  sea.cond_br %v194, ^bb66, ^bb104(%v195 : i1) loc("aws-c-common/source/byte_buf.c":921:13)
^bb66:
  %v196 = sea.ptr.index %v19 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_166"("aws-c-common/source/byte_buf.c":929:17))
  %v197 = sea.ptr.index %v62 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_167"("aws-c-common/source/byte_buf.c":930:17))
  %v198 = sea.const 5 : i64 loc("_168"("aws-c-common/source/byte_buf.c":915:21))
  %v199 = sea.icmp ugt, %v66, %v198 : i64 loc("_168"("aws-c-common/source/byte_buf.c":915:21))
  %v200 = sea.const 5 : i64 loc("_169"("aws-c-common/source/byte_buf.c":915:31))
  %v201 = sea.icmp ugt, %v69, %v200 : i64 loc("_169"("aws-c-common/source/byte_buf.c":915:31))
  %v202 = sea.and %v199, %v201 : i1 loc("_170"("aws-c-common/source/byte_buf.c":915:31))
  sea.cond_br %v202, ^bb67, ^bb97(%v199, %v201 : i1, i1) loc("aws-c-common/source/byte_buf.c":915:5)
^bb67:
  %v203 = sea.const 1 : i64 loc("_171"("aws-c-common/source/byte_buf.c":916:36))
  %v204 = sea.ptr.dereferenceable %v196, %v203 : !sea.ptr<64>, i64 loc("_171"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v204, ^bb68, ^bb255
^bb68:
  %v205 = sea.load %v65[%v196] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_173"("aws-c-common/source/byte_buf.c":916:36))
  %v206 = sea.zext %v205 : i8 to i64 loc("_174"("aws-c-common/source/byte_buf.c":916:23))
  %v207 = sea.ptr.index %v9 [%v206] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_175"("aws-c-common/source/byte_buf.c":916:23))
  %v208 = sea.const 1 : i64 loc("_176"("aws-c-common/source/byte_buf.c":916:23))
  %v209 = sea.ptr.dereferenceable %v207, %v208 : !sea.ptr<64>, i64 loc("_176"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v209, ^bb69, ^bb255
^bb69:
  %v210 = sea.load %v25[%v207] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_178"("aws-c-common/source/byte_buf.c":916:23))
  %v211 = sea.const 1 : i64 loc("_179"("aws-c-common/source/byte_buf.c":917:36))
  %v212 = sea.ptr.dereferenceable %v197, %v211 : !sea.ptr<64>, i64 loc("_179"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v212, ^bb70, ^bb255
^bb70:
  %v213 = sea.load %v63[%v197] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_181"("aws-c-common/source/byte_buf.c":917:36))
  %v214 = sea.zext %v213 : i8 to i64 loc("_182"("aws-c-common/source/byte_buf.c":917:23))
  %v215 = sea.ptr.index %v9 [%v214] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_183"("aws-c-common/source/byte_buf.c":917:23))
  %v216 = sea.const 1 : i64 loc("_184"("aws-c-common/source/byte_buf.c":917:23))
  %v217 = sea.ptr.dereferenceable %v215, %v216 : !sea.ptr<64>, i64 loc("_184"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v217, ^bb71, ^bb255
^bb71:
  %v218 = sea.load %v25[%v215] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_186"("aws-c-common/source/byte_buf.c":917:23))
  %v219 = sea.icmp eq, %v210, %v218 : i8 loc("or.cond45.not.5"("aws-c-common/source/byte_buf.c":921:13))
  %v220 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":921:13)
  sea.cond_br %v219, ^bb72, ^bb104(%v220 : i1) loc("aws-c-common/source/byte_buf.c":921:13)
^bb72:
  %v221 = sea.ptr.index %v19 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_188"("aws-c-common/source/byte_buf.c":929:17))
  %v222 = sea.ptr.index %v62 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_189"("aws-c-common/source/byte_buf.c":930:17))
  %v223 = sea.const 6 : i64 loc("_190"("aws-c-common/source/byte_buf.c":915:21))
  %v224 = sea.icmp ugt, %v66, %v223 : i64 loc("_190"("aws-c-common/source/byte_buf.c":915:21))
  %v225 = sea.const 6 : i64 loc("_191"("aws-c-common/source/byte_buf.c":915:31))
  %v226 = sea.icmp ugt, %v69, %v225 : i64 loc("_191"("aws-c-common/source/byte_buf.c":915:31))
  %v227 = sea.and %v224, %v226 : i1 loc("_192"("aws-c-common/source/byte_buf.c":915:31))
  sea.cond_br %v227, ^bb73, ^bb97(%v224, %v226 : i1, i1) loc("aws-c-common/source/byte_buf.c":915:5)
^bb73:
  %v228 = sea.const 1 : i64 loc("_193"("aws-c-common/source/byte_buf.c":916:36))
  %v229 = sea.ptr.dereferenceable %v221, %v228 : !sea.ptr<64>, i64 loc("_193"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v229, ^bb74, ^bb255
^bb74:
  %v230 = sea.load %v65[%v221] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_195"("aws-c-common/source/byte_buf.c":916:36))
  %v231 = sea.zext %v230 : i8 to i64 loc("_196"("aws-c-common/source/byte_buf.c":916:23))
  %v232 = sea.ptr.index %v9 [%v231] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_197"("aws-c-common/source/byte_buf.c":916:23))
  %v233 = sea.const 1 : i64 loc("_198"("aws-c-common/source/byte_buf.c":916:23))
  %v234 = sea.ptr.dereferenceable %v232, %v233 : !sea.ptr<64>, i64 loc("_198"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v234, ^bb75, ^bb255
^bb75:
  %v235 = sea.load %v25[%v232] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_200"("aws-c-common/source/byte_buf.c":916:23))
  %v236 = sea.const 1 : i64 loc("_201"("aws-c-common/source/byte_buf.c":917:36))
  %v237 = sea.ptr.dereferenceable %v222, %v236 : !sea.ptr<64>, i64 loc("_201"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v237, ^bb76, ^bb255
^bb76:
  %v238 = sea.load %v63[%v222] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_203"("aws-c-common/source/byte_buf.c":917:36))
  %v239 = sea.zext %v238 : i8 to i64 loc("_204"("aws-c-common/source/byte_buf.c":917:23))
  %v240 = sea.ptr.index %v9 [%v239] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_205"("aws-c-common/source/byte_buf.c":917:23))
  %v241 = sea.const 1 : i64 loc("_206"("aws-c-common/source/byte_buf.c":917:23))
  %v242 = sea.ptr.dereferenceable %v240, %v241 : !sea.ptr<64>, i64 loc("_206"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v242, ^bb77, ^bb255
^bb77:
  %v243 = sea.load %v25[%v240] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_208"("aws-c-common/source/byte_buf.c":917:23))
  %v244 = sea.icmp eq, %v235, %v243 : i8 loc("or.cond45.not.6"("aws-c-common/source/byte_buf.c":921:13))
  %v245 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":921:13)
  sea.cond_br %v244, ^bb78, ^bb104(%v245 : i1) loc("aws-c-common/source/byte_buf.c":921:13)
^bb78:
  %v246 = sea.ptr.index %v19 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_210"("aws-c-common/source/byte_buf.c":929:17))
  %v247 = sea.ptr.index %v62 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_211"("aws-c-common/source/byte_buf.c":930:17))
  %v248 = sea.const 7 : i64 loc("_212"("aws-c-common/source/byte_buf.c":915:21))
  %v249 = sea.icmp ugt, %v66, %v248 : i64 loc("_212"("aws-c-common/source/byte_buf.c":915:21))
  %v250 = sea.const 7 : i64 loc("_213"("aws-c-common/source/byte_buf.c":915:31))
  %v251 = sea.icmp ugt, %v69, %v250 : i64 loc("_213"("aws-c-common/source/byte_buf.c":915:31))
  %v252 = sea.and %v249, %v251 : i1 loc("_214"("aws-c-common/source/byte_buf.c":915:31))
  sea.cond_br %v252, ^bb79, ^bb97(%v249, %v251 : i1, i1) loc("aws-c-common/source/byte_buf.c":915:5)
^bb79:
  %v253 = sea.const 1 : i64 loc("_215"("aws-c-common/source/byte_buf.c":916:36))
  %v254 = sea.ptr.dereferenceable %v246, %v253 : !sea.ptr<64>, i64 loc("_215"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v254, ^bb80, ^bb255
^bb80:
  %v255 = sea.load %v65[%v246] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_217"("aws-c-common/source/byte_buf.c":916:36))
  %v256 = sea.zext %v255 : i8 to i64 loc("_218"("aws-c-common/source/byte_buf.c":916:23))
  %v257 = sea.ptr.index %v9 [%v256] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_219"("aws-c-common/source/byte_buf.c":916:23))
  %v258 = sea.const 1 : i64 loc("_220"("aws-c-common/source/byte_buf.c":916:23))
  %v259 = sea.ptr.dereferenceable %v257, %v258 : !sea.ptr<64>, i64 loc("_220"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v259, ^bb81, ^bb255
^bb81:
  %v260 = sea.load %v25[%v257] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_222"("aws-c-common/source/byte_buf.c":916:23))
  %v261 = sea.const 1 : i64 loc("_223"("aws-c-common/source/byte_buf.c":917:36))
  %v262 = sea.ptr.dereferenceable %v247, %v261 : !sea.ptr<64>, i64 loc("_223"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v262, ^bb82, ^bb255
^bb82:
  %v263 = sea.load %v63[%v247] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_225"("aws-c-common/source/byte_buf.c":917:36))
  %v264 = sea.zext %v263 : i8 to i64 loc("_226"("aws-c-common/source/byte_buf.c":917:23))
  %v265 = sea.ptr.index %v9 [%v264] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_227"("aws-c-common/source/byte_buf.c":917:23))
  %v266 = sea.const 1 : i64 loc("_228"("aws-c-common/source/byte_buf.c":917:23))
  %v267 = sea.ptr.dereferenceable %v265, %v266 : !sea.ptr<64>, i64 loc("_228"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v267, ^bb83, ^bb255
^bb83:
  %v268 = sea.load %v25[%v265] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_230"("aws-c-common/source/byte_buf.c":917:23))
  %v269 = sea.icmp eq, %v260, %v268 : i8 loc("or.cond45.not.7"("aws-c-common/source/byte_buf.c":921:13))
  %v270 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":921:13)
  sea.cond_br %v269, ^bb84, ^bb104(%v270 : i1) loc("aws-c-common/source/byte_buf.c":921:13)
^bb84:
  %v271 = sea.ptr.index %v19 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_232"("aws-c-common/source/byte_buf.c":929:17))
  %v272 = sea.ptr.index %v62 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_233"("aws-c-common/source/byte_buf.c":930:17))
  %v273 = sea.const 8 : i64 loc("_234"("aws-c-common/source/byte_buf.c":915:21))
  %v274 = sea.icmp ugt, %v66, %v273 : i64 loc("_234"("aws-c-common/source/byte_buf.c":915:21))
  %v275 = sea.const 8 : i64 loc("_235"("aws-c-common/source/byte_buf.c":915:31))
  %v276 = sea.icmp ugt, %v69, %v275 : i64 loc("_235"("aws-c-common/source/byte_buf.c":915:31))
  %v277 = sea.and %v274, %v276 : i1 loc("_236"("aws-c-common/source/byte_buf.c":915:31))
  sea.cond_br %v277, ^bb85, ^bb97(%v274, %v276 : i1, i1) loc("aws-c-common/source/byte_buf.c":915:5)
^bb85:
  %v278 = sea.const 1 : i64 loc("_237"("aws-c-common/source/byte_buf.c":916:36))
  %v279 = sea.ptr.dereferenceable %v271, %v278 : !sea.ptr<64>, i64 loc("_237"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v279, ^bb86, ^bb255
^bb86:
  %v280 = sea.load %v65[%v271] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_239"("aws-c-common/source/byte_buf.c":916:36))
  %v281 = sea.zext %v280 : i8 to i64 loc("_240"("aws-c-common/source/byte_buf.c":916:23))
  %v282 = sea.ptr.index %v9 [%v281] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_241"("aws-c-common/source/byte_buf.c":916:23))
  %v283 = sea.const 1 : i64 loc("_242"("aws-c-common/source/byte_buf.c":916:23))
  %v284 = sea.ptr.dereferenceable %v282, %v283 : !sea.ptr<64>, i64 loc("_242"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v284, ^bb87, ^bb255
^bb87:
  %v285 = sea.load %v25[%v282] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_244"("aws-c-common/source/byte_buf.c":916:23))
  %v286 = sea.const 1 : i64 loc("_245"("aws-c-common/source/byte_buf.c":917:36))
  %v287 = sea.ptr.dereferenceable %v272, %v286 : !sea.ptr<64>, i64 loc("_245"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v287, ^bb88, ^bb255
^bb88:
  %v288 = sea.load %v63[%v272] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_247"("aws-c-common/source/byte_buf.c":917:36))
  %v289 = sea.zext %v288 : i8 to i64 loc("_248"("aws-c-common/source/byte_buf.c":917:23))
  %v290 = sea.ptr.index %v9 [%v289] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_249"("aws-c-common/source/byte_buf.c":917:23))
  %v291 = sea.const 1 : i64 loc("_250"("aws-c-common/source/byte_buf.c":917:23))
  %v292 = sea.ptr.dereferenceable %v290, %v291 : !sea.ptr<64>, i64 loc("_250"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v292, ^bb89, ^bb255
^bb89:
  %v293 = sea.load %v25[%v290] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_252"("aws-c-common/source/byte_buf.c":917:23))
  %v294 = sea.icmp eq, %v285, %v293 : i8 loc("or.cond45.not.8"("aws-c-common/source/byte_buf.c":921:13))
  %v295 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":921:13)
  sea.cond_br %v294, ^bb90, ^bb104(%v295 : i1) loc("aws-c-common/source/byte_buf.c":921:13)
^bb90:
  %v296 = sea.ptr.index %v19 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_254"("aws-c-common/source/byte_buf.c":929:17))
  %v297 = sea.ptr.index %v62 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_255"("aws-c-common/source/byte_buf.c":930:17))
  %v298 = sea.const 9 : i64 loc("_256"("aws-c-common/source/byte_buf.c":915:21))
  %v299 = sea.icmp ugt, %v66, %v298 : i64 loc("_256"("aws-c-common/source/byte_buf.c":915:21))
  %v300 = sea.const 9 : i64 loc("_257"("aws-c-common/source/byte_buf.c":915:31))
  %v301 = sea.icmp ugt, %v69, %v300 : i64 loc("_257"("aws-c-common/source/byte_buf.c":915:31))
  %v302 = sea.and %v299, %v301 : i1 loc("_258"("aws-c-common/source/byte_buf.c":915:31))
  sea.cond_br %v302, ^bb91, ^bb97(%v299, %v301 : i1, i1) loc("aws-c-common/source/byte_buf.c":915:5)
^bb91:
  %v303 = sea.const 1 : i64 loc("_259"("aws-c-common/source/byte_buf.c":916:36))
  %v304 = sea.ptr.dereferenceable %v296, %v303 : !sea.ptr<64>, i64 loc("_259"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v304, ^bb92, ^bb255
^bb92:
  %v305 = sea.load %v65[%v296] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_261"("aws-c-common/source/byte_buf.c":916:36))
  %v306 = sea.zext %v305 : i8 to i64 loc("_262"("aws-c-common/source/byte_buf.c":916:23))
  %v307 = sea.ptr.index %v9 [%v306] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_263"("aws-c-common/source/byte_buf.c":916:23))
  %v308 = sea.const 1 : i64 loc("_264"("aws-c-common/source/byte_buf.c":916:23))
  %v309 = sea.ptr.dereferenceable %v307, %v308 : !sea.ptr<64>, i64 loc("_264"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v309, ^bb93, ^bb255
^bb93:
  %v310 = sea.load %v25[%v307] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_266"("aws-c-common/source/byte_buf.c":916:23))
  %v311 = sea.const 1 : i64 loc("_267"("aws-c-common/source/byte_buf.c":917:36))
  %v312 = sea.ptr.dereferenceable %v297, %v311 : !sea.ptr<64>, i64 loc("_267"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v312, ^bb94, ^bb255
^bb94:
  %v313 = sea.load %v63[%v297] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_269"("aws-c-common/source/byte_buf.c":917:36))
  %v314 = sea.zext %v313 : i8 to i64 loc("_270"("aws-c-common/source/byte_buf.c":917:23))
  %v315 = sea.ptr.index %v9 [%v314] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_271"("aws-c-common/source/byte_buf.c":917:23))
  %v316 = sea.const 1 : i64 loc("_272"("aws-c-common/source/byte_buf.c":917:23))
  %v317 = sea.ptr.dereferenceable %v315, %v316 : !sea.ptr<64>, i64 loc("_272"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v317, ^bb95, ^bb255
^bb95:
  %v318 = sea.load %v25[%v315] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_274"("aws-c-common/source/byte_buf.c":917:23))
  %v319 = sea.icmp eq, %v310, %v318 : i8 loc("or.cond45.not.9"("aws-c-common/source/byte_buf.c":921:13))
  %v320 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":921:13)
  sea.cond_br %v319, ^bb96, ^bb104(%v320 : i1) loc("aws-c-common/source/byte_buf.c":921:13)
^bb96:
  %v321 = sea.const 10 : i64 loc("_276"("aws-c-common/source/byte_buf.c":915:21))
  %v322 = sea.icmp ugt, %v66, %v321 : i64 loc("_276"("aws-c-common/source/byte_buf.c":915:21))
  %v323 = sea.const 10 : i64 loc("_277"("aws-c-common/source/byte_buf.c":915:31))
  %v324 = sea.icmp ugt, %v69, %v323 : i64 loc("_277"("aws-c-common/source/byte_buf.c":915:31))
  %v325 = sea.and %v322, %v324 : i1 loc("_278"("aws-c-common/source/byte_buf.c":915:31))
  sea.cond_br %v325, ^bb99, ^bb97(%v322, %v324 : i1, i1) loc("aws-c-common/source/byte_buf.c":915:5)
^bb97(%v326 : i1, %v327 : i1):
  %v328 = sea.or %v326, %v327 : i1 loc("_279"("aws-c-common/source/byte_buf.c":935:9))
  %v329 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":935:9)
  sea.cond_br %v328, ^bb104(%v329 : i1), ^bb98 loc("aws-c-common/source/byte_buf.c":935:9)
^bb98:
  %v330 = sea.icmp eq, %v66, %v69 : i64 loc("_280"("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":39:9))
  %v331 = sea.const 0 : i1 loc("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":39:9)
  sea.cond_br %v330, ^bb104(%v331 : i1), ^bb255 loc("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":39:9)
^bb99:
  %v332 = sea.ptr.index %v19 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_61"("aws-c-common/source/byte_buf.c":929:17))
  %v333 = sea.const 1 : i64 loc("_62"("aws-c-common/source/byte_buf.c":916:36))
  %v334 = sea.ptr.dereferenceable %v332, %v333 : !sea.ptr<64>, i64 loc("_62"("aws-c-common/source/byte_buf.c":916:36))
  %v335 = sea.const 1 : i1
  %v336 = sea.xor %v334, %v335 : i1
  sea.assume %v336
  sea.br ^bb255
^bb100:
  sea.br ^bb101
^bb101:
  %v337 = sea.load %v61[%v7] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_46"("aws-c-common/source/byte_buf.c":902:31))
  %v338 = sea.const 0 : i64 loc("_47"("aws-c-common/source/byte_buf.c":902:35))
  %v339 = sea.icmp eq, %v337, %v338 : i64 loc("_47"("aws-c-common/source/byte_buf.c":902:35))
  sea.cond_br %v339, ^bb103, ^bb102 loc("aws-c-common/source/byte_buf.c":902:9)
^bb102:
  %v340 = sea.const 0 : i1
  sea.br ^bb104(%v340 : i1)
^bb103:
  %v341 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":39:9)
  sea.br ^bb104(%v341 : i1) loc("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":39:9)
^bb104(%v342 : i1):
  sea.br ^bb105
^bb105:
  sea.cond_br %v68, ^bb164, ^bb106 loc("aws-c-common/source/byte_buf.c":902:23)
^bb106:
  sea.br ^bb107
^bb107:
  sea.br ^bb108
^bb108:
  sea.br ^bb109
^bb109:
  sea.br ^bb110
^bb110:
  %v343 = sea.ptr.index %v19 [%v66] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_289"("aws-c-common/source/byte_buf.c":910:39))
  sea.br ^bb111
^bb111:
  sea.br ^bb112
^bb112:
  %v344 = sea.const 0 : i64 loc("_291"("aws-c-common/source/byte_buf.c":915:21))
  %v345 = sea.icmp sgt, %v66, %v344 : i64 loc("_291"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v345, ^bb113, ^bb165 loc("aws-c-common/source/byte_buf.c":915:5)
^bb113:
  %v346 = sea.const 1 : i64 loc("_292"("aws-c-common/source/byte_buf.c":916:36))
  %v347 = sea.ptr.dereferenceable %v19, %v346 : !sea.ptr<64>, i64 loc("_292"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v347, ^bb114, ^bb255
^bb114:
  %v348 = sea.load %v65[%v19] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_294"("aws-c-common/source/byte_buf.c":916:36))
  %v349 = sea.zext %v348 : i8 to i64 loc("_295"("aws-c-common/source/byte_buf.c":916:23))
  %v350 = sea.ptr.index %v9 [%v349] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_296"("aws-c-common/source/byte_buf.c":916:23))
  %v351 = sea.const 1 : i64 loc("_297"("aws-c-common/source/byte_buf.c":916:23))
  %v352 = sea.ptr.dereferenceable %v350, %v351 : !sea.ptr<64>, i64 loc("_297"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v352, ^bb115, ^bb255
^bb115:
  %v353 = sea.const 1 : i64 loc("_299"("aws-c-common/source/byte_buf.c":917:36))
  %v354 = sea.ptr.dereferenceable %v19, %v353 : !sea.ptr<64>, i64 loc("_299"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v354, ^bb116, ^bb255
^bb116:
  %v355 = sea.const 1 : i64 loc("_301"("aws-c-common/source/byte_buf.c":917:23))
  %v356 = sea.ptr.dereferenceable %v350, %v355 : !sea.ptr<64>, i64 loc("_301"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v356, ^bb117, ^bb255
^bb117:
  %v357 = sea.const 1 : i64 loc("_303"("aws-c-common/source/byte_buf.c":930:17))
  %v358 = sea.ptr.add %v19, %v357 : !sea.ptr<64>, i64 loc("_303"("aws-c-common/source/byte_buf.c":930:17))
  %v359 = sea.ptr.cmp ult, %v358, %v343 : !sea.ptr<64> loc("_304"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v359, ^bb118, ^bb165 loc("aws-c-common/source/byte_buf.c":915:5)
^bb118:
  %v360 = sea.const 1 : i64 loc("_305"("aws-c-common/source/byte_buf.c":916:36))
  %v361 = sea.ptr.dereferenceable %v358, %v360 : !sea.ptr<64>, i64 loc("_305"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v361, ^bb119, ^bb255
^bb119:
  %v362 = sea.load %v65[%v358] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_307"("aws-c-common/source/byte_buf.c":916:36))
  %v363 = sea.zext %v362 : i8 to i64 loc("_308"("aws-c-common/source/byte_buf.c":916:23))
  %v364 = sea.ptr.index %v9 [%v363] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_309"("aws-c-common/source/byte_buf.c":916:23))
  %v365 = sea.const 1 : i64 loc("_310"("aws-c-common/source/byte_buf.c":916:23))
  %v366 = sea.ptr.dereferenceable %v364, %v365 : !sea.ptr<64>, i64 loc("_310"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v366, ^bb120, ^bb255
^bb120:
  %v367 = sea.const 1 : i64 loc("_312"("aws-c-common/source/byte_buf.c":917:36))
  %v368 = sea.ptr.dereferenceable %v358, %v367 : !sea.ptr<64>, i64 loc("_312"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v368, ^bb121, ^bb255
^bb121:
  %v369 = sea.const 1 : i64 loc("_314"("aws-c-common/source/byte_buf.c":917:23))
  %v370 = sea.ptr.dereferenceable %v364, %v369 : !sea.ptr<64>, i64 loc("_314"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v370, ^bb122, ^bb255
^bb122:
  %v371 = sea.const 2 : i64 loc("_316"("aws-c-common/source/byte_buf.c":930:17))
  %v372 = sea.ptr.add %v19, %v371 : !sea.ptr<64>, i64 loc("_316"("aws-c-common/source/byte_buf.c":930:17))
  %v373 = sea.ptr.cmp ult, %v372, %v343 : !sea.ptr<64> loc("_317"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v373, ^bb123, ^bb165 loc("aws-c-common/source/byte_buf.c":915:5)
^bb123:
  %v374 = sea.const 1 : i64 loc("_318"("aws-c-common/source/byte_buf.c":916:36))
  %v375 = sea.ptr.dereferenceable %v372, %v374 : !sea.ptr<64>, i64 loc("_318"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v375, ^bb124, ^bb255
^bb124:
  %v376 = sea.load %v65[%v372] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_320"("aws-c-common/source/byte_buf.c":916:36))
  %v377 = sea.zext %v376 : i8 to i64 loc("_321"("aws-c-common/source/byte_buf.c":916:23))
  %v378 = sea.ptr.index %v9 [%v377] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_322"("aws-c-common/source/byte_buf.c":916:23))
  %v379 = sea.const 1 : i64 loc("_323"("aws-c-common/source/byte_buf.c":916:23))
  %v380 = sea.ptr.dereferenceable %v378, %v379 : !sea.ptr<64>, i64 loc("_323"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v380, ^bb125, ^bb255
^bb125:
  %v381 = sea.const 1 : i64 loc("_325"("aws-c-common/source/byte_buf.c":917:36))
  %v382 = sea.ptr.dereferenceable %v372, %v381 : !sea.ptr<64>, i64 loc("_325"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v382, ^bb126, ^bb255
^bb126:
  %v383 = sea.const 1 : i64 loc("_327"("aws-c-common/source/byte_buf.c":917:23))
  %v384 = sea.ptr.dereferenceable %v378, %v383 : !sea.ptr<64>, i64 loc("_327"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v384, ^bb127, ^bb255
^bb127:
  %v385 = sea.const 3 : i64 loc("_329"("aws-c-common/source/byte_buf.c":930:17))
  %v386 = sea.ptr.add %v19, %v385 : !sea.ptr<64>, i64 loc("_329"("aws-c-common/source/byte_buf.c":930:17))
  %v387 = sea.ptr.cmp ult, %v386, %v343 : !sea.ptr<64> loc("_330"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v387, ^bb128, ^bb165 loc("aws-c-common/source/byte_buf.c":915:5)
^bb128:
  %v388 = sea.const 1 : i64 loc("_331"("aws-c-common/source/byte_buf.c":916:36))
  %v389 = sea.ptr.dereferenceable %v386, %v388 : !sea.ptr<64>, i64 loc("_331"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v389, ^bb129, ^bb255
^bb129:
  %v390 = sea.load %v65[%v386] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_333"("aws-c-common/source/byte_buf.c":916:36))
  %v391 = sea.zext %v390 : i8 to i64 loc("_334"("aws-c-common/source/byte_buf.c":916:23))
  %v392 = sea.ptr.index %v9 [%v391] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_335"("aws-c-common/source/byte_buf.c":916:23))
  %v393 = sea.const 1 : i64 loc("_336"("aws-c-common/source/byte_buf.c":916:23))
  %v394 = sea.ptr.dereferenceable %v392, %v393 : !sea.ptr<64>, i64 loc("_336"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v394, ^bb130, ^bb255
^bb130:
  %v395 = sea.const 1 : i64 loc("_338"("aws-c-common/source/byte_buf.c":917:36))
  %v396 = sea.ptr.dereferenceable %v386, %v395 : !sea.ptr<64>, i64 loc("_338"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v396, ^bb131, ^bb255
^bb131:
  %v397 = sea.const 1 : i64 loc("_340"("aws-c-common/source/byte_buf.c":917:23))
  %v398 = sea.ptr.dereferenceable %v392, %v397 : !sea.ptr<64>, i64 loc("_340"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v398, ^bb132, ^bb255
^bb132:
  %v399 = sea.const 4 : i64 loc("_342"("aws-c-common/source/byte_buf.c":930:17))
  %v400 = sea.ptr.add %v19, %v399 : !sea.ptr<64>, i64 loc("_342"("aws-c-common/source/byte_buf.c":930:17))
  %v401 = sea.ptr.cmp ult, %v400, %v343 : !sea.ptr<64> loc("_343"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v401, ^bb133, ^bb165 loc("aws-c-common/source/byte_buf.c":915:5)
^bb133:
  %v402 = sea.const 1 : i64 loc("_344"("aws-c-common/source/byte_buf.c":916:36))
  %v403 = sea.ptr.dereferenceable %v400, %v402 : !sea.ptr<64>, i64 loc("_344"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v403, ^bb134, ^bb255
^bb134:
  %v404 = sea.load %v65[%v400] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_346"("aws-c-common/source/byte_buf.c":916:36))
  %v405 = sea.zext %v404 : i8 to i64 loc("_347"("aws-c-common/source/byte_buf.c":916:23))
  %v406 = sea.ptr.index %v9 [%v405] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_348"("aws-c-common/source/byte_buf.c":916:23))
  %v407 = sea.const 1 : i64 loc("_349"("aws-c-common/source/byte_buf.c":916:23))
  %v408 = sea.ptr.dereferenceable %v406, %v407 : !sea.ptr<64>, i64 loc("_349"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v408, ^bb135, ^bb255
^bb135:
  %v409 = sea.const 1 : i64 loc("_351"("aws-c-common/source/byte_buf.c":917:36))
  %v410 = sea.ptr.dereferenceable %v400, %v409 : !sea.ptr<64>, i64 loc("_351"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v410, ^bb136, ^bb255
^bb136:
  %v411 = sea.const 1 : i64 loc("_353"("aws-c-common/source/byte_buf.c":917:23))
  %v412 = sea.ptr.dereferenceable %v406, %v411 : !sea.ptr<64>, i64 loc("_353"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v412, ^bb137, ^bb255
^bb137:
  %v413 = sea.const 5 : i64 loc("_355"("aws-c-common/source/byte_buf.c":930:17))
  %v414 = sea.ptr.add %v19, %v413 : !sea.ptr<64>, i64 loc("_355"("aws-c-common/source/byte_buf.c":930:17))
  %v415 = sea.ptr.cmp ult, %v414, %v343 : !sea.ptr<64> loc("_356"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v415, ^bb138, ^bb165 loc("aws-c-common/source/byte_buf.c":915:5)
^bb138:
  %v416 = sea.const 1 : i64 loc("_357"("aws-c-common/source/byte_buf.c":916:36))
  %v417 = sea.ptr.dereferenceable %v414, %v416 : !sea.ptr<64>, i64 loc("_357"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v417, ^bb139, ^bb255
^bb139:
  %v418 = sea.load %v65[%v414] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_359"("aws-c-common/source/byte_buf.c":916:36))
  %v419 = sea.zext %v418 : i8 to i64 loc("_360"("aws-c-common/source/byte_buf.c":916:23))
  %v420 = sea.ptr.index %v9 [%v419] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_361"("aws-c-common/source/byte_buf.c":916:23))
  %v421 = sea.const 1 : i64 loc("_362"("aws-c-common/source/byte_buf.c":916:23))
  %v422 = sea.ptr.dereferenceable %v420, %v421 : !sea.ptr<64>, i64 loc("_362"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v422, ^bb140, ^bb255
^bb140:
  %v423 = sea.const 1 : i64 loc("_364"("aws-c-common/source/byte_buf.c":917:36))
  %v424 = sea.ptr.dereferenceable %v414, %v423 : !sea.ptr<64>, i64 loc("_364"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v424, ^bb141, ^bb255
^bb141:
  %v425 = sea.const 1 : i64 loc("_366"("aws-c-common/source/byte_buf.c":917:23))
  %v426 = sea.ptr.dereferenceable %v420, %v425 : !sea.ptr<64>, i64 loc("_366"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v426, ^bb142, ^bb255
^bb142:
  %v427 = sea.const 6 : i64 loc("_368"("aws-c-common/source/byte_buf.c":930:17))
  %v428 = sea.ptr.add %v19, %v427 : !sea.ptr<64>, i64 loc("_368"("aws-c-common/source/byte_buf.c":930:17))
  %v429 = sea.ptr.cmp ult, %v428, %v343 : !sea.ptr<64> loc("_369"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v429, ^bb143, ^bb165 loc("aws-c-common/source/byte_buf.c":915:5)
^bb143:
  %v430 = sea.const 1 : i64 loc("_370"("aws-c-common/source/byte_buf.c":916:36))
  %v431 = sea.ptr.dereferenceable %v428, %v430 : !sea.ptr<64>, i64 loc("_370"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v431, ^bb144, ^bb255
^bb144:
  %v432 = sea.load %v65[%v428] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_372"("aws-c-common/source/byte_buf.c":916:36))
  %v433 = sea.zext %v432 : i8 to i64 loc("_373"("aws-c-common/source/byte_buf.c":916:23))
  %v434 = sea.ptr.index %v9 [%v433] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_374"("aws-c-common/source/byte_buf.c":916:23))
  %v435 = sea.const 1 : i64 loc("_375"("aws-c-common/source/byte_buf.c":916:23))
  %v436 = sea.ptr.dereferenceable %v434, %v435 : !sea.ptr<64>, i64 loc("_375"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v436, ^bb145, ^bb255
^bb145:
  %v437 = sea.const 1 : i64 loc("_377"("aws-c-common/source/byte_buf.c":917:36))
  %v438 = sea.ptr.dereferenceable %v428, %v437 : !sea.ptr<64>, i64 loc("_377"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v438, ^bb146, ^bb255
^bb146:
  %v439 = sea.const 1 : i64 loc("_379"("aws-c-common/source/byte_buf.c":917:23))
  %v440 = sea.ptr.dereferenceable %v434, %v439 : !sea.ptr<64>, i64 loc("_379"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v440, ^bb147, ^bb255
^bb147:
  %v441 = sea.const 7 : i64 loc("_381"("aws-c-common/source/byte_buf.c":930:17))
  %v442 = sea.ptr.add %v19, %v441 : !sea.ptr<64>, i64 loc("_381"("aws-c-common/source/byte_buf.c":930:17))
  %v443 = sea.ptr.cmp ult, %v442, %v343 : !sea.ptr<64> loc("_382"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v443, ^bb148, ^bb165 loc("aws-c-common/source/byte_buf.c":915:5)
^bb148:
  %v444 = sea.const 1 : i64 loc("_383"("aws-c-common/source/byte_buf.c":916:36))
  %v445 = sea.ptr.dereferenceable %v442, %v444 : !sea.ptr<64>, i64 loc("_383"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v445, ^bb149, ^bb255
^bb149:
  %v446 = sea.load %v65[%v442] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_385"("aws-c-common/source/byte_buf.c":916:36))
  %v447 = sea.zext %v446 : i8 to i64 loc("_386"("aws-c-common/source/byte_buf.c":916:23))
  %v448 = sea.ptr.index %v9 [%v447] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_387"("aws-c-common/source/byte_buf.c":916:23))
  %v449 = sea.const 1 : i64 loc("_388"("aws-c-common/source/byte_buf.c":916:23))
  %v450 = sea.ptr.dereferenceable %v448, %v449 : !sea.ptr<64>, i64 loc("_388"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v450, ^bb150, ^bb255
^bb150:
  %v451 = sea.const 1 : i64 loc("_390"("aws-c-common/source/byte_buf.c":917:36))
  %v452 = sea.ptr.dereferenceable %v442, %v451 : !sea.ptr<64>, i64 loc("_390"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v452, ^bb151, ^bb255
^bb151:
  %v453 = sea.const 1 : i64 loc("_392"("aws-c-common/source/byte_buf.c":917:23))
  %v454 = sea.ptr.dereferenceable %v448, %v453 : !sea.ptr<64>, i64 loc("_392"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v454, ^bb152, ^bb255
^bb152:
  %v455 = sea.const 8 : i64 loc("_394"("aws-c-common/source/byte_buf.c":930:17))
  %v456 = sea.ptr.add %v19, %v455 : !sea.ptr<64>, i64 loc("_394"("aws-c-common/source/byte_buf.c":930:17))
  %v457 = sea.ptr.cmp ult, %v456, %v343 : !sea.ptr<64> loc("_395"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v457, ^bb153, ^bb165 loc("aws-c-common/source/byte_buf.c":915:5)
^bb153:
  %v458 = sea.const 1 : i64 loc("_396"("aws-c-common/source/byte_buf.c":916:36))
  %v459 = sea.ptr.dereferenceable %v456, %v458 : !sea.ptr<64>, i64 loc("_396"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v459, ^bb154, ^bb255
^bb154:
  %v460 = sea.load %v65[%v456] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_398"("aws-c-common/source/byte_buf.c":916:36))
  %v461 = sea.zext %v460 : i8 to i64 loc("_399"("aws-c-common/source/byte_buf.c":916:23))
  %v462 = sea.ptr.index %v9 [%v461] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_400"("aws-c-common/source/byte_buf.c":916:23))
  %v463 = sea.const 1 : i64 loc("_401"("aws-c-common/source/byte_buf.c":916:23))
  %v464 = sea.ptr.dereferenceable %v462, %v463 : !sea.ptr<64>, i64 loc("_401"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v464, ^bb155, ^bb255
^bb155:
  %v465 = sea.const 1 : i64 loc("_403"("aws-c-common/source/byte_buf.c":917:36))
  %v466 = sea.ptr.dereferenceable %v456, %v465 : !sea.ptr<64>, i64 loc("_403"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v466, ^bb156, ^bb255
^bb156:
  %v467 = sea.const 1 : i64 loc("_405"("aws-c-common/source/byte_buf.c":917:23))
  %v468 = sea.ptr.dereferenceable %v462, %v467 : !sea.ptr<64>, i64 loc("_405"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v468, ^bb157, ^bb255
^bb157:
  %v469 = sea.const 9 : i64 loc("_407"("aws-c-common/source/byte_buf.c":930:17))
  %v470 = sea.ptr.add %v19, %v469 : !sea.ptr<64>, i64 loc("_407"("aws-c-common/source/byte_buf.c":930:17))
  %v471 = sea.ptr.cmp ult, %v470, %v343 : !sea.ptr<64> loc("_408"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v471, ^bb158, ^bb165 loc("aws-c-common/source/byte_buf.c":915:5)
^bb158:
  %v472 = sea.const 1 : i64 loc("_409"("aws-c-common/source/byte_buf.c":916:36))
  %v473 = sea.ptr.dereferenceable %v470, %v472 : !sea.ptr<64>, i64 loc("_409"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v473, ^bb159, ^bb255
^bb159:
  %v474 = sea.load %v65[%v470] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_411"("aws-c-common/source/byte_buf.c":916:36))
  %v475 = sea.zext %v474 : i8 to i64 loc("_412"("aws-c-common/source/byte_buf.c":916:23))
  %v476 = sea.ptr.index %v9 [%v475] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_413"("aws-c-common/source/byte_buf.c":916:23))
  %v477 = sea.const 1 : i64 loc("_414"("aws-c-common/source/byte_buf.c":916:23))
  %v478 = sea.ptr.dereferenceable %v476, %v477 : !sea.ptr<64>, i64 loc("_414"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v478, ^bb160, ^bb255
^bb160:
  %v479 = sea.const 1 : i64 loc("_416"("aws-c-common/source/byte_buf.c":917:36))
  %v480 = sea.ptr.dereferenceable %v470, %v479 : !sea.ptr<64>, i64 loc("_416"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v480, ^bb161, ^bb255
^bb161:
  %v481 = sea.const 1 : i64 loc("_418"("aws-c-common/source/byte_buf.c":917:23))
  %v482 = sea.ptr.dereferenceable %v476, %v481 : !sea.ptr<64>, i64 loc("_418"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v482, ^bb162, ^bb255
^bb162:
  %v483 = sea.const 10 : i64 loc("_420"("aws-c-common/source/byte_buf.c":930:17))
  %v484 = sea.ptr.add %v19, %v483 : !sea.ptr<64>, i64 loc("_420"("aws-c-common/source/byte_buf.c":930:17))
  %v485 = sea.ptr.cmp ult, %v484, %v343 : !sea.ptr<64> loc("_421"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v485, ^bb163, ^bb165 loc("aws-c-common/source/byte_buf.c":915:5)
^bb163:
  %v486 = sea.const 1 : i64 loc("_293"("aws-c-common/source/byte_buf.c":916:36))
  %v487 = sea.ptr.dereferenceable %v484, %v486 : !sea.ptr<64>, i64 loc("_293"("aws-c-common/source/byte_buf.c":916:36))
  %v488 = sea.const 1 : i1
  %v489 = sea.xor %v487, %v488 : i1
  sea.assume %v489
  sea.br ^bb255
^bb164:
  sea.br ^bb165
^bb165:
  sea.br ^bb166
^bb166:
  sea.cond_br %v68, ^bb225, ^bb167 loc("aws-c-common/source/byte_buf.c":902:23)
^bb167:
  sea.br ^bb168
^bb168:
  sea.br ^bb169
^bb169:
  sea.br ^bb170
^bb170:
  sea.br ^bb171
^bb171:
  %v490 = sea.ptr.index %v19 [%v66] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_429"("aws-c-common/source/byte_buf.c":910:39))
  sea.br ^bb172
^bb172:
  sea.br ^bb173
^bb173:
  %v491 = sea.const 0 : i64 loc("_431"("aws-c-common/source/byte_buf.c":915:21))
  %v492 = sea.icmp sgt, %v66, %v491 : i64 loc("_431"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v492, ^bb174, ^bb226 loc("aws-c-common/source/byte_buf.c":915:5)
^bb174:
  %v493 = sea.const 1 : i64 loc("_432"("aws-c-common/source/byte_buf.c":916:36))
  %v494 = sea.ptr.dereferenceable %v19, %v493 : !sea.ptr<64>, i64 loc("_432"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v494, ^bb175, ^bb255
^bb175:
  %v495 = sea.load %v65[%v19] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_434"("aws-c-common/source/byte_buf.c":916:36))
  %v496 = sea.zext %v495 : i8 to i64 loc("_435"("aws-c-common/source/byte_buf.c":916:23))
  %v497 = sea.ptr.index %v9 [%v496] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_436"("aws-c-common/source/byte_buf.c":916:23))
  %v498 = sea.const 1 : i64 loc("_437"("aws-c-common/source/byte_buf.c":916:23))
  %v499 = sea.ptr.dereferenceable %v497, %v498 : !sea.ptr<64>, i64 loc("_437"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v499, ^bb176, ^bb255
^bb176:
  %v500 = sea.const 1 : i64 loc("_439"("aws-c-common/source/byte_buf.c":917:36))
  %v501 = sea.ptr.dereferenceable %v19, %v500 : !sea.ptr<64>, i64 loc("_439"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v501, ^bb177, ^bb255
^bb177:
  %v502 = sea.const 1 : i64 loc("_441"("aws-c-common/source/byte_buf.c":917:23))
  %v503 = sea.ptr.dereferenceable %v497, %v502 : !sea.ptr<64>, i64 loc("_441"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v503, ^bb178, ^bb255
^bb178:
  %v504 = sea.const 1 : i64 loc("_443"("aws-c-common/source/byte_buf.c":930:17))
  %v505 = sea.ptr.add %v19, %v504 : !sea.ptr<64>, i64 loc("_443"("aws-c-common/source/byte_buf.c":930:17))
  %v506 = sea.ptr.cmp ult, %v505, %v490 : !sea.ptr<64> loc("_444"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v506, ^bb179, ^bb226 loc("aws-c-common/source/byte_buf.c":915:5)
^bb179:
  %v507 = sea.const 1 : i64 loc("_445"("aws-c-common/source/byte_buf.c":916:36))
  %v508 = sea.ptr.dereferenceable %v505, %v507 : !sea.ptr<64>, i64 loc("_445"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v508, ^bb180, ^bb255
^bb180:
  %v509 = sea.load %v65[%v505] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_447"("aws-c-common/source/byte_buf.c":916:36))
  %v510 = sea.zext %v509 : i8 to i64 loc("_448"("aws-c-common/source/byte_buf.c":916:23))
  %v511 = sea.ptr.index %v9 [%v510] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_449"("aws-c-common/source/byte_buf.c":916:23))
  %v512 = sea.const 1 : i64 loc("_450"("aws-c-common/source/byte_buf.c":916:23))
  %v513 = sea.ptr.dereferenceable %v511, %v512 : !sea.ptr<64>, i64 loc("_450"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v513, ^bb181, ^bb255
^bb181:
  %v514 = sea.const 1 : i64 loc("_452"("aws-c-common/source/byte_buf.c":917:36))
  %v515 = sea.ptr.dereferenceable %v505, %v514 : !sea.ptr<64>, i64 loc("_452"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v515, ^bb182, ^bb255
^bb182:
  %v516 = sea.const 1 : i64 loc("_454"("aws-c-common/source/byte_buf.c":917:23))
  %v517 = sea.ptr.dereferenceable %v511, %v516 : !sea.ptr<64>, i64 loc("_454"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v517, ^bb183, ^bb255
^bb183:
  %v518 = sea.const 2 : i64 loc("_456"("aws-c-common/source/byte_buf.c":930:17))
  %v519 = sea.ptr.add %v19, %v518 : !sea.ptr<64>, i64 loc("_456"("aws-c-common/source/byte_buf.c":930:17))
  %v520 = sea.ptr.cmp ult, %v519, %v490 : !sea.ptr<64> loc("_457"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v520, ^bb184, ^bb226 loc("aws-c-common/source/byte_buf.c":915:5)
^bb184:
  %v521 = sea.const 1 : i64 loc("_458"("aws-c-common/source/byte_buf.c":916:36))
  %v522 = sea.ptr.dereferenceable %v519, %v521 : !sea.ptr<64>, i64 loc("_458"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v522, ^bb185, ^bb255
^bb185:
  %v523 = sea.load %v65[%v519] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_460"("aws-c-common/source/byte_buf.c":916:36))
  %v524 = sea.zext %v523 : i8 to i64 loc("_461"("aws-c-common/source/byte_buf.c":916:23))
  %v525 = sea.ptr.index %v9 [%v524] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_462"("aws-c-common/source/byte_buf.c":916:23))
  %v526 = sea.const 1 : i64 loc("_463"("aws-c-common/source/byte_buf.c":916:23))
  %v527 = sea.ptr.dereferenceable %v525, %v526 : !sea.ptr<64>, i64 loc("_463"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v527, ^bb186, ^bb255
^bb186:
  %v528 = sea.const 1 : i64 loc("_465"("aws-c-common/source/byte_buf.c":917:36))
  %v529 = sea.ptr.dereferenceable %v519, %v528 : !sea.ptr<64>, i64 loc("_465"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v529, ^bb187, ^bb255
^bb187:
  %v530 = sea.const 1 : i64 loc("_467"("aws-c-common/source/byte_buf.c":917:23))
  %v531 = sea.ptr.dereferenceable %v525, %v530 : !sea.ptr<64>, i64 loc("_467"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v531, ^bb188, ^bb255
^bb188:
  %v532 = sea.const 3 : i64 loc("_469"("aws-c-common/source/byte_buf.c":930:17))
  %v533 = sea.ptr.add %v19, %v532 : !sea.ptr<64>, i64 loc("_469"("aws-c-common/source/byte_buf.c":930:17))
  %v534 = sea.ptr.cmp ult, %v533, %v490 : !sea.ptr<64> loc("_470"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v534, ^bb189, ^bb226 loc("aws-c-common/source/byte_buf.c":915:5)
^bb189:
  %v535 = sea.const 1 : i64 loc("_471"("aws-c-common/source/byte_buf.c":916:36))
  %v536 = sea.ptr.dereferenceable %v533, %v535 : !sea.ptr<64>, i64 loc("_471"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v536, ^bb190, ^bb255
^bb190:
  %v537 = sea.load %v65[%v533] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_473"("aws-c-common/source/byte_buf.c":916:36))
  %v538 = sea.zext %v537 : i8 to i64 loc("_474"("aws-c-common/source/byte_buf.c":916:23))
  %v539 = sea.ptr.index %v9 [%v538] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_475"("aws-c-common/source/byte_buf.c":916:23))
  %v540 = sea.const 1 : i64 loc("_476"("aws-c-common/source/byte_buf.c":916:23))
  %v541 = sea.ptr.dereferenceable %v539, %v540 : !sea.ptr<64>, i64 loc("_476"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v541, ^bb191, ^bb255
^bb191:
  %v542 = sea.const 1 : i64 loc("_478"("aws-c-common/source/byte_buf.c":917:36))
  %v543 = sea.ptr.dereferenceable %v533, %v542 : !sea.ptr<64>, i64 loc("_478"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v543, ^bb192, ^bb255
^bb192:
  %v544 = sea.const 1 : i64 loc("_480"("aws-c-common/source/byte_buf.c":917:23))
  %v545 = sea.ptr.dereferenceable %v539, %v544 : !sea.ptr<64>, i64 loc("_480"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v545, ^bb193, ^bb255
^bb193:
  %v546 = sea.const 4 : i64 loc("_482"("aws-c-common/source/byte_buf.c":930:17))
  %v547 = sea.ptr.add %v19, %v546 : !sea.ptr<64>, i64 loc("_482"("aws-c-common/source/byte_buf.c":930:17))
  %v548 = sea.ptr.cmp ult, %v547, %v490 : !sea.ptr<64> loc("_483"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v548, ^bb194, ^bb226 loc("aws-c-common/source/byte_buf.c":915:5)
^bb194:
  %v549 = sea.const 1 : i64 loc("_484"("aws-c-common/source/byte_buf.c":916:36))
  %v550 = sea.ptr.dereferenceable %v547, %v549 : !sea.ptr<64>, i64 loc("_484"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v550, ^bb195, ^bb255
^bb195:
  %v551 = sea.load %v65[%v547] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_486"("aws-c-common/source/byte_buf.c":916:36))
  %v552 = sea.zext %v551 : i8 to i64 loc("_487"("aws-c-common/source/byte_buf.c":916:23))
  %v553 = sea.ptr.index %v9 [%v552] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_488"("aws-c-common/source/byte_buf.c":916:23))
  %v554 = sea.const 1 : i64 loc("_489"("aws-c-common/source/byte_buf.c":916:23))
  %v555 = sea.ptr.dereferenceable %v553, %v554 : !sea.ptr<64>, i64 loc("_489"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v555, ^bb196, ^bb255
^bb196:
  %v556 = sea.const 1 : i64 loc("_491"("aws-c-common/source/byte_buf.c":917:36))
  %v557 = sea.ptr.dereferenceable %v547, %v556 : !sea.ptr<64>, i64 loc("_491"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v557, ^bb197, ^bb255
^bb197:
  %v558 = sea.const 1 : i64 loc("_493"("aws-c-common/source/byte_buf.c":917:23))
  %v559 = sea.ptr.dereferenceable %v553, %v558 : !sea.ptr<64>, i64 loc("_493"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v559, ^bb198, ^bb255
^bb198:
  %v560 = sea.const 5 : i64 loc("_495"("aws-c-common/source/byte_buf.c":930:17))
  %v561 = sea.ptr.add %v19, %v560 : !sea.ptr<64>, i64 loc("_495"("aws-c-common/source/byte_buf.c":930:17))
  %v562 = sea.ptr.cmp ult, %v561, %v490 : !sea.ptr<64> loc("_496"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v562, ^bb199, ^bb226 loc("aws-c-common/source/byte_buf.c":915:5)
^bb199:
  %v563 = sea.const 1 : i64 loc("_497"("aws-c-common/source/byte_buf.c":916:36))
  %v564 = sea.ptr.dereferenceable %v561, %v563 : !sea.ptr<64>, i64 loc("_497"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v564, ^bb200, ^bb255
^bb200:
  %v565 = sea.load %v65[%v561] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_499"("aws-c-common/source/byte_buf.c":916:36))
  %v566 = sea.zext %v565 : i8 to i64 loc("_500"("aws-c-common/source/byte_buf.c":916:23))
  %v567 = sea.ptr.index %v9 [%v566] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_501"("aws-c-common/source/byte_buf.c":916:23))
  %v568 = sea.const 1 : i64 loc("_502"("aws-c-common/source/byte_buf.c":916:23))
  %v569 = sea.ptr.dereferenceable %v567, %v568 : !sea.ptr<64>, i64 loc("_502"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v569, ^bb201, ^bb255
^bb201:
  %v570 = sea.const 1 : i64 loc("_504"("aws-c-common/source/byte_buf.c":917:36))
  %v571 = sea.ptr.dereferenceable %v561, %v570 : !sea.ptr<64>, i64 loc("_504"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v571, ^bb202, ^bb255
^bb202:
  %v572 = sea.const 1 : i64 loc("_506"("aws-c-common/source/byte_buf.c":917:23))
  %v573 = sea.ptr.dereferenceable %v567, %v572 : !sea.ptr<64>, i64 loc("_506"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v573, ^bb203, ^bb255
^bb203:
  %v574 = sea.const 6 : i64 loc("_508"("aws-c-common/source/byte_buf.c":930:17))
  %v575 = sea.ptr.add %v19, %v574 : !sea.ptr<64>, i64 loc("_508"("aws-c-common/source/byte_buf.c":930:17))
  %v576 = sea.ptr.cmp ult, %v575, %v490 : !sea.ptr<64> loc("_509"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v576, ^bb204, ^bb226 loc("aws-c-common/source/byte_buf.c":915:5)
^bb204:
  %v577 = sea.const 1 : i64 loc("_510"("aws-c-common/source/byte_buf.c":916:36))
  %v578 = sea.ptr.dereferenceable %v575, %v577 : !sea.ptr<64>, i64 loc("_510"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v578, ^bb205, ^bb255
^bb205:
  %v579 = sea.load %v65[%v575] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_512"("aws-c-common/source/byte_buf.c":916:36))
  %v580 = sea.zext %v579 : i8 to i64 loc("_513"("aws-c-common/source/byte_buf.c":916:23))
  %v581 = sea.ptr.index %v9 [%v580] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_514"("aws-c-common/source/byte_buf.c":916:23))
  %v582 = sea.const 1 : i64 loc("_515"("aws-c-common/source/byte_buf.c":916:23))
  %v583 = sea.ptr.dereferenceable %v581, %v582 : !sea.ptr<64>, i64 loc("_515"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v583, ^bb206, ^bb255
^bb206:
  %v584 = sea.const 1 : i64 loc("_517"("aws-c-common/source/byte_buf.c":917:36))
  %v585 = sea.ptr.dereferenceable %v575, %v584 : !sea.ptr<64>, i64 loc("_517"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v585, ^bb207, ^bb255
^bb207:
  %v586 = sea.const 1 : i64 loc("_519"("aws-c-common/source/byte_buf.c":917:23))
  %v587 = sea.ptr.dereferenceable %v581, %v586 : !sea.ptr<64>, i64 loc("_519"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v587, ^bb208, ^bb255
^bb208:
  %v588 = sea.const 7 : i64 loc("_521"("aws-c-common/source/byte_buf.c":930:17))
  %v589 = sea.ptr.add %v19, %v588 : !sea.ptr<64>, i64 loc("_521"("aws-c-common/source/byte_buf.c":930:17))
  %v590 = sea.ptr.cmp ult, %v589, %v490 : !sea.ptr<64> loc("_522"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v590, ^bb209, ^bb226 loc("aws-c-common/source/byte_buf.c":915:5)
^bb209:
  %v591 = sea.const 1 : i64 loc("_523"("aws-c-common/source/byte_buf.c":916:36))
  %v592 = sea.ptr.dereferenceable %v589, %v591 : !sea.ptr<64>, i64 loc("_523"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v592, ^bb210, ^bb255
^bb210:
  %v593 = sea.load %v65[%v589] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_525"("aws-c-common/source/byte_buf.c":916:36))
  %v594 = sea.zext %v593 : i8 to i64 loc("_526"("aws-c-common/source/byte_buf.c":916:23))
  %v595 = sea.ptr.index %v9 [%v594] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_527"("aws-c-common/source/byte_buf.c":916:23))
  %v596 = sea.const 1 : i64 loc("_528"("aws-c-common/source/byte_buf.c":916:23))
  %v597 = sea.ptr.dereferenceable %v595, %v596 : !sea.ptr<64>, i64 loc("_528"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v597, ^bb211, ^bb255
^bb211:
  %v598 = sea.const 1 : i64 loc("_530"("aws-c-common/source/byte_buf.c":917:36))
  %v599 = sea.ptr.dereferenceable %v589, %v598 : !sea.ptr<64>, i64 loc("_530"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v599, ^bb212, ^bb255
^bb212:
  %v600 = sea.const 1 : i64 loc("_532"("aws-c-common/source/byte_buf.c":917:23))
  %v601 = sea.ptr.dereferenceable %v595, %v600 : !sea.ptr<64>, i64 loc("_532"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v601, ^bb213, ^bb255
^bb213:
  %v602 = sea.const 8 : i64 loc("_534"("aws-c-common/source/byte_buf.c":930:17))
  %v603 = sea.ptr.add %v19, %v602 : !sea.ptr<64>, i64 loc("_534"("aws-c-common/source/byte_buf.c":930:17))
  %v604 = sea.ptr.cmp ult, %v603, %v490 : !sea.ptr<64> loc("_535"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v604, ^bb214, ^bb226 loc("aws-c-common/source/byte_buf.c":915:5)
^bb214:
  %v605 = sea.const 1 : i64 loc("_536"("aws-c-common/source/byte_buf.c":916:36))
  %v606 = sea.ptr.dereferenceable %v603, %v605 : !sea.ptr<64>, i64 loc("_536"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v606, ^bb215, ^bb255
^bb215:
  %v607 = sea.load %v65[%v603] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_538"("aws-c-common/source/byte_buf.c":916:36))
  %v608 = sea.zext %v607 : i8 to i64 loc("_539"("aws-c-common/source/byte_buf.c":916:23))
  %v609 = sea.ptr.index %v9 [%v608] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_540"("aws-c-common/source/byte_buf.c":916:23))
  %v610 = sea.const 1 : i64 loc("_541"("aws-c-common/source/byte_buf.c":916:23))
  %v611 = sea.ptr.dereferenceable %v609, %v610 : !sea.ptr<64>, i64 loc("_541"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v611, ^bb216, ^bb255
^bb216:
  %v612 = sea.const 1 : i64 loc("_543"("aws-c-common/source/byte_buf.c":917:36))
  %v613 = sea.ptr.dereferenceable %v603, %v612 : !sea.ptr<64>, i64 loc("_543"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v613, ^bb217, ^bb255
^bb217:
  %v614 = sea.const 1 : i64 loc("_545"("aws-c-common/source/byte_buf.c":917:23))
  %v615 = sea.ptr.dereferenceable %v609, %v614 : !sea.ptr<64>, i64 loc("_545"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v615, ^bb218, ^bb255
^bb218:
  %v616 = sea.const 9 : i64 loc("_547"("aws-c-common/source/byte_buf.c":930:17))
  %v617 = sea.ptr.add %v19, %v616 : !sea.ptr<64>, i64 loc("_547"("aws-c-common/source/byte_buf.c":930:17))
  %v618 = sea.ptr.cmp ult, %v617, %v490 : !sea.ptr<64> loc("_548"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v618, ^bb219, ^bb226 loc("aws-c-common/source/byte_buf.c":915:5)
^bb219:
  %v619 = sea.const 1 : i64 loc("_549"("aws-c-common/source/byte_buf.c":916:36))
  %v620 = sea.ptr.dereferenceable %v617, %v619 : !sea.ptr<64>, i64 loc("_549"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v620, ^bb220, ^bb255
^bb220:
  %v621 = sea.load %v65[%v617] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_551"("aws-c-common/source/byte_buf.c":916:36))
  %v622 = sea.zext %v621 : i8 to i64 loc("_552"("aws-c-common/source/byte_buf.c":916:23))
  %v623 = sea.ptr.index %v9 [%v622] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_553"("aws-c-common/source/byte_buf.c":916:23))
  %v624 = sea.const 1 : i64 loc("_554"("aws-c-common/source/byte_buf.c":916:23))
  %v625 = sea.ptr.dereferenceable %v623, %v624 : !sea.ptr<64>, i64 loc("_554"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v625, ^bb221, ^bb255
^bb221:
  %v626 = sea.const 1 : i64 loc("_556"("aws-c-common/source/byte_buf.c":917:36))
  %v627 = sea.ptr.dereferenceable %v617, %v626 : !sea.ptr<64>, i64 loc("_556"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v627, ^bb222, ^bb255
^bb222:
  %v628 = sea.const 1 : i64 loc("_558"("aws-c-common/source/byte_buf.c":917:23))
  %v629 = sea.ptr.dereferenceable %v623, %v628 : !sea.ptr<64>, i64 loc("_558"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v629, ^bb223, ^bb255
^bb223:
  %v630 = sea.const 10 : i64 loc("_560"("aws-c-common/source/byte_buf.c":930:17))
  %v631 = sea.ptr.add %v19, %v630 : !sea.ptr<64>, i64 loc("_560"("aws-c-common/source/byte_buf.c":930:17))
  %v632 = sea.ptr.cmp ult, %v631, %v490 : !sea.ptr<64> loc("_561"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v632, ^bb224, ^bb226 loc("aws-c-common/source/byte_buf.c":915:5)
^bb224:
  %v633 = sea.const 1 : i64 loc("_433"("aws-c-common/source/byte_buf.c":916:36))
  %v634 = sea.ptr.dereferenceable %v631, %v633 : !sea.ptr<64>, i64 loc("_433"("aws-c-common/source/byte_buf.c":916:36))
  %v635 = sea.const 1 : i1
  %v636 = sea.xor %v634, %v635 : i1
  sea.assume %v636
  sea.br ^bb255
^bb225:
  sea.br ^bb226
^bb226:
  sea.br ^bb227
^bb227:
  %v637 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v68, ^bb233(%v637 : i1), ^bb228 loc("aws-c-common/source/byte_buf.c":66:32)
^bb228:
  sea.br ^bb229
^bb229:
  sea.br ^bb230
^bb230:
  %v638 = sea.ptr.null : !sea.ptr<64> loc(".not2.i15.i"("aws-c-common/source/byte_buf.c":66:55))
  %v639 = sea.ptr.cmp eq, %v19, %v638 : !sea.ptr<64> loc(".not2.i15.i"("aws-c-common/source/byte_buf.c":66:55))
  %v640 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v639, ^bb233(%v640 : i1), ^bb231 loc("aws-c-common/source/byte_buf.c":66:67)
^bb231:
  sea.br ^bb232
^bb232:
  %v641 = sea.const 1 : i1
  sea.br ^bb233(%v641 : i1)
^bb233(%v642 : i1):
  sea.br ^bb234
^bb234:
  sea.cond_br %v68, ^bb239, ^bb235 loc("aws-c-common/source/byte_buf.c":66:32)
^bb235:
  sea.br ^bb236
^bb236:
  %v643 = sea.ptr.null : !sea.ptr<64> loc(".not2.i11.i")
  %v644 = sea.ptr.cmp ne, %v19, %v643 : !sea.ptr<64> loc(".not2.i11.i")
  %v645 = sea.const 1 : i1 loc("or.cond16.not")
  %v646 = sea.and %v644, %v645 : i1 loc("or.cond16.not")
  sea.cond_br %v646, ^bb237, ^bb255
^bb237:
  sea.br ^bb238
^bb238:
  sea.br ^bb239
^bb239:
  sea.br ^bb240
^bb240:
  %v647 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v342, ^bb246(%v647 : i1), ^bb241 loc("aws-c-common/source/byte_buf.c":66:32)
^bb241:
  sea.br ^bb242
^bb242:
  sea.br ^bb243
^bb243:
  %v648 = sea.load %v61[%v64] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_578"("aws-c-common/source/byte_buf.c":66:63))
  %v649 = sea.ptr.null : !sea.ptr<64> loc(".not2.i7.i"("aws-c-common/source/byte_buf.c":66:55))
  %v650 = sea.ptr.cmp eq, %v648, %v649 : !sea.ptr<64> loc(".not2.i7.i"("aws-c-common/source/byte_buf.c":66:55))
  %v651 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v650, ^bb246(%v651 : i1), ^bb244 loc("aws-c-common/source/byte_buf.c":66:67)
^bb244:
  sea.br ^bb245
^bb245:
  %v652 = sea.const 1 : i1
  sea.br ^bb246(%v652 : i1)
^bb246(%v653 : i1):
  sea.br ^bb247
^bb247:
  sea.cond_br %v342, ^bb252, ^bb248 loc("aws-c-common/source/byte_buf.c":66:32)
^bb248:
  sea.br ^bb249
^bb249:
  %v654 = sea.load %v61[%v64] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_585")
  %v655 = sea.ptr.null : !sea.ptr<64> loc(".not2.i.i")
  %v656 = sea.ptr.cmp ne, %v654, %v655 : !sea.ptr<64> loc(".not2.i.i")
  %v657 = sea.const 1 : i1 loc("or.cond20.not")
  %v658 = sea.const 0 : i1 loc("or.cond20.not")
  %v659 = sea.select %v657, %v656, %v658 : i1 loc("or.cond20.not")
  sea.cond_br %v659, ^bb250, ^bb255
^bb250:
  sea.br ^bb251
^bb251:
  sea.br ^bb252
^bb252:
  sea.cond_br %v68, ^bb254, ^bb253 loc("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":46:9)
^bb253:
  %v660 = sea.load %v23[%v22] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_589"("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":47:9))
  %v661 = sea.mem.is_modified %v65[%v660] : !sea.mem<!sea.ptr<64>, i8> loc("_590"("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":47:9))
  %v662 = sea.const 1 : i1 loc("_591"("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":47:9))
  %v663 = sea.xor %v661, %v662 : i1 loc("_591"("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":47:9))
  %v664 = sea.mem.is_modified %v65[%v660] : !sea.mem<!sea.ptr<64>, i8> loc("_592"("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":47:9))
  sea.cond_br %v664, ^bb255, ^bb254 loc("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":47:9)
^bb254:
  %v665 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":49:9)
  %v666 = sea.xor %v342, %v665 : i1 loc("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":49:9)
  sea.assume %v666 loc("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":49:9)
  %v667 = sea.load %v61[%v64] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_594"("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":50:9))
  %v668 = sea.mem.is_modified %v65[%v667] : !sea.mem<!sea.ptr<64>, i8> loc("_595"("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":50:9))
  %v669 = sea.const 1 : i1 loc("_596"("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":50:9))
  %v670 = sea.xor %v668, %v669 : i1 loc("_596"("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":50:9))
  %v671 = sea.mem.is_modified %v65[%v667] : !sea.mem<!sea.ptr<64>, i8> loc("_597"("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":50:9))
  sea.assume %v671 loc("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":50:9)
  sea.br ^bb255 loc("seahorn/jobs2/byte_cursor_compare_lookup2/aws_byte_cursor_compare_lookup_harness2.c":50:9)
^bb255:
  sea.br ^bb256
^bb256:
  %v672 = sea.const 0 : i1
  sea.assert %v672
  sea.halt
}
