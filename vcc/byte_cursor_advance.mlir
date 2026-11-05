// Exported from SeaHorn (byte_cursor_advance.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
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
  %v24 = sea.nondet "nd_size_t" [11] : i64 loc("_11"("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":14:18))
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
  sea.assume %v32 loc("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":17:5)
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
  sea.cond_br %v46, ^bb19, ^bb61
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
  %v51 = sea.or %v24, %v10 : i64 loc("_40"("aws-c-common/source/byte_buf.c":1093:39))
  %v52 = sea.const 18446744073709551615 : i64 loc("or.cond.i.i.not"("aws-c-common/source/byte_buf.c":1093:39))
  %v53 = sea.icmp sgt, %v51, %v52 : i64 loc("or.cond.i.i.not"("aws-c-common/source/byte_buf.c":1093:39))
  %v54 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1093:39)
  %v55 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":1093:39)
  sea.cond_br %v53, ^bb23, ^bb34(%v10, %v19, %v54, %v55 : i64, !sea.ptr<64>, !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":1093:39)
^bb23:
  sea.br ^bb24
^bb24:
  %v56 = sea.icmp ult, %v10, %v24 : i64 loc("_43"("aws-c-common/source/byte_buf.c":1093:71))
  %v57 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1093:9)
  %v58 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":1093:9)
  sea.cond_br %v56, ^bb34(%v10, %v19, %v57, %v58 : i64, !sea.ptr<64>, !sea.ptr<64>, i64), ^bb25 loc("aws-c-common/source/byte_buf.c":1093:9)
^bb25:
  sea.br ^bb26
^bb26:
  sea.br ^bb27
^bb27:
  %v59 = sea.ptr.null : !sea.ptr<64> loc("_47"("aws-c-common/source/byte_buf.c":1099:36))
  %v60 = sea.ptr.cmp eq, %v19, %v59 : !sea.ptr<64> loc("_47"("aws-c-common/source/byte_buf.c":1099:36))
  %v61 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1099:23)
  sea.cond_br %v60, ^bb30(%v61 : !sea.ptr<64>), ^bb28 loc("aws-c-common/source/byte_buf.c":1099:23)
^bb28:
  sea.br ^bb29
^bb29:
  %v62 = sea.ptr.index %v19 [%v24] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_50"("aws-c-common/source/byte_buf.c":1099:66))
  sea.br ^bb30(%v62 : !sea.ptr<64>) loc("aws-c-common/source/byte_buf.c":1099:23)
^bb30(%v63 : !sea.ptr<64>):
  sea.br ^bb31
^bb31:
  %v64 = sea.store %v23[%v22], %v63 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1099:21)
  sea.br ^bb32
^bb32:
  sea.br ^bb33
^bb33:
  %v65 = sea.sub %v10, %v24 : i64 loc("_56"("aws-c-common/source/byte_buf.c":1100:21))
  %v66 = sea.store %v64[%v5], %v65 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":1100:21)
  sea.br ^bb34(%v65, %v63, %v19, %v24 : i64, !sea.ptr<64>, !sea.ptr<64>, i64)
^bb34(%v67 : i64, %v68 : !sea.ptr<64>, %v69 : !sea.ptr<64>, %v70 : i64):
  %v71 = sea.store %v2[%v9], %v70 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":27:33)
  %v72 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_59"("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":27:33))
  %v73 = sea.store %v71[%v72], %v69 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":27:33)
  sea.br ^bb35
^bb35:
  %v74 = sea.const 0 : i64 loc("_61"("aws-c-common/source/byte_buf.c":66:26))
  %v75 = sea.icmp eq, %v70, %v74 : i64 loc("_61"("aws-c-common/source/byte_buf.c":66:26))
  %v76 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v75, ^bb41(%v76 : i1), ^bb36 loc("aws-c-common/source/byte_buf.c":66:32)
^bb36:
  sea.br ^bb37
^bb37:
  sea.br ^bb38
^bb38:
  %v77 = sea.ptr.null : !sea.ptr<64> loc(".not2.i14.i"("aws-c-common/source/byte_buf.c":66:55))
  %v78 = sea.ptr.cmp eq, %v69, %v77 : !sea.ptr<64> loc(".not2.i14.i"("aws-c-common/source/byte_buf.c":66:55))
  %v79 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v78, ^bb41(%v79 : i1), ^bb39 loc("aws-c-common/source/byte_buf.c":66:67)
^bb39:
  sea.br ^bb40
^bb40:
  %v80 = sea.const 1 : i1
  sea.br ^bb41(%v80 : i1)
^bb41(%v81 : i1):
  sea.br ^bb42
^bb42:
  sea.cond_br %v75, ^bb47, ^bb43 loc("aws-c-common/source/byte_buf.c":66:32)
^bb43:
  sea.br ^bb44
^bb44:
  %v82 = sea.ptr.null : !sea.ptr<64> loc(".not2.i.i")
  %v83 = sea.ptr.cmp ne, %v69, %v82 : !sea.ptr<64> loc(".not2.i.i")
  %v84 = sea.const 1 : i1 loc("or.cond6.not")
  %v85 = sea.and %v83, %v84 : i1 loc("or.cond6.not")
  sea.cond_br %v85, ^bb45, ^bb61
^bb45:
  sea.br ^bb46
^bb46:
  sea.br ^bb47
^bb47:
  %v86 = sea.const 0 : i64 loc("_73"("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":31:17))
  %v87 = sea.icmp slt, %v10, %v86 : i64 loc("_73"("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":31:17))
  %v88 = sea.const 0 : i64 loc("_74")
  %v89 = sea.icmp slt, %v24, %v88 : i64 loc("_74")
  %v90 = sea.const 1 : i1 loc("or.cond.i"("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":31:35))
  %v91 = sea.select %v87, %v90, %v89 : i1 loc("or.cond.i"("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":31:35))
  %v92 = sea.icmp ugt, %v24, %v10 : i64 loc("_75")
  %v93 = sea.const 1 : i1 loc("or.cond6.i"("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":31:35))
  %v94 = sea.select %v91, %v93, %v92 : i1 loc("or.cond6.i"("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":31:35))
  sea.cond_br %v94, ^bb52, ^bb48 loc("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":31:35)
^bb48:
  %v95 = sea.ptr.cmp eq, %v69, %v19 : !sea.ptr<64> loc("_93"("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":38:9))
  sea.cond_br %v95, ^bb49, ^bb61 loc("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":38:9)
^bb49:
  %v96 = sea.icmp eq, %v70, %v24 : i64 loc("_95"("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":39:9))
  sea.cond_br %v96, ^bb50, ^bb61 loc("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":39:9)
^bb50:
  %v97 = sea.ptr.index %v19 [%v24] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_97"("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":40:9))
  %v98 = sea.ptr.cmp eq, %v68, %v97 : !sea.ptr<64> loc("_98"("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":40:9))
  sea.cond_br %v98, ^bb51, ^bb61 loc("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":40:9)
^bb51:
  %v99 = sea.sub %v10, %v24 nsw : i64 loc("_100"("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":41:9))
  %v100 = sea.icmp eq, %v67, %v99 : i64 loc("_101"("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":41:9))
  %v101 = sea.const 1 : i1 loc("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":41:9)
  %v102 = sea.xor %v100, %v101 : i1 loc("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":41:9)
  sea.assume %v102 loc("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":41:9)
  sea.br ^bb61 loc("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":41:9)
^bb52:
  %v103 = sea.ptr.null : !sea.ptr<64> loc("_77"("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":32:9))
  %v104 = sea.ptr.cmp eq, %v69, %v103 : !sea.ptr<64> loc("_77"("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":32:9))
  sea.cond_br %v104, ^bb53, ^bb61 loc("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":32:9)
^bb53:
  sea.cond_br %v75, ^bb54, ^bb61 loc("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":33:9)
^bb54:
  %v105 = sea.const 1 : i1 loc("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":34:13)
  %v106 = sea.xor %v26, %v105 : i1 loc("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":34:13)
  sea.assume %v106 loc("seahorn/jobs/byte_cursor_advance/aws_byte_cursor_advance_harness.c":34:13)
  %v107 = sea.ptr.null : !sea.ptr<64> loc("_80"("seahorn/lib/utils.c":39:7))
  %v108 = sea.ptr.cmp ne, %v68, %v107 : !sea.ptr<64> loc("_80"("seahorn/lib/utils.c":39:7))
  sea.assume %v108 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb55
^bb55:
  %v109 = sea.ptr.index %v68 [%v33] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_82"("seahorn/lib/utils.c":40:5))
  %v110 = sea.const 1 : i64 loc("_83"("seahorn/lib/utils.c":40:5))
  %v111 = sea.ptr.dereferenceable %v109, %v110 : !sea.ptr<64>, i64 loc("_83"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v111, ^bb56, ^bb61
^bb56:
  %v112 = sea.load %v21[%v109] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_85"("seahorn/lib/utils.c":40:5))
  sea.br ^bb57
^bb57:
  %v113 = sea.icmp eq, %v112, %v50 : i8 loc("_87"("seahorn/lib/utils.c":40:5))
  sea.br ^bb58
^bb58:
  %v114 = sea.const 1 : i64 loc("_89"("seahorn/lib/utils.c":40:5))
  %v115 = sea.ptr.dereferenceable %v109, %v114 : !sea.ptr<64>, i64 loc("_89"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v115, ^bb59, ^bb61
^bb59:
  sea.br ^bb60
^bb60:
  %v116 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v117 = sea.xor %v113, %v116 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v117 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb61 loc("seahorn/lib/utils.c":40:5)
^bb61:
  sea.br ^bb62
^bb62:
  %v118 = sea.const 0 : i1
  sea.assert %v118
  sea.halt
}
