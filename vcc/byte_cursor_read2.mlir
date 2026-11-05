// Exported from SeaHorn (byte_cursor_read2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm9")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm10")
  %v2 = sea.const 16 : i64 loc("_0")
  %v3 = sea.alloca %v2 align 8 [2] : i64 -> !sea.ptr<64> loc("_0")
  %v4 = sea.nondet "nd_size_t" [3] : i64 loc("_1"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb1
^bb1:
  %v5 = sea.store %v0[%v3], %v4 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb2
^bb2:
  %v6 = sea.const 11 : i64 loc("_4"("seahorn/lib/byte_buf_helper.c":33:24))
  %v7 = sea.icmp ult, %v4, %v6 : i64 loc("_4"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v7 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v8 = sea.nondet "nd_malloc_is_fail" [4] : i1 loc("_5"("seahorn/lib/sea_allocators.c":11:10))
  %v9 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v8, ^bb4(%v1, %v9 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/sea_allocators.c":11:10)
^bb3:
  %v10 = sea.const 10 : i64 loc("malloc.i2")
  %v11 = sea.alloca %v10 align 16 [5] : i64 -> !sea.ptr<64> loc("malloc.i2")
  sea.br ^bb4(%v1, %v11 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb4(%v12 : !sea.mem<!sea.ptr<64>, i8>, %v13 : !sea.ptr<64>):
  %v14 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v15 = sea.memhavoc %v12[%v13], %v14 [6] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v16 = sea.ptr.index %v3 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_8"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb5
^bb5:
  %v17 = sea.store %v5[%v16], %v13 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  %v18 = sea.nondet "nd_size_t" [7] : i64 loc("_9"("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":15:21))
  %v19 = sea.const 11 : i64 loc("_10"("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":16:19))
  %v20 = sea.icmp ult, %v18, %v19 : i64 loc("_10"("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":16:19))
  sea.assume %v20 loc("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":16:5)
  %v21 = sea.const 0 : i64 loc("_11"("seahorn/lib/proof_allocators.c":17:15))
  %v22 = sea.icmp eq, %v18, %v21 : i64 loc("_11"("seahorn/lib/proof_allocators.c":17:15))
  %v23 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v22, ^bb9(%v15, %v23 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb6 loc("seahorn/lib/proof_allocators.c":17:10)
^bb6:
  %v24 = sea.nondet "nd_malloc_is_fail" [8] : i1 loc("_13"("seahorn/lib/sea_allocators.c":11:10))
  %v25 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v24, ^bb8(%v15, %v25 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb7 loc("seahorn/lib/sea_allocators.c":11:10)
^bb7:
  %v26 = sea.const 1 : i64 loc("malloc25.i")
  %v27 = sea.mul %v18, %v26 : i64 loc("malloc25.i")
  %v28 = sea.alloca %v27 align 16 [9] : i64 -> !sea.ptr<64> loc("malloc25.i")
  sea.br ^bb8(%v15, %v28 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb8(%v29 : !sea.mem<!sea.ptr<64>, i8>, %v30 : !sea.ptr<64>):
  %v31 = sea.memhavoc %v29[%v30], %v18 [10] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v32 = sea.ptr.null : !sea.ptr<64> loc("_16"("seahorn/lib/sea_allocators.c":45:10))
  %v33 = sea.ptr.cmp ne, %v30, %v32 : !sea.ptr<64> loc("_16"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v33 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb9(%v31, %v30 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb9(%v34 : !sea.mem<!sea.ptr<64>, i8>, %v35 : !sea.ptr<64>):
  sea.br ^bb10
^bb10:
  %v36 = sea.const 0 : i64 loc("_19"("aws-c-common/source/byte_buf.c":66:26))
  %v37 = sea.icmp eq, %v4, %v36 : i64 loc("_19"("aws-c-common/source/byte_buf.c":66:26))
  %v38 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v37, ^bb16(%v38 : i1), ^bb11 loc("aws-c-common/source/byte_buf.c":66:32)
^bb11:
  sea.br ^bb12
^bb12:
  sea.br ^bb13
^bb13:
  %v39 = sea.ptr.null : !sea.ptr<64> loc(".not2.i18.i"("aws-c-common/source/byte_buf.c":66:55))
  %v40 = sea.ptr.cmp eq, %v13, %v39 : !sea.ptr<64> loc(".not2.i18.i"("aws-c-common/source/byte_buf.c":66:55))
  %v41 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v40, ^bb16(%v41 : i1), ^bb14 loc("aws-c-common/source/byte_buf.c":66:67)
^bb14:
  sea.br ^bb15
^bb15:
  %v42 = sea.const 1 : i1
  sea.br ^bb16(%v42 : i1)
^bb16(%v43 : i1):
  sea.assume %v43 loc("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":20:5)
  %v44 = sea.ptr.null : !sea.ptr<64> loc("_26"("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":23:12))
  %v45 = sea.ptr.cmp ne, %v35, %v44 : !sea.ptr<64> loc("_26"("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":23:12))
  %v46 = sea.or %v22, %v45 : i1 loc("_27"("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":23:12))
  sea.assume %v46 loc("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":23:5)
  sea.tracking_on loc("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":27:5)
  %v47 = sea.mem.reset_modified %v34[%v13] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":28:5)
  sea.cond_br %v22, ^bb36(%v47, %v17 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>), ^bb17 loc("aws-c-common/source/byte_buf.c":1163:9)
^bb17:
  sea.br ^bb18
^bb18:
  %v48 = sea.icmp uge, %v4, %v18 : i64 loc("_30"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:13))
  %v49 = sea.const 18446744073709551615 : i64 loc("_31")
  %v50 = sea.icmp sgt, %v18, %v49 : i64 loc("_31")
  %v51 = sea.and %v48, %v50 : i1 loc("or.cond.i23.i"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:28))
  sea.cond_br %v51, ^bb19, ^bb40(%v47, %v17 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:28)
^bb19:
  sea.br ^bb20
^bb20:
  %v52 = sea.const 18446744073709551615 : i64 loc("_34"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:69))
  %v53 = sea.icmp sgt, %v4, %v52 : i64 loc("_34"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:69))
  sea.cond_br %v53, ^bb21, ^bb40(%v47, %v17 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:9)
^bb21:
  sea.br ^bb22
^bb22:
  %v54 = sea.const 1 : i64 loc("_37"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":26:59))
  %v55 = sea.add %v4, %v54 nuw : i64 loc("_37"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":26:59))
  %v56 = sea.sub %v4, %v18 : i64 loc("_39"("aws-c-common/source/byte_buf.c":1050:40))
  %v57 = sea.or %v55, %v56 : i64 loc("_40"("aws-c-common/source/byte_buf.c":1051:42))
  %v58 = sea.or %v57, %v18 : i64 loc("_41"("aws-c-common/source/byte_buf.c":1051:42))
  %v59 = sea.const 18446744073709551615 : i64 loc("_42"("aws-c-common/source/byte_buf.c":1064:38))
  %v60 = sea.icmp sgt, %v58, %v59 : i64 loc("_42"("aws-c-common/source/byte_buf.c":1064:38))
  %v61 = sea.sext %v60 : i1 to i64 loc(".neg.i.i.i"("aws-c-common/source/byte_buf.c":1064:38))
  %v62 = sea.and %v18, %v61 : i64 loc("_43"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":29:19))
  %v63 = sea.ptr.null : !sea.ptr<64> loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":33:23)
  sea.cond_br %v60, ^bb23, ^bb24(%v63 : !sea.ptr<64>) loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":33:23)
^bb23:
  sea.br ^bb24(%v13 : !sea.ptr<64>)
^bb24(%v64 : !sea.ptr<64>):
  sea.br ^bb25
^bb25:
  sea.br ^bb26
^bb26:
  sea.br ^bb27
^bb27:
  %v65 = sea.and %v4, %v61 : i64 loc("_50"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":35:35))
  sea.br ^bb28
^bb28:
  sea.br ^bb29
^bb29:
  sea.br ^bb30
^bb30:
  %v66 = sea.ptr.index %v64 [%v62] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_54"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":41:21))
  %v67 = sea.store %v17[%v16], %v66 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":41:21)
  sea.br ^bb31
^bb31:
  sea.br ^bb32
^bb32:
  %v68 = sea.sub %v65, %v62 nsw : i64 loc("_56"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":42:21))
  %v69 = sea.store %v67[%v3], %v68 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":42:21)
  %v70 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i.not"("aws-c-common/source/byte_buf.c":1169:9))
  %v71 = sea.ptr.cmp eq, %v64, %v70 : !sea.ptr<64> loc(".not.i.i.not"("aws-c-common/source/byte_buf.c":1169:9))
  sea.cond_br %v71, ^bb40(%v47, %v69 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>), ^bb33 loc("aws-c-common/source/byte_buf.c":1169:9)
^bb33:
  %v72 = sea.ptr.dereferenceable %v35, %v18 : !sea.ptr<64>, i64 loc("_58"("seahorn/lib/bcmp.c":161:3))
  %v73 = sea.ptr.dereferenceable %v35, %v18 : !sea.ptr<64>, i64 loc("_59"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v73, ^bb34, ^bb57 loc("seahorn/lib/bcmp.c":161:3)
^bb34:
  %v74 = sea.ptr.dereferenceable %v64, %v18 : !sea.ptr<64>, i64 loc("_61"("seahorn/lib/bcmp.c":162:3))
  %v75 = sea.ptr.dereferenceable %v64, %v18 : !sea.ptr<64>, i64 loc("_62"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v75, ^bb35, ^bb57 loc("seahorn/lib/bcmp.c":162:3)
^bb35:
  %v76 = sea.memmove %v47[%v35], %v47[%v64], %v18 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb36(%v76, %v69 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":1173:9)
^bb36(%v77 : !sea.mem<!sea.ptr<64>, i8>, %v78 : !sea.mem<!sea.ptr<64>, i8>):
  %v79 = sea.ptr.null : !sea.ptr<64> loc(".not.i21.i"("seahorn/lib/utils.c":15:3))
  %v80 = sea.ptr.cmp eq, %v13, %v79 : !sea.ptr<64> loc(".not.i21.i"("seahorn/lib/utils.c":15:3))
  %v81 = sea.xor %v80, %v45 : i1 loc("_63"("seahorn/lib/utils.c":15:3))
  %v82 = sea.or %v22, %v81 : i1 loc("_64"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v22, ^bb40(%v77, %v78 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>), ^bb37 loc("seahorn/lib/utils.c":15:3)
^bb37:
  sea.cond_br %v81, ^bb38, ^bb57 loc("seahorn/lib/utils.c":15:3)
^bb38:
  %v83 = sea.ptr.null : !sea.ptr<64> loc("_66")
  %v84 = sea.ptr.cmp ne, %v13, %v83 : !sea.ptr<64> loc("_66")
  %v85 = sea.and %v84, %v45 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v85, ^bb39, ^bb40(%v77, %v78 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/lib/utils.c":16:15)
^bb39:
  %v86 = sea.nondet "nd_size_t" [11] : i64 loc("_68"("seahorn/lib/utils.c":17:16))
  %v87 = sea.icmp ult, %v86, %v18 : i64 loc("_69"("seahorn/lib/utils.c":19:14))
  %v88 = sea.const 36028797018963967 : i64 loc("_70"("seahorn/lib/utils.c":19:20))
  %v89 = sea.icmp ult, %v18, %v88 : i64 loc("_70"("seahorn/lib/utils.c":19:20))
  %v90 = sea.and %v89, %v87 : i1 loc("_71"("seahorn/lib/utils.c":19:20))
  sea.assume %v90 loc("seahorn/lib/utils.c":19:5)
  %v91 = sea.ptr.index %v13 [%v86] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_72"("seahorn/lib/utils.c":20:5))
  %v92 = sea.load %v77[%v91] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_73"("seahorn/lib/utils.c":20:5))
  %v93 = sea.ptr.index %v35 [%v86] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_74"("seahorn/lib/utils.c":20:5))
  %v94 = sea.load %v77[%v93] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_75"("seahorn/lib/utils.c":20:5))
  %v95 = sea.icmp eq, %v92, %v94 : i8 loc("_76"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v95, ^bb40(%v77, %v78 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>), ^bb57 loc("seahorn/lib/utils.c":20:5)
^bb40(%v96 : !sea.mem<!sea.ptr<64>, i8>, %v97 : !sea.mem<!sea.ptr<64>, i8>):
  sea.br ^bb41
^bb41:
  %v98 = sea.load %v97[%v3] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_78"("aws-c-common/source/byte_buf.c":66:22))
  %v99 = sea.const 0 : i64 loc("_79"("aws-c-common/source/byte_buf.c":66:26))
  %v100 = sea.icmp eq, %v98, %v99 : i64 loc("_79"("aws-c-common/source/byte_buf.c":66:26))
  %v101 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v100, ^bb47(%v101 : i1), ^bb42 loc("aws-c-common/source/byte_buf.c":66:32)
^bb42:
  sea.br ^bb43
^bb43:
  sea.br ^bb44
^bb44:
  %v102 = sea.load %v97[%v16] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_83"("aws-c-common/source/byte_buf.c":66:63))
  %v103 = sea.ptr.null : !sea.ptr<64> loc(".not2.i14.i"("aws-c-common/source/byte_buf.c":66:55))
  %v104 = sea.ptr.cmp eq, %v102, %v103 : !sea.ptr<64> loc(".not2.i14.i"("aws-c-common/source/byte_buf.c":66:55))
  %v105 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v104, ^bb47(%v105 : i1), ^bb45 loc("aws-c-common/source/byte_buf.c":66:67)
^bb45:
  sea.br ^bb46
^bb46:
  %v106 = sea.const 1 : i1
  sea.br ^bb47(%v106 : i1)
^bb47(%v107 : i1):
  sea.br ^bb48
^bb48:
  sea.cond_br %v100, ^bb53, ^bb49 loc("aws-c-common/source/byte_buf.c":66:32)
^bb49:
  sea.br ^bb50
^bb50:
  %v108 = sea.load %v97[%v16] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_90")
  %v109 = sea.ptr.null : !sea.ptr<64> loc(".not2.i.i")
  %v110 = sea.ptr.cmp ne, %v108, %v109 : !sea.ptr<64> loc(".not2.i.i")
  %v111 = sea.const 1 : i1 loc("or.cond8.not")
  %v112 = sea.const 0 : i1 loc("or.cond8.not")
  %v113 = sea.select %v111, %v110, %v112 : i1 loc("or.cond8.not")
  sea.cond_br %v113, ^bb51, ^bb57
^bb51:
  sea.br ^bb52
^bb52:
  sea.br ^bb53
^bb53:
  %v114 = sea.const 0 : i64 loc("_93"("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":40:21))
  %v115 = sea.icmp slt, %v4, %v114 : i64 loc("_93"("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":40:21))
  %v116 = sea.const 0 : i64 loc("_94")
  %v117 = sea.icmp slt, %v18, %v116 : i64 loc("_94")
  %v118 = sea.const 1 : i1 loc("or.cond.i"("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":40:39))
  %v119 = sea.select %v115, %v118, %v117 : i1 loc("or.cond.i"("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":40:39))
  %v120 = sea.icmp ugt, %v18, %v4 : i64 loc("_95")
  %v121 = sea.const 1 : i1 loc("or.cond6.i"("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":40:39))
  %v122 = sea.select %v119, %v121, %v120 : i1 loc("or.cond6.i"("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":40:39))
  sea.cond_br %v122, ^bb56, ^bb54 loc("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":40:39)
^bb54:
  %v123 = sea.load %v97[%v16] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_102"("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":45:9))
  %v124 = sea.ptr.index %v13 [%v18] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_103"("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":45:9))
  %v125 = sea.ptr.cmp eq, %v123, %v124 : !sea.ptr<64> loc("_104"("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":45:9))
  sea.cond_br %v125, ^bb55, ^bb57 loc("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":45:9)
^bb55:
  %v126 = sea.sub %v4, %v18 nsw : i64 loc("_106"("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":46:9))
  %v127 = sea.icmp eq, %v98, %v126 : i64 loc("_107"("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":46:9))
  %v128 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":46:9)
  %v129 = sea.xor %v127, %v128 : i1 loc("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":46:9)
  sea.assume %v129 loc("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":46:9)
  sea.br ^bb57 loc("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":46:9)
^bb56:
  %v130 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":41:13)
  %v131 = sea.xor %v37, %v130 : i1 loc("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":41:13)
  sea.assume %v131 loc("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":41:13)
  %v132 = sea.load %v97[%v16] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_97"("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":42:13))
  %v133 = sea.mem.is_modified %v96[%v132] : !sea.mem<!sea.ptr<64>, i8> loc("_98"("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":42:13))
  %v134 = sea.const 1 : i1 loc("_99"("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":42:13))
  %v135 = sea.xor %v133, %v134 : i1 loc("_99"("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":42:13))
  %v136 = sea.mem.is_modified %v96[%v132] : !sea.mem<!sea.ptr<64>, i8> loc("_100"("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":42:13))
  sea.assume %v136 loc("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":42:13)
  sea.br ^bb57 loc("seahorn/jobs2/byte_cursor_read2/aws_byte_cursor_read_harness2.c":42:13)
^bb57:
  sea.br ^bb58
^bb58:
  %v137 = sea.const 0 : i1
  sea.assert %v137
  sea.halt
}
