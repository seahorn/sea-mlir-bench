// Exported from SeaHorn (byte_cursor_trim_pred2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm6")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm7")
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
  %v10 = sea.const 10 : i64 loc("malloc.i1")
  %v11 = sea.alloca %v10 align 16 [5] : i64 -> !sea.ptr<64> loc("malloc.i1")
  sea.br ^bb4(%v1, %v11 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb4(%v12 : !sea.mem<!sea.ptr<64>, i8>, %v13 : !sea.ptr<64>):
  %v14 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v15 = sea.memhavoc %v12[%v13], %v14 [6] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v16 = sea.ptr.index %v3 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_8"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb5
^bb5:
  %v17 = sea.store %v5[%v16], %v13 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  sea.br ^bb6
^bb6:
  sea.assume %v7 loc("seahorn/jobs2/byte_cursor_trim_pred2/aws_byte_cursor_trim_pred_harness2.c":17:5)
  sea.br ^bb7
^bb7:
  %v18 = sea.const 0 : i64 loc("_10"("aws-c-common/source/byte_buf.c":66:26))
  %v19 = sea.icmp eq, %v4, %v18 : i64 loc("_10"("aws-c-common/source/byte_buf.c":66:26))
  sea.cond_br %v19, ^bb44, ^bb8 loc("aws-c-common/source/byte_buf.c":66:32)
^bb8:
  sea.br ^bb9
^bb9:
  sea.br ^bb10
^bb10:
  %v20 = sea.ptr.null : !sea.ptr<64> loc(".not2.i15.i"("aws-c-common/source/byte_buf.c":66:55))
  %v21 = sea.ptr.cmp ne, %v13, %v20 : !sea.ptr<64> loc(".not2.i15.i"("aws-c-common/source/byte_buf.c":66:55))
  sea.cond_br %v21, ^bb11, ^bb13 loc("aws-c-common/source/byte_buf.c":66:67)
^bb11:
  sea.br ^bb12
^bb12:
  sea.br ^bb13
^bb13:
  sea.assume %v21 loc("seahorn/jobs2/byte_cursor_trim_pred2/aws_byte_cursor_trim_pred_harness2.c":18:5)
  sea.tracking_on loc("seahorn/jobs2/byte_cursor_trim_pred2/aws_byte_cursor_trim_pred_harness2.c":21:5)
  %v22 = sea.mem.reset_modified %v15[%v13] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_trim_pred2/aws_byte_cursor_trim_pred_harness2.c":22:5)
  %v23 = sea.const 1 : i64 loc("_16"("aws-c-common/source/byte_buf.c":841:41))
  %v24 = sea.ptr.dereferenceable %v13, %v23 : !sea.ptr<64>, i64 loc("_16"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v24, ^bb14, ^bb94
^bb14:
  %v25 = sea.load %v22[%v13] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_18"("aws-c-common/source/byte_buf.c":841:41))
  %v26 = sea.nondet "uninterpreted_predicate_fn" [7] : i1 loc("_19"("aws-c-common/source/byte_buf.c":841:31))
  sea.cond_br %v26, ^bb15, ^bb45(%v22, %v13, %v4 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":841:5)
^bb15:
  %v27 = sea.const 18446744073709551615 : i64 loc("_21"("aws-c-common/source/byte_buf.c":842:9))
  %v28 = sea.add %v4, %v27 : i64 loc("_21"("aws-c-common/source/byte_buf.c":842:9))
  %v29 = sea.ptr.index %v13 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_22"("aws-c-common/source/byte_buf.c":843:9))
  %v30 = sea.const 0 : i64 loc(".not.i7.i.i"("aws-c-common/source/byte_buf.c":841:24))
  %v31 = sea.icmp eq, %v28, %v30 : i64 loc(".not.i7.i.i"("aws-c-common/source/byte_buf.c":841:24))
  %v32 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v31, ^bb45(%v22, %v29, %v32 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64), ^bb16 loc("aws-c-common/source/byte_buf.c":841:28)
^bb16:
  %v33 = sea.const 1 : i64 loc("_23"("aws-c-common/source/byte_buf.c":841:41))
  %v34 = sea.ptr.dereferenceable %v29, %v33 : !sea.ptr<64>, i64 loc("_23"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v34, ^bb17, ^bb94
^bb17:
  %v35 = sea.load %v22[%v29] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_25"("aws-c-common/source/byte_buf.c":841:41))
  %v36 = sea.nondet "uninterpreted_predicate_fn" [8] : i1 loc("_26"("aws-c-common/source/byte_buf.c":841:31))
  sea.cond_br %v36, ^bb18, ^bb45(%v22, %v29, %v28 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":841:5)
^bb18:
  %v37 = sea.const 18446744073709551614 : i64 loc("_28"("aws-c-common/source/byte_buf.c":842:9))
  %v38 = sea.add %v4, %v37 : i64 loc("_28"("aws-c-common/source/byte_buf.c":842:9))
  %v39 = sea.ptr.index %v13 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_29"("aws-c-common/source/byte_buf.c":843:9))
  %v40 = sea.const 0 : i64 loc(".not.i7.i.i.1"("aws-c-common/source/byte_buf.c":841:24))
  %v41 = sea.icmp eq, %v38, %v40 : i64 loc(".not.i7.i.i.1"("aws-c-common/source/byte_buf.c":841:24))
  %v42 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v41, ^bb45(%v22, %v39, %v42 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64), ^bb19 loc("aws-c-common/source/byte_buf.c":841:28)
^bb19:
  %v43 = sea.const 1 : i64 loc("_30"("aws-c-common/source/byte_buf.c":841:41))
  %v44 = sea.ptr.dereferenceable %v39, %v43 : !sea.ptr<64>, i64 loc("_30"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v44, ^bb20, ^bb94
^bb20:
  %v45 = sea.load %v22[%v39] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_32"("aws-c-common/source/byte_buf.c":841:41))
  %v46 = sea.nondet "uninterpreted_predicate_fn" [9] : i1 loc("_33"("aws-c-common/source/byte_buf.c":841:31))
  sea.cond_br %v46, ^bb21, ^bb45(%v22, %v39, %v38 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":841:5)
^bb21:
  %v47 = sea.const 18446744073709551613 : i64 loc("_35"("aws-c-common/source/byte_buf.c":842:9))
  %v48 = sea.add %v4, %v47 : i64 loc("_35"("aws-c-common/source/byte_buf.c":842:9))
  %v49 = sea.ptr.index %v13 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_36"("aws-c-common/source/byte_buf.c":843:9))
  %v50 = sea.const 0 : i64 loc(".not.i7.i.i.2"("aws-c-common/source/byte_buf.c":841:24))
  %v51 = sea.icmp eq, %v48, %v50 : i64 loc(".not.i7.i.i.2"("aws-c-common/source/byte_buf.c":841:24))
  %v52 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v51, ^bb45(%v22, %v49, %v52 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64), ^bb22 loc("aws-c-common/source/byte_buf.c":841:28)
^bb22:
  %v53 = sea.const 1 : i64 loc("_37"("aws-c-common/source/byte_buf.c":841:41))
  %v54 = sea.ptr.dereferenceable %v49, %v53 : !sea.ptr<64>, i64 loc("_37"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v54, ^bb23, ^bb94
^bb23:
  %v55 = sea.load %v22[%v49] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_39"("aws-c-common/source/byte_buf.c":841:41))
  %v56 = sea.nondet "uninterpreted_predicate_fn" [10] : i1 loc("_40"("aws-c-common/source/byte_buf.c":841:31))
  sea.cond_br %v56, ^bb24, ^bb45(%v22, %v49, %v48 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":841:5)
^bb24:
  %v57 = sea.const 18446744073709551612 : i64 loc("_42"("aws-c-common/source/byte_buf.c":842:9))
  %v58 = sea.add %v4, %v57 : i64 loc("_42"("aws-c-common/source/byte_buf.c":842:9))
  %v59 = sea.ptr.index %v13 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_43"("aws-c-common/source/byte_buf.c":843:9))
  %v60 = sea.const 0 : i64 loc(".not.i7.i.i.3"("aws-c-common/source/byte_buf.c":841:24))
  %v61 = sea.icmp eq, %v58, %v60 : i64 loc(".not.i7.i.i.3"("aws-c-common/source/byte_buf.c":841:24))
  %v62 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v61, ^bb45(%v22, %v59, %v62 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64), ^bb25 loc("aws-c-common/source/byte_buf.c":841:28)
^bb25:
  %v63 = sea.const 1 : i64 loc("_44"("aws-c-common/source/byte_buf.c":841:41))
  %v64 = sea.ptr.dereferenceable %v59, %v63 : !sea.ptr<64>, i64 loc("_44"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v64, ^bb26, ^bb94
^bb26:
  %v65 = sea.load %v22[%v59] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_46"("aws-c-common/source/byte_buf.c":841:41))
  %v66 = sea.nondet "uninterpreted_predicate_fn" [11] : i1 loc("_47"("aws-c-common/source/byte_buf.c":841:31))
  sea.cond_br %v66, ^bb27, ^bb45(%v22, %v59, %v58 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":841:5)
^bb27:
  %v67 = sea.const 18446744073709551611 : i64 loc("_49"("aws-c-common/source/byte_buf.c":842:9))
  %v68 = sea.add %v4, %v67 : i64 loc("_49"("aws-c-common/source/byte_buf.c":842:9))
  %v69 = sea.ptr.index %v13 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_50"("aws-c-common/source/byte_buf.c":843:9))
  %v70 = sea.const 0 : i64 loc(".not.i7.i.i.4"("aws-c-common/source/byte_buf.c":841:24))
  %v71 = sea.icmp eq, %v68, %v70 : i64 loc(".not.i7.i.i.4"("aws-c-common/source/byte_buf.c":841:24))
  %v72 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v71, ^bb45(%v22, %v69, %v72 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64), ^bb28 loc("aws-c-common/source/byte_buf.c":841:28)
^bb28:
  %v73 = sea.const 1 : i64 loc("_51"("aws-c-common/source/byte_buf.c":841:41))
  %v74 = sea.ptr.dereferenceable %v69, %v73 : !sea.ptr<64>, i64 loc("_51"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v74, ^bb29, ^bb94
^bb29:
  %v75 = sea.load %v22[%v69] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_53"("aws-c-common/source/byte_buf.c":841:41))
  %v76 = sea.nondet "uninterpreted_predicate_fn" [12] : i1 loc("_54"("aws-c-common/source/byte_buf.c":841:31))
  sea.cond_br %v76, ^bb30, ^bb45(%v22, %v69, %v68 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":841:5)
^bb30:
  %v77 = sea.const 18446744073709551610 : i64 loc("_56"("aws-c-common/source/byte_buf.c":842:9))
  %v78 = sea.add %v4, %v77 : i64 loc("_56"("aws-c-common/source/byte_buf.c":842:9))
  %v79 = sea.ptr.index %v13 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_57"("aws-c-common/source/byte_buf.c":843:9))
  %v80 = sea.const 0 : i64 loc(".not.i7.i.i.5"("aws-c-common/source/byte_buf.c":841:24))
  %v81 = sea.icmp eq, %v78, %v80 : i64 loc(".not.i7.i.i.5"("aws-c-common/source/byte_buf.c":841:24))
  %v82 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v81, ^bb45(%v22, %v79, %v82 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64), ^bb31 loc("aws-c-common/source/byte_buf.c":841:28)
^bb31:
  %v83 = sea.const 1 : i64 loc("_58"("aws-c-common/source/byte_buf.c":841:41))
  %v84 = sea.ptr.dereferenceable %v79, %v83 : !sea.ptr<64>, i64 loc("_58"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v84, ^bb32, ^bb94
^bb32:
  %v85 = sea.load %v22[%v79] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_60"("aws-c-common/source/byte_buf.c":841:41))
  %v86 = sea.nondet "uninterpreted_predicate_fn" [13] : i1 loc("_61"("aws-c-common/source/byte_buf.c":841:31))
  sea.cond_br %v86, ^bb33, ^bb45(%v22, %v79, %v78 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":841:5)
^bb33:
  %v87 = sea.const 18446744073709551609 : i64 loc("_63"("aws-c-common/source/byte_buf.c":842:9))
  %v88 = sea.add %v4, %v87 : i64 loc("_63"("aws-c-common/source/byte_buf.c":842:9))
  %v89 = sea.ptr.index %v13 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_64"("aws-c-common/source/byte_buf.c":843:9))
  %v90 = sea.const 0 : i64 loc(".not.i7.i.i.6"("aws-c-common/source/byte_buf.c":841:24))
  %v91 = sea.icmp eq, %v88, %v90 : i64 loc(".not.i7.i.i.6"("aws-c-common/source/byte_buf.c":841:24))
  %v92 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v91, ^bb45(%v22, %v89, %v92 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64), ^bb34 loc("aws-c-common/source/byte_buf.c":841:28)
^bb34:
  %v93 = sea.const 1 : i64 loc("_65"("aws-c-common/source/byte_buf.c":841:41))
  %v94 = sea.ptr.dereferenceable %v89, %v93 : !sea.ptr<64>, i64 loc("_65"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v94, ^bb35, ^bb94
^bb35:
  %v95 = sea.load %v22[%v89] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_67"("aws-c-common/source/byte_buf.c":841:41))
  %v96 = sea.nondet "uninterpreted_predicate_fn" [14] : i1 loc("_68"("aws-c-common/source/byte_buf.c":841:31))
  sea.cond_br %v96, ^bb36, ^bb45(%v22, %v89, %v88 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":841:5)
^bb36:
  %v97 = sea.const 18446744073709551608 : i64 loc("_70"("aws-c-common/source/byte_buf.c":842:9))
  %v98 = sea.add %v4, %v97 : i64 loc("_70"("aws-c-common/source/byte_buf.c":842:9))
  %v99 = sea.ptr.index %v13 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_71"("aws-c-common/source/byte_buf.c":843:9))
  %v100 = sea.const 0 : i64 loc(".not.i7.i.i.7"("aws-c-common/source/byte_buf.c":841:24))
  %v101 = sea.icmp eq, %v98, %v100 : i64 loc(".not.i7.i.i.7"("aws-c-common/source/byte_buf.c":841:24))
  %v102 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v101, ^bb45(%v22, %v99, %v102 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64), ^bb37 loc("aws-c-common/source/byte_buf.c":841:28)
^bb37:
  %v103 = sea.const 1 : i64 loc("_72"("aws-c-common/source/byte_buf.c":841:41))
  %v104 = sea.ptr.dereferenceable %v99, %v103 : !sea.ptr<64>, i64 loc("_72"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v104, ^bb38, ^bb94
^bb38:
  %v105 = sea.load %v22[%v99] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_74"("aws-c-common/source/byte_buf.c":841:41))
  %v106 = sea.nondet "uninterpreted_predicate_fn" [15] : i1 loc("_75"("aws-c-common/source/byte_buf.c":841:31))
  sea.cond_br %v106, ^bb39, ^bb45(%v22, %v99, %v98 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":841:5)
^bb39:
  %v107 = sea.const 18446744073709551607 : i64 loc("_77"("aws-c-common/source/byte_buf.c":842:9))
  %v108 = sea.add %v4, %v107 : i64 loc("_77"("aws-c-common/source/byte_buf.c":842:9))
  %v109 = sea.ptr.index %v13 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_78"("aws-c-common/source/byte_buf.c":843:9))
  %v110 = sea.const 0 : i64 loc(".not.i7.i.i.8"("aws-c-common/source/byte_buf.c":841:24))
  %v111 = sea.icmp eq, %v108, %v110 : i64 loc(".not.i7.i.i.8"("aws-c-common/source/byte_buf.c":841:24))
  %v112 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v111, ^bb45(%v22, %v109, %v112 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64), ^bb40 loc("aws-c-common/source/byte_buf.c":841:28)
^bb40:
  %v113 = sea.const 1 : i64 loc("_79"("aws-c-common/source/byte_buf.c":841:41))
  %v114 = sea.ptr.dereferenceable %v109, %v113 : !sea.ptr<64>, i64 loc("_79"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v114, ^bb41, ^bb94
^bb41:
  %v115 = sea.load %v22[%v109] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_81"("aws-c-common/source/byte_buf.c":841:41))
  %v116 = sea.nondet "uninterpreted_predicate_fn" [16] : i1 loc("_82"("aws-c-common/source/byte_buf.c":841:31))
  sea.cond_br %v116, ^bb42, ^bb45(%v22, %v109, %v108 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":841:5)
^bb42:
  %v117 = sea.ptr.index %v13 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_84"("aws-c-common/source/byte_buf.c":843:9))
  %v118 = sea.const 10 : i64 loc(".not.i7.i.i.9"("aws-c-common/source/byte_buf.c":841:24))
  %v119 = sea.icmp eq, %v4, %v118 : i64 loc(".not.i7.i.i.9"("aws-c-common/source/byte_buf.c":841:24))
  %v120 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v119, ^bb45(%v22, %v117, %v120 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64), ^bb43 loc("aws-c-common/source/byte_buf.c":841:28)
^bb43:
  %v121 = sea.const 1 : i64 loc("_17"("aws-c-common/source/byte_buf.c":841:41))
  %v122 = sea.ptr.dereferenceable %v117, %v121 : !sea.ptr<64>, i64 loc("_17"("aws-c-common/source/byte_buf.c":841:41))
  %v123 = sea.const 1 : i1
  %v124 = sea.xor %v122, %v123 : i1
  sea.assume %v124
  sea.br ^bb94
^bb44:
  %v125 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_trim_pred2/aws_byte_cursor_trim_pred_harness2.c":18:5)
  sea.assume %v125 loc("seahorn/jobs2/byte_cursor_trim_pred2/aws_byte_cursor_trim_pred_harness2.c":18:5)
  sea.tracking_on loc("seahorn/jobs2/byte_cursor_trim_pred2/aws_byte_cursor_trim_pred_harness2.c":21:5)
  %v126 = sea.mem.reset_modified %v15[%v13] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_trim_pred2/aws_byte_cursor_trim_pred_harness2.c":22:5)
  %v127 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.br ^bb45(%v126, %v13, %v127 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64) loc("aws-c-common/source/byte_buf.c":841:28)
^bb45(%v128 : !sea.mem<!sea.ptr<64>, i8>, %v129 : !sea.ptr<64>, %v130 : i64):
  %v131 = sea.const 18446744073709551615 : i64 loc("invariant.gep"("aws-c-common/source/byte_buf.c":826:5))
  %v132 = sea.ptr.add %v129, %v131 : !sea.ptr<64>, i64 loc("invariant.gep"("aws-c-common/source/byte_buf.c":826:5))
  %v133 = sea.const 0 : i64 loc(".not.i.i.i27"("aws-c-common/source/byte_buf.c":826:24))
  %v134 = sea.icmp eq, %v130, %v133 : i64 loc(".not.i.i.i27"("aws-c-common/source/byte_buf.c":826:24))
  %v135 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":826:28)
  sea.cond_br %v134, ^bb67(%v135 : i1), ^bb46 loc("aws-c-common/source/byte_buf.c":826:28)
^bb46:
  %v136 = sea.ptr.index %v132 [%v130] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep4"("aws-c-common/source/byte_buf.c":826:69))
  %v137 = sea.const 1 : i64 loc("_85"("aws-c-common/source/byte_buf.c":826:41))
  %v138 = sea.ptr.dereferenceable %v136, %v137 : !sea.ptr<64>, i64 loc("_85"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v138, ^bb47, ^bb94
^bb47:
  %v139 = sea.load %v128[%v136] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_87"("aws-c-common/source/byte_buf.c":826:41))
  %v140 = sea.nondet "uninterpreted_predicate_fn" [17] : i1 loc("_88"("aws-c-common/source/byte_buf.c":826:31))
  %v141 = sea.const 18446744073709551615 : i64 loc("_89")
  %v142 = sea.add %v130, %v141 : i64 loc("_89")
  %v143 = sea.const 0 : i64 loc(".not.i.i.i")
  %v144 = sea.icmp ne, %v142, %v143 : i64 loc(".not.i.i.i")
  %v145 = sea.const 0 : i1 loc("or.cond.not"("aws-c-common/source/byte_buf.c":826:5))
  %v146 = sea.select %v140, %v144, %v145 : i1 loc("or.cond.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v146, ^bb48, ^bb67(%v140 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb48:
  %v147 = sea.ptr.index %v132 [%v142] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.1"("aws-c-common/source/byte_buf.c":826:69))
  %v148 = sea.const 1 : i64 loc("_90"("aws-c-common/source/byte_buf.c":826:41))
  %v149 = sea.ptr.dereferenceable %v147, %v148 : !sea.ptr<64>, i64 loc("_90"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v149, ^bb49, ^bb94
^bb49:
  %v150 = sea.load %v128[%v147] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_92"("aws-c-common/source/byte_buf.c":826:41))
  %v151 = sea.nondet "uninterpreted_predicate_fn" [18] : i1 loc("_93"("aws-c-common/source/byte_buf.c":826:31))
  %v152 = sea.const 18446744073709551614 : i64 loc("_94")
  %v153 = sea.add %v130, %v152 : i64 loc("_94")
  %v154 = sea.const 0 : i64 loc(".not.i.i.i.1")
  %v155 = sea.icmp ne, %v153, %v154 : i64 loc(".not.i.i.i.1")
  %v156 = sea.const 0 : i1 loc("or.cond.1.not"("aws-c-common/source/byte_buf.c":826:5))
  %v157 = sea.select %v151, %v155, %v156 : i1 loc("or.cond.1.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v157, ^bb50, ^bb67(%v151 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb50:
  %v158 = sea.ptr.index %v132 [%v153] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.2"("aws-c-common/source/byte_buf.c":826:69))
  %v159 = sea.const 1 : i64 loc("_95"("aws-c-common/source/byte_buf.c":826:41))
  %v160 = sea.ptr.dereferenceable %v158, %v159 : !sea.ptr<64>, i64 loc("_95"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v160, ^bb51, ^bb94
^bb51:
  %v161 = sea.load %v128[%v158] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_97"("aws-c-common/source/byte_buf.c":826:41))
  %v162 = sea.nondet "uninterpreted_predicate_fn" [19] : i1 loc("_98"("aws-c-common/source/byte_buf.c":826:31))
  %v163 = sea.const 18446744073709551613 : i64 loc("_99")
  %v164 = sea.add %v130, %v163 : i64 loc("_99")
  %v165 = sea.const 0 : i64 loc(".not.i.i.i.2")
  %v166 = sea.icmp ne, %v164, %v165 : i64 loc(".not.i.i.i.2")
  %v167 = sea.const 0 : i1 loc("or.cond.2.not"("aws-c-common/source/byte_buf.c":826:5))
  %v168 = sea.select %v162, %v166, %v167 : i1 loc("or.cond.2.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v168, ^bb52, ^bb67(%v162 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb52:
  %v169 = sea.ptr.index %v132 [%v164] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.3"("aws-c-common/source/byte_buf.c":826:69))
  %v170 = sea.const 1 : i64 loc("_100"("aws-c-common/source/byte_buf.c":826:41))
  %v171 = sea.ptr.dereferenceable %v169, %v170 : !sea.ptr<64>, i64 loc("_100"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v171, ^bb53, ^bb94
^bb53:
  %v172 = sea.load %v128[%v169] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_102"("aws-c-common/source/byte_buf.c":826:41))
  %v173 = sea.nondet "uninterpreted_predicate_fn" [20] : i1 loc("_103"("aws-c-common/source/byte_buf.c":826:31))
  %v174 = sea.const 18446744073709551612 : i64 loc("_104")
  %v175 = sea.add %v130, %v174 : i64 loc("_104")
  %v176 = sea.const 0 : i64 loc(".not.i.i.i.3")
  %v177 = sea.icmp ne, %v175, %v176 : i64 loc(".not.i.i.i.3")
  %v178 = sea.const 0 : i1 loc("or.cond.3.not"("aws-c-common/source/byte_buf.c":826:5))
  %v179 = sea.select %v173, %v177, %v178 : i1 loc("or.cond.3.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v179, ^bb54, ^bb67(%v173 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb54:
  %v180 = sea.ptr.index %v132 [%v175] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.4"("aws-c-common/source/byte_buf.c":826:69))
  %v181 = sea.const 1 : i64 loc("_105"("aws-c-common/source/byte_buf.c":826:41))
  %v182 = sea.ptr.dereferenceable %v180, %v181 : !sea.ptr<64>, i64 loc("_105"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v182, ^bb55, ^bb94
^bb55:
  %v183 = sea.load %v128[%v180] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_107"("aws-c-common/source/byte_buf.c":826:41))
  %v184 = sea.nondet "uninterpreted_predicate_fn" [21] : i1 loc("_108"("aws-c-common/source/byte_buf.c":826:31))
  %v185 = sea.const 18446744073709551611 : i64 loc("_109")
  %v186 = sea.add %v130, %v185 : i64 loc("_109")
  %v187 = sea.const 0 : i64 loc(".not.i.i.i.4")
  %v188 = sea.icmp ne, %v186, %v187 : i64 loc(".not.i.i.i.4")
  %v189 = sea.const 0 : i1 loc("or.cond.4.not"("aws-c-common/source/byte_buf.c":826:5))
  %v190 = sea.select %v184, %v188, %v189 : i1 loc("or.cond.4.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v190, ^bb56, ^bb67(%v184 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb56:
  %v191 = sea.ptr.index %v132 [%v186] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.5"("aws-c-common/source/byte_buf.c":826:69))
  %v192 = sea.const 1 : i64 loc("_110"("aws-c-common/source/byte_buf.c":826:41))
  %v193 = sea.ptr.dereferenceable %v191, %v192 : !sea.ptr<64>, i64 loc("_110"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v193, ^bb57, ^bb94
^bb57:
  %v194 = sea.load %v128[%v191] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_112"("aws-c-common/source/byte_buf.c":826:41))
  %v195 = sea.nondet "uninterpreted_predicate_fn" [22] : i1 loc("_113"("aws-c-common/source/byte_buf.c":826:31))
  %v196 = sea.const 18446744073709551610 : i64 loc("_114")
  %v197 = sea.add %v130, %v196 : i64 loc("_114")
  %v198 = sea.const 0 : i64 loc(".not.i.i.i.5")
  %v199 = sea.icmp ne, %v197, %v198 : i64 loc(".not.i.i.i.5")
  %v200 = sea.const 0 : i1 loc("or.cond.5.not"("aws-c-common/source/byte_buf.c":826:5))
  %v201 = sea.select %v195, %v199, %v200 : i1 loc("or.cond.5.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v201, ^bb58, ^bb67(%v195 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb58:
  %v202 = sea.ptr.index %v132 [%v197] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.6"("aws-c-common/source/byte_buf.c":826:69))
  %v203 = sea.const 1 : i64 loc("_115"("aws-c-common/source/byte_buf.c":826:41))
  %v204 = sea.ptr.dereferenceable %v202, %v203 : !sea.ptr<64>, i64 loc("_115"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v204, ^bb59, ^bb94
^bb59:
  %v205 = sea.load %v128[%v202] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_117"("aws-c-common/source/byte_buf.c":826:41))
  %v206 = sea.nondet "uninterpreted_predicate_fn" [23] : i1 loc("_118"("aws-c-common/source/byte_buf.c":826:31))
  %v207 = sea.const 18446744073709551609 : i64 loc("_119")
  %v208 = sea.add %v130, %v207 : i64 loc("_119")
  %v209 = sea.const 0 : i64 loc(".not.i.i.i.6")
  %v210 = sea.icmp ne, %v208, %v209 : i64 loc(".not.i.i.i.6")
  %v211 = sea.const 0 : i1 loc("or.cond.6.not"("aws-c-common/source/byte_buf.c":826:5))
  %v212 = sea.select %v206, %v210, %v211 : i1 loc("or.cond.6.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v212, ^bb60, ^bb67(%v206 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb60:
  %v213 = sea.ptr.index %v132 [%v208] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.7"("aws-c-common/source/byte_buf.c":826:69))
  %v214 = sea.const 1 : i64 loc("_120"("aws-c-common/source/byte_buf.c":826:41))
  %v215 = sea.ptr.dereferenceable %v213, %v214 : !sea.ptr<64>, i64 loc("_120"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v215, ^bb61, ^bb94
^bb61:
  %v216 = sea.load %v128[%v213] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_122"("aws-c-common/source/byte_buf.c":826:41))
  %v217 = sea.nondet "uninterpreted_predicate_fn" [24] : i1 loc("_123"("aws-c-common/source/byte_buf.c":826:31))
  %v218 = sea.const 18446744073709551608 : i64 loc("_124")
  %v219 = sea.add %v130, %v218 : i64 loc("_124")
  %v220 = sea.const 0 : i64 loc(".not.i.i.i.7")
  %v221 = sea.icmp ne, %v219, %v220 : i64 loc(".not.i.i.i.7")
  %v222 = sea.const 0 : i1 loc("or.cond.7.not"("aws-c-common/source/byte_buf.c":826:5))
  %v223 = sea.select %v217, %v221, %v222 : i1 loc("or.cond.7.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v223, ^bb62, ^bb67(%v217 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb62:
  %v224 = sea.ptr.index %v132 [%v219] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.8"("aws-c-common/source/byte_buf.c":826:69))
  %v225 = sea.const 1 : i64 loc("_125"("aws-c-common/source/byte_buf.c":826:41))
  %v226 = sea.ptr.dereferenceable %v224, %v225 : !sea.ptr<64>, i64 loc("_125"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v226, ^bb63, ^bb94
^bb63:
  %v227 = sea.load %v128[%v224] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_127"("aws-c-common/source/byte_buf.c":826:41))
  %v228 = sea.nondet "uninterpreted_predicate_fn" [25] : i1 loc("_128"("aws-c-common/source/byte_buf.c":826:31))
  %v229 = sea.const 18446744073709551607 : i64 loc("_129")
  %v230 = sea.add %v130, %v229 : i64 loc("_129")
  %v231 = sea.const 0 : i64 loc(".not.i.i.i.8")
  %v232 = sea.icmp ne, %v230, %v231 : i64 loc(".not.i.i.i.8")
  %v233 = sea.const 0 : i1 loc("or.cond.8.not"("aws-c-common/source/byte_buf.c":826:5))
  %v234 = sea.select %v228, %v232, %v233 : i1 loc("or.cond.8.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v234, ^bb64, ^bb67(%v228 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb64:
  %v235 = sea.ptr.index %v132 [%v230] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.9"("aws-c-common/source/byte_buf.c":826:69))
  %v236 = sea.const 1 : i64 loc("_130"("aws-c-common/source/byte_buf.c":826:41))
  %v237 = sea.ptr.dereferenceable %v235, %v236 : !sea.ptr<64>, i64 loc("_130"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v237, ^bb65, ^bb94
^bb65:
  %v238 = sea.load %v128[%v235] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_132"("aws-c-common/source/byte_buf.c":826:41))
  %v239 = sea.nondet "uninterpreted_predicate_fn" [26] : i1 loc("_133"("aws-c-common/source/byte_buf.c":826:31))
  %v240 = sea.const 18446744073709551606 : i64 loc("_134")
  %v241 = sea.add %v130, %v240 : i64 loc("_134")
  %v242 = sea.const 0 : i64 loc(".not.i.i.i.9")
  %v243 = sea.icmp ne, %v241, %v242 : i64 loc(".not.i.i.i.9")
  %v244 = sea.const 0 : i1 loc("or.cond.9.not"("aws-c-common/source/byte_buf.c":826:5))
  %v245 = sea.select %v239, %v243, %v244 : i1 loc("or.cond.9.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v245, ^bb66, ^bb67(%v239 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb66:
  %v246 = sea.ptr.index %v132 [%v241] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep"("aws-c-common/source/byte_buf.c":826:69))
  %v247 = sea.const 1 : i64 loc("_86"("aws-c-common/source/byte_buf.c":826:41))
  %v248 = sea.ptr.dereferenceable %v246, %v247 : !sea.ptr<64>, i64 loc("_86"("aws-c-common/source/byte_buf.c":826:41))
  %v249 = sea.const 1 : i1
  %v250 = sea.xor %v248, %v249 : i1
  sea.assume %v250
  sea.br ^bb94
^bb67(%v251 : i1):
  sea.br ^bb68
^bb68:
  %v252 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v19, ^bb74(%v252 : i1), ^bb69 loc("aws-c-common/source/byte_buf.c":66:32)
^bb69:
  sea.br ^bb70
^bb70:
  sea.br ^bb71
^bb71:
  %v253 = sea.ptr.null : !sea.ptr<64> loc(".not2.i11.i"("aws-c-common/source/byte_buf.c":66:55))
  %v254 = sea.ptr.cmp eq, %v13, %v253 : !sea.ptr<64> loc(".not2.i11.i"("aws-c-common/source/byte_buf.c":66:55))
  %v255 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v254, ^bb74(%v255 : i1), ^bb72 loc("aws-c-common/source/byte_buf.c":66:67)
^bb72:
  sea.br ^bb73
^bb73:
  %v256 = sea.const 1 : i1
  sea.br ^bb74(%v256 : i1)
^bb74(%v257 : i1):
  sea.br ^bb75
^bb75:
  sea.cond_br %v19, ^bb80, ^bb76 loc("aws-c-common/source/byte_buf.c":66:32)
^bb76:
  sea.br ^bb77
^bb77:
  %v258 = sea.ptr.null : !sea.ptr<64> loc(".not2.i7.i")
  %v259 = sea.ptr.cmp ne, %v13, %v258 : !sea.ptr<64> loc(".not2.i7.i")
  %v260 = sea.const 1 : i1 loc("or.cond10.not")
  %v261 = sea.and %v259, %v260 : i1 loc("or.cond10.not")
  sea.cond_br %v261, ^bb78, ^bb94
^bb78:
  sea.br ^bb79
^bb79:
  sea.br ^bb80
^bb80:
  sea.br ^bb81
^bb81:
  %v262 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v251, ^bb87(%v262 : i1), ^bb82 loc("aws-c-common/source/byte_buf.c":66:32)
^bb82:
  sea.br ^bb83
^bb83:
  sea.br ^bb84
^bb84:
  %v263 = sea.ptr.null : !sea.ptr<64> loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":66:55))
  %v264 = sea.ptr.cmp eq, %v129, %v263 : !sea.ptr<64> loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":66:55))
  %v265 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v264, ^bb87(%v265 : i1), ^bb85 loc("aws-c-common/source/byte_buf.c":66:67)
^bb85:
  sea.br ^bb86
^bb86:
  %v266 = sea.const 1 : i1
  sea.br ^bb87(%v266 : i1)
^bb87(%v267 : i1):
  sea.br ^bb88
^bb88:
  sea.cond_br %v251, ^bb93, ^bb89 loc("aws-c-common/source/byte_buf.c":66:32)
^bb89:
  sea.br ^bb90
^bb90:
  %v268 = sea.ptr.null : !sea.ptr<64> loc(".not2.i.i")
  %v269 = sea.ptr.cmp ne, %v129, %v268 : !sea.ptr<64> loc(".not2.i.i")
  %v270 = sea.const 1 : i1 loc("or.cond14.not")
  %v271 = sea.const 0 : i1 loc("or.cond14.not")
  %v272 = sea.select %v270, %v269, %v271 : i1 loc("or.cond14.not")
  sea.cond_br %v272, ^bb91, ^bb94
^bb91:
  sea.br ^bb92
^bb92:
  sea.br ^bb93
^bb93:
  %v273 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_trim_pred2/aws_byte_cursor_trim_pred_harness2.c":30:9)
  %v274 = sea.xor %v19, %v273 : i1 loc("seahorn/jobs2/byte_cursor_trim_pred2/aws_byte_cursor_trim_pred_harness2.c":30:9)
  sea.assume %v274 loc("seahorn/jobs2/byte_cursor_trim_pred2/aws_byte_cursor_trim_pred_harness2.c":30:9)
  %v275 = sea.mem.is_modified %v128[%v13] : !sea.mem<!sea.ptr<64>, i8> loc("_159"("seahorn/jobs2/byte_cursor_trim_pred2/aws_byte_cursor_trim_pred_harness2.c":31:9))
  %v276 = sea.const 1 : i1 loc("_160"("seahorn/jobs2/byte_cursor_trim_pred2/aws_byte_cursor_trim_pred_harness2.c":31:9))
  %v277 = sea.xor %v275, %v276 : i1 loc("_160"("seahorn/jobs2/byte_cursor_trim_pred2/aws_byte_cursor_trim_pred_harness2.c":31:9))
  %v278 = sea.mem.is_modified %v128[%v13] : !sea.mem<!sea.ptr<64>, i8> loc("_161"("seahorn/jobs2/byte_cursor_trim_pred2/aws_byte_cursor_trim_pred_harness2.c":31:9))
  sea.assume %v278 loc("seahorn/jobs2/byte_cursor_trim_pred2/aws_byte_cursor_trim_pred_harness2.c":31:9)
  sea.br ^bb94 loc("seahorn/jobs2/byte_cursor_trim_pred2/aws_byte_cursor_trim_pred_harness2.c":31:9)
^bb94:
  sea.br ^bb95
^bb95:
  %v279 = sea.const 0 : i1
  sea.assert %v279
  sea.halt
}
