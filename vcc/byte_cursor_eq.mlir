// Exported from SeaHorn (byte_cursor_eq.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm18")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm19")
  %v2 = sea.mem.nondet "region.32" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm20")
  %v3 = sea.mem.nondet "region.41" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm21")
  %v4 = sea.mem.nondet "region.50" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm22")
  %v5 = sea.const 16 : i64 loc("_0")
  %v6 = sea.alloca %v5 align 8 [5] : i64 -> !sea.ptr<64> loc("_0")
  %v7 = sea.const 16 : i64 loc("_1")
  %v8 = sea.alloca %v7 align 8 [6] : i64 -> !sea.ptr<64> loc("_1")
  %v9 = sea.const 16 : i64 loc("_2")
  %v10 = sea.alloca %v9 align 8 [7] : i64 -> !sea.ptr<64> loc("_2")
  %v11 = sea.const 16 : i64 loc("_3")
  %v12 = sea.alloca %v11 align 8 [8] : i64 -> !sea.ptr<64> loc("_3")
  %v13 = sea.nondet "nd_size_t" [9] : i64 loc("_4"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb1
^bb1:
  %v14 = sea.store %v0[%v6], %v13 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb2
^bb2:
  %v15 = sea.const 11 : i64 loc("_7"("seahorn/lib/byte_buf_helper.c":33:24))
  %v16 = sea.icmp ult, %v13, %v15 : i64 loc("_7"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v16 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v17 = sea.nondet "nd_malloc_is_fail" [10] : i1 loc("_8"("seahorn/lib/sea_allocators.c":11:10))
  %v18 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v17, ^bb4(%v4, %v18 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/sea_allocators.c":11:10)
^bb3:
  %v19 = sea.const 10 : i64 loc("malloc.i9")
  %v20 = sea.alloca %v19 align 16 [11] : i64 -> !sea.ptr<64> loc("malloc.i9")
  sea.br ^bb4(%v4, %v20 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb4(%v21 : !sea.mem<!sea.ptr<64>, i8>, %v22 : !sea.ptr<64>):
  %v23 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v24 = sea.memhavoc %v21[%v22], %v23 [12] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v25 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_11"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb5
^bb5:
  %v26 = sea.store %v14[%v25], %v22 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  sea.br ^bb6
^bb6:
  %v27 = sea.const 0 : i64 loc("_13"("aws-c-common/source/byte_buf.c":66:26))
  %v28 = sea.icmp eq, %v13, %v27 : i64 loc("_13"("aws-c-common/source/byte_buf.c":66:26))
  %v29 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v28, ^bb12(%v29 : i1), ^bb7 loc("aws-c-common/source/byte_buf.c":66:32)
^bb7:
  sea.br ^bb8
^bb8:
  sea.br ^bb9
^bb9:
  %v30 = sea.ptr.null : !sea.ptr<64> loc(".not2.i36.i"("aws-c-common/source/byte_buf.c":66:55))
  %v31 = sea.ptr.cmp eq, %v22, %v30 : !sea.ptr<64> loc(".not2.i36.i"("aws-c-common/source/byte_buf.c":66:55))
  %v32 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v31, ^bb12(%v32 : i1), ^bb10 loc("aws-c-common/source/byte_buf.c":66:67)
^bb10:
  sea.br ^bb11
^bb11:
  %v33 = sea.const 1 : i1
  sea.br ^bb12(%v33 : i1)
^bb12(%v34 : i1):
  sea.assume %v34 loc("seahorn/jobs/byte_cursor_eq/aws_byte_cursor_eq_harness.c":17:5)
  %v35 = sea.nondet "nd_bool" [13] : i1 loc("_20"("seahorn/jobs/byte_cursor_eq/aws_byte_cursor_eq_harness.c":18:9))
  sea.cond_br %v35, ^bb26, ^bb13 loc("seahorn/jobs/byte_cursor_eq/aws_byte_cursor_eq_harness.c":18:9)
^bb13:
  %v36 = sea.nondet "nd_size_t" [14] : i64 loc("_23"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb14
^bb14:
  %v37 = sea.store %v1[%v8], %v36 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb15
^bb15:
  %v38 = sea.const 11 : i64 loc("_26"("seahorn/lib/byte_buf_helper.c":33:24))
  %v39 = sea.icmp ult, %v36, %v38 : i64 loc("_26"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v39 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v40 = sea.nondet "nd_malloc_is_fail" [15] : i1 loc("_27"("seahorn/lib/sea_allocators.c":11:10))
  %v41 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v40, ^bb17(%v24, %v41 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb16 loc("seahorn/lib/sea_allocators.c":11:10)
^bb16:
  %v42 = sea.const 10 : i64 loc("malloc55.i10")
  %v43 = sea.alloca %v42 align 16 [16] : i64 -> !sea.ptr<64> loc("malloc55.i10")
  sea.br ^bb17(%v24, %v43 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb17(%v44 : !sea.mem<!sea.ptr<64>, i8>, %v45 : !sea.ptr<64>):
  %v46 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v47 = sea.memhavoc %v44[%v45], %v46 [17] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v48 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_30"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb18
^bb18:
  %v49 = sea.store %v37[%v48], %v45 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  sea.br ^bb19
^bb19:
  %v50 = sea.const 0 : i64 loc("_32"("aws-c-common/source/byte_buf.c":66:26))
  %v51 = sea.icmp eq, %v36, %v50 : i64 loc("_32"("aws-c-common/source/byte_buf.c":66:26))
  %v52 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v51, ^bb25(%v52 : i1), ^bb20 loc("aws-c-common/source/byte_buf.c":66:32)
^bb20:
  sea.br ^bb21
^bb21:
  sea.br ^bb22
^bb22:
  %v53 = sea.ptr.null : !sea.ptr<64> loc(".not2.i32.i"("aws-c-common/source/byte_buf.c":66:55))
  %v54 = sea.ptr.cmp eq, %v45, %v53 : !sea.ptr<64> loc(".not2.i32.i"("aws-c-common/source/byte_buf.c":66:55))
  %v55 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v54, ^bb25(%v55 : i1), ^bb23 loc("aws-c-common/source/byte_buf.c":66:67)
^bb23:
  sea.br ^bb24
^bb24:
  %v56 = sea.const 1 : i1
  sea.br ^bb25(%v56 : i1)
^bb25(%v57 : i1):
  sea.assume %v57 loc("seahorn/jobs/byte_cursor_eq/aws_byte_cursor_eq_harness.c":22:9)
  sea.br ^bb27(%v47, %v36, %v45 : !sea.mem<!sea.ptr<64>, i8>, i64, !sea.ptr<64>)
^bb26:
  %v58 = sea.store %v1[%v8], %v13 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_cursor_eq/aws_byte_cursor_eq_harness.c":19:15)
  %v59 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs/byte_cursor_eq/aws_byte_cursor_eq_harness.c":19:15))
  %v60 = sea.store %v58[%v59], %v22 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_cursor_eq/aws_byte_cursor_eq_harness.c":19:15)
  sea.br ^bb27(%v24, %v13, %v22 : !sea.mem<!sea.ptr<64>, i8>, i64, !sea.ptr<64>) loc("seahorn/jobs/byte_cursor_eq/aws_byte_cursor_eq_harness.c":20:5)
^bb27(%v61 : !sea.mem<!sea.ptr<64>, i8>, %v62 : i64, %v63 : !sea.ptr<64>):
  %v64 = sea.nondet "nd_size_t" [18] : i64 loc("_42"("seahorn/lib/utils.c":46:20))
  sea.br ^bb28
^bb28:
  %v65 = sea.store %v2[%v10], %v64 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v66 = sea.const 0 : i64 loc("_44"("seahorn/lib/utils.c":47:12))
  %v67 = sea.icmp ne, %v13, %v66 : i64 loc("_44"("seahorn/lib/utils.c":47:12))
  %v68 = sea.ptr.null : !sea.ptr<64> loc("_45")
  %v69 = sea.ptr.cmp ne, %v22, %v68 : !sea.ptr<64> loc("_45")
  %v70 = sea.and %v67, %v69 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v70, ^bb31, ^bb29 loc("seahorn/lib/utils.c":47:16)
^bb29:
  %v71 = sea.nondet "nd_uint8_t" [19] : i8 loc("_57"("seahorn/lib/utils.c":51:21))
  %v72 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_58"("seahorn/lib/utils.c":51:14))
  sea.br ^bb30
^bb30:
  %v73 = sea.store %v65[%v72], %v71 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb36(%v71 : i8)
^bb31:
  sea.br ^bb32
^bb32:
  %v74 = sea.icmp ult, %v64, %v13 : i64 loc("_48"("seahorn/lib/utils.c":48:27))
  sea.assume %v74 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb33
^bb33:
  %v75 = sea.ptr.index %v22 [%v64] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_50"("seahorn/lib/utils.c":49:21))
  %v76 = sea.const 1 : i64 loc("_51"("seahorn/lib/utils.c":49:21))
  %v77 = sea.ptr.dereferenceable %v75, %v76 : !sea.ptr<64>, i64 loc("_51"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v77, ^bb34, ^bb148
^bb34:
  %v78 = sea.load %v61[%v75] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_53"("seahorn/lib/utils.c":49:21))
  %v79 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_54"("seahorn/lib/utils.c":49:14))
  sea.br ^bb35
^bb35:
  %v80 = sea.store %v65[%v79], %v78 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb36(%v78 : i8) loc("seahorn/lib/utils.c":50:3)
^bb36(%v81 : i8):
  %v82 = sea.nondet "nd_size_t" [20] : i64 loc("_61"("seahorn/lib/utils.c":46:20))
  sea.br ^bb37
^bb37:
  %v83 = sea.store %v3[%v12], %v82 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v84 = sea.const 0 : i64 loc("_63"("seahorn/lib/utils.c":47:12))
  %v85 = sea.icmp ne, %v62, %v84 : i64 loc("_63"("seahorn/lib/utils.c":47:12))
  %v86 = sea.ptr.null : !sea.ptr<64> loc("_64")
  %v87 = sea.ptr.cmp ne, %v63, %v86 : !sea.ptr<64> loc("_64")
  %v88 = sea.and %v85, %v87 : i1 loc("or.cond.i46.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v88, ^bb40, ^bb38 loc("seahorn/lib/utils.c":47:16)
^bb38:
  %v89 = sea.nondet "nd_uint8_t" [21] : i8 loc("_76"("seahorn/lib/utils.c":51:21))
  %v90 = sea.ptr.index %v12 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_77"("seahorn/lib/utils.c":51:14))
  sea.br ^bb39
^bb39:
  %v91 = sea.store %v83[%v90], %v89 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb45(%v89 : i8)
^bb40:
  sea.br ^bb41
^bb41:
  %v92 = sea.icmp ult, %v82, %v62 : i64 loc("_67"("seahorn/lib/utils.c":48:27))
  sea.assume %v92 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb42
^bb42:
  %v93 = sea.ptr.index %v63 [%v82] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_69"("seahorn/lib/utils.c":49:21))
  %v94 = sea.const 1 : i64 loc("_70"("seahorn/lib/utils.c":49:21))
  %v95 = sea.ptr.dereferenceable %v93, %v94 : !sea.ptr<64>, i64 loc("_70"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v95, ^bb43, ^bb148
^bb43:
  %v96 = sea.load %v61[%v93] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_72"("seahorn/lib/utils.c":49:21))
  %v97 = sea.ptr.index %v12 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_73"("seahorn/lib/utils.c":49:14))
  sea.br ^bb44
^bb44:
  %v98 = sea.store %v83[%v97], %v96 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb45(%v96 : i8) loc("seahorn/lib/utils.c":50:3)
^bb45(%v99 : i8):
  sea.br ^bb46
^bb46:
  sea.br ^bb47
^bb47:
  sea.br ^bb48
^bb48:
  sea.br ^bb49
^bb49:
  %v100 = sea.icmp eq, %v13, %v62 : i64 loc(".not.i.i.i"("aws-c-common/source/byte_buf.c":425:15))
  sea.cond_br %v100, ^bb50, ^bb107 loc("aws-c-common/source/byte_buf.c":425:9)
^bb50:
  sea.cond_br %v28, ^bb106, ^bb51 loc("aws-c-common/source/byte_buf.c":429:9)
^bb51:
  %v101 = sea.ptr.cmp eq, %v22, %v63 : !sea.ptr<64> loc("_86"("seahorn/lib/bcmp.c":55:10))
  sea.cond_br %v101, ^bb102, ^bb52 loc("seahorn/lib/bcmp.c":55:7)
^bb52:
  %v102 = sea.const 1 : i64 loc("_89"("seahorn/lib/bcmp.c":61:11))
  %v103 = sea.ptr.dereferenceable %v22, %v102 : !sea.ptr<64>, i64 loc("_89"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v103, ^bb53, ^bb148
^bb53:
  %v104 = sea.load %v61[%v22] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_91"("seahorn/lib/bcmp.c":61:11))
  %v105 = sea.const 1 : i64 loc("_92"("seahorn/lib/bcmp.c":61:20))
  %v106 = sea.ptr.dereferenceable %v63, %v105 : !sea.ptr<64>, i64 loc("_92"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v106, ^bb54, ^bb148
^bb54:
  %v107 = sea.load %v61[%v63] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_94"("seahorn/lib/bcmp.c":61:20))
  %v108 = sea.icmp eq, %v104, %v107 : i8 loc(".not2.i54.i"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v108, ^bb55, ^bb91(%v63, %v22 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb55:
  %v109 = sea.const 1 : i64 loc(".not7"("seahorn/lib/bcmp.c":60:11))
  %v110 = sea.icmp eq, %v13, %v109 : i64 loc(".not7"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v110, ^bb101, ^bb56 loc("seahorn/lib/bcmp.c":60:9)
^bb56:
  %v111 = sea.ptr.index %v22 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_100"("seahorn/lib/bcmp.c":61:11))
  %v112 = sea.const 1 : i64 loc("_101"("seahorn/lib/bcmp.c":61:11))
  %v113 = sea.ptr.dereferenceable %v111, %v112 : !sea.ptr<64>, i64 loc("_101"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v113, ^bb57, ^bb148
^bb57:
  %v114 = sea.load %v61[%v111] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_103"("seahorn/lib/bcmp.c":61:11))
  %v115 = sea.ptr.index %v63 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_104"("seahorn/lib/bcmp.c":61:20))
  %v116 = sea.const 1 : i64 loc("_105"("seahorn/lib/bcmp.c":61:20))
  %v117 = sea.ptr.dereferenceable %v115, %v116 : !sea.ptr<64>, i64 loc("_105"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v117, ^bb58, ^bb148
^bb58:
  %v118 = sea.load %v61[%v115] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_107"("seahorn/lib/bcmp.c":61:20))
  %v119 = sea.icmp eq, %v114, %v118 : i8 loc(".not2.i54.i.1"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v119, ^bb59, ^bb91(%v115, %v111 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb59:
  %v120 = sea.const 2 : i64 loc("_108"("seahorn/lib/bcmp.c":60:11))
  %v121 = sea.icmp ugt, %v13, %v120 : i64 loc("_108"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v121, ^bb60, ^bb101 loc("seahorn/lib/bcmp.c":60:9)
^bb60:
  %v122 = sea.ptr.index %v22 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_110"("seahorn/lib/bcmp.c":61:11))
  %v123 = sea.const 1 : i64 loc("_111"("seahorn/lib/bcmp.c":61:11))
  %v124 = sea.ptr.dereferenceable %v122, %v123 : !sea.ptr<64>, i64 loc("_111"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v124, ^bb61, ^bb148
^bb61:
  %v125 = sea.load %v61[%v122] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_113"("seahorn/lib/bcmp.c":61:11))
  %v126 = sea.ptr.index %v63 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_114"("seahorn/lib/bcmp.c":61:20))
  %v127 = sea.const 1 : i64 loc("_115"("seahorn/lib/bcmp.c":61:20))
  %v128 = sea.ptr.dereferenceable %v126, %v127 : !sea.ptr<64>, i64 loc("_115"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v128, ^bb62, ^bb148
^bb62:
  %v129 = sea.load %v61[%v126] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_117"("seahorn/lib/bcmp.c":61:20))
  %v130 = sea.icmp eq, %v125, %v129 : i8 loc(".not2.i54.i.2"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v130, ^bb63, ^bb91(%v126, %v122 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb63:
  %v131 = sea.const 3 : i64 loc(".not8"("seahorn/lib/bcmp.c":60:11))
  %v132 = sea.icmp eq, %v13, %v131 : i64 loc(".not8"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v132, ^bb101, ^bb64 loc("seahorn/lib/bcmp.c":60:9)
^bb64:
  %v133 = sea.ptr.index %v22 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_119"("seahorn/lib/bcmp.c":61:11))
  %v134 = sea.const 1 : i64 loc("_120"("seahorn/lib/bcmp.c":61:11))
  %v135 = sea.ptr.dereferenceable %v133, %v134 : !sea.ptr<64>, i64 loc("_120"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v135, ^bb65, ^bb148
^bb65:
  %v136 = sea.load %v61[%v133] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_122"("seahorn/lib/bcmp.c":61:11))
  %v137 = sea.ptr.index %v63 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_123"("seahorn/lib/bcmp.c":61:20))
  %v138 = sea.const 1 : i64 loc("_124"("seahorn/lib/bcmp.c":61:20))
  %v139 = sea.ptr.dereferenceable %v137, %v138 : !sea.ptr<64>, i64 loc("_124"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v139, ^bb66, ^bb148
^bb66:
  %v140 = sea.load %v61[%v137] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_126"("seahorn/lib/bcmp.c":61:20))
  %v141 = sea.icmp eq, %v136, %v140 : i8 loc(".not2.i54.i.3"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v141, ^bb67, ^bb91(%v137, %v133 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb67:
  %v142 = sea.const 4 : i64 loc("_127"("seahorn/lib/bcmp.c":60:11))
  %v143 = sea.icmp ugt, %v13, %v142 : i64 loc("_127"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v143, ^bb68, ^bb101 loc("seahorn/lib/bcmp.c":60:9)
^bb68:
  %v144 = sea.ptr.index %v22 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_129"("seahorn/lib/bcmp.c":61:11))
  %v145 = sea.const 1 : i64 loc("_130"("seahorn/lib/bcmp.c":61:11))
  %v146 = sea.ptr.dereferenceable %v144, %v145 : !sea.ptr<64>, i64 loc("_130"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v146, ^bb69, ^bb148
^bb69:
  %v147 = sea.load %v61[%v144] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_132"("seahorn/lib/bcmp.c":61:11))
  %v148 = sea.ptr.index %v63 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_133"("seahorn/lib/bcmp.c":61:20))
  %v149 = sea.const 1 : i64 loc("_134"("seahorn/lib/bcmp.c":61:20))
  %v150 = sea.ptr.dereferenceable %v148, %v149 : !sea.ptr<64>, i64 loc("_134"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v150, ^bb70, ^bb148
^bb70:
  %v151 = sea.load %v61[%v148] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_136"("seahorn/lib/bcmp.c":61:20))
  %v152 = sea.icmp eq, %v147, %v151 : i8 loc(".not2.i54.i.4"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v152, ^bb71, ^bb91(%v148, %v144 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb71:
  %v153 = sea.const 5 : i64 loc(".not9"("seahorn/lib/bcmp.c":60:11))
  %v154 = sea.icmp eq, %v13, %v153 : i64 loc(".not9"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v154, ^bb101, ^bb72 loc("seahorn/lib/bcmp.c":60:9)
^bb72:
  %v155 = sea.ptr.index %v22 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_138"("seahorn/lib/bcmp.c":61:11))
  %v156 = sea.const 1 : i64 loc("_139"("seahorn/lib/bcmp.c":61:11))
  %v157 = sea.ptr.dereferenceable %v155, %v156 : !sea.ptr<64>, i64 loc("_139"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v157, ^bb73, ^bb148
^bb73:
  %v158 = sea.load %v61[%v155] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_141"("seahorn/lib/bcmp.c":61:11))
  %v159 = sea.ptr.index %v63 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_142"("seahorn/lib/bcmp.c":61:20))
  %v160 = sea.const 1 : i64 loc("_143"("seahorn/lib/bcmp.c":61:20))
  %v161 = sea.ptr.dereferenceable %v159, %v160 : !sea.ptr<64>, i64 loc("_143"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v161, ^bb74, ^bb148
^bb74:
  %v162 = sea.load %v61[%v159] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_145"("seahorn/lib/bcmp.c":61:20))
  %v163 = sea.icmp eq, %v158, %v162 : i8 loc(".not2.i54.i.5"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v163, ^bb75, ^bb91(%v159, %v155 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb75:
  %v164 = sea.const 6 : i64 loc("_146"("seahorn/lib/bcmp.c":60:11))
  %v165 = sea.icmp ugt, %v13, %v164 : i64 loc("_146"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v165, ^bb76, ^bb101 loc("seahorn/lib/bcmp.c":60:9)
^bb76:
  %v166 = sea.ptr.index %v22 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_148"("seahorn/lib/bcmp.c":61:11))
  %v167 = sea.const 1 : i64 loc("_149"("seahorn/lib/bcmp.c":61:11))
  %v168 = sea.ptr.dereferenceable %v166, %v167 : !sea.ptr<64>, i64 loc("_149"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v168, ^bb77, ^bb148
^bb77:
  %v169 = sea.load %v61[%v166] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_151"("seahorn/lib/bcmp.c":61:11))
  %v170 = sea.ptr.index %v63 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_152"("seahorn/lib/bcmp.c":61:20))
  %v171 = sea.const 1 : i64 loc("_153"("seahorn/lib/bcmp.c":61:20))
  %v172 = sea.ptr.dereferenceable %v170, %v171 : !sea.ptr<64>, i64 loc("_153"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v172, ^bb78, ^bb148
^bb78:
  %v173 = sea.load %v61[%v170] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_155"("seahorn/lib/bcmp.c":61:20))
  %v174 = sea.icmp eq, %v169, %v173 : i8 loc(".not2.i54.i.6"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v174, ^bb79, ^bb91(%v170, %v166 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb79:
  %v175 = sea.const 7 : i64 loc(".not10"("seahorn/lib/bcmp.c":60:11))
  %v176 = sea.icmp eq, %v13, %v175 : i64 loc(".not10"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v176, ^bb101, ^bb80 loc("seahorn/lib/bcmp.c":60:9)
^bb80:
  %v177 = sea.ptr.index %v22 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_157"("seahorn/lib/bcmp.c":61:11))
  %v178 = sea.const 1 : i64 loc("_158"("seahorn/lib/bcmp.c":61:11))
  %v179 = sea.ptr.dereferenceable %v177, %v178 : !sea.ptr<64>, i64 loc("_158"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v179, ^bb81, ^bb148
^bb81:
  %v180 = sea.load %v61[%v177] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_160"("seahorn/lib/bcmp.c":61:11))
  %v181 = sea.ptr.index %v63 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_161"("seahorn/lib/bcmp.c":61:20))
  %v182 = sea.const 1 : i64 loc("_162"("seahorn/lib/bcmp.c":61:20))
  %v183 = sea.ptr.dereferenceable %v181, %v182 : !sea.ptr<64>, i64 loc("_162"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v183, ^bb82, ^bb148
^bb82:
  %v184 = sea.load %v61[%v181] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_164"("seahorn/lib/bcmp.c":61:20))
  %v185 = sea.icmp eq, %v180, %v184 : i8 loc(".not2.i54.i.7"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v185, ^bb83, ^bb91(%v181, %v177 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb83:
  %v186 = sea.const 8 : i64 loc("_165"("seahorn/lib/bcmp.c":60:11))
  %v187 = sea.icmp ugt, %v13, %v186 : i64 loc("_165"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v187, ^bb84, ^bb101 loc("seahorn/lib/bcmp.c":60:9)
^bb84:
  %v188 = sea.ptr.index %v22 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_167"("seahorn/lib/bcmp.c":61:11))
  %v189 = sea.const 1 : i64 loc("_168"("seahorn/lib/bcmp.c":61:11))
  %v190 = sea.ptr.dereferenceable %v188, %v189 : !sea.ptr<64>, i64 loc("_168"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v190, ^bb85, ^bb148
^bb85:
  %v191 = sea.load %v61[%v188] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_170"("seahorn/lib/bcmp.c":61:11))
  %v192 = sea.ptr.index %v63 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_171"("seahorn/lib/bcmp.c":61:20))
  %v193 = sea.const 1 : i64 loc("_172"("seahorn/lib/bcmp.c":61:20))
  %v194 = sea.ptr.dereferenceable %v192, %v193 : !sea.ptr<64>, i64 loc("_172"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v194, ^bb86, ^bb148
^bb86:
  %v195 = sea.load %v61[%v192] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_174"("seahorn/lib/bcmp.c":61:20))
  %v196 = sea.icmp eq, %v191, %v195 : i8 loc(".not2.i54.i.8"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v196, ^bb87, ^bb91(%v192, %v188 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb87:
  %v197 = sea.const 9 : i64 loc(".not11"("seahorn/lib/bcmp.c":60:11))
  %v198 = sea.icmp eq, %v13, %v197 : i64 loc(".not11"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v198, ^bb101, ^bb88 loc("seahorn/lib/bcmp.c":60:9)
^bb88:
  %v199 = sea.ptr.index %v22 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_176"("seahorn/lib/bcmp.c":61:11))
  %v200 = sea.const 1 : i64 loc("_177"("seahorn/lib/bcmp.c":61:11))
  %v201 = sea.ptr.dereferenceable %v199, %v200 : !sea.ptr<64>, i64 loc("_177"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v201, ^bb89, ^bb148
^bb89:
  %v202 = sea.load %v61[%v199] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_179"("seahorn/lib/bcmp.c":61:11))
  %v203 = sea.ptr.index %v63 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_180"("seahorn/lib/bcmp.c":61:20))
  %v204 = sea.const 1 : i64 loc("_181"("seahorn/lib/bcmp.c":61:20))
  %v205 = sea.ptr.dereferenceable %v203, %v204 : !sea.ptr<64>, i64 loc("_181"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v205, ^bb90, ^bb148
^bb90:
  %v206 = sea.load %v61[%v203] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_183"("seahorn/lib/bcmp.c":61:20))
  %v207 = sea.icmp eq, %v202, %v206 : i8 loc(".not2.i54.i.9"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v207, ^bb93, ^bb91(%v203, %v199 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb91(%v208 : !sea.ptr<64>, %v209 : !sea.ptr<64>):
  %v210 = sea.const 1 : i64 loc("_96"("seahorn/lib/bcmp.c":62:16))
  %v211 = sea.ptr.dereferenceable %v209, %v210 : !sea.ptr<64>, i64 loc("_96"("seahorn/lib/bcmp.c":62:16))
  sea.cond_br %v211, ^bb92, ^bb148
^bb92:
  %v212 = sea.const 1 : i64 loc("_98"("seahorn/lib/bcmp.c":62:24))
  %v213 = sea.ptr.dereferenceable %v208, %v212 : !sea.ptr<64>, i64 loc("_98"("seahorn/lib/bcmp.c":62:24))
  sea.cond_br %v213, ^bb107, ^bb148
^bb93:
  %v214 = sea.const 10 : i64 loc("_184"("seahorn/lib/bcmp.c":67:31))
  %v215 = sea.icmp ugt, %v13, %v214 : i64 loc("_184"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v215, ^bb94, ^bb101 loc("seahorn/lib/bcmp.c":67:3)
^bb94:
  %v216 = sea.ptr.index %v22 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_87"("seahorn/lib/bcmp.c":68:9))
  %v217 = sea.const 1 : i64 loc("_88"("seahorn/lib/bcmp.c":68:9))
  %v218 = sea.ptr.dereferenceable %v216, %v217 : !sea.ptr<64>, i64 loc("_88"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v218, ^bb95, ^bb148
^bb95:
  %v219 = sea.load %v61[%v216] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_188"("seahorn/lib/bcmp.c":68:9))
  %v220 = sea.ptr.index %v63 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_189"("seahorn/lib/bcmp.c":68:18))
  %v221 = sea.const 1 : i64 loc("_190"("seahorn/lib/bcmp.c":68:18))
  %v222 = sea.ptr.dereferenceable %v220, %v221 : !sea.ptr<64>, i64 loc("_190"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v222, ^bb96, ^bb148
^bb96:
  %v223 = sea.load %v61[%v220] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_192"("seahorn/lib/bcmp.c":68:18))
  %v224 = sea.icmp eq, %v219, %v223 : i8 loc(".not.i53.i"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v224, ^bb99, ^bb97 loc("seahorn/lib/bcmp.c":68:9)
^bb97:
  %v225 = sea.const 1 : i64 loc("_194"("seahorn/lib/bcmp.c":69:14))
  %v226 = sea.ptr.dereferenceable %v216, %v225 : !sea.ptr<64>, i64 loc("_194"("seahorn/lib/bcmp.c":69:14))
  sea.cond_br %v226, ^bb98, ^bb148
^bb98:
  %v227 = sea.const 1 : i64 loc("_196"("seahorn/lib/bcmp.c":69:22))
  %v228 = sea.ptr.dereferenceable %v220, %v227 : !sea.ptr<64>, i64 loc("_196"("seahorn/lib/bcmp.c":69:22))
  sea.cond_br %v228, ^bb107, ^bb148
^bb99:
  %v229 = sea.const 11 : i64 loc("exitcond43.not"("seahorn/lib/bcmp.c":67:31))
  %v230 = sea.icmp eq, %v13, %v229 : i64 loc("exitcond43.not"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v230, ^bb101, ^bb100 loc("seahorn/lib/bcmp.c":67:3)
^bb100:
  %v231 = sea.ptr.index %v22 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_186"("seahorn/lib/bcmp.c":68:9))
  %v232 = sea.const 1 : i64 loc("_187"("seahorn/lib/bcmp.c":68:9))
  %v233 = sea.ptr.dereferenceable %v231, %v232 : !sea.ptr<64>, i64 loc("_187"("seahorn/lib/bcmp.c":68:9))
  %v234 = sea.const 1 : i1
  %v235 = sea.xor %v233, %v234 : i1
  sea.assume %v235
  sea.br ^bb148
^bb101:
  sea.br ^bb103
^bb102:
  sea.br ^bb103 loc("seahorn/jobs/byte_cursor_eq/aws_byte_cursor_eq_harness.c":36:13)
^bb103:
  %v236 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v237 = sea.ptr.cmp eq, %v22, %v236 : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v238 = sea.xor %v237, %v87 : i1 loc("_198"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v238, ^bb104, ^bb148 loc("seahorn/lib/utils.c":15:3)
^bb104:
  %v239 = sea.and %v69, %v87 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v239, ^bb105, ^bb107 loc("seahorn/lib/utils.c":16:15)
^bb105:
  %v240 = sea.nondet "nd_size_t" [22] : i64 loc("_200"("seahorn/lib/utils.c":17:16))
  %v241 = sea.icmp ult, %v240, %v13 : i64 loc("_201"("seahorn/lib/utils.c":19:14))
  %v242 = sea.const 36028797018963967 : i64 loc("_202"("seahorn/lib/utils.c":19:20))
  %v243 = sea.icmp ult, %v13, %v242 : i64 loc("_202"("seahorn/lib/utils.c":19:20))
  %v244 = sea.and %v243, %v241 : i1 loc("_203"("seahorn/lib/utils.c":19:20))
  sea.assume %v244 loc("seahorn/lib/utils.c":19:5)
  %v245 = sea.ptr.index %v22 [%v240] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_204"("seahorn/lib/utils.c":20:5))
  %v246 = sea.load %v61[%v245] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_205"("seahorn/lib/utils.c":20:5))
  %v247 = sea.ptr.index %v63 [%v240] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_206"("seahorn/lib/utils.c":20:5))
  %v248 = sea.load %v61[%v247] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_207"("seahorn/lib/utils.c":20:5))
  %v249 = sea.icmp eq, %v246, %v248 : i8 loc("_208"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v249, ^bb107, ^bb148 loc("seahorn/lib/utils.c":20:5)
^bb106:
  sea.br ^bb107 loc("seahorn/jobs/byte_cursor_eq/aws_byte_cursor_eq_harness.c":36:13)
^bb107:
  sea.br ^bb108
^bb108:
  %v250 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v28, ^bb114(%v250 : i1), ^bb109 loc("aws-c-common/source/byte_buf.c":66:32)
^bb109:
  sea.br ^bb110
^bb110:
  sea.br ^bb111
^bb111:
  %v251 = sea.ptr.null : !sea.ptr<64> loc(".not2.i28.i"("aws-c-common/source/byte_buf.c":66:55))
  %v252 = sea.ptr.cmp eq, %v22, %v251 : !sea.ptr<64> loc(".not2.i28.i"("aws-c-common/source/byte_buf.c":66:55))
  %v253 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v252, ^bb114(%v253 : i1), ^bb112 loc("aws-c-common/source/byte_buf.c":66:67)
^bb112:
  sea.br ^bb113
^bb113:
  %v254 = sea.const 1 : i1
  sea.br ^bb114(%v254 : i1)
^bb114(%v255 : i1):
  sea.br ^bb115
^bb115:
  sea.cond_br %v28, ^bb120, ^bb116 loc("aws-c-common/source/byte_buf.c":66:32)
^bb116:
  sea.br ^bb117
^bb117:
  %v256 = sea.const 1 : i1 loc("or.cond22.not")
  %v257 = sea.and %v69, %v256 : i1 loc("or.cond22.not")
  sea.cond_br %v257, ^bb118, ^bb148
^bb118:
  sea.br ^bb119
^bb119:
  sea.br ^bb120
^bb120:
  sea.br ^bb121
^bb121:
  %v258 = sea.const 0 : i64 loc("_222"("aws-c-common/source/byte_buf.c":66:26))
  %v259 = sea.icmp eq, %v62, %v258 : i64 loc("_222"("aws-c-common/source/byte_buf.c":66:26))
  %v260 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v259, ^bb127(%v260 : i1), ^bb122 loc("aws-c-common/source/byte_buf.c":66:32)
^bb122:
  sea.br ^bb123
^bb123:
  sea.br ^bb124
^bb124:
  %v261 = sea.ptr.null : !sea.ptr<64> loc(".not2.i20.i"("aws-c-common/source/byte_buf.c":66:55))
  %v262 = sea.ptr.cmp eq, %v63, %v261 : !sea.ptr<64> loc(".not2.i20.i"("aws-c-common/source/byte_buf.c":66:55))
  %v263 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v262, ^bb127(%v263 : i1), ^bb125 loc("aws-c-common/source/byte_buf.c":66:67)
^bb125:
  sea.br ^bb126
^bb126:
  %v264 = sea.const 1 : i1
  sea.br ^bb127(%v264 : i1)
^bb127(%v265 : i1):
  sea.br ^bb128
^bb128:
  sea.cond_br %v259, ^bb133, ^bb129 loc("aws-c-common/source/byte_buf.c":66:32)
^bb129:
  sea.br ^bb130
^bb130:
  %v266 = sea.const 1 : i1 loc("or.cond26.not")
  %v267 = sea.and %v87, %v266 : i1 loc("or.cond26.not")
  sea.cond_br %v267, ^bb131, ^bb148
^bb131:
  sea.br ^bb132
^bb132:
  sea.br ^bb133
^bb133:
  sea.cond_br %v28, ^bb141, ^bb134 loc("seahorn/jobs/byte_cursor_eq/aws_byte_cursor_eq_harness.c":44:9)
^bb134:
  %v268 = sea.ptr.null : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v269 = sea.ptr.cmp eq, %v22, %v268 : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  sea.cond_br %v269, ^bb141, ^bb135 loc("seahorn/lib/utils.c":39:14)
^bb135:
  sea.br ^bb136
^bb136:
  %v270 = sea.ptr.index %v22 [%v64] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_237"("seahorn/lib/utils.c":40:5))
  %v271 = sea.const 1 : i64 loc("_238"("seahorn/lib/utils.c":40:5))
  %v272 = sea.ptr.dereferenceable %v270, %v271 : !sea.ptr<64>, i64 loc("_238"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v272, ^bb137, ^bb148
^bb137:
  %v273 = sea.load %v61[%v270] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_240"("seahorn/lib/utils.c":40:5))
  sea.br ^bb138
^bb138:
  %v274 = sea.icmp eq, %v273, %v81 : i8 loc("_242"("seahorn/lib/utils.c":40:5))
  sea.br ^bb139
^bb139:
  %v275 = sea.const 1 : i64 loc("_244"("seahorn/lib/utils.c":40:5))
  %v276 = sea.ptr.dereferenceable %v270, %v275 : !sea.ptr<64>, i64 loc("_244"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v276, ^bb140, ^bb148
^bb140:
  %v277 = sea.const 1 : i1 loc("or.cond18")
  %v278 = sea.const 0 : i1 loc("or.cond18")
  %v279 = sea.select %v277, %v274, %v278 : i1 loc("or.cond18")
  sea.cond_br %v279, ^bb141, ^bb148
^bb141:
  %v280 = sea.const 1 : i1 loc("seahorn/jobs/byte_cursor_eq/aws_byte_cursor_eq_harness.c":47:9)
  %v281 = sea.xor %v259, %v280 : i1 loc("seahorn/jobs/byte_cursor_eq/aws_byte_cursor_eq_harness.c":47:9)
  sea.assume %v281 loc("seahorn/jobs/byte_cursor_eq/aws_byte_cursor_eq_harness.c":47:9)
  sea.assume %v87 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb142
^bb142:
  %v282 = sea.ptr.index %v63 [%v82] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_247"("seahorn/lib/utils.c":40:5))
  %v283 = sea.const 1 : i64 loc("_248"("seahorn/lib/utils.c":40:5))
  %v284 = sea.ptr.dereferenceable %v282, %v283 : !sea.ptr<64>, i64 loc("_248"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v284, ^bb143, ^bb148
^bb143:
  %v285 = sea.load %v61[%v282] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_250"("seahorn/lib/utils.c":40:5))
  sea.br ^bb144
^bb144:
  %v286 = sea.icmp eq, %v285, %v99 : i8 loc("_252"("seahorn/lib/utils.c":40:5))
  sea.br ^bb145
^bb145:
  %v287 = sea.const 1 : i64 loc("_254"("seahorn/lib/utils.c":40:5))
  %v288 = sea.ptr.dereferenceable %v282, %v287 : !sea.ptr<64>, i64 loc("_254"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v288, ^bb146, ^bb148
^bb146:
  sea.br ^bb147
^bb147:
  %v289 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v290 = sea.xor %v286, %v289 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v290 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb148 loc("seahorn/lib/utils.c":40:5)
^bb148:
  sea.br ^bb149
^bb149:
  %v291 = sea.const 0 : i1
  sea.assert %v291
  sea.halt
}
