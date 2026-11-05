// Exported from SeaHorn (hash_iter_done2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.16" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm31")
  %v1 = sea.mem.nondet "region.24" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm32")
  %v2 = sea.mem.nondet "region.0" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm33")
  %v3 = sea.mem.nondet "region.68" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm34")
  %v4 = sea.const 8 : i64 loc("_0")
  %v5 = sea.alloca %v4 align 8 [4] : i64 -> !sea.ptr<64> loc("_0")
  %v6 = sea.const 64 : i64 loc("_1")
  %v7 = sea.alloca %v6 align 8 [5] : i64 -> !sea.ptr<64> loc("_1")
  %v8 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v9 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v10 = sea.store %v2[%v8], %v9 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v11 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_2")
  %v12 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_2")
  %v13 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v14 = sea.store %v10[%v12], %v13 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v15 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_3")
  %v16 = sea.ptr.index %v15 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_3")
  %v17 = sea.const 0 : i8
  %v18 = sea.const 24 : i64
  %v19 = sea.memset %v14[%v16], %v17, %v18 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v20 = sea.nondet "nd_size_t" [6] : i64 loc("_4"("seahorn/lib/hash_table_helper.c":14:24))
  %v21 = sea.const 1 : i1 loc("seahorn/lib/hash_table_helper.c":15:3)
  sea.assume %v21 loc("seahorn/lib/hash_table_helper.c":15:3)
  %v22 = sea.ctpop %v20 : i64 loc("_5"("aws-c-common/include/aws/common/math.inl":161:14))
  %v23 = sea.const 1 : i64 loc("_6"("aws-c-common/include/aws/common/math.inl":161:14))
  %v24 = sea.icmp eq, %v22, %v23 : i64 loc("_6"("aws-c-common/include/aws/common/math.inl":161:14))
  sea.assume %v24 loc("seahorn/lib/hash_table_helper.c":16:3)
  %v25 = sea.nondet "nd_size_t" [7] : i64 loc("_7"("seahorn/lib/hash_table_helper.c":18:27))
  sea.br ^bb1
^bb1:
  %v26 = sea.const 24 : i64 loc("_9"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v27 = sea.mul %v20, %v26 : i64 loc("_9"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v28 = sea.const 24 : i64 loc("_9"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v29 = sea.umulo %v20, %v28 : i64 loc("_9"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v30 = sea.const 4294967295 : i32 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
  sea.cond_br %v29, ^bb6(%v25, %v30 : i64, i32), ^bb2 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb2:
  sea.br ^bb3
^bb3:
  %v31 = sea.const 80 : i64 loc("_13"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v32 = sea.add %v27, %v31 : i64 loc("_13"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v33 = sea.const 80 : i64 loc("_13"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v34 = sea.uaddo %v27, %v33 : i64 loc("_13"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v34, ^bb4, ^bb5 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb4:
  sea.br ^bb5 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":71:9)
^bb5:
  %v35 = sea.sext %v34 : i1 to i32 loc("..i.i.i"("aws-c-common/source/hash_table.c":0:0))
  sea.br ^bb6(%v32, %v35 : i64, i32) loc("aws-c-common/source/hash_table.c":0:0)
^bb6(%v36 : i64, %v37 : i32):
  %v38 = sea.const 0 : i32 loc("_18"("seahorn/lib/hash_table_helper.c":20:72))
  %v39 = sea.icmp eq, %v37, %v38 : i32 loc("_18"("seahorn/lib/hash_table_helper.c":20:72))
  sea.assume %v39 loc("seahorn/lib/hash_table_helper.c":20:3)
  %v40 = sea.const 0 : i64 loc("_19"("seahorn/lib/proof_allocators.c":17:15))
  %v41 = sea.icmp eq, %v36, %v40 : i64 loc("_19"("seahorn/lib/proof_allocators.c":17:15))
  %v42 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v41, ^bb10(%v3, %v42 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb7 loc("seahorn/lib/proof_allocators.c":17:10)
^bb7:
  %v43 = sea.nondet "nd_malloc_is_fail" [8] : i1 loc("_21"("seahorn/lib/sea_allocators.c":11:10))
  %v44 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v43, ^bb9(%v3, %v44 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb8 loc("seahorn/lib/sea_allocators.c":11:10)
^bb8:
  %v45 = sea.const 1 : i64 loc("malloc.i")
  %v46 = sea.mul %v36, %v45 : i64 loc("malloc.i")
  %v47 = sea.alloca %v46 align 16 [9] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb9(%v3, %v47 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb9(%v48 : !sea.mem<!sea.ptr<64>, i8>, %v49 : !sea.ptr<64>):
  %v50 = sea.memhavoc %v48[%v49], %v36 [10] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v51 = sea.ptr.null : !sea.ptr<64> loc("_24"("seahorn/lib/sea_allocators.c":45:10))
  %v52 = sea.ptr.cmp ne, %v49, %v51 : !sea.ptr<64> loc("_24"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v52 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb10(%v50, %v49 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb10(%v53 : !sea.mem<!sea.ptr<64>, i8>, %v54 : !sea.ptr<64>):
  %v55 = sea.ptr.index %v54 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_26"("seahorn/lib/hash_table_helper.c":23:9))
  %v56 = sea.const 8 : i64 loc("_27"("seahorn/lib/hash_table_helper.c":23:14))
  %v57 = sea.ptr.dereferenceable %v55, %v56 : !sea.ptr<64>, i64 loc("_27"("seahorn/lib/hash_table_helper.c":23:14))
  sea.cond_br %v57, ^bb11, ^bb201
^bb11:
  %v58 = sea.store %v53[%v55], %v20 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":23:14)
  %v59 = sea.ptr.index %v54 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_29"("seahorn/lib/hash_table_helper.c":24:9))
  %v60 = sea.const 8 : i64 loc("_30"("seahorn/lib/hash_table_helper.c":24:14))
  %v61 = sea.ptr.dereferenceable %v59, %v60 : !sea.ptr<64>, i64 loc("_30"("seahorn/lib/hash_table_helper.c":24:14))
  sea.cond_br %v61, ^bb12, ^bb201
^bb12:
  %v62 = sea.const 18446744073709551615 : i64 loc("_32"("seahorn/lib/hash_table_helper.c":24:28))
  %v63 = sea.add %v20, %v62 : i64 loc("_32"("seahorn/lib/hash_table_helper.c":24:28))
  %v64 = sea.store %v58[%v59], %v63 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":24:14)
  %v65 = sea.ptr.index %v54 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_33"("seahorn/lib/hash_table_helper.c":25:9))
  %v66 = sea.const 8 : i64 loc("_34"("seahorn/lib/hash_table_helper.c":25:25))
  %v67 = sea.ptr.dereferenceable %v65, %v66 : !sea.ptr<64>, i64 loc("_34"("seahorn/lib/hash_table_helper.c":25:25))
  sea.cond_br %v67, ^bb13, ^bb201
^bb13:
  %v68 = sea.const 4606732058837280358 : i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v69 = sea.store %v64[%v65], %v68 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v70 = sea.ptr.index %v54 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_36"("seahorn/lib/hash_table_helper.c":26:9))
  %v71 = sea.const 8 : i64 loc("_37"("seahorn/lib/hash_table_helper.c":26:15))
  %v72 = sea.ptr.dereferenceable %v70, %v71 : !sea.ptr<64>, i64 loc("_37"("seahorn/lib/hash_table_helper.c":26:15))
  sea.cond_br %v72, ^bb14, ^bb201
^bb14:
  %v73 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v74 = sea.store %v69[%v70], %v73 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v75 = sea.const 8 : i64 loc("_39"("seahorn/lib/hash_table_helper.c":27:17))
  %v76 = sea.ptr.dereferenceable %v54, %v75 : !sea.ptr<64>, i64 loc("_39"("seahorn/lib/hash_table_helper.c":27:17))
  sea.cond_br %v76, ^bb15, ^bb201
^bb15:
  %v77 = sea.func_addr @"nd_hash_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v78 = sea.store %v74[%v54], %v77 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v79 = sea.ptr.index %v54 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_41"("seahorn/lib/hash_table_helper.c":28:9))
  %v80 = sea.const 8 : i64 loc("_42"("seahorn/lib/hash_table_helper.c":28:19))
  %v81 = sea.ptr.dereferenceable %v79, %v80 : !sea.ptr<64>, i64 loc("_42"("seahorn/lib/hash_table_helper.c":28:19))
  sea.cond_br %v81, ^bb16, ^bb201
^bb16:
  %v82 = sea.func_addr @"nd_hash_equals_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  %v83 = sea.store %v78[%v79], %v82 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  sea.br ^bb17
^bb17:
  %v84 = sea.store %v0[%v5], %v54 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":37:15)
  sea.br ^bb18
^bb18:
  %v85 = sea.store %v1[%v7], %v5 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":43:13)
  %v86 = sea.ptr.nondet "nd_voidp" [11] : !sea.ptr<64> loc("_45"("seahorn/lib/hash_table_helper.c":44:23))
  %v87 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_46"("seahorn/lib/hash_table_helper.c":44:9))
  sea.br ^bb19
^bb19:
  %v88 = sea.store %v85[%v87], %v86 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":44:21)
  %v89 = sea.ptr.nondet "nd_voidp" [12] : !sea.ptr<64> loc("_48"("seahorn/lib/hash_table_helper.c":45:25))
  %v90 = sea.ptr.index %v7 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_49"("seahorn/lib/hash_table_helper.c":45:17))
  sea.br ^bb20
^bb20:
  %v91 = sea.store %v88[%v90], %v89 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":45:23)
  %v92 = sea.nondet "nd_size_t" [13] : i64 loc("_51"("seahorn/lib/hash_table_helper.c":46:16))
  %v93 = sea.ptr.index %v7 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_52"("seahorn/lib/hash_table_helper.c":46:9))
  sea.br ^bb21
^bb21:
  %v94 = sea.store %v91[%v93], %v92 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":46:14)
  %v95 = sea.nondet "nd_size_t" [14] : i64 loc("_54"("seahorn/lib/hash_table_helper.c":47:17))
  %v96 = sea.ptr.index %v7 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_55"("seahorn/lib/hash_table_helper.c":47:9))
  sea.br ^bb22
^bb22:
  %v97 = sea.store %v94[%v96], %v95 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":47:15)
  %v98 = sea.nondet "nd_hash_iter_status" [15] : i32 loc("_57"("seahorn/lib/hash_table_helper.c":48:18))
  %v99 = sea.ptr.index %v7 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_58"("seahorn/lib/hash_table_helper.c":48:9))
  sea.br ^bb23
^bb23:
  %v100 = sea.store %v97[%v99], %v98 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("seahorn/lib/hash_table_helper.c":48:16)
  sea.br ^bb24
^bb24:
  sea.br ^bb25
^bb25:
  sea.br ^bb26
^bb26:
  %v101 = sea.load %v84[%v5] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_62"("aws-c-common/source/hash_table.c":1027:24))
  %v102 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i.i.i"("aws-c-common/source/hash_table.c":1027:19))
  %v103 = sea.ptr.cmp eq, %v101, %v102 : !sea.ptr<64> loc(".not1.i.i.i.i"("aws-c-common/source/hash_table.c":1027:19))
  %v104 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1027:31)
  sea.cond_br %v103, ^bb68(%v104 : i1), ^bb27 loc("aws-c-common/source/hash_table.c":1027:31)
^bb27:
  sea.br ^bb28
^bb28:
  %v105 = sea.const 8 : i64 loc("_65"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v106 = sea.ptr.dereferenceable %v101, %v105 : !sea.ptr<64>, i64 loc("_65"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v106, ^bb29, ^bb201
^bb29:
  %v107 = sea.load %v78[%v101] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_67"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v108 = sea.ptr.null : !sea.ptr<64> loc("_68"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v109 = sea.ptr.cmp ne, %v107, %v108 : !sea.ptr<64> loc("_68"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v110 = sea.ptr.index %v101 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_69"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v111 = sea.const 8 : i64 loc("_70"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v112 = sea.ptr.dereferenceable %v110, %v111 : !sea.ptr<64>, i64 loc("_70"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v112, ^bb30, ^bb201
^bb30:
  %v113 = sea.load %v83[%v110] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_72"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v114 = sea.ptr.null : !sea.ptr<64> loc("_73"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v115 = sea.ptr.cmp ne, %v113, %v114 : !sea.ptr<64> loc("_73"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v116 = sea.ptr.index %v101 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_74"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v117 = sea.const 8 : i64 loc("_75"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v118 = sea.ptr.dereferenceable %v116, %v117 : !sea.ptr<64>, i64 loc("_75"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v118, ^bb31, ^bb201
^bb31:
  %v119 = sea.load %v83[%v116] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_77"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v120 = sea.ptr.null : !sea.ptr<64> loc("_78"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v121 = sea.ptr.cmp ne, %v119, %v120 : !sea.ptr<64> loc("_78"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v122 = sea.ptr.index %v101 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_79"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v123 = sea.const 8 : i64 loc("_80"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v124 = sea.ptr.dereferenceable %v122, %v123 : !sea.ptr<64>, i64 loc("_80"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v124, ^bb32, ^bb201
^bb32:
  %v125 = sea.load %v64[%v122] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_82"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v126 = sea.const 1 : i64 loc("_83"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v127 = sea.icmp ugt, %v125, %v126 : i64 loc("_83"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v128 = sea.const 8 : i64 loc("_84"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v129 = sea.ptr.dereferenceable %v122, %v128 : !sea.ptr<64>, i64 loc("_84"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v129, ^bb33, ^bb201
^bb33:
  %v130 = sea.ctpop %v125 : i64 loc("_86"("aws-c-common/include/aws/common/math.inl":161:14))
  %v131 = sea.const 1 : i64 loc("_87"("aws-c-common/include/aws/common/math.inl":161:14))
  %v132 = sea.icmp eq, %v130, %v131 : i64 loc("_87"("aws-c-common/include/aws/common/math.inl":161:14))
  %v133 = sea.ptr.index %v101 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_88"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v134 = sea.const 8 : i64 loc("_89"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v135 = sea.ptr.dereferenceable %v133, %v134 : !sea.ptr<64>, i64 loc("_89"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v135, ^bb34, ^bb201
^bb34:
  %v136 = sea.load %v58[%v133] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_91"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v137 = sea.ptr.index %v101 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_92"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v138 = sea.const 8 : i64 loc("_93"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v139 = sea.ptr.dereferenceable %v137, %v138 : !sea.ptr<64>, i64 loc("_93"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v139, ^bb35, ^bb201
^bb35:
  %v140 = sea.load %v58[%v137] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_95"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v141 = sea.icmp ule, %v136, %v140 : i64 loc("_96"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v142 = sea.const 8 : i64 loc("_97"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v143 = sea.ptr.dereferenceable %v137, %v142 : !sea.ptr<64>, i64 loc("_97"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v143, ^bb36, ^bb201
^bb36:
  %v144 = sea.const 8 : i64 loc("_99"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v145 = sea.ptr.dereferenceable %v122, %v144 : !sea.ptr<64>, i64 loc("_99"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v145, ^bb37, ^bb201
^bb37:
  %v146 = sea.icmp ult, %v140, %v125 : i64 loc("_101"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v147 = sea.ptr.index %v101 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_102"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v148 = sea.const 8 : i64 loc("_103"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v149 = sea.ptr.dereferenceable %v147, %v148 : !sea.ptr<64>, i64 loc("_103"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v149, ^bb38, ^bb201
^bb38:
  %v150 = sea.load %v64[%v147] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_105"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v151 = sea.const 8 : i64 loc("_106"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v152 = sea.ptr.dereferenceable %v122, %v151 : !sea.ptr<64>, i64 loc("_106"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v152, ^bb39, ^bb201
^bb39:
  %v153 = sea.const 8 : i64 loc("_108"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v154 = sea.ptr.dereferenceable %v122, %v153 : !sea.ptr<64>, i64 loc("_108"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v154, ^bb40, ^bb201
^bb40:
  %v155 = sea.const 18446744073709551615 : i64 loc("_109"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v156 = sea.add %v125, %v155 : i64 loc("_109"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v157 = sea.icmp eq, %v150, %v156 : i64 loc("_110"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
  %v158 = sea.const 0 : i1 loc("or.cond.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v159 = sea.select %v109, %v115, %v158 : i1 loc("or.cond.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v160 = sea.const 0 : i1 loc("or.cond3.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v161 = sea.select %v159, %v121, %v160 : i1 loc("or.cond3.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v162 = sea.const 0 : i1 loc("or.cond5.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v163 = sea.select %v161, %v127, %v162 : i1 loc("or.cond5.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v164 = sea.const 0 : i1 loc("or.cond7.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v165 = sea.select %v163, %v132, %v164 : i1 loc("or.cond7.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v166 = sea.const 0 : i1 loc("or.cond9.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v167 = sea.select %v165, %v141, %v166 : i1 loc("or.cond9.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v168 = sea.const 0 : i1 loc("or.cond11.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v169 = sea.select %v167, %v146, %v168 : i1 loc("or.cond11.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v170 = sea.const 0 : i1 loc("or.cond13.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v171 = sea.select %v169, %v157, %v170 : i1 loc("or.cond13.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v172 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1065:9)
  sea.cond_br %v171, ^bb41, ^bb68(%v172 : i1) loc("aws-c-common/source/hash_table.c":1065:9)
^bb41:
  sea.br ^bb42
^bb42:
  sea.br ^bb43
^bb43:
  sea.br ^bb44
^bb44:
  %v173 = sea.const 8 : i64 loc("_115"("aws-c-common/source/hash_table.c":1068:42))
  %v174 = sea.ptr.dereferenceable %v122, %v173 : !sea.ptr<64>, i64 loc("_115"("aws-c-common/source/hash_table.c":1068:42))
  sea.cond_br %v174, ^bb45, ^bb201
^bb45:
  %v175 = sea.icmp ugt, %v95, %v125 : i64 loc("_117"("aws-c-common/source/hash_table.c":1068:21))
  %v176 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1068:9)
  sea.cond_br %v175, ^bb68(%v176 : i1), ^bb46 loc("aws-c-common/source/hash_table.c":1068:9)
^bb46:
  sea.br ^bb47
^bb47:
  %v177 = sea.const 1 : i32 loc("Pivot6.i.i.i")
  %v178 = sea.icmp slt, %v98, %v177 : i32 loc("Pivot6.i.i.i")
  sea.cond_br %v178, ^bb64, ^bb48
^bb48:
  sea.br ^bb49
^bb49:
  %v179 = sea.const 2 : i32 loc("Pivot")
  %v180 = sea.icmp slt, %v98, %v179 : i32 loc("Pivot")
  sea.cond_br %v180, ^bb59, ^bb50
^bb50:
  %v181 = sea.const 2 : i32 loc("SwitchLeaf")
  %v182 = sea.icmp eq, %v98, %v181 : i32 loc("SwitchLeaf")
  %v183 = sea.const 0 : i1
  sea.cond_br %v182, ^bb51, ^bb68(%v183 : i1)
^bb51:
  sea.br ^bb52
^bb52:
  sea.br ^bb53
^bb53:
  %v184 = sea.icmp ult, %v92, %v95 : i64 loc("_132"("aws-c-common/source/hash_table.c":1082:31))
  %v185 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1082:45)
  sea.cond_br %v184, ^bb54, ^bb68(%v185 : i1) loc("aws-c-common/source/hash_table.c":1082:45)
^bb54:
  sea.br ^bb55
^bb55:
  sea.br ^bb56
^bb56:
  sea.br ^bb57
^bb57:
  %v186 = sea.ptr.index %v101 [%v92] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_137"("aws-c-common/source/hash_table.c":1082:85))
  %v187 = sea.const 8 : i64 loc("_138"("aws-c-common/source/hash_table.c":1082:85))
  %v188 = sea.ptr.dereferenceable %v186, %v187 : !sea.ptr<64>, i64 loc("_138"("aws-c-common/source/hash_table.c":1082:85))
  sea.cond_br %v188, ^bb58, ^bb201
^bb58:
  %v189 = sea.load %v58[%v186] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_140"("aws-c-common/source/hash_table.c":1082:85))
  %v190 = sea.const 0 : i64 loc("_141"("aws-c-common/source/hash_table.c":1082:95))
  %v191 = sea.icmp ne, %v189, %v190 : i64 loc("_141"("aws-c-common/source/hash_table.c":1082:95))
  sea.br ^bb68(%v191 : i1)
^bb59:
  sea.br ^bb60
^bb60:
  sea.br ^bb61
^bb61:
  %v192 = sea.icmp ugt, %v92, %v95 : i64 loc(".not2.i.i.i"("aws-c-common/source/hash_table.c":1079:31))
  %v193 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":1079:46)
  sea.cond_br %v192, ^bb62, ^bb68(%v193 : i1) loc("aws-c-common/source/hash_table.c":1079:46)
^bb62:
  sea.br ^bb63
^bb63:
  %v194 = sea.const 18446744073709551615 : i64 loc("_128"("aws-c-common/source/hash_table.c":1079:60))
  %v195 = sea.icmp eq, %v92, %v194 : i64 loc("_128"("aws-c-common/source/hash_table.c":1079:60))
  sea.br ^bb68(%v195 : i1) loc("aws-c-common/source/hash_table.c":1079:46)
^bb64:
  %v196 = sea.const 0 : i32 loc("SwitchLeaf.i.i.i")
  %v197 = sea.icmp eq, %v98, %v196 : i32 loc("SwitchLeaf.i.i.i")
  %v198 = sea.const 0 : i1
  sea.cond_br %v197, ^bb65, ^bb68(%v198 : i1)
^bb65:
  sea.br ^bb66
^bb66:
  sea.br ^bb67
^bb67:
  %v199 = sea.icmp eq, %v92, %v95 : i64 loc("_122"("aws-c-common/source/hash_table.c":1075:31))
  sea.br ^bb68(%v199 : i1) loc("aws-c-common/source/hash_table.c":1075:13)
^bb68(%v200 : i1):
  sea.assume %v200 loc("seahorn/lib/hash_table_helper.c":54:3)
  sea.br ^bb69
^bb69:
  %v201 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1027:31)
  sea.cond_br %v103, ^bb84(%v201 : i1), ^bb70 loc("aws-c-common/source/hash_table.c":1027:31)
^bb70:
  sea.br ^bb71
^bb71:
  %v202 = sea.const 8 : i64 loc("_145"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v203 = sea.ptr.dereferenceable %v101, %v202 : !sea.ptr<64>, i64 loc("_145"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v203, ^bb72, ^bb201
^bb72:
  %v204 = sea.load %v78[%v101] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_147"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v205 = sea.ptr.null : !sea.ptr<64> loc("_148"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v206 = sea.ptr.cmp ne, %v204, %v205 : !sea.ptr<64> loc("_148"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v207 = sea.ptr.index %v101 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_149"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v208 = sea.const 8 : i64 loc("_150"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v209 = sea.ptr.dereferenceable %v207, %v208 : !sea.ptr<64>, i64 loc("_150"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v209, ^bb73, ^bb201
^bb73:
  %v210 = sea.load %v83[%v207] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_152"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v211 = sea.ptr.null : !sea.ptr<64> loc("_153"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v212 = sea.ptr.cmp ne, %v210, %v211 : !sea.ptr<64> loc("_153"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v213 = sea.ptr.index %v101 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_154"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v214 = sea.const 8 : i64 loc("_155"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v215 = sea.ptr.dereferenceable %v213, %v214 : !sea.ptr<64>, i64 loc("_155"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v215, ^bb74, ^bb201
^bb74:
  %v216 = sea.load %v83[%v213] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_157"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v217 = sea.ptr.null : !sea.ptr<64> loc("_158"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v218 = sea.ptr.cmp ne, %v216, %v217 : !sea.ptr<64> loc("_158"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v219 = sea.ptr.index %v101 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_159"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v220 = sea.const 8 : i64 loc("_160"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v221 = sea.ptr.dereferenceable %v219, %v220 : !sea.ptr<64>, i64 loc("_160"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v221, ^bb75, ^bb201
^bb75:
  %v222 = sea.load %v64[%v219] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_162"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v223 = sea.const 1 : i64 loc("_163"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v224 = sea.icmp ugt, %v222, %v223 : i64 loc("_163"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v225 = sea.const 8 : i64 loc("_164"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v226 = sea.ptr.dereferenceable %v219, %v225 : !sea.ptr<64>, i64 loc("_164"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v226, ^bb76, ^bb201
^bb76:
  %v227 = sea.ctpop %v222 : i64 loc("_166"("aws-c-common/include/aws/common/math.inl":161:14))
  %v228 = sea.const 1 : i64 loc("_167"("aws-c-common/include/aws/common/math.inl":161:14))
  %v229 = sea.icmp eq, %v227, %v228 : i64 loc("_167"("aws-c-common/include/aws/common/math.inl":161:14))
  %v230 = sea.ptr.index %v101 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_168"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v231 = sea.const 8 : i64 loc("_169"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v232 = sea.ptr.dereferenceable %v230, %v231 : !sea.ptr<64>, i64 loc("_169"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v232, ^bb77, ^bb201
^bb77:
  %v233 = sea.load %v58[%v230] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_171"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v234 = sea.ptr.index %v101 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_172"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v235 = sea.const 8 : i64 loc("_173"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v236 = sea.ptr.dereferenceable %v234, %v235 : !sea.ptr<64>, i64 loc("_173"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v236, ^bb78, ^bb201
^bb78:
  %v237 = sea.load %v58[%v234] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_175"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v238 = sea.icmp ule, %v233, %v237 : i64 loc("_176"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v239 = sea.const 8 : i64 loc("_177"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v240 = sea.ptr.dereferenceable %v234, %v239 : !sea.ptr<64>, i64 loc("_177"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v240, ^bb79, ^bb201
^bb79:
  %v241 = sea.const 8 : i64 loc("_179"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v242 = sea.ptr.dereferenceable %v219, %v241 : !sea.ptr<64>, i64 loc("_179"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v242, ^bb80, ^bb201
^bb80:
  %v243 = sea.icmp ult, %v237, %v222 : i64 loc("_181"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v244 = sea.ptr.index %v101 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_182"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v245 = sea.const 8 : i64 loc("_183"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v246 = sea.ptr.dereferenceable %v244, %v245 : !sea.ptr<64>, i64 loc("_183"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v246, ^bb81, ^bb201
^bb81:
  %v247 = sea.load %v64[%v244] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_185"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v248 = sea.const 8 : i64 loc("_186"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v249 = sea.ptr.dereferenceable %v219, %v248 : !sea.ptr<64>, i64 loc("_186"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v249, ^bb82, ^bb201
^bb82:
  %v250 = sea.const 8 : i64 loc("_188"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v251 = sea.ptr.dereferenceable %v219, %v250 : !sea.ptr<64>, i64 loc("_188"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v251, ^bb83, ^bb201
^bb83:
  %v252 = sea.const 18446744073709551615 : i64 loc("_190"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v253 = sea.add %v222, %v252 : i64 loc("_190"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v254 = sea.icmp eq, %v247, %v253 : i64 loc("_191"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
  %v255 = sea.const 0 : i1 loc("or.cond.i79.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v256 = sea.select %v206, %v212, %v255 : i1 loc("or.cond.i79.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v257 = sea.const 0 : i1 loc("or.cond3.i80.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v258 = sea.select %v256, %v218, %v257 : i1 loc("or.cond3.i80.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v259 = sea.const 0 : i1 loc("or.cond5.i81.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v260 = sea.select %v258, %v224, %v259 : i1 loc("or.cond5.i81.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v261 = sea.const 0 : i1 loc("or.cond7.i82.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v262 = sea.select %v260, %v229, %v261 : i1 loc("or.cond7.i82.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v263 = sea.const 0 : i1 loc("or.cond9.i83.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v264 = sea.select %v262, %v238, %v263 : i1 loc("or.cond9.i83.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v265 = sea.const 0 : i1 loc("or.cond11.i84.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v266 = sea.select %v264, %v243, %v265 : i1 loc("or.cond11.i84.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v267 = sea.const 0 : i1 loc("or.cond13.i85.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v268 = sea.select %v266, %v254, %v267 : i1 loc("or.cond13.i85.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.br ^bb84(%v268 : i1)
^bb84(%v269 : i1):
  sea.assume %v269 loc("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":22:3)
  %v270 = sea.const 4294967293 : i32 loc("_193"("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":23:51))
  %v271 = sea.and %v98, %v270 : i32 loc("_193"("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":23:51))
  %v272 = sea.const 0 : i32 loc("_194"("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":23:51))
  %v273 = sea.icmp eq, %v271, %v272 : i32 loc("_194"("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":23:51))
  sea.assume %v273 loc("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":23:3)
  sea.tracking_on loc("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":27:3)
  %v274 = sea.mem.reset_modified %v84[%v5] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":29:3)
  %v275 = sea.load %v274[%v5] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_195"("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":30:34))
  %v276 = sea.mem.reset_modified %v83[%v275] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":30:3)
  sea.br ^bb85
^bb85:
  sea.br ^bb86
^bb86:
  %v277 = sea.icmp eq, %v92, %v95 : i64 loc("_197"("aws-c-common/source/hash_table.c":834:29))
  sea.br ^bb87
^bb87:
  sea.br ^bb88
^bb88:
  sea.br ^bb89
^bb89:
  %v278 = sea.load %v274[%v5] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_201"("aws-c-common/source/hash_table.c":1027:24))
  %v279 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i.i"("aws-c-common/source/hash_table.c":1027:19))
  %v280 = sea.ptr.cmp ne, %v278, %v279 : !sea.ptr<64> loc(".not1.i.i.i"("aws-c-common/source/hash_table.c":1027:19))
  %v281 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1027:31)
  sea.cond_br %v280, ^bb90, ^bb130(%v281 : i1) loc("aws-c-common/source/hash_table.c":1027:31)
^bb90:
  sea.br ^bb91
^bb91:
  %v282 = sea.const 8 : i64 loc("_204"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v283 = sea.ptr.dereferenceable %v278, %v282 : !sea.ptr<64>, i64 loc("_204"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v283, ^bb92, ^bb201
^bb92:
  %v284 = sea.load %v276[%v278] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_206"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v285 = sea.ptr.null : !sea.ptr<64> loc("_207"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v286 = sea.ptr.cmp ne, %v284, %v285 : !sea.ptr<64> loc("_207"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v287 = sea.ptr.index %v278 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_208"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v288 = sea.const 8 : i64 loc("_209"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v289 = sea.ptr.dereferenceable %v287, %v288 : !sea.ptr<64>, i64 loc("_209"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v289, ^bb93, ^bb201
^bb93:
  %v290 = sea.load %v83[%v287] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_211"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v291 = sea.ptr.null : !sea.ptr<64> loc("_212"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v292 = sea.ptr.cmp ne, %v290, %v291 : !sea.ptr<64> loc("_212"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v293 = sea.ptr.index %v278 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_213"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v294 = sea.const 8 : i64 loc("_214"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v295 = sea.ptr.dereferenceable %v293, %v294 : !sea.ptr<64>, i64 loc("_214"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v295, ^bb94, ^bb201
^bb94:
  %v296 = sea.load %v83[%v293] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_216"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v297 = sea.ptr.null : !sea.ptr<64> loc("_217"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v298 = sea.ptr.cmp ne, %v296, %v297 : !sea.ptr<64> loc("_217"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v299 = sea.ptr.index %v278 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_218"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v300 = sea.const 8 : i64 loc("_219"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v301 = sea.ptr.dereferenceable %v299, %v300 : !sea.ptr<64>, i64 loc("_219"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v301, ^bb95, ^bb201
^bb95:
  %v302 = sea.load %v64[%v299] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_221"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v303 = sea.const 1 : i64 loc("_222"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v304 = sea.icmp ugt, %v302, %v303 : i64 loc("_222"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v305 = sea.const 8 : i64 loc("_223"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v306 = sea.ptr.dereferenceable %v299, %v305 : !sea.ptr<64>, i64 loc("_223"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v306, ^bb96, ^bb201
^bb96:
  %v307 = sea.ctpop %v302 : i64 loc("_225"("aws-c-common/include/aws/common/math.inl":161:14))
  %v308 = sea.const 1 : i64 loc("_226"("aws-c-common/include/aws/common/math.inl":161:14))
  %v309 = sea.icmp eq, %v307, %v308 : i64 loc("_226"("aws-c-common/include/aws/common/math.inl":161:14))
  %v310 = sea.ptr.index %v278 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_227"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v311 = sea.const 8 : i64 loc("_228"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v312 = sea.ptr.dereferenceable %v310, %v311 : !sea.ptr<64>, i64 loc("_228"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v312, ^bb97, ^bb201
^bb97:
  %v313 = sea.load %v276[%v310] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_230"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v314 = sea.ptr.index %v278 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_231"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v315 = sea.const 8 : i64 loc("_232"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v316 = sea.ptr.dereferenceable %v314, %v315 : !sea.ptr<64>, i64 loc("_232"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v316, ^bb98, ^bb201
^bb98:
  %v317 = sea.load %v58[%v314] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_234"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v318 = sea.icmp ule, %v313, %v317 : i64 loc("_235"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v319 = sea.const 8 : i64 loc("_236"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v320 = sea.ptr.dereferenceable %v314, %v319 : !sea.ptr<64>, i64 loc("_236"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v320, ^bb99, ^bb201
^bb99:
  %v321 = sea.const 8 : i64 loc("_238"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v322 = sea.ptr.dereferenceable %v299, %v321 : !sea.ptr<64>, i64 loc("_238"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v322, ^bb100, ^bb201
^bb100:
  %v323 = sea.icmp ult, %v317, %v302 : i64 loc("_240"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v324 = sea.ptr.index %v278 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_241"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v325 = sea.const 8 : i64 loc("_242"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v326 = sea.ptr.dereferenceable %v324, %v325 : !sea.ptr<64>, i64 loc("_242"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v326, ^bb101, ^bb201
^bb101:
  %v327 = sea.load %v64[%v324] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_244"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v328 = sea.const 8 : i64 loc("_245"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v329 = sea.ptr.dereferenceable %v299, %v328 : !sea.ptr<64>, i64 loc("_245"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v329, ^bb102, ^bb201
^bb102:
  %v330 = sea.const 8 : i64 loc("_247"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v331 = sea.ptr.dereferenceable %v299, %v330 : !sea.ptr<64>, i64 loc("_247"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v331, ^bb103, ^bb201
^bb103:
  %v332 = sea.const 18446744073709551615 : i64 loc("_248"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v333 = sea.add %v302, %v332 : i64 loc("_248"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v334 = sea.icmp eq, %v327, %v333 : i64 loc("_249"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
  %v335 = sea.const 0 : i1 loc("or.cond.i46.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v336 = sea.select %v286, %v292, %v335 : i1 loc("or.cond.i46.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v337 = sea.const 0 : i1 loc("or.cond3.i47.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v338 = sea.select %v336, %v298, %v337 : i1 loc("or.cond3.i47.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v339 = sea.const 0 : i1 loc("or.cond5.i48.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v340 = sea.select %v338, %v304, %v339 : i1 loc("or.cond5.i48.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v341 = sea.const 0 : i1 loc("or.cond7.i49.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v342 = sea.select %v340, %v309, %v341 : i1 loc("or.cond7.i49.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v343 = sea.const 0 : i1 loc("or.cond9.i50.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v344 = sea.select %v342, %v318, %v343 : i1 loc("or.cond9.i50.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v345 = sea.const 0 : i1 loc("or.cond11.i51.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v346 = sea.select %v344, %v323, %v345 : i1 loc("or.cond11.i51.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v347 = sea.const 0 : i1 loc("or.cond13.i52.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v348 = sea.select %v346, %v334, %v347 : i1 loc("or.cond13.i52.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v349 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1065:9)
  sea.cond_br %v348, ^bb104, ^bb130(%v349 : i1) loc("aws-c-common/source/hash_table.c":1065:9)
^bb104:
  sea.br ^bb105
^bb105:
  sea.br ^bb106
^bb106:
  sea.br ^bb107
^bb107:
  %v350 = sea.const 8 : i64 loc("_254"("aws-c-common/source/hash_table.c":1068:42))
  %v351 = sea.ptr.dereferenceable %v299, %v350 : !sea.ptr<64>, i64 loc("_254"("aws-c-common/source/hash_table.c":1068:42))
  sea.cond_br %v351, ^bb108, ^bb201
^bb108:
  %v352 = sea.icmp ugt, %v95, %v302 : i64 loc("_256"("aws-c-common/source/hash_table.c":1068:21))
  %v353 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1068:9)
  sea.cond_br %v352, ^bb130(%v353 : i1), ^bb109 loc("aws-c-common/source/hash_table.c":1068:9)
^bb109:
  sea.br ^bb110
^bb110:
  %v354 = sea.const 1 : i32 loc("Pivot6.i.i")
  %v355 = sea.icmp slt, %v98, %v354 : i32 loc("Pivot6.i.i")
  sea.cond_br %v355, ^bb127, ^bb111
^bb111:
  sea.br ^bb112
^bb112:
  %v356 = sea.const 2 : i32 loc("Pivot5")
  %v357 = sea.icmp slt, %v98, %v356 : i32 loc("Pivot5")
  sea.cond_br %v357, ^bb122, ^bb113
^bb113:
  %v358 = sea.const 2 : i32 loc("SwitchLeaf3")
  %v359 = sea.icmp eq, %v98, %v358 : i32 loc("SwitchLeaf3")
  %v360 = sea.const 0 : i1
  sea.cond_br %v359, ^bb114, ^bb130(%v360 : i1)
^bb114:
  sea.br ^bb115
^bb115:
  sea.br ^bb116
^bb116:
  %v361 = sea.icmp ult, %v92, %v95 : i64 loc("_269"("aws-c-common/source/hash_table.c":1082:31))
  %v362 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1082:45)
  sea.cond_br %v361, ^bb117, ^bb130(%v362 : i1) loc("aws-c-common/source/hash_table.c":1082:45)
^bb117:
  sea.br ^bb118
^bb118:
  sea.br ^bb119
^bb119:
  sea.br ^bb120
^bb120:
  %v363 = sea.ptr.index %v278 [%v92] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_274"("aws-c-common/source/hash_table.c":1082:85))
  %v364 = sea.const 8 : i64 loc("_275"("aws-c-common/source/hash_table.c":1082:85))
  %v365 = sea.ptr.dereferenceable %v363, %v364 : !sea.ptr<64>, i64 loc("_275"("aws-c-common/source/hash_table.c":1082:85))
  sea.cond_br %v365, ^bb121, ^bb201
^bb121:
  %v366 = sea.load %v276[%v363] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_277"("aws-c-common/source/hash_table.c":1082:85))
  %v367 = sea.const 0 : i64 loc("_278"("aws-c-common/source/hash_table.c":1082:95))
  %v368 = sea.icmp ne, %v366, %v367 : i64 loc("_278"("aws-c-common/source/hash_table.c":1082:95))
  sea.br ^bb130(%v368 : i1)
^bb122:
  sea.br ^bb123
^bb123:
  sea.br ^bb124
^bb124:
  %v369 = sea.icmp ugt, %v92, %v95 : i64 loc(".not2.i.i"("aws-c-common/source/hash_table.c":1079:31))
  %v370 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":1079:46)
  sea.cond_br %v369, ^bb125, ^bb130(%v370 : i1) loc("aws-c-common/source/hash_table.c":1079:46)
^bb125:
  sea.br ^bb126
^bb126:
  %v371 = sea.const 18446744073709551615 : i64 loc("_265"("aws-c-common/source/hash_table.c":1079:60))
  %v372 = sea.icmp eq, %v92, %v371 : i64 loc("_265"("aws-c-common/source/hash_table.c":1079:60))
  sea.br ^bb130(%v372 : i1) loc("aws-c-common/source/hash_table.c":1079:46)
^bb127:
  %v373 = sea.const 0 : i32 loc("SwitchLeaf.i.i")
  %v374 = sea.icmp eq, %v98, %v373 : i32 loc("SwitchLeaf.i.i")
  %v375 = sea.const 0 : i1
  sea.cond_br %v374, ^bb128, ^bb130(%v375 : i1)
^bb128:
  sea.br ^bb129
^bb129:
  sea.br ^bb130(%v277 : i1)
^bb130(%v376 : i1):
  sea.br ^bb131
^bb131:
  sea.br ^bb132
^bb132:
  %v377 = sea.const 1 : i1 loc("brmerge.not")
  %v378 = sea.and %v280, %v377 : i1 loc("brmerge.not")
  sea.cond_br %v378, ^bb133, ^bb201
^bb133:
  sea.br ^bb134
^bb134:
  %v379 = sea.const 8 : i64 loc("_283"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v380 = sea.ptr.dereferenceable %v278, %v379 : !sea.ptr<64>, i64 loc("_283"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v380, ^bb135, ^bb201
^bb135:
  %v381 = sea.load %v276[%v278] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_285"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v382 = sea.ptr.null : !sea.ptr<64> loc("_286"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v383 = sea.ptr.cmp ne, %v381, %v382 : !sea.ptr<64> loc("_286"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v384 = sea.ptr.index %v278 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_287"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v385 = sea.const 8 : i64 loc("_288"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v386 = sea.ptr.dereferenceable %v384, %v385 : !sea.ptr<64>, i64 loc("_288"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v386, ^bb136, ^bb201
^bb136:
  %v387 = sea.load %v83[%v384] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_290"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v388 = sea.ptr.null : !sea.ptr<64> loc("_291"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v389 = sea.ptr.cmp ne, %v387, %v388 : !sea.ptr<64> loc("_291"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v390 = sea.ptr.index %v278 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_292"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v391 = sea.const 8 : i64 loc("_293"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v392 = sea.ptr.dereferenceable %v390, %v391 : !sea.ptr<64>, i64 loc("_293"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v392, ^bb137, ^bb201
^bb137:
  %v393 = sea.load %v83[%v390] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_295"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v394 = sea.ptr.null : !sea.ptr<64> loc("_296"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v395 = sea.ptr.cmp ne, %v393, %v394 : !sea.ptr<64> loc("_296"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v396 = sea.ptr.index %v278 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_297"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v397 = sea.const 8 : i64 loc("_298"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v398 = sea.ptr.dereferenceable %v396, %v397 : !sea.ptr<64>, i64 loc("_298"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v398, ^bb138, ^bb201
^bb138:
  %v399 = sea.load %v64[%v396] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_300"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v400 = sea.const 1 : i64 loc("_301"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v401 = sea.icmp ugt, %v399, %v400 : i64 loc("_301"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v402 = sea.const 8 : i64 loc("_302"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v403 = sea.ptr.dereferenceable %v396, %v402 : !sea.ptr<64>, i64 loc("_302"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v403, ^bb139, ^bb201
^bb139:
  %v404 = sea.ctpop %v399 : i64 loc("_304"("aws-c-common/include/aws/common/math.inl":161:14))
  %v405 = sea.const 1 : i64 loc("_305"("aws-c-common/include/aws/common/math.inl":161:14))
  %v406 = sea.icmp eq, %v404, %v405 : i64 loc("_305"("aws-c-common/include/aws/common/math.inl":161:14))
  %v407 = sea.ptr.index %v278 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_306"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v408 = sea.const 8 : i64 loc("_307"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v409 = sea.ptr.dereferenceable %v407, %v408 : !sea.ptr<64>, i64 loc("_307"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v409, ^bb140, ^bb201
^bb140:
  %v410 = sea.load %v276[%v407] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_309"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v411 = sea.ptr.index %v278 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_310"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v412 = sea.const 8 : i64 loc("_311"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v413 = sea.ptr.dereferenceable %v411, %v412 : !sea.ptr<64>, i64 loc("_311"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v413, ^bb141, ^bb201
^bb141:
  %v414 = sea.load %v58[%v411] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_313"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v415 = sea.icmp ule, %v410, %v414 : i64 loc("_314"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v416 = sea.const 8 : i64 loc("_315"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v417 = sea.ptr.dereferenceable %v411, %v416 : !sea.ptr<64>, i64 loc("_315"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v417, ^bb142, ^bb201
^bb142:
  %v418 = sea.const 8 : i64 loc("_317"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v419 = sea.ptr.dereferenceable %v396, %v418 : !sea.ptr<64>, i64 loc("_317"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v419, ^bb143, ^bb201
^bb143:
  %v420 = sea.icmp ult, %v414, %v399 : i64 loc("_319"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v421 = sea.ptr.index %v278 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_320"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v422 = sea.const 8 : i64 loc("_321"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v423 = sea.ptr.dereferenceable %v421, %v422 : !sea.ptr<64>, i64 loc("_321"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v423, ^bb144, ^bb201
^bb144:
  %v424 = sea.load %v64[%v421] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_323"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v425 = sea.const 8 : i64 loc("_324"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v426 = sea.ptr.dereferenceable %v396, %v425 : !sea.ptr<64>, i64 loc("_324"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v426, ^bb145, ^bb201
^bb145:
  %v427 = sea.const 8 : i64 loc("_326"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v428 = sea.ptr.dereferenceable %v396, %v427 : !sea.ptr<64>, i64 loc("_326"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v428, ^bb146, ^bb201
^bb146:
  %v429 = sea.const 18446744073709551615 : i64 loc("_327"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v430 = sea.add %v399, %v429 : i64 loc("_327"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v431 = sea.icmp eq, %v424, %v430 : i64 loc("_328"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
  %v432 = sea.const 0 : i1 loc("or.cond.i35.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v433 = sea.select %v383, %v389, %v432 : i1 loc("or.cond.i35.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v434 = sea.const 0 : i1 loc("or.cond3.i36.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v435 = sea.select %v433, %v395, %v434 : i1 loc("or.cond3.i36.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v436 = sea.const 0 : i1 loc("or.cond5.i37.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v437 = sea.select %v435, %v401, %v436 : i1 loc("or.cond5.i37.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v438 = sea.const 0 : i1 loc("or.cond7.i38.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v439 = sea.select %v437, %v406, %v438 : i1 loc("or.cond7.i38.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v440 = sea.const 0 : i1 loc("or.cond9.i39.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v441 = sea.select %v439, %v415, %v440 : i1 loc("or.cond9.i39.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v442 = sea.const 0 : i1 loc("or.cond11.i40.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v443 = sea.select %v441, %v420, %v442 : i1 loc("or.cond11.i40.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v444 = sea.const 0 : i1 loc("or.cond13.i41.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v445 = sea.select %v443, %v431, %v444 : i1 loc("or.cond13.i41.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.cond_br %v445, ^bb147, ^bb201 loc("aws-c-common/source/hash_table.c":1065:9)
^bb147:
  sea.br ^bb148
^bb148:
  sea.br ^bb149
^bb149:
  sea.br ^bb150
^bb150:
  %v446 = sea.const 8 : i64 loc("_333"("aws-c-common/source/hash_table.c":1068:42))
  %v447 = sea.ptr.dereferenceable %v396, %v446 : !sea.ptr<64>, i64 loc("_333"("aws-c-common/source/hash_table.c":1068:42))
  %v448 = sea.icmp ule, %v95, %v399 : i64 loc("_334")
  %v449 = sea.const 0 : i1 loc("or.cond23.not")
  %v450 = sea.select %v447, %v448, %v449 : i1 loc("or.cond23.not")
  sea.cond_br %v450, ^bb151, ^bb201
^bb151:
  sea.br ^bb152
^bb152:
  %v451 = sea.const 1 : i32 loc("Pivot6.i18.i")
  %v452 = sea.icmp slt, %v98, %v451 : i32 loc("Pivot6.i18.i")
  sea.cond_br %v452, ^bb167, ^bb153
^bb153:
  sea.br ^bb154
^bb154:
  %v453 = sea.const 2 : i32 loc("Pivot9")
  %v454 = sea.icmp slt, %v98, %v453 : i32 loc("Pivot9")
  sea.cond_br %v454, ^bb163, ^bb155
^bb155:
  %v455 = sea.const 2 : i32 loc("SwitchLeaf7")
  %v456 = sea.icmp eq, %v98, %v455 : i32 loc("SwitchLeaf7")
  sea.cond_br %v456, ^bb156, ^bb201
^bb156:
  sea.br ^bb157
^bb157:
  %v457 = sea.icmp ult, %v92, %v95 : i64 loc("_345")
  %v458 = sea.const 1 : i1 loc("or.cond19")
  %v459 = sea.const 0 : i1 loc("or.cond19")
  %v460 = sea.select %v458, %v457, %v459 : i1 loc("or.cond19")
  sea.cond_br %v460, ^bb158, ^bb201
^bb158:
  sea.br ^bb159
^bb159:
  sea.br ^bb160
^bb160:
  sea.br ^bb161
^bb161:
  %v461 = sea.ptr.index %v278 [%v92] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_350"("aws-c-common/source/hash_table.c":1082:85))
  %v462 = sea.const 8 : i64 loc("_351"("aws-c-common/source/hash_table.c":1082:85))
  %v463 = sea.ptr.dereferenceable %v461, %v462 : !sea.ptr<64>, i64 loc("_351"("aws-c-common/source/hash_table.c":1082:85))
  sea.cond_br %v463, ^bb162, ^bb201
^bb162:
  %v464 = sea.load %v276[%v461] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_352"("aws-c-common/source/hash_table.c":1082:85))
  %v465 = sea.const 0 : i64 loc(".not"("aws-c-common/source/hash_table.c":1082:95))
  %v466 = sea.icmp eq, %v464, %v465 : i64 loc(".not"("aws-c-common/source/hash_table.c":1082:95))
  sea.cond_br %v466, ^bb201, ^bb170 loc("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":36:3)
^bb163:
  sea.br ^bb164
^bb164:
  sea.br ^bb165
^bb165:
  %v467 = sea.icmp ugt, %v92, %v95 : i64 loc(".not2.i20.i"("aws-c-common/source/hash_table.c":1079:31))
  sea.cond_br %v467, ^bb166, ^bb170 loc("aws-c-common/source/hash_table.c":1079:46)
^bb166:
  %v468 = sea.const 18446744073709551615 : i64 loc("_342")
  %v469 = sea.icmp eq, %v92, %v468 : i64 loc("_342")
  %v470 = sea.const 1 : i1 loc("or.cond25")
  %v471 = sea.const 0 : i1 loc("or.cond25")
  %v472 = sea.select %v470, %v469, %v471 : i1 loc("or.cond25")
  sea.cond_br %v472, ^bb170, ^bb201
^bb167:
  %v473 = sea.const 0 : i32 loc("SwitchLeaf.i22.i")
  %v474 = sea.icmp eq, %v98, %v473 : i32 loc("SwitchLeaf.i22.i")
  sea.cond_br %v474, ^bb168, ^bb201
^bb168:
  sea.br ^bb169
^bb169:
  %v475 = sea.const 1 : i1 loc("or.cond24")
  %v476 = sea.const 0 : i1 loc("or.cond24")
  %v477 = sea.select %v475, %v277, %v476 : i1 loc("or.cond24")
  sea.cond_br %v477, ^bb170, ^bb201
^bb170:
  %v478 = sea.const 0 : i32 loc("_353"("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":37:3))
  %v479 = sea.icmp ne, %v98, %v478 : i32 loc("_353"("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":37:3))
  %v480 = sea.xor %v277, %v479 : i1 loc("_354"("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":37:3))
  sea.cond_br %v480, ^bb171, ^bb201 loc("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":37:3)
^bb171:
  sea.br ^bb172
^bb172:
  sea.br ^bb173
^bb173:
  %v481 = sea.const 8 : i64 loc("_358"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v482 = sea.ptr.dereferenceable %v278, %v481 : !sea.ptr<64>, i64 loc("_358"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v482, ^bb174, ^bb201
^bb174:
  %v483 = sea.const 8 : i64 loc("_360"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v484 = sea.ptr.dereferenceable %v384, %v483 : !sea.ptr<64>, i64 loc("_360"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v484, ^bb175, ^bb201
^bb175:
  %v485 = sea.const 8 : i64 loc("_362"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v486 = sea.ptr.dereferenceable %v390, %v485 : !sea.ptr<64>, i64 loc("_362"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v486, ^bb176, ^bb201
^bb176:
  %v487 = sea.const 8 : i64 loc("_364"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v488 = sea.ptr.dereferenceable %v396, %v487 : !sea.ptr<64>, i64 loc("_364"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v488, ^bb177, ^bb201
^bb177:
  %v489 = sea.const 8 : i64 loc("_366"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v490 = sea.ptr.dereferenceable %v396, %v489 : !sea.ptr<64>, i64 loc("_366"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v490, ^bb178, ^bb201
^bb178:
  %v491 = sea.const 8 : i64 loc("_368"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v492 = sea.ptr.dereferenceable %v407, %v491 : !sea.ptr<64>, i64 loc("_368"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v492, ^bb179, ^bb201
^bb179:
  %v493 = sea.const 8 : i64 loc("_370"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v494 = sea.ptr.dereferenceable %v411, %v493 : !sea.ptr<64>, i64 loc("_370"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v494, ^bb180, ^bb201
^bb180:
  %v495 = sea.const 8 : i64 loc("_372"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v496 = sea.ptr.dereferenceable %v411, %v495 : !sea.ptr<64>, i64 loc("_372"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v496, ^bb181, ^bb201
^bb181:
  %v497 = sea.const 8 : i64 loc("_374"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v498 = sea.ptr.dereferenceable %v396, %v497 : !sea.ptr<64>, i64 loc("_374"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v498, ^bb182, ^bb201
^bb182:
  %v499 = sea.const 8 : i64 loc("_376"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v500 = sea.ptr.dereferenceable %v421, %v499 : !sea.ptr<64>, i64 loc("_376"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v500, ^bb183, ^bb201
^bb183:
  %v501 = sea.const 8 : i64 loc("_378"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v502 = sea.ptr.dereferenceable %v396, %v501 : !sea.ptr<64>, i64 loc("_378"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v502, ^bb184, ^bb201
^bb184:
  %v503 = sea.const 8 : i64 loc("_380"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v504 = sea.ptr.dereferenceable %v396, %v503 : !sea.ptr<64>, i64 loc("_380"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v504, ^bb185, ^bb201
^bb185:
  sea.br ^bb186
^bb186:
  sea.br ^bb187
^bb187:
  %v505 = sea.const 8 : i64 loc("_383"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v506 = sea.ptr.dereferenceable %v278, %v505 : !sea.ptr<64>, i64 loc("_383"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v506, ^bb188, ^bb201
^bb188:
  %v507 = sea.const 8 : i64 loc("_385"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v508 = sea.ptr.dereferenceable %v384, %v507 : !sea.ptr<64>, i64 loc("_385"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v508, ^bb189, ^bb201
^bb189:
  %v509 = sea.const 8 : i64 loc("_387"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v510 = sea.ptr.dereferenceable %v390, %v509 : !sea.ptr<64>, i64 loc("_387"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v510, ^bb190, ^bb201
^bb190:
  %v511 = sea.const 8 : i64 loc("_389"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v512 = sea.ptr.dereferenceable %v396, %v511 : !sea.ptr<64>, i64 loc("_389"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v512, ^bb191, ^bb201
^bb191:
  %v513 = sea.const 8 : i64 loc("_391"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v514 = sea.ptr.dereferenceable %v396, %v513 : !sea.ptr<64>, i64 loc("_391"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v514, ^bb192, ^bb201
^bb192:
  %v515 = sea.const 8 : i64 loc("_393"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v516 = sea.ptr.dereferenceable %v407, %v515 : !sea.ptr<64>, i64 loc("_393"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v516, ^bb193, ^bb201
^bb193:
  %v517 = sea.const 8 : i64 loc("_395"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v518 = sea.ptr.dereferenceable %v411, %v517 : !sea.ptr<64>, i64 loc("_395"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v518, ^bb194, ^bb201
^bb194:
  %v519 = sea.const 8 : i64 loc("_397"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v520 = sea.ptr.dereferenceable %v411, %v519 : !sea.ptr<64>, i64 loc("_397"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v520, ^bb195, ^bb201
^bb195:
  %v521 = sea.const 8 : i64 loc("_399"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v522 = sea.ptr.dereferenceable %v396, %v521 : !sea.ptr<64>, i64 loc("_399"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v522, ^bb196, ^bb201
^bb196:
  %v523 = sea.const 8 : i64 loc("_401"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v524 = sea.ptr.dereferenceable %v421, %v523 : !sea.ptr<64>, i64 loc("_401"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v524, ^bb197, ^bb201
^bb197:
  %v525 = sea.const 8 : i64 loc("_403"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v526 = sea.ptr.dereferenceable %v396, %v525 : !sea.ptr<64>, i64 loc("_403"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v526, ^bb198, ^bb201
^bb198:
  %v527 = sea.const 8 : i64 loc("_405"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v528 = sea.ptr.dereferenceable %v396, %v527 : !sea.ptr<64>, i64 loc("_405"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v528, ^bb199, ^bb201
^bb199:
  %v529 = sea.mem.is_modified %v274[%v5] : !sea.mem<!sea.ptr<64>, i8> loc("_406"("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":40:3))
  %v530 = sea.const 1 : i1 loc("_407"("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":40:3))
  %v531 = sea.xor %v529, %v530 : i1 loc("_407"("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":40:3))
  %v532 = sea.mem.is_modified %v274[%v5] : !sea.mem<!sea.ptr<64>, i8> loc("_408"("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":40:3))
  sea.cond_br %v532, ^bb201, ^bb200 loc("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":40:3)
^bb200:
  %v533 = sea.mem.is_modified %v276[%v278] : !sea.mem<!sea.ptr<64>, i8> loc("_410"("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":41:3))
  %v534 = sea.const 1 : i1 loc("_411"("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":41:3))
  %v535 = sea.xor %v533, %v534 : i1 loc("_411"("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":41:3))
  %v536 = sea.mem.is_modified %v276[%v278] : !sea.mem<!sea.ptr<64>, i8> loc("_412"("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":41:3))
  sea.assume %v536 loc("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":41:3)
  sea.br ^bb201 loc("seahorn/jobs2/hash_iter_done2/aws_hash_iter_done_harness2.c":41:3)
^bb201:
  sea.br ^bb202
^bb202:
  %v537 = sea.const 0 : i1
  sea.assert %v537
  sea.halt
}
