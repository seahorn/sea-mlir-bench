// Exported from SeaHorn (hash_iter_next2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.16" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm29")
  %v1 = sea.mem.nondet "region.0" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm30")
  %v2 = sea.mem.nondet "region.24" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm31")
  %v3 = sea.const 8 : i64 loc("_0")
  %v4 = sea.alloca %v3 align 8 [3] : i64 -> !sea.ptr<64> loc("_0")
  %v5 = sea.const 64 : i64 loc("_1")
  %v6 = sea.alloca %v5 align 8 [4] : i64 -> !sea.ptr<64> loc("_1")
  %v7 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v8 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v9 = sea.store %v1[%v7], %v8 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v10 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_2")
  %v11 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_2")
  %v12 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v13 = sea.store %v9[%v11], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v14 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_3")
  %v15 = sea.ptr.index %v14 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_3")
  %v16 = sea.const 0 : i8
  %v17 = sea.const 24 : i64
  %v18 = sea.memset %v13[%v15], %v16, %v17 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v19 = sea.nondet "nd_size_t" [5] : i64 loc("_4"("seahorn/lib/hash_table_helper.c":14:24))
  %v20 = sea.const 9 : i64 loc("_5"("seahorn/lib/hash_table_helper.c":15:22))
  %v21 = sea.icmp ult, %v19, %v20 : i64 loc("_5"("seahorn/lib/hash_table_helper.c":15:22))
  sea.assume %v21 loc("seahorn/lib/hash_table_helper.c":15:3)
  %v22 = sea.ctpop %v19 : i64 loc("_6"("aws-c-common/include/aws/common/math.inl":161:14))
  %v23 = sea.const 1 : i64 loc("_7"("aws-c-common/include/aws/common/math.inl":161:14))
  %v24 = sea.icmp eq, %v22, %v23 : i64 loc("_7"("aws-c-common/include/aws/common/math.inl":161:14))
  sea.assume %v24 loc("seahorn/lib/hash_table_helper.c":16:3)
  %v25 = sea.nondet "nd_size_t" [6] : i64 loc("_8"("seahorn/lib/hash_table_helper.c":18:27))
  sea.br ^bb1
^bb1:
  %v26 = sea.const 24 : i64 loc("_10"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v27 = sea.mul %v19, %v26 : i64 loc("_10"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v28 = sea.const 24 : i64 loc("_10"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v29 = sea.umulo %v19, %v28 : i64 loc("_10"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v30 = sea.const 4294967295 : i32 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
  sea.cond_br %v29, ^bb6(%v25, %v30 : i64, i32), ^bb2 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb2:
  sea.br ^bb3
^bb3:
  %v31 = sea.const 80 : i64 loc("_14"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v32 = sea.add %v27, %v31 : i64 loc("_14"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v33 = sea.const 80 : i64 loc("_14"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v34 = sea.uaddo %v27, %v33 : i64 loc("_14"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v34, ^bb4, ^bb5 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb4:
  sea.br ^bb5 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":71:9)
^bb5:
  %v35 = sea.sext %v34 : i1 to i32 loc("..i.i.i"("aws-c-common/source/hash_table.c":0:0))
  sea.br ^bb6(%v32, %v35 : i64, i32) loc("aws-c-common/source/hash_table.c":0:0)
^bb6(%v36 : i64, %v37 : i32):
  %v38 = sea.const 0 : i32 loc("_19"("seahorn/lib/hash_table_helper.c":20:72))
  %v39 = sea.icmp eq, %v37, %v38 : i32 loc("_19"("seahorn/lib/hash_table_helper.c":20:72))
  sea.assume %v39 loc("seahorn/lib/hash_table_helper.c":20:3)
  %v40 = sea.const 0 : i64 loc("_20"("seahorn/lib/proof_allocators.c":17:15))
  %v41 = sea.icmp eq, %v36, %v40 : i64 loc("_20"("seahorn/lib/proof_allocators.c":17:15))
  %v42 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v41, ^bb10(%v2, %v42 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb7 loc("seahorn/lib/proof_allocators.c":17:10)
^bb7:
  %v43 = sea.nondet "nd_malloc_is_fail" [7] : i1 loc("_22"("seahorn/lib/sea_allocators.c":11:10))
  %v44 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v43, ^bb9(%v2, %v44 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb8 loc("seahorn/lib/sea_allocators.c":11:10)
^bb8:
  %v45 = sea.const 1 : i64 loc("malloc.i")
  %v46 = sea.mul %v36, %v45 : i64 loc("malloc.i")
  %v47 = sea.alloca %v46 align 16 [8] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb9(%v2, %v47 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb9(%v48 : !sea.mem<!sea.ptr<64>, i8>, %v49 : !sea.ptr<64>):
  %v50 = sea.memhavoc %v48[%v49], %v36 [9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v51 = sea.ptr.null : !sea.ptr<64> loc("_25"("seahorn/lib/sea_allocators.c":45:10))
  %v52 = sea.ptr.cmp ne, %v49, %v51 : !sea.ptr<64> loc("_25"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v52 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb10(%v50, %v49 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb10(%v53 : !sea.mem<!sea.ptr<64>, i8>, %v54 : !sea.ptr<64>):
  %v55 = sea.ptr.index %v54 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_27"("seahorn/lib/hash_table_helper.c":23:9))
  %v56 = sea.const 8 : i64 loc("_28"("seahorn/lib/hash_table_helper.c":23:14))
  %v57 = sea.ptr.dereferenceable %v55, %v56 : !sea.ptr<64>, i64 loc("_28"("seahorn/lib/hash_table_helper.c":23:14))
  sea.cond_br %v57, ^bb11, ^bb219(%v53, %v0 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb11:
  %v58 = sea.store %v53[%v55], %v19 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":23:14)
  %v59 = sea.ptr.index %v54 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_30"("seahorn/lib/hash_table_helper.c":24:9))
  %v60 = sea.const 8 : i64 loc("_31"("seahorn/lib/hash_table_helper.c":24:14))
  %v61 = sea.ptr.dereferenceable %v59, %v60 : !sea.ptr<64>, i64 loc("_31"("seahorn/lib/hash_table_helper.c":24:14))
  sea.cond_br %v61, ^bb12, ^bb219(%v58, %v0 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb12:
  %v62 = sea.const 18446744073709551615 : i64 loc("_33"("seahorn/lib/hash_table_helper.c":24:28))
  %v63 = sea.add %v19, %v62 : i64 loc("_33"("seahorn/lib/hash_table_helper.c":24:28))
  %v64 = sea.store %v58[%v59], %v63 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":24:14)
  %v65 = sea.ptr.index %v54 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_34"("seahorn/lib/hash_table_helper.c":25:9))
  %v66 = sea.const 8 : i64 loc("_35"("seahorn/lib/hash_table_helper.c":25:25))
  %v67 = sea.ptr.dereferenceable %v65, %v66 : !sea.ptr<64>, i64 loc("_35"("seahorn/lib/hash_table_helper.c":25:25))
  sea.cond_br %v67, ^bb13, ^bb219(%v64, %v0 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb13:
  %v68 = sea.const 4606732058837280358 : i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v69 = sea.store %v64[%v65], %v68 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v70 = sea.ptr.index %v54 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_37"("seahorn/lib/hash_table_helper.c":26:9))
  %v71 = sea.const 8 : i64 loc("_38"("seahorn/lib/hash_table_helper.c":26:15))
  %v72 = sea.ptr.dereferenceable %v70, %v71 : !sea.ptr<64>, i64 loc("_38"("seahorn/lib/hash_table_helper.c":26:15))
  sea.cond_br %v72, ^bb14, ^bb219(%v69, %v0 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb14:
  %v73 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v74 = sea.store %v69[%v70], %v73 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v75 = sea.const 8 : i64 loc("_40"("seahorn/lib/hash_table_helper.c":27:17))
  %v76 = sea.ptr.dereferenceable %v54, %v75 : !sea.ptr<64>, i64 loc("_40"("seahorn/lib/hash_table_helper.c":27:17))
  sea.cond_br %v76, ^bb15, ^bb219(%v74, %v0 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb15:
  %v77 = sea.func_addr @"nd_hash_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v78 = sea.store %v74[%v54], %v77 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v79 = sea.ptr.index %v54 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_42"("seahorn/lib/hash_table_helper.c":28:9))
  %v80 = sea.const 8 : i64 loc("_43"("seahorn/lib/hash_table_helper.c":28:19))
  %v81 = sea.ptr.dereferenceable %v79, %v80 : !sea.ptr<64>, i64 loc("_43"("seahorn/lib/hash_table_helper.c":28:19))
  sea.cond_br %v81, ^bb16, ^bb219(%v78, %v0 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb16:
  %v82 = sea.func_addr @"nd_hash_equals_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  %v83 = sea.store %v78[%v79], %v82 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  sea.br ^bb17
^bb17:
  %v84 = sea.store %v0[%v4], %v54 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":37:15)
  sea.br ^bb18
^bb18:
  %v85 = sea.store %v83[%v6], %v4 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":43:13)
  %v86 = sea.ptr.nondet "nd_voidp" [10] : !sea.ptr<64> loc("_46"("seahorn/lib/hash_table_helper.c":44:23))
  %v87 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_47"("seahorn/lib/hash_table_helper.c":44:9))
  sea.br ^bb19
^bb19:
  %v88 = sea.store %v85[%v87], %v86 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":44:21)
  %v89 = sea.ptr.nondet "nd_voidp" [11] : !sea.ptr<64> loc("_49"("seahorn/lib/hash_table_helper.c":45:25))
  %v90 = sea.ptr.index %v6 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_50"("seahorn/lib/hash_table_helper.c":45:17))
  sea.br ^bb20
^bb20:
  %v91 = sea.store %v88[%v90], %v89 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":45:23)
  %v92 = sea.nondet "nd_size_t" [12] : i64 loc("_52"("seahorn/lib/hash_table_helper.c":46:16))
  %v93 = sea.ptr.index %v6 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_53"("seahorn/lib/hash_table_helper.c":46:9))
  sea.br ^bb21
^bb21:
  %v94 = sea.store %v91[%v93], %v92 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":46:14)
  %v95 = sea.nondet "nd_size_t" [13] : i64 loc("_55"("seahorn/lib/hash_table_helper.c":47:17))
  %v96 = sea.ptr.index %v6 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_56"("seahorn/lib/hash_table_helper.c":47:9))
  sea.br ^bb22
^bb22:
  %v97 = sea.store %v94[%v96], %v95 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":47:15)
  %v98 = sea.nondet "nd_hash_iter_status" [14] : i32 loc("_58"("seahorn/lib/hash_table_helper.c":48:18))
  %v99 = sea.ptr.index %v6 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_59"("seahorn/lib/hash_table_helper.c":48:9))
  sea.br ^bb23
^bb23:
  %v100 = sea.store %v97[%v99], %v98 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("seahorn/lib/hash_table_helper.c":48:16)
  sea.br ^bb24
^bb24:
  sea.br ^bb25
^bb25:
  sea.br ^bb26
^bb26:
  %v101 = sea.load %v84[%v4] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_63"("aws-c-common/source/hash_table.c":1027:24))
  %v102 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i.i.i"("aws-c-common/source/hash_table.c":1027:19))
  %v103 = sea.ptr.cmp eq, %v101, %v102 : !sea.ptr<64> loc(".not1.i.i.i.i"("aws-c-common/source/hash_table.c":1027:19))
  %v104 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1027:31)
  sea.cond_br %v103, ^bb68(%v104 : i1), ^bb27 loc("aws-c-common/source/hash_table.c":1027:31)
^bb27:
  sea.br ^bb28
^bb28:
  %v105 = sea.const 8 : i64 loc("_66"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v106 = sea.ptr.dereferenceable %v101, %v105 : !sea.ptr<64>, i64 loc("_66"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v106, ^bb29, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb29:
  %v107 = sea.load %v78[%v101] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_68"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v108 = sea.ptr.null : !sea.ptr<64> loc("_69"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v109 = sea.ptr.cmp ne, %v107, %v108 : !sea.ptr<64> loc("_69"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v110 = sea.ptr.index %v101 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_70"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v111 = sea.const 8 : i64 loc("_71"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v112 = sea.ptr.dereferenceable %v110, %v111 : !sea.ptr<64>, i64 loc("_71"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v112, ^bb30, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb30:
  %v113 = sea.load %v83[%v110] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_73"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v114 = sea.ptr.null : !sea.ptr<64> loc("_74"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v115 = sea.ptr.cmp ne, %v113, %v114 : !sea.ptr<64> loc("_74"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v116 = sea.ptr.index %v101 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_75"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v117 = sea.const 8 : i64 loc("_76"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v118 = sea.ptr.dereferenceable %v116, %v117 : !sea.ptr<64>, i64 loc("_76"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v118, ^bb31, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb31:
  %v119 = sea.load %v83[%v116] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_78"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v120 = sea.ptr.null : !sea.ptr<64> loc("_79"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v121 = sea.ptr.cmp ne, %v119, %v120 : !sea.ptr<64> loc("_79"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v122 = sea.ptr.index %v101 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_80"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v123 = sea.const 8 : i64 loc("_81"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v124 = sea.ptr.dereferenceable %v122, %v123 : !sea.ptr<64>, i64 loc("_81"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v124, ^bb32, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb32:
  %v125 = sea.load %v64[%v122] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_83"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v126 = sea.const 1 : i64 loc("_84"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v127 = sea.icmp ugt, %v125, %v126 : i64 loc("_84"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v128 = sea.const 8 : i64 loc("_85"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v129 = sea.ptr.dereferenceable %v122, %v128 : !sea.ptr<64>, i64 loc("_85"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v129, ^bb33, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb33:
  %v130 = sea.ctpop %v125 : i64 loc("_87"("aws-c-common/include/aws/common/math.inl":161:14))
  %v131 = sea.const 1 : i64 loc("_88"("aws-c-common/include/aws/common/math.inl":161:14))
  %v132 = sea.icmp eq, %v130, %v131 : i64 loc("_88"("aws-c-common/include/aws/common/math.inl":161:14))
  %v133 = sea.ptr.index %v101 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_89"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v134 = sea.const 8 : i64 loc("_90"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v135 = sea.ptr.dereferenceable %v133, %v134 : !sea.ptr<64>, i64 loc("_90"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v135, ^bb34, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb34:
  %v136 = sea.load %v58[%v133] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_92"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v137 = sea.ptr.index %v101 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_93"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v138 = sea.const 8 : i64 loc("_94"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v139 = sea.ptr.dereferenceable %v137, %v138 : !sea.ptr<64>, i64 loc("_94"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v139, ^bb35, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb35:
  %v140 = sea.load %v58[%v137] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_96"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v141 = sea.icmp ule, %v136, %v140 : i64 loc("_97"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v142 = sea.const 8 : i64 loc("_98"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v143 = sea.ptr.dereferenceable %v137, %v142 : !sea.ptr<64>, i64 loc("_98"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v143, ^bb36, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb36:
  %v144 = sea.const 8 : i64 loc("_100"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v145 = sea.ptr.dereferenceable %v122, %v144 : !sea.ptr<64>, i64 loc("_100"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v145, ^bb37, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb37:
  %v146 = sea.icmp ult, %v140, %v125 : i64 loc("_102"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v147 = sea.ptr.index %v101 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_103"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v148 = sea.const 8 : i64 loc("_104"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v149 = sea.ptr.dereferenceable %v147, %v148 : !sea.ptr<64>, i64 loc("_104"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v149, ^bb38, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb38:
  %v150 = sea.load %v64[%v147] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_106"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v151 = sea.const 8 : i64 loc("_107"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v152 = sea.ptr.dereferenceable %v122, %v151 : !sea.ptr<64>, i64 loc("_107"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v152, ^bb39, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb39:
  %v153 = sea.const 8 : i64 loc("_109"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v154 = sea.ptr.dereferenceable %v122, %v153 : !sea.ptr<64>, i64 loc("_109"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v154, ^bb40, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb40:
  %v155 = sea.const 18446744073709551615 : i64 loc("_110"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v156 = sea.add %v125, %v155 : i64 loc("_110"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v157 = sea.icmp eq, %v150, %v156 : i64 loc("_111"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
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
  %v173 = sea.const 8 : i64 loc("_116"("aws-c-common/source/hash_table.c":1068:42))
  %v174 = sea.ptr.dereferenceable %v122, %v173 : !sea.ptr<64>, i64 loc("_116"("aws-c-common/source/hash_table.c":1068:42))
  sea.cond_br %v174, ^bb45, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb45:
  %v175 = sea.icmp ugt, %v95, %v125 : i64 loc("_118"("aws-c-common/source/hash_table.c":1068:21))
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
  %v184 = sea.icmp ult, %v92, %v95 : i64 loc("_133"("aws-c-common/source/hash_table.c":1082:31))
  %v185 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1082:45)
  sea.cond_br %v184, ^bb54, ^bb68(%v185 : i1) loc("aws-c-common/source/hash_table.c":1082:45)
^bb54:
  sea.br ^bb55
^bb55:
  sea.br ^bb56
^bb56:
  sea.br ^bb57
^bb57:
  %v186 = sea.ptr.index %v101 [%v92] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_138"("aws-c-common/source/hash_table.c":1082:85))
  %v187 = sea.const 8 : i64 loc("_139"("aws-c-common/source/hash_table.c":1082:85))
  %v188 = sea.ptr.dereferenceable %v186, %v187 : !sea.ptr<64>, i64 loc("_139"("aws-c-common/source/hash_table.c":1082:85))
  sea.cond_br %v188, ^bb58, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb58:
  %v189 = sea.load %v58[%v186] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_141"("aws-c-common/source/hash_table.c":1082:85))
  %v190 = sea.const 0 : i64 loc("_142"("aws-c-common/source/hash_table.c":1082:95))
  %v191 = sea.icmp ne, %v189, %v190 : i64 loc("_142"("aws-c-common/source/hash_table.c":1082:95))
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
  %v194 = sea.const 18446744073709551615 : i64 loc("_129"("aws-c-common/source/hash_table.c":1079:60))
  %v195 = sea.icmp eq, %v92, %v194 : i64 loc("_129"("aws-c-common/source/hash_table.c":1079:60))
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
  %v199 = sea.icmp eq, %v92, %v95 : i64 loc("_123"("aws-c-common/source/hash_table.c":1075:31))
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
  %v202 = sea.const 8 : i64 loc("_146"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v203 = sea.ptr.dereferenceable %v101, %v202 : !sea.ptr<64>, i64 loc("_146"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v203, ^bb72, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb72:
  %v204 = sea.load %v78[%v101] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_148"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v205 = sea.ptr.null : !sea.ptr<64> loc("_149"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v206 = sea.ptr.cmp ne, %v204, %v205 : !sea.ptr<64> loc("_149"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v207 = sea.ptr.index %v101 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_150"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v208 = sea.const 8 : i64 loc("_151"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v209 = sea.ptr.dereferenceable %v207, %v208 : !sea.ptr<64>, i64 loc("_151"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v209, ^bb73, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb73:
  %v210 = sea.load %v83[%v207] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_153"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v211 = sea.ptr.null : !sea.ptr<64> loc("_154"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v212 = sea.ptr.cmp ne, %v210, %v211 : !sea.ptr<64> loc("_154"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v213 = sea.ptr.index %v101 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_155"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v214 = sea.const 8 : i64 loc("_156"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v215 = sea.ptr.dereferenceable %v213, %v214 : !sea.ptr<64>, i64 loc("_156"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v215, ^bb74, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb74:
  %v216 = sea.load %v83[%v213] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_158"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v217 = sea.ptr.null : !sea.ptr<64> loc("_159"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v218 = sea.ptr.cmp ne, %v216, %v217 : !sea.ptr<64> loc("_159"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v219 = sea.ptr.index %v101 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_160"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v220 = sea.const 8 : i64 loc("_161"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v221 = sea.ptr.dereferenceable %v219, %v220 : !sea.ptr<64>, i64 loc("_161"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v221, ^bb75, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb75:
  %v222 = sea.load %v64[%v219] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_163"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v223 = sea.const 1 : i64 loc("_164"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v224 = sea.icmp ugt, %v222, %v223 : i64 loc("_164"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v225 = sea.const 8 : i64 loc("_165"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v226 = sea.ptr.dereferenceable %v219, %v225 : !sea.ptr<64>, i64 loc("_165"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v226, ^bb76, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb76:
  %v227 = sea.ctpop %v222 : i64 loc("_167"("aws-c-common/include/aws/common/math.inl":161:14))
  %v228 = sea.const 1 : i64 loc("_168"("aws-c-common/include/aws/common/math.inl":161:14))
  %v229 = sea.icmp eq, %v227, %v228 : i64 loc("_168"("aws-c-common/include/aws/common/math.inl":161:14))
  %v230 = sea.ptr.index %v101 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_169"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v231 = sea.const 8 : i64 loc("_170"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v232 = sea.ptr.dereferenceable %v230, %v231 : !sea.ptr<64>, i64 loc("_170"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v232, ^bb77, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb77:
  %v233 = sea.load %v58[%v230] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_172"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v234 = sea.ptr.index %v101 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_173"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v235 = sea.const 8 : i64 loc("_174"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v236 = sea.ptr.dereferenceable %v234, %v235 : !sea.ptr<64>, i64 loc("_174"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v236, ^bb78, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb78:
  %v237 = sea.load %v58[%v234] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_176"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v238 = sea.icmp ule, %v233, %v237 : i64 loc("_177"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v239 = sea.const 8 : i64 loc("_178"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v240 = sea.ptr.dereferenceable %v234, %v239 : !sea.ptr<64>, i64 loc("_178"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v240, ^bb79, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb79:
  %v241 = sea.const 8 : i64 loc("_180"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v242 = sea.ptr.dereferenceable %v219, %v241 : !sea.ptr<64>, i64 loc("_180"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v242, ^bb80, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb80:
  %v243 = sea.icmp ult, %v237, %v222 : i64 loc("_182"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v244 = sea.ptr.index %v101 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_183"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v245 = sea.const 8 : i64 loc("_184"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v246 = sea.ptr.dereferenceable %v244, %v245 : !sea.ptr<64>, i64 loc("_184"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v246, ^bb81, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb81:
  %v247 = sea.load %v64[%v244] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_186"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v248 = sea.const 8 : i64 loc("_187"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v249 = sea.ptr.dereferenceable %v219, %v248 : !sea.ptr<64>, i64 loc("_187"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v249, ^bb82, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb82:
  %v250 = sea.const 8 : i64 loc("_189"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v251 = sea.ptr.dereferenceable %v219, %v250 : !sea.ptr<64>, i64 loc("_189"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v251, ^bb83, ^bb219(%v100, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb83:
  %v252 = sea.const 18446744073709551615 : i64 loc("_191"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v253 = sea.add %v222, %v252 : i64 loc("_191"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v254 = sea.icmp eq, %v247, %v253 : i64 loc("_192"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
  %v255 = sea.const 0 : i1 loc("or.cond.i81.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v256 = sea.select %v206, %v212, %v255 : i1 loc("or.cond.i81.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v257 = sea.const 0 : i1 loc("or.cond3.i82.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v258 = sea.select %v256, %v218, %v257 : i1 loc("or.cond3.i82.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v259 = sea.const 0 : i1 loc("or.cond5.i83.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v260 = sea.select %v258, %v224, %v259 : i1 loc("or.cond5.i83.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v261 = sea.const 0 : i1 loc("or.cond7.i84.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v262 = sea.select %v260, %v229, %v261 : i1 loc("or.cond7.i84.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v263 = sea.const 0 : i1 loc("or.cond9.i85.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v264 = sea.select %v262, %v238, %v263 : i1 loc("or.cond9.i85.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v265 = sea.const 0 : i1 loc("or.cond11.i86.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v266 = sea.select %v264, %v243, %v265 : i1 loc("or.cond11.i86.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v267 = sea.const 0 : i1 loc("or.cond13.i87.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v268 = sea.select %v266, %v254, %v267 : i1 loc("or.cond13.i87.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.br ^bb84(%v268 : i1)
^bb84(%v269 : i1):
  sea.assume %v269 loc("seahorn/jobs2/hash_iter_next2/aws_hash_iter_next_harness2.c":22:3)
  sea.tracking_on loc("seahorn/jobs2/hash_iter_next2/aws_hash_iter_next_harness2.c":26:3)
  %v270 = sea.mem.reset_modified %v84[%v4] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/hash_iter_next2/aws_hash_iter_next_harness2.c":27:3)
  %v271 = sea.load %v270[%v4] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_194"("seahorn/jobs2/hash_iter_next2/aws_hash_iter_next_harness2.c":28:34))
  %v272 = sea.mem.reset_modified %v100[%v271] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/hash_iter_next2/aws_hash_iter_next_harness2.c":28:3)
  sea.br ^bb85
^bb85:
  sea.br ^bb86
^bb86:
  sea.br ^bb87
^bb87:
  %v273 = sea.load %v270[%v4] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_197"("aws-c-common/source/hash_table.c":788:49))
  sea.br ^bb88
^bb88:
  %v274 = sea.const 1 : i64 loc(".02.i.i1"("aws-c-common/source/hash_table.c":791:0))
  %v275 = sea.add %v92, %v274 : i64 loc(".02.i.i1"("aws-c-common/source/hash_table.c":791:0))
  %v276 = sea.icmp ult, %v275, %v95 : i64 loc(".not3.i.i.not.not.not.not2.not"("aws-c-common/source/hash_table.c":791:35))
  %v277 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":791:5)
  sea.cond_br %v276, ^bb89, ^bb115(%v277 : i1) loc("aws-c-common/source/hash_table.c":791:5)
^bb89:
  %v278 = sea.ptr.index %v273 [%v275] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_198"("aws-c-common/source/hash_table.c":794:20))
  %v279 = sea.const 8 : i64 loc("_199"("aws-c-common/source/hash_table.c":794:20))
  %v280 = sea.ptr.dereferenceable %v278, %v279 : !sea.ptr<64>, i64 loc("_199"("aws-c-common/source/hash_table.c":794:20))
  sea.cond_br %v280, ^bb90, ^bb219(%v272, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb90:
  %v281 = sea.load %v272[%v278] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_201"("aws-c-common/source/hash_table.c":794:20))
  %v282 = sea.const 0 : i64 loc(".not.i.i"("aws-c-common/source/hash_table.c":794:13))
  %v283 = sea.icmp eq, %v281, %v282 : i64 loc(".not.i.i"("aws-c-common/source/hash_table.c":794:13))
  sea.cond_br %v283, ^bb91, ^bb112(%v275 : i64) loc("aws-c-common/source/hash_table.c":794:13)
^bb91:
  %v284 = sea.const 2 : i64 loc(".02.i.i.1"("aws-c-common/source/hash_table.c":791:0))
  %v285 = sea.add %v92, %v284 : i64 loc(".02.i.i.1"("aws-c-common/source/hash_table.c":791:0))
  %v286 = sea.icmp ult, %v285, %v95 : i64 loc(".not3.i.i.not.not.not.not.1.not"("aws-c-common/source/hash_table.c":791:35))
  %v287 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":791:5)
  sea.cond_br %v286, ^bb92, ^bb115(%v287 : i1) loc("aws-c-common/source/hash_table.c":791:5)
^bb92:
  %v288 = sea.ptr.index %v273 [%v285] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_203"("aws-c-common/source/hash_table.c":794:20))
  %v289 = sea.const 8 : i64 loc("_204"("aws-c-common/source/hash_table.c":794:20))
  %v290 = sea.ptr.dereferenceable %v288, %v289 : !sea.ptr<64>, i64 loc("_204"("aws-c-common/source/hash_table.c":794:20))
  sea.cond_br %v290, ^bb93, ^bb219(%v272, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb93:
  %v291 = sea.load %v272[%v288] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_206"("aws-c-common/source/hash_table.c":794:20))
  %v292 = sea.const 0 : i64 loc(".not.i.i.1"("aws-c-common/source/hash_table.c":794:13))
  %v293 = sea.icmp eq, %v291, %v292 : i64 loc(".not.i.i.1"("aws-c-common/source/hash_table.c":794:13))
  sea.cond_br %v293, ^bb94, ^bb112(%v285 : i64) loc("aws-c-common/source/hash_table.c":794:13)
^bb94:
  %v294 = sea.const 3 : i64 loc(".02.i.i.2"("aws-c-common/source/hash_table.c":791:0))
  %v295 = sea.add %v92, %v294 : i64 loc(".02.i.i.2"("aws-c-common/source/hash_table.c":791:0))
  %v296 = sea.icmp ult, %v295, %v95 : i64 loc(".not3.i.i.not.not.not.not.2.not"("aws-c-common/source/hash_table.c":791:35))
  %v297 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":791:5)
  sea.cond_br %v296, ^bb95, ^bb115(%v297 : i1) loc("aws-c-common/source/hash_table.c":791:5)
^bb95:
  %v298 = sea.ptr.index %v273 [%v295] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_208"("aws-c-common/source/hash_table.c":794:20))
  %v299 = sea.const 8 : i64 loc("_209"("aws-c-common/source/hash_table.c":794:20))
  %v300 = sea.ptr.dereferenceable %v298, %v299 : !sea.ptr<64>, i64 loc("_209"("aws-c-common/source/hash_table.c":794:20))
  sea.cond_br %v300, ^bb96, ^bb219(%v272, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb96:
  %v301 = sea.load %v272[%v298] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_211"("aws-c-common/source/hash_table.c":794:20))
  %v302 = sea.const 0 : i64 loc(".not.i.i.2"("aws-c-common/source/hash_table.c":794:13))
  %v303 = sea.icmp eq, %v301, %v302 : i64 loc(".not.i.i.2"("aws-c-common/source/hash_table.c":794:13))
  sea.cond_br %v303, ^bb97, ^bb112(%v295 : i64) loc("aws-c-common/source/hash_table.c":794:13)
^bb97:
  %v304 = sea.const 4 : i64 loc(".02.i.i.3"("aws-c-common/source/hash_table.c":791:0))
  %v305 = sea.add %v92, %v304 : i64 loc(".02.i.i.3"("aws-c-common/source/hash_table.c":791:0))
  %v306 = sea.icmp ult, %v305, %v95 : i64 loc(".not3.i.i.not.not.not.not.3.not"("aws-c-common/source/hash_table.c":791:35))
  %v307 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":791:5)
  sea.cond_br %v306, ^bb98, ^bb115(%v307 : i1) loc("aws-c-common/source/hash_table.c":791:5)
^bb98:
  %v308 = sea.ptr.index %v273 [%v305] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_213"("aws-c-common/source/hash_table.c":794:20))
  %v309 = sea.const 8 : i64 loc("_214"("aws-c-common/source/hash_table.c":794:20))
  %v310 = sea.ptr.dereferenceable %v308, %v309 : !sea.ptr<64>, i64 loc("_214"("aws-c-common/source/hash_table.c":794:20))
  sea.cond_br %v310, ^bb99, ^bb219(%v272, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb99:
  %v311 = sea.load %v272[%v308] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_216"("aws-c-common/source/hash_table.c":794:20))
  %v312 = sea.const 0 : i64 loc(".not.i.i.3"("aws-c-common/source/hash_table.c":794:13))
  %v313 = sea.icmp eq, %v311, %v312 : i64 loc(".not.i.i.3"("aws-c-common/source/hash_table.c":794:13))
  sea.cond_br %v313, ^bb100, ^bb112(%v305 : i64) loc("aws-c-common/source/hash_table.c":794:13)
^bb100:
  %v314 = sea.const 5 : i64 loc(".02.i.i.4"("aws-c-common/source/hash_table.c":791:0))
  %v315 = sea.add %v92, %v314 : i64 loc(".02.i.i.4"("aws-c-common/source/hash_table.c":791:0))
  %v316 = sea.icmp ult, %v315, %v95 : i64 loc(".not3.i.i.not.not.not.not.4.not"("aws-c-common/source/hash_table.c":791:35))
  %v317 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":791:5)
  sea.cond_br %v316, ^bb101, ^bb115(%v317 : i1) loc("aws-c-common/source/hash_table.c":791:5)
^bb101:
  %v318 = sea.ptr.index %v273 [%v315] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_218"("aws-c-common/source/hash_table.c":794:20))
  %v319 = sea.const 8 : i64 loc("_219"("aws-c-common/source/hash_table.c":794:20))
  %v320 = sea.ptr.dereferenceable %v318, %v319 : !sea.ptr<64>, i64 loc("_219"("aws-c-common/source/hash_table.c":794:20))
  sea.cond_br %v320, ^bb102, ^bb219(%v272, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb102:
  %v321 = sea.load %v272[%v318] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_221"("aws-c-common/source/hash_table.c":794:20))
  %v322 = sea.const 0 : i64 loc(".not.i.i.4"("aws-c-common/source/hash_table.c":794:13))
  %v323 = sea.icmp eq, %v321, %v322 : i64 loc(".not.i.i.4"("aws-c-common/source/hash_table.c":794:13))
  sea.cond_br %v323, ^bb103, ^bb112(%v315 : i64) loc("aws-c-common/source/hash_table.c":794:13)
^bb103:
  %v324 = sea.const 6 : i64 loc(".02.i.i.5"("aws-c-common/source/hash_table.c":791:0))
  %v325 = sea.add %v92, %v324 : i64 loc(".02.i.i.5"("aws-c-common/source/hash_table.c":791:0))
  %v326 = sea.icmp ult, %v325, %v95 : i64 loc(".not3.i.i.not.not.not.not.5.not"("aws-c-common/source/hash_table.c":791:35))
  %v327 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":791:5)
  sea.cond_br %v326, ^bb104, ^bb115(%v327 : i1) loc("aws-c-common/source/hash_table.c":791:5)
^bb104:
  %v328 = sea.ptr.index %v273 [%v325] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_223"("aws-c-common/source/hash_table.c":794:20))
  %v329 = sea.const 8 : i64 loc("_224"("aws-c-common/source/hash_table.c":794:20))
  %v330 = sea.ptr.dereferenceable %v328, %v329 : !sea.ptr<64>, i64 loc("_224"("aws-c-common/source/hash_table.c":794:20))
  sea.cond_br %v330, ^bb105, ^bb219(%v272, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb105:
  %v331 = sea.load %v272[%v328] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_226"("aws-c-common/source/hash_table.c":794:20))
  %v332 = sea.const 0 : i64 loc(".not.i.i.5"("aws-c-common/source/hash_table.c":794:13))
  %v333 = sea.icmp eq, %v331, %v332 : i64 loc(".not.i.i.5"("aws-c-common/source/hash_table.c":794:13))
  sea.cond_br %v333, ^bb106, ^bb112(%v325 : i64) loc("aws-c-common/source/hash_table.c":794:13)
^bb106:
  %v334 = sea.const 7 : i64 loc(".02.i.i.6"("aws-c-common/source/hash_table.c":791:0))
  %v335 = sea.add %v92, %v334 : i64 loc(".02.i.i.6"("aws-c-common/source/hash_table.c":791:0))
  %v336 = sea.icmp ult, %v335, %v95 : i64 loc(".not3.i.i.not.not.not.not.6.not"("aws-c-common/source/hash_table.c":791:35))
  %v337 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":791:5)
  sea.cond_br %v336, ^bb107, ^bb115(%v337 : i1) loc("aws-c-common/source/hash_table.c":791:5)
^bb107:
  %v338 = sea.ptr.index %v273 [%v335] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_228"("aws-c-common/source/hash_table.c":794:20))
  %v339 = sea.const 8 : i64 loc("_229"("aws-c-common/source/hash_table.c":794:20))
  %v340 = sea.ptr.dereferenceable %v338, %v339 : !sea.ptr<64>, i64 loc("_229"("aws-c-common/source/hash_table.c":794:20))
  sea.cond_br %v340, ^bb108, ^bb219(%v272, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb108:
  %v341 = sea.load %v272[%v338] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_231"("aws-c-common/source/hash_table.c":794:20))
  %v342 = sea.const 0 : i64 loc(".not.i.i.6"("aws-c-common/source/hash_table.c":794:13))
  %v343 = sea.icmp eq, %v341, %v342 : i64 loc(".not.i.i.6"("aws-c-common/source/hash_table.c":794:13))
  sea.cond_br %v343, ^bb109, ^bb112(%v335 : i64) loc("aws-c-common/source/hash_table.c":794:13)
^bb109:
  %v344 = sea.const 8 : i64 loc(".02.i.i.7"("aws-c-common/source/hash_table.c":791:0))
  %v345 = sea.add %v92, %v344 : i64 loc(".02.i.i.7"("aws-c-common/source/hash_table.c":791:0))
  %v346 = sea.icmp ult, %v345, %v95 : i64 loc(".not3.i.i.not.not.not.not.7.not"("aws-c-common/source/hash_table.c":791:35))
  %v347 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":791:5)
  sea.cond_br %v346, ^bb110, ^bb115(%v347 : i1) loc("aws-c-common/source/hash_table.c":791:5)
^bb110:
  %v348 = sea.ptr.index %v273 [%v345] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_233"("aws-c-common/source/hash_table.c":794:20))
  %v349 = sea.const 8 : i64 loc("_234"("aws-c-common/source/hash_table.c":794:20))
  %v350 = sea.ptr.dereferenceable %v348, %v349 : !sea.ptr<64>, i64 loc("_234"("aws-c-common/source/hash_table.c":794:20))
  sea.cond_br %v350, ^bb111, ^bb219(%v272, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb111:
  %v351 = sea.load %v272[%v348] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_236"("aws-c-common/source/hash_table.c":794:20))
  %v352 = sea.const 0 : i64 loc(".not.i.i.7"("aws-c-common/source/hash_table.c":794:13))
  %v353 = sea.icmp eq, %v351, %v352 : i64 loc(".not.i.i.7"("aws-c-common/source/hash_table.c":794:13))
  sea.cond_br %v353, ^bb114, ^bb112(%v345 : i64) loc("aws-c-common/source/hash_table.c":794:13)
^bb112(%v354 : i64):
  %v355 = sea.ptr.index %v273 [%v354] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_238")
  %v356 = sea.const 16 : i64 loc("aws-c-common/source/hash_table.c":795:36)
  %v357 = sea.memmove %v272[%v87], %v83[%v355], %v356 inplace align 8 src_align 8 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/source/hash_table.c":795:36)
  sea.br ^bb113
^bb113:
  %v358 = sea.store %v357[%v93], %v354 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/hash_table.c":796:24)
  %v359 = sea.const 0 : i1
  %v360 = sea.const 2 : i32
  sea.br ^bb120(%v358, %v359, %v354, %v360 : !sea.mem<!sea.ptr<64>, i8>, i1, i64, i32)
^bb114:
  %v361 = sea.const 9 : i64 loc(".02.i.i"("aws-c-common/source/hash_table.c":791:0))
  %v362 = sea.add %v92, %v361 : i64 loc(".02.i.i"("aws-c-common/source/hash_table.c":791:0))
  %v363 = sea.icmp uge, %v362, %v95 : i64 loc(".not3.i.i.not.not.not.not"("aws-c-common/source/hash_table.c":791:35))
  sea.assume %v363
  sea.br ^bb115(%v363 : i1) loc("aws-c-common/source/hash_table.c":791:5)
^bb115(%v364 : i1):
  sea.br ^bb116
^bb116:
  %v365 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":801:23)
  %v366 = sea.store %v272[%v87], %v365 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":801:23)
  sea.br ^bb117
^bb117:
  %v367 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":802:25)
  %v368 = sea.store %v366[%v90], %v367 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":802:25)
  sea.br ^bb118
^bb118:
  sea.br ^bb119
^bb119:
  %v369 = sea.store %v368[%v93], %v95 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/hash_table.c":803:16)
  %v370 = sea.const 0 : i32
  sea.br ^bb120(%v369, %v364, %v95, %v370 : !sea.mem<!sea.ptr<64>, i8>, i1, i64, i32)
^bb120(%v371 : !sea.mem<!sea.ptr<64>, i8>, %v372 : i1, %v373 : i64, %v374 : i32):
  %v375 = sea.store %v371[%v99], %v374 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("aws-c-common/source/hash_table.c":0:0)
  sea.br ^bb121
^bb121:
  sea.br ^bb122
^bb122:
  sea.br ^bb123
^bb123:
  %v376 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i.i"("aws-c-common/source/hash_table.c":1027:19))
  %v377 = sea.ptr.cmp ne, %v273, %v376 : !sea.ptr<64> loc(".not1.i.i.i"("aws-c-common/source/hash_table.c":1027:19))
  %v378 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1027:31)
  sea.cond_br %v377, ^bb124, ^bb156(%v378 : i1) loc("aws-c-common/source/hash_table.c":1027:31)
^bb124:
  sea.br ^bb125
^bb125:
  %v379 = sea.const 8 : i64 loc("_251"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v380 = sea.ptr.dereferenceable %v273, %v379 : !sea.ptr<64>, i64 loc("_251"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v380, ^bb126, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb126:
  %v381 = sea.load %v375[%v273] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_253"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v382 = sea.ptr.null : !sea.ptr<64> loc("_254"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v383 = sea.ptr.cmp ne, %v381, %v382 : !sea.ptr<64> loc("_254"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v384 = sea.ptr.index %v273 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_255"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v385 = sea.const 8 : i64 loc("_256"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v386 = sea.ptr.dereferenceable %v384, %v385 : !sea.ptr<64>, i64 loc("_256"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v386, ^bb127, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb127:
  %v387 = sea.load %v375[%v384] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_258"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v388 = sea.ptr.null : !sea.ptr<64> loc("_259"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v389 = sea.ptr.cmp ne, %v387, %v388 : !sea.ptr<64> loc("_259"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v390 = sea.ptr.index %v273 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_260"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v391 = sea.const 8 : i64 loc("_261"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v392 = sea.ptr.dereferenceable %v390, %v391 : !sea.ptr<64>, i64 loc("_261"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v392, ^bb128, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb128:
  %v393 = sea.load %v375[%v390] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_263"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v394 = sea.ptr.null : !sea.ptr<64> loc("_264"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v395 = sea.ptr.cmp ne, %v393, %v394 : !sea.ptr<64> loc("_264"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v396 = sea.ptr.index %v273 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_265"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v397 = sea.const 8 : i64 loc("_266"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v398 = sea.ptr.dereferenceable %v396, %v397 : !sea.ptr<64>, i64 loc("_266"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v398, ^bb129, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb129:
  %v399 = sea.load %v375[%v396] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_268"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v400 = sea.const 1 : i64 loc("_269"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v401 = sea.icmp ugt, %v399, %v400 : i64 loc("_269"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v402 = sea.const 8 : i64 loc("_270"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v403 = sea.ptr.dereferenceable %v396, %v402 : !sea.ptr<64>, i64 loc("_270"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v403, ^bb130, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb130:
  %v404 = sea.ctpop %v399 : i64 loc("_272"("aws-c-common/include/aws/common/math.inl":161:14))
  %v405 = sea.const 1 : i64 loc("_273"("aws-c-common/include/aws/common/math.inl":161:14))
  %v406 = sea.icmp eq, %v404, %v405 : i64 loc("_273"("aws-c-common/include/aws/common/math.inl":161:14))
  %v407 = sea.ptr.index %v273 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_274"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v408 = sea.const 8 : i64 loc("_275"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v409 = sea.ptr.dereferenceable %v407, %v408 : !sea.ptr<64>, i64 loc("_275"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v409, ^bb131, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb131:
  %v410 = sea.load %v375[%v407] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_277"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v411 = sea.ptr.index %v273 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_278"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v412 = sea.const 8 : i64 loc("_279"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v413 = sea.ptr.dereferenceable %v411, %v412 : !sea.ptr<64>, i64 loc("_279"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v413, ^bb132, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb132:
  %v414 = sea.load %v375[%v411] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_281"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v415 = sea.icmp ule, %v410, %v414 : i64 loc("_282"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v416 = sea.const 8 : i64 loc("_283"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v417 = sea.ptr.dereferenceable %v411, %v416 : !sea.ptr<64>, i64 loc("_283"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v417, ^bb133, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb133:
  %v418 = sea.const 8 : i64 loc("_285"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v419 = sea.ptr.dereferenceable %v396, %v418 : !sea.ptr<64>, i64 loc("_285"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v419, ^bb134, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb134:
  %v420 = sea.icmp ult, %v414, %v399 : i64 loc("_287"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v421 = sea.ptr.index %v273 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_288"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v422 = sea.const 8 : i64 loc("_289"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v423 = sea.ptr.dereferenceable %v421, %v422 : !sea.ptr<64>, i64 loc("_289"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v423, ^bb135, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb135:
  %v424 = sea.load %v375[%v421] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_291"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v425 = sea.const 8 : i64 loc("_292"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v426 = sea.ptr.dereferenceable %v396, %v425 : !sea.ptr<64>, i64 loc("_292"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v426, ^bb136, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb136:
  %v427 = sea.const 8 : i64 loc("_294"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v428 = sea.ptr.dereferenceable %v396, %v427 : !sea.ptr<64>, i64 loc("_294"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v428, ^bb137, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb137:
  %v429 = sea.const 18446744073709551615 : i64 loc("_295"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v430 = sea.add %v399, %v429 : i64 loc("_295"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v431 = sea.icmp eq, %v424, %v430 : i64 loc("_296"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
  %v432 = sea.const 0 : i1 loc("or.cond.i48.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v433 = sea.select %v383, %v389, %v432 : i1 loc("or.cond.i48.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v434 = sea.const 0 : i1 loc("or.cond3.i49.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v435 = sea.select %v433, %v395, %v434 : i1 loc("or.cond3.i49.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v436 = sea.const 0 : i1 loc("or.cond5.i50.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v437 = sea.select %v435, %v401, %v436 : i1 loc("or.cond5.i50.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v438 = sea.const 0 : i1 loc("or.cond7.i51.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v439 = sea.select %v437, %v406, %v438 : i1 loc("or.cond7.i51.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v440 = sea.const 0 : i1 loc("or.cond9.i52.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v441 = sea.select %v439, %v415, %v440 : i1 loc("or.cond9.i52.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v442 = sea.const 0 : i1 loc("or.cond11.i53.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v443 = sea.select %v441, %v420, %v442 : i1 loc("or.cond11.i53.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v444 = sea.const 0 : i1 loc("or.cond13.i54.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v445 = sea.select %v443, %v431, %v444 : i1 loc("or.cond13.i54.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v446 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1065:9)
  sea.cond_br %v445, ^bb138, ^bb156(%v446 : i1) loc("aws-c-common/source/hash_table.c":1065:9)
^bb138:
  sea.br ^bb139
^bb139:
  sea.br ^bb140
^bb140:
  sea.br ^bb141
^bb141:
  %v447 = sea.const 8 : i64 loc("_301"("aws-c-common/source/hash_table.c":1068:42))
  %v448 = sea.ptr.dereferenceable %v396, %v447 : !sea.ptr<64>, i64 loc("_301"("aws-c-common/source/hash_table.c":1068:42))
  sea.cond_br %v448, ^bb142, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb142:
  %v449 = sea.icmp ugt, %v95, %v399 : i64 loc("_303"("aws-c-common/source/hash_table.c":1068:21))
  %v450 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1068:9)
  sea.cond_br %v449, ^bb156(%v450 : i1), ^bb143 loc("aws-c-common/source/hash_table.c":1068:9)
^bb143:
  sea.br ^bb144
^bb144:
  sea.cond_br %v372, ^bb153, ^bb145
^bb145:
  sea.br ^bb146
^bb146:
  sea.br ^bb147
^bb147:
  %v451 = sea.icmp ult, %v373, %v95 : i64 loc("_310"("aws-c-common/source/hash_table.c":1082:31))
  %v452 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1082:45)
  sea.cond_br %v451, ^bb148, ^bb156(%v452 : i1) loc("aws-c-common/source/hash_table.c":1082:45)
^bb148:
  sea.br ^bb149
^bb149:
  sea.br ^bb150
^bb150:
  sea.br ^bb151
^bb151:
  %v453 = sea.ptr.index %v273 [%v373] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_315"("aws-c-common/source/hash_table.c":1082:85))
  %v454 = sea.const 8 : i64 loc("_316"("aws-c-common/source/hash_table.c":1082:85))
  %v455 = sea.ptr.dereferenceable %v453, %v454 : !sea.ptr<64>, i64 loc("_316"("aws-c-common/source/hash_table.c":1082:85))
  sea.cond_br %v455, ^bb152, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb152:
  %v456 = sea.load %v375[%v453] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_318"("aws-c-common/source/hash_table.c":1082:85))
  %v457 = sea.const 0 : i64 loc("_319"("aws-c-common/source/hash_table.c":1082:95))
  %v458 = sea.icmp ne, %v456, %v457 : i64 loc("_319"("aws-c-common/source/hash_table.c":1082:95))
  sea.br ^bb156(%v458 : i1)
^bb153:
  sea.br ^bb154
^bb154:
  sea.br ^bb155
^bb155:
  %v459 = sea.icmp eq, %v373, %v95 : i64 loc("_307"("aws-c-common/source/hash_table.c":1075:31))
  sea.br ^bb156(%v459 : i1) loc("aws-c-common/source/hash_table.c":1075:13)
^bb156(%v460 : i1):
  sea.br ^bb157
^bb157:
  sea.br ^bb158
^bb158:
  %v461 = sea.const 1 : i1 loc("brmerge.not")
  %v462 = sea.and %v377, %v461 : i1 loc("brmerge.not")
  sea.cond_br %v462, ^bb159, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb159:
  sea.br ^bb160
^bb160:
  %v463 = sea.const 8 : i64 loc("_324"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v464 = sea.ptr.dereferenceable %v273, %v463 : !sea.ptr<64>, i64 loc("_324"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v464, ^bb161, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb161:
  %v465 = sea.load %v375[%v273] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_326"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v466 = sea.ptr.null : !sea.ptr<64> loc("_327"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v467 = sea.ptr.cmp ne, %v465, %v466 : !sea.ptr<64> loc("_327"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v468 = sea.ptr.index %v273 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_328"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v469 = sea.const 8 : i64 loc("_329"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v470 = sea.ptr.dereferenceable %v468, %v469 : !sea.ptr<64>, i64 loc("_329"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v470, ^bb162, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb162:
  %v471 = sea.load %v375[%v468] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_331"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v472 = sea.ptr.null : !sea.ptr<64> loc("_332"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v473 = sea.ptr.cmp ne, %v471, %v472 : !sea.ptr<64> loc("_332"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v474 = sea.ptr.index %v273 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_333"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v475 = sea.const 8 : i64 loc("_334"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v476 = sea.ptr.dereferenceable %v474, %v475 : !sea.ptr<64>, i64 loc("_334"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v476, ^bb163, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb163:
  %v477 = sea.load %v375[%v474] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_336"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v478 = sea.ptr.null : !sea.ptr<64> loc("_337"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v479 = sea.ptr.cmp ne, %v477, %v478 : !sea.ptr<64> loc("_337"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v480 = sea.ptr.index %v273 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_338"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v481 = sea.const 8 : i64 loc("_339"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v482 = sea.ptr.dereferenceable %v480, %v481 : !sea.ptr<64>, i64 loc("_339"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v482, ^bb164, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb164:
  %v483 = sea.load %v375[%v480] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_341"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v484 = sea.const 1 : i64 loc("_342"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v485 = sea.icmp ugt, %v483, %v484 : i64 loc("_342"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v486 = sea.const 8 : i64 loc("_343"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v487 = sea.ptr.dereferenceable %v480, %v486 : !sea.ptr<64>, i64 loc("_343"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v487, ^bb165, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb165:
  %v488 = sea.ctpop %v483 : i64 loc("_345"("aws-c-common/include/aws/common/math.inl":161:14))
  %v489 = sea.const 1 : i64 loc("_346"("aws-c-common/include/aws/common/math.inl":161:14))
  %v490 = sea.icmp eq, %v488, %v489 : i64 loc("_346"("aws-c-common/include/aws/common/math.inl":161:14))
  %v491 = sea.ptr.index %v273 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_347"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v492 = sea.const 8 : i64 loc("_348"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v493 = sea.ptr.dereferenceable %v491, %v492 : !sea.ptr<64>, i64 loc("_348"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v493, ^bb166, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb166:
  %v494 = sea.load %v375[%v491] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_350"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v495 = sea.ptr.index %v273 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_351"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v496 = sea.const 8 : i64 loc("_352"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v497 = sea.ptr.dereferenceable %v495, %v496 : !sea.ptr<64>, i64 loc("_352"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v497, ^bb167, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb167:
  %v498 = sea.load %v375[%v495] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_354"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v499 = sea.icmp ule, %v494, %v498 : i64 loc("_355"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v500 = sea.const 8 : i64 loc("_356"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v501 = sea.ptr.dereferenceable %v495, %v500 : !sea.ptr<64>, i64 loc("_356"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v501, ^bb168, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb168:
  %v502 = sea.const 8 : i64 loc("_358"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v503 = sea.ptr.dereferenceable %v480, %v502 : !sea.ptr<64>, i64 loc("_358"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v503, ^bb169, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb169:
  %v504 = sea.icmp ult, %v498, %v483 : i64 loc("_360"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v505 = sea.ptr.index %v273 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_361"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v506 = sea.const 8 : i64 loc("_362"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v507 = sea.ptr.dereferenceable %v505, %v506 : !sea.ptr<64>, i64 loc("_362"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v507, ^bb170, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb170:
  %v508 = sea.load %v375[%v505] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_364"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v509 = sea.const 8 : i64 loc("_365"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v510 = sea.ptr.dereferenceable %v480, %v509 : !sea.ptr<64>, i64 loc("_365"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v510, ^bb171, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb171:
  %v511 = sea.const 8 : i64 loc("_367"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v512 = sea.ptr.dereferenceable %v480, %v511 : !sea.ptr<64>, i64 loc("_367"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v512, ^bb172, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb172:
  %v513 = sea.const 18446744073709551615 : i64 loc("_368"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v514 = sea.add %v483, %v513 : i64 loc("_368"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v515 = sea.icmp eq, %v508, %v514 : i64 loc("_369"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
  %v516 = sea.const 0 : i1 loc("or.cond.i37.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v517 = sea.select %v467, %v473, %v516 : i1 loc("or.cond.i37.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v518 = sea.const 0 : i1 loc("or.cond3.i38.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v519 = sea.select %v517, %v479, %v518 : i1 loc("or.cond3.i38.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v520 = sea.const 0 : i1 loc("or.cond5.i39.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v521 = sea.select %v519, %v485, %v520 : i1 loc("or.cond5.i39.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v522 = sea.const 0 : i1 loc("or.cond7.i40.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v523 = sea.select %v521, %v490, %v522 : i1 loc("or.cond7.i40.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v524 = sea.const 0 : i1 loc("or.cond9.i41.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v525 = sea.select %v523, %v499, %v524 : i1 loc("or.cond9.i41.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v526 = sea.const 0 : i1 loc("or.cond11.i42.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v527 = sea.select %v525, %v504, %v526 : i1 loc("or.cond11.i42.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v528 = sea.const 0 : i1 loc("or.cond13.i43.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v529 = sea.select %v527, %v515, %v528 : i1 loc("or.cond13.i43.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.cond_br %v529, ^bb173, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/hash_table.c":1065:9)
^bb173:
  sea.br ^bb174
^bb174:
  sea.br ^bb175
^bb175:
  sea.br ^bb176
^bb176:
  %v530 = sea.const 8 : i64 loc("_374"("aws-c-common/source/hash_table.c":1068:42))
  %v531 = sea.ptr.dereferenceable %v480, %v530 : !sea.ptr<64>, i64 loc("_374"("aws-c-common/source/hash_table.c":1068:42))
  %v532 = sea.icmp ule, %v95, %v483 : i64 loc("_375")
  %v533 = sea.const 0 : i1 loc("or.cond23.not")
  %v534 = sea.select %v531, %v532, %v533 : i1 loc("or.cond23.not")
  sea.cond_br %v534, ^bb177, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb177:
  sea.br ^bb178
^bb178:
  sea.cond_br %v372, ^bb186, ^bb179
^bb179:
  sea.br ^bb180
^bb180:
  %v535 = sea.icmp ult, %v373, %v95 : i64 loc("_380")
  %v536 = sea.const 1 : i1 loc("or.cond19")
  %v537 = sea.const 0 : i1 loc("or.cond19")
  %v538 = sea.select %v536, %v535, %v537 : i1 loc("or.cond19")
  sea.cond_br %v538, ^bb181, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb181:
  sea.br ^bb182
^bb182:
  sea.br ^bb183
^bb183:
  sea.br ^bb184
^bb184:
  %v539 = sea.ptr.index %v273 [%v373] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_385"("aws-c-common/source/hash_table.c":1082:85))
  %v540 = sea.const 8 : i64 loc("_386"("aws-c-common/source/hash_table.c":1082:85))
  %v541 = sea.ptr.dereferenceable %v539, %v540 : !sea.ptr<64>, i64 loc("_386"("aws-c-common/source/hash_table.c":1082:85))
  sea.cond_br %v541, ^bb185, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb185:
  %v542 = sea.load %v375[%v539] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_387"("aws-c-common/source/hash_table.c":1082:85))
  %v543 = sea.const 0 : i64 loc(".not"("aws-c-common/source/hash_table.c":1082:95))
  %v544 = sea.icmp eq, %v542, %v543 : i64 loc(".not"("aws-c-common/source/hash_table.c":1082:95))
  sea.cond_br %v544, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>), ^bb188 loc("seahorn/jobs2/hash_iter_next2/aws_hash_iter_next_harness2.c":34:3)
^bb186:
  sea.br ^bb187
^bb187:
  %v545 = sea.icmp eq, %v373, %v95 : i64 loc("_378")
  %v546 = sea.const 1 : i1 loc("or.cond24")
  %v547 = sea.const 0 : i1 loc("or.cond24")
  %v548 = sea.select %v546, %v545, %v547 : i1 loc("or.cond24")
  sea.cond_br %v548, ^bb188, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb188:
  %v549 = sea.const 1 : i1 loc("seahorn/jobs2/hash_iter_next2/aws_hash_iter_next_harness2.c":35:3)
  sea.assume %v549 loc("seahorn/jobs2/hash_iter_next2/aws_hash_iter_next_harness2.c":35:3)
  %v550 = sea.const 0 : i32 loc("_388"("seahorn/jobs2/hash_iter_next2/aws_hash_iter_next_harness2.c":37:3))
  %v551 = sea.icmp ne, %v98, %v550 : i32 loc("_388"("seahorn/jobs2/hash_iter_next2/aws_hash_iter_next_harness2.c":37:3))
  %v552 = sea.or %v551, %v372 : i1 loc("_389"("seahorn/jobs2/hash_iter_next2/aws_hash_iter_next_harness2.c":37:3))
  sea.cond_br %v552, ^bb189, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/jobs2/hash_iter_next2/aws_hash_iter_next_harness2.c":37:3)
^bb189:
  sea.br ^bb190
^bb190:
  sea.br ^bb191
^bb191:
  %v553 = sea.const 8 : i64 loc("_393"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v554 = sea.ptr.dereferenceable %v273, %v553 : !sea.ptr<64>, i64 loc("_393"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v554, ^bb192, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb192:
  %v555 = sea.const 8 : i64 loc("_395"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v556 = sea.ptr.dereferenceable %v468, %v555 : !sea.ptr<64>, i64 loc("_395"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v556, ^bb193, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb193:
  %v557 = sea.const 8 : i64 loc("_397"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v558 = sea.ptr.dereferenceable %v474, %v557 : !sea.ptr<64>, i64 loc("_397"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v558, ^bb194, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb194:
  %v559 = sea.const 8 : i64 loc("_399"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v560 = sea.ptr.dereferenceable %v480, %v559 : !sea.ptr<64>, i64 loc("_399"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v560, ^bb195, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb195:
  %v561 = sea.const 8 : i64 loc("_401"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v562 = sea.ptr.dereferenceable %v480, %v561 : !sea.ptr<64>, i64 loc("_401"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v562, ^bb196, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb196:
  %v563 = sea.const 8 : i64 loc("_403"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v564 = sea.ptr.dereferenceable %v491, %v563 : !sea.ptr<64>, i64 loc("_403"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v564, ^bb197, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb197:
  %v565 = sea.const 8 : i64 loc("_405"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v566 = sea.ptr.dereferenceable %v495, %v565 : !sea.ptr<64>, i64 loc("_405"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v566, ^bb198, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb198:
  %v567 = sea.const 8 : i64 loc("_407"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v568 = sea.ptr.dereferenceable %v495, %v567 : !sea.ptr<64>, i64 loc("_407"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v568, ^bb199, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb199:
  %v569 = sea.const 8 : i64 loc("_409"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v570 = sea.ptr.dereferenceable %v480, %v569 : !sea.ptr<64>, i64 loc("_409"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v570, ^bb200, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb200:
  %v571 = sea.const 8 : i64 loc("_411"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v572 = sea.ptr.dereferenceable %v505, %v571 : !sea.ptr<64>, i64 loc("_411"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v572, ^bb201, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb201:
  %v573 = sea.const 8 : i64 loc("_413"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v574 = sea.ptr.dereferenceable %v480, %v573 : !sea.ptr<64>, i64 loc("_413"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v574, ^bb202, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb202:
  %v575 = sea.const 8 : i64 loc("_415"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v576 = sea.ptr.dereferenceable %v480, %v575 : !sea.ptr<64>, i64 loc("_415"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v576, ^bb203, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb203:
  sea.br ^bb204
^bb204:
  sea.br ^bb205
^bb205:
  %v577 = sea.const 8 : i64 loc("_418"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v578 = sea.ptr.dereferenceable %v273, %v577 : !sea.ptr<64>, i64 loc("_418"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v578, ^bb206, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb206:
  %v579 = sea.const 8 : i64 loc("_420"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v580 = sea.ptr.dereferenceable %v468, %v579 : !sea.ptr<64>, i64 loc("_420"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v580, ^bb207, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb207:
  %v581 = sea.const 8 : i64 loc("_422"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v582 = sea.ptr.dereferenceable %v474, %v581 : !sea.ptr<64>, i64 loc("_422"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v582, ^bb208, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb208:
  %v583 = sea.const 8 : i64 loc("_424"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v584 = sea.ptr.dereferenceable %v480, %v583 : !sea.ptr<64>, i64 loc("_424"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v584, ^bb209, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb209:
  %v585 = sea.const 8 : i64 loc("_426"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v586 = sea.ptr.dereferenceable %v480, %v585 : !sea.ptr<64>, i64 loc("_426"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v586, ^bb210, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb210:
  %v587 = sea.const 8 : i64 loc("_428"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v588 = sea.ptr.dereferenceable %v491, %v587 : !sea.ptr<64>, i64 loc("_428"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v588, ^bb211, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb211:
  %v589 = sea.const 8 : i64 loc("_430"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v590 = sea.ptr.dereferenceable %v495, %v589 : !sea.ptr<64>, i64 loc("_430"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v590, ^bb212, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb212:
  %v591 = sea.const 8 : i64 loc("_432"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v592 = sea.ptr.dereferenceable %v495, %v591 : !sea.ptr<64>, i64 loc("_432"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v592, ^bb213, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb213:
  %v593 = sea.const 8 : i64 loc("_434"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v594 = sea.ptr.dereferenceable %v480, %v593 : !sea.ptr<64>, i64 loc("_434"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v594, ^bb214, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb214:
  %v595 = sea.const 8 : i64 loc("_436"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v596 = sea.ptr.dereferenceable %v505, %v595 : !sea.ptr<64>, i64 loc("_436"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v596, ^bb215, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb215:
  %v597 = sea.const 8 : i64 loc("_438"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v598 = sea.ptr.dereferenceable %v480, %v597 : !sea.ptr<64>, i64 loc("_438"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v598, ^bb216, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb216:
  %v599 = sea.const 8 : i64 loc("_440"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v600 = sea.ptr.dereferenceable %v480, %v599 : !sea.ptr<64>, i64 loc("_440"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v600, ^bb217, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb217:
  %v601 = sea.mem.is_modified %v375[%v273] : !sea.mem<!sea.ptr<64>, i8> loc("_441"("seahorn/jobs2/hash_iter_next2/aws_hash_iter_next_harness2.c":40:3))
  %v602 = sea.const 1 : i1 loc("_442"("seahorn/jobs2/hash_iter_next2/aws_hash_iter_next_harness2.c":40:3))
  %v603 = sea.xor %v601, %v602 : i1 loc("_442"("seahorn/jobs2/hash_iter_next2/aws_hash_iter_next_harness2.c":40:3))
  %v604 = sea.mem.is_modified %v375[%v273] : !sea.mem<!sea.ptr<64>, i8> loc("_443"("seahorn/jobs2/hash_iter_next2/aws_hash_iter_next_harness2.c":40:3))
  sea.cond_br %v604, ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>), ^bb218 loc("seahorn/jobs2/hash_iter_next2/aws_hash_iter_next_harness2.c":40:3)
^bb218:
  %v605 = sea.mem.is_modified %v270[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_445"("seahorn/jobs2/hash_iter_next2/aws_hash_iter_next_harness2.c":41:3))
  %v606 = sea.const 1 : i1 loc("_446"("seahorn/jobs2/hash_iter_next2/aws_hash_iter_next_harness2.c":41:3))
  %v607 = sea.xor %v605, %v606 : i1 loc("_446"("seahorn/jobs2/hash_iter_next2/aws_hash_iter_next_harness2.c":41:3))
  %v608 = sea.mem.is_modified %v270[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_447"("seahorn/jobs2/hash_iter_next2/aws_hash_iter_next_harness2.c":41:3))
  sea.assume %v608 loc("seahorn/jobs2/hash_iter_next2/aws_hash_iter_next_harness2.c":41:3)
  sea.br ^bb219(%v375, %v270 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/jobs2/hash_iter_next2/aws_hash_iter_next_harness2.c":41:3)
^bb219(%v609 : !sea.mem<!sea.ptr<64>, i8>, %v610 : !sea.mem<!sea.ptr<64>, i8>):
  sea.br ^bb220
^bb220:
  %v611 = sea.const 0 : i1
  sea.assert %v611
  sea.halt
}
