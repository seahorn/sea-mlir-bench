// Exported from SeaHorn (byte_cursor_read_be16_2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm11")
  %v1 = sea.mem.nondet "region.17" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm12")
  %v2 = sea.mem.nondet "region.16" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm13")
  %v3 = sea.mem.nondet "region.18" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm14")
  %v4 = sea.const 16 : i64 loc("_0")
  %v5 = sea.alloca %v4 align 8 [4] : i64 -> !sea.ptr<64> loc("_0")
  %v6 = sea.const 2 : i64 loc("_1")
  %v7 = sea.alloca %v6 align 2 [5] : i64 -> !sea.ptr<64> loc("_1")
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
  sea.cond_br %v12, ^bb4(%v1, %v13 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/sea_allocators.c":11:10)
^bb3:
  %v14 = sea.const 10 : i64 loc("malloc.i1")
  %v15 = sea.alloca %v14 align 16 [8] : i64 -> !sea.ptr<64> loc("malloc.i1")
  sea.br ^bb4(%v1, %v15 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb4(%v16 : !sea.mem<!sea.ptr<64>, i8>, %v17 : !sea.ptr<64>):
  %v18 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v19 = sea.memhavoc %v16[%v17], %v18 [9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v20 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_9"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb5
^bb5:
  %v21 = sea.store %v9[%v20], %v17 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  %v22 = sea.nondet "nd_malloc_is_fail" [10] : i1 loc("_10"("seahorn/lib/sea_allocators.c":11:10))
  %v23 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v22, ^bb7(%v3, %v23 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb6 loc("seahorn/lib/sea_allocators.c":11:10)
^bb6:
  %v24 = sea.const 2 : i64 loc("malloc24.i2")
  %v25 = sea.alloca %v24 align 16 [11] : i64 -> !sea.ptr<64> loc("malloc24.i2")
  sea.br ^bb7(%v3, %v25 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb7(%v26 : !sea.mem<!sea.ptr<64>, i8>, %v27 : !sea.ptr<64>):
  %v28 = sea.const 2 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v29 = sea.memhavoc %v26[%v27], %v28 [12] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb8
^bb8:
  %v30 = sea.const 0 : i64 loc("_14"("aws-c-common/source/byte_buf.c":66:26))
  %v31 = sea.icmp eq, %v8, %v30 : i64 loc("_14"("aws-c-common/source/byte_buf.c":66:26))
  %v32 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v31, ^bb14(%v32 : i1), ^bb9 loc("aws-c-common/source/byte_buf.c":66:32)
^bb9:
  sea.br ^bb10
^bb10:
  sea.br ^bb11
^bb11:
  %v33 = sea.ptr.null : !sea.ptr<64> loc(".not2.i15.i"("aws-c-common/source/byte_buf.c":66:55))
  %v34 = sea.ptr.cmp eq, %v17, %v33 : !sea.ptr<64> loc(".not2.i15.i"("aws-c-common/source/byte_buf.c":66:55))
  %v35 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v34, ^bb14(%v35 : i1), ^bb12 loc("aws-c-common/source/byte_buf.c":66:67)
^bb12:
  sea.br ^bb13
^bb13:
  %v36 = sea.const 1 : i1
  sea.br ^bb14(%v36 : i1)
^bb14(%v37 : i1):
  sea.assume %v37 loc("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":18:5)
  %v38 = sea.const 1 : i64 loc("_21"("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":19:20))
  %v39 = sea.icmp ugt, %v8, %v38 : i64 loc("_21"("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":19:20))
  sea.assume %v39 loc("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":19:5)
  %v40 = sea.ptr.null : !sea.ptr<64> loc("_22"("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":20:12))
  %v41 = sea.ptr.cmp ne, %v17, %v40 : !sea.ptr<64> loc("_22"("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":20:12))
  sea.assume %v41 loc("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":20:5)
  %v42 = sea.ptr.null : !sea.ptr<64> loc("_23"("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":21:17))
  %v43 = sea.ptr.cmp ne, %v27, %v42 : !sea.ptr<64> loc("_23"("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":21:17))
  sea.assume %v43 loc("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":21:5)
  sea.br ^bb15 loc("seahorn/lib/bcmp.c":161:3)
^bb15:
  %v44 = sea.const 2 : i64 loc("_25"("seahorn/lib/bcmp.c":162:3))
  %v45 = sea.ptr.dereferenceable %v17, %v44 : !sea.ptr<64>, i64 loc("_25"("seahorn/lib/bcmp.c":162:3))
  %v46 = sea.const 2 : i64 loc("_26"("seahorn/lib/bcmp.c":162:3))
  %v47 = sea.ptr.dereferenceable %v17, %v46 : !sea.ptr<64>, i64 loc("_26"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v47, ^bb16, ^bb57 loc("seahorn/lib/bcmp.c":162:3)
^bb16:
  %v48 = sea.load %v19[%v17] : !sea.mem<!sea.ptr<64>, i8> -> i16 loc("_27"("seahorn/lib/bcmp.c":163:10))
  %v49 = sea.bswap %v48 : i16 loc("_28"("aws-c-common/include/aws/common/byte_order.inl":158:12))
  %v50 = sea.store %v2[%v7], %v49 inplace align 2 : !sea.mem<!sea.ptr<64>, i8>, i16 loc("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":27:15)
  sea.br ^bb17
^bb17:
  %v51 = sea.const 0 : i1 loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:28)
  sea.cond_br %v39, ^bb18, ^bb35(%v29, %v17, %v8, %v51 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64, i1) loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:28)
^bb18:
  sea.br ^bb19
^bb19:
  %v52 = sea.const 18446744073709551615 : i64 loc("_32"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:69))
  %v53 = sea.icmp sgt, %v8, %v52 : i64 loc("_32"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:69))
  %v54 = sea.const 0 : i1 loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:9)
  sea.cond_br %v53, ^bb20, ^bb35(%v29, %v17, %v8, %v54 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64, i1) loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:9)
^bb20:
  sea.br ^bb21
^bb21:
  %v55 = sea.const 1 : i64 loc("_35"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":26:59))
  %v56 = sea.add %v8, %v55 nuw : i64 loc("_35"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":26:59))
  %v57 = sea.const 2 : i64 loc("_36"("aws-c-common/source/byte_buf.c":1030:5))
  %v58 = sea.sub %v8, %v57 : i64 loc("_37"("aws-c-common/source/byte_buf.c":1050:40))
  %v59 = sea.or %v56, %v58 : i64 loc("_38"("aws-c-common/source/byte_buf.c":1051:42))
  %v60 = sea.or %v59, %v57 : i64 loc("_39"("aws-c-common/source/byte_buf.c":1051:42))
  %v61 = sea.const 18446744073709551615 : i64 loc("_40"("aws-c-common/source/byte_buf.c":1064:38))
  %v62 = sea.icmp sgt, %v60, %v61 : i64 loc("_40"("aws-c-common/source/byte_buf.c":1064:38))
  %v63 = sea.const 62 : i64 loc("_41"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":29:19))
  %v64 = sea.lshr %v60, %v63 : i64 loc("_41"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":29:19))
  %v65 = sea.const 2 : i64 loc("_42"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":29:19))
  %v66 = sea.and %v64, %v65 : i64 loc("_42"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":29:19))
  %v67 = sea.const 2 : i64 loc("_43"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":29:19))
  %v68 = sea.xor %v66, %v67 : i64 loc("_43"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":29:19))
  %v69 = sea.ptr.null : !sea.ptr<64> loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":33:23)
  sea.cond_br %v62, ^bb22, ^bb23(%v69 : !sea.ptr<64>) loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":33:23)
^bb22:
  sea.br ^bb23(%v17 : !sea.ptr<64>)
^bb23(%v70 : !sea.ptr<64>):
  sea.br ^bb24
^bb24:
  sea.br ^bb25
^bb25:
  sea.br ^bb26
^bb26:
  %v71 = sea.const 0 : i64 loc("_50"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":35:35))
  %v72 = sea.select %v62, %v8, %v71 : i64 loc("_50"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":35:35))
  sea.br ^bb27
^bb27:
  sea.br ^bb28
^bb28:
  sea.br ^bb29
^bb29:
  %v73 = sea.ptr.index %v70 [%v68] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_54"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":41:21))
  %v74 = sea.store %v21[%v20], %v73 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":41:21)
  sea.br ^bb30
^bb30:
  sea.br ^bb31
^bb31:
  %v75 = sea.sub %v72, %v68 nsw : i64 loc("_56"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":42:21))
  %v76 = sea.store %v74[%v5], %v75 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":42:21)
  %v77 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i.i.not"("aws-c-common/source/byte_buf.c":1169:9))
  %v78 = sea.ptr.cmp eq, %v70, %v77 : !sea.ptr<64> loc(".not.i.i.i.not"("aws-c-common/source/byte_buf.c":1169:9))
  %v79 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":1169:9)
  sea.cond_br %v78, ^bb35(%v29, %v73, %v75, %v79 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64, i1), ^bb32 loc("aws-c-common/source/byte_buf.c":1169:9)
^bb32:
  %v80 = sea.const 2 : i64 loc("_58"("seahorn/lib/bcmp.c":161:3))
  %v81 = sea.ptr.dereferenceable %v27, %v80 : !sea.ptr<64>, i64 loc("_58"("seahorn/lib/bcmp.c":161:3))
  %v82 = sea.const 2 : i64 loc("_59"("seahorn/lib/bcmp.c":161:3))
  %v83 = sea.ptr.dereferenceable %v27, %v82 : !sea.ptr<64>, i64 loc("_59"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v83, ^bb33, ^bb57 loc("seahorn/lib/bcmp.c":161:3)
^bb33:
  %v84 = sea.const 2 : i64 loc("_61"("seahorn/lib/bcmp.c":162:3))
  %v85 = sea.ptr.dereferenceable %v70, %v84 : !sea.ptr<64>, i64 loc("_61"("seahorn/lib/bcmp.c":162:3))
  %v86 = sea.const 2 : i64 loc("_62"("seahorn/lib/bcmp.c":162:3))
  %v87 = sea.ptr.dereferenceable %v70, %v86 : !sea.ptr<64>, i64 loc("_62"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v87, ^bb34, ^bb57 loc("seahorn/lib/bcmp.c":162:3)
^bb34:
  %v88 = sea.load %v19[%v70] : !sea.mem<!sea.ptr<64>, i8> -> i16 loc("_63"("seahorn/lib/bcmp.c":163:10))
  %v89 = sea.store %v29[%v27], %v88 inplace align 16 : !sea.mem<!sea.ptr<64>, i8>, i16 loc("seahorn/lib/bcmp.c":163:10)
  %v90 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":1173:9)
  sea.br ^bb35(%v89, %v73, %v75, %v90 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64, i1) loc("aws-c-common/source/byte_buf.c":1173:9)
^bb35(%v91 : !sea.mem<!sea.ptr<64>, i8>, %v92 : !sea.ptr<64>, %v93 : i64, %v94 : i1):
  %v95 = sea.zext %v94 : i1 to i64 loc("_66"("aws-c-common/source/byte_buf.c":1230:9))
  %v96 = sea.const 0 : i64 loc(".not.i.i"("aws-c-common/source/byte_buf.c":1230:9))
  %v97 = sea.icmp eq, %v95, %v96 : i64 loc(".not.i.i"("aws-c-common/source/byte_buf.c":1230:9))
  sea.cond_br %v97, ^bb39(%v91 : !sea.mem<!sea.ptr<64>, i8>), ^bb36 loc("aws-c-common/source/byte_buf.c":1230:9)
^bb36:
  %v98 = sea.const 2 : i64 loc("_69"("aws-c-common/source/byte_buf.c":1231:27))
  %v99 = sea.ptr.dereferenceable %v27, %v98 : !sea.ptr<64>, i64 loc("_69"("aws-c-common/source/byte_buf.c":1231:27))
  sea.cond_br %v99, ^bb37, ^bb57
^bb37:
  %v100 = sea.load %v91[%v27] align 2 : !sea.mem<!sea.ptr<64>, i8> -> i16 loc("_70"("aws-c-common/source/byte_buf.c":1231:27))
  %v101 = sea.bswap %v100 : i16 loc("_71"("aws-c-common/include/aws/common/byte_order.inl":158:12))
  %v102 = sea.const 2 : i64 loc("_72"("aws-c-common/source/byte_buf.c":1231:14))
  %v103 = sea.ptr.dereferenceable %v27, %v102 : !sea.ptr<64>, i64 loc("_72"("aws-c-common/source/byte_buf.c":1231:14))
  sea.cond_br %v103, ^bb38, ^bb57
^bb38:
  %v104 = sea.store %v91[%v27], %v101 inplace align 2 : !sea.mem<!sea.ptr<64>, i8>, i16 loc("aws-c-common/source/byte_buf.c":1231:14)
  sea.br ^bb39(%v104 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":1232:5)
^bb39(%v105 : !sea.mem<!sea.ptr<64>, i8>):
  sea.cond_br %v94, ^bb40, ^bb42 loc("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":30:9)
^bb40:
  %v106 = sea.ptr.null : !sea.ptr<64> loc(".not6.i.i.not"("seahorn/lib/utils.c":15:3))
  %v107 = sea.ptr.cmp eq, %v27, %v106 : !sea.ptr<64> loc(".not6.i.i.not"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v107, ^bb57, ^bb41 loc("seahorn/lib/utils.c":15:3)
^bb41:
  %v108 = sea.nondet "nd_size_t" [13] : i64 loc("_75"("seahorn/lib/utils.c":17:16))
  %v109 = sea.const 2 : i64 loc("_76"("seahorn/lib/utils.c":19:14))
  %v110 = sea.icmp ult, %v108, %v109 : i64 loc("_76"("seahorn/lib/utils.c":19:14))
  sea.assume %v110 loc("seahorn/lib/utils.c":19:5)
  %v111 = sea.ptr.index %v7 [%v108] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_77"("seahorn/lib/utils.c":20:5))
  %v112 = sea.load %v50[%v111] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_78"("seahorn/lib/utils.c":20:5))
  %v113 = sea.ptr.index %v27 [%v108] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_79"("seahorn/lib/utils.c":20:5))
  %v114 = sea.load %v105[%v113] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_80"("seahorn/lib/utils.c":20:5))
  %v115 = sea.icmp eq, %v112, %v114 : i8 loc("_81"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v115, ^bb42, ^bb57 loc("seahorn/lib/utils.c":20:5)
^bb42:
  sea.br ^bb43
^bb43:
  %v116 = sea.const 0 : i64 loc("_83"("aws-c-common/source/byte_buf.c":66:26))
  %v117 = sea.icmp eq, %v93, %v116 : i64 loc("_83"("aws-c-common/source/byte_buf.c":66:26))
  %v118 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v117, ^bb49(%v118 : i1), ^bb44 loc("aws-c-common/source/byte_buf.c":66:32)
^bb44:
  sea.br ^bb45
^bb45:
  sea.br ^bb46
^bb46:
  %v119 = sea.ptr.null : !sea.ptr<64> loc(".not2.i11.i"("aws-c-common/source/byte_buf.c":66:55))
  %v120 = sea.ptr.cmp eq, %v92, %v119 : !sea.ptr<64> loc(".not2.i11.i"("aws-c-common/source/byte_buf.c":66:55))
  %v121 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v120, ^bb49(%v121 : i1), ^bb47 loc("aws-c-common/source/byte_buf.c":66:67)
^bb47:
  sea.br ^bb48
^bb48:
  %v122 = sea.const 1 : i1
  sea.br ^bb49(%v122 : i1)
^bb49(%v123 : i1):
  sea.br ^bb50
^bb50:
  sea.cond_br %v117, ^bb55, ^bb51 loc("aws-c-common/source/byte_buf.c":66:32)
^bb51:
  sea.br ^bb52
^bb52:
  %v124 = sea.ptr.null : !sea.ptr<64> loc(".not2.i.i")
  %v125 = sea.ptr.cmp ne, %v92, %v124 : !sea.ptr<64> loc(".not2.i.i")
  %v126 = sea.const 1 : i1 loc("or.cond7.not")
  %v127 = sea.const 0 : i1 loc("or.cond7.not")
  %v128 = sea.select %v126, %v125, %v127 : i1 loc("or.cond7.not")
  sea.cond_br %v128, ^bb53, ^bb57
^bb53:
  sea.br ^bb54
^bb54:
  sea.br ^bb55
^bb55:
  %v129 = sea.const 1 : i64 loc("or.cond.i"("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":36:40))
  %v130 = sea.icmp sgt, %v8, %v129 : i64 loc("or.cond.i"("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":36:40))
  sea.assume %v130 loc("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":36:40)
  %v131 = sea.ptr.index %v17 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_95"("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":41:9))
  %v132 = sea.ptr.cmp eq, %v92, %v131 : !sea.ptr<64> loc("_96"("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":41:9))
  sea.cond_br %v132, ^bb56, ^bb57 loc("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":41:9)
^bb56:
  %v133 = sea.const 18446744073709551614 : i64 loc("_98"("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":42:9))
  %v134 = sea.add %v8, %v133 nsw : i64 loc("_98"("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":42:9))
  %v135 = sea.icmp eq, %v93, %v134 : i64 loc("_99"("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":42:9))
  %v136 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":42:9)
  %v137 = sea.xor %v135, %v136 : i1 loc("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":42:9)
  sea.assume %v137 loc("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":42:9)
  sea.br ^bb57 loc("seahorn/jobs2/byte_cursor_read_be16_2/aws_byte_cursor_read_be16_harness2.c":42:9)
^bb57:
  sea.br ^bb58
^bb58:
  %v138 = sea.const 0 : i1
  sea.assert %v138
  sea.halt
}
