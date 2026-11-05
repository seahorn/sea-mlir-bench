// Exported from SeaHorn (byte_cursor_right_trim_pred.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
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
  sea.assume %v3 loc("seahorn/jobs/byte_cursor_right_trim_pred/aws_byte_cursor_right_trim_pred_harness.c":23:5)
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
  sea.assume %v19 loc("seahorn/jobs/byte_cursor_right_trim_pred/aws_byte_cursor_right_trim_pred_harness.c":24:5)
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
  sea.cond_br %v30, ^bb19, ^bb75
^bb19:
  %v31 = sea.load %v11[%v28] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_26"("seahorn/lib/utils.c":49:21))
  sea.br ^bb20(%v31 : i8)
^bb20(%v32 : i8):
  %v33 = sea.const 18446744073709551615 : i64 loc("invariant.gep"("aws-c-common/source/byte_buf.c":826:5))
  %v34 = sea.ptr.add %v9, %v33 : !sea.ptr<64>, i64 loc("invariant.gep"("aws-c-common/source/byte_buf.c":826:5))
  %v35 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":826:28)
  sea.cond_br %v13, ^bb42(%v35 : i1), ^bb21 loc("aws-c-common/source/byte_buf.c":826:28)
^bb21:
  %v36 = sea.ptr.index %v34 [%v1] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep1"("aws-c-common/source/byte_buf.c":826:69))
  %v37 = sea.const 1 : i64 loc("_30"("aws-c-common/source/byte_buf.c":826:41))
  %v38 = sea.ptr.dereferenceable %v36, %v37 : !sea.ptr<64>, i64 loc("_30"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v38, ^bb22, ^bb75
^bb22:
  %v39 = sea.load %v11[%v36] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_32"("aws-c-common/source/byte_buf.c":826:41))
  %v40 = sea.nondet "uninterpreted_predicate_fn" [7] : i1 loc("_33"("aws-c-common/source/byte_buf.c":826:31))
  %v41 = sea.const 18446744073709551615 : i64 loc("_34")
  %v42 = sea.add %v1, %v41 : i64 loc("_34")
  %v43 = sea.const 0 : i64 loc(".not.i.i")
  %v44 = sea.icmp ne, %v42, %v43 : i64 loc(".not.i.i")
  %v45 = sea.const 0 : i1 loc("or.cond.not"("aws-c-common/source/byte_buf.c":826:5))
  %v46 = sea.select %v40, %v44, %v45 : i1 loc("or.cond.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v46, ^bb23, ^bb42(%v40 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb23:
  %v47 = sea.ptr.index %v34 [%v42] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.1"("aws-c-common/source/byte_buf.c":826:69))
  %v48 = sea.const 1 : i64 loc("_35"("aws-c-common/source/byte_buf.c":826:41))
  %v49 = sea.ptr.dereferenceable %v47, %v48 : !sea.ptr<64>, i64 loc("_35"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v49, ^bb24, ^bb75
^bb24:
  %v50 = sea.load %v11[%v47] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_37"("aws-c-common/source/byte_buf.c":826:41))
  %v51 = sea.nondet "uninterpreted_predicate_fn" [8] : i1 loc("_38"("aws-c-common/source/byte_buf.c":826:31))
  %v52 = sea.const 18446744073709551614 : i64 loc("_39")
  %v53 = sea.add %v1, %v52 : i64 loc("_39")
  %v54 = sea.const 0 : i64 loc(".not.i.i.1")
  %v55 = sea.icmp ne, %v53, %v54 : i64 loc(".not.i.i.1")
  %v56 = sea.const 0 : i1 loc("or.cond.1.not"("aws-c-common/source/byte_buf.c":826:5))
  %v57 = sea.select %v51, %v55, %v56 : i1 loc("or.cond.1.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v57, ^bb25, ^bb42(%v51 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb25:
  %v58 = sea.ptr.index %v34 [%v53] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.2"("aws-c-common/source/byte_buf.c":826:69))
  %v59 = sea.const 1 : i64 loc("_40"("aws-c-common/source/byte_buf.c":826:41))
  %v60 = sea.ptr.dereferenceable %v58, %v59 : !sea.ptr<64>, i64 loc("_40"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v60, ^bb26, ^bb75
^bb26:
  %v61 = sea.load %v11[%v58] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_42"("aws-c-common/source/byte_buf.c":826:41))
  %v62 = sea.nondet "uninterpreted_predicate_fn" [9] : i1 loc("_43"("aws-c-common/source/byte_buf.c":826:31))
  %v63 = sea.const 18446744073709551613 : i64 loc("_44")
  %v64 = sea.add %v1, %v63 : i64 loc("_44")
  %v65 = sea.const 0 : i64 loc(".not.i.i.2")
  %v66 = sea.icmp ne, %v64, %v65 : i64 loc(".not.i.i.2")
  %v67 = sea.const 0 : i1 loc("or.cond.2.not"("aws-c-common/source/byte_buf.c":826:5))
  %v68 = sea.select %v62, %v66, %v67 : i1 loc("or.cond.2.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v68, ^bb27, ^bb42(%v62 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb27:
  %v69 = sea.ptr.index %v34 [%v64] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.3"("aws-c-common/source/byte_buf.c":826:69))
  %v70 = sea.const 1 : i64 loc("_45"("aws-c-common/source/byte_buf.c":826:41))
  %v71 = sea.ptr.dereferenceable %v69, %v70 : !sea.ptr<64>, i64 loc("_45"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v71, ^bb28, ^bb75
^bb28:
  %v72 = sea.load %v11[%v69] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_47"("aws-c-common/source/byte_buf.c":826:41))
  %v73 = sea.nondet "uninterpreted_predicate_fn" [10] : i1 loc("_48"("aws-c-common/source/byte_buf.c":826:31))
  %v74 = sea.const 18446744073709551612 : i64 loc("_49")
  %v75 = sea.add %v1, %v74 : i64 loc("_49")
  %v76 = sea.const 0 : i64 loc(".not.i.i.3")
  %v77 = sea.icmp ne, %v75, %v76 : i64 loc(".not.i.i.3")
  %v78 = sea.const 0 : i1 loc("or.cond.3.not"("aws-c-common/source/byte_buf.c":826:5))
  %v79 = sea.select %v73, %v77, %v78 : i1 loc("or.cond.3.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v79, ^bb29, ^bb42(%v73 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb29:
  %v80 = sea.ptr.index %v34 [%v75] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.4"("aws-c-common/source/byte_buf.c":826:69))
  %v81 = sea.const 1 : i64 loc("_50"("aws-c-common/source/byte_buf.c":826:41))
  %v82 = sea.ptr.dereferenceable %v80, %v81 : !sea.ptr<64>, i64 loc("_50"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v82, ^bb30, ^bb75
^bb30:
  %v83 = sea.load %v11[%v80] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_52"("aws-c-common/source/byte_buf.c":826:41))
  %v84 = sea.nondet "uninterpreted_predicate_fn" [11] : i1 loc("_53"("aws-c-common/source/byte_buf.c":826:31))
  %v85 = sea.const 18446744073709551611 : i64 loc("_54")
  %v86 = sea.add %v1, %v85 : i64 loc("_54")
  %v87 = sea.const 0 : i64 loc(".not.i.i.4")
  %v88 = sea.icmp ne, %v86, %v87 : i64 loc(".not.i.i.4")
  %v89 = sea.const 0 : i1 loc("or.cond.4.not"("aws-c-common/source/byte_buf.c":826:5))
  %v90 = sea.select %v84, %v88, %v89 : i1 loc("or.cond.4.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v90, ^bb31, ^bb42(%v84 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb31:
  %v91 = sea.ptr.index %v34 [%v86] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.5"("aws-c-common/source/byte_buf.c":826:69))
  %v92 = sea.const 1 : i64 loc("_55"("aws-c-common/source/byte_buf.c":826:41))
  %v93 = sea.ptr.dereferenceable %v91, %v92 : !sea.ptr<64>, i64 loc("_55"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v93, ^bb32, ^bb75
^bb32:
  %v94 = sea.load %v11[%v91] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_57"("aws-c-common/source/byte_buf.c":826:41))
  %v95 = sea.nondet "uninterpreted_predicate_fn" [12] : i1 loc("_58"("aws-c-common/source/byte_buf.c":826:31))
  %v96 = sea.const 18446744073709551610 : i64 loc("_59")
  %v97 = sea.add %v1, %v96 : i64 loc("_59")
  %v98 = sea.const 0 : i64 loc(".not.i.i.5")
  %v99 = sea.icmp ne, %v97, %v98 : i64 loc(".not.i.i.5")
  %v100 = sea.const 0 : i1 loc("or.cond.5.not"("aws-c-common/source/byte_buf.c":826:5))
  %v101 = sea.select %v95, %v99, %v100 : i1 loc("or.cond.5.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v101, ^bb33, ^bb42(%v95 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb33:
  %v102 = sea.ptr.index %v34 [%v97] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.6"("aws-c-common/source/byte_buf.c":826:69))
  %v103 = sea.const 1 : i64 loc("_60"("aws-c-common/source/byte_buf.c":826:41))
  %v104 = sea.ptr.dereferenceable %v102, %v103 : !sea.ptr<64>, i64 loc("_60"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v104, ^bb34, ^bb75
^bb34:
  %v105 = sea.load %v11[%v102] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_62"("aws-c-common/source/byte_buf.c":826:41))
  %v106 = sea.nondet "uninterpreted_predicate_fn" [13] : i1 loc("_63"("aws-c-common/source/byte_buf.c":826:31))
  %v107 = sea.const 18446744073709551609 : i64 loc("_64")
  %v108 = sea.add %v1, %v107 : i64 loc("_64")
  %v109 = sea.const 0 : i64 loc(".not.i.i.6")
  %v110 = sea.icmp ne, %v108, %v109 : i64 loc(".not.i.i.6")
  %v111 = sea.const 0 : i1 loc("or.cond.6.not"("aws-c-common/source/byte_buf.c":826:5))
  %v112 = sea.select %v106, %v110, %v111 : i1 loc("or.cond.6.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v112, ^bb35, ^bb42(%v106 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb35:
  %v113 = sea.ptr.index %v34 [%v108] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.7"("aws-c-common/source/byte_buf.c":826:69))
  %v114 = sea.const 1 : i64 loc("_65"("aws-c-common/source/byte_buf.c":826:41))
  %v115 = sea.ptr.dereferenceable %v113, %v114 : !sea.ptr<64>, i64 loc("_65"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v115, ^bb36, ^bb75
^bb36:
  %v116 = sea.load %v11[%v113] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_67"("aws-c-common/source/byte_buf.c":826:41))
  %v117 = sea.nondet "uninterpreted_predicate_fn" [14] : i1 loc("_68"("aws-c-common/source/byte_buf.c":826:31))
  %v118 = sea.const 18446744073709551608 : i64 loc("_69")
  %v119 = sea.add %v1, %v118 : i64 loc("_69")
  %v120 = sea.const 0 : i64 loc(".not.i.i.7")
  %v121 = sea.icmp ne, %v119, %v120 : i64 loc(".not.i.i.7")
  %v122 = sea.const 0 : i1 loc("or.cond.7.not"("aws-c-common/source/byte_buf.c":826:5))
  %v123 = sea.select %v117, %v121, %v122 : i1 loc("or.cond.7.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v123, ^bb37, ^bb42(%v117 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb37:
  %v124 = sea.ptr.index %v34 [%v119] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.8"("aws-c-common/source/byte_buf.c":826:69))
  %v125 = sea.const 1 : i64 loc("_70"("aws-c-common/source/byte_buf.c":826:41))
  %v126 = sea.ptr.dereferenceable %v124, %v125 : !sea.ptr<64>, i64 loc("_70"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v126, ^bb38, ^bb75
^bb38:
  %v127 = sea.load %v11[%v124] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_72"("aws-c-common/source/byte_buf.c":826:41))
  %v128 = sea.nondet "uninterpreted_predicate_fn" [15] : i1 loc("_73"("aws-c-common/source/byte_buf.c":826:31))
  %v129 = sea.const 18446744073709551607 : i64 loc("_74")
  %v130 = sea.add %v1, %v129 : i64 loc("_74")
  %v131 = sea.const 0 : i64 loc(".not.i.i.8")
  %v132 = sea.icmp ne, %v130, %v131 : i64 loc(".not.i.i.8")
  %v133 = sea.const 0 : i1 loc("or.cond.8.not"("aws-c-common/source/byte_buf.c":826:5))
  %v134 = sea.select %v128, %v132, %v133 : i1 loc("or.cond.8.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v134, ^bb39, ^bb42(%v128 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb39:
  %v135 = sea.ptr.index %v34 [%v130] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep.9"("aws-c-common/source/byte_buf.c":826:69))
  %v136 = sea.const 1 : i64 loc("_75"("aws-c-common/source/byte_buf.c":826:41))
  %v137 = sea.ptr.dereferenceable %v135, %v136 : !sea.ptr<64>, i64 loc("_75"("aws-c-common/source/byte_buf.c":826:41))
  sea.cond_br %v137, ^bb40, ^bb75
^bb40:
  %v138 = sea.load %v11[%v135] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_77"("aws-c-common/source/byte_buf.c":826:41))
  %v139 = sea.nondet "uninterpreted_predicate_fn" [16] : i1 loc("_78"("aws-c-common/source/byte_buf.c":826:31))
  %v140 = sea.const 18446744073709551606 : i64 loc("_79")
  %v141 = sea.add %v1, %v140 : i64 loc("_79")
  %v142 = sea.const 0 : i64 loc(".not.i.i.9")
  %v143 = sea.icmp ne, %v141, %v142 : i64 loc(".not.i.i.9")
  %v144 = sea.const 0 : i1 loc("or.cond.9.not"("aws-c-common/source/byte_buf.c":826:5))
  %v145 = sea.select %v139, %v143, %v144 : i1 loc("or.cond.9.not"("aws-c-common/source/byte_buf.c":826:5))
  sea.cond_br %v145, ^bb41, ^bb42(%v139 : i1) loc("aws-c-common/source/byte_buf.c":826:5)
^bb41:
  %v146 = sea.ptr.index %v34 [%v141] strides [1] offset 0 : !sea.ptr<64>, i64 loc("gep"("aws-c-common/source/byte_buf.c":826:69))
  %v147 = sea.const 1 : i64 loc("_31"("aws-c-common/source/byte_buf.c":826:41))
  %v148 = sea.ptr.dereferenceable %v146, %v147 : !sea.ptr<64>, i64 loc("_31"("aws-c-common/source/byte_buf.c":826:41))
  %v149 = sea.const 1 : i1
  %v150 = sea.xor %v148, %v149 : i1
  sea.assume %v150
  sea.br ^bb75
^bb42(%v151 : i1):
  sea.br ^bb43
^bb43:
  %v152 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v13, ^bb49(%v152 : i1), ^bb44 loc("aws-c-common/source/byte_buf.c":66:32)
^bb44:
  sea.br ^bb45
^bb45:
  sea.br ^bb46
^bb46:
  %v153 = sea.ptr.null : !sea.ptr<64> loc(".not2.i11.i"("aws-c-common/source/byte_buf.c":66:55))
  %v154 = sea.ptr.cmp eq, %v9, %v153 : !sea.ptr<64> loc(".not2.i11.i"("aws-c-common/source/byte_buf.c":66:55))
  %v155 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v154, ^bb49(%v155 : i1), ^bb47 loc("aws-c-common/source/byte_buf.c":66:67)
^bb47:
  sea.br ^bb48
^bb48:
  %v156 = sea.const 1 : i1
  sea.br ^bb49(%v156 : i1)
^bb49(%v157 : i1):
  sea.br ^bb50
^bb50:
  sea.cond_br %v13, ^bb55, ^bb51 loc("aws-c-common/source/byte_buf.c":66:32)
^bb51:
  sea.br ^bb52
^bb52:
  %v158 = sea.const 1 : i1 loc("or.cond11.not")
  %v159 = sea.and %v24, %v158 : i1 loc("or.cond11.not")
  sea.cond_br %v159, ^bb53, ^bb75
^bb53:
  sea.br ^bb54
^bb54:
  sea.br ^bb55
^bb55:
  sea.br ^bb56
^bb56:
  %v160 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v151, ^bb62(%v160 : i1), ^bb57 loc("aws-c-common/source/byte_buf.c":66:32)
^bb57:
  sea.br ^bb58
^bb58:
  sea.br ^bb59
^bb59:
  %v161 = sea.ptr.null : !sea.ptr<64> loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":66:55))
  %v162 = sea.ptr.cmp eq, %v9, %v161 : !sea.ptr<64> loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":66:55))
  %v163 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v162, ^bb62(%v163 : i1), ^bb60 loc("aws-c-common/source/byte_buf.c":66:67)
^bb60:
  sea.br ^bb61
^bb61:
  %v164 = sea.const 1 : i1
  sea.br ^bb62(%v164 : i1)
^bb62(%v165 : i1):
  sea.br ^bb63
^bb63:
  sea.cond_br %v151, ^bb68, ^bb64 loc("aws-c-common/source/byte_buf.c":66:32)
^bb64:
  sea.br ^bb65
^bb65:
  %v166 = sea.const 1 : i1 loc("or.cond15.not")
  %v167 = sea.and %v24, %v166 : i1 loc("or.cond15.not")
  sea.cond_br %v167, ^bb66, ^bb75
^bb66:
  sea.br ^bb67
^bb67:
  sea.br ^bb68
^bb68:
  %v168 = sea.const 1 : i1 loc("seahorn/jobs/byte_cursor_right_trim_pred/aws_byte_cursor_right_trim_pred_harness.c":36:9)
  %v169 = sea.xor %v13, %v168 : i1 loc("seahorn/jobs/byte_cursor_right_trim_pred/aws_byte_cursor_right_trim_pred_harness.c":36:9)
  sea.assume %v169 loc("seahorn/jobs/byte_cursor_right_trim_pred/aws_byte_cursor_right_trim_pred_harness.c":36:9)
  sea.assume %v24 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb69
^bb69:
  %v170 = sea.ptr.index %v9 [%v20] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_105"("seahorn/lib/utils.c":40:5))
  %v171 = sea.const 1 : i64 loc("_106"("seahorn/lib/utils.c":40:5))
  %v172 = sea.ptr.dereferenceable %v170, %v171 : !sea.ptr<64>, i64 loc("_106"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v172, ^bb70, ^bb75
^bb70:
  %v173 = sea.load %v11[%v170] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_108"("seahorn/lib/utils.c":40:5))
  sea.br ^bb71
^bb71:
  %v174 = sea.icmp eq, %v173, %v32 : i8 loc("_110"("seahorn/lib/utils.c":40:5))
  sea.br ^bb72
^bb72:
  %v175 = sea.const 1 : i64 loc("_112"("seahorn/lib/utils.c":40:5))
  %v176 = sea.ptr.dereferenceable %v170, %v175 : !sea.ptr<64>, i64 loc("_112"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v176, ^bb73, ^bb75
^bb73:
  sea.br ^bb74
^bb74:
  %v177 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v178 = sea.xor %v174, %v177 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v178 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb75 loc("seahorn/lib/utils.c":40:5)
^bb75:
  sea.br ^bb76
^bb76:
  %v179 = sea.const 0 : i1
  sea.assert %v179
  sea.halt
}
