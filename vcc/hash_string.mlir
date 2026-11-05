// Exported from SeaHorn (hash_string.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm15")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm16")
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
  %v14 = sea.nondet "nd_size_t" [2] : i64 loc("_2"("seahorn/lib/string_helper.c":24:16))
  %v15 = sea.const 10 : i64 loc("_3"("seahorn/lib/string_helper.c":25:14))
  %v16 = sea.icmp ult, %v14, %v15 : i64 loc("_3"("seahorn/lib/string_helper.c":25:14))
  sea.assume %v16 loc("seahorn/lib/string_helper.c":25:3)
  %v17 = sea.const 25 : i64 loc("_4"("seahorn/lib/string_helper.c":11:61))
  %v18 = sea.add %v14, %v17 : i64 loc("_4"("seahorn/lib/string_helper.c":11:61))
  %v19 = sea.nondet "nd_malloc_is_fail" [3] : i1 loc("_5"("seahorn/lib/sea_allocators.c":11:10))
  %v20 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v19, ^bb2(%v1, %v20 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb1 loc("seahorn/lib/sea_allocators.c":11:10)
^bb1:
  %v21 = sea.const 1 : i64 loc("malloc.i")
  %v22 = sea.mul %v18, %v21 : i64 loc("malloc.i")
  %v23 = sea.alloca %v22 align 16 [4] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb2(%v1, %v23 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb2(%v24 : !sea.mem<!sea.ptr<64>, i8>, %v25 : !sea.ptr<64>):
  %v26 = sea.memhavoc %v24[%v25], %v18 [5] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v27 = sea.ptr.null : !sea.ptr<64> loc("_8"("seahorn/lib/sea_allocators.c":45:10))
  %v28 = sea.ptr.cmp ne, %v25, %v27 : !sea.ptr<64> loc("_8"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v28 loc("seahorn/lib/sea_allocators.c":45:3)
  %v29 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i.i"("seahorn/lib/string_helper.c":13:7))
  %v30 = sea.ptr.cmp eq, %v25, %v29 : !sea.ptr<64> loc(".not.i.i.i"("seahorn/lib/string_helper.c":13:7))
  sea.cond_br %v30, ^bb9(%v26 : !sea.mem<!sea.ptr<64>, i8>), ^bb3 loc("seahorn/lib/string_helper.c":13:7)
^bb3:
  %v31 = sea.nondet "nd_bool" [6] : i1 loc("_10"("seahorn/lib/string_helper.c":16:9))
  %v32 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.cond_br %v31, ^bb4, ^bb5(%v32 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb4:
  %v33 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.br ^bb5(%v33 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb5(%v34 : !sea.ptr<64>):
  %v35 = sea.const 8 : i64 loc("_14"("seahorn/lib/string_helper.c":15:49))
  %v36 = sea.ptr.dereferenceable %v25, %v35 : !sea.ptr<64>, i64 loc("_14"("seahorn/lib/string_helper.c":15:49))
  sea.cond_br %v36, ^bb6, ^bb58
^bb6:
  %v37 = sea.store %v26[%v25], %v34 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/string_helper.c":15:49)
  %v38 = sea.ptr.index %v25 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_16"("seahorn/lib/string_helper.c":17:23))
  %v39 = sea.const 8 : i64 loc("_17"("seahorn/lib/string_helper.c":17:28))
  %v40 = sea.ptr.dereferenceable %v38, %v39 : !sea.ptr<64>, i64 loc("_17"("seahorn/lib/string_helper.c":17:28))
  sea.cond_br %v40, ^bb7, ^bb58
^bb7:
  %v41 = sea.store %v37[%v38], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/string_helper.c":17:28)
  %v42 = sea.ptr.index %v25 [%v14] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_19"("seahorn/lib/string_helper.c":18:18))
  %v43 = sea.const 1 : i64 loc("_20"("seahorn/lib/string_helper.c":18:34))
  %v44 = sea.ptr.dereferenceable %v42, %v43 : !sea.ptr<64>, i64 loc("_20"("seahorn/lib/string_helper.c":18:34))
  sea.cond_br %v44, ^bb8, ^bb58
^bb8:
  %v45 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":18:34)
  %v46 = sea.store %v41[%v42], %v45 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":18:34)
  sea.br ^bb9(%v46 : !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/lib/string_helper.c":19:3)
^bb9(%v47 : !sea.mem<!sea.ptr<64>, i8>):
  %v48 = sea.ptr.index %v25 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_22"("aws-c-common/include/aws/common/string.inl":17:17))
  %v49 = sea.ptr.index %v25 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_23"("aws-c-common/source/hash_table.c":965:45))
  %v50 = sea.const 8 : i64 loc("_24"("aws-c-common/source/hash_table.c":965:45))
  %v51 = sea.ptr.dereferenceable %v49, %v50 : !sea.ptr<64>, i64 loc("_24"("aws-c-common/source/hash_table.c":965:45))
  sea.cond_br %v51, ^bb10, ^bb58
^bb10:
  %v52 = sea.load %v47[%v49] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_26"("aws-c-common/source/hash_table.c":965:45))
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  %v53 = sea.const 12 : i64 loc("_29"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  %v54 = sea.icmp ugt, %v52, %v53 : i64 loc("_29"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  sea.cond_br %v54, ^bb13, ^bb17(%v48, %v52 : !sea.ptr<64>, i64) loc("aws-c-common/include/aws/common/private/lookup3.inl":519:5)
^bb13:
  %v55 = sea.const 4 : i64 loc("_30"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  %v56 = sea.ptr.dereferenceable %v48, %v55 : !sea.ptr<64>, i64 loc("_30"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  sea.cond_br %v56, ^bb14, ^bb58
^bb14:
  %v57 = sea.ptr.index %v25 [] strides [] offset 20 inbounds : !sea.ptr<64> loc("_32"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v58 = sea.const 4 : i64 loc("_33"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v59 = sea.ptr.dereferenceable %v57, %v58 : !sea.ptr<64>, i64 loc("_33"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  sea.cond_br %v59, ^bb15, ^bb58
^bb15:
  %v60 = sea.ptr.index %v25 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_35"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v61 = sea.const 4 : i64 loc("_36"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v62 = sea.ptr.dereferenceable %v60, %v61 : !sea.ptr<64>, i64 loc("_36"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  sea.cond_br %v62, ^bb16, ^bb58
^bb16:
  %v63 = sea.const 18446744073709551604 : i64 loc("_38"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v64 = sea.add %v52, %v63 : i64 loc("_38"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v65 = sea.ptr.index %v25 [] strides [] offset 28 inbounds : !sea.ptr<64> loc("_39"("aws-c-common/include/aws/common/private/lookup3.inl":526:9))
  %v66 = sea.const 12 : i64 loc("_40"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  %v67 = sea.icmp ugt, %v64, %v66 : i64 loc("_40"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  sea.cond_br %v67, ^bb57, ^bb17(%v65, %v64 : !sea.ptr<64>, i64) loc("aws-c-common/include/aws/common/private/lookup3.inl":519:5)
^bb17(%v68 : !sea.ptr<64>, %v69 : i64):
  %v70 = sea.const 7 : i64 loc("Pivot66.i.i.i")
  %v71 = sea.icmp ult, %v69, %v70 : i64 loc("Pivot66.i.i.i")
  sea.cond_br %v71, ^bb40, ^bb18
^bb18:
  %v72 = sea.const 10 : i64 loc("Pivot64.i.i.i")
  %v73 = sea.icmp ult, %v69, %v72 : i64 loc("Pivot64.i.i.i")
  sea.cond_br %v73, ^bb30, ^bb19
^bb19:
  %v74 = sea.ptr.index %v68 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_41"("aws-c-common/include/aws/common/private/lookup3.inl":0:0))
  %v75 = sea.const 4 : i64 loc("_42"("aws-c-common/include/aws/common/private/lookup3.inl":0:0))
  %v76 = sea.ptr.dereferenceable %v74, %v75 : !sea.ptr<64>, i64 loc("_42"("aws-c-common/include/aws/common/private/lookup3.inl":0:0))
  %v77 = sea.const 12 : i64 loc("Pivot")
  %v78 = sea.icmp ult, %v69, %v77 : i64 loc("Pivot")
  sea.cond_br %v78, ^bb23, ^bb20
^bb20:
  sea.cond_br %v76, ^bb21, ^bb58
^bb21:
  %v79 = sea.ptr.index %v68 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_46"("aws-c-common/include/aws/common/private/lookup3.inl":550:26))
  %v80 = sea.const 4 : i64 loc("_47"("aws-c-common/include/aws/common/private/lookup3.inl":550:26))
  %v81 = sea.ptr.dereferenceable %v79, %v80 : !sea.ptr<64>, i64 loc("_47"("aws-c-common/include/aws/common/private/lookup3.inl":550:26))
  sea.cond_br %v81, ^bb22, ^bb58
^bb22:
  %v82 = sea.const 4 : i64 loc("_49"("aws-c-common/include/aws/common/private/lookup3.inl":550:35))
  %v83 = sea.ptr.dereferenceable %v68, %v82 : !sea.ptr<64>, i64 loc("_49"("aws-c-common/include/aws/common/private/lookup3.inl":550:35))
  %v84 = sea.const 1 : i1
  sea.cond_br %v83, ^bb55(%v84 : i1), ^bb58
^bb23:
  %v85 = sea.const 10 : i64 loc("SwitchLeaf")
  %v86 = sea.icmp eq, %v69, %v85 : i64 loc("SwitchLeaf")
  sea.cond_br %v86, ^bb27, ^bb24
^bb24:
  sea.cond_br %v76, ^bb25, ^bb58
^bb25:
  %v87 = sea.ptr.index %v68 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_52"("aws-c-common/include/aws/common/private/lookup3.inl":551:35))
  %v88 = sea.const 4 : i64 loc("_53"("aws-c-common/include/aws/common/private/lookup3.inl":551:35))
  %v89 = sea.ptr.dereferenceable %v87, %v88 : !sea.ptr<64>, i64 loc("_53"("aws-c-common/include/aws/common/private/lookup3.inl":551:35))
  sea.cond_br %v89, ^bb26, ^bb58
^bb26:
  %v90 = sea.const 4 : i64 loc("_55"("aws-c-common/include/aws/common/private/lookup3.inl":551:44))
  %v91 = sea.ptr.dereferenceable %v68, %v90 : !sea.ptr<64>, i64 loc("_55"("aws-c-common/include/aws/common/private/lookup3.inl":551:44))
  %v92 = sea.const 1 : i1
  sea.cond_br %v91, ^bb55(%v92 : i1), ^bb58
^bb27:
  sea.cond_br %v76, ^bb28, ^bb58
^bb28:
  %v93 = sea.ptr.index %v68 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_58"("aws-c-common/include/aws/common/private/lookup3.inl":552:33))
  %v94 = sea.const 4 : i64 loc("_59"("aws-c-common/include/aws/common/private/lookup3.inl":552:33))
  %v95 = sea.ptr.dereferenceable %v93, %v94 : !sea.ptr<64>, i64 loc("_59"("aws-c-common/include/aws/common/private/lookup3.inl":552:33))
  sea.cond_br %v95, ^bb29, ^bb58
^bb29:
  %v96 = sea.const 4 : i64 loc("_61"("aws-c-common/include/aws/common/private/lookup3.inl":552:42))
  %v97 = sea.ptr.dereferenceable %v68, %v96 : !sea.ptr<64>, i64 loc("_61"("aws-c-common/include/aws/common/private/lookup3.inl":552:42))
  %v98 = sea.const 1 : i1
  sea.cond_br %v97, ^bb55(%v98 : i1), ^bb58
^bb30:
  sea.br ^bb31
^bb31:
  %v99 = sea.const 9 : i64 loc("Pivot3")
  %v100 = sea.icmp slt, %v69, %v99 : i64 loc("Pivot3")
  sea.cond_br %v100, ^bb35, ^bb32
^bb32:
  %v101 = sea.ptr.index %v68 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_63"("aws-c-common/include/aws/common/private/lookup3.inl":553:17))
  %v102 = sea.const 4 : i64 loc("_64"("aws-c-common/include/aws/common/private/lookup3.inl":553:17))
  %v103 = sea.ptr.dereferenceable %v101, %v102 : !sea.ptr<64>, i64 loc("_64"("aws-c-common/include/aws/common/private/lookup3.inl":553:17))
  sea.cond_br %v103, ^bb33, ^bb58
^bb33:
  %v104 = sea.ptr.index %v68 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_66"("aws-c-common/include/aws/common/private/lookup3.inl":553:31))
  %v105 = sea.const 4 : i64 loc("_67"("aws-c-common/include/aws/common/private/lookup3.inl":553:31))
  %v106 = sea.ptr.dereferenceable %v104, %v105 : !sea.ptr<64>, i64 loc("_67"("aws-c-common/include/aws/common/private/lookup3.inl":553:31))
  sea.cond_br %v106, ^bb34, ^bb58
^bb34:
  %v107 = sea.const 4 : i64 loc("_69"("aws-c-common/include/aws/common/private/lookup3.inl":553:40))
  %v108 = sea.ptr.dereferenceable %v68, %v107 : !sea.ptr<64>, i64 loc("_69"("aws-c-common/include/aws/common/private/lookup3.inl":553:40))
  %v109 = sea.const 1 : i1
  sea.cond_br %v108, ^bb55(%v109 : i1), ^bb58
^bb35:
  %v110 = sea.const 7 : i64 loc("SwitchLeaf2")
  %v111 = sea.icmp eq, %v69, %v110 : i64 loc("SwitchLeaf2")
  sea.cond_br %v111, ^bb38, ^bb36
^bb36:
  %v112 = sea.ptr.index %v68 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_71"("aws-c-common/include/aws/common/private/lookup3.inl":554:17))
  %v113 = sea.const 4 : i64 loc("_72"("aws-c-common/include/aws/common/private/lookup3.inl":554:17))
  %v114 = sea.ptr.dereferenceable %v112, %v113 : !sea.ptr<64>, i64 loc("_72"("aws-c-common/include/aws/common/private/lookup3.inl":554:17))
  sea.cond_br %v114, ^bb37, ^bb58
^bb37:
  %v115 = sea.const 4 : i64 loc("_74"("aws-c-common/include/aws/common/private/lookup3.inl":554:26))
  %v116 = sea.ptr.dereferenceable %v68, %v115 : !sea.ptr<64>, i64 loc("_74"("aws-c-common/include/aws/common/private/lookup3.inl":554:26))
  %v117 = sea.const 1 : i1
  sea.cond_br %v116, ^bb55(%v117 : i1), ^bb58
^bb38:
  %v118 = sea.ptr.index %v68 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_76"("aws-c-common/include/aws/common/private/lookup3.inl":555:17))
  %v119 = sea.const 4 : i64 loc("_77"("aws-c-common/include/aws/common/private/lookup3.inl":555:17))
  %v120 = sea.ptr.dereferenceable %v118, %v119 : !sea.ptr<64>, i64 loc("_77"("aws-c-common/include/aws/common/private/lookup3.inl":555:17))
  sea.cond_br %v120, ^bb39, ^bb58
^bb39:
  %v121 = sea.const 4 : i64 loc("_79"("aws-c-common/include/aws/common/private/lookup3.inl":555:35))
  %v122 = sea.ptr.dereferenceable %v68, %v121 : !sea.ptr<64>, i64 loc("_79"("aws-c-common/include/aws/common/private/lookup3.inl":555:35))
  %v123 = sea.const 1 : i1
  sea.cond_br %v122, ^bb55(%v123 : i1), ^bb58
^bb40:
  %v124 = sea.const 4 : i64 loc("Pivot54.i.i.i")
  %v125 = sea.icmp ult, %v69, %v124 : i64 loc("Pivot54.i.i.i")
  sea.cond_br %v125, ^bb49, ^bb41
^bb41:
  sea.br ^bb42
^bb42:
  %v126 = sea.const 6 : i64 loc("Pivot7")
  %v127 = sea.icmp slt, %v69, %v126 : i64 loc("Pivot7")
  sea.cond_br %v127, ^bb45, ^bb43
^bb43:
  %v128 = sea.ptr.index %v68 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_81"("aws-c-common/include/aws/common/private/lookup3.inl":556:17))
  %v129 = sea.const 4 : i64 loc("_82"("aws-c-common/include/aws/common/private/lookup3.inl":556:17))
  %v130 = sea.ptr.dereferenceable %v128, %v129 : !sea.ptr<64>, i64 loc("_82"("aws-c-common/include/aws/common/private/lookup3.inl":556:17))
  sea.cond_br %v130, ^bb44, ^bb58
^bb44:
  %v131 = sea.const 4 : i64 loc("_84"("aws-c-common/include/aws/common/private/lookup3.inl":556:33))
  %v132 = sea.ptr.dereferenceable %v68, %v131 : !sea.ptr<64>, i64 loc("_84"("aws-c-common/include/aws/common/private/lookup3.inl":556:33))
  %v133 = sea.const 1 : i1
  sea.cond_br %v132, ^bb55(%v133 : i1), ^bb58
^bb45:
  %v134 = sea.const 4 : i64 loc("SwitchLeaf5")
  %v135 = sea.icmp eq, %v69, %v134 : i64 loc("SwitchLeaf5")
  sea.cond_br %v135, ^bb48, ^bb46
^bb46:
  %v136 = sea.ptr.index %v68 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_86"("aws-c-common/include/aws/common/private/lookup3.inl":557:17))
  %v137 = sea.const 4 : i64 loc("_87"("aws-c-common/include/aws/common/private/lookup3.inl":557:17))
  %v138 = sea.ptr.dereferenceable %v136, %v137 : !sea.ptr<64>, i64 loc("_87"("aws-c-common/include/aws/common/private/lookup3.inl":557:17))
  sea.cond_br %v138, ^bb47, ^bb58
^bb47:
  %v139 = sea.const 4 : i64 loc("_89"("aws-c-common/include/aws/common/private/lookup3.inl":557:31))
  %v140 = sea.ptr.dereferenceable %v68, %v139 : !sea.ptr<64>, i64 loc("_89"("aws-c-common/include/aws/common/private/lookup3.inl":557:31))
  %v141 = sea.const 1 : i1
  sea.cond_br %v140, ^bb55(%v141 : i1), ^bb58
^bb48:
  %v142 = sea.const 4 : i64 loc("_91"("aws-c-common/include/aws/common/private/lookup3.inl":558:17))
  %v143 = sea.ptr.dereferenceable %v68, %v142 : !sea.ptr<64>, i64 loc("_91"("aws-c-common/include/aws/common/private/lookup3.inl":558:17))
  %v144 = sea.const 1 : i1
  sea.cond_br %v143, ^bb55(%v144 : i1), ^bb58
^bb49:
  %v145 = sea.const 2 : i64 loc("Pivot48.i.i.i")
  %v146 = sea.icmp ult, %v69, %v145 : i64 loc("Pivot48.i.i.i")
  sea.cond_br %v146, ^bb51, ^bb50
^bb50:
  %v147 = sea.const 4 : i64 loc("_43"("aws-c-common/include/aws/common/private/lookup3.inl":0:0))
  %v148 = sea.ptr.dereferenceable %v68, %v147 : !sea.ptr<64>, i64 loc("_43"("aws-c-common/include/aws/common/private/lookup3.inl":0:0))
  %v149 = sea.const 1 : i1
  sea.cond_br %v148, ^bb55(%v149 : i1), ^bb58
^bb51:
  %v150 = sea.const 1 : i64 loc("SwitchLeaf.i.i.i")
  %v151 = sea.icmp eq, %v69, %v150 : i64 loc("SwitchLeaf.i.i.i")
  sea.cond_br %v151, ^bb54, ^bb52
^bb52:
  sea.br ^bb53
^bb53:
  %v152 = sea.const 0 : i1
  sea.br ^bb55(%v152 : i1)
^bb54:
  %v153 = sea.const 4 : i64 loc("_93"("aws-c-common/include/aws/common/private/lookup3.inl":561:17))
  %v154 = sea.ptr.dereferenceable %v68, %v153 : !sea.ptr<64>, i64 loc("_93"("aws-c-common/include/aws/common/private/lookup3.inl":561:17))
  %v155 = sea.const 1 : i1
  sea.cond_br %v154, ^bb55(%v155 : i1), ^bb58
^bb55(%v156 : i1):
  sea.assume %v156
  sea.br ^bb56
^bb56:
  %v157 = sea.const 1 : i1
  %v158 = sea.const 1 : i1
  %v159 = sea.xor %v157, %v158 : i1
  sea.assume %v159
  sea.br ^bb58
^bb57:
  %v160 = sea.const 4 : i64 loc("_31"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  %v161 = sea.ptr.dereferenceable %v65, %v160 : !sea.ptr<64>, i64 loc("_31"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  %v162 = sea.const 1 : i1
  %v163 = sea.xor %v161, %v162 : i1
  sea.assume %v163
  sea.br ^bb58
^bb58:
  sea.br ^bb59
^bb59:
  %v164 = sea.const 0 : i1
  sea.assert %v164
  sea.halt
}
