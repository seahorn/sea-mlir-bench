// Exported from SeaHorn (byte_cursor_right_trim_pred2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm2")
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
  sea.assume %v3 loc("seahorn/jobs2/byte_cursor_right_trim_pred2/aws_byte_cursor_right_trim_pred_harness2.c":17:5)
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
  sea.assume %v19 loc("seahorn/jobs2/byte_cursor_right_trim_pred2/aws_byte_cursor_right_trim_pred_harness2.c":18:5)
  sea.tracking_on loc("seahorn/jobs2/byte_cursor_right_trim_pred2/aws_byte_cursor_right_trim_pred_harness2.c":21:5)
  %v20 = sea.mem.reset_modified %v11[%v9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_right_trim_pred2/aws_byte_cursor_right_trim_pred_harness2.c":22:5)
  %v21 = sea.const 18446744073709551615 : i64 loc("invariant.gep"("aws-c-common/source/byte_buf.c":826:5))
  %v22 = sea.ptr.add %v9, %v21 : !sea.ptr<64>, i64 loc("invariant.gep"("aws-c-common/source/byte_buf.c":826:5))
  %v23 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":826:28)
  sea.cond_br %v13, ^bb35(%v23 : i1), ^bb14 loc("aws-c-common/source/byte_buf.c":826:28)
^bb14:
  %v24 = sea.ptr.index %v22 [%v1] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep1"("aws-c-common/source/byte_buf.c":826:69))
  %v25 = sea.const 1 : i64 loc("_15"("aws-c-common/source/byte_buf.c":826:41))
  %v26 = sea.ptr.dereferenceable %v24, %v25 : !sea.ptr<64>, i64 loc("_15"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v26, ^bb15, ^bb62
^bb15:
  %v27 = sea.load %v20[%v24] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_17"("aws-c-common/source/byte_buf.c":826:41))
  %v28 = sea.nondet "uninterpreted_predicate_fn" [5] : i1 loc("_18"("aws-c-common/source/byte_buf.c":826:31))
  %v29 = sea.const 18446744073709551615 : i64 loc("_19")
  %v30 = sea.add %v1, %v29 : i64 loc("_19")
  %v31 = sea.const 0 : i64 loc(".not.i.i")
  %v32 = sea.icmp ne, %v30, %v31 : i64 loc(".not.i.i")
  %v33 = sea.const 0 : i1 loc("or.cond.not"("aws-c-common/source/byte_buf.c":826:5))
  %v34 = sea.select %v28, %v32, %v33 : i1 loc("or.cond.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v34, ^bb16, ^bb35(%v28 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb16:
  %v35 = sea.ptr.index %v22 [%v30] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.1"("aws-c-common/source/byte_buf.c":826:69))
  %v36 = sea.const 1 : i64 loc("_20"("aws-c-common/source/byte_buf.c":826:41))
  %v37 = sea.ptr.dereferenceable %v35, %v36 : !sea.ptr<64>, i64 loc("_20"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v37, ^bb17, ^bb62
^bb17:
  %v38 = sea.load %v20[%v35] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_22"("aws-c-common/source/byte_buf.c":826:41))
  %v39 = sea.nondet "uninterpreted_predicate_fn" [6] : i1 loc("_23"("aws-c-common/source/byte_buf.c":826:31))
  %v40 = sea.const 18446744073709551614 : i64 loc("_24")
  %v41 = sea.add %v1, %v40 : i64 loc("_24")
  %v42 = sea.const 0 : i64 loc(".not.i.i.1")
  %v43 = sea.icmp ne, %v41, %v42 : i64 loc(".not.i.i.1")
  %v44 = sea.const 0 : i1 loc("or.cond.1.not"("aws-c-common/source/byte_buf.c":826:5))
  %v45 = sea.select %v39, %v43, %v44 : i1 loc("or.cond.1.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v45, ^bb18, ^bb35(%v39 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb18:
  %v46 = sea.ptr.index %v22 [%v41] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.2"("aws-c-common/source/byte_buf.c":826:69))
  %v47 = sea.const 1 : i64 loc("_25"("aws-c-common/source/byte_buf.c":826:41))
  %v48 = sea.ptr.dereferenceable %v46, %v47 : !sea.ptr<64>, i64 loc("_25"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v48, ^bb19, ^bb62
^bb19:
  %v49 = sea.load %v20[%v46] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_27"("aws-c-common/source/byte_buf.c":826:41))
  %v50 = sea.nondet "uninterpreted_predicate_fn" [7] : i1 loc("_28"("aws-c-common/source/byte_buf.c":826:31))
  %v51 = sea.const 18446744073709551613 : i64 loc("_29")
  %v52 = sea.add %v1, %v51 : i64 loc("_29")
  %v53 = sea.const 0 : i64 loc(".not.i.i.2")
  %v54 = sea.icmp ne, %v52, %v53 : i64 loc(".not.i.i.2")
  %v55 = sea.const 0 : i1 loc("or.cond.2.not"("aws-c-common/source/byte_buf.c":826:5))
  %v56 = sea.select %v50, %v54, %v55 : i1 loc("or.cond.2.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v56, ^bb20, ^bb35(%v50 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb20:
  %v57 = sea.ptr.index %v22 [%v52] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.3"("aws-c-common/source/byte_buf.c":826:69))
  %v58 = sea.const 1 : i64 loc("_30"("aws-c-common/source/byte_buf.c":826:41))
  %v59 = sea.ptr.dereferenceable %v57, %v58 : !sea.ptr<64>, i64 loc("_30"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v59, ^bb21, ^bb62
^bb21:
  %v60 = sea.load %v20[%v57] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_32"("aws-c-common/source/byte_buf.c":826:41))
  %v61 = sea.nondet "uninterpreted_predicate_fn" [8] : i1 loc("_33"("aws-c-common/source/byte_buf.c":826:31))
  %v62 = sea.const 18446744073709551612 : i64 loc("_34")
  %v63 = sea.add %v1, %v62 : i64 loc("_34")
  %v64 = sea.const 0 : i64 loc(".not.i.i.3")
  %v65 = sea.icmp ne, %v63, %v64 : i64 loc(".not.i.i.3")
  %v66 = sea.const 0 : i1 loc("or.cond.3.not"("aws-c-common/source/byte_buf.c":826:5))
  %v67 = sea.select %v61, %v65, %v66 : i1 loc("or.cond.3.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v67, ^bb22, ^bb35(%v61 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb22:
  %v68 = sea.ptr.index %v22 [%v63] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.4"("aws-c-common/source/byte_buf.c":826:69))
  %v69 = sea.const 1 : i64 loc("_35"("aws-c-common/source/byte_buf.c":826:41))
  %v70 = sea.ptr.dereferenceable %v68, %v69 : !sea.ptr<64>, i64 loc("_35"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v70, ^bb23, ^bb62
^bb23:
  %v71 = sea.load %v20[%v68] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_37"("aws-c-common/source/byte_buf.c":826:41))
  %v72 = sea.nondet "uninterpreted_predicate_fn" [9] : i1 loc("_38"("aws-c-common/source/byte_buf.c":826:31))
  %v73 = sea.const 18446744073709551611 : i64 loc("_39")
  %v74 = sea.add %v1, %v73 : i64 loc("_39")
  %v75 = sea.const 0 : i64 loc(".not.i.i.4")
  %v76 = sea.icmp ne, %v74, %v75 : i64 loc(".not.i.i.4")
  %v77 = sea.const 0 : i1 loc("or.cond.4.not"("aws-c-common/source/byte_buf.c":826:5))
  %v78 = sea.select %v72, %v76, %v77 : i1 loc("or.cond.4.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v78, ^bb24, ^bb35(%v72 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb24:
  %v79 = sea.ptr.index %v22 [%v74] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.5"("aws-c-common/source/byte_buf.c":826:69))
  %v80 = sea.const 1 : i64 loc("_40"("aws-c-common/source/byte_buf.c":826:41))
  %v81 = sea.ptr.dereferenceable %v79, %v80 : !sea.ptr<64>, i64 loc("_40"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v81, ^bb25, ^bb62
^bb25:
  %v82 = sea.load %v20[%v79] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_42"("aws-c-common/source/byte_buf.c":826:41))
  %v83 = sea.nondet "uninterpreted_predicate_fn" [10] : i1 loc("_43"("aws-c-common/source/byte_buf.c":826:31))
  %v84 = sea.const 18446744073709551610 : i64 loc("_44")
  %v85 = sea.add %v1, %v84 : i64 loc("_44")
  %v86 = sea.const 0 : i64 loc(".not.i.i.5")
  %v87 = sea.icmp ne, %v85, %v86 : i64 loc(".not.i.i.5")
  %v88 = sea.const 0 : i1 loc("or.cond.5.not"("aws-c-common/source/byte_buf.c":826:5))
  %v89 = sea.select %v83, %v87, %v88 : i1 loc("or.cond.5.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v89, ^bb26, ^bb35(%v83 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb26:
  %v90 = sea.ptr.index %v22 [%v85] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.6"("aws-c-common/source/byte_buf.c":826:69))
  %v91 = sea.const 1 : i64 loc("_45"("aws-c-common/source/byte_buf.c":826:41))
  %v92 = sea.ptr.dereferenceable %v90, %v91 : !sea.ptr<64>, i64 loc("_45"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v92, ^bb27, ^bb62
^bb27:
  %v93 = sea.load %v20[%v90] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_47"("aws-c-common/source/byte_buf.c":826:41))
  %v94 = sea.nondet "uninterpreted_predicate_fn" [11] : i1 loc("_48"("aws-c-common/source/byte_buf.c":826:31))
  %v95 = sea.const 18446744073709551609 : i64 loc("_49")
  %v96 = sea.add %v1, %v95 : i64 loc("_49")
  %v97 = sea.const 0 : i64 loc(".not.i.i.6")
  %v98 = sea.icmp ne, %v96, %v97 : i64 loc(".not.i.i.6")
  %v99 = sea.const 0 : i1 loc("or.cond.6.not"("aws-c-common/source/byte_buf.c":826:5))
  %v100 = sea.select %v94, %v98, %v99 : i1 loc("or.cond.6.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v100, ^bb28, ^bb35(%v94 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb28:
  %v101 = sea.ptr.index %v22 [%v96] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.7"("aws-c-common/source/byte_buf.c":826:69))
  %v102 = sea.const 1 : i64 loc("_50"("aws-c-common/source/byte_buf.c":826:41))
  %v103 = sea.ptr.dereferenceable %v101, %v102 : !sea.ptr<64>, i64 loc("_50"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v103, ^bb29, ^bb62
^bb29:
  %v104 = sea.load %v20[%v101] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_52"("aws-c-common/source/byte_buf.c":826:41))
  %v105 = sea.nondet "uninterpreted_predicate_fn" [12] : i1 loc("_53"("aws-c-common/source/byte_buf.c":826:31))
  %v106 = sea.const 18446744073709551608 : i64 loc("_54")
  %v107 = sea.add %v1, %v106 : i64 loc("_54")
  %v108 = sea.const 0 : i64 loc(".not.i.i.7")
  %v109 = sea.icmp ne, %v107, %v108 : i64 loc(".not.i.i.7")
  %v110 = sea.const 0 : i1 loc("or.cond.7.not"("aws-c-common/source/byte_buf.c":826:5))
  %v111 = sea.select %v105, %v109, %v110 : i1 loc("or.cond.7.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v111, ^bb30, ^bb35(%v105 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb30:
  %v112 = sea.ptr.index %v22 [%v107] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.8"("aws-c-common/source/byte_buf.c":826:69))
  %v113 = sea.const 1 : i64 loc("_55"("aws-c-common/source/byte_buf.c":826:41))
  %v114 = sea.ptr.dereferenceable %v112, %v113 : !sea.ptr<64>, i64 loc("_55"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v114, ^bb31, ^bb62
^bb31:
  %v115 = sea.load %v20[%v112] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_57"("aws-c-common/source/byte_buf.c":826:41))
  %v116 = sea.nondet "uninterpreted_predicate_fn" [13] : i1 loc("_58"("aws-c-common/source/byte_buf.c":826:31))
  %v117 = sea.const 18446744073709551607 : i64 loc("_59")
  %v118 = sea.add %v1, %v117 : i64 loc("_59")
  %v119 = sea.const 0 : i64 loc(".not.i.i.8")
  %v120 = sea.icmp ne, %v118, %v119 : i64 loc(".not.i.i.8")
  %v121 = sea.const 0 : i1 loc("or.cond.8.not"("aws-c-common/source/byte_buf.c":826:5))
  %v122 = sea.select %v116, %v120, %v121 : i1 loc("or.cond.8.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v122, ^bb32, ^bb35(%v116 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb32:
  %v123 = sea.ptr.index %v22 [%v118] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.9"("aws-c-common/source/byte_buf.c":826:69))
  %v124 = sea.const 1 : i64 loc("_60"("aws-c-common/source/byte_buf.c":826:41))
  %v125 = sea.ptr.dereferenceable %v123, %v124 : !sea.ptr<64>, i64 loc("_60"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v125, ^bb33, ^bb62
^bb33:
  %v126 = sea.load %v20[%v123] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_62"("aws-c-common/source/byte_buf.c":826:41))
  %v127 = sea.nondet "uninterpreted_predicate_fn" [14] : i1 loc("_63"("aws-c-common/source/byte_buf.c":826:31))
  %v128 = sea.const 18446744073709551606 : i64 loc("_64")
  %v129 = sea.add %v1, %v128 : i64 loc("_64")
  %v130 = sea.const 0 : i64 loc(".not.i.i.9")
  %v131 = sea.icmp ne, %v129, %v130 : i64 loc(".not.i.i.9")
  %v132 = sea.const 0 : i1 loc("or.cond.9.not"("aws-c-common/source/byte_buf.c":826:5))
  %v133 = sea.select %v127, %v131, %v132 : i1 loc("or.cond.9.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v133, ^bb34, ^bb35(%v127 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb34:
  %v134 = sea.ptr.index %v22 [%v129] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep"("aws-c-common/source/byte_buf.c":826:69))
  %v135 = sea.const 1 : i64 loc("_16"("aws-c-common/source/byte_buf.c":826:41))
  %v136 = sea.ptr.dereferenceable %v134, %v135 : !sea.ptr<64>, i64 loc("_16"("aws-c-common/source/byte_buf.c":826:41))
  %v137 = sea.const 1 : i1
  %v138 = sea.xor %v136, %v137 : i1
  sea.assume %v138
  sea.br ^bb62
^bb35(%v139 : i1):
  sea.br ^bb36
^bb36:
  %v140 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v13, ^bb42(%v140 : i1), ^bb37 loc("aws-c-common/source/byte_buf.c":66:32)
^bb37:
  sea.br ^bb38
^bb38:
  sea.br ^bb39
^bb39:
  %v141 = sea.ptr.null : !sea.ptr<64> loc(".not2.i11.i"("aws-c-common/source/byte_buf.c":66:55))
  %v142 = sea.ptr.cmp eq, %v9, %v141 : !sea.ptr<64> loc(".not2.i11.i"("aws-c-common/source/byte_buf.c":66:55))
  %v143 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v142, ^bb42(%v143 : i1), ^bb40 loc("aws-c-common/source/byte_buf.c":66:67)
^bb40:
  sea.br ^bb41
^bb41:
  %v144 = sea.const 1 : i1
  sea.br ^bb42(%v144 : i1)
^bb42(%v145 : i1):
  sea.br ^bb43
^bb43:
  sea.cond_br %v13, ^bb48, ^bb44 loc("aws-c-common/source/byte_buf.c":66:32)
^bb44:
  sea.br ^bb45
^bb45:
  %v146 = sea.ptr.null : !sea.ptr<64> loc(".not2.i7.i")
  %v147 = sea.ptr.cmp ne, %v9, %v146 : !sea.ptr<64> loc(".not2.i7.i")
  %v148 = sea.const 1 : i1 loc("or.cond10.not")
  %v149 = sea.and %v147, %v148 : i1 loc("or.cond10.not")
  sea.cond_br %v149, ^bb46, ^bb62
^bb46:
  sea.br ^bb47
^bb47:
  sea.br ^bb48
^bb48:
  sea.br ^bb49
^bb49:
  %v150 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v139, ^bb55(%v150 : i1), ^bb50 loc("aws-c-common/source/byte_buf.c":66:32)
^bb50:
  sea.br ^bb51
^bb51:
  sea.br ^bb52
^bb52:
  %v151 = sea.ptr.null : !sea.ptr<64> loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":66:55))
  %v152 = sea.ptr.cmp eq, %v9, %v151 : !sea.ptr<64> loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":66:55))
  %v153 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v152, ^bb55(%v153 : i1), ^bb53 loc("aws-c-common/source/byte_buf.c":66:67)
^bb53:
  sea.br ^bb54
^bb54:
  %v154 = sea.const 1 : i1
  sea.br ^bb55(%v154 : i1)
^bb55(%v155 : i1):
  sea.br ^bb56
^bb56:
  sea.cond_br %v139, ^bb61, ^bb57 loc("aws-c-common/source/byte_buf.c":66:32)
^bb57:
  sea.br ^bb58
^bb58:
  %v156 = sea.ptr.null : !sea.ptr<64> loc(".not2.i.i")
  %v157 = sea.ptr.cmp ne, %v9, %v156 : !sea.ptr<64> loc(".not2.i.i")
  %v158 = sea.const 1 : i1 loc("or.cond14.not")
  %v159 = sea.and %v157, %v158 : i1 loc("or.cond14.not")
  sea.cond_br %v159, ^bb59, ^bb62
^bb59:
  sea.br ^bb60
^bb60:
  sea.br ^bb61
^bb61:
  %v160 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_right_trim_pred2/aws_byte_cursor_right_trim_pred_harness2.c":31:9)
  %v161 = sea.xor %v13, %v160 : i1 loc("seahorn/jobs2/byte_cursor_right_trim_pred2/aws_byte_cursor_right_trim_pred_harness2.c":31:9)
  sea.assume %v161 loc("seahorn/jobs2/byte_cursor_right_trim_pred2/aws_byte_cursor_right_trim_pred_harness2.c":31:9)
  %v162 = sea.mem.is_modified %v20[%v9] : !sea.mem<!sea.ptr<64>, i8> loc("_89"("seahorn/jobs2/byte_cursor_right_trim_pred2/aws_byte_cursor_right_trim_pred_harness2.c":32:9))
  %v163 = sea.const 1 : i1 loc("_90"("seahorn/jobs2/byte_cursor_right_trim_pred2/aws_byte_cursor_right_trim_pred_harness2.c":32:9))
  %v164 = sea.xor %v162, %v163 : i1 loc("_90"("seahorn/jobs2/byte_cursor_right_trim_pred2/aws_byte_cursor_right_trim_pred_harness2.c":32:9))
  %v165 = sea.mem.is_modified %v20[%v9] : !sea.mem<!sea.ptr<64>, i8> loc("_91"("seahorn/jobs2/byte_cursor_right_trim_pred2/aws_byte_cursor_right_trim_pred_harness2.c":32:9))
  sea.assume %v165 loc("seahorn/jobs2/byte_cursor_right_trim_pred2/aws_byte_cursor_right_trim_pred_harness2.c":32:9)
  sea.br ^bb62 loc("seahorn/jobs2/byte_cursor_right_trim_pred2/aws_byte_cursor_right_trim_pred_harness2.c":32:9)
^bb62:
  sea.br ^bb63
^bb63:
  %v166 = sea.const 0 : i1
  sea.assert %v166
  sea.halt
}
