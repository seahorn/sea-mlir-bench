// Exported from SeaHorn (hash_callback_c_str_eq.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm4")
  %v1 = sea.nondet "nd_size_t" [1] : i64 loc("_0"("seahorn/lib/string_helper.c":51:16))
  %v2 = sea.const 0 : i64 loc("_1"("seahorn/lib/string_helper.c":53:21))
  %v3 = sea.icmp ne, %v1, %v2 : i64 loc("_1"("seahorn/lib/string_helper.c":53:21))
  sea.assume %v3 loc("seahorn/lib/string_helper.c":53:3)
  %v4 = sea.const 17 : i64 loc("_2"("seahorn/lib/string_helper.c":54:21))
  %v5 = sea.icmp ult, %v1, %v4 : i64 loc("_2"("seahorn/lib/string_helper.c":54:21))
  sea.assume %v5 loc("seahorn/lib/string_helper.c":54:3)
  %v6 = sea.const 1 : i1 loc("seahorn/lib/string_helper.c":55:3)
  sea.assume %v6 loc("seahorn/lib/string_helper.c":55:3)
  %v7 = sea.nondet "nd_malloc_is_fail" [2] : i1 loc("_3"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v7, ^bb37, ^bb1 loc("seahorn/lib/sea_allocators.c":11:10)
^bb1:
  %v8 = sea.const 1 : i64 loc("malloc.i")
  %v9 = sea.mul %v1, %v8 : i64 loc("malloc.i")
  %v10 = sea.alloca %v9 align 16 [3] : i64 -> !sea.ptr<64> loc("malloc.i")
  %v11 = sea.memhavoc %v0[%v10], %v1 [4] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v12 = sea.const 18446744073709551615 : i64 loc("_5"("seahorn/lib/string_helper.c":68:32))
  %v13 = sea.add %v1, %v12 : i64 loc("_5"("seahorn/lib/string_helper.c":68:32))
  %v14 = sea.ptr.index %v10 [%v13] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_6"("seahorn/lib/string_helper.c":39:3))
  %v15 = sea.const 1 : i64 loc("_7"("seahorn/lib/string_helper.c":39:16))
  %v16 = sea.ptr.dereferenceable %v14, %v15 : !sea.ptr<64>, i64 loc("_7"("seahorn/lib/string_helper.c":39:16))
  sea.cond_br %v16, ^bb2, ^bb177
^bb2:
  %v17 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":39:16)
  %v18 = sea.store %v11[%v14], %v17 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":39:16)
  %v19 = sea.const 0 : i64 loc(".not"("seahorn/lib/string_helper.c":42:11))
  %v20 = sea.icmp eq, %v13, %v19 : i64 loc(".not"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v20, ^bb35, ^bb3 loc("seahorn/lib/string_helper.c":42:9)
^bb3:
  %v21 = sea.const 1 : i64 loc("_10"("seahorn/lib/string_helper.c":43:14))
  %v22 = sea.ptr.dereferenceable %v10, %v21 : !sea.ptr<64>, i64 loc("_10"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v22, ^bb4, ^bb177
^bb4:
  %v23 = sea.load %v18[%v10] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_12"("seahorn/lib/string_helper.c":43:14))
  %v24 = sea.const 0 : i8 loc("_13"("seahorn/lib/string_helper.c":43:21))
  %v25 = sea.icmp ne, %v23, %v24 : i8 loc("_13"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v25 loc("seahorn/lib/string_helper.c":43:7)
  %v26 = sea.const 1 : i64 loc(".not89"("seahorn/lib/string_helper.c":42:11))
  %v27 = sea.icmp eq, %v13, %v26 : i64 loc(".not89"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v27, ^bb35, ^bb5 loc("seahorn/lib/string_helper.c":42:9)
^bb5:
  %v28 = sea.ptr.index %v10 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_15"("seahorn/lib/string_helper.c":43:14))
  %v29 = sea.const 1 : i64 loc("_16"("seahorn/lib/string_helper.c":43:14))
  %v30 = sea.ptr.dereferenceable %v28, %v29 : !sea.ptr<64>, i64 loc("_16"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v30, ^bb6, ^bb177
^bb6:
  %v31 = sea.load %v18[%v28] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_18"("seahorn/lib/string_helper.c":43:14))
  %v32 = sea.const 0 : i8 loc("_19"("seahorn/lib/string_helper.c":43:21))
  %v33 = sea.icmp ne, %v31, %v32 : i8 loc("_19"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v33 loc("seahorn/lib/string_helper.c":43:7)
  %v34 = sea.const 2 : i64 loc("_20"("seahorn/lib/string_helper.c":42:11))
  %v35 = sea.icmp ugt, %v13, %v34 : i64 loc("_20"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v35, ^bb7, ^bb35 loc("seahorn/lib/string_helper.c":42:9)
^bb7:
  %v36 = sea.ptr.index %v10 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_22"("seahorn/lib/string_helper.c":43:14))
  %v37 = sea.const 1 : i64 loc("_23"("seahorn/lib/string_helper.c":43:14))
  %v38 = sea.ptr.dereferenceable %v36, %v37 : !sea.ptr<64>, i64 loc("_23"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v38, ^bb8, ^bb177
^bb8:
  %v39 = sea.load %v18[%v36] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_25"("seahorn/lib/string_helper.c":43:14))
  %v40 = sea.const 0 : i8 loc("_26"("seahorn/lib/string_helper.c":43:21))
  %v41 = sea.icmp ne, %v39, %v40 : i8 loc("_26"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v41 loc("seahorn/lib/string_helper.c":43:7)
  %v42 = sea.const 3 : i64 loc(".not90"("seahorn/lib/string_helper.c":42:11))
  %v43 = sea.icmp eq, %v13, %v42 : i64 loc(".not90"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v43, ^bb35, ^bb9 loc("seahorn/lib/string_helper.c":42:9)
^bb9:
  %v44 = sea.ptr.index %v10 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_28"("seahorn/lib/string_helper.c":43:14))
  %v45 = sea.const 1 : i64 loc("_29"("seahorn/lib/string_helper.c":43:14))
  %v46 = sea.ptr.dereferenceable %v44, %v45 : !sea.ptr<64>, i64 loc("_29"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v46, ^bb10, ^bb177
^bb10:
  %v47 = sea.load %v18[%v44] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_31"("seahorn/lib/string_helper.c":43:14))
  %v48 = sea.const 0 : i8 loc("_32"("seahorn/lib/string_helper.c":43:21))
  %v49 = sea.icmp ne, %v47, %v48 : i8 loc("_32"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v49 loc("seahorn/lib/string_helper.c":43:7)
  %v50 = sea.const 4 : i64 loc("_33"("seahorn/lib/string_helper.c":42:11))
  %v51 = sea.icmp ugt, %v13, %v50 : i64 loc("_33"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v51, ^bb11, ^bb35 loc("seahorn/lib/string_helper.c":42:9)
^bb11:
  %v52 = sea.ptr.index %v10 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_35"("seahorn/lib/string_helper.c":43:14))
  %v53 = sea.const 1 : i64 loc("_36"("seahorn/lib/string_helper.c":43:14))
  %v54 = sea.ptr.dereferenceable %v52, %v53 : !sea.ptr<64>, i64 loc("_36"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v54, ^bb12, ^bb177
^bb12:
  %v55 = sea.load %v18[%v52] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_38"("seahorn/lib/string_helper.c":43:14))
  %v56 = sea.const 0 : i8 loc("_39"("seahorn/lib/string_helper.c":43:21))
  %v57 = sea.icmp ne, %v55, %v56 : i8 loc("_39"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v57 loc("seahorn/lib/string_helper.c":43:7)
  %v58 = sea.const 5 : i64 loc(".not91"("seahorn/lib/string_helper.c":42:11))
  %v59 = sea.icmp eq, %v13, %v58 : i64 loc(".not91"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v59, ^bb35, ^bb13 loc("seahorn/lib/string_helper.c":42:9)
^bb13:
  %v60 = sea.ptr.index %v10 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_41"("seahorn/lib/string_helper.c":43:14))
  %v61 = sea.const 1 : i64 loc("_42"("seahorn/lib/string_helper.c":43:14))
  %v62 = sea.ptr.dereferenceable %v60, %v61 : !sea.ptr<64>, i64 loc("_42"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v62, ^bb14, ^bb177
^bb14:
  %v63 = sea.load %v18[%v60] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_44"("seahorn/lib/string_helper.c":43:14))
  %v64 = sea.const 0 : i8 loc("_45"("seahorn/lib/string_helper.c":43:21))
  %v65 = sea.icmp ne, %v63, %v64 : i8 loc("_45"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v65 loc("seahorn/lib/string_helper.c":43:7)
  %v66 = sea.const 6 : i64 loc("_46"("seahorn/lib/string_helper.c":42:11))
  %v67 = sea.icmp ugt, %v13, %v66 : i64 loc("_46"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v67, ^bb15, ^bb35 loc("seahorn/lib/string_helper.c":42:9)
^bb15:
  %v68 = sea.ptr.index %v10 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_48"("seahorn/lib/string_helper.c":43:14))
  %v69 = sea.const 1 : i64 loc("_49"("seahorn/lib/string_helper.c":43:14))
  %v70 = sea.ptr.dereferenceable %v68, %v69 : !sea.ptr<64>, i64 loc("_49"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v70, ^bb16, ^bb177
^bb16:
  %v71 = sea.load %v18[%v68] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_51"("seahorn/lib/string_helper.c":43:14))
  %v72 = sea.const 0 : i8 loc("_52"("seahorn/lib/string_helper.c":43:21))
  %v73 = sea.icmp ne, %v71, %v72 : i8 loc("_52"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v73 loc("seahorn/lib/string_helper.c":43:7)
  %v74 = sea.const 7 : i64 loc(".not92"("seahorn/lib/string_helper.c":42:11))
  %v75 = sea.icmp eq, %v13, %v74 : i64 loc(".not92"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v75, ^bb35, ^bb17 loc("seahorn/lib/string_helper.c":42:9)
^bb17:
  %v76 = sea.ptr.index %v10 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_54"("seahorn/lib/string_helper.c":43:14))
  %v77 = sea.const 1 : i64 loc("_55"("seahorn/lib/string_helper.c":43:14))
  %v78 = sea.ptr.dereferenceable %v76, %v77 : !sea.ptr<64>, i64 loc("_55"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v78, ^bb18, ^bb177
^bb18:
  %v79 = sea.load %v18[%v76] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_57"("seahorn/lib/string_helper.c":43:14))
  %v80 = sea.const 0 : i8 loc("_58"("seahorn/lib/string_helper.c":43:21))
  %v81 = sea.icmp ne, %v79, %v80 : i8 loc("_58"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v81 loc("seahorn/lib/string_helper.c":43:7)
  %v82 = sea.const 8 : i64 loc("_59"("seahorn/lib/string_helper.c":42:11))
  %v83 = sea.icmp ugt, %v13, %v82 : i64 loc("_59"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v83, ^bb19, ^bb35 loc("seahorn/lib/string_helper.c":42:9)
^bb19:
  %v84 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_61"("seahorn/lib/string_helper.c":43:14))
  %v85 = sea.const 1 : i64 loc("_62"("seahorn/lib/string_helper.c":43:14))
  %v86 = sea.ptr.dereferenceable %v84, %v85 : !sea.ptr<64>, i64 loc("_62"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v86, ^bb20, ^bb177
^bb20:
  %v87 = sea.load %v18[%v84] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_64"("seahorn/lib/string_helper.c":43:14))
  %v88 = sea.const 0 : i8 loc("_65"("seahorn/lib/string_helper.c":43:21))
  %v89 = sea.icmp ne, %v87, %v88 : i8 loc("_65"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v89 loc("seahorn/lib/string_helper.c":43:7)
  %v90 = sea.const 9 : i64 loc(".not93"("seahorn/lib/string_helper.c":42:11))
  %v91 = sea.icmp eq, %v13, %v90 : i64 loc(".not93"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v91, ^bb35, ^bb21 loc("seahorn/lib/string_helper.c":42:9)
^bb21:
  %v92 = sea.ptr.index %v10 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_67"("seahorn/lib/string_helper.c":43:14))
  %v93 = sea.const 1 : i64 loc("_68"("seahorn/lib/string_helper.c":43:14))
  %v94 = sea.ptr.dereferenceable %v92, %v93 : !sea.ptr<64>, i64 loc("_68"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v94, ^bb22, ^bb177
^bb22:
  %v95 = sea.load %v18[%v92] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_70"("seahorn/lib/string_helper.c":43:14))
  %v96 = sea.const 0 : i8 loc("_71"("seahorn/lib/string_helper.c":43:21))
  %v97 = sea.icmp ne, %v95, %v96 : i8 loc("_71"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v97 loc("seahorn/lib/string_helper.c":43:7)
  %v98 = sea.const 10 : i64 loc("_72"("seahorn/lib/string_helper.c":42:11))
  %v99 = sea.icmp ugt, %v13, %v98 : i64 loc("_72"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v99, ^bb23, ^bb35 loc("seahorn/lib/string_helper.c":42:9)
^bb23:
  %v100 = sea.ptr.index %v10 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_74"("seahorn/lib/string_helper.c":43:14))
  %v101 = sea.const 1 : i64 loc("_75"("seahorn/lib/string_helper.c":43:14))
  %v102 = sea.ptr.dereferenceable %v100, %v101 : !sea.ptr<64>, i64 loc("_75"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v102, ^bb24, ^bb177
^bb24:
  %v103 = sea.load %v18[%v100] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_77"("seahorn/lib/string_helper.c":43:14))
  %v104 = sea.const 0 : i8 loc("_78"("seahorn/lib/string_helper.c":43:21))
  %v105 = sea.icmp ne, %v103, %v104 : i8 loc("_78"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v105 loc("seahorn/lib/string_helper.c":43:7)
  %v106 = sea.const 11 : i64 loc(".not94"("seahorn/lib/string_helper.c":42:11))
  %v107 = sea.icmp eq, %v13, %v106 : i64 loc(".not94"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v107, ^bb35, ^bb25 loc("seahorn/lib/string_helper.c":42:9)
^bb25:
  %v108 = sea.ptr.index %v10 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_80"("seahorn/lib/string_helper.c":43:14))
  %v109 = sea.const 1 : i64 loc("_81"("seahorn/lib/string_helper.c":43:14))
  %v110 = sea.ptr.dereferenceable %v108, %v109 : !sea.ptr<64>, i64 loc("_81"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v110, ^bb26, ^bb177
^bb26:
  %v111 = sea.load %v18[%v108] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_83"("seahorn/lib/string_helper.c":43:14))
  %v112 = sea.const 0 : i8 loc("_84"("seahorn/lib/string_helper.c":43:21))
  %v113 = sea.icmp ne, %v111, %v112 : i8 loc("_84"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v113 loc("seahorn/lib/string_helper.c":43:7)
  %v114 = sea.const 12 : i64 loc("_85"("seahorn/lib/string_helper.c":42:11))
  %v115 = sea.icmp ugt, %v13, %v114 : i64 loc("_85"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v115, ^bb27, ^bb35 loc("seahorn/lib/string_helper.c":42:9)
^bb27:
  %v116 = sea.ptr.index %v10 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_87"("seahorn/lib/string_helper.c":43:14))
  %v117 = sea.const 1 : i64 loc("_88"("seahorn/lib/string_helper.c":43:14))
  %v118 = sea.ptr.dereferenceable %v116, %v117 : !sea.ptr<64>, i64 loc("_88"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v118, ^bb28, ^bb177
^bb28:
  %v119 = sea.load %v18[%v116] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_90"("seahorn/lib/string_helper.c":43:14))
  %v120 = sea.const 0 : i8 loc("_91"("seahorn/lib/string_helper.c":43:21))
  %v121 = sea.icmp ne, %v119, %v120 : i8 loc("_91"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v121 loc("seahorn/lib/string_helper.c":43:7)
  %v122 = sea.const 13 : i64 loc(".not95"("seahorn/lib/string_helper.c":42:11))
  %v123 = sea.icmp eq, %v13, %v122 : i64 loc(".not95"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v123, ^bb35, ^bb29 loc("seahorn/lib/string_helper.c":42:9)
^bb29:
  %v124 = sea.ptr.index %v10 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_93"("seahorn/lib/string_helper.c":43:14))
  %v125 = sea.const 1 : i64 loc("_94"("seahorn/lib/string_helper.c":43:14))
  %v126 = sea.ptr.dereferenceable %v124, %v125 : !sea.ptr<64>, i64 loc("_94"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v126, ^bb30, ^bb177
^bb30:
  %v127 = sea.load %v18[%v124] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_96"("seahorn/lib/string_helper.c":43:14))
  %v128 = sea.const 0 : i8 loc("_97"("seahorn/lib/string_helper.c":43:21))
  %v129 = sea.icmp ne, %v127, %v128 : i8 loc("_97"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v129 loc("seahorn/lib/string_helper.c":43:7)
  %v130 = sea.const 14 : i64 loc("_98"("seahorn/lib/string_helper.c":42:11))
  %v131 = sea.icmp ugt, %v13, %v130 : i64 loc("_98"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v131, ^bb31, ^bb35 loc("seahorn/lib/string_helper.c":42:9)
^bb31:
  %v132 = sea.ptr.index %v10 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_100"("seahorn/lib/string_helper.c":43:14))
  %v133 = sea.const 1 : i64 loc("_101"("seahorn/lib/string_helper.c":43:14))
  %v134 = sea.ptr.dereferenceable %v132, %v133 : !sea.ptr<64>, i64 loc("_101"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v134, ^bb32, ^bb177
^bb32:
  %v135 = sea.load %v18[%v132] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_103"("seahorn/lib/string_helper.c":43:14))
  %v136 = sea.const 0 : i8 loc("_104"("seahorn/lib/string_helper.c":43:21))
  %v137 = sea.icmp ne, %v135, %v136 : i8 loc("_104"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v137 loc("seahorn/lib/string_helper.c":43:7)
  %v138 = sea.const 15 : i64 loc(".not96"("seahorn/lib/string_helper.c":42:11))
  %v139 = sea.icmp eq, %v13, %v138 : i64 loc(".not96"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v139, ^bb35, ^bb33 loc("seahorn/lib/string_helper.c":42:9)
^bb33:
  %v140 = sea.ptr.index %v10 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_106"("seahorn/lib/string_helper.c":43:14))
  %v141 = sea.const 1 : i64 loc("_107"("seahorn/lib/string_helper.c":43:14))
  %v142 = sea.ptr.dereferenceable %v140, %v141 : !sea.ptr<64>, i64 loc("_107"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v142, ^bb34, ^bb177
^bb34:
  %v143 = sea.load %v18[%v140] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_109"("seahorn/lib/string_helper.c":43:14))
  %v144 = sea.const 0 : i8 loc("_110"("seahorn/lib/string_helper.c":43:21))
  %v145 = sea.icmp ne, %v143, %v144 : i8 loc("_110"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v145 loc("seahorn/lib/string_helper.c":43:7)
  sea.br ^bb35 loc("seahorn/lib/string_helper.c":44:5)
^bb35:
  sea.br ^bb36
^bb36:
  sea.br ^bb38(%v18, %v10 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/string_helper.c":70:3)
^bb37:
  %v146 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":63:9)
  sea.br ^bb38(%v0, %v146 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/string_helper.c":63:9)
^bb38(%v147 : !sea.mem<!sea.ptr<64>, i8>, %v148 : !sea.ptr<64>):
  %v149 = sea.nondet "nd_bool" [5] : i1 loc("_112"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":45:7))
  sea.cond_br %v149, ^bb77(%v147, %v148 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb39 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":45:7)
^bb39:
  %v150 = sea.nondet "nd_size_t" [6] : i64 loc("_114"("seahorn/lib/string_helper.c":51:16))
  %v151 = sea.const 0 : i64 loc("_115"("seahorn/lib/string_helper.c":53:21))
  %v152 = sea.icmp ne, %v150, %v151 : i64 loc("_115"("seahorn/lib/string_helper.c":53:21))
  sea.assume %v152 loc("seahorn/lib/string_helper.c":53:3)
  %v153 = sea.const 17 : i64 loc("_116"("seahorn/lib/string_helper.c":54:21))
  %v154 = sea.icmp ult, %v150, %v153 : i64 loc("_116"("seahorn/lib/string_helper.c":54:21))
  sea.assume %v154 loc("seahorn/lib/string_helper.c":54:3)
  %v155 = sea.const 1 : i1 loc("seahorn/lib/string_helper.c":55:3)
  sea.assume %v155 loc("seahorn/lib/string_helper.c":55:3)
  %v156 = sea.nondet "nd_malloc_is_fail" [7] : i1 loc("_117"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v156, ^bb76, ^bb40 loc("seahorn/lib/sea_allocators.c":11:10)
^bb40:
  %v157 = sea.const 1 : i64 loc("malloc64.i")
  %v158 = sea.mul %v150, %v157 : i64 loc("malloc64.i")
  %v159 = sea.alloca %v158 align 16 [8] : i64 -> !sea.ptr<64> loc("malloc64.i")
  %v160 = sea.memhavoc %v147[%v159], %v150 [9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v161 = sea.const 18446744073709551615 : i64 loc("_119"("seahorn/lib/string_helper.c":68:32))
  %v162 = sea.add %v150, %v161 : i64 loc("_119"("seahorn/lib/string_helper.c":68:32))
  %v163 = sea.ptr.index %v159 [%v162] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_120"("seahorn/lib/string_helper.c":39:3))
  %v164 = sea.const 1 : i64 loc("_121"("seahorn/lib/string_helper.c":39:16))
  %v165 = sea.ptr.dereferenceable %v163, %v164 : !sea.ptr<64>, i64 loc("_121"("seahorn/lib/string_helper.c":39:16))
  sea.cond_br %v165, ^bb41, ^bb177
^bb41:
  %v166 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":39:16)
  %v167 = sea.store %v160[%v163], %v166 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":39:16)
  %v168 = sea.const 0 : i64 loc(".not32"("seahorn/lib/string_helper.c":42:11))
  %v169 = sea.icmp eq, %v162, %v168 : i64 loc(".not32"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v169, ^bb74, ^bb42 loc("seahorn/lib/string_helper.c":42:9)
^bb42:
  %v170 = sea.const 1 : i64 loc("_124"("seahorn/lib/string_helper.c":43:14))
  %v171 = sea.ptr.dereferenceable %v159, %v170 : !sea.ptr<64>, i64 loc("_124"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v171, ^bb43, ^bb177
^bb43:
  %v172 = sea.load %v167[%v159] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_126"("seahorn/lib/string_helper.c":43:14))
  %v173 = sea.const 0 : i8 loc("_127"("seahorn/lib/string_helper.c":43:21))
  %v174 = sea.icmp ne, %v172, %v173 : i8 loc("_127"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v174 loc("seahorn/lib/string_helper.c":43:7)
  %v175 = sea.const 1 : i64 loc(".not97"("seahorn/lib/string_helper.c":42:11))
  %v176 = sea.icmp eq, %v162, %v175 : i64 loc(".not97"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v176, ^bb74, ^bb44 loc("seahorn/lib/string_helper.c":42:9)
^bb44:
  %v177 = sea.ptr.index %v159 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_129"("seahorn/lib/string_helper.c":43:14))
  %v178 = sea.const 1 : i64 loc("_130"("seahorn/lib/string_helper.c":43:14))
  %v179 = sea.ptr.dereferenceable %v177, %v178 : !sea.ptr<64>, i64 loc("_130"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v179, ^bb45, ^bb177
^bb45:
  %v180 = sea.load %v167[%v177] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_132"("seahorn/lib/string_helper.c":43:14))
  %v181 = sea.const 0 : i8 loc("_133"("seahorn/lib/string_helper.c":43:21))
  %v182 = sea.icmp ne, %v180, %v181 : i8 loc("_133"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v182 loc("seahorn/lib/string_helper.c":43:7)
  %v183 = sea.const 2 : i64 loc("_134"("seahorn/lib/string_helper.c":42:11))
  %v184 = sea.icmp ugt, %v162, %v183 : i64 loc("_134"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v184, ^bb46, ^bb74 loc("seahorn/lib/string_helper.c":42:9)
^bb46:
  %v185 = sea.ptr.index %v159 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_136"("seahorn/lib/string_helper.c":43:14))
  %v186 = sea.const 1 : i64 loc("_137"("seahorn/lib/string_helper.c":43:14))
  %v187 = sea.ptr.dereferenceable %v185, %v186 : !sea.ptr<64>, i64 loc("_137"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v187, ^bb47, ^bb177
^bb47:
  %v188 = sea.load %v167[%v185] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_139"("seahorn/lib/string_helper.c":43:14))
  %v189 = sea.const 0 : i8 loc("_140"("seahorn/lib/string_helper.c":43:21))
  %v190 = sea.icmp ne, %v188, %v189 : i8 loc("_140"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v190 loc("seahorn/lib/string_helper.c":43:7)
  %v191 = sea.const 3 : i64 loc(".not98"("seahorn/lib/string_helper.c":42:11))
  %v192 = sea.icmp eq, %v162, %v191 : i64 loc(".not98"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v192, ^bb74, ^bb48 loc("seahorn/lib/string_helper.c":42:9)
^bb48:
  %v193 = sea.ptr.index %v159 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_142"("seahorn/lib/string_helper.c":43:14))
  %v194 = sea.const 1 : i64 loc("_143"("seahorn/lib/string_helper.c":43:14))
  %v195 = sea.ptr.dereferenceable %v193, %v194 : !sea.ptr<64>, i64 loc("_143"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v195, ^bb49, ^bb177
^bb49:
  %v196 = sea.load %v167[%v193] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_145"("seahorn/lib/string_helper.c":43:14))
  %v197 = sea.const 0 : i8 loc("_146"("seahorn/lib/string_helper.c":43:21))
  %v198 = sea.icmp ne, %v196, %v197 : i8 loc("_146"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v198 loc("seahorn/lib/string_helper.c":43:7)
  %v199 = sea.const 4 : i64 loc("_147"("seahorn/lib/string_helper.c":42:11))
  %v200 = sea.icmp ugt, %v162, %v199 : i64 loc("_147"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v200, ^bb50, ^bb74 loc("seahorn/lib/string_helper.c":42:9)
^bb50:
  %v201 = sea.ptr.index %v159 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_149"("seahorn/lib/string_helper.c":43:14))
  %v202 = sea.const 1 : i64 loc("_150"("seahorn/lib/string_helper.c":43:14))
  %v203 = sea.ptr.dereferenceable %v201, %v202 : !sea.ptr<64>, i64 loc("_150"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v203, ^bb51, ^bb177
^bb51:
  %v204 = sea.load %v167[%v201] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_152"("seahorn/lib/string_helper.c":43:14))
  %v205 = sea.const 0 : i8 loc("_153"("seahorn/lib/string_helper.c":43:21))
  %v206 = sea.icmp ne, %v204, %v205 : i8 loc("_153"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v206 loc("seahorn/lib/string_helper.c":43:7)
  %v207 = sea.const 5 : i64 loc(".not99"("seahorn/lib/string_helper.c":42:11))
  %v208 = sea.icmp eq, %v162, %v207 : i64 loc(".not99"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v208, ^bb74, ^bb52 loc("seahorn/lib/string_helper.c":42:9)
^bb52:
  %v209 = sea.ptr.index %v159 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_155"("seahorn/lib/string_helper.c":43:14))
  %v210 = sea.const 1 : i64 loc("_156"("seahorn/lib/string_helper.c":43:14))
  %v211 = sea.ptr.dereferenceable %v209, %v210 : !sea.ptr<64>, i64 loc("_156"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v211, ^bb53, ^bb177
^bb53:
  %v212 = sea.load %v167[%v209] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_158"("seahorn/lib/string_helper.c":43:14))
  %v213 = sea.const 0 : i8 loc("_159"("seahorn/lib/string_helper.c":43:21))
  %v214 = sea.icmp ne, %v212, %v213 : i8 loc("_159"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v214 loc("seahorn/lib/string_helper.c":43:7)
  %v215 = sea.const 6 : i64 loc("_160"("seahorn/lib/string_helper.c":42:11))
  %v216 = sea.icmp ugt, %v162, %v215 : i64 loc("_160"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v216, ^bb54, ^bb74 loc("seahorn/lib/string_helper.c":42:9)
^bb54:
  %v217 = sea.ptr.index %v159 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_162"("seahorn/lib/string_helper.c":43:14))
  %v218 = sea.const 1 : i64 loc("_163"("seahorn/lib/string_helper.c":43:14))
  %v219 = sea.ptr.dereferenceable %v217, %v218 : !sea.ptr<64>, i64 loc("_163"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v219, ^bb55, ^bb177
^bb55:
  %v220 = sea.load %v167[%v217] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_165"("seahorn/lib/string_helper.c":43:14))
  %v221 = sea.const 0 : i8 loc("_166"("seahorn/lib/string_helper.c":43:21))
  %v222 = sea.icmp ne, %v220, %v221 : i8 loc("_166"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v222 loc("seahorn/lib/string_helper.c":43:7)
  %v223 = sea.const 7 : i64 loc(".not100"("seahorn/lib/string_helper.c":42:11))
  %v224 = sea.icmp eq, %v162, %v223 : i64 loc(".not100"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v224, ^bb74, ^bb56 loc("seahorn/lib/string_helper.c":42:9)
^bb56:
  %v225 = sea.ptr.index %v159 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_168"("seahorn/lib/string_helper.c":43:14))
  %v226 = sea.const 1 : i64 loc("_169"("seahorn/lib/string_helper.c":43:14))
  %v227 = sea.ptr.dereferenceable %v225, %v226 : !sea.ptr<64>, i64 loc("_169"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v227, ^bb57, ^bb177
^bb57:
  %v228 = sea.load %v167[%v225] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_171"("seahorn/lib/string_helper.c":43:14))
  %v229 = sea.const 0 : i8 loc("_172"("seahorn/lib/string_helper.c":43:21))
  %v230 = sea.icmp ne, %v228, %v229 : i8 loc("_172"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v230 loc("seahorn/lib/string_helper.c":43:7)
  %v231 = sea.const 8 : i64 loc("_173"("seahorn/lib/string_helper.c":42:11))
  %v232 = sea.icmp ugt, %v162, %v231 : i64 loc("_173"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v232, ^bb58, ^bb74 loc("seahorn/lib/string_helper.c":42:9)
^bb58:
  %v233 = sea.ptr.index %v159 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_175"("seahorn/lib/string_helper.c":43:14))
  %v234 = sea.const 1 : i64 loc("_176"("seahorn/lib/string_helper.c":43:14))
  %v235 = sea.ptr.dereferenceable %v233, %v234 : !sea.ptr<64>, i64 loc("_176"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v235, ^bb59, ^bb177
^bb59:
  %v236 = sea.load %v167[%v233] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_178"("seahorn/lib/string_helper.c":43:14))
  %v237 = sea.const 0 : i8 loc("_179"("seahorn/lib/string_helper.c":43:21))
  %v238 = sea.icmp ne, %v236, %v237 : i8 loc("_179"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v238 loc("seahorn/lib/string_helper.c":43:7)
  %v239 = sea.const 9 : i64 loc(".not101"("seahorn/lib/string_helper.c":42:11))
  %v240 = sea.icmp eq, %v162, %v239 : i64 loc(".not101"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v240, ^bb74, ^bb60 loc("seahorn/lib/string_helper.c":42:9)
^bb60:
  %v241 = sea.ptr.index %v159 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_181"("seahorn/lib/string_helper.c":43:14))
  %v242 = sea.const 1 : i64 loc("_182"("seahorn/lib/string_helper.c":43:14))
  %v243 = sea.ptr.dereferenceable %v241, %v242 : !sea.ptr<64>, i64 loc("_182"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v243, ^bb61, ^bb177
^bb61:
  %v244 = sea.load %v167[%v241] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_184"("seahorn/lib/string_helper.c":43:14))
  %v245 = sea.const 0 : i8 loc("_185"("seahorn/lib/string_helper.c":43:21))
  %v246 = sea.icmp ne, %v244, %v245 : i8 loc("_185"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v246 loc("seahorn/lib/string_helper.c":43:7)
  %v247 = sea.const 10 : i64 loc("_186"("seahorn/lib/string_helper.c":42:11))
  %v248 = sea.icmp ugt, %v162, %v247 : i64 loc("_186"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v248, ^bb62, ^bb74 loc("seahorn/lib/string_helper.c":42:9)
^bb62:
  %v249 = sea.ptr.index %v159 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_188"("seahorn/lib/string_helper.c":43:14))
  %v250 = sea.const 1 : i64 loc("_189"("seahorn/lib/string_helper.c":43:14))
  %v251 = sea.ptr.dereferenceable %v249, %v250 : !sea.ptr<64>, i64 loc("_189"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v251, ^bb63, ^bb177
^bb63:
  %v252 = sea.load %v167[%v249] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_191"("seahorn/lib/string_helper.c":43:14))
  %v253 = sea.const 0 : i8 loc("_192"("seahorn/lib/string_helper.c":43:21))
  %v254 = sea.icmp ne, %v252, %v253 : i8 loc("_192"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v254 loc("seahorn/lib/string_helper.c":43:7)
  %v255 = sea.const 11 : i64 loc(".not102"("seahorn/lib/string_helper.c":42:11))
  %v256 = sea.icmp eq, %v162, %v255 : i64 loc(".not102"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v256, ^bb74, ^bb64 loc("seahorn/lib/string_helper.c":42:9)
^bb64:
  %v257 = sea.ptr.index %v159 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_194"("seahorn/lib/string_helper.c":43:14))
  %v258 = sea.const 1 : i64 loc("_195"("seahorn/lib/string_helper.c":43:14))
  %v259 = sea.ptr.dereferenceable %v257, %v258 : !sea.ptr<64>, i64 loc("_195"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v259, ^bb65, ^bb177
^bb65:
  %v260 = sea.load %v167[%v257] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_197"("seahorn/lib/string_helper.c":43:14))
  %v261 = sea.const 0 : i8 loc("_198"("seahorn/lib/string_helper.c":43:21))
  %v262 = sea.icmp ne, %v260, %v261 : i8 loc("_198"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v262 loc("seahorn/lib/string_helper.c":43:7)
  %v263 = sea.const 12 : i64 loc("_199"("seahorn/lib/string_helper.c":42:11))
  %v264 = sea.icmp ugt, %v162, %v263 : i64 loc("_199"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v264, ^bb66, ^bb74 loc("seahorn/lib/string_helper.c":42:9)
^bb66:
  %v265 = sea.ptr.index %v159 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_201"("seahorn/lib/string_helper.c":43:14))
  %v266 = sea.const 1 : i64 loc("_202"("seahorn/lib/string_helper.c":43:14))
  %v267 = sea.ptr.dereferenceable %v265, %v266 : !sea.ptr<64>, i64 loc("_202"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v267, ^bb67, ^bb177
^bb67:
  %v268 = sea.load %v167[%v265] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_204"("seahorn/lib/string_helper.c":43:14))
  %v269 = sea.const 0 : i8 loc("_205"("seahorn/lib/string_helper.c":43:21))
  %v270 = sea.icmp ne, %v268, %v269 : i8 loc("_205"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v270 loc("seahorn/lib/string_helper.c":43:7)
  %v271 = sea.const 13 : i64 loc(".not103"("seahorn/lib/string_helper.c":42:11))
  %v272 = sea.icmp eq, %v162, %v271 : i64 loc(".not103"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v272, ^bb74, ^bb68 loc("seahorn/lib/string_helper.c":42:9)
^bb68:
  %v273 = sea.ptr.index %v159 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_207"("seahorn/lib/string_helper.c":43:14))
  %v274 = sea.const 1 : i64 loc("_208"("seahorn/lib/string_helper.c":43:14))
  %v275 = sea.ptr.dereferenceable %v273, %v274 : !sea.ptr<64>, i64 loc("_208"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v275, ^bb69, ^bb177
^bb69:
  %v276 = sea.load %v167[%v273] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_210"("seahorn/lib/string_helper.c":43:14))
  %v277 = sea.const 0 : i8 loc("_211"("seahorn/lib/string_helper.c":43:21))
  %v278 = sea.icmp ne, %v276, %v277 : i8 loc("_211"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v278 loc("seahorn/lib/string_helper.c":43:7)
  %v279 = sea.const 14 : i64 loc("_212"("seahorn/lib/string_helper.c":42:11))
  %v280 = sea.icmp ugt, %v162, %v279 : i64 loc("_212"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v280, ^bb70, ^bb74 loc("seahorn/lib/string_helper.c":42:9)
^bb70:
  %v281 = sea.ptr.index %v159 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_214"("seahorn/lib/string_helper.c":43:14))
  %v282 = sea.const 1 : i64 loc("_215"("seahorn/lib/string_helper.c":43:14))
  %v283 = sea.ptr.dereferenceable %v281, %v282 : !sea.ptr<64>, i64 loc("_215"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v283, ^bb71, ^bb177
^bb71:
  %v284 = sea.load %v167[%v281] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_217"("seahorn/lib/string_helper.c":43:14))
  %v285 = sea.const 0 : i8 loc("_218"("seahorn/lib/string_helper.c":43:21))
  %v286 = sea.icmp ne, %v284, %v285 : i8 loc("_218"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v286 loc("seahorn/lib/string_helper.c":43:7)
  %v287 = sea.const 15 : i64 loc(".not104"("seahorn/lib/string_helper.c":42:11))
  %v288 = sea.icmp eq, %v162, %v287 : i64 loc(".not104"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v288, ^bb74, ^bb72 loc("seahorn/lib/string_helper.c":42:9)
^bb72:
  %v289 = sea.ptr.index %v159 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_220"("seahorn/lib/string_helper.c":43:14))
  %v290 = sea.const 1 : i64 loc("_221"("seahorn/lib/string_helper.c":43:14))
  %v291 = sea.ptr.dereferenceable %v289, %v290 : !sea.ptr<64>, i64 loc("_221"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v291, ^bb73, ^bb177
^bb73:
  %v292 = sea.load %v167[%v289] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_223"("seahorn/lib/string_helper.c":43:14))
  %v293 = sea.const 0 : i8 loc("_224"("seahorn/lib/string_helper.c":43:21))
  %v294 = sea.icmp ne, %v292, %v293 : i8 loc("_224"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v294 loc("seahorn/lib/string_helper.c":43:7)
  sea.br ^bb74 loc("seahorn/lib/string_helper.c":44:5)
^bb74:
  sea.br ^bb75
^bb75:
  sea.br ^bb77(%v167, %v159 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/string_helper.c":70:3)
^bb76:
  %v295 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":63:9)
  sea.br ^bb77(%v147, %v295 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/string_helper.c":63:9)
^bb77(%v296 : !sea.mem<!sea.ptr<64>, i8>, %v297 : !sea.ptr<64>):
  %v298 = sea.ptr.null : !sea.ptr<64> loc("_227"("aws-c-common/include/aws/common/string.inl":48:16))
  %v299 = sea.ptr.cmp ne, %v148, %v298 : !sea.ptr<64> loc("_227"("aws-c-common/include/aws/common/string.inl":48:16))
  sea.assume %v299 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":52:3)
  %v300 = sea.ptr.null : !sea.ptr<64> loc("_228"("aws-c-common/include/aws/common/string.inl":48:16))
  %v301 = sea.ptr.cmp ne, %v297, %v300 : !sea.ptr<64> loc("_228"("aws-c-common/include/aws/common/string.inl":48:16))
  sea.assume %v301 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":53:3)
  %v302 = sea.ptr.index %v148 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_229"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:13))
  %v303 = sea.const 1 : i64 loc("_230"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v304 = sea.ptr.dereferenceable %v148, %v303 : !sea.ptr<64>, i64 loc("_230"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  sea.cond_br %v304, ^bb78, ^bb177
^bb78:
  %v305 = sea.load %v296[%v148] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_412"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v306 = sea.ptr.index %v297 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_413"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:13))
  %v307 = sea.const 1 : i64 loc("_414"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v308 = sea.ptr.dereferenceable %v297, %v307 : !sea.ptr<64>, i64 loc("_414"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  sea.cond_br %v308, ^bb79, ^bb177
^bb79:
  %v309 = sea.load %v296[%v297] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_416"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v310 = sea.const 0 : i8 loc("_417"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v311 = sea.icmp eq, %v305, %v310 : i8 loc("_417"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v312 = sea.const 0 : i8 loc("_418")
  %v313 = sea.icmp eq, %v309, %v312 : i8 loc("_418")
  %v314 = sea.const 0 : i1 loc("or.cond.i.i"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v315 = sea.select %v311, %v313, %v314 : i1 loc("or.cond.i.i"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v316 = sea.const 0 : i32 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
  sea.cond_br %v315, ^bb143(%v316 : i32), ^bb80 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
^bb80:
  %v317 = sea.icmp eq, %v305, %v309 : i8 loc(".not.i1.i"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:12))
  sea.cond_br %v317, ^bb81, ^bb141(%v309, %v305 : i8, i8) loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:9)
^bb81:
  %v318 = sea.ptr.index %v148 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_232"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:13))
  %v319 = sea.const 1 : i64 loc("_233"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v320 = sea.ptr.dereferenceable %v302, %v319 : !sea.ptr<64>, i64 loc("_233"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  sea.cond_br %v320, ^bb82, ^bb177
^bb82:
  %v321 = sea.load %v296[%v302] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_235"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v322 = sea.ptr.index %v297 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_236"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:13))
  %v323 = sea.const 1 : i64 loc("_237"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v324 = sea.ptr.dereferenceable %v306, %v323 : !sea.ptr<64>, i64 loc("_237"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  sea.cond_br %v324, ^bb83, ^bb177
^bb83:
  %v325 = sea.load %v296[%v306] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_239"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v326 = sea.const 0 : i8 loc("_240"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v327 = sea.icmp eq, %v321, %v326 : i8 loc("_240"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v328 = sea.const 0 : i8 loc("_241")
  %v329 = sea.icmp eq, %v325, %v328 : i8 loc("_241")
  %v330 = sea.const 0 : i1 loc("or.cond.i.i.1"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v331 = sea.select %v327, %v329, %v330 : i1 loc("or.cond.i.i.1"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v332 = sea.const 0 : i32 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
  sea.cond_br %v331, ^bb143(%v332 : i32), ^bb84 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
^bb84:
  %v333 = sea.icmp eq, %v321, %v325 : i8 loc(".not.i1.i.1"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:12))
  sea.cond_br %v333, ^bb85, ^bb141(%v325, %v321 : i8, i8) loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:9)
^bb85:
  %v334 = sea.ptr.index %v148 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_244"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:13))
  %v335 = sea.const 1 : i64 loc("_245"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v336 = sea.ptr.dereferenceable %v318, %v335 : !sea.ptr<64>, i64 loc("_245"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  sea.cond_br %v336, ^bb86, ^bb177
^bb86:
  %v337 = sea.load %v296[%v318] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_247"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v338 = sea.ptr.index %v297 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_248"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:13))
  %v339 = sea.const 1 : i64 loc("_249"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v340 = sea.ptr.dereferenceable %v322, %v339 : !sea.ptr<64>, i64 loc("_249"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  sea.cond_br %v340, ^bb87, ^bb177
^bb87:
  %v341 = sea.load %v296[%v322] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_251"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v342 = sea.const 0 : i8 loc("_252"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v343 = sea.icmp eq, %v337, %v342 : i8 loc("_252"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v344 = sea.const 0 : i8 loc("_253")
  %v345 = sea.icmp eq, %v341, %v344 : i8 loc("_253")
  %v346 = sea.const 0 : i1 loc("or.cond.i.i.2"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v347 = sea.select %v343, %v345, %v346 : i1 loc("or.cond.i.i.2"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v348 = sea.const 0 : i32 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
  sea.cond_br %v347, ^bb143(%v348 : i32), ^bb88 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
^bb88:
  %v349 = sea.icmp eq, %v337, %v341 : i8 loc(".not.i1.i.2"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:12))
  sea.cond_br %v349, ^bb89, ^bb141(%v341, %v337 : i8, i8) loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:9)
^bb89:
  %v350 = sea.ptr.index %v148 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_256"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:13))
  %v351 = sea.const 1 : i64 loc("_257"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v352 = sea.ptr.dereferenceable %v334, %v351 : !sea.ptr<64>, i64 loc("_257"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  sea.cond_br %v352, ^bb90, ^bb177
^bb90:
  %v353 = sea.load %v296[%v334] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_259"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v354 = sea.ptr.index %v297 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_260"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:13))
  %v355 = sea.const 1 : i64 loc("_261"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v356 = sea.ptr.dereferenceable %v338, %v355 : !sea.ptr<64>, i64 loc("_261"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  sea.cond_br %v356, ^bb91, ^bb177
^bb91:
  %v357 = sea.load %v296[%v338] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_263"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v358 = sea.const 0 : i8 loc("_264"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v359 = sea.icmp eq, %v353, %v358 : i8 loc("_264"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v360 = sea.const 0 : i8 loc("_265")
  %v361 = sea.icmp eq, %v357, %v360 : i8 loc("_265")
  %v362 = sea.const 0 : i1 loc("or.cond.i.i.3"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v363 = sea.select %v359, %v361, %v362 : i1 loc("or.cond.i.i.3"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v364 = sea.const 0 : i32 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
  sea.cond_br %v363, ^bb143(%v364 : i32), ^bb92 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
^bb92:
  %v365 = sea.icmp eq, %v353, %v357 : i8 loc(".not.i1.i.3"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:12))
  sea.cond_br %v365, ^bb93, ^bb141(%v357, %v353 : i8, i8) loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:9)
^bb93:
  %v366 = sea.ptr.index %v148 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_268"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:13))
  %v367 = sea.const 1 : i64 loc("_269"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v368 = sea.ptr.dereferenceable %v350, %v367 : !sea.ptr<64>, i64 loc("_269"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  sea.cond_br %v368, ^bb94, ^bb177
^bb94:
  %v369 = sea.load %v296[%v350] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_271"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v370 = sea.ptr.index %v297 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_272"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:13))
  %v371 = sea.const 1 : i64 loc("_273"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v372 = sea.ptr.dereferenceable %v354, %v371 : !sea.ptr<64>, i64 loc("_273"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  sea.cond_br %v372, ^bb95, ^bb177
^bb95:
  %v373 = sea.load %v296[%v354] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_275"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v374 = sea.const 0 : i8 loc("_276"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v375 = sea.icmp eq, %v369, %v374 : i8 loc("_276"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v376 = sea.const 0 : i8 loc("_277")
  %v377 = sea.icmp eq, %v373, %v376 : i8 loc("_277")
  %v378 = sea.const 0 : i1 loc("or.cond.i.i.4"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v379 = sea.select %v375, %v377, %v378 : i1 loc("or.cond.i.i.4"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v380 = sea.const 0 : i32 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
  sea.cond_br %v379, ^bb143(%v380 : i32), ^bb96 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
^bb96:
  %v381 = sea.icmp eq, %v369, %v373 : i8 loc(".not.i1.i.4"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:12))
  sea.cond_br %v381, ^bb97, ^bb141(%v373, %v369 : i8, i8) loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:9)
^bb97:
  %v382 = sea.ptr.index %v148 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_280"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:13))
  %v383 = sea.const 1 : i64 loc("_281"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v384 = sea.ptr.dereferenceable %v366, %v383 : !sea.ptr<64>, i64 loc("_281"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  sea.cond_br %v384, ^bb98, ^bb177
^bb98:
  %v385 = sea.load %v296[%v366] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_283"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v386 = sea.ptr.index %v297 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_284"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:13))
  %v387 = sea.const 1 : i64 loc("_285"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v388 = sea.ptr.dereferenceable %v370, %v387 : !sea.ptr<64>, i64 loc("_285"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  sea.cond_br %v388, ^bb99, ^bb177
^bb99:
  %v389 = sea.load %v296[%v370] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_287"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v390 = sea.const 0 : i8 loc("_288"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v391 = sea.icmp eq, %v385, %v390 : i8 loc("_288"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v392 = sea.const 0 : i8 loc("_289")
  %v393 = sea.icmp eq, %v389, %v392 : i8 loc("_289")
  %v394 = sea.const 0 : i1 loc("or.cond.i.i.5"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v395 = sea.select %v391, %v393, %v394 : i1 loc("or.cond.i.i.5"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v396 = sea.const 0 : i32 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
  sea.cond_br %v395, ^bb143(%v396 : i32), ^bb100 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
^bb100:
  %v397 = sea.icmp eq, %v385, %v389 : i8 loc(".not.i1.i.5"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:12))
  sea.cond_br %v397, ^bb101, ^bb141(%v389, %v385 : i8, i8) loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:9)
^bb101:
  %v398 = sea.ptr.index %v148 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_292"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:13))
  %v399 = sea.const 1 : i64 loc("_293"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v400 = sea.ptr.dereferenceable %v382, %v399 : !sea.ptr<64>, i64 loc("_293"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  sea.cond_br %v400, ^bb102, ^bb177
^bb102:
  %v401 = sea.load %v296[%v382] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_295"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v402 = sea.ptr.index %v297 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_296"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:13))
  %v403 = sea.const 1 : i64 loc("_297"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v404 = sea.ptr.dereferenceable %v386, %v403 : !sea.ptr<64>, i64 loc("_297"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  sea.cond_br %v404, ^bb103, ^bb177
^bb103:
  %v405 = sea.load %v296[%v386] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_299"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v406 = sea.const 0 : i8 loc("_300"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v407 = sea.icmp eq, %v401, %v406 : i8 loc("_300"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v408 = sea.const 0 : i8 loc("_301")
  %v409 = sea.icmp eq, %v405, %v408 : i8 loc("_301")
  %v410 = sea.const 0 : i1 loc("or.cond.i.i.6"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v411 = sea.select %v407, %v409, %v410 : i1 loc("or.cond.i.i.6"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v412 = sea.const 0 : i32 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
  sea.cond_br %v411, ^bb143(%v412 : i32), ^bb104 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
^bb104:
  %v413 = sea.icmp eq, %v401, %v405 : i8 loc(".not.i1.i.6"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:12))
  sea.cond_br %v413, ^bb105, ^bb141(%v405, %v401 : i8, i8) loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:9)
^bb105:
  %v414 = sea.ptr.index %v148 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_304"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:13))
  %v415 = sea.const 1 : i64 loc("_305"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v416 = sea.ptr.dereferenceable %v398, %v415 : !sea.ptr<64>, i64 loc("_305"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  sea.cond_br %v416, ^bb106, ^bb177
^bb106:
  %v417 = sea.load %v296[%v398] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_307"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v418 = sea.ptr.index %v297 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_308"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:13))
  %v419 = sea.const 1 : i64 loc("_309"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v420 = sea.ptr.dereferenceable %v402, %v419 : !sea.ptr<64>, i64 loc("_309"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  sea.cond_br %v420, ^bb107, ^bb177
^bb107:
  %v421 = sea.load %v296[%v402] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_311"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v422 = sea.const 0 : i8 loc("_312"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v423 = sea.icmp eq, %v417, %v422 : i8 loc("_312"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v424 = sea.const 0 : i8 loc("_313")
  %v425 = sea.icmp eq, %v421, %v424 : i8 loc("_313")
  %v426 = sea.const 0 : i1 loc("or.cond.i.i.7"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v427 = sea.select %v423, %v425, %v426 : i1 loc("or.cond.i.i.7"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v428 = sea.const 0 : i32 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
  sea.cond_br %v427, ^bb143(%v428 : i32), ^bb108 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
^bb108:
  %v429 = sea.icmp eq, %v417, %v421 : i8 loc(".not.i1.i.7"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:12))
  sea.cond_br %v429, ^bb109, ^bb141(%v421, %v417 : i8, i8) loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:9)
^bb109:
  %v430 = sea.ptr.index %v148 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_316"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:13))
  %v431 = sea.const 1 : i64 loc("_317"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v432 = sea.ptr.dereferenceable %v414, %v431 : !sea.ptr<64>, i64 loc("_317"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  sea.cond_br %v432, ^bb110, ^bb177
^bb110:
  %v433 = sea.load %v296[%v414] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_319"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v434 = sea.ptr.index %v297 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_320"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:13))
  %v435 = sea.const 1 : i64 loc("_321"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v436 = sea.ptr.dereferenceable %v418, %v435 : !sea.ptr<64>, i64 loc("_321"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  sea.cond_br %v436, ^bb111, ^bb177
^bb111:
  %v437 = sea.load %v296[%v418] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_323"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v438 = sea.const 0 : i8 loc("_324"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v439 = sea.icmp eq, %v433, %v438 : i8 loc("_324"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v440 = sea.const 0 : i8 loc("_325")
  %v441 = sea.icmp eq, %v437, %v440 : i8 loc("_325")
  %v442 = sea.const 0 : i1 loc("or.cond.i.i.8"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v443 = sea.select %v439, %v441, %v442 : i1 loc("or.cond.i.i.8"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v444 = sea.const 0 : i32 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
  sea.cond_br %v443, ^bb143(%v444 : i32), ^bb112 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
^bb112:
  %v445 = sea.icmp eq, %v433, %v437 : i8 loc(".not.i1.i.8"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:12))
  sea.cond_br %v445, ^bb113, ^bb141(%v437, %v433 : i8, i8) loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:9)
^bb113:
  %v446 = sea.ptr.index %v148 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_328"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:13))
  %v447 = sea.const 1 : i64 loc("_329"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v448 = sea.ptr.dereferenceable %v430, %v447 : !sea.ptr<64>, i64 loc("_329"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  sea.cond_br %v448, ^bb114, ^bb177
^bb114:
  %v449 = sea.load %v296[%v430] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_331"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v450 = sea.ptr.index %v297 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_332"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:13))
  %v451 = sea.const 1 : i64 loc("_333"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v452 = sea.ptr.dereferenceable %v434, %v451 : !sea.ptr<64>, i64 loc("_333"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  sea.cond_br %v452, ^bb115, ^bb177
^bb115:
  %v453 = sea.load %v296[%v434] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_335"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v454 = sea.const 0 : i8 loc("_336"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v455 = sea.icmp eq, %v449, %v454 : i8 loc("_336"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v456 = sea.const 0 : i8 loc("_337")
  %v457 = sea.icmp eq, %v453, %v456 : i8 loc("_337")
  %v458 = sea.const 0 : i1 loc("or.cond.i.i.9"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v459 = sea.select %v455, %v457, %v458 : i1 loc("or.cond.i.i.9"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v460 = sea.const 0 : i32 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
  sea.cond_br %v459, ^bb143(%v460 : i32), ^bb116 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
^bb116:
  %v461 = sea.icmp eq, %v449, %v453 : i8 loc(".not.i1.i.9"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:12))
  sea.cond_br %v461, ^bb117, ^bb141(%v453, %v449 : i8, i8) loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:9)
^bb117:
  %v462 = sea.ptr.index %v148 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_340"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:13))
  %v463 = sea.const 1 : i64 loc("_341"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v464 = sea.ptr.dereferenceable %v446, %v463 : !sea.ptr<64>, i64 loc("_341"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  sea.cond_br %v464, ^bb118, ^bb177
^bb118:
  %v465 = sea.load %v296[%v446] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_343"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v466 = sea.ptr.index %v297 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_344"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:13))
  %v467 = sea.const 1 : i64 loc("_345"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v468 = sea.ptr.dereferenceable %v450, %v467 : !sea.ptr<64>, i64 loc("_345"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  sea.cond_br %v468, ^bb119, ^bb177
^bb119:
  %v469 = sea.load %v296[%v450] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_347"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v470 = sea.const 0 : i8 loc("_348"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v471 = sea.icmp eq, %v465, %v470 : i8 loc("_348"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v472 = sea.const 0 : i8 loc("_349")
  %v473 = sea.icmp eq, %v469, %v472 : i8 loc("_349")
  %v474 = sea.const 0 : i1 loc("or.cond.i.i.10"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v475 = sea.select %v471, %v473, %v474 : i1 loc("or.cond.i.i.10"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v476 = sea.const 0 : i32 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
  sea.cond_br %v475, ^bb143(%v476 : i32), ^bb120 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
^bb120:
  %v477 = sea.icmp eq, %v465, %v469 : i8 loc(".not.i1.i.10"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:12))
  sea.cond_br %v477, ^bb121, ^bb141(%v469, %v465 : i8, i8) loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:9)
^bb121:
  %v478 = sea.ptr.index %v148 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_352"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:13))
  %v479 = sea.const 1 : i64 loc("_353"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v480 = sea.ptr.dereferenceable %v462, %v479 : !sea.ptr<64>, i64 loc("_353"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  sea.cond_br %v480, ^bb122, ^bb177
^bb122:
  %v481 = sea.load %v296[%v462] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_355"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v482 = sea.ptr.index %v297 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_356"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:13))
  %v483 = sea.const 1 : i64 loc("_357"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v484 = sea.ptr.dereferenceable %v466, %v483 : !sea.ptr<64>, i64 loc("_357"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  sea.cond_br %v484, ^bb123, ^bb177
^bb123:
  %v485 = sea.load %v296[%v466] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_359"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v486 = sea.const 0 : i8 loc("_360"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v487 = sea.icmp eq, %v481, %v486 : i8 loc("_360"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v488 = sea.const 0 : i8 loc("_361")
  %v489 = sea.icmp eq, %v485, %v488 : i8 loc("_361")
  %v490 = sea.const 0 : i1 loc("or.cond.i.i.11"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v491 = sea.select %v487, %v489, %v490 : i1 loc("or.cond.i.i.11"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v492 = sea.const 0 : i32 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
  sea.cond_br %v491, ^bb143(%v492 : i32), ^bb124 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
^bb124:
  %v493 = sea.icmp eq, %v481, %v485 : i8 loc(".not.i1.i.11"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:12))
  sea.cond_br %v493, ^bb125, ^bb141(%v485, %v481 : i8, i8) loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:9)
^bb125:
  %v494 = sea.ptr.index %v148 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_364"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:13))
  %v495 = sea.const 1 : i64 loc("_365"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v496 = sea.ptr.dereferenceable %v478, %v495 : !sea.ptr<64>, i64 loc("_365"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  sea.cond_br %v496, ^bb126, ^bb177
^bb126:
  %v497 = sea.load %v296[%v478] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_367"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v498 = sea.ptr.index %v297 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_368"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:13))
  %v499 = sea.const 1 : i64 loc("_369"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v500 = sea.ptr.dereferenceable %v482, %v499 : !sea.ptr<64>, i64 loc("_369"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  sea.cond_br %v500, ^bb127, ^bb177
^bb127:
  %v501 = sea.load %v296[%v482] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_371"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v502 = sea.const 0 : i8 loc("_372"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v503 = sea.icmp eq, %v497, %v502 : i8 loc("_372"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v504 = sea.const 0 : i8 loc("_373")
  %v505 = sea.icmp eq, %v501, %v504 : i8 loc("_373")
  %v506 = sea.const 0 : i1 loc("or.cond.i.i.12"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v507 = sea.select %v503, %v505, %v506 : i1 loc("or.cond.i.i.12"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v508 = sea.const 0 : i32 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
  sea.cond_br %v507, ^bb143(%v508 : i32), ^bb128 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
^bb128:
  %v509 = sea.icmp eq, %v497, %v501 : i8 loc(".not.i1.i.12"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:12))
  sea.cond_br %v509, ^bb129, ^bb141(%v501, %v497 : i8, i8) loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:9)
^bb129:
  %v510 = sea.ptr.index %v148 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_376"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:13))
  %v511 = sea.const 1 : i64 loc("_377"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v512 = sea.ptr.dereferenceable %v494, %v511 : !sea.ptr<64>, i64 loc("_377"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  sea.cond_br %v512, ^bb130, ^bb177
^bb130:
  %v513 = sea.load %v296[%v494] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_379"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v514 = sea.ptr.index %v297 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_380"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:13))
  %v515 = sea.const 1 : i64 loc("_381"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v516 = sea.ptr.dereferenceable %v498, %v515 : !sea.ptr<64>, i64 loc("_381"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  sea.cond_br %v516, ^bb131, ^bb177
^bb131:
  %v517 = sea.load %v296[%v498] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_383"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v518 = sea.const 0 : i8 loc("_384"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v519 = sea.icmp eq, %v513, %v518 : i8 loc("_384"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v520 = sea.const 0 : i8 loc("_385")
  %v521 = sea.icmp eq, %v517, %v520 : i8 loc("_385")
  %v522 = sea.const 0 : i1 loc("or.cond.i.i.13"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v523 = sea.select %v519, %v521, %v522 : i1 loc("or.cond.i.i.13"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v524 = sea.const 0 : i32 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
  sea.cond_br %v523, ^bb143(%v524 : i32), ^bb132 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
^bb132:
  %v525 = sea.icmp eq, %v513, %v517 : i8 loc(".not.i1.i.13"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:12))
  sea.cond_br %v525, ^bb133, ^bb141(%v517, %v513 : i8, i8) loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:9)
^bb133:
  %v526 = sea.ptr.index %v148 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_388"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:13))
  %v527 = sea.const 1 : i64 loc("_389"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v528 = sea.ptr.dereferenceable %v510, %v527 : !sea.ptr<64>, i64 loc("_389"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  sea.cond_br %v528, ^bb134, ^bb177
^bb134:
  %v529 = sea.load %v296[%v510] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_391"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v530 = sea.ptr.index %v297 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_392"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:13))
  %v531 = sea.const 1 : i64 loc("_393"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v532 = sea.ptr.dereferenceable %v514, %v531 : !sea.ptr<64>, i64 loc("_393"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  sea.cond_br %v532, ^bb135, ^bb177
^bb135:
  %v533 = sea.load %v296[%v514] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_395"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v534 = sea.const 0 : i8 loc("_396"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v535 = sea.icmp eq, %v529, %v534 : i8 loc("_396"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v536 = sea.const 0 : i8 loc("_397")
  %v537 = sea.icmp eq, %v533, %v536 : i8 loc("_397")
  %v538 = sea.const 0 : i1 loc("or.cond.i.i.14"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v539 = sea.select %v535, %v537, %v538 : i1 loc("or.cond.i.i.14"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v540 = sea.const 0 : i32 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
  sea.cond_br %v539, ^bb143(%v540 : i32), ^bb136 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
^bb136:
  %v541 = sea.icmp eq, %v529, %v533 : i8 loc(".not.i1.i.14"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:12))
  sea.cond_br %v541, ^bb137, ^bb141(%v533, %v529 : i8, i8) loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:9)
^bb137:
  %v542 = sea.const 1 : i64 loc("_400"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v543 = sea.ptr.dereferenceable %v526, %v542 : !sea.ptr<64>, i64 loc("_400"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  sea.cond_br %v543, ^bb138, ^bb177
^bb138:
  %v544 = sea.load %v296[%v526] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_402"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":30:10))
  %v545 = sea.const 1 : i64 loc("_403"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v546 = sea.ptr.dereferenceable %v530, %v545 : !sea.ptr<64>, i64 loc("_403"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  sea.cond_br %v546, ^bb139, ^bb177
^bb139:
  %v547 = sea.load %v296[%v530] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_405"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":31:10))
  %v548 = sea.const 0 : i8 loc("_406"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v549 = sea.icmp eq, %v544, %v548 : i8 loc("_406"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:12))
  %v550 = sea.const 0 : i8 loc("_407")
  %v551 = sea.icmp eq, %v547, %v550 : i8 loc("_407")
  %v552 = sea.const 0 : i1 loc("or.cond.i.i.15"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v553 = sea.select %v549, %v551, %v552 : i1 loc("or.cond.i.i.15"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20))
  %v554 = sea.const 0 : i32 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
  sea.cond_br %v553, ^bb143(%v554 : i32), ^bb140 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":32:20)
^bb140:
  %v555 = sea.icmp eq, %v544, %v547 : i8 loc(".not.i1.i.15"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:12))
  sea.cond_br %v555, ^bb142, ^bb141(%v547, %v544 : i8, i8) loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":34:9)
^bb141(%v556 : i8, %v557 : i8):
  %v558 = sea.zext %v557 : i8 to i32 loc("_421"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":35:14))
  %v559 = sea.zext %v556 : i8 to i32 loc("_422"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":35:19))
  %v560 = sea.sub %v558, %v559 nsw : i32 loc("_423"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":35:17))
  sea.br ^bb143(%v560 : i32) loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":35:7)
^bb142:
  %v561 = sea.nondet "nd_int_strcmp" [10] : i32 loc("_410"("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":37:10))
  sea.br ^bb143(%v561 : i32) loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":37:3)
^bb143(%v562 : i32):
  %v563 = sea.const 0 : i32 loc(".not.i.i"("aws-c-common/source/hash_table.c":1001:17))
  %v564 = sea.icmp eq, %v562, %v563 : i32 loc(".not.i.i"("aws-c-common/source/hash_table.c":1001:17))
  sea.assume %v564 loc("seahorn/jobs/hash_callback_c_str_eq/aws_hash_callback_c_str_eq_harness.c":56:7)
  %v565 = sea.const 1 : i64 loc("_424"("seahorn/lib/sea_string.cc":32:52))
  %v566 = sea.ptr.dereferenceable %v148, %v565 : !sea.ptr<64>, i64 loc("_424"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v566, ^bb144, ^bb177
^bb144:
  %v567 = sea.const 0 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v311, ^bb176(%v567 : i64), ^bb145 loc("seahorn/lib/sea_string.cc":12:9)
^bb145:
  %v568 = sea.const 1 : i64 loc("_426"("seahorn/lib/sea_string.cc":32:52))
  %v569 = sea.ptr.dereferenceable %v302, %v568 : !sea.ptr<64>, i64 loc("_426"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v569, ^bb146, ^bb177
^bb146:
  %v570 = sea.load %v296[%v302] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_427"("seahorn/lib/sea_string.cc":32:52))
  %v571 = sea.const 0 : i8 loc("_428"("seahorn/lib/sea_string.cc":32:59))
  %v572 = sea.icmp eq, %v570, %v571 : i8 loc("_428"("seahorn/lib/sea_string.cc":32:59))
  %v573 = sea.const 1 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v572, ^bb176(%v573 : i64), ^bb147 loc("seahorn/lib/sea_string.cc":12:9)
^bb147:
  %v574 = sea.ptr.index %v148 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_430"("seahorn/lib/sea_string.cc":32:52))
  %v575 = sea.const 1 : i64 loc("_431"("seahorn/lib/sea_string.cc":32:52))
  %v576 = sea.ptr.dereferenceable %v574, %v575 : !sea.ptr<64>, i64 loc("_431"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v576, ^bb148, ^bb177
^bb148:
  %v577 = sea.load %v296[%v574] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_432"("seahorn/lib/sea_string.cc":32:52))
  %v578 = sea.const 0 : i8 loc("_433"("seahorn/lib/sea_string.cc":32:59))
  %v579 = sea.icmp eq, %v577, %v578 : i8 loc("_433"("seahorn/lib/sea_string.cc":32:59))
  %v580 = sea.const 2 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v579, ^bb176(%v580 : i64), ^bb149 loc("seahorn/lib/sea_string.cc":12:9)
^bb149:
  %v581 = sea.ptr.index %v148 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_435"("seahorn/lib/sea_string.cc":32:52))
  %v582 = sea.const 1 : i64 loc("_436"("seahorn/lib/sea_string.cc":32:52))
  %v583 = sea.ptr.dereferenceable %v581, %v582 : !sea.ptr<64>, i64 loc("_436"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v583, ^bb150, ^bb177
^bb150:
  %v584 = sea.load %v296[%v581] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_437"("seahorn/lib/sea_string.cc":32:52))
  %v585 = sea.const 0 : i8 loc("_438"("seahorn/lib/sea_string.cc":32:59))
  %v586 = sea.icmp eq, %v584, %v585 : i8 loc("_438"("seahorn/lib/sea_string.cc":32:59))
  %v587 = sea.const 3 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v586, ^bb176(%v587 : i64), ^bb151 loc("seahorn/lib/sea_string.cc":12:9)
^bb151:
  %v588 = sea.ptr.index %v148 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_440"("seahorn/lib/sea_string.cc":32:52))
  %v589 = sea.const 1 : i64 loc("_441"("seahorn/lib/sea_string.cc":32:52))
  %v590 = sea.ptr.dereferenceable %v588, %v589 : !sea.ptr<64>, i64 loc("_441"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v590, ^bb152, ^bb177
^bb152:
  %v591 = sea.load %v296[%v588] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_442"("seahorn/lib/sea_string.cc":32:52))
  %v592 = sea.const 0 : i8 loc("_443"("seahorn/lib/sea_string.cc":32:59))
  %v593 = sea.icmp eq, %v591, %v592 : i8 loc("_443"("seahorn/lib/sea_string.cc":32:59))
  %v594 = sea.const 4 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v593, ^bb176(%v594 : i64), ^bb153 loc("seahorn/lib/sea_string.cc":12:9)
^bb153:
  %v595 = sea.ptr.index %v148 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_445"("seahorn/lib/sea_string.cc":32:52))
  %v596 = sea.const 1 : i64 loc("_446"("seahorn/lib/sea_string.cc":32:52))
  %v597 = sea.ptr.dereferenceable %v595, %v596 : !sea.ptr<64>, i64 loc("_446"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v597, ^bb154, ^bb177
^bb154:
  %v598 = sea.load %v296[%v595] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_447"("seahorn/lib/sea_string.cc":32:52))
  %v599 = sea.const 0 : i8 loc("_448"("seahorn/lib/sea_string.cc":32:59))
  %v600 = sea.icmp eq, %v598, %v599 : i8 loc("_448"("seahorn/lib/sea_string.cc":32:59))
  %v601 = sea.const 5 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v600, ^bb176(%v601 : i64), ^bb155 loc("seahorn/lib/sea_string.cc":12:9)
^bb155:
  %v602 = sea.ptr.index %v148 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_450"("seahorn/lib/sea_string.cc":32:52))
  %v603 = sea.const 1 : i64 loc("_451"("seahorn/lib/sea_string.cc":32:52))
  %v604 = sea.ptr.dereferenceable %v602, %v603 : !sea.ptr<64>, i64 loc("_451"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v604, ^bb156, ^bb177
^bb156:
  %v605 = sea.load %v296[%v602] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_452"("seahorn/lib/sea_string.cc":32:52))
  %v606 = sea.const 0 : i8 loc("_453"("seahorn/lib/sea_string.cc":32:59))
  %v607 = sea.icmp eq, %v605, %v606 : i8 loc("_453"("seahorn/lib/sea_string.cc":32:59))
  %v608 = sea.const 6 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v607, ^bb176(%v608 : i64), ^bb157 loc("seahorn/lib/sea_string.cc":12:9)
^bb157:
  %v609 = sea.ptr.index %v148 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_455"("seahorn/lib/sea_string.cc":32:52))
  %v610 = sea.const 1 : i64 loc("_456"("seahorn/lib/sea_string.cc":32:52))
  %v611 = sea.ptr.dereferenceable %v609, %v610 : !sea.ptr<64>, i64 loc("_456"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v611, ^bb158, ^bb177
^bb158:
  %v612 = sea.load %v296[%v609] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_457"("seahorn/lib/sea_string.cc":32:52))
  %v613 = sea.const 0 : i8 loc("_458"("seahorn/lib/sea_string.cc":32:59))
  %v614 = sea.icmp eq, %v612, %v613 : i8 loc("_458"("seahorn/lib/sea_string.cc":32:59))
  %v615 = sea.const 7 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v614, ^bb176(%v615 : i64), ^bb159 loc("seahorn/lib/sea_string.cc":12:9)
^bb159:
  %v616 = sea.ptr.index %v148 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_460"("seahorn/lib/sea_string.cc":32:52))
  %v617 = sea.const 1 : i64 loc("_461"("seahorn/lib/sea_string.cc":32:52))
  %v618 = sea.ptr.dereferenceable %v616, %v617 : !sea.ptr<64>, i64 loc("_461"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v618, ^bb160, ^bb177
^bb160:
  %v619 = sea.load %v296[%v616] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_462"("seahorn/lib/sea_string.cc":32:52))
  %v620 = sea.const 0 : i8 loc("_463"("seahorn/lib/sea_string.cc":32:59))
  %v621 = sea.icmp eq, %v619, %v620 : i8 loc("_463"("seahorn/lib/sea_string.cc":32:59))
  %v622 = sea.const 8 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v621, ^bb176(%v622 : i64), ^bb161 loc("seahorn/lib/sea_string.cc":12:9)
^bb161:
  %v623 = sea.ptr.index %v148 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_465"("seahorn/lib/sea_string.cc":32:52))
  %v624 = sea.const 1 : i64 loc("_466"("seahorn/lib/sea_string.cc":32:52))
  %v625 = sea.ptr.dereferenceable %v623, %v624 : !sea.ptr<64>, i64 loc("_466"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v625, ^bb162, ^bb177
^bb162:
  %v626 = sea.load %v296[%v623] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_467"("seahorn/lib/sea_string.cc":32:52))
  %v627 = sea.const 0 : i8 loc("_468"("seahorn/lib/sea_string.cc":32:59))
  %v628 = sea.icmp eq, %v626, %v627 : i8 loc("_468"("seahorn/lib/sea_string.cc":32:59))
  %v629 = sea.const 9 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v628, ^bb176(%v629 : i64), ^bb163 loc("seahorn/lib/sea_string.cc":12:9)
^bb163:
  %v630 = sea.ptr.index %v148 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_470"("seahorn/lib/sea_string.cc":32:52))
  %v631 = sea.const 1 : i64 loc("_471"("seahorn/lib/sea_string.cc":32:52))
  %v632 = sea.ptr.dereferenceable %v630, %v631 : !sea.ptr<64>, i64 loc("_471"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v632, ^bb164, ^bb177
^bb164:
  %v633 = sea.load %v296[%v630] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_472"("seahorn/lib/sea_string.cc":32:52))
  %v634 = sea.const 0 : i8 loc("_473"("seahorn/lib/sea_string.cc":32:59))
  %v635 = sea.icmp eq, %v633, %v634 : i8 loc("_473"("seahorn/lib/sea_string.cc":32:59))
  %v636 = sea.const 10 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v635, ^bb176(%v636 : i64), ^bb165 loc("seahorn/lib/sea_string.cc":12:9)
^bb165:
  %v637 = sea.ptr.index %v148 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_475"("seahorn/lib/sea_string.cc":32:52))
  %v638 = sea.const 1 : i64 loc("_476"("seahorn/lib/sea_string.cc":32:52))
  %v639 = sea.ptr.dereferenceable %v637, %v638 : !sea.ptr<64>, i64 loc("_476"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v639, ^bb166, ^bb177
^bb166:
  %v640 = sea.load %v296[%v637] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_477"("seahorn/lib/sea_string.cc":32:52))
  %v641 = sea.const 0 : i8 loc("_478"("seahorn/lib/sea_string.cc":32:59))
  %v642 = sea.icmp eq, %v640, %v641 : i8 loc("_478"("seahorn/lib/sea_string.cc":32:59))
  %v643 = sea.const 11 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v642, ^bb176(%v643 : i64), ^bb167 loc("seahorn/lib/sea_string.cc":12:9)
^bb167:
  %v644 = sea.ptr.index %v148 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_480"("seahorn/lib/sea_string.cc":32:52))
  %v645 = sea.const 1 : i64 loc("_481"("seahorn/lib/sea_string.cc":32:52))
  %v646 = sea.ptr.dereferenceable %v644, %v645 : !sea.ptr<64>, i64 loc("_481"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v646, ^bb168, ^bb177
^bb168:
  %v647 = sea.load %v296[%v644] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_482"("seahorn/lib/sea_string.cc":32:52))
  %v648 = sea.const 0 : i8 loc("_483"("seahorn/lib/sea_string.cc":32:59))
  %v649 = sea.icmp eq, %v647, %v648 : i8 loc("_483"("seahorn/lib/sea_string.cc":32:59))
  %v650 = sea.const 12 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v649, ^bb176(%v650 : i64), ^bb169 loc("seahorn/lib/sea_string.cc":12:9)
^bb169:
  %v651 = sea.ptr.index %v148 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_485"("seahorn/lib/sea_string.cc":32:52))
  %v652 = sea.const 1 : i64 loc("_486"("seahorn/lib/sea_string.cc":32:52))
  %v653 = sea.ptr.dereferenceable %v651, %v652 : !sea.ptr<64>, i64 loc("_486"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v653, ^bb170, ^bb177
^bb170:
  %v654 = sea.load %v296[%v651] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_487"("seahorn/lib/sea_string.cc":32:52))
  %v655 = sea.const 0 : i8 loc("_488"("seahorn/lib/sea_string.cc":32:59))
  %v656 = sea.icmp eq, %v654, %v655 : i8 loc("_488"("seahorn/lib/sea_string.cc":32:59))
  %v657 = sea.const 13 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v656, ^bb176(%v657 : i64), ^bb171 loc("seahorn/lib/sea_string.cc":12:9)
^bb171:
  %v658 = sea.ptr.index %v148 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_490"("seahorn/lib/sea_string.cc":32:52))
  %v659 = sea.const 1 : i64 loc("_491"("seahorn/lib/sea_string.cc":32:52))
  %v660 = sea.ptr.dereferenceable %v658, %v659 : !sea.ptr<64>, i64 loc("_491"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v660, ^bb172, ^bb177
^bb172:
  %v661 = sea.load %v296[%v658] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_492"("seahorn/lib/sea_string.cc":32:52))
  %v662 = sea.const 0 : i8 loc("_493"("seahorn/lib/sea_string.cc":32:59))
  %v663 = sea.icmp eq, %v661, %v662 : i8 loc("_493"("seahorn/lib/sea_string.cc":32:59))
  %v664 = sea.const 14 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v663, ^bb176(%v664 : i64), ^bb173 loc("seahorn/lib/sea_string.cc":12:9)
^bb173:
  %v665 = sea.ptr.index %v148 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_495"("seahorn/lib/sea_string.cc":32:52))
  %v666 = sea.const 1 : i64 loc("_496"("seahorn/lib/sea_string.cc":32:52))
  %v667 = sea.ptr.dereferenceable %v665, %v666 : !sea.ptr<64>, i64 loc("_496"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v667, ^bb174, ^bb177
^bb174:
  %v668 = sea.load %v296[%v665] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_497"("seahorn/lib/sea_string.cc":32:52))
  %v669 = sea.const 0 : i8 loc("_498"("seahorn/lib/sea_string.cc":32:59))
  %v670 = sea.icmp eq, %v668, %v669 : i8 loc("_498"("seahorn/lib/sea_string.cc":32:59))
  %v671 = sea.const 15 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v670, ^bb176(%v671 : i64), ^bb175 loc("seahorn/lib/sea_string.cc":12:9)
^bb175:
  %v672 = sea.const 16 : i64 loc("seahorn/lib/sea_string.cc":14:5)
  sea.br ^bb176(%v672 : i64) loc("seahorn/lib/sea_string.cc":14:5)
^bb176(%v673 : i64):
  %v674 = sea.or %v301, %v311 : i1 loc("_500"("seahorn/lib/utils.c":15:3))
  %v675 = sea.const 1 : i1 loc("_501")
  %v676 = sea.xor %v311, %v675 : i1 loc("_501")
  %v677 = sea.and %v301, %v676 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.assume %v677 loc("seahorn/lib/utils.c":16:15)
  %v678 = sea.nondet "nd_size_t" [11] : i64 loc("_502"("seahorn/lib/utils.c":17:16))
  %v679 = sea.icmp ult, %v678, %v673 : i64 loc("_503"("seahorn/lib/utils.c":19:14))
  sea.assume %v679 loc("seahorn/lib/utils.c":19:5)
  %v680 = sea.ptr.index %v148 [%v678] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_504"("seahorn/lib/utils.c":20:5))
  %v681 = sea.load %v296[%v680] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_505"("seahorn/lib/utils.c":20:5))
  %v682 = sea.ptr.index %v297 [%v678] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_506"("seahorn/lib/utils.c":20:5))
  %v683 = sea.load %v296[%v682] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_507"("seahorn/lib/utils.c":20:5))
  %v684 = sea.icmp eq, %v681, %v683 : i8 loc("_508"("seahorn/lib/utils.c":20:5))
  %v685 = sea.const 1 : i1 loc("seahorn/lib/utils.c":20:5)
  %v686 = sea.xor %v684, %v685 : i1 loc("seahorn/lib/utils.c":20:5)
  sea.assume %v686 loc("seahorn/lib/utils.c":20:5)
  sea.br ^bb177 loc("seahorn/lib/utils.c":20:5)
^bb177:
  sea.br ^bb178
^bb178:
  %v687 = sea.const 0 : i1
  sea.assert %v687
  sea.halt
}
