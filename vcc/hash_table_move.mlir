// Exported from SeaHorn (hash_table_move.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.16" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm20")
  %v1 = sea.mem.nondet "region.24" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm21")
  %v2 = sea.mem.nondet "region.32" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm22")
  %v3 = sea.mem.nondet "region.0" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm23")
  %v4 = sea.mem.nondet "region.41" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm24")
  %v5 = sea.const 8 : i64 loc("_0")
  %v6 = sea.alloca %v5 align 8 [5] : i64 -> !sea.ptr<64> loc("_0")
  %v7 = sea.const 8 : i64 loc("_1")
  %v8 = sea.alloca %v7 align 8 [6] : i64 -> !sea.ptr<64> loc("_1")
  %v9 = sea.const 16 : i64 loc("_2")
  %v10 = sea.alloca %v9 align 8 [7] : i64 -> !sea.ptr<64> loc("_2")
  %v11 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v12 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v13 = sea.store %v3[%v11], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v14 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_3")
  %v15 = sea.ptr.index %v14 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_3")
  %v16 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v17 = sea.store %v13[%v15], %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v18 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_4")
  %v19 = sea.ptr.index %v18 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_4")
  %v20 = sea.const 0 : i8
  %v21 = sea.const 24 : i64
  %v22 = sea.memset %v17[%v19], %v20, %v21 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v23 = sea.nondet "nd_size_t" [8] : i64 loc("_5"("seahorn/lib/hash_table_helper.c":14:24))
  %v24 = sea.const 1 : i1 loc("seahorn/lib/hash_table_helper.c":15:3)
  sea.assume %v24 loc("seahorn/lib/hash_table_helper.c":15:3)
  %v25 = sea.ctpop %v23 : i64 loc("_6"("aws-c-common/include/aws/common/math.inl":161:14))
  %v26 = sea.const 1 : i64 loc("_7"("aws-c-common/include/aws/common/math.inl":161:14))
  %v27 = sea.icmp eq, %v25, %v26 : i64 loc("_7"("aws-c-common/include/aws/common/math.inl":161:14))
  sea.assume %v27 loc("seahorn/lib/hash_table_helper.c":16:3)
  %v28 = sea.nondet "nd_size_t" [9] : i64 loc("_8"("seahorn/lib/hash_table_helper.c":18:27))
  sea.br ^bb1
^bb1:
  %v29 = sea.const 24 : i64 loc("_10"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v30 = sea.mul %v23, %v29 : i64 loc("_10"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v31 = sea.const 24 : i64 loc("_10"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v32 = sea.umulo %v23, %v31 : i64 loc("_10"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v33 = sea.const 4294967295 : i32 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
  sea.cond_br %v32, ^bb6(%v28, %v33 : i64, i32), ^bb2 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb2:
  sea.br ^bb3
^bb3:
  %v34 = sea.const 80 : i64 loc("_14"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v35 = sea.add %v30, %v34 : i64 loc("_14"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v36 = sea.const 80 : i64 loc("_14"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v37 = sea.uaddo %v30, %v36 : i64 loc("_14"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v37, ^bb4, ^bb5 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb4:
  sea.br ^bb5 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":71:9)
^bb5:
  %v38 = sea.sext %v37 : i1 to i32 loc("..i.i.i"("aws-c-common/source/hash_table.c":0:0))
  sea.br ^bb6(%v35, %v38 : i64, i32) loc("aws-c-common/source/hash_table.c":0:0)
^bb6(%v39 : i64, %v40 : i32):
  %v41 = sea.const 0 : i32 loc("_19"("seahorn/lib/hash_table_helper.c":20:72))
  %v42 = sea.icmp eq, %v40, %v41 : i32 loc("_19"("seahorn/lib/hash_table_helper.c":20:72))
  sea.assume %v42 loc("seahorn/lib/hash_table_helper.c":20:3)
  %v43 = sea.const 0 : i64 loc("_20"("seahorn/lib/proof_allocators.c":17:15))
  %v44 = sea.icmp eq, %v39, %v43 : i64 loc("_20"("seahorn/lib/proof_allocators.c":17:15))
  %v45 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v44, ^bb10(%v4, %v45 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb7 loc("seahorn/lib/proof_allocators.c":17:10)
^bb7:
  %v46 = sea.nondet "nd_malloc_is_fail" [10] : i1 loc("_22"("seahorn/lib/sea_allocators.c":11:10))
  %v47 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v46, ^bb9(%v4, %v47 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb8 loc("seahorn/lib/sea_allocators.c":11:10)
^bb8:
  %v48 = sea.const 1 : i64 loc("malloc.i")
  %v49 = sea.mul %v39, %v48 : i64 loc("malloc.i")
  %v50 = sea.alloca %v49 align 16 [11] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb9(%v4, %v50 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb9(%v51 : !sea.mem<!sea.ptr<64>, i8>, %v52 : !sea.ptr<64>):
  %v53 = sea.memhavoc %v51[%v52], %v39 [12] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v54 = sea.ptr.null : !sea.ptr<64> loc("_25"("seahorn/lib/sea_allocators.c":45:10))
  %v55 = sea.ptr.cmp ne, %v52, %v54 : !sea.ptr<64> loc("_25"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v55 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb10(%v53, %v52 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb10(%v56 : !sea.mem<!sea.ptr<64>, i8>, %v57 : !sea.ptr<64>):
  %v58 = sea.ptr.index %v57 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_27"("seahorn/lib/hash_table_helper.c":23:9))
  %v59 = sea.const 8 : i64 loc("_28"("seahorn/lib/hash_table_helper.c":23:14))
  %v60 = sea.ptr.dereferenceable %v58, %v59 : !sea.ptr<64>, i64 loc("_28"("seahorn/lib/hash_table_helper.c":23:14))
  sea.cond_br %v60, ^bb11, ^bb84
^bb11:
  %v61 = sea.store %v56[%v58], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":23:14)
  %v62 = sea.ptr.index %v57 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_30"("seahorn/lib/hash_table_helper.c":24:9))
  %v63 = sea.const 8 : i64 loc("_31"("seahorn/lib/hash_table_helper.c":24:14))
  %v64 = sea.ptr.dereferenceable %v62, %v63 : !sea.ptr<64>, i64 loc("_31"("seahorn/lib/hash_table_helper.c":24:14))
  sea.cond_br %v64, ^bb12, ^bb84
^bb12:
  %v65 = sea.const 18446744073709551615 : i64 loc("_33"("seahorn/lib/hash_table_helper.c":24:28))
  %v66 = sea.add %v23, %v65 : i64 loc("_33"("seahorn/lib/hash_table_helper.c":24:28))
  %v67 = sea.store %v61[%v62], %v66 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":24:14)
  %v68 = sea.ptr.index %v57 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_34"("seahorn/lib/hash_table_helper.c":25:9))
  %v69 = sea.const 8 : i64 loc("_35"("seahorn/lib/hash_table_helper.c":25:25))
  %v70 = sea.ptr.dereferenceable %v68, %v69 : !sea.ptr<64>, i64 loc("_35"("seahorn/lib/hash_table_helper.c":25:25))
  sea.cond_br %v70, ^bb13, ^bb84
^bb13:
  %v71 = sea.const 4606732058837280358 : i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v72 = sea.store %v67[%v68], %v71 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v73 = sea.ptr.index %v57 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_37"("seahorn/lib/hash_table_helper.c":26:9))
  %v74 = sea.const 8 : i64 loc("_38"("seahorn/lib/hash_table_helper.c":26:15))
  %v75 = sea.ptr.dereferenceable %v73, %v74 : !sea.ptr<64>, i64 loc("_38"("seahorn/lib/hash_table_helper.c":26:15))
  sea.cond_br %v75, ^bb14, ^bb84
^bb14:
  %v76 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v77 = sea.store %v72[%v73], %v76 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v78 = sea.const 8 : i64 loc("_40"("seahorn/lib/hash_table_helper.c":27:17))
  %v79 = sea.ptr.dereferenceable %v57, %v78 : !sea.ptr<64>, i64 loc("_40"("seahorn/lib/hash_table_helper.c":27:17))
  sea.cond_br %v79, ^bb15, ^bb84
^bb15:
  %v80 = sea.func_addr @"nd_hash_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v81 = sea.store %v77[%v57], %v80 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v82 = sea.ptr.index %v57 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_42"("seahorn/lib/hash_table_helper.c":28:9))
  %v83 = sea.const 8 : i64 loc("_43"("seahorn/lib/hash_table_helper.c":28:19))
  %v84 = sea.ptr.dereferenceable %v82, %v83 : !sea.ptr<64>, i64 loc("_43"("seahorn/lib/hash_table_helper.c":28:19))
  sea.cond_br %v84, ^bb16, ^bb84
^bb16:
  %v85 = sea.func_addr @"nd_hash_equals_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  %v86 = sea.store %v81[%v82], %v85 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  sea.br ^bb17
^bb17:
  %v87 = sea.store %v1[%v8], %v57 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":37:15)
  sea.br ^bb18
^bb18:
  sea.br ^bb19
^bb19:
  %v88 = sea.const 8 : i64 loc("_47"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v89 = sea.ptr.dereferenceable %v57, %v88 : !sea.ptr<64>, i64 loc("_47"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v89, ^bb20, ^bb84
^bb20:
  %v90 = sea.load %v81[%v57] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_49"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v91 = sea.ptr.null : !sea.ptr<64> loc("_50"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v92 = sea.ptr.cmp ne, %v90, %v91 : !sea.ptr<64> loc("_50"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v93 = sea.const 8 : i64 loc("_51"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v94 = sea.ptr.dereferenceable %v82, %v93 : !sea.ptr<64>, i64 loc("_51"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v94, ^bb21, ^bb84
^bb21:
  %v95 = sea.const 8 : i64 loc("_53"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v96 = sea.ptr.dereferenceable %v73, %v95 : !sea.ptr<64>, i64 loc("_53"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v96, ^bb22, ^bb84
^bb22:
  %v97 = sea.const 8 : i64 loc("_55"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v98 = sea.ptr.dereferenceable %v58, %v97 : !sea.ptr<64>, i64 loc("_55"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v98, ^bb23, ^bb84
^bb23:
  %v99 = sea.const 1 : i64 loc("_57"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v100 = sea.icmp ugt, %v23, %v99 : i64 loc("_57"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v101 = sea.const 8 : i64 loc("_58"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v102 = sea.ptr.dereferenceable %v58, %v101 : !sea.ptr<64>, i64 loc("_58"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v102, ^bb24, ^bb84
^bb24:
  %v103 = sea.ptr.index %v57 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_60"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v104 = sea.const 8 : i64 loc("_61"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v105 = sea.ptr.dereferenceable %v103, %v104 : !sea.ptr<64>, i64 loc("_61"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v105, ^bb25, ^bb84
^bb25:
  %v106 = sea.load %v61[%v103] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_63"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v107 = sea.ptr.index %v57 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_64"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v108 = sea.const 8 : i64 loc("_65"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v109 = sea.ptr.dereferenceable %v107, %v108 : !sea.ptr<64>, i64 loc("_65"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v109, ^bb26, ^bb84
^bb26:
  %v110 = sea.load %v61[%v107] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_67"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v111 = sea.icmp ule, %v106, %v110 : i64 loc("_68"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v112 = sea.const 8 : i64 loc("_69"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v113 = sea.ptr.dereferenceable %v107, %v112 : !sea.ptr<64>, i64 loc("_69"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v113, ^bb27, ^bb84
^bb27:
  %v114 = sea.const 8 : i64 loc("_71"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v115 = sea.ptr.dereferenceable %v58, %v114 : !sea.ptr<64>, i64 loc("_71"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v115, ^bb28, ^bb84
^bb28:
  %v116 = sea.icmp ult, %v110, %v23 : i64 loc("_73"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v117 = sea.const 8 : i64 loc("_74"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v118 = sea.ptr.dereferenceable %v62, %v117 : !sea.ptr<64>, i64 loc("_74"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v118, ^bb29, ^bb84
^bb29:
  %v119 = sea.const 8 : i64 loc("_76"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v120 = sea.ptr.dereferenceable %v58, %v119 : !sea.ptr<64>, i64 loc("_76"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v120, ^bb30, ^bb84
^bb30:
  %v121 = sea.const 8 : i64 loc("_78"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v122 = sea.ptr.dereferenceable %v58, %v121 : !sea.ptr<64>, i64 loc("_78"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v122, ^bb31, ^bb84
^bb31:
  %v123 = sea.const 0 : i1 loc("or.cond5.i40.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v124 = sea.select %v92, %v100, %v123 : i1 loc("or.cond5.i40.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v125 = sea.const 0 : i1 loc("or.cond7.i41.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v126 = sea.select %v124, %v27, %v125 : i1 loc("or.cond7.i41.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v127 = sea.const 0 : i1 loc("or.cond9.i42.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v128 = sea.select %v126, %v111, %v127 : i1 loc("or.cond9.i42.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v129 = sea.const 0 : i1 loc("or.cond11.i43.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v130 = sea.select %v128, %v116, %v129 : i1 loc("or.cond11.i43.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.assume %v130 loc("seahorn/jobs/hash_table_move/aws_hash_table_move_harness.c":17:3)
  sea.br ^bb32
^bb32:
  %v131 = sea.nondet "nd_size_t" [13] : i64 loc("_80"("seahorn/lib/hash_table_helper.c":59:26))
  %v132 = sea.const 8 : i64 loc("_81"("seahorn/lib/hash_table_helper.c":60:49))
  %v133 = sea.ptr.dereferenceable %v58, %v132 : !sea.ptr<64>, i64 loc("_81"("seahorn/lib/hash_table_helper.c":60:49))
  sea.cond_br %v133, ^bb33, ^bb84
^bb33:
  sea.br ^bb34
^bb34:
  %v134 = sea.const 4294967295 : i32 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
  sea.cond_br %v32, ^bb39(%v131, %v134 : i64, i32), ^bb35 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb35:
  sea.br ^bb36
^bb36:
  %v135 = sea.const 80 : i64 loc("_85"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v136 = sea.add %v30, %v135 : i64 loc("_85"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v137 = sea.const 80 : i64 loc("_85"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v138 = sea.uaddo %v30, %v137 : i64 loc("_85"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v138, ^bb37, ^bb38 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb37:
  sea.br ^bb38 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":71:9)
^bb38:
  %v139 = sea.sext %v138 : i1 to i32 loc("..i.i19.i"("aws-c-common/source/hash_table.c":0:0))
  sea.br ^bb39(%v136, %v139 : i64, i32) loc("aws-c-common/source/hash_table.c":0:0)
^bb39(%v140 : i64, %v141 : i32):
  %v142 = sea.const 0 : i32 loc("_90"("seahorn/lib/hash_table_helper.c":60:71))
  %v143 = sea.icmp eq, %v141, %v142 : i32 loc("_90"("seahorn/lib/hash_table_helper.c":60:71))
  sea.assume %v143 loc("seahorn/lib/hash_table_helper.c":60:3)
  %v144 = sea.nondet "nd_size_t" [14] : i64 loc("_91"("seahorn/lib/utils.c":46:20))
  sea.br ^bb40
^bb40:
  %v145 = sea.store %v2[%v10], %v144 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v146 = sea.const 0 : i64 loc(".not8"("seahorn/lib/utils.c":47:12))
  %v147 = sea.icmp eq, %v140, %v146 : i64 loc(".not8"("seahorn/lib/utils.c":47:12))
  sea.cond_br %v147, ^bb46, ^bb41 loc("seahorn/lib/utils.c":47:16)
^bb41:
  sea.br ^bb42
^bb42:
  %v148 = sea.icmp ult, %v144, %v140 : i64 loc("_95"("seahorn/lib/utils.c":48:27))
  sea.assume %v148 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb43
^bb43:
  %v149 = sea.ptr.index %v57 [%v144] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_97"("seahorn/lib/utils.c":49:21))
  %v150 = sea.const 1 : i64 loc("_98"("seahorn/lib/utils.c":49:21))
  %v151 = sea.ptr.dereferenceable %v149, %v150 : !sea.ptr<64>, i64 loc("_98"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v151, ^bb44, ^bb84
^bb44:
  %v152 = sea.load %v86[%v149] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_100"("seahorn/lib/utils.c":49:21))
  %v153 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_101"("seahorn/lib/utils.c":49:14))
  sea.br ^bb45
^bb45:
  %v154 = sea.store %v145[%v153], %v152 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb48(%v152 : i8) loc("seahorn/lib/utils.c":50:3)
^bb46:
  %v155 = sea.nondet "nd_uint8_t" [15] : i8 loc("_104"("seahorn/lib/utils.c":51:21))
  %v156 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_105"("seahorn/lib/utils.c":51:14))
  sea.br ^bb47
^bb47:
  %v157 = sea.store %v145[%v156], %v155 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb48(%v155 : i8)
^bb48(%v158 : i8):
  %v159 = sea.store %v0[%v6], %v57 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":280:11)
  %v160 = sea.const 0 : i64 loc("aws-c-common/source/hash_table.c":281:5)
  %v161 = sea.store %v87[%v8], %v160 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/hash_table.c":281:5)
  sea.br ^bb49
^bb49:
  sea.br ^bb50
^bb50:
  %v162 = sea.const 8 : i64 loc("_110"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v163 = sea.ptr.dereferenceable %v57, %v162 : !sea.ptr<64>, i64 loc("_110"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v163, ^bb51, ^bb84
^bb51:
  %v164 = sea.load %v81[%v57] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_112"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v165 = sea.ptr.null : !sea.ptr<64> loc("_113"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v166 = sea.ptr.cmp ne, %v164, %v165 : !sea.ptr<64> loc("_113"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v167 = sea.const 8 : i64 loc("_114"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v168 = sea.ptr.dereferenceable %v82, %v167 : !sea.ptr<64>, i64 loc("_114"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v168, ^bb52, ^bb84
^bb52:
  %v169 = sea.const 8 : i64 loc("_116"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v170 = sea.ptr.dereferenceable %v73, %v169 : !sea.ptr<64>, i64 loc("_116"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v170, ^bb53, ^bb84
^bb53:
  %v171 = sea.const 8 : i64 loc("_118"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v172 = sea.ptr.dereferenceable %v58, %v171 : !sea.ptr<64>, i64 loc("_118"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v172, ^bb54, ^bb84
^bb54:
  %v173 = sea.const 8 : i64 loc("_120"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v174 = sea.ptr.dereferenceable %v58, %v173 : !sea.ptr<64>, i64 loc("_120"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v174, ^bb55, ^bb84
^bb55:
  %v175 = sea.const 8 : i64 loc("_122"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v176 = sea.ptr.dereferenceable %v103, %v175 : !sea.ptr<64>, i64 loc("_122"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v176, ^bb56, ^bb84
^bb56:
  %v177 = sea.const 8 : i64 loc("_124"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v178 = sea.ptr.dereferenceable %v107, %v177 : !sea.ptr<64>, i64 loc("_124"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v178, ^bb57, ^bb84
^bb57:
  %v179 = sea.const 8 : i64 loc("_126"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v180 = sea.ptr.dereferenceable %v107, %v179 : !sea.ptr<64>, i64 loc("_126"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v180, ^bb58, ^bb84
^bb58:
  %v181 = sea.const 8 : i64 loc("_128"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v182 = sea.ptr.dereferenceable %v58, %v181 : !sea.ptr<64>, i64 loc("_128"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v182, ^bb59, ^bb84
^bb59:
  %v183 = sea.const 8 : i64 loc("_130"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v184 = sea.ptr.dereferenceable %v62, %v183 : !sea.ptr<64>, i64 loc("_130"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v184, ^bb60, ^bb84
^bb60:
  %v185 = sea.const 8 : i64 loc("_132"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v186 = sea.ptr.dereferenceable %v58, %v185 : !sea.ptr<64>, i64 loc("_132"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v186, ^bb61, ^bb84
^bb61:
  %v187 = sea.const 8 : i64 loc("_134"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v188 = sea.ptr.dereferenceable %v58, %v187 : !sea.ptr<64>, i64 loc("_134"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v188, ^bb62, ^bb84
^bb62:
  %v189 = sea.const 0 : i1 loc("or.cond5.i29.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v190 = sea.select %v166, %v100, %v189 : i1 loc("or.cond5.i29.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v191 = sea.const 0 : i1 loc("or.cond7.i30.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v192 = sea.select %v190, %v27, %v191 : i1 loc("or.cond7.i30.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v193 = sea.const 0 : i1 loc("or.cond9.i31.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v194 = sea.select %v192, %v111, %v193 : i1 loc("or.cond9.i31.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v195 = sea.const 0 : i1 loc("or.cond11.i32.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v196 = sea.select %v194, %v116, %v195 : i1 loc("or.cond11.i32.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.br ^bb63
^bb63:
  sea.br ^bb64
^bb64:
  %v197 = sea.const 8 : i64 loc("_137"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v198 = sea.ptr.dereferenceable %v57, %v197 : !sea.ptr<64>, i64 loc("_137"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v198, ^bb65, ^bb84
^bb65:
  %v199 = sea.const 8 : i64 loc("_139"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v200 = sea.ptr.dereferenceable %v82, %v199 : !sea.ptr<64>, i64 loc("_139"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v200, ^bb66, ^bb84
^bb66:
  %v201 = sea.const 8 : i64 loc("_141"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v202 = sea.ptr.dereferenceable %v73, %v201 : !sea.ptr<64>, i64 loc("_141"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v202, ^bb67, ^bb84
^bb67:
  %v203 = sea.const 8 : i64 loc("_143"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v204 = sea.ptr.dereferenceable %v58, %v203 : !sea.ptr<64>, i64 loc("_143"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v204, ^bb68, ^bb84
^bb68:
  %v205 = sea.const 8 : i64 loc("_145"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v206 = sea.ptr.dereferenceable %v58, %v205 : !sea.ptr<64>, i64 loc("_145"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v206, ^bb69, ^bb84
^bb69:
  %v207 = sea.const 8 : i64 loc("_147"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v208 = sea.ptr.dereferenceable %v103, %v207 : !sea.ptr<64>, i64 loc("_147"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v208, ^bb70, ^bb84
^bb70:
  %v209 = sea.const 8 : i64 loc("_149"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v210 = sea.ptr.dereferenceable %v107, %v209 : !sea.ptr<64>, i64 loc("_149"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v210, ^bb71, ^bb84
^bb71:
  %v211 = sea.const 8 : i64 loc("_151"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v212 = sea.ptr.dereferenceable %v107, %v211 : !sea.ptr<64>, i64 loc("_151"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v212, ^bb72, ^bb84
^bb72:
  %v213 = sea.const 8 : i64 loc("_153"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v214 = sea.ptr.dereferenceable %v58, %v213 : !sea.ptr<64>, i64 loc("_153"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v214, ^bb73, ^bb84
^bb73:
  %v215 = sea.const 8 : i64 loc("_155"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v216 = sea.ptr.dereferenceable %v62, %v215 : !sea.ptr<64>, i64 loc("_155"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v216, ^bb74, ^bb84
^bb74:
  %v217 = sea.const 8 : i64 loc("_157"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v218 = sea.ptr.dereferenceable %v58, %v217 : !sea.ptr<64>, i64 loc("_157"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v218, ^bb75, ^bb84
^bb75:
  %v219 = sea.const 8 : i64 loc("_159"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v220 = sea.ptr.dereferenceable %v58, %v219 : !sea.ptr<64>, i64 loc("_159"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v221 = sea.const 0 : i1 loc("_160")
  %v222 = sea.select %v220, %v196, %v221 : i1 loc("_160")
  sea.cond_br %v222, ^bb76, ^bb84
^bb76:
  sea.br ^bb77
^bb77:
  %v223 = sea.const 1 : i1 loc("seahorn/lib/utils.c":39:14)
  sea.assume %v223 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb78
^bb78:
  %v224 = sea.ptr.index %v57 [%v144] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_163"("seahorn/lib/utils.c":40:5))
  %v225 = sea.const 1 : i64 loc("_164"("seahorn/lib/utils.c":40:5))
  %v226 = sea.ptr.dereferenceable %v224, %v225 : !sea.ptr<64>, i64 loc("_164"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v226, ^bb79, ^bb84
^bb79:
  %v227 = sea.load %v86[%v224] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_166"("seahorn/lib/utils.c":40:5))
  sea.br ^bb80
^bb80:
  %v228 = sea.icmp eq, %v227, %v158 : i8 loc("_168"("seahorn/lib/utils.c":40:5))
  sea.br ^bb81
^bb81:
  %v229 = sea.const 1 : i64 loc("_170"("seahorn/lib/utils.c":40:5))
  %v230 = sea.ptr.dereferenceable %v224, %v229 : !sea.ptr<64>, i64 loc("_170"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v230, ^bb82, ^bb84
^bb82:
  sea.br ^bb83
^bb83:
  %v231 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v232 = sea.xor %v228, %v231 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v232 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb84 loc("seahorn/lib/utils.c":40:5)
^bb84:
  sea.br ^bb85
^bb85:
  %v233 = sea.const 0 : i1
  sea.assert %v233
  sea.halt
}
