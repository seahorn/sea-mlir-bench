// Exported from SeaHorn (byte_cursor_advance_nospec.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm13")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm14")
  %v2 = sea.mem.nondet "region.25" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm15")
  %v3 = sea.mem.nondet "region.41" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm16")
  %v4 = sea.const 16 : i64 loc("_0")
  %v5 = sea.alloca %v4 align 8 [4] : i64 -> !sea.ptr<64> loc("_0")
  %v6 = sea.const 16 : i64 loc("_1")
  %v7 = sea.alloca %v6 align 8 [5] : i64 -> !sea.ptr<64> loc("_1")
  %v8 = sea.const 16 : i64 loc("_2")
  %v9 = sea.alloca %v8 align 8 [6] : i64 -> !sea.ptr<64> loc("_2")
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
  sea.cond_br %v14, ^bb4(%v3, %v15 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/sea_allocators.c":11:10)
^bb3:
  %v16 = sea.const 10 : i64 loc("malloc.i1")
  %v17 = sea.alloca %v16 align 16 [9] : i64 -> !sea.ptr<64> loc("malloc.i1")
  sea.br ^bb4(%v3, %v17 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb4(%v18 : !sea.mem<!sea.ptr<64>, i8>, %v19 : !sea.ptr<64>):
  %v20 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v21 = sea.memhavoc %v18[%v19], %v20 [10] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v22 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_10"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb5
^bb5:
  %v23 = sea.store %v11[%v22], %v19 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  %v24 = sea.nondet "nd_size_t" [11] : i64 loc("_11"("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":14:18))
  sea.br ^bb6
^bb6:
  %v25 = sea.const 0 : i64 loc("_13"("aws-c-common/source/byte_buf.c":66:26))
  %v26 = sea.icmp eq, %v10, %v25 : i64 loc("_13"("aws-c-common/source/byte_buf.c":66:26))
  %v27 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v26, ^bb12(%v27 : i1), ^bb7 loc("aws-c-common/source/byte_buf.c":66:32)
^bb7:
  sea.br ^bb8
^bb8:
  sea.br ^bb9
^bb9:
  %v28 = sea.ptr.null : !sea.ptr<64> loc(".not2.i18.i"("aws-c-common/source/byte_buf.c":66:55))
  %v29 = sea.ptr.cmp eq, %v19, %v28 : !sea.ptr<64> loc(".not2.i18.i"("aws-c-common/source/byte_buf.c":66:55))
  %v30 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v29, ^bb12(%v30 : i1), ^bb10 loc("aws-c-common/source/byte_buf.c":66:67)
^bb10:
  sea.br ^bb11
^bb11:
  %v31 = sea.const 1 : i1
  sea.br ^bb12(%v31 : i1)
^bb12(%v32 : i1):
  sea.assume %v32 loc("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":17:5)
  %v33 = sea.nondet "nd_size_t" [12] : i64 loc("_20"("seahorn/lib/utils.c":46:20))
  sea.br ^bb13
^bb13:
  %v34 = sea.store %v1[%v7], %v33 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v35 = sea.const 0 : i64 loc("_22"("seahorn/lib/utils.c":47:12))
  %v36 = sea.icmp ne, %v10, %v35 : i64 loc("_22"("seahorn/lib/utils.c":47:12))
  %v37 = sea.ptr.null : !sea.ptr<64> loc("_23")
  %v38 = sea.ptr.cmp ne, %v19, %v37 : !sea.ptr<64> loc("_23")
  %v39 = sea.and %v36, %v38 : i1 loc("or.cond.i23.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v39, ^bb16, ^bb14 loc("seahorn/lib/utils.c":47:16)
^bb14:
  %v40 = sea.nondet "nd_uint8_t" [13] : i8 loc("_35"("seahorn/lib/utils.c":51:21))
  %v41 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_36"("seahorn/lib/utils.c":51:14))
  sea.br ^bb15
^bb15:
  %v42 = sea.store %v34[%v41], %v40 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb21(%v40 : i8)
^bb16:
  sea.br ^bb17
^bb17:
  %v43 = sea.icmp ult, %v33, %v10 : i64 loc("_26"("seahorn/lib/utils.c":48:27))
  sea.assume %v43 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb18
^bb18:
  %v44 = sea.ptr.index %v19 [%v33] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_28"("seahorn/lib/utils.c":49:21))
  %v45 = sea.const 1 : i64 loc("_29"("seahorn/lib/utils.c":49:21))
  %v46 = sea.ptr.dereferenceable %v44, %v45 : !sea.ptr<64>, i64 loc("_29"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v46, ^bb19, ^bb66
^bb19:
  %v47 = sea.load %v21[%v44] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_31"("seahorn/lib/utils.c":49:21))
  %v48 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_32"("seahorn/lib/utils.c":49:14))
  sea.br ^bb20
^bb20:
  %v49 = sea.store %v34[%v48], %v47 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb21(%v47 : i8) loc("seahorn/lib/utils.c":50:3)
^bb21(%v50 : i8):
  sea.br ^bb22
^bb22:
  %v51 = sea.icmp uge, %v10, %v24 : i64 loc("_40"("aws-c-common/source/byte_buf.c":1122:13))
  %v52 = sea.const 18446744073709551615 : i64 loc("_41")
  %v53 = sea.icmp sgt, %v24, %v52 : i64 loc("_41")
  %v54 = sea.and %v53, %v51 : i1 loc("or.cond.i.i"("aws-c-common/source/byte_buf.c":1122:28))
  %v55 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1122:28)
  %v56 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":1122:28)
  sea.cond_br %v54, ^bb23, ^bb39(%v10, %v19, %v55, %v56 : i64, !sea.ptr<64>, !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":1122:28)
^bb23:
  sea.br ^bb24
^bb24:
  %v57 = sea.const 18446744073709551615 : i64 loc("_44"("aws-c-common/source/byte_buf.c":1122:69))
  %v58 = sea.icmp sgt, %v10, %v57 : i64 loc("_44"("aws-c-common/source/byte_buf.c":1122:69))
  %v59 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1122:9)
  %v60 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":1122:9)
  sea.cond_br %v58, ^bb25, ^bb39(%v10, %v19, %v59, %v60 : i64, !sea.ptr<64>, !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":1122:9)
^bb25:
  sea.br ^bb26
^bb26:
  %v61 = sea.const 1 : i64 loc("_47"("aws-c-common/source/byte_buf.c":1128:59))
  %v62 = sea.add %v10, %v61 nuw : i64 loc("_47"("aws-c-common/source/byte_buf.c":1128:59))
  %v63 = sea.sub %v10, %v24 : i64 loc("_49"("aws-c-common/source/byte_buf.c":1050:40))
  %v64 = sea.or %v62, %v63 : i64 loc("_50"("aws-c-common/source/byte_buf.c":1051:42))
  %v65 = sea.or %v64, %v24 : i64 loc("_51"("aws-c-common/source/byte_buf.c":1051:42))
  %v66 = sea.const 18446744073709551615 : i64 loc("_52"("aws-c-common/source/byte_buf.c":1064:38))
  %v67 = sea.icmp sgt, %v65, %v66 : i64 loc("_52"("aws-c-common/source/byte_buf.c":1064:38))
  %v68 = sea.sext %v67 : i1 to i64 loc(".neg.i.i.i"("aws-c-common/source/byte_buf.c":1064:38))
  %v69 = sea.and %v24, %v68 : i64 loc("_53"("aws-c-common/source/byte_buf.c":1131:19))
  sea.br ^bb27
^bb27:
  sea.br ^bb28
^bb28:
  %v70 = sea.ptr.to_int %v19 : !sea.ptr<64> to i64 loc("_56"("aws-c-common/source/byte_buf.c":1132:35))
  %v71 = sea.and %v68, %v70 : i64 loc("_57"("aws-c-common/source/byte_buf.c":1132:58))
  %v72 = sea.ptr.from_int %v71 : i64 to !sea.ptr<64> loc("_58"("aws-c-common/source/byte_buf.c":1132:23))
  sea.br ^bb29
^bb29:
  sea.br ^bb30
^bb30:
  %v73 = sea.and %v10, %v68 : i64 loc("_61"("aws-c-common/source/byte_buf.c":1134:35))
  sea.br ^bb31
^bb31:
  sea.br ^bb32
^bb32:
  %v74 = sea.const 0 : i64 loc("_64"("aws-c-common/source/byte_buf.c":1140:36))
  %v75 = sea.icmp eq, %v71, %v74 : i64 loc("_64"("aws-c-common/source/byte_buf.c":1140:36))
  %v76 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1140:23)
  sea.cond_br %v75, ^bb35(%v76 : !sea.ptr<64>), ^bb33 loc("aws-c-common/source/byte_buf.c":1140:23)
^bb33:
  sea.br ^bb34
^bb34:
  %v77 = sea.ptr.index %v72 [%v69] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_67"("aws-c-common/source/byte_buf.c":1140:66))
  sea.br ^bb35(%v77 : !sea.ptr<64>) loc("aws-c-common/source/byte_buf.c":1140:23)
^bb35(%v78 : !sea.ptr<64>):
  sea.br ^bb36
^bb36:
  %v79 = sea.store %v23[%v22], %v78 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1140:21)
  sea.br ^bb37
^bb37:
  sea.br ^bb38
^bb38:
  %v80 = sea.sub %v73, %v69 nsw : i64 loc("_73"("aws-c-common/source/byte_buf.c":1141:21))
  %v81 = sea.store %v79[%v5], %v80 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":1141:21)
  sea.br ^bb39(%v80, %v78, %v72, %v69 : i64, !sea.ptr<64>, !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":1142:5)
^bb39(%v82 : i64, %v83 : !sea.ptr<64>, %v84 : !sea.ptr<64>, %v85 : i64):
  %v86 = sea.store %v2[%v9], %v85 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":27:33)
  %v87 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_76"("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":27:33))
  %v88 = sea.store %v86[%v87], %v84 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":27:33)
  sea.br ^bb40
^bb40:
  %v89 = sea.const 0 : i64 loc("_78"("aws-c-common/source/byte_buf.c":66:26))
  %v90 = sea.icmp eq, %v85, %v89 : i64 loc("_78"("aws-c-common/source/byte_buf.c":66:26))
  %v91 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v90, ^bb46(%v91 : i1), ^bb41 loc("aws-c-common/source/byte_buf.c":66:32)
^bb41:
  sea.br ^bb42
^bb42:
  sea.br ^bb43
^bb43:
  %v92 = sea.ptr.null : !sea.ptr<64> loc(".not2.i14.i"("aws-c-common/source/byte_buf.c":66:55))
  %v93 = sea.ptr.cmp eq, %v84, %v92 : !sea.ptr<64> loc(".not2.i14.i"("aws-c-common/source/byte_buf.c":66:55))
  %v94 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v93, ^bb46(%v94 : i1), ^bb44 loc("aws-c-common/source/byte_buf.c":66:67)
^bb44:
  sea.br ^bb45
^bb45:
  %v95 = sea.const 1 : i1
  sea.br ^bb46(%v95 : i1)
^bb46(%v96 : i1):
  sea.br ^bb47
^bb47:
  sea.cond_br %v90, ^bb52, ^bb48 loc("aws-c-common/source/byte_buf.c":66:32)
^bb48:
  sea.br ^bb49
^bb49:
  %v97 = sea.ptr.null : !sea.ptr<64> loc(".not2.i.i")
  %v98 = sea.ptr.cmp ne, %v84, %v97 : !sea.ptr<64> loc(".not2.i.i")
  %v99 = sea.const 1 : i1 loc("or.cond6.not")
  %v100 = sea.const 0 : i1 loc("or.cond6.not")
  %v101 = sea.select %v99, %v98, %v100 : i1 loc("or.cond6.not")
  sea.cond_br %v101, ^bb50, ^bb66
^bb50:
  sea.br ^bb51
^bb51:
  sea.br ^bb52
^bb52:
  %v102 = sea.const 0 : i64 loc("_90"("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":31:17))
  %v103 = sea.icmp slt, %v10, %v102 : i64 loc("_90"("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":31:17))
  %v104 = sea.const 0 : i64 loc("_91")
  %v105 = sea.icmp slt, %v24, %v104 : i64 loc("_91")
  %v106 = sea.const 1 : i1 loc("or.cond.i"("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":31:35))
  %v107 = sea.select %v103, %v106, %v105 : i1 loc("or.cond.i"("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":31:35))
  %v108 = sea.icmp ugt, %v24, %v10 : i64 loc("_92")
  %v109 = sea.const 1 : i1 loc("or.cond6.i"("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":31:35))
  %v110 = sea.select %v107, %v109, %v108 : i1 loc("or.cond6.i"("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":31:35))
  sea.cond_br %v110, ^bb57, ^bb53 loc("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":31:35)
^bb53:
  %v111 = sea.ptr.cmp eq, %v84, %v19 : !sea.ptr<64> loc("_110"("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":38:9))
  sea.cond_br %v111, ^bb54, ^bb66 loc("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":38:9)
^bb54:
  %v112 = sea.icmp eq, %v85, %v24 : i64 loc("_112"("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":39:9))
  sea.cond_br %v112, ^bb55, ^bb66 loc("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":39:9)
^bb55:
  %v113 = sea.ptr.index %v19 [%v24] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_114"("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":40:9))
  %v114 = sea.ptr.cmp eq, %v83, %v113 : !sea.ptr<64> loc("_115"("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":40:9))
  sea.cond_br %v114, ^bb56, ^bb66 loc("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":40:9)
^bb56:
  %v115 = sea.sub %v10, %v24 nsw : i64 loc("_117"("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":41:9))
  %v116 = sea.icmp eq, %v82, %v115 : i64 loc("_118"("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":41:9))
  %v117 = sea.const 1 : i1 loc("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":41:9)
  %v118 = sea.xor %v116, %v117 : i1 loc("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":41:9)
  sea.assume %v118 loc("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":41:9)
  sea.br ^bb66 loc("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":41:9)
^bb57:
  %v119 = sea.ptr.null : !sea.ptr<64> loc("_94"("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":32:9))
  %v120 = sea.ptr.cmp eq, %v84, %v119 : !sea.ptr<64> loc("_94"("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":32:9))
  sea.cond_br %v120, ^bb58, ^bb66 loc("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":32:9)
^bb58:
  sea.cond_br %v90, ^bb59, ^bb66 loc("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":33:9)
^bb59:
  %v121 = sea.const 1 : i1 loc("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":34:13)
  %v122 = sea.xor %v26, %v121 : i1 loc("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":34:13)
  sea.assume %v122 loc("seahorn/jobs/byte_cursor_advance_nospec/aws_byte_cursor_advance_nospec_harness.c":34:13)
  %v123 = sea.ptr.null : !sea.ptr<64> loc("_97"("seahorn/lib/utils.c":39:7))
  %v124 = sea.ptr.cmp ne, %v83, %v123 : !sea.ptr<64> loc("_97"("seahorn/lib/utils.c":39:7))
  sea.assume %v124 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb60
^bb60:
  %v125 = sea.ptr.index %v83 [%v33] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_99"("seahorn/lib/utils.c":40:5))
  %v126 = sea.const 1 : i64 loc("_100"("seahorn/lib/utils.c":40:5))
  %v127 = sea.ptr.dereferenceable %v125, %v126 : !sea.ptr<64>, i64 loc("_100"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v127, ^bb61, ^bb66
^bb61:
  %v128 = sea.load %v21[%v125] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_102"("seahorn/lib/utils.c":40:5))
  sea.br ^bb62
^bb62:
  %v129 = sea.icmp eq, %v128, %v50 : i8 loc("_104"("seahorn/lib/utils.c":40:5))
  sea.br ^bb63
^bb63:
  %v130 = sea.const 1 : i64 loc("_106"("seahorn/lib/utils.c":40:5))
  %v131 = sea.ptr.dereferenceable %v125, %v130 : !sea.ptr<64>, i64 loc("_106"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v131, ^bb64, ^bb66
^bb64:
  sea.br ^bb65
^bb65:
  %v132 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v133 = sea.xor %v129, %v132 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v133 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb66 loc("seahorn/lib/utils.c":40:5)
^bb66:
  sea.br ^bb67
^bb67:
  %v134 = sea.const 0 : i1
  sea.assert %v134
  sea.halt
}
