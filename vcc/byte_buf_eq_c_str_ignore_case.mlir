// Exported from SeaHorn (byte_buf_eq_c_str_ignore_case.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm7")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm8")
  %v2 = sea.mem.nondet "region.17" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm9")
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
  %v15 = sea.nondet "nd_size_t" [3] : i64 loc("_2"("seahorn/lib/byte_buf_helper.c":19:18))
  %v16 = sea.nondet "nd_size_t" [4] : i64 loc("_3"("seahorn/lib/byte_buf_helper.c":20:18))
  %v17 = sea.icmp ule, %v15, %v16 : i64 loc("_4"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v17 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v18 = sea.const 11 : i64 loc("_5"("seahorn/lib/byte_buf_helper.c":22:16))
  %v19 = sea.icmp ult, %v16, %v18 : i64 loc("_5"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v19 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb1
^bb1:
  sea.br ^bb2
^bb2:
  %v20 = sea.const 0 : i64 loc("_8"("seahorn/lib/proof_allocators.c":21:15))
  %v21 = sea.icmp eq, %v16, %v20 : i64 loc("_8"("seahorn/lib/proof_allocators.c":21:15))
  sea.cond_br %v21, ^bb6, ^bb3 loc("seahorn/lib/proof_allocators.c":21:10)
^bb3:
  %v22 = sea.nondet "nd_malloc_is_fail" [5] : i1 loc("_10"("seahorn/lib/sea_allocators.c":11:10))
  %v23 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v22, ^bb5(%v1, %v23 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/sea_allocators.c":11:10)
^bb4:
  %v24 = sea.const 1 : i64 loc("malloc.i")
  %v25 = sea.mul %v16, %v24 : i64 loc("malloc.i")
  %v26 = sea.alloca %v25 align 16 [6] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb5(%v1, %v26 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb5(%v27 : !sea.mem<!sea.ptr<64>, i8>, %v28 : !sea.ptr<64>):
  %v29 = sea.memhavoc %v27[%v28], %v16 [7] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb6 loc("seahorn/lib/proof_allocators.c":21:10)
^bb6:
  sea.br ^bb7
^bb7:
  sea.br ^bb8
^bb8:
  %v30 = sea.nondet "nd_size_t" [8] : i64 loc("_14"("seahorn/lib/string_helper.c":51:16))
  %v31 = sea.const 0 : i64 loc("_15"("seahorn/lib/string_helper.c":53:21))
  %v32 = sea.icmp ne, %v30, %v31 : i64 loc("_15"("seahorn/lib/string_helper.c":53:21))
  sea.assume %v32 loc("seahorn/lib/string_helper.c":53:3)
  %v33 = sea.const 11 : i64 loc("_16"("seahorn/lib/string_helper.c":54:21))
  %v34 = sea.icmp ult, %v30, %v33 : i64 loc("_16"("seahorn/lib/string_helper.c":54:21))
  sea.assume %v34 loc("seahorn/lib/string_helper.c":54:3)
  %v35 = sea.const 1 : i1 loc("seahorn/lib/string_helper.c":55:3)
  sea.assume %v35 loc("seahorn/lib/string_helper.c":55:3)
  %v36 = sea.nondet "nd_malloc_is_fail" [9] : i1 loc("_17"("seahorn/lib/sea_allocators.c":11:10))
  %v37 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v36, ^bb10(%v2, %v37 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb9 loc("seahorn/lib/sea_allocators.c":11:10)
^bb9:
  %v38 = sea.const 1 : i64 loc("malloc29.i")
  %v39 = sea.mul %v30, %v38 : i64 loc("malloc29.i")
  %v40 = sea.alloca %v39 align 16 [10] : i64 -> !sea.ptr<64> loc("malloc29.i")
  sea.br ^bb10(%v2, %v40 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb10(%v41 : !sea.mem<!sea.ptr<64>, i8>, %v42 : !sea.ptr<64>):
  %v43 = sea.memhavoc %v41[%v42], %v30 [11] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v44 = sea.ptr.null : !sea.ptr<64> loc("_20"("seahorn/lib/sea_allocators.c":45:10))
  %v45 = sea.ptr.cmp ne, %v42, %v44 : !sea.ptr<64> loc("_20"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v45 loc("seahorn/lib/sea_allocators.c":45:3)
  %v46 = sea.const 18446744073709551615 : i64 loc("_21"("seahorn/lib/string_helper.c":68:32))
  %v47 = sea.add %v30, %v46 : i64 loc("_21"("seahorn/lib/string_helper.c":68:32))
  %v48 = sea.ptr.index %v42 [%v47] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_22"("seahorn/lib/string_helper.c":39:3))
  %v49 = sea.const 1 : i64 loc("_23"("seahorn/lib/string_helper.c":39:16))
  %v50 = sea.ptr.dereferenceable %v48, %v49 : !sea.ptr<64>, i64 loc("_23"("seahorn/lib/string_helper.c":39:16))
  sea.cond_br %v50, ^bb11, ^bb31
^bb11:
  %v51 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":39:16)
  %v52 = sea.store %v43[%v48], %v51 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":39:16)
  %v53 = sea.const 0 : i64 loc(".not"("seahorn/lib/string_helper.c":42:11))
  %v54 = sea.icmp eq, %v47, %v53 : i64 loc(".not"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v54, ^bb30, ^bb12 loc("seahorn/lib/string_helper.c":42:9)
^bb12:
  %v55 = sea.const 1 : i64 loc("_26"("seahorn/lib/string_helper.c":43:14))
  %v56 = sea.ptr.dereferenceable %v42, %v55 : !sea.ptr<64>, i64 loc("_26"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v56, ^bb13, ^bb31
^bb13:
  %v57 = sea.load %v52[%v42] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_28"("seahorn/lib/string_helper.c":43:14))
  %v58 = sea.const 0 : i8 loc("_29"("seahorn/lib/string_helper.c":43:21))
  %v59 = sea.icmp ne, %v57, %v58 : i8 loc("_29"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v59 loc("seahorn/lib/string_helper.c":43:7)
  %v60 = sea.const 1 : i64 loc(".not47"("seahorn/lib/string_helper.c":42:11))
  %v61 = sea.icmp eq, %v47, %v60 : i64 loc(".not47"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v61, ^bb30, ^bb14 loc("seahorn/lib/string_helper.c":42:9)
^bb14:
  %v62 = sea.ptr.index %v42 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_31"("seahorn/lib/string_helper.c":43:14))
  %v63 = sea.const 1 : i64 loc("_32"("seahorn/lib/string_helper.c":43:14))
  %v64 = sea.ptr.dereferenceable %v62, %v63 : !sea.ptr<64>, i64 loc("_32"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v64, ^bb15, ^bb31
^bb15:
  %v65 = sea.load %v52[%v62] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_34"("seahorn/lib/string_helper.c":43:14))
  %v66 = sea.const 0 : i8 loc("_35"("seahorn/lib/string_helper.c":43:21))
  %v67 = sea.icmp ne, %v65, %v66 : i8 loc("_35"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v67 loc("seahorn/lib/string_helper.c":43:7)
  %v68 = sea.const 2 : i64 loc("_36"("seahorn/lib/string_helper.c":42:11))
  %v69 = sea.icmp ugt, %v47, %v68 : i64 loc("_36"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v69, ^bb16, ^bb30 loc("seahorn/lib/string_helper.c":42:9)
^bb16:
  %v70 = sea.ptr.index %v42 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_38"("seahorn/lib/string_helper.c":43:14))
  %v71 = sea.const 1 : i64 loc("_39"("seahorn/lib/string_helper.c":43:14))
  %v72 = sea.ptr.dereferenceable %v70, %v71 : !sea.ptr<64>, i64 loc("_39"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v72, ^bb17, ^bb31
^bb17:
  %v73 = sea.load %v52[%v70] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_41"("seahorn/lib/string_helper.c":43:14))
  %v74 = sea.const 0 : i8 loc("_42"("seahorn/lib/string_helper.c":43:21))
  %v75 = sea.icmp ne, %v73, %v74 : i8 loc("_42"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v75 loc("seahorn/lib/string_helper.c":43:7)
  %v76 = sea.const 3 : i64 loc(".not48"("seahorn/lib/string_helper.c":42:11))
  %v77 = sea.icmp eq, %v47, %v76 : i64 loc(".not48"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v77, ^bb30, ^bb18 loc("seahorn/lib/string_helper.c":42:9)
^bb18:
  %v78 = sea.ptr.index %v42 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_44"("seahorn/lib/string_helper.c":43:14))
  %v79 = sea.const 1 : i64 loc("_45"("seahorn/lib/string_helper.c":43:14))
  %v80 = sea.ptr.dereferenceable %v78, %v79 : !sea.ptr<64>, i64 loc("_45"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v80, ^bb19, ^bb31
^bb19:
  %v81 = sea.load %v52[%v78] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_47"("seahorn/lib/string_helper.c":43:14))
  %v82 = sea.const 0 : i8 loc("_48"("seahorn/lib/string_helper.c":43:21))
  %v83 = sea.icmp ne, %v81, %v82 : i8 loc("_48"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v83 loc("seahorn/lib/string_helper.c":43:7)
  %v84 = sea.const 4 : i64 loc("_49"("seahorn/lib/string_helper.c":42:11))
  %v85 = sea.icmp ugt, %v47, %v84 : i64 loc("_49"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v85, ^bb20, ^bb30 loc("seahorn/lib/string_helper.c":42:9)
^bb20:
  %v86 = sea.ptr.index %v42 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_51"("seahorn/lib/string_helper.c":43:14))
  %v87 = sea.const 1 : i64 loc("_52"("seahorn/lib/string_helper.c":43:14))
  %v88 = sea.ptr.dereferenceable %v86, %v87 : !sea.ptr<64>, i64 loc("_52"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v88, ^bb21, ^bb31
^bb21:
  %v89 = sea.load %v52[%v86] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_54"("seahorn/lib/string_helper.c":43:14))
  %v90 = sea.const 0 : i8 loc("_55"("seahorn/lib/string_helper.c":43:21))
  %v91 = sea.icmp ne, %v89, %v90 : i8 loc("_55"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v91 loc("seahorn/lib/string_helper.c":43:7)
  %v92 = sea.const 5 : i64 loc(".not49"("seahorn/lib/string_helper.c":42:11))
  %v93 = sea.icmp eq, %v47, %v92 : i64 loc(".not49"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v93, ^bb30, ^bb22 loc("seahorn/lib/string_helper.c":42:9)
^bb22:
  %v94 = sea.ptr.index %v42 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_57"("seahorn/lib/string_helper.c":43:14))
  %v95 = sea.const 1 : i64 loc("_58"("seahorn/lib/string_helper.c":43:14))
  %v96 = sea.ptr.dereferenceable %v94, %v95 : !sea.ptr<64>, i64 loc("_58"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v96, ^bb23, ^bb31
^bb23:
  %v97 = sea.load %v52[%v94] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_60"("seahorn/lib/string_helper.c":43:14))
  %v98 = sea.const 0 : i8 loc("_61"("seahorn/lib/string_helper.c":43:21))
  %v99 = sea.icmp ne, %v97, %v98 : i8 loc("_61"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v99 loc("seahorn/lib/string_helper.c":43:7)
  %v100 = sea.const 6 : i64 loc("_62"("seahorn/lib/string_helper.c":42:11))
  %v101 = sea.icmp ugt, %v47, %v100 : i64 loc("_62"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v101, ^bb24, ^bb30 loc("seahorn/lib/string_helper.c":42:9)
^bb24:
  %v102 = sea.ptr.index %v42 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_64"("seahorn/lib/string_helper.c":43:14))
  %v103 = sea.const 1 : i64 loc("_65"("seahorn/lib/string_helper.c":43:14))
  %v104 = sea.ptr.dereferenceable %v102, %v103 : !sea.ptr<64>, i64 loc("_65"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v104, ^bb25, ^bb31
^bb25:
  %v105 = sea.load %v52[%v102] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_67"("seahorn/lib/string_helper.c":43:14))
  %v106 = sea.const 0 : i8 loc("_68"("seahorn/lib/string_helper.c":43:21))
  %v107 = sea.icmp ne, %v105, %v106 : i8 loc("_68"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v107 loc("seahorn/lib/string_helper.c":43:7)
  %v108 = sea.const 7 : i64 loc(".not50"("seahorn/lib/string_helper.c":42:11))
  %v109 = sea.icmp eq, %v47, %v108 : i64 loc(".not50"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v109, ^bb30, ^bb26 loc("seahorn/lib/string_helper.c":42:9)
^bb26:
  %v110 = sea.ptr.index %v42 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_70"("seahorn/lib/string_helper.c":43:14))
  %v111 = sea.const 1 : i64 loc("_71"("seahorn/lib/string_helper.c":43:14))
  %v112 = sea.ptr.dereferenceable %v110, %v111 : !sea.ptr<64>, i64 loc("_71"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v112, ^bb27, ^bb31
^bb27:
  %v113 = sea.load %v52[%v110] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_73"("seahorn/lib/string_helper.c":43:14))
  %v114 = sea.const 0 : i8 loc("_74"("seahorn/lib/string_helper.c":43:21))
  %v115 = sea.icmp ne, %v113, %v114 : i8 loc("_74"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v115 loc("seahorn/lib/string_helper.c":43:7)
  %v116 = sea.const 8 : i64 loc("_75"("seahorn/lib/string_helper.c":42:11))
  %v117 = sea.icmp ugt, %v47, %v116 : i64 loc("_75"("seahorn/lib/string_helper.c":42:11))
  sea.cond_br %v117, ^bb28, ^bb30 loc("seahorn/lib/string_helper.c":42:9)
^bb28:
  %v118 = sea.ptr.index %v42 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_77"("seahorn/lib/string_helper.c":43:14))
  %v119 = sea.const 1 : i64 loc("_78"("seahorn/lib/string_helper.c":43:14))
  %v120 = sea.ptr.dereferenceable %v118, %v119 : !sea.ptr<64>, i64 loc("_78"("seahorn/lib/string_helper.c":43:14))
  sea.cond_br %v120, ^bb29, ^bb31
^bb29:
  %v121 = sea.load %v52[%v118] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_80"("seahorn/lib/string_helper.c":43:14))
  %v122 = sea.const 0 : i8 loc("_81"("seahorn/lib/string_helper.c":43:21))
  %v123 = sea.icmp ne, %v121, %v122 : i8 loc("_81"("seahorn/lib/string_helper.c":43:21))
  sea.assume %v123 loc("seahorn/lib/string_helper.c":43:7)
  sea.br ^bb30 loc("seahorn/lib/string_helper.c":44:5)
^bb30:
  %v124 = sea.const 9 : i64 loc("_82"("seahorn/lib/string_helper.c":42:11))
  %v125 = sea.icmp ugt, %v47, %v124 : i64 loc("_82"("seahorn/lib/string_helper.c":42:11))
  sea.assume %v125 loc("seahorn/lib/string_helper.c":42:9)
  %v126 = sea.ptr.index %v42 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_83"("seahorn/lib/string_helper.c":43:14))
  %v127 = sea.const 1 : i64 loc("_84"("seahorn/lib/string_helper.c":43:14))
  %v128 = sea.ptr.dereferenceable %v126, %v127 : !sea.ptr<64>, i64 loc("_84"("seahorn/lib/string_helper.c":43:14))
  %v129 = sea.const 1 : i1
  %v130 = sea.xor %v128, %v129 : i1
  sea.assume %v130
  sea.br ^bb31
^bb31:
  sea.br ^bb32
^bb32:
  %v131 = sea.const 0 : i1
  sea.assert %v131
  sea.halt
}
