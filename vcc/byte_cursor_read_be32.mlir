// Exported from SeaHorn (byte_cursor_read_be32.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm15")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm16")
  %v2 = sea.mem.nondet "region.26" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm17")
  %v3 = sea.mem.nondet "region.25" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm18")
  %v4 = sea.mem.nondet "region.27" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm19")
  %v5 = sea.const 16 : i64 loc("_0")
  %v6 = sea.alloca %v5 align 8 [5] : i64 -> !sea.ptr<64> loc("_0")
  %v7 = sea.const 16 : i64 loc("_1")
  %v8 = sea.alloca %v7 align 8 [6] : i64 -> !sea.ptr<64> loc("_1")
  %v9 = sea.const 4 : i64 loc("_2")
  %v10 = sea.alloca %v9 align 4 [7] : i64 -> !sea.ptr<64> loc("_2")
  %v11 = sea.nondet "nd_size_t" [8] : i64 loc("_3"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb1
^bb1:
  %v12 = sea.store %v0[%v6], %v11 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb2
^bb2:
  %v13 = sea.const 11 : i64 loc("_6"("seahorn/lib/byte_buf_helper.c":33:24))
  %v14 = sea.icmp ult, %v11, %v13 : i64 loc("_6"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v14 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v15 = sea.nondet "nd_malloc_is_fail" [9] : i1 loc("_7"("seahorn/lib/sea_allocators.c":11:10))
  %v16 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v15, ^bb4(%v2, %v16 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/sea_allocators.c":11:10)
^bb3:
  %v17 = sea.const 10 : i64 loc("malloc.i1")
  %v18 = sea.alloca %v17 align 16 [10] : i64 -> !sea.ptr<64> loc("malloc.i1")
  sea.br ^bb4(%v2, %v18 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb4(%v19 : !sea.mem<!sea.ptr<64>, i8>, %v20 : !sea.ptr<64>):
  %v21 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v22 = sea.memhavoc %v19[%v20], %v21 [11] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v23 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_10"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb5
^bb5:
  %v24 = sea.store %v12[%v23], %v20 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  %v25 = sea.nondet "nd_malloc_is_fail" [12] : i1 loc("_11"("seahorn/lib/sea_allocators.c":11:10))
  %v26 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v25, ^bb7(%v4, %v26 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb6 loc("seahorn/lib/sea_allocators.c":11:10)
^bb6:
  %v27 = sea.const 4 : i64 loc("malloc23.i2")
  %v28 = sea.alloca %v27 align 16 [13] : i64 -> !sea.ptr<64> loc("malloc23.i2")
  sea.br ^bb7(%v4, %v28 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb7(%v29 : !sea.mem<!sea.ptr<64>, i8>, %v30 : !sea.ptr<64>):
  %v31 = sea.const 4 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v32 = sea.memhavoc %v29[%v30], %v31 [14] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb8
^bb8:
  %v33 = sea.const 0 : i64 loc("_15"("aws-c-common/source/byte_buf.c":66:26))
  %v34 = sea.icmp eq, %v11, %v33 : i64 loc("_15"("aws-c-common/source/byte_buf.c":66:26))
  %v35 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v34, ^bb14(%v35 : i1), ^bb9 loc("aws-c-common/source/byte_buf.c":66:32)
^bb9:
  sea.br ^bb10
^bb10:
  sea.br ^bb11
^bb11:
  %v36 = sea.ptr.null : !sea.ptr<64> loc(".not2.i15.i"("aws-c-common/source/byte_buf.c":66:55))
  %v37 = sea.ptr.cmp eq, %v20, %v36 : !sea.ptr<64> loc(".not2.i15.i"("aws-c-common/source/byte_buf.c":66:55))
  %v38 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v37, ^bb14(%v38 : i1), ^bb12 loc("aws-c-common/source/byte_buf.c":66:67)
^bb12:
  sea.br ^bb13
^bb13:
  %v39 = sea.const 1 : i1
  sea.br ^bb14(%v39 : i1)
^bb14(%v40 : i1):
  sea.assume %v40 loc("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":18:5)
  %v41 = sea.const 3 : i64 loc("_22"("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":19:20))
  %v42 = sea.icmp ugt, %v11, %v41 : i64 loc("_22"("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":19:20))
  sea.assume %v42 loc("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":19:5)
  %v43 = sea.ptr.null : !sea.ptr<64> loc("_23"("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":20:12))
  %v44 = sea.ptr.cmp ne, %v20, %v43 : !sea.ptr<64> loc("_23"("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":20:12))
  sea.assume %v44 loc("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":20:5)
  %v45 = sea.ptr.null : !sea.ptr<64> loc("_24"("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":21:17))
  %v46 = sea.ptr.cmp ne, %v30, %v45 : !sea.ptr<64> loc("_24"("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":21:17))
  sea.assume %v46 loc("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":21:5)
  %v47 = sea.nondet "nd_size_t" [15] : i64 loc("_25"("seahorn/lib/utils.c":46:20))
  sea.br ^bb15
^bb15:
  %v48 = sea.store %v1[%v8], %v47 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v49 = sea.const 0 : i64 loc("_27"("seahorn/lib/utils.c":47:12))
  %v50 = sea.icmp ne, %v11, %v49 : i64 loc("_27"("seahorn/lib/utils.c":47:12))
  %v51 = sea.and %v50, %v44 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v51, ^bb18, ^bb16 loc("seahorn/lib/utils.c":47:16)
^bb16:
  %v52 = sea.nondet "nd_uint8_t" [16] : i8 loc("_39"("seahorn/lib/utils.c":51:21))
  %v53 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_40"("seahorn/lib/utils.c":51:14))
  sea.br ^bb17
^bb17:
  %v54 = sea.store %v48[%v53], %v52 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb23
^bb18:
  sea.br ^bb19
^bb19:
  %v55 = sea.icmp ult, %v47, %v11 : i64 loc("_30"("seahorn/lib/utils.c":48:27))
  sea.assume %v55 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb20
^bb20:
  %v56 = sea.ptr.index %v20 [%v47] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_32"("seahorn/lib/utils.c":49:21))
  %v57 = sea.const 1 : i64 loc("_33"("seahorn/lib/utils.c":49:21))
  %v58 = sea.ptr.dereferenceable %v56, %v57 : !sea.ptr<64>, i64 loc("_33"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v58, ^bb21, ^bb66
^bb21:
  %v59 = sea.load %v22[%v56] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_35"("seahorn/lib/utils.c":49:21))
  %v60 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_36"("seahorn/lib/utils.c":49:14))
  sea.br ^bb22
^bb22:
  %v61 = sea.store %v48[%v60], %v59 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb23 loc("seahorn/lib/utils.c":50:3)
^bb23:
  sea.br ^bb24 loc("seahorn/lib/bcmp.c":161:3)
^bb24:
  %v62 = sea.const 4 : i64 loc("_43"("seahorn/lib/bcmp.c":162:3))
  %v63 = sea.ptr.dereferenceable %v20, %v62 : !sea.ptr<64>, i64 loc("_43"("seahorn/lib/bcmp.c":162:3))
  %v64 = sea.const 4 : i64 loc("_44"("seahorn/lib/bcmp.c":162:3))
  %v65 = sea.ptr.dereferenceable %v20, %v64 : !sea.ptr<64>, i64 loc("_44"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v65, ^bb25, ^bb66 loc("seahorn/lib/bcmp.c":162:3)
^bb25:
  %v66 = sea.load %v22[%v20] : !sea.mem<!sea.ptr<64>, i8> -> i32 loc("_45"("seahorn/lib/bcmp.c":163:10))
  %v67 = sea.bswap %v66 : i32 loc("_46"("aws-c-common/include/aws/common/byte_order.inl":122:12))
  %v68 = sea.store %v3[%v10], %v67 inplace align 4 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":29:15)
  sea.br ^bb26
^bb26:
  %v69 = sea.const 0 : i1 loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:28)
  sea.cond_br %v42, ^bb27, ^bb44(%v32, %v20, %v11, %v69 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64, i1) loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:28)
^bb27:
  sea.br ^bb28
^bb28:
  %v70 = sea.const 18446744073709551615 : i64 loc("_50"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:69))
  %v71 = sea.icmp sgt, %v11, %v70 : i64 loc("_50"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:69))
  %v72 = sea.const 0 : i1 loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:9)
  sea.cond_br %v71, ^bb29, ^bb44(%v32, %v20, %v11, %v72 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64, i1) loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:9)
^bb29:
  sea.br ^bb30
^bb30:
  %v73 = sea.const 1 : i64 loc("_53"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":26:59))
  %v74 = sea.add %v11, %v73 nuw : i64 loc("_53"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":26:59))
  %v75 = sea.const 4 : i64 loc("_54"("aws-c-common/source/byte_buf.c":1030:5))
  %v76 = sea.sub %v11, %v75 : i64 loc("_55"("aws-c-common/source/byte_buf.c":1050:40))
  %v77 = sea.or %v74, %v76 : i64 loc("_56"("aws-c-common/source/byte_buf.c":1051:42))
  %v78 = sea.or %v77, %v75 : i64 loc("_57"("aws-c-common/source/byte_buf.c":1051:42))
  %v79 = sea.const 18446744073709551615 : i64 loc("_58"("aws-c-common/source/byte_buf.c":1064:38))
  %v80 = sea.icmp sgt, %v78, %v79 : i64 loc("_58"("aws-c-common/source/byte_buf.c":1064:38))
  %v81 = sea.const 61 : i64 loc("_59"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":29:19))
  %v82 = sea.lshr %v78, %v81 : i64 loc("_59"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":29:19))
  %v83 = sea.const 4 : i64 loc("_60"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":29:19))
  %v84 = sea.and %v82, %v83 : i64 loc("_60"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":29:19))
  %v85 = sea.const 4 : i64 loc("_61"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":29:19))
  %v86 = sea.xor %v84, %v85 : i64 loc("_61"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":29:19))
  %v87 = sea.ptr.null : !sea.ptr<64> loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":33:23)
  sea.cond_br %v80, ^bb31, ^bb32(%v87 : !sea.ptr<64>) loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":33:23)
^bb31:
  sea.br ^bb32(%v20 : !sea.ptr<64>)
^bb32(%v88 : !sea.ptr<64>):
  sea.br ^bb33
^bb33:
  sea.br ^bb34
^bb34:
  sea.br ^bb35
^bb35:
  %v89 = sea.const 0 : i64 loc("_68"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":35:35))
  %v90 = sea.select %v80, %v11, %v89 : i64 loc("_68"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":35:35))
  sea.br ^bb36
^bb36:
  sea.br ^bb37
^bb37:
  sea.br ^bb38
^bb38:
  %v91 = sea.ptr.index %v88 [%v86] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_72"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":41:21))
  %v92 = sea.store %v24[%v23], %v91 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":41:21)
  sea.br ^bb39
^bb39:
  sea.br ^bb40
^bb40:
  %v93 = sea.sub %v90, %v86 nsw : i64 loc("_74"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":42:21))
  %v94 = sea.store %v92[%v6], %v93 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":42:21)
  %v95 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i.i.not"("aws-c-common/source/byte_buf.c":1169:9))
  %v96 = sea.ptr.cmp eq, %v88, %v95 : !sea.ptr<64> loc(".not.i.i.i.not"("aws-c-common/source/byte_buf.c":1169:9))
  %v97 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":1169:9)
  sea.cond_br %v96, ^bb44(%v32, %v91, %v93, %v97 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64, i1), ^bb41 loc("aws-c-common/source/byte_buf.c":1169:9)
^bb41:
  %v98 = sea.const 4 : i64 loc("_76"("seahorn/lib/bcmp.c":161:3))
  %v99 = sea.ptr.dereferenceable %v30, %v98 : !sea.ptr<64>, i64 loc("_76"("seahorn/lib/bcmp.c":161:3))
  %v100 = sea.const 4 : i64 loc("_77"("seahorn/lib/bcmp.c":161:3))
  %v101 = sea.ptr.dereferenceable %v30, %v100 : !sea.ptr<64>, i64 loc("_77"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v101, ^bb42, ^bb66 loc("seahorn/lib/bcmp.c":161:3)
^bb42:
  %v102 = sea.const 4 : i64 loc("_79"("seahorn/lib/bcmp.c":162:3))
  %v103 = sea.ptr.dereferenceable %v88, %v102 : !sea.ptr<64>, i64 loc("_79"("seahorn/lib/bcmp.c":162:3))
  %v104 = sea.const 4 : i64 loc("_80"("seahorn/lib/bcmp.c":162:3))
  %v105 = sea.ptr.dereferenceable %v88, %v104 : !sea.ptr<64>, i64 loc("_80"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v105, ^bb43, ^bb66 loc("seahorn/lib/bcmp.c":162:3)
^bb43:
  %v106 = sea.load %v22[%v88] : !sea.mem<!sea.ptr<64>, i8> -> i32 loc("_81"("seahorn/lib/bcmp.c":163:10))
  %v107 = sea.store %v32[%v30], %v106 inplace align 16 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("seahorn/lib/bcmp.c":163:10)
  %v108 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":1173:9)
  sea.br ^bb44(%v107, %v91, %v93, %v108 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64, i1) loc("aws-c-common/source/byte_buf.c":1173:9)
^bb44(%v109 : !sea.mem<!sea.ptr<64>, i8>, %v110 : !sea.ptr<64>, %v111 : i64, %v112 : i1):
  %v113 = sea.zext %v112 : i1 to i64 loc("_84"("aws-c-common/source/byte_buf.c":1280:9))
  %v114 = sea.const 0 : i64 loc(".not.i.i"("aws-c-common/source/byte_buf.c":1280:9))
  %v115 = sea.icmp eq, %v113, %v114 : i64 loc(".not.i.i"("aws-c-common/source/byte_buf.c":1280:9))
  sea.cond_br %v115, ^bb48(%v109 : !sea.mem<!sea.ptr<64>, i8>), ^bb45 loc("aws-c-common/source/byte_buf.c":1280:9)
^bb45:
  %v116 = sea.const 4 : i64 loc("_87"("aws-c-common/source/byte_buf.c":1281:27))
  %v117 = sea.ptr.dereferenceable %v30, %v116 : !sea.ptr<64>, i64 loc("_87"("aws-c-common/source/byte_buf.c":1281:27))
  sea.cond_br %v117, ^bb46, ^bb66
^bb46:
  %v118 = sea.load %v109[%v30] align 4 : !sea.mem<!sea.ptr<64>, i8> -> i32 loc("_88"("aws-c-common/source/byte_buf.c":1281:27))
  %v119 = sea.bswap %v118 : i32 loc("_89"("aws-c-common/include/aws/common/byte_order.inl":122:12))
  %v120 = sea.const 4 : i64 loc("_90"("aws-c-common/source/byte_buf.c":1281:14))
  %v121 = sea.ptr.dereferenceable %v30, %v120 : !sea.ptr<64>, i64 loc("_90"("aws-c-common/source/byte_buf.c":1281:14))
  sea.cond_br %v121, ^bb47, ^bb66
^bb47:
  %v122 = sea.store %v109[%v30], %v119 inplace align 4 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("aws-c-common/source/byte_buf.c":1281:14)
  sea.br ^bb48(%v122 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":1282:5)
^bb48(%v123 : !sea.mem<!sea.ptr<64>, i8>):
  sea.cond_br %v112, ^bb49, ^bb51 loc("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":32:9)
^bb49:
  %v124 = sea.ptr.null : !sea.ptr<64> loc(".not6.i.i.not"("seahorn/lib/utils.c":15:3))
  %v125 = sea.ptr.cmp eq, %v30, %v124 : !sea.ptr<64> loc(".not6.i.i.not"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v125, ^bb66, ^bb50 loc("seahorn/lib/utils.c":15:3)
^bb50:
  %v126 = sea.nondet "nd_size_t" [17] : i64 loc("_93"("seahorn/lib/utils.c":17:16))
  %v127 = sea.const 4 : i64 loc("_94"("seahorn/lib/utils.c":19:14))
  %v128 = sea.icmp ult, %v126, %v127 : i64 loc("_94"("seahorn/lib/utils.c":19:14))
  sea.assume %v128 loc("seahorn/lib/utils.c":19:5)
  %v129 = sea.ptr.index %v10 [%v126] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_95"("seahorn/lib/utils.c":20:5))
  %v130 = sea.load %v68[%v129] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_96"("seahorn/lib/utils.c":20:5))
  %v131 = sea.ptr.index %v30 [%v126] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_97"("seahorn/lib/utils.c":20:5))
  %v132 = sea.load %v123[%v131] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_98"("seahorn/lib/utils.c":20:5))
  %v133 = sea.icmp eq, %v130, %v132 : i8 loc("_99"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v133, ^bb51, ^bb66 loc("seahorn/lib/utils.c":20:5)
^bb51:
  sea.br ^bb52
^bb52:
  %v134 = sea.const 0 : i64 loc("_101"("aws-c-common/source/byte_buf.c":66:26))
  %v135 = sea.icmp eq, %v111, %v134 : i64 loc("_101"("aws-c-common/source/byte_buf.c":66:26))
  %v136 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v135, ^bb58(%v136 : i1), ^bb53 loc("aws-c-common/source/byte_buf.c":66:32)
^bb53:
  sea.br ^bb54
^bb54:
  sea.br ^bb55
^bb55:
  %v137 = sea.ptr.null : !sea.ptr<64> loc(".not2.i11.i"("aws-c-common/source/byte_buf.c":66:55))
  %v138 = sea.ptr.cmp eq, %v110, %v137 : !sea.ptr<64> loc(".not2.i11.i"("aws-c-common/source/byte_buf.c":66:55))
  %v139 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v138, ^bb58(%v139 : i1), ^bb56 loc("aws-c-common/source/byte_buf.c":66:67)
^bb56:
  sea.br ^bb57
^bb57:
  %v140 = sea.const 1 : i1
  sea.br ^bb58(%v140 : i1)
^bb58(%v141 : i1):
  sea.br ^bb59
^bb59:
  sea.cond_br %v135, ^bb64, ^bb60 loc("aws-c-common/source/byte_buf.c":66:32)
^bb60:
  sea.br ^bb61
^bb61:
  %v142 = sea.ptr.null : !sea.ptr<64> loc(".not2.i.i")
  %v143 = sea.ptr.cmp ne, %v110, %v142 : !sea.ptr<64> loc(".not2.i.i")
  %v144 = sea.const 1 : i1 loc("or.cond7.not")
  %v145 = sea.const 0 : i1 loc("or.cond7.not")
  %v146 = sea.select %v144, %v143, %v145 : i1 loc("or.cond7.not")
  sea.cond_br %v146, ^bb62, ^bb66
^bb62:
  sea.br ^bb63
^bb63:
  sea.br ^bb64
^bb64:
  %v147 = sea.const 3 : i64 loc("or.cond.i"("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":38:40))
  %v148 = sea.icmp sgt, %v11, %v147 : i64 loc("or.cond.i"("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":38:40))
  sea.assume %v148 loc("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":38:40)
  %v149 = sea.ptr.index %v20 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_113"("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":43:9))
  %v150 = sea.ptr.cmp eq, %v110, %v149 : !sea.ptr<64> loc("_114"("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":43:9))
  sea.cond_br %v150, ^bb65, ^bb66 loc("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":43:9)
^bb65:
  %v151 = sea.const 18446744073709551612 : i64 loc("_116"("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":44:9))
  %v152 = sea.add %v11, %v151 nsw : i64 loc("_116"("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":44:9))
  %v153 = sea.icmp eq, %v111, %v152 : i64 loc("_117"("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":44:9))
  %v154 = sea.const 1 : i1 loc("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":44:9)
  %v155 = sea.xor %v153, %v154 : i1 loc("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":44:9)
  sea.assume %v155 loc("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":44:9)
  sea.br ^bb66 loc("seahorn/jobs/byte_cursor_read_be32/aws_byte_cursor_read_be32_harness.c":44:9)
^bb66:
  sea.br ^bb67
^bb67:
  %v156 = sea.const 0 : i1
  sea.assert %v156
  sea.halt
}
