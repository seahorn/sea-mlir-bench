// Exported from SeaHorn (byte_cursor_read_u8_2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm8")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm9")
  %v2 = sea.mem.nondet "region.17" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm10")
  %v3 = sea.const 16 : i64 loc("_0")
  %v4 = sea.alloca %v3 align 8 [3] : i64 -> !sea.ptr<64> loc("_0")
  %v5 = sea.nondet "nd_size_t" [4] : i64 loc("_1"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb1
^bb1:
  %v6 = sea.store %v0[%v4], %v5 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb2
^bb2:
  %v7 = sea.const 11 : i64 loc("_4"("seahorn/lib/byte_buf_helper.c":33:24))
  %v8 = sea.icmp ult, %v5, %v7 : i64 loc("_4"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v8 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v9 = sea.nondet "nd_malloc_is_fail" [5] : i1 loc("_5"("seahorn/lib/sea_allocators.c":11:10))
  %v10 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v9, ^bb4(%v1, %v10 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/sea_allocators.c":11:10)
^bb3:
  %v11 = sea.const 10 : i64 loc("malloc.i2")
  %v12 = sea.alloca %v11 align 16 [6] : i64 -> !sea.ptr<64> loc("malloc.i2")
  sea.br ^bb4(%v1, %v12 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb4(%v13 : !sea.mem<!sea.ptr<64>, i8>, %v14 : !sea.ptr<64>):
  %v15 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v16 = sea.memhavoc %v13[%v14], %v15 [7] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v17 = sea.ptr.index %v4 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_8"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb5
^bb5:
  %v18 = sea.store %v6[%v17], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  %v19 = sea.nondet "nd_size_t" [8] : i64 loc("_9"("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":15:21))
  %v20 = sea.const 0 : i64 loc("_10"("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":16:19))
  %v21 = sea.icmp ne, %v19, %v20 : i64 loc("_10"("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":16:19))
  sea.assume %v21 loc("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":16:5)
  %v22 = sea.const 0 : i64 loc("_11"("seahorn/lib/proof_allocators.c":17:15))
  %v23 = sea.icmp eq, %v19, %v22 : i64 loc("_11"("seahorn/lib/proof_allocators.c":17:15))
  %v24 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v23, ^bb9(%v2, %v24 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb6 loc("seahorn/lib/proof_allocators.c":17:10)
^bb6:
  %v25 = sea.nondet "nd_malloc_is_fail" [9] : i1 loc("_13"("seahorn/lib/sea_allocators.c":11:10))
  %v26 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v25, ^bb8(%v2, %v26 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb7 loc("seahorn/lib/sea_allocators.c":11:10)
^bb7:
  %v27 = sea.const 1 : i64 loc("malloc20.i")
  %v28 = sea.mul %v19, %v27 : i64 loc("malloc20.i")
  %v29 = sea.alloca %v28 align 16 [10] : i64 -> !sea.ptr<64> loc("malloc20.i")
  sea.br ^bb8(%v2, %v29 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb8(%v30 : !sea.mem<!sea.ptr<64>, i8>, %v31 : !sea.ptr<64>):
  %v32 = sea.memhavoc %v30[%v31], %v19 [11] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v33 = sea.ptr.null : !sea.ptr<64> loc("_16"("seahorn/lib/sea_allocators.c":45:10))
  %v34 = sea.ptr.cmp ne, %v31, %v33 : !sea.ptr<64> loc("_16"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v34 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb9(%v32, %v31 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb9(%v35 : !sea.mem<!sea.ptr<64>, i8>, %v36 : !sea.ptr<64>):
  sea.br ^bb10
^bb10:
  %v37 = sea.const 0 : i64 loc("_19"("aws-c-common/source/byte_buf.c":66:26))
  %v38 = sea.icmp eq, %v5, %v37 : i64 loc("_19"("aws-c-common/source/byte_buf.c":66:26))
  %v39 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v38, ^bb16(%v39 : i1), ^bb11 loc("aws-c-common/source/byte_buf.c":66:32)
^bb11:
  sea.br ^bb12
^bb12:
  sea.br ^bb13
^bb13:
  %v40 = sea.ptr.null : !sea.ptr<64> loc(".not2.i15.i"("aws-c-common/source/byte_buf.c":66:55))
  %v41 = sea.ptr.cmp eq, %v14, %v40 : !sea.ptr<64> loc(".not2.i15.i"("aws-c-common/source/byte_buf.c":66:55))
  %v42 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v41, ^bb16(%v42 : i1), ^bb14 loc("aws-c-common/source/byte_buf.c":66:67)
^bb14:
  sea.br ^bb15
^bb15:
  %v43 = sea.const 1 : i1
  sea.br ^bb16(%v43 : i1)
^bb16(%v44 : i1):
  sea.assume %v44 loc("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":21:5)
  %v45 = sea.ptr.null : !sea.ptr<64> loc("_26"("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":24:12))
  %v46 = sea.ptr.cmp ne, %v36, %v45 : !sea.ptr<64> loc("_26"("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":24:12))
  sea.assume %v46 loc("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":24:5)
  sea.br ^bb17
^bb17:
  sea.cond_br %v38, ^bb36(%v18 : !sea.mem<!sea.ptr<64>, i8>), ^bb18 loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:28)
^bb18:
  sea.br ^bb19
^bb19:
  %v47 = sea.const 18446744073709551615 : i64 loc("_30"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:69))
  %v48 = sea.icmp sgt, %v5, %v47 : i64 loc("_30"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:69))
  sea.cond_br %v48, ^bb20, ^bb36(%v18 : !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:9)
^bb20:
  sea.br ^bb21
^bb21:
  %v49 = sea.const 1 : i64 loc("_33"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":26:59))
  %v50 = sea.add %v5, %v49 nuw : i64 loc("_33"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":26:59))
  %v51 = sea.const 1 : i64 loc("_34"("aws-c-common/source/byte_buf.c":1030:5))
  %v52 = sea.sub %v5, %v51 : i64 loc("_35"("aws-c-common/source/byte_buf.c":1050:40))
  %v53 = sea.or %v50, %v52 : i64 loc("_36"("aws-c-common/source/byte_buf.c":1051:42))
  %v54 = sea.or %v53, %v51 : i64 loc("_37"("aws-c-common/source/byte_buf.c":1051:42))
  %v55 = sea.const 18446744073709551615 : i64 loc("_38"("aws-c-common/source/byte_buf.c":1064:38))
  %v56 = sea.icmp sgt, %v54, %v55 : i64 loc("_38"("aws-c-common/source/byte_buf.c":1064:38))
  %v57 = sea.zext %v56 : i1 to i64 loc("_39"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":29:19))
  %v58 = sea.ptr.null : !sea.ptr<64> loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":33:23)
  sea.cond_br %v56, ^bb22, ^bb23(%v58 : !sea.ptr<64>) loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":33:23)
^bb22:
  sea.br ^bb23(%v14 : !sea.ptr<64>)
^bb23(%v59 : !sea.ptr<64>):
  sea.br ^bb24
^bb24:
  sea.br ^bb25
^bb25:
  sea.br ^bb26
^bb26:
  sea.br ^bb27
^bb27:
  sea.br ^bb28
^bb28:
  sea.br ^bb29
^bb29:
  %v60 = sea.ptr.index %v59 [%v57] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_49"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":41:21))
  %v61 = sea.store %v18[%v17], %v60 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":41:21)
  sea.br ^bb30
^bb30:
  sea.br ^bb31
^bb31:
  %v62 = sea.const 18446744073709551615 : i64 loc("_51"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":42:21))
  %v63 = sea.add %v5, %v62 nsw : i64 loc("_51"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":42:21))
  %v64 = sea.const 0 : i64 loc("_52"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":42:21))
  %v65 = sea.select %v56, %v63, %v64 : i64 loc("_52"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":42:21))
  %v66 = sea.store %v61[%v4], %v65 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":42:21)
  %v67 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i.i.not"("aws-c-common/source/byte_buf.c":1169:9))
  %v68 = sea.ptr.cmp eq, %v59, %v67 : !sea.ptr<64> loc(".not.i.i.i.not"("aws-c-common/source/byte_buf.c":1169:9))
  sea.cond_br %v68, ^bb36(%v66 : !sea.mem<!sea.ptr<64>, i8>), ^bb32 loc("aws-c-common/source/byte_buf.c":1169:9)
^bb32:
  %v69 = sea.const 1 : i64 loc("_54"("seahorn/lib/bcmp.c":161:3))
  %v70 = sea.ptr.dereferenceable %v36, %v69 : !sea.ptr<64>, i64 loc("_54"("seahorn/lib/bcmp.c":161:3))
  %v71 = sea.const 1 : i64 loc("_55"("seahorn/lib/bcmp.c":161:3))
  %v72 = sea.ptr.dereferenceable %v36, %v71 : !sea.ptr<64>, i64 loc("_55"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v72, ^bb33, ^bb52 loc("seahorn/lib/bcmp.c":161:3)
^bb33:
  %v73 = sea.const 1 : i64 loc("_57"("seahorn/lib/bcmp.c":162:3))
  %v74 = sea.ptr.dereferenceable %v59, %v73 : !sea.ptr<64>, i64 loc("_57"("seahorn/lib/bcmp.c":162:3))
  %v75 = sea.const 1 : i64 loc("_58"("seahorn/lib/bcmp.c":162:3))
  %v76 = sea.ptr.dereferenceable %v59, %v75 : !sea.ptr<64>, i64 loc("_58"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v76, ^bb34, ^bb52 loc("seahorn/lib/bcmp.c":162:3)
^bb34:
  %v77 = sea.load %v16[%v59] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_60"("seahorn/lib/bcmp.c":163:10))
  %v78 = sea.store %v35[%v36], %v77 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/bcmp.c":163:10)
  %v79 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v80 = sea.ptr.cmp ne, %v14, %v79 : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v80, ^bb35, ^bb52 loc("seahorn/lib/utils.c":15:3)
^bb35:
  %v81 = sea.nondet "nd_size_t" [12] : i64 loc("_61"("seahorn/lib/utils.c":17:16))
  %v82 = sea.const 0 : i64 loc("_62"("seahorn/lib/utils.c":19:14))
  %v83 = sea.icmp eq, %v81, %v82 : i64 loc("_62"("seahorn/lib/utils.c":19:14))
  sea.assume %v83 loc("seahorn/lib/utils.c":19:5)
  %v84 = sea.ptr.index %v14 [%v81] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_63"("seahorn/lib/utils.c":20:5))
  %v85 = sea.load %v16[%v84] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_64"("seahorn/lib/utils.c":20:5))
  %v86 = sea.ptr.index %v36 [%v81] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_65"("seahorn/lib/utils.c":20:5))
  %v87 = sea.load %v78[%v86] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_66"("seahorn/lib/utils.c":20:5))
  %v88 = sea.icmp eq, %v85, %v87 : i8 loc("_67"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v88, ^bb36(%v66 : !sea.mem<!sea.ptr<64>, i8>), ^bb52 loc("seahorn/lib/utils.c":20:5)
^bb36(%v89 : !sea.mem<!sea.ptr<64>, i8>):
  sea.br ^bb37
^bb37:
  %v90 = sea.load %v89[%v4] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_69"("aws-c-common/source/byte_buf.c":66:22))
  %v91 = sea.const 0 : i64 loc("_70"("aws-c-common/source/byte_buf.c":66:26))
  %v92 = sea.icmp eq, %v90, %v91 : i64 loc("_70"("aws-c-common/source/byte_buf.c":66:26))
  %v93 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v92, ^bb43(%v93 : i1), ^bb38 loc("aws-c-common/source/byte_buf.c":66:32)
^bb38:
  sea.br ^bb39
^bb39:
  sea.br ^bb40
^bb40:
  %v94 = sea.load %v89[%v17] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_74"("aws-c-common/source/byte_buf.c":66:63))
  %v95 = sea.ptr.null : !sea.ptr<64> loc(".not2.i11.i"("aws-c-common/source/byte_buf.c":66:55))
  %v96 = sea.ptr.cmp eq, %v94, %v95 : !sea.ptr<64> loc(".not2.i11.i"("aws-c-common/source/byte_buf.c":66:55))
  %v97 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v96, ^bb43(%v97 : i1), ^bb41 loc("aws-c-common/source/byte_buf.c":66:67)
^bb41:
  sea.br ^bb42
^bb42:
  %v98 = sea.const 1 : i1
  sea.br ^bb43(%v98 : i1)
^bb43(%v99 : i1):
  sea.br ^bb44
^bb44:
  sea.cond_br %v92, ^bb49, ^bb45 loc("aws-c-common/source/byte_buf.c":66:32)
^bb45:
  sea.br ^bb46
^bb46:
  %v100 = sea.load %v89[%v17] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_81")
  %v101 = sea.ptr.null : !sea.ptr<64> loc(".not2.i.i")
  %v102 = sea.ptr.cmp ne, %v100, %v101 : !sea.ptr<64> loc(".not2.i.i")
  %v103 = sea.const 1 : i1 loc("or.cond8.not")
  %v104 = sea.const 0 : i1 loc("or.cond8.not")
  %v105 = sea.select %v103, %v102, %v104 : i1 loc("or.cond8.not")
  sea.cond_br %v105, ^bb47, ^bb52
^bb47:
  sea.br ^bb48
^bb48:
  sea.br ^bb50(%v100 : !sea.ptr<64>)
^bb49:
  %v106 = sea.load %v89[%v17] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc(".pre"("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":40:9))
  sea.br ^bb50(%v106 : !sea.ptr<64>) loc("aws-c-common/source/byte_buf.c":66:32)
^bb50(%v107 : !sea.ptr<64>):
  %v108 = sea.const 18446744073709551614 : i64 loc("_85"("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":39:39))
  %v109 = sea.add %v5, %v108 : i64 loc("_85"("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":39:39))
  %v110 = sea.const 9223372036854775805 : i64 loc("or.cond.i"("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":39:39))
  %v111 = sea.icmp ult, %v109, %v110 : i64 loc("or.cond.i"("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":39:39))
  sea.assume %v111 loc("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":39:39)
  %v112 = sea.ptr.index %v14 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_86"("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":40:9))
  %v113 = sea.ptr.cmp eq, %v107, %v112 : !sea.ptr<64> loc("_87"("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":40:9))
  sea.cond_br %v113, ^bb51, ^bb52 loc("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":40:9)
^bb51:
  %v114 = sea.const 18446744073709551615 : i64 loc("_89"("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":41:9))
  %v115 = sea.add %v5, %v114 nsw : i64 loc("_89"("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":41:9))
  %v116 = sea.icmp eq, %v90, %v115 : i64 loc("_90"("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":41:9))
  %v117 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":41:9)
  %v118 = sea.xor %v116, %v117 : i1 loc("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":41:9)
  sea.assume %v118 loc("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":41:9)
  sea.br ^bb52 loc("seahorn/jobs2/byte_cursor_read_u8_2/aws_byte_cursor_read_u8_harness2.c":41:9)
^bb52:
  sea.br ^bb53
^bb53:
  %v119 = sea.const 0 : i1
  sea.assert %v119
  sea.halt
}
