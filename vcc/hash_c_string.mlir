// Exported from SeaHorn (hash_c_string.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm14")
  %v1 = sea.nondet "nd_size_t" [1] : i64 loc("_0"("seahorn/lib/string_helper.c":76:16))
  %v2 = sea.const 0 : i64 loc("_1"("seahorn/lib/string_helper.c":78:21))
  %v3 = sea.icmp ne, %v1, %v2 : i64 loc("_1"("seahorn/lib/string_helper.c":78:21))
  sea.assume %v3 loc("seahorn/lib/string_helper.c":78:3)
  %v4 = sea.const 17 : i64 loc("_2"("seahorn/lib/string_helper.c":79:21))
  %v5 = sea.icmp ult, %v1, %v4 : i64 loc("_2"("seahorn/lib/string_helper.c":79:21))
  sea.assume %v5 loc("seahorn/lib/string_helper.c":79:3)
  %v6 = sea.const 1 : i1 loc("seahorn/lib/string_helper.c":80:3)
  sea.assume %v6 loc("seahorn/lib/string_helper.c":80:3)
  %v7 = sea.nondet "nd_malloc_is_fail" [2] : i1 loc("_3"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v7, ^bb37, ^bb1 loc("seahorn/lib/sea_allocators.c":11:10)
^bb1:
  %v8 = sea.const 7 : i64 loc("_5"("seahorn/lib/sea_allocators.c":26:21))
  %v9 = sea.add %v1, %v8 : i64 loc("_5"("seahorn/lib/sea_allocators.c":26:21))
  %v10 = sea.const 18446744073709551608 : i64 loc("_6"("seahorn/lib/sea_allocators.c":26:21))
  %v11 = sea.and %v9, %v10 : i64 loc("_6"("seahorn/lib/sea_allocators.c":26:21))
  %v12 = sea.const 1 : i64 loc("malloc.i")
  %v13 = sea.mul %v11, %v12 : i64 loc("malloc.i")
  %v14 = sea.alloca %v13 align 16 [3] : i64 -> !sea.ptr<64> loc("malloc.i")
  %v15 = sea.memhavoc %v0[%v14], %v1 [4] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":65:3)
  %v16 = sea.const 18446744073709551615 : i64 loc("_7"("seahorn/lib/string_helper.c":90:32))
  %v17 = sea.add %v1, %v16 : i64 loc("_7"("seahorn/lib/string_helper.c":90:32))
  %v18 = sea.ptr.index %v14 [%v17] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_8"("seahorn/lib/string_helper.c":39:3))
  %v19 = sea.const 1 : i64 loc("_9"("seahorn/lib/string_helper.c":39:16))
  %v20 = sea.ptr.dereferenceable %v18, %v19 : !sea.ptr<64>, i64 loc("_9"("seahorn/lib/string_helper.c":39:16))
  sea.cond_br %v20, ^bb2, ^bb122
^bb2:
  %v21 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":39:16)
  %v22 = sea.store %v15[%v18], %v21 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":39:16)
  %v23 = sea.const 0 : i64 loc(".not"("seahorn/lib/string_helper.c":42:11))
  %v24 = sea.icmp eq, %v17, %v23 : i64 loc(".not"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v24, ^bb35, ^bb3 loc("seahorn/lib/string_helper.c":42:9)
^bb3:
  %v25 = sea.const 1 : i64 loc("_12"("seahorn/lib/string_helper.c":43:14))
  %v26 = sea.ptr.dereferenceable %v14, %v25 : !sea.ptr<64>, i64 loc("_12"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v26, ^bb4, ^bb122
^bb4:
  %v27 = sea.load %v22[%v14] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_14"("seahorn/lib/string_helper.c":43:14))
  %v28 = sea.const 0 : i8 loc("_15"("seahorn/lib/string_helper.c":43:21))
  %v29 = sea.icmp ne, %v27, %v28 : i8 loc("_15"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v29 loc("seahorn/lib/string_helper.c":43:7)
  %v30 = sea.const 1 : i64 loc(".not33"("seahorn/lib/string_helper.c":42:11))
  %v31 = sea.icmp eq, %v17, %v30 : i64 loc(".not33"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v31, ^bb35, ^bb5 loc("seahorn/lib/string_helper.c":42:9)
^bb5:
  %v32 = sea.ptr.index %v14 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_17"("seahorn/lib/string_helper.c":43:14))
  %v33 = sea.const 1 : i64 loc("_18"("seahorn/lib/string_helper.c":43:14))
  %v34 = sea.ptr.dereferenceable %v32, %v33 : !sea.ptr<64>, i64 loc("_18"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v34, ^bb6, ^bb122
^bb6:
  %v35 = sea.load %v22[%v32] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_20"("seahorn/lib/string_helper.c":43:14))
  %v36 = sea.const 0 : i8 loc("_21"("seahorn/lib/string_helper.c":43:21))
  %v37 = sea.icmp ne, %v35, %v36 : i8 loc("_21"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v37 loc("seahorn/lib/string_helper.c":43:7)
  %v38 = sea.const 2 : i64 loc("_22"("seahorn/lib/string_helper.c":42:11))
  %v39 = sea.icmp ugt, %v17, %v38 : i64 loc("_22"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v39, ^bb7, ^bb35 loc("seahorn/lib/string_helper.c":42:9)
^bb7:
  %v40 = sea.ptr.index %v14 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_24"("seahorn/lib/string_helper.c":43:14))
  %v41 = sea.const 1 : i64 loc("_25"("seahorn/lib/string_helper.c":43:14))
  %v42 = sea.ptr.dereferenceable %v40, %v41 : !sea.ptr<64>, i64 loc("_25"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v42, ^bb8, ^bb122
^bb8:
  %v43 = sea.load %v22[%v40] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_27"("seahorn/lib/string_helper.c":43:14))
  %v44 = sea.const 0 : i8 loc("_28"("seahorn/lib/string_helper.c":43:21))
  %v45 = sea.icmp ne, %v43, %v44 : i8 loc("_28"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v45 loc("seahorn/lib/string_helper.c":43:7)
  %v46 = sea.const 3 : i64 loc(".not34"("seahorn/lib/string_helper.c":42:11))
  %v47 = sea.icmp eq, %v17, %v46 : i64 loc(".not34"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v47, ^bb35, ^bb9 loc("seahorn/lib/string_helper.c":42:9)
^bb9:
  %v48 = sea.ptr.index %v14 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_30"("seahorn/lib/string_helper.c":43:14))
  %v49 = sea.const 1 : i64 loc("_31"("seahorn/lib/string_helper.c":43:14))
  %v50 = sea.ptr.dereferenceable %v48, %v49 : !sea.ptr<64>, i64 loc("_31"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v50, ^bb10, ^bb122
^bb10:
  %v51 = sea.load %v22[%v48] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_33"("seahorn/lib/string_helper.c":43:14))
  %v52 = sea.const 0 : i8 loc("_34"("seahorn/lib/string_helper.c":43:21))
  %v53 = sea.icmp ne, %v51, %v52 : i8 loc("_34"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v53 loc("seahorn/lib/string_helper.c":43:7)
  %v54 = sea.const 4 : i64 loc("_35"("seahorn/lib/string_helper.c":42:11))
  %v55 = sea.icmp ugt, %v17, %v54 : i64 loc("_35"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v55, ^bb11, ^bb35 loc("seahorn/lib/string_helper.c":42:9)
^bb11:
  %v56 = sea.ptr.index %v14 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_37"("seahorn/lib/string_helper.c":43:14))
  %v57 = sea.const 1 : i64 loc("_38"("seahorn/lib/string_helper.c":43:14))
  %v58 = sea.ptr.dereferenceable %v56, %v57 : !sea.ptr<64>, i64 loc("_38"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v58, ^bb12, ^bb122
^bb12:
  %v59 = sea.load %v22[%v56] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_40"("seahorn/lib/string_helper.c":43:14))
  %v60 = sea.const 0 : i8 loc("_41"("seahorn/lib/string_helper.c":43:21))
  %v61 = sea.icmp ne, %v59, %v60 : i8 loc("_41"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v61 loc("seahorn/lib/string_helper.c":43:7)
  %v62 = sea.const 5 : i64 loc(".not35"("seahorn/lib/string_helper.c":42:11))
  %v63 = sea.icmp eq, %v17, %v62 : i64 loc(".not35"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v63, ^bb35, ^bb13 loc("seahorn/lib/string_helper.c":42:9)
^bb13:
  %v64 = sea.ptr.index %v14 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_43"("seahorn/lib/string_helper.c":43:14))
  %v65 = sea.const 1 : i64 loc("_44"("seahorn/lib/string_helper.c":43:14))
  %v66 = sea.ptr.dereferenceable %v64, %v65 : !sea.ptr<64>, i64 loc("_44"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v66, ^bb14, ^bb122
^bb14:
  %v67 = sea.load %v22[%v64] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_46"("seahorn/lib/string_helper.c":43:14))
  %v68 = sea.const 0 : i8 loc("_47"("seahorn/lib/string_helper.c":43:21))
  %v69 = sea.icmp ne, %v67, %v68 : i8 loc("_47"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v69 loc("seahorn/lib/string_helper.c":43:7)
  %v70 = sea.const 6 : i64 loc("_48"("seahorn/lib/string_helper.c":42:11))
  %v71 = sea.icmp ugt, %v17, %v70 : i64 loc("_48"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v71, ^bb15, ^bb35 loc("seahorn/lib/string_helper.c":42:9)
^bb15:
  %v72 = sea.ptr.index %v14 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_50"("seahorn/lib/string_helper.c":43:14))
  %v73 = sea.const 1 : i64 loc("_51"("seahorn/lib/string_helper.c":43:14))
  %v74 = sea.ptr.dereferenceable %v72, %v73 : !sea.ptr<64>, i64 loc("_51"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v74, ^bb16, ^bb122
^bb16:
  %v75 = sea.load %v22[%v72] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_53"("seahorn/lib/string_helper.c":43:14))
  %v76 = sea.const 0 : i8 loc("_54"("seahorn/lib/string_helper.c":43:21))
  %v77 = sea.icmp ne, %v75, %v76 : i8 loc("_54"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v77 loc("seahorn/lib/string_helper.c":43:7)
  %v78 = sea.const 7 : i64 loc(".not36"("seahorn/lib/string_helper.c":42:11))
  %v79 = sea.icmp eq, %v17, %v78 : i64 loc(".not36"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v79, ^bb35, ^bb17 loc("seahorn/lib/string_helper.c":42:9)
^bb17:
  %v80 = sea.ptr.index %v14 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_56"("seahorn/lib/string_helper.c":43:14))
  %v81 = sea.const 1 : i64 loc("_57"("seahorn/lib/string_helper.c":43:14))
  %v82 = sea.ptr.dereferenceable %v80, %v81 : !sea.ptr<64>, i64 loc("_57"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v82, ^bb18, ^bb122
^bb18:
  %v83 = sea.load %v22[%v80] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_59"("seahorn/lib/string_helper.c":43:14))
  %v84 = sea.const 0 : i8 loc("_60"("seahorn/lib/string_helper.c":43:21))
  %v85 = sea.icmp ne, %v83, %v84 : i8 loc("_60"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v85 loc("seahorn/lib/string_helper.c":43:7)
  %v86 = sea.const 8 : i64 loc("_61"("seahorn/lib/string_helper.c":42:11))
  %v87 = sea.icmp ugt, %v17, %v86 : i64 loc("_61"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v87, ^bb19, ^bb35 loc("seahorn/lib/string_helper.c":42:9)
^bb19:
  %v88 = sea.ptr.index %v14 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_63"("seahorn/lib/string_helper.c":43:14))
  %v89 = sea.const 1 : i64 loc("_64"("seahorn/lib/string_helper.c":43:14))
  %v90 = sea.ptr.dereferenceable %v88, %v89 : !sea.ptr<64>, i64 loc("_64"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v90, ^bb20, ^bb122
^bb20:
  %v91 = sea.load %v22[%v88] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_66"("seahorn/lib/string_helper.c":43:14))
  %v92 = sea.const 0 : i8 loc("_67"("seahorn/lib/string_helper.c":43:21))
  %v93 = sea.icmp ne, %v91, %v92 : i8 loc("_67"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v93 loc("seahorn/lib/string_helper.c":43:7)
  %v94 = sea.const 9 : i64 loc(".not37"("seahorn/lib/string_helper.c":42:11))
  %v95 = sea.icmp eq, %v17, %v94 : i64 loc(".not37"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v95, ^bb35, ^bb21 loc("seahorn/lib/string_helper.c":42:9)
^bb21:
  %v96 = sea.ptr.index %v14 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_69"("seahorn/lib/string_helper.c":43:14))
  %v97 = sea.const 1 : i64 loc("_70"("seahorn/lib/string_helper.c":43:14))
  %v98 = sea.ptr.dereferenceable %v96, %v97 : !sea.ptr<64>, i64 loc("_70"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v98, ^bb22, ^bb122
^bb22:
  %v99 = sea.load %v22[%v96] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_72"("seahorn/lib/string_helper.c":43:14))
  %v100 = sea.const 0 : i8 loc("_73"("seahorn/lib/string_helper.c":43:21))
  %v101 = sea.icmp ne, %v99, %v100 : i8 loc("_73"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v101 loc("seahorn/lib/string_helper.c":43:7)
  %v102 = sea.const 10 : i64 loc("_74"("seahorn/lib/string_helper.c":42:11))
  %v103 = sea.icmp ugt, %v17, %v102 : i64 loc("_74"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v103, ^bb23, ^bb35 loc("seahorn/lib/string_helper.c":42:9)
^bb23:
  %v104 = sea.ptr.index %v14 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_76"("seahorn/lib/string_helper.c":43:14))
  %v105 = sea.const 1 : i64 loc("_77"("seahorn/lib/string_helper.c":43:14))
  %v106 = sea.ptr.dereferenceable %v104, %v105 : !sea.ptr<64>, i64 loc("_77"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v106, ^bb24, ^bb122
^bb24:
  %v107 = sea.load %v22[%v104] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_79"("seahorn/lib/string_helper.c":43:14))
  %v108 = sea.const 0 : i8 loc("_80"("seahorn/lib/string_helper.c":43:21))
  %v109 = sea.icmp ne, %v107, %v108 : i8 loc("_80"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v109 loc("seahorn/lib/string_helper.c":43:7)
  %v110 = sea.const 11 : i64 loc(".not38"("seahorn/lib/string_helper.c":42:11))
  %v111 = sea.icmp eq, %v17, %v110 : i64 loc(".not38"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v111, ^bb35, ^bb25 loc("seahorn/lib/string_helper.c":42:9)
^bb25:
  %v112 = sea.ptr.index %v14 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_82"("seahorn/lib/string_helper.c":43:14))
  %v113 = sea.const 1 : i64 loc("_83"("seahorn/lib/string_helper.c":43:14))
  %v114 = sea.ptr.dereferenceable %v112, %v113 : !sea.ptr<64>, i64 loc("_83"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v114, ^bb26, ^bb122
^bb26:
  %v115 = sea.load %v22[%v112] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_85"("seahorn/lib/string_helper.c":43:14))
  %v116 = sea.const 0 : i8 loc("_86"("seahorn/lib/string_helper.c":43:21))
  %v117 = sea.icmp ne, %v115, %v116 : i8 loc("_86"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v117 loc("seahorn/lib/string_helper.c":43:7)
  %v118 = sea.const 12 : i64 loc("_87"("seahorn/lib/string_helper.c":42:11))
  %v119 = sea.icmp ugt, %v17, %v118 : i64 loc("_87"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v119, ^bb27, ^bb35 loc("seahorn/lib/string_helper.c":42:9)
^bb27:
  %v120 = sea.ptr.index %v14 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_89"("seahorn/lib/string_helper.c":43:14))
  %v121 = sea.const 1 : i64 loc("_90"("seahorn/lib/string_helper.c":43:14))
  %v122 = sea.ptr.dereferenceable %v120, %v121 : !sea.ptr<64>, i64 loc("_90"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v122, ^bb28, ^bb122
^bb28:
  %v123 = sea.load %v22[%v120] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_92"("seahorn/lib/string_helper.c":43:14))
  %v124 = sea.const 0 : i8 loc("_93"("seahorn/lib/string_helper.c":43:21))
  %v125 = sea.icmp ne, %v123, %v124 : i8 loc("_93"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v125 loc("seahorn/lib/string_helper.c":43:7)
  %v126 = sea.const 13 : i64 loc(".not39"("seahorn/lib/string_helper.c":42:11))
  %v127 = sea.icmp eq, %v17, %v126 : i64 loc(".not39"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v127, ^bb35, ^bb29 loc("seahorn/lib/string_helper.c":42:9)
^bb29:
  %v128 = sea.ptr.index %v14 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_95"("seahorn/lib/string_helper.c":43:14))
  %v129 = sea.const 1 : i64 loc("_96"("seahorn/lib/string_helper.c":43:14))
  %v130 = sea.ptr.dereferenceable %v128, %v129 : !sea.ptr<64>, i64 loc("_96"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v130, ^bb30, ^bb122
^bb30:
  %v131 = sea.load %v22[%v128] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_98"("seahorn/lib/string_helper.c":43:14))
  %v132 = sea.const 0 : i8 loc("_99"("seahorn/lib/string_helper.c":43:21))
  %v133 = sea.icmp ne, %v131, %v132 : i8 loc("_99"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v133 loc("seahorn/lib/string_helper.c":43:7)
  %v134 = sea.const 14 : i64 loc("_100"("seahorn/lib/string_helper.c":42:11))
  %v135 = sea.icmp ugt, %v17, %v134 : i64 loc("_100"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v135, ^bb31, ^bb35 loc("seahorn/lib/string_helper.c":42:9)
^bb31:
  %v136 = sea.ptr.index %v14 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_102"("seahorn/lib/string_helper.c":43:14))
  %v137 = sea.const 1 : i64 loc("_103"("seahorn/lib/string_helper.c":43:14))
  %v138 = sea.ptr.dereferenceable %v136, %v137 : !sea.ptr<64>, i64 loc("_103"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v138, ^bb32, ^bb122
^bb32:
  %v139 = sea.load %v22[%v136] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_105"("seahorn/lib/string_helper.c":43:14))
  %v140 = sea.const 0 : i8 loc("_106"("seahorn/lib/string_helper.c":43:21))
  %v141 = sea.icmp ne, %v139, %v140 : i8 loc("_106"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v141 loc("seahorn/lib/string_helper.c":43:7)
  %v142 = sea.const 15 : i64 loc(".not40"("seahorn/lib/string_helper.c":42:11))
  %v143 = sea.icmp eq, %v17, %v142 : i64 loc(".not40"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v143, ^bb35, ^bb33 loc("seahorn/lib/string_helper.c":42:9)
^bb33:
  %v144 = sea.ptr.index %v14 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_108"("seahorn/lib/string_helper.c":43:14))
  %v145 = sea.const 1 : i64 loc("_109"("seahorn/lib/string_helper.c":43:14))
  %v146 = sea.ptr.dereferenceable %v144, %v145 : !sea.ptr<64>, i64 loc("_109"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v146, ^bb34, ^bb122
^bb34:
  %v147 = sea.load %v22[%v144] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_111"("seahorn/lib/string_helper.c":43:14))
  %v148 = sea.const 0 : i8 loc("_112"("seahorn/lib/string_helper.c":43:21))
  %v149 = sea.icmp ne, %v147, %v148 : i8 loc("_112"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v149 loc("seahorn/lib/string_helper.c":43:7)
  sea.br ^bb35 loc("seahorn/lib/string_helper.c":44:5)
^bb35:
  sea.br ^bb36
^bb36:
  sea.br ^bb38(%v22, %v14 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/string_helper.c":92:3)
^bb37:
  %v150 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":87:7)
  sea.br ^bb38(%v0, %v150 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/string_helper.c":87:7)
^bb38(%v151 : !sea.mem<!sea.ptr<64>, i8>, %v152 : !sea.ptr<64>):
  %v153 = sea.ptr.null : !sea.ptr<64> loc("_114"("aws-c-common/include/aws/common/string.inl":48:16))
  %v154 = sea.ptr.cmp ne, %v152, %v153 : !sea.ptr<64> loc("_114"("aws-c-common/include/aws/common/string.inl":48:16))
  sea.assume %v154 loc("seahorn/jobs/hash_c_string/aws_hash_c_string_harness.c":23:3)
  %v155 = sea.const 1 : i64 loc("_115"("seahorn/lib/sea_string.cc":32:52))
  %v156 = sea.ptr.dereferenceable %v152, %v155 : !sea.ptr<64>, i64 loc("_115"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v156, ^bb39, ^bb122
^bb39:
  %v157 = sea.load %v151[%v152] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_116"("seahorn/lib/sea_string.cc":32:52))
  %v158 = sea.const 0 : i8 loc("_117"("seahorn/lib/sea_string.cc":32:59))
  %v159 = sea.icmp eq, %v157, %v158 : i8 loc("_117"("seahorn/lib/sea_string.cc":32:59))
  %v160 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v161 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v162 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v163 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v164 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v165 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v166 = sea.const 0 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v159, ^bb71(%v160, %v161, %v162, %v163, %v164, %v165, %v166 : i1, i1, i1, i1, i1, i1, i64), ^bb40 loc("seahorn/lib/sea_string.cc":12:9)
^bb40:
  %v167 = sea.ptr.index %v152 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_119"("seahorn/lib/sea_string.cc":32:52))
  %v168 = sea.const 1 : i64 loc("_120"("seahorn/lib/sea_string.cc":32:52))
  %v169 = sea.ptr.dereferenceable %v167, %v168 : !sea.ptr<64>, i64 loc("_120"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v169, ^bb41, ^bb122
^bb41:
  %v170 = sea.load %v151[%v167] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_121"("seahorn/lib/sea_string.cc":32:52))
  %v171 = sea.const 0 : i8 loc("_122"("seahorn/lib/sea_string.cc":32:59))
  %v172 = sea.icmp eq, %v170, %v171 : i8 loc("_122"("seahorn/lib/sea_string.cc":32:59))
  %v173 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v174 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v175 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v176 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v177 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v178 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v179 = sea.const 1 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v172, ^bb71(%v173, %v174, %v175, %v176, %v177, %v178, %v179 : i1, i1, i1, i1, i1, i1, i64), ^bb42 loc("seahorn/lib/sea_string.cc":12:9)
^bb42:
  %v180 = sea.ptr.index %v152 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_124"("seahorn/lib/sea_string.cc":32:52))
  %v181 = sea.const 1 : i64 loc("_125"("seahorn/lib/sea_string.cc":32:52))
  %v182 = sea.ptr.dereferenceable %v180, %v181 : !sea.ptr<64>, i64 loc("_125"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v182, ^bb43, ^bb122
^bb43:
  %v183 = sea.load %v151[%v180] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_126"("seahorn/lib/sea_string.cc":32:52))
  %v184 = sea.const 0 : i8 loc("_127"("seahorn/lib/sea_string.cc":32:59))
  %v185 = sea.icmp eq, %v183, %v184 : i8 loc("_127"("seahorn/lib/sea_string.cc":32:59))
  %v186 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v187 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v188 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v189 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v190 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v191 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v192 = sea.const 2 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v185, ^bb71(%v186, %v187, %v188, %v189, %v190, %v191, %v192 : i1, i1, i1, i1, i1, i1, i64), ^bb44 loc("seahorn/lib/sea_string.cc":12:9)
^bb44:
  %v193 = sea.ptr.index %v152 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_129"("seahorn/lib/sea_string.cc":32:52))
  %v194 = sea.const 1 : i64 loc("_130"("seahorn/lib/sea_string.cc":32:52))
  %v195 = sea.ptr.dereferenceable %v193, %v194 : !sea.ptr<64>, i64 loc("_130"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v195, ^bb45, ^bb122
^bb45:
  %v196 = sea.load %v151[%v193] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_131"("seahorn/lib/sea_string.cc":32:52))
  %v197 = sea.const 0 : i8 loc("_132"("seahorn/lib/sea_string.cc":32:59))
  %v198 = sea.icmp eq, %v196, %v197 : i8 loc("_132"("seahorn/lib/sea_string.cc":32:59))
  %v199 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v200 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v201 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v202 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v203 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v204 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v205 = sea.const 3 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v198, ^bb71(%v199, %v200, %v201, %v202, %v203, %v204, %v205 : i1, i1, i1, i1, i1, i1, i64), ^bb46 loc("seahorn/lib/sea_string.cc":12:9)
^bb46:
  %v206 = sea.ptr.index %v152 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_134"("seahorn/lib/sea_string.cc":32:52))
  %v207 = sea.const 1 : i64 loc("_135"("seahorn/lib/sea_string.cc":32:52))
  %v208 = sea.ptr.dereferenceable %v206, %v207 : !sea.ptr<64>, i64 loc("_135"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v208, ^bb47, ^bb122
^bb47:
  %v209 = sea.load %v151[%v206] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_136"("seahorn/lib/sea_string.cc":32:52))
  %v210 = sea.const 0 : i8 loc("_137"("seahorn/lib/sea_string.cc":32:59))
  %v211 = sea.icmp eq, %v209, %v210 : i8 loc("_137"("seahorn/lib/sea_string.cc":32:59))
  %v212 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v213 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v214 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v215 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v216 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v217 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v218 = sea.const 4 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v211, ^bb71(%v212, %v213, %v214, %v215, %v216, %v217, %v218 : i1, i1, i1, i1, i1, i1, i64), ^bb48 loc("seahorn/lib/sea_string.cc":12:9)
^bb48:
  %v219 = sea.ptr.index %v152 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_139"("seahorn/lib/sea_string.cc":32:52))
  %v220 = sea.const 1 : i64 loc("_140"("seahorn/lib/sea_string.cc":32:52))
  %v221 = sea.ptr.dereferenceable %v219, %v220 : !sea.ptr<64>, i64 loc("_140"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v221, ^bb49, ^bb122
^bb49:
  %v222 = sea.load %v151[%v219] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_141"("seahorn/lib/sea_string.cc":32:52))
  %v223 = sea.const 0 : i8 loc("_142"("seahorn/lib/sea_string.cc":32:59))
  %v224 = sea.icmp eq, %v222, %v223 : i8 loc("_142"("seahorn/lib/sea_string.cc":32:59))
  %v225 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v226 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v227 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v228 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v229 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v230 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v231 = sea.const 5 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v224, ^bb71(%v225, %v226, %v227, %v228, %v229, %v230, %v231 : i1, i1, i1, i1, i1, i1, i64), ^bb50 loc("seahorn/lib/sea_string.cc":12:9)
^bb50:
  %v232 = sea.ptr.index %v152 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_144"("seahorn/lib/sea_string.cc":32:52))
  %v233 = sea.const 1 : i64 loc("_145"("seahorn/lib/sea_string.cc":32:52))
  %v234 = sea.ptr.dereferenceable %v232, %v233 : !sea.ptr<64>, i64 loc("_145"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v234, ^bb51, ^bb122
^bb51:
  %v235 = sea.load %v151[%v232] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_146"("seahorn/lib/sea_string.cc":32:52))
  %v236 = sea.const 0 : i8 loc("_147"("seahorn/lib/sea_string.cc":32:59))
  %v237 = sea.icmp eq, %v235, %v236 : i8 loc("_147"("seahorn/lib/sea_string.cc":32:59))
  %v238 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v239 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v240 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v241 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v242 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v243 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v244 = sea.const 6 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v237, ^bb71(%v238, %v239, %v240, %v241, %v242, %v243, %v244 : i1, i1, i1, i1, i1, i1, i64), ^bb52 loc("seahorn/lib/sea_string.cc":12:9)
^bb52:
  %v245 = sea.ptr.index %v152 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_149"("seahorn/lib/sea_string.cc":32:52))
  %v246 = sea.const 1 : i64 loc("_150"("seahorn/lib/sea_string.cc":32:52))
  %v247 = sea.ptr.dereferenceable %v245, %v246 : !sea.ptr<64>, i64 loc("_150"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v247, ^bb53, ^bb122
^bb53:
  %v248 = sea.load %v151[%v245] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_151"("seahorn/lib/sea_string.cc":32:52))
  %v249 = sea.const 0 : i8 loc("_152"("seahorn/lib/sea_string.cc":32:59))
  %v250 = sea.icmp eq, %v248, %v249 : i8 loc("_152"("seahorn/lib/sea_string.cc":32:59))
  %v251 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v252 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v253 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v254 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v255 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v256 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v257 = sea.const 7 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v250, ^bb71(%v251, %v252, %v253, %v254, %v255, %v256, %v257 : i1, i1, i1, i1, i1, i1, i64), ^bb54 loc("seahorn/lib/sea_string.cc":12:9)
^bb54:
  %v258 = sea.ptr.index %v152 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_154"("seahorn/lib/sea_string.cc":32:52))
  %v259 = sea.const 1 : i64 loc("_155"("seahorn/lib/sea_string.cc":32:52))
  %v260 = sea.ptr.dereferenceable %v258, %v259 : !sea.ptr<64>, i64 loc("_155"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v260, ^bb55, ^bb122
^bb55:
  %v261 = sea.load %v151[%v258] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_156"("seahorn/lib/sea_string.cc":32:52))
  %v262 = sea.const 0 : i8 loc("_157"("seahorn/lib/sea_string.cc":32:59))
  %v263 = sea.icmp eq, %v261, %v262 : i8 loc("_157"("seahorn/lib/sea_string.cc":32:59))
  %v264 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v265 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v266 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v267 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v268 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v269 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v270 = sea.const 8 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v263, ^bb71(%v264, %v265, %v266, %v267, %v268, %v269, %v270 : i1, i1, i1, i1, i1, i1, i64), ^bb56 loc("seahorn/lib/sea_string.cc":12:9)
^bb56:
  %v271 = sea.ptr.index %v152 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_159"("seahorn/lib/sea_string.cc":32:52))
  %v272 = sea.const 1 : i64 loc("_160"("seahorn/lib/sea_string.cc":32:52))
  %v273 = sea.ptr.dereferenceable %v271, %v272 : !sea.ptr<64>, i64 loc("_160"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v273, ^bb57, ^bb122
^bb57:
  %v274 = sea.load %v151[%v271] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_161"("seahorn/lib/sea_string.cc":32:52))
  %v275 = sea.const 0 : i8 loc("_162"("seahorn/lib/sea_string.cc":32:59))
  %v276 = sea.icmp eq, %v274, %v275 : i8 loc("_162"("seahorn/lib/sea_string.cc":32:59))
  %v277 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v278 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v279 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v280 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v281 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v282 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v283 = sea.const 9 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v276, ^bb71(%v277, %v278, %v279, %v280, %v281, %v282, %v283 : i1, i1, i1, i1, i1, i1, i64), ^bb58 loc("seahorn/lib/sea_string.cc":12:9)
^bb58:
  %v284 = sea.ptr.index %v152 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_164"("seahorn/lib/sea_string.cc":32:52))
  %v285 = sea.const 1 : i64 loc("_165"("seahorn/lib/sea_string.cc":32:52))
  %v286 = sea.ptr.dereferenceable %v284, %v285 : !sea.ptr<64>, i64 loc("_165"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v286, ^bb59, ^bb122
^bb59:
  %v287 = sea.load %v151[%v284] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_166"("seahorn/lib/sea_string.cc":32:52))
  %v288 = sea.const 0 : i8 loc("_167"("seahorn/lib/sea_string.cc":32:59))
  %v289 = sea.icmp eq, %v287, %v288 : i8 loc("_167"("seahorn/lib/sea_string.cc":32:59))
  %v290 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v291 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v292 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v293 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v294 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v295 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v296 = sea.const 10 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v289, ^bb71(%v290, %v291, %v292, %v293, %v294, %v295, %v296 : i1, i1, i1, i1, i1, i1, i64), ^bb60 loc("seahorn/lib/sea_string.cc":12:9)
^bb60:
  %v297 = sea.ptr.index %v152 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_169"("seahorn/lib/sea_string.cc":32:52))
  %v298 = sea.const 1 : i64 loc("_170"("seahorn/lib/sea_string.cc":32:52))
  %v299 = sea.ptr.dereferenceable %v297, %v298 : !sea.ptr<64>, i64 loc("_170"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v299, ^bb61, ^bb122
^bb61:
  %v300 = sea.load %v151[%v297] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_171"("seahorn/lib/sea_string.cc":32:52))
  %v301 = sea.const 0 : i8 loc("_172"("seahorn/lib/sea_string.cc":32:59))
  %v302 = sea.icmp eq, %v300, %v301 : i8 loc("_172"("seahorn/lib/sea_string.cc":32:59))
  %v303 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v304 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v305 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v306 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v307 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v308 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v309 = sea.const 11 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v302, ^bb71(%v303, %v304, %v305, %v306, %v307, %v308, %v309 : i1, i1, i1, i1, i1, i1, i64), ^bb62 loc("seahorn/lib/sea_string.cc":12:9)
^bb62:
  %v310 = sea.ptr.index %v152 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_174"("seahorn/lib/sea_string.cc":32:52))
  %v311 = sea.const 1 : i64 loc("_175"("seahorn/lib/sea_string.cc":32:52))
  %v312 = sea.ptr.dereferenceable %v310, %v311 : !sea.ptr<64>, i64 loc("_175"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v312, ^bb63, ^bb122
^bb63:
  %v313 = sea.load %v151[%v310] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_176"("seahorn/lib/sea_string.cc":32:52))
  %v314 = sea.const 0 : i8 loc("_177"("seahorn/lib/sea_string.cc":32:59))
  %v315 = sea.icmp eq, %v313, %v314 : i8 loc("_177"("seahorn/lib/sea_string.cc":32:59))
  %v316 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v317 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v318 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v319 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v320 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v321 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v322 = sea.const 12 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v315, ^bb71(%v316, %v317, %v318, %v319, %v320, %v321, %v322 : i1, i1, i1, i1, i1, i1, i64), ^bb64 loc("seahorn/lib/sea_string.cc":12:9)
^bb64:
  %v323 = sea.ptr.index %v152 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_179"("seahorn/lib/sea_string.cc":32:52))
  %v324 = sea.const 1 : i64 loc("_180"("seahorn/lib/sea_string.cc":32:52))
  %v325 = sea.ptr.dereferenceable %v323, %v324 : !sea.ptr<64>, i64 loc("_180"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v325, ^bb65, ^bb122
^bb65:
  %v326 = sea.load %v151[%v323] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_181"("seahorn/lib/sea_string.cc":32:52))
  %v327 = sea.const 0 : i8 loc("_182"("seahorn/lib/sea_string.cc":32:59))
  %v328 = sea.icmp eq, %v326, %v327 : i8 loc("_182"("seahorn/lib/sea_string.cc":32:59))
  %v329 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v330 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v331 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v332 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v333 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v334 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v335 = sea.const 13 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v328, ^bb71(%v329, %v330, %v331, %v332, %v333, %v334, %v335 : i1, i1, i1, i1, i1, i1, i64), ^bb66 loc("seahorn/lib/sea_string.cc":12:9)
^bb66:
  %v336 = sea.ptr.index %v152 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_184"("seahorn/lib/sea_string.cc":32:52))
  %v337 = sea.const 1 : i64 loc("_185"("seahorn/lib/sea_string.cc":32:52))
  %v338 = sea.ptr.dereferenceable %v336, %v337 : !sea.ptr<64>, i64 loc("_185"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v338, ^bb67, ^bb122
^bb67:
  %v339 = sea.load %v151[%v336] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_186"("seahorn/lib/sea_string.cc":32:52))
  %v340 = sea.const 0 : i8 loc("_187"("seahorn/lib/sea_string.cc":32:59))
  %v341 = sea.icmp eq, %v339, %v340 : i8 loc("_187"("seahorn/lib/sea_string.cc":32:59))
  %v342 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v343 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v344 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v345 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v346 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v347 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v348 = sea.const 14 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v341, ^bb71(%v342, %v343, %v344, %v345, %v346, %v347, %v348 : i1, i1, i1, i1, i1, i1, i64), ^bb68 loc("seahorn/lib/sea_string.cc":12:9)
^bb68:
  %v349 = sea.ptr.index %v152 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_189"("seahorn/lib/sea_string.cc":32:52))
  %v350 = sea.const 1 : i64 loc("_190"("seahorn/lib/sea_string.cc":32:52))
  %v351 = sea.ptr.dereferenceable %v349, %v350 : !sea.ptr<64>, i64 loc("_190"("seahorn/lib/sea_string.cc":32:52))
  sea.cond_br %v351, ^bb69, ^bb122
^bb69:
  %v352 = sea.load %v151[%v349] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_191"("seahorn/lib/sea_string.cc":32:52))
  %v353 = sea.const 0 : i8 loc("_192"("seahorn/lib/sea_string.cc":32:59))
  %v354 = sea.icmp eq, %v352, %v353 : i8 loc("_192"("seahorn/lib/sea_string.cc":32:59))
  %v355 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v356 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v357 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v358 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v359 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v360 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":12:9)
  %v361 = sea.const 15 : i64 loc("seahorn/lib/sea_string.cc":12:9)
  sea.cond_br %v354, ^bb71(%v355, %v356, %v357, %v358, %v359, %v360, %v361 : i1, i1, i1, i1, i1, i1, i64), ^bb70 loc("seahorn/lib/sea_string.cc":12:9)
^bb70:
  %v362 = sea.const 1 : i1 loc("seahorn/lib/sea_string.cc":14:5)
  %v363 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":14:5)
  %v364 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":14:5)
  %v365 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":14:5)
  %v366 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":14:5)
  %v367 = sea.const 0 : i1 loc("seahorn/lib/sea_string.cc":14:5)
  %v368 = sea.const 16 : i64 loc("seahorn/lib/sea_string.cc":14:5)
  sea.br ^bb71(%v362, %v363, %v364, %v365, %v366, %v367, %v368 : i1, i1, i1, i1, i1, i1, i64) loc("seahorn/lib/sea_string.cc":14:5)
^bb71(%v369 : i1, %v370 : i1, %v371 : i1, %v372 : i1, %v373 : i1, %v374 : i1, %v375 : i64):
  sea.br ^bb72
^bb72:
  sea.br ^bb73
^bb73:
  sea.cond_br %v369, ^bb99, ^bb74 loc("aws-c-common/include/aws/common/private/lookup3.inl":519:5)
^bb74:
  sea.cond_br %v370, ^bb103(%v375, %v152 : i64, !sea.ptr<64>), ^bb75
^bb75:
  sea.cond_br %v371, ^bb88, ^bb76
^bb76:
  %v376 = sea.ptr.index %v152 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_208"("aws-c-common/include/aws/common/private/lookup3.inl":0:0))
  %v377 = sea.const 4 : i64 loc("_209"("aws-c-common/include/aws/common/private/lookup3.inl":0:0))
  %v378 = sea.ptr.dereferenceable %v376, %v377 : !sea.ptr<64>, i64 loc("_209"("aws-c-common/include/aws/common/private/lookup3.inl":0:0))
  sea.cond_br %v372, ^bb81, ^bb77
^bb77:
  sea.cond_br %v373, ^bb78, ^bb82
^bb78:
  sea.cond_br %v378, ^bb79, ^bb122
^bb79:
  %v379 = sea.ptr.index %v152 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_213"("aws-c-common/include/aws/common/private/lookup3.inl":550:26))
  %v380 = sea.const 4 : i64 loc("_214"("aws-c-common/include/aws/common/private/lookup3.inl":550:26))
  %v381 = sea.ptr.dereferenceable %v379, %v380 : !sea.ptr<64>, i64 loc("_214"("aws-c-common/include/aws/common/private/lookup3.inl":550:26))
  sea.cond_br %v381, ^bb80, ^bb122
^bb80:
  %v382 = sea.const 4 : i64 loc("_216"("aws-c-common/include/aws/common/private/lookup3.inl":550:35))
  %v383 = sea.ptr.dereferenceable %v152, %v382 : !sea.ptr<64>, i64 loc("_216"("aws-c-common/include/aws/common/private/lookup3.inl":550:35))
  %v384 = sea.const 1 : i1
  sea.cond_br %v383, ^bb119(%v384 : i1), ^bb122
^bb81:
  sea.cond_br %v374, ^bb85, ^bb82
^bb82:
  sea.cond_br %v378, ^bb83, ^bb122
^bb83:
  %v385 = sea.ptr.index %v152 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_219"("aws-c-common/include/aws/common/private/lookup3.inl":551:35))
  %v386 = sea.const 4 : i64 loc("_220"("aws-c-common/include/aws/common/private/lookup3.inl":551:35))
  %v387 = sea.ptr.dereferenceable %v385, %v386 : !sea.ptr<64>, i64 loc("_220"("aws-c-common/include/aws/common/private/lookup3.inl":551:35))
  sea.cond_br %v387, ^bb84, ^bb122
^bb84:
  %v388 = sea.const 4 : i64 loc("_222"("aws-c-common/include/aws/common/private/lookup3.inl":551:44))
  %v389 = sea.ptr.dereferenceable %v152, %v388 : !sea.ptr<64>, i64 loc("_222"("aws-c-common/include/aws/common/private/lookup3.inl":551:44))
  %v390 = sea.const 1 : i1
  sea.cond_br %v389, ^bb119(%v390 : i1), ^bb122
^bb85:
  sea.cond_br %v378, ^bb86, ^bb122
^bb86:
  %v391 = sea.ptr.index %v152 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_225"("aws-c-common/include/aws/common/private/lookup3.inl":552:33))
  %v392 = sea.const 4 : i64 loc("_226"("aws-c-common/include/aws/common/private/lookup3.inl":552:33))
  %v393 = sea.ptr.dereferenceable %v391, %v392 : !sea.ptr<64>, i64 loc("_226"("aws-c-common/include/aws/common/private/lookup3.inl":552:33))
  sea.cond_br %v393, ^bb87, ^bb122
^bb87:
  %v394 = sea.const 4 : i64 loc("_228"("aws-c-common/include/aws/common/private/lookup3.inl":552:42))
  %v395 = sea.ptr.dereferenceable %v152, %v394 : !sea.ptr<64>, i64 loc("_228"("aws-c-common/include/aws/common/private/lookup3.inl":552:42))
  %v396 = sea.const 1 : i1
  sea.cond_br %v395, ^bb119(%v396 : i1), ^bb122
^bb88:
  sea.br ^bb89
^bb89:
  %v397 = sea.const 9 : i64 loc("Pivot6")
  %v398 = sea.icmp slt, %v375, %v397 : i64 loc("Pivot6")
  sea.cond_br %v398, ^bb94, ^bb90
^bb90:
  %v399 = sea.const 9 : i64 loc("SwitchLeaf5")
  %v400 = sea.icmp eq, %v375, %v399 : i64 loc("SwitchLeaf5")
  sea.cond_br %v400, ^bb91, ^bb95
^bb91:
  %v401 = sea.ptr.index %v152 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_230"("aws-c-common/include/aws/common/private/lookup3.inl":553:17))
  %v402 = sea.const 4 : i64 loc("_231"("aws-c-common/include/aws/common/private/lookup3.inl":553:17))
  %v403 = sea.ptr.dereferenceable %v401, %v402 : !sea.ptr<64>, i64 loc("_231"("aws-c-common/include/aws/common/private/lookup3.inl":553:17))
  sea.cond_br %v403, ^bb92, ^bb122
^bb92:
  %v404 = sea.ptr.index %v152 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_233"("aws-c-common/include/aws/common/private/lookup3.inl":553:31))
  %v405 = sea.const 4 : i64 loc("_234"("aws-c-common/include/aws/common/private/lookup3.inl":553:31))
  %v406 = sea.ptr.dereferenceable %v404, %v405 : !sea.ptr<64>, i64 loc("_234"("aws-c-common/include/aws/common/private/lookup3.inl":553:31))
  sea.cond_br %v406, ^bb93, ^bb122
^bb93:
  %v407 = sea.const 4 : i64 loc("_236"("aws-c-common/include/aws/common/private/lookup3.inl":553:40))
  %v408 = sea.ptr.dereferenceable %v152, %v407 : !sea.ptr<64>, i64 loc("_236"("aws-c-common/include/aws/common/private/lookup3.inl":553:40))
  %v409 = sea.const 1 : i1
  sea.cond_br %v408, ^bb119(%v409 : i1), ^bb122
^bb94:
  %v410 = sea.const 7 : i64 loc("SwitchLeaf3")
  %v411 = sea.icmp eq, %v375, %v410 : i64 loc("SwitchLeaf3")
  sea.cond_br %v411, ^bb97, ^bb95
^bb95:
  %v412 = sea.ptr.index %v152 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_238"("aws-c-common/include/aws/common/private/lookup3.inl":554:17))
  %v413 = sea.const 4 : i64 loc("_239"("aws-c-common/include/aws/common/private/lookup3.inl":554:17))
  %v414 = sea.ptr.dereferenceable %v412, %v413 : !sea.ptr<64>, i64 loc("_239"("aws-c-common/include/aws/common/private/lookup3.inl":554:17))
  sea.cond_br %v414, ^bb96, ^bb122
^bb96:
  %v415 = sea.const 4 : i64 loc("_241"("aws-c-common/include/aws/common/private/lookup3.inl":554:26))
  %v416 = sea.ptr.dereferenceable %v152, %v415 : !sea.ptr<64>, i64 loc("_241"("aws-c-common/include/aws/common/private/lookup3.inl":554:26))
  %v417 = sea.const 1 : i1
  sea.cond_br %v416, ^bb119(%v417 : i1), ^bb122
^bb97:
  %v418 = sea.ptr.index %v152 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_243"("aws-c-common/include/aws/common/private/lookup3.inl":555:17))
  %v419 = sea.const 4 : i64 loc("_244"("aws-c-common/include/aws/common/private/lookup3.inl":555:17))
  %v420 = sea.ptr.dereferenceable %v418, %v419 : !sea.ptr<64>, i64 loc("_244"("aws-c-common/include/aws/common/private/lookup3.inl":555:17))
  sea.cond_br %v420, ^bb98, ^bb122
^bb98:
  %v421 = sea.const 4 : i64 loc("_246"("aws-c-common/include/aws/common/private/lookup3.inl":555:35))
  %v422 = sea.ptr.dereferenceable %v152, %v421 : !sea.ptr<64>, i64 loc("_246"("aws-c-common/include/aws/common/private/lookup3.inl":555:35))
  %v423 = sea.const 1 : i1
  sea.cond_br %v422, ^bb119(%v423 : i1), ^bb122
^bb99:
  %v424 = sea.const 4 : i64 loc("_197"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  %v425 = sea.ptr.dereferenceable %v152, %v424 : !sea.ptr<64>, i64 loc("_197"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  sea.cond_br %v425, ^bb100, ^bb122
^bb100:
  %v426 = sea.ptr.index %v152 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_199"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v427 = sea.const 4 : i64 loc("_200"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v428 = sea.ptr.dereferenceable %v426, %v427 : !sea.ptr<64>, i64 loc("_200"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  sea.cond_br %v428, ^bb101, ^bb122
^bb101:
  %v429 = sea.ptr.index %v152 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_202"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v430 = sea.const 4 : i64 loc("_203"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v431 = sea.ptr.dereferenceable %v429, %v430 : !sea.ptr<64>, i64 loc("_203"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  sea.cond_br %v431, ^bb102, ^bb122
^bb102:
  %v432 = sea.const 18446744073709551604 : i64 loc("_205"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v433 = sea.add %v375, %v432 nsw : i64 loc("_205"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v434 = sea.ptr.index %v152 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_206"("aws-c-common/include/aws/common/private/lookup3.inl":526:9))
  %v435 = sea.const 12 : i64 loc("_207"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  %v436 = sea.icmp ugt, %v433, %v435 : i64 loc("_207"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  sea.cond_br %v436, ^bb121, ^bb103(%v433, %v434 : i64, !sea.ptr<64>) loc("aws-c-common/include/aws/common/private/lookup3.inl":519:5)
^bb103(%v437 : i64, %v438 : !sea.ptr<64>):
  %v439 = sea.const 4 : i64 loc("Pivot54.i.i")
  %v440 = sea.icmp ult, %v437, %v439 : i64 loc("Pivot54.i.i")
  sea.cond_br %v440, ^bb113, ^bb104
^bb104:
  sea.br ^bb105
^bb105:
  %v441 = sea.const 6 : i64 loc("Pivot12")
  %v442 = sea.icmp slt, %v437, %v441 : i64 loc("Pivot12")
  sea.cond_br %v442, ^bb109, ^bb106
^bb106:
  %v443 = sea.const 6 : i64 loc("SwitchLeaf10")
  %v444 = sea.icmp eq, %v437, %v443 : i64 loc("SwitchLeaf10")
  sea.cond_br %v444, ^bb107, ^bb110
^bb107:
  %v445 = sea.ptr.index %v438 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_248"("aws-c-common/include/aws/common/private/lookup3.inl":556:17))
  %v446 = sea.const 4 : i64 loc("_249"("aws-c-common/include/aws/common/private/lookup3.inl":556:17))
  %v447 = sea.ptr.dereferenceable %v445, %v446 : !sea.ptr<64>, i64 loc("_249"("aws-c-common/include/aws/common/private/lookup3.inl":556:17))
  sea.cond_br %v447, ^bb108, ^bb122
^bb108:
  %v448 = sea.const 4 : i64 loc("_251"("aws-c-common/include/aws/common/private/lookup3.inl":556:33))
  %v449 = sea.ptr.dereferenceable %v438, %v448 : !sea.ptr<64>, i64 loc("_251"("aws-c-common/include/aws/common/private/lookup3.inl":556:33))
  %v450 = sea.const 1 : i1
  sea.cond_br %v449, ^bb119(%v450 : i1), ^bb122
^bb109:
  %v451 = sea.const 4 : i64 loc("SwitchLeaf8")
  %v452 = sea.icmp eq, %v437, %v451 : i64 loc("SwitchLeaf8")
  sea.cond_br %v452, ^bb112, ^bb110
^bb110:
  %v453 = sea.ptr.index %v438 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_253"("aws-c-common/include/aws/common/private/lookup3.inl":557:17))
  %v454 = sea.const 4 : i64 loc("_254"("aws-c-common/include/aws/common/private/lookup3.inl":557:17))
  %v455 = sea.ptr.dereferenceable %v453, %v454 : !sea.ptr<64>, i64 loc("_254"("aws-c-common/include/aws/common/private/lookup3.inl":557:17))
  sea.cond_br %v455, ^bb111, ^bb122
^bb111:
  %v456 = sea.const 4 : i64 loc("_256"("aws-c-common/include/aws/common/private/lookup3.inl":557:31))
  %v457 = sea.ptr.dereferenceable %v438, %v456 : !sea.ptr<64>, i64 loc("_256"("aws-c-common/include/aws/common/private/lookup3.inl":557:31))
  %v458 = sea.const 1 : i1
  sea.cond_br %v457, ^bb119(%v458 : i1), ^bb122
^bb112:
  %v459 = sea.const 4 : i64 loc("_258"("aws-c-common/include/aws/common/private/lookup3.inl":558:17))
  %v460 = sea.ptr.dereferenceable %v438, %v459 : !sea.ptr<64>, i64 loc("_258"("aws-c-common/include/aws/common/private/lookup3.inl":558:17))
  %v461 = sea.const 1 : i1
  sea.cond_br %v460, ^bb119(%v461 : i1), ^bb122
^bb113:
  %v462 = sea.const 2 : i64 loc("Pivot48.i.i")
  %v463 = sea.icmp ult, %v437, %v462 : i64 loc("Pivot48.i.i")
  sea.cond_br %v463, ^bb115, ^bb114
^bb114:
  %v464 = sea.const 4 : i64 loc("_210"("aws-c-common/include/aws/common/private/lookup3.inl":0:0))
  %v465 = sea.ptr.dereferenceable %v438, %v464 : !sea.ptr<64>, i64 loc("_210"("aws-c-common/include/aws/common/private/lookup3.inl":0:0))
  %v466 = sea.const 1 : i1
  sea.cond_br %v465, ^bb119(%v466 : i1), ^bb122
^bb115:
  %v467 = sea.const 1 : i64 loc("SwitchLeaf.i.i")
  %v468 = sea.icmp eq, %v437, %v467 : i64 loc("SwitchLeaf.i.i")
  sea.cond_br %v468, ^bb118, ^bb116
^bb116:
  sea.br ^bb117
^bb117:
  %v469 = sea.const 0 : i1
  sea.br ^bb119(%v469 : i1)
^bb118:
  %v470 = sea.const 4 : i64 loc("_260"("aws-c-common/include/aws/common/private/lookup3.inl":561:17))
  %v471 = sea.ptr.dereferenceable %v438, %v470 : !sea.ptr<64>, i64 loc("_260"("aws-c-common/include/aws/common/private/lookup3.inl":561:17))
  %v472 = sea.const 1 : i1
  sea.cond_br %v471, ^bb119(%v472 : i1), ^bb122
^bb119(%v473 : i1):
  sea.assume %v473
  sea.br ^bb120
^bb120:
  %v474 = sea.const 1 : i1
  %v475 = sea.const 1 : i1
  %v476 = sea.xor %v474, %v475 : i1
  sea.assume %v476
  sea.br ^bb122
^bb121:
  %v477 = sea.const 4 : i64 loc("_198"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  %v478 = sea.ptr.dereferenceable %v434, %v477 : !sea.ptr<64>, i64 loc("_198"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  %v479 = sea.const 1 : i1
  %v480 = sea.xor %v478, %v479 : i1
  sea.assume %v480
  sea.br ^bb122
^bb122:
  sea.br ^bb123
^bb123:
  %v481 = sea.const 0 : i1
  sea.assert %v481
  sea.halt
}
