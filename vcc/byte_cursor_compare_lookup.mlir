// Exported from SeaHorn (byte_cursor_compare_lookup.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm19")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm20")
  %v2 = sea.mem.nondet "region.33" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm21")
  %v3 = sea.mem.nondet "region.42" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm22")
  %v4 = sea.mem.nondet "region.32" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm23")
  %v5 = sea.mem.nondet "region.51" [5] : !sea.mem<!sea.ptr<64>, i8> loc("sm24")
  %v6 = sea.const 16 : i64 loc("_0")
  %v7 = sea.alloca %v6 align 8 [6] : i64 -> !sea.ptr<64> loc("_0")
  %v8 = sea.const 16 : i64 loc("_1")
  %v9 = sea.alloca %v8 align 8 [7] : i64 -> !sea.ptr<64> loc("_1")
  %v10 = sea.const 256 : i64 loc("_2")
  %v11 = sea.alloca %v10 align 16 [8] : i64 -> !sea.ptr<64> loc("_2")
  %v12 = sea.const 16 : i64 loc("_3")
  %v13 = sea.alloca %v12 align 8 [9] : i64 -> !sea.ptr<64> loc("_3")
  %v14 = sea.const 16 : i64 loc("_4")
  %v15 = sea.alloca %v14 align 8 [10] : i64 -> !sea.ptr<64> loc("_4")
  %v16 = sea.nondet "nd_size_t" [11] : i64 loc("_5"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb1
^bb1:
  %v17 = sea.store %v0[%v7], %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb2
^bb2:
  %v18 = sea.const 11 : i64 loc("_8"("seahorn/lib/byte_buf_helper.c":33:24))
  %v19 = sea.icmp ult, %v16, %v18 : i64 loc("_8"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v19 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v20 = sea.nondet "nd_malloc_is_fail" [12] : i1 loc("_9"("seahorn/lib/sea_allocators.c":11:10))
  %v21 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v20, ^bb4(%v5, %v21 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/sea_allocators.c":11:10)
^bb3:
  %v22 = sea.const 10 : i64 loc("malloc.i11")
  %v23 = sea.alloca %v22 align 16 [13] : i64 -> !sea.ptr<64> loc("malloc.i11")
  sea.br ^bb4(%v5, %v23 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb4(%v24 : !sea.mem<!sea.ptr<64>, i8>, %v25 : !sea.ptr<64>):
  %v26 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v27 = sea.memhavoc %v24[%v25], %v26 [14] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v28 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_12"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb5
^bb5:
  %v29 = sea.store %v17[%v28], %v25 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  %v30 = sea.const 256 : i64 loc("seahorn/jobs/byte_cursor_compare_lookup/aws_byte_cursor_compare_lookup_harness.c":21:5)
  %v31 = sea.memhavoc %v4[%v11], %v30 [15] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs/byte_cursor_compare_lookup/aws_byte_cursor_compare_lookup_harness.c":21:5)
  sea.br ^bb6
^bb6:
  %v32 = sea.const 0 : i64 loc("_14"("aws-c-common/source/byte_buf.c":66:26))
  %v33 = sea.icmp eq, %v16, %v32 : i64 loc("_14"("aws-c-common/source/byte_buf.c":66:26))
  %v34 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v33, ^bb12(%v34 : i1), ^bb7 loc("aws-c-common/source/byte_buf.c":66:32)
^bb7:
  sea.br ^bb8
^bb8:
  sea.br ^bb9
^bb9:
  %v35 = sea.ptr.null : !sea.ptr<64> loc(".not2.i35.i"("aws-c-common/source/byte_buf.c":66:55))
  %v36 = sea.ptr.cmp eq, %v25, %v35 : !sea.ptr<64> loc(".not2.i35.i"("aws-c-common/source/byte_buf.c":66:55))
  %v37 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v36, ^bb12(%v37 : i1), ^bb10 loc("aws-c-common/source/byte_buf.c":66:67)
^bb10:
  sea.br ^bb11
^bb11:
  %v38 = sea.const 1 : i1
  sea.br ^bb12(%v38 : i1)
^bb12(%v39 : i1):
  sea.assume %v39 loc("seahorn/jobs/byte_cursor_compare_lookup/aws_byte_cursor_compare_lookup_harness.c":24:5)
  %v40 = sea.nondet "nd_bool" [16] : i1 loc("_21"("seahorn/jobs/byte_cursor_compare_lookup/aws_byte_cursor_compare_lookup_harness.c":25:9))
  sea.cond_br %v40, ^bb26, ^bb13 loc("seahorn/jobs/byte_cursor_compare_lookup/aws_byte_cursor_compare_lookup_harness.c":25:9)
^bb13:
  %v41 = sea.nondet "nd_size_t" [17] : i64 loc("_24"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb14
^bb14:
  %v42 = sea.store %v1[%v9], %v41 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb15
^bb15:
  %v43 = sea.const 11 : i64 loc("_27"("seahorn/lib/byte_buf_helper.c":33:24))
  %v44 = sea.icmp ult, %v41, %v43 : i64 loc("_27"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v44 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v45 = sea.nondet "nd_malloc_is_fail" [18] : i1 loc("_28"("seahorn/lib/sea_allocators.c":11:10))
  %v46 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v45, ^bb17(%v27, %v46 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb16 loc("seahorn/lib/sea_allocators.c":11:10)
^bb16:
  %v47 = sea.const 10 : i64 loc("malloc72.i12")
  %v48 = sea.alloca %v47 align 16 [19] : i64 -> !sea.ptr<64> loc("malloc72.i12")
  sea.br ^bb17(%v27, %v48 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb17(%v49 : !sea.mem<!sea.ptr<64>, i8>, %v50 : !sea.ptr<64>):
  %v51 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v52 = sea.memhavoc %v49[%v50], %v51 [20] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v53 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_31"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb18
^bb18:
  %v54 = sea.store %v42[%v53], %v50 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  sea.br ^bb19
^bb19:
  %v55 = sea.const 0 : i64 loc("_33"("aws-c-common/source/byte_buf.c":66:26))
  %v56 = sea.icmp eq, %v41, %v55 : i64 loc("_33"("aws-c-common/source/byte_buf.c":66:26))
  %v57 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v56, ^bb25(%v57 : i1), ^bb20 loc("aws-c-common/source/byte_buf.c":66:32)
^bb20:
  sea.br ^bb21
^bb21:
  sea.br ^bb22
^bb22:
  %v58 = sea.ptr.null : !sea.ptr<64> loc(".not2.i31.i"("aws-c-common/source/byte_buf.c":66:55))
  %v59 = sea.ptr.cmp eq, %v50, %v58 : !sea.ptr<64> loc(".not2.i31.i"("aws-c-common/source/byte_buf.c":66:55))
  %v60 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v59, ^bb25(%v60 : i1), ^bb23 loc("aws-c-common/source/byte_buf.c":66:67)
^bb23:
  sea.br ^bb24
^bb24:
  %v61 = sea.const 1 : i1
  sea.br ^bb25(%v61 : i1)
^bb25(%v62 : i1):
  sea.assume %v62 loc("seahorn/jobs/byte_cursor_compare_lookup/aws_byte_cursor_compare_lookup_harness.c":29:9)
  sea.br ^bb27(%v52, %v41, %v50 : !sea.mem<!sea.ptr<64>, i8>, i64, !sea.ptr<64>)
^bb26:
  %v63 = sea.store %v1[%v9], %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_cursor_compare_lookup/aws_byte_cursor_compare_lookup_harness.c":26:15)
  %v64 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs/byte_cursor_compare_lookup/aws_byte_cursor_compare_lookup_harness.c":26:15))
  %v65 = sea.store %v63[%v64], %v25 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_cursor_compare_lookup/aws_byte_cursor_compare_lookup_harness.c":26:15)
  sea.br ^bb27(%v27, %v16, %v25 : !sea.mem<!sea.ptr<64>, i8>, i64, !sea.ptr<64>) loc("seahorn/jobs/byte_cursor_compare_lookup/aws_byte_cursor_compare_lookup_harness.c":27:5)
^bb27(%v66 : !sea.mem<!sea.ptr<64>, i8>, %v67 : i64, %v68 : !sea.ptr<64>):
  %v69 = sea.nondet "nd_size_t" [21] : i64 loc("_43"("seahorn/lib/utils.c":46:20))
  sea.br ^bb28
^bb28:
  %v70 = sea.store %v2[%v13], %v69 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v71 = sea.const 0 : i64 loc("_45"("seahorn/lib/utils.c":47:12))
  %v72 = sea.icmp ne, %v16, %v71 : i64 loc("_45"("seahorn/lib/utils.c":47:12))
  %v73 = sea.ptr.null : !sea.ptr<64> loc("_46")
  %v74 = sea.ptr.cmp ne, %v25, %v73 : !sea.ptr<64> loc("_46")
  %v75 = sea.and %v72, %v74 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v75, ^bb31, ^bb29 loc("seahorn/lib/utils.c":47:16)
^bb29:
  %v76 = sea.nondet "nd_uint8_t" [22] : i8 loc("_58"("seahorn/lib/utils.c":51:21))
  %v77 = sea.ptr.index %v13 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_59"("seahorn/lib/utils.c":51:14))
  sea.br ^bb30
^bb30:
  %v78 = sea.store %v70[%v77], %v76 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb36(%v76 : i8)
^bb31:
  sea.br ^bb32
^bb32:
  %v79 = sea.icmp ult, %v69, %v16 : i64 loc("_49"("seahorn/lib/utils.c":48:27))
  sea.assume %v79 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb33
^bb33:
  %v80 = sea.ptr.index %v25 [%v69] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_51"("seahorn/lib/utils.c":49:21))
  %v81 = sea.const 1 : i64 loc("_52"("seahorn/lib/utils.c":49:21))
  %v82 = sea.ptr.dereferenceable %v80, %v81 : !sea.ptr<64>, i64 loc("_52"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v82, ^bb34, ^bb284
^bb34:
  %v83 = sea.load %v66[%v80] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_54"("seahorn/lib/utils.c":49:21))
  %v84 = sea.ptr.index %v13 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_55"("seahorn/lib/utils.c":49:14))
  sea.br ^bb35
^bb35:
  %v85 = sea.store %v70[%v84], %v83 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb36(%v83 : i8) loc("seahorn/lib/utils.c":50:3)
^bb36(%v86 : i8):
  %v87 = sea.nondet "nd_size_t" [23] : i64 loc("_62"("seahorn/lib/utils.c":46:20))
  sea.br ^bb37
^bb37:
  %v88 = sea.store %v3[%v15], %v87 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v89 = sea.const 0 : i64 loc("_64"("seahorn/lib/utils.c":47:12))
  %v90 = sea.icmp ne, %v67, %v89 : i64 loc("_64"("seahorn/lib/utils.c":47:12))
  %v91 = sea.ptr.null : !sea.ptr<64> loc("_65")
  %v92 = sea.ptr.cmp ne, %v68, %v91 : !sea.ptr<64> loc("_65")
  %v93 = sea.and %v90, %v92 : i1 loc("or.cond.i67.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v93, ^bb40, ^bb38 loc("seahorn/lib/utils.c":47:16)
^bb38:
  %v94 = sea.nondet "nd_uint8_t" [24] : i8 loc("_77"("seahorn/lib/utils.c":51:21))
  %v95 = sea.ptr.index %v15 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_78"("seahorn/lib/utils.c":51:14))
  sea.br ^bb39
^bb39:
  %v96 = sea.store %v88[%v95], %v94 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb45(%v94 : i8)
^bb40:
  sea.br ^bb41
^bb41:
  %v97 = sea.icmp ult, %v87, %v67 : i64 loc("_68"("seahorn/lib/utils.c":48:27))
  sea.assume %v97 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb42
^bb42:
  %v98 = sea.ptr.index %v68 [%v87] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_70"("seahorn/lib/utils.c":49:21))
  %v99 = sea.const 1 : i64 loc("_71"("seahorn/lib/utils.c":49:21))
  %v100 = sea.ptr.dereferenceable %v98, %v99 : !sea.ptr<64>, i64 loc("_71"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v100, ^bb43, ^bb284
^bb43:
  %v101 = sea.load %v66[%v98] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_73"("seahorn/lib/utils.c":49:21))
  %v102 = sea.ptr.index %v15 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_74"("seahorn/lib/utils.c":49:14))
  sea.br ^bb44
^bb44:
  %v103 = sea.store %v88[%v102], %v101 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb45(%v101 : i8) loc("seahorn/lib/utils.c":50:3)
^bb45(%v104 : i8):
  sea.br ^bb46
^bb46:
  sea.cond_br %v33, ^bb117, ^bb47 loc("aws-c-common/source/byte_buf.c":902:23)
^bb47:
  sea.br ^bb48
^bb48:
  sea.br ^bb49
^bb49:
  %v105 = sea.const 0 : i64 loc("_87"("aws-c-common/source/byte_buf.c":906:25))
  %v106 = sea.icmp eq, %v67, %v105 : i64 loc("_87"("aws-c-common/source/byte_buf.c":906:25))
  sea.cond_br %v106, ^bb121, ^bb50 loc("aws-c-common/source/byte_buf.c":906:16)
^bb50:
  sea.br ^bb51
^bb51:
  sea.br ^bb52
^bb52:
  sea.br ^bb53
^bb53:
  sea.br ^bb54
^bb54:
  %v107 = sea.const 0 : i64 loc("_93"("aws-c-common/source/byte_buf.c":915:21))
  %v108 = sea.icmp sgt, %v16, %v107 : i64 loc("_93"("aws-c-common/source/byte_buf.c":915:21))
  %v109 = sea.const 0 : i64 loc("_94"("aws-c-common/source/byte_buf.c":915:31))
  %v110 = sea.icmp sgt, %v67, %v109 : i64 loc("_94"("aws-c-common/source/byte_buf.c":915:31))
  %v111 = sea.const 0 : i1 loc("_95"("aws-c-common/source/byte_buf.c":915:31))
  %v112 = sea.select %v108, %v110, %v111 : i1 loc("_95"("aws-c-common/source/byte_buf.c":915:31))
  sea.cond_br %v112, ^bb55, ^bb115(%v108, %v110 : i1, i1) loc("aws-c-common/source/byte_buf.c":915:5)
^bb55:
  %v113 = sea.const 1 : i64 loc("_96"("aws-c-common/source/byte_buf.c":916:36))
  %v114 = sea.ptr.dereferenceable %v25, %v113 : !sea.ptr<64>, i64 loc("_96"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v114, ^bb56, ^bb284
^bb56:
  %v115 = sea.load %v66[%v25] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_99"("aws-c-common/source/byte_buf.c":916:36))
  %v116 = sea.zext %v115 : i8 to i64 loc("_100"("aws-c-common/source/byte_buf.c":916:23))
  %v117 = sea.ptr.index %v11 [%v116] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_101"("aws-c-common/source/byte_buf.c":916:23))
  %v118 = sea.const 1 : i64 loc("_102"("aws-c-common/source/byte_buf.c":916:23))
  %v119 = sea.ptr.dereferenceable %v117, %v118 : !sea.ptr<64>, i64 loc("_102"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v119, ^bb57, ^bb284
^bb57:
  %v120 = sea.load %v31[%v117] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_104"("aws-c-common/source/byte_buf.c":916:23))
  %v121 = sea.const 1 : i64 loc("_105"("aws-c-common/source/byte_buf.c":917:36))
  %v122 = sea.ptr.dereferenceable %v68, %v121 : !sea.ptr<64>, i64 loc("_105"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v122, ^bb58, ^bb284
^bb58:
  %v123 = sea.load %v66[%v68] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_107"("aws-c-common/source/byte_buf.c":917:36))
  %v124 = sea.zext %v123 : i8 to i64 loc("_108"("aws-c-common/source/byte_buf.c":917:23))
  %v125 = sea.ptr.index %v11 [%v124] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_109"("aws-c-common/source/byte_buf.c":917:23))
  %v126 = sea.const 1 : i64 loc("_110"("aws-c-common/source/byte_buf.c":917:23))
  %v127 = sea.ptr.dereferenceable %v125, %v126 : !sea.ptr<64>, i64 loc("_110"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v127, ^bb59, ^bb284
^bb59:
  %v128 = sea.load %v31[%v125] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_112"("aws-c-common/source/byte_buf.c":917:23))
  %v129 = sea.icmp eq, %v120, %v128 : i8 loc("or.cond53.not"("aws-c-common/source/byte_buf.c":921:13))
  sea.cond_br %v129, ^bb60, ^bb121 loc("aws-c-common/source/byte_buf.c":921:13)
^bb60:
  %v130 = sea.ptr.index %v25 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_114"("aws-c-common/source/byte_buf.c":929:17))
  %v131 = sea.ptr.index %v68 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_115"("aws-c-common/source/byte_buf.c":930:17))
  %v132 = sea.const 1 : i64 loc("_116"("aws-c-common/source/byte_buf.c":915:21))
  %v133 = sea.icmp ne, %v16, %v132 : i64 loc("_116"("aws-c-common/source/byte_buf.c":915:21))
  %v134 = sea.const 1 : i64 loc("_117"("aws-c-common/source/byte_buf.c":915:31))
  %v135 = sea.icmp ne, %v67, %v134 : i64 loc("_117"("aws-c-common/source/byte_buf.c":915:31))
  %v136 = sea.const 0 : i1 loc("_118"("aws-c-common/source/byte_buf.c":915:31))
  %v137 = sea.select %v133, %v135, %v136 : i1 loc("_118"("aws-c-common/source/byte_buf.c":915:31))
  sea.cond_br %v137, ^bb61, ^bb115(%v133, %v135 : i1, i1) loc("aws-c-common/source/byte_buf.c":915:5)
^bb61:
  %v138 = sea.const 1 : i64 loc("_119"("aws-c-common/source/byte_buf.c":916:36))
  %v139 = sea.ptr.dereferenceable %v130, %v138 : !sea.ptr<64>, i64 loc("_119"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v139, ^bb62, ^bb284
^bb62:
  %v140 = sea.load %v66[%v130] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_121"("aws-c-common/source/byte_buf.c":916:36))
  %v141 = sea.zext %v140 : i8 to i64 loc("_122"("aws-c-common/source/byte_buf.c":916:23))
  %v142 = sea.ptr.index %v11 [%v141] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_123"("aws-c-common/source/byte_buf.c":916:23))
  %v143 = sea.const 1 : i64 loc("_124"("aws-c-common/source/byte_buf.c":916:23))
  %v144 = sea.ptr.dereferenceable %v142, %v143 : !sea.ptr<64>, i64 loc("_124"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v144, ^bb63, ^bb284
^bb63:
  %v145 = sea.load %v31[%v142] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_126"("aws-c-common/source/byte_buf.c":916:23))
  %v146 = sea.const 1 : i64 loc("_127"("aws-c-common/source/byte_buf.c":917:36))
  %v147 = sea.ptr.dereferenceable %v131, %v146 : !sea.ptr<64>, i64 loc("_127"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v147, ^bb64, ^bb284
^bb64:
  %v148 = sea.load %v66[%v131] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_129"("aws-c-common/source/byte_buf.c":917:36))
  %v149 = sea.zext %v148 : i8 to i64 loc("_130"("aws-c-common/source/byte_buf.c":917:23))
  %v150 = sea.ptr.index %v11 [%v149] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_131"("aws-c-common/source/byte_buf.c":917:23))
  %v151 = sea.const 1 : i64 loc("_132"("aws-c-common/source/byte_buf.c":917:23))
  %v152 = sea.ptr.dereferenceable %v150, %v151 : !sea.ptr<64>, i64 loc("_132"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v152, ^bb65, ^bb284
^bb65:
  %v153 = sea.load %v31[%v150] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_134"("aws-c-common/source/byte_buf.c":917:23))
  %v154 = sea.icmp eq, %v145, %v153 : i8 loc("or.cond53.not.1"("aws-c-common/source/byte_buf.c":921:13))
  sea.cond_br %v154, ^bb66, ^bb121 loc("aws-c-common/source/byte_buf.c":921:13)
^bb66:
  %v155 = sea.ptr.index %v25 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_136"("aws-c-common/source/byte_buf.c":929:17))
  %v156 = sea.ptr.index %v68 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_137"("aws-c-common/source/byte_buf.c":930:17))
  %v157 = sea.const 2 : i64 loc("_138"("aws-c-common/source/byte_buf.c":915:21))
  %v158 = sea.icmp ugt, %v16, %v157 : i64 loc("_138"("aws-c-common/source/byte_buf.c":915:21))
  %v159 = sea.const 2 : i64 loc("_139"("aws-c-common/source/byte_buf.c":915:31))
  %v160 = sea.icmp ugt, %v67, %v159 : i64 loc("_139"("aws-c-common/source/byte_buf.c":915:31))
  %v161 = sea.const 0 : i1 loc("_140"("aws-c-common/source/byte_buf.c":915:31))
  %v162 = sea.select %v158, %v160, %v161 : i1 loc("_140"("aws-c-common/source/byte_buf.c":915:31))
  sea.cond_br %v162, ^bb67, ^bb115(%v158, %v160 : i1, i1) loc("aws-c-common/source/byte_buf.c":915:5)
^bb67:
  %v163 = sea.const 1 : i64 loc("_141"("aws-c-common/source/byte_buf.c":916:36))
  %v164 = sea.ptr.dereferenceable %v155, %v163 : !sea.ptr<64>, i64 loc("_141"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v164, ^bb68, ^bb284
^bb68:
  %v165 = sea.load %v66[%v155] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_143"("aws-c-common/source/byte_buf.c":916:36))
  %v166 = sea.zext %v165 : i8 to i64 loc("_144"("aws-c-common/source/byte_buf.c":916:23))
  %v167 = sea.ptr.index %v11 [%v166] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_145"("aws-c-common/source/byte_buf.c":916:23))
  %v168 = sea.const 1 : i64 loc("_146"("aws-c-common/source/byte_buf.c":916:23))
  %v169 = sea.ptr.dereferenceable %v167, %v168 : !sea.ptr<64>, i64 loc("_146"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v169, ^bb69, ^bb284
^bb69:
  %v170 = sea.load %v31[%v167] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_148"("aws-c-common/source/byte_buf.c":916:23))
  %v171 = sea.const 1 : i64 loc("_149"("aws-c-common/source/byte_buf.c":917:36))
  %v172 = sea.ptr.dereferenceable %v156, %v171 : !sea.ptr<64>, i64 loc("_149"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v172, ^bb70, ^bb284
^bb70:
  %v173 = sea.load %v66[%v156] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_151"("aws-c-common/source/byte_buf.c":917:36))
  %v174 = sea.zext %v173 : i8 to i64 loc("_152"("aws-c-common/source/byte_buf.c":917:23))
  %v175 = sea.ptr.index %v11 [%v174] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_153"("aws-c-common/source/byte_buf.c":917:23))
  %v176 = sea.const 1 : i64 loc("_154"("aws-c-common/source/byte_buf.c":917:23))
  %v177 = sea.ptr.dereferenceable %v175, %v176 : !sea.ptr<64>, i64 loc("_154"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v177, ^bb71, ^bb284
^bb71:
  %v178 = sea.load %v31[%v175] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_156"("aws-c-common/source/byte_buf.c":917:23))
  %v179 = sea.icmp eq, %v170, %v178 : i8 loc("or.cond53.not.2"("aws-c-common/source/byte_buf.c":921:13))
  sea.cond_br %v179, ^bb72, ^bb121 loc("aws-c-common/source/byte_buf.c":921:13)
^bb72:
  %v180 = sea.ptr.index %v25 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_158"("aws-c-common/source/byte_buf.c":929:17))
  %v181 = sea.ptr.index %v68 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_159"("aws-c-common/source/byte_buf.c":930:17))
  %v182 = sea.const 3 : i64 loc("_160"("aws-c-common/source/byte_buf.c":915:21))
  %v183 = sea.icmp ugt, %v16, %v182 : i64 loc("_160"("aws-c-common/source/byte_buf.c":915:21))
  %v184 = sea.const 3 : i64 loc("_161"("aws-c-common/source/byte_buf.c":915:31))
  %v185 = sea.icmp ugt, %v67, %v184 : i64 loc("_161"("aws-c-common/source/byte_buf.c":915:31))
  %v186 = sea.const 0 : i1 loc("_162"("aws-c-common/source/byte_buf.c":915:31))
  %v187 = sea.select %v183, %v185, %v186 : i1 loc("_162"("aws-c-common/source/byte_buf.c":915:31))
  sea.cond_br %v187, ^bb73, ^bb115(%v183, %v185 : i1, i1) loc("aws-c-common/source/byte_buf.c":915:5)
^bb73:
  %v188 = sea.const 1 : i64 loc("_163"("aws-c-common/source/byte_buf.c":916:36))
  %v189 = sea.ptr.dereferenceable %v180, %v188 : !sea.ptr<64>, i64 loc("_163"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v189, ^bb74, ^bb284
^bb74:
  %v190 = sea.load %v66[%v180] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_165"("aws-c-common/source/byte_buf.c":916:36))
  %v191 = sea.zext %v190 : i8 to i64 loc("_166"("aws-c-common/source/byte_buf.c":916:23))
  %v192 = sea.ptr.index %v11 [%v191] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_167"("aws-c-common/source/byte_buf.c":916:23))
  %v193 = sea.const 1 : i64 loc("_168"("aws-c-common/source/byte_buf.c":916:23))
  %v194 = sea.ptr.dereferenceable %v192, %v193 : !sea.ptr<64>, i64 loc("_168"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v194, ^bb75, ^bb284
^bb75:
  %v195 = sea.load %v31[%v192] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_170"("aws-c-common/source/byte_buf.c":916:23))
  %v196 = sea.const 1 : i64 loc("_171"("aws-c-common/source/byte_buf.c":917:36))
  %v197 = sea.ptr.dereferenceable %v181, %v196 : !sea.ptr<64>, i64 loc("_171"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v197, ^bb76, ^bb284
^bb76:
  %v198 = sea.load %v66[%v181] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_173"("aws-c-common/source/byte_buf.c":917:36))
  %v199 = sea.zext %v198 : i8 to i64 loc("_174"("aws-c-common/source/byte_buf.c":917:23))
  %v200 = sea.ptr.index %v11 [%v199] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_175"("aws-c-common/source/byte_buf.c":917:23))
  %v201 = sea.const 1 : i64 loc("_176"("aws-c-common/source/byte_buf.c":917:23))
  %v202 = sea.ptr.dereferenceable %v200, %v201 : !sea.ptr<64>, i64 loc("_176"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v202, ^bb77, ^bb284
^bb77:
  %v203 = sea.load %v31[%v200] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_178"("aws-c-common/source/byte_buf.c":917:23))
  %v204 = sea.icmp eq, %v195, %v203 : i8 loc("or.cond53.not.3"("aws-c-common/source/byte_buf.c":921:13))
  sea.cond_br %v204, ^bb78, ^bb121 loc("aws-c-common/source/byte_buf.c":921:13)
^bb78:
  %v205 = sea.ptr.index %v25 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_180"("aws-c-common/source/byte_buf.c":929:17))
  %v206 = sea.ptr.index %v68 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_181"("aws-c-common/source/byte_buf.c":930:17))
  %v207 = sea.const 4 : i64 loc("_182"("aws-c-common/source/byte_buf.c":915:21))
  %v208 = sea.icmp ugt, %v16, %v207 : i64 loc("_182"("aws-c-common/source/byte_buf.c":915:21))
  %v209 = sea.const 4 : i64 loc("_183"("aws-c-common/source/byte_buf.c":915:31))
  %v210 = sea.icmp ugt, %v67, %v209 : i64 loc("_183"("aws-c-common/source/byte_buf.c":915:31))
  %v211 = sea.const 0 : i1 loc("_184"("aws-c-common/source/byte_buf.c":915:31))
  %v212 = sea.select %v208, %v210, %v211 : i1 loc("_184"("aws-c-common/source/byte_buf.c":915:31))
  sea.cond_br %v212, ^bb79, ^bb115(%v208, %v210 : i1, i1) loc("aws-c-common/source/byte_buf.c":915:5)
^bb79:
  %v213 = sea.const 1 : i64 loc("_185"("aws-c-common/source/byte_buf.c":916:36))
  %v214 = sea.ptr.dereferenceable %v205, %v213 : !sea.ptr<64>, i64 loc("_185"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v214, ^bb80, ^bb284
^bb80:
  %v215 = sea.load %v66[%v205] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_187"("aws-c-common/source/byte_buf.c":916:36))
  %v216 = sea.zext %v215 : i8 to i64 loc("_188"("aws-c-common/source/byte_buf.c":916:23))
  %v217 = sea.ptr.index %v11 [%v216] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_189"("aws-c-common/source/byte_buf.c":916:23))
  %v218 = sea.const 1 : i64 loc("_190"("aws-c-common/source/byte_buf.c":916:23))
  %v219 = sea.ptr.dereferenceable %v217, %v218 : !sea.ptr<64>, i64 loc("_190"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v219, ^bb81, ^bb284
^bb81:
  %v220 = sea.load %v31[%v217] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_192"("aws-c-common/source/byte_buf.c":916:23))
  %v221 = sea.const 1 : i64 loc("_193"("aws-c-common/source/byte_buf.c":917:36))
  %v222 = sea.ptr.dereferenceable %v206, %v221 : !sea.ptr<64>, i64 loc("_193"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v222, ^bb82, ^bb284
^bb82:
  %v223 = sea.load %v66[%v206] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_195"("aws-c-common/source/byte_buf.c":917:36))
  %v224 = sea.zext %v223 : i8 to i64 loc("_196"("aws-c-common/source/byte_buf.c":917:23))
  %v225 = sea.ptr.index %v11 [%v224] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_197"("aws-c-common/source/byte_buf.c":917:23))
  %v226 = sea.const 1 : i64 loc("_198"("aws-c-common/source/byte_buf.c":917:23))
  %v227 = sea.ptr.dereferenceable %v225, %v226 : !sea.ptr<64>, i64 loc("_198"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v227, ^bb83, ^bb284
^bb83:
  %v228 = sea.load %v31[%v225] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_200"("aws-c-common/source/byte_buf.c":917:23))
  %v229 = sea.icmp eq, %v220, %v228 : i8 loc("or.cond53.not.4"("aws-c-common/source/byte_buf.c":921:13))
  sea.cond_br %v229, ^bb84, ^bb121 loc("aws-c-common/source/byte_buf.c":921:13)
^bb84:
  %v230 = sea.ptr.index %v25 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_202"("aws-c-common/source/byte_buf.c":929:17))
  %v231 = sea.ptr.index %v68 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_203"("aws-c-common/source/byte_buf.c":930:17))
  %v232 = sea.const 5 : i64 loc("_204"("aws-c-common/source/byte_buf.c":915:21))
  %v233 = sea.icmp ugt, %v16, %v232 : i64 loc("_204"("aws-c-common/source/byte_buf.c":915:21))
  %v234 = sea.const 5 : i64 loc("_205"("aws-c-common/source/byte_buf.c":915:31))
  %v235 = sea.icmp ugt, %v67, %v234 : i64 loc("_205"("aws-c-common/source/byte_buf.c":915:31))
  %v236 = sea.const 0 : i1 loc("_206"("aws-c-common/source/byte_buf.c":915:31))
  %v237 = sea.select %v233, %v235, %v236 : i1 loc("_206"("aws-c-common/source/byte_buf.c":915:31))
  sea.cond_br %v237, ^bb85, ^bb115(%v233, %v235 : i1, i1) loc("aws-c-common/source/byte_buf.c":915:5)
^bb85:
  %v238 = sea.const 1 : i64 loc("_207"("aws-c-common/source/byte_buf.c":916:36))
  %v239 = sea.ptr.dereferenceable %v230, %v238 : !sea.ptr<64>, i64 loc("_207"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v239, ^bb86, ^bb284
^bb86:
  %v240 = sea.load %v66[%v230] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_209"("aws-c-common/source/byte_buf.c":916:36))
  %v241 = sea.zext %v240 : i8 to i64 loc("_210"("aws-c-common/source/byte_buf.c":916:23))
  %v242 = sea.ptr.index %v11 [%v241] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_211"("aws-c-common/source/byte_buf.c":916:23))
  %v243 = sea.const 1 : i64 loc("_212"("aws-c-common/source/byte_buf.c":916:23))
  %v244 = sea.ptr.dereferenceable %v242, %v243 : !sea.ptr<64>, i64 loc("_212"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v244, ^bb87, ^bb284
^bb87:
  %v245 = sea.load %v31[%v242] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_214"("aws-c-common/source/byte_buf.c":916:23))
  %v246 = sea.const 1 : i64 loc("_215"("aws-c-common/source/byte_buf.c":917:36))
  %v247 = sea.ptr.dereferenceable %v231, %v246 : !sea.ptr<64>, i64 loc("_215"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v247, ^bb88, ^bb284
^bb88:
  %v248 = sea.load %v66[%v231] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_217"("aws-c-common/source/byte_buf.c":917:36))
  %v249 = sea.zext %v248 : i8 to i64 loc("_218"("aws-c-common/source/byte_buf.c":917:23))
  %v250 = sea.ptr.index %v11 [%v249] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_219"("aws-c-common/source/byte_buf.c":917:23))
  %v251 = sea.const 1 : i64 loc("_220"("aws-c-common/source/byte_buf.c":917:23))
  %v252 = sea.ptr.dereferenceable %v250, %v251 : !sea.ptr<64>, i64 loc("_220"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v252, ^bb89, ^bb284
^bb89:
  %v253 = sea.load %v31[%v250] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_222"("aws-c-common/source/byte_buf.c":917:23))
  %v254 = sea.icmp eq, %v245, %v253 : i8 loc("or.cond53.not.5"("aws-c-common/source/byte_buf.c":921:13))
  sea.cond_br %v254, ^bb90, ^bb121 loc("aws-c-common/source/byte_buf.c":921:13)
^bb90:
  %v255 = sea.ptr.index %v25 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_224"("aws-c-common/source/byte_buf.c":929:17))
  %v256 = sea.ptr.index %v68 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_225"("aws-c-common/source/byte_buf.c":930:17))
  %v257 = sea.const 6 : i64 loc("_226"("aws-c-common/source/byte_buf.c":915:21))
  %v258 = sea.icmp ugt, %v16, %v257 : i64 loc("_226"("aws-c-common/source/byte_buf.c":915:21))
  %v259 = sea.const 6 : i64 loc("_227"("aws-c-common/source/byte_buf.c":915:31))
  %v260 = sea.icmp ugt, %v67, %v259 : i64 loc("_227"("aws-c-common/source/byte_buf.c":915:31))
  %v261 = sea.const 0 : i1 loc("_228"("aws-c-common/source/byte_buf.c":915:31))
  %v262 = sea.select %v258, %v260, %v261 : i1 loc("_228"("aws-c-common/source/byte_buf.c":915:31))
  sea.cond_br %v262, ^bb91, ^bb115(%v258, %v260 : i1, i1) loc("aws-c-common/source/byte_buf.c":915:5)
^bb91:
  %v263 = sea.const 1 : i64 loc("_229"("aws-c-common/source/byte_buf.c":916:36))
  %v264 = sea.ptr.dereferenceable %v255, %v263 : !sea.ptr<64>, i64 loc("_229"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v264, ^bb92, ^bb284
^bb92:
  %v265 = sea.load %v66[%v255] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_231"("aws-c-common/source/byte_buf.c":916:36))
  %v266 = sea.zext %v265 : i8 to i64 loc("_232"("aws-c-common/source/byte_buf.c":916:23))
  %v267 = sea.ptr.index %v11 [%v266] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_233"("aws-c-common/source/byte_buf.c":916:23))
  %v268 = sea.const 1 : i64 loc("_234"("aws-c-common/source/byte_buf.c":916:23))
  %v269 = sea.ptr.dereferenceable %v267, %v268 : !sea.ptr<64>, i64 loc("_234"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v269, ^bb93, ^bb284
^bb93:
  %v270 = sea.load %v31[%v267] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_236"("aws-c-common/source/byte_buf.c":916:23))
  %v271 = sea.const 1 : i64 loc("_237"("aws-c-common/source/byte_buf.c":917:36))
  %v272 = sea.ptr.dereferenceable %v256, %v271 : !sea.ptr<64>, i64 loc("_237"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v272, ^bb94, ^bb284
^bb94:
  %v273 = sea.load %v66[%v256] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_239"("aws-c-common/source/byte_buf.c":917:36))
  %v274 = sea.zext %v273 : i8 to i64 loc("_240"("aws-c-common/source/byte_buf.c":917:23))
  %v275 = sea.ptr.index %v11 [%v274] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_241"("aws-c-common/source/byte_buf.c":917:23))
  %v276 = sea.const 1 : i64 loc("_242"("aws-c-common/source/byte_buf.c":917:23))
  %v277 = sea.ptr.dereferenceable %v275, %v276 : !sea.ptr<64>, i64 loc("_242"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v277, ^bb95, ^bb284
^bb95:
  %v278 = sea.load %v31[%v275] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_244"("aws-c-common/source/byte_buf.c":917:23))
  %v279 = sea.icmp eq, %v270, %v278 : i8 loc("or.cond53.not.6"("aws-c-common/source/byte_buf.c":921:13))
  sea.cond_br %v279, ^bb96, ^bb121 loc("aws-c-common/source/byte_buf.c":921:13)
^bb96:
  %v280 = sea.ptr.index %v25 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_246"("aws-c-common/source/byte_buf.c":929:17))
  %v281 = sea.ptr.index %v68 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_247"("aws-c-common/source/byte_buf.c":930:17))
  %v282 = sea.const 7 : i64 loc("_248"("aws-c-common/source/byte_buf.c":915:21))
  %v283 = sea.icmp ugt, %v16, %v282 : i64 loc("_248"("aws-c-common/source/byte_buf.c":915:21))
  %v284 = sea.const 7 : i64 loc("_249"("aws-c-common/source/byte_buf.c":915:31))
  %v285 = sea.icmp ugt, %v67, %v284 : i64 loc("_249"("aws-c-common/source/byte_buf.c":915:31))
  %v286 = sea.const 0 : i1 loc("_250"("aws-c-common/source/byte_buf.c":915:31))
  %v287 = sea.select %v283, %v285, %v286 : i1 loc("_250"("aws-c-common/source/byte_buf.c":915:31))
  sea.cond_br %v287, ^bb97, ^bb115(%v283, %v285 : i1, i1) loc("aws-c-common/source/byte_buf.c":915:5)
^bb97:
  %v288 = sea.const 1 : i64 loc("_251"("aws-c-common/source/byte_buf.c":916:36))
  %v289 = sea.ptr.dereferenceable %v280, %v288 : !sea.ptr<64>, i64 loc("_251"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v289, ^bb98, ^bb284
^bb98:
  %v290 = sea.load %v66[%v280] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_253"("aws-c-common/source/byte_buf.c":916:36))
  %v291 = sea.zext %v290 : i8 to i64 loc("_254"("aws-c-common/source/byte_buf.c":916:23))
  %v292 = sea.ptr.index %v11 [%v291] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_255"("aws-c-common/source/byte_buf.c":916:23))
  %v293 = sea.const 1 : i64 loc("_256"("aws-c-common/source/byte_buf.c":916:23))
  %v294 = sea.ptr.dereferenceable %v292, %v293 : !sea.ptr<64>, i64 loc("_256"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v294, ^bb99, ^bb284
^bb99:
  %v295 = sea.load %v31[%v292] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_258"("aws-c-common/source/byte_buf.c":916:23))
  %v296 = sea.const 1 : i64 loc("_259"("aws-c-common/source/byte_buf.c":917:36))
  %v297 = sea.ptr.dereferenceable %v281, %v296 : !sea.ptr<64>, i64 loc("_259"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v297, ^bb100, ^bb284
^bb100:
  %v298 = sea.load %v66[%v281] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_261"("aws-c-common/source/byte_buf.c":917:36))
  %v299 = sea.zext %v298 : i8 to i64 loc("_262"("aws-c-common/source/byte_buf.c":917:23))
  %v300 = sea.ptr.index %v11 [%v299] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_263"("aws-c-common/source/byte_buf.c":917:23))
  %v301 = sea.const 1 : i64 loc("_264"("aws-c-common/source/byte_buf.c":917:23))
  %v302 = sea.ptr.dereferenceable %v300, %v301 : !sea.ptr<64>, i64 loc("_264"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v302, ^bb101, ^bb284
^bb101:
  %v303 = sea.load %v31[%v300] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_266"("aws-c-common/source/byte_buf.c":917:23))
  %v304 = sea.icmp eq, %v295, %v303 : i8 loc("or.cond53.not.7"("aws-c-common/source/byte_buf.c":921:13))
  sea.cond_br %v304, ^bb102, ^bb121 loc("aws-c-common/source/byte_buf.c":921:13)
^bb102:
  %v305 = sea.ptr.index %v25 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_268"("aws-c-common/source/byte_buf.c":929:17))
  %v306 = sea.ptr.index %v68 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_269"("aws-c-common/source/byte_buf.c":930:17))
  %v307 = sea.const 8 : i64 loc("_270"("aws-c-common/source/byte_buf.c":915:21))
  %v308 = sea.icmp ugt, %v16, %v307 : i64 loc("_270"("aws-c-common/source/byte_buf.c":915:21))
  %v309 = sea.const 8 : i64 loc("_271"("aws-c-common/source/byte_buf.c":915:31))
  %v310 = sea.icmp ugt, %v67, %v309 : i64 loc("_271"("aws-c-common/source/byte_buf.c":915:31))
  %v311 = sea.const 0 : i1 loc("_272"("aws-c-common/source/byte_buf.c":915:31))
  %v312 = sea.select %v308, %v310, %v311 : i1 loc("_272"("aws-c-common/source/byte_buf.c":915:31))
  sea.cond_br %v312, ^bb103, ^bb115(%v308, %v310 : i1, i1) loc("aws-c-common/source/byte_buf.c":915:5)
^bb103:
  %v313 = sea.const 1 : i64 loc("_273"("aws-c-common/source/byte_buf.c":916:36))
  %v314 = sea.ptr.dereferenceable %v305, %v313 : !sea.ptr<64>, i64 loc("_273"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v314, ^bb104, ^bb284
^bb104:
  %v315 = sea.load %v66[%v305] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_275"("aws-c-common/source/byte_buf.c":916:36))
  %v316 = sea.zext %v315 : i8 to i64 loc("_276"("aws-c-common/source/byte_buf.c":916:23))
  %v317 = sea.ptr.index %v11 [%v316] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_277"("aws-c-common/source/byte_buf.c":916:23))
  %v318 = sea.const 1 : i64 loc("_278"("aws-c-common/source/byte_buf.c":916:23))
  %v319 = sea.ptr.dereferenceable %v317, %v318 : !sea.ptr<64>, i64 loc("_278"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v319, ^bb105, ^bb284
^bb105:
  %v320 = sea.load %v31[%v317] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_280"("aws-c-common/source/byte_buf.c":916:23))
  %v321 = sea.const 1 : i64 loc("_281"("aws-c-common/source/byte_buf.c":917:36))
  %v322 = sea.ptr.dereferenceable %v306, %v321 : !sea.ptr<64>, i64 loc("_281"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v322, ^bb106, ^bb284
^bb106:
  %v323 = sea.load %v66[%v306] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_283"("aws-c-common/source/byte_buf.c":917:36))
  %v324 = sea.zext %v323 : i8 to i64 loc("_284"("aws-c-common/source/byte_buf.c":917:23))
  %v325 = sea.ptr.index %v11 [%v324] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_285"("aws-c-common/source/byte_buf.c":917:23))
  %v326 = sea.const 1 : i64 loc("_286"("aws-c-common/source/byte_buf.c":917:23))
  %v327 = sea.ptr.dereferenceable %v325, %v326 : !sea.ptr<64>, i64 loc("_286"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v327, ^bb107, ^bb284
^bb107:
  %v328 = sea.load %v31[%v325] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_288"("aws-c-common/source/byte_buf.c":917:23))
  %v329 = sea.icmp eq, %v320, %v328 : i8 loc("or.cond53.not.8"("aws-c-common/source/byte_buf.c":921:13))
  sea.cond_br %v329, ^bb108, ^bb121 loc("aws-c-common/source/byte_buf.c":921:13)
^bb108:
  %v330 = sea.ptr.index %v25 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_290"("aws-c-common/source/byte_buf.c":929:17))
  %v331 = sea.ptr.index %v68 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_291"("aws-c-common/source/byte_buf.c":930:17))
  %v332 = sea.const 9 : i64 loc("_292"("aws-c-common/source/byte_buf.c":915:21))
  %v333 = sea.icmp ugt, %v16, %v332 : i64 loc("_292"("aws-c-common/source/byte_buf.c":915:21))
  %v334 = sea.const 9 : i64 loc("_293"("aws-c-common/source/byte_buf.c":915:31))
  %v335 = sea.icmp ugt, %v67, %v334 : i64 loc("_293"("aws-c-common/source/byte_buf.c":915:31))
  %v336 = sea.const 0 : i1 loc("_294"("aws-c-common/source/byte_buf.c":915:31))
  %v337 = sea.select %v333, %v335, %v336 : i1 loc("_294"("aws-c-common/source/byte_buf.c":915:31))
  sea.cond_br %v337, ^bb109, ^bb115(%v333, %v335 : i1, i1) loc("aws-c-common/source/byte_buf.c":915:5)
^bb109:
  %v338 = sea.const 1 : i64 loc("_295"("aws-c-common/source/byte_buf.c":916:36))
  %v339 = sea.ptr.dereferenceable %v330, %v338 : !sea.ptr<64>, i64 loc("_295"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v339, ^bb110, ^bb284
^bb110:
  %v340 = sea.load %v66[%v330] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_297"("aws-c-common/source/byte_buf.c":916:36))
  %v341 = sea.zext %v340 : i8 to i64 loc("_298"("aws-c-common/source/byte_buf.c":916:23))
  %v342 = sea.ptr.index %v11 [%v341] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_299"("aws-c-common/source/byte_buf.c":916:23))
  %v343 = sea.const 1 : i64 loc("_300"("aws-c-common/source/byte_buf.c":916:23))
  %v344 = sea.ptr.dereferenceable %v342, %v343 : !sea.ptr<64>, i64 loc("_300"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v344, ^bb111, ^bb284
^bb111:
  %v345 = sea.load %v31[%v342] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_302"("aws-c-common/source/byte_buf.c":916:23))
  %v346 = sea.const 1 : i64 loc("_303"("aws-c-common/source/byte_buf.c":917:36))
  %v347 = sea.ptr.dereferenceable %v331, %v346 : !sea.ptr<64>, i64 loc("_303"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v347, ^bb112, ^bb284
^bb112:
  %v348 = sea.load %v66[%v331] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_305"("aws-c-common/source/byte_buf.c":917:36))
  %v349 = sea.zext %v348 : i8 to i64 loc("_306"("aws-c-common/source/byte_buf.c":917:23))
  %v350 = sea.ptr.index %v11 [%v349] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_307"("aws-c-common/source/byte_buf.c":917:23))
  %v351 = sea.const 1 : i64 loc("_308"("aws-c-common/source/byte_buf.c":917:23))
  %v352 = sea.ptr.dereferenceable %v350, %v351 : !sea.ptr<64>, i64 loc("_308"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v352, ^bb113, ^bb284
^bb113:
  %v353 = sea.load %v31[%v350] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_310"("aws-c-common/source/byte_buf.c":917:23))
  %v354 = sea.icmp eq, %v345, %v353 : i8 loc("or.cond53.not.9"("aws-c-common/source/byte_buf.c":921:13))
  sea.cond_br %v354, ^bb114, ^bb121 loc("aws-c-common/source/byte_buf.c":921:13)
^bb114:
  %v355 = sea.const 10 : i64 loc("_312"("aws-c-common/source/byte_buf.c":915:21))
  %v356 = sea.icmp ugt, %v16, %v355 : i64 loc("_312"("aws-c-common/source/byte_buf.c":915:21))
  %v357 = sea.const 10 : i64 loc("_313"("aws-c-common/source/byte_buf.c":915:31))
  %v358 = sea.icmp ugt, %v67, %v357 : i64 loc("_313"("aws-c-common/source/byte_buf.c":915:31))
  %v359 = sea.const 0 : i1 loc("_314"("aws-c-common/source/byte_buf.c":915:31))
  %v360 = sea.select %v356, %v358, %v359 : i1 loc("_314"("aws-c-common/source/byte_buf.c":915:31))
  sea.cond_br %v360, ^bb116, ^bb115(%v356, %v358 : i1, i1) loc("aws-c-common/source/byte_buf.c":915:5)
^bb115(%v361 : i1, %v362 : i1):
  %v363 = sea.const 1 : i1 loc("_315"("aws-c-common/source/byte_buf.c":935:9))
  %v364 = sea.select %v361, %v363, %v362 : i1 loc("_315"("aws-c-common/source/byte_buf.c":935:9))
  sea.cond_br %v364, ^bb121, ^bb120 loc("aws-c-common/source/byte_buf.c":935:9)
^bb116:
  %v365 = sea.ptr.index %v25 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_97"("aws-c-common/source/byte_buf.c":929:17))
  %v366 = sea.const 1 : i64 loc("_98"("aws-c-common/source/byte_buf.c":916:36))
  %v367 = sea.ptr.dereferenceable %v365, %v366 : !sea.ptr<64>, i64 loc("_98"("aws-c-common/source/byte_buf.c":916:36))
  %v368 = sea.const 1 : i1
  %v369 = sea.xor %v367, %v368 : i1
  sea.assume %v369
  sea.br ^bb284
^bb117:
  sea.br ^bb118
^bb118:
  %v370 = sea.const 0 : i64 loc("_84"("aws-c-common/source/byte_buf.c":902:35))
  %v371 = sea.icmp eq, %v67, %v370 : i64 loc("_84"("aws-c-common/source/byte_buf.c":902:35))
  sea.cond_br %v371, ^bb120, ^bb119 loc("aws-c-common/source/byte_buf.c":902:9)
^bb119:
  sea.br ^bb121
^bb120:
  %v372 = sea.icmp eq, %v16, %v67 : i64 loc("_316"("seahorn/jobs/byte_cursor_compare_lookup/aws_byte_cursor_compare_lookup_harness.c":42:9))
  sea.cond_br %v372, ^bb121, ^bb284 loc("seahorn/jobs/byte_cursor_compare_lookup/aws_byte_cursor_compare_lookup_harness.c":42:9)
^bb121:
  sea.br ^bb122
^bb122:
  sea.cond_br %v33, ^bb181, ^bb123 loc("aws-c-common/source/byte_buf.c":902:23)
^bb123:
  sea.br ^bb124
^bb124:
  sea.br ^bb125
^bb125:
  sea.br ^bb126
^bb126:
  sea.br ^bb127
^bb127:
  %v373 = sea.ptr.index %v25 [%v16] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_324"("aws-c-common/source/byte_buf.c":910:39))
  sea.br ^bb128
^bb128:
  sea.br ^bb129
^bb129:
  %v374 = sea.const 0 : i64 loc("_326"("aws-c-common/source/byte_buf.c":915:21))
  %v375 = sea.icmp sgt, %v16, %v374 : i64 loc("_326"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v375, ^bb130, ^bb182 loc("aws-c-common/source/byte_buf.c":915:5)
^bb130:
  %v376 = sea.const 1 : i64 loc("_327"("aws-c-common/source/byte_buf.c":916:36))
  %v377 = sea.ptr.dereferenceable %v25, %v376 : !sea.ptr<64>, i64 loc("_327"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v377, ^bb131, ^bb284
^bb131:
  %v378 = sea.load %v66[%v25] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_329"("aws-c-common/source/byte_buf.c":916:36))
  %v379 = sea.zext %v378 : i8 to i64 loc("_330"("aws-c-common/source/byte_buf.c":916:23))
  %v380 = sea.ptr.index %v11 [%v379] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_331"("aws-c-common/source/byte_buf.c":916:23))
  %v381 = sea.const 1 : i64 loc("_332"("aws-c-common/source/byte_buf.c":916:23))
  %v382 = sea.ptr.dereferenceable %v380, %v381 : !sea.ptr<64>, i64 loc("_332"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v382, ^bb132, ^bb284
^bb132:
  %v383 = sea.const 1 : i64 loc("_334"("aws-c-common/source/byte_buf.c":917:36))
  %v384 = sea.ptr.dereferenceable %v25, %v383 : !sea.ptr<64>, i64 loc("_334"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v384, ^bb133, ^bb284
^bb133:
  %v385 = sea.const 1 : i64 loc("_336"("aws-c-common/source/byte_buf.c":917:23))
  %v386 = sea.ptr.dereferenceable %v380, %v385 : !sea.ptr<64>, i64 loc("_336"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v386, ^bb134, ^bb284
^bb134:
  %v387 = sea.const 1 : i64 loc("_338"("aws-c-common/source/byte_buf.c":930:17))
  %v388 = sea.ptr.add %v25, %v387 : !sea.ptr<64>, i64 loc("_338"("aws-c-common/source/byte_buf.c":930:17))
  %v389 = sea.ptr.cmp ult, %v388, %v373 : !sea.ptr<64> loc("_339"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v389, ^bb135, ^bb182 loc("aws-c-common/source/byte_buf.c":915:5)
^bb135:
  %v390 = sea.const 1 : i64 loc("_340"("aws-c-common/source/byte_buf.c":916:36))
  %v391 = sea.ptr.dereferenceable %v388, %v390 : !sea.ptr<64>, i64 loc("_340"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v391, ^bb136, ^bb284
^bb136:
  %v392 = sea.load %v66[%v388] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_342"("aws-c-common/source/byte_buf.c":916:36))
  %v393 = sea.zext %v392 : i8 to i64 loc("_343"("aws-c-common/source/byte_buf.c":916:23))
  %v394 = sea.ptr.index %v11 [%v393] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_344"("aws-c-common/source/byte_buf.c":916:23))
  %v395 = sea.const 1 : i64 loc("_345"("aws-c-common/source/byte_buf.c":916:23))
  %v396 = sea.ptr.dereferenceable %v394, %v395 : !sea.ptr<64>, i64 loc("_345"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v396, ^bb137, ^bb284
^bb137:
  %v397 = sea.const 1 : i64 loc("_347"("aws-c-common/source/byte_buf.c":917:36))
  %v398 = sea.ptr.dereferenceable %v388, %v397 : !sea.ptr<64>, i64 loc("_347"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v398, ^bb138, ^bb284
^bb138:
  %v399 = sea.const 1 : i64 loc("_349"("aws-c-common/source/byte_buf.c":917:23))
  %v400 = sea.ptr.dereferenceable %v394, %v399 : !sea.ptr<64>, i64 loc("_349"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v400, ^bb139, ^bb284
^bb139:
  %v401 = sea.const 2 : i64 loc("_351"("aws-c-common/source/byte_buf.c":930:17))
  %v402 = sea.ptr.add %v25, %v401 : !sea.ptr<64>, i64 loc("_351"("aws-c-common/source/byte_buf.c":930:17))
  %v403 = sea.ptr.cmp ult, %v402, %v373 : !sea.ptr<64> loc("_352"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v403, ^bb140, ^bb182 loc("aws-c-common/source/byte_buf.c":915:5)
^bb140:
  %v404 = sea.const 1 : i64 loc("_353"("aws-c-common/source/byte_buf.c":916:36))
  %v405 = sea.ptr.dereferenceable %v402, %v404 : !sea.ptr<64>, i64 loc("_353"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v405, ^bb141, ^bb284
^bb141:
  %v406 = sea.load %v66[%v402] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_355"("aws-c-common/source/byte_buf.c":916:36))
  %v407 = sea.zext %v406 : i8 to i64 loc("_356"("aws-c-common/source/byte_buf.c":916:23))
  %v408 = sea.ptr.index %v11 [%v407] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_357"("aws-c-common/source/byte_buf.c":916:23))
  %v409 = sea.const 1 : i64 loc("_358"("aws-c-common/source/byte_buf.c":916:23))
  %v410 = sea.ptr.dereferenceable %v408, %v409 : !sea.ptr<64>, i64 loc("_358"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v410, ^bb142, ^bb284
^bb142:
  %v411 = sea.const 1 : i64 loc("_360"("aws-c-common/source/byte_buf.c":917:36))
  %v412 = sea.ptr.dereferenceable %v402, %v411 : !sea.ptr<64>, i64 loc("_360"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v412, ^bb143, ^bb284
^bb143:
  %v413 = sea.const 1 : i64 loc("_362"("aws-c-common/source/byte_buf.c":917:23))
  %v414 = sea.ptr.dereferenceable %v408, %v413 : !sea.ptr<64>, i64 loc("_362"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v414, ^bb144, ^bb284
^bb144:
  %v415 = sea.const 3 : i64 loc("_364"("aws-c-common/source/byte_buf.c":930:17))
  %v416 = sea.ptr.add %v25, %v415 : !sea.ptr<64>, i64 loc("_364"("aws-c-common/source/byte_buf.c":930:17))
  %v417 = sea.ptr.cmp ult, %v416, %v373 : !sea.ptr<64> loc("_365"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v417, ^bb145, ^bb182 loc("aws-c-common/source/byte_buf.c":915:5)
^bb145:
  %v418 = sea.const 1 : i64 loc("_366"("aws-c-common/source/byte_buf.c":916:36))
  %v419 = sea.ptr.dereferenceable %v416, %v418 : !sea.ptr<64>, i64 loc("_366"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v419, ^bb146, ^bb284
^bb146:
  %v420 = sea.load %v66[%v416] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_368"("aws-c-common/source/byte_buf.c":916:36))
  %v421 = sea.zext %v420 : i8 to i64 loc("_369"("aws-c-common/source/byte_buf.c":916:23))
  %v422 = sea.ptr.index %v11 [%v421] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_370"("aws-c-common/source/byte_buf.c":916:23))
  %v423 = sea.const 1 : i64 loc("_371"("aws-c-common/source/byte_buf.c":916:23))
  %v424 = sea.ptr.dereferenceable %v422, %v423 : !sea.ptr<64>, i64 loc("_371"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v424, ^bb147, ^bb284
^bb147:
  %v425 = sea.const 1 : i64 loc("_373"("aws-c-common/source/byte_buf.c":917:36))
  %v426 = sea.ptr.dereferenceable %v416, %v425 : !sea.ptr<64>, i64 loc("_373"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v426, ^bb148, ^bb284
^bb148:
  %v427 = sea.const 1 : i64 loc("_375"("aws-c-common/source/byte_buf.c":917:23))
  %v428 = sea.ptr.dereferenceable %v422, %v427 : !sea.ptr<64>, i64 loc("_375"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v428, ^bb149, ^bb284
^bb149:
  %v429 = sea.const 4 : i64 loc("_377"("aws-c-common/source/byte_buf.c":930:17))
  %v430 = sea.ptr.add %v25, %v429 : !sea.ptr<64>, i64 loc("_377"("aws-c-common/source/byte_buf.c":930:17))
  %v431 = sea.ptr.cmp ult, %v430, %v373 : !sea.ptr<64> loc("_378"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v431, ^bb150, ^bb182 loc("aws-c-common/source/byte_buf.c":915:5)
^bb150:
  %v432 = sea.const 1 : i64 loc("_379"("aws-c-common/source/byte_buf.c":916:36))
  %v433 = sea.ptr.dereferenceable %v430, %v432 : !sea.ptr<64>, i64 loc("_379"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v433, ^bb151, ^bb284
^bb151:
  %v434 = sea.load %v66[%v430] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_381"("aws-c-common/source/byte_buf.c":916:36))
  %v435 = sea.zext %v434 : i8 to i64 loc("_382"("aws-c-common/source/byte_buf.c":916:23))
  %v436 = sea.ptr.index %v11 [%v435] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_383"("aws-c-common/source/byte_buf.c":916:23))
  %v437 = sea.const 1 : i64 loc("_384"("aws-c-common/source/byte_buf.c":916:23))
  %v438 = sea.ptr.dereferenceable %v436, %v437 : !sea.ptr<64>, i64 loc("_384"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v438, ^bb152, ^bb284
^bb152:
  %v439 = sea.const 1 : i64 loc("_386"("aws-c-common/source/byte_buf.c":917:36))
  %v440 = sea.ptr.dereferenceable %v430, %v439 : !sea.ptr<64>, i64 loc("_386"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v440, ^bb153, ^bb284
^bb153:
  %v441 = sea.const 1 : i64 loc("_388"("aws-c-common/source/byte_buf.c":917:23))
  %v442 = sea.ptr.dereferenceable %v436, %v441 : !sea.ptr<64>, i64 loc("_388"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v442, ^bb154, ^bb284
^bb154:
  %v443 = sea.const 5 : i64 loc("_390"("aws-c-common/source/byte_buf.c":930:17))
  %v444 = sea.ptr.add %v25, %v443 : !sea.ptr<64>, i64 loc("_390"("aws-c-common/source/byte_buf.c":930:17))
  %v445 = sea.ptr.cmp ult, %v444, %v373 : !sea.ptr<64> loc("_391"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v445, ^bb155, ^bb182 loc("aws-c-common/source/byte_buf.c":915:5)
^bb155:
  %v446 = sea.const 1 : i64 loc("_392"("aws-c-common/source/byte_buf.c":916:36))
  %v447 = sea.ptr.dereferenceable %v444, %v446 : !sea.ptr<64>, i64 loc("_392"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v447, ^bb156, ^bb284
^bb156:
  %v448 = sea.load %v66[%v444] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_394"("aws-c-common/source/byte_buf.c":916:36))
  %v449 = sea.zext %v448 : i8 to i64 loc("_395"("aws-c-common/source/byte_buf.c":916:23))
  %v450 = sea.ptr.index %v11 [%v449] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_396"("aws-c-common/source/byte_buf.c":916:23))
  %v451 = sea.const 1 : i64 loc("_397"("aws-c-common/source/byte_buf.c":916:23))
  %v452 = sea.ptr.dereferenceable %v450, %v451 : !sea.ptr<64>, i64 loc("_397"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v452, ^bb157, ^bb284
^bb157:
  %v453 = sea.const 1 : i64 loc("_399"("aws-c-common/source/byte_buf.c":917:36))
  %v454 = sea.ptr.dereferenceable %v444, %v453 : !sea.ptr<64>, i64 loc("_399"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v454, ^bb158, ^bb284
^bb158:
  %v455 = sea.const 1 : i64 loc("_401"("aws-c-common/source/byte_buf.c":917:23))
  %v456 = sea.ptr.dereferenceable %v450, %v455 : !sea.ptr<64>, i64 loc("_401"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v456, ^bb159, ^bb284
^bb159:
  %v457 = sea.const 6 : i64 loc("_403"("aws-c-common/source/byte_buf.c":930:17))
  %v458 = sea.ptr.add %v25, %v457 : !sea.ptr<64>, i64 loc("_403"("aws-c-common/source/byte_buf.c":930:17))
  %v459 = sea.ptr.cmp ult, %v458, %v373 : !sea.ptr<64> loc("_404"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v459, ^bb160, ^bb182 loc("aws-c-common/source/byte_buf.c":915:5)
^bb160:
  %v460 = sea.const 1 : i64 loc("_405"("aws-c-common/source/byte_buf.c":916:36))
  %v461 = sea.ptr.dereferenceable %v458, %v460 : !sea.ptr<64>, i64 loc("_405"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v461, ^bb161, ^bb284
^bb161:
  %v462 = sea.load %v66[%v458] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_407"("aws-c-common/source/byte_buf.c":916:36))
  %v463 = sea.zext %v462 : i8 to i64 loc("_408"("aws-c-common/source/byte_buf.c":916:23))
  %v464 = sea.ptr.index %v11 [%v463] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_409"("aws-c-common/source/byte_buf.c":916:23))
  %v465 = sea.const 1 : i64 loc("_410"("aws-c-common/source/byte_buf.c":916:23))
  %v466 = sea.ptr.dereferenceable %v464, %v465 : !sea.ptr<64>, i64 loc("_410"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v466, ^bb162, ^bb284
^bb162:
  %v467 = sea.const 1 : i64 loc("_412"("aws-c-common/source/byte_buf.c":917:36))
  %v468 = sea.ptr.dereferenceable %v458, %v467 : !sea.ptr<64>, i64 loc("_412"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v468, ^bb163, ^bb284
^bb163:
  %v469 = sea.const 1 : i64 loc("_414"("aws-c-common/source/byte_buf.c":917:23))
  %v470 = sea.ptr.dereferenceable %v464, %v469 : !sea.ptr<64>, i64 loc("_414"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v470, ^bb164, ^bb284
^bb164:
  %v471 = sea.const 7 : i64 loc("_416"("aws-c-common/source/byte_buf.c":930:17))
  %v472 = sea.ptr.add %v25, %v471 : !sea.ptr<64>, i64 loc("_416"("aws-c-common/source/byte_buf.c":930:17))
  %v473 = sea.ptr.cmp ult, %v472, %v373 : !sea.ptr<64> loc("_417"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v473, ^bb165, ^bb182 loc("aws-c-common/source/byte_buf.c":915:5)
^bb165:
  %v474 = sea.const 1 : i64 loc("_418"("aws-c-common/source/byte_buf.c":916:36))
  %v475 = sea.ptr.dereferenceable %v472, %v474 : !sea.ptr<64>, i64 loc("_418"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v475, ^bb166, ^bb284
^bb166:
  %v476 = sea.load %v66[%v472] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_420"("aws-c-common/source/byte_buf.c":916:36))
  %v477 = sea.zext %v476 : i8 to i64 loc("_421"("aws-c-common/source/byte_buf.c":916:23))
  %v478 = sea.ptr.index %v11 [%v477] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_422"("aws-c-common/source/byte_buf.c":916:23))
  %v479 = sea.const 1 : i64 loc("_423"("aws-c-common/source/byte_buf.c":916:23))
  %v480 = sea.ptr.dereferenceable %v478, %v479 : !sea.ptr<64>, i64 loc("_423"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v480, ^bb167, ^bb284
^bb167:
  %v481 = sea.const 1 : i64 loc("_425"("aws-c-common/source/byte_buf.c":917:36))
  %v482 = sea.ptr.dereferenceable %v472, %v481 : !sea.ptr<64>, i64 loc("_425"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v482, ^bb168, ^bb284
^bb168:
  %v483 = sea.const 1 : i64 loc("_427"("aws-c-common/source/byte_buf.c":917:23))
  %v484 = sea.ptr.dereferenceable %v478, %v483 : !sea.ptr<64>, i64 loc("_427"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v484, ^bb169, ^bb284
^bb169:
  %v485 = sea.const 8 : i64 loc("_429"("aws-c-common/source/byte_buf.c":930:17))
  %v486 = sea.ptr.add %v25, %v485 : !sea.ptr<64>, i64 loc("_429"("aws-c-common/source/byte_buf.c":930:17))
  %v487 = sea.ptr.cmp ult, %v486, %v373 : !sea.ptr<64> loc("_430"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v487, ^bb170, ^bb182 loc("aws-c-common/source/byte_buf.c":915:5)
^bb170:
  %v488 = sea.const 1 : i64 loc("_431"("aws-c-common/source/byte_buf.c":916:36))
  %v489 = sea.ptr.dereferenceable %v486, %v488 : !sea.ptr<64>, i64 loc("_431"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v489, ^bb171, ^bb284
^bb171:
  %v490 = sea.load %v66[%v486] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_433"("aws-c-common/source/byte_buf.c":916:36))
  %v491 = sea.zext %v490 : i8 to i64 loc("_434"("aws-c-common/source/byte_buf.c":916:23))
  %v492 = sea.ptr.index %v11 [%v491] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_435"("aws-c-common/source/byte_buf.c":916:23))
  %v493 = sea.const 1 : i64 loc("_436"("aws-c-common/source/byte_buf.c":916:23))
  %v494 = sea.ptr.dereferenceable %v492, %v493 : !sea.ptr<64>, i64 loc("_436"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v494, ^bb172, ^bb284
^bb172:
  %v495 = sea.const 1 : i64 loc("_438"("aws-c-common/source/byte_buf.c":917:36))
  %v496 = sea.ptr.dereferenceable %v486, %v495 : !sea.ptr<64>, i64 loc("_438"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v496, ^bb173, ^bb284
^bb173:
  %v497 = sea.const 1 : i64 loc("_440"("aws-c-common/source/byte_buf.c":917:23))
  %v498 = sea.ptr.dereferenceable %v492, %v497 : !sea.ptr<64>, i64 loc("_440"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v498, ^bb174, ^bb284
^bb174:
  %v499 = sea.const 9 : i64 loc("_442"("aws-c-common/source/byte_buf.c":930:17))
  %v500 = sea.ptr.add %v25, %v499 : !sea.ptr<64>, i64 loc("_442"("aws-c-common/source/byte_buf.c":930:17))
  %v501 = sea.ptr.cmp ult, %v500, %v373 : !sea.ptr<64> loc("_443"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v501, ^bb175, ^bb182 loc("aws-c-common/source/byte_buf.c":915:5)
^bb175:
  %v502 = sea.const 1 : i64 loc("_444"("aws-c-common/source/byte_buf.c":916:36))
  %v503 = sea.ptr.dereferenceable %v500, %v502 : !sea.ptr<64>, i64 loc("_444"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v503, ^bb176, ^bb284
^bb176:
  %v504 = sea.load %v66[%v500] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_446"("aws-c-common/source/byte_buf.c":916:36))
  %v505 = sea.zext %v504 : i8 to i64 loc("_447"("aws-c-common/source/byte_buf.c":916:23))
  %v506 = sea.ptr.index %v11 [%v505] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_448"("aws-c-common/source/byte_buf.c":916:23))
  %v507 = sea.const 1 : i64 loc("_449"("aws-c-common/source/byte_buf.c":916:23))
  %v508 = sea.ptr.dereferenceable %v506, %v507 : !sea.ptr<64>, i64 loc("_449"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v508, ^bb177, ^bb284
^bb177:
  %v509 = sea.const 1 : i64 loc("_451"("aws-c-common/source/byte_buf.c":917:36))
  %v510 = sea.ptr.dereferenceable %v500, %v509 : !sea.ptr<64>, i64 loc("_451"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v510, ^bb178, ^bb284
^bb178:
  %v511 = sea.const 1 : i64 loc("_453"("aws-c-common/source/byte_buf.c":917:23))
  %v512 = sea.ptr.dereferenceable %v506, %v511 : !sea.ptr<64>, i64 loc("_453"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v512, ^bb179, ^bb284
^bb179:
  %v513 = sea.const 10 : i64 loc("_455"("aws-c-common/source/byte_buf.c":930:17))
  %v514 = sea.ptr.add %v25, %v513 : !sea.ptr<64>, i64 loc("_455"("aws-c-common/source/byte_buf.c":930:17))
  %v515 = sea.ptr.cmp ult, %v514, %v373 : !sea.ptr<64> loc("_456"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v515, ^bb180, ^bb182 loc("aws-c-common/source/byte_buf.c":915:5)
^bb180:
  %v516 = sea.const 1 : i64 loc("_328"("aws-c-common/source/byte_buf.c":916:36))
  %v517 = sea.ptr.dereferenceable %v514, %v516 : !sea.ptr<64>, i64 loc("_328"("aws-c-common/source/byte_buf.c":916:36))
  %v518 = sea.const 1 : i1
  %v519 = sea.xor %v517, %v518 : i1
  sea.assume %v519
  sea.br ^bb284
^bb181:
  sea.br ^bb182
^bb182:
  sea.br ^bb183
^bb183:
  sea.cond_br %v33, ^bb242, ^bb184 loc("aws-c-common/source/byte_buf.c":902:23)
^bb184:
  sea.br ^bb185
^bb185:
  sea.br ^bb186
^bb186:
  sea.br ^bb187
^bb187:
  sea.br ^bb188
^bb188:
  %v520 = sea.ptr.index %v25 [%v16] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_464"("aws-c-common/source/byte_buf.c":910:39))
  sea.br ^bb189
^bb189:
  sea.br ^bb190
^bb190:
  %v521 = sea.const 0 : i64 loc("_466"("aws-c-common/source/byte_buf.c":915:21))
  %v522 = sea.icmp sgt, %v16, %v521 : i64 loc("_466"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v522, ^bb191, ^bb243 loc("aws-c-common/source/byte_buf.c":915:5)
^bb191:
  %v523 = sea.const 1 : i64 loc("_467"("aws-c-common/source/byte_buf.c":916:36))
  %v524 = sea.ptr.dereferenceable %v25, %v523 : !sea.ptr<64>, i64 loc("_467"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v524, ^bb192, ^bb284
^bb192:
  %v525 = sea.load %v66[%v25] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_469"("aws-c-common/source/byte_buf.c":916:36))
  %v526 = sea.zext %v525 : i8 to i64 loc("_470"("aws-c-common/source/byte_buf.c":916:23))
  %v527 = sea.ptr.index %v11 [%v526] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_471"("aws-c-common/source/byte_buf.c":916:23))
  %v528 = sea.const 1 : i64 loc("_472"("aws-c-common/source/byte_buf.c":916:23))
  %v529 = sea.ptr.dereferenceable %v527, %v528 : !sea.ptr<64>, i64 loc("_472"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v529, ^bb193, ^bb284
^bb193:
  %v530 = sea.const 1 : i64 loc("_474"("aws-c-common/source/byte_buf.c":917:36))
  %v531 = sea.ptr.dereferenceable %v25, %v530 : !sea.ptr<64>, i64 loc("_474"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v531, ^bb194, ^bb284
^bb194:
  %v532 = sea.const 1 : i64 loc("_476"("aws-c-common/source/byte_buf.c":917:23))
  %v533 = sea.ptr.dereferenceable %v527, %v532 : !sea.ptr<64>, i64 loc("_476"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v533, ^bb195, ^bb284
^bb195:
  %v534 = sea.const 1 : i64 loc("_478"("aws-c-common/source/byte_buf.c":930:17))
  %v535 = sea.ptr.add %v25, %v534 : !sea.ptr<64>, i64 loc("_478"("aws-c-common/source/byte_buf.c":930:17))
  %v536 = sea.ptr.cmp ult, %v535, %v520 : !sea.ptr<64> loc("_479"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v536, ^bb196, ^bb243 loc("aws-c-common/source/byte_buf.c":915:5)
^bb196:
  %v537 = sea.const 1 : i64 loc("_480"("aws-c-common/source/byte_buf.c":916:36))
  %v538 = sea.ptr.dereferenceable %v535, %v537 : !sea.ptr<64>, i64 loc("_480"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v538, ^bb197, ^bb284
^bb197:
  %v539 = sea.load %v66[%v535] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_482"("aws-c-common/source/byte_buf.c":916:36))
  %v540 = sea.zext %v539 : i8 to i64 loc("_483"("aws-c-common/source/byte_buf.c":916:23))
  %v541 = sea.ptr.index %v11 [%v540] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_484"("aws-c-common/source/byte_buf.c":916:23))
  %v542 = sea.const 1 : i64 loc("_485"("aws-c-common/source/byte_buf.c":916:23))
  %v543 = sea.ptr.dereferenceable %v541, %v542 : !sea.ptr<64>, i64 loc("_485"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v543, ^bb198, ^bb284
^bb198:
  %v544 = sea.const 1 : i64 loc("_487"("aws-c-common/source/byte_buf.c":917:36))
  %v545 = sea.ptr.dereferenceable %v535, %v544 : !sea.ptr<64>, i64 loc("_487"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v545, ^bb199, ^bb284
^bb199:
  %v546 = sea.const 1 : i64 loc("_489"("aws-c-common/source/byte_buf.c":917:23))
  %v547 = sea.ptr.dereferenceable %v541, %v546 : !sea.ptr<64>, i64 loc("_489"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v547, ^bb200, ^bb284
^bb200:
  %v548 = sea.const 2 : i64 loc("_491"("aws-c-common/source/byte_buf.c":930:17))
  %v549 = sea.ptr.add %v25, %v548 : !sea.ptr<64>, i64 loc("_491"("aws-c-common/source/byte_buf.c":930:17))
  %v550 = sea.ptr.cmp ult, %v549, %v520 : !sea.ptr<64> loc("_492"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v550, ^bb201, ^bb243 loc("aws-c-common/source/byte_buf.c":915:5)
^bb201:
  %v551 = sea.const 1 : i64 loc("_493"("aws-c-common/source/byte_buf.c":916:36))
  %v552 = sea.ptr.dereferenceable %v549, %v551 : !sea.ptr<64>, i64 loc("_493"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v552, ^bb202, ^bb284
^bb202:
  %v553 = sea.load %v66[%v549] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_495"("aws-c-common/source/byte_buf.c":916:36))
  %v554 = sea.zext %v553 : i8 to i64 loc("_496"("aws-c-common/source/byte_buf.c":916:23))
  %v555 = sea.ptr.index %v11 [%v554] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_497"("aws-c-common/source/byte_buf.c":916:23))
  %v556 = sea.const 1 : i64 loc("_498"("aws-c-common/source/byte_buf.c":916:23))
  %v557 = sea.ptr.dereferenceable %v555, %v556 : !sea.ptr<64>, i64 loc("_498"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v557, ^bb203, ^bb284
^bb203:
  %v558 = sea.const 1 : i64 loc("_500"("aws-c-common/source/byte_buf.c":917:36))
  %v559 = sea.ptr.dereferenceable %v549, %v558 : !sea.ptr<64>, i64 loc("_500"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v559, ^bb204, ^bb284
^bb204:
  %v560 = sea.const 1 : i64 loc("_502"("aws-c-common/source/byte_buf.c":917:23))
  %v561 = sea.ptr.dereferenceable %v555, %v560 : !sea.ptr<64>, i64 loc("_502"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v561, ^bb205, ^bb284
^bb205:
  %v562 = sea.const 3 : i64 loc("_504"("aws-c-common/source/byte_buf.c":930:17))
  %v563 = sea.ptr.add %v25, %v562 : !sea.ptr<64>, i64 loc("_504"("aws-c-common/source/byte_buf.c":930:17))
  %v564 = sea.ptr.cmp ult, %v563, %v520 : !sea.ptr<64> loc("_505"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v564, ^bb206, ^bb243 loc("aws-c-common/source/byte_buf.c":915:5)
^bb206:
  %v565 = sea.const 1 : i64 loc("_506"("aws-c-common/source/byte_buf.c":916:36))
  %v566 = sea.ptr.dereferenceable %v563, %v565 : !sea.ptr<64>, i64 loc("_506"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v566, ^bb207, ^bb284
^bb207:
  %v567 = sea.load %v66[%v563] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_508"("aws-c-common/source/byte_buf.c":916:36))
  %v568 = sea.zext %v567 : i8 to i64 loc("_509"("aws-c-common/source/byte_buf.c":916:23))
  %v569 = sea.ptr.index %v11 [%v568] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_510"("aws-c-common/source/byte_buf.c":916:23))
  %v570 = sea.const 1 : i64 loc("_511"("aws-c-common/source/byte_buf.c":916:23))
  %v571 = sea.ptr.dereferenceable %v569, %v570 : !sea.ptr<64>, i64 loc("_511"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v571, ^bb208, ^bb284
^bb208:
  %v572 = sea.const 1 : i64 loc("_513"("aws-c-common/source/byte_buf.c":917:36))
  %v573 = sea.ptr.dereferenceable %v563, %v572 : !sea.ptr<64>, i64 loc("_513"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v573, ^bb209, ^bb284
^bb209:
  %v574 = sea.const 1 : i64 loc("_515"("aws-c-common/source/byte_buf.c":917:23))
  %v575 = sea.ptr.dereferenceable %v569, %v574 : !sea.ptr<64>, i64 loc("_515"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v575, ^bb210, ^bb284
^bb210:
  %v576 = sea.const 4 : i64 loc("_517"("aws-c-common/source/byte_buf.c":930:17))
  %v577 = sea.ptr.add %v25, %v576 : !sea.ptr<64>, i64 loc("_517"("aws-c-common/source/byte_buf.c":930:17))
  %v578 = sea.ptr.cmp ult, %v577, %v520 : !sea.ptr<64> loc("_518"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v578, ^bb211, ^bb243 loc("aws-c-common/source/byte_buf.c":915:5)
^bb211:
  %v579 = sea.const 1 : i64 loc("_519"("aws-c-common/source/byte_buf.c":916:36))
  %v580 = sea.ptr.dereferenceable %v577, %v579 : !sea.ptr<64>, i64 loc("_519"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v580, ^bb212, ^bb284
^bb212:
  %v581 = sea.load %v66[%v577] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_521"("aws-c-common/source/byte_buf.c":916:36))
  %v582 = sea.zext %v581 : i8 to i64 loc("_522"("aws-c-common/source/byte_buf.c":916:23))
  %v583 = sea.ptr.index %v11 [%v582] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_523"("aws-c-common/source/byte_buf.c":916:23))
  %v584 = sea.const 1 : i64 loc("_524"("aws-c-common/source/byte_buf.c":916:23))
  %v585 = sea.ptr.dereferenceable %v583, %v584 : !sea.ptr<64>, i64 loc("_524"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v585, ^bb213, ^bb284
^bb213:
  %v586 = sea.const 1 : i64 loc("_526"("aws-c-common/source/byte_buf.c":917:36))
  %v587 = sea.ptr.dereferenceable %v577, %v586 : !sea.ptr<64>, i64 loc("_526"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v587, ^bb214, ^bb284
^bb214:
  %v588 = sea.const 1 : i64 loc("_528"("aws-c-common/source/byte_buf.c":917:23))
  %v589 = sea.ptr.dereferenceable %v583, %v588 : !sea.ptr<64>, i64 loc("_528"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v589, ^bb215, ^bb284
^bb215:
  %v590 = sea.const 5 : i64 loc("_530"("aws-c-common/source/byte_buf.c":930:17))
  %v591 = sea.ptr.add %v25, %v590 : !sea.ptr<64>, i64 loc("_530"("aws-c-common/source/byte_buf.c":930:17))
  %v592 = sea.ptr.cmp ult, %v591, %v520 : !sea.ptr<64> loc("_531"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v592, ^bb216, ^bb243 loc("aws-c-common/source/byte_buf.c":915:5)
^bb216:
  %v593 = sea.const 1 : i64 loc("_532"("aws-c-common/source/byte_buf.c":916:36))
  %v594 = sea.ptr.dereferenceable %v591, %v593 : !sea.ptr<64>, i64 loc("_532"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v594, ^bb217, ^bb284
^bb217:
  %v595 = sea.load %v66[%v591] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_534"("aws-c-common/source/byte_buf.c":916:36))
  %v596 = sea.zext %v595 : i8 to i64 loc("_535"("aws-c-common/source/byte_buf.c":916:23))
  %v597 = sea.ptr.index %v11 [%v596] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_536"("aws-c-common/source/byte_buf.c":916:23))
  %v598 = sea.const 1 : i64 loc("_537"("aws-c-common/source/byte_buf.c":916:23))
  %v599 = sea.ptr.dereferenceable %v597, %v598 : !sea.ptr<64>, i64 loc("_537"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v599, ^bb218, ^bb284
^bb218:
  %v600 = sea.const 1 : i64 loc("_539"("aws-c-common/source/byte_buf.c":917:36))
  %v601 = sea.ptr.dereferenceable %v591, %v600 : !sea.ptr<64>, i64 loc("_539"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v601, ^bb219, ^bb284
^bb219:
  %v602 = sea.const 1 : i64 loc("_541"("aws-c-common/source/byte_buf.c":917:23))
  %v603 = sea.ptr.dereferenceable %v597, %v602 : !sea.ptr<64>, i64 loc("_541"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v603, ^bb220, ^bb284
^bb220:
  %v604 = sea.const 6 : i64 loc("_543"("aws-c-common/source/byte_buf.c":930:17))
  %v605 = sea.ptr.add %v25, %v604 : !sea.ptr<64>, i64 loc("_543"("aws-c-common/source/byte_buf.c":930:17))
  %v606 = sea.ptr.cmp ult, %v605, %v520 : !sea.ptr<64> loc("_544"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v606, ^bb221, ^bb243 loc("aws-c-common/source/byte_buf.c":915:5)
^bb221:
  %v607 = sea.const 1 : i64 loc("_545"("aws-c-common/source/byte_buf.c":916:36))
  %v608 = sea.ptr.dereferenceable %v605, %v607 : !sea.ptr<64>, i64 loc("_545"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v608, ^bb222, ^bb284
^bb222:
  %v609 = sea.load %v66[%v605] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_547"("aws-c-common/source/byte_buf.c":916:36))
  %v610 = sea.zext %v609 : i8 to i64 loc("_548"("aws-c-common/source/byte_buf.c":916:23))
  %v611 = sea.ptr.index %v11 [%v610] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_549"("aws-c-common/source/byte_buf.c":916:23))
  %v612 = sea.const 1 : i64 loc("_550"("aws-c-common/source/byte_buf.c":916:23))
  %v613 = sea.ptr.dereferenceable %v611, %v612 : !sea.ptr<64>, i64 loc("_550"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v613, ^bb223, ^bb284
^bb223:
  %v614 = sea.const 1 : i64 loc("_552"("aws-c-common/source/byte_buf.c":917:36))
  %v615 = sea.ptr.dereferenceable %v605, %v614 : !sea.ptr<64>, i64 loc("_552"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v615, ^bb224, ^bb284
^bb224:
  %v616 = sea.const 1 : i64 loc("_554"("aws-c-common/source/byte_buf.c":917:23))
  %v617 = sea.ptr.dereferenceable %v611, %v616 : !sea.ptr<64>, i64 loc("_554"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v617, ^bb225, ^bb284
^bb225:
  %v618 = sea.const 7 : i64 loc("_556"("aws-c-common/source/byte_buf.c":930:17))
  %v619 = sea.ptr.add %v25, %v618 : !sea.ptr<64>, i64 loc("_556"("aws-c-common/source/byte_buf.c":930:17))
  %v620 = sea.ptr.cmp ult, %v619, %v520 : !sea.ptr<64> loc("_557"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v620, ^bb226, ^bb243 loc("aws-c-common/source/byte_buf.c":915:5)
^bb226:
  %v621 = sea.const 1 : i64 loc("_558"("aws-c-common/source/byte_buf.c":916:36))
  %v622 = sea.ptr.dereferenceable %v619, %v621 : !sea.ptr<64>, i64 loc("_558"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v622, ^bb227, ^bb284
^bb227:
  %v623 = sea.load %v66[%v619] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_560"("aws-c-common/source/byte_buf.c":916:36))
  %v624 = sea.zext %v623 : i8 to i64 loc("_561"("aws-c-common/source/byte_buf.c":916:23))
  %v625 = sea.ptr.index %v11 [%v624] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_562"("aws-c-common/source/byte_buf.c":916:23))
  %v626 = sea.const 1 : i64 loc("_563"("aws-c-common/source/byte_buf.c":916:23))
  %v627 = sea.ptr.dereferenceable %v625, %v626 : !sea.ptr<64>, i64 loc("_563"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v627, ^bb228, ^bb284
^bb228:
  %v628 = sea.const 1 : i64 loc("_565"("aws-c-common/source/byte_buf.c":917:36))
  %v629 = sea.ptr.dereferenceable %v619, %v628 : !sea.ptr<64>, i64 loc("_565"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v629, ^bb229, ^bb284
^bb229:
  %v630 = sea.const 1 : i64 loc("_567"("aws-c-common/source/byte_buf.c":917:23))
  %v631 = sea.ptr.dereferenceable %v625, %v630 : !sea.ptr<64>, i64 loc("_567"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v631, ^bb230, ^bb284
^bb230:
  %v632 = sea.const 8 : i64 loc("_569"("aws-c-common/source/byte_buf.c":930:17))
  %v633 = sea.ptr.add %v25, %v632 : !sea.ptr<64>, i64 loc("_569"("aws-c-common/source/byte_buf.c":930:17))
  %v634 = sea.ptr.cmp ult, %v633, %v520 : !sea.ptr<64> loc("_570"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v634, ^bb231, ^bb243 loc("aws-c-common/source/byte_buf.c":915:5)
^bb231:
  %v635 = sea.const 1 : i64 loc("_571"("aws-c-common/source/byte_buf.c":916:36))
  %v636 = sea.ptr.dereferenceable %v633, %v635 : !sea.ptr<64>, i64 loc("_571"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v636, ^bb232, ^bb284
^bb232:
  %v637 = sea.load %v66[%v633] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_573"("aws-c-common/source/byte_buf.c":916:36))
  %v638 = sea.zext %v637 : i8 to i64 loc("_574"("aws-c-common/source/byte_buf.c":916:23))
  %v639 = sea.ptr.index %v11 [%v638] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_575"("aws-c-common/source/byte_buf.c":916:23))
  %v640 = sea.const 1 : i64 loc("_576"("aws-c-common/source/byte_buf.c":916:23))
  %v641 = sea.ptr.dereferenceable %v639, %v640 : !sea.ptr<64>, i64 loc("_576"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v641, ^bb233, ^bb284
^bb233:
  %v642 = sea.const 1 : i64 loc("_578"("aws-c-common/source/byte_buf.c":917:36))
  %v643 = sea.ptr.dereferenceable %v633, %v642 : !sea.ptr<64>, i64 loc("_578"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v643, ^bb234, ^bb284
^bb234:
  %v644 = sea.const 1 : i64 loc("_580"("aws-c-common/source/byte_buf.c":917:23))
  %v645 = sea.ptr.dereferenceable %v639, %v644 : !sea.ptr<64>, i64 loc("_580"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v645, ^bb235, ^bb284
^bb235:
  %v646 = sea.const 9 : i64 loc("_582"("aws-c-common/source/byte_buf.c":930:17))
  %v647 = sea.ptr.add %v25, %v646 : !sea.ptr<64>, i64 loc("_582"("aws-c-common/source/byte_buf.c":930:17))
  %v648 = sea.ptr.cmp ult, %v647, %v520 : !sea.ptr<64> loc("_583"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v648, ^bb236, ^bb243 loc("aws-c-common/source/byte_buf.c":915:5)
^bb236:
  %v649 = sea.const 1 : i64 loc("_584"("aws-c-common/source/byte_buf.c":916:36))
  %v650 = sea.ptr.dereferenceable %v647, %v649 : !sea.ptr<64>, i64 loc("_584"("aws-c-common/source/byte_buf.c":916:36))
  sea.cond_br %v650, ^bb237, ^bb284
^bb237:
  %v651 = sea.load %v66[%v647] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_586"("aws-c-common/source/byte_buf.c":916:36))
  %v652 = sea.zext %v651 : i8 to i64 loc("_587"("aws-c-common/source/byte_buf.c":916:23))
  %v653 = sea.ptr.index %v11 [%v652] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_588"("aws-c-common/source/byte_buf.c":916:23))
  %v654 = sea.const 1 : i64 loc("_589"("aws-c-common/source/byte_buf.c":916:23))
  %v655 = sea.ptr.dereferenceable %v653, %v654 : !sea.ptr<64>, i64 loc("_589"("aws-c-common/source/byte_buf.c":916:23))
  sea.cond_br %v655, ^bb238, ^bb284
^bb238:
  %v656 = sea.const 1 : i64 loc("_591"("aws-c-common/source/byte_buf.c":917:36))
  %v657 = sea.ptr.dereferenceable %v647, %v656 : !sea.ptr<64>, i64 loc("_591"("aws-c-common/source/byte_buf.c":917:36))
  sea.cond_br %v657, ^bb239, ^bb284
^bb239:
  %v658 = sea.const 1 : i64 loc("_593"("aws-c-common/source/byte_buf.c":917:23))
  %v659 = sea.ptr.dereferenceable %v653, %v658 : !sea.ptr<64>, i64 loc("_593"("aws-c-common/source/byte_buf.c":917:23))
  sea.cond_br %v659, ^bb240, ^bb284
^bb240:
  %v660 = sea.const 10 : i64 loc("_595"("aws-c-common/source/byte_buf.c":930:17))
  %v661 = sea.ptr.add %v25, %v660 : !sea.ptr<64>, i64 loc("_595"("aws-c-common/source/byte_buf.c":930:17))
  %v662 = sea.ptr.cmp ult, %v661, %v520 : !sea.ptr<64> loc("_596"("aws-c-common/source/byte_buf.c":915:21))
  sea.cond_br %v662, ^bb241, ^bb243 loc("aws-c-common/source/byte_buf.c":915:5)
^bb241:
  %v663 = sea.const 1 : i64 loc("_468"("aws-c-common/source/byte_buf.c":916:36))
  %v664 = sea.ptr.dereferenceable %v661, %v663 : !sea.ptr<64>, i64 loc("_468"("aws-c-common/source/byte_buf.c":916:36))
  %v665 = sea.const 1 : i1
  %v666 = sea.xor %v664, %v665 : i1
  sea.assume %v666
  sea.br ^bb284
^bb242:
  sea.br ^bb243
^bb243:
  sea.br ^bb244
^bb244:
  %v667 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v33, ^bb250(%v667 : i1), ^bb245 loc("aws-c-common/source/byte_buf.c":66:32)
^bb245:
  sea.br ^bb246
^bb246:
  sea.br ^bb247
^bb247:
  %v668 = sea.ptr.null : !sea.ptr<64> loc(".not2.i27.i"("aws-c-common/source/byte_buf.c":66:55))
  %v669 = sea.ptr.cmp eq, %v25, %v668 : !sea.ptr<64> loc(".not2.i27.i"("aws-c-common/source/byte_buf.c":66:55))
  %v670 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v669, ^bb250(%v670 : i1), ^bb248 loc("aws-c-common/source/byte_buf.c":66:67)
^bb248:
  sea.br ^bb249
^bb249:
  %v671 = sea.const 1 : i1
  sea.br ^bb250(%v671 : i1)
^bb250(%v672 : i1):
  sea.br ^bb251
^bb251:
  sea.cond_br %v33, ^bb256, ^bb252 loc("aws-c-common/source/byte_buf.c":66:32)
^bb252:
  sea.br ^bb253
^bb253:
  %v673 = sea.const 1 : i1 loc("or.cond24.not")
  %v674 = sea.and %v74, %v673 : i1 loc("or.cond24.not")
  sea.cond_br %v674, ^bb254, ^bb284
^bb254:
  sea.br ^bb255
^bb255:
  sea.br ^bb256
^bb256:
  sea.br ^bb257
^bb257:
  %v675 = sea.const 0 : i64 loc("_610"("aws-c-common/source/byte_buf.c":66:26))
  %v676 = sea.icmp eq, %v67, %v675 : i64 loc("_610"("aws-c-common/source/byte_buf.c":66:26))
  %v677 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v676, ^bb263(%v677 : i1), ^bb258 loc("aws-c-common/source/byte_buf.c":66:32)
^bb258:
  sea.br ^bb259
^bb259:
  sea.br ^bb260
^bb260:
  %v678 = sea.ptr.null : !sea.ptr<64> loc(".not2.i19.i"("aws-c-common/source/byte_buf.c":66:55))
  %v679 = sea.ptr.cmp eq, %v68, %v678 : !sea.ptr<64> loc(".not2.i19.i"("aws-c-common/source/byte_buf.c":66:55))
  %v680 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v679, ^bb263(%v680 : i1), ^bb261 loc("aws-c-common/source/byte_buf.c":66:67)
^bb261:
  sea.br ^bb262
^bb262:
  %v681 = sea.const 1 : i1
  sea.br ^bb263(%v681 : i1)
^bb263(%v682 : i1):
  sea.br ^bb264
^bb264:
  sea.cond_br %v676, ^bb269, ^bb265 loc("aws-c-common/source/byte_buf.c":66:32)
^bb265:
  sea.br ^bb266
^bb266:
  %v683 = sea.const 1 : i1 loc("or.cond28.not")
  %v684 = sea.and %v92, %v683 : i1 loc("or.cond28.not")
  sea.cond_br %v684, ^bb267, ^bb284
^bb267:
  sea.br ^bb268
^bb268:
  sea.br ^bb269
^bb269:
  sea.cond_br %v33, ^bb277, ^bb270 loc("seahorn/jobs/byte_cursor_compare_lookup/aws_byte_cursor_compare_lookup_harness.c":49:9)
^bb270:
  %v685 = sea.ptr.null : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v686 = sea.ptr.cmp eq, %v25, %v685 : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  sea.cond_br %v686, ^bb277, ^bb271 loc("seahorn/lib/utils.c":39:14)
^bb271:
  sea.br ^bb272
^bb272:
  %v687 = sea.ptr.index %v25 [%v69] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_625"("seahorn/lib/utils.c":40:5))
  %v688 = sea.const 1 : i64 loc("_626"("seahorn/lib/utils.c":40:5))
  %v689 = sea.ptr.dereferenceable %v687, %v688 : !sea.ptr<64>, i64 loc("_626"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v689, ^bb273, ^bb284
^bb273:
  %v690 = sea.load %v66[%v687] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_628"("seahorn/lib/utils.c":40:5))
  sea.br ^bb274
^bb274:
  %v691 = sea.icmp eq, %v690, %v86 : i8 loc("_630"("seahorn/lib/utils.c":40:5))
  sea.br ^bb275
^bb275:
  %v692 = sea.const 1 : i64 loc("_632"("seahorn/lib/utils.c":40:5))
  %v693 = sea.ptr.dereferenceable %v687, %v692 : !sea.ptr<64>, i64 loc("_632"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v693, ^bb276, ^bb284
^bb276:
  %v694 = sea.const 1 : i1 loc("or.cond20")
  %v695 = sea.const 0 : i1 loc("or.cond20")
  %v696 = sea.select %v694, %v691, %v695 : i1 loc("or.cond20")
  sea.cond_br %v696, ^bb277, ^bb284
^bb277:
  %v697 = sea.const 1 : i1 loc("seahorn/jobs/byte_cursor_compare_lookup/aws_byte_cursor_compare_lookup_harness.c":52:9)
  %v698 = sea.xor %v676, %v697 : i1 loc("seahorn/jobs/byte_cursor_compare_lookup/aws_byte_cursor_compare_lookup_harness.c":52:9)
  sea.assume %v698 loc("seahorn/jobs/byte_cursor_compare_lookup/aws_byte_cursor_compare_lookup_harness.c":52:9)
  sea.assume %v92 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb278
^bb278:
  %v699 = sea.ptr.index %v68 [%v87] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_635"("seahorn/lib/utils.c":40:5))
  %v700 = sea.const 1 : i64 loc("_636"("seahorn/lib/utils.c":40:5))
  %v701 = sea.ptr.dereferenceable %v699, %v700 : !sea.ptr<64>, i64 loc("_636"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v701, ^bb279, ^bb284
^bb279:
  %v702 = sea.load %v66[%v699] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_638"("seahorn/lib/utils.c":40:5))
  sea.br ^bb280
^bb280:
  %v703 = sea.icmp eq, %v702, %v104 : i8 loc("_640"("seahorn/lib/utils.c":40:5))
  sea.br ^bb281
^bb281:
  %v704 = sea.const 1 : i64 loc("_642"("seahorn/lib/utils.c":40:5))
  %v705 = sea.ptr.dereferenceable %v699, %v704 : !sea.ptr<64>, i64 loc("_642"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v705, ^bb282, ^bb284
^bb282:
  sea.br ^bb283
^bb283:
  %v706 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v707 = sea.xor %v703, %v706 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v707 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb284 loc("seahorn/lib/utils.c":40:5)
^bb284:
  sea.br ^bb285
^bb285:
  %v708 = sea.const 0 : i1
  sea.assert %v708
  sea.halt
}
