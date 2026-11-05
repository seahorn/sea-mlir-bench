// Exported from SeaHorn (array_eq_c_str.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm11")
  %v1 = sea.mem.nondet "region.9" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm12")
  %v2 = sea.mem.nondet "region.18" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm13")
  %v3 = sea.mem.nondet "region.19" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm14")
  %v4 = sea.const 16 : i64 loc("_0")
  %v5 = sea.alloca %v4 align 8 [4] : i64 -> !sea.ptr<64> loc("_0")
  %v6 = sea.const 16 : i64 loc("_1")
  %v7 = sea.alloca %v6 align 8 [5] : i64 -> !sea.ptr<64> loc("_1")
  %v8 = sea.nondet "nd_size_t" [6] : i64 loc("_2"("seahorn/jobs/array_eq_c_str/aws_array_eq_c_str_harness.c":14:22))
  %v9 = sea.const 11 : i64 loc("_3"("seahorn/jobs/array_eq_c_str/aws_array_eq_c_str_harness.c":15:20))
  %v10 = sea.icmp ult, %v8, %v9 : i64 loc("_3"("seahorn/jobs/array_eq_c_str/aws_array_eq_c_str_harness.c":15:20))
  sea.assume %v10 loc("seahorn/jobs/array_eq_c_str/aws_array_eq_c_str_harness.c":15:3)
  %v11 = sea.const 0 : i64 loc("_4"("seahorn/lib/proof_allocators.c":17:15))
  %v12 = sea.icmp eq, %v8, %v11 : i64 loc("_4"("seahorn/lib/proof_allocators.c":17:15))
  %v13 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v12, ^bb4(%v2, %v13 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb1 loc("seahorn/lib/proof_allocators.c":17:10)
^bb1:
  %v14 = sea.nondet "nd_malloc_is_fail" [7] : i1 loc("_6"("seahorn/lib/sea_allocators.c":11:10))
  %v15 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v14, ^bb3(%v2, %v15 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb2 loc("seahorn/lib/sea_allocators.c":11:10)
^bb2:
  %v16 = sea.const 1 : i64 loc("malloc.i")
  %v17 = sea.mul %v8, %v16 : i64 loc("malloc.i")
  %v18 = sea.alloca %v17 align 16 [8] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb3(%v2, %v18 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb3(%v19 : !sea.mem<!sea.ptr<64>, i8>, %v20 : !sea.ptr<64>):
  %v21 = sea.memhavoc %v19[%v20], %v8 [9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v22 = sea.ptr.null : !sea.ptr<64> loc("_9"("seahorn/lib/sea_allocators.c":45:10))
  %v23 = sea.ptr.cmp ne, %v20, %v22 : !sea.ptr<64> loc("_9"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v23 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb4(%v21, %v20 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb4(%v24 : !sea.mem<!sea.ptr<64>, i8>, %v25 : !sea.ptr<64>):
  %v26 = sea.nondet "nd_size_t" [10] : i64 loc("_11"("seahorn/lib/string_helper.c":51:16))
  %v27 = sea.const 0 : i64 loc("_12"("seahorn/lib/string_helper.c":53:21))
  %v28 = sea.icmp ne, %v26, %v27 : i64 loc("_12"("seahorn/lib/string_helper.c":53:21))
  sea.assume %v28 loc("seahorn/lib/string_helper.c":53:3)
  %v29 = sea.const 11 : i64 loc("_13"("seahorn/lib/string_helper.c":54:21))
  %v30 = sea.icmp ult, %v26, %v29 : i64 loc("_13"("seahorn/lib/string_helper.c":54:21))
  sea.assume %v30 loc("seahorn/lib/string_helper.c":54:3)
  %v31 = sea.const 1 : i1 loc("seahorn/lib/string_helper.c":55:3)
  sea.assume %v31 loc("seahorn/lib/string_helper.c":55:3)
  %v32 = sea.nondet "nd_malloc_is_fail" [11] : i1 loc("_14"("seahorn/lib/sea_allocators.c":11:10))
  %v33 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v32, ^bb6(%v3, %v33 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb5 loc("seahorn/lib/sea_allocators.c":11:10)
^bb5:
  %v34 = sea.const 1 : i64 loc("malloc13.i")
  %v35 = sea.mul %v26, %v34 : i64 loc("malloc13.i")
  %v36 = sea.alloca %v35 align 16 [12] : i64 -> !sea.ptr<64> loc("malloc13.i")
  sea.br ^bb6(%v3, %v36 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb6(%v37 : !sea.mem<!sea.ptr<64>, i8>, %v38 : !sea.ptr<64>):
  %v39 = sea.memhavoc %v37[%v38], %v26 [13] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v40 = sea.ptr.null : !sea.ptr<64> loc("_17"("seahorn/lib/sea_allocators.c":45:10))
  %v41 = sea.ptr.cmp ne, %v38, %v40 : !sea.ptr<64> loc("_17"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v41 loc("seahorn/lib/sea_allocators.c":45:3)
  %v42 = sea.const 18446744073709551615 : i64 loc("_18"("seahorn/lib/string_helper.c":68:32))
  %v43 = sea.add %v26, %v42 : i64 loc("_18"("seahorn/lib/string_helper.c":68:32))
  %v44 = sea.ptr.index %v38 [%v43] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_19"("seahorn/lib/string_helper.c":39:3))
  %v45 = sea.const 1 : i64 loc("_20"("seahorn/lib/string_helper.c":39:16))
  %v46 = sea.ptr.dereferenceable %v44, %v45 : !sea.ptr<64>, i64 loc("_20"("seahorn/lib/string_helper.c":39:16))
  sea.cond_br %v46, ^bb7, ^bb165
^bb7:
  %v47 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":39:16)
  %v48 = sea.store %v39[%v44], %v47 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":39:16)
  %v49 = sea.const 0 : i64 loc(".not37"("seahorn/lib/string_helper.c":42:11))
  %v50 = sea.icmp eq, %v43, %v49 : i64 loc(".not37"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v50, ^bb40, ^bb8 loc("seahorn/lib/string_helper.c":42:9)
^bb8:
  %v51 = sea.const 1 : i64 loc("_23"("seahorn/lib/string_helper.c":43:14))
  %v52 = sea.ptr.dereferenceable %v38, %v51 : !sea.ptr<64>, i64 loc("_23"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v52, ^bb9, ^bb165
^bb9:
  %v53 = sea.load %v48[%v38] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_25"("seahorn/lib/string_helper.c":43:14))
  %v54 = sea.const 0 : i8 loc("_26"("seahorn/lib/string_helper.c":43:21))
  %v55 = sea.icmp ne, %v53, %v54 : i8 loc("_26"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v55 loc("seahorn/lib/string_helper.c":43:7)
  %v56 = sea.const 1 : i64 loc(".not67"("seahorn/lib/string_helper.c":42:11))
  %v57 = sea.icmp eq, %v43, %v56 : i64 loc(".not67"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v57, ^bb40, ^bb10 loc("seahorn/lib/string_helper.c":42:9)
^bb10:
  %v58 = sea.ptr.index %v38 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_28"("seahorn/lib/string_helper.c":43:14))
  %v59 = sea.const 1 : i64 loc("_29"("seahorn/lib/string_helper.c":43:14))
  %v60 = sea.ptr.dereferenceable %v58, %v59 : !sea.ptr<64>, i64 loc("_29"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v60, ^bb11, ^bb165
^bb11:
  %v61 = sea.load %v48[%v58] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_31"("seahorn/lib/string_helper.c":43:14))
  %v62 = sea.const 0 : i8 loc("_32"("seahorn/lib/string_helper.c":43:21))
  %v63 = sea.icmp ne, %v61, %v62 : i8 loc("_32"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v63 loc("seahorn/lib/string_helper.c":43:7)
  %v64 = sea.const 2 : i64 loc("_33"("seahorn/lib/string_helper.c":42:11))
  %v65 = sea.icmp ugt, %v43, %v64 : i64 loc("_33"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v65, ^bb12, ^bb40 loc("seahorn/lib/string_helper.c":42:9)
^bb12:
  %v66 = sea.ptr.index %v38 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_35"("seahorn/lib/string_helper.c":43:14))
  %v67 = sea.const 1 : i64 loc("_36"("seahorn/lib/string_helper.c":43:14))
  %v68 = sea.ptr.dereferenceable %v66, %v67 : !sea.ptr<64>, i64 loc("_36"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v68, ^bb13, ^bb165
^bb13:
  %v69 = sea.load %v48[%v66] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_38"("seahorn/lib/string_helper.c":43:14))
  %v70 = sea.const 0 : i8 loc("_39"("seahorn/lib/string_helper.c":43:21))
  %v71 = sea.icmp ne, %v69, %v70 : i8 loc("_39"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v71 loc("seahorn/lib/string_helper.c":43:7)
  %v72 = sea.const 3 : i64 loc(".not68"("seahorn/lib/string_helper.c":42:11))
  %v73 = sea.icmp eq, %v43, %v72 : i64 loc(".not68"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v73, ^bb40, ^bb14 loc("seahorn/lib/string_helper.c":42:9)
^bb14:
  %v74 = sea.ptr.index %v38 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_41"("seahorn/lib/string_helper.c":43:14))
  %v75 = sea.const 1 : i64 loc("_42"("seahorn/lib/string_helper.c":43:14))
  %v76 = sea.ptr.dereferenceable %v74, %v75 : !sea.ptr<64>, i64 loc("_42"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v76, ^bb15, ^bb165
^bb15:
  %v77 = sea.load %v48[%v74] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_44"("seahorn/lib/string_helper.c":43:14))
  %v78 = sea.const 0 : i8 loc("_45"("seahorn/lib/string_helper.c":43:21))
  %v79 = sea.icmp ne, %v77, %v78 : i8 loc("_45"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v79 loc("seahorn/lib/string_helper.c":43:7)
  %v80 = sea.const 4 : i64 loc("_46"("seahorn/lib/string_helper.c":42:11))
  %v81 = sea.icmp ugt, %v43, %v80 : i64 loc("_46"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v81, ^bb16, ^bb40 loc("seahorn/lib/string_helper.c":42:9)
^bb16:
  %v82 = sea.ptr.index %v38 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_48"("seahorn/lib/string_helper.c":43:14))
  %v83 = sea.const 1 : i64 loc("_49"("seahorn/lib/string_helper.c":43:14))
  %v84 = sea.ptr.dereferenceable %v82, %v83 : !sea.ptr<64>, i64 loc("_49"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v84, ^bb17, ^bb165
^bb17:
  %v85 = sea.load %v48[%v82] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_51"("seahorn/lib/string_helper.c":43:14))
  %v86 = sea.const 0 : i8 loc("_52"("seahorn/lib/string_helper.c":43:21))
  %v87 = sea.icmp ne, %v85, %v86 : i8 loc("_52"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v87 loc("seahorn/lib/string_helper.c":43:7)
  %v88 = sea.const 5 : i64 loc(".not69"("seahorn/lib/string_helper.c":42:11))
  %v89 = sea.icmp eq, %v43, %v88 : i64 loc(".not69"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v89, ^bb40, ^bb18 loc("seahorn/lib/string_helper.c":42:9)
^bb18:
  %v90 = sea.ptr.index %v38 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_54"("seahorn/lib/string_helper.c":43:14))
  %v91 = sea.const 1 : i64 loc("_55"("seahorn/lib/string_helper.c":43:14))
  %v92 = sea.ptr.dereferenceable %v90, %v91 : !sea.ptr<64>, i64 loc("_55"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v92, ^bb19, ^bb165
^bb19:
  %v93 = sea.load %v48[%v90] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_57"("seahorn/lib/string_helper.c":43:14))
  %v94 = sea.const 0 : i8 loc("_58"("seahorn/lib/string_helper.c":43:21))
  %v95 = sea.icmp ne, %v93, %v94 : i8 loc("_58"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v95 loc("seahorn/lib/string_helper.c":43:7)
  %v96 = sea.const 6 : i64 loc("_59"("seahorn/lib/string_helper.c":42:11))
  %v97 = sea.icmp ugt, %v43, %v96 : i64 loc("_59"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v97, ^bb20, ^bb40 loc("seahorn/lib/string_helper.c":42:9)
^bb20:
  %v98 = sea.ptr.index %v38 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_61"("seahorn/lib/string_helper.c":43:14))
  %v99 = sea.const 1 : i64 loc("_62"("seahorn/lib/string_helper.c":43:14))
  %v100 = sea.ptr.dereferenceable %v98, %v99 : !sea.ptr<64>, i64 loc("_62"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v100, ^bb21, ^bb165
^bb21:
  %v101 = sea.load %v48[%v98] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_64"("seahorn/lib/string_helper.c":43:14))
  %v102 = sea.const 0 : i8 loc("_65"("seahorn/lib/string_helper.c":43:21))
  %v103 = sea.icmp ne, %v101, %v102 : i8 loc("_65"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v103 loc("seahorn/lib/string_helper.c":43:7)
  %v104 = sea.const 7 : i64 loc(".not70"("seahorn/lib/string_helper.c":42:11))
  %v105 = sea.icmp eq, %v43, %v104 : i64 loc(".not70"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v105, ^bb40, ^bb22 loc("seahorn/lib/string_helper.c":42:9)
^bb22:
  %v106 = sea.ptr.index %v38 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_67"("seahorn/lib/string_helper.c":43:14))
  %v107 = sea.const 1 : i64 loc("_68"("seahorn/lib/string_helper.c":43:14))
  %v108 = sea.ptr.dereferenceable %v106, %v107 : !sea.ptr<64>, i64 loc("_68"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v108, ^bb23, ^bb165
^bb23:
  %v109 = sea.load %v48[%v106] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_70"("seahorn/lib/string_helper.c":43:14))
  %v110 = sea.const 0 : i8 loc("_71"("seahorn/lib/string_helper.c":43:21))
  %v111 = sea.icmp ne, %v109, %v110 : i8 loc("_71"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v111 loc("seahorn/lib/string_helper.c":43:7)
  %v112 = sea.const 8 : i64 loc("_72"("seahorn/lib/string_helper.c":42:11))
  %v113 = sea.icmp ugt, %v43, %v112 : i64 loc("_72"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v113, ^bb24, ^bb40 loc("seahorn/lib/string_helper.c":42:9)
^bb24:
  %v114 = sea.ptr.index %v38 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_74"("seahorn/lib/string_helper.c":43:14))
  %v115 = sea.const 1 : i64 loc("_75"("seahorn/lib/string_helper.c":43:14))
  %v116 = sea.ptr.dereferenceable %v114, %v115 : !sea.ptr<64>, i64 loc("_75"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v116, ^bb25, ^bb165
^bb25:
  %v117 = sea.load %v48[%v114] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_77"("seahorn/lib/string_helper.c":43:14))
  %v118 = sea.const 0 : i8 loc("_78"("seahorn/lib/string_helper.c":43:21))
  %v119 = sea.icmp ne, %v117, %v118 : i8 loc("_78"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v119 loc("seahorn/lib/string_helper.c":43:7)
  %v120 = sea.const 9 : i64 loc(".not71"("seahorn/lib/string_helper.c":42:11))
  %v121 = sea.icmp eq, %v43, %v120 : i64 loc(".not71"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v121, ^bb40, ^bb26 loc("seahorn/lib/string_helper.c":42:9)
^bb26:
  %v122 = sea.ptr.index %v38 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_80"("seahorn/lib/string_helper.c":43:14))
  %v123 = sea.const 1 : i64 loc("_81"("seahorn/lib/string_helper.c":43:14))
  %v124 = sea.ptr.dereferenceable %v122, %v123 : !sea.ptr<64>, i64 loc("_81"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v124, ^bb27, ^bb165
^bb27:
  %v125 = sea.load %v48[%v122] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_83"("seahorn/lib/string_helper.c":43:14))
  %v126 = sea.const 0 : i8 loc("_84"("seahorn/lib/string_helper.c":43:21))
  %v127 = sea.icmp ne, %v125, %v126 : i8 loc("_84"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v127 loc("seahorn/lib/string_helper.c":43:7)
  %v128 = sea.const 10 : i64 loc("_85"("seahorn/lib/string_helper.c":42:11))
  %v129 = sea.icmp ugt, %v43, %v128 : i64 loc("_85"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v129, ^bb28, ^bb40 loc("seahorn/lib/string_helper.c":42:9)
^bb28:
  %v130 = sea.ptr.index %v38 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_87"("seahorn/lib/string_helper.c":43:14))
  %v131 = sea.const 1 : i64 loc("_88"("seahorn/lib/string_helper.c":43:14))
  %v132 = sea.ptr.dereferenceable %v130, %v131 : !sea.ptr<64>, i64 loc("_88"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v132, ^bb29, ^bb165
^bb29:
  %v133 = sea.load %v48[%v130] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_90"("seahorn/lib/string_helper.c":43:14))
  %v134 = sea.const 0 : i8 loc("_91"("seahorn/lib/string_helper.c":43:21))
  %v135 = sea.icmp ne, %v133, %v134 : i8 loc("_91"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v135 loc("seahorn/lib/string_helper.c":43:7)
  %v136 = sea.const 11 : i64 loc(".not72"("seahorn/lib/string_helper.c":42:11))
  %v137 = sea.icmp eq, %v43, %v136 : i64 loc(".not72"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v137, ^bb40, ^bb30 loc("seahorn/lib/string_helper.c":42:9)
^bb30:
  %v138 = sea.ptr.index %v38 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_93"("seahorn/lib/string_helper.c":43:14))
  %v139 = sea.const 1 : i64 loc("_94"("seahorn/lib/string_helper.c":43:14))
  %v140 = sea.ptr.dereferenceable %v138, %v139 : !sea.ptr<64>, i64 loc("_94"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v140, ^bb31, ^bb165
^bb31:
  %v141 = sea.load %v48[%v138] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_96"("seahorn/lib/string_helper.c":43:14))
  %v142 = sea.const 0 : i8 loc("_97"("seahorn/lib/string_helper.c":43:21))
  %v143 = sea.icmp ne, %v141, %v142 : i8 loc("_97"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v143 loc("seahorn/lib/string_helper.c":43:7)
  %v144 = sea.const 12 : i64 loc("_98"("seahorn/lib/string_helper.c":42:11))
  %v145 = sea.icmp ugt, %v43, %v144 : i64 loc("_98"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v145, ^bb32, ^bb40 loc("seahorn/lib/string_helper.c":42:9)
^bb32:
  %v146 = sea.ptr.index %v38 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_100"("seahorn/lib/string_helper.c":43:14))
  %v147 = sea.const 1 : i64 loc("_101"("seahorn/lib/string_helper.c":43:14))
  %v148 = sea.ptr.dereferenceable %v146, %v147 : !sea.ptr<64>, i64 loc("_101"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v148, ^bb33, ^bb165
^bb33:
  %v149 = sea.load %v48[%v146] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_103"("seahorn/lib/string_helper.c":43:14))
  %v150 = sea.const 0 : i8 loc("_104"("seahorn/lib/string_helper.c":43:21))
  %v151 = sea.icmp ne, %v149, %v150 : i8 loc("_104"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v151 loc("seahorn/lib/string_helper.c":43:7)
  %v152 = sea.const 13 : i64 loc(".not73"("seahorn/lib/string_helper.c":42:11))
  %v153 = sea.icmp eq, %v43, %v152 : i64 loc(".not73"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v153, ^bb40, ^bb34 loc("seahorn/lib/string_helper.c":42:9)
^bb34:
  %v154 = sea.ptr.index %v38 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_106"("seahorn/lib/string_helper.c":43:14))
  %v155 = sea.const 1 : i64 loc("_107"("seahorn/lib/string_helper.c":43:14))
  %v156 = sea.ptr.dereferenceable %v154, %v155 : !sea.ptr<64>, i64 loc("_107"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v156, ^bb35, ^bb165
^bb35:
  %v157 = sea.load %v48[%v154] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_109"("seahorn/lib/string_helper.c":43:14))
  %v158 = sea.const 0 : i8 loc("_110"("seahorn/lib/string_helper.c":43:21))
  %v159 = sea.icmp ne, %v157, %v158 : i8 loc("_110"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v159 loc("seahorn/lib/string_helper.c":43:7)
  %v160 = sea.const 14 : i64 loc("_111"("seahorn/lib/string_helper.c":42:11))
  %v161 = sea.icmp ugt, %v43, %v160 : i64 loc("_111"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v161, ^bb36, ^bb40 loc("seahorn/lib/string_helper.c":42:9)
^bb36:
  %v162 = sea.ptr.index %v38 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_113"("seahorn/lib/string_helper.c":43:14))
  %v163 = sea.const 1 : i64 loc("_114"("seahorn/lib/string_helper.c":43:14))
  %v164 = sea.ptr.dereferenceable %v162, %v163 : !sea.ptr<64>, i64 loc("_114"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v164, ^bb37, ^bb165
^bb37:
  %v165 = sea.load %v48[%v162] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_116"("seahorn/lib/string_helper.c":43:14))
  %v166 = sea.const 0 : i8 loc("_117"("seahorn/lib/string_helper.c":43:21))
  %v167 = sea.icmp ne, %v165, %v166 : i8 loc("_117"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v167 loc("seahorn/lib/string_helper.c":43:7)
  %v168 = sea.const 15 : i64 loc(".not74"("seahorn/lib/string_helper.c":42:11))
  %v169 = sea.icmp eq, %v43, %v168 : i64 loc(".not74"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v169, ^bb40, ^bb38 loc("seahorn/lib/string_helper.c":42:9)
^bb38:
  %v170 = sea.ptr.index %v38 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_119"("seahorn/lib/string_helper.c":43:14))
  %v171 = sea.const 1 : i64 loc("_120"("seahorn/lib/string_helper.c":43:14))
  %v172 = sea.ptr.dereferenceable %v170, %v171 : !sea.ptr<64>, i64 loc("_120"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v172, ^bb39, ^bb165
^bb39:
  %v173 = sea.load %v48[%v170] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_122"("seahorn/lib/string_helper.c":43:14))
  %v174 = sea.const 0 : i8 loc("_123"("seahorn/lib/string_helper.c":43:21))
  %v175 = sea.icmp ne, %v173, %v174 : i8 loc("_123"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v175 loc("seahorn/lib/string_helper.c":43:7)
  sea.br ^bb40 loc("seahorn/lib/string_helper.c":44:5)
^bb40:
  sea.br ^bb41
^bb41:
  %v176 = sea.nondet "nd_size_t" [14] : i64 loc("_124"("seahorn/lib/utils.c":46:20))
  sea.br ^bb42
^bb42:
  %v177 = sea.store %v0[%v5], %v176 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v178 = sea.const 0 : i64 loc("_126"("seahorn/lib/utils.c":47:12))
  %v179 = sea.icmp ne, %v8, %v178 : i64 loc("_126"("seahorn/lib/utils.c":47:12))
  %v180 = sea.ptr.null : !sea.ptr<64> loc("_127")
  %v181 = sea.ptr.cmp ne, %v25, %v180 : !sea.ptr<64> loc("_127")
  %v182 = sea.and %v179, %v181 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v182, ^bb45, ^bb43 loc("seahorn/lib/utils.c":47:16)
^bb43:
  %v183 = sea.nondet "nd_uint8_t" [15] : i8 loc("_139"("seahorn/lib/utils.c":51:21))
  %v184 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_140"("seahorn/lib/utils.c":51:14))
  sea.br ^bb44
^bb44:
  %v185 = sea.store %v177[%v184], %v183 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb50(%v183 : i8)
^bb45:
  sea.br ^bb46
^bb46:
  %v186 = sea.icmp ult, %v176, %v8 : i64 loc("_130"("seahorn/lib/utils.c":48:27))
  sea.assume %v186 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb47
^bb47:
  %v187 = sea.ptr.index %v25 [%v176] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_132"("seahorn/lib/utils.c":49:21))
  %v188 = sea.const 1 : i64 loc("_133"("seahorn/lib/utils.c":49:21))
  %v189 = sea.ptr.dereferenceable %v187, %v188 : !sea.ptr<64>, i64 loc("_133"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v189, ^bb48, ^bb165
^bb48:
  %v190 = sea.load %v24[%v187] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_135"("seahorn/lib/utils.c":49:21))
  %v191 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_136"("seahorn/lib/utils.c":49:14))
  sea.br ^bb49
^bb49:
  %v192 = sea.store %v177[%v191], %v190 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb50(%v190 : i8) loc("seahorn/lib/utils.c":50:3)
^bb50(%v193 : i8):
  %v194 = sea.nondet "nd_size_t" [16] : i64 loc("_143"("seahorn/lib/utils.c":46:20))
  sea.br ^bb51
^bb51:
  %v195 = sea.store %v1[%v7], %v194 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v196 = sea.const 0 : i64 loc("_145"("seahorn/lib/utils.c":47:12))
  %v197 = sea.icmp ne, %v43, %v196 : i64 loc("_145"("seahorn/lib/utils.c":47:12))
  %v198 = sea.and %v197, %v41 : i1 loc("or.cond.i5.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v198, ^bb54, ^bb52 loc("seahorn/lib/utils.c":47:16)
^bb52:
  %v199 = sea.nondet "nd_uint8_t" [17] : i8 loc("_157"("seahorn/lib/utils.c":51:21))
  %v200 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_158"("seahorn/lib/utils.c":51:14))
  sea.br ^bb53
^bb53:
  %v201 = sea.store %v195[%v200], %v199 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb59(%v199 : i8)
^bb54:
  sea.br ^bb55
^bb55:
  %v202 = sea.icmp ult, %v194, %v43 : i64 loc("_148"("seahorn/lib/utils.c":48:27))
  sea.assume %v202 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb56
^bb56:
  %v203 = sea.ptr.index %v38 [%v194] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_150"("seahorn/lib/utils.c":49:21))
  %v204 = sea.const 1 : i64 loc("_151"("seahorn/lib/utils.c":49:21))
  %v205 = sea.ptr.dereferenceable %v203, %v204 : !sea.ptr<64>, i64 loc("_151"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v205, ^bb57, ^bb165
^bb57:
  %v206 = sea.load %v48[%v203] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_153"("seahorn/lib/utils.c":49:21))
  %v207 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_154"("seahorn/lib/utils.c":49:14))
  sea.br ^bb58
^bb58:
  %v208 = sea.store %v195[%v207], %v206 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb59(%v206 : i8) loc("seahorn/lib/utils.c":50:3)
^bb59(%v209 : i8):
  %v210 = sea.or %v12, %v181 : i1 loc("_161"("seahorn/jobs/array_eq_c_str/aws_array_eq_c_str_harness.c":29:16))
  sea.assume %v210 loc("seahorn/jobs/array_eq_c_str/aws_array_eq_c_str_harness.c":29:3)
  sea.assume %v41 loc("seahorn/jobs/array_eq_c_str/aws_array_eq_c_str_harness.c":30:3)
  sea.cond_br %v12, ^bb142, ^bb60 loc("aws-c-common/source/byte_buf.c":478:5)
^bb60:
  %v211 = sea.const 1 : i64 loc("_162"("aws-c-common/source/byte_buf.c":479:21))
  %v212 = sea.ptr.dereferenceable %v38, %v211 : !sea.ptr<64>, i64 loc("_162"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v212, ^bb61, ^bb165
^bb61:
  %v213 = sea.load %v48[%v38] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_331"("aws-c-common/source/byte_buf.c":479:21))
  %v214 = sea.const 0 : i8 loc("_332"("aws-c-common/source/byte_buf.c":480:15))
  %v215 = sea.icmp eq, %v213, %v214 : i8 loc("_332"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v215, ^bb149, ^bb62 loc("aws-c-common/source/byte_buf.c":480:13)
^bb62:
  %v216 = sea.const 1 : i64 loc("_334"("aws-c-common/source/byte_buf.c":484:13))
  %v217 = sea.ptr.dereferenceable %v25, %v216 : !sea.ptr<64>, i64 loc("_334"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v217, ^bb63, ^bb165
^bb63:
  %v218 = sea.load %v24[%v25] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_336"("aws-c-common/source/byte_buf.c":484:13))
  %v219 = sea.icmp eq, %v218, %v213 : i8 loc(".not.i.i"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v219, ^bb64, ^bb151
^bb64:
  %v220 = sea.const 1 : i64 loc("exitcond19.not"("aws-c-common/source/byte_buf.c":478:26))
  %v221 = sea.icmp eq, %v8, %v220 : i64 loc("exitcond19.not"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v221, ^bb142, ^bb65 loc("aws-c-common/source/byte_buf.c":478:5)
^bb65:
  %v222 = sea.ptr.index %v38 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_164"("aws-c-common/source/byte_buf.c":479:21))
  %v223 = sea.const 1 : i64 loc("_165"("aws-c-common/source/byte_buf.c":479:21))
  %v224 = sea.ptr.dereferenceable %v222, %v223 : !sea.ptr<64>, i64 loc("_165"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v224, ^bb66, ^bb165
^bb66:
  %v225 = sea.load %v48[%v222] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_167"("aws-c-common/source/byte_buf.c":479:21))
  %v226 = sea.const 0 : i8 loc("_168"("aws-c-common/source/byte_buf.c":480:15))
  %v227 = sea.icmp eq, %v225, %v226 : i8 loc("_168"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v227, ^bb141, ^bb67 loc("aws-c-common/source/byte_buf.c":480:13)
^bb67:
  %v228 = sea.ptr.index %v25 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_170"("aws-c-common/source/byte_buf.c":484:13))
  %v229 = sea.const 1 : i64 loc("_171"("aws-c-common/source/byte_buf.c":484:13))
  %v230 = sea.ptr.dereferenceable %v228, %v229 : !sea.ptr<64>, i64 loc("_171"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v230, ^bb68, ^bb165
^bb68:
  %v231 = sea.load %v24[%v228] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_173"("aws-c-common/source/byte_buf.c":484:13))
  %v232 = sea.icmp eq, %v231, %v225 : i8 loc(".not.i.i.1"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v232, ^bb69, ^bb151
^bb69:
  %v233 = sea.const 2 : i64 loc("exitcond19.not.1"("aws-c-common/source/byte_buf.c":478:26))
  %v234 = sea.icmp eq, %v8, %v233 : i64 loc("exitcond19.not.1"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v234, ^bb142, ^bb70 loc("aws-c-common/source/byte_buf.c":478:5)
^bb70:
  %v235 = sea.ptr.index %v38 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_175"("aws-c-common/source/byte_buf.c":479:21))
  %v236 = sea.const 1 : i64 loc("_176"("aws-c-common/source/byte_buf.c":479:21))
  %v237 = sea.ptr.dereferenceable %v235, %v236 : !sea.ptr<64>, i64 loc("_176"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v237, ^bb71, ^bb165
^bb71:
  %v238 = sea.load %v48[%v235] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_178"("aws-c-common/source/byte_buf.c":479:21))
  %v239 = sea.const 0 : i8 loc("_179"("aws-c-common/source/byte_buf.c":480:15))
  %v240 = sea.icmp eq, %v238, %v239 : i8 loc("_179"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v240, ^bb141, ^bb72 loc("aws-c-common/source/byte_buf.c":480:13)
^bb72:
  %v241 = sea.ptr.index %v25 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_181"("aws-c-common/source/byte_buf.c":484:13))
  %v242 = sea.const 1 : i64 loc("_182"("aws-c-common/source/byte_buf.c":484:13))
  %v243 = sea.ptr.dereferenceable %v241, %v242 : !sea.ptr<64>, i64 loc("_182"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v243, ^bb73, ^bb165
^bb73:
  %v244 = sea.load %v24[%v241] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_184"("aws-c-common/source/byte_buf.c":484:13))
  %v245 = sea.icmp eq, %v244, %v238 : i8 loc(".not.i.i.2"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v245, ^bb74, ^bb151
^bb74:
  %v246 = sea.const 3 : i64 loc("exitcond19.not.2"("aws-c-common/source/byte_buf.c":478:26))
  %v247 = sea.icmp eq, %v8, %v246 : i64 loc("exitcond19.not.2"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v247, ^bb142, ^bb75 loc("aws-c-common/source/byte_buf.c":478:5)
^bb75:
  %v248 = sea.ptr.index %v38 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_186"("aws-c-common/source/byte_buf.c":479:21))
  %v249 = sea.const 1 : i64 loc("_187"("aws-c-common/source/byte_buf.c":479:21))
  %v250 = sea.ptr.dereferenceable %v248, %v249 : !sea.ptr<64>, i64 loc("_187"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v250, ^bb76, ^bb165
^bb76:
  %v251 = sea.load %v48[%v248] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_189"("aws-c-common/source/byte_buf.c":479:21))
  %v252 = sea.const 0 : i8 loc("_190"("aws-c-common/source/byte_buf.c":480:15))
  %v253 = sea.icmp eq, %v251, %v252 : i8 loc("_190"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v253, ^bb141, ^bb77 loc("aws-c-common/source/byte_buf.c":480:13)
^bb77:
  %v254 = sea.ptr.index %v25 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_192"("aws-c-common/source/byte_buf.c":484:13))
  %v255 = sea.const 1 : i64 loc("_193"("aws-c-common/source/byte_buf.c":484:13))
  %v256 = sea.ptr.dereferenceable %v254, %v255 : !sea.ptr<64>, i64 loc("_193"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v256, ^bb78, ^bb165
^bb78:
  %v257 = sea.load %v24[%v254] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_195"("aws-c-common/source/byte_buf.c":484:13))
  %v258 = sea.icmp eq, %v257, %v251 : i8 loc(".not.i.i.3"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v258, ^bb79, ^bb151
^bb79:
  %v259 = sea.const 4 : i64 loc("exitcond19.not.3"("aws-c-common/source/byte_buf.c":478:26))
  %v260 = sea.icmp eq, %v8, %v259 : i64 loc("exitcond19.not.3"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v260, ^bb142, ^bb80 loc("aws-c-common/source/byte_buf.c":478:5)
^bb80:
  %v261 = sea.ptr.index %v38 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_197"("aws-c-common/source/byte_buf.c":479:21))
  %v262 = sea.const 1 : i64 loc("_198"("aws-c-common/source/byte_buf.c":479:21))
  %v263 = sea.ptr.dereferenceable %v261, %v262 : !sea.ptr<64>, i64 loc("_198"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v263, ^bb81, ^bb165
^bb81:
  %v264 = sea.load %v48[%v261] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_200"("aws-c-common/source/byte_buf.c":479:21))
  %v265 = sea.const 0 : i8 loc("_201"("aws-c-common/source/byte_buf.c":480:15))
  %v266 = sea.icmp eq, %v264, %v265 : i8 loc("_201"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v266, ^bb141, ^bb82 loc("aws-c-common/source/byte_buf.c":480:13)
^bb82:
  %v267 = sea.ptr.index %v25 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_203"("aws-c-common/source/byte_buf.c":484:13))
  %v268 = sea.const 1 : i64 loc("_204"("aws-c-common/source/byte_buf.c":484:13))
  %v269 = sea.ptr.dereferenceable %v267, %v268 : !sea.ptr<64>, i64 loc("_204"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v269, ^bb83, ^bb165
^bb83:
  %v270 = sea.load %v24[%v267] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_206"("aws-c-common/source/byte_buf.c":484:13))
  %v271 = sea.icmp eq, %v270, %v264 : i8 loc(".not.i.i.4"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v271, ^bb84, ^bb151
^bb84:
  %v272 = sea.const 5 : i64 loc("exitcond19.not.4"("aws-c-common/source/byte_buf.c":478:26))
  %v273 = sea.icmp eq, %v8, %v272 : i64 loc("exitcond19.not.4"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v273, ^bb142, ^bb85 loc("aws-c-common/source/byte_buf.c":478:5)
^bb85:
  %v274 = sea.ptr.index %v38 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_208"("aws-c-common/source/byte_buf.c":479:21))
  %v275 = sea.const 1 : i64 loc("_209"("aws-c-common/source/byte_buf.c":479:21))
  %v276 = sea.ptr.dereferenceable %v274, %v275 : !sea.ptr<64>, i64 loc("_209"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v276, ^bb86, ^bb165
^bb86:
  %v277 = sea.load %v48[%v274] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_211"("aws-c-common/source/byte_buf.c":479:21))
  %v278 = sea.const 0 : i8 loc("_212"("aws-c-common/source/byte_buf.c":480:15))
  %v279 = sea.icmp eq, %v277, %v278 : i8 loc("_212"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v279, ^bb141, ^bb87 loc("aws-c-common/source/byte_buf.c":480:13)
^bb87:
  %v280 = sea.ptr.index %v25 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_214"("aws-c-common/source/byte_buf.c":484:13))
  %v281 = sea.const 1 : i64 loc("_215"("aws-c-common/source/byte_buf.c":484:13))
  %v282 = sea.ptr.dereferenceable %v280, %v281 : !sea.ptr<64>, i64 loc("_215"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v282, ^bb88, ^bb165
^bb88:
  %v283 = sea.load %v24[%v280] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_217"("aws-c-common/source/byte_buf.c":484:13))
  %v284 = sea.icmp eq, %v283, %v277 : i8 loc(".not.i.i.5"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v284, ^bb89, ^bb151
^bb89:
  %v285 = sea.const 6 : i64 loc("exitcond19.not.5"("aws-c-common/source/byte_buf.c":478:26))
  %v286 = sea.icmp eq, %v8, %v285 : i64 loc("exitcond19.not.5"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v286, ^bb142, ^bb90 loc("aws-c-common/source/byte_buf.c":478:5)
^bb90:
  %v287 = sea.ptr.index %v38 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_219"("aws-c-common/source/byte_buf.c":479:21))
  %v288 = sea.const 1 : i64 loc("_220"("aws-c-common/source/byte_buf.c":479:21))
  %v289 = sea.ptr.dereferenceable %v287, %v288 : !sea.ptr<64>, i64 loc("_220"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v289, ^bb91, ^bb165
^bb91:
  %v290 = sea.load %v48[%v287] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_222"("aws-c-common/source/byte_buf.c":479:21))
  %v291 = sea.const 0 : i8 loc("_223"("aws-c-common/source/byte_buf.c":480:15))
  %v292 = sea.icmp eq, %v290, %v291 : i8 loc("_223"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v292, ^bb141, ^bb92 loc("aws-c-common/source/byte_buf.c":480:13)
^bb92:
  %v293 = sea.ptr.index %v25 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_225"("aws-c-common/source/byte_buf.c":484:13))
  %v294 = sea.const 1 : i64 loc("_226"("aws-c-common/source/byte_buf.c":484:13))
  %v295 = sea.ptr.dereferenceable %v293, %v294 : !sea.ptr<64>, i64 loc("_226"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v295, ^bb93, ^bb165
^bb93:
  %v296 = sea.load %v24[%v293] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_228"("aws-c-common/source/byte_buf.c":484:13))
  %v297 = sea.icmp eq, %v296, %v290 : i8 loc(".not.i.i.6"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v297, ^bb94, ^bb151
^bb94:
  %v298 = sea.const 7 : i64 loc("exitcond19.not.6"("aws-c-common/source/byte_buf.c":478:26))
  %v299 = sea.icmp eq, %v8, %v298 : i64 loc("exitcond19.not.6"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v299, ^bb142, ^bb95 loc("aws-c-common/source/byte_buf.c":478:5)
^bb95:
  %v300 = sea.ptr.index %v38 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_230"("aws-c-common/source/byte_buf.c":479:21))
  %v301 = sea.const 1 : i64 loc("_231"("aws-c-common/source/byte_buf.c":479:21))
  %v302 = sea.ptr.dereferenceable %v300, %v301 : !sea.ptr<64>, i64 loc("_231"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v302, ^bb96, ^bb165
^bb96:
  %v303 = sea.load %v48[%v300] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_233"("aws-c-common/source/byte_buf.c":479:21))
  %v304 = sea.const 0 : i8 loc("_234"("aws-c-common/source/byte_buf.c":480:15))
  %v305 = sea.icmp eq, %v303, %v304 : i8 loc("_234"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v305, ^bb141, ^bb97 loc("aws-c-common/source/byte_buf.c":480:13)
^bb97:
  %v306 = sea.ptr.index %v25 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_236"("aws-c-common/source/byte_buf.c":484:13))
  %v307 = sea.const 1 : i64 loc("_237"("aws-c-common/source/byte_buf.c":484:13))
  %v308 = sea.ptr.dereferenceable %v306, %v307 : !sea.ptr<64>, i64 loc("_237"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v308, ^bb98, ^bb165
^bb98:
  %v309 = sea.load %v24[%v306] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_239"("aws-c-common/source/byte_buf.c":484:13))
  %v310 = sea.icmp eq, %v309, %v303 : i8 loc(".not.i.i.7"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v310, ^bb99, ^bb151
^bb99:
  %v311 = sea.const 8 : i64 loc("exitcond19.not.7"("aws-c-common/source/byte_buf.c":478:26))
  %v312 = sea.icmp eq, %v8, %v311 : i64 loc("exitcond19.not.7"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v312, ^bb142, ^bb100 loc("aws-c-common/source/byte_buf.c":478:5)
^bb100:
  %v313 = sea.ptr.index %v38 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_241"("aws-c-common/source/byte_buf.c":479:21))
  %v314 = sea.const 1 : i64 loc("_242"("aws-c-common/source/byte_buf.c":479:21))
  %v315 = sea.ptr.dereferenceable %v313, %v314 : !sea.ptr<64>, i64 loc("_242"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v315, ^bb101, ^bb165
^bb101:
  %v316 = sea.load %v48[%v313] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_244"("aws-c-common/source/byte_buf.c":479:21))
  %v317 = sea.const 0 : i8 loc("_245"("aws-c-common/source/byte_buf.c":480:15))
  %v318 = sea.icmp eq, %v316, %v317 : i8 loc("_245"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v318, ^bb141, ^bb102 loc("aws-c-common/source/byte_buf.c":480:13)
^bb102:
  %v319 = sea.ptr.index %v25 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_247"("aws-c-common/source/byte_buf.c":484:13))
  %v320 = sea.const 1 : i64 loc("_248"("aws-c-common/source/byte_buf.c":484:13))
  %v321 = sea.ptr.dereferenceable %v319, %v320 : !sea.ptr<64>, i64 loc("_248"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v321, ^bb103, ^bb165
^bb103:
  %v322 = sea.load %v24[%v319] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_250"("aws-c-common/source/byte_buf.c":484:13))
  %v323 = sea.icmp eq, %v322, %v316 : i8 loc(".not.i.i.8"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v323, ^bb104, ^bb151
^bb104:
  %v324 = sea.const 9 : i64 loc("exitcond19.not.8"("aws-c-common/source/byte_buf.c":478:26))
  %v325 = sea.icmp eq, %v8, %v324 : i64 loc("exitcond19.not.8"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v325, ^bb142, ^bb105 loc("aws-c-common/source/byte_buf.c":478:5)
^bb105:
  %v326 = sea.ptr.index %v38 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_252"("aws-c-common/source/byte_buf.c":479:21))
  %v327 = sea.const 1 : i64 loc("_253"("aws-c-common/source/byte_buf.c":479:21))
  %v328 = sea.ptr.dereferenceable %v326, %v327 : !sea.ptr<64>, i64 loc("_253"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v328, ^bb106, ^bb165
^bb106:
  %v329 = sea.load %v48[%v326] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_255"("aws-c-common/source/byte_buf.c":479:21))
  %v330 = sea.const 0 : i8 loc("_256"("aws-c-common/source/byte_buf.c":480:15))
  %v331 = sea.icmp eq, %v329, %v330 : i8 loc("_256"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v331, ^bb141, ^bb107 loc("aws-c-common/source/byte_buf.c":480:13)
^bb107:
  %v332 = sea.ptr.index %v25 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_258"("aws-c-common/source/byte_buf.c":484:13))
  %v333 = sea.const 1 : i64 loc("_259"("aws-c-common/source/byte_buf.c":484:13))
  %v334 = sea.ptr.dereferenceable %v332, %v333 : !sea.ptr<64>, i64 loc("_259"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v334, ^bb108, ^bb165
^bb108:
  %v335 = sea.load %v24[%v332] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_261"("aws-c-common/source/byte_buf.c":484:13))
  %v336 = sea.icmp eq, %v335, %v329 : i8 loc(".not.i.i.9"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v336, ^bb109, ^bb151
^bb109:
  %v337 = sea.const 10 : i64 loc("exitcond19.not.9"("aws-c-common/source/byte_buf.c":478:26))
  %v338 = sea.icmp eq, %v8, %v337 : i64 loc("exitcond19.not.9"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v338, ^bb142, ^bb110 loc("aws-c-common/source/byte_buf.c":478:5)
^bb110:
  %v339 = sea.ptr.index %v38 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_263"("aws-c-common/source/byte_buf.c":479:21))
  %v340 = sea.const 1 : i64 loc("_264"("aws-c-common/source/byte_buf.c":479:21))
  %v341 = sea.ptr.dereferenceable %v339, %v340 : !sea.ptr<64>, i64 loc("_264"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v341, ^bb111, ^bb165
^bb111:
  %v342 = sea.load %v48[%v339] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_266"("aws-c-common/source/byte_buf.c":479:21))
  %v343 = sea.const 0 : i8 loc("_267"("aws-c-common/source/byte_buf.c":480:15))
  %v344 = sea.icmp eq, %v342, %v343 : i8 loc("_267"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v344, ^bb141, ^bb112 loc("aws-c-common/source/byte_buf.c":480:13)
^bb112:
  %v345 = sea.ptr.index %v25 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_269"("aws-c-common/source/byte_buf.c":484:13))
  %v346 = sea.const 1 : i64 loc("_270"("aws-c-common/source/byte_buf.c":484:13))
  %v347 = sea.ptr.dereferenceable %v345, %v346 : !sea.ptr<64>, i64 loc("_270"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v347, ^bb113, ^bb165
^bb113:
  %v348 = sea.load %v24[%v345] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_272"("aws-c-common/source/byte_buf.c":484:13))
  %v349 = sea.icmp eq, %v348, %v342 : i8 loc(".not.i.i.10"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v349, ^bb114, ^bb151
^bb114:
  %v350 = sea.const 11 : i64 loc("exitcond19.not.10"("aws-c-common/source/byte_buf.c":478:26))
  %v351 = sea.icmp eq, %v8, %v350 : i64 loc("exitcond19.not.10"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v351, ^bb142, ^bb115 loc("aws-c-common/source/byte_buf.c":478:5)
^bb115:
  %v352 = sea.ptr.index %v38 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_274"("aws-c-common/source/byte_buf.c":479:21))
  %v353 = sea.const 1 : i64 loc("_275"("aws-c-common/source/byte_buf.c":479:21))
  %v354 = sea.ptr.dereferenceable %v352, %v353 : !sea.ptr<64>, i64 loc("_275"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v354, ^bb116, ^bb165
^bb116:
  %v355 = sea.load %v48[%v352] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_277"("aws-c-common/source/byte_buf.c":479:21))
  %v356 = sea.const 0 : i8 loc("_278"("aws-c-common/source/byte_buf.c":480:15))
  %v357 = sea.icmp eq, %v355, %v356 : i8 loc("_278"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v357, ^bb141, ^bb117 loc("aws-c-common/source/byte_buf.c":480:13)
^bb117:
  %v358 = sea.ptr.index %v25 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_280"("aws-c-common/source/byte_buf.c":484:13))
  %v359 = sea.const 1 : i64 loc("_281"("aws-c-common/source/byte_buf.c":484:13))
  %v360 = sea.ptr.dereferenceable %v358, %v359 : !sea.ptr<64>, i64 loc("_281"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v360, ^bb118, ^bb165
^bb118:
  %v361 = sea.load %v24[%v358] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_283"("aws-c-common/source/byte_buf.c":484:13))
  %v362 = sea.icmp eq, %v361, %v355 : i8 loc(".not.i.i.11"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v362, ^bb119, ^bb151
^bb119:
  %v363 = sea.const 12 : i64 loc("exitcond19.not.11"("aws-c-common/source/byte_buf.c":478:26))
  %v364 = sea.icmp eq, %v8, %v363 : i64 loc("exitcond19.not.11"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v364, ^bb142, ^bb120 loc("aws-c-common/source/byte_buf.c":478:5)
^bb120:
  %v365 = sea.ptr.index %v38 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_285"("aws-c-common/source/byte_buf.c":479:21))
  %v366 = sea.const 1 : i64 loc("_286"("aws-c-common/source/byte_buf.c":479:21))
  %v367 = sea.ptr.dereferenceable %v365, %v366 : !sea.ptr<64>, i64 loc("_286"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v367, ^bb121, ^bb165
^bb121:
  %v368 = sea.load %v48[%v365] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_288"("aws-c-common/source/byte_buf.c":479:21))
  %v369 = sea.const 0 : i8 loc("_289"("aws-c-common/source/byte_buf.c":480:15))
  %v370 = sea.icmp eq, %v368, %v369 : i8 loc("_289"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v370, ^bb141, ^bb122 loc("aws-c-common/source/byte_buf.c":480:13)
^bb122:
  %v371 = sea.ptr.index %v25 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_291"("aws-c-common/source/byte_buf.c":484:13))
  %v372 = sea.const 1 : i64 loc("_292"("aws-c-common/source/byte_buf.c":484:13))
  %v373 = sea.ptr.dereferenceable %v371, %v372 : !sea.ptr<64>, i64 loc("_292"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v373, ^bb123, ^bb165
^bb123:
  %v374 = sea.load %v24[%v371] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_294"("aws-c-common/source/byte_buf.c":484:13))
  %v375 = sea.icmp eq, %v374, %v368 : i8 loc(".not.i.i.12"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v375, ^bb124, ^bb151
^bb124:
  %v376 = sea.const 13 : i64 loc("exitcond19.not.12"("aws-c-common/source/byte_buf.c":478:26))
  %v377 = sea.icmp eq, %v8, %v376 : i64 loc("exitcond19.not.12"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v377, ^bb142, ^bb125 loc("aws-c-common/source/byte_buf.c":478:5)
^bb125:
  %v378 = sea.ptr.index %v38 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_296"("aws-c-common/source/byte_buf.c":479:21))
  %v379 = sea.const 1 : i64 loc("_297"("aws-c-common/source/byte_buf.c":479:21))
  %v380 = sea.ptr.dereferenceable %v378, %v379 : !sea.ptr<64>, i64 loc("_297"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v380, ^bb126, ^bb165
^bb126:
  %v381 = sea.load %v48[%v378] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_299"("aws-c-common/source/byte_buf.c":479:21))
  %v382 = sea.const 0 : i8 loc("_300"("aws-c-common/source/byte_buf.c":480:15))
  %v383 = sea.icmp eq, %v381, %v382 : i8 loc("_300"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v383, ^bb141, ^bb127 loc("aws-c-common/source/byte_buf.c":480:13)
^bb127:
  %v384 = sea.ptr.index %v25 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_302"("aws-c-common/source/byte_buf.c":484:13))
  %v385 = sea.const 1 : i64 loc("_303"("aws-c-common/source/byte_buf.c":484:13))
  %v386 = sea.ptr.dereferenceable %v384, %v385 : !sea.ptr<64>, i64 loc("_303"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v386, ^bb128, ^bb165
^bb128:
  %v387 = sea.load %v24[%v384] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_305"("aws-c-common/source/byte_buf.c":484:13))
  %v388 = sea.icmp eq, %v387, %v381 : i8 loc(".not.i.i.13"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v388, ^bb129, ^bb151
^bb129:
  %v389 = sea.const 14 : i64 loc("exitcond19.not.13"("aws-c-common/source/byte_buf.c":478:26))
  %v390 = sea.icmp eq, %v8, %v389 : i64 loc("exitcond19.not.13"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v390, ^bb142, ^bb130 loc("aws-c-common/source/byte_buf.c":478:5)
^bb130:
  %v391 = sea.ptr.index %v38 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_307"("aws-c-common/source/byte_buf.c":479:21))
  %v392 = sea.const 1 : i64 loc("_308"("aws-c-common/source/byte_buf.c":479:21))
  %v393 = sea.ptr.dereferenceable %v391, %v392 : !sea.ptr<64>, i64 loc("_308"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v393, ^bb131, ^bb165
^bb131:
  %v394 = sea.load %v48[%v391] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_310"("aws-c-common/source/byte_buf.c":479:21))
  %v395 = sea.const 0 : i8 loc("_311"("aws-c-common/source/byte_buf.c":480:15))
  %v396 = sea.icmp eq, %v394, %v395 : i8 loc("_311"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v396, ^bb141, ^bb132 loc("aws-c-common/source/byte_buf.c":480:13)
^bb132:
  %v397 = sea.ptr.index %v25 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_313"("aws-c-common/source/byte_buf.c":484:13))
  %v398 = sea.const 1 : i64 loc("_314"("aws-c-common/source/byte_buf.c":484:13))
  %v399 = sea.ptr.dereferenceable %v397, %v398 : !sea.ptr<64>, i64 loc("_314"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v399, ^bb133, ^bb165
^bb133:
  %v400 = sea.load %v24[%v397] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_316"("aws-c-common/source/byte_buf.c":484:13))
  %v401 = sea.icmp eq, %v400, %v394 : i8 loc(".not.i.i.14"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v401, ^bb134, ^bb151
^bb134:
  %v402 = sea.const 15 : i64 loc("exitcond19.not.14"("aws-c-common/source/byte_buf.c":478:26))
  %v403 = sea.icmp eq, %v8, %v402 : i64 loc("exitcond19.not.14"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v403, ^bb142, ^bb135 loc("aws-c-common/source/byte_buf.c":478:5)
^bb135:
  %v404 = sea.ptr.index %v38 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_318"("aws-c-common/source/byte_buf.c":479:21))
  %v405 = sea.const 1 : i64 loc("_319"("aws-c-common/source/byte_buf.c":479:21))
  %v406 = sea.ptr.dereferenceable %v404, %v405 : !sea.ptr<64>, i64 loc("_319"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v406, ^bb136, ^bb165
^bb136:
  %v407 = sea.load %v48[%v404] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_321"("aws-c-common/source/byte_buf.c":479:21))
  %v408 = sea.const 0 : i8 loc("_322"("aws-c-common/source/byte_buf.c":480:15))
  %v409 = sea.icmp eq, %v407, %v408 : i8 loc("_322"("aws-c-common/source/byte_buf.c":480:15))
  sea.cond_br %v409, ^bb141, ^bb137 loc("aws-c-common/source/byte_buf.c":480:13)
^bb137:
  %v410 = sea.ptr.index %v25 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_324"("aws-c-common/source/byte_buf.c":484:13))
  %v411 = sea.const 1 : i64 loc("_325"("aws-c-common/source/byte_buf.c":484:13))
  %v412 = sea.ptr.dereferenceable %v410, %v411 : !sea.ptr<64>, i64 loc("_325"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v412, ^bb138, ^bb165
^bb138:
  %v413 = sea.load %v24[%v410] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_327"("aws-c-common/source/byte_buf.c":484:13))
  %v414 = sea.icmp eq, %v413, %v407 : i8 loc(".not.i.i.15"("aws-c-common/source/byte_buf.c":484:28))
  sea.cond_br %v414, ^bb139, ^bb151
^bb139:
  %v415 = sea.const 16 : i64 loc("exitcond19.not.15"("aws-c-common/source/byte_buf.c":478:26))
  %v416 = sea.icmp eq, %v8, %v415 : i64 loc("exitcond19.not.15"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v416, ^bb142, ^bb140 loc("aws-c-common/source/byte_buf.c":478:5)
^bb140:
  %v417 = sea.ptr.index %v38 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_329"("aws-c-common/source/byte_buf.c":479:21))
  %v418 = sea.const 1 : i64 loc("_330"("aws-c-common/source/byte_buf.c":479:21))
  %v419 = sea.ptr.dereferenceable %v417, %v418 : !sea.ptr<64>, i64 loc("_330"("aws-c-common/source/byte_buf.c":479:21))
  %v420 = sea.const 1 : i1
  %v421 = sea.xor %v419, %v420 : i1
  sea.assume %v421
  sea.br ^bb165
^bb141:
  sea.br ^bb152 loc("seahorn/lib/utils.c":39:14)
^bb142:
  %v422 = sea.ptr.index %v38 [%v8] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_337"("aws-c-common/source/byte_buf.c":489:12))
  %v423 = sea.const 1 : i64 loc("_338"("aws-c-common/source/byte_buf.c":489:12))
  %v424 = sea.ptr.dereferenceable %v422, %v423 : !sea.ptr<64>, i64 loc("_338"("aws-c-common/source/byte_buf.c":489:12))
  sea.cond_br %v424, ^bb143, ^bb165
^bb143:
  %v425 = sea.load %v48[%v422] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_340"("aws-c-common/source/byte_buf.c":489:12))
  %v426 = sea.const 0 : i8 loc("_341"("aws-c-common/source/byte_buf.c":489:33))
  %v427 = sea.icmp eq, %v425, %v426 : i8 loc("_341"("aws-c-common/source/byte_buf.c":489:33))
  sea.cond_br %v427, ^bb145, ^bb144 loc("seahorn/jobs/array_eq_c_str/aws_array_eq_c_str_harness.c":33:9)
^bb144:
  sea.cond_br %v12, ^bb158, ^bb149 loc("seahorn/jobs/array_eq_c_str/aws_array_eq_c_str_harness.c":42:9)
^bb145:
  %v428 = sea.icmp eq, %v8, %v43 : i64 loc("_343"("seahorn/jobs/array_eq_c_str/aws_array_eq_c_str_harness.c":35:9))
  sea.cond_br %v428, ^bb146, ^bb165 loc("seahorn/jobs/array_eq_c_str/aws_array_eq_c_str_harness.c":35:9)
^bb146:
  sea.cond_br %v12, ^bb158, ^bb147 loc("seahorn/jobs/array_eq_c_str/aws_array_eq_c_str_harness.c":36:13)
^bb147:
  %v429 = sea.ptr.null : !sea.ptr<64> loc(".not.i10.i"("seahorn/lib/utils.c":15:3))
  %v430 = sea.ptr.cmp eq, %v25, %v429 : !sea.ptr<64> loc(".not.i10.i"("seahorn/lib/utils.c":15:3))
  %v431 = sea.xor %v430, %v41 : i1 loc("_346"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v431, ^bb148, ^bb165 loc("seahorn/lib/utils.c":15:3)
^bb148:
  %v432 = sea.and %v181, %v41 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v432, ^bb150, ^bb149 loc("seahorn/lib/utils.c":16:15)
^bb149:
  %v433 = sea.ptr.null : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v434 = sea.ptr.cmp eq, %v25, %v433 : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  sea.cond_br %v434, ^bb158, ^bb152 loc("seahorn/lib/utils.c":39:14)
^bb150:
  %v435 = sea.nondet "nd_size_t" [18] : i64 loc("_348"("seahorn/lib/utils.c":17:16))
  %v436 = sea.icmp ult, %v435, %v8 : i64 loc("_349"("seahorn/lib/utils.c":19:14))
  sea.assume %v436 loc("seahorn/lib/utils.c":19:5)
  %v437 = sea.ptr.index %v25 [%v435] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_350"("seahorn/lib/utils.c":20:5))
  %v438 = sea.load %v24[%v437] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_351"("seahorn/lib/utils.c":20:5))
  %v439 = sea.ptr.index %v38 [%v435] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_352"("seahorn/lib/utils.c":20:5))
  %v440 = sea.load %v48[%v439] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_353"("seahorn/lib/utils.c":20:5))
  %v441 = sea.icmp eq, %v438, %v440 : i8 loc("_354"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v441, ^bb151, ^bb165 loc("seahorn/lib/utils.c":20:5)
^bb151:
  sea.br ^bb152 loc("seahorn/lib/utils.c":39:14)
^bb152:
  sea.br ^bb153
^bb153:
  %v442 = sea.ptr.index %v25 [%v176] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_357"("seahorn/lib/utils.c":40:5))
  %v443 = sea.const 1 : i64 loc("_358"("seahorn/lib/utils.c":40:5))
  %v444 = sea.ptr.dereferenceable %v442, %v443 : !sea.ptr<64>, i64 loc("_358"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v444, ^bb154, ^bb165
^bb154:
  %v445 = sea.load %v24[%v442] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_360"("seahorn/lib/utils.c":40:5))
  sea.br ^bb155
^bb155:
  %v446 = sea.icmp eq, %v445, %v193 : i8 loc("_362"("seahorn/lib/utils.c":40:5))
  sea.br ^bb156
^bb156:
  %v447 = sea.const 1 : i64 loc("_364"("seahorn/lib/utils.c":40:5))
  %v448 = sea.ptr.dereferenceable %v442, %v447 : !sea.ptr<64>, i64 loc("_364"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v448, ^bb157, ^bb165
^bb157:
  %v449 = sea.const 1 : i1 loc("or.cond")
  %v450 = sea.const 0 : i1 loc("or.cond")
  %v451 = sea.select %v449, %v446, %v450 : i1 loc("or.cond")
  sea.cond_br %v451, ^bb158, ^bb165
^bb158:
  %v452 = sea.const 1 : i1 loc("seahorn/jobs/array_eq_c_str/aws_array_eq_c_str_harness.c":45:9)
  %v453 = sea.xor %v50, %v452 : i1 loc("seahorn/jobs/array_eq_c_str/aws_array_eq_c_str_harness.c":45:9)
  sea.assume %v453 loc("seahorn/jobs/array_eq_c_str/aws_array_eq_c_str_harness.c":45:9)
  sea.assume %v41 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb159
^bb159:
  %v454 = sea.ptr.index %v38 [%v194] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_367"("seahorn/lib/utils.c":40:5))
  %v455 = sea.const 1 : i64 loc("_368"("seahorn/lib/utils.c":40:5))
  %v456 = sea.ptr.dereferenceable %v454, %v455 : !sea.ptr<64>, i64 loc("_368"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v456, ^bb160, ^bb165
^bb160:
  %v457 = sea.load %v48[%v454] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_370"("seahorn/lib/utils.c":40:5))
  sea.br ^bb161
^bb161:
  %v458 = sea.icmp eq, %v457, %v209 : i8 loc("_372"("seahorn/lib/utils.c":40:5))
  sea.br ^bb162
^bb162:
  %v459 = sea.const 1 : i64 loc("_374"("seahorn/lib/utils.c":40:5))
  %v460 = sea.ptr.dereferenceable %v454, %v459 : !sea.ptr<64>, i64 loc("_374"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v460, ^bb163, ^bb165
^bb163:
  sea.br ^bb164
^bb164:
  %v461 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v462 = sea.xor %v458, %v461 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v462 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb165 loc("seahorn/lib/utils.c":40:5)
^bb165:
  sea.br ^bb166
^bb166:
  %v463 = sea.const 0 : i1
  sea.assert %v463
  sea.halt
}
