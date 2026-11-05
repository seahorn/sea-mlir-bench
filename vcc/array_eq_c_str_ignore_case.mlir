// Exported from SeaHorn (array_eq_c_str_ignore_case.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm3")
  %v1 = sea.mem.nondet "region.1" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm4")
  %v2 = sea.nondet "nd_size_t" [2] : i64 loc("_0"("seahorn/jobs/array_eq_c_str_ignore_case/aws_array_eq_c_str_ignore_case_harness.c":14:22))
  %v3 = sea.const 11 : i64 loc("_1"("seahorn/jobs/array_eq_c_str_ignore_case/aws_array_eq_c_str_ignore_case_harness.c":15:20))
  %v4 = sea.icmp ult, %v2, %v3 : i64 loc("_1"("seahorn/jobs/array_eq_c_str_ignore_case/aws_array_eq_c_str_ignore_case_harness.c":15:20))
  sea.assume %v4 loc("seahorn/jobs/array_eq_c_str_ignore_case/aws_array_eq_c_str_ignore_case_harness.c":15:3)
  %v5 = sea.nondet "nd_malloc_is_fail" [3] : i1 loc("_2"("seahorn/lib/sea_allocators.c":11:10))
  %v6 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v5, ^bb2(%v0, %v6 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb1 loc("seahorn/lib/sea_allocators.c":11:10)
^bb1:
  %v7 = sea.const 10 : i64 loc("malloc.i6")
  %v8 = sea.alloca %v7 align 16 [4] : i64 -> !sea.ptr<64> loc("malloc.i6")
  sea.br ^bb2(%v0, %v8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb2(%v9 : !sea.mem<!sea.ptr<64>, i8>, %v10 : !sea.ptr<64>):
  %v11 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v12 = sea.memhavoc %v9[%v10], %v11 [5] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v13 = sea.nondet "nd_size_t" [6] : i64 loc("_5"("seahorn/lib/string_helper.c":51:16))
  %v14 = sea.const 0 : i64 loc("_6"("seahorn/lib/string_helper.c":53:21))
  %v15 = sea.icmp ne, %v13, %v14 : i64 loc("_6"("seahorn/lib/string_helper.c":53:21))
  sea.assume %v15 loc("seahorn/lib/string_helper.c":53:3)
  %v16 = sea.const 11 : i64 loc("_7"("seahorn/lib/string_helper.c":54:21))
  %v17 = sea.icmp ult, %v13, %v16 : i64 loc("_7"("seahorn/lib/string_helper.c":54:21))
  sea.assume %v17 loc("seahorn/lib/string_helper.c":54:3)
  %v18 = sea.const 1 : i1 loc("seahorn/lib/string_helper.c":55:3)
  sea.assume %v18 loc("seahorn/lib/string_helper.c":55:3)
  %v19 = sea.nondet "nd_malloc_is_fail" [7] : i1 loc("_8"("seahorn/lib/sea_allocators.c":11:10))
  %v20 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v19, ^bb4(%v1, %v20 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/sea_allocators.c":11:10)
^bb3:
  %v21 = sea.const 1 : i64 loc("malloc9.i")
  %v22 = sea.mul %v13, %v21 : i64 loc("malloc9.i")
  %v23 = sea.alloca %v22 align 16 [8] : i64 -> !sea.ptr<64> loc("malloc9.i")
  sea.br ^bb4(%v1, %v23 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb4(%v24 : !sea.mem<!sea.ptr<64>, i8>, %v25 : !sea.ptr<64>):
  %v26 = sea.memhavoc %v24[%v25], %v13 [9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v27 = sea.ptr.null : !sea.ptr<64> loc("_11"("seahorn/lib/sea_allocators.c":45:10))
  %v28 = sea.ptr.cmp ne, %v25, %v27 : !sea.ptr<64> loc("_11"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v28 loc("seahorn/lib/sea_allocators.c":45:3)
  %v29 = sea.const 18446744073709551615 : i64 loc("_12"("seahorn/lib/string_helper.c":68:32))
  %v30 = sea.add %v13, %v29 : i64 loc("_12"("seahorn/lib/string_helper.c":68:32))
  %v31 = sea.ptr.index %v25 [%v30] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_13"("seahorn/lib/string_helper.c":39:3))
  %v32 = sea.const 1 : i64 loc("_14"("seahorn/lib/string_helper.c":39:16))
  %v33 = sea.ptr.dereferenceable %v31, %v32 : !sea.ptr<64>, i64 loc("_14"("seahorn/lib/string_helper.c":39:16))
  sea.cond_br %v33, ^bb5, ^bb25
^bb5:
  %v34 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":39:16)
  %v35 = sea.store %v26[%v31], %v34 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":39:16)
  %v36 = sea.const 0 : i64 loc(".not"("seahorn/lib/string_helper.c":42:11))
  %v37 = sea.icmp eq, %v30, %v36 : i64 loc(".not"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v37, ^bb24, ^bb6 loc("seahorn/lib/string_helper.c":42:9)
^bb6:
  %v38 = sea.const 1 : i64 loc("_17"("seahorn/lib/string_helper.c":43:14))
  %v39 = sea.ptr.dereferenceable %v25, %v38 : !sea.ptr<64>, i64 loc("_17"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v39, ^bb7, ^bb25
^bb7:
  %v40 = sea.load %v35[%v25] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_19"("seahorn/lib/string_helper.c":43:14))
  %v41 = sea.const 0 : i8 loc("_20"("seahorn/lib/string_helper.c":43:21))
  %v42 = sea.icmp ne, %v40, %v41 : i8 loc("_20"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v42 loc("seahorn/lib/string_helper.c":43:7)
  %v43 = sea.const 1 : i64 loc(".not45"("seahorn/lib/string_helper.c":42:11))
  %v44 = sea.icmp eq, %v30, %v43 : i64 loc(".not45"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v44, ^bb24, ^bb8 loc("seahorn/lib/string_helper.c":42:9)
^bb8:
  %v45 = sea.ptr.index %v25 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_22"("seahorn/lib/string_helper.c":43:14))
  %v46 = sea.const 1 : i64 loc("_23"("seahorn/lib/string_helper.c":43:14))
  %v47 = sea.ptr.dereferenceable %v45, %v46 : !sea.ptr<64>, i64 loc("_23"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v47, ^bb9, ^bb25
^bb9:
  %v48 = sea.load %v35[%v45] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_25"("seahorn/lib/string_helper.c":43:14))
  %v49 = sea.const 0 : i8 loc("_26"("seahorn/lib/string_helper.c":43:21))
  %v50 = sea.icmp ne, %v48, %v49 : i8 loc("_26"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v50 loc("seahorn/lib/string_helper.c":43:7)
  %v51 = sea.const 2 : i64 loc("_27"("seahorn/lib/string_helper.c":42:11))
  %v52 = sea.icmp ugt, %v30, %v51 : i64 loc("_27"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v52, ^bb10, ^bb24 loc("seahorn/lib/string_helper.c":42:9)
^bb10:
  %v53 = sea.ptr.index %v25 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_29"("seahorn/lib/string_helper.c":43:14))
  %v54 = sea.const 1 : i64 loc("_30"("seahorn/lib/string_helper.c":43:14))
  %v55 = sea.ptr.dereferenceable %v53, %v54 : !sea.ptr<64>, i64 loc("_30"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v55, ^bb11, ^bb25
^bb11:
  %v56 = sea.load %v35[%v53] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_32"("seahorn/lib/string_helper.c":43:14))
  %v57 = sea.const 0 : i8 loc("_33"("seahorn/lib/string_helper.c":43:21))
  %v58 = sea.icmp ne, %v56, %v57 : i8 loc("_33"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v58 loc("seahorn/lib/string_helper.c":43:7)
  %v59 = sea.const 3 : i64 loc(".not46"("seahorn/lib/string_helper.c":42:11))
  %v60 = sea.icmp eq, %v30, %v59 : i64 loc(".not46"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v60, ^bb24, ^bb12 loc("seahorn/lib/string_helper.c":42:9)
^bb12:
  %v61 = sea.ptr.index %v25 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_35"("seahorn/lib/string_helper.c":43:14))
  %v62 = sea.const 1 : i64 loc("_36"("seahorn/lib/string_helper.c":43:14))
  %v63 = sea.ptr.dereferenceable %v61, %v62 : !sea.ptr<64>, i64 loc("_36"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v63, ^bb13, ^bb25
^bb13:
  %v64 = sea.load %v35[%v61] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_38"("seahorn/lib/string_helper.c":43:14))
  %v65 = sea.const 0 : i8 loc("_39"("seahorn/lib/string_helper.c":43:21))
  %v66 = sea.icmp ne, %v64, %v65 : i8 loc("_39"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v66 loc("seahorn/lib/string_helper.c":43:7)
  %v67 = sea.const 4 : i64 loc("_40"("seahorn/lib/string_helper.c":42:11))
  %v68 = sea.icmp ugt, %v30, %v67 : i64 loc("_40"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v68, ^bb14, ^bb24 loc("seahorn/lib/string_helper.c":42:9)
^bb14:
  %v69 = sea.ptr.index %v25 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_42"("seahorn/lib/string_helper.c":43:14))
  %v70 = sea.const 1 : i64 loc("_43"("seahorn/lib/string_helper.c":43:14))
  %v71 = sea.ptr.dereferenceable %v69, %v70 : !sea.ptr<64>, i64 loc("_43"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v71, ^bb15, ^bb25
^bb15:
  %v72 = sea.load %v35[%v69] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_45"("seahorn/lib/string_helper.c":43:14))
  %v73 = sea.const 0 : i8 loc("_46"("seahorn/lib/string_helper.c":43:21))
  %v74 = sea.icmp ne, %v72, %v73 : i8 loc("_46"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v74 loc("seahorn/lib/string_helper.c":43:7)
  %v75 = sea.const 5 : i64 loc(".not47"("seahorn/lib/string_helper.c":42:11))
  %v76 = sea.icmp eq, %v30, %v75 : i64 loc(".not47"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v76, ^bb24, ^bb16 loc("seahorn/lib/string_helper.c":42:9)
^bb16:
  %v77 = sea.ptr.index %v25 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_48"("seahorn/lib/string_helper.c":43:14))
  %v78 = sea.const 1 : i64 loc("_49"("seahorn/lib/string_helper.c":43:14))
  %v79 = sea.ptr.dereferenceable %v77, %v78 : !sea.ptr<64>, i64 loc("_49"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v79, ^bb17, ^bb25
^bb17:
  %v80 = sea.load %v35[%v77] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_51"("seahorn/lib/string_helper.c":43:14))
  %v81 = sea.const 0 : i8 loc("_52"("seahorn/lib/string_helper.c":43:21))
  %v82 = sea.icmp ne, %v80, %v81 : i8 loc("_52"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v82 loc("seahorn/lib/string_helper.c":43:7)
  %v83 = sea.const 6 : i64 loc("_53"("seahorn/lib/string_helper.c":42:11))
  %v84 = sea.icmp ugt, %v30, %v83 : i64 loc("_53"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v84, ^bb18, ^bb24 loc("seahorn/lib/string_helper.c":42:9)
^bb18:
  %v85 = sea.ptr.index %v25 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_55"("seahorn/lib/string_helper.c":43:14))
  %v86 = sea.const 1 : i64 loc("_56"("seahorn/lib/string_helper.c":43:14))
  %v87 = sea.ptr.dereferenceable %v85, %v86 : !sea.ptr<64>, i64 loc("_56"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v87, ^bb19, ^bb25
^bb19:
  %v88 = sea.load %v35[%v85] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_58"("seahorn/lib/string_helper.c":43:14))
  %v89 = sea.const 0 : i8 loc("_59"("seahorn/lib/string_helper.c":43:21))
  %v90 = sea.icmp ne, %v88, %v89 : i8 loc("_59"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v90 loc("seahorn/lib/string_helper.c":43:7)
  %v91 = sea.const 7 : i64 loc(".not48"("seahorn/lib/string_helper.c":42:11))
  %v92 = sea.icmp eq, %v30, %v91 : i64 loc(".not48"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v92, ^bb24, ^bb20 loc("seahorn/lib/string_helper.c":42:9)
^bb20:
  %v93 = sea.ptr.index %v25 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_61"("seahorn/lib/string_helper.c":43:14))
  %v94 = sea.const 1 : i64 loc("_62"("seahorn/lib/string_helper.c":43:14))
  %v95 = sea.ptr.dereferenceable %v93, %v94 : !sea.ptr<64>, i64 loc("_62"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v95, ^bb21, ^bb25
^bb21:
  %v96 = sea.load %v35[%v93] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_64"("seahorn/lib/string_helper.c":43:14))
  %v97 = sea.const 0 : i8 loc("_65"("seahorn/lib/string_helper.c":43:21))
  %v98 = sea.icmp ne, %v96, %v97 : i8 loc("_65"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v98 loc("seahorn/lib/string_helper.c":43:7)
  %v99 = sea.const 8 : i64 loc("_66"("seahorn/lib/string_helper.c":42:11))
  %v100 = sea.icmp ugt, %v30, %v99 : i64 loc("_66"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v100, ^bb22, ^bb24 loc("seahorn/lib/string_helper.c":42:9)
^bb22:
  %v101 = sea.ptr.index %v25 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_68"("seahorn/lib/string_helper.c":43:14))
  %v102 = sea.const 1 : i64 loc("_69"("seahorn/lib/string_helper.c":43:14))
  %v103 = sea.ptr.dereferenceable %v101, %v102 : !sea.ptr<64>, i64 loc("_69"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v103, ^bb23, ^bb25
^bb23:
  %v104 = sea.load %v35[%v101] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_71"("seahorn/lib/string_helper.c":43:14))
  %v105 = sea.const 0 : i8 loc("_72"("seahorn/lib/string_helper.c":43:21))
  %v106 = sea.icmp ne, %v104, %v105 : i8 loc("_72"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v106 loc("seahorn/lib/string_helper.c":43:7)
  sea.br ^bb24 loc("seahorn/lib/string_helper.c":44:5)
^bb24:
  %v107 = sea.const 9 : i64 loc("_73"("seahorn/lib/string_helper.c":42:11))
  %v108 = sea.icmp ugt, %v30, %v107 : i64 loc("_73"("seahorn/lib/string_helper.c":42:11))
  sea.assume %v108 loc("seahorn/lib/string_helper.c":42:9)
  %v109 = sea.ptr.index %v25 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_74"("seahorn/lib/string_helper.c":43:14))
  %v110 = sea.const 1 : i64 loc("_75"("seahorn/lib/string_helper.c":43:14))
  %v111 = sea.ptr.dereferenceable %v109, %v110 : !sea.ptr<64>, i64 loc("_75"("seahorn/lib/string_helper.c":43:14))
  %v112 = sea.const 1 : i1
  %v113 = sea.xor %v111, %v112 : i1
  sea.assume %v113
  sea.br ^bb25
^bb25:
  sea.br ^bb26
^bb26:
  %v114 = sea.const 0 : i1
  sea.assert %v114
  sea.halt
}
