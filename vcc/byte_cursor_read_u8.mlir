// Exported from SeaHorn (byte_cursor_read_u8.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm12")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm13")
  %v2 = sea.mem.nondet "region.25" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm14")
  %v3 = sea.mem.nondet "region.26" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm15")
  %v4 = sea.const 16 : i64 loc("_0")
  %v5 = sea.alloca %v4 align 8 [4] : i64 -> !sea.ptr<64> loc("_0")
  %v6 = sea.const 16 : i64 loc("_1")
  %v7 = sea.alloca %v6 align 8 [5] : i64 -> !sea.ptr<64> loc("_1")
  %v8 = sea.nondet "nd_size_t" [6] : i64 loc("_2"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb1
^bb1:
  %v9 = sea.store %v0[%v5], %v8 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb2
^bb2:
  %v10 = sea.const 11 : i64 loc("_5"("seahorn/lib/byte_buf_helper.c":33:24))
  %v11 = sea.icmp ult, %v8, %v10 : i64 loc("_5"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v11 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v12 = sea.nondet "nd_malloc_is_fail" [7] : i1 loc("_6"("seahorn/lib/sea_allocators.c":11:10))
  %v13 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v12, ^bb4(%v2, %v13 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/sea_allocators.c":11:10)
^bb3:
  %v14 = sea.const 10 : i64 loc("malloc.i2")
  %v15 = sea.alloca %v14 align 16 [8] : i64 -> !sea.ptr<64> loc("malloc.i2")
  sea.br ^bb4(%v2, %v15 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb4(%v16 : !sea.mem<!sea.ptr<64>, i8>, %v17 : !sea.ptr<64>):
  %v18 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v19 = sea.memhavoc %v16[%v17], %v18 [9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v20 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_9"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb5
^bb5:
  %v21 = sea.store %v9[%v20], %v17 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  %v22 = sea.nondet "nd_size_t" [10] : i64 loc("_10"("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":15:21))
  %v23 = sea.const 0 : i64 loc("_11"("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":16:19))
  %v24 = sea.icmp ne, %v22, %v23 : i64 loc("_11"("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":16:19))
  sea.assume %v24 loc("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":16:5)
  %v25 = sea.const 0 : i64 loc("_12"("seahorn/lib/proof_allocators.c":17:15))
  %v26 = sea.icmp eq, %v22, %v25 : i64 loc("_12"("seahorn/lib/proof_allocators.c":17:15))
  %v27 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v26, ^bb9(%v3, %v27 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb6 loc("seahorn/lib/proof_allocators.c":17:10)
^bb6:
  %v28 = sea.nondet "nd_malloc_is_fail" [11] : i1 loc("_14"("seahorn/lib/sea_allocators.c":11:10))
  %v29 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v28, ^bb8(%v3, %v29 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb7 loc("seahorn/lib/sea_allocators.c":11:10)
^bb7:
  %v30 = sea.const 1 : i64 loc("malloc21.i")
  %v31 = sea.mul %v22, %v30 : i64 loc("malloc21.i")
  %v32 = sea.alloca %v31 align 16 [12] : i64 -> !sea.ptr<64> loc("malloc21.i")
  sea.br ^bb8(%v3, %v32 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb8(%v33 : !sea.mem<!sea.ptr<64>, i8>, %v34 : !sea.ptr<64>):
  %v35 = sea.memhavoc %v33[%v34], %v22 [13] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v36 = sea.ptr.null : !sea.ptr<64> loc("_17"("seahorn/lib/sea_allocators.c":45:10))
  %v37 = sea.ptr.cmp ne, %v34, %v36 : !sea.ptr<64> loc("_17"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v37 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb9(%v35, %v34 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb9(%v38 : !sea.mem<!sea.ptr<64>, i8>, %v39 : !sea.ptr<64>):
  sea.br ^bb10
^bb10:
  %v40 = sea.const 0 : i64 loc("_20"("aws-c-common/source/byte_buf.c":66:26))
  %v41 = sea.icmp eq, %v8, %v40 : i64 loc("_20"("aws-c-common/source/byte_buf.c":66:26))
  %v42 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v41, ^bb16(%v42 : i1), ^bb11 loc("aws-c-common/source/byte_buf.c":66:32)
^bb11:
  sea.br ^bb12
^bb12:
  sea.br ^bb13
^bb13:
  %v43 = sea.ptr.null : !sea.ptr<64> loc(".not2.i15.i"("aws-c-common/source/byte_buf.c":66:55))
  %v44 = sea.ptr.cmp eq, %v17, %v43 : !sea.ptr<64> loc(".not2.i15.i"("aws-c-common/source/byte_buf.c":66:55))
  %v45 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v44, ^bb16(%v45 : i1), ^bb14 loc("aws-c-common/source/byte_buf.c":66:67)
^bb14:
  sea.br ^bb15
^bb15:
  %v46 = sea.const 1 : i1
  sea.br ^bb16(%v46 : i1)
^bb16(%v47 : i1):
  sea.assume %v47 loc("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":21:5)
  %v48 = sea.ptr.null : !sea.ptr<64> loc("_27"("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":24:12))
  %v49 = sea.ptr.cmp ne, %v39, %v48 : !sea.ptr<64> loc("_27"("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":24:12))
  sea.assume %v49 loc("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":24:5)
  %v50 = sea.nondet "nd_size_t" [14] : i64 loc("_28"("seahorn/lib/utils.c":46:20))
  sea.br ^bb17
^bb17:
  %v51 = sea.store %v1[%v7], %v50 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v52 = sea.const 0 : i64 loc("_30"("seahorn/lib/utils.c":47:12))
  %v53 = sea.icmp ne, %v8, %v52 : i64 loc("_30"("seahorn/lib/utils.c":47:12))
  %v54 = sea.ptr.null : !sea.ptr<64> loc("_31")
  %v55 = sea.ptr.cmp ne, %v17, %v54 : !sea.ptr<64> loc("_31")
  %v56 = sea.and %v53, %v55 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v56, ^bb20, ^bb18 loc("seahorn/lib/utils.c":47:16)
^bb18:
  %v57 = sea.nondet "nd_uint8_t" [15] : i8 loc("_43"("seahorn/lib/utils.c":51:21))
  %v58 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_44"("seahorn/lib/utils.c":51:14))
  sea.br ^bb19
^bb19:
  %v59 = sea.store %v51[%v58], %v57 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb25
^bb20:
  sea.br ^bb21
^bb21:
  %v60 = sea.icmp ult, %v50, %v8 : i64 loc("_34"("seahorn/lib/utils.c":48:27))
  sea.assume %v60 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb22
^bb22:
  %v61 = sea.ptr.index %v17 [%v50] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_36"("seahorn/lib/utils.c":49:21))
  %v62 = sea.const 1 : i64 loc("_37"("seahorn/lib/utils.c":49:21))
  %v63 = sea.ptr.dereferenceable %v61, %v62 : !sea.ptr<64>, i64 loc("_37"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v63, ^bb23, ^bb61
^bb23:
  %v64 = sea.load %v19[%v61] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_39"("seahorn/lib/utils.c":49:21))
  %v65 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_40"("seahorn/lib/utils.c":49:14))
  sea.br ^bb24
^bb24:
  %v66 = sea.store %v51[%v65], %v64 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb25 loc("seahorn/lib/utils.c":50:3)
^bb25:
  sea.br ^bb26
^bb26:
  sea.cond_br %v41, ^bb45(%v21 : !sea.mem<!sea.ptr<64>, i8>), ^bb27 loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:28)
^bb27:
  sea.br ^bb28
^bb28:
  %v67 = sea.const 18446744073709551615 : i64 loc("_49"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:69))
  %v68 = sea.icmp sgt, %v8, %v67 : i64 loc("_49"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:69))
  sea.cond_br %v68, ^bb29, ^bb45(%v21 : !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:9)
^bb29:
  sea.br ^bb30
^bb30:
  %v69 = sea.const 1 : i64 loc("_52"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":26:59))
  %v70 = sea.add %v8, %v69 nuw : i64 loc("_52"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":26:59))
  %v71 = sea.const 1 : i64 loc("_53"("aws-c-common/source/byte_buf.c":1030:5))
  %v72 = sea.sub %v8, %v71 : i64 loc("_54"("aws-c-common/source/byte_buf.c":1050:40))
  %v73 = sea.or %v70, %v72 : i64 loc("_55"("aws-c-common/source/byte_buf.c":1051:42))
  %v74 = sea.or %v73, %v71 : i64 loc("_56"("aws-c-common/source/byte_buf.c":1051:42))
  %v75 = sea.const 18446744073709551615 : i64 loc("_57"("aws-c-common/source/byte_buf.c":1064:38))
  %v76 = sea.icmp sgt, %v74, %v75 : i64 loc("_57"("aws-c-common/source/byte_buf.c":1064:38))
  %v77 = sea.zext %v76 : i1 to i64 loc("_58"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":29:19))
  %v78 = sea.ptr.null : !sea.ptr<64> loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":33:23)
  sea.cond_br %v76, ^bb31, ^bb32(%v78 : !sea.ptr<64>) loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":33:23)
^bb31:
  sea.br ^bb32(%v17 : !sea.ptr<64>)
^bb32(%v79 : !sea.ptr<64>):
  sea.br ^bb33
^bb33:
  sea.br ^bb34
^bb34:
  sea.br ^bb35
^bb35:
  sea.br ^bb36
^bb36:
  sea.br ^bb37
^bb37:
  sea.br ^bb38
^bb38:
  %v80 = sea.ptr.index %v79 [%v77] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_68"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":41:21))
  %v81 = sea.store %v21[%v20], %v80 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":41:21)
  sea.br ^bb39
^bb39:
  sea.br ^bb40
^bb40:
  %v82 = sea.const 18446744073709551615 : i64 loc("_70"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":42:21))
  %v83 = sea.add %v8, %v82 nsw : i64 loc("_70"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":42:21))
  %v84 = sea.const 0 : i64 loc("_71"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":42:21))
  %v85 = sea.select %v76, %v83, %v84 : i64 loc("_71"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":42:21))
  %v86 = sea.store %v81[%v5], %v85 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":42:21)
  %v87 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i.i.not"("aws-c-common/source/byte_buf.c":1169:9))
  %v88 = sea.ptr.cmp eq, %v79, %v87 : !sea.ptr<64> loc(".not.i.i.i.not"("aws-c-common/source/byte_buf.c":1169:9))
  sea.cond_br %v88, ^bb45(%v86 : !sea.mem<!sea.ptr<64>, i8>), ^bb41 loc("aws-c-common/source/byte_buf.c":1169:9)
^bb41:
  %v89 = sea.const 1 : i64 loc("_73"("seahorn/lib/bcmp.c":161:3))
  %v90 = sea.ptr.dereferenceable %v39, %v89 : !sea.ptr<64>, i64 loc("_73"("seahorn/lib/bcmp.c":161:3))
  %v91 = sea.const 1 : i64 loc("_74"("seahorn/lib/bcmp.c":161:3))
  %v92 = sea.ptr.dereferenceable %v39, %v91 : !sea.ptr<64>, i64 loc("_74"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v92, ^bb42, ^bb61 loc("seahorn/lib/bcmp.c":161:3)
^bb42:
  %v93 = sea.const 1 : i64 loc("_76"("seahorn/lib/bcmp.c":162:3))
  %v94 = sea.ptr.dereferenceable %v79, %v93 : !sea.ptr<64>, i64 loc("_76"("seahorn/lib/bcmp.c":162:3))
  %v95 = sea.const 1 : i64 loc("_77"("seahorn/lib/bcmp.c":162:3))
  %v96 = sea.ptr.dereferenceable %v79, %v95 : !sea.ptr<64>, i64 loc("_77"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v96, ^bb43, ^bb61 loc("seahorn/lib/bcmp.c":162:3)
^bb43:
  %v97 = sea.load %v19[%v79] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_79"("seahorn/lib/bcmp.c":163:10))
  %v98 = sea.store %v38[%v39], %v97 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/bcmp.c":163:10)
  sea.cond_br %v55, ^bb44, ^bb61 loc("seahorn/lib/utils.c":15:3)
^bb44:
  %v99 = sea.nondet "nd_size_t" [16] : i64 loc("_80"("seahorn/lib/utils.c":17:16))
  %v100 = sea.const 0 : i64 loc("_81"("seahorn/lib/utils.c":19:14))
  %v101 = sea.icmp eq, %v99, %v100 : i64 loc("_81"("seahorn/lib/utils.c":19:14))
  sea.assume %v101 loc("seahorn/lib/utils.c":19:5)
  %v102 = sea.ptr.index %v17 [%v99] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_82"("seahorn/lib/utils.c":20:5))
  %v103 = sea.load %v19[%v102] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_83"("seahorn/lib/utils.c":20:5))
  %v104 = sea.ptr.index %v39 [%v99] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_84"("seahorn/lib/utils.c":20:5))
  %v105 = sea.load %v98[%v104] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_85"("seahorn/lib/utils.c":20:5))
  %v106 = sea.icmp eq, %v103, %v105 : i8 loc("_86"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v106, ^bb45(%v86 : !sea.mem<!sea.ptr<64>, i8>), ^bb61 loc("seahorn/lib/utils.c":20:5)
^bb45(%v107 : !sea.mem<!sea.ptr<64>, i8>):
  sea.br ^bb46
^bb46:
  %v108 = sea.load %v107[%v5] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_88"("aws-c-common/source/byte_buf.c":66:22))
  %v109 = sea.const 0 : i64 loc("_89"("aws-c-common/source/byte_buf.c":66:26))
  %v110 = sea.icmp eq, %v108, %v109 : i64 loc("_89"("aws-c-common/source/byte_buf.c":66:26))
  %v111 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v110, ^bb52(%v111 : i1), ^bb47 loc("aws-c-common/source/byte_buf.c":66:32)
^bb47:
  sea.br ^bb48
^bb48:
  sea.br ^bb49
^bb49:
  %v112 = sea.load %v107[%v20] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_93"("aws-c-common/source/byte_buf.c":66:63))
  %v113 = sea.ptr.null : !sea.ptr<64> loc(".not2.i11.i"("aws-c-common/source/byte_buf.c":66:55))
  %v114 = sea.ptr.cmp eq, %v112, %v113 : !sea.ptr<64> loc(".not2.i11.i"("aws-c-common/source/byte_buf.c":66:55))
  %v115 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v114, ^bb52(%v115 : i1), ^bb50 loc("aws-c-common/source/byte_buf.c":66:67)
^bb50:
  sea.br ^bb51
^bb51:
  %v116 = sea.const 1 : i1
  sea.br ^bb52(%v116 : i1)
^bb52(%v117 : i1):
  sea.br ^bb53
^bb53:
  sea.cond_br %v110, ^bb58, ^bb54 loc("aws-c-common/source/byte_buf.c":66:32)
^bb54:
  sea.br ^bb55
^bb55:
  %v118 = sea.load %v107[%v20] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_100")
  %v119 = sea.ptr.null : !sea.ptr<64> loc(".not2.i.i")
  %v120 = sea.ptr.cmp ne, %v118, %v119 : !sea.ptr<64> loc(".not2.i.i")
  %v121 = sea.const 1 : i1 loc("or.cond8.not")
  %v122 = sea.const 0 : i1 loc("or.cond8.not")
  %v123 = sea.select %v121, %v120, %v122 : i1 loc("or.cond8.not")
  sea.cond_br %v123, ^bb56, ^bb61
^bb56:
  sea.br ^bb57
^bb57:
  sea.br ^bb59(%v118 : !sea.ptr<64>)
^bb58:
  %v124 = sea.load %v107[%v20] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc(".pre"("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":42:9))
  sea.br ^bb59(%v124 : !sea.ptr<64>) loc("aws-c-common/source/byte_buf.c":66:32)
^bb59(%v125 : !sea.ptr<64>):
  %v126 = sea.const 18446744073709551614 : i64 loc("_104"("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":41:39))
  %v127 = sea.add %v8, %v126 : i64 loc("_104"("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":41:39))
  %v128 = sea.const 9223372036854775805 : i64 loc("or.cond.i"("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":41:39))
  %v129 = sea.icmp ult, %v127, %v128 : i64 loc("or.cond.i"("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":41:39))
  sea.assume %v129 loc("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":41:39)
  %v130 = sea.ptr.index %v17 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_105"("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":42:9))
  %v131 = sea.ptr.cmp eq, %v125, %v130 : !sea.ptr<64> loc("_106"("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":42:9))
  sea.cond_br %v131, ^bb60, ^bb61 loc("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":42:9)
^bb60:
  %v132 = sea.const 18446744073709551615 : i64 loc("_108"("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":43:9))
  %v133 = sea.add %v8, %v132 nsw : i64 loc("_108"("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":43:9))
  %v134 = sea.icmp eq, %v108, %v133 : i64 loc("_109"("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":43:9))
  %v135 = sea.const 1 : i1 loc("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":43:9)
  %v136 = sea.xor %v134, %v135 : i1 loc("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":43:9)
  sea.assume %v136 loc("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":43:9)
  sea.br ^bb61 loc("seahorn/jobs/byte_cursor_read_u8/aws_byte_cursor_read_u8_harness.c":43:9)
^bb61:
  sea.br ^bb62
^bb62:
  %v137 = sea.const 0 : i1
  sea.assert %v137
  sea.halt
}
