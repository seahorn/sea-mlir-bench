// Exported from SeaHorn (byte_cursor_compare_lexical.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
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
  %v19 = sea.const 10 : i64 loc("malloc.i11")
  %v20 = sea.alloca %v19 align 16 [11] : i64 -> !sea.ptr<64> loc("malloc.i11")
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
  sea.assume %v34 loc("seahorn/jobs/byte_cursor_compare_lexical/aws_byte_cursor_compare_lexical_harness.c":17:5)
  %v35 = sea.ptr.null : !sea.ptr<64> loc("_20"("seahorn/jobs/byte_cursor_compare_lexical/aws_byte_cursor_compare_lexical_harness.c":21:24))
  %v36 = sea.ptr.cmp ne, %v22, %v35 : !sea.ptr<64> loc("_20"("seahorn/jobs/byte_cursor_compare_lexical/aws_byte_cursor_compare_lexical_harness.c":21:24))
  sea.assume %v36 loc("seahorn/jobs/byte_cursor_compare_lexical/aws_byte_cursor_compare_lexical_harness.c":21:9)
  %v37 = sea.nondet "nd_bool" [13] : i1 loc("_21"("seahorn/jobs/byte_cursor_compare_lexical/aws_byte_cursor_compare_lexical_harness.c":23:9))
  sea.cond_br %v37, ^bb26, ^bb13 loc("seahorn/jobs/byte_cursor_compare_lexical/aws_byte_cursor_compare_lexical_harness.c":23:9)
^bb13:
  %v38 = sea.nondet "nd_size_t" [14] : i64 loc("_24"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb14
^bb14:
  %v39 = sea.store %v1[%v8], %v38 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb15
^bb15:
  %v40 = sea.const 11 : i64 loc("_27"("seahorn/lib/byte_buf_helper.c":33:24))
  %v41 = sea.icmp ult, %v38, %v40 : i64 loc("_27"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v41 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v42 = sea.nondet "nd_malloc_is_fail" [15] : i1 loc("_28"("seahorn/lib/sea_allocators.c":11:10))
  %v43 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v42, ^bb17(%v24, %v43 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb16 loc("seahorn/lib/sea_allocators.c":11:10)
^bb16:
  %v44 = sea.const 10 : i64 loc("malloc85.i12")
  %v45 = sea.alloca %v44 align 16 [16] : i64 -> !sea.ptr<64> loc("malloc85.i12")
  sea.br ^bb17(%v24, %v45 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb17(%v46 : !sea.mem<!sea.ptr<64>, i8>, %v47 : !sea.ptr<64>):
  %v48 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v49 = sea.memhavoc %v46[%v47], %v48 [17] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v50 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_31"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb18
^bb18:
  %v51 = sea.store %v39[%v50], %v47 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  sea.br ^bb19
^bb19:
  %v52 = sea.const 0 : i64 loc("_33"("aws-c-common/source/byte_buf.c":66:26))
  %v53 = sea.icmp eq, %v38, %v52 : i64 loc("_33"("aws-c-common/source/byte_buf.c":66:26))
  %v54 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v53, ^bb25(%v54 : i1), ^bb20 loc("aws-c-common/source/byte_buf.c":66:32)
^bb20:
  sea.br ^bb21
^bb21:
  sea.br ^bb22
^bb22:
  %v55 = sea.ptr.null : !sea.ptr<64> loc(".not2.i32.i"("aws-c-common/source/byte_buf.c":66:55))
  %v56 = sea.ptr.cmp eq, %v47, %v55 : !sea.ptr<64> loc(".not2.i32.i"("aws-c-common/source/byte_buf.c":66:55))
  %v57 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v56, ^bb25(%v57 : i1), ^bb23 loc("aws-c-common/source/byte_buf.c":66:67)
^bb23:
  sea.br ^bb24
^bb24:
  %v58 = sea.const 1 : i1
  sea.br ^bb25(%v58 : i1)
^bb25(%v59 : i1):
  sea.assume %v59 loc("seahorn/jobs/byte_cursor_compare_lexical/aws_byte_cursor_compare_lexical_harness.c":27:9)
  %v60 = sea.ptr.null : !sea.ptr<64> loc("_40"("seahorn/jobs/byte_cursor_compare_lexical/aws_byte_cursor_compare_lexical_harness.c":31:28))
  %v61 = sea.ptr.cmp ne, %v47, %v60 : !sea.ptr<64> loc("_40"("seahorn/jobs/byte_cursor_compare_lexical/aws_byte_cursor_compare_lexical_harness.c":31:28))
  sea.assume %v61 loc("seahorn/jobs/byte_cursor_compare_lexical/aws_byte_cursor_compare_lexical_harness.c":31:13)
  sea.br ^bb27(%v49, %v38, %v47 : !sea.mem<!sea.ptr<64>, i8>, i64, !sea.ptr<64>)
^bb26:
  %v62 = sea.store %v1[%v8], %v13 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_cursor_compare_lexical/aws_byte_cursor_compare_lexical_harness.c":24:15)
  %v63 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs/byte_cursor_compare_lexical/aws_byte_cursor_compare_lexical_harness.c":24:15))
  %v64 = sea.store %v62[%v63], %v22 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_cursor_compare_lexical/aws_byte_cursor_compare_lexical_harness.c":24:15)
  sea.br ^bb27(%v24, %v13, %v22 : !sea.mem<!sea.ptr<64>, i8>, i64, !sea.ptr<64>) loc("seahorn/jobs/byte_cursor_compare_lexical/aws_byte_cursor_compare_lexical_harness.c":25:5)
^bb27(%v65 : !sea.mem<!sea.ptr<64>, i8>, %v66 : i64, %v67 : !sea.ptr<64>):
  %v68 = sea.nondet "nd_size_t" [18] : i64 loc("_44"("seahorn/lib/utils.c":46:20))
  sea.br ^bb28
^bb28:
  %v69 = sea.store %v2[%v10], %v68 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v70 = sea.const 0 : i64 loc("_46"("seahorn/lib/utils.c":47:12))
  %v71 = sea.icmp ne, %v13, %v70 : i64 loc("_46"("seahorn/lib/utils.c":47:12))
  %v72 = sea.and %v71, %v36 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v72, ^bb31, ^bb29 loc("seahorn/lib/utils.c":47:16)
^bb29:
  %v73 = sea.nondet "nd_uint8_t" [19] : i8 loc("_58"("seahorn/lib/utils.c":51:21))
  %v74 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_59"("seahorn/lib/utils.c":51:14))
  sea.br ^bb30
^bb30:
  %v75 = sea.store %v69[%v74], %v73 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb36(%v73 : i8)
^bb31:
  sea.br ^bb32
^bb32:
  %v76 = sea.icmp ult, %v68, %v13 : i64 loc("_49"("seahorn/lib/utils.c":48:27))
  sea.assume %v76 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb33
^bb33:
  %v77 = sea.ptr.index %v22 [%v68] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_51"("seahorn/lib/utils.c":49:21))
  %v78 = sea.const 1 : i64 loc("_52"("seahorn/lib/utils.c":49:21))
  %v79 = sea.ptr.dereferenceable %v77, %v78 : !sea.ptr<64>, i64 loc("_52"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v79, ^bb34, ^bb162
^bb34:
  %v80 = sea.load %v65[%v77] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_54"("seahorn/lib/utils.c":49:21))
  %v81 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_55"("seahorn/lib/utils.c":49:14))
  sea.br ^bb35
^bb35:
  %v82 = sea.store %v69[%v81], %v80 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb36(%v80 : i8) loc("seahorn/lib/utils.c":50:3)
^bb36(%v83 : i8):
  %v84 = sea.nondet "nd_size_t" [20] : i64 loc("_62"("seahorn/lib/utils.c":46:20))
  sea.br ^bb37
^bb37:
  %v85 = sea.store %v3[%v12], %v84 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v86 = sea.const 0 : i64 loc("_64"("seahorn/lib/utils.c":47:12))
  %v87 = sea.icmp ne, %v66, %v86 : i64 loc("_64"("seahorn/lib/utils.c":47:12))
  %v88 = sea.ptr.null : !sea.ptr<64> loc("_65")
  %v89 = sea.ptr.cmp ne, %v67, %v88 : !sea.ptr<64> loc("_65")
  %v90 = sea.and %v87, %v89 : i1 loc("or.cond.i59.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v90, ^bb40, ^bb38 loc("seahorn/lib/utils.c":47:16)
^bb38:
  %v91 = sea.nondet "nd_uint8_t" [21] : i8 loc("_77"("seahorn/lib/utils.c":51:21))
  %v92 = sea.ptr.index %v12 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_78"("seahorn/lib/utils.c":51:14))
  sea.br ^bb39
^bb39:
  %v93 = sea.store %v85[%v92], %v91 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb45(%v91 : i8)
^bb40:
  sea.br ^bb41
^bb41:
  %v94 = sea.icmp ult, %v84, %v66 : i64 loc("_68"("seahorn/lib/utils.c":48:27))
  sea.assume %v94 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb42
^bb42:
  %v95 = sea.ptr.index %v67 [%v84] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_70"("seahorn/lib/utils.c":49:21))
  %v96 = sea.const 1 : i64 loc("_71"("seahorn/lib/utils.c":49:21))
  %v97 = sea.ptr.dereferenceable %v95, %v96 : !sea.ptr<64>, i64 loc("_71"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v97, ^bb43, ^bb162
^bb43:
  %v98 = sea.load %v65[%v95] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_73"("seahorn/lib/utils.c":49:21))
  %v99 = sea.ptr.index %v12 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_74"("seahorn/lib/utils.c":49:14))
  sea.br ^bb44
^bb44:
  %v100 = sea.store %v85[%v99], %v98 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb45(%v98 : i8) loc("seahorn/lib/utils.c":50:3)
^bb45(%v101 : i8):
  sea.br ^bb46
^bb46:
  sea.br ^bb47
^bb47:
  %v102 = sea.icmp ugt, %v13, %v66 : i64 loc("_83"("aws-c-common/source/byte_buf.c":876:27))
  sea.cond_br %v102, ^bb48, ^bb49(%v13 : i64) loc("aws-c-common/source/byte_buf.c":876:9)
^bb48:
  sea.br ^bb49(%v66 : i64)
^bb49(%v103 : i64):
  sea.br ^bb50
^bb50:
  sea.br ^bb51
^bb51:
  %v104 = sea.ptr.cmp eq, %v22, %v67 : !sea.ptr<64> loc("_88"("seahorn/lib/bcmp.c":55:10))
  %v105 = sea.const 0 : i64 loc(".not9")
  %v106 = sea.icmp eq, %v103, %v105 : i64 loc(".not9")
  %v107 = sea.const 1 : i1 loc("or.cond"("seahorn/lib/bcmp.c":55:7))
  %v108 = sea.select %v104, %v107, %v106 : i1 loc("or.cond"("seahorn/lib/bcmp.c":55:7))
  sea.cond_br %v108, ^bb101, ^bb52 loc("seahorn/lib/bcmp.c":55:7)
^bb52:
  %v109 = sea.const 1 : i64 loc("_92"("seahorn/lib/bcmp.c":61:11))
  %v110 = sea.ptr.dereferenceable %v22, %v109 : !sea.ptr<64>, i64 loc("_92"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v110, ^bb53, ^bb162
^bb53:
  %v111 = sea.load %v65[%v22] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_94"("seahorn/lib/bcmp.c":61:11))
  %v112 = sea.const 1 : i64 loc("_95"("seahorn/lib/bcmp.c":61:20))
  %v113 = sea.ptr.dereferenceable %v67, %v112 : !sea.ptr<64>, i64 loc("_95"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v113, ^bb54, ^bb162
^bb54:
  %v114 = sea.load %v65[%v67] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_97"("seahorn/lib/bcmp.c":61:20))
  %v115 = sea.icmp eq, %v111, %v114 : i8 loc(".not2.i70.i"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v115, ^bb55, ^bb91(%v67, %v22 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb55:
  %v116 = sea.const 1 : i64 loc("_102"("seahorn/lib/bcmp.c":60:11))
  %v117 = sea.icmp ugt, %v103, %v116 : i64 loc("_102"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v117, ^bb56, ^bb101 loc("seahorn/lib/bcmp.c":60:9)
^bb56:
  %v118 = sea.ptr.index %v22 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_104"("seahorn/lib/bcmp.c":61:11))
  %v119 = sea.const 1 : i64 loc("_105"("seahorn/lib/bcmp.c":61:11))
  %v120 = sea.ptr.dereferenceable %v118, %v119 : !sea.ptr<64>, i64 loc("_105"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v120, ^bb57, ^bb162
^bb57:
  %v121 = sea.load %v65[%v118] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_107"("seahorn/lib/bcmp.c":61:11))
  %v122 = sea.ptr.index %v67 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_108"("seahorn/lib/bcmp.c":61:20))
  %v123 = sea.const 1 : i64 loc("_109"("seahorn/lib/bcmp.c":61:20))
  %v124 = sea.ptr.dereferenceable %v122, %v123 : !sea.ptr<64>, i64 loc("_109"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v124, ^bb58, ^bb162
^bb58:
  %v125 = sea.load %v65[%v122] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_111"("seahorn/lib/bcmp.c":61:20))
  %v126 = sea.icmp eq, %v121, %v125 : i8 loc(".not2.i70.i.1"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v126, ^bb59, ^bb91(%v122, %v118 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb59:
  %v127 = sea.const 2 : i64 loc(".not10"("seahorn/lib/bcmp.c":60:11))
  %v128 = sea.icmp eq, %v103, %v127 : i64 loc(".not10"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v128, ^bb101, ^bb60 loc("seahorn/lib/bcmp.c":60:9)
^bb60:
  %v129 = sea.ptr.index %v22 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_113"("seahorn/lib/bcmp.c":61:11))
  %v130 = sea.const 1 : i64 loc("_114"("seahorn/lib/bcmp.c":61:11))
  %v131 = sea.ptr.dereferenceable %v129, %v130 : !sea.ptr<64>, i64 loc("_114"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v131, ^bb61, ^bb162
^bb61:
  %v132 = sea.load %v65[%v129] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_116"("seahorn/lib/bcmp.c":61:11))
  %v133 = sea.ptr.index %v67 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_117"("seahorn/lib/bcmp.c":61:20))
  %v134 = sea.const 1 : i64 loc("_118"("seahorn/lib/bcmp.c":61:20))
  %v135 = sea.ptr.dereferenceable %v133, %v134 : !sea.ptr<64>, i64 loc("_118"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v135, ^bb62, ^bb162
^bb62:
  %v136 = sea.load %v65[%v133] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_120"("seahorn/lib/bcmp.c":61:20))
  %v137 = sea.icmp eq, %v132, %v136 : i8 loc(".not2.i70.i.2"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v137, ^bb63, ^bb91(%v133, %v129 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb63:
  %v138 = sea.const 3 : i64 loc("_121"("seahorn/lib/bcmp.c":60:11))
  %v139 = sea.icmp ugt, %v103, %v138 : i64 loc("_121"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v139, ^bb64, ^bb101 loc("seahorn/lib/bcmp.c":60:9)
^bb64:
  %v140 = sea.ptr.index %v22 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_123"("seahorn/lib/bcmp.c":61:11))
  %v141 = sea.const 1 : i64 loc("_124"("seahorn/lib/bcmp.c":61:11))
  %v142 = sea.ptr.dereferenceable %v140, %v141 : !sea.ptr<64>, i64 loc("_124"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v142, ^bb65, ^bb162
^bb65:
  %v143 = sea.load %v65[%v140] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_126"("seahorn/lib/bcmp.c":61:11))
  %v144 = sea.ptr.index %v67 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_127"("seahorn/lib/bcmp.c":61:20))
  %v145 = sea.const 1 : i64 loc("_128"("seahorn/lib/bcmp.c":61:20))
  %v146 = sea.ptr.dereferenceable %v144, %v145 : !sea.ptr<64>, i64 loc("_128"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v146, ^bb66, ^bb162
^bb66:
  %v147 = sea.load %v65[%v144] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_130"("seahorn/lib/bcmp.c":61:20))
  %v148 = sea.icmp eq, %v143, %v147 : i8 loc(".not2.i70.i.3"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v148, ^bb67, ^bb91(%v144, %v140 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb67:
  %v149 = sea.const 4 : i64 loc(".not11"("seahorn/lib/bcmp.c":60:11))
  %v150 = sea.icmp eq, %v103, %v149 : i64 loc(".not11"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v150, ^bb101, ^bb68 loc("seahorn/lib/bcmp.c":60:9)
^bb68:
  %v151 = sea.ptr.index %v22 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_132"("seahorn/lib/bcmp.c":61:11))
  %v152 = sea.const 1 : i64 loc("_133"("seahorn/lib/bcmp.c":61:11))
  %v153 = sea.ptr.dereferenceable %v151, %v152 : !sea.ptr<64>, i64 loc("_133"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v153, ^bb69, ^bb162
^bb69:
  %v154 = sea.load %v65[%v151] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_135"("seahorn/lib/bcmp.c":61:11))
  %v155 = sea.ptr.index %v67 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_136"("seahorn/lib/bcmp.c":61:20))
  %v156 = sea.const 1 : i64 loc("_137"("seahorn/lib/bcmp.c":61:20))
  %v157 = sea.ptr.dereferenceable %v155, %v156 : !sea.ptr<64>, i64 loc("_137"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v157, ^bb70, ^bb162
^bb70:
  %v158 = sea.load %v65[%v155] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_139"("seahorn/lib/bcmp.c":61:20))
  %v159 = sea.icmp eq, %v154, %v158 : i8 loc(".not2.i70.i.4"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v159, ^bb71, ^bb91(%v155, %v151 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb71:
  %v160 = sea.const 5 : i64 loc("_140"("seahorn/lib/bcmp.c":60:11))
  %v161 = sea.icmp ugt, %v103, %v160 : i64 loc("_140"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v161, ^bb72, ^bb101 loc("seahorn/lib/bcmp.c":60:9)
^bb72:
  %v162 = sea.ptr.index %v22 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_142"("seahorn/lib/bcmp.c":61:11))
  %v163 = sea.const 1 : i64 loc("_143"("seahorn/lib/bcmp.c":61:11))
  %v164 = sea.ptr.dereferenceable %v162, %v163 : !sea.ptr<64>, i64 loc("_143"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v164, ^bb73, ^bb162
^bb73:
  %v165 = sea.load %v65[%v162] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_145"("seahorn/lib/bcmp.c":61:11))
  %v166 = sea.ptr.index %v67 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_146"("seahorn/lib/bcmp.c":61:20))
  %v167 = sea.const 1 : i64 loc("_147"("seahorn/lib/bcmp.c":61:20))
  %v168 = sea.ptr.dereferenceable %v166, %v167 : !sea.ptr<64>, i64 loc("_147"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v168, ^bb74, ^bb162
^bb74:
  %v169 = sea.load %v65[%v166] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_149"("seahorn/lib/bcmp.c":61:20))
  %v170 = sea.icmp eq, %v165, %v169 : i8 loc(".not2.i70.i.5"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v170, ^bb75, ^bb91(%v166, %v162 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb75:
  %v171 = sea.const 6 : i64 loc(".not12"("seahorn/lib/bcmp.c":60:11))
  %v172 = sea.icmp eq, %v103, %v171 : i64 loc(".not12"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v172, ^bb101, ^bb76 loc("seahorn/lib/bcmp.c":60:9)
^bb76:
  %v173 = sea.ptr.index %v22 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_151"("seahorn/lib/bcmp.c":61:11))
  %v174 = sea.const 1 : i64 loc("_152"("seahorn/lib/bcmp.c":61:11))
  %v175 = sea.ptr.dereferenceable %v173, %v174 : !sea.ptr<64>, i64 loc("_152"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v175, ^bb77, ^bb162
^bb77:
  %v176 = sea.load %v65[%v173] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_154"("seahorn/lib/bcmp.c":61:11))
  %v177 = sea.ptr.index %v67 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_155"("seahorn/lib/bcmp.c":61:20))
  %v178 = sea.const 1 : i64 loc("_156"("seahorn/lib/bcmp.c":61:20))
  %v179 = sea.ptr.dereferenceable %v177, %v178 : !sea.ptr<64>, i64 loc("_156"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v179, ^bb78, ^bb162
^bb78:
  %v180 = sea.load %v65[%v177] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_158"("seahorn/lib/bcmp.c":61:20))
  %v181 = sea.icmp eq, %v176, %v180 : i8 loc(".not2.i70.i.6"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v181, ^bb79, ^bb91(%v177, %v173 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb79:
  %v182 = sea.const 7 : i64 loc("_159"("seahorn/lib/bcmp.c":60:11))
  %v183 = sea.icmp ugt, %v103, %v182 : i64 loc("_159"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v183, ^bb80, ^bb101 loc("seahorn/lib/bcmp.c":60:9)
^bb80:
  %v184 = sea.ptr.index %v22 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_161"("seahorn/lib/bcmp.c":61:11))
  %v185 = sea.const 1 : i64 loc("_162"("seahorn/lib/bcmp.c":61:11))
  %v186 = sea.ptr.dereferenceable %v184, %v185 : !sea.ptr<64>, i64 loc("_162"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v186, ^bb81, ^bb162
^bb81:
  %v187 = sea.load %v65[%v184] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_164"("seahorn/lib/bcmp.c":61:11))
  %v188 = sea.ptr.index %v67 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_165"("seahorn/lib/bcmp.c":61:20))
  %v189 = sea.const 1 : i64 loc("_166"("seahorn/lib/bcmp.c":61:20))
  %v190 = sea.ptr.dereferenceable %v188, %v189 : !sea.ptr<64>, i64 loc("_166"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v190, ^bb82, ^bb162
^bb82:
  %v191 = sea.load %v65[%v188] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_168"("seahorn/lib/bcmp.c":61:20))
  %v192 = sea.icmp eq, %v187, %v191 : i8 loc(".not2.i70.i.7"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v192, ^bb83, ^bb91(%v188, %v184 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb83:
  %v193 = sea.const 8 : i64 loc(".not13"("seahorn/lib/bcmp.c":60:11))
  %v194 = sea.icmp eq, %v103, %v193 : i64 loc(".not13"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v194, ^bb101, ^bb84 loc("seahorn/lib/bcmp.c":60:9)
^bb84:
  %v195 = sea.ptr.index %v22 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_170"("seahorn/lib/bcmp.c":61:11))
  %v196 = sea.const 1 : i64 loc("_171"("seahorn/lib/bcmp.c":61:11))
  %v197 = sea.ptr.dereferenceable %v195, %v196 : !sea.ptr<64>, i64 loc("_171"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v197, ^bb85, ^bb162
^bb85:
  %v198 = sea.load %v65[%v195] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_173"("seahorn/lib/bcmp.c":61:11))
  %v199 = sea.ptr.index %v67 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_174"("seahorn/lib/bcmp.c":61:20))
  %v200 = sea.const 1 : i64 loc("_175"("seahorn/lib/bcmp.c":61:20))
  %v201 = sea.ptr.dereferenceable %v199, %v200 : !sea.ptr<64>, i64 loc("_175"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v201, ^bb86, ^bb162
^bb86:
  %v202 = sea.load %v65[%v199] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_177"("seahorn/lib/bcmp.c":61:20))
  %v203 = sea.icmp eq, %v198, %v202 : i8 loc(".not2.i70.i.8"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v203, ^bb87, ^bb91(%v199, %v195 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb87:
  %v204 = sea.const 9 : i64 loc("_178"("seahorn/lib/bcmp.c":60:11))
  %v205 = sea.icmp ugt, %v103, %v204 : i64 loc("_178"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v205, ^bb88, ^bb101 loc("seahorn/lib/bcmp.c":60:9)
^bb88:
  %v206 = sea.ptr.index %v22 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_180"("seahorn/lib/bcmp.c":61:11))
  %v207 = sea.const 1 : i64 loc("_181"("seahorn/lib/bcmp.c":61:11))
  %v208 = sea.ptr.dereferenceable %v206, %v207 : !sea.ptr<64>, i64 loc("_181"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v208, ^bb89, ^bb162
^bb89:
  %v209 = sea.load %v65[%v206] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_183"("seahorn/lib/bcmp.c":61:11))
  %v210 = sea.ptr.index %v67 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_184"("seahorn/lib/bcmp.c":61:20))
  %v211 = sea.const 1 : i64 loc("_185"("seahorn/lib/bcmp.c":61:20))
  %v212 = sea.ptr.dereferenceable %v210, %v211 : !sea.ptr<64>, i64 loc("_185"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v212, ^bb90, ^bb162
^bb90:
  %v213 = sea.load %v65[%v210] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_187"("seahorn/lib/bcmp.c":61:20))
  %v214 = sea.icmp eq, %v209, %v213 : i8 loc(".not2.i70.i.9"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v214, ^bb93, ^bb91(%v210, %v206 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb91(%v215 : !sea.ptr<64>, %v216 : !sea.ptr<64>):
  %v217 = sea.const 1 : i64 loc("_99"("seahorn/lib/bcmp.c":62:16))
  %v218 = sea.ptr.dereferenceable %v216, %v217 : !sea.ptr<64>, i64 loc("_99"("seahorn/lib/bcmp.c":62:16))
  sea.cond_br %v218, ^bb92, ^bb162
^bb92:
  %v219 = sea.const 1 : i64 loc("_101"("seahorn/lib/bcmp.c":62:24))
  %v220 = sea.ptr.dereferenceable %v215, %v219 : !sea.ptr<64>, i64 loc("_101"("seahorn/lib/bcmp.c":62:24))
  sea.cond_br %v220, ^bb109, ^bb162
^bb93:
  %v221 = sea.const 10 : i64 loc(".not14"("seahorn/lib/bcmp.c":67:31))
  %v222 = sea.icmp eq, %v103, %v221 : i64 loc(".not14"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v222, ^bb101, ^bb94 loc("seahorn/lib/bcmp.c":67:3)
^bb94:
  %v223 = sea.ptr.index %v22 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_89"("seahorn/lib/bcmp.c":68:9))
  %v224 = sea.const 1 : i64 loc("_90"("seahorn/lib/bcmp.c":68:9))
  %v225 = sea.ptr.dereferenceable %v223, %v224 : !sea.ptr<64>, i64 loc("_90"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v225, ^bb95, ^bb162
^bb95:
  %v226 = sea.load %v65[%v223] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_191"("seahorn/lib/bcmp.c":68:9))
  %v227 = sea.ptr.index %v67 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_192"("seahorn/lib/bcmp.c":68:18))
  %v228 = sea.const 1 : i64 loc("_193"("seahorn/lib/bcmp.c":68:18))
  %v229 = sea.ptr.dereferenceable %v227, %v228 : !sea.ptr<64>, i64 loc("_193"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v229, ^bb96, ^bb162
^bb96:
  %v230 = sea.load %v65[%v227] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_195"("seahorn/lib/bcmp.c":68:18))
  %v231 = sea.icmp eq, %v226, %v230 : i8 loc(".not.i69.i"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v231, ^bb99, ^bb97 loc("seahorn/lib/bcmp.c":68:9)
^bb97:
  %v232 = sea.const 1 : i64 loc("_197"("seahorn/lib/bcmp.c":69:14))
  %v233 = sea.ptr.dereferenceable %v223, %v232 : !sea.ptr<64>, i64 loc("_197"("seahorn/lib/bcmp.c":69:14))
  sea.cond_br %v233, ^bb98, ^bb162
^bb98:
  %v234 = sea.const 1 : i64 loc("_199"("seahorn/lib/bcmp.c":69:22))
  %v235 = sea.ptr.dereferenceable %v227, %v234 : !sea.ptr<64>, i64 loc("_199"("seahorn/lib/bcmp.c":69:22))
  sea.cond_br %v235, ^bb109, ^bb162
^bb99:
  %v236 = sea.const 11 : i64 loc("exitcond49.not"("seahorn/lib/bcmp.c":67:31))
  %v237 = sea.icmp eq, %v103, %v236 : i64 loc("exitcond49.not"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v237, ^bb101, ^bb100 loc("seahorn/lib/bcmp.c":67:3)
^bb100:
  %v238 = sea.ptr.index %v22 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_189"("seahorn/lib/bcmp.c":68:9))
  %v239 = sea.const 1 : i64 loc("_190"("seahorn/lib/bcmp.c":68:9))
  %v240 = sea.ptr.dereferenceable %v238, %v239 : !sea.ptr<64>, i64 loc("_190"("seahorn/lib/bcmp.c":68:9))
  %v241 = sea.const 1 : i1
  %v242 = sea.xor %v240, %v241 : i1
  sea.assume %v242
  sea.br ^bb162
^bb101:
  sea.br ^bb102
^bb102:
  sea.br ^bb103
^bb103:
  %v243 = sea.icmp eq, %v13, %v66 : i64 loc(".not2.i50.i"("aws-c-common/source/byte_buf.c":888:18))
  sea.cond_br %v243, ^bb105, ^bb104 loc("aws-c-common/source/byte_buf.c":888:9)
^bb104:
  sea.br ^bb109
^bb105:
  sea.cond_br %v28, ^bb109, ^bb106 loc("seahorn/jobs/byte_cursor_compare_lexical/aws_byte_cursor_compare_lexical_harness.c":46:13)
^bb106:
  %v244 = sea.ptr.null : !sea.ptr<64> loc(".not.i64.i"("seahorn/lib/utils.c":15:3))
  %v245 = sea.ptr.cmp eq, %v22, %v244 : !sea.ptr<64> loc(".not.i64.i"("seahorn/lib/utils.c":15:3))
  %v246 = sea.xor %v245, %v89 : i1 loc("_205"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v246, ^bb107, ^bb162 loc("seahorn/lib/utils.c":15:3)
^bb107:
  %v247 = sea.and %v36, %v89 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v247, ^bb108, ^bb109 loc("seahorn/lib/utils.c":16:15)
^bb108:
  %v248 = sea.nondet "nd_size_t" [22] : i64 loc("_207"("seahorn/lib/utils.c":17:16))
  %v249 = sea.icmp ult, %v248, %v13 : i64 loc("_208"("seahorn/lib/utils.c":19:14))
  %v250 = sea.const 36028797018963967 : i64 loc("_209"("seahorn/lib/utils.c":19:20))
  %v251 = sea.icmp ult, %v13, %v250 : i64 loc("_209"("seahorn/lib/utils.c":19:20))
  %v252 = sea.and %v251, %v249 : i1 loc("_210"("seahorn/lib/utils.c":19:20))
  sea.assume %v252 loc("seahorn/lib/utils.c":19:5)
  %v253 = sea.ptr.index %v22 [%v248] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_211"("seahorn/lib/utils.c":20:5))
  %v254 = sea.load %v65[%v253] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_212"("seahorn/lib/utils.c":20:5))
  %v255 = sea.ptr.index %v67 [%v248] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_213"("seahorn/lib/utils.c":20:5))
  %v256 = sea.load %v65[%v255] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_214"("seahorn/lib/utils.c":20:5))
  %v257 = sea.icmp eq, %v254, %v256 : i8 loc("_215"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v257, ^bb109, ^bb162 loc("seahorn/lib/utils.c":20:5)
^bb109:
  sea.br ^bb110
^bb110:
  sea.br ^bb111
^bb111:
  sea.br ^bb112
^bb112:
  sea.br ^bb113
^bb113:
  sea.br ^bb114
^bb114:
  sea.br ^bb115
^bb115:
  sea.br ^bb116
^bb116:
  sea.br ^bb117
^bb117:
  sea.br ^bb118
^bb118:
  sea.br ^bb119
^bb119:
  sea.br ^bb120
^bb120:
  sea.br ^bb121
^bb121:
  sea.br ^bb122
^bb122:
  %v258 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v28, ^bb128(%v258 : i1), ^bb123 loc("aws-c-common/source/byte_buf.c":66:32)
^bb123:
  sea.br ^bb124
^bb124:
  sea.br ^bb125
^bb125:
  %v259 = sea.ptr.null : !sea.ptr<64> loc(".not2.i28.i"("aws-c-common/source/byte_buf.c":66:55))
  %v260 = sea.ptr.cmp eq, %v22, %v259 : !sea.ptr<64> loc(".not2.i28.i"("aws-c-common/source/byte_buf.c":66:55))
  %v261 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v260, ^bb128(%v261 : i1), ^bb126 loc("aws-c-common/source/byte_buf.c":66:67)
^bb126:
  sea.br ^bb127
^bb127:
  %v262 = sea.const 1 : i1
  sea.br ^bb128(%v262 : i1)
^bb128(%v263 : i1):
  sea.br ^bb129
^bb129:
  sea.cond_br %v28, ^bb134, ^bb130 loc("aws-c-common/source/byte_buf.c":66:32)
^bb130:
  sea.br ^bb131
^bb131:
  %v264 = sea.const 1 : i1 loc("or.cond29.not")
  %v265 = sea.and %v36, %v264 : i1 loc("or.cond29.not")
  sea.cond_br %v265, ^bb132, ^bb162
^bb132:
  sea.br ^bb133
^bb133:
  sea.br ^bb134
^bb134:
  sea.br ^bb135
^bb135:
  %v266 = sea.const 0 : i64 loc("_237"("aws-c-common/source/byte_buf.c":66:26))
  %v267 = sea.icmp eq, %v66, %v266 : i64 loc("_237"("aws-c-common/source/byte_buf.c":66:26))
  %v268 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v267, ^bb141(%v268 : i1), ^bb136 loc("aws-c-common/source/byte_buf.c":66:32)
^bb136:
  sea.br ^bb137
^bb137:
  sea.br ^bb138
^bb138:
  %v269 = sea.ptr.null : !sea.ptr<64> loc(".not2.i20.i"("aws-c-common/source/byte_buf.c":66:55))
  %v270 = sea.ptr.cmp eq, %v67, %v269 : !sea.ptr<64> loc(".not2.i20.i"("aws-c-common/source/byte_buf.c":66:55))
  %v271 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v270, ^bb141(%v271 : i1), ^bb139 loc("aws-c-common/source/byte_buf.c":66:67)
^bb139:
  sea.br ^bb140
^bb140:
  %v272 = sea.const 1 : i1
  sea.br ^bb141(%v272 : i1)
^bb141(%v273 : i1):
  sea.br ^bb142
^bb142:
  sea.cond_br %v267, ^bb147, ^bb143 loc("aws-c-common/source/byte_buf.c":66:32)
^bb143:
  sea.br ^bb144
^bb144:
  %v274 = sea.const 1 : i1 loc("or.cond33.not")
  %v275 = sea.and %v89, %v274 : i1 loc("or.cond33.not")
  sea.cond_br %v275, ^bb145, ^bb162
^bb145:
  sea.br ^bb146
^bb146:
  sea.br ^bb147
^bb147:
  sea.cond_br %v28, ^bb155, ^bb148 loc("seahorn/jobs/byte_cursor_compare_lexical/aws_byte_cursor_compare_lexical_harness.c":55:9)
^bb148:
  %v276 = sea.ptr.null : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v277 = sea.ptr.cmp eq, %v22, %v276 : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  sea.cond_br %v277, ^bb155, ^bb149 loc("seahorn/lib/utils.c":39:14)
^bb149:
  sea.br ^bb150
^bb150:
  %v278 = sea.ptr.index %v22 [%v68] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_252"("seahorn/lib/utils.c":40:5))
  %v279 = sea.const 1 : i64 loc("_253"("seahorn/lib/utils.c":40:5))
  %v280 = sea.ptr.dereferenceable %v278, %v279 : !sea.ptr<64>, i64 loc("_253"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v280, ^bb151, ^bb162
^bb151:
  %v281 = sea.load %v65[%v278] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_255"("seahorn/lib/utils.c":40:5))
  sea.br ^bb152
^bb152:
  %v282 = sea.icmp eq, %v281, %v83 : i8 loc("_257"("seahorn/lib/utils.c":40:5))
  sea.br ^bb153
^bb153:
  %v283 = sea.const 1 : i64 loc("_259"("seahorn/lib/utils.c":40:5))
  %v284 = sea.ptr.dereferenceable %v278, %v283 : !sea.ptr<64>, i64 loc("_259"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v284, ^bb154, ^bb162
^bb154:
  %v285 = sea.const 1 : i1 loc("or.cond25")
  %v286 = sea.const 0 : i1 loc("or.cond25")
  %v287 = sea.select %v285, %v282, %v286 : i1 loc("or.cond25")
  sea.cond_br %v287, ^bb155, ^bb162
^bb155:
  %v288 = sea.const 1 : i1 loc("seahorn/jobs/byte_cursor_compare_lexical/aws_byte_cursor_compare_lexical_harness.c":58:9)
  %v289 = sea.xor %v267, %v288 : i1 loc("seahorn/jobs/byte_cursor_compare_lexical/aws_byte_cursor_compare_lexical_harness.c":58:9)
  sea.assume %v289 loc("seahorn/jobs/byte_cursor_compare_lexical/aws_byte_cursor_compare_lexical_harness.c":58:9)
  sea.assume %v89 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb156
^bb156:
  %v290 = sea.ptr.index %v67 [%v84] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_262"("seahorn/lib/utils.c":40:5))
  %v291 = sea.const 1 : i64 loc("_263"("seahorn/lib/utils.c":40:5))
  %v292 = sea.ptr.dereferenceable %v290, %v291 : !sea.ptr<64>, i64 loc("_263"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v292, ^bb157, ^bb162
^bb157:
  %v293 = sea.load %v65[%v290] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_265"("seahorn/lib/utils.c":40:5))
  sea.br ^bb158
^bb158:
  %v294 = sea.icmp eq, %v293, %v101 : i8 loc("_267"("seahorn/lib/utils.c":40:5))
  sea.br ^bb159
^bb159:
  %v295 = sea.const 1 : i64 loc("_269"("seahorn/lib/utils.c":40:5))
  %v296 = sea.ptr.dereferenceable %v290, %v295 : !sea.ptr<64>, i64 loc("_269"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v296, ^bb160, ^bb162
^bb160:
  sea.br ^bb161
^bb161:
  %v297 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v298 = sea.xor %v294, %v297 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v298 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb162 loc("seahorn/lib/utils.c":40:5)
^bb162:
  sea.br ^bb163
^bb163:
  %v299 = sea.const 0 : i1
  sea.assert %v299
  sea.halt
}
