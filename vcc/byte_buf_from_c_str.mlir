// Exported from SeaHorn (byte_buf_from_c_str.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
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
  sea.cond_br %v7, ^bb70, ^bb1 loc("seahorn/lib/sea_allocators.c":11:10)
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
  sea.cond_br %v16, ^bb2, ^bb95
^bb2:
  %v17 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":39:16)
  %v18 = sea.store %v11[%v14], %v17 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":39:16)
  %v19 = sea.const 0 : i64 loc(".not"("seahorn/lib/string_helper.c":42:11))
  %v20 = sea.icmp eq, %v13, %v19 : i64 loc(".not"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v20, ^bb35, ^bb3 loc("seahorn/lib/string_helper.c":42:9)
^bb3:
  %v21 = sea.const 1 : i64 loc("_10"("seahorn/lib/string_helper.c":43:14))
  %v22 = sea.ptr.dereferenceable %v10, %v21 : !sea.ptr<64>, i64 loc("_10"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v22, ^bb4, ^bb95
^bb4:
  %v23 = sea.load %v18[%v10] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_12"("seahorn/lib/string_helper.c":43:14))
  %v24 = sea.const 0 : i8 loc("_13"("seahorn/lib/string_helper.c":43:21))
  %v25 = sea.icmp ne, %v23, %v24 : i8 loc("_13"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v25 loc("seahorn/lib/string_helper.c":43:7)
  %v26 = sea.const 1 : i64 loc(".not29"("seahorn/lib/string_helper.c":42:11))
  %v27 = sea.icmp eq, %v13, %v26 : i64 loc(".not29"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v27, ^bb35, ^bb5 loc("seahorn/lib/string_helper.c":42:9)
^bb5:
  %v28 = sea.ptr.index %v10 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_15"("seahorn/lib/string_helper.c":43:14))
  %v29 = sea.const 1 : i64 loc("_16"("seahorn/lib/string_helper.c":43:14))
  %v30 = sea.ptr.dereferenceable %v28, %v29 : !sea.ptr<64>, i64 loc("_16"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v30, ^bb6, ^bb95
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
  sea.cond_br %v38, ^bb8, ^bb95
^bb8:
  %v39 = sea.load %v18[%v36] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_25"("seahorn/lib/string_helper.c":43:14))
  %v40 = sea.const 0 : i8 loc("_26"("seahorn/lib/string_helper.c":43:21))
  %v41 = sea.icmp ne, %v39, %v40 : i8 loc("_26"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v41 loc("seahorn/lib/string_helper.c":43:7)
  %v42 = sea.const 3 : i64 loc(".not30"("seahorn/lib/string_helper.c":42:11))
  %v43 = sea.icmp eq, %v13, %v42 : i64 loc(".not30"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v43, ^bb35, ^bb9 loc("seahorn/lib/string_helper.c":42:9)
^bb9:
  %v44 = sea.ptr.index %v10 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_28"("seahorn/lib/string_helper.c":43:14))
  %v45 = sea.const 1 : i64 loc("_29"("seahorn/lib/string_helper.c":43:14))
  %v46 = sea.ptr.dereferenceable %v44, %v45 : !sea.ptr<64>, i64 loc("_29"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v46, ^bb10, ^bb95
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
  sea.cond_br %v54, ^bb12, ^bb95
^bb12:
  %v55 = sea.load %v18[%v52] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_38"("seahorn/lib/string_helper.c":43:14))
  %v56 = sea.const 0 : i8 loc("_39"("seahorn/lib/string_helper.c":43:21))
  %v57 = sea.icmp ne, %v55, %v56 : i8 loc("_39"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v57 loc("seahorn/lib/string_helper.c":43:7)
  %v58 = sea.const 5 : i64 loc(".not31"("seahorn/lib/string_helper.c":42:11))
  %v59 = sea.icmp eq, %v13, %v58 : i64 loc(".not31"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v59, ^bb35, ^bb13 loc("seahorn/lib/string_helper.c":42:9)
^bb13:
  %v60 = sea.ptr.index %v10 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_41"("seahorn/lib/string_helper.c":43:14))
  %v61 = sea.const 1 : i64 loc("_42"("seahorn/lib/string_helper.c":43:14))
  %v62 = sea.ptr.dereferenceable %v60, %v61 : !sea.ptr<64>, i64 loc("_42"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v62, ^bb14, ^bb95
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
  sea.cond_br %v70, ^bb16, ^bb95
^bb16:
  %v71 = sea.load %v18[%v68] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_51"("seahorn/lib/string_helper.c":43:14))
  %v72 = sea.const 0 : i8 loc("_52"("seahorn/lib/string_helper.c":43:21))
  %v73 = sea.icmp ne, %v71, %v72 : i8 loc("_52"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v73 loc("seahorn/lib/string_helper.c":43:7)
  %v74 = sea.const 7 : i64 loc(".not32"("seahorn/lib/string_helper.c":42:11))
  %v75 = sea.icmp eq, %v13, %v74 : i64 loc(".not32"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v75, ^bb35, ^bb17 loc("seahorn/lib/string_helper.c":42:9)
^bb17:
  %v76 = sea.ptr.index %v10 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_54"("seahorn/lib/string_helper.c":43:14))
  %v77 = sea.const 1 : i64 loc("_55"("seahorn/lib/string_helper.c":43:14))
  %v78 = sea.ptr.dereferenceable %v76, %v77 : !sea.ptr<64>, i64 loc("_55"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v78, ^bb18, ^bb95
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
  sea.cond_br %v86, ^bb20, ^bb95
^bb20:
  %v87 = sea.load %v18[%v84] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_64"("seahorn/lib/string_helper.c":43:14))
  %v88 = sea.const 0 : i8 loc("_65"("seahorn/lib/string_helper.c":43:21))
  %v89 = sea.icmp ne, %v87, %v88 : i8 loc("_65"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v89 loc("seahorn/lib/string_helper.c":43:7)
  %v90 = sea.const 9 : i64 loc(".not33"("seahorn/lib/string_helper.c":42:11))
  %v91 = sea.icmp eq, %v13, %v90 : i64 loc(".not33"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v91, ^bb35, ^bb21 loc("seahorn/lib/string_helper.c":42:9)
^bb21:
  %v92 = sea.ptr.index %v10 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_67"("seahorn/lib/string_helper.c":43:14))
  %v93 = sea.const 1 : i64 loc("_68"("seahorn/lib/string_helper.c":43:14))
  %v94 = sea.ptr.dereferenceable %v92, %v93 : !sea.ptr<64>, i64 loc("_68"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v94, ^bb22, ^bb95
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
  sea.cond_br %v102, ^bb24, ^bb95
^bb24:
  %v103 = sea.load %v18[%v100] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_77"("seahorn/lib/string_helper.c":43:14))
  %v104 = sea.const 0 : i8 loc("_78"("seahorn/lib/string_helper.c":43:21))
  %v105 = sea.icmp ne, %v103, %v104 : i8 loc("_78"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v105 loc("seahorn/lib/string_helper.c":43:7)
  %v106 = sea.const 11 : i64 loc(".not34"("seahorn/lib/string_helper.c":42:11))
  %v107 = sea.icmp eq, %v13, %v106 : i64 loc(".not34"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v107, ^bb35, ^bb25 loc("seahorn/lib/string_helper.c":42:9)
^bb25:
  %v108 = sea.ptr.index %v10 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_80"("seahorn/lib/string_helper.c":43:14))
  %v109 = sea.const 1 : i64 loc("_81"("seahorn/lib/string_helper.c":43:14))
  %v110 = sea.ptr.dereferenceable %v108, %v109 : !sea.ptr<64>, i64 loc("_81"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v110, ^bb26, ^bb95
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
  sea.cond_br %v118, ^bb28, ^bb95
^bb28:
  %v119 = sea.load %v18[%v116] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_90"("seahorn/lib/string_helper.c":43:14))
  %v120 = sea.const 0 : i8 loc("_91"("seahorn/lib/string_helper.c":43:21))
  %v121 = sea.icmp ne, %v119, %v120 : i8 loc("_91"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v121 loc("seahorn/lib/string_helper.c":43:7)
  %v122 = sea.const 13 : i64 loc(".not35"("seahorn/lib/string_helper.c":42:11))
  %v123 = sea.icmp eq, %v13, %v122 : i64 loc(".not35"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v123, ^bb35, ^bb29 loc("seahorn/lib/string_helper.c":42:9)
^bb29:
  %v124 = sea.ptr.index %v10 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_93"("seahorn/lib/string_helper.c":43:14))
  %v125 = sea.const 1 : i64 loc("_94"("seahorn/lib/string_helper.c":43:14))
  %v126 = sea.ptr.dereferenceable %v124, %v125 : !sea.ptr<64>, i64 loc("_94"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v126, ^bb30, ^bb95
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
  sea.cond_br %v134, ^bb32, ^bb95
^bb32:
  %v135 = sea.load %v18[%v132] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_103"("seahorn/lib/string_helper.c":43:14))
  %v136 = sea.const 0 : i8 loc("_104"("seahorn/lib/string_helper.c":43:21))
  %v137 = sea.icmp ne, %v135, %v136 : i8 loc("_104"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v137 loc("seahorn/lib/string_helper.c":43:7)
  %v138 = sea.const 15 : i64 loc(".not36"("seahorn/lib/string_helper.c":42:11))
  %v139 = sea.icmp eq, %v13, %v138 : i64 loc(".not36"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v139, ^bb35, ^bb33 loc("seahorn/lib/string_helper.c":42:9)
^bb33:
  %v140 = sea.ptr.index %v10 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_106"("seahorn/lib/string_helper.c":43:14))
  %v141 = sea.const 1 : i64 loc("_107"("seahorn/lib/string_helper.c":43:14))
  %v142 = sea.ptr.dereferenceable %v140, %v141 : !sea.ptr<64>, i64 loc("_107"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v142, ^bb34, ^bb95
^bb34:
  %v143 = sea.load %v18[%v140] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_109"("seahorn/lib/string_helper.c":43:14))
  %v144 = sea.const 0 : i8 loc("_110"("seahorn/lib/string_helper.c":43:21))
  %v145 = sea.icmp ne, %v143, %v144 : i8 loc("_110"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v145 loc("seahorn/lib/string_helper.c":43:7)
  sea.br ^bb35 loc("seahorn/lib/string_helper.c":44:5)
^bb35:
  sea.br ^bb36
^bb36:
  %v146 = sea.const 1 : i64 loc("_112"("seahorn/lib/sea_string.cc":32:52))
  %v147 = sea.ptr.dereferenceable %v10, %v146 : !sea.ptr<64>, i64 loc("_112"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v147, ^bb37, ^bb95
^bb37:
  %v148 = sea.load %v18[%v10] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_113"("seahorn/lib/sea_string.cc":32:52))
  %v149 = sea.const 0 : i8 loc("_114"("seahorn/lib/sea_string.cc":32:59))
  %v150 = sea.icmp eq, %v148, %v149 : i8 loc("_114"("seahorn/lib/sea_string.cc":32:59))
  sea.cond_br %v150, ^bb71(%v13 : i64), ^bb38 loc("seahorn/lib/sea_string.cc":12:9)
^bb38:
  %v151 = sea.ptr.index %v10 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_116"("seahorn/lib/sea_string.cc":32:52))
  %v152 = sea.const 1 : i64 loc("_117"("seahorn/lib/sea_string.cc":32:52))
  %v153 = sea.ptr.dereferenceable %v151, %v152 : !sea.ptr<64>, i64 loc("_117"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v153, ^bb39, ^bb95
^bb39:
  %v154 = sea.load %v18[%v151] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_118"("seahorn/lib/sea_string.cc":32:52))
  %v155 = sea.const 0 : i8 loc("_119"("seahorn/lib/sea_string.cc":32:59))
  %v156 = sea.icmp eq, %v154, %v155 : i8 loc("_119"("seahorn/lib/sea_string.cc":32:59))
  %v157 = sea.const 1 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v156, ^bb69(%v157 : i64), ^bb40 loc("seahorn/lib/sea_string.cc":12:9)
^bb40:
  %v158 = sea.ptr.index %v10 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_121"("seahorn/lib/sea_string.cc":32:52))
  %v159 = sea.const 1 : i64 loc("_122"("seahorn/lib/sea_string.cc":32:52))
  %v160 = sea.ptr.dereferenceable %v158, %v159 : !sea.ptr<64>, i64 loc("_122"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v160, ^bb41, ^bb95
^bb41:
  %v161 = sea.load %v18[%v158] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_123"("seahorn/lib/sea_string.cc":32:52))
  %v162 = sea.const 0 : i8 loc("_124"("seahorn/lib/sea_string.cc":32:59))
  %v163 = sea.icmp eq, %v161, %v162 : i8 loc("_124"("seahorn/lib/sea_string.cc":32:59))
  %v164 = sea.const 2 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v163, ^bb69(%v164 : i64), ^bb42 loc("seahorn/lib/sea_string.cc":12:9)
^bb42:
  %v165 = sea.ptr.index %v10 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_126"("seahorn/lib/sea_string.cc":32:52))
  %v166 = sea.const 1 : i64 loc("_127"("seahorn/lib/sea_string.cc":32:52))
  %v167 = sea.ptr.dereferenceable %v165, %v166 : !sea.ptr<64>, i64 loc("_127"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v167, ^bb43, ^bb95
^bb43:
  %v168 = sea.load %v18[%v165] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_128"("seahorn/lib/sea_string.cc":32:52))
  %v169 = sea.const 0 : i8 loc("_129"("seahorn/lib/sea_string.cc":32:59))
  %v170 = sea.icmp eq, %v168, %v169 : i8 loc("_129"("seahorn/lib/sea_string.cc":32:59))
  %v171 = sea.const 3 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v170, ^bb69(%v171 : i64), ^bb44 loc("seahorn/lib/sea_string.cc":12:9)
^bb44:
  %v172 = sea.ptr.index %v10 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_131"("seahorn/lib/sea_string.cc":32:52))
  %v173 = sea.const 1 : i64 loc("_132"("seahorn/lib/sea_string.cc":32:52))
  %v174 = sea.ptr.dereferenceable %v172, %v173 : !sea.ptr<64>, i64 loc("_132"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v174, ^bb45, ^bb95
^bb45:
  %v175 = sea.load %v18[%v172] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_133"("seahorn/lib/sea_string.cc":32:52))
  %v176 = sea.const 0 : i8 loc("_134"("seahorn/lib/sea_string.cc":32:59))
  %v177 = sea.icmp eq, %v175, %v176 : i8 loc("_134"("seahorn/lib/sea_string.cc":32:59))
  %v178 = sea.const 4 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v177, ^bb69(%v178 : i64), ^bb46 loc("seahorn/lib/sea_string.cc":12:9)
^bb46:
  %v179 = sea.ptr.index %v10 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_136"("seahorn/lib/sea_string.cc":32:52))
  %v180 = sea.const 1 : i64 loc("_137"("seahorn/lib/sea_string.cc":32:52))
  %v181 = sea.ptr.dereferenceable %v179, %v180 : !sea.ptr<64>, i64 loc("_137"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v181, ^bb47, ^bb95
^bb47:
  %v182 = sea.load %v18[%v179] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_138"("seahorn/lib/sea_string.cc":32:52))
  %v183 = sea.const 0 : i8 loc("_139"("seahorn/lib/sea_string.cc":32:59))
  %v184 = sea.icmp eq, %v182, %v183 : i8 loc("_139"("seahorn/lib/sea_string.cc":32:59))
  %v185 = sea.const 5 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v184, ^bb69(%v185 : i64), ^bb48 loc("seahorn/lib/sea_string.cc":12:9)
^bb48:
  %v186 = sea.ptr.index %v10 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_141"("seahorn/lib/sea_string.cc":32:52))
  %v187 = sea.const 1 : i64 loc("_142"("seahorn/lib/sea_string.cc":32:52))
  %v188 = sea.ptr.dereferenceable %v186, %v187 : !sea.ptr<64>, i64 loc("_142"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v188, ^bb49, ^bb95
^bb49:
  %v189 = sea.load %v18[%v186] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_143"("seahorn/lib/sea_string.cc":32:52))
  %v190 = sea.const 0 : i8 loc("_144"("seahorn/lib/sea_string.cc":32:59))
  %v191 = sea.icmp eq, %v189, %v190 : i8 loc("_144"("seahorn/lib/sea_string.cc":32:59))
  %v192 = sea.const 6 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v191, ^bb69(%v192 : i64), ^bb50 loc("seahorn/lib/sea_string.cc":12:9)
^bb50:
  %v193 = sea.ptr.index %v10 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_146"("seahorn/lib/sea_string.cc":32:52))
  %v194 = sea.const 1 : i64 loc("_147"("seahorn/lib/sea_string.cc":32:52))
  %v195 = sea.ptr.dereferenceable %v193, %v194 : !sea.ptr<64>, i64 loc("_147"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v195, ^bb51, ^bb95
^bb51:
  %v196 = sea.load %v18[%v193] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_148"("seahorn/lib/sea_string.cc":32:52))
  %v197 = sea.const 0 : i8 loc("_149"("seahorn/lib/sea_string.cc":32:59))
  %v198 = sea.icmp eq, %v196, %v197 : i8 loc("_149"("seahorn/lib/sea_string.cc":32:59))
  %v199 = sea.const 7 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v198, ^bb69(%v199 : i64), ^bb52 loc("seahorn/lib/sea_string.cc":12:9)
^bb52:
  %v200 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_151"("seahorn/lib/sea_string.cc":32:52))
  %v201 = sea.const 1 : i64 loc("_152"("seahorn/lib/sea_string.cc":32:52))
  %v202 = sea.ptr.dereferenceable %v200, %v201 : !sea.ptr<64>, i64 loc("_152"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v202, ^bb53, ^bb95
^bb53:
  %v203 = sea.load %v18[%v200] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_153"("seahorn/lib/sea_string.cc":32:52))
  %v204 = sea.const 0 : i8 loc("_154"("seahorn/lib/sea_string.cc":32:59))
  %v205 = sea.icmp eq, %v203, %v204 : i8 loc("_154"("seahorn/lib/sea_string.cc":32:59))
  %v206 = sea.const 8 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v205, ^bb69(%v206 : i64), ^bb54 loc("seahorn/lib/sea_string.cc":12:9)
^bb54:
  %v207 = sea.ptr.index %v10 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_156"("seahorn/lib/sea_string.cc":32:52))
  %v208 = sea.const 1 : i64 loc("_157"("seahorn/lib/sea_string.cc":32:52))
  %v209 = sea.ptr.dereferenceable %v207, %v208 : !sea.ptr<64>, i64 loc("_157"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v209, ^bb55, ^bb95
^bb55:
  %v210 = sea.load %v18[%v207] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_158"("seahorn/lib/sea_string.cc":32:52))
  %v211 = sea.const 0 : i8 loc("_159"("seahorn/lib/sea_string.cc":32:59))
  %v212 = sea.icmp eq, %v210, %v211 : i8 loc("_159"("seahorn/lib/sea_string.cc":32:59))
  %v213 = sea.const 9 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v212, ^bb69(%v213 : i64), ^bb56 loc("seahorn/lib/sea_string.cc":12:9)
^bb56:
  %v214 = sea.ptr.index %v10 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_161"("seahorn/lib/sea_string.cc":32:52))
  %v215 = sea.const 1 : i64 loc("_162"("seahorn/lib/sea_string.cc":32:52))
  %v216 = sea.ptr.dereferenceable %v214, %v215 : !sea.ptr<64>, i64 loc("_162"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v216, ^bb57, ^bb95
^bb57:
  %v217 = sea.load %v18[%v214] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_163"("seahorn/lib/sea_string.cc":32:52))
  %v218 = sea.const 0 : i8 loc("_164"("seahorn/lib/sea_string.cc":32:59))
  %v219 = sea.icmp eq, %v217, %v218 : i8 loc("_164"("seahorn/lib/sea_string.cc":32:59))
  %v220 = sea.const 10 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v219, ^bb69(%v220 : i64), ^bb58 loc("seahorn/lib/sea_string.cc":12:9)
^bb58:
  %v221 = sea.ptr.index %v10 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_166"("seahorn/lib/sea_string.cc":32:52))
  %v222 = sea.const 1 : i64 loc("_167"("seahorn/lib/sea_string.cc":32:52))
  %v223 = sea.ptr.dereferenceable %v221, %v222 : !sea.ptr<64>, i64 loc("_167"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v223, ^bb59, ^bb95
^bb59:
  %v224 = sea.load %v18[%v221] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_168"("seahorn/lib/sea_string.cc":32:52))
  %v225 = sea.const 0 : i8 loc("_169"("seahorn/lib/sea_string.cc":32:59))
  %v226 = sea.icmp eq, %v224, %v225 : i8 loc("_169"("seahorn/lib/sea_string.cc":32:59))
  %v227 = sea.const 11 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v226, ^bb69(%v227 : i64), ^bb60 loc("seahorn/lib/sea_string.cc":12:9)
^bb60:
  %v228 = sea.ptr.index %v10 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_171"("seahorn/lib/sea_string.cc":32:52))
  %v229 = sea.const 1 : i64 loc("_172"("seahorn/lib/sea_string.cc":32:52))
  %v230 = sea.ptr.dereferenceable %v228, %v229 : !sea.ptr<64>, i64 loc("_172"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v230, ^bb61, ^bb95
^bb61:
  %v231 = sea.load %v18[%v228] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_173"("seahorn/lib/sea_string.cc":32:52))
  %v232 = sea.const 0 : i8 loc("_174"("seahorn/lib/sea_string.cc":32:59))
  %v233 = sea.icmp eq, %v231, %v232 : i8 loc("_174"("seahorn/lib/sea_string.cc":32:59))
  %v234 = sea.const 12 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v233, ^bb69(%v234 : i64), ^bb62 loc("seahorn/lib/sea_string.cc":12:9)
^bb62:
  %v235 = sea.ptr.index %v10 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_176"("seahorn/lib/sea_string.cc":32:52))
  %v236 = sea.const 1 : i64 loc("_177"("seahorn/lib/sea_string.cc":32:52))
  %v237 = sea.ptr.dereferenceable %v235, %v236 : !sea.ptr<64>, i64 loc("_177"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v237, ^bb63, ^bb95
^bb63:
  %v238 = sea.load %v18[%v235] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_178"("seahorn/lib/sea_string.cc":32:52))
  %v239 = sea.const 0 : i8 loc("_179"("seahorn/lib/sea_string.cc":32:59))
  %v240 = sea.icmp eq, %v238, %v239 : i8 loc("_179"("seahorn/lib/sea_string.cc":32:59))
  %v241 = sea.const 13 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v240, ^bb69(%v241 : i64), ^bb64 loc("seahorn/lib/sea_string.cc":12:9)
^bb64:
  %v242 = sea.ptr.index %v10 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_181"("seahorn/lib/sea_string.cc":32:52))
  %v243 = sea.const 1 : i64 loc("_182"("seahorn/lib/sea_string.cc":32:52))
  %v244 = sea.ptr.dereferenceable %v242, %v243 : !sea.ptr<64>, i64 loc("_182"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v244, ^bb65, ^bb95
^bb65:
  %v245 = sea.load %v18[%v242] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_183"("seahorn/lib/sea_string.cc":32:52))
  %v246 = sea.const 0 : i8 loc("_184"("seahorn/lib/sea_string.cc":32:59))
  %v247 = sea.icmp eq, %v245, %v246 : i8 loc("_184"("seahorn/lib/sea_string.cc":32:59))
  %v248 = sea.const 14 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v247, ^bb69(%v248 : i64), ^bb66 loc("seahorn/lib/sea_string.cc":12:9)
^bb66:
  %v249 = sea.ptr.index %v10 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_186"("seahorn/lib/sea_string.cc":32:52))
  %v250 = sea.const 1 : i64 loc("_187"("seahorn/lib/sea_string.cc":32:52))
  %v251 = sea.ptr.dereferenceable %v249, %v250 : !sea.ptr<64>, i64 loc("_187"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v251, ^bb67, ^bb95
^bb67:
  %v252 = sea.load %v18[%v249] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_188"("seahorn/lib/sea_string.cc":32:52))
  %v253 = sea.const 0 : i8 loc("_189"("seahorn/lib/sea_string.cc":32:59))
  %v254 = sea.icmp eq, %v252, %v253 : i8 loc("_189"("seahorn/lib/sea_string.cc":32:59))
  %v255 = sea.const 15 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v254, ^bb69(%v255 : i64), ^bb68 loc("seahorn/lib/sea_string.cc":12:9)
^bb68:
  %v256 = sea.const 16 : i64 loc("seahorn/lib/sea_string.cc":14:5)
  sea.br ^bb69(%v256 : i64) loc("seahorn/lib/sea_string.cc":14:5)
^bb69(%v257 : i64):
  %v258 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":953:18)
  %v259 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":953:18)
  sea.br ^bb72(%v257, %v258, %v259, %v13 : i64, i1, i1, i64) loc("aws-c-common/source/byte_buf.c":953:18)
^bb70:
  %v260 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":951:15)
  sea.br ^bb71(%v260 : i64) loc("aws-c-common/source/byte_buf.c":951:15)
^bb71(%v261 : i64):
  %v262 = sea.const 1 : i1 loc(".0.i.i9"("aws-c-common/source/byte_buf.c":952:9))
  %v263 = sea.xor %v7, %v262 : i1 loc(".0.i.i9"("aws-c-common/source/byte_buf.c":952:9))
  %v264 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":953:18)
  %v265 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":953:18)
  sea.br ^bb72(%v264, %v265, %v263, %v261 : i64, i1, i1, i64) loc("aws-c-common/source/byte_buf.c":953:18)
^bb72(%v266 : i64, %v267 : i1, %v268 : i1, %v269 : i64):
  sea.br ^bb73
^bb73:
  sea.cond_br %v267, ^bb79, ^bb74 loc("aws-c-common/source/byte_buf.c":60:33)
^bb74:
  sea.br ^bb75
^bb75:
  sea.br ^bb76
^bb76:
  sea.br ^bb77
^bb77:
  sea.br ^bb78
^bb78:
  sea.br ^bb81(%v268 : i1)
^bb79:
  sea.br ^bb80
^bb80:
  %v270 = sea.const 1 : i1
  sea.br ^bb81(%v270 : i1)
^bb81(%v271 : i1):
  sea.br ^bb82
^bb82:
  sea.cond_br %v267, ^bb90, ^bb83 loc("aws-c-common/source/byte_buf.c":60:33)
^bb83:
  sea.br ^bb84
^bb84:
  sea.br ^bb85
^bb85:
  sea.br ^bb86
^bb86:
  sea.br ^bb87
^bb87:
  %v272 = sea.const 1 : i1 loc("or.cond")
  %v273 = sea.and %v268, %v272 : i1 loc("or.cond")
  sea.cond_br %v273, ^bb88, ^bb95
^bb88:
  %v274 = sea.icmp eq, %v266, %v269 : i64 loc("_213"("seahorn/jobs/byte_buf_from_c_str/aws_byte_buf_from_c_str_harness.c":24:9))
  sea.cond_br %v274, ^bb89, ^bb95 loc("seahorn/jobs/byte_buf_from_c_str/aws_byte_buf_from_c_str_harness.c":24:9)
^bb89:
  %v275 = sea.const 1 : i1 loc("seahorn/lib/utils.c":16:15)
  sea.assume %v275 loc("seahorn/lib/utils.c":16:15)
  %v276 = sea.nondet "nd_size_t" [5] : i64 loc("_214"("seahorn/lib/utils.c":17:16))
  %v277 = sea.icmp ult, %v276, %v266 : i64 loc("_215"("seahorn/lib/utils.c":19:14))
  sea.assume %v277 loc("seahorn/lib/utils.c":19:5)
  %v278 = sea.const 1 : i1 loc("seahorn/lib/utils.c":20:5)
  %v279 = sea.const 1 : i1 loc("seahorn/lib/utils.c":20:5)
  %v280 = sea.xor %v278, %v279 : i1 loc("seahorn/lib/utils.c":20:5)
  sea.assume %v280 loc("seahorn/lib/utils.c":20:5)
  sea.br ^bb95 loc("seahorn/lib/utils.c":20:5)
^bb90:
  sea.br ^bb91
^bb91:
  sea.br ^bb92
^bb92:
  sea.cond_br %v7, ^bb94, ^bb93 loc("seahorn/jobs/byte_buf_from_c_str/aws_byte_buf_from_c_str_harness.c":28:13)
^bb93:
  %v281 = sea.const 0 : i64 loc("_218"("seahorn/jobs/byte_buf_from_c_str/aws_byte_buf_from_c_str_harness.c":29:13))
  %v282 = sea.icmp eq, %v269, %v281 : i64 loc("_218"("seahorn/jobs/byte_buf_from_c_str/aws_byte_buf_from_c_str_harness.c":29:13))
  sea.cond_br %v282, ^bb94, ^bb95 loc("seahorn/jobs/byte_buf_from_c_str/aws_byte_buf_from_c_str_harness.c":29:13)
^bb94:
  %v283 = sea.const 1 : i1 loc("seahorn/jobs/byte_buf_from_c_str/aws_byte_buf_from_c_str_harness.c":32:9)
  %v284 = sea.const 1 : i1 loc("seahorn/jobs/byte_buf_from_c_str/aws_byte_buf_from_c_str_harness.c":32:9)
  %v285 = sea.xor %v283, %v284 : i1 loc("seahorn/jobs/byte_buf_from_c_str/aws_byte_buf_from_c_str_harness.c":32:9)
  sea.assume %v285 loc("seahorn/jobs/byte_buf_from_c_str/aws_byte_buf_from_c_str_harness.c":32:9)
  sea.br ^bb95 loc("seahorn/jobs/byte_buf_from_c_str/aws_byte_buf_from_c_str_harness.c":32:9)
^bb95:
  sea.br ^bb96
^bb96:
  %v286 = sea.const 0 : i1
  sea.assert %v286
  sea.halt
}
