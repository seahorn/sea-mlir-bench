// Exported from SeaHorn (byte_cursor_left_trim_pred.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm1")
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
  %v6 = sea.const 10 : i64 loc("malloc.i2")
  %v7 = sea.alloca %v6 align 16 [3] : i64 -> !sea.ptr<64> loc("malloc.i2")
  sea.br ^bb4(%v0, %v7 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb4(%v8 : !sea.mem<!sea.ptr<64>, i8>, %v9 : !sea.ptr<64>):
  %v10 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v11 = sea.memhavoc %v8[%v9], %v10 [4] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb5
^bb5:
  sea.br ^bb6
^bb6:
  sea.assume %v3 loc("seahorn/jobs/byte_cursor_left_trim_pred/aws_byte_cursor_left_trim_pred_harness.c":21:5)
  sea.br ^bb7
^bb7:
  %v12 = sea.const 0 : i64 loc("_8"("aws-c-common/source/byte_buf.c":66:26))
  %v13 = sea.icmp eq, %v1, %v12 : i64 loc("_8"("aws-c-common/source/byte_buf.c":66:26))
  %v14 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v13, ^bb13(%v14 : i1), ^bb8 loc("aws-c-common/source/byte_buf.c":66:32)
^bb8:
  sea.br ^bb9
^bb9:
  sea.br ^bb10
^bb10:
  %v15 = sea.ptr.null : !sea.ptr<64> loc(".not2.i15.i"("aws-c-common/source/byte_buf.c":66:55))
  %v16 = sea.ptr.cmp eq, %v9, %v15 : !sea.ptr<64> loc(".not2.i15.i"("aws-c-common/source/byte_buf.c":66:55))
  %v17 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v16, ^bb13(%v17 : i1), ^bb11 loc("aws-c-common/source/byte_buf.c":66:67)
^bb11:
  sea.br ^bb12
^bb12:
  %v18 = sea.const 1 : i1
  sea.br ^bb13(%v18 : i1)
^bb13(%v19 : i1):
  sea.assume %v19 loc("seahorn/jobs/byte_cursor_left_trim_pred/aws_byte_cursor_left_trim_pred_harness.c":22:5)
  %v20 = sea.nondet "nd_size_t" [5] : i64 loc("_15"("seahorn/lib/utils.c":46:20))
  sea.br ^bb14
^bb14:
  %v21 = sea.const 0 : i64 loc("_17"("seahorn/lib/utils.c":47:12))
  %v22 = sea.icmp ne, %v1, %v21 : i64 loc("_17"("seahorn/lib/utils.c":47:12))
  %v23 = sea.ptr.null : !sea.ptr<64> loc("_18")
  %v24 = sea.ptr.cmp ne, %v9, %v23 : !sea.ptr<64> loc("_18")
  %v25 = sea.and %v22, %v24 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v25, ^bb16, ^bb15 loc("seahorn/lib/utils.c":47:16)
^bb15:
  %v26 = sea.nondet "nd_uint8_t" [6] : i8 loc("_28"("seahorn/lib/utils.c":51:21))
  sea.br ^bb20(%v26 : i8)
^bb16:
  sea.br ^bb17
^bb17:
  %v27 = sea.icmp ult, %v20, %v1 : i64 loc("_21"("seahorn/lib/utils.c":48:27))
  sea.assume %v27 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb18
^bb18:
  %v28 = sea.ptr.index %v9 [%v20] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_23"("seahorn/lib/utils.c":49:21))
  %v29 = sea.const 1 : i64 loc("_24"("seahorn/lib/utils.c":49:21))
  %v30 = sea.ptr.dereferenceable %v28, %v29 : !sea.ptr<64>, i64 loc("_24"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v30, ^bb19, ^bb85
^bb19:
  %v31 = sea.load %v11[%v28] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_26"("seahorn/lib/utils.c":49:21))
  sea.br ^bb20(%v31 : i8)
^bb20(%v32 : i8):
  %v33 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v13, ^bb52(%v9, %v33 : !sea.ptr<64>, i1), ^bb21 loc("aws-c-common/source/byte_buf.c":841:28)
^bb21:
  %v34 = sea.const 1 : i64 loc("_30"("aws-c-common/source/byte_buf.c":841:41))
  %v35 = sea.ptr.dereferenceable %v9, %v34 : !sea.ptr<64>, i64 loc("_30"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v35, ^bb22, ^bb85
^bb22:
  %v36 = sea.load %v11[%v9] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_32"("aws-c-common/source/byte_buf.c":841:41))
  %v37 = sea.nondet "uninterpreted_predicate_fn" [7] : i1 loc("_33"("aws-c-common/source/byte_buf.c":841:31))
  %v38 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":841:5)
  sea.cond_br %v37, ^bb23, ^bb52(%v9, %v38 : !sea.ptr<64>, i1) loc("aws-c-common/source/byte_buf.c":841:5)
^bb23:
  %v39 = sea.ptr.index %v9 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_35"("aws-c-common/source/byte_buf.c":843:9))
  %v40 = sea.const 1 : i64 loc(".not.i.i"("aws-c-common/source/byte_buf.c":841:24))
  %v41 = sea.icmp eq, %v1, %v40 : i64 loc(".not.i.i"("aws-c-common/source/byte_buf.c":841:24))
  %v42 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v41, ^bb52(%v39, %v42 : !sea.ptr<64>, i1), ^bb24 loc("aws-c-common/source/byte_buf.c":841:28)
^bb24:
  %v43 = sea.const 1 : i64 loc("_36"("aws-c-common/source/byte_buf.c":841:41))
  %v44 = sea.ptr.dereferenceable %v39, %v43 : !sea.ptr<64>, i64 loc("_36"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v44, ^bb25, ^bb85
^bb25:
  %v45 = sea.load %v11[%v39] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_38"("aws-c-common/source/byte_buf.c":841:41))
  %v46 = sea.nondet "uninterpreted_predicate_fn" [8] : i1 loc("_39"("aws-c-common/source/byte_buf.c":841:31))
  %v47 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":841:5)
  sea.cond_br %v46, ^bb26, ^bb52(%v39, %v47 : !sea.ptr<64>, i1) loc("aws-c-common/source/byte_buf.c":841:5)
^bb26:
  %v48 = sea.ptr.index %v9 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_41"("aws-c-common/source/byte_buf.c":843:9))
  %v49 = sea.const 2 : i64 loc(".not.i.i.1"("aws-c-common/source/byte_buf.c":841:24))
  %v50 = sea.icmp eq, %v1, %v49 : i64 loc(".not.i.i.1"("aws-c-common/source/byte_buf.c":841:24))
  %v51 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v50, ^bb52(%v48, %v51 : !sea.ptr<64>, i1), ^bb27 loc("aws-c-common/source/byte_buf.c":841:28)
^bb27:
  %v52 = sea.const 1 : i64 loc("_42"("aws-c-common/source/byte_buf.c":841:41))
  %v53 = sea.ptr.dereferenceable %v48, %v52 : !sea.ptr<64>, i64 loc("_42"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v53, ^bb28, ^bb85
^bb28:
  %v54 = sea.load %v11[%v48] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_44"("aws-c-common/source/byte_buf.c":841:41))
  %v55 = sea.nondet "uninterpreted_predicate_fn" [9] : i1 loc("_45"("aws-c-common/source/byte_buf.c":841:31))
  %v56 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":841:5)
  sea.cond_br %v55, ^bb29, ^bb52(%v48, %v56 : !sea.ptr<64>, i1) loc("aws-c-common/source/byte_buf.c":841:5)
^bb29:
  %v57 = sea.ptr.index %v9 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_47"("aws-c-common/source/byte_buf.c":843:9))
  %v58 = sea.const 3 : i64 loc(".not.i.i.2"("aws-c-common/source/byte_buf.c":841:24))
  %v59 = sea.icmp eq, %v1, %v58 : i64 loc(".not.i.i.2"("aws-c-common/source/byte_buf.c":841:24))
  %v60 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v59, ^bb52(%v57, %v60 : !sea.ptr<64>, i1), ^bb30 loc("aws-c-common/source/byte_buf.c":841:28)
^bb30:
  %v61 = sea.const 1 : i64 loc("_48"("aws-c-common/source/byte_buf.c":841:41))
  %v62 = sea.ptr.dereferenceable %v57, %v61 : !sea.ptr<64>, i64 loc("_48"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v62, ^bb31, ^bb85
^bb31:
  %v63 = sea.load %v11[%v57] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_50"("aws-c-common/source/byte_buf.c":841:41))
  %v64 = sea.nondet "uninterpreted_predicate_fn" [10] : i1 loc("_51"("aws-c-common/source/byte_buf.c":841:31))
  %v65 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":841:5)
  sea.cond_br %v64, ^bb32, ^bb52(%v57, %v65 : !sea.ptr<64>, i1) loc("aws-c-common/source/byte_buf.c":841:5)
^bb32:
  %v66 = sea.ptr.index %v9 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_53"("aws-c-common/source/byte_buf.c":843:9))
  %v67 = sea.const 4 : i64 loc(".not.i.i.3"("aws-c-common/source/byte_buf.c":841:24))
  %v68 = sea.icmp eq, %v1, %v67 : i64 loc(".not.i.i.3"("aws-c-common/source/byte_buf.c":841:24))
  %v69 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v68, ^bb52(%v66, %v69 : !sea.ptr<64>, i1), ^bb33 loc("aws-c-common/source/byte_buf.c":841:28)
^bb33:
  %v70 = sea.const 1 : i64 loc("_54"("aws-c-common/source/byte_buf.c":841:41))
  %v71 = sea.ptr.dereferenceable %v66, %v70 : !sea.ptr<64>, i64 loc("_54"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v71, ^bb34, ^bb85
^bb34:
  %v72 = sea.load %v11[%v66] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_56"("aws-c-common/source/byte_buf.c":841:41))
  %v73 = sea.nondet "uninterpreted_predicate_fn" [11] : i1 loc("_57"("aws-c-common/source/byte_buf.c":841:31))
  %v74 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":841:5)
  sea.cond_br %v73, ^bb35, ^bb52(%v66, %v74 : !sea.ptr<64>, i1) loc("aws-c-common/source/byte_buf.c":841:5)
^bb35:
  %v75 = sea.ptr.index %v9 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_59"("aws-c-common/source/byte_buf.c":843:9))
  %v76 = sea.const 5 : i64 loc(".not.i.i.4"("aws-c-common/source/byte_buf.c":841:24))
  %v77 = sea.icmp eq, %v1, %v76 : i64 loc(".not.i.i.4"("aws-c-common/source/byte_buf.c":841:24))
  %v78 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v77, ^bb52(%v75, %v78 : !sea.ptr<64>, i1), ^bb36 loc("aws-c-common/source/byte_buf.c":841:28)
^bb36:
  %v79 = sea.const 1 : i64 loc("_60"("aws-c-common/source/byte_buf.c":841:41))
  %v80 = sea.ptr.dereferenceable %v75, %v79 : !sea.ptr<64>, i64 loc("_60"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v80, ^bb37, ^bb85
^bb37:
  %v81 = sea.load %v11[%v75] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_62"("aws-c-common/source/byte_buf.c":841:41))
  %v82 = sea.nondet "uninterpreted_predicate_fn" [12] : i1 loc("_63"("aws-c-common/source/byte_buf.c":841:31))
  %v83 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":841:5)
  sea.cond_br %v82, ^bb38, ^bb52(%v75, %v83 : !sea.ptr<64>, i1) loc("aws-c-common/source/byte_buf.c":841:5)
^bb38:
  %v84 = sea.ptr.index %v9 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_65"("aws-c-common/source/byte_buf.c":843:9))
  %v85 = sea.const 6 : i64 loc(".not.i.i.5"("aws-c-common/source/byte_buf.c":841:24))
  %v86 = sea.icmp eq, %v1, %v85 : i64 loc(".not.i.i.5"("aws-c-common/source/byte_buf.c":841:24))
  %v87 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v86, ^bb52(%v84, %v87 : !sea.ptr<64>, i1), ^bb39 loc("aws-c-common/source/byte_buf.c":841:28)
^bb39:
  %v88 = sea.const 1 : i64 loc("_66"("aws-c-common/source/byte_buf.c":841:41))
  %v89 = sea.ptr.dereferenceable %v84, %v88 : !sea.ptr<64>, i64 loc("_66"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v89, ^bb40, ^bb85
^bb40:
  %v90 = sea.load %v11[%v84] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_68"("aws-c-common/source/byte_buf.c":841:41))
  %v91 = sea.nondet "uninterpreted_predicate_fn" [13] : i1 loc("_69"("aws-c-common/source/byte_buf.c":841:31))
  %v92 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":841:5)
  sea.cond_br %v91, ^bb41, ^bb52(%v84, %v92 : !sea.ptr<64>, i1) loc("aws-c-common/source/byte_buf.c":841:5)
^bb41:
  %v93 = sea.ptr.index %v9 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_71"("aws-c-common/source/byte_buf.c":843:9))
  %v94 = sea.const 7 : i64 loc(".not.i.i.6"("aws-c-common/source/byte_buf.c":841:24))
  %v95 = sea.icmp eq, %v1, %v94 : i64 loc(".not.i.i.6"("aws-c-common/source/byte_buf.c":841:24))
  %v96 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v95, ^bb52(%v93, %v96 : !sea.ptr<64>, i1), ^bb42 loc("aws-c-common/source/byte_buf.c":841:28)
^bb42:
  %v97 = sea.const 1 : i64 loc("_72"("aws-c-common/source/byte_buf.c":841:41))
  %v98 = sea.ptr.dereferenceable %v93, %v97 : !sea.ptr<64>, i64 loc("_72"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v98, ^bb43, ^bb85
^bb43:
  %v99 = sea.load %v11[%v93] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_74"("aws-c-common/source/byte_buf.c":841:41))
  %v100 = sea.nondet "uninterpreted_predicate_fn" [14] : i1 loc("_75"("aws-c-common/source/byte_buf.c":841:31))
  %v101 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":841:5)
  sea.cond_br %v100, ^bb44, ^bb52(%v93, %v101 : !sea.ptr<64>, i1) loc("aws-c-common/source/byte_buf.c":841:5)
^bb44:
  %v102 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_77"("aws-c-common/source/byte_buf.c":843:9))
  %v103 = sea.const 8 : i64 loc(".not.i.i.7"("aws-c-common/source/byte_buf.c":841:24))
  %v104 = sea.icmp eq, %v1, %v103 : i64 loc(".not.i.i.7"("aws-c-common/source/byte_buf.c":841:24))
  %v105 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v104, ^bb52(%v102, %v105 : !sea.ptr<64>, i1), ^bb45 loc("aws-c-common/source/byte_buf.c":841:28)
^bb45:
  %v106 = sea.const 1 : i64 loc("_78"("aws-c-common/source/byte_buf.c":841:41))
  %v107 = sea.ptr.dereferenceable %v102, %v106 : !sea.ptr<64>, i64 loc("_78"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v107, ^bb46, ^bb85
^bb46:
  %v108 = sea.load %v11[%v102] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_80"("aws-c-common/source/byte_buf.c":841:41))
  %v109 = sea.nondet "uninterpreted_predicate_fn" [15] : i1 loc("_81"("aws-c-common/source/byte_buf.c":841:31))
  %v110 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":841:5)
  sea.cond_br %v109, ^bb47, ^bb52(%v102, %v110 : !sea.ptr<64>, i1) loc("aws-c-common/source/byte_buf.c":841:5)
^bb47:
  %v111 = sea.ptr.index %v9 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_83"("aws-c-common/source/byte_buf.c":843:9))
  %v112 = sea.const 9 : i64 loc(".not.i.i.8"("aws-c-common/source/byte_buf.c":841:24))
  %v113 = sea.icmp eq, %v1, %v112 : i64 loc(".not.i.i.8"("aws-c-common/source/byte_buf.c":841:24))
  %v114 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v113, ^bb52(%v111, %v114 : !sea.ptr<64>, i1), ^bb48 loc("aws-c-common/source/byte_buf.c":841:28)
^bb48:
  %v115 = sea.const 1 : i64 loc("_84"("aws-c-common/source/byte_buf.c":841:41))
  %v116 = sea.ptr.dereferenceable %v111, %v115 : !sea.ptr<64>, i64 loc("_84"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v116, ^bb49, ^bb85
^bb49:
  %v117 = sea.load %v11[%v111] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_86"("aws-c-common/source/byte_buf.c":841:41))
  %v118 = sea.nondet "uninterpreted_predicate_fn" [16] : i1 loc("_87"("aws-c-common/source/byte_buf.c":841:31))
  %v119 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":841:5)
  sea.cond_br %v118, ^bb50, ^bb52(%v111, %v119 : !sea.ptr<64>, i1) loc("aws-c-common/source/byte_buf.c":841:5)
^bb50:
  %v120 = sea.ptr.index %v9 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_89"("aws-c-common/source/byte_buf.c":843:9))
  %v121 = sea.const 10 : i64 loc(".not.i.i.9"("aws-c-common/source/byte_buf.c":841:24))
  %v122 = sea.icmp eq, %v1, %v121 : i64 loc(".not.i.i.9"("aws-c-common/source/byte_buf.c":841:24))
  %v123 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":841:28)
  sea.cond_br %v122, ^bb52(%v120, %v123 : !sea.ptr<64>, i1), ^bb51 loc("aws-c-common/source/byte_buf.c":841:28)
^bb51:
  %v124 = sea.const 1 : i64 loc("_31"("aws-c-common/source/byte_buf.c":841:41))
  %v125 = sea.ptr.dereferenceable %v120, %v124 : !sea.ptr<64>, i64 loc("_31"("aws-c-common/source/byte_buf.c":841:41))
  %v126 = sea.const 1 : i1
  %v127 = sea.xor %v125, %v126 : i1
  sea.assume %v127
  sea.br ^bb85
^bb52(%v128 : !sea.ptr<64>, %v129 : i1):
  sea.br ^bb53
^bb53:
  %v130 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v13, ^bb59(%v130 : i1), ^bb54 loc("aws-c-common/source/byte_buf.c":66:32)
^bb54:
  sea.br ^bb55
^bb55:
  sea.br ^bb56
^bb56:
  %v131 = sea.ptr.null : !sea.ptr<64> loc(".not2.i11.i"("aws-c-common/source/byte_buf.c":66:55))
  %v132 = sea.ptr.cmp eq, %v9, %v131 : !sea.ptr<64> loc(".not2.i11.i"("aws-c-common/source/byte_buf.c":66:55))
  %v133 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v132, ^bb59(%v133 : i1), ^bb57 loc("aws-c-common/source/byte_buf.c":66:67)
^bb57:
  sea.br ^bb58
^bb58:
  %v134 = sea.const 1 : i1
  sea.br ^bb59(%v134 : i1)
^bb59(%v135 : i1):
  sea.br ^bb60
^bb60:
  sea.cond_br %v13, ^bb65, ^bb61 loc("aws-c-common/source/byte_buf.c":66:32)
^bb61:
  sea.br ^bb62
^bb62:
  %v136 = sea.const 1 : i1 loc("or.cond11.not")
  %v137 = sea.and %v24, %v136 : i1 loc("or.cond11.not")
  sea.cond_br %v137, ^bb63, ^bb85
^bb63:
  sea.br ^bb64
^bb64:
  sea.br ^bb65
^bb65:
  sea.br ^bb66
^bb66:
  %v138 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v129, ^bb72(%v138 : i1), ^bb67 loc("aws-c-common/source/byte_buf.c":66:32)
^bb67:
  sea.br ^bb68
^bb68:
  sea.br ^bb69
^bb69:
  %v139 = sea.ptr.null : !sea.ptr<64> loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":66:55))
  %v140 = sea.ptr.cmp eq, %v128, %v139 : !sea.ptr<64> loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":66:55))
  %v141 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v140, ^bb72(%v141 : i1), ^bb70 loc("aws-c-common/source/byte_buf.c":66:67)
^bb70:
  sea.br ^bb71
^bb71:
  %v142 = sea.const 1 : i1
  sea.br ^bb72(%v142 : i1)
^bb72(%v143 : i1):
  sea.br ^bb73
^bb73:
  sea.cond_br %v129, ^bb78, ^bb74 loc("aws-c-common/source/byte_buf.c":66:32)
^bb74:
  sea.br ^bb75
^bb75:
  %v144 = sea.ptr.null : !sea.ptr<64> loc(".not2.i.i")
  %v145 = sea.ptr.cmp ne, %v128, %v144 : !sea.ptr<64> loc(".not2.i.i")
  %v146 = sea.const 1 : i1 loc("or.cond15.not")
  %v147 = sea.const 0 : i1 loc("or.cond15.not")
  %v148 = sea.select %v146, %v145, %v147 : i1 loc("or.cond15.not")
  sea.cond_br %v148, ^bb76, ^bb85
^bb76:
  sea.br ^bb77
^bb77:
  sea.br ^bb78
^bb78:
  %v149 = sea.const 1 : i1 loc("seahorn/jobs/byte_cursor_left_trim_pred/aws_byte_cursor_left_trim_pred_harness.c":34:9)
  %v150 = sea.xor %v13, %v149 : i1 loc("seahorn/jobs/byte_cursor_left_trim_pred/aws_byte_cursor_left_trim_pred_harness.c":34:9)
  sea.assume %v150 loc("seahorn/jobs/byte_cursor_left_trim_pred/aws_byte_cursor_left_trim_pred_harness.c":34:9)
  sea.assume %v24 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb79
^bb79:
  %v151 = sea.ptr.index %v9 [%v20] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_115"("seahorn/lib/utils.c":40:5))
  %v152 = sea.const 1 : i64 loc("_116"("seahorn/lib/utils.c":40:5))
  %v153 = sea.ptr.dereferenceable %v151, %v152 : !sea.ptr<64>, i64 loc("_116"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v153, ^bb80, ^bb85
^bb80:
  %v154 = sea.load %v11[%v151] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_118"("seahorn/lib/utils.c":40:5))
  sea.br ^bb81
^bb81:
  %v155 = sea.icmp eq, %v154, %v32 : i8 loc("_120"("seahorn/lib/utils.c":40:5))
  sea.br ^bb82
^bb82:
  %v156 = sea.const 1 : i64 loc("_122"("seahorn/lib/utils.c":40:5))
  %v157 = sea.ptr.dereferenceable %v151, %v156 : !sea.ptr<64>, i64 loc("_122"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v157, ^bb83, ^bb85
^bb83:
  sea.br ^bb84
^bb84:
  %v158 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v159 = sea.xor %v155, %v158 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v159 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb85 loc("seahorn/lib/utils.c":40:5)
^bb85:
  sea.br ^bb86
^bb86:
  %v160 = sea.const 0 : i1
  sea.assert %v160
  sea.halt
}
