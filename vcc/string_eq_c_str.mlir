// Exported from SeaHorn (string_eq_c_str.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm10")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm11")
  %v2 = sea.mem.nondet "region.17" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm12")
  %v3 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v4 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v5 = sea.store %v0[%v3], %v4 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v6 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_0")
  %v7 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_0")
  %v8 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v9 = sea.store %v5[%v7], %v8 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v10 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_1")
  %v11 = sea.ptr.index %v10 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_1")
  %v12 = sea.const 0 : i8
  %v13 = sea.const 24 : i64
  %v14 = sea.memset %v9[%v11], %v12, %v13 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v15 = sea.nondet "nd_bool" [3] : i1 loc("_2"("seahorn/jobs/string_eq_c_str/aws_string_eq_c_str_harness.c":14:7))
  %v16 = sea.ptr.null : !sea.ptr<64> loc("seahorn/jobs/string_eq_c_str/aws_string_eq_c_str_harness.c":14:7)
  sea.cond_br %v15, ^bb1, ^bb10(%v1, %v16 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/jobs/string_eq_c_str/aws_string_eq_c_str_harness.c":14:7)
^bb1:
  %v17 = sea.nondet "nd_size_t" [4] : i64 loc("_4"("seahorn/lib/string_helper.c":24:16))
  %v18 = sea.const 16 : i64 loc("_5"("seahorn/lib/string_helper.c":25:14))
  %v19 = sea.icmp ult, %v17, %v18 : i64 loc("_5"("seahorn/lib/string_helper.c":25:14))
  sea.assume %v19 loc("seahorn/lib/string_helper.c":25:3)
  %v20 = sea.const 25 : i64 loc("_6"("seahorn/lib/string_helper.c":11:61))
  %v21 = sea.add %v17, %v20 : i64 loc("_6"("seahorn/lib/string_helper.c":11:61))
  %v22 = sea.nondet "nd_malloc_is_fail" [5] : i1 loc("_7"("seahorn/lib/sea_allocators.c":11:10))
  %v23 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v22, ^bb3(%v1, %v23 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb2 loc("seahorn/lib/sea_allocators.c":11:10)
^bb2:
  %v24 = sea.const 1 : i64 loc("malloc.i")
  %v25 = sea.mul %v21, %v24 : i64 loc("malloc.i")
  %v26 = sea.alloca %v25 align 16 [6] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb3(%v1, %v26 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb3(%v27 : !sea.mem<!sea.ptr<64>, i8>, %v28 : !sea.ptr<64>):
  %v29 = sea.memhavoc %v27[%v28], %v21 [7] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v30 = sea.ptr.null : !sea.ptr<64> loc("_10"("seahorn/lib/sea_allocators.c":45:10))
  %v31 = sea.ptr.cmp ne, %v28, %v30 : !sea.ptr<64> loc("_10"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v31 loc("seahorn/lib/sea_allocators.c":45:3)
  %v32 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i8.i"("seahorn/lib/string_helper.c":13:7))
  %v33 = sea.ptr.cmp eq, %v28, %v32 : !sea.ptr<64> loc(".not.i.i8.i"("seahorn/lib/string_helper.c":13:7))
  %v34 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":13:7)
  sea.cond_br %v33, ^bb10(%v29, %v34 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/string_helper.c":13:7)
^bb4:
  %v35 = sea.nondet "nd_bool" [8] : i1 loc("_12"("seahorn/lib/string_helper.c":16:9))
  %v36 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.cond_br %v35, ^bb5, ^bb6(%v36 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb5:
  %v37 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.br ^bb6(%v37 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb6(%v38 : !sea.ptr<64>):
  %v39 = sea.const 8 : i64 loc("_16"("seahorn/lib/string_helper.c":15:49))
  %v40 = sea.ptr.dereferenceable %v28, %v39 : !sea.ptr<64>, i64 loc("_16"("seahorn/lib/string_helper.c":15:49))
  sea.cond_br %v40, ^bb7, ^bb148
^bb7:
  %v41 = sea.store %v29[%v28], %v38 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/string_helper.c":15:49)
  %v42 = sea.ptr.index %v28 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_18"("seahorn/lib/string_helper.c":17:23))
  %v43 = sea.const 8 : i64 loc("_19"("seahorn/lib/string_helper.c":17:28))
  %v44 = sea.ptr.dereferenceable %v42, %v43 : !sea.ptr<64>, i64 loc("_19"("seahorn/lib/string_helper.c":17:28))
  sea.cond_br %v44, ^bb8, ^bb148
^bb8:
  %v45 = sea.store %v41[%v42], %v17 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/string_helper.c":17:28)
  %v46 = sea.ptr.index %v28 [%v17] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_21"("seahorn/lib/string_helper.c":18:18))
  %v47 = sea.const 1 : i64 loc("_22"("seahorn/lib/string_helper.c":18:34))
  %v48 = sea.ptr.dereferenceable %v46, %v47 : !sea.ptr<64>, i64 loc("_22"("seahorn/lib/string_helper.c":18:34))
  sea.cond_br %v48, ^bb9, ^bb148
^bb9:
  %v49 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":18:34)
  %v50 = sea.store %v45[%v46], %v49 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":18:34)
  sea.br ^bb10(%v50, %v28 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/string_helper.c":19:3)
^bb10(%v51 : !sea.mem<!sea.ptr<64>, i8>, %v52 : !sea.ptr<64>):
  %v53 = sea.nondet "nd_size_t" [9] : i64 loc("_25"("seahorn/lib/string_helper.c":51:16))
  %v54 = sea.const 0 : i64 loc("_26"("seahorn/lib/string_helper.c":53:21))
  %v55 = sea.icmp ne, %v53, %v54 : i64 loc("_26"("seahorn/lib/string_helper.c":53:21))
  sea.assume %v55 loc("seahorn/lib/string_helper.c":53:3)
  %v56 = sea.const 17 : i64 loc("_27"("seahorn/lib/string_helper.c":54:21))
  %v57 = sea.icmp ult, %v53, %v56 : i64 loc("_27"("seahorn/lib/string_helper.c":54:21))
  sea.assume %v57 loc("seahorn/lib/string_helper.c":54:3)
  %v58 = sea.const 1 : i1 loc("seahorn/lib/string_helper.c":55:3)
  sea.assume %v58 loc("seahorn/lib/string_helper.c":55:3)
  %v59 = sea.nondet "nd_malloc_is_fail" [10] : i1 loc("_28"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v59, ^bb47, ^bb11 loc("seahorn/lib/sea_allocators.c":11:10)
^bb11:
  %v60 = sea.const 1 : i64 loc("malloc16.i")
  %v61 = sea.mul %v53, %v60 : i64 loc("malloc16.i")
  %v62 = sea.alloca %v61 align 16 [11] : i64 -> !sea.ptr<64> loc("malloc16.i")
  %v63 = sea.memhavoc %v2[%v62], %v53 [12] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v64 = sea.const 18446744073709551615 : i64 loc("_30"("seahorn/lib/string_helper.c":68:32))
  %v65 = sea.add %v53, %v64 : i64 loc("_30"("seahorn/lib/string_helper.c":68:32))
  %v66 = sea.ptr.index %v62 [%v65] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_31"("seahorn/lib/string_helper.c":39:3))
  %v67 = sea.const 1 : i64 loc("_32"("seahorn/lib/string_helper.c":39:16))
  %v68 = sea.ptr.dereferenceable %v66, %v67 : !sea.ptr<64>, i64 loc("_32"("seahorn/lib/string_helper.c":39:16))
  sea.cond_br %v68, ^bb12, ^bb148
^bb12:
  %v69 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":39:16)
  %v70 = sea.store %v63[%v66], %v69 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":39:16)
  %v71 = sea.const 0 : i64 loc(".not"("seahorn/lib/string_helper.c":42:11))
  %v72 = sea.icmp eq, %v65, %v71 : i64 loc(".not"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v72, ^bb45, ^bb13 loc("seahorn/lib/string_helper.c":42:9)
^bb13:
  %v73 = sea.const 1 : i64 loc("_35"("seahorn/lib/string_helper.c":43:14))
  %v74 = sea.ptr.dereferenceable %v62, %v73 : !sea.ptr<64>, i64 loc("_35"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v74, ^bb14, ^bb148
^bb14:
  %v75 = sea.load %v70[%v62] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_37"("seahorn/lib/string_helper.c":43:14))
  %v76 = sea.const 0 : i8 loc("_38"("seahorn/lib/string_helper.c":43:21))
  %v77 = sea.icmp ne, %v75, %v76 : i8 loc("_38"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v77 loc("seahorn/lib/string_helper.c":43:7)
  %v78 = sea.const 1 : i64 loc(".not62"("seahorn/lib/string_helper.c":42:11))
  %v79 = sea.icmp eq, %v65, %v78 : i64 loc(".not62"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v79, ^bb45, ^bb15 loc("seahorn/lib/string_helper.c":42:9)
^bb15:
  %v80 = sea.ptr.index %v62 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_40"("seahorn/lib/string_helper.c":43:14))
  %v81 = sea.const 1 : i64 loc("_41"("seahorn/lib/string_helper.c":43:14))
  %v82 = sea.ptr.dereferenceable %v80, %v81 : !sea.ptr<64>, i64 loc("_41"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v82, ^bb16, ^bb148
^bb16:
  %v83 = sea.load %v70[%v80] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_43"("seahorn/lib/string_helper.c":43:14))
  %v84 = sea.const 0 : i8 loc("_44"("seahorn/lib/string_helper.c":43:21))
  %v85 = sea.icmp ne, %v83, %v84 : i8 loc("_44"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v85 loc("seahorn/lib/string_helper.c":43:7)
  %v86 = sea.const 2 : i64 loc("_45"("seahorn/lib/string_helper.c":42:11))
  %v87 = sea.icmp ugt, %v65, %v86 : i64 loc("_45"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v87, ^bb17, ^bb45 loc("seahorn/lib/string_helper.c":42:9)
^bb17:
  %v88 = sea.ptr.index %v62 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_47"("seahorn/lib/string_helper.c":43:14))
  %v89 = sea.const 1 : i64 loc("_48"("seahorn/lib/string_helper.c":43:14))
  %v90 = sea.ptr.dereferenceable %v88, %v89 : !sea.ptr<64>, i64 loc("_48"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v90, ^bb18, ^bb148
^bb18:
  %v91 = sea.load %v70[%v88] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_50"("seahorn/lib/string_helper.c":43:14))
  %v92 = sea.const 0 : i8 loc("_51"("seahorn/lib/string_helper.c":43:21))
  %v93 = sea.icmp ne, %v91, %v92 : i8 loc("_51"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v93 loc("seahorn/lib/string_helper.c":43:7)
  %v94 = sea.const 3 : i64 loc(".not63"("seahorn/lib/string_helper.c":42:11))
  %v95 = sea.icmp eq, %v65, %v94 : i64 loc(".not63"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v95, ^bb45, ^bb19 loc("seahorn/lib/string_helper.c":42:9)
^bb19:
  %v96 = sea.ptr.index %v62 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_53"("seahorn/lib/string_helper.c":43:14))
  %v97 = sea.const 1 : i64 loc("_54"("seahorn/lib/string_helper.c":43:14))
  %v98 = sea.ptr.dereferenceable %v96, %v97 : !sea.ptr<64>, i64 loc("_54"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v98, ^bb20, ^bb148
^bb20:
  %v99 = sea.load %v70[%v96] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_56"("seahorn/lib/string_helper.c":43:14))
  %v100 = sea.const 0 : i8 loc("_57"("seahorn/lib/string_helper.c":43:21))
  %v101 = sea.icmp ne, %v99, %v100 : i8 loc("_57"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v101 loc("seahorn/lib/string_helper.c":43:7)
  %v102 = sea.const 4 : i64 loc("_58"("seahorn/lib/string_helper.c":42:11))
  %v103 = sea.icmp ugt, %v65, %v102 : i64 loc("_58"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v103, ^bb21, ^bb45 loc("seahorn/lib/string_helper.c":42:9)
^bb21:
  %v104 = sea.ptr.index %v62 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_60"("seahorn/lib/string_helper.c":43:14))
  %v105 = sea.const 1 : i64 loc("_61"("seahorn/lib/string_helper.c":43:14))
  %v106 = sea.ptr.dereferenceable %v104, %v105 : !sea.ptr<64>, i64 loc("_61"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v106, ^bb22, ^bb148
^bb22:
  %v107 = sea.load %v70[%v104] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_63"("seahorn/lib/string_helper.c":43:14))
  %v108 = sea.const 0 : i8 loc("_64"("seahorn/lib/string_helper.c":43:21))
  %v109 = sea.icmp ne, %v107, %v108 : i8 loc("_64"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v109 loc("seahorn/lib/string_helper.c":43:7)
  %v110 = sea.const 5 : i64 loc(".not64"("seahorn/lib/string_helper.c":42:11))
  %v111 = sea.icmp eq, %v65, %v110 : i64 loc(".not64"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v111, ^bb45, ^bb23 loc("seahorn/lib/string_helper.c":42:9)
^bb23:
  %v112 = sea.ptr.index %v62 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_66"("seahorn/lib/string_helper.c":43:14))
  %v113 = sea.const 1 : i64 loc("_67"("seahorn/lib/string_helper.c":43:14))
  %v114 = sea.ptr.dereferenceable %v112, %v113 : !sea.ptr<64>, i64 loc("_67"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v114, ^bb24, ^bb148
^bb24:
  %v115 = sea.load %v70[%v112] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_69"("seahorn/lib/string_helper.c":43:14))
  %v116 = sea.const 0 : i8 loc("_70"("seahorn/lib/string_helper.c":43:21))
  %v117 = sea.icmp ne, %v115, %v116 : i8 loc("_70"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v117 loc("seahorn/lib/string_helper.c":43:7)
  %v118 = sea.const 6 : i64 loc("_71"("seahorn/lib/string_helper.c":42:11))
  %v119 = sea.icmp ugt, %v65, %v118 : i64 loc("_71"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v119, ^bb25, ^bb45 loc("seahorn/lib/string_helper.c":42:9)
^bb25:
  %v120 = sea.ptr.index %v62 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_73"("seahorn/lib/string_helper.c":43:14))
  %v121 = sea.const 1 : i64 loc("_74"("seahorn/lib/string_helper.c":43:14))
  %v122 = sea.ptr.dereferenceable %v120, %v121 : !sea.ptr<64>, i64 loc("_74"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v122, ^bb26, ^bb148
^bb26:
  %v123 = sea.load %v70[%v120] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_76"("seahorn/lib/string_helper.c":43:14))
  %v124 = sea.const 0 : i8 loc("_77"("seahorn/lib/string_helper.c":43:21))
  %v125 = sea.icmp ne, %v123, %v124 : i8 loc("_77"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v125 loc("seahorn/lib/string_helper.c":43:7)
  %v126 = sea.const 7 : i64 loc(".not65"("seahorn/lib/string_helper.c":42:11))
  %v127 = sea.icmp eq, %v65, %v126 : i64 loc(".not65"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v127, ^bb45, ^bb27 loc("seahorn/lib/string_helper.c":42:9)
^bb27:
  %v128 = sea.ptr.index %v62 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_79"("seahorn/lib/string_helper.c":43:14))
  %v129 = sea.const 1 : i64 loc("_80"("seahorn/lib/string_helper.c":43:14))
  %v130 = sea.ptr.dereferenceable %v128, %v129 : !sea.ptr<64>, i64 loc("_80"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v130, ^bb28, ^bb148
^bb28:
  %v131 = sea.load %v70[%v128] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_82"("seahorn/lib/string_helper.c":43:14))
  %v132 = sea.const 0 : i8 loc("_83"("seahorn/lib/string_helper.c":43:21))
  %v133 = sea.icmp ne, %v131, %v132 : i8 loc("_83"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v133 loc("seahorn/lib/string_helper.c":43:7)
  %v134 = sea.const 8 : i64 loc("_84"("seahorn/lib/string_helper.c":42:11))
  %v135 = sea.icmp ugt, %v65, %v134 : i64 loc("_84"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v135, ^bb29, ^bb45 loc("seahorn/lib/string_helper.c":42:9)
^bb29:
  %v136 = sea.ptr.index %v62 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_86"("seahorn/lib/string_helper.c":43:14))
  %v137 = sea.const 1 : i64 loc("_87"("seahorn/lib/string_helper.c":43:14))
  %v138 = sea.ptr.dereferenceable %v136, %v137 : !sea.ptr<64>, i64 loc("_87"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v138, ^bb30, ^bb148
^bb30:
  %v139 = sea.load %v70[%v136] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_89"("seahorn/lib/string_helper.c":43:14))
  %v140 = sea.const 0 : i8 loc("_90"("seahorn/lib/string_helper.c":43:21))
  %v141 = sea.icmp ne, %v139, %v140 : i8 loc("_90"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v141 loc("seahorn/lib/string_helper.c":43:7)
  %v142 = sea.const 9 : i64 loc(".not66"("seahorn/lib/string_helper.c":42:11))
  %v143 = sea.icmp eq, %v65, %v142 : i64 loc(".not66"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v143, ^bb45, ^bb31 loc("seahorn/lib/string_helper.c":42:9)
^bb31:
  %v144 = sea.ptr.index %v62 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_92"("seahorn/lib/string_helper.c":43:14))
  %v145 = sea.const 1 : i64 loc("_93"("seahorn/lib/string_helper.c":43:14))
  %v146 = sea.ptr.dereferenceable %v144, %v145 : !sea.ptr<64>, i64 loc("_93"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v146, ^bb32, ^bb148
^bb32:
  %v147 = sea.load %v70[%v144] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_95"("seahorn/lib/string_helper.c":43:14))
  %v148 = sea.const 0 : i8 loc("_96"("seahorn/lib/string_helper.c":43:21))
  %v149 = sea.icmp ne, %v147, %v148 : i8 loc("_96"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v149 loc("seahorn/lib/string_helper.c":43:7)
  %v150 = sea.const 10 : i64 loc("_97"("seahorn/lib/string_helper.c":42:11))
  %v151 = sea.icmp ugt, %v65, %v150 : i64 loc("_97"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v151, ^bb33, ^bb45 loc("seahorn/lib/string_helper.c":42:9)
^bb33:
  %v152 = sea.ptr.index %v62 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_99"("seahorn/lib/string_helper.c":43:14))
  %v153 = sea.const 1 : i64 loc("_100"("seahorn/lib/string_helper.c":43:14))
  %v154 = sea.ptr.dereferenceable %v152, %v153 : !sea.ptr<64>, i64 loc("_100"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v154, ^bb34, ^bb148
^bb34:
  %v155 = sea.load %v70[%v152] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_102"("seahorn/lib/string_helper.c":43:14))
  %v156 = sea.const 0 : i8 loc("_103"("seahorn/lib/string_helper.c":43:21))
  %v157 = sea.icmp ne, %v155, %v156 : i8 loc("_103"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v157 loc("seahorn/lib/string_helper.c":43:7)
  %v158 = sea.const 11 : i64 loc(".not67"("seahorn/lib/string_helper.c":42:11))
  %v159 = sea.icmp eq, %v65, %v158 : i64 loc(".not67"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v159, ^bb45, ^bb35 loc("seahorn/lib/string_helper.c":42:9)
^bb35:
  %v160 = sea.ptr.index %v62 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_105"("seahorn/lib/string_helper.c":43:14))
  %v161 = sea.const 1 : i64 loc("_106"("seahorn/lib/string_helper.c":43:14))
  %v162 = sea.ptr.dereferenceable %v160, %v161 : !sea.ptr<64>, i64 loc("_106"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v162, ^bb36, ^bb148
^bb36:
  %v163 = sea.load %v70[%v160] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_108"("seahorn/lib/string_helper.c":43:14))
  %v164 = sea.const 0 : i8 loc("_109"("seahorn/lib/string_helper.c":43:21))
  %v165 = sea.icmp ne, %v163, %v164 : i8 loc("_109"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v165 loc("seahorn/lib/string_helper.c":43:7)
  %v166 = sea.const 12 : i64 loc("_110"("seahorn/lib/string_helper.c":42:11))
  %v167 = sea.icmp ugt, %v65, %v166 : i64 loc("_110"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v167, ^bb37, ^bb45 loc("seahorn/lib/string_helper.c":42:9)
^bb37:
  %v168 = sea.ptr.index %v62 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_112"("seahorn/lib/string_helper.c":43:14))
  %v169 = sea.const 1 : i64 loc("_113"("seahorn/lib/string_helper.c":43:14))
  %v170 = sea.ptr.dereferenceable %v168, %v169 : !sea.ptr<64>, i64 loc("_113"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v170, ^bb38, ^bb148
^bb38:
  %v171 = sea.load %v70[%v168] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_115"("seahorn/lib/string_helper.c":43:14))
  %v172 = sea.const 0 : i8 loc("_116"("seahorn/lib/string_helper.c":43:21))
  %v173 = sea.icmp ne, %v171, %v172 : i8 loc("_116"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v173 loc("seahorn/lib/string_helper.c":43:7)
  %v174 = sea.const 13 : i64 loc(".not68"("seahorn/lib/string_helper.c":42:11))
  %v175 = sea.icmp eq, %v65, %v174 : i64 loc(".not68"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v175, ^bb45, ^bb39 loc("seahorn/lib/string_helper.c":42:9)
^bb39:
  %v176 = sea.ptr.index %v62 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_118"("seahorn/lib/string_helper.c":43:14))
  %v177 = sea.const 1 : i64 loc("_119"("seahorn/lib/string_helper.c":43:14))
  %v178 = sea.ptr.dereferenceable %v176, %v177 : !sea.ptr<64>, i64 loc("_119"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v178, ^bb40, ^bb148
^bb40:
  %v179 = sea.load %v70[%v176] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_121"("seahorn/lib/string_helper.c":43:14))
  %v180 = sea.const 0 : i8 loc("_122"("seahorn/lib/string_helper.c":43:21))
  %v181 = sea.icmp ne, %v179, %v180 : i8 loc("_122"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v181 loc("seahorn/lib/string_helper.c":43:7)
  %v182 = sea.const 14 : i64 loc("_123"("seahorn/lib/string_helper.c":42:11))
  %v183 = sea.icmp ugt, %v65, %v182 : i64 loc("_123"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v183, ^bb41, ^bb45 loc("seahorn/lib/string_helper.c":42:9)
^bb41:
  %v184 = sea.ptr.index %v62 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_125"("seahorn/lib/string_helper.c":43:14))
  %v185 = sea.const 1 : i64 loc("_126"("seahorn/lib/string_helper.c":43:14))
  %v186 = sea.ptr.dereferenceable %v184, %v185 : !sea.ptr<64>, i64 loc("_126"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v186, ^bb42, ^bb148
^bb42:
  %v187 = sea.load %v70[%v184] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_128"("seahorn/lib/string_helper.c":43:14))
  %v188 = sea.const 0 : i8 loc("_129"("seahorn/lib/string_helper.c":43:21))
  %v189 = sea.icmp ne, %v187, %v188 : i8 loc("_129"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v189 loc("seahorn/lib/string_helper.c":43:7)
  %v190 = sea.const 15 : i64 loc(".not69"("seahorn/lib/string_helper.c":42:11))
  %v191 = sea.icmp eq, %v65, %v190 : i64 loc(".not69"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v191, ^bb45, ^bb43 loc("seahorn/lib/string_helper.c":42:9)
^bb43:
  %v192 = sea.ptr.index %v62 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_131"("seahorn/lib/string_helper.c":43:14))
  %v193 = sea.const 1 : i64 loc("_132"("seahorn/lib/string_helper.c":43:14))
  %v194 = sea.ptr.dereferenceable %v192, %v193 : !sea.ptr<64>, i64 loc("_132"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v194, ^bb44, ^bb148
^bb44:
  %v195 = sea.load %v70[%v192] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_134"("seahorn/lib/string_helper.c":43:14))
  %v196 = sea.const 0 : i8 loc("_135"("seahorn/lib/string_helper.c":43:21))
  %v197 = sea.icmp ne, %v195, %v196 : i8 loc("_135"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v197 loc("seahorn/lib/string_helper.c":43:7)
  sea.br ^bb45 loc("seahorn/lib/string_helper.c":44:5)
^bb45:
  sea.br ^bb46
^bb46:
  sea.br ^bb48(%v70, %v65, %v62 : !sea.mem<!sea.ptr<64>, i8>, i64, !sea.ptr<64>) loc("seahorn/lib/string_helper.c":70:3)
^bb47:
  %v198 = sea.const 0 : i64 loc("seahorn/lib/string_helper.c":63:9)
  %v199 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":63:9)
  sea.br ^bb48(%v2, %v198, %v199 : !sea.mem<!sea.ptr<64>, i8>, i64, !sea.ptr<64>) loc("seahorn/lib/string_helper.c":63:9)
^bb48(%v200 : !sea.mem<!sea.ptr<64>, i8>, %v201 : i64, %v202 : !sea.ptr<64>):
  %v203 = sea.ptr.null : !sea.ptr<64> loc("_138"("aws-c-common/source/string.c":384:13))
  %v204 = sea.ptr.cmp eq, %v52, %v203 : !sea.ptr<64> loc("_138"("aws-c-common/source/string.c":384:13))
  %v205 = sea.ptr.null : !sea.ptr<64> loc("_139")
  %v206 = sea.ptr.cmp eq, %v202, %v205 : !sea.ptr<64> loc("_139")
  %v207 = sea.and %v204, %v206 : i1 loc("or.cond.i.i"("aws-c-common/source/string.c":384:21))
  %v208 = sea.const 1 : i1 loc("aws-c-common/source/string.c":384:21)
  sea.cond_br %v207, ^bb135(%v208 : i1), ^bb49 loc("aws-c-common/source/string.c":384:21)
^bb49:
  %v209 = sea.or %v204, %v206 : i1 loc("or.cond3.i.i"("aws-c-common/source/string.c":387:21))
  %v210 = sea.const 0 : i1 loc("aws-c-common/source/string.c":387:21)
  sea.cond_br %v209, ^bb135(%v210 : i1), ^bb50 loc("aws-c-common/source/string.c":387:21)
^bb50:
  %v211 = sea.ptr.index %v52 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_142"("aws-c-common/source/string.c":390:48))
  %v212 = sea.const 8 : i64 loc("_143"("aws-c-common/source/string.c":390:48))
  %v213 = sea.ptr.dereferenceable %v211, %v212 : !sea.ptr<64>, i64 loc("_143"("aws-c-common/source/string.c":390:48))
  sea.cond_br %v213, ^bb51, ^bb148
^bb51:
  %v214 = sea.ptr.index %v52 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_145"("aws-c-common/source/string.c":390:36))
  %v215 = sea.load %v51[%v211] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_146"("aws-c-common/source/string.c":390:48))
  %v216 = sea.const 0 : i64 loc(".not5.i.i.i13.not"("aws-c-common/source/byte_buf.c":478:26))
  %v217 = sea.icmp eq, %v215, %v216 : i64 loc(".not5.i.i.i13.not"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v217, ^bb133, ^bb52 loc("aws-c-common/source/byte_buf.c":478:5)
^bb52:
  %v218 = sea.const 1 : i64 loc("_147"("aws-c-common/source/byte_buf.c":479:21))
  %v219 = sea.ptr.dereferenceable %v202, %v218 : !sea.ptr<64>, i64 loc("_147"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v219, ^bb53, ^bb148
^bb53:
  %v220 = sea.load %v200[%v202] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_316"("aws-c-common/source/byte_buf.c":479:21))
  %v221 = sea.const 0 : i8 loc("_317"("aws-c-common/source/byte_buf.c":480:15))
  %v222 = sea.icmp eq, %v220, %v221 : i8 loc("_317"("aws-c-common/source/byte_buf.c":480:15))
  %v223 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":480:13)
  sea.cond_br %v222, ^bb135(%v223 : i1), ^bb54 loc("aws-c-common/source/byte_buf.c":480:13)
^bb54:
  %v224 = sea.const 1 : i64 loc("_319"("aws-c-common/source/byte_buf.c":484:13))
  %v225 = sea.ptr.dereferenceable %v214, %v224 : !sea.ptr<64>, i64 loc("_319"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v225, ^bb55, ^bb148
^bb55:
  %v226 = sea.load %v51[%v214] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_321"("aws-c-common/source/byte_buf.c":484:13))
  %v227 = sea.icmp eq, %v226, %v220 : i8 loc(".not.i.i.i"("aws-c-common/source/byte_buf.c":484:28))
  %v228 = sea.const 0 : i1
  sea.cond_br %v227, ^bb56, ^bb135(%v228 : i1)
^bb56:
  %v229 = sea.const 1 : i64 loc("exitcond16.not"("aws-c-common/source/byte_buf.c":478:26))
  %v230 = sea.icmp eq, %v215, %v229 : i64 loc("exitcond16.not"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v230, ^bb133, ^bb57 loc("aws-c-common/source/byte_buf.c":478:5)
^bb57:
  %v231 = sea.ptr.index %v202 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_149"("aws-c-common/source/byte_buf.c":479:21))
  %v232 = sea.const 1 : i64 loc("_150"("aws-c-common/source/byte_buf.c":479:21))
  %v233 = sea.ptr.dereferenceable %v231, %v232 : !sea.ptr<64>, i64 loc("_150"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v233, ^bb58, ^bb148
^bb58:
  %v234 = sea.load %v200[%v231] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_152"("aws-c-common/source/byte_buf.c":479:21))
  %v235 = sea.const 0 : i8 loc("_153"("aws-c-common/source/byte_buf.c":480:15))
  %v236 = sea.icmp eq, %v234, %v235 : i8 loc("_153"("aws-c-common/source/byte_buf.c":480:15))
  %v237 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":480:13)
  sea.cond_br %v236, ^bb135(%v237 : i1), ^bb59 loc("aws-c-common/source/byte_buf.c":480:13)
^bb59:
  %v238 = sea.ptr.index %v52 [] strides [] offset 17 inbounds : !sea.ptr<64> loc("_155"("aws-c-common/source/byte_buf.c":484:13))
  %v239 = sea.const 1 : i64 loc("_156"("aws-c-common/source/byte_buf.c":484:13))
  %v240 = sea.ptr.dereferenceable %v238, %v239 : !sea.ptr<64>, i64 loc("_156"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v240, ^bb60, ^bb148
^bb60:
  %v241 = sea.load %v51[%v238] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_158"("aws-c-common/source/byte_buf.c":484:13))
  %v242 = sea.icmp eq, %v241, %v234 : i8 loc(".not.i.i.i.1"("aws-c-common/source/byte_buf.c":484:28))
  %v243 = sea.const 0 : i1
  sea.cond_br %v242, ^bb61, ^bb135(%v243 : i1)
^bb61:
  %v244 = sea.const 2 : i64 loc("exitcond16.not.1"("aws-c-common/source/byte_buf.c":478:26))
  %v245 = sea.icmp eq, %v215, %v244 : i64 loc("exitcond16.not.1"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v245, ^bb133, ^bb62 loc("aws-c-common/source/byte_buf.c":478:5)
^bb62:
  %v246 = sea.ptr.index %v202 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_160"("aws-c-common/source/byte_buf.c":479:21))
  %v247 = sea.const 1 : i64 loc("_161"("aws-c-common/source/byte_buf.c":479:21))
  %v248 = sea.ptr.dereferenceable %v246, %v247 : !sea.ptr<64>, i64 loc("_161"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v248, ^bb63, ^bb148
^bb63:
  %v249 = sea.load %v200[%v246] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_163"("aws-c-common/source/byte_buf.c":479:21))
  %v250 = sea.const 0 : i8 loc("_164"("aws-c-common/source/byte_buf.c":480:15))
  %v251 = sea.icmp eq, %v249, %v250 : i8 loc("_164"("aws-c-common/source/byte_buf.c":480:15))
  %v252 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":480:13)
  sea.cond_br %v251, ^bb135(%v252 : i1), ^bb64 loc("aws-c-common/source/byte_buf.c":480:13)
^bb64:
  %v253 = sea.ptr.index %v52 [] strides [] offset 18 inbounds : !sea.ptr<64> loc("_166"("aws-c-common/source/byte_buf.c":484:13))
  %v254 = sea.const 1 : i64 loc("_167"("aws-c-common/source/byte_buf.c":484:13))
  %v255 = sea.ptr.dereferenceable %v253, %v254 : !sea.ptr<64>, i64 loc("_167"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v255, ^bb65, ^bb148
^bb65:
  %v256 = sea.load %v51[%v253] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_169"("aws-c-common/source/byte_buf.c":484:13))
  %v257 = sea.icmp eq, %v256, %v249 : i8 loc(".not.i.i.i.2"("aws-c-common/source/byte_buf.c":484:28))
  %v258 = sea.const 0 : i1
  sea.cond_br %v257, ^bb66, ^bb135(%v258 : i1)
^bb66:
  %v259 = sea.const 3 : i64 loc("exitcond16.not.2"("aws-c-common/source/byte_buf.c":478:26))
  %v260 = sea.icmp eq, %v215, %v259 : i64 loc("exitcond16.not.2"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v260, ^bb133, ^bb67 loc("aws-c-common/source/byte_buf.c":478:5)
^bb67:
  %v261 = sea.ptr.index %v202 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_171"("aws-c-common/source/byte_buf.c":479:21))
  %v262 = sea.const 1 : i64 loc("_172"("aws-c-common/source/byte_buf.c":479:21))
  %v263 = sea.ptr.dereferenceable %v261, %v262 : !sea.ptr<64>, i64 loc("_172"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v263, ^bb68, ^bb148
^bb68:
  %v264 = sea.load %v200[%v261] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_174"("aws-c-common/source/byte_buf.c":479:21))
  %v265 = sea.const 0 : i8 loc("_175"("aws-c-common/source/byte_buf.c":480:15))
  %v266 = sea.icmp eq, %v264, %v265 : i8 loc("_175"("aws-c-common/source/byte_buf.c":480:15))
  %v267 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":480:13)
  sea.cond_br %v266, ^bb135(%v267 : i1), ^bb69 loc("aws-c-common/source/byte_buf.c":480:13)
^bb69:
  %v268 = sea.ptr.index %v52 [] strides [] offset 19 inbounds : !sea.ptr<64> loc("_177"("aws-c-common/source/byte_buf.c":484:13))
  %v269 = sea.const 1 : i64 loc("_178"("aws-c-common/source/byte_buf.c":484:13))
  %v270 = sea.ptr.dereferenceable %v268, %v269 : !sea.ptr<64>, i64 loc("_178"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v270, ^bb70, ^bb148
^bb70:
  %v271 = sea.load %v51[%v268] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_180"("aws-c-common/source/byte_buf.c":484:13))
  %v272 = sea.icmp eq, %v271, %v264 : i8 loc(".not.i.i.i.3"("aws-c-common/source/byte_buf.c":484:28))
  %v273 = sea.const 0 : i1
  sea.cond_br %v272, ^bb71, ^bb135(%v273 : i1)
^bb71:
  %v274 = sea.const 4 : i64 loc("exitcond16.not.3"("aws-c-common/source/byte_buf.c":478:26))
  %v275 = sea.icmp eq, %v215, %v274 : i64 loc("exitcond16.not.3"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v275, ^bb133, ^bb72 loc("aws-c-common/source/byte_buf.c":478:5)
^bb72:
  %v276 = sea.ptr.index %v202 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_182"("aws-c-common/source/byte_buf.c":479:21))
  %v277 = sea.const 1 : i64 loc("_183"("aws-c-common/source/byte_buf.c":479:21))
  %v278 = sea.ptr.dereferenceable %v276, %v277 : !sea.ptr<64>, i64 loc("_183"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v278, ^bb73, ^bb148
^bb73:
  %v279 = sea.load %v200[%v276] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_185"("aws-c-common/source/byte_buf.c":479:21))
  %v280 = sea.const 0 : i8 loc("_186"("aws-c-common/source/byte_buf.c":480:15))
  %v281 = sea.icmp eq, %v279, %v280 : i8 loc("_186"("aws-c-common/source/byte_buf.c":480:15))
  %v282 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":480:13)
  sea.cond_br %v281, ^bb135(%v282 : i1), ^bb74 loc("aws-c-common/source/byte_buf.c":480:13)
^bb74:
  %v283 = sea.ptr.index %v52 [] strides [] offset 20 inbounds : !sea.ptr<64> loc("_188"("aws-c-common/source/byte_buf.c":484:13))
  %v284 = sea.const 1 : i64 loc("_189"("aws-c-common/source/byte_buf.c":484:13))
  %v285 = sea.ptr.dereferenceable %v283, %v284 : !sea.ptr<64>, i64 loc("_189"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v285, ^bb75, ^bb148
^bb75:
  %v286 = sea.load %v51[%v283] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_191"("aws-c-common/source/byte_buf.c":484:13))
  %v287 = sea.icmp eq, %v286, %v279 : i8 loc(".not.i.i.i.4"("aws-c-common/source/byte_buf.c":484:28))
  %v288 = sea.const 0 : i1
  sea.cond_br %v287, ^bb76, ^bb135(%v288 : i1)
^bb76:
  %v289 = sea.const 5 : i64 loc("exitcond16.not.4"("aws-c-common/source/byte_buf.c":478:26))
  %v290 = sea.icmp eq, %v215, %v289 : i64 loc("exitcond16.not.4"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v290, ^bb133, ^bb77 loc("aws-c-common/source/byte_buf.c":478:5)
^bb77:
  %v291 = sea.ptr.index %v202 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_193"("aws-c-common/source/byte_buf.c":479:21))
  %v292 = sea.const 1 : i64 loc("_194"("aws-c-common/source/byte_buf.c":479:21))
  %v293 = sea.ptr.dereferenceable %v291, %v292 : !sea.ptr<64>, i64 loc("_194"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v293, ^bb78, ^bb148
^bb78:
  %v294 = sea.load %v200[%v291] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_196"("aws-c-common/source/byte_buf.c":479:21))
  %v295 = sea.const 0 : i8 loc("_197"("aws-c-common/source/byte_buf.c":480:15))
  %v296 = sea.icmp eq, %v294, %v295 : i8 loc("_197"("aws-c-common/source/byte_buf.c":480:15))
  %v297 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":480:13)
  sea.cond_br %v296, ^bb135(%v297 : i1), ^bb79 loc("aws-c-common/source/byte_buf.c":480:13)
^bb79:
  %v298 = sea.ptr.index %v52 [] strides [] offset 21 inbounds : !sea.ptr<64> loc("_199"("aws-c-common/source/byte_buf.c":484:13))
  %v299 = sea.const 1 : i64 loc("_200"("aws-c-common/source/byte_buf.c":484:13))
  %v300 = sea.ptr.dereferenceable %v298, %v299 : !sea.ptr<64>, i64 loc("_200"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v300, ^bb80, ^bb148
^bb80:
  %v301 = sea.load %v51[%v298] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_202"("aws-c-common/source/byte_buf.c":484:13))
  %v302 = sea.icmp eq, %v301, %v294 : i8 loc(".not.i.i.i.5"("aws-c-common/source/byte_buf.c":484:28))
  %v303 = sea.const 0 : i1
  sea.cond_br %v302, ^bb81, ^bb135(%v303 : i1)
^bb81:
  %v304 = sea.const 6 : i64 loc("exitcond16.not.5"("aws-c-common/source/byte_buf.c":478:26))
  %v305 = sea.icmp eq, %v215, %v304 : i64 loc("exitcond16.not.5"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v305, ^bb133, ^bb82 loc("aws-c-common/source/byte_buf.c":478:5)
^bb82:
  %v306 = sea.ptr.index %v202 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_204"("aws-c-common/source/byte_buf.c":479:21))
  %v307 = sea.const 1 : i64 loc("_205"("aws-c-common/source/byte_buf.c":479:21))
  %v308 = sea.ptr.dereferenceable %v306, %v307 : !sea.ptr<64>, i64 loc("_205"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v308, ^bb83, ^bb148
^bb83:
  %v309 = sea.load %v200[%v306] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_207"("aws-c-common/source/byte_buf.c":479:21))
  %v310 = sea.const 0 : i8 loc("_208"("aws-c-common/source/byte_buf.c":480:15))
  %v311 = sea.icmp eq, %v309, %v310 : i8 loc("_208"("aws-c-common/source/byte_buf.c":480:15))
  %v312 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":480:13)
  sea.cond_br %v311, ^bb135(%v312 : i1), ^bb84 loc("aws-c-common/source/byte_buf.c":480:13)
^bb84:
  %v313 = sea.ptr.index %v52 [] strides [] offset 22 inbounds : !sea.ptr<64> loc("_210"("aws-c-common/source/byte_buf.c":484:13))
  %v314 = sea.const 1 : i64 loc("_211"("aws-c-common/source/byte_buf.c":484:13))
  %v315 = sea.ptr.dereferenceable %v313, %v314 : !sea.ptr<64>, i64 loc("_211"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v315, ^bb85, ^bb148
^bb85:
  %v316 = sea.load %v51[%v313] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_213"("aws-c-common/source/byte_buf.c":484:13))
  %v317 = sea.icmp eq, %v316, %v309 : i8 loc(".not.i.i.i.6"("aws-c-common/source/byte_buf.c":484:28))
  %v318 = sea.const 0 : i1
  sea.cond_br %v317, ^bb86, ^bb135(%v318 : i1)
^bb86:
  %v319 = sea.const 7 : i64 loc("exitcond16.not.6"("aws-c-common/source/byte_buf.c":478:26))
  %v320 = sea.icmp eq, %v215, %v319 : i64 loc("exitcond16.not.6"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v320, ^bb133, ^bb87 loc("aws-c-common/source/byte_buf.c":478:5)
^bb87:
  %v321 = sea.ptr.index %v202 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_215"("aws-c-common/source/byte_buf.c":479:21))
  %v322 = sea.const 1 : i64 loc("_216"("aws-c-common/source/byte_buf.c":479:21))
  %v323 = sea.ptr.dereferenceable %v321, %v322 : !sea.ptr<64>, i64 loc("_216"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v323, ^bb88, ^bb148
^bb88:
  %v324 = sea.load %v200[%v321] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_218"("aws-c-common/source/byte_buf.c":479:21))
  %v325 = sea.const 0 : i8 loc("_219"("aws-c-common/source/byte_buf.c":480:15))
  %v326 = sea.icmp eq, %v324, %v325 : i8 loc("_219"("aws-c-common/source/byte_buf.c":480:15))
  %v327 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":480:13)
  sea.cond_br %v326, ^bb135(%v327 : i1), ^bb89 loc("aws-c-common/source/byte_buf.c":480:13)
^bb89:
  %v328 = sea.ptr.index %v52 [] strides [] offset 23 inbounds : !sea.ptr<64> loc("_221"("aws-c-common/source/byte_buf.c":484:13))
  %v329 = sea.const 1 : i64 loc("_222"("aws-c-common/source/byte_buf.c":484:13))
  %v330 = sea.ptr.dereferenceable %v328, %v329 : !sea.ptr<64>, i64 loc("_222"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v330, ^bb90, ^bb148
^bb90:
  %v331 = sea.load %v51[%v328] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_224"("aws-c-common/source/byte_buf.c":484:13))
  %v332 = sea.icmp eq, %v331, %v324 : i8 loc(".not.i.i.i.7"("aws-c-common/source/byte_buf.c":484:28))
  %v333 = sea.const 0 : i1
  sea.cond_br %v332, ^bb91, ^bb135(%v333 : i1)
^bb91:
  %v334 = sea.const 8 : i64 loc("exitcond16.not.7"("aws-c-common/source/byte_buf.c":478:26))
  %v335 = sea.icmp eq, %v215, %v334 : i64 loc("exitcond16.not.7"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v335, ^bb133, ^bb92 loc("aws-c-common/source/byte_buf.c":478:5)
^bb92:
  %v336 = sea.ptr.index %v202 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_226"("aws-c-common/source/byte_buf.c":479:21))
  %v337 = sea.const 1 : i64 loc("_227"("aws-c-common/source/byte_buf.c":479:21))
  %v338 = sea.ptr.dereferenceable %v336, %v337 : !sea.ptr<64>, i64 loc("_227"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v338, ^bb93, ^bb148
^bb93:
  %v339 = sea.load %v200[%v336] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_229"("aws-c-common/source/byte_buf.c":479:21))
  %v340 = sea.const 0 : i8 loc("_230"("aws-c-common/source/byte_buf.c":480:15))
  %v341 = sea.icmp eq, %v339, %v340 : i8 loc("_230"("aws-c-common/source/byte_buf.c":480:15))
  %v342 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":480:13)
  sea.cond_br %v341, ^bb135(%v342 : i1), ^bb94 loc("aws-c-common/source/byte_buf.c":480:13)
^bb94:
  %v343 = sea.ptr.index %v52 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_232"("aws-c-common/source/byte_buf.c":484:13))
  %v344 = sea.const 1 : i64 loc("_233"("aws-c-common/source/byte_buf.c":484:13))
  %v345 = sea.ptr.dereferenceable %v343, %v344 : !sea.ptr<64>, i64 loc("_233"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v345, ^bb95, ^bb148
^bb95:
  %v346 = sea.load %v51[%v343] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_235"("aws-c-common/source/byte_buf.c":484:13))
  %v347 = sea.icmp eq, %v346, %v339 : i8 loc(".not.i.i.i.8"("aws-c-common/source/byte_buf.c":484:28))
  %v348 = sea.const 0 : i1
  sea.cond_br %v347, ^bb96, ^bb135(%v348 : i1)
^bb96:
  %v349 = sea.const 9 : i64 loc("exitcond16.not.8"("aws-c-common/source/byte_buf.c":478:26))
  %v350 = sea.icmp eq, %v215, %v349 : i64 loc("exitcond16.not.8"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v350, ^bb133, ^bb97 loc("aws-c-common/source/byte_buf.c":478:5)
^bb97:
  %v351 = sea.ptr.index %v202 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_237"("aws-c-common/source/byte_buf.c":479:21))
  %v352 = sea.const 1 : i64 loc("_238"("aws-c-common/source/byte_buf.c":479:21))
  %v353 = sea.ptr.dereferenceable %v351, %v352 : !sea.ptr<64>, i64 loc("_238"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v353, ^bb98, ^bb148
^bb98:
  %v354 = sea.load %v200[%v351] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_240"("aws-c-common/source/byte_buf.c":479:21))
  %v355 = sea.const 0 : i8 loc("_241"("aws-c-common/source/byte_buf.c":480:15))
  %v356 = sea.icmp eq, %v354, %v355 : i8 loc("_241"("aws-c-common/source/byte_buf.c":480:15))
  %v357 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":480:13)
  sea.cond_br %v356, ^bb135(%v357 : i1), ^bb99 loc("aws-c-common/source/byte_buf.c":480:13)
^bb99:
  %v358 = sea.ptr.index %v52 [] strides [] offset 25 inbounds : !sea.ptr<64> loc("_243"("aws-c-common/source/byte_buf.c":484:13))
  %v359 = sea.const 1 : i64 loc("_244"("aws-c-common/source/byte_buf.c":484:13))
  %v360 = sea.ptr.dereferenceable %v358, %v359 : !sea.ptr<64>, i64 loc("_244"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v360, ^bb100, ^bb148
^bb100:
  %v361 = sea.load %v51[%v358] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_246"("aws-c-common/source/byte_buf.c":484:13))
  %v362 = sea.icmp eq, %v361, %v354 : i8 loc(".not.i.i.i.9"("aws-c-common/source/byte_buf.c":484:28))
  %v363 = sea.const 0 : i1
  sea.cond_br %v362, ^bb101, ^bb135(%v363 : i1)
^bb101:
  %v364 = sea.const 10 : i64 loc("exitcond16.not.9"("aws-c-common/source/byte_buf.c":478:26))
  %v365 = sea.icmp eq, %v215, %v364 : i64 loc("exitcond16.not.9"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v365, ^bb133, ^bb102 loc("aws-c-common/source/byte_buf.c":478:5)
^bb102:
  %v366 = sea.ptr.index %v202 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_248"("aws-c-common/source/byte_buf.c":479:21))
  %v367 = sea.const 1 : i64 loc("_249"("aws-c-common/source/byte_buf.c":479:21))
  %v368 = sea.ptr.dereferenceable %v366, %v367 : !sea.ptr<64>, i64 loc("_249"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v368, ^bb103, ^bb148
^bb103:
  %v369 = sea.load %v200[%v366] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_251"("aws-c-common/source/byte_buf.c":479:21))
  %v370 = sea.const 0 : i8 loc("_252"("aws-c-common/source/byte_buf.c":480:15))
  %v371 = sea.icmp eq, %v369, %v370 : i8 loc("_252"("aws-c-common/source/byte_buf.c":480:15))
  %v372 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":480:13)
  sea.cond_br %v371, ^bb135(%v372 : i1), ^bb104 loc("aws-c-common/source/byte_buf.c":480:13)
^bb104:
  %v373 = sea.ptr.index %v52 [] strides [] offset 26 inbounds : !sea.ptr<64> loc("_254"("aws-c-common/source/byte_buf.c":484:13))
  %v374 = sea.const 1 : i64 loc("_255"("aws-c-common/source/byte_buf.c":484:13))
  %v375 = sea.ptr.dereferenceable %v373, %v374 : !sea.ptr<64>, i64 loc("_255"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v375, ^bb105, ^bb148
^bb105:
  %v376 = sea.load %v51[%v373] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_257"("aws-c-common/source/byte_buf.c":484:13))
  %v377 = sea.icmp eq, %v376, %v369 : i8 loc(".not.i.i.i.10"("aws-c-common/source/byte_buf.c":484:28))
  %v378 = sea.const 0 : i1
  sea.cond_br %v377, ^bb106, ^bb135(%v378 : i1)
^bb106:
  %v379 = sea.const 11 : i64 loc("exitcond16.not.10"("aws-c-common/source/byte_buf.c":478:26))
  %v380 = sea.icmp eq, %v215, %v379 : i64 loc("exitcond16.not.10"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v380, ^bb133, ^bb107 loc("aws-c-common/source/byte_buf.c":478:5)
^bb107:
  %v381 = sea.ptr.index %v202 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_259"("aws-c-common/source/byte_buf.c":479:21))
  %v382 = sea.const 1 : i64 loc("_260"("aws-c-common/source/byte_buf.c":479:21))
  %v383 = sea.ptr.dereferenceable %v381, %v382 : !sea.ptr<64>, i64 loc("_260"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v383, ^bb108, ^bb148
^bb108:
  %v384 = sea.load %v200[%v381] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_262"("aws-c-common/source/byte_buf.c":479:21))
  %v385 = sea.const 0 : i8 loc("_263"("aws-c-common/source/byte_buf.c":480:15))
  %v386 = sea.icmp eq, %v384, %v385 : i8 loc("_263"("aws-c-common/source/byte_buf.c":480:15))
  %v387 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":480:13)
  sea.cond_br %v386, ^bb135(%v387 : i1), ^bb109 loc("aws-c-common/source/byte_buf.c":480:13)
^bb109:
  %v388 = sea.ptr.index %v52 [] strides [] offset 27 inbounds : !sea.ptr<64> loc("_265"("aws-c-common/source/byte_buf.c":484:13))
  %v389 = sea.const 1 : i64 loc("_266"("aws-c-common/source/byte_buf.c":484:13))
  %v390 = sea.ptr.dereferenceable %v388, %v389 : !sea.ptr<64>, i64 loc("_266"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v390, ^bb110, ^bb148
^bb110:
  %v391 = sea.load %v51[%v388] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_268"("aws-c-common/source/byte_buf.c":484:13))
  %v392 = sea.icmp eq, %v391, %v384 : i8 loc(".not.i.i.i.11"("aws-c-common/source/byte_buf.c":484:28))
  %v393 = sea.const 0 : i1
  sea.cond_br %v392, ^bb111, ^bb135(%v393 : i1)
^bb111:
  %v394 = sea.const 12 : i64 loc("exitcond16.not.11"("aws-c-common/source/byte_buf.c":478:26))
  %v395 = sea.icmp eq, %v215, %v394 : i64 loc("exitcond16.not.11"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v395, ^bb133, ^bb112 loc("aws-c-common/source/byte_buf.c":478:5)
^bb112:
  %v396 = sea.ptr.index %v202 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_270"("aws-c-common/source/byte_buf.c":479:21))
  %v397 = sea.const 1 : i64 loc("_271"("aws-c-common/source/byte_buf.c":479:21))
  %v398 = sea.ptr.dereferenceable %v396, %v397 : !sea.ptr<64>, i64 loc("_271"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v398, ^bb113, ^bb148
^bb113:
  %v399 = sea.load %v200[%v396] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_273"("aws-c-common/source/byte_buf.c":479:21))
  %v400 = sea.const 0 : i8 loc("_274"("aws-c-common/source/byte_buf.c":480:15))
  %v401 = sea.icmp eq, %v399, %v400 : i8 loc("_274"("aws-c-common/source/byte_buf.c":480:15))
  %v402 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":480:13)
  sea.cond_br %v401, ^bb135(%v402 : i1), ^bb114 loc("aws-c-common/source/byte_buf.c":480:13)
^bb114:
  %v403 = sea.ptr.index %v52 [] strides [] offset 28 inbounds : !sea.ptr<64> loc("_276"("aws-c-common/source/byte_buf.c":484:13))
  %v404 = sea.const 1 : i64 loc("_277"("aws-c-common/source/byte_buf.c":484:13))
  %v405 = sea.ptr.dereferenceable %v403, %v404 : !sea.ptr<64>, i64 loc("_277"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v405, ^bb115, ^bb148
^bb115:
  %v406 = sea.load %v51[%v403] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_279"("aws-c-common/source/byte_buf.c":484:13))
  %v407 = sea.icmp eq, %v406, %v399 : i8 loc(".not.i.i.i.12"("aws-c-common/source/byte_buf.c":484:28))
  %v408 = sea.const 0 : i1
  sea.cond_br %v407, ^bb116, ^bb135(%v408 : i1)
^bb116:
  %v409 = sea.const 13 : i64 loc("exitcond16.not.12"("aws-c-common/source/byte_buf.c":478:26))
  %v410 = sea.icmp eq, %v215, %v409 : i64 loc("exitcond16.not.12"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v410, ^bb133, ^bb117 loc("aws-c-common/source/byte_buf.c":478:5)
^bb117:
  %v411 = sea.ptr.index %v202 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_281"("aws-c-common/source/byte_buf.c":479:21))
  %v412 = sea.const 1 : i64 loc("_282"("aws-c-common/source/byte_buf.c":479:21))
  %v413 = sea.ptr.dereferenceable %v411, %v412 : !sea.ptr<64>, i64 loc("_282"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v413, ^bb118, ^bb148
^bb118:
  %v414 = sea.load %v200[%v411] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_284"("aws-c-common/source/byte_buf.c":479:21))
  %v415 = sea.const 0 : i8 loc("_285"("aws-c-common/source/byte_buf.c":480:15))
  %v416 = sea.icmp eq, %v414, %v415 : i8 loc("_285"("aws-c-common/source/byte_buf.c":480:15))
  %v417 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":480:13)
  sea.cond_br %v416, ^bb135(%v417 : i1), ^bb119 loc("aws-c-common/source/byte_buf.c":480:13)
^bb119:
  %v418 = sea.ptr.index %v52 [] strides [] offset 29 inbounds : !sea.ptr<64> loc("_287"("aws-c-common/source/byte_buf.c":484:13))
  %v419 = sea.const 1 : i64 loc("_288"("aws-c-common/source/byte_buf.c":484:13))
  %v420 = sea.ptr.dereferenceable %v418, %v419 : !sea.ptr<64>, i64 loc("_288"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v420, ^bb120, ^bb148
^bb120:
  %v421 = sea.load %v51[%v418] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_290"("aws-c-common/source/byte_buf.c":484:13))
  %v422 = sea.icmp eq, %v421, %v414 : i8 loc(".not.i.i.i.13"("aws-c-common/source/byte_buf.c":484:28))
  %v423 = sea.const 0 : i1
  sea.cond_br %v422, ^bb121, ^bb135(%v423 : i1)
^bb121:
  %v424 = sea.const 14 : i64 loc("exitcond16.not.13"("aws-c-common/source/byte_buf.c":478:26))
  %v425 = sea.icmp eq, %v215, %v424 : i64 loc("exitcond16.not.13"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v425, ^bb133, ^bb122 loc("aws-c-common/source/byte_buf.c":478:5)
^bb122:
  %v426 = sea.ptr.index %v202 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_292"("aws-c-common/source/byte_buf.c":479:21))
  %v427 = sea.const 1 : i64 loc("_293"("aws-c-common/source/byte_buf.c":479:21))
  %v428 = sea.ptr.dereferenceable %v426, %v427 : !sea.ptr<64>, i64 loc("_293"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v428, ^bb123, ^bb148
^bb123:
  %v429 = sea.load %v200[%v426] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_295"("aws-c-common/source/byte_buf.c":479:21))
  %v430 = sea.const 0 : i8 loc("_296"("aws-c-common/source/byte_buf.c":480:15))
  %v431 = sea.icmp eq, %v429, %v430 : i8 loc("_296"("aws-c-common/source/byte_buf.c":480:15))
  %v432 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":480:13)
  sea.cond_br %v431, ^bb135(%v432 : i1), ^bb124 loc("aws-c-common/source/byte_buf.c":480:13)
^bb124:
  %v433 = sea.ptr.index %v52 [] strides [] offset 30 inbounds : !sea.ptr<64> loc("_298"("aws-c-common/source/byte_buf.c":484:13))
  %v434 = sea.const 1 : i64 loc("_299"("aws-c-common/source/byte_buf.c":484:13))
  %v435 = sea.ptr.dereferenceable %v433, %v434 : !sea.ptr<64>, i64 loc("_299"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v435, ^bb125, ^bb148
^bb125:
  %v436 = sea.load %v51[%v433] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_301"("aws-c-common/source/byte_buf.c":484:13))
  %v437 = sea.icmp eq, %v436, %v429 : i8 loc(".not.i.i.i.14"("aws-c-common/source/byte_buf.c":484:28))
  %v438 = sea.const 0 : i1
  sea.cond_br %v437, ^bb126, ^bb135(%v438 : i1)
^bb126:
  %v439 = sea.const 15 : i64 loc("exitcond16.not.14"("aws-c-common/source/byte_buf.c":478:26))
  %v440 = sea.icmp eq, %v215, %v439 : i64 loc("exitcond16.not.14"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v440, ^bb133, ^bb127 loc("aws-c-common/source/byte_buf.c":478:5)
^bb127:
  %v441 = sea.ptr.index %v202 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_303"("aws-c-common/source/byte_buf.c":479:21))
  %v442 = sea.const 1 : i64 loc("_304"("aws-c-common/source/byte_buf.c":479:21))
  %v443 = sea.ptr.dereferenceable %v441, %v442 : !sea.ptr<64>, i64 loc("_304"("aws-c-common/source/byte_buf.c":479:21))
  sea.cond_br %v443, ^bb128, ^bb148
^bb128:
  %v444 = sea.load %v200[%v441] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_306"("aws-c-common/source/byte_buf.c":479:21))
  %v445 = sea.const 0 : i8 loc("_307"("aws-c-common/source/byte_buf.c":480:15))
  %v446 = sea.icmp eq, %v444, %v445 : i8 loc("_307"("aws-c-common/source/byte_buf.c":480:15))
  %v447 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":480:13)
  sea.cond_br %v446, ^bb135(%v447 : i1), ^bb129 loc("aws-c-common/source/byte_buf.c":480:13)
^bb129:
  %v448 = sea.ptr.index %v52 [] strides [] offset 31 inbounds : !sea.ptr<64> loc("_309"("aws-c-common/source/byte_buf.c":484:13))
  %v449 = sea.const 1 : i64 loc("_310"("aws-c-common/source/byte_buf.c":484:13))
  %v450 = sea.ptr.dereferenceable %v448, %v449 : !sea.ptr<64>, i64 loc("_310"("aws-c-common/source/byte_buf.c":484:13))
  sea.cond_br %v450, ^bb130, ^bb148
^bb130:
  %v451 = sea.load %v51[%v448] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_312"("aws-c-common/source/byte_buf.c":484:13))
  %v452 = sea.icmp eq, %v451, %v444 : i8 loc(".not.i.i.i.15"("aws-c-common/source/byte_buf.c":484:28))
  %v453 = sea.const 0 : i1
  sea.cond_br %v452, ^bb131, ^bb135(%v453 : i1)
^bb131:
  %v454 = sea.const 16 : i64 loc("exitcond16.not.15"("aws-c-common/source/byte_buf.c":478:26))
  %v455 = sea.icmp eq, %v215, %v454 : i64 loc("exitcond16.not.15"("aws-c-common/source/byte_buf.c":478:26))
  sea.cond_br %v455, ^bb133, ^bb132 loc("aws-c-common/source/byte_buf.c":478:5)
^bb132:
  %v456 = sea.ptr.index %v202 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_314"("aws-c-common/source/byte_buf.c":479:21))
  %v457 = sea.const 1 : i64 loc("_315"("aws-c-common/source/byte_buf.c":479:21))
  %v458 = sea.ptr.dereferenceable %v456, %v457 : !sea.ptr<64>, i64 loc("_315"("aws-c-common/source/byte_buf.c":479:21))
  %v459 = sea.const 1 : i1
  %v460 = sea.xor %v458, %v459 : i1
  sea.assume %v460
  sea.br ^bb148
^bb133:
  %v461 = sea.ptr.index %v202 [%v215] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_322"("aws-c-common/source/byte_buf.c":489:12))
  %v462 = sea.const 1 : i64 loc("_323"("aws-c-common/source/byte_buf.c":489:12))
  %v463 = sea.ptr.dereferenceable %v461, %v462 : !sea.ptr<64>, i64 loc("_323"("aws-c-common/source/byte_buf.c":489:12))
  sea.cond_br %v463, ^bb134, ^bb148
^bb134:
  %v464 = sea.load %v200[%v461] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_325"("aws-c-common/source/byte_buf.c":489:12))
  %v465 = sea.const 0 : i8 loc("_326"("aws-c-common/source/byte_buf.c":489:33))
  %v466 = sea.icmp eq, %v464, %v465 : i8 loc("_326"("aws-c-common/source/byte_buf.c":489:33))
  sea.br ^bb135(%v466 : i1) loc("aws-c-common/source/byte_buf.c":489:5)
^bb135(%v467 : i1):
  %v468 = sea.ptr.null : !sea.ptr<64> loc("_327")
  %v469 = sea.ptr.cmp ne, %v52, %v468 : !sea.ptr<64> loc("_327")
  %v470 = sea.and %v469, %v467 : i1 loc("or.cond.i"("seahorn/jobs/string_eq_c_str/aws_string_eq_c_str_harness.c":19:39))
  %v471 = sea.ptr.null : !sea.ptr<64> loc("_328")
  %v472 = sea.ptr.cmp ne, %v202, %v471 : !sea.ptr<64> loc("_328")
  %v473 = sea.and %v472, %v470 : i1 loc("or.cond3.i"("seahorn/jobs/string_eq_c_str/aws_string_eq_c_str_harness.c":19:39))
  sea.assume %v473 loc("seahorn/jobs/string_eq_c_str/aws_string_eq_c_str_harness.c":19:39)
  sea.cond_br %v204, ^bb147, ^bb136 loc("aws-c-common/include/aws/common/string.inl":35:16)
^bb136:
  %v474 = sea.ptr.index %v52 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_330"("aws-c-common/include/aws/common/string.inl":35:19))
  %v475 = sea.const 8 : i64 loc("_331"("aws-c-common/include/aws/common/string.inl":35:19))
  %v476 = sea.ptr.dereferenceable %v474, %v475 : !sea.ptr<64>, i64 loc("_331"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v476, ^bb137, ^bb148
^bb137:
  %v477 = sea.const 8 : i64 loc("_333"("aws-c-common/include/aws/common/string.inl":35:88))
  %v478 = sea.ptr.dereferenceable %v474, %v477 : !sea.ptr<64>, i64 loc("_333"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v478, ^bb138, ^bb148
^bb138:
  %v479 = sea.load %v51[%v474] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_335"("aws-c-common/include/aws/common/string.inl":35:88))
  %v480 = sea.ptr.index %v52 [%v479] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_336"("aws-c-common/include/aws/common/string.inl":35:72))
  %v481 = sea.const 1 : i64 loc("_337"("aws-c-common/include/aws/common/string.inl":35:72))
  %v482 = sea.ptr.dereferenceable %v480, %v481 : !sea.ptr<64>, i64 loc("_337"("aws-c-common/include/aws/common/string.inl":35:72))
  sea.cond_br %v482, ^bb139, ^bb148
^bb139:
  %v483 = sea.load %v51[%v480] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_339"("aws-c-common/include/aws/common/string.inl":35:72))
  %v484 = sea.const 0 : i8 loc("_340"("aws-c-common/include/aws/common/string.inl":35:93))
  %v485 = sea.icmp eq, %v483, %v484 : i8 loc("_340"("aws-c-common/include/aws/common/string.inl":35:93))
  %v486 = sea.const 8 : i64 loc("_341"("aws-c-common/include/aws/common/string.inl":35:19))
  %v487 = sea.ptr.dereferenceable %v474, %v486 : !sea.ptr<64>, i64 loc("_341"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v487, ^bb140, ^bb148
^bb140:
  %v488 = sea.const 8 : i64 loc("_343"("aws-c-common/include/aws/common/string.inl":35:88))
  %v489 = sea.ptr.dereferenceable %v474, %v488 : !sea.ptr<64>, i64 loc("_343"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v489, ^bb141, ^bb148
^bb141:
  %v490 = sea.const 1 : i64 loc("_345"("aws-c-common/include/aws/common/string.inl":35:72))
  %v491 = sea.ptr.dereferenceable %v480, %v490 : !sea.ptr<64>, i64 loc("_345"("aws-c-common/include/aws/common/string.inl":35:72))
  %v492 = sea.const 0 : i1 loc("_346")
  %v493 = sea.select %v491, %v485, %v492 : i1 loc("_346")
  sea.cond_br %v493, ^bb142, ^bb148
^bb142:
  sea.cond_br %v206, ^bb148, ^bb143 loc("seahorn/jobs/string_eq_c_str/aws_string_eq_c_str_harness.c":21:5)
^bb143:
  %v494 = sea.const 8 : i64 loc("_349"("seahorn/jobs/string_eq_c_str/aws_string_eq_c_str_harness.c":22:5))
  %v495 = sea.ptr.dereferenceable %v474, %v494 : !sea.ptr<64>, i64 loc("_349"("seahorn/jobs/string_eq_c_str/aws_string_eq_c_str_harness.c":22:5))
  sea.cond_br %v495, ^bb144, ^bb148
^bb144:
  %v496 = sea.icmp eq, %v479, %v201 : i64 loc("_351"("seahorn/jobs/string_eq_c_str/aws_string_eq_c_str_harness.c":22:5))
  %v497 = sea.const 8 : i64 loc("_352"("seahorn/jobs/string_eq_c_str/aws_string_eq_c_str_harness.c":22:5))
  %v498 = sea.ptr.dereferenceable %v474, %v497 : !sea.ptr<64>, i64 loc("_352"("seahorn/jobs/string_eq_c_str/aws_string_eq_c_str_harness.c":22:5))
  %v499 = sea.const 0 : i1 loc("_353")
  %v500 = sea.select %v498, %v496, %v499 : i1 loc("_353")
  sea.cond_br %v500, ^bb145, ^bb148
^bb145:
  %v501 = sea.const 8 : i64 loc("_355"("seahorn/jobs/string_eq_c_str/aws_string_eq_c_str_harness.c":23:59))
  %v502 = sea.ptr.dereferenceable %v474, %v501 : !sea.ptr<64>, i64 loc("_355"("seahorn/jobs/string_eq_c_str/aws_string_eq_c_str_harness.c":23:59))
  sea.cond_br %v502, ^bb146, ^bb148
^bb146:
  %v503 = sea.ptr.index %v52 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_356"("seahorn/jobs/string_eq_c_str/aws_string_eq_c_str_harness.c":23:29))
  %v504 = sea.const 0 : i64 loc("_357"("seahorn/lib/utils.c":16:11))
  %v505 = sea.icmp ne, %v201, %v504 : i64 loc("_357"("seahorn/lib/utils.c":16:11))
  sea.assume %v505 loc("seahorn/lib/utils.c":16:15)
  %v506 = sea.nondet "nd_size_t" [13] : i64 loc("_358"("seahorn/lib/utils.c":17:16))
  %v507 = sea.icmp ult, %v506, %v201 : i64 loc("_359"("seahorn/lib/utils.c":19:14))
  %v508 = sea.const 36028797018963967 : i64 loc("_360"("seahorn/lib/utils.c":19:20))
  %v509 = sea.icmp ult, %v201, %v508 : i64 loc("_360"("seahorn/lib/utils.c":19:20))
  %v510 = sea.and %v509, %v507 : i1 loc("_361"("seahorn/lib/utils.c":19:20))
  sea.assume %v510 loc("seahorn/lib/utils.c":19:5)
  %v511 = sea.ptr.index %v503 [%v506] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_362"("seahorn/lib/utils.c":20:5))
  %v512 = sea.load %v51[%v511] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_363"("seahorn/lib/utils.c":20:5))
  %v513 = sea.ptr.index %v202 [%v506] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_364"("seahorn/lib/utils.c":20:5))
  %v514 = sea.load %v200[%v513] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_365"("seahorn/lib/utils.c":20:5))
  %v515 = sea.icmp eq, %v512, %v514 : i8 loc("_366"("seahorn/lib/utils.c":20:5))
  %v516 = sea.const 1 : i1 loc("seahorn/lib/utils.c":20:5)
  %v517 = sea.xor %v515, %v516 : i1 loc("seahorn/lib/utils.c":20:5)
  sea.assume %v517 loc("seahorn/lib/utils.c":20:5)
  sea.br ^bb148 loc("seahorn/lib/utils.c":20:5)
^bb147:
  sea.br ^bb148 loc("aws-c-common/include/aws/common/string.inl":35:16)
^bb148:
  sea.br ^bb149
^bb149:
  %v518 = sea.const 0 : i1
  sea.assert %v518
  sea.halt
}
