// Exported from SeaHorn (byte_cursor_eq2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
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
  %v13 = sea.const 10 : i64 loc("malloc.i4")
  %v14 = sea.alloca %v13 align 16 [7] : i64 -> !sea.ptr<64> loc("malloc.i4")
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
  sea.assume %v28 loc("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":17:5)
  %v29 = sea.nondet "nd_bool" [9] : i1 loc("_18"("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":18:9))
  sea.cond_br %v29, ^bb26, ^bb13 loc("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":18:9)
^bb13:
  %v30 = sea.nondet "nd_size_t" [10] : i64 loc("_21"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb14
^bb14:
  %v31 = sea.store %v1[%v6], %v30 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb15
^bb15:
  %v32 = sea.const 11 : i64 loc("_24"("seahorn/lib/byte_buf_helper.c":33:24))
  %v33 = sea.icmp ult, %v30, %v32 : i64 loc("_24"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v33 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v34 = sea.nondet "nd_malloc_is_fail" [11] : i1 loc("_25"("seahorn/lib/sea_allocators.c":11:10))
  %v35 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v34, ^bb17(%v18, %v35 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb16 loc("seahorn/lib/sea_allocators.c":11:10)
^bb16:
  %v36 = sea.const 10 : i64 loc("malloc35.i5")
  %v37 = sea.alloca %v36 align 16 [12] : i64 -> !sea.ptr<64> loc("malloc35.i5")
  sea.br ^bb17(%v18, %v37 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb17(%v38 : !sea.mem<!sea.ptr<64>, i8>, %v39 : !sea.ptr<64>):
  %v40 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v41 = sea.memhavoc %v38[%v39], %v40 [13] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v42 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_28"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb18
^bb18:
  %v43 = sea.store %v31[%v42], %v39 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  sea.br ^bb19
^bb19:
  %v44 = sea.const 0 : i64 loc("_30"("aws-c-common/source/byte_buf.c":66:26))
  %v45 = sea.icmp eq, %v30, %v44 : i64 loc("_30"("aws-c-common/source/byte_buf.c":66:26))
  %v46 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v45, ^bb25(%v46 : i1), ^bb20 loc("aws-c-common/source/byte_buf.c":66:32)
^bb20:
  sea.br ^bb21
^bb21:
  sea.br ^bb22
^bb22:
  %v47 = sea.ptr.null : !sea.ptr<64> loc(".not2.i20.i"("aws-c-common/source/byte_buf.c":66:55))
  %v48 = sea.ptr.cmp eq, %v39, %v47 : !sea.ptr<64> loc(".not2.i20.i"("aws-c-common/source/byte_buf.c":66:55))
  %v49 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v48, ^bb25(%v49 : i1), ^bb23 loc("aws-c-common/source/byte_buf.c":66:67)
^bb23:
  sea.br ^bb24
^bb24:
  %v50 = sea.const 1 : i1
  sea.br ^bb25(%v50 : i1)
^bb25(%v51 : i1):
  sea.assume %v51 loc("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":22:9)
  sea.br ^bb27(%v41, %v43, %v39 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>)
^bb26:
  %v52 = sea.store %v1[%v6], %v7 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":19:15)
  %v53 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":19:15))
  %v54 = sea.store %v52[%v53], %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":19:15)
  sea.br ^bb27(%v18, %v54, %v16 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":20:5)
^bb27(%v55 : !sea.mem<!sea.ptr<64>, i8>, %v56 : !sea.mem<!sea.ptr<64>, i8>, %v57 : !sea.ptr<64>):
  sea.tracking_on loc("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":26:5)
  %v58 = sea.mem.reset_modified %v55[%v16] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":27:5)
  %v59 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_39"("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":28:36))
  %v60 = sea.mem.reset_modified %v58[%v57] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":28:5)
  sea.br ^bb28
^bb28:
  sea.br ^bb29
^bb29:
  %v61 = sea.load %v8[%v4] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_42"("aws-c-common/source/byte_buf.c":359:39))
  sea.br ^bb30
^bb30:
  sea.br ^bb31
^bb31:
  %v62 = sea.load %v56[%v6] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_45"("aws-c-common/source/byte_buf.c":359:55))
  %v63 = sea.icmp eq, %v61, %v62 : i64 loc(".not.i.i.i"("aws-c-common/source/byte_buf.c":425:15))
  sea.cond_br %v63, ^bb32, ^bb89 loc("aws-c-common/source/byte_buf.c":425:9)
^bb32:
  %v64 = sea.const 0 : i64 loc("_47"("aws-c-common/source/byte_buf.c":429:15))
  %v65 = sea.icmp eq, %v61, %v64 : i64 loc("_47"("aws-c-common/source/byte_buf.c":429:15))
  sea.cond_br %v65, ^bb88, ^bb33 loc("aws-c-common/source/byte_buf.c":429:9)
^bb33:
  %v66 = sea.ptr.cmp eq, %v16, %v57 : !sea.ptr<64> loc("_49"("seahorn/lib/bcmp.c":55:10))
  sea.cond_br %v66, ^bb84, ^bb34 loc("seahorn/lib/bcmp.c":55:7)
^bb34:
  %v67 = sea.const 1 : i64 loc("_52"("seahorn/lib/bcmp.c":61:11))
  %v68 = sea.ptr.dereferenceable %v16, %v67 : !sea.ptr<64>, i64 loc("_52"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v68, ^bb35, ^bb118
^bb35:
  %v69 = sea.load %v60[%v16] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_54"("seahorn/lib/bcmp.c":61:11))
  %v70 = sea.const 1 : i64 loc("_55"("seahorn/lib/bcmp.c":61:20))
  %v71 = sea.ptr.dereferenceable %v57, %v70 : !sea.ptr<64>, i64 loc("_55"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v71, ^bb36, ^bb118
^bb36:
  %v72 = sea.load %v60[%v57] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_57"("seahorn/lib/bcmp.c":61:20))
  %v73 = sea.icmp eq, %v69, %v72 : i8 loc(".not2.i34.i"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v73, ^bb37, ^bb73(%v57, %v16 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb37:
  %v74 = sea.const 1 : i64 loc(".not"("seahorn/lib/bcmp.c":60:11))
  %v75 = sea.icmp eq, %v61, %v74 : i64 loc(".not"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v75, ^bb83, ^bb38 loc("seahorn/lib/bcmp.c":60:9)
^bb38:
  %v76 = sea.ptr.index %v16 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_63"("seahorn/lib/bcmp.c":61:11))
  %v77 = sea.const 1 : i64 loc("_64"("seahorn/lib/bcmp.c":61:11))
  %v78 = sea.ptr.dereferenceable %v76, %v77 : !sea.ptr<64>, i64 loc("_64"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v78, ^bb39, ^bb118
^bb39:
  %v79 = sea.load %v60[%v76] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_66"("seahorn/lib/bcmp.c":61:11))
  %v80 = sea.ptr.index %v57 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_67"("seahorn/lib/bcmp.c":61:20))
  %v81 = sea.const 1 : i64 loc("_68"("seahorn/lib/bcmp.c":61:20))
  %v82 = sea.ptr.dereferenceable %v80, %v81 : !sea.ptr<64>, i64 loc("_68"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v82, ^bb40, ^bb118
^bb40:
  %v83 = sea.load %v58[%v80] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_70"("seahorn/lib/bcmp.c":61:20))
  %v84 = sea.icmp eq, %v79, %v83 : i8 loc(".not2.i34.i.1"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v84, ^bb41, ^bb73(%v80, %v76 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb41:
  %v85 = sea.const 2 : i64 loc("_71"("seahorn/lib/bcmp.c":60:11))
  %v86 = sea.icmp ugt, %v61, %v85 : i64 loc("_71"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v86, ^bb42, ^bb83 loc("seahorn/lib/bcmp.c":60:9)
^bb42:
  %v87 = sea.ptr.index %v16 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_73"("seahorn/lib/bcmp.c":61:11))
  %v88 = sea.const 1 : i64 loc("_74"("seahorn/lib/bcmp.c":61:11))
  %v89 = sea.ptr.dereferenceable %v87, %v88 : !sea.ptr<64>, i64 loc("_74"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v89, ^bb43, ^bb118
^bb43:
  %v90 = sea.load %v60[%v87] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_76"("seahorn/lib/bcmp.c":61:11))
  %v91 = sea.ptr.index %v57 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_77"("seahorn/lib/bcmp.c":61:20))
  %v92 = sea.const 1 : i64 loc("_78"("seahorn/lib/bcmp.c":61:20))
  %v93 = sea.ptr.dereferenceable %v91, %v92 : !sea.ptr<64>, i64 loc("_78"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v93, ^bb44, ^bb118
^bb44:
  %v94 = sea.load %v58[%v91] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_80"("seahorn/lib/bcmp.c":61:20))
  %v95 = sea.icmp eq, %v90, %v94 : i8 loc(".not2.i34.i.2"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v95, ^bb45, ^bb73(%v91, %v87 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb45:
  %v96 = sea.const 3 : i64 loc(".not4"("seahorn/lib/bcmp.c":60:11))
  %v97 = sea.icmp eq, %v61, %v96 : i64 loc(".not4"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v97, ^bb83, ^bb46 loc("seahorn/lib/bcmp.c":60:9)
^bb46:
  %v98 = sea.ptr.index %v16 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_82"("seahorn/lib/bcmp.c":61:11))
  %v99 = sea.const 1 : i64 loc("_83"("seahorn/lib/bcmp.c":61:11))
  %v100 = sea.ptr.dereferenceable %v98, %v99 : !sea.ptr<64>, i64 loc("_83"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v100, ^bb47, ^bb118
^bb47:
  %v101 = sea.load %v60[%v98] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_85"("seahorn/lib/bcmp.c":61:11))
  %v102 = sea.ptr.index %v57 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_86"("seahorn/lib/bcmp.c":61:20))
  %v103 = sea.const 1 : i64 loc("_87"("seahorn/lib/bcmp.c":61:20))
  %v104 = sea.ptr.dereferenceable %v102, %v103 : !sea.ptr<64>, i64 loc("_87"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v104, ^bb48, ^bb118
^bb48:
  %v105 = sea.load %v58[%v102] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_89"("seahorn/lib/bcmp.c":61:20))
  %v106 = sea.icmp eq, %v101, %v105 : i8 loc(".not2.i34.i.3"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v106, ^bb49, ^bb73(%v102, %v98 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb49:
  %v107 = sea.const 4 : i64 loc("_90"("seahorn/lib/bcmp.c":60:11))
  %v108 = sea.icmp ugt, %v61, %v107 : i64 loc("_90"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v108, ^bb50, ^bb83 loc("seahorn/lib/bcmp.c":60:9)
^bb50:
  %v109 = sea.ptr.index %v16 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_92"("seahorn/lib/bcmp.c":61:11))
  %v110 = sea.const 1 : i64 loc("_93"("seahorn/lib/bcmp.c":61:11))
  %v111 = sea.ptr.dereferenceable %v109, %v110 : !sea.ptr<64>, i64 loc("_93"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v111, ^bb51, ^bb118
^bb51:
  %v112 = sea.load %v60[%v109] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_95"("seahorn/lib/bcmp.c":61:11))
  %v113 = sea.ptr.index %v57 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_96"("seahorn/lib/bcmp.c":61:20))
  %v114 = sea.const 1 : i64 loc("_97"("seahorn/lib/bcmp.c":61:20))
  %v115 = sea.ptr.dereferenceable %v113, %v114 : !sea.ptr<64>, i64 loc("_97"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v115, ^bb52, ^bb118
^bb52:
  %v116 = sea.load %v58[%v113] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_99"("seahorn/lib/bcmp.c":61:20))
  %v117 = sea.icmp eq, %v112, %v116 : i8 loc(".not2.i34.i.4"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v117, ^bb53, ^bb73(%v113, %v109 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb53:
  %v118 = sea.const 5 : i64 loc(".not5"("seahorn/lib/bcmp.c":60:11))
  %v119 = sea.icmp eq, %v61, %v118 : i64 loc(".not5"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v119, ^bb83, ^bb54 loc("seahorn/lib/bcmp.c":60:9)
^bb54:
  %v120 = sea.ptr.index %v16 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_101"("seahorn/lib/bcmp.c":61:11))
  %v121 = sea.const 1 : i64 loc("_102"("seahorn/lib/bcmp.c":61:11))
  %v122 = sea.ptr.dereferenceable %v120, %v121 : !sea.ptr<64>, i64 loc("_102"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v122, ^bb55, ^bb118
^bb55:
  %v123 = sea.load %v60[%v120] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_104"("seahorn/lib/bcmp.c":61:11))
  %v124 = sea.ptr.index %v57 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_105"("seahorn/lib/bcmp.c":61:20))
  %v125 = sea.const 1 : i64 loc("_106"("seahorn/lib/bcmp.c":61:20))
  %v126 = sea.ptr.dereferenceable %v124, %v125 : !sea.ptr<64>, i64 loc("_106"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v126, ^bb56, ^bb118
^bb56:
  %v127 = sea.load %v58[%v124] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_108"("seahorn/lib/bcmp.c":61:20))
  %v128 = sea.icmp eq, %v123, %v127 : i8 loc(".not2.i34.i.5"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v128, ^bb57, ^bb73(%v124, %v120 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb57:
  %v129 = sea.const 6 : i64 loc("_109"("seahorn/lib/bcmp.c":60:11))
  %v130 = sea.icmp ugt, %v61, %v129 : i64 loc("_109"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v130, ^bb58, ^bb83 loc("seahorn/lib/bcmp.c":60:9)
^bb58:
  %v131 = sea.ptr.index %v16 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_111"("seahorn/lib/bcmp.c":61:11))
  %v132 = sea.const 1 : i64 loc("_112"("seahorn/lib/bcmp.c":61:11))
  %v133 = sea.ptr.dereferenceable %v131, %v132 : !sea.ptr<64>, i64 loc("_112"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v133, ^bb59, ^bb118
^bb59:
  %v134 = sea.load %v60[%v131] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_114"("seahorn/lib/bcmp.c":61:11))
  %v135 = sea.ptr.index %v57 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_115"("seahorn/lib/bcmp.c":61:20))
  %v136 = sea.const 1 : i64 loc("_116"("seahorn/lib/bcmp.c":61:20))
  %v137 = sea.ptr.dereferenceable %v135, %v136 : !sea.ptr<64>, i64 loc("_116"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v137, ^bb60, ^bb118
^bb60:
  %v138 = sea.load %v58[%v135] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_118"("seahorn/lib/bcmp.c":61:20))
  %v139 = sea.icmp eq, %v134, %v138 : i8 loc(".not2.i34.i.6"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v139, ^bb61, ^bb73(%v135, %v131 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb61:
  %v140 = sea.const 7 : i64 loc(".not6"("seahorn/lib/bcmp.c":60:11))
  %v141 = sea.icmp eq, %v61, %v140 : i64 loc(".not6"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v141, ^bb83, ^bb62 loc("seahorn/lib/bcmp.c":60:9)
^bb62:
  %v142 = sea.ptr.index %v16 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_120"("seahorn/lib/bcmp.c":61:11))
  %v143 = sea.const 1 : i64 loc("_121"("seahorn/lib/bcmp.c":61:11))
  %v144 = sea.ptr.dereferenceable %v142, %v143 : !sea.ptr<64>, i64 loc("_121"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v144, ^bb63, ^bb118
^bb63:
  %v145 = sea.load %v60[%v142] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_123"("seahorn/lib/bcmp.c":61:11))
  %v146 = sea.ptr.index %v57 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_124"("seahorn/lib/bcmp.c":61:20))
  %v147 = sea.const 1 : i64 loc("_125"("seahorn/lib/bcmp.c":61:20))
  %v148 = sea.ptr.dereferenceable %v146, %v147 : !sea.ptr<64>, i64 loc("_125"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v148, ^bb64, ^bb118
^bb64:
  %v149 = sea.load %v58[%v146] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_127"("seahorn/lib/bcmp.c":61:20))
  %v150 = sea.icmp eq, %v145, %v149 : i8 loc(".not2.i34.i.7"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v150, ^bb65, ^bb73(%v146, %v142 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb65:
  %v151 = sea.const 8 : i64 loc("_128"("seahorn/lib/bcmp.c":60:11))
  %v152 = sea.icmp ugt, %v61, %v151 : i64 loc("_128"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v152, ^bb66, ^bb83 loc("seahorn/lib/bcmp.c":60:9)
^bb66:
  %v153 = sea.ptr.index %v16 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_130"("seahorn/lib/bcmp.c":61:11))
  %v154 = sea.const 1 : i64 loc("_131"("seahorn/lib/bcmp.c":61:11))
  %v155 = sea.ptr.dereferenceable %v153, %v154 : !sea.ptr<64>, i64 loc("_131"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v155, ^bb67, ^bb118
^bb67:
  %v156 = sea.load %v60[%v153] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_133"("seahorn/lib/bcmp.c":61:11))
  %v157 = sea.ptr.index %v57 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_134"("seahorn/lib/bcmp.c":61:20))
  %v158 = sea.const 1 : i64 loc("_135"("seahorn/lib/bcmp.c":61:20))
  %v159 = sea.ptr.dereferenceable %v157, %v158 : !sea.ptr<64>, i64 loc("_135"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v159, ^bb68, ^bb118
^bb68:
  %v160 = sea.load %v58[%v157] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_137"("seahorn/lib/bcmp.c":61:20))
  %v161 = sea.icmp eq, %v156, %v160 : i8 loc(".not2.i34.i.8"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v161, ^bb69, ^bb73(%v157, %v153 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb69:
  %v162 = sea.const 9 : i64 loc(".not7"("seahorn/lib/bcmp.c":60:11))
  %v163 = sea.icmp eq, %v61, %v162 : i64 loc(".not7"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v163, ^bb83, ^bb70 loc("seahorn/lib/bcmp.c":60:9)
^bb70:
  %v164 = sea.ptr.index %v16 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_139"("seahorn/lib/bcmp.c":61:11))
  %v165 = sea.const 1 : i64 loc("_140"("seahorn/lib/bcmp.c":61:11))
  %v166 = sea.ptr.dereferenceable %v164, %v165 : !sea.ptr<64>, i64 loc("_140"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v166, ^bb71, ^bb118
^bb71:
  %v167 = sea.load %v60[%v164] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_142"("seahorn/lib/bcmp.c":61:11))
  %v168 = sea.ptr.index %v57 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_143"("seahorn/lib/bcmp.c":61:20))
  %v169 = sea.const 1 : i64 loc("_144"("seahorn/lib/bcmp.c":61:20))
  %v170 = sea.ptr.dereferenceable %v168, %v169 : !sea.ptr<64>, i64 loc("_144"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v170, ^bb72, ^bb118
^bb72:
  %v171 = sea.load %v58[%v168] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_146"("seahorn/lib/bcmp.c":61:20))
  %v172 = sea.icmp eq, %v167, %v171 : i8 loc(".not2.i34.i.9"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v172, ^bb75, ^bb73(%v168, %v164 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb73(%v173 : !sea.ptr<64>, %v174 : !sea.ptr<64>):
  %v175 = sea.const 1 : i64 loc("_59"("seahorn/lib/bcmp.c":62:16))
  %v176 = sea.ptr.dereferenceable %v174, %v175 : !sea.ptr<64>, i64 loc("_59"("seahorn/lib/bcmp.c":62:16))
  sea.cond_br %v176, ^bb74, ^bb118
^bb74:
  %v177 = sea.const 1 : i64 loc("_61"("seahorn/lib/bcmp.c":62:24))
  %v178 = sea.ptr.dereferenceable %v173, %v177 : !sea.ptr<64>, i64 loc("_61"("seahorn/lib/bcmp.c":62:24))
  sea.cond_br %v178, ^bb89, ^bb118
^bb75:
  %v179 = sea.const 10 : i64 loc("_147"("seahorn/lib/bcmp.c":67:31))
  %v180 = sea.icmp ugt, %v61, %v179 : i64 loc("_147"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v180, ^bb76, ^bb83 loc("seahorn/lib/bcmp.c":67:3)
^bb76:
  %v181 = sea.ptr.index %v16 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_50"("seahorn/lib/bcmp.c":68:9))
  %v182 = sea.const 1 : i64 loc("_51"("seahorn/lib/bcmp.c":68:9))
  %v183 = sea.ptr.dereferenceable %v181, %v182 : !sea.ptr<64>, i64 loc("_51"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v183, ^bb77, ^bb118
^bb77:
  %v184 = sea.load %v60[%v181] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_151"("seahorn/lib/bcmp.c":68:9))
  %v185 = sea.ptr.index %v57 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_152"("seahorn/lib/bcmp.c":68:18))
  %v186 = sea.const 1 : i64 loc("_153"("seahorn/lib/bcmp.c":68:18))
  %v187 = sea.ptr.dereferenceable %v185, %v186 : !sea.ptr<64>, i64 loc("_153"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v187, ^bb78, ^bb118
^bb78:
  %v188 = sea.load %v58[%v185] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_155"("seahorn/lib/bcmp.c":68:18))
  %v189 = sea.icmp eq, %v184, %v188 : i8 loc(".not.i33.i"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v189, ^bb81, ^bb79 loc("seahorn/lib/bcmp.c":68:9)
^bb79:
  %v190 = sea.const 1 : i64 loc("_157"("seahorn/lib/bcmp.c":69:14))
  %v191 = sea.ptr.dereferenceable %v181, %v190 : !sea.ptr<64>, i64 loc("_157"("seahorn/lib/bcmp.c":69:14))
  sea.cond_br %v191, ^bb80, ^bb118
^bb80:
  %v192 = sea.const 1 : i64 loc("_159"("seahorn/lib/bcmp.c":69:22))
  %v193 = sea.ptr.dereferenceable %v185, %v192 : !sea.ptr<64>, i64 loc("_159"("seahorn/lib/bcmp.c":69:22))
  sea.cond_br %v193, ^bb89, ^bb118
^bb81:
  %v194 = sea.const 11 : i64 loc("exitcond35.not"("seahorn/lib/bcmp.c":67:31))
  %v195 = sea.icmp eq, %v61, %v194 : i64 loc("exitcond35.not"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v195, ^bb83, ^bb82 loc("seahorn/lib/bcmp.c":67:3)
^bb82:
  %v196 = sea.ptr.index %v16 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_149"("seahorn/lib/bcmp.c":68:9))
  %v197 = sea.const 1 : i64 loc("_150"("seahorn/lib/bcmp.c":68:9))
  %v198 = sea.ptr.dereferenceable %v196, %v197 : !sea.ptr<64>, i64 loc("_150"("seahorn/lib/bcmp.c":68:9))
  %v199 = sea.const 1 : i1
  %v200 = sea.xor %v198, %v199 : i1
  sea.assume %v200
  sea.br ^bb118
^bb83:
  sea.br ^bb85
^bb84:
  sea.br ^bb85 loc("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":33:13)
^bb85:
  %v201 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v202 = sea.ptr.cmp eq, %v16, %v201 : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v203 = sea.ptr.null : !sea.ptr<64> loc("_161"("seahorn/lib/utils.c":15:3))
  %v204 = sea.ptr.cmp ne, %v57, %v203 : !sea.ptr<64> loc("_161"("seahorn/lib/utils.c":15:3))
  %v205 = sea.xor %v202, %v204 : i1 loc("_162"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v205, ^bb86, ^bb118 loc("seahorn/lib/utils.c":15:3)
^bb86:
  %v206 = sea.ptr.null : !sea.ptr<64> loc("_163")
  %v207 = sea.ptr.cmp ne, %v16, %v206 : !sea.ptr<64> loc("_163")
  %v208 = sea.and %v207, %v204 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v208, ^bb87, ^bb89 loc("seahorn/lib/utils.c":16:15)
^bb87:
  %v209 = sea.nondet "nd_size_t" [14] : i64 loc("_165"("seahorn/lib/utils.c":17:16))
  %v210 = sea.icmp ult, %v209, %v61 : i64 loc("_166"("seahorn/lib/utils.c":19:14))
  %v211 = sea.const 36028797018963967 : i64 loc("_167"("seahorn/lib/utils.c":19:20))
  %v212 = sea.icmp ult, %v61, %v211 : i64 loc("_167"("seahorn/lib/utils.c":19:20))
  %v213 = sea.and %v212, %v210 : i1 loc("_168"("seahorn/lib/utils.c":19:20))
  sea.assume %v213 loc("seahorn/lib/utils.c":19:5)
  %v214 = sea.ptr.index %v16 [%v209] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_169"("seahorn/lib/utils.c":20:5))
  %v215 = sea.load %v60[%v214] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_170"("seahorn/lib/utils.c":20:5))
  %v216 = sea.ptr.index %v57 [%v209] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_171"("seahorn/lib/utils.c":20:5))
  %v217 = sea.load %v60[%v216] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_172"("seahorn/lib/utils.c":20:5))
  %v218 = sea.icmp eq, %v215, %v217 : i8 loc("_173"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v218, ^bb89, ^bb118 loc("seahorn/lib/utils.c":20:5)
^bb88:
  sea.br ^bb89 loc("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":33:13)
^bb89:
  sea.br ^bb90
^bb90:
  %v219 = sea.const 0 : i64 loc("_175"("aws-c-common/source/byte_buf.c":66:26))
  %v220 = sea.icmp eq, %v61, %v219 : i64 loc("_175"("aws-c-common/source/byte_buf.c":66:26))
  %v221 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v220, ^bb96(%v221 : i1), ^bb91 loc("aws-c-common/source/byte_buf.c":66:32)
^bb91:
  sea.br ^bb92
^bb92:
  sea.br ^bb93
^bb93:
  %v222 = sea.ptr.null : !sea.ptr<64> loc(".not2.i16.i"("aws-c-common/source/byte_buf.c":66:55))
  %v223 = sea.ptr.cmp eq, %v16, %v222 : !sea.ptr<64> loc(".not2.i16.i"("aws-c-common/source/byte_buf.c":66:55))
  %v224 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v223, ^bb96(%v224 : i1), ^bb94 loc("aws-c-common/source/byte_buf.c":66:67)
^bb94:
  sea.br ^bb95
^bb95:
  %v225 = sea.const 1 : i1
  sea.br ^bb96(%v225 : i1)
^bb96(%v226 : i1):
  sea.br ^bb97
^bb97:
  sea.cond_br %v220, ^bb102, ^bb98 loc("aws-c-common/source/byte_buf.c":66:32)
^bb98:
  sea.br ^bb99
^bb99:
  %v227 = sea.ptr.null : !sea.ptr<64> loc(".not2.i12.i")
  %v228 = sea.ptr.cmp ne, %v16, %v227 : !sea.ptr<64> loc(".not2.i12.i")
  %v229 = sea.const 1 : i1 loc("or.cond14.not")
  %v230 = sea.and %v228, %v229 : i1 loc("or.cond14.not")
  sea.cond_br %v230, ^bb100, ^bb118
^bb100:
  sea.br ^bb101
^bb101:
  sea.br ^bb102
^bb102:
  sea.br ^bb103
^bb103:
  %v231 = sea.const 0 : i64 loc("_188"("aws-c-common/source/byte_buf.c":66:26))
  %v232 = sea.icmp eq, %v62, %v231 : i64 loc("_188"("aws-c-common/source/byte_buf.c":66:26))
  %v233 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v232, ^bb109(%v233 : i1), ^bb104 loc("aws-c-common/source/byte_buf.c":66:32)
^bb104:
  sea.br ^bb105
^bb105:
  sea.br ^bb106
^bb106:
  %v234 = sea.ptr.null : !sea.ptr<64> loc(".not2.i8.i"("aws-c-common/source/byte_buf.c":66:55))
  %v235 = sea.ptr.cmp eq, %v57, %v234 : !sea.ptr<64> loc(".not2.i8.i"("aws-c-common/source/byte_buf.c":66:55))
  %v236 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v235, ^bb109(%v236 : i1), ^bb107 loc("aws-c-common/source/byte_buf.c":66:67)
^bb107:
  sea.br ^bb108
^bb108:
  %v237 = sea.const 1 : i1
  sea.br ^bb109(%v237 : i1)
^bb109(%v238 : i1):
  sea.br ^bb110
^bb110:
  sea.cond_br %v232, ^bb115, ^bb111 loc("aws-c-common/source/byte_buf.c":66:32)
^bb111:
  sea.br ^bb112
^bb112:
  %v239 = sea.load %v56[%v59] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_198")
  %v240 = sea.ptr.null : !sea.ptr<64> loc(".not2.i.i")
  %v241 = sea.ptr.cmp ne, %v239, %v240 : !sea.ptr<64> loc(".not2.i.i")
  %v242 = sea.const 1 : i1 loc("or.cond18.not")
  %v243 = sea.const 0 : i1 loc("or.cond18.not")
  %v244 = sea.select %v242, %v241, %v243 : i1 loc("or.cond18.not")
  sea.cond_br %v244, ^bb113, ^bb118
^bb113:
  sea.br ^bb114
^bb114:
  sea.br ^bb115
^bb115:
  sea.cond_br %v220, ^bb117, ^bb116 loc("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":41:9)
^bb116:
  %v245 = sea.load %v20[%v19] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_202"("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":42:9))
  %v246 = sea.mem.is_modified %v60[%v245] : !sea.mem<!sea.ptr<64>, i8> loc("_203"("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":42:9))
  %v247 = sea.const 1 : i1 loc("_204"("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":42:9))
  %v248 = sea.xor %v246, %v247 : i1 loc("_204"("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":42:9))
  %v249 = sea.mem.is_modified %v60[%v245] : !sea.mem<!sea.ptr<64>, i8> loc("_205"("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":42:9))
  sea.cond_br %v249, ^bb118, ^bb117 loc("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":42:9)
^bb117:
  %v250 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":44:9)
  %v251 = sea.xor %v232, %v250 : i1 loc("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":44:9)
  sea.assume %v251 loc("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":44:9)
  %v252 = sea.load %v56[%v59] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_207"("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":45:9))
  %v253 = sea.mem.is_modified %v60[%v252] : !sea.mem<!sea.ptr<64>, i8> loc("_208"("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":45:9))
  %v254 = sea.const 1 : i1 loc("_209"("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":45:9))
  %v255 = sea.xor %v253, %v254 : i1 loc("_209"("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":45:9))
  %v256 = sea.mem.is_modified %v60[%v252] : !sea.mem<!sea.ptr<64>, i8> loc("_210"("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":45:9))
  sea.assume %v256 loc("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":45:9)
  sea.br ^bb118 loc("seahorn/jobs2/byte_cursor_eq2/aws_byte_cursor_eq_harness2.c":45:9)
^bb118:
  sea.br ^bb119
^bb119:
  %v257 = sea.const 0 : i1
  sea.assert %v257
  sea.halt
}
