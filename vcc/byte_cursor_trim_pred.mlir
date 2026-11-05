// Exported from SeaHorn (byte_cursor_trim_pred.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm8")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm9")
  %v2 = sea.mem.nondet "region.25" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm10")
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
  sea.br ^bb6
^bb6:
  sea.assume %v10 loc("seahorn/jobs/byte_cursor_trim_pred/aws_byte_cursor_trim_pred_harness.c":23:5)
  sea.br ^bb7
^bb7:
  %v21 = sea.const 0 : i64 loc("_11"("aws-c-common/source/byte_buf.c":66:26))
  %v22 = sea.icmp eq, %v7, %v21 : i64 loc("_11"("aws-c-common/source/byte_buf.c":66:26))
  %v23 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v22, ^bb13(%v23 : i1), ^bb8 loc("aws-c-common/source/byte_buf.c":66:32)
^bb8:
  sea.br ^bb9
^bb9:
  sea.br ^bb10
^bb10:
  %v24 = sea.ptr.null : !sea.ptr<64> loc(".not2.i15.i"("aws-c-common/source/byte_buf.c":66:55))
  %v25 = sea.ptr.cmp eq, %v16, %v24 : !sea.ptr<64> loc(".not2.i15.i"("aws-c-common/source/byte_buf.c":66:55))
  %v26 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v25, ^bb13(%v26 : i1), ^bb11 loc("aws-c-common/source/byte_buf.c":66:67)
^bb11:
  sea.br ^bb12
^bb12:
  %v27 = sea.const 1 : i1
  sea.br ^bb13(%v27 : i1)
^bb13(%v28 : i1):
  sea.assume %v28 loc("seahorn/jobs/byte_cursor_trim_pred/aws_byte_cursor_trim_pred_harness.c":24:5)
  %v29 = sea.nondet "nd_size_t" [9] : i64 loc("_18"("seahorn/lib/utils.c":46:20))
  sea.br ^bb14
^bb14:
  %v30 = sea.store %v1[%v6], %v29 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v31 = sea.const 0 : i64 loc("_20"("seahorn/lib/utils.c":47:12))
  %v32 = sea.icmp ne, %v7, %v31 : i64 loc("_20"("seahorn/lib/utils.c":47:12))
  %v33 = sea.ptr.null : !sea.ptr<64> loc("_21")
  %v34 = sea.ptr.cmp ne, %v16, %v33 : !sea.ptr<64> loc("_21")
  %v35 = sea.and %v32, %v34 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v35, ^bb17, ^bb15 loc("seahorn/lib/utils.c":47:16)
^bb15:
  %v36 = sea.nondet "nd_uint8_t" [10] : i8 loc("_33"("seahorn/lib/utils.c":51:21))
  %v37 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_34"("seahorn/lib/utils.c":51:14))
  sea.br ^bb16
^bb16:
  %v38 = sea.store %v30[%v37], %v36 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb22(%v36 : i8)
^bb17:
  sea.br ^bb18
^bb18:
  %v39 = sea.icmp ult, %v29, %v7 : i64 loc("_24"("seahorn/lib/utils.c":48:27))
  sea.assume %v39 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb19
^bb19:
  %v40 = sea.ptr.index %v16 [%v29] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_26"("seahorn/lib/utils.c":49:21))
  %v41 = sea.const 1 : i64 loc("_27"("seahorn/lib/utils.c":49:21))
  %v42 = sea.ptr.dereferenceable %v40, %v41 : !sea.ptr<64>, i64 loc("_27"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v42, ^bb20, ^bb109
^bb20:
  %v43 = sea.load %v18[%v40] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_29"("seahorn/lib/utils.c":49:21))
  %v44 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_30"("seahorn/lib/utils.c":49:14))
  sea.br ^bb21
^bb21:
  %v45 = sea.store %v30[%v44], %v43 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb22(%v43 : i8) loc("seahorn/lib/utils.c":50:3)
^bb22(%v46 : i8):
  %v47 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v22, ^bb54(%v16, %v47 : !sea.ptr<64>, i64), ^bb23 loc("aws-c-common/source/byte_buf.c":841:28)
^bb23:
  %v48 = sea.const 1 : i64 loc("_37"("aws-c-common/source/byte_buf.c":841:41))
  %v49 = sea.ptr.dereferenceable %v16, %v48 : !sea.ptr<64>, i64 loc("_37"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v49, ^bb24, ^bb109
^bb24:
  %v50 = sea.load %v18[%v16] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_39"("aws-c-common/source/byte_buf.c":841:41))
  %v51 = sea.nondet "uninterpreted_predicate_fn" [11] : i1 loc("_40"("aws-c-common/source/byte_buf.c":841:31))
  sea.cond_br %v51, ^bb25, ^bb54(%v16, %v7 : !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":841:5)
^bb25:
  %v52 = sea.const 18446744073709551615 : i64 loc("_42"("aws-c-common/source/byte_buf.c":842:9))
  %v53 = sea.add %v7, %v52 : i64 loc("_42"("aws-c-common/source/byte_buf.c":842:9))
  %v54 = sea.ptr.index %v16 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_43"("aws-c-common/source/byte_buf.c":843:9))
  %v55 = sea.const 0 : i64 loc(".not.i7.i.i"("aws-c-common/source/byte_buf.c":841:24))
  %v56 = sea.icmp eq, %v53, %v55 : i64 loc(".not.i7.i.i"("aws-c-common/source/byte_buf.c":841:24))
  %v57 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v56, ^bb54(%v54, %v57 : !sea.ptr<64>, i64), ^bb26 loc("aws-c-common/source/byte_buf.c":841:28)
^bb26:
  %v58 = sea.const 1 : i64 loc("_44"("aws-c-common/source/byte_buf.c":841:41))
  %v59 = sea.ptr.dereferenceable %v54, %v58 : !sea.ptr<64>, i64 loc("_44"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v59, ^bb27, ^bb109
^bb27:
  %v60 = sea.load %v18[%v54] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_46"("aws-c-common/source/byte_buf.c":841:41))
  %v61 = sea.nondet "uninterpreted_predicate_fn" [12] : i1 loc("_47"("aws-c-common/source/byte_buf.c":841:31))
  sea.cond_br %v61, ^bb28, ^bb54(%v54, %v53 : !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":841:5)
^bb28:
  %v62 = sea.const 18446744073709551614 : i64 loc("_49"("aws-c-common/source/byte_buf.c":842:9))
  %v63 = sea.add %v7, %v62 : i64 loc("_49"("aws-c-common/source/byte_buf.c":842:9))
  %v64 = sea.ptr.index %v16 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_50"("aws-c-common/source/byte_buf.c":843:9))
  %v65 = sea.const 0 : i64 loc(".not.i7.i.i.1"("aws-c-common/source/byte_buf.c":841:24))
  %v66 = sea.icmp eq, %v63, %v65 : i64 loc(".not.i7.i.i.1"("aws-c-common/source/byte_buf.c":841:24))
  %v67 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v66, ^bb54(%v64, %v67 : !sea.ptr<64>, i64), ^bb29 loc("aws-c-common/source/byte_buf.c":841:28)
^bb29:
  %v68 = sea.const 1 : i64 loc("_51"("aws-c-common/source/byte_buf.c":841:41))
  %v69 = sea.ptr.dereferenceable %v64, %v68 : !sea.ptr<64>, i64 loc("_51"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v69, ^bb30, ^bb109
^bb30:
  %v70 = sea.load %v18[%v64] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_53"("aws-c-common/source/byte_buf.c":841:41))
  %v71 = sea.nondet "uninterpreted_predicate_fn" [13] : i1 loc("_54"("aws-c-common/source/byte_buf.c":841:31))
  sea.cond_br %v71, ^bb31, ^bb54(%v64, %v63 : !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":841:5)
^bb31:
  %v72 = sea.const 18446744073709551613 : i64 loc("_56"("aws-c-common/source/byte_buf.c":842:9))
  %v73 = sea.add %v7, %v72 : i64 loc("_56"("aws-c-common/source/byte_buf.c":842:9))
  %v74 = sea.ptr.index %v16 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_57"("aws-c-common/source/byte_buf.c":843:9))
  %v75 = sea.const 0 : i64 loc(".not.i7.i.i.2"("aws-c-common/source/byte_buf.c":841:24))
  %v76 = sea.icmp eq, %v73, %v75 : i64 loc(".not.i7.i.i.2"("aws-c-common/source/byte_buf.c":841:24))
  %v77 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v76, ^bb54(%v74, %v77 : !sea.ptr<64>, i64), ^bb32 loc("aws-c-common/source/byte_buf.c":841:28)
^bb32:
  %v78 = sea.const 1 : i64 loc("_58"("aws-c-common/source/byte_buf.c":841:41))
  %v79 = sea.ptr.dereferenceable %v74, %v78 : !sea.ptr<64>, i64 loc("_58"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v79, ^bb33, ^bb109
^bb33:
  %v80 = sea.load %v18[%v74] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_60"("aws-c-common/source/byte_buf.c":841:41))
  %v81 = sea.nondet "uninterpreted_predicate_fn" [14] : i1 loc("_61"("aws-c-common/source/byte_buf.c":841:31))
  sea.cond_br %v81, ^bb34, ^bb54(%v74, %v73 : !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":841:5)
^bb34:
  %v82 = sea.const 18446744073709551612 : i64 loc("_63"("aws-c-common/source/byte_buf.c":842:9))
  %v83 = sea.add %v7, %v82 : i64 loc("_63"("aws-c-common/source/byte_buf.c":842:9))
  %v84 = sea.ptr.index %v16 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_64"("aws-c-common/source/byte_buf.c":843:9))
  %v85 = sea.const 0 : i64 loc(".not.i7.i.i.3"("aws-c-common/source/byte_buf.c":841:24))
  %v86 = sea.icmp eq, %v83, %v85 : i64 loc(".not.i7.i.i.3"("aws-c-common/source/byte_buf.c":841:24))
  %v87 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v86, ^bb54(%v84, %v87 : !sea.ptr<64>, i64), ^bb35 loc("aws-c-common/source/byte_buf.c":841:28)
^bb35:
  %v88 = sea.const 1 : i64 loc("_65"("aws-c-common/source/byte_buf.c":841:41))
  %v89 = sea.ptr.dereferenceable %v84, %v88 : !sea.ptr<64>, i64 loc("_65"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v89, ^bb36, ^bb109
^bb36:
  %v90 = sea.load %v18[%v84] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_67"("aws-c-common/source/byte_buf.c":841:41))
  %v91 = sea.nondet "uninterpreted_predicate_fn" [15] : i1 loc("_68"("aws-c-common/source/byte_buf.c":841:31))
  sea.cond_br %v91, ^bb37, ^bb54(%v84, %v83 : !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":841:5)
^bb37:
  %v92 = sea.const 18446744073709551611 : i64 loc("_70"("aws-c-common/source/byte_buf.c":842:9))
  %v93 = sea.add %v7, %v92 : i64 loc("_70"("aws-c-common/source/byte_buf.c":842:9))
  %v94 = sea.ptr.index %v16 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_71"("aws-c-common/source/byte_buf.c":843:9))
  %v95 = sea.const 0 : i64 loc(".not.i7.i.i.4"("aws-c-common/source/byte_buf.c":841:24))
  %v96 = sea.icmp eq, %v93, %v95 : i64 loc(".not.i7.i.i.4"("aws-c-common/source/byte_buf.c":841:24))
  %v97 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v96, ^bb54(%v94, %v97 : !sea.ptr<64>, i64), ^bb38 loc("aws-c-common/source/byte_buf.c":841:28)
^bb38:
  %v98 = sea.const 1 : i64 loc("_72"("aws-c-common/source/byte_buf.c":841:41))
  %v99 = sea.ptr.dereferenceable %v94, %v98 : !sea.ptr<64>, i64 loc("_72"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v99, ^bb39, ^bb109
^bb39:
  %v100 = sea.load %v18[%v94] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_74"("aws-c-common/source/byte_buf.c":841:41))
  %v101 = sea.nondet "uninterpreted_predicate_fn" [16] : i1 loc("_75"("aws-c-common/source/byte_buf.c":841:31))
  sea.cond_br %v101, ^bb40, ^bb54(%v94, %v93 : !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":841:5)
^bb40:
  %v102 = sea.const 18446744073709551610 : i64 loc("_77"("aws-c-common/source/byte_buf.c":842:9))
  %v103 = sea.add %v7, %v102 : i64 loc("_77"("aws-c-common/source/byte_buf.c":842:9))
  %v104 = sea.ptr.index %v16 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_78"("aws-c-common/source/byte_buf.c":843:9))
  %v105 = sea.const 0 : i64 loc(".not.i7.i.i.5"("aws-c-common/source/byte_buf.c":841:24))
  %v106 = sea.icmp eq, %v103, %v105 : i64 loc(".not.i7.i.i.5"("aws-c-common/source/byte_buf.c":841:24))
  %v107 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v106, ^bb54(%v104, %v107 : !sea.ptr<64>, i64), ^bb41 loc("aws-c-common/source/byte_buf.c":841:28)
^bb41:
  %v108 = sea.const 1 : i64 loc("_79"("aws-c-common/source/byte_buf.c":841:41))
  %v109 = sea.ptr.dereferenceable %v104, %v108 : !sea.ptr<64>, i64 loc("_79"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v109, ^bb42, ^bb109
^bb42:
  %v110 = sea.load %v18[%v104] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_81"("aws-c-common/source/byte_buf.c":841:41))
  %v111 = sea.nondet "uninterpreted_predicate_fn" [17] : i1 loc("_82"("aws-c-common/source/byte_buf.c":841:31))
  sea.cond_br %v111, ^bb43, ^bb54(%v104, %v103 : !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":841:5)
^bb43:
  %v112 = sea.const 18446744073709551609 : i64 loc("_84"("aws-c-common/source/byte_buf.c":842:9))
  %v113 = sea.add %v7, %v112 : i64 loc("_84"("aws-c-common/source/byte_buf.c":842:9))
  %v114 = sea.ptr.index %v16 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_85"("aws-c-common/source/byte_buf.c":843:9))
  %v115 = sea.const 0 : i64 loc(".not.i7.i.i.6"("aws-c-common/source/byte_buf.c":841:24))
  %v116 = sea.icmp eq, %v113, %v115 : i64 loc(".not.i7.i.i.6"("aws-c-common/source/byte_buf.c":841:24))
  %v117 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v116, ^bb54(%v114, %v117 : !sea.ptr<64>, i64), ^bb44 loc("aws-c-common/source/byte_buf.c":841:28)
^bb44:
  %v118 = sea.const 1 : i64 loc("_86"("aws-c-common/source/byte_buf.c":841:41))
  %v119 = sea.ptr.dereferenceable %v114, %v118 : !sea.ptr<64>, i64 loc("_86"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v119, ^bb45, ^bb109
^bb45:
  %v120 = sea.load %v18[%v114] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_88"("aws-c-common/source/byte_buf.c":841:41))
  %v121 = sea.nondet "uninterpreted_predicate_fn" [18] : i1 loc("_89"("aws-c-common/source/byte_buf.c":841:31))
  sea.cond_br %v121, ^bb46, ^bb54(%v114, %v113 : !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":841:5)
^bb46:
  %v122 = sea.const 18446744073709551608 : i64 loc("_91"("aws-c-common/source/byte_buf.c":842:9))
  %v123 = sea.add %v7, %v122 : i64 loc("_91"("aws-c-common/source/byte_buf.c":842:9))
  %v124 = sea.ptr.index %v16 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_92"("aws-c-common/source/byte_buf.c":843:9))
  %v125 = sea.const 0 : i64 loc(".not.i7.i.i.7"("aws-c-common/source/byte_buf.c":841:24))
  %v126 = sea.icmp eq, %v123, %v125 : i64 loc(".not.i7.i.i.7"("aws-c-common/source/byte_buf.c":841:24))
  %v127 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v126, ^bb54(%v124, %v127 : !sea.ptr<64>, i64), ^bb47 loc("aws-c-common/source/byte_buf.c":841:28)
^bb47:
  %v128 = sea.const 1 : i64 loc("_93"("aws-c-common/source/byte_buf.c":841:41))
  %v129 = sea.ptr.dereferenceable %v124, %v128 : !sea.ptr<64>, i64 loc("_93"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v129, ^bb48, ^bb109
^bb48:
  %v130 = sea.load %v18[%v124] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_95"("aws-c-common/source/byte_buf.c":841:41))
  %v131 = sea.nondet "uninterpreted_predicate_fn" [19] : i1 loc("_96"("aws-c-common/source/byte_buf.c":841:31))
  sea.cond_br %v131, ^bb49, ^bb54(%v124, %v123 : !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":841:5)
^bb49:
  %v132 = sea.const 18446744073709551607 : i64 loc("_98"("aws-c-common/source/byte_buf.c":842:9))
  %v133 = sea.add %v7, %v132 : i64 loc("_98"("aws-c-common/source/byte_buf.c":842:9))
  %v134 = sea.ptr.index %v16 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_99"("aws-c-common/source/byte_buf.c":843:9))
  %v135 = sea.const 0 : i64 loc(".not.i7.i.i.8"("aws-c-common/source/byte_buf.c":841:24))
  %v136 = sea.icmp eq, %v133, %v135 : i64 loc(".not.i7.i.i.8"("aws-c-common/source/byte_buf.c":841:24))
  %v137 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v136, ^bb54(%v134, %v137 : !sea.ptr<64>, i64), ^bb50 loc("aws-c-common/source/byte_buf.c":841:28)
^bb50:
  %v138 = sea.const 1 : i64 loc("_100"("aws-c-common/source/byte_buf.c":841:41))
  %v139 = sea.ptr.dereferenceable %v134, %v138 : !sea.ptr<64>, i64 loc("_100"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v139, ^bb51, ^bb109
^bb51:
  %v140 = sea.load %v18[%v134] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_102"("aws-c-common/source/byte_buf.c":841:41))
  %v141 = sea.nondet "uninterpreted_predicate_fn" [20] : i1 loc("_103"("aws-c-common/source/byte_buf.c":841:31))
  sea.cond_br %v141, ^bb52, ^bb54(%v134, %v133 : !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":841:5)
^bb52:
  %v142 = sea.ptr.index %v16 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_105"("aws-c-common/source/byte_buf.c":843:9))
  %v143 = sea.const 10 : i64 loc(".not.i7.i.i.9"("aws-c-common/source/byte_buf.c":841:24))
  %v144 = sea.icmp eq, %v7, %v143 : i64 loc(".not.i7.i.i.9"("aws-c-common/source/byte_buf.c":841:24))
  %v145 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v144, ^bb54(%v142, %v145 : !sea.ptr<64>, i64), ^bb53 loc("aws-c-common/source/byte_buf.c":841:28)
^bb53:
  %v146 = sea.const 1 : i64 loc("_38"("aws-c-common/source/byte_buf.c":841:41))
  %v147 = sea.ptr.dereferenceable %v142, %v146 : !sea.ptr<64>, i64 loc("_38"("aws-c-common/source/byte_buf.c":841:41))
  %v148 = sea.const 1 : i1
  %v149 = sea.xor %v147, %v148 : i1
  sea.assume %v149
  sea.br ^bb109
^bb54(%v150 : !sea.ptr<64>, %v151 : i64):
  %v152 = sea.const 18446744073709551615 : i64 loc("invariant.gep"("aws-c-common/source/byte_buf.c":826:5))
  %v153 = sea.ptr.add %v150, %v152 : !sea.ptr<64>, i64 loc("invariant.gep"("aws-c-common/source/byte_buf.c":826:5))
  %v154 = sea.const 0 : i64 loc(".not.i.i.i28"("aws-c-common/source/byte_buf.c":826:24))
  %v155 = sea.icmp eq, %v151, %v154 : i64 loc(".not.i.i.i28"("aws-c-common/source/byte_buf.c":826:24))
  %v156 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":826:28)
  sea.cond_br %v155, ^bb76(%v156 : i1), ^bb55 loc("aws-c-common/source/byte_buf.c":826:28)
^bb55:
  %v157 = sea.ptr.index %v153 [%v151] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep4"("aws-c-common/source/byte_buf.c":826:69))
  %v158 = sea.const 1 : i64 loc("_106"("aws-c-common/source/byte_buf.c":826:41))
  %v159 = sea.ptr.dereferenceable %v157, %v158 : !sea.ptr<64>, i64 loc("_106"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v159, ^bb56, ^bb109
^bb56:
  %v160 = sea.load %v18[%v157] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_108"("aws-c-common/source/byte_buf.c":826:41))
  %v161 = sea.nondet "uninterpreted_predicate_fn" [21] : i1 loc("_109"("aws-c-common/source/byte_buf.c":826:31))
  %v162 = sea.const 18446744073709551615 : i64 loc("_110")
  %v163 = sea.add %v151, %v162 : i64 loc("_110")
  %v164 = sea.const 0 : i64 loc(".not.i.i.i")
  %v165 = sea.icmp ne, %v163, %v164 : i64 loc(".not.i.i.i")
  %v166 = sea.const 0 : i1 loc("or.cond.not"("aws-c-common/source/byte_buf.c":826:5))
  %v167 = sea.select %v161, %v165, %v166 : i1 loc("or.cond.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v167, ^bb57, ^bb76(%v161 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb57:
  %v168 = sea.ptr.index %v153 [%v163] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.1"("aws-c-common/source/byte_buf.c":826:69))
  %v169 = sea.const 1 : i64 loc("_111"("aws-c-common/source/byte_buf.c":826:41))
  %v170 = sea.ptr.dereferenceable %v168, %v169 : !sea.ptr<64>, i64 loc("_111"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v170, ^bb58, ^bb109
^bb58:
  %v171 = sea.load %v18[%v168] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_113"("aws-c-common/source/byte_buf.c":826:41))
  %v172 = sea.nondet "uninterpreted_predicate_fn" [22] : i1 loc("_114"("aws-c-common/source/byte_buf.c":826:31))
  %v173 = sea.const 18446744073709551614 : i64 loc("_115")
  %v174 = sea.add %v151, %v173 : i64 loc("_115")
  %v175 = sea.const 0 : i64 loc(".not.i.i.i.1")
  %v176 = sea.icmp ne, %v174, %v175 : i64 loc(".not.i.i.i.1")
  %v177 = sea.const 0 : i1 loc("or.cond.1.not"("aws-c-common/source/byte_buf.c":826:5))
  %v178 = sea.select %v172, %v176, %v177 : i1 loc("or.cond.1.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v178, ^bb59, ^bb76(%v172 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb59:
  %v179 = sea.ptr.index %v153 [%v174] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.2"("aws-c-common/source/byte_buf.c":826:69))
  %v180 = sea.const 1 : i64 loc("_116"("aws-c-common/source/byte_buf.c":826:41))
  %v181 = sea.ptr.dereferenceable %v179, %v180 : !sea.ptr<64>, i64 loc("_116"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v181, ^bb60, ^bb109
^bb60:
  %v182 = sea.load %v18[%v179] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_118"("aws-c-common/source/byte_buf.c":826:41))
  %v183 = sea.nondet "uninterpreted_predicate_fn" [23] : i1 loc("_119"("aws-c-common/source/byte_buf.c":826:31))
  %v184 = sea.const 18446744073709551613 : i64 loc("_120")
  %v185 = sea.add %v151, %v184 : i64 loc("_120")
  %v186 = sea.const 0 : i64 loc(".not.i.i.i.2")
  %v187 = sea.icmp ne, %v185, %v186 : i64 loc(".not.i.i.i.2")
  %v188 = sea.const 0 : i1 loc("or.cond.2.not"("aws-c-common/source/byte_buf.c":826:5))
  %v189 = sea.select %v183, %v187, %v188 : i1 loc("or.cond.2.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v189, ^bb61, ^bb76(%v183 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb61:
  %v190 = sea.ptr.index %v153 [%v185] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.3"("aws-c-common/source/byte_buf.c":826:69))
  %v191 = sea.const 1 : i64 loc("_121"("aws-c-common/source/byte_buf.c":826:41))
  %v192 = sea.ptr.dereferenceable %v190, %v191 : !sea.ptr<64>, i64 loc("_121"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v192, ^bb62, ^bb109
^bb62:
  %v193 = sea.load %v18[%v190] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_123"("aws-c-common/source/byte_buf.c":826:41))
  %v194 = sea.nondet "uninterpreted_predicate_fn" [24] : i1 loc("_124"("aws-c-common/source/byte_buf.c":826:31))
  %v195 = sea.const 18446744073709551612 : i64 loc("_125")
  %v196 = sea.add %v151, %v195 : i64 loc("_125")
  %v197 = sea.const 0 : i64 loc(".not.i.i.i.3")
  %v198 = sea.icmp ne, %v196, %v197 : i64 loc(".not.i.i.i.3")
  %v199 = sea.const 0 : i1 loc("or.cond.3.not"("aws-c-common/source/byte_buf.c":826:5))
  %v200 = sea.select %v194, %v198, %v199 : i1 loc("or.cond.3.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v200, ^bb63, ^bb76(%v194 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb63:
  %v201 = sea.ptr.index %v153 [%v196] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.4"("aws-c-common/source/byte_buf.c":826:69))
  %v202 = sea.const 1 : i64 loc("_126"("aws-c-common/source/byte_buf.c":826:41))
  %v203 = sea.ptr.dereferenceable %v201, %v202 : !sea.ptr<64>, i64 loc("_126"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v203, ^bb64, ^bb109
^bb64:
  %v204 = sea.load %v18[%v201] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_128"("aws-c-common/source/byte_buf.c":826:41))
  %v205 = sea.nondet "uninterpreted_predicate_fn" [25] : i1 loc("_129"("aws-c-common/source/byte_buf.c":826:31))
  %v206 = sea.const 18446744073709551611 : i64 loc("_130")
  %v207 = sea.add %v151, %v206 : i64 loc("_130")
  %v208 = sea.const 0 : i64 loc(".not.i.i.i.4")
  %v209 = sea.icmp ne, %v207, %v208 : i64 loc(".not.i.i.i.4")
  %v210 = sea.const 0 : i1 loc("or.cond.4.not"("aws-c-common/source/byte_buf.c":826:5))
  %v211 = sea.select %v205, %v209, %v210 : i1 loc("or.cond.4.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v211, ^bb65, ^bb76(%v205 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb65:
  %v212 = sea.ptr.index %v153 [%v207] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.5"("aws-c-common/source/byte_buf.c":826:69))
  %v213 = sea.const 1 : i64 loc("_131"("aws-c-common/source/byte_buf.c":826:41))
  %v214 = sea.ptr.dereferenceable %v212, %v213 : !sea.ptr<64>, i64 loc("_131"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v214, ^bb66, ^bb109
^bb66:
  %v215 = sea.load %v18[%v212] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_133"("aws-c-common/source/byte_buf.c":826:41))
  %v216 = sea.nondet "uninterpreted_predicate_fn" [26] : i1 loc("_134"("aws-c-common/source/byte_buf.c":826:31))
  %v217 = sea.const 18446744073709551610 : i64 loc("_135")
  %v218 = sea.add %v151, %v217 : i64 loc("_135")
  %v219 = sea.const 0 : i64 loc(".not.i.i.i.5")
  %v220 = sea.icmp ne, %v218, %v219 : i64 loc(".not.i.i.i.5")
  %v221 = sea.const 0 : i1 loc("or.cond.5.not"("aws-c-common/source/byte_buf.c":826:5))
  %v222 = sea.select %v216, %v220, %v221 : i1 loc("or.cond.5.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v222, ^bb67, ^bb76(%v216 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb67:
  %v223 = sea.ptr.index %v153 [%v218] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.6"("aws-c-common/source/byte_buf.c":826:69))
  %v224 = sea.const 1 : i64 loc("_136"("aws-c-common/source/byte_buf.c":826:41))
  %v225 = sea.ptr.dereferenceable %v223, %v224 : !sea.ptr<64>, i64 loc("_136"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v225, ^bb68, ^bb109
^bb68:
  %v226 = sea.load %v18[%v223] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_138"("aws-c-common/source/byte_buf.c":826:41))
  %v227 = sea.nondet "uninterpreted_predicate_fn" [27] : i1 loc("_139"("aws-c-common/source/byte_buf.c":826:31))
  %v228 = sea.const 18446744073709551609 : i64 loc("_140")
  %v229 = sea.add %v151, %v228 : i64 loc("_140")
  %v230 = sea.const 0 : i64 loc(".not.i.i.i.6")
  %v231 = sea.icmp ne, %v229, %v230 : i64 loc(".not.i.i.i.6")
  %v232 = sea.const 0 : i1 loc("or.cond.6.not"("aws-c-common/source/byte_buf.c":826:5))
  %v233 = sea.select %v227, %v231, %v232 : i1 loc("or.cond.6.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v233, ^bb69, ^bb76(%v227 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb69:
  %v234 = sea.ptr.index %v153 [%v229] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.7"("aws-c-common/source/byte_buf.c":826:69))
  %v235 = sea.const 1 : i64 loc("_141"("aws-c-common/source/byte_buf.c":826:41))
  %v236 = sea.ptr.dereferenceable %v234, %v235 : !sea.ptr<64>, i64 loc("_141"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v236, ^bb70, ^bb109
^bb70:
  %v237 = sea.load %v18[%v234] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_143"("aws-c-common/source/byte_buf.c":826:41))
  %v238 = sea.nondet "uninterpreted_predicate_fn" [28] : i1 loc("_144"("aws-c-common/source/byte_buf.c":826:31))
  %v239 = sea.const 18446744073709551608 : i64 loc("_145")
  %v240 = sea.add %v151, %v239 : i64 loc("_145")
  %v241 = sea.const 0 : i64 loc(".not.i.i.i.7")
  %v242 = sea.icmp ne, %v240, %v241 : i64 loc(".not.i.i.i.7")
  %v243 = sea.const 0 : i1 loc("or.cond.7.not"("aws-c-common/source/byte_buf.c":826:5))
  %v244 = sea.select %v238, %v242, %v243 : i1 loc("or.cond.7.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v244, ^bb71, ^bb76(%v238 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb71:
  %v245 = sea.ptr.index %v153 [%v240] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.8"("aws-c-common/source/byte_buf.c":826:69))
  %v246 = sea.const 1 : i64 loc("_146"("aws-c-common/source/byte_buf.c":826:41))
  %v247 = sea.ptr.dereferenceable %v245, %v246 : !sea.ptr<64>, i64 loc("_146"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v247, ^bb72, ^bb109
^bb72:
  %v248 = sea.load %v18[%v245] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_148"("aws-c-common/source/byte_buf.c":826:41))
  %v249 = sea.nondet "uninterpreted_predicate_fn" [29] : i1 loc("_149"("aws-c-common/source/byte_buf.c":826:31))
  %v250 = sea.const 18446744073709551607 : i64 loc("_150")
  %v251 = sea.add %v151, %v250 : i64 loc("_150")
  %v252 = sea.const 0 : i64 loc(".not.i.i.i.8")
  %v253 = sea.icmp ne, %v251, %v252 : i64 loc(".not.i.i.i.8")
  %v254 = sea.const 0 : i1 loc("or.cond.8.not"("aws-c-common/source/byte_buf.c":826:5))
  %v255 = sea.select %v249, %v253, %v254 : i1 loc("or.cond.8.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v255, ^bb73, ^bb76(%v249 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb73:
  %v256 = sea.ptr.index %v153 [%v251] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.9"("aws-c-common/source/byte_buf.c":826:69))
  %v257 = sea.const 1 : i64 loc("_151"("aws-c-common/source/byte_buf.c":826:41))
  %v258 = sea.ptr.dereferenceable %v256, %v257 : !sea.ptr<64>, i64 loc("_151"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v258, ^bb74, ^bb109
^bb74:
  %v259 = sea.load %v18[%v256] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_153"("aws-c-common/source/byte_buf.c":826:41))
  %v260 = sea.nondet "uninterpreted_predicate_fn" [30] : i1 loc("_154"("aws-c-common/source/byte_buf.c":826:31))
  %v261 = sea.const 18446744073709551606 : i64 loc("_155")
  %v262 = sea.add %v151, %v261 : i64 loc("_155")
  %v263 = sea.const 0 : i64 loc(".not.i.i.i.9")
  %v264 = sea.icmp ne, %v262, %v263 : i64 loc(".not.i.i.i.9")
  %v265 = sea.const 0 : i1 loc("or.cond.9.not"("aws-c-common/source/byte_buf.c":826:5))
  %v266 = sea.select %v260, %v264, %v265 : i1 loc("or.cond.9.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v266, ^bb75, ^bb76(%v260 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb75:
  %v267 = sea.ptr.index %v153 [%v262] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep"("aws-c-common/source/byte_buf.c":826:69))
  %v268 = sea.const 1 : i64 loc("_107"("aws-c-common/source/byte_buf.c":826:41))
  %v269 = sea.ptr.dereferenceable %v267, %v268 : !sea.ptr<64>, i64 loc("_107"("aws-c-common/source/byte_buf.c":826:41))
  %v270 = sea.const 1 : i1
  %v271 = sea.xor %v269, %v270 : i1
  sea.assume %v271
  sea.br ^bb109
^bb76(%v272 : i1):
  sea.br ^bb77
^bb77:
  %v273 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v22, ^bb83(%v273 : i1), ^bb78 loc("aws-c-common/source/byte_buf.c":66:32)
^bb78:
  sea.br ^bb79
^bb79:
  sea.br ^bb80
^bb80:
  %v274 = sea.ptr.null : !sea.ptr<64> loc(".not2.i11.i"("aws-c-common/source/byte_buf.c":66:55))
  %v275 = sea.ptr.cmp eq, %v16, %v274 : !sea.ptr<64> loc(".not2.i11.i"("aws-c-common/source/byte_buf.c":66:55))
  %v276 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v275, ^bb83(%v276 : i1), ^bb81 loc("aws-c-common/source/byte_buf.c":66:67)
^bb81:
  sea.br ^bb82
^bb82:
  %v277 = sea.const 1 : i1
  sea.br ^bb83(%v277 : i1)
^bb83(%v278 : i1):
  sea.br ^bb84
^bb84:
  sea.cond_br %v22, ^bb89, ^bb85 loc("aws-c-common/source/byte_buf.c":66:32)
^bb85:
  sea.br ^bb86
^bb86:
  %v279 = sea.const 1 : i1 loc("or.cond11.not")
  %v280 = sea.and %v34, %v279 : i1 loc("or.cond11.not")
  sea.cond_br %v280, ^bb87, ^bb109
^bb87:
  sea.br ^bb88
^bb88:
  sea.br ^bb89
^bb89:
  sea.br ^bb90
^bb90:
  %v281 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v272, ^bb96(%v281 : i1), ^bb91 loc("aws-c-common/source/byte_buf.c":66:32)
^bb91:
  sea.br ^bb92
^bb92:
  sea.br ^bb93
^bb93:
  %v282 = sea.ptr.null : !sea.ptr<64> loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":66:55))
  %v283 = sea.ptr.cmp eq, %v150, %v282 : !sea.ptr<64> loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":66:55))
  %v284 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v283, ^bb96(%v284 : i1), ^bb94 loc("aws-c-common/source/byte_buf.c":66:67)
^bb94:
  sea.br ^bb95
^bb95:
  %v285 = sea.const 1 : i1
  sea.br ^bb96(%v285 : i1)
^bb96(%v286 : i1):
  sea.br ^bb97
^bb97:
  sea.cond_br %v272, ^bb102, ^bb98 loc("aws-c-common/source/byte_buf.c":66:32)
^bb98:
  sea.br ^bb99
^bb99:
  %v287 = sea.ptr.null : !sea.ptr<64> loc(".not2.i.i")
  %v288 = sea.ptr.cmp ne, %v150, %v287 : !sea.ptr<64> loc(".not2.i.i")
  %v289 = sea.const 1 : i1 loc("or.cond15.not")
  %v290 = sea.const 0 : i1 loc("or.cond15.not")
  %v291 = sea.select %v289, %v288, %v290 : i1 loc("or.cond15.not")
  sea.cond_br %v291, ^bb100, ^bb109
^bb100:
  sea.br ^bb101
^bb101:
  sea.br ^bb102
^bb102:
  %v292 = sea.const 1 : i1 loc("seahorn/jobs/byte_cursor_trim_pred/aws_byte_cursor_trim_pred_harness.c":36:9)
  %v293 = sea.xor %v22, %v292 : i1 loc("seahorn/jobs/byte_cursor_trim_pred/aws_byte_cursor_trim_pred_harness.c":36:9)
  sea.assume %v293 loc("seahorn/jobs/byte_cursor_trim_pred/aws_byte_cursor_trim_pred_harness.c":36:9)
  sea.assume %v34 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb103
^bb103:
  %v294 = sea.ptr.index %v16 [%v29] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_181"("seahorn/lib/utils.c":40:5))
  %v295 = sea.const 1 : i64 loc("_182"("seahorn/lib/utils.c":40:5))
  %v296 = sea.ptr.dereferenceable %v294, %v295 : !sea.ptr<64>, i64 loc("_182"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v296, ^bb104, ^bb109
^bb104:
  %v297 = sea.load %v18[%v294] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_184"("seahorn/lib/utils.c":40:5))
  sea.br ^bb105
^bb105:
  %v298 = sea.icmp eq, %v297, %v46 : i8 loc("_186"("seahorn/lib/utils.c":40:5))
  sea.br ^bb106
^bb106:
  %v299 = sea.const 1 : i64 loc("_188"("seahorn/lib/utils.c":40:5))
  %v300 = sea.ptr.dereferenceable %v294, %v299 : !sea.ptr<64>, i64 loc("_188"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v300, ^bb107, ^bb109
^bb107:
  sea.br ^bb108
^bb108:
  %v301 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v302 = sea.xor %v298, %v301 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v302 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb109 loc("seahorn/lib/utils.c":40:5)
^bb109:
  sea.br ^bb110
^bb110:
  %v303 = sea.const 0 : i1
  sea.assert %v303
  sea.halt
}
