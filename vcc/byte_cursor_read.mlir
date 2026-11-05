// Exported from SeaHorn (byte_cursor_read.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm12")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm13")
  %v2 = sea.mem.nondet "region.25" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm14")
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
  %v13 = sea.const 10 : i64 loc("malloc.i2")
  %v14 = sea.alloca %v13 align 16 [7] : i64 -> !sea.ptr<64> loc("malloc.i2")
  sea.br ^bb4(%v2, %v14 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb4(%v15 : !sea.mem<!sea.ptr<64>, i8>, %v16 : !sea.ptr<64>):
  %v17 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v18 = sea.memhavoc %v15[%v16], %v17 [8] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v19 = sea.ptr.index %v4 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_9"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb5
^bb5:
  %v20 = sea.store %v8[%v19], %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  %v21 = sea.nondet "nd_size_t" [9] : i64 loc("_10"("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":15:21))
  %v22 = sea.const 11 : i64 loc("_11"("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":16:19))
  %v23 = sea.icmp ult, %v21, %v22 : i64 loc("_11"("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":16:19))
  sea.assume %v23 loc("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":16:5)
  %v24 = sea.const 0 : i64 loc("_12"("seahorn/lib/proof_allocators.c":17:15))
  %v25 = sea.icmp eq, %v21, %v24 : i64 loc("_12"("seahorn/lib/proof_allocators.c":17:15))
  %v26 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v25, ^bb9(%v18, %v26 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb6 loc("seahorn/lib/proof_allocators.c":17:10)
^bb6:
  %v27 = sea.nondet "nd_malloc_is_fail" [10] : i1 loc("_14"("seahorn/lib/sea_allocators.c":11:10))
  %v28 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v27, ^bb8(%v18, %v28 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb7 loc("seahorn/lib/sea_allocators.c":11:10)
^bb7:
  %v29 = sea.const 1 : i64 loc("malloc28.i")
  %v30 = sea.mul %v21, %v29 : i64 loc("malloc28.i")
  %v31 = sea.alloca %v30 align 16 [11] : i64 -> !sea.ptr<64> loc("malloc28.i")
  sea.br ^bb8(%v18, %v31 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb8(%v32 : !sea.mem<!sea.ptr<64>, i8>, %v33 : !sea.ptr<64>):
  %v34 = sea.memhavoc %v32[%v33], %v21 [12] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v35 = sea.ptr.null : !sea.ptr<64> loc("_17"("seahorn/lib/sea_allocators.c":45:10))
  %v36 = sea.ptr.cmp ne, %v33, %v35 : !sea.ptr<64> loc("_17"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v36 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb9(%v34, %v33 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb9(%v37 : !sea.mem<!sea.ptr<64>, i8>, %v38 : !sea.ptr<64>):
  sea.br ^bb10
^bb10:
  %v39 = sea.const 0 : i64 loc("_20"("aws-c-common/source/byte_buf.c":66:26))
  %v40 = sea.icmp eq, %v7, %v39 : i64 loc("_20"("aws-c-common/source/byte_buf.c":66:26))
  %v41 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v40, ^bb16(%v41 : i1), ^bb11 loc("aws-c-common/source/byte_buf.c":66:32)
^bb11:
  sea.br ^bb12
^bb12:
  sea.br ^bb13
^bb13:
  %v42 = sea.ptr.null : !sea.ptr<64> loc(".not2.i18.i"("aws-c-common/source/byte_buf.c":66:55))
  %v43 = sea.ptr.cmp eq, %v16, %v42 : !sea.ptr<64> loc(".not2.i18.i"("aws-c-common/source/byte_buf.c":66:55))
  %v44 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v43, ^bb16(%v44 : i1), ^bb14 loc("aws-c-common/source/byte_buf.c":66:67)
^bb14:
  sea.br ^bb15
^bb15:
  %v45 = sea.const 1 : i1
  sea.br ^bb16(%v45 : i1)
^bb16(%v46 : i1):
  sea.assume %v46 loc("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":20:5)
  %v47 = sea.ptr.null : !sea.ptr<64> loc("_27"("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":23:12))
  %v48 = sea.ptr.cmp ne, %v38, %v47 : !sea.ptr<64> loc("_27"("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":23:12))
  %v49 = sea.or %v25, %v48 : i1 loc("_28"("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":23:12))
  sea.assume %v49 loc("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":23:5)
  %v50 = sea.nondet "nd_size_t" [13] : i64 loc("_29"("seahorn/lib/utils.c":46:20))
  sea.br ^bb17
^bb17:
  %v51 = sea.store %v1[%v6], %v50 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v52 = sea.const 0 : i64 loc("_31"("seahorn/lib/utils.c":47:12))
  %v53 = sea.icmp ne, %v7, %v52 : i64 loc("_31"("seahorn/lib/utils.c":47:12))
  %v54 = sea.ptr.null : !sea.ptr<64> loc("_32")
  %v55 = sea.ptr.cmp ne, %v16, %v54 : !sea.ptr<64> loc("_32")
  %v56 = sea.and %v53, %v55 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v56, ^bb20, ^bb18 loc("seahorn/lib/utils.c":47:16)
^bb18:
  %v57 = sea.nondet "nd_uint8_t" [14] : i8 loc("_44"("seahorn/lib/utils.c":51:21))
  %v58 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_45"("seahorn/lib/utils.c":51:14))
  sea.br ^bb19
^bb19:
  %v59 = sea.store %v51[%v58], %v57 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb25(%v59 : !sea.mem<!sea.ptr<64>, i8>)
^bb20:
  sea.br ^bb21
^bb21:
  %v60 = sea.icmp ult, %v50, %v7 : i64 loc("_35"("seahorn/lib/utils.c":48:27))
  sea.assume %v60 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb22
^bb22:
  %v61 = sea.ptr.index %v16 [%v50] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_37"("seahorn/lib/utils.c":49:21))
  %v62 = sea.const 1 : i64 loc("_38"("seahorn/lib/utils.c":49:21))
  %v63 = sea.ptr.dereferenceable %v61, %v62 : !sea.ptr<64>, i64 loc("_38"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v63, ^bb23, ^bb72
^bb23:
  %v64 = sea.load %v37[%v61] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_40"("seahorn/lib/utils.c":49:21))
  %v65 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_41"("seahorn/lib/utils.c":49:14))
  sea.br ^bb24
^bb24:
  %v66 = sea.store %v51[%v65], %v64 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb25(%v66 : !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/lib/utils.c":50:3)
^bb25(%v67 : !sea.mem<!sea.ptr<64>, i8>):
  sea.cond_br %v25, ^bb45(%v37, %v20 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>), ^bb26 loc("aws-c-common/source/byte_buf.c":1163:9)
^bb26:
  sea.br ^bb27
^bb27:
  %v68 = sea.icmp uge, %v7, %v21 : i64 loc("_49"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:13))
  %v69 = sea.const 18446744073709551615 : i64 loc("_50")
  %v70 = sea.icmp sgt, %v21, %v69 : i64 loc("_50")
  %v71 = sea.and %v68, %v70 : i1 loc("or.cond.i26.i"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:28))
  sea.cond_br %v71, ^bb28, ^bb49(%v37, %v20 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:28)
^bb28:
  sea.br ^bb29
^bb29:
  %v72 = sea.const 18446744073709551615 : i64 loc("_53"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:69))
  %v73 = sea.icmp sgt, %v7, %v72 : i64 loc("_53"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:69))
  sea.cond_br %v73, ^bb30, ^bb49(%v37, %v20 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:9)
^bb30:
  sea.br ^bb31
^bb31:
  %v74 = sea.const 1 : i64 loc("_56"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":26:59))
  %v75 = sea.add %v7, %v74 nuw : i64 loc("_56"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":26:59))
  %v76 = sea.sub %v7, %v21 : i64 loc("_58"("aws-c-common/source/byte_buf.c":1050:40))
  %v77 = sea.or %v75, %v76 : i64 loc("_59"("aws-c-common/source/byte_buf.c":1051:42))
  %v78 = sea.or %v77, %v21 : i64 loc("_60"("aws-c-common/source/byte_buf.c":1051:42))
  %v79 = sea.const 18446744073709551615 : i64 loc("_61"("aws-c-common/source/byte_buf.c":1064:38))
  %v80 = sea.icmp sgt, %v78, %v79 : i64 loc("_61"("aws-c-common/source/byte_buf.c":1064:38))
  %v81 = sea.sext %v80 : i1 to i64 loc(".neg.i.i.i"("aws-c-common/source/byte_buf.c":1064:38))
  %v82 = sea.and %v21, %v81 : i64 loc("_62"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":29:19))
  %v83 = sea.ptr.null : !sea.ptr<64> loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":33:23)
  sea.cond_br %v80, ^bb32, ^bb33(%v83 : !sea.ptr<64>) loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":33:23)
^bb32:
  sea.br ^bb33(%v16 : !sea.ptr<64>)
^bb33(%v84 : !sea.ptr<64>):
  sea.br ^bb34
^bb34:
  sea.br ^bb35
^bb35:
  sea.br ^bb36
^bb36:
  %v85 = sea.and %v7, %v81 : i64 loc("_69"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":35:35))
  sea.br ^bb37
^bb37:
  sea.br ^bb38
^bb38:
  sea.br ^bb39
^bb39:
  %v86 = sea.ptr.index %v84 [%v82] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_73"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":41:21))
  %v87 = sea.store %v20[%v19], %v86 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":41:21)
  sea.br ^bb40
^bb40:
  sea.br ^bb41
^bb41:
  %v88 = sea.sub %v85, %v82 nsw : i64 loc("_75"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":42:21))
  %v89 = sea.store %v87[%v4], %v88 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":42:21)
  %v90 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i.not"("aws-c-common/source/byte_buf.c":1169:9))
  %v91 = sea.ptr.cmp eq, %v84, %v90 : !sea.ptr<64> loc(".not.i.i.not"("aws-c-common/source/byte_buf.c":1169:9))
  sea.cond_br %v91, ^bb49(%v37, %v89 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>), ^bb42 loc("aws-c-common/source/byte_buf.c":1169:9)
^bb42:
  %v92 = sea.ptr.dereferenceable %v38, %v21 : !sea.ptr<64>, i64 loc("_77"("seahorn/lib/bcmp.c":161:3))
  %v93 = sea.ptr.dereferenceable %v38, %v21 : !sea.ptr<64>, i64 loc("_78"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v93, ^bb43, ^bb72 loc("seahorn/lib/bcmp.c":161:3)
^bb43:
  %v94 = sea.ptr.dereferenceable %v84, %v21 : !sea.ptr<64>, i64 loc("_80"("seahorn/lib/bcmp.c":162:3))
  %v95 = sea.ptr.dereferenceable %v84, %v21 : !sea.ptr<64>, i64 loc("_81"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v95, ^bb44, ^bb72 loc("seahorn/lib/bcmp.c":162:3)
^bb44:
  %v96 = sea.memmove %v37[%v38], %v37[%v84], %v21 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb45(%v96, %v89 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":1173:9)
^bb45(%v97 : !sea.mem<!sea.ptr<64>, i8>, %v98 : !sea.mem<!sea.ptr<64>, i8>):
  %v99 = sea.ptr.null : !sea.ptr<64> loc(".not.i23.i"("seahorn/lib/utils.c":15:3))
  %v100 = sea.ptr.cmp eq, %v16, %v99 : !sea.ptr<64> loc(".not.i23.i"("seahorn/lib/utils.c":15:3))
  %v101 = sea.xor %v100, %v48 : i1 loc("_82"("seahorn/lib/utils.c":15:3))
  %v102 = sea.or %v25, %v101 : i1 loc("_83"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v25, ^bb49(%v97, %v98 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>), ^bb46 loc("seahorn/lib/utils.c":15:3)
^bb46:
  sea.cond_br %v101, ^bb47, ^bb72 loc("seahorn/lib/utils.c":15:3)
^bb47:
  %v103 = sea.and %v55, %v48 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v103, ^bb48, ^bb49(%v97, %v98 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/lib/utils.c":16:15)
^bb48:
  %v104 = sea.nondet "nd_size_t" [15] : i64 loc("_86"("seahorn/lib/utils.c":17:16))
  %v105 = sea.icmp ult, %v104, %v21 : i64 loc("_87"("seahorn/lib/utils.c":19:14))
  %v106 = sea.const 36028797018963967 : i64 loc("_88"("seahorn/lib/utils.c":19:20))
  %v107 = sea.icmp ult, %v21, %v106 : i64 loc("_88"("seahorn/lib/utils.c":19:20))
  %v108 = sea.and %v107, %v105 : i1 loc("_89"("seahorn/lib/utils.c":19:20))
  sea.assume %v108 loc("seahorn/lib/utils.c":19:5)
  %v109 = sea.ptr.index %v16 [%v104] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_90"("seahorn/lib/utils.c":20:5))
  %v110 = sea.load %v97[%v109] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_91"("seahorn/lib/utils.c":20:5))
  %v111 = sea.ptr.index %v38 [%v104] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_92"("seahorn/lib/utils.c":20:5))
  %v112 = sea.load %v97[%v111] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_93"("seahorn/lib/utils.c":20:5))
  %v113 = sea.icmp eq, %v110, %v112 : i8 loc("_94"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v113, ^bb49(%v97, %v98 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>), ^bb72 loc("seahorn/lib/utils.c":20:5)
^bb49(%v114 : !sea.mem<!sea.ptr<64>, i8>, %v115 : !sea.mem<!sea.ptr<64>, i8>):
  sea.br ^bb50
^bb50:
  %v116 = sea.load %v115[%v4] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_96"("aws-c-common/source/byte_buf.c":66:22))
  %v117 = sea.const 0 : i64 loc("_97"("aws-c-common/source/byte_buf.c":66:26))
  %v118 = sea.icmp eq, %v116, %v117 : i64 loc("_97"("aws-c-common/source/byte_buf.c":66:26))
  %v119 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v118, ^bb56(%v119 : i1), ^bb51 loc("aws-c-common/source/byte_buf.c":66:32)
^bb51:
  sea.br ^bb52
^bb52:
  sea.br ^bb53
^bb53:
  %v120 = sea.load %v115[%v19] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_101"("aws-c-common/source/byte_buf.c":66:63))
  %v121 = sea.ptr.null : !sea.ptr<64> loc(".not2.i14.i"("aws-c-common/source/byte_buf.c":66:55))
  %v122 = sea.ptr.cmp eq, %v120, %v121 : !sea.ptr<64> loc(".not2.i14.i"("aws-c-common/source/byte_buf.c":66:55))
  %v123 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v122, ^bb56(%v123 : i1), ^bb54 loc("aws-c-common/source/byte_buf.c":66:67)
^bb54:
  sea.br ^bb55
^bb55:
  %v124 = sea.const 1 : i1
  sea.br ^bb56(%v124 : i1)
^bb56(%v125 : i1):
  sea.br ^bb57
^bb57:
  sea.cond_br %v118, ^bb62, ^bb58 loc("aws-c-common/source/byte_buf.c":66:32)
^bb58:
  sea.br ^bb59
^bb59:
  %v126 = sea.load %v115[%v19] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_108")
  %v127 = sea.ptr.null : !sea.ptr<64> loc(".not2.i.i")
  %v128 = sea.ptr.cmp ne, %v126, %v127 : !sea.ptr<64> loc(".not2.i.i")
  %v129 = sea.const 1 : i1 loc("or.cond8.not")
  %v130 = sea.const 0 : i1 loc("or.cond8.not")
  %v131 = sea.select %v129, %v128, %v130 : i1 loc("or.cond8.not")
  sea.cond_br %v131, ^bb60, ^bb72
^bb60:
  sea.br ^bb61
^bb61:
  sea.br ^bb62
^bb62:
  %v132 = sea.const 0 : i64 loc("_111"("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":40:21))
  %v133 = sea.icmp slt, %v7, %v132 : i64 loc("_111"("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":40:21))
  %v134 = sea.const 0 : i64 loc("_112")
  %v135 = sea.icmp slt, %v21, %v134 : i64 loc("_112")
  %v136 = sea.const 1 : i1 loc("or.cond.i"("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":40:39))
  %v137 = sea.select %v133, %v136, %v135 : i1 loc("or.cond.i"("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":40:39))
  %v138 = sea.icmp ugt, %v21, %v7 : i64 loc("_113")
  %v139 = sea.const 1 : i1 loc("or.cond6.i"("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":40:39))
  %v140 = sea.select %v137, %v139, %v138 : i1 loc("or.cond6.i"("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":40:39))
  sea.cond_br %v140, ^bb65, ^bb63 loc("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":40:39)
^bb63:
  %v141 = sea.load %v115[%v19] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_132"("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":45:9))
  %v142 = sea.ptr.index %v16 [%v21] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_133"("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":45:9))
  %v143 = sea.ptr.cmp eq, %v141, %v142 : !sea.ptr<64> loc("_134"("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":45:9))
  sea.cond_br %v143, ^bb64, ^bb72 loc("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":45:9)
^bb64:
  %v144 = sea.sub %v7, %v21 nsw : i64 loc("_136"("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":46:9))
  %v145 = sea.icmp eq, %v116, %v144 : i64 loc("_137"("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":46:9))
  %v146 = sea.const 1 : i1 loc("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":46:9)
  %v147 = sea.xor %v145, %v146 : i1 loc("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":46:9)
  sea.assume %v147 loc("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":46:9)
  sea.br ^bb72 loc("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":46:9)
^bb65:
  %v148 = sea.const 1 : i1 loc("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":41:13)
  %v149 = sea.xor %v40, %v148 : i1 loc("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":41:13)
  sea.assume %v149 loc("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":41:13)
  %v150 = sea.load %v115[%v19] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_115"("seahorn/jobs/byte_cursor_read/aws_byte_cursor_read_harness.c":42:49))
  %v151 = sea.ptr.null : !sea.ptr<64> loc("_116"("seahorn/lib/utils.c":39:7))
  %v152 = sea.ptr.cmp ne, %v150, %v151 : !sea.ptr<64> loc("_116"("seahorn/lib/utils.c":39:7))
  sea.assume %v152 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb66
^bb66:
  %v153 = sea.load %v67[%v6] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_118"("seahorn/lib/utils.c":40:5))
  %v154 = sea.ptr.index %v150 [%v153] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_119"("seahorn/lib/utils.c":40:5))
  %v155 = sea.const 1 : i64 loc("_120"("seahorn/lib/utils.c":40:5))
  %v156 = sea.ptr.dereferenceable %v154, %v155 : !sea.ptr<64>, i64 loc("_120"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v156, ^bb67, ^bb72
^bb67:
  %v157 = sea.load %v114[%v154] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_122"("seahorn/lib/utils.c":40:5))
  %v158 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_123"("seahorn/lib/utils.c":40:5))
  sea.br ^bb68
^bb68:
  %v159 = sea.load %v67[%v158] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_125"("seahorn/lib/utils.c":40:5))
  %v160 = sea.icmp eq, %v157, %v159 : i8 loc("_126"("seahorn/lib/utils.c":40:5))
  sea.br ^bb69
^bb69:
  %v161 = sea.const 1 : i64 loc("_128"("seahorn/lib/utils.c":40:5))
  %v162 = sea.ptr.dereferenceable %v154, %v161 : !sea.ptr<64>, i64 loc("_128"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v162, ^bb70, ^bb72
^bb70:
  sea.br ^bb71
^bb71:
  %v163 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v164 = sea.xor %v160, %v163 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v164 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb72 loc("seahorn/lib/utils.c":40:5)
^bb72:
  sea.br ^bb73
^bb73:
  %v165 = sea.const 0 : i1
  sea.assert %v165
  sea.halt
}
