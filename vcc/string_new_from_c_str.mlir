// Exported from SeaHorn (string_new_from_c_str.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm11")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm12")
  %v2 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v3 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v4 = sea.store %v0[%v2], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v5 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_0")
  %v6 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_0")
  %v7 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v8 = sea.store %v4[%v6], %v7 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v9 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_1")
  %v10 = sea.ptr.index %v9 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_1")
  %v11 = sea.const 0 : i8
  %v12 = sea.const 24 : i64
  %v13 = sea.memset %v8[%v10], %v11, %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v14 = sea.nondet "nd_size_t" [2] : i64 loc("_2"("seahorn/lib/string_helper.c":51:16))
  %v15 = sea.const 0 : i64 loc("_3"("seahorn/lib/string_helper.c":53:21))
  %v16 = sea.icmp ne, %v14, %v15 : i64 loc("_3"("seahorn/lib/string_helper.c":53:21))
  sea.assume %v16 loc("seahorn/lib/string_helper.c":53:3)
  %v17 = sea.const 17 : i64 loc("_4"("seahorn/lib/string_helper.c":54:21))
  %v18 = sea.icmp ult, %v14, %v17 : i64 loc("_4"("seahorn/lib/string_helper.c":54:21))
  sea.assume %v18 loc("seahorn/lib/string_helper.c":54:3)
  %v19 = sea.const 1 : i1 loc("seahorn/lib/string_helper.c":55:3)
  sea.assume %v19 loc("seahorn/lib/string_helper.c":55:3)
  %v20 = sea.nondet "nd_malloc_is_fail" [3] : i1 loc("_5"("seahorn/lib/sea_allocators.c":11:10))
  %v21 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v20, ^bb2(%v1, %v21 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb1 loc("seahorn/lib/sea_allocators.c":11:10)
^bb1:
  %v22 = sea.const 1 : i64 loc("malloc.i")
  %v23 = sea.mul %v14, %v22 : i64 loc("malloc.i")
  %v24 = sea.alloca %v23 align 16 [4] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb2(%v1, %v24 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb2(%v25 : !sea.mem<!sea.ptr<64>, i8>, %v26 : !sea.ptr<64>):
  %v27 = sea.memhavoc %v25[%v26], %v14 [5] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v28 = sea.ptr.null : !sea.ptr<64> loc("_8"("seahorn/lib/sea_allocators.c":45:10))
  %v29 = sea.ptr.cmp ne, %v26, %v28 : !sea.ptr<64> loc("_8"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v29 loc("seahorn/lib/sea_allocators.c":45:3)
  %v30 = sea.const 18446744073709551615 : i64 loc("_9"("seahorn/lib/string_helper.c":68:32))
  %v31 = sea.add %v14, %v30 : i64 loc("_9"("seahorn/lib/string_helper.c":68:32))
  %v32 = sea.ptr.index %v26 [%v31] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_10"("seahorn/lib/string_helper.c":39:3))
  %v33 = sea.const 1 : i64 loc("_11"("seahorn/lib/string_helper.c":39:16))
  %v34 = sea.ptr.dereferenceable %v32, %v33 : !sea.ptr<64>, i64 loc("_11"("seahorn/lib/string_helper.c":39:16))
  sea.cond_br %v34, ^bb3, ^bb96
^bb3:
  %v35 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":39:16)
  %v36 = sea.store %v27[%v32], %v35 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":39:16)
  %v37 = sea.const 0 : i64 loc(".not"("seahorn/lib/string_helper.c":42:11))
  %v38 = sea.icmp eq, %v31, %v37 : i64 loc(".not"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v38, ^bb36, ^bb4 loc("seahorn/lib/string_helper.c":42:9)
^bb4:
  %v39 = sea.const 1 : i64 loc("_14"("seahorn/lib/string_helper.c":43:14))
  %v40 = sea.ptr.dereferenceable %v26, %v39 : !sea.ptr<64>, i64 loc("_14"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v40, ^bb5, ^bb96
^bb5:
  %v41 = sea.load %v36[%v26] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_16"("seahorn/lib/string_helper.c":43:14))
  %v42 = sea.const 0 : i8 loc("_17"("seahorn/lib/string_helper.c":43:21))
  %v43 = sea.icmp ne, %v41, %v42 : i8 loc("_17"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v43 loc("seahorn/lib/string_helper.c":43:7)
  %v44 = sea.const 1 : i64 loc(".not29"("seahorn/lib/string_helper.c":42:11))
  %v45 = sea.icmp eq, %v31, %v44 : i64 loc(".not29"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v45, ^bb36, ^bb6 loc("seahorn/lib/string_helper.c":42:9)
^bb6:
  %v46 = sea.ptr.index %v26 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_19"("seahorn/lib/string_helper.c":43:14))
  %v47 = sea.const 1 : i64 loc("_20"("seahorn/lib/string_helper.c":43:14))
  %v48 = sea.ptr.dereferenceable %v46, %v47 : !sea.ptr<64>, i64 loc("_20"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v48, ^bb7, ^bb96
^bb7:
  %v49 = sea.load %v36[%v46] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_22"("seahorn/lib/string_helper.c":43:14))
  %v50 = sea.const 0 : i8 loc("_23"("seahorn/lib/string_helper.c":43:21))
  %v51 = sea.icmp ne, %v49, %v50 : i8 loc("_23"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v51 loc("seahorn/lib/string_helper.c":43:7)
  %v52 = sea.const 2 : i64 loc("_24"("seahorn/lib/string_helper.c":42:11))
  %v53 = sea.icmp ugt, %v31, %v52 : i64 loc("_24"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v53, ^bb8, ^bb36 loc("seahorn/lib/string_helper.c":42:9)
^bb8:
  %v54 = sea.ptr.index %v26 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_26"("seahorn/lib/string_helper.c":43:14))
  %v55 = sea.const 1 : i64 loc("_27"("seahorn/lib/string_helper.c":43:14))
  %v56 = sea.ptr.dereferenceable %v54, %v55 : !sea.ptr<64>, i64 loc("_27"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v56, ^bb9, ^bb96
^bb9:
  %v57 = sea.load %v36[%v54] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_29"("seahorn/lib/string_helper.c":43:14))
  %v58 = sea.const 0 : i8 loc("_30"("seahorn/lib/string_helper.c":43:21))
  %v59 = sea.icmp ne, %v57, %v58 : i8 loc("_30"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v59 loc("seahorn/lib/string_helper.c":43:7)
  %v60 = sea.const 3 : i64 loc(".not30"("seahorn/lib/string_helper.c":42:11))
  %v61 = sea.icmp eq, %v31, %v60 : i64 loc(".not30"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v61, ^bb36, ^bb10 loc("seahorn/lib/string_helper.c":42:9)
^bb10:
  %v62 = sea.ptr.index %v26 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_32"("seahorn/lib/string_helper.c":43:14))
  %v63 = sea.const 1 : i64 loc("_33"("seahorn/lib/string_helper.c":43:14))
  %v64 = sea.ptr.dereferenceable %v62, %v63 : !sea.ptr<64>, i64 loc("_33"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v64, ^bb11, ^bb96
^bb11:
  %v65 = sea.load %v36[%v62] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_35"("seahorn/lib/string_helper.c":43:14))
  %v66 = sea.const 0 : i8 loc("_36"("seahorn/lib/string_helper.c":43:21))
  %v67 = sea.icmp ne, %v65, %v66 : i8 loc("_36"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v67 loc("seahorn/lib/string_helper.c":43:7)
  %v68 = sea.const 4 : i64 loc("_37"("seahorn/lib/string_helper.c":42:11))
  %v69 = sea.icmp ugt, %v31, %v68 : i64 loc("_37"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v69, ^bb12, ^bb36 loc("seahorn/lib/string_helper.c":42:9)
^bb12:
  %v70 = sea.ptr.index %v26 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_39"("seahorn/lib/string_helper.c":43:14))
  %v71 = sea.const 1 : i64 loc("_40"("seahorn/lib/string_helper.c":43:14))
  %v72 = sea.ptr.dereferenceable %v70, %v71 : !sea.ptr<64>, i64 loc("_40"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v72, ^bb13, ^bb96
^bb13:
  %v73 = sea.load %v36[%v70] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_42"("seahorn/lib/string_helper.c":43:14))
  %v74 = sea.const 0 : i8 loc("_43"("seahorn/lib/string_helper.c":43:21))
  %v75 = sea.icmp ne, %v73, %v74 : i8 loc("_43"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v75 loc("seahorn/lib/string_helper.c":43:7)
  %v76 = sea.const 5 : i64 loc(".not31"("seahorn/lib/string_helper.c":42:11))
  %v77 = sea.icmp eq, %v31, %v76 : i64 loc(".not31"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v77, ^bb36, ^bb14 loc("seahorn/lib/string_helper.c":42:9)
^bb14:
  %v78 = sea.ptr.index %v26 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_45"("seahorn/lib/string_helper.c":43:14))
  %v79 = sea.const 1 : i64 loc("_46"("seahorn/lib/string_helper.c":43:14))
  %v80 = sea.ptr.dereferenceable %v78, %v79 : !sea.ptr<64>, i64 loc("_46"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v80, ^bb15, ^bb96
^bb15:
  %v81 = sea.load %v36[%v78] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_48"("seahorn/lib/string_helper.c":43:14))
  %v82 = sea.const 0 : i8 loc("_49"("seahorn/lib/string_helper.c":43:21))
  %v83 = sea.icmp ne, %v81, %v82 : i8 loc("_49"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v83 loc("seahorn/lib/string_helper.c":43:7)
  %v84 = sea.const 6 : i64 loc("_50"("seahorn/lib/string_helper.c":42:11))
  %v85 = sea.icmp ugt, %v31, %v84 : i64 loc("_50"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v85, ^bb16, ^bb36 loc("seahorn/lib/string_helper.c":42:9)
^bb16:
  %v86 = sea.ptr.index %v26 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_52"("seahorn/lib/string_helper.c":43:14))
  %v87 = sea.const 1 : i64 loc("_53"("seahorn/lib/string_helper.c":43:14))
  %v88 = sea.ptr.dereferenceable %v86, %v87 : !sea.ptr<64>, i64 loc("_53"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v88, ^bb17, ^bb96
^bb17:
  %v89 = sea.load %v36[%v86] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_55"("seahorn/lib/string_helper.c":43:14))
  %v90 = sea.const 0 : i8 loc("_56"("seahorn/lib/string_helper.c":43:21))
  %v91 = sea.icmp ne, %v89, %v90 : i8 loc("_56"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v91 loc("seahorn/lib/string_helper.c":43:7)
  %v92 = sea.const 7 : i64 loc(".not32"("seahorn/lib/string_helper.c":42:11))
  %v93 = sea.icmp eq, %v31, %v92 : i64 loc(".not32"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v93, ^bb36, ^bb18 loc("seahorn/lib/string_helper.c":42:9)
^bb18:
  %v94 = sea.ptr.index %v26 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_58"("seahorn/lib/string_helper.c":43:14))
  %v95 = sea.const 1 : i64 loc("_59"("seahorn/lib/string_helper.c":43:14))
  %v96 = sea.ptr.dereferenceable %v94, %v95 : !sea.ptr<64>, i64 loc("_59"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v96, ^bb19, ^bb96
^bb19:
  %v97 = sea.load %v36[%v94] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_61"("seahorn/lib/string_helper.c":43:14))
  %v98 = sea.const 0 : i8 loc("_62"("seahorn/lib/string_helper.c":43:21))
  %v99 = sea.icmp ne, %v97, %v98 : i8 loc("_62"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v99 loc("seahorn/lib/string_helper.c":43:7)
  %v100 = sea.const 8 : i64 loc("_63"("seahorn/lib/string_helper.c":42:11))
  %v101 = sea.icmp ugt, %v31, %v100 : i64 loc("_63"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v101, ^bb20, ^bb36 loc("seahorn/lib/string_helper.c":42:9)
^bb20:
  %v102 = sea.ptr.index %v26 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_65"("seahorn/lib/string_helper.c":43:14))
  %v103 = sea.const 1 : i64 loc("_66"("seahorn/lib/string_helper.c":43:14))
  %v104 = sea.ptr.dereferenceable %v102, %v103 : !sea.ptr<64>, i64 loc("_66"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v104, ^bb21, ^bb96
^bb21:
  %v105 = sea.load %v36[%v102] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_68"("seahorn/lib/string_helper.c":43:14))
  %v106 = sea.const 0 : i8 loc("_69"("seahorn/lib/string_helper.c":43:21))
  %v107 = sea.icmp ne, %v105, %v106 : i8 loc("_69"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v107 loc("seahorn/lib/string_helper.c":43:7)
  %v108 = sea.const 9 : i64 loc(".not33"("seahorn/lib/string_helper.c":42:11))
  %v109 = sea.icmp eq, %v31, %v108 : i64 loc(".not33"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v109, ^bb36, ^bb22 loc("seahorn/lib/string_helper.c":42:9)
^bb22:
  %v110 = sea.ptr.index %v26 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_71"("seahorn/lib/string_helper.c":43:14))
  %v111 = sea.const 1 : i64 loc("_72"("seahorn/lib/string_helper.c":43:14))
  %v112 = sea.ptr.dereferenceable %v110, %v111 : !sea.ptr<64>, i64 loc("_72"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v112, ^bb23, ^bb96
^bb23:
  %v113 = sea.load %v36[%v110] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_74"("seahorn/lib/string_helper.c":43:14))
  %v114 = sea.const 0 : i8 loc("_75"("seahorn/lib/string_helper.c":43:21))
  %v115 = sea.icmp ne, %v113, %v114 : i8 loc("_75"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v115 loc("seahorn/lib/string_helper.c":43:7)
  %v116 = sea.const 10 : i64 loc("_76"("seahorn/lib/string_helper.c":42:11))
  %v117 = sea.icmp ugt, %v31, %v116 : i64 loc("_76"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v117, ^bb24, ^bb36 loc("seahorn/lib/string_helper.c":42:9)
^bb24:
  %v118 = sea.ptr.index %v26 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_78"("seahorn/lib/string_helper.c":43:14))
  %v119 = sea.const 1 : i64 loc("_79"("seahorn/lib/string_helper.c":43:14))
  %v120 = sea.ptr.dereferenceable %v118, %v119 : !sea.ptr<64>, i64 loc("_79"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v120, ^bb25, ^bb96
^bb25:
  %v121 = sea.load %v36[%v118] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_81"("seahorn/lib/string_helper.c":43:14))
  %v122 = sea.const 0 : i8 loc("_82"("seahorn/lib/string_helper.c":43:21))
  %v123 = sea.icmp ne, %v121, %v122 : i8 loc("_82"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v123 loc("seahorn/lib/string_helper.c":43:7)
  %v124 = sea.const 11 : i64 loc(".not34"("seahorn/lib/string_helper.c":42:11))
  %v125 = sea.icmp eq, %v31, %v124 : i64 loc(".not34"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v125, ^bb36, ^bb26 loc("seahorn/lib/string_helper.c":42:9)
^bb26:
  %v126 = sea.ptr.index %v26 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_84"("seahorn/lib/string_helper.c":43:14))
  %v127 = sea.const 1 : i64 loc("_85"("seahorn/lib/string_helper.c":43:14))
  %v128 = sea.ptr.dereferenceable %v126, %v127 : !sea.ptr<64>, i64 loc("_85"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v128, ^bb27, ^bb96
^bb27:
  %v129 = sea.load %v36[%v126] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_87"("seahorn/lib/string_helper.c":43:14))
  %v130 = sea.const 0 : i8 loc("_88"("seahorn/lib/string_helper.c":43:21))
  %v131 = sea.icmp ne, %v129, %v130 : i8 loc("_88"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v131 loc("seahorn/lib/string_helper.c":43:7)
  %v132 = sea.const 12 : i64 loc("_89"("seahorn/lib/string_helper.c":42:11))
  %v133 = sea.icmp ugt, %v31, %v132 : i64 loc("_89"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v133, ^bb28, ^bb36 loc("seahorn/lib/string_helper.c":42:9)
^bb28:
  %v134 = sea.ptr.index %v26 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_91"("seahorn/lib/string_helper.c":43:14))
  %v135 = sea.const 1 : i64 loc("_92"("seahorn/lib/string_helper.c":43:14))
  %v136 = sea.ptr.dereferenceable %v134, %v135 : !sea.ptr<64>, i64 loc("_92"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v136, ^bb29, ^bb96
^bb29:
  %v137 = sea.load %v36[%v134] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_94"("seahorn/lib/string_helper.c":43:14))
  %v138 = sea.const 0 : i8 loc("_95"("seahorn/lib/string_helper.c":43:21))
  %v139 = sea.icmp ne, %v137, %v138 : i8 loc("_95"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v139 loc("seahorn/lib/string_helper.c":43:7)
  %v140 = sea.const 13 : i64 loc(".not35"("seahorn/lib/string_helper.c":42:11))
  %v141 = sea.icmp eq, %v31, %v140 : i64 loc(".not35"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v141, ^bb36, ^bb30 loc("seahorn/lib/string_helper.c":42:9)
^bb30:
  %v142 = sea.ptr.index %v26 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_97"("seahorn/lib/string_helper.c":43:14))
  %v143 = sea.const 1 : i64 loc("_98"("seahorn/lib/string_helper.c":43:14))
  %v144 = sea.ptr.dereferenceable %v142, %v143 : !sea.ptr<64>, i64 loc("_98"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v144, ^bb31, ^bb96
^bb31:
  %v145 = sea.load %v36[%v142] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_100"("seahorn/lib/string_helper.c":43:14))
  %v146 = sea.const 0 : i8 loc("_101"("seahorn/lib/string_helper.c":43:21))
  %v147 = sea.icmp ne, %v145, %v146 : i8 loc("_101"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v147 loc("seahorn/lib/string_helper.c":43:7)
  %v148 = sea.const 14 : i64 loc("_102"("seahorn/lib/string_helper.c":42:11))
  %v149 = sea.icmp ugt, %v31, %v148 : i64 loc("_102"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v149, ^bb32, ^bb36 loc("seahorn/lib/string_helper.c":42:9)
^bb32:
  %v150 = sea.ptr.index %v26 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_104"("seahorn/lib/string_helper.c":43:14))
  %v151 = sea.const 1 : i64 loc("_105"("seahorn/lib/string_helper.c":43:14))
  %v152 = sea.ptr.dereferenceable %v150, %v151 : !sea.ptr<64>, i64 loc("_105"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v152, ^bb33, ^bb96
^bb33:
  %v153 = sea.load %v36[%v150] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_107"("seahorn/lib/string_helper.c":43:14))
  %v154 = sea.const 0 : i8 loc("_108"("seahorn/lib/string_helper.c":43:21))
  %v155 = sea.icmp ne, %v153, %v154 : i8 loc("_108"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v155 loc("seahorn/lib/string_helper.c":43:7)
  %v156 = sea.const 15 : i64 loc(".not36"("seahorn/lib/string_helper.c":42:11))
  %v157 = sea.icmp eq, %v31, %v156 : i64 loc(".not36"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v157, ^bb36, ^bb34 loc("seahorn/lib/string_helper.c":42:9)
^bb34:
  %v158 = sea.ptr.index %v26 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_110"("seahorn/lib/string_helper.c":43:14))
  %v159 = sea.const 1 : i64 loc("_111"("seahorn/lib/string_helper.c":43:14))
  %v160 = sea.ptr.dereferenceable %v158, %v159 : !sea.ptr<64>, i64 loc("_111"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v160, ^bb35, ^bb96
^bb35:
  %v161 = sea.load %v36[%v158] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_113"("seahorn/lib/string_helper.c":43:14))
  %v162 = sea.const 0 : i8 loc("_114"("seahorn/lib/string_helper.c":43:21))
  %v163 = sea.icmp ne, %v161, %v162 : i8 loc("_114"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v163 loc("seahorn/lib/string_helper.c":43:7)
  sea.br ^bb36 loc("seahorn/lib/string_helper.c":44:5)
^bb36:
  sea.br ^bb37
^bb37:
  %v164 = sea.const 1 : i64 loc("_115"("seahorn/lib/sea_string.cc":32:52))
  %v165 = sea.ptr.dereferenceable %v26, %v164 : !sea.ptr<64>, i64 loc("_115"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v165, ^bb38, ^bb96
^bb38:
  %v166 = sea.load %v36[%v26] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_116"("seahorn/lib/sea_string.cc":32:52))
  %v167 = sea.const 0 : i8 loc("_117"("seahorn/lib/sea_string.cc":32:59))
  %v168 = sea.icmp eq, %v166, %v167 : i8 loc("_117"("seahorn/lib/sea_string.cc":32:59))
  %v169 = sea.const 0 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v168, ^bb70(%v169 : i64), ^bb39 loc("seahorn/lib/sea_string.cc":12:9)
^bb39:
  %v170 = sea.ptr.index %v26 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_119"("seahorn/lib/sea_string.cc":32:52))
  %v171 = sea.const 1 : i64 loc("_120"("seahorn/lib/sea_string.cc":32:52))
  %v172 = sea.ptr.dereferenceable %v170, %v171 : !sea.ptr<64>, i64 loc("_120"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v172, ^bb40, ^bb96
^bb40:
  %v173 = sea.load %v36[%v170] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_121"("seahorn/lib/sea_string.cc":32:52))
  %v174 = sea.const 0 : i8 loc("_122"("seahorn/lib/sea_string.cc":32:59))
  %v175 = sea.icmp eq, %v173, %v174 : i8 loc("_122"("seahorn/lib/sea_string.cc":32:59))
  %v176 = sea.const 1 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v175, ^bb70(%v176 : i64), ^bb41 loc("seahorn/lib/sea_string.cc":12:9)
^bb41:
  %v177 = sea.ptr.index %v26 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_124"("seahorn/lib/sea_string.cc":32:52))
  %v178 = sea.const 1 : i64 loc("_125"("seahorn/lib/sea_string.cc":32:52))
  %v179 = sea.ptr.dereferenceable %v177, %v178 : !sea.ptr<64>, i64 loc("_125"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v179, ^bb42, ^bb96
^bb42:
  %v180 = sea.load %v36[%v177] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_126"("seahorn/lib/sea_string.cc":32:52))
  %v181 = sea.const 0 : i8 loc("_127"("seahorn/lib/sea_string.cc":32:59))
  %v182 = sea.icmp eq, %v180, %v181 : i8 loc("_127"("seahorn/lib/sea_string.cc":32:59))
  %v183 = sea.const 2 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v182, ^bb70(%v183 : i64), ^bb43 loc("seahorn/lib/sea_string.cc":12:9)
^bb43:
  %v184 = sea.ptr.index %v26 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_129"("seahorn/lib/sea_string.cc":32:52))
  %v185 = sea.const 1 : i64 loc("_130"("seahorn/lib/sea_string.cc":32:52))
  %v186 = sea.ptr.dereferenceable %v184, %v185 : !sea.ptr<64>, i64 loc("_130"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v186, ^bb44, ^bb96
^bb44:
  %v187 = sea.load %v36[%v184] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_131"("seahorn/lib/sea_string.cc":32:52))
  %v188 = sea.const 0 : i8 loc("_132"("seahorn/lib/sea_string.cc":32:59))
  %v189 = sea.icmp eq, %v187, %v188 : i8 loc("_132"("seahorn/lib/sea_string.cc":32:59))
  %v190 = sea.const 3 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v189, ^bb70(%v190 : i64), ^bb45 loc("seahorn/lib/sea_string.cc":12:9)
^bb45:
  %v191 = sea.ptr.index %v26 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_134"("seahorn/lib/sea_string.cc":32:52))
  %v192 = sea.const 1 : i64 loc("_135"("seahorn/lib/sea_string.cc":32:52))
  %v193 = sea.ptr.dereferenceable %v191, %v192 : !sea.ptr<64>, i64 loc("_135"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v193, ^bb46, ^bb96
^bb46:
  %v194 = sea.load %v36[%v191] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_136"("seahorn/lib/sea_string.cc":32:52))
  %v195 = sea.const 0 : i8 loc("_137"("seahorn/lib/sea_string.cc":32:59))
  %v196 = sea.icmp eq, %v194, %v195 : i8 loc("_137"("seahorn/lib/sea_string.cc":32:59))
  %v197 = sea.const 4 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v196, ^bb70(%v197 : i64), ^bb47 loc("seahorn/lib/sea_string.cc":12:9)
^bb47:
  %v198 = sea.ptr.index %v26 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_139"("seahorn/lib/sea_string.cc":32:52))
  %v199 = sea.const 1 : i64 loc("_140"("seahorn/lib/sea_string.cc":32:52))
  %v200 = sea.ptr.dereferenceable %v198, %v199 : !sea.ptr<64>, i64 loc("_140"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v200, ^bb48, ^bb96
^bb48:
  %v201 = sea.load %v36[%v198] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_141"("seahorn/lib/sea_string.cc":32:52))
  %v202 = sea.const 0 : i8 loc("_142"("seahorn/lib/sea_string.cc":32:59))
  %v203 = sea.icmp eq, %v201, %v202 : i8 loc("_142"("seahorn/lib/sea_string.cc":32:59))
  %v204 = sea.const 5 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v203, ^bb70(%v204 : i64), ^bb49 loc("seahorn/lib/sea_string.cc":12:9)
^bb49:
  %v205 = sea.ptr.index %v26 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_144"("seahorn/lib/sea_string.cc":32:52))
  %v206 = sea.const 1 : i64 loc("_145"("seahorn/lib/sea_string.cc":32:52))
  %v207 = sea.ptr.dereferenceable %v205, %v206 : !sea.ptr<64>, i64 loc("_145"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v207, ^bb50, ^bb96
^bb50:
  %v208 = sea.load %v36[%v205] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_146"("seahorn/lib/sea_string.cc":32:52))
  %v209 = sea.const 0 : i8 loc("_147"("seahorn/lib/sea_string.cc":32:59))
  %v210 = sea.icmp eq, %v208, %v209 : i8 loc("_147"("seahorn/lib/sea_string.cc":32:59))
  %v211 = sea.const 6 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v210, ^bb70(%v211 : i64), ^bb51 loc("seahorn/lib/sea_string.cc":12:9)
^bb51:
  %v212 = sea.ptr.index %v26 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_149"("seahorn/lib/sea_string.cc":32:52))
  %v213 = sea.const 1 : i64 loc("_150"("seahorn/lib/sea_string.cc":32:52))
  %v214 = sea.ptr.dereferenceable %v212, %v213 : !sea.ptr<64>, i64 loc("_150"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v214, ^bb52, ^bb96
^bb52:
  %v215 = sea.load %v36[%v212] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_151"("seahorn/lib/sea_string.cc":32:52))
  %v216 = sea.const 0 : i8 loc("_152"("seahorn/lib/sea_string.cc":32:59))
  %v217 = sea.icmp eq, %v215, %v216 : i8 loc("_152"("seahorn/lib/sea_string.cc":32:59))
  %v218 = sea.const 7 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v217, ^bb70(%v218 : i64), ^bb53 loc("seahorn/lib/sea_string.cc":12:9)
^bb53:
  %v219 = sea.ptr.index %v26 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_154"("seahorn/lib/sea_string.cc":32:52))
  %v220 = sea.const 1 : i64 loc("_155"("seahorn/lib/sea_string.cc":32:52))
  %v221 = sea.ptr.dereferenceable %v219, %v220 : !sea.ptr<64>, i64 loc("_155"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v221, ^bb54, ^bb96
^bb54:
  %v222 = sea.load %v36[%v219] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_156"("seahorn/lib/sea_string.cc":32:52))
  %v223 = sea.const 0 : i8 loc("_157"("seahorn/lib/sea_string.cc":32:59))
  %v224 = sea.icmp eq, %v222, %v223 : i8 loc("_157"("seahorn/lib/sea_string.cc":32:59))
  %v225 = sea.const 8 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v224, ^bb70(%v225 : i64), ^bb55 loc("seahorn/lib/sea_string.cc":12:9)
^bb55:
  %v226 = sea.ptr.index %v26 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_159"("seahorn/lib/sea_string.cc":32:52))
  %v227 = sea.const 1 : i64 loc("_160"("seahorn/lib/sea_string.cc":32:52))
  %v228 = sea.ptr.dereferenceable %v226, %v227 : !sea.ptr<64>, i64 loc("_160"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v228, ^bb56, ^bb96
^bb56:
  %v229 = sea.load %v36[%v226] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_161"("seahorn/lib/sea_string.cc":32:52))
  %v230 = sea.const 0 : i8 loc("_162"("seahorn/lib/sea_string.cc":32:59))
  %v231 = sea.icmp eq, %v229, %v230 : i8 loc("_162"("seahorn/lib/sea_string.cc":32:59))
  %v232 = sea.const 9 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v231, ^bb70(%v232 : i64), ^bb57 loc("seahorn/lib/sea_string.cc":12:9)
^bb57:
  %v233 = sea.ptr.index %v26 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_164"("seahorn/lib/sea_string.cc":32:52))
  %v234 = sea.const 1 : i64 loc("_165"("seahorn/lib/sea_string.cc":32:52))
  %v235 = sea.ptr.dereferenceable %v233, %v234 : !sea.ptr<64>, i64 loc("_165"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v235, ^bb58, ^bb96
^bb58:
  %v236 = sea.load %v36[%v233] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_166"("seahorn/lib/sea_string.cc":32:52))
  %v237 = sea.const 0 : i8 loc("_167"("seahorn/lib/sea_string.cc":32:59))
  %v238 = sea.icmp eq, %v236, %v237 : i8 loc("_167"("seahorn/lib/sea_string.cc":32:59))
  %v239 = sea.const 10 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v238, ^bb70(%v239 : i64), ^bb59 loc("seahorn/lib/sea_string.cc":12:9)
^bb59:
  %v240 = sea.ptr.index %v26 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_169"("seahorn/lib/sea_string.cc":32:52))
  %v241 = sea.const 1 : i64 loc("_170"("seahorn/lib/sea_string.cc":32:52))
  %v242 = sea.ptr.dereferenceable %v240, %v241 : !sea.ptr<64>, i64 loc("_170"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v242, ^bb60, ^bb96
^bb60:
  %v243 = sea.load %v36[%v240] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_171"("seahorn/lib/sea_string.cc":32:52))
  %v244 = sea.const 0 : i8 loc("_172"("seahorn/lib/sea_string.cc":32:59))
  %v245 = sea.icmp eq, %v243, %v244 : i8 loc("_172"("seahorn/lib/sea_string.cc":32:59))
  %v246 = sea.const 11 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v245, ^bb70(%v246 : i64), ^bb61 loc("seahorn/lib/sea_string.cc":12:9)
^bb61:
  %v247 = sea.ptr.index %v26 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_174"("seahorn/lib/sea_string.cc":32:52))
  %v248 = sea.const 1 : i64 loc("_175"("seahorn/lib/sea_string.cc":32:52))
  %v249 = sea.ptr.dereferenceable %v247, %v248 : !sea.ptr<64>, i64 loc("_175"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v249, ^bb62, ^bb96
^bb62:
  %v250 = sea.load %v36[%v247] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_176"("seahorn/lib/sea_string.cc":32:52))
  %v251 = sea.const 0 : i8 loc("_177"("seahorn/lib/sea_string.cc":32:59))
  %v252 = sea.icmp eq, %v250, %v251 : i8 loc("_177"("seahorn/lib/sea_string.cc":32:59))
  %v253 = sea.const 12 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v252, ^bb70(%v253 : i64), ^bb63 loc("seahorn/lib/sea_string.cc":12:9)
^bb63:
  %v254 = sea.ptr.index %v26 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_179"("seahorn/lib/sea_string.cc":32:52))
  %v255 = sea.const 1 : i64 loc("_180"("seahorn/lib/sea_string.cc":32:52))
  %v256 = sea.ptr.dereferenceable %v254, %v255 : !sea.ptr<64>, i64 loc("_180"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v256, ^bb64, ^bb96
^bb64:
  %v257 = sea.load %v36[%v254] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_181"("seahorn/lib/sea_string.cc":32:52))
  %v258 = sea.const 0 : i8 loc("_182"("seahorn/lib/sea_string.cc":32:59))
  %v259 = sea.icmp eq, %v257, %v258 : i8 loc("_182"("seahorn/lib/sea_string.cc":32:59))
  %v260 = sea.const 13 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v259, ^bb70(%v260 : i64), ^bb65 loc("seahorn/lib/sea_string.cc":12:9)
^bb65:
  %v261 = sea.ptr.index %v26 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_184"("seahorn/lib/sea_string.cc":32:52))
  %v262 = sea.const 1 : i64 loc("_185"("seahorn/lib/sea_string.cc":32:52))
  %v263 = sea.ptr.dereferenceable %v261, %v262 : !sea.ptr<64>, i64 loc("_185"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v263, ^bb66, ^bb96
^bb66:
  %v264 = sea.load %v36[%v261] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_186"("seahorn/lib/sea_string.cc":32:52))
  %v265 = sea.const 0 : i8 loc("_187"("seahorn/lib/sea_string.cc":32:59))
  %v266 = sea.icmp eq, %v264, %v265 : i8 loc("_187"("seahorn/lib/sea_string.cc":32:59))
  %v267 = sea.const 14 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v266, ^bb70(%v267 : i64), ^bb67 loc("seahorn/lib/sea_string.cc":12:9)
^bb67:
  %v268 = sea.ptr.index %v26 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_189"("seahorn/lib/sea_string.cc":32:52))
  %v269 = sea.const 1 : i64 loc("_190"("seahorn/lib/sea_string.cc":32:52))
  %v270 = sea.ptr.dereferenceable %v268, %v269 : !sea.ptr<64>, i64 loc("_190"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v270, ^bb68, ^bb96
^bb68:
  %v271 = sea.load %v36[%v268] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_191"("seahorn/lib/sea_string.cc":32:52))
  %v272 = sea.const 0 : i8 loc("_192"("seahorn/lib/sea_string.cc":32:59))
  %v273 = sea.icmp eq, %v271, %v272 : i8 loc("_192"("seahorn/lib/sea_string.cc":32:59))
  %v274 = sea.const 15 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v273, ^bb70(%v274 : i64), ^bb69 loc("seahorn/lib/sea_string.cc":12:9)
^bb69:
  %v275 = sea.const 16 : i64 loc("seahorn/lib/sea_string.cc":14:5)
  sea.br ^bb70(%v275 : i64) loc("seahorn/lib/sea_string.cc":14:5)
^bb70(%v276 : i64):
  sea.br ^bb71
^bb71:
  %v277 = sea.const 25 : i64 loc("_196"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v278 = sea.add %v276, %v277 nsw nuw : i64 loc("_196"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v279 = sea.nondet "nd_malloc_is_fail" [6] : i1 loc("_197"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v279, ^bb94, ^bb72 loc("seahorn/lib/sea_allocators.c":11:10)
^bb72:
  %v280 = sea.const 1 : i64 loc("malloc57.i")
  %v281 = sea.mul %v278, %v280 : i64 loc("malloc57.i")
  %v282 = sea.alloca %v281 align 16 [7] : i64 -> !sea.ptr<64> loc("malloc57.i")
  %v283 = sea.memhavoc %v36[%v282], %v278 [8] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v284 = sea.const 8 : i64 loc("_199"("aws-c-common/source/string.c":202:49))
  %v285 = sea.ptr.dereferenceable %v282, %v284 : !sea.ptr<64>, i64 loc("_199"("aws-c-common/source/string.c":202:49))
  sea.cond_br %v285, ^bb73, ^bb96
^bb73:
  %v286 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("aws-c-common/source/string.c":202:49)
  %v287 = sea.store %v283[%v282], %v286 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/string.c":202:49)
  %v288 = sea.ptr.index %v282 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_201"("aws-c-common/source/string.c":203:23))
  %v289 = sea.const 8 : i64 loc("_202"("aws-c-common/source/string.c":203:28))
  %v290 = sea.ptr.dereferenceable %v288, %v289 : !sea.ptr<64>, i64 loc("_202"("aws-c-common/source/string.c":203:28))
  sea.cond_br %v290, ^bb74, ^bb96
^bb74:
  %v291 = sea.store %v287[%v288], %v276 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/string.c":203:28)
  sea.cond_br %v168, ^bb78(%v291 : !sea.mem<!sea.ptr<64>, i8>), ^bb75 loc("aws-c-common/source/string.c":204:9)
^bb75:
  %v292 = sea.ptr.index %v282 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_205"("aws-c-common/source/string.c":205:29))
  %v293 = sea.ptr.dereferenceable %v292, %v276 : !sea.ptr<64>, i64 loc("_206"("seahorn/lib/bcmp.c":161:3))
  %v294 = sea.ptr.dereferenceable %v292, %v276 : !sea.ptr<64>, i64 loc("_207"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v294, ^bb76, ^bb96 loc("seahorn/lib/bcmp.c":161:3)
^bb76:
  %v295 = sea.ptr.dereferenceable %v26, %v276 : !sea.ptr<64>, i64 loc("_209"("seahorn/lib/bcmp.c":162:3))
  %v296 = sea.ptr.dereferenceable %v26, %v276 : !sea.ptr<64>, i64 loc("_210"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v296, ^bb77, ^bb96 loc("seahorn/lib/bcmp.c":162:3)
^bb77:
  %v297 = sea.memmove %v291[%v292], %v36[%v26], %v276 inplace align 16 src_align 16 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb78(%v297 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/string.c":206:5)
^bb78(%v298 : !sea.mem<!sea.ptr<64>, i8>):
  %v299 = sea.ptr.index %v282 [%v276] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_212"("aws-c-common/source/string.c":207:18))
  %v300 = sea.const 1 : i64 loc("_213"("aws-c-common/source/string.c":207:34))
  %v301 = sea.ptr.dereferenceable %v299, %v300 : !sea.ptr<64>, i64 loc("_213"("aws-c-common/source/string.c":207:34))
  sea.cond_br %v301, ^bb79, ^bb96
^bb79:
  %v302 = sea.const 0 : i8 loc("aws-c-common/source/string.c":207:34)
  %v303 = sea.store %v298[%v299], %v302 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("aws-c-common/source/string.c":207:34)
  %v304 = sea.const 8 : i64 loc("_215"("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":25:5))
  %v305 = sea.ptr.dereferenceable %v288, %v304 : !sea.ptr<64>, i64 loc("_215"("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":25:5))
  sea.cond_br %v305, ^bb80, ^bb96
^bb80:
  %v306 = sea.icmp eq, %v276, %v31 : i64 loc("_217"("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":25:5))
  %v307 = sea.const 8 : i64 loc("_218"("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":25:5))
  %v308 = sea.ptr.dereferenceable %v288, %v307 : !sea.ptr<64>, i64 loc("_218"("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":25:5))
  %v309 = sea.const 0 : i1 loc("_219")
  %v310 = sea.select %v308, %v306, %v309 : i1 loc("_219")
  sea.cond_br %v310, ^bb81, ^bb96
^bb81:
  %v311 = sea.const 8 : i64 loc("_221"("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":26:5))
  %v312 = sea.ptr.dereferenceable %v288, %v311 : !sea.ptr<64>, i64 loc("_221"("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":26:5))
  sea.cond_br %v312, ^bb82, ^bb96
^bb82:
  %v313 = sea.ptr.index %v282 [%v31] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_223"("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":26:5))
  %v314 = sea.const 1 : i64 loc("_224"("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":26:5))
  %v315 = sea.ptr.dereferenceable %v313, %v314 : !sea.ptr<64>, i64 loc("_224"("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":26:5))
  sea.cond_br %v315, ^bb83, ^bb96
^bb83:
  %v316 = sea.load %v303[%v313] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_226"("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":26:5))
  %v317 = sea.const 0 : i8 loc("_227"("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":26:5))
  %v318 = sea.icmp eq, %v316, %v317 : i8 loc("_227"("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":26:5))
  %v319 = sea.const 8 : i64 loc("_228"("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":26:5))
  %v320 = sea.ptr.dereferenceable %v288, %v319 : !sea.ptr<64>, i64 loc("_228"("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":26:5))
  sea.cond_br %v320, ^bb84, ^bb96
^bb84:
  %v321 = sea.const 1 : i64 loc("_230"("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":26:5))
  %v322 = sea.ptr.dereferenceable %v313, %v321 : !sea.ptr<64>, i64 loc("_230"("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":26:5))
  %v323 = sea.const 0 : i1 loc("_231")
  %v324 = sea.select %v322, %v318, %v323 : i1 loc("_231")
  sea.cond_br %v324, ^bb85, ^bb96
^bb85:
  %v325 = sea.const 8 : i64 loc("_233"("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":27:59))
  %v326 = sea.ptr.dereferenceable %v288, %v325 : !sea.ptr<64>, i64 loc("_233"("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":27:59))
  sea.cond_br %v326, ^bb86, ^bb96
^bb86:
  %v327 = sea.or %v38, %v29 : i1 loc("_234"("seahorn/lib/utils.c":15:3))
  %v328 = sea.const 0 : i64 loc("_235"("seahorn/lib/utils.c":15:3))
  %v329 = sea.icmp ne, %v31, %v328 : i64 loc("_235"("seahorn/lib/utils.c":15:3))
  %v330 = sea.and %v329, %v29 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v330, ^bb87, ^bb88 loc("seahorn/lib/utils.c":16:15)
^bb87:
  %v331 = sea.ptr.index %v282 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_237"("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":27:29))
  %v332 = sea.nondet "nd_size_t" [9] : i64 loc("_238"("seahorn/lib/utils.c":17:16))
  %v333 = sea.icmp ult, %v332, %v31 : i64 loc("_239"("seahorn/lib/utils.c":19:14))
  sea.assume %v333 loc("seahorn/lib/utils.c":19:5)
  %v334 = sea.ptr.index %v331 [%v332] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_240"("seahorn/lib/utils.c":20:5))
  %v335 = sea.load %v303[%v334] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_241"("seahorn/lib/utils.c":20:5))
  %v336 = sea.ptr.index %v26 [%v332] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_242"("seahorn/lib/utils.c":20:5))
  %v337 = sea.load %v303[%v336] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_243"("seahorn/lib/utils.c":20:5))
  %v338 = sea.icmp eq, %v335, %v337 : i8 loc("_244"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v338, ^bb88, ^bb96 loc("seahorn/lib/utils.c":20:5)
^bb88:
  %v339 = sea.const 8 : i64 loc("_245"("aws-c-common/include/aws/common/string.inl":35:19))
  %v340 = sea.ptr.dereferenceable %v288, %v339 : !sea.ptr<64>, i64 loc("_245"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v340, ^bb89, ^bb96
^bb89:
  %v341 = sea.const 8 : i64 loc("_247"("aws-c-common/include/aws/common/string.inl":35:88))
  %v342 = sea.ptr.dereferenceable %v288, %v341 : !sea.ptr<64>, i64 loc("_247"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v342, ^bb90, ^bb96
^bb90:
  %v343 = sea.const 1 : i64 loc("_249"("aws-c-common/include/aws/common/string.inl":35:72))
  %v344 = sea.ptr.dereferenceable %v313, %v343 : !sea.ptr<64>, i64 loc("_249"("aws-c-common/include/aws/common/string.inl":35:72))
  sea.cond_br %v344, ^bb91, ^bb96
^bb91:
  %v345 = sea.const 8 : i64 loc("_250"("aws-c-common/include/aws/common/string.inl":35:19))
  %v346 = sea.ptr.dereferenceable %v288, %v345 : !sea.ptr<64>, i64 loc("_250"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v346, ^bb92, ^bb96
^bb92:
  %v347 = sea.const 8 : i64 loc("_252"("aws-c-common/include/aws/common/string.inl":35:88))
  %v348 = sea.ptr.dereferenceable %v288, %v347 : !sea.ptr<64>, i64 loc("_252"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v348, ^bb93, ^bb96
^bb93:
  %v349 = sea.const 1 : i64 loc("_254"("aws-c-common/include/aws/common/string.inl":35:72))
  %v350 = sea.ptr.dereferenceable %v313, %v349 : !sea.ptr<64>, i64 loc("_254"("aws-c-common/include/aws/common/string.inl":35:72))
  sea.cond_br %v350, ^bb95, ^bb96
^bb94:
  sea.br ^bb95 loc("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":24:7)
^bb95:
  %v351 = sea.const 1 : i1 loc("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":30:5)
  %v352 = sea.xor %v29, %v351 : i1 loc("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":30:5)
  sea.assume %v352 loc("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":30:5)
  sea.br ^bb96 loc("seahorn/jobs/string_new_from_c_str/aws_string_new_from_c_str_harness.c":30:5)
^bb96:
  sea.br ^bb97
^bb97:
  %v353 = sea.const 0 : i1
  sea.assert %v353
  sea.halt
}
