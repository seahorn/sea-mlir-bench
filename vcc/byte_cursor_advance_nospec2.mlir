// Exported from SeaHorn (byte_cursor_advance_nospec2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
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
  %v21 = sea.nondet "nd_size_t" [9] : i64 loc("_10"("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":14:18))
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
  sea.assume %v29 loc("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":17:5)
  sea.tracking_on loc("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":24:5)
  %v30 = sea.mem.reset_modified %v18[%v16] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":25:5)
  sea.br ^bb13
^bb13:
  %v31 = sea.icmp uge, %v7, %v21 : i64 loc("_20"("aws-c-common/source/byte_buf.c":1122:13))
  %v32 = sea.const 18446744073709551615 : i64 loc("_21")
  %v33 = sea.icmp sgt, %v21, %v32 : i64 loc("_21")
  %v34 = sea.and %v31, %v33 : i1 loc("or.cond.i.i"("aws-c-common/source/byte_buf.c":1122:28))
  %v35 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1122:28)
  %v36 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":1122:28)
  sea.cond_br %v34, ^bb14, ^bb30(%v7, %v16, %v35, %v36 : i64, !sea.ptr<64>, !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":1122:28)
^bb14:
  sea.br ^bb15
^bb15:
  %v37 = sea.const 18446744073709551615 : i64 loc("_24"("aws-c-common/source/byte_buf.c":1122:69))
  %v38 = sea.icmp sgt, %v7, %v37 : i64 loc("_24"("aws-c-common/source/byte_buf.c":1122:69))
  %v39 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1122:9)
  %v40 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":1122:9)
  sea.cond_br %v38, ^bb16, ^bb30(%v7, %v16, %v39, %v40 : i64, !sea.ptr<64>, !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":1122:9)
^bb16:
  sea.br ^bb17
^bb17:
  %v41 = sea.const 1 : i64 loc("_27"("aws-c-common/source/byte_buf.c":1128:59))
  %v42 = sea.add %v7, %v41 nuw : i64 loc("_27"("aws-c-common/source/byte_buf.c":1128:59))
  %v43 = sea.sub %v7, %v21 : i64 loc("_29"("aws-c-common/source/byte_buf.c":1050:40))
  %v44 = sea.or %v42, %v43 : i64 loc("_30"("aws-c-common/source/byte_buf.c":1051:42))
  %v45 = sea.or %v44, %v21 : i64 loc("_31"("aws-c-common/source/byte_buf.c":1051:42))
  %v46 = sea.const 18446744073709551615 : i64 loc("_32"("aws-c-common/source/byte_buf.c":1064:38))
  %v47 = sea.icmp sgt, %v45, %v46 : i64 loc("_32"("aws-c-common/source/byte_buf.c":1064:38))
  %v48 = sea.sext %v47 : i1 to i64 loc(".neg.i.i.i"("aws-c-common/source/byte_buf.c":1064:38))
  %v49 = sea.and %v21, %v48 : i64 loc("_33"("aws-c-common/source/byte_buf.c":1131:19))
  sea.br ^bb18
^bb18:
  sea.br ^bb19
^bb19:
  %v50 = sea.ptr.to_int %v16 : !sea.ptr<64> to i64 loc("_36"("aws-c-common/source/byte_buf.c":1132:35))
  %v51 = sea.and %v48, %v50 : i64 loc("_37"("aws-c-common/source/byte_buf.c":1132:58))
  %v52 = sea.ptr.from_int %v51 : i64 to !sea.ptr<64> loc("_38"("aws-c-common/source/byte_buf.c":1132:23))
  sea.br ^bb20
^bb20:
  sea.br ^bb21
^bb21:
  %v53 = sea.and %v7, %v48 : i64 loc("_41"("aws-c-common/source/byte_buf.c":1134:35))
  sea.br ^bb22
^bb22:
  sea.br ^bb23
^bb23:
  %v54 = sea.const 0 : i64 loc("_44"("aws-c-common/source/byte_buf.c":1140:36))
  %v55 = sea.icmp eq, %v51, %v54 : i64 loc("_44"("aws-c-common/source/byte_buf.c":1140:36))
  %v56 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1140:23)
  sea.cond_br %v55, ^bb26(%v56 : !sea.ptr<64>), ^bb24 loc("aws-c-common/source/byte_buf.c":1140:23)
^bb24:
  sea.br ^bb25
^bb25:
  %v57 = sea.ptr.index %v52 [%v49] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_47"("aws-c-common/source/byte_buf.c":1140:66))
  sea.br ^bb26(%v57 : !sea.ptr<64>) loc("aws-c-common/source/byte_buf.c":1140:23)
^bb26(%v58 : !sea.ptr<64>):
  sea.br ^bb27
^bb27:
  %v59 = sea.store %v20[%v19], %v58 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1140:21)
  sea.br ^bb28
^bb28:
  sea.br ^bb29
^bb29:
  %v60 = sea.sub %v53, %v49 nsw : i64 loc("_53"("aws-c-common/source/byte_buf.c":1141:21))
  %v61 = sea.store %v59[%v4], %v60 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":1141:21)
  sea.br ^bb30(%v60, %v58, %v52, %v49 : i64, !sea.ptr<64>, !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":1142:5)
^bb30(%v62 : i64, %v63 : !sea.ptr<64>, %v64 : !sea.ptr<64>, %v65 : i64):
  %v66 = sea.store %v1[%v6], %v65 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":28:33)
  %v67 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_56"("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":28:33))
  %v68 = sea.store %v66[%v67], %v64 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":28:33)
  sea.br ^bb31
^bb31:
  %v69 = sea.const 0 : i64 loc("_58"("aws-c-common/source/byte_buf.c":66:26))
  %v70 = sea.icmp eq, %v65, %v69 : i64 loc("_58"("aws-c-common/source/byte_buf.c":66:26))
  %v71 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v70, ^bb37(%v71 : i1), ^bb32 loc("aws-c-common/source/byte_buf.c":66:32)
^bb32:
  sea.br ^bb33
^bb33:
  sea.br ^bb34
^bb34:
  %v72 = sea.ptr.null : !sea.ptr<64> loc(".not2.i14.i"("aws-c-common/source/byte_buf.c":66:55))
  %v73 = sea.ptr.cmp eq, %v64, %v72 : !sea.ptr<64> loc(".not2.i14.i"("aws-c-common/source/byte_buf.c":66:55))
  %v74 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v73, ^bb37(%v74 : i1), ^bb35 loc("aws-c-common/source/byte_buf.c":66:67)
^bb35:
  sea.br ^bb36
^bb36:
  %v75 = sea.const 1 : i1
  sea.br ^bb37(%v75 : i1)
^bb37(%v76 : i1):
  sea.br ^bb38
^bb38:
  sea.cond_br %v70, ^bb43, ^bb39 loc("aws-c-common/source/byte_buf.c":66:32)
^bb39:
  sea.br ^bb40
^bb40:
  %v77 = sea.ptr.null : !sea.ptr<64> loc(".not2.i.i")
  %v78 = sea.ptr.cmp ne, %v64, %v77 : !sea.ptr<64> loc(".not2.i.i")
  %v79 = sea.const 1 : i1 loc("or.cond6.not")
  %v80 = sea.const 0 : i1 loc("or.cond6.not")
  %v81 = sea.select %v79, %v78, %v80 : i1 loc("or.cond6.not")
  sea.cond_br %v81, ^bb41, ^bb51
^bb41:
  sea.br ^bb42
^bb42:
  sea.br ^bb43
^bb43:
  %v82 = sea.const 0 : i64 loc("_70"("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":32:17))
  %v83 = sea.icmp slt, %v7, %v82 : i64 loc("_70"("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":32:17))
  %v84 = sea.const 0 : i64 loc("_71")
  %v85 = sea.icmp slt, %v21, %v84 : i64 loc("_71")
  %v86 = sea.const 1 : i1 loc("or.cond.i"("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":32:35))
  %v87 = sea.select %v83, %v86, %v85 : i1 loc("or.cond.i"("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":32:35))
  %v88 = sea.icmp ugt, %v21, %v7 : i64 loc("_72")
  %v89 = sea.const 1 : i1 loc("or.cond6.i"("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":32:35))
  %v90 = sea.select %v87, %v89, %v88 : i1 loc("or.cond6.i"("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":32:35))
  sea.cond_br %v90, ^bb48, ^bb44 loc("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":32:35)
^bb44:
  %v91 = sea.ptr.cmp eq, %v64, %v16 : !sea.ptr<64> loc("_81"("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":39:9))
  sea.cond_br %v91, ^bb45, ^bb51 loc("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":39:9)
^bb45:
  %v92 = sea.icmp eq, %v65, %v21 : i64 loc("_83"("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":40:9))
  sea.cond_br %v92, ^bb46, ^bb51 loc("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":40:9)
^bb46:
  %v93 = sea.ptr.index %v16 [%v21] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_85"("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":41:9))
  %v94 = sea.ptr.cmp eq, %v63, %v93 : !sea.ptr<64> loc("_86"("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":41:9))
  sea.cond_br %v94, ^bb47, ^bb51 loc("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":41:9)
^bb47:
  %v95 = sea.sub %v7, %v21 nsw : i64 loc("_88"("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":42:9))
  %v96 = sea.icmp eq, %v62, %v95 : i64 loc("_89"("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":42:9))
  %v97 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":42:9)
  %v98 = sea.xor %v96, %v97 : i1 loc("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":42:9)
  sea.assume %v98 loc("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":42:9)
  sea.br ^bb51 loc("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":42:9)
^bb48:
  %v99 = sea.ptr.null : !sea.ptr<64> loc("_74"("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":33:9))
  %v100 = sea.ptr.cmp eq, %v64, %v99 : !sea.ptr<64> loc("_74"("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":33:9))
  sea.cond_br %v100, ^bb49, ^bb51 loc("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":33:9)
^bb49:
  sea.cond_br %v70, ^bb50, ^bb51 loc("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":34:9)
^bb50:
  %v101 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":35:13)
  %v102 = sea.xor %v23, %v101 : i1 loc("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":35:13)
  sea.assume %v102 loc("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":35:13)
  %v103 = sea.mem.is_modified %v30[%v63] : !sea.mem<!sea.ptr<64>, i8> loc("_77"("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":36:13))
  %v104 = sea.const 1 : i1 loc("_78"("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":36:13))
  %v105 = sea.xor %v103, %v104 : i1 loc("_78"("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":36:13))
  %v106 = sea.mem.is_modified %v30[%v63] : !sea.mem<!sea.ptr<64>, i8> loc("_79"("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":36:13))
  sea.assume %v106 loc("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":36:13)
  sea.br ^bb51 loc("seahorn/jobs2/byte_cursor_advance_nospec2/aws_byte_cursor_advance_nospec_harness2.c":36:13)
^bb51:
  sea.br ^bb52
^bb52:
  %v107 = sea.const 0 : i1
  sea.assert %v107
  sea.halt
}
