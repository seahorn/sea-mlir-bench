// Exported from SeaHorn (byte_cursor_from_c_str.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm2")
  %v1 = sea.nondet "nd_size_t" [1] : i64 loc("_0"("seahorn/lib/string_helper.c":51:16))
  %v2 = sea.const 0 : i64 loc("_1"("seahorn/lib/string_helper.c":53:21))
  %v3 = sea.icmp ne, %v1, %v2 : i64 loc("_1"("seahorn/lib/string_helper.c":53:21))
  sea.assume %v3 loc("seahorn/lib/string_helper.c":53:3)
  %v4 = sea.const 11 : i64 loc("_2"("seahorn/lib/string_helper.c":54:21))
  %v5 = sea.icmp ult, %v1, %v4 : i64 loc("_2"("seahorn/lib/string_helper.c":54:21))
  sea.assume %v5 loc("seahorn/lib/string_helper.c":54:3)
  %v6 = sea.const 1 : i1 loc("seahorn/lib/string_helper.c":55:3)
  sea.assume %v6 loc("seahorn/lib/string_helper.c":55:3)
  %v7 = sea.nondet "nd_malloc_is_fail" [2] : i1 loc("_3"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v7, ^bb36, ^bb1 loc("seahorn/lib/sea_allocators.c":11:10)
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
  sea.cond_br %v16, ^bb2, ^bb88
^bb2:
  %v17 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":39:16)
  %v18 = sea.store %v11[%v14], %v17 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":39:16)
  %v19 = sea.const 0 : i64 loc(".not"("seahorn/lib/string_helper.c":42:11))
  %v20 = sea.icmp eq, %v13, %v19 : i64 loc(".not"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v20, ^bb35, ^bb3 loc("seahorn/lib/string_helper.c":42:9)
^bb3:
  %v21 = sea.const 1 : i64 loc("_10"("seahorn/lib/string_helper.c":43:14))
  %v22 = sea.ptr.dereferenceable %v10, %v21 : !sea.ptr<64>, i64 loc("_10"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v22, ^bb4, ^bb88
^bb4:
  %v23 = sea.load %v18[%v10] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_12"("seahorn/lib/string_helper.c":43:14))
  %v24 = sea.const 0 : i8 loc("_13"("seahorn/lib/string_helper.c":43:21))
  %v25 = sea.icmp ne, %v23, %v24 : i8 loc("_13"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v25 loc("seahorn/lib/string_helper.c":43:7)
  %v26 = sea.const 1 : i64 loc(".not28"("seahorn/lib/string_helper.c":42:11))
  %v27 = sea.icmp eq, %v13, %v26 : i64 loc(".not28"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v27, ^bb35, ^bb5 loc("seahorn/lib/string_helper.c":42:9)
^bb5:
  %v28 = sea.ptr.index %v10 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_15"("seahorn/lib/string_helper.c":43:14))
  %v29 = sea.const 1 : i64 loc("_16"("seahorn/lib/string_helper.c":43:14))
  %v30 = sea.ptr.dereferenceable %v28, %v29 : !sea.ptr<64>, i64 loc("_16"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v30, ^bb6, ^bb88
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
  sea.cond_br %v38, ^bb8, ^bb88
^bb8:
  %v39 = sea.load %v18[%v36] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_25"("seahorn/lib/string_helper.c":43:14))
  %v40 = sea.const 0 : i8 loc("_26"("seahorn/lib/string_helper.c":43:21))
  %v41 = sea.icmp ne, %v39, %v40 : i8 loc("_26"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v41 loc("seahorn/lib/string_helper.c":43:7)
  %v42 = sea.const 3 : i64 loc(".not29"("seahorn/lib/string_helper.c":42:11))
  %v43 = sea.icmp eq, %v13, %v42 : i64 loc(".not29"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v43, ^bb35, ^bb9 loc("seahorn/lib/string_helper.c":42:9)
^bb9:
  %v44 = sea.ptr.index %v10 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_28"("seahorn/lib/string_helper.c":43:14))
  %v45 = sea.const 1 : i64 loc("_29"("seahorn/lib/string_helper.c":43:14))
  %v46 = sea.ptr.dereferenceable %v44, %v45 : !sea.ptr<64>, i64 loc("_29"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v46, ^bb10, ^bb88
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
  sea.cond_br %v54, ^bb12, ^bb88
^bb12:
  %v55 = sea.load %v18[%v52] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_38"("seahorn/lib/string_helper.c":43:14))
  %v56 = sea.const 0 : i8 loc("_39"("seahorn/lib/string_helper.c":43:21))
  %v57 = sea.icmp ne, %v55, %v56 : i8 loc("_39"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v57 loc("seahorn/lib/string_helper.c":43:7)
  %v58 = sea.const 5 : i64 loc(".not30"("seahorn/lib/string_helper.c":42:11))
  %v59 = sea.icmp eq, %v13, %v58 : i64 loc(".not30"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v59, ^bb35, ^bb13 loc("seahorn/lib/string_helper.c":42:9)
^bb13:
  %v60 = sea.ptr.index %v10 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_41"("seahorn/lib/string_helper.c":43:14))
  %v61 = sea.const 1 : i64 loc("_42"("seahorn/lib/string_helper.c":43:14))
  %v62 = sea.ptr.dereferenceable %v60, %v61 : !sea.ptr<64>, i64 loc("_42"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v62, ^bb14, ^bb88
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
  sea.cond_br %v70, ^bb16, ^bb88
^bb16:
  %v71 = sea.load %v18[%v68] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_51"("seahorn/lib/string_helper.c":43:14))
  %v72 = sea.const 0 : i8 loc("_52"("seahorn/lib/string_helper.c":43:21))
  %v73 = sea.icmp ne, %v71, %v72 : i8 loc("_52"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v73 loc("seahorn/lib/string_helper.c":43:7)
  %v74 = sea.const 7 : i64 loc(".not31"("seahorn/lib/string_helper.c":42:11))
  %v75 = sea.icmp eq, %v13, %v74 : i64 loc(".not31"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v75, ^bb35, ^bb17 loc("seahorn/lib/string_helper.c":42:9)
^bb17:
  %v76 = sea.ptr.index %v10 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_54"("seahorn/lib/string_helper.c":43:14))
  %v77 = sea.const 1 : i64 loc("_55"("seahorn/lib/string_helper.c":43:14))
  %v78 = sea.ptr.dereferenceable %v76, %v77 : !sea.ptr<64>, i64 loc("_55"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v78, ^bb18, ^bb88
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
  sea.cond_br %v86, ^bb20, ^bb88
^bb20:
  %v87 = sea.load %v18[%v84] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_64"("seahorn/lib/string_helper.c":43:14))
  %v88 = sea.const 0 : i8 loc("_65"("seahorn/lib/string_helper.c":43:21))
  %v89 = sea.icmp ne, %v87, %v88 : i8 loc("_65"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v89 loc("seahorn/lib/string_helper.c":43:7)
  %v90 = sea.const 9 : i64 loc(".not32"("seahorn/lib/string_helper.c":42:11))
  %v91 = sea.icmp eq, %v13, %v90 : i64 loc(".not32"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v91, ^bb35, ^bb21 loc("seahorn/lib/string_helper.c":42:9)
^bb21:
  %v92 = sea.ptr.index %v10 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_67"("seahorn/lib/string_helper.c":43:14))
  %v93 = sea.const 1 : i64 loc("_68"("seahorn/lib/string_helper.c":43:14))
  %v94 = sea.ptr.dereferenceable %v92, %v93 : !sea.ptr<64>, i64 loc("_68"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v94, ^bb22, ^bb88
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
  sea.cond_br %v102, ^bb24, ^bb88
^bb24:
  %v103 = sea.load %v18[%v100] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_77"("seahorn/lib/string_helper.c":43:14))
  %v104 = sea.const 0 : i8 loc("_78"("seahorn/lib/string_helper.c":43:21))
  %v105 = sea.icmp ne, %v103, %v104 : i8 loc("_78"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v105 loc("seahorn/lib/string_helper.c":43:7)
  %v106 = sea.const 11 : i64 loc(".not33"("seahorn/lib/string_helper.c":42:11))
  %v107 = sea.icmp eq, %v13, %v106 : i64 loc(".not33"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v107, ^bb35, ^bb25 loc("seahorn/lib/string_helper.c":42:9)
^bb25:
  %v108 = sea.ptr.index %v10 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_80"("seahorn/lib/string_helper.c":43:14))
  %v109 = sea.const 1 : i64 loc("_81"("seahorn/lib/string_helper.c":43:14))
  %v110 = sea.ptr.dereferenceable %v108, %v109 : !sea.ptr<64>, i64 loc("_81"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v110, ^bb26, ^bb88
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
  sea.cond_br %v118, ^bb28, ^bb88
^bb28:
  %v119 = sea.load %v18[%v116] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_90"("seahorn/lib/string_helper.c":43:14))
  %v120 = sea.const 0 : i8 loc("_91"("seahorn/lib/string_helper.c":43:21))
  %v121 = sea.icmp ne, %v119, %v120 : i8 loc("_91"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v121 loc("seahorn/lib/string_helper.c":43:7)
  %v122 = sea.const 13 : i64 loc(".not34"("seahorn/lib/string_helper.c":42:11))
  %v123 = sea.icmp eq, %v13, %v122 : i64 loc(".not34"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v123, ^bb35, ^bb29 loc("seahorn/lib/string_helper.c":42:9)
^bb29:
  %v124 = sea.ptr.index %v10 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_93"("seahorn/lib/string_helper.c":43:14))
  %v125 = sea.const 1 : i64 loc("_94"("seahorn/lib/string_helper.c":43:14))
  %v126 = sea.ptr.dereferenceable %v124, %v125 : !sea.ptr<64>, i64 loc("_94"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v126, ^bb30, ^bb88
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
  sea.cond_br %v134, ^bb32, ^bb88
^bb32:
  %v135 = sea.load %v18[%v132] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_103"("seahorn/lib/string_helper.c":43:14))
  %v136 = sea.const 0 : i8 loc("_104"("seahorn/lib/string_helper.c":43:21))
  %v137 = sea.icmp ne, %v135, %v136 : i8 loc("_104"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v137 loc("seahorn/lib/string_helper.c":43:7)
  %v138 = sea.const 15 : i64 loc(".not35"("seahorn/lib/string_helper.c":42:11))
  %v139 = sea.icmp eq, %v13, %v138 : i64 loc(".not35"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v139, ^bb35, ^bb33 loc("seahorn/lib/string_helper.c":42:9)
^bb33:
  %v140 = sea.ptr.index %v10 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_106"("seahorn/lib/string_helper.c":43:14))
  %v141 = sea.const 1 : i64 loc("_107"("seahorn/lib/string_helper.c":43:14))
  %v142 = sea.ptr.dereferenceable %v140, %v141 : !sea.ptr<64>, i64 loc("_107"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v142, ^bb34, ^bb88
^bb34:
  %v143 = sea.load %v18[%v140] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_109"("seahorn/lib/string_helper.c":43:14))
  %v144 = sea.const 0 : i8 loc("_110"("seahorn/lib/string_helper.c":43:21))
  %v145 = sea.icmp ne, %v143, %v144 : i8 loc("_110"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v145 loc("seahorn/lib/string_helper.c":43:7)
  sea.br ^bb35 loc("seahorn/lib/string_helper.c":44:5)
^bb35:
  sea.br ^bb37(%v18, %v13, %v10 : !sea.mem<!sea.ptr<64>, i8>, i64, !sea.ptr<64>)
^bb36:
  %v146 = sea.nondet "undef" [5] : i64 loc("seahorn/lib/string_helper.c":63:9)
  %v147 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":63:9)
  sea.br ^bb37(%v0, %v146, %v147 : !sea.mem<!sea.ptr<64>, i8>, i64, !sea.ptr<64>) loc("seahorn/lib/string_helper.c":63:9)
^bb37(%v148 : !sea.mem<!sea.ptr<64>, i8>, %v149 : i64, %v150 : !sea.ptr<64>):
  %v151 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("aws-c-common/source/byte_buf.c":994:15))
  %v152 = sea.ptr.cmp ne, %v150, %v151 : !sea.ptr<64> loc(".not.i.i"("aws-c-common/source/byte_buf.c":994:15))
  %v153 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":994:15)
  %v154 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":994:15)
  %v155 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":994:15)
  sea.cond_br %v152, ^bb38, ^bb71(%v153, %v154, %v155 : i1, i1, i64) loc("aws-c-common/source/byte_buf.c":994:15)
^bb38:
  %v156 = sea.const 1 : i64 loc("_113"("seahorn/lib/sea_string.cc":32:52))
  %v157 = sea.ptr.dereferenceable %v150, %v156 : !sea.ptr<64>, i64 loc("_113"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v157, ^bb39, ^bb88
^bb39:
  %v158 = sea.load %v148[%v150] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_114"("seahorn/lib/sea_string.cc":32:52))
  %v159 = sea.const 0 : i8 loc("_115"("seahorn/lib/sea_string.cc":32:59))
  %v160 = sea.icmp eq, %v158, %v159 : i8 loc("_115"("seahorn/lib/sea_string.cc":32:59))
  %v161 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v162 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v163 = sea.const 0 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v160, ^bb71(%v161, %v162, %v163 : i1, i1, i64), ^bb40 loc("seahorn/lib/sea_string.cc":12:9)
^bb40:
  %v164 = sea.ptr.index %v150 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_117"("seahorn/lib/sea_string.cc":32:52))
  %v165 = sea.const 1 : i64 loc("_118"("seahorn/lib/sea_string.cc":32:52))
  %v166 = sea.ptr.dereferenceable %v164, %v165 : !sea.ptr<64>, i64 loc("_118"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v166, ^bb41, ^bb88
^bb41:
  %v167 = sea.load %v148[%v164] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_119"("seahorn/lib/sea_string.cc":32:52))
  %v168 = sea.const 0 : i8 loc("_120"("seahorn/lib/sea_string.cc":32:59))
  %v169 = sea.icmp eq, %v167, %v168 : i8 loc("_120"("seahorn/lib/sea_string.cc":32:59))
  %v170 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v171 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v172 = sea.const 1 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v169, ^bb71(%v170, %v171, %v172 : i1, i1, i64), ^bb42 loc("seahorn/lib/sea_string.cc":12:9)
^bb42:
  %v173 = sea.ptr.index %v150 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_122"("seahorn/lib/sea_string.cc":32:52))
  %v174 = sea.const 1 : i64 loc("_123"("seahorn/lib/sea_string.cc":32:52))
  %v175 = sea.ptr.dereferenceable %v173, %v174 : !sea.ptr<64>, i64 loc("_123"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v175, ^bb43, ^bb88
^bb43:
  %v176 = sea.load %v148[%v173] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_124"("seahorn/lib/sea_string.cc":32:52))
  %v177 = sea.const 0 : i8 loc("_125"("seahorn/lib/sea_string.cc":32:59))
  %v178 = sea.icmp eq, %v176, %v177 : i8 loc("_125"("seahorn/lib/sea_string.cc":32:59))
  %v179 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v180 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v181 = sea.const 2 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v178, ^bb71(%v179, %v180, %v181 : i1, i1, i64), ^bb44 loc("seahorn/lib/sea_string.cc":12:9)
^bb44:
  %v182 = sea.ptr.index %v150 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_127"("seahorn/lib/sea_string.cc":32:52))
  %v183 = sea.const 1 : i64 loc("_128"("seahorn/lib/sea_string.cc":32:52))
  %v184 = sea.ptr.dereferenceable %v182, %v183 : !sea.ptr<64>, i64 loc("_128"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v184, ^bb45, ^bb88
^bb45:
  %v185 = sea.load %v148[%v182] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_129"("seahorn/lib/sea_string.cc":32:52))
  %v186 = sea.const 0 : i8 loc("_130"("seahorn/lib/sea_string.cc":32:59))
  %v187 = sea.icmp eq, %v185, %v186 : i8 loc("_130"("seahorn/lib/sea_string.cc":32:59))
  %v188 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v189 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v190 = sea.const 3 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v187, ^bb71(%v188, %v189, %v190 : i1, i1, i64), ^bb46 loc("seahorn/lib/sea_string.cc":12:9)
^bb46:
  %v191 = sea.ptr.index %v150 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_132"("seahorn/lib/sea_string.cc":32:52))
  %v192 = sea.const 1 : i64 loc("_133"("seahorn/lib/sea_string.cc":32:52))
  %v193 = sea.ptr.dereferenceable %v191, %v192 : !sea.ptr<64>, i64 loc("_133"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v193, ^bb47, ^bb88
^bb47:
  %v194 = sea.load %v148[%v191] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_134"("seahorn/lib/sea_string.cc":32:52))
  %v195 = sea.const 0 : i8 loc("_135"("seahorn/lib/sea_string.cc":32:59))
  %v196 = sea.icmp eq, %v194, %v195 : i8 loc("_135"("seahorn/lib/sea_string.cc":32:59))
  %v197 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v198 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v199 = sea.const 4 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v196, ^bb71(%v197, %v198, %v199 : i1, i1, i64), ^bb48 loc("seahorn/lib/sea_string.cc":12:9)
^bb48:
  %v200 = sea.ptr.index %v150 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_137"("seahorn/lib/sea_string.cc":32:52))
  %v201 = sea.const 1 : i64 loc("_138"("seahorn/lib/sea_string.cc":32:52))
  %v202 = sea.ptr.dereferenceable %v200, %v201 : !sea.ptr<64>, i64 loc("_138"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v202, ^bb49, ^bb88
^bb49:
  %v203 = sea.load %v148[%v200] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_139"("seahorn/lib/sea_string.cc":32:52))
  %v204 = sea.const 0 : i8 loc("_140"("seahorn/lib/sea_string.cc":32:59))
  %v205 = sea.icmp eq, %v203, %v204 : i8 loc("_140"("seahorn/lib/sea_string.cc":32:59))
  %v206 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v207 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v208 = sea.const 5 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v205, ^bb71(%v206, %v207, %v208 : i1, i1, i64), ^bb50 loc("seahorn/lib/sea_string.cc":12:9)
^bb50:
  %v209 = sea.ptr.index %v150 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_142"("seahorn/lib/sea_string.cc":32:52))
  %v210 = sea.const 1 : i64 loc("_143"("seahorn/lib/sea_string.cc":32:52))
  %v211 = sea.ptr.dereferenceable %v209, %v210 : !sea.ptr<64>, i64 loc("_143"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v211, ^bb51, ^bb88
^bb51:
  %v212 = sea.load %v148[%v209] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_144"("seahorn/lib/sea_string.cc":32:52))
  %v213 = sea.const 0 : i8 loc("_145"("seahorn/lib/sea_string.cc":32:59))
  %v214 = sea.icmp eq, %v212, %v213 : i8 loc("_145"("seahorn/lib/sea_string.cc":32:59))
  %v215 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v216 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v217 = sea.const 6 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v214, ^bb71(%v215, %v216, %v217 : i1, i1, i64), ^bb52 loc("seahorn/lib/sea_string.cc":12:9)
^bb52:
  %v218 = sea.ptr.index %v150 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_147"("seahorn/lib/sea_string.cc":32:52))
  %v219 = sea.const 1 : i64 loc("_148"("seahorn/lib/sea_string.cc":32:52))
  %v220 = sea.ptr.dereferenceable %v218, %v219 : !sea.ptr<64>, i64 loc("_148"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v220, ^bb53, ^bb88
^bb53:
  %v221 = sea.load %v148[%v218] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_149"("seahorn/lib/sea_string.cc":32:52))
  %v222 = sea.const 0 : i8 loc("_150"("seahorn/lib/sea_string.cc":32:59))
  %v223 = sea.icmp eq, %v221, %v222 : i8 loc("_150"("seahorn/lib/sea_string.cc":32:59))
  %v224 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v225 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v226 = sea.const 7 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v223, ^bb71(%v224, %v225, %v226 : i1, i1, i64), ^bb54 loc("seahorn/lib/sea_string.cc":12:9)
^bb54:
  %v227 = sea.ptr.index %v150 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_152"("seahorn/lib/sea_string.cc":32:52))
  %v228 = sea.const 1 : i64 loc("_153"("seahorn/lib/sea_string.cc":32:52))
  %v229 = sea.ptr.dereferenceable %v227, %v228 : !sea.ptr<64>, i64 loc("_153"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v229, ^bb55, ^bb88
^bb55:
  %v230 = sea.load %v148[%v227] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_154"("seahorn/lib/sea_string.cc":32:52))
  %v231 = sea.const 0 : i8 loc("_155"("seahorn/lib/sea_string.cc":32:59))
  %v232 = sea.icmp eq, %v230, %v231 : i8 loc("_155"("seahorn/lib/sea_string.cc":32:59))
  %v233 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v234 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v235 = sea.const 8 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v232, ^bb71(%v233, %v234, %v235 : i1, i1, i64), ^bb56 loc("seahorn/lib/sea_string.cc":12:9)
^bb56:
  %v236 = sea.ptr.index %v150 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_157"("seahorn/lib/sea_string.cc":32:52))
  %v237 = sea.const 1 : i64 loc("_158"("seahorn/lib/sea_string.cc":32:52))
  %v238 = sea.ptr.dereferenceable %v236, %v237 : !sea.ptr<64>, i64 loc("_158"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v238, ^bb57, ^bb88
^bb57:
  %v239 = sea.load %v148[%v236] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_159"("seahorn/lib/sea_string.cc":32:52))
  %v240 = sea.const 0 : i8 loc("_160"("seahorn/lib/sea_string.cc":32:59))
  %v241 = sea.icmp eq, %v239, %v240 : i8 loc("_160"("seahorn/lib/sea_string.cc":32:59))
  %v242 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v243 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v244 = sea.const 9 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v241, ^bb71(%v242, %v243, %v244 : i1, i1, i64), ^bb58 loc("seahorn/lib/sea_string.cc":12:9)
^bb58:
  %v245 = sea.ptr.index %v150 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_162"("seahorn/lib/sea_string.cc":32:52))
  %v246 = sea.const 1 : i64 loc("_163"("seahorn/lib/sea_string.cc":32:52))
  %v247 = sea.ptr.dereferenceable %v245, %v246 : !sea.ptr<64>, i64 loc("_163"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v247, ^bb59, ^bb88
^bb59:
  %v248 = sea.load %v148[%v245] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_164"("seahorn/lib/sea_string.cc":32:52))
  %v249 = sea.const 0 : i8 loc("_165"("seahorn/lib/sea_string.cc":32:59))
  %v250 = sea.icmp eq, %v248, %v249 : i8 loc("_165"("seahorn/lib/sea_string.cc":32:59))
  %v251 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v252 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v253 = sea.const 10 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v250, ^bb71(%v251, %v252, %v253 : i1, i1, i64), ^bb60 loc("seahorn/lib/sea_string.cc":12:9)
^bb60:
  %v254 = sea.ptr.index %v150 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_167"("seahorn/lib/sea_string.cc":32:52))
  %v255 = sea.const 1 : i64 loc("_168"("seahorn/lib/sea_string.cc":32:52))
  %v256 = sea.ptr.dereferenceable %v254, %v255 : !sea.ptr<64>, i64 loc("_168"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v256, ^bb61, ^bb88
^bb61:
  %v257 = sea.load %v148[%v254] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_169"("seahorn/lib/sea_string.cc":32:52))
  %v258 = sea.const 0 : i8 loc("_170"("seahorn/lib/sea_string.cc":32:59))
  %v259 = sea.icmp eq, %v257, %v258 : i8 loc("_170"("seahorn/lib/sea_string.cc":32:59))
  %v260 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v261 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v262 = sea.const 11 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v259, ^bb71(%v260, %v261, %v262 : i1, i1, i64), ^bb62 loc("seahorn/lib/sea_string.cc":12:9)
^bb62:
  %v263 = sea.ptr.index %v150 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_172"("seahorn/lib/sea_string.cc":32:52))
  %v264 = sea.const 1 : i64 loc("_173"("seahorn/lib/sea_string.cc":32:52))
  %v265 = sea.ptr.dereferenceable %v263, %v264 : !sea.ptr<64>, i64 loc("_173"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v265, ^bb63, ^bb88
^bb63:
  %v266 = sea.load %v148[%v263] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_174"("seahorn/lib/sea_string.cc":32:52))
  %v267 = sea.const 0 : i8 loc("_175"("seahorn/lib/sea_string.cc":32:59))
  %v268 = sea.icmp eq, %v266, %v267 : i8 loc("_175"("seahorn/lib/sea_string.cc":32:59))
  %v269 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v270 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v271 = sea.const 12 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v268, ^bb71(%v269, %v270, %v271 : i1, i1, i64), ^bb64 loc("seahorn/lib/sea_string.cc":12:9)
^bb64:
  %v272 = sea.ptr.index %v150 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_177"("seahorn/lib/sea_string.cc":32:52))
  %v273 = sea.const 1 : i64 loc("_178"("seahorn/lib/sea_string.cc":32:52))
  %v274 = sea.ptr.dereferenceable %v272, %v273 : !sea.ptr<64>, i64 loc("_178"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v274, ^bb65, ^bb88
^bb65:
  %v275 = sea.load %v148[%v272] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_179"("seahorn/lib/sea_string.cc":32:52))
  %v276 = sea.const 0 : i8 loc("_180"("seahorn/lib/sea_string.cc":32:59))
  %v277 = sea.icmp eq, %v275, %v276 : i8 loc("_180"("seahorn/lib/sea_string.cc":32:59))
  %v278 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v279 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v280 = sea.const 13 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v277, ^bb71(%v278, %v279, %v280 : i1, i1, i64), ^bb66 loc("seahorn/lib/sea_string.cc":12:9)
^bb66:
  %v281 = sea.ptr.index %v150 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_182"("seahorn/lib/sea_string.cc":32:52))
  %v282 = sea.const 1 : i64 loc("_183"("seahorn/lib/sea_string.cc":32:52))
  %v283 = sea.ptr.dereferenceable %v281, %v282 : !sea.ptr<64>, i64 loc("_183"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v283, ^bb67, ^bb88
^bb67:
  %v284 = sea.load %v148[%v281] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_184"("seahorn/lib/sea_string.cc":32:52))
  %v285 = sea.const 0 : i8 loc("_185"("seahorn/lib/sea_string.cc":32:59))
  %v286 = sea.icmp eq, %v284, %v285 : i8 loc("_185"("seahorn/lib/sea_string.cc":32:59))
  %v287 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v288 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v289 = sea.const 14 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v286, ^bb71(%v287, %v288, %v289 : i1, i1, i64), ^bb68 loc("seahorn/lib/sea_string.cc":12:9)
^bb68:
  %v290 = sea.ptr.index %v150 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_187"("seahorn/lib/sea_string.cc":32:52))
  %v291 = sea.const 1 : i64 loc("_188"("seahorn/lib/sea_string.cc":32:52))
  %v292 = sea.ptr.dereferenceable %v290, %v291 : !sea.ptr<64>, i64 loc("_188"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v292, ^bb69, ^bb88
^bb69:
  %v293 = sea.load %v148[%v290] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_189"("seahorn/lib/sea_string.cc":32:52))
  %v294 = sea.const 0 : i8 loc("_190"("seahorn/lib/sea_string.cc":32:59))
  %v295 = sea.icmp eq, %v293, %v294 : i8 loc("_190"("seahorn/lib/sea_string.cc":32:59))
  %v296 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v297 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v298 = sea.const 15 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v295, ^bb71(%v296, %v297, %v298 : i1, i1, i64), ^bb70 loc("seahorn/lib/sea_string.cc":12:9)
^bb70:
  %v299 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":14:5)
  %v300 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":14:5)
  %v301 = sea.const 16 : i64 loc("seahorn/lib/sea_string.cc":14:5)
  sea.br ^bb71(%v299, %v300, %v301 : i1, i1, i64) loc("seahorn/lib/sea_string.cc":14:5)
^bb71(%v302 : i1, %v303 : i1, %v304 : i64):
  sea.br ^bb72
^bb72:
  %v305 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v302, ^bb78(%v305 : i1), ^bb73 loc("aws-c-common/source/byte_buf.c":66:32)
^bb73:
  sea.br ^bb74
^bb74:
  sea.br ^bb75
^bb75:
  %v306 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v152, ^bb76, ^bb78(%v306 : i1) loc("aws-c-common/source/byte_buf.c":66:67)
^bb76:
  sea.br ^bb77
^bb77:
  %v307 = sea.const 1 : i1
  sea.br ^bb78(%v307 : i1)
^bb78(%v308 : i1):
  sea.br ^bb79
^bb79:
  sea.cond_br %v302, ^bb84, ^bb80 loc("aws-c-common/source/byte_buf.c":66:32)
^bb80:
  sea.br ^bb81
^bb81:
  %v309 = sea.const 1 : i1 loc("or.cond5.not")
  %v310 = sea.and %v152, %v309 : i1 loc("or.cond5.not")
  sea.cond_br %v310, ^bb82, ^bb88
^bb82:
  sea.br ^bb83
^bb83:
  sea.br ^bb86
^bb84:
  sea.cond_br %v152, ^bb86, ^bb85 loc("seahorn/jobs/byte_cursor_from_c_str/aws_byte_cursor_from_c_str_harness.c":22:9)
^bb85:
  %v311 = sea.const 1 : i1 loc("seahorn/jobs/byte_cursor_from_c_str/aws_byte_cursor_from_c_str_harness.c":26:9)
  %v312 = sea.const 1 : i1 loc("seahorn/jobs/byte_cursor_from_c_str/aws_byte_cursor_from_c_str_harness.c":26:9)
  %v313 = sea.xor %v311, %v312 : i1 loc("seahorn/jobs/byte_cursor_from_c_str/aws_byte_cursor_from_c_str_harness.c":26:9)
  sea.assume %v313 loc("seahorn/jobs/byte_cursor_from_c_str/aws_byte_cursor_from_c_str_harness.c":26:9)
  sea.br ^bb88 loc("seahorn/jobs/byte_cursor_from_c_str/aws_byte_cursor_from_c_str_harness.c":26:9)
^bb86:
  %v314 = sea.icmp eq, %v304, %v149 : i64 loc("_207"("seahorn/jobs/byte_cursor_from_c_str/aws_byte_cursor_from_c_str_harness.c":23:9))
  sea.cond_br %v314, ^bb87, ^bb88 loc("seahorn/jobs/byte_cursor_from_c_str/aws_byte_cursor_from_c_str_harness.c":23:9)
^bb87:
  sea.assume %v303 loc("seahorn/lib/utils.c":16:15)
  %v315 = sea.nondet "nd_size_t" [6] : i64 loc("_208"("seahorn/lib/utils.c":17:16))
  %v316 = sea.icmp ult, %v315, %v149 : i64 loc("_209"("seahorn/lib/utils.c":19:14))
  sea.assume %v316 loc("seahorn/lib/utils.c":19:5)
  %v317 = sea.const 1 : i1 loc("seahorn/lib/utils.c":20:5)
  %v318 = sea.const 1 : i1 loc("seahorn/lib/utils.c":20:5)
  %v319 = sea.xor %v317, %v318 : i1 loc("seahorn/lib/utils.c":20:5)
  sea.assume %v319 loc("seahorn/lib/utils.c":20:5)
  sea.br ^bb88 loc("seahorn/lib/utils.c":20:5)
^bb88:
  sea.br ^bb89
^bb89:
  %v320 = sea.const 0 : i1
  sea.assert %v320
  sea.halt
}
