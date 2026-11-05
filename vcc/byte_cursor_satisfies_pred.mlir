// Exported from SeaHorn (byte_cursor_satisfies_pred.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
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
  sea.assume %v3 loc("seahorn/jobs/byte_cursor_satisfies_pred/aws_byte_cursor_satisfies_pred_harness.c":23:5)
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
  %v15 = sea.ptr.null : !sea.ptr<64> loc(".not2.i7.i"("aws-c-common/source/byte_buf.c":66:55))
  %v16 = sea.ptr.cmp eq, %v9, %v15 : !sea.ptr<64> loc(".not2.i7.i"("aws-c-common/source/byte_buf.c":66:55))
  %v17 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v16, ^bb13(%v17 : i1), ^bb11 loc("aws-c-common/source/byte_buf.c":66:67)
^bb11:
  sea.br ^bb12
^bb12:
  %v18 = sea.const 1 : i1
  sea.br ^bb13(%v18 : i1)
^bb13(%v19 : i1):
  sea.assume %v19 loc("seahorn/jobs/byte_cursor_satisfies_pred/aws_byte_cursor_satisfies_pred_harness.c":24:5)
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
  sea.cond_br %v30, ^bb19, ^bb62
^bb19:
  %v31 = sea.load %v11[%v28] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_26"("seahorn/lib/utils.c":49:21))
  sea.br ^bb20(%v31 : i8)
^bb20(%v32 : i8):
  sea.cond_br %v13, ^bb42, ^bb21 loc("aws-c-common/source/byte_buf.c":841:28)
^bb21:
  %v33 = sea.const 1 : i64 loc("_30"("aws-c-common/source/byte_buf.c":841:41))
  %v34 = sea.ptr.dereferenceable %v9, %v33 : !sea.ptr<64>, i64 loc("_30"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v34, ^bb22, ^bb62
^bb22:
  %v35 = sea.load %v11[%v9] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_33"("aws-c-common/source/byte_buf.c":841:41))
  %v36 = sea.nondet "uninterpreted_predicate_fn" [7] : i1 loc("_34"("aws-c-common/source/byte_buf.c":841:31))
  %v37 = sea.ptr.index %v9 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_35")
  %v38 = sea.const 1 : i64 loc(".not.i.i.i")
  %v39 = sea.icmp ne, %v1, %v38 : i64 loc(".not.i.i.i")
  %v40 = sea.const 0 : i1 loc("or.cond13.not"("aws-c-common/source/byte_buf.c":841:5))
  %v41 = sea.select %v36, %v39, %v40 : i1 loc("or.cond13.not"("aws-c-common/source/byte_buf.c":841:5))
  sea.cond_br %v41, ^bb23, ^bb42 loc("aws-c-common/source/byte_buf.c":841:5)
^bb23:
  %v42 = sea.const 1 : i64 loc("_36"("aws-c-common/source/byte_buf.c":841:41))
  %v43 = sea.ptr.dereferenceable %v37, %v42 : !sea.ptr<64>, i64 loc("_36"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v43, ^bb24, ^bb62
^bb24:
  %v44 = sea.load %v11[%v37] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_38"("aws-c-common/source/byte_buf.c":841:41))
  %v45 = sea.nondet "uninterpreted_predicate_fn" [8] : i1 loc("_39"("aws-c-common/source/byte_buf.c":841:31))
  %v46 = sea.ptr.index %v9 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_40")
  %v47 = sea.const 2 : i64 loc(".not.i.i.i.1")
  %v48 = sea.icmp ne, %v1, %v47 : i64 loc(".not.i.i.i.1")
  %v49 = sea.const 0 : i1 loc("or.cond13.not.1"("aws-c-common/source/byte_buf.c":841:5))
  %v50 = sea.select %v45, %v48, %v49 : i1 loc("or.cond13.not.1"("aws-c-common/source/byte_buf.c":841:5))
  sea.cond_br %v50, ^bb25, ^bb42 loc("aws-c-common/source/byte_buf.c":841:5)
^bb25:
  %v51 = sea.const 1 : i64 loc("_41"("aws-c-common/source/byte_buf.c":841:41))
  %v52 = sea.ptr.dereferenceable %v46, %v51 : !sea.ptr<64>, i64 loc("_41"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v52, ^bb26, ^bb62
^bb26:
  %v53 = sea.load %v11[%v46] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_43"("aws-c-common/source/byte_buf.c":841:41))
  %v54 = sea.nondet "uninterpreted_predicate_fn" [9] : i1 loc("_44"("aws-c-common/source/byte_buf.c":841:31))
  %v55 = sea.ptr.index %v9 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_45")
  %v56 = sea.const 3 : i64 loc(".not.i.i.i.2")
  %v57 = sea.icmp ne, %v1, %v56 : i64 loc(".not.i.i.i.2")
  %v58 = sea.const 0 : i1 loc("or.cond13.not.2"("aws-c-common/source/byte_buf.c":841:5))
  %v59 = sea.select %v54, %v57, %v58 : i1 loc("or.cond13.not.2"("aws-c-common/source/byte_buf.c":841:5))
  sea.cond_br %v59, ^bb27, ^bb42 loc("aws-c-common/source/byte_buf.c":841:5)
^bb27:
  %v60 = sea.const 1 : i64 loc("_46"("aws-c-common/source/byte_buf.c":841:41))
  %v61 = sea.ptr.dereferenceable %v55, %v60 : !sea.ptr<64>, i64 loc("_46"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v61, ^bb28, ^bb62
^bb28:
  %v62 = sea.load %v11[%v55] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_48"("aws-c-common/source/byte_buf.c":841:41))
  %v63 = sea.nondet "uninterpreted_predicate_fn" [10] : i1 loc("_49"("aws-c-common/source/byte_buf.c":841:31))
  %v64 = sea.ptr.index %v9 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_50")
  %v65 = sea.const 4 : i64 loc(".not.i.i.i.3")
  %v66 = sea.icmp ne, %v1, %v65 : i64 loc(".not.i.i.i.3")
  %v67 = sea.const 0 : i1 loc("or.cond13.not.3"("aws-c-common/source/byte_buf.c":841:5))
  %v68 = sea.select %v63, %v66, %v67 : i1 loc("or.cond13.not.3"("aws-c-common/source/byte_buf.c":841:5))
  sea.cond_br %v68, ^bb29, ^bb42 loc("aws-c-common/source/byte_buf.c":841:5)
^bb29:
  %v69 = sea.const 1 : i64 loc("_51"("aws-c-common/source/byte_buf.c":841:41))
  %v70 = sea.ptr.dereferenceable %v64, %v69 : !sea.ptr<64>, i64 loc("_51"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v70, ^bb30, ^bb62
^bb30:
  %v71 = sea.load %v11[%v64] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_53"("aws-c-common/source/byte_buf.c":841:41))
  %v72 = sea.nondet "uninterpreted_predicate_fn" [11] : i1 loc("_54"("aws-c-common/source/byte_buf.c":841:31))
  %v73 = sea.ptr.index %v9 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_55")
  %v74 = sea.const 5 : i64 loc(".not.i.i.i.4")
  %v75 = sea.icmp ne, %v1, %v74 : i64 loc(".not.i.i.i.4")
  %v76 = sea.const 0 : i1 loc("or.cond13.not.4"("aws-c-common/source/byte_buf.c":841:5))
  %v77 = sea.select %v72, %v75, %v76 : i1 loc("or.cond13.not.4"("aws-c-common/source/byte_buf.c":841:5))
  sea.cond_br %v77, ^bb31, ^bb42 loc("aws-c-common/source/byte_buf.c":841:5)
^bb31:
  %v78 = sea.const 1 : i64 loc("_56"("aws-c-common/source/byte_buf.c":841:41))
  %v79 = sea.ptr.dereferenceable %v73, %v78 : !sea.ptr<64>, i64 loc("_56"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v79, ^bb32, ^bb62
^bb32:
  %v80 = sea.load %v11[%v73] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_58"("aws-c-common/source/byte_buf.c":841:41))
  %v81 = sea.nondet "uninterpreted_predicate_fn" [12] : i1 loc("_59"("aws-c-common/source/byte_buf.c":841:31))
  %v82 = sea.ptr.index %v9 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_60")
  %v83 = sea.const 6 : i64 loc(".not.i.i.i.5")
  %v84 = sea.icmp ne, %v1, %v83 : i64 loc(".not.i.i.i.5")
  %v85 = sea.const 0 : i1 loc("or.cond13.not.5"("aws-c-common/source/byte_buf.c":841:5))
  %v86 = sea.select %v81, %v84, %v85 : i1 loc("or.cond13.not.5"("aws-c-common/source/byte_buf.c":841:5))
  sea.cond_br %v86, ^bb33, ^bb42 loc("aws-c-common/source/byte_buf.c":841:5)
^bb33:
  %v87 = sea.const 1 : i64 loc("_61"("aws-c-common/source/byte_buf.c":841:41))
  %v88 = sea.ptr.dereferenceable %v82, %v87 : !sea.ptr<64>, i64 loc("_61"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v88, ^bb34, ^bb62
^bb34:
  %v89 = sea.load %v11[%v82] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_63"("aws-c-common/source/byte_buf.c":841:41))
  %v90 = sea.nondet "uninterpreted_predicate_fn" [13] : i1 loc("_64"("aws-c-common/source/byte_buf.c":841:31))
  %v91 = sea.ptr.index %v9 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_65")
  %v92 = sea.const 7 : i64 loc(".not.i.i.i.6")
  %v93 = sea.icmp ne, %v1, %v92 : i64 loc(".not.i.i.i.6")
  %v94 = sea.const 0 : i1 loc("or.cond13.not.6"("aws-c-common/source/byte_buf.c":841:5))
  %v95 = sea.select %v90, %v93, %v94 : i1 loc("or.cond13.not.6"("aws-c-common/source/byte_buf.c":841:5))
  sea.cond_br %v95, ^bb35, ^bb42 loc("aws-c-common/source/byte_buf.c":841:5)
^bb35:
  %v96 = sea.const 1 : i64 loc("_66"("aws-c-common/source/byte_buf.c":841:41))
  %v97 = sea.ptr.dereferenceable %v91, %v96 : !sea.ptr<64>, i64 loc("_66"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v97, ^bb36, ^bb62
^bb36:
  %v98 = sea.load %v11[%v91] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_68"("aws-c-common/source/byte_buf.c":841:41))
  %v99 = sea.nondet "uninterpreted_predicate_fn" [14] : i1 loc("_69"("aws-c-common/source/byte_buf.c":841:31))
  %v100 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_70")
  %v101 = sea.const 8 : i64 loc(".not.i.i.i.7")
  %v102 = sea.icmp ne, %v1, %v101 : i64 loc(".not.i.i.i.7")
  %v103 = sea.const 0 : i1 loc("or.cond13.not.7"("aws-c-common/source/byte_buf.c":841:5))
  %v104 = sea.select %v99, %v102, %v103 : i1 loc("or.cond13.not.7"("aws-c-common/source/byte_buf.c":841:5))
  sea.cond_br %v104, ^bb37, ^bb42 loc("aws-c-common/source/byte_buf.c":841:5)
^bb37:
  %v105 = sea.const 1 : i64 loc("_71"("aws-c-common/source/byte_buf.c":841:41))
  %v106 = sea.ptr.dereferenceable %v100, %v105 : !sea.ptr<64>, i64 loc("_71"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v106, ^bb38, ^bb62
^bb38:
  %v107 = sea.load %v11[%v100] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_73"("aws-c-common/source/byte_buf.c":841:41))
  %v108 = sea.nondet "uninterpreted_predicate_fn" [15] : i1 loc("_74"("aws-c-common/source/byte_buf.c":841:31))
  %v109 = sea.ptr.index %v9 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_75")
  %v110 = sea.const 9 : i64 loc(".not.i.i.i.8")
  %v111 = sea.icmp ne, %v1, %v110 : i64 loc(".not.i.i.i.8")
  %v112 = sea.const 0 : i1 loc("or.cond13.not.8"("aws-c-common/source/byte_buf.c":841:5))
  %v113 = sea.select %v108, %v111, %v112 : i1 loc("or.cond13.not.8"("aws-c-common/source/byte_buf.c":841:5))
  sea.cond_br %v113, ^bb39, ^bb42 loc("aws-c-common/source/byte_buf.c":841:5)
^bb39:
  %v114 = sea.const 1 : i64 loc("_76"("aws-c-common/source/byte_buf.c":841:41))
  %v115 = sea.ptr.dereferenceable %v109, %v114 : !sea.ptr<64>, i64 loc("_76"("aws-c-common/source/byte_buf.c":841:41))
  sea.cond_br %v115, ^bb40, ^bb62
^bb40:
  %v116 = sea.load %v11[%v109] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_78"("aws-c-common/source/byte_buf.c":841:41))
  %v117 = sea.nondet "uninterpreted_predicate_fn" [16] : i1 loc("_79"("aws-c-common/source/byte_buf.c":841:31))
  %v118 = sea.const 10 : i64 loc(".not.i.i.i.9")
  %v119 = sea.icmp ne, %v1, %v118 : i64 loc(".not.i.i.i.9")
  %v120 = sea.const 0 : i1 loc("or.cond13.not.9"("aws-c-common/source/byte_buf.c":841:5))
  %v121 = sea.select %v117, %v119, %v120 : i1 loc("or.cond13.not.9"("aws-c-common/source/byte_buf.c":841:5))
  sea.cond_br %v121, ^bb41, ^bb42 loc("aws-c-common/source/byte_buf.c":841:5)
^bb41:
  %v122 = sea.ptr.index %v9 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_31")
  %v123 = sea.const 1 : i64 loc("_32"("aws-c-common/source/byte_buf.c":841:41))
  %v124 = sea.ptr.dereferenceable %v122, %v123 : !sea.ptr<64>, i64 loc("_32"("aws-c-common/source/byte_buf.c":841:41))
  %v125 = sea.const 1 : i1
  %v126 = sea.xor %v124, %v125 : i1
  sea.assume %v126
  sea.br ^bb62
^bb42:
  sea.br ^bb43
^bb43:
  %v127 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v13, ^bb49(%v127 : i1), ^bb44 loc("aws-c-common/source/byte_buf.c":66:32)
^bb44:
  sea.br ^bb45
^bb45:
  sea.br ^bb46
^bb46:
  %v128 = sea.ptr.null : !sea.ptr<64> loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":66:55))
  %v129 = sea.ptr.cmp eq, %v9, %v128 : !sea.ptr<64> loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":66:55))
  %v130 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v129, ^bb49(%v130 : i1), ^bb47 loc("aws-c-common/source/byte_buf.c":66:67)
^bb47:
  sea.br ^bb48
^bb48:
  %v131 = sea.const 1 : i1
  sea.br ^bb49(%v131 : i1)
^bb49(%v132 : i1):
  sea.br ^bb50
^bb50:
  sea.cond_br %v13, ^bb55, ^bb51 loc("aws-c-common/source/byte_buf.c":66:32)
^bb51:
  sea.br ^bb52
^bb52:
  %v133 = sea.const 1 : i1 loc("or.cond7.not")
  %v134 = sea.and %v24, %v133 : i1 loc("or.cond7.not")
  sea.cond_br %v134, ^bb53, ^bb62
^bb53:
  sea.br ^bb54
^bb54:
  sea.br ^bb55
^bb55:
  %v135 = sea.const 1 : i1 loc("seahorn/jobs/byte_cursor_satisfies_pred/aws_byte_cursor_satisfies_pred_harness.c":35:9)
  %v136 = sea.xor %v13, %v135 : i1 loc("seahorn/jobs/byte_cursor_satisfies_pred/aws_byte_cursor_satisfies_pred_harness.c":35:9)
  sea.assume %v136 loc("seahorn/jobs/byte_cursor_satisfies_pred/aws_byte_cursor_satisfies_pred_harness.c":35:9)
  sea.assume %v24 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb56
^bb56:
  %v137 = sea.ptr.index %v9 [%v20] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_93"("seahorn/lib/utils.c":40:5))
  %v138 = sea.const 1 : i64 loc("_94"("seahorn/lib/utils.c":40:5))
  %v139 = sea.ptr.dereferenceable %v137, %v138 : !sea.ptr<64>, i64 loc("_94"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v139, ^bb57, ^bb62
^bb57:
  %v140 = sea.load %v11[%v137] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_96"("seahorn/lib/utils.c":40:5))
  sea.br ^bb58
^bb58:
  %v141 = sea.icmp eq, %v140, %v32 : i8 loc("_98"("seahorn/lib/utils.c":40:5))
  sea.br ^bb59
^bb59:
  %v142 = sea.const 1 : i64 loc("_100"("seahorn/lib/utils.c":40:5))
  %v143 = sea.ptr.dereferenceable %v137, %v142 : !sea.ptr<64>, i64 loc("_100"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v143, ^bb60, ^bb62
^bb60:
  sea.br ^bb61
^bb61:
  %v144 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v145 = sea.xor %v141, %v144 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v145 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb62 loc("seahorn/lib/utils.c":40:5)
^bb62:
  sea.br ^bb63
^bb63:
  %v146 = sea.const 0 : i1
  sea.assert %v146
  sea.halt
}
