// Exported from SeaHorn (byte_cursor_satisfies_pred2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
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
  sea.assume %v3 loc("seahorn/jobs2/byte_cursor_satisfies_pred2/aws_byte_cursor_satisfies_pred_harness2.c":17:5)
  sea.br ^bb7
^bb7:
  %v12 = sea.const 0 : i64 loc("_8"("aws-c-common/source/byte_buf.c":66:26))
  %v13 = sea.icmp eq, %v1, %v12 : i64 loc("_8"("aws-c-common/source/byte_buf.c":66:26))
  sea.cond_br %v13, ^bb34, ^bb8 loc("aws-c-common/source/byte_buf.c":66:32)
^bb8:
  sea.br ^bb9
^bb9:
  sea.br ^bb10
^bb10:
  %v14 = sea.ptr.null : !sea.ptr<64> loc(".not2.i7.i"("aws-c-common/source/byte_buf.c":66:55))
  %v15 = sea.ptr.cmp ne, %v9, %v14 : !sea.ptr<64> loc(".not2.i7.i"("aws-c-common/source/byte_buf.c":66:55))
  sea.cond_br %v15, ^bb11, ^bb13 loc("aws-c-common/source/byte_buf.c":66:67)
^bb11:
  sea.br ^bb12
^bb12:
  sea.br ^bb13
^bb13:
  sea.assume %v15 loc("seahorn/jobs2/byte_cursor_satisfies_pred2/aws_byte_cursor_satisfies_pred_harness2.c":18:5)
  sea.tracking_on loc("seahorn/jobs2/byte_cursor_satisfies_pred2/aws_byte_cursor_satisfies_pred_harness2.c":21:5)
  %v16 = sea.mem.reset_modified %v11[%v9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_satisfies_pred2/aws_byte_cursor_satisfies_pred_harness2.c":22:5)
  %v17 = sea.const 1 : i64 loc("_14"("aws-c-common/source/byte_buf.c":841:41))
  %v18 = sea.ptr.dereferenceable %v9, %v17 : !sea.ptr<64>, i64 loc("_14"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v18, ^bb14, ^bb49
^bb14:
  %v19 = sea.load %v16[%v9] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_17"("aws-c-common/source/byte_buf.c":841:41))
  %v20 = sea.nondet "uninterpreted_predicate_fn" [5] : i1 loc("_18"("aws-c-common/source/byte_buf.c":841:31))
  %v21 = sea.ptr.index %v9 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_19")
  %v22 = sea.const 1 : i64 loc(".not.i.i.i")
  %v23 = sea.icmp ne, %v1, %v22 : i64 loc(".not.i.i.i")
  %v24 = sea.const 0 : i1 loc("or.cond.not"("aws-c-common/source/byte_buf.c":841:5))
  %v25 = sea.select %v20, %v23, %v24 : i1 loc("or.cond.not"("aws-c-common/source/byte_buf.c":841:5))
  sea.cond_br %v25, ^bb15, ^bb35(%v16 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":841:5)
^bb15:
  %v26 = sea.const 1 : i64 loc("_20"("aws-c-common/source/byte_buf.c":841:41))
  %v27 = sea.ptr.dereferenceable %v21, %v26 : !sea.ptr<64>, i64 loc("_20"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v27, ^bb16, ^bb49
^bb16:
  %v28 = sea.load %v16[%v21] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_22"("aws-c-common/source/byte_buf.c":841:41))
  %v29 = sea.nondet "uninterpreted_predicate_fn" [6] : i1 loc("_23"("aws-c-common/source/byte_buf.c":841:31))
  %v30 = sea.ptr.index %v9 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_24")
  %v31 = sea.const 2 : i64 loc(".not.i.i.i.1")
  %v32 = sea.icmp ne, %v1, %v31 : i64 loc(".not.i.i.i.1")
  %v33 = sea.const 0 : i1 loc("or.cond.not.1"("aws-c-common/source/byte_buf.c":841:5))
  %v34 = sea.select %v29, %v32, %v33 : i1 loc("or.cond.not.1"("aws-c-common/source/byte_buf.c":841:5))
  sea.cond_br %v34, ^bb17, ^bb35(%v16 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":841:5)
^bb17:
  %v35 = sea.const 1 : i64 loc("_25"("aws-c-common/source/byte_buf.c":841:41))
  %v36 = sea.ptr.dereferenceable %v30, %v35 : !sea.ptr<64>, i64 loc("_25"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v36, ^bb18, ^bb49
^bb18:
  %v37 = sea.load %v16[%v30] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_27"("aws-c-common/source/byte_buf.c":841:41))
  %v38 = sea.nondet "uninterpreted_predicate_fn" [7] : i1 loc("_28"("aws-c-common/source/byte_buf.c":841:31))
  %v39 = sea.ptr.index %v9 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_29")
  %v40 = sea.const 3 : i64 loc(".not.i.i.i.2")
  %v41 = sea.icmp ne, %v1, %v40 : i64 loc(".not.i.i.i.2")
  %v42 = sea.const 0 : i1 loc("or.cond.not.2"("aws-c-common/source/byte_buf.c":841:5))
  %v43 = sea.select %v38, %v41, %v42 : i1 loc("or.cond.not.2"("aws-c-common/source/byte_buf.c":841:5))
  sea.cond_br %v43, ^bb19, ^bb35(%v16 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":841:5)
^bb19:
  %v44 = sea.const 1 : i64 loc("_30"("aws-c-common/source/byte_buf.c":841:41))
  %v45 = sea.ptr.dereferenceable %v39, %v44 : !sea.ptr<64>, i64 loc("_30"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v45, ^bb20, ^bb49
^bb20:
  %v46 = sea.load %v16[%v39] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_32"("aws-c-common/source/byte_buf.c":841:41))
  %v47 = sea.nondet "uninterpreted_predicate_fn" [8] : i1 loc("_33"("aws-c-common/source/byte_buf.c":841:31))
  %v48 = sea.ptr.index %v9 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_34")
  %v49 = sea.const 4 : i64 loc(".not.i.i.i.3")
  %v50 = sea.icmp ne, %v1, %v49 : i64 loc(".not.i.i.i.3")
  %v51 = sea.const 0 : i1 loc("or.cond.not.3"("aws-c-common/source/byte_buf.c":841:5))
  %v52 = sea.select %v47, %v50, %v51 : i1 loc("or.cond.not.3"("aws-c-common/source/byte_buf.c":841:5))
  sea.cond_br %v52, ^bb21, ^bb35(%v16 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":841:5)
^bb21:
  %v53 = sea.const 1 : i64 loc("_35"("aws-c-common/source/byte_buf.c":841:41))
  %v54 = sea.ptr.dereferenceable %v48, %v53 : !sea.ptr<64>, i64 loc("_35"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v54, ^bb22, ^bb49
^bb22:
  %v55 = sea.load %v16[%v48] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_37"("aws-c-common/source/byte_buf.c":841:41))
  %v56 = sea.nondet "uninterpreted_predicate_fn" [9] : i1 loc("_38"("aws-c-common/source/byte_buf.c":841:31))
  %v57 = sea.ptr.index %v9 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_39")
  %v58 = sea.const 5 : i64 loc(".not.i.i.i.4")
  %v59 = sea.icmp ne, %v1, %v58 : i64 loc(".not.i.i.i.4")
  %v60 = sea.const 0 : i1 loc("or.cond.not.4"("aws-c-common/source/byte_buf.c":841:5))
  %v61 = sea.select %v56, %v59, %v60 : i1 loc("or.cond.not.4"("aws-c-common/source/byte_buf.c":841:5))
  sea.cond_br %v61, ^bb23, ^bb35(%v16 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":841:5)
^bb23:
  %v62 = sea.const 1 : i64 loc("_40"("aws-c-common/source/byte_buf.c":841:41))
  %v63 = sea.ptr.dereferenceable %v57, %v62 : !sea.ptr<64>, i64 loc("_40"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v63, ^bb24, ^bb49
^bb24:
  %v64 = sea.load %v16[%v57] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_42"("aws-c-common/source/byte_buf.c":841:41))
  %v65 = sea.nondet "uninterpreted_predicate_fn" [10] : i1 loc("_43"("aws-c-common/source/byte_buf.c":841:31))
  %v66 = sea.ptr.index %v9 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_44")
  %v67 = sea.const 6 : i64 loc(".not.i.i.i.5")
  %v68 = sea.icmp ne, %v1, %v67 : i64 loc(".not.i.i.i.5")
  %v69 = sea.const 0 : i1 loc("or.cond.not.5"("aws-c-common/source/byte_buf.c":841:5))
  %v70 = sea.select %v65, %v68, %v69 : i1 loc("or.cond.not.5"("aws-c-common/source/byte_buf.c":841:5))
  sea.cond_br %v70, ^bb25, ^bb35(%v16 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":841:5)
^bb25:
  %v71 = sea.const 1 : i64 loc("_45"("aws-c-common/source/byte_buf.c":841:41))
  %v72 = sea.ptr.dereferenceable %v66, %v71 : !sea.ptr<64>, i64 loc("_45"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v72, ^bb26, ^bb49
^bb26:
  %v73 = sea.load %v16[%v66] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_47"("aws-c-common/source/byte_buf.c":841:41))
  %v74 = sea.nondet "uninterpreted_predicate_fn" [11] : i1 loc("_48"("aws-c-common/source/byte_buf.c":841:31))
  %v75 = sea.ptr.index %v9 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_49")
  %v76 = sea.const 7 : i64 loc(".not.i.i.i.6")
  %v77 = sea.icmp ne, %v1, %v76 : i64 loc(".not.i.i.i.6")
  %v78 = sea.const 0 : i1 loc("or.cond.not.6"("aws-c-common/source/byte_buf.c":841:5))
  %v79 = sea.select %v74, %v77, %v78 : i1 loc("or.cond.not.6"("aws-c-common/source/byte_buf.c":841:5))
  sea.cond_br %v79, ^bb27, ^bb35(%v16 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":841:5)
^bb27:
  %v80 = sea.const 1 : i64 loc("_50"("aws-c-common/source/byte_buf.c":841:41))
  %v81 = sea.ptr.dereferenceable %v75, %v80 : !sea.ptr<64>, i64 loc("_50"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v81, ^bb28, ^bb49
^bb28:
  %v82 = sea.load %v16[%v75] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_52"("aws-c-common/source/byte_buf.c":841:41))
  %v83 = sea.nondet "uninterpreted_predicate_fn" [12] : i1 loc("_53"("aws-c-common/source/byte_buf.c":841:31))
  %v84 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_54")
  %v85 = sea.const 8 : i64 loc(".not.i.i.i.7")
  %v86 = sea.icmp ne, %v1, %v85 : i64 loc(".not.i.i.i.7")
  %v87 = sea.const 0 : i1 loc("or.cond.not.7"("aws-c-common/source/byte_buf.c":841:5))
  %v88 = sea.select %v83, %v86, %v87 : i1 loc("or.cond.not.7"("aws-c-common/source/byte_buf.c":841:5))
  sea.cond_br %v88, ^bb29, ^bb35(%v16 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":841:5)
^bb29:
  %v89 = sea.const 1 : i64 loc("_55"("aws-c-common/source/byte_buf.c":841:41))
  %v90 = sea.ptr.dereferenceable %v84, %v89 : !sea.ptr<64>, i64 loc("_55"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v90, ^bb30, ^bb49
^bb30:
  %v91 = sea.load %v16[%v84] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_57"("aws-c-common/source/byte_buf.c":841:41))
  %v92 = sea.nondet "uninterpreted_predicate_fn" [13] : i1 loc("_58"("aws-c-common/source/byte_buf.c":841:31))
  %v93 = sea.ptr.index %v9 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_59")
  %v94 = sea.const 9 : i64 loc(".not.i.i.i.8")
  %v95 = sea.icmp ne, %v1, %v94 : i64 loc(".not.i.i.i.8")
  %v96 = sea.const 0 : i1 loc("or.cond.not.8"("aws-c-common/source/byte_buf.c":841:5))
  %v97 = sea.select %v92, %v95, %v96 : i1 loc("or.cond.not.8"("aws-c-common/source/byte_buf.c":841:5))
  sea.cond_br %v97, ^bb31, ^bb35(%v16 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":841:5)
^bb31:
  %v98 = sea.const 1 : i64 loc("_60"("aws-c-common/source/byte_buf.c":841:41))
  %v99 = sea.ptr.dereferenceable %v93, %v98 : !sea.ptr<64>, i64 loc("_60"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v99, ^bb32, ^bb49
^bb32:
  %v100 = sea.load %v16[%v93] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_62"("aws-c-common/source/byte_buf.c":841:41))
  %v101 = sea.nondet "uninterpreted_predicate_fn" [14] : i1 loc("_63"("aws-c-common/source/byte_buf.c":841:31))
  %v102 = sea.const 10 : i64 loc(".not.i.i.i.9")
  %v103 = sea.icmp ne, %v1, %v102 : i64 loc(".not.i.i.i.9")
  %v104 = sea.const 0 : i1 loc("or.cond.not.9"("aws-c-common/source/byte_buf.c":841:5))
  %v105 = sea.select %v101, %v103, %v104 : i1 loc("or.cond.not.9"("aws-c-common/source/byte_buf.c":841:5))
  sea.cond_br %v105, ^bb33, ^bb35(%v16 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":841:5)
^bb33:
  %v106 = sea.ptr.index %v9 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_15")
  %v107 = sea.const 1 : i64 loc("_16"("aws-c-common/source/byte_buf.c":841:41))
  %v108 = sea.ptr.dereferenceable %v106, %v107 : !sea.ptr<64>, i64 loc("_16"("aws-c-common/source/byte_buf.c":841:41))
  %v109 = sea.const 1 : i1
  %v110 = sea.xor %v108, %v109 : i1
  sea.assume %v110
  sea.br ^bb49
^bb34:
  %v111 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_satisfies_pred2/aws_byte_cursor_satisfies_pred_harness2.c":18:5)
  sea.assume %v111 loc("seahorn/jobs2/byte_cursor_satisfies_pred2/aws_byte_cursor_satisfies_pred_harness2.c":18:5)
  sea.tracking_on loc("seahorn/jobs2/byte_cursor_satisfies_pred2/aws_byte_cursor_satisfies_pred_harness2.c":21:5)
  %v112 = sea.mem.reset_modified %v11[%v9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_satisfies_pred2/aws_byte_cursor_satisfies_pred_harness2.c":22:5)
  sea.br ^bb35(%v112 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":841:28)
^bb35(%v113 : !sea.mem<!sea.ptr<64>, i8>):
  sea.br ^bb36
^bb36:
  %v114 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v13, ^bb42(%v114 : i1), ^bb37 loc("aws-c-common/source/byte_buf.c":66:32)
^bb37:
  sea.br ^bb38
^bb38:
  sea.br ^bb39
^bb39:
  %v115 = sea.ptr.null : !sea.ptr<64> loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":66:55))
  %v116 = sea.ptr.cmp eq, %v9, %v115 : !sea.ptr<64> loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":66:55))
  %v117 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v116, ^bb42(%v117 : i1), ^bb40 loc("aws-c-common/source/byte_buf.c":66:67)
^bb40:
  sea.br ^bb41
^bb41:
  %v118 = sea.const 1 : i1
  sea.br ^bb42(%v118 : i1)
^bb42(%v119 : i1):
  sea.br ^bb43
^bb43:
  sea.cond_br %v13, ^bb48, ^bb44 loc("aws-c-common/source/byte_buf.c":66:32)
^bb44:
  sea.br ^bb45
^bb45:
  %v120 = sea.ptr.null : !sea.ptr<64> loc(".not2.i.i")
  %v121 = sea.ptr.cmp ne, %v9, %v120 : !sea.ptr<64> loc(".not2.i.i")
  %v122 = sea.const 1 : i1 loc("or.cond6.not")
  %v123 = sea.and %v121, %v122 : i1 loc("or.cond6.not")
  sea.cond_br %v123, ^bb46, ^bb49
^bb46:
  sea.br ^bb47
^bb47:
  sea.br ^bb48
^bb48:
  %v124 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_satisfies_pred2/aws_byte_cursor_satisfies_pred_harness2.c":29:9)
  %v125 = sea.xor %v13, %v124 : i1 loc("seahorn/jobs2/byte_cursor_satisfies_pred2/aws_byte_cursor_satisfies_pred_harness2.c":29:9)
  sea.assume %v125 loc("seahorn/jobs2/byte_cursor_satisfies_pred2/aws_byte_cursor_satisfies_pred_harness2.c":29:9)
  %v126 = sea.mem.is_modified %v113[%v9] : !sea.mem<!sea.ptr<64>, i8> loc("_76"("seahorn/jobs2/byte_cursor_satisfies_pred2/aws_byte_cursor_satisfies_pred_harness2.c":30:9))
  %v127 = sea.const 1 : i1 loc("_77"("seahorn/jobs2/byte_cursor_satisfies_pred2/aws_byte_cursor_satisfies_pred_harness2.c":30:9))
  %v128 = sea.xor %v126, %v127 : i1 loc("_77"("seahorn/jobs2/byte_cursor_satisfies_pred2/aws_byte_cursor_satisfies_pred_harness2.c":30:9))
  %v129 = sea.mem.is_modified %v113[%v9] : !sea.mem<!sea.ptr<64>, i8> loc("_78"("seahorn/jobs2/byte_cursor_satisfies_pred2/aws_byte_cursor_satisfies_pred_harness2.c":30:9))
  sea.assume %v129 loc("seahorn/jobs2/byte_cursor_satisfies_pred2/aws_byte_cursor_satisfies_pred_harness2.c":30:9)
  sea.br ^bb49 loc("seahorn/jobs2/byte_cursor_satisfies_pred2/aws_byte_cursor_satisfies_pred_harness2.c":30:9)
^bb49:
  sea.br ^bb50
^bb50:
  %v130 = sea.const 0 : i1
  sea.assert %v130
  sea.halt
}
