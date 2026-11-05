// Exported from SeaHorn (byte_cursor_compare_lexical2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm12")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm13")
  %v2 = sea.mem.nondet "region.32" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm14")
  %v3 = sea.const 16 : i64 loc("_0")
  %v4 = sea.alloca %v3 align 8 [3] : i64 -> !sea.ptr<64> loc("_0")
  %v5 = sea.const 16 : i64 loc("_1")
  %v6 = sea.alloca %v5 align 8 [4] : i64 -> !sea.ptr<64> loc("_1")
  %v7 = sea.nondet "nd_size_t" [5] : i64 loc("_2"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb1
^bb1:
  %v8 = sea.store %v0[%v4], %v7 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb2
^bb2:
  %v9 = sea.const 11 : i64 loc("_5"("seahorn/lib/byte_buf_helper.c":33:24))
  %v10 = sea.icmp ult, %v7, %v9 : i64 loc("_5"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v10 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v11 = sea.nondet "nd_malloc_is_fail" [6] : i1 loc("_6"("seahorn/lib/sea_allocators.c":11:10))
  %v12 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v11, ^bb4(%v2, %v12 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/sea_allocators.c":11:10)
^bb3:
  %v13 = sea.const 10 : i64 loc("malloc.i6")
  %v14 = sea.alloca %v13 align 16 [7] : i64 -> !sea.ptr<64> loc("malloc.i6")
  sea.br ^bb4(%v2, %v14 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb4(%v15 : !sea.mem<!sea.ptr<64>, i8>, %v16 : !sea.ptr<64>):
  %v17 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v18 = sea.memhavoc %v15[%v16], %v17 [8] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v19 = sea.ptr.index %v4 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_9"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb5
^bb5:
  %v20 = sea.store %v8[%v19], %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  sea.br ^bb6
^bb6:
  %v21 = sea.const 0 : i64 loc("_11"("aws-c-common/source/byte_buf.c":66:26))
  %v22 = sea.icmp eq, %v7, %v21 : i64 loc("_11"("aws-c-common/source/byte_buf.c":66:26))
  %v23 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v22, ^bb12(%v23 : i1), ^bb7 loc("aws-c-common/source/byte_buf.c":66:32)
^bb7:
  sea.br ^bb8
^bb8:
  sea.br ^bb9
^bb9:
  %v24 = sea.ptr.null : !sea.ptr<64> loc(".not2.i24.i"("aws-c-common/source/byte_buf.c":66:55))
  %v25 = sea.ptr.cmp eq, %v16, %v24 : !sea.ptr<64> loc(".not2.i24.i"("aws-c-common/source/byte_buf.c":66:55))
  %v26 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v25, ^bb12(%v26 : i1), ^bb10 loc("aws-c-common/source/byte_buf.c":66:67)
^bb10:
  sea.br ^bb11
^bb11:
  %v27 = sea.const 1 : i1
  sea.br ^bb12(%v27 : i1)
^bb12(%v28 : i1):
  sea.assume %v28 loc("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":17:5)
  %v29 = sea.ptr.null : !sea.ptr<64> loc("_18"("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":18:20))
  %v30 = sea.ptr.cmp ne, %v16, %v29 : !sea.ptr<64> loc("_18"("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":18:20))
  sea.assume %v30 loc("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":18:5)
  %v31 = sea.nondet "nd_bool" [9] : i1 loc("_19"("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":19:9))
  sea.cond_br %v31, ^bb26, ^bb13 loc("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":19:9)
^bb13:
  %v32 = sea.nondet "nd_size_t" [10] : i64 loc("_22"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb14
^bb14:
  %v33 = sea.store %v1[%v6], %v32 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb15
^bb15:
  %v34 = sea.const 11 : i64 loc("_25"("seahorn/lib/byte_buf_helper.c":33:24))
  %v35 = sea.icmp ult, %v32, %v34 : i64 loc("_25"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v35 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v36 = sea.nondet "nd_malloc_is_fail" [11] : i1 loc("_26"("seahorn/lib/sea_allocators.c":11:10))
  %v37 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v36, ^bb17(%v18, %v37 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb16 loc("seahorn/lib/sea_allocators.c":11:10)
^bb16:
  %v38 = sea.const 10 : i64 loc("malloc65.i7")
  %v39 = sea.alloca %v38 align 16 [12] : i64 -> !sea.ptr<64> loc("malloc65.i7")
  sea.br ^bb17(%v18, %v39 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb17(%v40 : !sea.mem<!sea.ptr<64>, i8>, %v41 : !sea.ptr<64>):
  %v42 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v43 = sea.memhavoc %v40[%v41], %v42 [13] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v44 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_29"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb18
^bb18:
  %v45 = sea.store %v33[%v44], %v41 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  sea.br ^bb19
^bb19:
  %v46 = sea.const 0 : i64 loc("_31"("aws-c-common/source/byte_buf.c":66:26))
  %v47 = sea.icmp eq, %v32, %v46 : i64 loc("_31"("aws-c-common/source/byte_buf.c":66:26))
  %v48 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v47, ^bb25(%v48 : i1), ^bb20 loc("aws-c-common/source/byte_buf.c":66:32)
^bb20:
  sea.br ^bb21
^bb21:
  sea.br ^bb22
^bb22:
  %v49 = sea.ptr.null : !sea.ptr<64> loc(".not2.i20.i"("aws-c-common/source/byte_buf.c":66:55))
  %v50 = sea.ptr.cmp eq, %v41, %v49 : !sea.ptr<64> loc(".not2.i20.i"("aws-c-common/source/byte_buf.c":66:55))
  %v51 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v50, ^bb25(%v51 : i1), ^bb23 loc("aws-c-common/source/byte_buf.c":66:67)
^bb23:
  sea.br ^bb24
^bb24:
  %v52 = sea.const 1 : i1
  sea.br ^bb25(%v52 : i1)
^bb25(%v53 : i1):
  sea.assume %v53 loc("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":23:9)
  %v54 = sea.ptr.null : !sea.ptr<64> loc("_38"("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":24:24))
  %v55 = sea.ptr.cmp ne, %v41, %v54 : !sea.ptr<64> loc("_38"("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":24:24))
  sea.assume %v55 loc("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":24:9)
  sea.br ^bb27(%v43, %v45, %v41 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>)
^bb26:
  %v56 = sea.store %v1[%v6], %v7 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":20:15)
  %v57 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":20:15))
  %v58 = sea.store %v56[%v57], %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":20:15)
  sea.br ^bb27(%v18, %v58, %v16 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":21:5)
^bb27(%v59 : !sea.mem<!sea.ptr<64>, i8>, %v60 : !sea.mem<!sea.ptr<64>, i8>, %v61 : !sea.ptr<64>):
  sea.tracking_on loc("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":28:5)
  %v62 = sea.mem.reset_modified %v59[%v16] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":29:5)
  %v63 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_41"("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":30:36))
  %v64 = sea.mem.reset_modified %v62[%v61] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":30:5)
  sea.br ^bb28
^bb28:
  %v65 = sea.load %v8[%v4] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_43"("aws-c-common/source/byte_buf.c":875:37))
  sea.br ^bb29
^bb29:
  %v66 = sea.load %v60[%v6] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_45"("aws-c-common/source/byte_buf.c":876:34))
  %v67 = sea.icmp ugt, %v65, %v66 : i64 loc("_46"("aws-c-common/source/byte_buf.c":876:27))
  sea.cond_br %v67, ^bb30, ^bb31(%v65 : i64) loc("aws-c-common/source/byte_buf.c":876:9)
^bb30:
  sea.br ^bb31(%v66 : i64)
^bb31(%v68 : i64):
  sea.br ^bb32
^bb32:
  sea.br ^bb33
^bb33:
  %v69 = sea.ptr.cmp eq, %v16, %v61 : !sea.ptr<64> loc("_51"("seahorn/lib/bcmp.c":55:10))
  %v70 = sea.const 0 : i64 loc(".not")
  %v71 = sea.icmp eq, %v68, %v70 : i64 loc(".not")
  %v72 = sea.const 1 : i1 loc("or.cond"("seahorn/lib/bcmp.c":55:7))
  %v73 = sea.select %v69, %v72, %v71 : i1 loc("or.cond"("seahorn/lib/bcmp.c":55:7))
  sea.cond_br %v73, ^bb83, ^bb34 loc("seahorn/lib/bcmp.c":55:7)
^bb34:
  %v74 = sea.const 1 : i64 loc("_55"("seahorn/lib/bcmp.c":61:11))
  %v75 = sea.ptr.dereferenceable %v16, %v74 : !sea.ptr<64>, i64 loc("_55"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v75, ^bb35, ^bb133
^bb35:
  %v76 = sea.load %v64[%v16] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_57"("seahorn/lib/bcmp.c":61:11))
  %v77 = sea.const 1 : i64 loc("_58"("seahorn/lib/bcmp.c":61:20))
  %v78 = sea.ptr.dereferenceable %v61, %v77 : !sea.ptr<64>, i64 loc("_58"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v78, ^bb36, ^bb133
^bb36:
  %v79 = sea.load %v64[%v61] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_60"("seahorn/lib/bcmp.c":61:20))
  %v80 = sea.icmp eq, %v76, %v79 : i8 loc(".not2.i50.i"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v80, ^bb37, ^bb73(%v61, %v16 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb37:
  %v81 = sea.const 1 : i64 loc("_65"("seahorn/lib/bcmp.c":60:11))
  %v82 = sea.icmp ugt, %v68, %v81 : i64 loc("_65"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v82, ^bb38, ^bb83 loc("seahorn/lib/bcmp.c":60:9)
^bb38:
  %v83 = sea.ptr.index %v16 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_67"("seahorn/lib/bcmp.c":61:11))
  %v84 = sea.const 1 : i64 loc("_68"("seahorn/lib/bcmp.c":61:11))
  %v85 = sea.ptr.dereferenceable %v83, %v84 : !sea.ptr<64>, i64 loc("_68"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v85, ^bb39, ^bb133
^bb39:
  %v86 = sea.load %v64[%v83] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_70"("seahorn/lib/bcmp.c":61:11))
  %v87 = sea.ptr.index %v61 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_71"("seahorn/lib/bcmp.c":61:20))
  %v88 = sea.const 1 : i64 loc("_72"("seahorn/lib/bcmp.c":61:20))
  %v89 = sea.ptr.dereferenceable %v87, %v88 : !sea.ptr<64>, i64 loc("_72"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v89, ^bb40, ^bb133
^bb40:
  %v90 = sea.load %v62[%v87] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_74"("seahorn/lib/bcmp.c":61:20))
  %v91 = sea.icmp eq, %v86, %v90 : i8 loc(".not2.i50.i.1"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v91, ^bb41, ^bb73(%v87, %v83 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb41:
  %v92 = sea.const 2 : i64 loc(".not6"("seahorn/lib/bcmp.c":60:11))
  %v93 = sea.icmp eq, %v68, %v92 : i64 loc(".not6"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v93, ^bb83, ^bb42 loc("seahorn/lib/bcmp.c":60:9)
^bb42:
  %v94 = sea.ptr.index %v16 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_76"("seahorn/lib/bcmp.c":61:11))
  %v95 = sea.const 1 : i64 loc("_77"("seahorn/lib/bcmp.c":61:11))
  %v96 = sea.ptr.dereferenceable %v94, %v95 : !sea.ptr<64>, i64 loc("_77"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v96, ^bb43, ^bb133
^bb43:
  %v97 = sea.load %v64[%v94] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_79"("seahorn/lib/bcmp.c":61:11))
  %v98 = sea.ptr.index %v61 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_80"("seahorn/lib/bcmp.c":61:20))
  %v99 = sea.const 1 : i64 loc("_81"("seahorn/lib/bcmp.c":61:20))
  %v100 = sea.ptr.dereferenceable %v98, %v99 : !sea.ptr<64>, i64 loc("_81"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v100, ^bb44, ^bb133
^bb44:
  %v101 = sea.load %v62[%v98] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_83"("seahorn/lib/bcmp.c":61:20))
  %v102 = sea.icmp eq, %v97, %v101 : i8 loc(".not2.i50.i.2"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v102, ^bb45, ^bb73(%v98, %v94 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb45:
  %v103 = sea.const 3 : i64 loc("_84"("seahorn/lib/bcmp.c":60:11))
  %v104 = sea.icmp ugt, %v68, %v103 : i64 loc("_84"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v104, ^bb46, ^bb83 loc("seahorn/lib/bcmp.c":60:9)
^bb46:
  %v105 = sea.ptr.index %v16 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_86"("seahorn/lib/bcmp.c":61:11))
  %v106 = sea.const 1 : i64 loc("_87"("seahorn/lib/bcmp.c":61:11))
  %v107 = sea.ptr.dereferenceable %v105, %v106 : !sea.ptr<64>, i64 loc("_87"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v107, ^bb47, ^bb133
^bb47:
  %v108 = sea.load %v64[%v105] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_89"("seahorn/lib/bcmp.c":61:11))
  %v109 = sea.ptr.index %v61 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_90"("seahorn/lib/bcmp.c":61:20))
  %v110 = sea.const 1 : i64 loc("_91"("seahorn/lib/bcmp.c":61:20))
  %v111 = sea.ptr.dereferenceable %v109, %v110 : !sea.ptr<64>, i64 loc("_91"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v111, ^bb48, ^bb133
^bb48:
  %v112 = sea.load %v62[%v109] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_93"("seahorn/lib/bcmp.c":61:20))
  %v113 = sea.icmp eq, %v108, %v112 : i8 loc(".not2.i50.i.3"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v113, ^bb49, ^bb73(%v109, %v105 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb49:
  %v114 = sea.const 4 : i64 loc(".not7"("seahorn/lib/bcmp.c":60:11))
  %v115 = sea.icmp eq, %v68, %v114 : i64 loc(".not7"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v115, ^bb83, ^bb50 loc("seahorn/lib/bcmp.c":60:9)
^bb50:
  %v116 = sea.ptr.index %v16 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_95"("seahorn/lib/bcmp.c":61:11))
  %v117 = sea.const 1 : i64 loc("_96"("seahorn/lib/bcmp.c":61:11))
  %v118 = sea.ptr.dereferenceable %v116, %v117 : !sea.ptr<64>, i64 loc("_96"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v118, ^bb51, ^bb133
^bb51:
  %v119 = sea.load %v64[%v116] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_98"("seahorn/lib/bcmp.c":61:11))
  %v120 = sea.ptr.index %v61 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_99"("seahorn/lib/bcmp.c":61:20))
  %v121 = sea.const 1 : i64 loc("_100"("seahorn/lib/bcmp.c":61:20))
  %v122 = sea.ptr.dereferenceable %v120, %v121 : !sea.ptr<64>, i64 loc("_100"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v122, ^bb52, ^bb133
^bb52:
  %v123 = sea.load %v62[%v120] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_102"("seahorn/lib/bcmp.c":61:20))
  %v124 = sea.icmp eq, %v119, %v123 : i8 loc(".not2.i50.i.4"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v124, ^bb53, ^bb73(%v120, %v116 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb53:
  %v125 = sea.const 5 : i64 loc("_103"("seahorn/lib/bcmp.c":60:11))
  %v126 = sea.icmp ugt, %v68, %v125 : i64 loc("_103"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v126, ^bb54, ^bb83 loc("seahorn/lib/bcmp.c":60:9)
^bb54:
  %v127 = sea.ptr.index %v16 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_105"("seahorn/lib/bcmp.c":61:11))
  %v128 = sea.const 1 : i64 loc("_106"("seahorn/lib/bcmp.c":61:11))
  %v129 = sea.ptr.dereferenceable %v127, %v128 : !sea.ptr<64>, i64 loc("_106"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v129, ^bb55, ^bb133
^bb55:
  %v130 = sea.load %v64[%v127] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_108"("seahorn/lib/bcmp.c":61:11))
  %v131 = sea.ptr.index %v61 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_109"("seahorn/lib/bcmp.c":61:20))
  %v132 = sea.const 1 : i64 loc("_110"("seahorn/lib/bcmp.c":61:20))
  %v133 = sea.ptr.dereferenceable %v131, %v132 : !sea.ptr<64>, i64 loc("_110"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v133, ^bb56, ^bb133
^bb56:
  %v134 = sea.load %v62[%v131] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_112"("seahorn/lib/bcmp.c":61:20))
  %v135 = sea.icmp eq, %v130, %v134 : i8 loc(".not2.i50.i.5"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v135, ^bb57, ^bb73(%v131, %v127 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb57:
  %v136 = sea.const 6 : i64 loc(".not8"("seahorn/lib/bcmp.c":60:11))
  %v137 = sea.icmp eq, %v68, %v136 : i64 loc(".not8"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v137, ^bb83, ^bb58 loc("seahorn/lib/bcmp.c":60:9)
^bb58:
  %v138 = sea.ptr.index %v16 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_114"("seahorn/lib/bcmp.c":61:11))
  %v139 = sea.const 1 : i64 loc("_115"("seahorn/lib/bcmp.c":61:11))
  %v140 = sea.ptr.dereferenceable %v138, %v139 : !sea.ptr<64>, i64 loc("_115"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v140, ^bb59, ^bb133
^bb59:
  %v141 = sea.load %v64[%v138] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_117"("seahorn/lib/bcmp.c":61:11))
  %v142 = sea.ptr.index %v61 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_118"("seahorn/lib/bcmp.c":61:20))
  %v143 = sea.const 1 : i64 loc("_119"("seahorn/lib/bcmp.c":61:20))
  %v144 = sea.ptr.dereferenceable %v142, %v143 : !sea.ptr<64>, i64 loc("_119"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v144, ^bb60, ^bb133
^bb60:
  %v145 = sea.load %v62[%v142] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_121"("seahorn/lib/bcmp.c":61:20))
  %v146 = sea.icmp eq, %v141, %v145 : i8 loc(".not2.i50.i.6"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v146, ^bb61, ^bb73(%v142, %v138 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb61:
  %v147 = sea.const 7 : i64 loc("_122"("seahorn/lib/bcmp.c":60:11))
  %v148 = sea.icmp ugt, %v68, %v147 : i64 loc("_122"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v148, ^bb62, ^bb83 loc("seahorn/lib/bcmp.c":60:9)
^bb62:
  %v149 = sea.ptr.index %v16 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_124"("seahorn/lib/bcmp.c":61:11))
  %v150 = sea.const 1 : i64 loc("_125"("seahorn/lib/bcmp.c":61:11))
  %v151 = sea.ptr.dereferenceable %v149, %v150 : !sea.ptr<64>, i64 loc("_125"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v151, ^bb63, ^bb133
^bb63:
  %v152 = sea.load %v64[%v149] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_127"("seahorn/lib/bcmp.c":61:11))
  %v153 = sea.ptr.index %v61 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_128"("seahorn/lib/bcmp.c":61:20))
  %v154 = sea.const 1 : i64 loc("_129"("seahorn/lib/bcmp.c":61:20))
  %v155 = sea.ptr.dereferenceable %v153, %v154 : !sea.ptr<64>, i64 loc("_129"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v155, ^bb64, ^bb133
^bb64:
  %v156 = sea.load %v62[%v153] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_131"("seahorn/lib/bcmp.c":61:20))
  %v157 = sea.icmp eq, %v152, %v156 : i8 loc(".not2.i50.i.7"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v157, ^bb65, ^bb73(%v153, %v149 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb65:
  %v158 = sea.const 8 : i64 loc(".not9"("seahorn/lib/bcmp.c":60:11))
  %v159 = sea.icmp eq, %v68, %v158 : i64 loc(".not9"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v159, ^bb83, ^bb66 loc("seahorn/lib/bcmp.c":60:9)
^bb66:
  %v160 = sea.ptr.index %v16 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_133"("seahorn/lib/bcmp.c":61:11))
  %v161 = sea.const 1 : i64 loc("_134"("seahorn/lib/bcmp.c":61:11))
  %v162 = sea.ptr.dereferenceable %v160, %v161 : !sea.ptr<64>, i64 loc("_134"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v162, ^bb67, ^bb133
^bb67:
  %v163 = sea.load %v64[%v160] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_136"("seahorn/lib/bcmp.c":61:11))
  %v164 = sea.ptr.index %v61 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_137"("seahorn/lib/bcmp.c":61:20))
  %v165 = sea.const 1 : i64 loc("_138"("seahorn/lib/bcmp.c":61:20))
  %v166 = sea.ptr.dereferenceable %v164, %v165 : !sea.ptr<64>, i64 loc("_138"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v166, ^bb68, ^bb133
^bb68:
  %v167 = sea.load %v62[%v164] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_140"("seahorn/lib/bcmp.c":61:20))
  %v168 = sea.icmp eq, %v163, %v167 : i8 loc(".not2.i50.i.8"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v168, ^bb69, ^bb73(%v164, %v160 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb69:
  %v169 = sea.const 9 : i64 loc("_141"("seahorn/lib/bcmp.c":60:11))
  %v170 = sea.icmp ugt, %v68, %v169 : i64 loc("_141"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v170, ^bb70, ^bb83 loc("seahorn/lib/bcmp.c":60:9)
^bb70:
  %v171 = sea.ptr.index %v16 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_143"("seahorn/lib/bcmp.c":61:11))
  %v172 = sea.const 1 : i64 loc("_144"("seahorn/lib/bcmp.c":61:11))
  %v173 = sea.ptr.dereferenceable %v171, %v172 : !sea.ptr<64>, i64 loc("_144"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v173, ^bb71, ^bb133
^bb71:
  %v174 = sea.load %v64[%v171] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_146"("seahorn/lib/bcmp.c":61:11))
  %v175 = sea.ptr.index %v61 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_147"("seahorn/lib/bcmp.c":61:20))
  %v176 = sea.const 1 : i64 loc("_148"("seahorn/lib/bcmp.c":61:20))
  %v177 = sea.ptr.dereferenceable %v175, %v176 : !sea.ptr<64>, i64 loc("_148"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v177, ^bb72, ^bb133
^bb72:
  %v178 = sea.load %v62[%v175] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_150"("seahorn/lib/bcmp.c":61:20))
  %v179 = sea.icmp eq, %v174, %v178 : i8 loc(".not2.i50.i.9"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v179, ^bb75, ^bb73(%v175, %v171 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb73(%v180 : !sea.ptr<64>, %v181 : !sea.ptr<64>):
  %v182 = sea.const 1 : i64 loc("_62"("seahorn/lib/bcmp.c":62:16))
  %v183 = sea.ptr.dereferenceable %v181, %v182 : !sea.ptr<64>, i64 loc("_62"("seahorn/lib/bcmp.c":62:16))
  sea.cond_br %v183, ^bb74, ^bb133
^bb74:
  %v184 = sea.const 1 : i64 loc("_64"("seahorn/lib/bcmp.c":62:24))
  %v185 = sea.ptr.dereferenceable %v180, %v184 : !sea.ptr<64>, i64 loc("_64"("seahorn/lib/bcmp.c":62:24))
  sea.cond_br %v185, ^bb91, ^bb133
^bb75:
  %v186 = sea.const 10 : i64 loc(".not10"("seahorn/lib/bcmp.c":67:31))
  %v187 = sea.icmp eq, %v68, %v186 : i64 loc(".not10"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v187, ^bb83, ^bb76 loc("seahorn/lib/bcmp.c":67:3)
^bb76:
  %v188 = sea.ptr.index %v16 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_52"("seahorn/lib/bcmp.c":68:9))
  %v189 = sea.const 1 : i64 loc("_53"("seahorn/lib/bcmp.c":68:9))
  %v190 = sea.ptr.dereferenceable %v188, %v189 : !sea.ptr<64>, i64 loc("_53"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v190, ^bb77, ^bb133
^bb77:
  %v191 = sea.load %v64[%v188] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_154"("seahorn/lib/bcmp.c":68:9))
  %v192 = sea.ptr.index %v61 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_155"("seahorn/lib/bcmp.c":68:18))
  %v193 = sea.const 1 : i64 loc("_156"("seahorn/lib/bcmp.c":68:18))
  %v194 = sea.ptr.dereferenceable %v192, %v193 : !sea.ptr<64>, i64 loc("_156"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v194, ^bb78, ^bb133
^bb78:
  %v195 = sea.load %v62[%v192] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_158"("seahorn/lib/bcmp.c":68:18))
  %v196 = sea.icmp eq, %v191, %v195 : i8 loc(".not.i49.i"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v196, ^bb81, ^bb79 loc("seahorn/lib/bcmp.c":68:9)
^bb79:
  %v197 = sea.const 1 : i64 loc("_160"("seahorn/lib/bcmp.c":69:14))
  %v198 = sea.ptr.dereferenceable %v188, %v197 : !sea.ptr<64>, i64 loc("_160"("seahorn/lib/bcmp.c":69:14))
  sea.cond_br %v198, ^bb80, ^bb133
^bb80:
  %v199 = sea.const 1 : i64 loc("_162"("seahorn/lib/bcmp.c":69:22))
  %v200 = sea.ptr.dereferenceable %v192, %v199 : !sea.ptr<64>, i64 loc("_162"("seahorn/lib/bcmp.c":69:22))
  sea.cond_br %v200, ^bb91, ^bb133
^bb81:
  %v201 = sea.const 11 : i64 loc("exitcond41.not"("seahorn/lib/bcmp.c":67:31))
  %v202 = sea.icmp eq, %v68, %v201 : i64 loc("exitcond41.not"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v202, ^bb83, ^bb82 loc("seahorn/lib/bcmp.c":67:3)
^bb82:
  %v203 = sea.ptr.index %v16 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_152"("seahorn/lib/bcmp.c":68:9))
  %v204 = sea.const 1 : i64 loc("_153"("seahorn/lib/bcmp.c":68:9))
  %v205 = sea.ptr.dereferenceable %v203, %v204 : !sea.ptr<64>, i64 loc("_153"("seahorn/lib/bcmp.c":68:9))
  %v206 = sea.const 1 : i1
  %v207 = sea.xor %v205, %v206 : i1
  sea.assume %v207
  sea.br ^bb133
^bb83:
  sea.br ^bb84
^bb84:
  sea.br ^bb85
^bb85:
  %v208 = sea.icmp eq, %v65, %v66 : i64 loc(".not2.i38.i"("aws-c-common/source/byte_buf.c":888:18))
  sea.cond_br %v208, ^bb87, ^bb86 loc("aws-c-common/source/byte_buf.c":888:9)
^bb86:
  sea.br ^bb91
^bb87:
  %v209 = sea.const 0 : i64 loc(".not.i"("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":35:21))
  %v210 = sea.icmp eq, %v65, %v209 : i64 loc(".not.i"("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":35:21))
  sea.cond_br %v210, ^bb91, ^bb88 loc("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":35:13)
^bb88:
  %v211 = sea.ptr.null : !sea.ptr<64> loc(".not.i45.i"("seahorn/lib/utils.c":15:3))
  %v212 = sea.ptr.cmp eq, %v16, %v211 : !sea.ptr<64> loc(".not.i45.i"("seahorn/lib/utils.c":15:3))
  %v213 = sea.ptr.null : !sea.ptr<64> loc("_168"("seahorn/lib/utils.c":15:3))
  %v214 = sea.ptr.cmp ne, %v61, %v213 : !sea.ptr<64> loc("_168"("seahorn/lib/utils.c":15:3))
  %v215 = sea.xor %v212, %v214 : i1 loc("_169"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v215, ^bb89, ^bb133 loc("seahorn/lib/utils.c":15:3)
^bb89:
  %v216 = sea.and %v30, %v214 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v216, ^bb90, ^bb91 loc("seahorn/lib/utils.c":16:15)
^bb90:
  %v217 = sea.nondet "nd_size_t" [14] : i64 loc("_171"("seahorn/lib/utils.c":17:16))
  %v218 = sea.icmp ult, %v217, %v65 : i64 loc("_172"("seahorn/lib/utils.c":19:14))
  %v219 = sea.const 36028797018963967 : i64 loc("_173"("seahorn/lib/utils.c":19:20))
  %v220 = sea.icmp ult, %v65, %v219 : i64 loc("_173"("seahorn/lib/utils.c":19:20))
  %v221 = sea.and %v220, %v218 : i1 loc("_174"("seahorn/lib/utils.c":19:20))
  sea.assume %v221 loc("seahorn/lib/utils.c":19:5)
  %v222 = sea.ptr.index %v16 [%v217] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_175"("seahorn/lib/utils.c":20:5))
  %v223 = sea.load %v64[%v222] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_176"("seahorn/lib/utils.c":20:5))
  %v224 = sea.ptr.index %v61 [%v217] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_177"("seahorn/lib/utils.c":20:5))
  %v225 = sea.load %v64[%v224] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_178"("seahorn/lib/utils.c":20:5))
  %v226 = sea.icmp eq, %v223, %v225 : i8 loc("_179"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v226, ^bb91, ^bb133 loc("seahorn/lib/utils.c":20:5)
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
  %v227 = sea.const 0 : i64 loc("_189"("aws-c-common/source/byte_buf.c":66:26))
  %v228 = sea.icmp eq, %v65, %v227 : i64 loc("_189"("aws-c-common/source/byte_buf.c":66:26))
  %v229 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v228, ^bb111(%v229 : i1), ^bb105 loc("aws-c-common/source/byte_buf.c":66:32)
^bb105:
  sea.br ^bb106
^bb106:
  sea.br ^bb107
^bb107:
  %v230 = sea.ptr.null : !sea.ptr<64> loc(".not2.i16.i"("aws-c-common/source/byte_buf.c":66:55))
  %v231 = sea.ptr.cmp eq, %v16, %v230 : !sea.ptr<64> loc(".not2.i16.i"("aws-c-common/source/byte_buf.c":66:55))
  %v232 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v231, ^bb111(%v232 : i1), ^bb108 loc("aws-c-common/source/byte_buf.c":66:67)
^bb108:
  sea.br ^bb109
^bb109:
  sea.br ^bb110
^bb110:
  %v233 = sea.load %v20[%v19] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_196"("aws-c-common/source/byte_buf.c":66:70))
  %v234 = sea.ptr.null : !sea.ptr<64> loc("_197"("aws-c-common/source/byte_buf.c":66:70))
  %v235 = sea.ptr.cmp ne, %v233, %v234 : !sea.ptr<64> loc("_197"("aws-c-common/source/byte_buf.c":66:70))
  sea.br ^bb111(%v235 : i1) loc("aws-c-common/source/byte_buf.c":66:70)
^bb111(%v236 : i1):
  sea.br ^bb112
^bb112:
  sea.cond_br %v228, ^bb117, ^bb113 loc("aws-c-common/source/byte_buf.c":66:32)
^bb113:
  sea.br ^bb114
^bb114:
  %v237 = sea.load %v20[%v19] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_202")
  %v238 = sea.ptr.null : !sea.ptr<64> loc(".not2.i12.i")
  %v239 = sea.ptr.cmp ne, %v237, %v238 : !sea.ptr<64> loc(".not2.i12.i")
  %v240 = sea.const 1 : i1 loc("or.cond21.not")
  %v241 = sea.const 0 : i1 loc("or.cond21.not")
  %v242 = sea.select %v240, %v239, %v241 : i1 loc("or.cond21.not")
  sea.cond_br %v242, ^bb115, ^bb133
^bb115:
  sea.br ^bb116
^bb116:
  sea.br ^bb117
^bb117:
  sea.br ^bb118
^bb118:
  %v243 = sea.const 0 : i64 loc("_206"("aws-c-common/source/byte_buf.c":66:26))
  %v244 = sea.icmp eq, %v66, %v243 : i64 loc("_206"("aws-c-common/source/byte_buf.c":66:26))
  %v245 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v244, ^bb124(%v245 : i1), ^bb119 loc("aws-c-common/source/byte_buf.c":66:32)
^bb119:
  sea.br ^bb120
^bb120:
  sea.br ^bb121
^bb121:
  %v246 = sea.load %v60[%v63] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_210"("aws-c-common/source/byte_buf.c":66:63))
  %v247 = sea.ptr.null : !sea.ptr<64> loc(".not2.i8.i"("aws-c-common/source/byte_buf.c":66:55))
  %v248 = sea.ptr.cmp eq, %v246, %v247 : !sea.ptr<64> loc(".not2.i8.i"("aws-c-common/source/byte_buf.c":66:55))
  %v249 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v248, ^bb124(%v249 : i1), ^bb122 loc("aws-c-common/source/byte_buf.c":66:67)
^bb122:
  sea.br ^bb123
^bb123:
  %v250 = sea.const 1 : i1
  sea.br ^bb124(%v250 : i1)
^bb124(%v251 : i1):
  sea.br ^bb125
^bb125:
  sea.cond_br %v244, ^bb130, ^bb126 loc("aws-c-common/source/byte_buf.c":66:32)
^bb126:
  sea.br ^bb127
^bb127:
  %v252 = sea.load %v60[%v63] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_217")
  %v253 = sea.ptr.null : !sea.ptr<64> loc(".not2.i.i")
  %v254 = sea.ptr.cmp ne, %v252, %v253 : !sea.ptr<64> loc(".not2.i.i")
  %v255 = sea.const 1 : i1 loc("or.cond25.not")
  %v256 = sea.const 0 : i1 loc("or.cond25.not")
  %v257 = sea.select %v255, %v254, %v256 : i1 loc("or.cond25.not")
  sea.cond_br %v257, ^bb128, ^bb133
^bb128:
  sea.br ^bb129
^bb129:
  sea.br ^bb130
^bb130:
  sea.cond_br %v228, ^bb132, ^bb131 loc("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":44:9)
^bb131:
  %v258 = sea.load %v20[%v19] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_221"("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":45:9))
  %v259 = sea.mem.is_modified %v64[%v258] : !sea.mem<!sea.ptr<64>, i8> loc("_222"("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":45:9))
  %v260 = sea.const 1 : i1 loc("_223"("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":45:9))
  %v261 = sea.xor %v259, %v260 : i1 loc("_223"("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":45:9))
  %v262 = sea.mem.is_modified %v64[%v258] : !sea.mem<!sea.ptr<64>, i8> loc("_224"("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":45:9))
  sea.cond_br %v262, ^bb133, ^bb132 loc("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":45:9)
^bb132:
  %v263 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":47:9)
  %v264 = sea.xor %v244, %v263 : i1 loc("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":47:9)
  sea.assume %v264 loc("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":47:9)
  %v265 = sea.load %v60[%v63] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_226"("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":48:9))
  %v266 = sea.mem.is_modified %v64[%v265] : !sea.mem<!sea.ptr<64>, i8> loc("_227"("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":48:9))
  %v267 = sea.const 1 : i1 loc("_228"("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":48:9))
  %v268 = sea.xor %v266, %v267 : i1 loc("_228"("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":48:9))
  %v269 = sea.mem.is_modified %v64[%v265] : !sea.mem<!sea.ptr<64>, i8> loc("_229"("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":48:9))
  sea.assume %v269 loc("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":48:9)
  sea.br ^bb133 loc("seahorn/jobs2/byte_cursor_compare_lexical2/aws_byte_cursor_compare_lexical_harness2.c":48:9)
^bb133:
  sea.br ^bb134
^bb134:
  %v270 = sea.const 0 : i1
  sea.assert %v270
  sea.halt
}
