// Exported from SeaHorn (byte_cursor_left_trim_pred2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm3")
  %v1 = sea.nondet "nd_size_t" [1] : i64 loc("_0"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb1
^bb1:
  sea.br ^bb2
^bb2:
  %v2 = sea.const 11 : i64 loc("_3"("seahorn/lib/byte_buf_helper.c":33:24))
  %v3 = sea.icmp ult, %v1, %v2 : i64 loc("_3"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v3 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v4 = sea.nondet "nd_malloc_is_fail" [2] : i1 loc("_4"("seahorn/lib/sea_allocators.c":11:10))
  %v5 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v4, ^bb4(%v0, %v5 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/sea_allocators.c":11:10)
^bb3:
  %v6 = sea.const 10 : i64 loc("malloc.i1")
  %v7 = sea.alloca %v6 align 16 [3] : i64 -> !sea.ptr<64> loc("malloc.i1")
  sea.br ^bb4(%v0, %v7 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb4(%v8 : !sea.mem<!sea.ptr<64>, i8>, %v9 : !sea.ptr<64>):
  %v10 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v11 = sea.memhavoc %v8[%v9], %v10 [4] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb5
^bb5:
  sea.br ^bb6
^bb6:
  sea.assume %v3 loc("seahorn/jobs2/byte_cursor_left_trim_pred2/aws_byte_cursor_left_trim_pred_harness2.c":15:5)
  sea.br ^bb7
^bb7:
  %v12 = sea.const 0 : i64 loc("_8"("aws-c-common/source/byte_buf.c":66:26))
  %v13 = sea.icmp eq, %v1, %v12 : i64 loc("_8"("aws-c-common/source/byte_buf.c":66:26))
  sea.cond_br %v13, ^bb44, ^bb8 loc("aws-c-common/source/byte_buf.c":66:32)
^bb8:
  sea.br ^bb9
^bb9:
  sea.br ^bb10
^bb10:
  %v14 = sea.ptr.null : !sea.ptr<64> loc(".not2.i15.i"("aws-c-common/source/byte_buf.c":66:55))
  %v15 = sea.ptr.cmp ne, %v9, %v14 : !sea.ptr<64> loc(".not2.i15.i"("aws-c-common/source/byte_buf.c":66:55))
  sea.cond_br %v15, ^bb11, ^bb13 loc("aws-c-common/source/byte_buf.c":66:67)
^bb11:
  sea.br ^bb12
^bb12:
  sea.br ^bb13
^bb13:
  sea.assume %v15 loc("seahorn/jobs2/byte_cursor_left_trim_pred2/aws_byte_cursor_left_trim_pred_harness2.c":16:5)
  sea.tracking_on loc("seahorn/jobs2/byte_cursor_left_trim_pred2/aws_byte_cursor_left_trim_pred_harness2.c":19:5)
  %v16 = sea.mem.reset_modified %v11[%v9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_left_trim_pred2/aws_byte_cursor_left_trim_pred_harness2.c":20:5)
  %v17 = sea.const 1 : i64 loc("_14"("aws-c-common/source/byte_buf.c":841:41))
  %v18 = sea.ptr.dereferenceable %v9, %v17 : !sea.ptr<64>, i64 loc("_14"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v18, ^bb14, ^bb72
^bb14:
  %v19 = sea.load %v16[%v9] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_16"("aws-c-common/source/byte_buf.c":841:41))
  %v20 = sea.nondet "uninterpreted_predicate_fn" [5] : i1 loc("_17"("aws-c-common/source/byte_buf.c":841:31))
  %v21 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":841:5)
  sea.cond_br %v20, ^bb15, ^bb45(%v16, %v9, %v21 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i1) loc("aws-c-common/source/byte_buf.c":841:5)
^bb15:
  %v22 = sea.ptr.index %v9 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_19"("aws-c-common/source/byte_buf.c":843:9))
  %v23 = sea.const 1 : i64 loc(".not.i.i"("aws-c-common/source/byte_buf.c":841:24))
  %v24 = sea.icmp eq, %v1, %v23 : i64 loc(".not.i.i"("aws-c-common/source/byte_buf.c":841:24))
  %v25 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v24, ^bb45(%v16, %v22, %v25 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i1), ^bb16 loc("aws-c-common/source/byte_buf.c":841:28)
^bb16:
  %v26 = sea.const 1 : i64 loc("_20"("aws-c-common/source/byte_buf.c":841:41))
  %v27 = sea.ptr.dereferenceable %v22, %v26 : !sea.ptr<64>, i64 loc("_20"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v27, ^bb17, ^bb72
^bb17:
  %v28 = sea.load %v16[%v22] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_22"("aws-c-common/source/byte_buf.c":841:41))
  %v29 = sea.nondet "uninterpreted_predicate_fn" [6] : i1 loc("_23"("aws-c-common/source/byte_buf.c":841:31))
  %v30 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":841:5)
  sea.cond_br %v29, ^bb18, ^bb45(%v16, %v22, %v30 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i1) loc("aws-c-common/source/byte_buf.c":841:5)
^bb18:
  %v31 = sea.ptr.index %v9 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_25"("aws-c-common/source/byte_buf.c":843:9))
  %v32 = sea.const 2 : i64 loc(".not.i.i.1"("aws-c-common/source/byte_buf.c":841:24))
  %v33 = sea.icmp eq, %v1, %v32 : i64 loc(".not.i.i.1"("aws-c-common/source/byte_buf.c":841:24))
  %v34 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v33, ^bb45(%v16, %v31, %v34 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i1), ^bb19 loc("aws-c-common/source/byte_buf.c":841:28)
^bb19:
  %v35 = sea.const 1 : i64 loc("_26"("aws-c-common/source/byte_buf.c":841:41))
  %v36 = sea.ptr.dereferenceable %v31, %v35 : !sea.ptr<64>, i64 loc("_26"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v36, ^bb20, ^bb72
^bb20:
  %v37 = sea.load %v16[%v31] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_28"("aws-c-common/source/byte_buf.c":841:41))
  %v38 = sea.nondet "uninterpreted_predicate_fn" [7] : i1 loc("_29"("aws-c-common/source/byte_buf.c":841:31))
  %v39 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":841:5)
  sea.cond_br %v38, ^bb21, ^bb45(%v16, %v31, %v39 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i1) loc("aws-c-common/source/byte_buf.c":841:5)
^bb21:
  %v40 = sea.ptr.index %v9 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_31"("aws-c-common/source/byte_buf.c":843:9))
  %v41 = sea.const 3 : i64 loc(".not.i.i.2"("aws-c-common/source/byte_buf.c":841:24))
  %v42 = sea.icmp eq, %v1, %v41 : i64 loc(".not.i.i.2"("aws-c-common/source/byte_buf.c":841:24))
  %v43 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v42, ^bb45(%v16, %v40, %v43 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i1), ^bb22 loc("aws-c-common/source/byte_buf.c":841:28)
^bb22:
  %v44 = sea.const 1 : i64 loc("_32"("aws-c-common/source/byte_buf.c":841:41))
  %v45 = sea.ptr.dereferenceable %v40, %v44 : !sea.ptr<64>, i64 loc("_32"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v45, ^bb23, ^bb72
^bb23:
  %v46 = sea.load %v16[%v40] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_34"("aws-c-common/source/byte_buf.c":841:41))
  %v47 = sea.nondet "uninterpreted_predicate_fn" [8] : i1 loc("_35"("aws-c-common/source/byte_buf.c":841:31))
  %v48 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":841:5)
  sea.cond_br %v47, ^bb24, ^bb45(%v16, %v40, %v48 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i1) loc("aws-c-common/source/byte_buf.c":841:5)
^bb24:
  %v49 = sea.ptr.index %v9 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_37"("aws-c-common/source/byte_buf.c":843:9))
  %v50 = sea.const 4 : i64 loc(".not.i.i.3"("aws-c-common/source/byte_buf.c":841:24))
  %v51 = sea.icmp eq, %v1, %v50 : i64 loc(".not.i.i.3"("aws-c-common/source/byte_buf.c":841:24))
  %v52 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v51, ^bb45(%v16, %v49, %v52 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i1), ^bb25 loc("aws-c-common/source/byte_buf.c":841:28)
^bb25:
  %v53 = sea.const 1 : i64 loc("_38"("aws-c-common/source/byte_buf.c":841:41))
  %v54 = sea.ptr.dereferenceable %v49, %v53 : !sea.ptr<64>, i64 loc("_38"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v54, ^bb26, ^bb72
^bb26:
  %v55 = sea.load %v16[%v49] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_40"("aws-c-common/source/byte_buf.c":841:41))
  %v56 = sea.nondet "uninterpreted_predicate_fn" [9] : i1 loc("_41"("aws-c-common/source/byte_buf.c":841:31))
  %v57 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":841:5)
  sea.cond_br %v56, ^bb27, ^bb45(%v16, %v49, %v57 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i1) loc("aws-c-common/source/byte_buf.c":841:5)
^bb27:
  %v58 = sea.ptr.index %v9 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_43"("aws-c-common/source/byte_buf.c":843:9))
  %v59 = sea.const 5 : i64 loc(".not.i.i.4"("aws-c-common/source/byte_buf.c":841:24))
  %v60 = sea.icmp eq, %v1, %v59 : i64 loc(".not.i.i.4"("aws-c-common/source/byte_buf.c":841:24))
  %v61 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v60, ^bb45(%v16, %v58, %v61 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i1), ^bb28 loc("aws-c-common/source/byte_buf.c":841:28)
^bb28:
  %v62 = sea.const 1 : i64 loc("_44"("aws-c-common/source/byte_buf.c":841:41))
  %v63 = sea.ptr.dereferenceable %v58, %v62 : !sea.ptr<64>, i64 loc("_44"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v63, ^bb29, ^bb72
^bb29:
  %v64 = sea.load %v16[%v58] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_46"("aws-c-common/source/byte_buf.c":841:41))
  %v65 = sea.nondet "uninterpreted_predicate_fn" [10] : i1 loc("_47"("aws-c-common/source/byte_buf.c":841:31))
  %v66 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":841:5)
  sea.cond_br %v65, ^bb30, ^bb45(%v16, %v58, %v66 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i1) loc("aws-c-common/source/byte_buf.c":841:5)
^bb30:
  %v67 = sea.ptr.index %v9 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_49"("aws-c-common/source/byte_buf.c":843:9))
  %v68 = sea.const 6 : i64 loc(".not.i.i.5"("aws-c-common/source/byte_buf.c":841:24))
  %v69 = sea.icmp eq, %v1, %v68 : i64 loc(".not.i.i.5"("aws-c-common/source/byte_buf.c":841:24))
  %v70 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v69, ^bb45(%v16, %v67, %v70 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i1), ^bb31 loc("aws-c-common/source/byte_buf.c":841:28)
^bb31:
  %v71 = sea.const 1 : i64 loc("_50"("aws-c-common/source/byte_buf.c":841:41))
  %v72 = sea.ptr.dereferenceable %v67, %v71 : !sea.ptr<64>, i64 loc("_50"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v72, ^bb32, ^bb72
^bb32:
  %v73 = sea.load %v16[%v67] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_52"("aws-c-common/source/byte_buf.c":841:41))
  %v74 = sea.nondet "uninterpreted_predicate_fn" [11] : i1 loc("_53"("aws-c-common/source/byte_buf.c":841:31))
  %v75 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":841:5)
  sea.cond_br %v74, ^bb33, ^bb45(%v16, %v67, %v75 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i1) loc("aws-c-common/source/byte_buf.c":841:5)
^bb33:
  %v76 = sea.ptr.index %v9 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_55"("aws-c-common/source/byte_buf.c":843:9))
  %v77 = sea.const 7 : i64 loc(".not.i.i.6"("aws-c-common/source/byte_buf.c":841:24))
  %v78 = sea.icmp eq, %v1, %v77 : i64 loc(".not.i.i.6"("aws-c-common/source/byte_buf.c":841:24))
  %v79 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v78, ^bb45(%v16, %v76, %v79 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i1), ^bb34 loc("aws-c-common/source/byte_buf.c":841:28)
^bb34:
  %v80 = sea.const 1 : i64 loc("_56"("aws-c-common/source/byte_buf.c":841:41))
  %v81 = sea.ptr.dereferenceable %v76, %v80 : !sea.ptr<64>, i64 loc("_56"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v81, ^bb35, ^bb72
^bb35:
  %v82 = sea.load %v16[%v76] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_58"("aws-c-common/source/byte_buf.c":841:41))
  %v83 = sea.nondet "uninterpreted_predicate_fn" [12] : i1 loc("_59"("aws-c-common/source/byte_buf.c":841:31))
  %v84 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":841:5)
  sea.cond_br %v83, ^bb36, ^bb45(%v16, %v76, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i1) loc("aws-c-common/source/byte_buf.c":841:5)
^bb36:
  %v85 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_61"("aws-c-common/source/byte_buf.c":843:9))
  %v86 = sea.const 8 : i64 loc(".not.i.i.7"("aws-c-common/source/byte_buf.c":841:24))
  %v87 = sea.icmp eq, %v1, %v86 : i64 loc(".not.i.i.7"("aws-c-common/source/byte_buf.c":841:24))
  %v88 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v87, ^bb45(%v16, %v85, %v88 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i1), ^bb37 loc("aws-c-common/source/byte_buf.c":841:28)
^bb37:
  %v89 = sea.const 1 : i64 loc("_62"("aws-c-common/source/byte_buf.c":841:41))
  %v90 = sea.ptr.dereferenceable %v85, %v89 : !sea.ptr<64>, i64 loc("_62"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v90, ^bb38, ^bb72
^bb38:
  %v91 = sea.load %v16[%v85] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_64"("aws-c-common/source/byte_buf.c":841:41))
  %v92 = sea.nondet "uninterpreted_predicate_fn" [13] : i1 loc("_65"("aws-c-common/source/byte_buf.c":841:31))
  %v93 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":841:5)
  sea.cond_br %v92, ^bb39, ^bb45(%v16, %v85, %v93 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i1) loc("aws-c-common/source/byte_buf.c":841:5)
^bb39:
  %v94 = sea.ptr.index %v9 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_67"("aws-c-common/source/byte_buf.c":843:9))
  %v95 = sea.const 9 : i64 loc(".not.i.i.8"("aws-c-common/source/byte_buf.c":841:24))
  %v96 = sea.icmp eq, %v1, %v95 : i64 loc(".not.i.i.8"("aws-c-common/source/byte_buf.c":841:24))
  %v97 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v96, ^bb45(%v16, %v94, %v97 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i1), ^bb40 loc("aws-c-common/source/byte_buf.c":841:28)
^bb40:
  %v98 = sea.const 1 : i64 loc("_68"("aws-c-common/source/byte_buf.c":841:41))
  %v99 = sea.ptr.dereferenceable %v94, %v98 : !sea.ptr<64>, i64 loc("_68"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v99, ^bb41, ^bb72
^bb41:
  %v100 = sea.load %v16[%v94] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_70"("aws-c-common/source/byte_buf.c":841:41))
  %v101 = sea.nondet "uninterpreted_predicate_fn" [14] : i1 loc("_71"("aws-c-common/source/byte_buf.c":841:31))
  %v102 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":841:5)
  sea.cond_br %v101, ^bb42, ^bb45(%v16, %v94, %v102 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i1) loc("aws-c-common/source/byte_buf.c":841:5)
^bb42:
  %v103 = sea.ptr.index %v9 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_73"("aws-c-common/source/byte_buf.c":843:9))
  %v104 = sea.const 10 : i64 loc(".not.i.i.9"("aws-c-common/source/byte_buf.c":841:24))
  %v105 = sea.icmp eq, %v1, %v104 : i64 loc(".not.i.i.9"("aws-c-common/source/byte_buf.c":841:24))
  %v106 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v105, ^bb45(%v16, %v103, %v106 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i1), ^bb43 loc("aws-c-common/source/byte_buf.c":841:28)
^bb43:
  %v107 = sea.const 1 : i64 loc("_15"("aws-c-common/source/byte_buf.c":841:41))
  %v108 = sea.ptr.dereferenceable %v103, %v107 : !sea.ptr<64>, i64 loc("_15"("aws-c-common/source/byte_buf.c":841:41))
  %v109 = sea.const 1 : i1
  %v110 = sea.xor %v108, %v109 : i1
  sea.assume %v110
  sea.br ^bb72
^bb44:
  %v111 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_left_trim_pred2/aws_byte_cursor_left_trim_pred_harness2.c":16:5)
  sea.assume %v111 loc("seahorn/jobs2/byte_cursor_left_trim_pred2/aws_byte_cursor_left_trim_pred_harness2.c":16:5)
  sea.tracking_on loc("seahorn/jobs2/byte_cursor_left_trim_pred2/aws_byte_cursor_left_trim_pred_harness2.c":19:5)
  %v112 = sea.mem.reset_modified %v11[%v9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_left_trim_pred2/aws_byte_cursor_left_trim_pred_harness2.c":20:5)
  %v113 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.br ^bb45(%v112, %v9, %v113 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i1) loc("aws-c-common/source/byte_buf.c":841:28)
^bb45(%v114 : !sea.mem<!sea.ptr<64>, i8>, %v115 : !sea.ptr<64>, %v116 : i1):
  sea.br ^bb46
^bb46:
  %v117 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v13, ^bb52(%v117 : i1), ^bb47 loc("aws-c-common/source/byte_buf.c":66:32)
^bb47:
  sea.br ^bb48
^bb48:
  sea.br ^bb49
^bb49:
  %v118 = sea.ptr.null : !sea.ptr<64> loc(".not2.i11.i"("aws-c-common/source/byte_buf.c":66:55))
  %v119 = sea.ptr.cmp eq, %v9, %v118 : !sea.ptr<64> loc(".not2.i11.i"("aws-c-common/source/byte_buf.c":66:55))
  %v120 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v119, ^bb52(%v120 : i1), ^bb50 loc("aws-c-common/source/byte_buf.c":66:67)
^bb50:
  sea.br ^bb51
^bb51:
  %v121 = sea.const 1 : i1
  sea.br ^bb52(%v121 : i1)
^bb52(%v122 : i1):
  sea.br ^bb53
^bb53:
  sea.cond_br %v13, ^bb58, ^bb54 loc("aws-c-common/source/byte_buf.c":66:32)
^bb54:
  sea.br ^bb55
^bb55:
  %v123 = sea.ptr.null : !sea.ptr<64> loc(".not2.i7.i")
  %v124 = sea.ptr.cmp ne, %v9, %v123 : !sea.ptr<64> loc(".not2.i7.i")
  %v125 = sea.const 1 : i1 loc("or.cond10.not")
  %v126 = sea.and %v124, %v125 : i1 loc("or.cond10.not")
  sea.cond_br %v126, ^bb56, ^bb72
^bb56:
  sea.br ^bb57
^bb57:
  sea.br ^bb58
^bb58:
  sea.br ^bb59
^bb59:
  %v127 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v116, ^bb65(%v127 : i1), ^bb60 loc("aws-c-common/source/byte_buf.c":66:32)
^bb60:
  sea.br ^bb61
^bb61:
  sea.br ^bb62
^bb62:
  %v128 = sea.ptr.null : !sea.ptr<64> loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":66:55))
  %v129 = sea.ptr.cmp eq, %v115, %v128 : !sea.ptr<64> loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":66:55))
  %v130 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v129, ^bb65(%v130 : i1), ^bb63 loc("aws-c-common/source/byte_buf.c":66:67)
^bb63:
  sea.br ^bb64
^bb64:
  %v131 = sea.const 1 : i1
  sea.br ^bb65(%v131 : i1)
^bb65(%v132 : i1):
  sea.br ^bb66
^bb66:
  sea.cond_br %v116, ^bb71, ^bb67 loc("aws-c-common/source/byte_buf.c":66:32)
^bb67:
  sea.br ^bb68
^bb68:
  %v133 = sea.ptr.null : !sea.ptr<64> loc(".not2.i.i")
  %v134 = sea.ptr.cmp ne, %v115, %v133 : !sea.ptr<64> loc(".not2.i.i")
  %v135 = sea.const 1 : i1 loc("or.cond14.not")
  %v136 = sea.const 0 : i1 loc("or.cond14.not")
  %v137 = sea.select %v135, %v134, %v136 : i1 loc("or.cond14.not")
  sea.cond_br %v137, ^bb69, ^bb72
^bb69:
  sea.br ^bb70
^bb70:
  sea.br ^bb71
^bb71:
  %v138 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_left_trim_pred2/aws_byte_cursor_left_trim_pred_harness2.c":28:9)
  %v139 = sea.xor %v13, %v138 : i1 loc("seahorn/jobs2/byte_cursor_left_trim_pred2/aws_byte_cursor_left_trim_pred_harness2.c":28:9)
  sea.assume %v139 loc("seahorn/jobs2/byte_cursor_left_trim_pred2/aws_byte_cursor_left_trim_pred_harness2.c":28:9)
  %v140 = sea.mem.is_modified %v114[%v9] : !sea.mem<!sea.ptr<64>, i8> loc("_98"("seahorn/jobs2/byte_cursor_left_trim_pred2/aws_byte_cursor_left_trim_pred_harness2.c":29:9))
  %v141 = sea.const 1 : i1 loc("_99"("seahorn/jobs2/byte_cursor_left_trim_pred2/aws_byte_cursor_left_trim_pred_harness2.c":29:9))
  %v142 = sea.xor %v140, %v141 : i1 loc("_99"("seahorn/jobs2/byte_cursor_left_trim_pred2/aws_byte_cursor_left_trim_pred_harness2.c":29:9))
  %v143 = sea.mem.is_modified %v114[%v9] : !sea.mem<!sea.ptr<64>, i8> loc("_100"("seahorn/jobs2/byte_cursor_left_trim_pred2/aws_byte_cursor_left_trim_pred_harness2.c":29:9))
  sea.assume %v143 loc("seahorn/jobs2/byte_cursor_left_trim_pred2/aws_byte_cursor_left_trim_pred_harness2.c":29:9)
  sea.br ^bb72 loc("seahorn/jobs2/byte_cursor_left_trim_pred2/aws_byte_cursor_left_trim_pred_harness2.c":29:9)
^bb72:
  sea.br ^bb73
^bb73:
  %v144 = sea.const 0 : i1
  sea.assert %v144
  sea.halt
}
