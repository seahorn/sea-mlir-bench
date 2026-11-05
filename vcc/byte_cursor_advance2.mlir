// Exported from SeaHorn (byte_cursor_advance2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm10")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm11")
  %v2 = sea.mem.nondet "region.32" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm12")
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
  %v13 = sea.const 10 : i64 loc("malloc.i1")
  %v14 = sea.alloca %v13 align 16 [7] : i64 -> !sea.ptr<64> loc("malloc.i1")
  sea.br ^bb4(%v2, %v14 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb4(%v15 : !sea.mem<!sea.ptr<64>, i8>, %v16 : !sea.ptr<64>):
  %v17 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v18 = sea.memhavoc %v15[%v16], %v17 [8] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v19 = sea.ptr.index %v4 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_9"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb5
^bb5:
  %v20 = sea.store %v8[%v19], %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  %v21 = sea.nondet "nd_size_t" [9] : i64 loc("_10"("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":14:18))
  sea.br ^bb6
^bb6:
  %v22 = sea.const 0 : i64 loc("_12"("aws-c-common/source/byte_buf.c":66:26))
  %v23 = sea.icmp eq, %v7, %v22 : i64 loc("_12"("aws-c-common/source/byte_buf.c":66:26))
  %v24 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v23, ^bb12(%v24 : i1), ^bb7 loc("aws-c-common/source/byte_buf.c":66:32)
^bb7:
  sea.br ^bb8
^bb8:
  sea.br ^bb9
^bb9:
  %v25 = sea.ptr.null : !sea.ptr<64> loc(".not2.i18.i"("aws-c-common/source/byte_buf.c":66:55))
  %v26 = sea.ptr.cmp eq, %v16, %v25 : !sea.ptr<64> loc(".not2.i18.i"("aws-c-common/source/byte_buf.c":66:55))
  %v27 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v26, ^bb12(%v27 : i1), ^bb10 loc("aws-c-common/source/byte_buf.c":66:67)
^bb10:
  sea.br ^bb11
^bb11:
  %v28 = sea.const 1 : i1
  sea.br ^bb12(%v28 : i1)
^bb12(%v29 : i1):
  sea.assume %v29 loc("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":17:5)
  sea.tracking_on loc("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":23:5)
  %v30 = sea.mem.reset_modified %v18[%v16] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":24:5)
  sea.br ^bb13
^bb13:
  %v31 = sea.or %v21, %v7 : i64 loc("_20"("aws-c-common/source/byte_buf.c":1093:39))
  %v32 = sea.const 18446744073709551615 : i64 loc("or.cond.i.i.not"("aws-c-common/source/byte_buf.c":1093:39))
  %v33 = sea.icmp sgt, %v31, %v32 : i64 loc("or.cond.i.i.not"("aws-c-common/source/byte_buf.c":1093:39))
  %v34 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1093:39)
  %v35 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":1093:39)
  sea.cond_br %v33, ^bb14, ^bb25(%v7, %v16, %v34, %v35 : i64, !sea.ptr<64>, !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":1093:39)
^bb14:
  sea.br ^bb15
^bb15:
  %v36 = sea.icmp ult, %v7, %v21 : i64 loc("_23"("aws-c-common/source/byte_buf.c":1093:71))
  %v37 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1093:9)
  %v38 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":1093:9)
  sea.cond_br %v36, ^bb25(%v7, %v16, %v37, %v38 : i64, !sea.ptr<64>, !sea.ptr<64>, i64), ^bb16 loc("aws-c-common/source/byte_buf.c":1093:9)
^bb16:
  sea.br ^bb17
^bb17:
  sea.br ^bb18
^bb18:
  %v39 = sea.ptr.null : !sea.ptr<64> loc("_27"("aws-c-common/source/byte_buf.c":1099:36))
  %v40 = sea.ptr.cmp eq, %v16, %v39 : !sea.ptr<64> loc("_27"("aws-c-common/source/byte_buf.c":1099:36))
  %v41 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1099:23)
  sea.cond_br %v40, ^bb21(%v41 : !sea.ptr<64>), ^bb19 loc("aws-c-common/source/byte_buf.c":1099:23)
^bb19:
  sea.br ^bb20
^bb20:
  %v42 = sea.ptr.index %v16 [%v21] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_30"("aws-c-common/source/byte_buf.c":1099:66))
  sea.br ^bb21(%v42 : !sea.ptr<64>) loc("aws-c-common/source/byte_buf.c":1099:23)
^bb21(%v43 : !sea.ptr<64>):
  sea.br ^bb22
^bb22:
  %v44 = sea.store %v20[%v19], %v43 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1099:21)
  sea.br ^bb23
^bb23:
  sea.br ^bb24
^bb24:
  %v45 = sea.sub %v7, %v21 : i64 loc("_36"("aws-c-common/source/byte_buf.c":1100:21))
  %v46 = sea.store %v44[%v4], %v45 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":1100:21)
  sea.br ^bb25(%v45, %v43, %v16, %v21 : i64, !sea.ptr<64>, !sea.ptr<64>, i64)
^bb25(%v47 : i64, %v48 : !sea.ptr<64>, %v49 : !sea.ptr<64>, %v50 : i64):
  %v51 = sea.store %v1[%v6], %v50 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":27:33)
  %v52 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_39"("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":27:33))
  %v53 = sea.store %v51[%v52], %v49 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":27:33)
  sea.br ^bb26
^bb26:
  %v54 = sea.const 0 : i64 loc("_41"("aws-c-common/source/byte_buf.c":66:26))
  %v55 = sea.icmp eq, %v50, %v54 : i64 loc("_41"("aws-c-common/source/byte_buf.c":66:26))
  %v56 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v55, ^bb32(%v56 : i1), ^bb27 loc("aws-c-common/source/byte_buf.c":66:32)
^bb27:
  sea.br ^bb28
^bb28:
  sea.br ^bb29
^bb29:
  %v57 = sea.ptr.null : !sea.ptr<64> loc(".not2.i14.i"("aws-c-common/source/byte_buf.c":66:55))
  %v58 = sea.ptr.cmp eq, %v49, %v57 : !sea.ptr<64> loc(".not2.i14.i"("aws-c-common/source/byte_buf.c":66:55))
  %v59 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v58, ^bb32(%v59 : i1), ^bb30 loc("aws-c-common/source/byte_buf.c":66:67)
^bb30:
  sea.br ^bb31
^bb31:
  %v60 = sea.const 1 : i1
  sea.br ^bb32(%v60 : i1)
^bb32(%v61 : i1):
  sea.br ^bb33
^bb33:
  sea.cond_br %v55, ^bb38, ^bb34 loc("aws-c-common/source/byte_buf.c":66:32)
^bb34:
  sea.br ^bb35
^bb35:
  %v62 = sea.ptr.null : !sea.ptr<64> loc(".not2.i.i")
  %v63 = sea.ptr.cmp ne, %v49, %v62 : !sea.ptr<64> loc(".not2.i.i")
  %v64 = sea.const 1 : i1 loc("or.cond6.not")
  %v65 = sea.and %v63, %v64 : i1 loc("or.cond6.not")
  sea.cond_br %v65, ^bb36, ^bb46
^bb36:
  sea.br ^bb37
^bb37:
  sea.br ^bb38
^bb38:
  %v66 = sea.const 0 : i64 loc("_53"("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":31:17))
  %v67 = sea.icmp slt, %v7, %v66 : i64 loc("_53"("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":31:17))
  %v68 = sea.const 0 : i64 loc("_54")
  %v69 = sea.icmp slt, %v21, %v68 : i64 loc("_54")
  %v70 = sea.const 1 : i1 loc("or.cond.i"("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":31:35))
  %v71 = sea.select %v67, %v70, %v69 : i1 loc("or.cond.i"("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":31:35))
  %v72 = sea.icmp ugt, %v21, %v7 : i64 loc("_55")
  %v73 = sea.const 1 : i1 loc("or.cond6.i"("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":31:35))
  %v74 = sea.select %v71, %v73, %v72 : i1 loc("or.cond6.i"("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":31:35))
  sea.cond_br %v74, ^bb43, ^bb39 loc("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":31:35)
^bb39:
  %v75 = sea.ptr.cmp eq, %v49, %v16 : !sea.ptr<64> loc("_64"("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":39:9))
  sea.cond_br %v75, ^bb40, ^bb46 loc("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":39:9)
^bb40:
  %v76 = sea.icmp eq, %v50, %v21 : i64 loc("_66"("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":40:9))
  sea.cond_br %v76, ^bb41, ^bb46 loc("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":40:9)
^bb41:
  %v77 = sea.ptr.index %v16 [%v21] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_68"("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":41:9))
  %v78 = sea.ptr.cmp eq, %v48, %v77 : !sea.ptr<64> loc("_69"("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":41:9))
  sea.cond_br %v78, ^bb42, ^bb46 loc("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":41:9)
^bb42:
  %v79 = sea.sub %v7, %v21 nsw : i64 loc("_71"("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":42:9))
  %v80 = sea.icmp eq, %v47, %v79 : i64 loc("_72"("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":42:9))
  %v81 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":42:9)
  %v82 = sea.xor %v80, %v81 : i1 loc("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":42:9)
  sea.assume %v82 loc("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":42:9)
  sea.br ^bb46 loc("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":42:9)
^bb43:
  %v83 = sea.ptr.null : !sea.ptr<64> loc("_57"("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":32:9))
  %v84 = sea.ptr.cmp eq, %v49, %v83 : !sea.ptr<64> loc("_57"("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":32:9))
  sea.cond_br %v84, ^bb44, ^bb46 loc("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":32:9)
^bb44:
  sea.cond_br %v55, ^bb45, ^bb46 loc("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":34:9)
^bb45:
  %v85 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":35:13)
  %v86 = sea.xor %v23, %v85 : i1 loc("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":35:13)
  sea.assume %v86 loc("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":35:13)
  %v87 = sea.mem.is_modified %v30[%v48] : !sea.mem<!sea.ptr<64>, i8> loc("_60"("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":36:13))
  %v88 = sea.const 1 : i1 loc("_61"("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":36:13))
  %v89 = sea.xor %v87, %v88 : i1 loc("_61"("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":36:13))
  %v90 = sea.mem.is_modified %v30[%v48] : !sea.mem<!sea.ptr<64>, i8> loc("_62"("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":36:13))
  sea.assume %v90 loc("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":36:13)
  sea.br ^bb46 loc("seahorn/jobs2/byte_cursor_advance2/aws_byte_cursor_advance_harness2.c":36:13)
^bb46:
  sea.br ^bb47
^bb47:
  %v91 = sea.const 0 : i1
  sea.assert %v91
  sea.halt
}
