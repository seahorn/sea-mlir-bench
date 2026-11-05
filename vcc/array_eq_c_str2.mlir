// Exported from SeaHorn (array_eq_c_str2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm3")
  %v1 = sea.mem.nondet "region.1" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm4")
  %v2 = sea.nondet "nd_size_t" [2] : i64 loc("_0"("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":14:22))
  %v3 = sea.const 11 : i64 loc("_1"("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":15:20))
  %v4 = sea.icmp ult, %v2, %v3 : i64 loc("_1"("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":15:20))
  sea.assume %v4 loc("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":15:3)
  %v5 = sea.const 0 : i64 loc("_2"("seahorn/lib/proof_allocators.c":17:15))
  %v6 = sea.icmp eq, %v2, %v5 : i64 loc("_2"("seahorn/lib/proof_allocators.c":17:15))
  %v7 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v6, ^bb4(%v0, %v7 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb1 loc("seahorn/lib/proof_allocators.c":17:10)
^bb1:
  %v8 = sea.nondet "nd_malloc_is_fail" [3] : i1 loc("_4"("seahorn/lib/sea_allocators.c":11:10))
  %v9 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v8, ^bb3(%v0, %v9 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb2 loc("seahorn/lib/sea_allocators.c":11:10)
^bb2:
  %v10 = sea.const 1 : i64 loc("malloc.i")
  %v11 = sea.mul %v2, %v10 : i64 loc("malloc.i")
  %v12 = sea.alloca %v11 align 16 [4] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb3(%v0, %v12 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb3(%v13 : !sea.mem<!sea.ptr<64>, i8>, %v14 : !sea.ptr<64>):
  %v15 = sea.memhavoc %v13[%v14], %v2 [5] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v16 = sea.ptr.null : !sea.ptr<64> loc("_7"("seahorn/lib/sea_allocators.c":45:10))
  %v17 = sea.ptr.cmp ne, %v14, %v16 : !sea.ptr<64> loc("_7"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v17 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb4(%v15, %v14 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb4(%v18 : !sea.mem<!sea.ptr<64>, i8>, %v19 : !sea.ptr<64>):
  %v20 = sea.nondet "nd_size_t" [6] : i64 loc("_9"("seahorn/lib/string_helper.c":51:16))
  %v21 = sea.const 0 : i64 loc("_10"("seahorn/lib/string_helper.c":53:21))
  %v22 = sea.icmp ne, %v20, %v21 : i64 loc("_10"("seahorn/lib/string_helper.c":53:21))
  sea.assume %v22 loc("seahorn/lib/string_helper.c":53:3)
  %v23 = sea.const 11 : i64 loc("_11"("seahorn/lib/string_helper.c":54:21))
  %v24 = sea.icmp ult, %v20, %v23 : i64 loc("_11"("seahorn/lib/string_helper.c":54:21))
  sea.assume %v24 loc("seahorn/lib/string_helper.c":54:3)
  %v25 = sea.const 1 : i1 loc("seahorn/lib/string_helper.c":55:3)
  sea.assume %v25 loc("seahorn/lib/string_helper.c":55:3)
  %v26 = sea.nondet "nd_malloc_is_fail" [7] : i1 loc("_12"("seahorn/lib/sea_allocators.c":11:10))
  %v27 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v26, ^bb6(%v1, %v27 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb5 loc("seahorn/lib/sea_allocators.c":11:10)
^bb5:
  %v28 = sea.const 1 : i64 loc("malloc3.i")
  %v29 = sea.mul %v20, %v28 : i64 loc("malloc3.i")
  %v30 = sea.alloca %v29 align 16 [8] : i64 -> !sea.ptr<64> loc("malloc3.i")
  sea.br ^bb6(%v1, %v30 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb6(%v31 : !sea.mem<!sea.ptr<64>, i8>, %v32 : !sea.ptr<64>):
  %v33 = sea.memhavoc %v31[%v32], %v20 [9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v34 = sea.ptr.null : !sea.ptr<64> loc("_15"("seahorn/lib/sea_allocators.c":45:10))
  %v35 = sea.ptr.cmp ne, %v32, %v34 : !sea.ptr<64> loc("_15"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v35 loc("seahorn/lib/sea_allocators.c":45:3)
  %v36 = sea.const 18446744073709551615 : i64 loc("_16"("seahorn/lib/string_helper.c":68:32))
  %v37 = sea.add %v20, %v36 : i64 loc("_16"("seahorn/lib/string_helper.c":68:32))
  %v38 = sea.ptr.index %v32 [%v37] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_17"("seahorn/lib/string_helper.c":39:3))
  %v39 = sea.const 1 : i64 loc("_18"("seahorn/lib/string_helper.c":39:16))
  %v40 = sea.ptr.dereferenceable %v38, %v39 : !sea.ptr<64>, i64 loc("_18"("seahorn/lib/string_helper.c":39:16))
  sea.cond_br %v40, ^bb7, ^bb132
^bb7:
  %v41 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":39:16)
  %v42 = sea.store %v33[%v38], %v41 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":39:16)
  %v43 = sea.const 0 : i64 loc(".not"("seahorn/lib/string_helper.c":42:11))
  %v44 = sea.icmp eq, %v37, %v43 : i64 loc(".not"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v44, ^bb40, ^bb8 loc("seahorn/lib/string_helper.c":42:9)
^bb8:
  %v45 = sea.const 1 : i64 loc("_21"("seahorn/lib/string_helper.c":43:14))
  %v46 = sea.ptr.dereferenceable %v32, %v45 : !sea.ptr<64>, i64 loc("_21"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v46, ^bb9, ^bb132
^bb9:
  %v47 = sea.load %v42[%v32] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_23"("seahorn/lib/string_helper.c":43:14))
  %v48 = sea.const 0 : i8 loc("_24"("seahorn/lib/string_helper.c":43:21))
  %v49 = sea.icmp ne, %v47, %v48 : i8 loc("_24"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v49 loc("seahorn/lib/string_helper.c":43:7)
  %v50 = sea.const 1 : i64 loc(".not61"("seahorn/lib/string_helper.c":42:11))
  %v51 = sea.icmp eq, %v37, %v50 : i64 loc(".not61"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v51, ^bb40, ^bb10 loc("seahorn/lib/string_helper.c":42:9)
^bb10:
  %v52 = sea.ptr.index %v32 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_26"("seahorn/lib/string_helper.c":43:14))
  %v53 = sea.const 1 : i64 loc("_27"("seahorn/lib/string_helper.c":43:14))
  %v54 = sea.ptr.dereferenceable %v52, %v53 : !sea.ptr<64>, i64 loc("_27"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v54, ^bb11, ^bb132
^bb11:
  %v55 = sea.load %v42[%v52] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_29"("seahorn/lib/string_helper.c":43:14))
  %v56 = sea.const 0 : i8 loc("_30"("seahorn/lib/string_helper.c":43:21))
  %v57 = sea.icmp ne, %v55, %v56 : i8 loc("_30"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v57 loc("seahorn/lib/string_helper.c":43:7)
  %v58 = sea.const 2 : i64 loc("_31"("seahorn/lib/string_helper.c":42:11))
  %v59 = sea.icmp ugt, %v37, %v58 : i64 loc("_31"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v59, ^bb12, ^bb40 loc("seahorn/lib/string_helper.c":42:9)
^bb12:
  %v60 = sea.ptr.index %v32 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_33"("seahorn/lib/string_helper.c":43:14))
  %v61 = sea.const 1 : i64 loc("_34"("seahorn/lib/string_helper.c":43:14))
  %v62 = sea.ptr.dereferenceable %v60, %v61 : !sea.ptr<64>, i64 loc("_34"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v62, ^bb13, ^bb132
^bb13:
  %v63 = sea.load %v42[%v60] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_36"("seahorn/lib/string_helper.c":43:14))
  %v64 = sea.const 0 : i8 loc("_37"("seahorn/lib/string_helper.c":43:21))
  %v65 = sea.icmp ne, %v63, %v64 : i8 loc("_37"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v65 loc("seahorn/lib/string_helper.c":43:7)
  %v66 = sea.const 3 : i64 loc(".not62"("seahorn/lib/string_helper.c":42:11))
  %v67 = sea.icmp eq, %v37, %v66 : i64 loc(".not62"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v67, ^bb40, ^bb14 loc("seahorn/lib/string_helper.c":42:9)
^bb14:
  %v68 = sea.ptr.index %v32 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_39"("seahorn/lib/string_helper.c":43:14))
  %v69 = sea.const 1 : i64 loc("_40"("seahorn/lib/string_helper.c":43:14))
  %v70 = sea.ptr.dereferenceable %v68, %v69 : !sea.ptr<64>, i64 loc("_40"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v70, ^bb15, ^bb132
^bb15:
  %v71 = sea.load %v42[%v68] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_42"("seahorn/lib/string_helper.c":43:14))
  %v72 = sea.const 0 : i8 loc("_43"("seahorn/lib/string_helper.c":43:21))
  %v73 = sea.icmp ne, %v71, %v72 : i8 loc("_43"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v73 loc("seahorn/lib/string_helper.c":43:7)
  %v74 = sea.const 4 : i64 loc("_44"("seahorn/lib/string_helper.c":42:11))
  %v75 = sea.icmp ugt, %v37, %v74 : i64 loc("_44"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v75, ^bb16, ^bb40 loc("seahorn/lib/string_helper.c":42:9)
^bb16:
  %v76 = sea.ptr.index %v32 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_46"("seahorn/lib/string_helper.c":43:14))
  %v77 = sea.const 1 : i64 loc("_47"("seahorn/lib/string_helper.c":43:14))
  %v78 = sea.ptr.dereferenceable %v76, %v77 : !sea.ptr<64>, i64 loc("_47"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v78, ^bb17, ^bb132
^bb17:
  %v79 = sea.load %v42[%v76] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_49"("seahorn/lib/string_helper.c":43:14))
  %v80 = sea.const 0 : i8 loc("_50"("seahorn/lib/string_helper.c":43:21))
  %v81 = sea.icmp ne, %v79, %v80 : i8 loc("_50"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v81 loc("seahorn/lib/string_helper.c":43:7)
  %v82 = sea.const 5 : i64 loc(".not63"("seahorn/lib/string_helper.c":42:11))
  %v83 = sea.icmp eq, %v37, %v82 : i64 loc(".not63"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v83, ^bb40, ^bb18 loc("seahorn/lib/string_helper.c":42:9)
^bb18:
  %v84 = sea.ptr.index %v32 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_52"("seahorn/lib/string_helper.c":43:14))
  %v85 = sea.const 1 : i64 loc("_53"("seahorn/lib/string_helper.c":43:14))
  %v86 = sea.ptr.dereferenceable %v84, %v85 : !sea.ptr<64>, i64 loc("_53"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v86, ^bb19, ^bb132
^bb19:
  %v87 = sea.load %v42[%v84] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_55"("seahorn/lib/string_helper.c":43:14))
  %v88 = sea.const 0 : i8 loc("_56"("seahorn/lib/string_helper.c":43:21))
  %v89 = sea.icmp ne, %v87, %v88 : i8 loc("_56"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v89 loc("seahorn/lib/string_helper.c":43:7)
  %v90 = sea.const 6 : i64 loc("_57"("seahorn/lib/string_helper.c":42:11))
  %v91 = sea.icmp ugt, %v37, %v90 : i64 loc("_57"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v91, ^bb20, ^bb40 loc("seahorn/lib/string_helper.c":42:9)
^bb20:
  %v92 = sea.ptr.index %v32 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_59"("seahorn/lib/string_helper.c":43:14))
  %v93 = sea.const 1 : i64 loc("_60"("seahorn/lib/string_helper.c":43:14))
  %v94 = sea.ptr.dereferenceable %v92, %v93 : !sea.ptr<64>, i64 loc("_60"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v94, ^bb21, ^bb132
^bb21:
  %v95 = sea.load %v42[%v92] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_62"("seahorn/lib/string_helper.c":43:14))
  %v96 = sea.const 0 : i8 loc("_63"("seahorn/lib/string_helper.c":43:21))
  %v97 = sea.icmp ne, %v95, %v96 : i8 loc("_63"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v97 loc("seahorn/lib/string_helper.c":43:7)
  %v98 = sea.const 7 : i64 loc(".not64"("seahorn/lib/string_helper.c":42:11))
  %v99 = sea.icmp eq, %v37, %v98 : i64 loc(".not64"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v99, ^bb40, ^bb22 loc("seahorn/lib/string_helper.c":42:9)
^bb22:
  %v100 = sea.ptr.index %v32 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_65"("seahorn/lib/string_helper.c":43:14))
  %v101 = sea.const 1 : i64 loc("_66"("seahorn/lib/string_helper.c":43:14))
  %v102 = sea.ptr.dereferenceable %v100, %v101 : !sea.ptr<64>, i64 loc("_66"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v102, ^bb23, ^bb132
^bb23:
  %v103 = sea.load %v42[%v100] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_68"("seahorn/lib/string_helper.c":43:14))
  %v104 = sea.const 0 : i8 loc("_69"("seahorn/lib/string_helper.c":43:21))
  %v105 = sea.icmp ne, %v103, %v104 : i8 loc("_69"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v105 loc("seahorn/lib/string_helper.c":43:7)
  %v106 = sea.const 8 : i64 loc("_70"("seahorn/lib/string_helper.c":42:11))
  %v107 = sea.icmp ugt, %v37, %v106 : i64 loc("_70"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v107, ^bb24, ^bb40 loc("seahorn/lib/string_helper.c":42:9)
^bb24:
  %v108 = sea.ptr.index %v32 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_72"("seahorn/lib/string_helper.c":43:14))
  %v109 = sea.const 1 : i64 loc("_73"("seahorn/lib/string_helper.c":43:14))
  %v110 = sea.ptr.dereferenceable %v108, %v109 : !sea.ptr<64>, i64 loc("_73"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v110, ^bb25, ^bb132
^bb25:
  %v111 = sea.load %v42[%v108] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_75"("seahorn/lib/string_helper.c":43:14))
  %v112 = sea.const 0 : i8 loc("_76"("seahorn/lib/string_helper.c":43:21))
  %v113 = sea.icmp ne, %v111, %v112 : i8 loc("_76"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v113 loc("seahorn/lib/string_helper.c":43:7)
  %v114 = sea.const 9 : i64 loc(".not65"("seahorn/lib/string_helper.c":42:11))
  %v115 = sea.icmp eq, %v37, %v114 : i64 loc(".not65"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v115, ^bb40, ^bb26 loc("seahorn/lib/string_helper.c":42:9)
^bb26:
  %v116 = sea.ptr.index %v32 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_78"("seahorn/lib/string_helper.c":43:14))
  %v117 = sea.const 1 : i64 loc("_79"("seahorn/lib/string_helper.c":43:14))
  %v118 = sea.ptr.dereferenceable %v116, %v117 : !sea.ptr<64>, i64 loc("_79"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v118, ^bb27, ^bb132
^bb27:
  %v119 = sea.load %v42[%v116] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_81"("seahorn/lib/string_helper.c":43:14))
  %v120 = sea.const 0 : i8 loc("_82"("seahorn/lib/string_helper.c":43:21))
  %v121 = sea.icmp ne, %v119, %v120 : i8 loc("_82"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v121 loc("seahorn/lib/string_helper.c":43:7)
  %v122 = sea.const 10 : i64 loc("_83"("seahorn/lib/string_helper.c":42:11))
  %v123 = sea.icmp ugt, %v37, %v122 : i64 loc("_83"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v123, ^bb28, ^bb40 loc("seahorn/lib/string_helper.c":42:9)
^bb28:
  %v124 = sea.ptr.index %v32 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_85"("seahorn/lib/string_helper.c":43:14))
  %v125 = sea.const 1 : i64 loc("_86"("seahorn/lib/string_helper.c":43:14))
  %v126 = sea.ptr.dereferenceable %v124, %v125 : !sea.ptr<64>, i64 loc("_86"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v126, ^bb29, ^bb132
^bb29:
  %v127 = sea.load %v42[%v124] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_88"("seahorn/lib/string_helper.c":43:14))
  %v128 = sea.const 0 : i8 loc("_89"("seahorn/lib/string_helper.c":43:21))
  %v129 = sea.icmp ne, %v127, %v128 : i8 loc("_89"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v129 loc("seahorn/lib/string_helper.c":43:7)
  %v130 = sea.const 11 : i64 loc(".not66"("seahorn/lib/string_helper.c":42:11))
  %v131 = sea.icmp eq, %v37, %v130 : i64 loc(".not66"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v131, ^bb40, ^bb30 loc("seahorn/lib/string_helper.c":42:9)
^bb30:
  %v132 = sea.ptr.index %v32 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_91"("seahorn/lib/string_helper.c":43:14))
  %v133 = sea.const 1 : i64 loc("_92"("seahorn/lib/string_helper.c":43:14))
  %v134 = sea.ptr.dereferenceable %v132, %v133 : !sea.ptr<64>, i64 loc("_92"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v134, ^bb31, ^bb132
^bb31:
  %v135 = sea.load %v42[%v132] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_94"("seahorn/lib/string_helper.c":43:14))
  %v136 = sea.const 0 : i8 loc("_95"("seahorn/lib/string_helper.c":43:21))
  %v137 = sea.icmp ne, %v135, %v136 : i8 loc("_95"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v137 loc("seahorn/lib/string_helper.c":43:7)
  %v138 = sea.const 12 : i64 loc("_96"("seahorn/lib/string_helper.c":42:11))
  %v139 = sea.icmp ugt, %v37, %v138 : i64 loc("_96"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v139, ^bb32, ^bb40 loc("seahorn/lib/string_helper.c":42:9)
^bb32:
  %v140 = sea.ptr.index %v32 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_98"("seahorn/lib/string_helper.c":43:14))
  %v141 = sea.const 1 : i64 loc("_99"("seahorn/lib/string_helper.c":43:14))
  %v142 = sea.ptr.dereferenceable %v140, %v141 : !sea.ptr<64>, i64 loc("_99"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v142, ^bb33, ^bb132
^bb33:
  %v143 = sea.load %v42[%v140] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_101"("seahorn/lib/string_helper.c":43:14))
  %v144 = sea.const 0 : i8 loc("_102"("seahorn/lib/string_helper.c":43:21))
  %v145 = sea.icmp ne, %v143, %v144 : i8 loc("_102"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v145 loc("seahorn/lib/string_helper.c":43:7)
  %v146 = sea.const 13 : i64 loc(".not67"("seahorn/lib/string_helper.c":42:11))
  %v147 = sea.icmp eq, %v37, %v146 : i64 loc(".not67"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v147, ^bb40, ^bb34 loc("seahorn/lib/string_helper.c":42:9)
^bb34:
  %v148 = sea.ptr.index %v32 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_104"("seahorn/lib/string_helper.c":43:14))
  %v149 = sea.const 1 : i64 loc("_105"("seahorn/lib/string_helper.c":43:14))
  %v150 = sea.ptr.dereferenceable %v148, %v149 : !sea.ptr<64>, i64 loc("_105"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v150, ^bb35, ^bb132
^bb35:
  %v151 = sea.load %v42[%v148] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_107"("seahorn/lib/string_helper.c":43:14))
  %v152 = sea.const 0 : i8 loc("_108"("seahorn/lib/string_helper.c":43:21))
  %v153 = sea.icmp ne, %v151, %v152 : i8 loc("_108"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v153 loc("seahorn/lib/string_helper.c":43:7)
  %v154 = sea.const 14 : i64 loc("_109"("seahorn/lib/string_helper.c":42:11))
  %v155 = sea.icmp ugt, %v37, %v154 : i64 loc("_109"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v155, ^bb36, ^bb40 loc("seahorn/lib/string_helper.c":42:9)
^bb36:
  %v156 = sea.ptr.index %v32 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_111"("seahorn/lib/string_helper.c":43:14))
  %v157 = sea.const 1 : i64 loc("_112"("seahorn/lib/string_helper.c":43:14))
  %v158 = sea.ptr.dereferenceable %v156, %v157 : !sea.ptr<64>, i64 loc("_112"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v158, ^bb37, ^bb132
^bb37:
  %v159 = sea.load %v42[%v156] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_114"("seahorn/lib/string_helper.c":43:14))
  %v160 = sea.const 0 : i8 loc("_115"("seahorn/lib/string_helper.c":43:21))
  %v161 = sea.icmp ne, %v159, %v160 : i8 loc("_115"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v161 loc("seahorn/lib/string_helper.c":43:7)
  %v162 = sea.const 15 : i64 loc(".not68"("seahorn/lib/string_helper.c":42:11))
  %v163 = sea.icmp eq, %v37, %v162 : i64 loc(".not68"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v163, ^bb40, ^bb38 loc("seahorn/lib/string_helper.c":42:9)
^bb38:
  %v164 = sea.ptr.index %v32 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_117"("seahorn/lib/string_helper.c":43:14))
  %v165 = sea.const 1 : i64 loc("_118"("seahorn/lib/string_helper.c":43:14))
  %v166 = sea.ptr.dereferenceable %v164, %v165 : !sea.ptr<64>, i64 loc("_118"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v166, ^bb39, ^bb132
^bb39:
  %v167 = sea.load %v42[%v164] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_120"("seahorn/lib/string_helper.c":43:14))
  %v168 = sea.const 0 : i8 loc("_121"("seahorn/lib/string_helper.c":43:21))
  %v169 = sea.icmp ne, %v167, %v168 : i8 loc("_121"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v169 loc("seahorn/lib/string_helper.c":43:7)
  sea.br ^bb40 loc("seahorn/lib/string_helper.c":44:5)
^bb40:
  sea.br ^bb41
^bb41:
  %v170 = sea.ptr.null : !sea.ptr<64> loc("_122"("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":23:10))
  %v171 = sea.ptr.cmp ne, %v19, %v170 : !sea.ptr<64> loc("_122"("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":23:10))
  %v172 = sea.or %v6, %v171 : i1 loc("_123"("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":23:16))
  sea.assume %v172 loc("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":23:3)
  sea.assume %v35 loc("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":24:3)
  sea.tracking_on loc("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":27:3)
  sea.cond_br %v6, ^bb123, ^bb42 loc("aws-c-common/source/byte_buf.c":478:5)
^bb42:
  %v173 = sea.const 1 : i64 loc("_124"("aws-c-common/source/byte_buf.c":479:21))
  %v174 = sea.ptr.dereferenceable %v32, %v173 : !sea.ptr<64>, i64 loc("_124"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v174, ^bb43, ^bb132
^bb43:
  %v175 = sea.load %v42[%v32] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_293"("aws-c-common/source/byte_buf.c":479:21))
  %v176 = sea.const 0 : i8 loc("_294"("aws-c-common/source/byte_buf.c":480:15))
  %v177 = sea.icmp eq, %v175, %v176 : i8 loc("_294"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v177, ^bb130, ^bb44 loc("aws-c-common/source/byte_buf.c":480:13)
^bb44:
  %v178 = sea.const 1 : i64 loc("_296"("aws-c-common/source/byte_buf.c":484:13))
  %v179 = sea.ptr.dereferenceable %v19, %v178 : !sea.ptr<64>, i64 loc("_296"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v179, ^bb45, ^bb132
^bb45:
  %v180 = sea.load %v18[%v19] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_298"("aws-c-common/source/byte_buf.c":484:13))
  %v181 = sea.icmp eq, %v180, %v175 : i8 loc(".not.i.i"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v181, ^bb46, ^bb130
^bb46:
  %v182 = sea.const 1 : i64 loc("exitcond14.not"("aws-c-common/source/byte_buf.c":478:26))
  %v183 = sea.icmp eq, %v2, %v182 : i64 loc("exitcond14.not"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v183, ^bb123, ^bb47 loc("aws-c-common/source/byte_buf.c":478:5)
^bb47:
  %v184 = sea.ptr.index %v32 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_126"("aws-c-common/source/byte_buf.c":479:21))
  %v185 = sea.const 1 : i64 loc("_127"("aws-c-common/source/byte_buf.c":479:21))
  %v186 = sea.ptr.dereferenceable %v184, %v185 : !sea.ptr<64>, i64 loc("_127"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v186, ^bb48, ^bb132
^bb48:
  %v187 = sea.load %v42[%v184] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_129"("aws-c-common/source/byte_buf.c":479:21))
  %v188 = sea.const 0 : i8 loc("_130"("aws-c-common/source/byte_buf.c":480:15))
  %v189 = sea.icmp eq, %v187, %v188 : i8 loc("_130"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v189, ^bb130, ^bb49 loc("aws-c-common/source/byte_buf.c":480:13)
^bb49:
  %v190 = sea.ptr.index %v19 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_132"("aws-c-common/source/byte_buf.c":484:13))
  %v191 = sea.const 1 : i64 loc("_133"("aws-c-common/source/byte_buf.c":484:13))
  %v192 = sea.ptr.dereferenceable %v190, %v191 : !sea.ptr<64>, i64 loc("_133"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v192, ^bb50, ^bb132
^bb50:
  %v193 = sea.load %v18[%v190] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_135"("aws-c-common/source/byte_buf.c":484:13))
  %v194 = sea.icmp eq, %v193, %v187 : i8 loc(".not.i.i.1"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v194, ^bb51, ^bb130
^bb51:
  %v195 = sea.const 2 : i64 loc("exitcond14.not.1"("aws-c-common/source/byte_buf.c":478:26))
  %v196 = sea.icmp eq, %v2, %v195 : i64 loc("exitcond14.not.1"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v196, ^bb123, ^bb52 loc("aws-c-common/source/byte_buf.c":478:5)
^bb52:
  %v197 = sea.ptr.index %v32 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_137"("aws-c-common/source/byte_buf.c":479:21))
  %v198 = sea.const 1 : i64 loc("_138"("aws-c-common/source/byte_buf.c":479:21))
  %v199 = sea.ptr.dereferenceable %v197, %v198 : !sea.ptr<64>, i64 loc("_138"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v199, ^bb53, ^bb132
^bb53:
  %v200 = sea.load %v42[%v197] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_140"("aws-c-common/source/byte_buf.c":479:21))
  %v201 = sea.const 0 : i8 loc("_141"("aws-c-common/source/byte_buf.c":480:15))
  %v202 = sea.icmp eq, %v200, %v201 : i8 loc("_141"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v202, ^bb130, ^bb54 loc("aws-c-common/source/byte_buf.c":480:13)
^bb54:
  %v203 = sea.ptr.index %v19 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_143"("aws-c-common/source/byte_buf.c":484:13))
  %v204 = sea.const 1 : i64 loc("_144"("aws-c-common/source/byte_buf.c":484:13))
  %v205 = sea.ptr.dereferenceable %v203, %v204 : !sea.ptr<64>, i64 loc("_144"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v205, ^bb55, ^bb132
^bb55:
  %v206 = sea.load %v18[%v203] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_146"("aws-c-common/source/byte_buf.c":484:13))
  %v207 = sea.icmp eq, %v206, %v200 : i8 loc(".not.i.i.2"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v207, ^bb56, ^bb130
^bb56:
  %v208 = sea.const 3 : i64 loc("exitcond14.not.2"("aws-c-common/source/byte_buf.c":478:26))
  %v209 = sea.icmp eq, %v2, %v208 : i64 loc("exitcond14.not.2"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v209, ^bb123, ^bb57 loc("aws-c-common/source/byte_buf.c":478:5)
^bb57:
  %v210 = sea.ptr.index %v32 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_148"("aws-c-common/source/byte_buf.c":479:21))
  %v211 = sea.const 1 : i64 loc("_149"("aws-c-common/source/byte_buf.c":479:21))
  %v212 = sea.ptr.dereferenceable %v210, %v211 : !sea.ptr<64>, i64 loc("_149"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v212, ^bb58, ^bb132
^bb58:
  %v213 = sea.load %v42[%v210] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_151"("aws-c-common/source/byte_buf.c":479:21))
  %v214 = sea.const 0 : i8 loc("_152"("aws-c-common/source/byte_buf.c":480:15))
  %v215 = sea.icmp eq, %v213, %v214 : i8 loc("_152"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v215, ^bb130, ^bb59 loc("aws-c-common/source/byte_buf.c":480:13)
^bb59:
  %v216 = sea.ptr.index %v19 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_154"("aws-c-common/source/byte_buf.c":484:13))
  %v217 = sea.const 1 : i64 loc("_155"("aws-c-common/source/byte_buf.c":484:13))
  %v218 = sea.ptr.dereferenceable %v216, %v217 : !sea.ptr<64>, i64 loc("_155"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v218, ^bb60, ^bb132
^bb60:
  %v219 = sea.load %v18[%v216] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_157"("aws-c-common/source/byte_buf.c":484:13))
  %v220 = sea.icmp eq, %v219, %v213 : i8 loc(".not.i.i.3"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v220, ^bb61, ^bb130
^bb61:
  %v221 = sea.const 4 : i64 loc("exitcond14.not.3"("aws-c-common/source/byte_buf.c":478:26))
  %v222 = sea.icmp eq, %v2, %v221 : i64 loc("exitcond14.not.3"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v222, ^bb123, ^bb62 loc("aws-c-common/source/byte_buf.c":478:5)
^bb62:
  %v223 = sea.ptr.index %v32 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_159"("aws-c-common/source/byte_buf.c":479:21))
  %v224 = sea.const 1 : i64 loc("_160"("aws-c-common/source/byte_buf.c":479:21))
  %v225 = sea.ptr.dereferenceable %v223, %v224 : !sea.ptr<64>, i64 loc("_160"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v225, ^bb63, ^bb132
^bb63:
  %v226 = sea.load %v42[%v223] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_162"("aws-c-common/source/byte_buf.c":479:21))
  %v227 = sea.const 0 : i8 loc("_163"("aws-c-common/source/byte_buf.c":480:15))
  %v228 = sea.icmp eq, %v226, %v227 : i8 loc("_163"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v228, ^bb130, ^bb64 loc("aws-c-common/source/byte_buf.c":480:13)
^bb64:
  %v229 = sea.ptr.index %v19 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_165"("aws-c-common/source/byte_buf.c":484:13))
  %v230 = sea.const 1 : i64 loc("_166"("aws-c-common/source/byte_buf.c":484:13))
  %v231 = sea.ptr.dereferenceable %v229, %v230 : !sea.ptr<64>, i64 loc("_166"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v231, ^bb65, ^bb132
^bb65:
  %v232 = sea.load %v18[%v229] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_168"("aws-c-common/source/byte_buf.c":484:13))
  %v233 = sea.icmp eq, %v232, %v226 : i8 loc(".not.i.i.4"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v233, ^bb66, ^bb130
^bb66:
  %v234 = sea.const 5 : i64 loc("exitcond14.not.4"("aws-c-common/source/byte_buf.c":478:26))
  %v235 = sea.icmp eq, %v2, %v234 : i64 loc("exitcond14.not.4"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v235, ^bb123, ^bb67 loc("aws-c-common/source/byte_buf.c":478:5)
^bb67:
  %v236 = sea.ptr.index %v32 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_170"("aws-c-common/source/byte_buf.c":479:21))
  %v237 = sea.const 1 : i64 loc("_171"("aws-c-common/source/byte_buf.c":479:21))
  %v238 = sea.ptr.dereferenceable %v236, %v237 : !sea.ptr<64>, i64 loc("_171"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v238, ^bb68, ^bb132
^bb68:
  %v239 = sea.load %v42[%v236] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_173"("aws-c-common/source/byte_buf.c":479:21))
  %v240 = sea.const 0 : i8 loc("_174"("aws-c-common/source/byte_buf.c":480:15))
  %v241 = sea.icmp eq, %v239, %v240 : i8 loc("_174"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v241, ^bb130, ^bb69 loc("aws-c-common/source/byte_buf.c":480:13)
^bb69:
  %v242 = sea.ptr.index %v19 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_176"("aws-c-common/source/byte_buf.c":484:13))
  %v243 = sea.const 1 : i64 loc("_177"("aws-c-common/source/byte_buf.c":484:13))
  %v244 = sea.ptr.dereferenceable %v242, %v243 : !sea.ptr<64>, i64 loc("_177"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v244, ^bb70, ^bb132
^bb70:
  %v245 = sea.load %v18[%v242] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_179"("aws-c-common/source/byte_buf.c":484:13))
  %v246 = sea.icmp eq, %v245, %v239 : i8 loc(".not.i.i.5"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v246, ^bb71, ^bb130
^bb71:
  %v247 = sea.const 6 : i64 loc("exitcond14.not.5"("aws-c-common/source/byte_buf.c":478:26))
  %v248 = sea.icmp eq, %v2, %v247 : i64 loc("exitcond14.not.5"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v248, ^bb123, ^bb72 loc("aws-c-common/source/byte_buf.c":478:5)
^bb72:
  %v249 = sea.ptr.index %v32 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_181"("aws-c-common/source/byte_buf.c":479:21))
  %v250 = sea.const 1 : i64 loc("_182"("aws-c-common/source/byte_buf.c":479:21))
  %v251 = sea.ptr.dereferenceable %v249, %v250 : !sea.ptr<64>, i64 loc("_182"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v251, ^bb73, ^bb132
^bb73:
  %v252 = sea.load %v42[%v249] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_184"("aws-c-common/source/byte_buf.c":479:21))
  %v253 = sea.const 0 : i8 loc("_185"("aws-c-common/source/byte_buf.c":480:15))
  %v254 = sea.icmp eq, %v252, %v253 : i8 loc("_185"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v254, ^bb130, ^bb74 loc("aws-c-common/source/byte_buf.c":480:13)
^bb74:
  %v255 = sea.ptr.index %v19 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_187"("aws-c-common/source/byte_buf.c":484:13))
  %v256 = sea.const 1 : i64 loc("_188"("aws-c-common/source/byte_buf.c":484:13))
  %v257 = sea.ptr.dereferenceable %v255, %v256 : !sea.ptr<64>, i64 loc("_188"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v257, ^bb75, ^bb132
^bb75:
  %v258 = sea.load %v18[%v255] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_190"("aws-c-common/source/byte_buf.c":484:13))
  %v259 = sea.icmp eq, %v258, %v252 : i8 loc(".not.i.i.6"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v259, ^bb76, ^bb130
^bb76:
  %v260 = sea.const 7 : i64 loc("exitcond14.not.6"("aws-c-common/source/byte_buf.c":478:26))
  %v261 = sea.icmp eq, %v2, %v260 : i64 loc("exitcond14.not.6"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v261, ^bb123, ^bb77 loc("aws-c-common/source/byte_buf.c":478:5)
^bb77:
  %v262 = sea.ptr.index %v32 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_192"("aws-c-common/source/byte_buf.c":479:21))
  %v263 = sea.const 1 : i64 loc("_193"("aws-c-common/source/byte_buf.c":479:21))
  %v264 = sea.ptr.dereferenceable %v262, %v263 : !sea.ptr<64>, i64 loc("_193"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v264, ^bb78, ^bb132
^bb78:
  %v265 = sea.load %v42[%v262] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_195"("aws-c-common/source/byte_buf.c":479:21))
  %v266 = sea.const 0 : i8 loc("_196"("aws-c-common/source/byte_buf.c":480:15))
  %v267 = sea.icmp eq, %v265, %v266 : i8 loc("_196"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v267, ^bb130, ^bb79 loc("aws-c-common/source/byte_buf.c":480:13)
^bb79:
  %v268 = sea.ptr.index %v19 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_198"("aws-c-common/source/byte_buf.c":484:13))
  %v269 = sea.const 1 : i64 loc("_199"("aws-c-common/source/byte_buf.c":484:13))
  %v270 = sea.ptr.dereferenceable %v268, %v269 : !sea.ptr<64>, i64 loc("_199"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v270, ^bb80, ^bb132
^bb80:
  %v271 = sea.load %v18[%v268] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_201"("aws-c-common/source/byte_buf.c":484:13))
  %v272 = sea.icmp eq, %v271, %v265 : i8 loc(".not.i.i.7"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v272, ^bb81, ^bb130
^bb81:
  %v273 = sea.const 8 : i64 loc("exitcond14.not.7"("aws-c-common/source/byte_buf.c":478:26))
  %v274 = sea.icmp eq, %v2, %v273 : i64 loc("exitcond14.not.7"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v274, ^bb123, ^bb82 loc("aws-c-common/source/byte_buf.c":478:5)
^bb82:
  %v275 = sea.ptr.index %v32 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_203"("aws-c-common/source/byte_buf.c":479:21))
  %v276 = sea.const 1 : i64 loc("_204"("aws-c-common/source/byte_buf.c":479:21))
  %v277 = sea.ptr.dereferenceable %v275, %v276 : !sea.ptr<64>, i64 loc("_204"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v277, ^bb83, ^bb132
^bb83:
  %v278 = sea.load %v42[%v275] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_206"("aws-c-common/source/byte_buf.c":479:21))
  %v279 = sea.const 0 : i8 loc("_207"("aws-c-common/source/byte_buf.c":480:15))
  %v280 = sea.icmp eq, %v278, %v279 : i8 loc("_207"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v280, ^bb130, ^bb84 loc("aws-c-common/source/byte_buf.c":480:13)
^bb84:
  %v281 = sea.ptr.index %v19 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_209"("aws-c-common/source/byte_buf.c":484:13))
  %v282 = sea.const 1 : i64 loc("_210"("aws-c-common/source/byte_buf.c":484:13))
  %v283 = sea.ptr.dereferenceable %v281, %v282 : !sea.ptr<64>, i64 loc("_210"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v283, ^bb85, ^bb132
^bb85:
  %v284 = sea.load %v18[%v281] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_212"("aws-c-common/source/byte_buf.c":484:13))
  %v285 = sea.icmp eq, %v284, %v278 : i8 loc(".not.i.i.8"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v285, ^bb86, ^bb130
^bb86:
  %v286 = sea.const 9 : i64 loc("exitcond14.not.8"("aws-c-common/source/byte_buf.c":478:26))
  %v287 = sea.icmp eq, %v2, %v286 : i64 loc("exitcond14.not.8"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v287, ^bb123, ^bb87 loc("aws-c-common/source/byte_buf.c":478:5)
^bb87:
  %v288 = sea.ptr.index %v32 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_214"("aws-c-common/source/byte_buf.c":479:21))
  %v289 = sea.const 1 : i64 loc("_215"("aws-c-common/source/byte_buf.c":479:21))
  %v290 = sea.ptr.dereferenceable %v288, %v289 : !sea.ptr<64>, i64 loc("_215"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v290, ^bb88, ^bb132
^bb88:
  %v291 = sea.load %v42[%v288] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_217"("aws-c-common/source/byte_buf.c":479:21))
  %v292 = sea.const 0 : i8 loc("_218"("aws-c-common/source/byte_buf.c":480:15))
  %v293 = sea.icmp eq, %v291, %v292 : i8 loc("_218"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v293, ^bb130, ^bb89 loc("aws-c-common/source/byte_buf.c":480:13)
^bb89:
  %v294 = sea.ptr.index %v19 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_220"("aws-c-common/source/byte_buf.c":484:13))
  %v295 = sea.const 1 : i64 loc("_221"("aws-c-common/source/byte_buf.c":484:13))
  %v296 = sea.ptr.dereferenceable %v294, %v295 : !sea.ptr<64>, i64 loc("_221"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v296, ^bb90, ^bb132
^bb90:
  %v297 = sea.load %v18[%v294] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_223"("aws-c-common/source/byte_buf.c":484:13))
  %v298 = sea.icmp eq, %v297, %v291 : i8 loc(".not.i.i.9"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v298, ^bb91, ^bb130
^bb91:
  %v299 = sea.const 10 : i64 loc("exitcond14.not.9"("aws-c-common/source/byte_buf.c":478:26))
  %v300 = sea.icmp eq, %v2, %v299 : i64 loc("exitcond14.not.9"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v300, ^bb123, ^bb92 loc("aws-c-common/source/byte_buf.c":478:5)
^bb92:
  %v301 = sea.ptr.index %v32 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_225"("aws-c-common/source/byte_buf.c":479:21))
  %v302 = sea.const 1 : i64 loc("_226"("aws-c-common/source/byte_buf.c":479:21))
  %v303 = sea.ptr.dereferenceable %v301, %v302 : !sea.ptr<64>, i64 loc("_226"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v303, ^bb93, ^bb132
^bb93:
  %v304 = sea.load %v42[%v301] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_228"("aws-c-common/source/byte_buf.c":479:21))
  %v305 = sea.const 0 : i8 loc("_229"("aws-c-common/source/byte_buf.c":480:15))
  %v306 = sea.icmp eq, %v304, %v305 : i8 loc("_229"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v306, ^bb130, ^bb94 loc("aws-c-common/source/byte_buf.c":480:13)
^bb94:
  %v307 = sea.ptr.index %v19 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_231"("aws-c-common/source/byte_buf.c":484:13))
  %v308 = sea.const 1 : i64 loc("_232"("aws-c-common/source/byte_buf.c":484:13))
  %v309 = sea.ptr.dereferenceable %v307, %v308 : !sea.ptr<64>, i64 loc("_232"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v309, ^bb95, ^bb132
^bb95:
  %v310 = sea.load %v18[%v307] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_234"("aws-c-common/source/byte_buf.c":484:13))
  %v311 = sea.icmp eq, %v310, %v304 : i8 loc(".not.i.i.10"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v311, ^bb96, ^bb130
^bb96:
  %v312 = sea.const 11 : i64 loc("exitcond14.not.10"("aws-c-common/source/byte_buf.c":478:26))
  %v313 = sea.icmp eq, %v2, %v312 : i64 loc("exitcond14.not.10"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v313, ^bb123, ^bb97 loc("aws-c-common/source/byte_buf.c":478:5)
^bb97:
  %v314 = sea.ptr.index %v32 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_236"("aws-c-common/source/byte_buf.c":479:21))
  %v315 = sea.const 1 : i64 loc("_237"("aws-c-common/source/byte_buf.c":479:21))
  %v316 = sea.ptr.dereferenceable %v314, %v315 : !sea.ptr<64>, i64 loc("_237"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v316, ^bb98, ^bb132
^bb98:
  %v317 = sea.load %v42[%v314] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_239"("aws-c-common/source/byte_buf.c":479:21))
  %v318 = sea.const 0 : i8 loc("_240"("aws-c-common/source/byte_buf.c":480:15))
  %v319 = sea.icmp eq, %v317, %v318 : i8 loc("_240"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v319, ^bb130, ^bb99 loc("aws-c-common/source/byte_buf.c":480:13)
^bb99:
  %v320 = sea.ptr.index %v19 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_242"("aws-c-common/source/byte_buf.c":484:13))
  %v321 = sea.const 1 : i64 loc("_243"("aws-c-common/source/byte_buf.c":484:13))
  %v322 = sea.ptr.dereferenceable %v320, %v321 : !sea.ptr<64>, i64 loc("_243"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v322, ^bb100, ^bb132
^bb100:
  %v323 = sea.load %v18[%v320] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_245"("aws-c-common/source/byte_buf.c":484:13))
  %v324 = sea.icmp eq, %v323, %v317 : i8 loc(".not.i.i.11"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v324, ^bb101, ^bb130
^bb101:
  %v325 = sea.const 12 : i64 loc("exitcond14.not.11"("aws-c-common/source/byte_buf.c":478:26))
  %v326 = sea.icmp eq, %v2, %v325 : i64 loc("exitcond14.not.11"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v326, ^bb123, ^bb102 loc("aws-c-common/source/byte_buf.c":478:5)
^bb102:
  %v327 = sea.ptr.index %v32 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_247"("aws-c-common/source/byte_buf.c":479:21))
  %v328 = sea.const 1 : i64 loc("_248"("aws-c-common/source/byte_buf.c":479:21))
  %v329 = sea.ptr.dereferenceable %v327, %v328 : !sea.ptr<64>, i64 loc("_248"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v329, ^bb103, ^bb132
^bb103:
  %v330 = sea.load %v42[%v327] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_250"("aws-c-common/source/byte_buf.c":479:21))
  %v331 = sea.const 0 : i8 loc("_251"("aws-c-common/source/byte_buf.c":480:15))
  %v332 = sea.icmp eq, %v330, %v331 : i8 loc("_251"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v332, ^bb130, ^bb104 loc("aws-c-common/source/byte_buf.c":480:13)
^bb104:
  %v333 = sea.ptr.index %v19 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_253"("aws-c-common/source/byte_buf.c":484:13))
  %v334 = sea.const 1 : i64 loc("_254"("aws-c-common/source/byte_buf.c":484:13))
  %v335 = sea.ptr.dereferenceable %v333, %v334 : !sea.ptr<64>, i64 loc("_254"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v335, ^bb105, ^bb132
^bb105:
  %v336 = sea.load %v18[%v333] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_256"("aws-c-common/source/byte_buf.c":484:13))
  %v337 = sea.icmp eq, %v336, %v330 : i8 loc(".not.i.i.12"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v337, ^bb106, ^bb130
^bb106:
  %v338 = sea.const 13 : i64 loc("exitcond14.not.12"("aws-c-common/source/byte_buf.c":478:26))
  %v339 = sea.icmp eq, %v2, %v338 : i64 loc("exitcond14.not.12"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v339, ^bb123, ^bb107 loc("aws-c-common/source/byte_buf.c":478:5)
^bb107:
  %v340 = sea.ptr.index %v32 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_258"("aws-c-common/source/byte_buf.c":479:21))
  %v341 = sea.const 1 : i64 loc("_259"("aws-c-common/source/byte_buf.c":479:21))
  %v342 = sea.ptr.dereferenceable %v340, %v341 : !sea.ptr<64>, i64 loc("_259"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v342, ^bb108, ^bb132
^bb108:
  %v343 = sea.load %v42[%v340] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_261"("aws-c-common/source/byte_buf.c":479:21))
  %v344 = sea.const 0 : i8 loc("_262"("aws-c-common/source/byte_buf.c":480:15))
  %v345 = sea.icmp eq, %v343, %v344 : i8 loc("_262"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v345, ^bb130, ^bb109 loc("aws-c-common/source/byte_buf.c":480:13)
^bb109:
  %v346 = sea.ptr.index %v19 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_264"("aws-c-common/source/byte_buf.c":484:13))
  %v347 = sea.const 1 : i64 loc("_265"("aws-c-common/source/byte_buf.c":484:13))
  %v348 = sea.ptr.dereferenceable %v346, %v347 : !sea.ptr<64>, i64 loc("_265"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v348, ^bb110, ^bb132
^bb110:
  %v349 = sea.load %v18[%v346] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_267"("aws-c-common/source/byte_buf.c":484:13))
  %v350 = sea.icmp eq, %v349, %v343 : i8 loc(".not.i.i.13"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v350, ^bb111, ^bb130
^bb111:
  %v351 = sea.const 14 : i64 loc("exitcond14.not.13"("aws-c-common/source/byte_buf.c":478:26))
  %v352 = sea.icmp eq, %v2, %v351 : i64 loc("exitcond14.not.13"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v352, ^bb123, ^bb112 loc("aws-c-common/source/byte_buf.c":478:5)
^bb112:
  %v353 = sea.ptr.index %v32 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_269"("aws-c-common/source/byte_buf.c":479:21))
  %v354 = sea.const 1 : i64 loc("_270"("aws-c-common/source/byte_buf.c":479:21))
  %v355 = sea.ptr.dereferenceable %v353, %v354 : !sea.ptr<64>, i64 loc("_270"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v355, ^bb113, ^bb132
^bb113:
  %v356 = sea.load %v42[%v353] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_272"("aws-c-common/source/byte_buf.c":479:21))
  %v357 = sea.const 0 : i8 loc("_273"("aws-c-common/source/byte_buf.c":480:15))
  %v358 = sea.icmp eq, %v356, %v357 : i8 loc("_273"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v358, ^bb130, ^bb114 loc("aws-c-common/source/byte_buf.c":480:13)
^bb114:
  %v359 = sea.ptr.index %v19 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_275"("aws-c-common/source/byte_buf.c":484:13))
  %v360 = sea.const 1 : i64 loc("_276"("aws-c-common/source/byte_buf.c":484:13))
  %v361 = sea.ptr.dereferenceable %v359, %v360 : !sea.ptr<64>, i64 loc("_276"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v361, ^bb115, ^bb132
^bb115:
  %v362 = sea.load %v18[%v359] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_278"("aws-c-common/source/byte_buf.c":484:13))
  %v363 = sea.icmp eq, %v362, %v356 : i8 loc(".not.i.i.14"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v363, ^bb116, ^bb130
^bb116:
  %v364 = sea.const 15 : i64 loc("exitcond14.not.14"("aws-c-common/source/byte_buf.c":478:26))
  %v365 = sea.icmp eq, %v2, %v364 : i64 loc("exitcond14.not.14"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v365, ^bb123, ^bb117 loc("aws-c-common/source/byte_buf.c":478:5)
^bb117:
  %v366 = sea.ptr.index %v32 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_280"("aws-c-common/source/byte_buf.c":479:21))
  %v367 = sea.const 1 : i64 loc("_281"("aws-c-common/source/byte_buf.c":479:21))
  %v368 = sea.ptr.dereferenceable %v366, %v367 : !sea.ptr<64>, i64 loc("_281"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v368, ^bb118, ^bb132
^bb118:
  %v369 = sea.load %v42[%v366] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_283"("aws-c-common/source/byte_buf.c":479:21))
  %v370 = sea.const 0 : i8 loc("_284"("aws-c-common/source/byte_buf.c":480:15))
  %v371 = sea.icmp eq, %v369, %v370 : i8 loc("_284"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v371, ^bb130, ^bb119 loc("aws-c-common/source/byte_buf.c":480:13)
^bb119:
  %v372 = sea.ptr.index %v19 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_286"("aws-c-common/source/byte_buf.c":484:13))
  %v373 = sea.const 1 : i64 loc("_287"("aws-c-common/source/byte_buf.c":484:13))
  %v374 = sea.ptr.dereferenceable %v372, %v373 : !sea.ptr<64>, i64 loc("_287"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v374, ^bb120, ^bb132
^bb120:
  %v375 = sea.load %v18[%v372] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_289"("aws-c-common/source/byte_buf.c":484:13))
  %v376 = sea.icmp eq, %v375, %v369 : i8 loc(".not.i.i.15"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v376, ^bb121, ^bb130
^bb121:
  %v377 = sea.const 16 : i64 loc("exitcond14.not.15"("aws-c-common/source/byte_buf.c":478:26))
  %v378 = sea.icmp eq, %v2, %v377 : i64 loc("exitcond14.not.15"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v378, ^bb123, ^bb122 loc("aws-c-common/source/byte_buf.c":478:5)
^bb122:
  %v379 = sea.ptr.index %v32 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_291"("aws-c-common/source/byte_buf.c":479:21))
  %v380 = sea.const 1 : i64 loc("_292"("aws-c-common/source/byte_buf.c":479:21))
  %v381 = sea.ptr.dereferenceable %v379, %v380 : !sea.ptr<64>, i64 loc("_292"("aws-c-common/source/byte_buf.c":479:21))
  %v382 = sea.const 1 : i1
  %v383 = sea.xor %v381, %v382 : i1
  sea.assume %v383
  sea.br ^bb132
^bb123:
  %v384 = sea.ptr.index %v32 [%v2] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_299"("aws-c-common/source/byte_buf.c":489:12))
  %v385 = sea.const 1 : i64 loc("_300"("aws-c-common/source/byte_buf.c":489:12))
  %v386 = sea.ptr.dereferenceable %v384, %v385 : !sea.ptr<64>, i64 loc("_300"("aws-c-common/source/byte_buf.c":489:12))
  sea.cond_br %v386, ^bb124, ^bb132
^bb124:
  %v387 = sea.load %v42[%v384] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_302"("aws-c-common/source/byte_buf.c":489:12))
  %v388 = sea.const 0 : i8 loc("_303"("aws-c-common/source/byte_buf.c":489:33))
  %v389 = sea.icmp eq, %v387, %v388 : i8 loc("_303"("aws-c-common/source/byte_buf.c":489:33))
  sea.cond_br %v389, ^bb125, ^bb130 loc("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":30:9)
^bb125:
  %v390 = sea.icmp eq, %v2, %v37 : i64 loc("_305"("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":32:9))
  sea.cond_br %v390, ^bb126, ^bb132 loc("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":32:9)
^bb126:
  sea.cond_br %v6, ^bb130, ^bb127 loc("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":33:13)
^bb127:
  %v391 = sea.ptr.null : !sea.ptr<64> loc(".not.i1.i"("seahorn/lib/utils.c":15:3))
  %v392 = sea.ptr.cmp eq, %v19, %v391 : !sea.ptr<64> loc(".not.i1.i"("seahorn/lib/utils.c":15:3))
  %v393 = sea.xor %v392, %v35 : i1 loc("_308"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v393, ^bb128, ^bb132 loc("seahorn/lib/utils.c":15:3)
^bb128:
  %v394 = sea.and %v171, %v35 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v394, ^bb129, ^bb130 loc("seahorn/lib/utils.c":16:15)
^bb129:
  %v395 = sea.nondet "nd_size_t" [10] : i64 loc("_310"("seahorn/lib/utils.c":17:16))
  %v396 = sea.icmp ult, %v395, %v2 : i64 loc("_311"("seahorn/lib/utils.c":19:14))
  sea.assume %v396 loc("seahorn/lib/utils.c":19:5)
  %v397 = sea.ptr.index %v19 [%v395] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_312"("seahorn/lib/utils.c":20:5))
  %v398 = sea.load %v18[%v397] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_313"("seahorn/lib/utils.c":20:5))
  %v399 = sea.ptr.index %v32 [%v395] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_314"("seahorn/lib/utils.c":20:5))
  %v400 = sea.load %v42[%v399] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_315"("seahorn/lib/utils.c":20:5))
  %v401 = sea.icmp eq, %v398, %v400 : i8 loc("_316"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v401, ^bb130, ^bb132 loc("seahorn/lib/utils.c":20:5)
^bb130:
  %v402 = sea.mem.is_modified %v18[%v19] : !sea.mem<!sea.ptr<64>, i8> loc("_317"("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":39:5))
  %v403 = sea.const 1 : i1 loc("_318"("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":39:5))
  %v404 = sea.xor %v402, %v403 : i1 loc("_318"("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":39:5))
  %v405 = sea.mem.is_modified %v18[%v19] : !sea.mem<!sea.ptr<64>, i8> loc("_319"("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":39:5))
  sea.cond_br %v405, ^bb132, ^bb131 loc("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":39:5)
^bb131:
  %v406 = sea.mem.is_modified %v42[%v32] : !sea.mem<!sea.ptr<64>, i8> loc("_321"("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":40:5))
  %v407 = sea.const 1 : i1 loc("_322"("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":40:5))
  %v408 = sea.xor %v406, %v407 : i1 loc("_322"("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":40:5))
  %v409 = sea.mem.is_modified %v42[%v32] : !sea.mem<!sea.ptr<64>, i8> loc("_323"("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":40:5))
  sea.assume %v409 loc("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":40:5)
  sea.br ^bb132 loc("seahorn/jobs2/array_eq_c_str2/aws_array_eq_c_str_harness2.c":40:5)
^bb132:
  sea.br ^bb133
^bb133:
  %v410 = sea.const 0 : i1
  sea.assert %v410
  sea.halt
}
