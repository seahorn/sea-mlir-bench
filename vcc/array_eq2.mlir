// Exported from SeaHorn (array_eq2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm2")
  %v1 = sea.nondet "nd_size_t" [1] : i64 loc("_0"("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":12:22))
  %v2 = sea.const 11 : i64 loc("_1"("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":13:20))
  %v3 = sea.icmp ult, %v1, %v2 : i64 loc("_1"("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":13:20))
  sea.assume %v3 loc("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":13:5)
  %v4 = sea.const 0 : i64 loc("_2"("seahorn/lib/proof_allocators.c":21:15))
  %v5 = sea.icmp eq, %v1, %v4 : i64 loc("_2"("seahorn/lib/proof_allocators.c":21:15))
  %v6 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v5, ^bb4(%v0, %v6 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb1 loc("seahorn/lib/proof_allocators.c":21:10)
^bb1:
  %v7 = sea.nondet "nd_malloc_is_fail" [2] : i1 loc("_4"("seahorn/lib/sea_allocators.c":11:10))
  %v8 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v7, ^bb3(%v0, %v8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb2 loc("seahorn/lib/sea_allocators.c":11:10)
^bb2:
  %v9 = sea.const 1 : i64 loc("malloc.i")
  %v10 = sea.mul %v1, %v9 : i64 loc("malloc.i")
  %v11 = sea.alloca %v10 align 16 [3] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb3(%v0, %v11 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb3(%v12 : !sea.mem<!sea.ptr<64>, i8>, %v13 : !sea.ptr<64>):
  %v14 = sea.memhavoc %v12[%v13], %v1 [4] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb4(%v14, %v13 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb4(%v15 : !sea.mem<!sea.ptr<64>, i8>, %v16 : !sea.ptr<64>):
  %v17 = sea.nondet "nd_size_t" [5] : i64 loc("_8"("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":23:22))
  %v18 = sea.nondet "nd_bool" [6] : i1 loc("_9"("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":24:9))
  sea.cond_br %v18, ^bb9(%v15, %v16, %v1 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64), ^bb5 loc("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":24:9)
^bb5:
  %v19 = sea.const 11 : i64 loc("_11"("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":28:24))
  %v20 = sea.icmp ult, %v17, %v19 : i64 loc("_11"("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":28:24))
  sea.assume %v20 loc("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":28:9)
  %v21 = sea.const 0 : i64 loc("_12"("seahorn/lib/proof_allocators.c":21:15))
  %v22 = sea.icmp eq, %v17, %v21 : i64 loc("_12"("seahorn/lib/proof_allocators.c":21:15))
  %v23 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  %v24 = sea.const 0 : i64 loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v22, ^bb9(%v15, %v23, %v24 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64), ^bb6 loc("seahorn/lib/proof_allocators.c":21:10)
^bb6:
  %v25 = sea.nondet "nd_malloc_is_fail" [7] : i1 loc("_14"("seahorn/lib/sea_allocators.c":11:10))
  %v26 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v25, ^bb8(%v15, %v26 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb7 loc("seahorn/lib/sea_allocators.c":11:10)
^bb7:
  %v27 = sea.const 1 : i64 loc("malloc8.i")
  %v28 = sea.mul %v17, %v27 : i64 loc("malloc8.i")
  %v29 = sea.alloca %v28 align 16 [8] : i64 -> !sea.ptr<64> loc("malloc8.i")
  sea.br ^bb8(%v15, %v29 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb8(%v30 : !sea.mem<!sea.ptr<64>, i8>, %v31 : !sea.ptr<64>):
  %v32 = sea.memhavoc %v30[%v31], %v17 [9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb9(%v32, %v31, %v17 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64) loc("seahorn/lib/proof_allocators.c":21:10)
^bb9(%v33 : !sea.mem<!sea.ptr<64>, i8>, %v34 : !sea.ptr<64>, %v35 : i64):
  %v36 = sea.ptr.null : !sea.ptr<64> loc("_17")
  %v37 = sea.ptr.cmp ne, %v16, %v36 : !sea.ptr<64> loc("_17")
  %v38 = sea.or %v5, %v37 : i1 loc("spec.select.i"("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":39:27))
  sea.assume %v38 loc("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":39:5)
  %v39 = sea.const 0 : i64 loc("_18"("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":40:21))
  %v40 = sea.icmp eq, %v35, %v39 : i64 loc("_18"("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":40:21))
  %v41 = sea.ptr.null : !sea.ptr<64> loc("_19"("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":40:27))
  %v42 = sea.ptr.cmp ne, %v34, %v41 : !sea.ptr<64> loc("_19"("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":40:27))
  %v43 = sea.or %v42, %v40 : i1 loc("_20"("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":40:27))
  sea.assume %v43 loc("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":40:5)
  sea.tracking_on loc("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":43:5)
  %v44 = sea.icmp eq, %v1, %v35 : i64 loc(".not.i.i"("aws-c-common/source/byte_buf.c":425:15))
  sea.cond_br %v44, ^bb10, ^bb103 loc("aws-c-common/source/byte_buf.c":425:9)
^bb10:
  sea.cond_br %v5, ^bb102, ^bb11 loc("aws-c-common/source/byte_buf.c":429:9)
^bb11:
  %v45 = sea.ptr.cmp eq, %v16, %v34 : !sea.ptr<64> loc("_23"("seahorn/lib/bcmp.c":55:10))
  sea.cond_br %v45, ^bb99, ^bb12 loc("seahorn/lib/bcmp.c":55:7)
^bb12:
  %v46 = sea.const 1 : i64 loc("_26"("seahorn/lib/bcmp.c":61:11))
  %v47 = sea.ptr.dereferenceable %v16, %v46 : !sea.ptr<64>, i64 loc("_26"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v47, ^bb13, ^bb105
^bb13:
  %v48 = sea.load %v33[%v16] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_28"("seahorn/lib/bcmp.c":61:11))
  %v49 = sea.const 1 : i64 loc("_29"("seahorn/lib/bcmp.c":61:20))
  %v50 = sea.ptr.dereferenceable %v34, %v49 : !sea.ptr<64>, i64 loc("_29"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v50, ^bb14, ^bb105
^bb14:
  %v51 = sea.load %v33[%v34] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_31"("seahorn/lib/bcmp.c":61:20))
  %v52 = sea.icmp eq, %v48, %v51 : i8 loc(".not2.i.i"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v52, ^bb15, ^bb51(%v34, %v16 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb15:
  %v53 = sea.const 1 : i64 loc(".not"("seahorn/lib/bcmp.c":60:11))
  %v54 = sea.icmp eq, %v1, %v53 : i64 loc(".not"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v54, ^bb98, ^bb16 loc("seahorn/lib/bcmp.c":60:9)
^bb16:
  %v55 = sea.ptr.index %v16 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_37"("seahorn/lib/bcmp.c":61:11))
  %v56 = sea.const 1 : i64 loc("_38"("seahorn/lib/bcmp.c":61:11))
  %v57 = sea.ptr.dereferenceable %v55, %v56 : !sea.ptr<64>, i64 loc("_38"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v57, ^bb17, ^bb105
^bb17:
  %v58 = sea.load %v33[%v55] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_40"("seahorn/lib/bcmp.c":61:11))
  %v59 = sea.ptr.index %v34 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_41"("seahorn/lib/bcmp.c":61:20))
  %v60 = sea.const 1 : i64 loc("_42"("seahorn/lib/bcmp.c":61:20))
  %v61 = sea.ptr.dereferenceable %v59, %v60 : !sea.ptr<64>, i64 loc("_42"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v61, ^bb18, ^bb105
^bb18:
  %v62 = sea.load %v33[%v59] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_44"("seahorn/lib/bcmp.c":61:20))
  %v63 = sea.icmp eq, %v58, %v62 : i8 loc(".not2.i.i.1"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v63, ^bb19, ^bb51(%v59, %v55 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb19:
  %v64 = sea.const 2 : i64 loc("_45"("seahorn/lib/bcmp.c":60:11))
  %v65 = sea.icmp ugt, %v1, %v64 : i64 loc("_45"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v65, ^bb20, ^bb98 loc("seahorn/lib/bcmp.c":60:9)
^bb20:
  %v66 = sea.ptr.index %v16 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_47"("seahorn/lib/bcmp.c":61:11))
  %v67 = sea.const 1 : i64 loc("_48"("seahorn/lib/bcmp.c":61:11))
  %v68 = sea.ptr.dereferenceable %v66, %v67 : !sea.ptr<64>, i64 loc("_48"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v68, ^bb21, ^bb105
^bb21:
  %v69 = sea.load %v33[%v66] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_50"("seahorn/lib/bcmp.c":61:11))
  %v70 = sea.ptr.index %v34 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_51"("seahorn/lib/bcmp.c":61:20))
  %v71 = sea.const 1 : i64 loc("_52"("seahorn/lib/bcmp.c":61:20))
  %v72 = sea.ptr.dereferenceable %v70, %v71 : !sea.ptr<64>, i64 loc("_52"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v72, ^bb22, ^bb105
^bb22:
  %v73 = sea.load %v33[%v70] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_54"("seahorn/lib/bcmp.c":61:20))
  %v74 = sea.icmp eq, %v69, %v73 : i8 loc(".not2.i.i.2"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v74, ^bb23, ^bb51(%v70, %v66 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb23:
  %v75 = sea.const 3 : i64 loc(".not13"("seahorn/lib/bcmp.c":60:11))
  %v76 = sea.icmp eq, %v1, %v75 : i64 loc(".not13"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v76, ^bb98, ^bb24 loc("seahorn/lib/bcmp.c":60:9)
^bb24:
  %v77 = sea.ptr.index %v16 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_56"("seahorn/lib/bcmp.c":61:11))
  %v78 = sea.const 1 : i64 loc("_57"("seahorn/lib/bcmp.c":61:11))
  %v79 = sea.ptr.dereferenceable %v77, %v78 : !sea.ptr<64>, i64 loc("_57"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v79, ^bb25, ^bb105
^bb25:
  %v80 = sea.load %v33[%v77] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_59"("seahorn/lib/bcmp.c":61:11))
  %v81 = sea.ptr.index %v34 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_60"("seahorn/lib/bcmp.c":61:20))
  %v82 = sea.const 1 : i64 loc("_61"("seahorn/lib/bcmp.c":61:20))
  %v83 = sea.ptr.dereferenceable %v81, %v82 : !sea.ptr<64>, i64 loc("_61"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v83, ^bb26, ^bb105
^bb26:
  %v84 = sea.load %v33[%v81] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_63"("seahorn/lib/bcmp.c":61:20))
  %v85 = sea.icmp eq, %v80, %v84 : i8 loc(".not2.i.i.3"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v85, ^bb27, ^bb51(%v81, %v77 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb27:
  %v86 = sea.const 4 : i64 loc("_64"("seahorn/lib/bcmp.c":60:11))
  %v87 = sea.icmp ugt, %v1, %v86 : i64 loc("_64"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v87, ^bb28, ^bb98 loc("seahorn/lib/bcmp.c":60:9)
^bb28:
  %v88 = sea.ptr.index %v16 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_66"("seahorn/lib/bcmp.c":61:11))
  %v89 = sea.const 1 : i64 loc("_67"("seahorn/lib/bcmp.c":61:11))
  %v90 = sea.ptr.dereferenceable %v88, %v89 : !sea.ptr<64>, i64 loc("_67"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v90, ^bb29, ^bb105
^bb29:
  %v91 = sea.load %v33[%v88] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_69"("seahorn/lib/bcmp.c":61:11))
  %v92 = sea.ptr.index %v34 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_70"("seahorn/lib/bcmp.c":61:20))
  %v93 = sea.const 1 : i64 loc("_71"("seahorn/lib/bcmp.c":61:20))
  %v94 = sea.ptr.dereferenceable %v92, %v93 : !sea.ptr<64>, i64 loc("_71"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v94, ^bb30, ^bb105
^bb30:
  %v95 = sea.load %v33[%v92] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_73"("seahorn/lib/bcmp.c":61:20))
  %v96 = sea.icmp eq, %v91, %v95 : i8 loc(".not2.i.i.4"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v96, ^bb31, ^bb51(%v92, %v88 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb31:
  %v97 = sea.const 5 : i64 loc(".not14"("seahorn/lib/bcmp.c":60:11))
  %v98 = sea.icmp eq, %v1, %v97 : i64 loc(".not14"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v98, ^bb98, ^bb32 loc("seahorn/lib/bcmp.c":60:9)
^bb32:
  %v99 = sea.ptr.index %v16 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_75"("seahorn/lib/bcmp.c":61:11))
  %v100 = sea.const 1 : i64 loc("_76"("seahorn/lib/bcmp.c":61:11))
  %v101 = sea.ptr.dereferenceable %v99, %v100 : !sea.ptr<64>, i64 loc("_76"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v101, ^bb33, ^bb105
^bb33:
  %v102 = sea.load %v33[%v99] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_78"("seahorn/lib/bcmp.c":61:11))
  %v103 = sea.ptr.index %v34 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_79"("seahorn/lib/bcmp.c":61:20))
  %v104 = sea.const 1 : i64 loc("_80"("seahorn/lib/bcmp.c":61:20))
  %v105 = sea.ptr.dereferenceable %v103, %v104 : !sea.ptr<64>, i64 loc("_80"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v105, ^bb34, ^bb105
^bb34:
  %v106 = sea.load %v33[%v103] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_82"("seahorn/lib/bcmp.c":61:20))
  %v107 = sea.icmp eq, %v102, %v106 : i8 loc(".not2.i.i.5"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v107, ^bb35, ^bb51(%v103, %v99 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb35:
  %v108 = sea.const 6 : i64 loc("_83"("seahorn/lib/bcmp.c":60:11))
  %v109 = sea.icmp ugt, %v1, %v108 : i64 loc("_83"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v109, ^bb36, ^bb98 loc("seahorn/lib/bcmp.c":60:9)
^bb36:
  %v110 = sea.ptr.index %v16 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_85"("seahorn/lib/bcmp.c":61:11))
  %v111 = sea.const 1 : i64 loc("_86"("seahorn/lib/bcmp.c":61:11))
  %v112 = sea.ptr.dereferenceable %v110, %v111 : !sea.ptr<64>, i64 loc("_86"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v112, ^bb37, ^bb105
^bb37:
  %v113 = sea.load %v33[%v110] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_88"("seahorn/lib/bcmp.c":61:11))
  %v114 = sea.ptr.index %v34 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_89"("seahorn/lib/bcmp.c":61:20))
  %v115 = sea.const 1 : i64 loc("_90"("seahorn/lib/bcmp.c":61:20))
  %v116 = sea.ptr.dereferenceable %v114, %v115 : !sea.ptr<64>, i64 loc("_90"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v116, ^bb38, ^bb105
^bb38:
  %v117 = sea.load %v33[%v114] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_92"("seahorn/lib/bcmp.c":61:20))
  %v118 = sea.icmp eq, %v113, %v117 : i8 loc(".not2.i.i.6"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v118, ^bb39, ^bb51(%v114, %v110 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb39:
  %v119 = sea.const 7 : i64 loc(".not15"("seahorn/lib/bcmp.c":60:11))
  %v120 = sea.icmp eq, %v1, %v119 : i64 loc(".not15"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v120, ^bb98, ^bb40 loc("seahorn/lib/bcmp.c":60:9)
^bb40:
  %v121 = sea.ptr.index %v16 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_94"("seahorn/lib/bcmp.c":61:11))
  %v122 = sea.const 1 : i64 loc("_95"("seahorn/lib/bcmp.c":61:11))
  %v123 = sea.ptr.dereferenceable %v121, %v122 : !sea.ptr<64>, i64 loc("_95"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v123, ^bb41, ^bb105
^bb41:
  %v124 = sea.load %v33[%v121] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_97"("seahorn/lib/bcmp.c":61:11))
  %v125 = sea.ptr.index %v34 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_98"("seahorn/lib/bcmp.c":61:20))
  %v126 = sea.const 1 : i64 loc("_99"("seahorn/lib/bcmp.c":61:20))
  %v127 = sea.ptr.dereferenceable %v125, %v126 : !sea.ptr<64>, i64 loc("_99"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v127, ^bb42, ^bb105
^bb42:
  %v128 = sea.load %v33[%v125] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_101"("seahorn/lib/bcmp.c":61:20))
  %v129 = sea.icmp eq, %v124, %v128 : i8 loc(".not2.i.i.7"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v129, ^bb43, ^bb51(%v125, %v121 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb43:
  %v130 = sea.const 8 : i64 loc("_102"("seahorn/lib/bcmp.c":60:11))
  %v131 = sea.icmp ugt, %v1, %v130 : i64 loc("_102"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v131, ^bb44, ^bb98 loc("seahorn/lib/bcmp.c":60:9)
^bb44:
  %v132 = sea.ptr.index %v16 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_104"("seahorn/lib/bcmp.c":61:11))
  %v133 = sea.const 1 : i64 loc("_105"("seahorn/lib/bcmp.c":61:11))
  %v134 = sea.ptr.dereferenceable %v132, %v133 : !sea.ptr<64>, i64 loc("_105"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v134, ^bb45, ^bb105
^bb45:
  %v135 = sea.load %v33[%v132] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_107"("seahorn/lib/bcmp.c":61:11))
  %v136 = sea.ptr.index %v34 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_108"("seahorn/lib/bcmp.c":61:20))
  %v137 = sea.const 1 : i64 loc("_109"("seahorn/lib/bcmp.c":61:20))
  %v138 = sea.ptr.dereferenceable %v136, %v137 : !sea.ptr<64>, i64 loc("_109"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v138, ^bb46, ^bb105
^bb46:
  %v139 = sea.load %v33[%v136] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_111"("seahorn/lib/bcmp.c":61:20))
  %v140 = sea.icmp eq, %v135, %v139 : i8 loc(".not2.i.i.8"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v140, ^bb47, ^bb51(%v136, %v132 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb47:
  %v141 = sea.const 9 : i64 loc(".not16"("seahorn/lib/bcmp.c":60:11))
  %v142 = sea.icmp eq, %v1, %v141 : i64 loc(".not16"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v142, ^bb98, ^bb48 loc("seahorn/lib/bcmp.c":60:9)
^bb48:
  %v143 = sea.ptr.index %v16 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_113"("seahorn/lib/bcmp.c":61:11))
  %v144 = sea.const 1 : i64 loc("_114"("seahorn/lib/bcmp.c":61:11))
  %v145 = sea.ptr.dereferenceable %v143, %v144 : !sea.ptr<64>, i64 loc("_114"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v145, ^bb49, ^bb105
^bb49:
  %v146 = sea.load %v33[%v143] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_116"("seahorn/lib/bcmp.c":61:11))
  %v147 = sea.ptr.index %v34 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_117"("seahorn/lib/bcmp.c":61:20))
  %v148 = sea.const 1 : i64 loc("_118"("seahorn/lib/bcmp.c":61:20))
  %v149 = sea.ptr.dereferenceable %v147, %v148 : !sea.ptr<64>, i64 loc("_118"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v149, ^bb50, ^bb105
^bb50:
  %v150 = sea.load %v33[%v147] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_120"("seahorn/lib/bcmp.c":61:20))
  %v151 = sea.icmp eq, %v146, %v150 : i8 loc(".not2.i.i.9"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v151, ^bb53, ^bb51(%v147, %v143 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb51(%v152 : !sea.ptr<64>, %v153 : !sea.ptr<64>):
  %v154 = sea.const 1 : i64 loc("_33"("seahorn/lib/bcmp.c":62:16))
  %v155 = sea.ptr.dereferenceable %v153, %v154 : !sea.ptr<64>, i64 loc("_33"("seahorn/lib/bcmp.c":62:16))
  sea.cond_br %v155, ^bb52, ^bb105
^bb52:
  %v156 = sea.const 1 : i64 loc("_35"("seahorn/lib/bcmp.c":62:24))
  %v157 = sea.ptr.dereferenceable %v152, %v156 : !sea.ptr<64>, i64 loc("_35"("seahorn/lib/bcmp.c":62:24))
  sea.cond_br %v157, ^bb103, ^bb105
^bb53:
  %v158 = sea.const 10 : i64 loc("_121"("seahorn/lib/bcmp.c":67:31))
  %v159 = sea.icmp ugt, %v1, %v158 : i64 loc("_121"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v159, ^bb54, ^bb98 loc("seahorn/lib/bcmp.c":67:3)
^bb54:
  %v160 = sea.ptr.index %v16 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_24"("seahorn/lib/bcmp.c":68:9))
  %v161 = sea.const 1 : i64 loc("_25"("seahorn/lib/bcmp.c":68:9))
  %v162 = sea.ptr.dereferenceable %v160, %v161 : !sea.ptr<64>, i64 loc("_25"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v162, ^bb55, ^bb105
^bb55:
  %v163 = sea.load %v33[%v160] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_206"("seahorn/lib/bcmp.c":68:9))
  %v164 = sea.ptr.index %v34 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_207"("seahorn/lib/bcmp.c":68:18))
  %v165 = sea.const 1 : i64 loc("_208"("seahorn/lib/bcmp.c":68:18))
  %v166 = sea.ptr.dereferenceable %v164, %v165 : !sea.ptr<64>, i64 loc("_208"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v166, ^bb56, ^bb105
^bb56:
  %v167 = sea.load %v33[%v164] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_210"("seahorn/lib/bcmp.c":68:18))
  %v168 = sea.icmp eq, %v163, %v167 : i8 loc(".not.i7.i"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v168, ^bb57, ^bb93(%v164, %v160 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb57:
  %v169 = sea.const 11 : i64 loc("exitcond19.not"("seahorn/lib/bcmp.c":67:31))
  %v170 = sea.icmp eq, %v1, %v169 : i64 loc("exitcond19.not"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v170, ^bb97, ^bb58 loc("seahorn/lib/bcmp.c":67:3)
^bb58:
  %v171 = sea.ptr.index %v16 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_123"("seahorn/lib/bcmp.c":68:9))
  %v172 = sea.const 1 : i64 loc("_124"("seahorn/lib/bcmp.c":68:9))
  %v173 = sea.ptr.dereferenceable %v171, %v172 : !sea.ptr<64>, i64 loc("_124"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v173, ^bb59, ^bb105
^bb59:
  %v174 = sea.load %v33[%v171] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_126"("seahorn/lib/bcmp.c":68:9))
  %v175 = sea.ptr.index %v34 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_127"("seahorn/lib/bcmp.c":68:18))
  %v176 = sea.const 1 : i64 loc("_128"("seahorn/lib/bcmp.c":68:18))
  %v177 = sea.ptr.dereferenceable %v175, %v176 : !sea.ptr<64>, i64 loc("_128"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v177, ^bb60, ^bb105
^bb60:
  %v178 = sea.load %v33[%v175] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_130"("seahorn/lib/bcmp.c":68:18))
  %v179 = sea.icmp eq, %v174, %v178 : i8 loc(".not.i7.i.1"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v179, ^bb61, ^bb93(%v175, %v171 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb61:
  %v180 = sea.const 12 : i64 loc("exitcond19.not.1"("seahorn/lib/bcmp.c":67:31))
  %v181 = sea.icmp eq, %v1, %v180 : i64 loc("exitcond19.not.1"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v181, ^bb97, ^bb62 loc("seahorn/lib/bcmp.c":67:3)
^bb62:
  %v182 = sea.ptr.index %v16 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_132"("seahorn/lib/bcmp.c":68:9))
  %v183 = sea.const 1 : i64 loc("_133"("seahorn/lib/bcmp.c":68:9))
  %v184 = sea.ptr.dereferenceable %v182, %v183 : !sea.ptr<64>, i64 loc("_133"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v184, ^bb63, ^bb105
^bb63:
  %v185 = sea.load %v33[%v182] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_135"("seahorn/lib/bcmp.c":68:9))
  %v186 = sea.ptr.index %v34 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_136"("seahorn/lib/bcmp.c":68:18))
  %v187 = sea.const 1 : i64 loc("_137"("seahorn/lib/bcmp.c":68:18))
  %v188 = sea.ptr.dereferenceable %v186, %v187 : !sea.ptr<64>, i64 loc("_137"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v188, ^bb64, ^bb105
^bb64:
  %v189 = sea.load %v33[%v186] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_139"("seahorn/lib/bcmp.c":68:18))
  %v190 = sea.icmp eq, %v185, %v189 : i8 loc(".not.i7.i.2"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v190, ^bb65, ^bb93(%v186, %v182 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb65:
  %v191 = sea.const 13 : i64 loc("exitcond19.not.2"("seahorn/lib/bcmp.c":67:31))
  %v192 = sea.icmp eq, %v1, %v191 : i64 loc("exitcond19.not.2"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v192, ^bb97, ^bb66 loc("seahorn/lib/bcmp.c":67:3)
^bb66:
  %v193 = sea.ptr.index %v16 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_141"("seahorn/lib/bcmp.c":68:9))
  %v194 = sea.const 1 : i64 loc("_142"("seahorn/lib/bcmp.c":68:9))
  %v195 = sea.ptr.dereferenceable %v193, %v194 : !sea.ptr<64>, i64 loc("_142"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v195, ^bb67, ^bb105
^bb67:
  %v196 = sea.load %v33[%v193] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_144"("seahorn/lib/bcmp.c":68:9))
  %v197 = sea.ptr.index %v34 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_145"("seahorn/lib/bcmp.c":68:18))
  %v198 = sea.const 1 : i64 loc("_146"("seahorn/lib/bcmp.c":68:18))
  %v199 = sea.ptr.dereferenceable %v197, %v198 : !sea.ptr<64>, i64 loc("_146"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v199, ^bb68, ^bb105
^bb68:
  %v200 = sea.load %v33[%v197] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_148"("seahorn/lib/bcmp.c":68:18))
  %v201 = sea.icmp eq, %v196, %v200 : i8 loc(".not.i7.i.3"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v201, ^bb69, ^bb93(%v197, %v193 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb69:
  %v202 = sea.const 14 : i64 loc("exitcond19.not.3"("seahorn/lib/bcmp.c":67:31))
  %v203 = sea.icmp eq, %v1, %v202 : i64 loc("exitcond19.not.3"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v203, ^bb97, ^bb70 loc("seahorn/lib/bcmp.c":67:3)
^bb70:
  %v204 = sea.ptr.index %v16 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_150"("seahorn/lib/bcmp.c":68:9))
  %v205 = sea.const 1 : i64 loc("_151"("seahorn/lib/bcmp.c":68:9))
  %v206 = sea.ptr.dereferenceable %v204, %v205 : !sea.ptr<64>, i64 loc("_151"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v206, ^bb71, ^bb105
^bb71:
  %v207 = sea.load %v33[%v204] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_153"("seahorn/lib/bcmp.c":68:9))
  %v208 = sea.ptr.index %v34 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_154"("seahorn/lib/bcmp.c":68:18))
  %v209 = sea.const 1 : i64 loc("_155"("seahorn/lib/bcmp.c":68:18))
  %v210 = sea.ptr.dereferenceable %v208, %v209 : !sea.ptr<64>, i64 loc("_155"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v210, ^bb72, ^bb105
^bb72:
  %v211 = sea.load %v33[%v208] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_157"("seahorn/lib/bcmp.c":68:18))
  %v212 = sea.icmp eq, %v207, %v211 : i8 loc(".not.i7.i.4"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v212, ^bb73, ^bb93(%v208, %v204 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb73:
  %v213 = sea.const 15 : i64 loc("exitcond19.not.4"("seahorn/lib/bcmp.c":67:31))
  %v214 = sea.icmp eq, %v1, %v213 : i64 loc("exitcond19.not.4"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v214, ^bb97, ^bb74 loc("seahorn/lib/bcmp.c":67:3)
^bb74:
  %v215 = sea.ptr.index %v16 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_159"("seahorn/lib/bcmp.c":68:9))
  %v216 = sea.const 1 : i64 loc("_160"("seahorn/lib/bcmp.c":68:9))
  %v217 = sea.ptr.dereferenceable %v215, %v216 : !sea.ptr<64>, i64 loc("_160"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v217, ^bb75, ^bb105
^bb75:
  %v218 = sea.load %v33[%v215] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_162"("seahorn/lib/bcmp.c":68:9))
  %v219 = sea.ptr.index %v34 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_163"("seahorn/lib/bcmp.c":68:18))
  %v220 = sea.const 1 : i64 loc("_164"("seahorn/lib/bcmp.c":68:18))
  %v221 = sea.ptr.dereferenceable %v219, %v220 : !sea.ptr<64>, i64 loc("_164"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v221, ^bb76, ^bb105
^bb76:
  %v222 = sea.load %v33[%v219] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_166"("seahorn/lib/bcmp.c":68:18))
  %v223 = sea.icmp eq, %v218, %v222 : i8 loc(".not.i7.i.5"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v223, ^bb77, ^bb93(%v219, %v215 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb77:
  %v224 = sea.const 16 : i64 loc("exitcond19.not.5"("seahorn/lib/bcmp.c":67:31))
  %v225 = sea.icmp eq, %v1, %v224 : i64 loc("exitcond19.not.5"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v225, ^bb97, ^bb78 loc("seahorn/lib/bcmp.c":67:3)
^bb78:
  %v226 = sea.ptr.index %v16 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_168"("seahorn/lib/bcmp.c":68:9))
  %v227 = sea.const 1 : i64 loc("_169"("seahorn/lib/bcmp.c":68:9))
  %v228 = sea.ptr.dereferenceable %v226, %v227 : !sea.ptr<64>, i64 loc("_169"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v228, ^bb79, ^bb105
^bb79:
  %v229 = sea.load %v33[%v226] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_171"("seahorn/lib/bcmp.c":68:9))
  %v230 = sea.ptr.index %v34 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_172"("seahorn/lib/bcmp.c":68:18))
  %v231 = sea.const 1 : i64 loc("_173"("seahorn/lib/bcmp.c":68:18))
  %v232 = sea.ptr.dereferenceable %v230, %v231 : !sea.ptr<64>, i64 loc("_173"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v232, ^bb80, ^bb105
^bb80:
  %v233 = sea.load %v33[%v230] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_175"("seahorn/lib/bcmp.c":68:18))
  %v234 = sea.icmp eq, %v229, %v233 : i8 loc(".not.i7.i.6"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v234, ^bb81, ^bb93(%v230, %v226 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb81:
  %v235 = sea.const 17 : i64 loc("exitcond19.not.6"("seahorn/lib/bcmp.c":67:31))
  %v236 = sea.icmp eq, %v1, %v235 : i64 loc("exitcond19.not.6"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v236, ^bb97, ^bb82 loc("seahorn/lib/bcmp.c":67:3)
^bb82:
  %v237 = sea.ptr.index %v16 [] strides [] offset 17 inbounds : !sea.ptr<64> loc("_177"("seahorn/lib/bcmp.c":68:9))
  %v238 = sea.const 1 : i64 loc("_178"("seahorn/lib/bcmp.c":68:9))
  %v239 = sea.ptr.dereferenceable %v237, %v238 : !sea.ptr<64>, i64 loc("_178"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v239, ^bb83, ^bb105
^bb83:
  %v240 = sea.load %v33[%v237] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_180"("seahorn/lib/bcmp.c":68:9))
  %v241 = sea.ptr.index %v34 [] strides [] offset 17 inbounds : !sea.ptr<64> loc("_181"("seahorn/lib/bcmp.c":68:18))
  %v242 = sea.const 1 : i64 loc("_182"("seahorn/lib/bcmp.c":68:18))
  %v243 = sea.ptr.dereferenceable %v241, %v242 : !sea.ptr<64>, i64 loc("_182"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v243, ^bb84, ^bb105
^bb84:
  %v244 = sea.load %v33[%v241] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_184"("seahorn/lib/bcmp.c":68:18))
  %v245 = sea.icmp eq, %v240, %v244 : i8 loc(".not.i7.i.7"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v245, ^bb85, ^bb93(%v241, %v237 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb85:
  %v246 = sea.const 18 : i64 loc("exitcond19.not.7"("seahorn/lib/bcmp.c":67:31))
  %v247 = sea.icmp eq, %v1, %v246 : i64 loc("exitcond19.not.7"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v247, ^bb97, ^bb86 loc("seahorn/lib/bcmp.c":67:3)
^bb86:
  %v248 = sea.ptr.index %v16 [] strides [] offset 18 inbounds : !sea.ptr<64> loc("_186"("seahorn/lib/bcmp.c":68:9))
  %v249 = sea.const 1 : i64 loc("_187"("seahorn/lib/bcmp.c":68:9))
  %v250 = sea.ptr.dereferenceable %v248, %v249 : !sea.ptr<64>, i64 loc("_187"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v250, ^bb87, ^bb105
^bb87:
  %v251 = sea.load %v33[%v248] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_189"("seahorn/lib/bcmp.c":68:9))
  %v252 = sea.ptr.index %v34 [] strides [] offset 18 inbounds : !sea.ptr<64> loc("_190"("seahorn/lib/bcmp.c":68:18))
  %v253 = sea.const 1 : i64 loc("_191"("seahorn/lib/bcmp.c":68:18))
  %v254 = sea.ptr.dereferenceable %v252, %v253 : !sea.ptr<64>, i64 loc("_191"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v254, ^bb88, ^bb105
^bb88:
  %v255 = sea.load %v33[%v252] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_193"("seahorn/lib/bcmp.c":68:18))
  %v256 = sea.icmp eq, %v251, %v255 : i8 loc(".not.i7.i.8"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v256, ^bb89, ^bb93(%v252, %v248 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb89:
  %v257 = sea.const 19 : i64 loc("exitcond19.not.8"("seahorn/lib/bcmp.c":67:31))
  %v258 = sea.icmp eq, %v1, %v257 : i64 loc("exitcond19.not.8"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v258, ^bb97, ^bb90 loc("seahorn/lib/bcmp.c":67:3)
^bb90:
  %v259 = sea.ptr.index %v16 [] strides [] offset 19 inbounds : !sea.ptr<64> loc("_195"("seahorn/lib/bcmp.c":68:9))
  %v260 = sea.const 1 : i64 loc("_196"("seahorn/lib/bcmp.c":68:9))
  %v261 = sea.ptr.dereferenceable %v259, %v260 : !sea.ptr<64>, i64 loc("_196"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v261, ^bb91, ^bb105
^bb91:
  %v262 = sea.load %v33[%v259] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_198"("seahorn/lib/bcmp.c":68:9))
  %v263 = sea.ptr.index %v34 [] strides [] offset 19 inbounds : !sea.ptr<64> loc("_199"("seahorn/lib/bcmp.c":68:18))
  %v264 = sea.const 1 : i64 loc("_200"("seahorn/lib/bcmp.c":68:18))
  %v265 = sea.ptr.dereferenceable %v263, %v264 : !sea.ptr<64>, i64 loc("_200"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v265, ^bb92, ^bb105
^bb92:
  %v266 = sea.load %v33[%v263] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_202"("seahorn/lib/bcmp.c":68:18))
  %v267 = sea.icmp eq, %v262, %v266 : i8 loc(".not.i7.i.9"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v267, ^bb95, ^bb93(%v263, %v259 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb93(%v268 : !sea.ptr<64>, %v269 : !sea.ptr<64>):
  %v270 = sea.const 1 : i64 loc("_212"("seahorn/lib/bcmp.c":69:14))
  %v271 = sea.ptr.dereferenceable %v269, %v270 : !sea.ptr<64>, i64 loc("_212"("seahorn/lib/bcmp.c":69:14))
  sea.cond_br %v271, ^bb94, ^bb105
^bb94:
  %v272 = sea.const 1 : i64 loc("_214"("seahorn/lib/bcmp.c":69:22))
  %v273 = sea.ptr.dereferenceable %v268, %v272 : !sea.ptr<64>, i64 loc("_214"("seahorn/lib/bcmp.c":69:22))
  sea.cond_br %v273, ^bb103, ^bb105
^bb95:
  %v274 = sea.const 20 : i64 loc("exitcond19.not.9"("seahorn/lib/bcmp.c":67:31))
  %v275 = sea.icmp eq, %v1, %v274 : i64 loc("exitcond19.not.9"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v275, ^bb97, ^bb96 loc("seahorn/lib/bcmp.c":67:3)
^bb96:
  %v276 = sea.ptr.index %v16 [] strides [] offset 20 inbounds : !sea.ptr<64> loc("_204"("seahorn/lib/bcmp.c":68:9))
  %v277 = sea.const 1 : i64 loc("_205"("seahorn/lib/bcmp.c":68:9))
  %v278 = sea.ptr.dereferenceable %v276, %v277 : !sea.ptr<64>, i64 loc("_205"("seahorn/lib/bcmp.c":68:9))
  %v279 = sea.const 1 : i1
  %v280 = sea.xor %v278, %v279 : i1
  sea.assume %v280
  sea.br ^bb105
^bb97:
  sea.br ^bb100 loc("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":49:25)
^bb98:
  sea.br ^bb100 loc("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":49:25)
^bb99:
  sea.cond_br %v37, ^bb100, ^bb103 loc("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":49:25)
^bb100:
  %v281 = sea.ptr.null : !sea.ptr<64> loc(".not6.i.i.not"("seahorn/lib/utils.c":15:3))
  %v282 = sea.ptr.cmp eq, %v34, %v281 : !sea.ptr<64> loc(".not6.i.i.not"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v282, ^bb105, ^bb101 loc("seahorn/lib/utils.c":15:3)
^bb101:
  %v283 = sea.nondet "nd_size_t" [10] : i64 loc("_216"("seahorn/lib/utils.c":17:16))
  %v284 = sea.icmp ult, %v283, %v1 : i64 loc("_217"("seahorn/lib/utils.c":19:14))
  %v285 = sea.const 36028797018963967 : i64 loc("_218"("seahorn/lib/utils.c":19:20))
  %v286 = sea.icmp ult, %v1, %v285 : i64 loc("_218"("seahorn/lib/utils.c":19:20))
  %v287 = sea.and %v286, %v284 : i1 loc("_219"("seahorn/lib/utils.c":19:20))
  sea.assume %v287 loc("seahorn/lib/utils.c":19:5)
  %v288 = sea.ptr.index %v16 [%v283] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_220"("seahorn/lib/utils.c":20:5))
  %v289 = sea.load %v33[%v288] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_221"("seahorn/lib/utils.c":20:5))
  %v290 = sea.ptr.index %v34 [%v283] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_222"("seahorn/lib/utils.c":20:5))
  %v291 = sea.load %v33[%v290] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_223"("seahorn/lib/utils.c":20:5))
  %v292 = sea.icmp eq, %v289, %v291 : i8 loc("_224"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v292, ^bb103, ^bb105 loc("seahorn/lib/utils.c":20:5)
^bb102:
  sea.br ^bb103 loc("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":49:25)
^bb103:
  %v293 = sea.mem.is_modified %v33[%v16] : !sea.mem<!sea.ptr<64>, i8> loc("_225"("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":55:5))
  %v294 = sea.const 1 : i1 loc("_226"("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":55:5))
  %v295 = sea.xor %v293, %v294 : i1 loc("_226"("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":55:5))
  %v296 = sea.mem.is_modified %v33[%v16] : !sea.mem<!sea.ptr<64>, i8> loc("_227"("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":55:5))
  sea.cond_br %v296, ^bb105, ^bb104 loc("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":55:5)
^bb104:
  %v297 = sea.mem.is_modified %v33[%v34] : !sea.mem<!sea.ptr<64>, i8> loc("_229"("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":56:5))
  %v298 = sea.const 1 : i1 loc("_230"("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":56:5))
  %v299 = sea.xor %v297, %v298 : i1 loc("_230"("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":56:5))
  %v300 = sea.mem.is_modified %v33[%v34] : !sea.mem<!sea.ptr<64>, i8> loc("_231"("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":56:5))
  sea.assume %v300 loc("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":56:5)
  sea.br ^bb105 loc("seahorn/jobs2/array_eq2/aws_array_eq_harness2.c":56:5)
^bb105:
  sea.br ^bb106
^bb106:
  %v301 = sea.const 0 : i1
  sea.assert %v301
  sea.halt
}
