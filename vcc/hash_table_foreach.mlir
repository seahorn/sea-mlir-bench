// Exported from SeaHorn (hash_table_foreach.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm42")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm43")
  %v2 = sea.mem.nondet "region.20" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm44")
  %v3 = sea.mem.nondet "region.28" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm45")
  %v4 = sea.mem.nondet "region.36" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm46")
  %v5 = sea.const 4 : i64 loc("tl_last_error")
  %v6 = sea.alloca %v5 align 8 [5] : i64 -> !sea.ptr<64> loc("tl_last_error")
  %v7 = sea.const 0 : i32
  %v8 = sea.store %v1[%v6], %v7 inplace align 4 : !sea.mem<!sea.ptr<64>, i8>, i32
  %v9 = sea.const 64 : i64 loc("_0")
  %v10 = sea.alloca %v9 align 8 [6] : i64 -> !sea.ptr<64> loc("_0")
  %v11 = sea.const 8 : i64 loc("_1")
  %v12 = sea.alloca %v11 align 8 [7] : i64 -> !sea.ptr<64> loc("_1")
  %v13 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v14 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v15 = sea.store %v0[%v13], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v16 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_2")
  %v17 = sea.ptr.index %v16 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_2")
  %v18 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v19 = sea.store %v15[%v17], %v18 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v20 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_3")
  %v21 = sea.ptr.index %v20 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_3")
  %v22 = sea.const 0 : i8
  %v23 = sea.const 24 : i64
  %v24 = sea.memset %v19[%v21], %v22, %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v25 = sea.const 0 : i32
  %v26 = sea.store %v8[%v6], %v25 inplace align 4 : !sea.mem<!sea.ptr<64>, i8>, i32
  %v27 = sea.nondet "nd_size_t" [8] : i64 loc("_4"("seahorn/lib/hash_table_helper.c":14:24))
  %v28 = sea.const 17 : i64 loc("_5"("seahorn/lib/hash_table_helper.c":15:22))
  %v29 = sea.icmp ult, %v27, %v28 : i64 loc("_5"("seahorn/lib/hash_table_helper.c":15:22))
  sea.assume %v29 loc("seahorn/lib/hash_table_helper.c":15:3)
  %v30 = sea.ctpop %v27 : i64 loc("_6"("aws-c-common/include/aws/common/math.inl":161:14))
  %v31 = sea.const 1 : i64 loc("_7"("aws-c-common/include/aws/common/math.inl":161:14))
  %v32 = sea.icmp eq, %v30, %v31 : i64 loc("_7"("aws-c-common/include/aws/common/math.inl":161:14))
  sea.assume %v32 loc("seahorn/lib/hash_table_helper.c":16:3)
  %v33 = sea.nondet "nd_size_t" [9] : i64 loc("_8"("seahorn/lib/hash_table_helper.c":18:27))
  sea.br ^bb1
^bb1:
  %v34 = sea.const 24 : i64 loc("_10"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v35 = sea.mul %v27, %v34 : i64 loc("_10"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v36 = sea.const 24 : i64 loc("_10"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v37 = sea.umulo %v27, %v36 : i64 loc("_10"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v37, ^bb6, ^bb2 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb2:
  sea.br ^bb3
^bb3:
  %v38 = sea.const 80 : i64 loc("_14"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v39 = sea.add %v35, %v38 : i64 loc("_14"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v40 = sea.const 80 : i64 loc("_14"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v41 = sea.uaddo %v35, %v40 : i64 loc("_14"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v41, ^bb4, ^bb5(%v26 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb4:
  %v42 = sea.const 5 : i32 loc("seahorn/lib/error_override.c":6:17)
  %v43 = sea.store %v26[%v6], %v42 inplace align 4 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("seahorn/lib/error_override.c":6:17)
  sea.br ^bb5(%v43 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":71:9)
^bb5(%v44 : !sea.mem<!sea.ptr<64>, i8>):
  %v45 = sea.sext %v41 : i1 to i32 loc("..i.i.i"("aws-c-common/source/hash_table.c":0:0))
  sea.br ^bb7(%v44, %v39, %v45 : !sea.mem<!sea.ptr<64>, i8>, i64, i32) loc("aws-c-common/source/hash_table.c":0:0)
^bb6:
  %v46 = sea.const 5 : i32 loc("seahorn/lib/error_override.c":6:17)
  %v47 = sea.store %v26[%v6], %v46 inplace align 4 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("seahorn/lib/error_override.c":6:17)
  %v48 = sea.const 4294967295 : i32 loc("aws-c-common/source/hash_table.c":1097:9)
  sea.br ^bb7(%v47, %v33, %v48 : !sea.mem<!sea.ptr<64>, i8>, i64, i32) loc("aws-c-common/source/hash_table.c":1097:9)
^bb7(%v49 : !sea.mem<!sea.ptr<64>, i8>, %v50 : i64, %v51 : i32):
  %v52 = sea.const 0 : i32 loc("_19"("seahorn/lib/hash_table_helper.c":20:72))
  %v53 = sea.icmp eq, %v51, %v52 : i32 loc("_19"("seahorn/lib/hash_table_helper.c":20:72))
  sea.assume %v53 loc("seahorn/lib/hash_table_helper.c":20:3)
  %v54 = sea.const 0 : i64 loc("_20"("seahorn/lib/proof_allocators.c":17:15))
  %v55 = sea.icmp eq, %v50, %v54 : i64 loc("_20"("seahorn/lib/proof_allocators.c":17:15))
  %v56 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v55, ^bb11(%v4, %v56 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb8 loc("seahorn/lib/proof_allocators.c":17:10)
^bb8:
  %v57 = sea.nondet "nd_malloc_is_fail" [10] : i1 loc("_22"("seahorn/lib/sea_allocators.c":11:10))
  %v58 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v57, ^bb10(%v4, %v58 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb9 loc("seahorn/lib/sea_allocators.c":11:10)
^bb9:
  %v59 = sea.const 1 : i64 loc("malloc.i")
  %v60 = sea.mul %v50, %v59 : i64 loc("malloc.i")
  %v61 = sea.alloca %v60 align 16 [11] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb10(%v4, %v61 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb10(%v62 : !sea.mem<!sea.ptr<64>, i8>, %v63 : !sea.ptr<64>):
  %v64 = sea.memhavoc %v62[%v63], %v50 [12] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v65 = sea.ptr.null : !sea.ptr<64> loc("_25"("seahorn/lib/sea_allocators.c":45:10))
  %v66 = sea.ptr.cmp ne, %v63, %v65 : !sea.ptr<64> loc("_25"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v66 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb11(%v64, %v63 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb11(%v67 : !sea.mem<!sea.ptr<64>, i8>, %v68 : !sea.ptr<64>):
  %v69 = sea.ptr.index %v68 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_27"("seahorn/lib/hash_table_helper.c":23:9))
  %v70 = sea.const 8 : i64 loc("_28"("seahorn/lib/hash_table_helper.c":23:14))
  %v71 = sea.ptr.dereferenceable %v69, %v70 : !sea.ptr<64>, i64 loc("_28"("seahorn/lib/hash_table_helper.c":23:14))
  sea.cond_br %v71, ^bb12, ^bb548
^bb12:
  %v72 = sea.store %v67[%v69], %v27 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":23:14)
  %v73 = sea.ptr.index %v68 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_30"("seahorn/lib/hash_table_helper.c":24:9))
  %v74 = sea.const 8 : i64 loc("_31"("seahorn/lib/hash_table_helper.c":24:14))
  %v75 = sea.ptr.dereferenceable %v73, %v74 : !sea.ptr<64>, i64 loc("_31"("seahorn/lib/hash_table_helper.c":24:14))
  sea.cond_br %v75, ^bb13, ^bb548
^bb13:
  %v76 = sea.const 18446744073709551615 : i64 loc("_33"("seahorn/lib/hash_table_helper.c":24:28))
  %v77 = sea.add %v27, %v76 : i64 loc("_33"("seahorn/lib/hash_table_helper.c":24:28))
  %v78 = sea.store %v72[%v73], %v77 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":24:14)
  %v79 = sea.ptr.index %v68 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_34"("seahorn/lib/hash_table_helper.c":25:9))
  %v80 = sea.const 8 : i64 loc("_35"("seahorn/lib/hash_table_helper.c":25:25))
  %v81 = sea.ptr.dereferenceable %v79, %v80 : !sea.ptr<64>, i64 loc("_35"("seahorn/lib/hash_table_helper.c":25:25))
  sea.cond_br %v81, ^bb14, ^bb548
^bb14:
  %v82 = sea.const 4606732058837280358 : i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v83 = sea.store %v78[%v79], %v82 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v84 = sea.ptr.index %v68 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_37"("seahorn/lib/hash_table_helper.c":26:9))
  %v85 = sea.const 8 : i64 loc("_38"("seahorn/lib/hash_table_helper.c":26:15))
  %v86 = sea.ptr.dereferenceable %v84, %v85 : !sea.ptr<64>, i64 loc("_38"("seahorn/lib/hash_table_helper.c":26:15))
  sea.cond_br %v86, ^bb15, ^bb548
^bb15:
  %v87 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v88 = sea.store %v83[%v84], %v87 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v89 = sea.const 8 : i64 loc("_40"("seahorn/lib/hash_table_helper.c":27:17))
  %v90 = sea.ptr.dereferenceable %v68, %v89 : !sea.ptr<64>, i64 loc("_40"("seahorn/lib/hash_table_helper.c":27:17))
  sea.cond_br %v90, ^bb16, ^bb548
^bb16:
  %v91 = sea.func_addr @"nd_hash_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v92 = sea.store %v88[%v68], %v91 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v93 = sea.ptr.index %v68 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_42"("seahorn/lib/hash_table_helper.c":28:9))
  %v94 = sea.const 8 : i64 loc("_43"("seahorn/lib/hash_table_helper.c":28:19))
  %v95 = sea.ptr.dereferenceable %v93, %v94 : !sea.ptr<64>, i64 loc("_43"("seahorn/lib/hash_table_helper.c":28:19))
  sea.cond_br %v95, ^bb17, ^bb548
^bb17:
  %v96 = sea.func_addr @"nd_hash_equals_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  %v97 = sea.store %v92[%v93], %v96 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  sea.br ^bb18
^bb18:
  %v98 = sea.store %v3[%v12], %v68 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":37:15)
  %v99 = sea.nondet "nd_bool" [13] : i1 loc("_45"("seahorn/lib/hash_table_helper.c":73:33))
  %v100 = sea.ptr.null : !sea.ptr<64> loc("_46"("seahorn/lib/hash_table_helper.c":73:33))
  %v101 = sea.func_addr @"hash_proof_destroy_noop.addr" : !sea.ptr<64> loc("_46"("seahorn/lib/hash_table_helper.c":73:33))
  %v102 = sea.select %v99, %v100, %v101 : !sea.ptr<64> loc("_46"("seahorn/lib/hash_table_helper.c":73:33))
  sea.br ^bb19
^bb19:
  %v103 = sea.ptr.index %v68 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_48"("seahorn/lib/hash_table_helper.c":73:16))
  %v104 = sea.const 8 : i64 loc("_49"("seahorn/lib/hash_table_helper.c":73:31))
  %v105 = sea.ptr.dereferenceable %v103, %v104 : !sea.ptr<64>, i64 loc("_49"("seahorn/lib/hash_table_helper.c":73:31))
  sea.cond_br %v105, ^bb20, ^bb548
^bb20:
  %v106 = sea.store %v97[%v103], %v102 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":73:31)
  %v107 = sea.nondet "nd_bool" [14] : i1 loc("_51"("seahorn/lib/hash_table_helper.c":74:35))
  sea.br ^bb21
^bb21:
  %v108 = sea.ptr.index %v68 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_53"("seahorn/lib/hash_table_helper.c":74:16))
  %v109 = sea.const 8 : i64 loc("_54"("seahorn/lib/hash_table_helper.c":74:33))
  %v110 = sea.ptr.dereferenceable %v108, %v109 : !sea.ptr<64>, i64 loc("_54"("seahorn/lib/hash_table_helper.c":74:33))
  sea.cond_br %v110, ^bb22, ^bb548
^bb22:
  %v111 = sea.ptr.null : !sea.ptr<64> loc("_55"("seahorn/lib/hash_table_helper.c":74:35))
  %v112 = sea.func_addr @"hash_proof_destroy_noop.addr" : !sea.ptr<64> loc("_55"("seahorn/lib/hash_table_helper.c":74:35))
  %v113 = sea.select %v107, %v111, %v112 : !sea.ptr<64> loc("_55"("seahorn/lib/hash_table_helper.c":74:35))
  %v114 = sea.store %v106[%v108], %v113 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":74:33)
  %v115 = sea.const 8 : i64 loc("_56"("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":27:25))
  %v116 = sea.ptr.dereferenceable %v93, %v115 : !sea.ptr<64>, i64 loc("_56"("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":27:25))
  sea.cond_br %v116, ^bb23, ^bb548
^bb23:
  %v117 = sea.func_addr @"nondet_equals.addr" : !sea.ptr<64> loc("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":27:25)
  %v118 = sea.store %v114[%v93], %v117 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":27:25)
  %v119 = sea.const 8 : i64 loc("_58"("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":28:23))
  %v120 = sea.ptr.dereferenceable %v68, %v119 : !sea.ptr<64>, i64 loc("_58"("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":28:23))
  sea.cond_br %v120, ^bb24, ^bb548
^bb24:
  %v121 = sea.func_addr @"uninterpreted_hasher.addr" : !sea.ptr<64> loc("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":28:23)
  %v122 = sea.store %v118[%v68], %v121 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":28:23)
  sea.br ^bb25
^bb25:
  %v123 = sea.load %v98[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_61"("aws-c-common/source/hash_table.c":1027:24))
  %v124 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/source/hash_table.c":1027:19))
  %v125 = sea.ptr.cmp eq, %v123, %v124 : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/source/hash_table.c":1027:19))
  %v126 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1027:31)
  sea.cond_br %v125, ^bb38(%v126 : i1), ^bb26 loc("aws-c-common/source/hash_table.c":1027:31)
^bb26:
  sea.br ^bb27
^bb27:
  %v127 = sea.const 8 : i64 loc("_64"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":20:32))
  %v128 = sea.ptr.dereferenceable %v123, %v127 : !sea.ptr<64>, i64 loc("_64"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":20:32))
  sea.cond_br %v128, ^bb28, ^bb548
^bb28:
  %v129 = sea.load %v122[%v123] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_66"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":20:32))
  %v130 = sea.ptr.null : !sea.ptr<64> loc("_67"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":20:40))
  %v131 = sea.ptr.cmp ne, %v129, %v130 : !sea.ptr<64> loc("_67"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":20:40))
  %v132 = sea.ptr.index %v123 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_68"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":21:34))
  %v133 = sea.const 8 : i64 loc("_69"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":21:34))
  %v134 = sea.ptr.dereferenceable %v132, %v133 : !sea.ptr<64>, i64 loc("_69"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":21:34))
  sea.cond_br %v134, ^bb29, ^bb548
^bb29:
  %v135 = sea.load %v118[%v132] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_71"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":21:34))
  %v136 = sea.ptr.null : !sea.ptr<64> loc("_72"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":21:44))
  %v137 = sea.ptr.cmp ne, %v135, %v136 : !sea.ptr<64> loc("_72"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":21:44))
  %v138 = sea.ptr.index %v123 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_73"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":23:30))
  %v139 = sea.const 8 : i64 loc("_74"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":23:30))
  %v140 = sea.ptr.dereferenceable %v138, %v139 : !sea.ptr<64>, i64 loc("_74"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":23:30))
  sea.cond_br %v140, ^bb30, ^bb548
^bb30:
  %v141 = sea.load %v88[%v138] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_76"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":23:30))
  %v142 = sea.ptr.null : !sea.ptr<64> loc("_77"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":23:36))
  %v143 = sea.ptr.cmp ne, %v141, %v142 : !sea.ptr<64> loc("_77"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":23:36))
  %v144 = sea.ptr.index %v123 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_78"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":24:34))
  %v145 = sea.const 8 : i64 loc("_79"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":24:34))
  %v146 = sea.ptr.dereferenceable %v144, %v145 : !sea.ptr<64>, i64 loc("_79"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":24:34))
  sea.cond_br %v146, ^bb31, ^bb548
^bb31:
  %v147 = sea.load %v72[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_81"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":24:34))
  %v148 = sea.const 1 : i64 loc("_82"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":24:39))
  %v149 = sea.icmp ugt, %v147, %v148 : i64 loc("_82"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":24:39))
  %v150 = sea.const 8 : i64 loc("_83"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":25:56))
  %v151 = sea.ptr.dereferenceable %v144, %v150 : !sea.ptr<64>, i64 loc("_83"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":25:56))
  sea.cond_br %v151, ^bb32, ^bb548
^bb32:
  %v152 = sea.ctpop %v147 : i64 loc("_85"("aws-c-common/include/aws/common/math.inl":161:14))
  %v153 = sea.const 1 : i64 loc("_86"("aws-c-common/include/aws/common/math.inl":161:14))
  %v154 = sea.icmp eq, %v152, %v153 : i64 loc("_86"("aws-c-common/include/aws/common/math.inl":161:14))
  %v155 = sea.ptr.index %v123 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_87"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":31:25))
  %v156 = sea.const 8 : i64 loc("_88"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":31:25))
  %v157 = sea.ptr.dereferenceable %v155, %v156 : !sea.ptr<64>, i64 loc("_88"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":31:25))
  sea.cond_br %v157, ^bb33, ^bb548
^bb33:
  %v158 = sea.load %v72[%v155] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_90"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":31:25))
  %v159 = sea.const 8 : i64 loc("_91"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":31:41))
  %v160 = sea.ptr.dereferenceable %v144, %v159 : !sea.ptr<64>, i64 loc("_91"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":31:41))
  sea.cond_br %v160, ^bb34, ^bb548
^bb34:
  %v161 = sea.icmp ult, %v158, %v147 : i64 loc("_93"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":31:34))
  %v162 = sea.ptr.index %v123 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_94"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:32))
  %v163 = sea.const 8 : i64 loc("_95"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:32))
  %v164 = sea.ptr.dereferenceable %v162, %v163 : !sea.ptr<64>, i64 loc("_95"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:32))
  sea.cond_br %v164, ^bb35, ^bb548
^bb35:
  %v165 = sea.load %v78[%v162] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_97"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:32))
  %v166 = sea.const 8 : i64 loc("_98"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:46))
  %v167 = sea.ptr.dereferenceable %v144, %v166 : !sea.ptr<64>, i64 loc("_98"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:46))
  sea.cond_br %v167, ^bb36, ^bb548
^bb36:
  %v168 = sea.const 8 : i64 loc("_100"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":40:7))
  %v169 = sea.ptr.dereferenceable %v144, %v168 : !sea.ptr<64>, i64 loc("_100"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":40:7))
  sea.cond_br %v169, ^bb37, ^bb548
^bb37:
  %v170 = sea.const 18446744073709551615 : i64 loc("_102"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:51))
  %v171 = sea.add %v147, %v170 : i64 loc("_102"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:51))
  %v172 = sea.icmp eq, %v165, %v171 : i64 loc("_103"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:37))
  %v173 = sea.const 0 : i1 loc("or.cond.i37.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v174 = sea.select %v131, %v137, %v173 : i1 loc("or.cond.i37.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v175 = sea.const 0 : i1 loc("or.cond3.i38.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v176 = sea.select %v174, %v143, %v175 : i1 loc("or.cond3.i38.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v177 = sea.const 0 : i1 loc("or.cond5.i39.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v178 = sea.select %v176, %v149, %v177 : i1 loc("or.cond5.i39.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v179 = sea.const 0 : i1 loc("or.cond7.i40.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v180 = sea.select %v178, %v154, %v179 : i1 loc("or.cond7.i40.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v181 = sea.const 0 : i1 loc("or.cond11.i41.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v182 = sea.select %v180, %v161, %v181 : i1 loc("or.cond11.i41.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v183 = sea.const 0 : i1 loc("or.cond13.i42.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v184 = sea.select %v182, %v172, %v183 : i1 loc("or.cond13.i42.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  sea.br ^bb38(%v184 : i1)
^bb38(%v185 : i1):
  sea.assume %v185 loc("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":29:3)
  %v186 = sea.ptr.nondet "nd_voidp" [15] : !sea.ptr<64> loc("_105"("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":31:19))
  %v187 = sea.store %v2[%v10], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":20:12)
  sea.br ^bb39
^bb39:
  %v188 = sea.load %v98[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_107"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":21:21))
  %v189 = sea.ptr.index %v188 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_108"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":21:29))
  %v190 = sea.const 8 : i64 loc("_109"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":21:29))
  %v191 = sea.ptr.dereferenceable %v189, %v190 : !sea.ptr<64>, i64 loc("_109"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":21:29))
  sea.cond_br %v191, ^bb40, ^bb548
^bb40:
  %v192 = sea.load %v72[%v189] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_110"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":21:29))
  %v193 = sea.nondet "nd_size_t" [16] : i64 loc("_111"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":22:15))
  %v194 = sea.icmp ule, %v193, %v192 : i64 loc("_112"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":23:20))
  sea.assume %v194 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":23:3)
  sea.br ^bb41
^bb41:
  sea.br ^bb42
^bb42:
  %v195 = sea.icmp eq, %v193, %v192 : i64 loc("_113"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":34:26))
  sea.br ^bb43
^bb43:
  sea.br ^bb44
^bb44:
  sea.cond_br %v195, ^bb519(%v122 : !sea.mem<!sea.ptr<64>, i8>), ^bb45 loc("aws-c-common/source/hash_table.c":715:5)
^bb45:
  %v196 = sea.nondet "nd_int" [17] : i32 loc("_116"("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":16:10))
  %v197 = sea.const 4 : i32 loc("_117"("aws-c-common/source/hash_table.c":717:16))
  %v198 = sea.and %v196, %v197 : i32 loc("_117"("aws-c-common/source/hash_table.c":717:16))
  %v199 = sea.const 0 : i32 loc(".not.i.i"("aws-c-common/source/hash_table.c":717:16))
  %v200 = sea.icmp eq, %v198, %v199 : i32 loc(".not.i.i"("aws-c-common/source/hash_table.c":717:16))
  sea.cond_br %v200, ^bb46, ^bb494(%v122 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/hash_table.c":717:13)
^bb46:
  %v201 = sea.const 2 : i32 loc("_123"("aws-c-common/source/hash_table.c":725:16))
  %v202 = sea.and %v196, %v201 : i32 loc("_123"("aws-c-common/source/hash_table.c":725:16))
  %v203 = sea.const 0 : i32 loc(".not3.i.i"("aws-c-common/source/hash_table.c":725:16))
  %v204 = sea.icmp eq, %v202, %v203 : i32 loc(".not3.i.i"("aws-c-common/source/hash_table.c":725:16))
  sea.cond_br %v204, ^bb54(%v122, %v192 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb47 loc("aws-c-common/source/hash_table.c":725:13)
^bb47:
  sea.br ^bb48
^bb48:
  sea.br ^bb49
^bb49:
  sea.br ^bb50
^bb50:
  sea.br ^bb51
^bb51:
  %v205 = sea.load %v98[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_129"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:13))
  %v206 = sea.ptr.index %v205 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_130"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:21))
  %v207 = sea.const 8 : i64 loc("_131"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v208 = sea.ptr.dereferenceable %v206, %v207 : !sea.ptr<64>, i64 loc("_131"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v208, ^bb52, ^bb548
^bb52:
  %v209 = sea.load %v72[%v206] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_133"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v210 = sea.const 8 : i64 loc("_134"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v211 = sea.ptr.dereferenceable %v206, %v210 : !sea.ptr<64>, i64 loc("_134"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v211, ^bb53, ^bb548
^bb53:
  %v212 = sea.const 18446744073709551615 : i64 loc("_135"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v213 = sea.add %v192, %v212 : i64 loc("_135"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v214 = sea.const 18446744073709551615 : i64 loc("_136"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v215 = sea.add %v209, %v214 : i64 loc("_136"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v216 = sea.store %v122[%v206], %v215 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32)
  sea.br ^bb54(%v216, %v213 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/source/hash_table.c":727:9)
^bb54(%v217 : !sea.mem<!sea.ptr<64>, i8>, %v218 : i64):
  %v219 = sea.const 1 : i32 loc("_139"("aws-c-common/source/hash_table.c":729:18))
  %v220 = sea.and %v196, %v219 : i32 loc("_139"("aws-c-common/source/hash_table.c":729:18))
  %v221 = sea.const 0 : i32 loc(".not4.i.i.not"("aws-c-common/source/hash_table.c":729:18))
  %v222 = sea.icmp eq, %v220, %v221 : i32 loc(".not4.i.i.not"("aws-c-common/source/hash_table.c":729:18))
  sea.cond_br %v222, ^bb519(%v217 : !sea.mem<!sea.ptr<64>, i8>), ^bb55
^bb55:
  sea.br ^bb56
^bb56:
  sea.br ^bb57
^bb57:
  %v223 = sea.icmp eq, %v193, %v218 : i64 loc("_143"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:18))
  sea.cond_br %v223, ^bb67, ^bb58 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:7)
^bb58:
  sea.br ^bb59
^bb59:
  sea.br ^bb60
^bb60:
  %v224 = sea.nondet "nd_size_t" [18] : i64 loc("_148"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":49:22))
  %v225 = sea.const 0 : i64 loc(".not.i12.i"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v226 = sea.icmp eq, %v224, %v225 : i64 loc(".not.i12.i"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v227 = sea.const 0 : i1 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
  sea.cond_br %v226, ^bb64(%v227 : i1), ^bb61 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
^bb61:
  sea.br ^bb62
^bb62:
  sea.br ^bb63
^bb63:
  %v228 = sea.sub %v218, %v193 : i64 loc("_152"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:52))
  %v229 = sea.icmp ule, %v224, %v228 : i64 loc("_153"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:37))
  sea.br ^bb64(%v229 : i1)
^bb64(%v230 : i1):
  sea.assume %v230 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:3)
  sea.br ^bb65
^bb65:
  sea.br ^bb66
^bb66:
  %v231 = sea.add %v224, %v193 : i64 loc("_158"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":52:26))
  %v232 = sea.icmp eq, %v231, %v218 : i64 loc("_159"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:28))
  %v233 = sea.const 0 : i32 loc("_160"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v234 = sea.const 2 : i32 loc("_160"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v235 = sea.select %v232, %v233, %v234 : i32 loc("_160"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  sea.br ^bb68(%v235, %v231 : i32, i64)
^bb67:
  %v236 = sea.const 0 : i32
  sea.br ^bb68(%v236, %v193 : i32, i64)
^bb68(%v237 : i32, %v238 : i64):
  sea.br ^bb69
^bb69:
  sea.br ^bb70
^bb70:
  %v239 = sea.icmp eq, %v238, %v218 : i64 loc("_164"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":34:26))
  sea.br ^bb71
^bb71:
  %v240 = sea.const 0 : i32 loc("_166"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v241 = sea.icmp ne, %v237, %v240 : i32 loc("_166"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v242 = sea.xor %v241, %v239 : i1 loc("_167"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v243 = sea.const 1 : i1 loc("_168")
  %v244 = sea.const 0 : i1 loc("_168")
  %v245 = sea.select %v243, %v242, %v244 : i1 loc("_168")
  sea.cond_br %v245, ^bb72, ^bb548
^bb72:
  sea.cond_br %v239, ^bb519(%v217 : !sea.mem<!sea.ptr<64>, i8>), ^bb73 loc("aws-c-common/source/hash_table.c":715:5)
^bb73:
  %v246 = sea.nondet "nd_int" [19] : i32 loc("_170"("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":16:10))
  %v247 = sea.const 4 : i32 loc("_171"("aws-c-common/source/hash_table.c":717:16))
  %v248 = sea.and %v246, %v247 : i32 loc("_171"("aws-c-common/source/hash_table.c":717:16))
  %v249 = sea.const 0 : i32 loc(".not.i.i.1"("aws-c-common/source/hash_table.c":717:16))
  %v250 = sea.icmp eq, %v248, %v249 : i32 loc(".not.i.i.1"("aws-c-common/source/hash_table.c":717:16))
  sea.cond_br %v250, ^bb74, ^bb494(%v217 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/hash_table.c":717:13)
^bb74:
  %v251 = sea.const 2 : i32 loc("_173"("aws-c-common/source/hash_table.c":725:16))
  %v252 = sea.and %v246, %v251 : i32 loc("_173"("aws-c-common/source/hash_table.c":725:16))
  %v253 = sea.const 0 : i32 loc(".not3.i.i.1"("aws-c-common/source/hash_table.c":725:16))
  %v254 = sea.icmp eq, %v252, %v253 : i32 loc(".not3.i.i.1"("aws-c-common/source/hash_table.c":725:16))
  sea.cond_br %v254, ^bb82(%v217, %v218 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb75 loc("aws-c-common/source/hash_table.c":725:13)
^bb75:
  sea.br ^bb76
^bb76:
  sea.br ^bb77
^bb77:
  sea.br ^bb78
^bb78:
  sea.br ^bb79
^bb79:
  %v255 = sea.load %v98[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_179"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:13))
  %v256 = sea.ptr.index %v255 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_180"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:21))
  %v257 = sea.const 8 : i64 loc("_181"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v258 = sea.ptr.dereferenceable %v256, %v257 : !sea.ptr<64>, i64 loc("_181"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v258, ^bb80, ^bb548
^bb80:
  %v259 = sea.load %v217[%v256] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_183"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v260 = sea.const 8 : i64 loc("_184"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v261 = sea.ptr.dereferenceable %v256, %v260 : !sea.ptr<64>, i64 loc("_184"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v261, ^bb81, ^bb548
^bb81:
  %v262 = sea.const 18446744073709551615 : i64 loc("_185"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v263 = sea.add %v218, %v262 : i64 loc("_185"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v264 = sea.const 18446744073709551615 : i64 loc("_186"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v265 = sea.add %v259, %v264 : i64 loc("_186"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v266 = sea.store %v217[%v256], %v265 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32)
  sea.br ^bb82(%v266, %v263 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/source/hash_table.c":727:9)
^bb82(%v267 : !sea.mem<!sea.ptr<64>, i8>, %v268 : i64):
  %v269 = sea.const 1 : i32 loc("_189"("aws-c-common/source/hash_table.c":729:18))
  %v270 = sea.and %v246, %v269 : i32 loc("_189"("aws-c-common/source/hash_table.c":729:18))
  %v271 = sea.const 0 : i32 loc(".not4.i.i.not.1"("aws-c-common/source/hash_table.c":729:18))
  %v272 = sea.icmp eq, %v270, %v271 : i32 loc(".not4.i.i.not.1"("aws-c-common/source/hash_table.c":729:18))
  sea.cond_br %v272, ^bb519(%v267 : !sea.mem<!sea.ptr<64>, i8>), ^bb83
^bb83:
  sea.br ^bb84
^bb84:
  sea.br ^bb85
^bb85:
  %v273 = sea.icmp eq, %v238, %v268 : i64 loc("_193"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:18))
  sea.cond_br %v273, ^bb95, ^bb86 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:7)
^bb86:
  sea.br ^bb87
^bb87:
  sea.br ^bb88
^bb88:
  %v274 = sea.nondet "nd_size_t" [20] : i64 loc("_197"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":49:22))
  %v275 = sea.const 0 : i64 loc(".not.i12.i.1"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v276 = sea.icmp eq, %v274, %v275 : i64 loc(".not.i12.i.1"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v277 = sea.const 0 : i1 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
  sea.cond_br %v276, ^bb92(%v277 : i1), ^bb89 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
^bb89:
  sea.br ^bb90
^bb90:
  sea.br ^bb91
^bb91:
  %v278 = sea.sub %v268, %v238 : i64 loc("_201"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:52))
  %v279 = sea.icmp ule, %v274, %v278 : i64 loc("_202"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:37))
  sea.br ^bb92(%v279 : i1)
^bb92(%v280 : i1):
  sea.assume %v280 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:3)
  sea.br ^bb93
^bb93:
  sea.br ^bb94
^bb94:
  %v281 = sea.add %v274, %v238 : i64 loc("_207"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":52:26))
  %v282 = sea.icmp eq, %v281, %v268 : i64 loc("_208"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:28))
  %v283 = sea.const 0 : i32 loc("_209"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v284 = sea.const 2 : i32 loc("_209"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v285 = sea.select %v282, %v283, %v284 : i32 loc("_209"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  sea.br ^bb96(%v285, %v281 : i32, i64)
^bb95:
  %v286 = sea.const 0 : i32
  sea.br ^bb96(%v286, %v238 : i32, i64)
^bb96(%v287 : i32, %v288 : i64):
  sea.br ^bb97
^bb97:
  sea.br ^bb98
^bb98:
  %v289 = sea.icmp eq, %v288, %v268 : i64 loc("_214"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":34:26))
  sea.br ^bb99
^bb99:
  %v290 = sea.const 0 : i32 loc("_216"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v291 = sea.icmp ne, %v287, %v290 : i32 loc("_216"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v292 = sea.xor %v291, %v289 : i1 loc("_217"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v293 = sea.const 1 : i1 loc("_218")
  %v294 = sea.const 0 : i1 loc("_218")
  %v295 = sea.select %v293, %v292, %v294 : i1 loc("_218")
  sea.cond_br %v295, ^bb100, ^bb548
^bb100:
  sea.cond_br %v289, ^bb519(%v267 : !sea.mem<!sea.ptr<64>, i8>), ^bb101 loc("aws-c-common/source/hash_table.c":715:5)
^bb101:
  %v296 = sea.nondet "nd_int" [21] : i32 loc("_220"("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":16:10))
  %v297 = sea.const 4 : i32 loc("_221"("aws-c-common/source/hash_table.c":717:16))
  %v298 = sea.and %v296, %v297 : i32 loc("_221"("aws-c-common/source/hash_table.c":717:16))
  %v299 = sea.const 0 : i32 loc(".not.i.i.2"("aws-c-common/source/hash_table.c":717:16))
  %v300 = sea.icmp eq, %v298, %v299 : i32 loc(".not.i.i.2"("aws-c-common/source/hash_table.c":717:16))
  sea.cond_br %v300, ^bb102, ^bb494(%v267 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/hash_table.c":717:13)
^bb102:
  %v301 = sea.const 2 : i32 loc("_223"("aws-c-common/source/hash_table.c":725:16))
  %v302 = sea.and %v296, %v301 : i32 loc("_223"("aws-c-common/source/hash_table.c":725:16))
  %v303 = sea.const 0 : i32 loc(".not3.i.i.2"("aws-c-common/source/hash_table.c":725:16))
  %v304 = sea.icmp eq, %v302, %v303 : i32 loc(".not3.i.i.2"("aws-c-common/source/hash_table.c":725:16))
  sea.cond_br %v304, ^bb110(%v267, %v268 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb103 loc("aws-c-common/source/hash_table.c":725:13)
^bb103:
  sea.br ^bb104
^bb104:
  sea.br ^bb105
^bb105:
  sea.br ^bb106
^bb106:
  sea.br ^bb107
^bb107:
  %v305 = sea.load %v98[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_229"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:13))
  %v306 = sea.ptr.index %v305 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_230"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:21))
  %v307 = sea.const 8 : i64 loc("_231"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v308 = sea.ptr.dereferenceable %v306, %v307 : !sea.ptr<64>, i64 loc("_231"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v308, ^bb108, ^bb548
^bb108:
  %v309 = sea.load %v267[%v306] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_233"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v310 = sea.const 8 : i64 loc("_234"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v311 = sea.ptr.dereferenceable %v306, %v310 : !sea.ptr<64>, i64 loc("_234"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v311, ^bb109, ^bb548
^bb109:
  %v312 = sea.const 18446744073709551615 : i64 loc("_235"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v313 = sea.add %v268, %v312 : i64 loc("_235"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v314 = sea.const 18446744073709551615 : i64 loc("_236"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v315 = sea.add %v309, %v314 : i64 loc("_236"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v316 = sea.store %v267[%v306], %v315 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32)
  sea.br ^bb110(%v316, %v313 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/source/hash_table.c":727:9)
^bb110(%v317 : !sea.mem<!sea.ptr<64>, i8>, %v318 : i64):
  %v319 = sea.const 1 : i32 loc("_239"("aws-c-common/source/hash_table.c":729:18))
  %v320 = sea.and %v296, %v319 : i32 loc("_239"("aws-c-common/source/hash_table.c":729:18))
  %v321 = sea.const 0 : i32 loc(".not4.i.i.not.2"("aws-c-common/source/hash_table.c":729:18))
  %v322 = sea.icmp eq, %v320, %v321 : i32 loc(".not4.i.i.not.2"("aws-c-common/source/hash_table.c":729:18))
  sea.cond_br %v322, ^bb519(%v317 : !sea.mem<!sea.ptr<64>, i8>), ^bb111
^bb111:
  sea.br ^bb112
^bb112:
  sea.br ^bb113
^bb113:
  %v323 = sea.icmp eq, %v288, %v318 : i64 loc("_243"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:18))
  sea.cond_br %v323, ^bb123, ^bb114 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:7)
^bb114:
  sea.br ^bb115
^bb115:
  sea.br ^bb116
^bb116:
  %v324 = sea.nondet "nd_size_t" [22] : i64 loc("_247"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":49:22))
  %v325 = sea.const 0 : i64 loc(".not.i12.i.2"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v326 = sea.icmp eq, %v324, %v325 : i64 loc(".not.i12.i.2"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v327 = sea.const 0 : i1 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
  sea.cond_br %v326, ^bb120(%v327 : i1), ^bb117 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
^bb117:
  sea.br ^bb118
^bb118:
  sea.br ^bb119
^bb119:
  %v328 = sea.sub %v318, %v288 : i64 loc("_251"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:52))
  %v329 = sea.icmp ule, %v324, %v328 : i64 loc("_252"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:37))
  sea.br ^bb120(%v329 : i1)
^bb120(%v330 : i1):
  sea.assume %v330 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:3)
  sea.br ^bb121
^bb121:
  sea.br ^bb122
^bb122:
  %v331 = sea.add %v324, %v288 : i64 loc("_257"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":52:26))
  %v332 = sea.icmp eq, %v331, %v318 : i64 loc("_258"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:28))
  %v333 = sea.const 0 : i32 loc("_259"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v334 = sea.const 2 : i32 loc("_259"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v335 = sea.select %v332, %v333, %v334 : i32 loc("_259"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  sea.br ^bb124(%v335, %v331 : i32, i64)
^bb123:
  %v336 = sea.const 0 : i32
  sea.br ^bb124(%v336, %v288 : i32, i64)
^bb124(%v337 : i32, %v338 : i64):
  sea.br ^bb125
^bb125:
  sea.br ^bb126
^bb126:
  %v339 = sea.icmp eq, %v338, %v318 : i64 loc("_264"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":34:26))
  sea.br ^bb127
^bb127:
  %v340 = sea.const 0 : i32 loc("_266"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v341 = sea.icmp ne, %v337, %v340 : i32 loc("_266"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v342 = sea.xor %v341, %v339 : i1 loc("_267"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v343 = sea.const 1 : i1 loc("_268")
  %v344 = sea.const 0 : i1 loc("_268")
  %v345 = sea.select %v343, %v342, %v344 : i1 loc("_268")
  sea.cond_br %v345, ^bb128, ^bb548
^bb128:
  sea.cond_br %v339, ^bb519(%v317 : !sea.mem<!sea.ptr<64>, i8>), ^bb129 loc("aws-c-common/source/hash_table.c":715:5)
^bb129:
  %v346 = sea.nondet "nd_int" [23] : i32 loc("_270"("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":16:10))
  %v347 = sea.const 4 : i32 loc("_271"("aws-c-common/source/hash_table.c":717:16))
  %v348 = sea.and %v346, %v347 : i32 loc("_271"("aws-c-common/source/hash_table.c":717:16))
  %v349 = sea.const 0 : i32 loc(".not.i.i.3"("aws-c-common/source/hash_table.c":717:16))
  %v350 = sea.icmp eq, %v348, %v349 : i32 loc(".not.i.i.3"("aws-c-common/source/hash_table.c":717:16))
  sea.cond_br %v350, ^bb130, ^bb494(%v317 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/hash_table.c":717:13)
^bb130:
  %v351 = sea.const 2 : i32 loc("_273"("aws-c-common/source/hash_table.c":725:16))
  %v352 = sea.and %v346, %v351 : i32 loc("_273"("aws-c-common/source/hash_table.c":725:16))
  %v353 = sea.const 0 : i32 loc(".not3.i.i.3"("aws-c-common/source/hash_table.c":725:16))
  %v354 = sea.icmp eq, %v352, %v353 : i32 loc(".not3.i.i.3"("aws-c-common/source/hash_table.c":725:16))
  sea.cond_br %v354, ^bb138(%v317, %v318 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb131 loc("aws-c-common/source/hash_table.c":725:13)
^bb131:
  sea.br ^bb132
^bb132:
  sea.br ^bb133
^bb133:
  sea.br ^bb134
^bb134:
  sea.br ^bb135
^bb135:
  %v355 = sea.load %v98[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_279"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:13))
  %v356 = sea.ptr.index %v355 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_280"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:21))
  %v357 = sea.const 8 : i64 loc("_281"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v358 = sea.ptr.dereferenceable %v356, %v357 : !sea.ptr<64>, i64 loc("_281"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v358, ^bb136, ^bb548
^bb136:
  %v359 = sea.load %v317[%v356] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_283"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v360 = sea.const 8 : i64 loc("_284"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v361 = sea.ptr.dereferenceable %v356, %v360 : !sea.ptr<64>, i64 loc("_284"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v361, ^bb137, ^bb548
^bb137:
  %v362 = sea.const 18446744073709551615 : i64 loc("_285"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v363 = sea.add %v318, %v362 : i64 loc("_285"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v364 = sea.const 18446744073709551615 : i64 loc("_286"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v365 = sea.add %v359, %v364 : i64 loc("_286"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v366 = sea.store %v317[%v356], %v365 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32)
  sea.br ^bb138(%v366, %v363 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/source/hash_table.c":727:9)
^bb138(%v367 : !sea.mem<!sea.ptr<64>, i8>, %v368 : i64):
  %v369 = sea.const 1 : i32 loc("_289"("aws-c-common/source/hash_table.c":729:18))
  %v370 = sea.and %v346, %v369 : i32 loc("_289"("aws-c-common/source/hash_table.c":729:18))
  %v371 = sea.const 0 : i32 loc(".not4.i.i.not.3"("aws-c-common/source/hash_table.c":729:18))
  %v372 = sea.icmp eq, %v370, %v371 : i32 loc(".not4.i.i.not.3"("aws-c-common/source/hash_table.c":729:18))
  sea.cond_br %v372, ^bb519(%v367 : !sea.mem<!sea.ptr<64>, i8>), ^bb139
^bb139:
  sea.br ^bb140
^bb140:
  sea.br ^bb141
^bb141:
  %v373 = sea.icmp eq, %v338, %v368 : i64 loc("_293"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:18))
  sea.cond_br %v373, ^bb151, ^bb142 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:7)
^bb142:
  sea.br ^bb143
^bb143:
  sea.br ^bb144
^bb144:
  %v374 = sea.nondet "nd_size_t" [24] : i64 loc("_297"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":49:22))
  %v375 = sea.const 0 : i64 loc(".not.i12.i.3"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v376 = sea.icmp eq, %v374, %v375 : i64 loc(".not.i12.i.3"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v377 = sea.const 0 : i1 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
  sea.cond_br %v376, ^bb148(%v377 : i1), ^bb145 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
^bb145:
  sea.br ^bb146
^bb146:
  sea.br ^bb147
^bb147:
  %v378 = sea.sub %v368, %v338 : i64 loc("_301"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:52))
  %v379 = sea.icmp ule, %v374, %v378 : i64 loc("_302"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:37))
  sea.br ^bb148(%v379 : i1)
^bb148(%v380 : i1):
  sea.assume %v380 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:3)
  sea.br ^bb149
^bb149:
  sea.br ^bb150
^bb150:
  %v381 = sea.add %v374, %v338 : i64 loc("_307"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":52:26))
  %v382 = sea.icmp eq, %v381, %v368 : i64 loc("_308"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:28))
  %v383 = sea.const 0 : i32 loc("_309"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v384 = sea.const 2 : i32 loc("_309"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v385 = sea.select %v382, %v383, %v384 : i32 loc("_309"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  sea.br ^bb152(%v385, %v381 : i32, i64)
^bb151:
  %v386 = sea.const 0 : i32
  sea.br ^bb152(%v386, %v338 : i32, i64)
^bb152(%v387 : i32, %v388 : i64):
  sea.br ^bb153
^bb153:
  sea.br ^bb154
^bb154:
  %v389 = sea.icmp eq, %v388, %v368 : i64 loc("_314"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":34:26))
  sea.br ^bb155
^bb155:
  %v390 = sea.const 0 : i32 loc("_316"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v391 = sea.icmp ne, %v387, %v390 : i32 loc("_316"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v392 = sea.xor %v391, %v389 : i1 loc("_317"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v393 = sea.const 1 : i1 loc("_318")
  %v394 = sea.const 0 : i1 loc("_318")
  %v395 = sea.select %v393, %v392, %v394 : i1 loc("_318")
  sea.cond_br %v395, ^bb156, ^bb548
^bb156:
  sea.cond_br %v389, ^bb519(%v367 : !sea.mem<!sea.ptr<64>, i8>), ^bb157 loc("aws-c-common/source/hash_table.c":715:5)
^bb157:
  %v396 = sea.nondet "nd_int" [25] : i32 loc("_320"("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":16:10))
  %v397 = sea.const 4 : i32 loc("_321"("aws-c-common/source/hash_table.c":717:16))
  %v398 = sea.and %v396, %v397 : i32 loc("_321"("aws-c-common/source/hash_table.c":717:16))
  %v399 = sea.const 0 : i32 loc(".not.i.i.4"("aws-c-common/source/hash_table.c":717:16))
  %v400 = sea.icmp eq, %v398, %v399 : i32 loc(".not.i.i.4"("aws-c-common/source/hash_table.c":717:16))
  sea.cond_br %v400, ^bb158, ^bb494(%v367 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/hash_table.c":717:13)
^bb158:
  %v401 = sea.const 2 : i32 loc("_323"("aws-c-common/source/hash_table.c":725:16))
  %v402 = sea.and %v396, %v401 : i32 loc("_323"("aws-c-common/source/hash_table.c":725:16))
  %v403 = sea.const 0 : i32 loc(".not3.i.i.4"("aws-c-common/source/hash_table.c":725:16))
  %v404 = sea.icmp eq, %v402, %v403 : i32 loc(".not3.i.i.4"("aws-c-common/source/hash_table.c":725:16))
  sea.cond_br %v404, ^bb166(%v367, %v368 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb159 loc("aws-c-common/source/hash_table.c":725:13)
^bb159:
  sea.br ^bb160
^bb160:
  sea.br ^bb161
^bb161:
  sea.br ^bb162
^bb162:
  sea.br ^bb163
^bb163:
  %v405 = sea.load %v98[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_329"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:13))
  %v406 = sea.ptr.index %v405 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_330"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:21))
  %v407 = sea.const 8 : i64 loc("_331"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v408 = sea.ptr.dereferenceable %v406, %v407 : !sea.ptr<64>, i64 loc("_331"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v408, ^bb164, ^bb548
^bb164:
  %v409 = sea.load %v367[%v406] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_333"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v410 = sea.const 8 : i64 loc("_334"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v411 = sea.ptr.dereferenceable %v406, %v410 : !sea.ptr<64>, i64 loc("_334"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v411, ^bb165, ^bb548
^bb165:
  %v412 = sea.const 18446744073709551615 : i64 loc("_335"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v413 = sea.add %v368, %v412 : i64 loc("_335"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v414 = sea.const 18446744073709551615 : i64 loc("_336"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v415 = sea.add %v409, %v414 : i64 loc("_336"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v416 = sea.store %v367[%v406], %v415 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32)
  sea.br ^bb166(%v416, %v413 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/source/hash_table.c":727:9)
^bb166(%v417 : !sea.mem<!sea.ptr<64>, i8>, %v418 : i64):
  %v419 = sea.const 1 : i32 loc("_339"("aws-c-common/source/hash_table.c":729:18))
  %v420 = sea.and %v396, %v419 : i32 loc("_339"("aws-c-common/source/hash_table.c":729:18))
  %v421 = sea.const 0 : i32 loc(".not4.i.i.not.4"("aws-c-common/source/hash_table.c":729:18))
  %v422 = sea.icmp eq, %v420, %v421 : i32 loc(".not4.i.i.not.4"("aws-c-common/source/hash_table.c":729:18))
  sea.cond_br %v422, ^bb519(%v417 : !sea.mem<!sea.ptr<64>, i8>), ^bb167
^bb167:
  sea.br ^bb168
^bb168:
  sea.br ^bb169
^bb169:
  %v423 = sea.icmp eq, %v388, %v418 : i64 loc("_343"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:18))
  sea.cond_br %v423, ^bb179, ^bb170 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:7)
^bb170:
  sea.br ^bb171
^bb171:
  sea.br ^bb172
^bb172:
  %v424 = sea.nondet "nd_size_t" [26] : i64 loc("_347"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":49:22))
  %v425 = sea.const 0 : i64 loc(".not.i12.i.4"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v426 = sea.icmp eq, %v424, %v425 : i64 loc(".not.i12.i.4"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v427 = sea.const 0 : i1 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
  sea.cond_br %v426, ^bb176(%v427 : i1), ^bb173 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
^bb173:
  sea.br ^bb174
^bb174:
  sea.br ^bb175
^bb175:
  %v428 = sea.sub %v418, %v388 : i64 loc("_351"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:52))
  %v429 = sea.icmp ule, %v424, %v428 : i64 loc("_352"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:37))
  sea.br ^bb176(%v429 : i1)
^bb176(%v430 : i1):
  sea.assume %v430 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:3)
  sea.br ^bb177
^bb177:
  sea.br ^bb178
^bb178:
  %v431 = sea.add %v424, %v388 : i64 loc("_357"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":52:26))
  %v432 = sea.icmp eq, %v431, %v418 : i64 loc("_358"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:28))
  %v433 = sea.const 0 : i32 loc("_359"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v434 = sea.const 2 : i32 loc("_359"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v435 = sea.select %v432, %v433, %v434 : i32 loc("_359"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  sea.br ^bb180(%v435, %v431 : i32, i64)
^bb179:
  %v436 = sea.const 0 : i32
  sea.br ^bb180(%v436, %v388 : i32, i64)
^bb180(%v437 : i32, %v438 : i64):
  sea.br ^bb181
^bb181:
  sea.br ^bb182
^bb182:
  %v439 = sea.icmp eq, %v438, %v418 : i64 loc("_364"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":34:26))
  sea.br ^bb183
^bb183:
  %v440 = sea.const 0 : i32 loc("_366"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v441 = sea.icmp ne, %v437, %v440 : i32 loc("_366"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v442 = sea.xor %v441, %v439 : i1 loc("_367"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v443 = sea.const 1 : i1 loc("_368")
  %v444 = sea.const 0 : i1 loc("_368")
  %v445 = sea.select %v443, %v442, %v444 : i1 loc("_368")
  sea.cond_br %v445, ^bb184, ^bb548
^bb184:
  sea.cond_br %v439, ^bb519(%v417 : !sea.mem<!sea.ptr<64>, i8>), ^bb185 loc("aws-c-common/source/hash_table.c":715:5)
^bb185:
  %v446 = sea.nondet "nd_int" [27] : i32 loc("_370"("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":16:10))
  %v447 = sea.const 4 : i32 loc("_371"("aws-c-common/source/hash_table.c":717:16))
  %v448 = sea.and %v446, %v447 : i32 loc("_371"("aws-c-common/source/hash_table.c":717:16))
  %v449 = sea.const 0 : i32 loc(".not.i.i.5"("aws-c-common/source/hash_table.c":717:16))
  %v450 = sea.icmp eq, %v448, %v449 : i32 loc(".not.i.i.5"("aws-c-common/source/hash_table.c":717:16))
  sea.cond_br %v450, ^bb186, ^bb494(%v417 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/hash_table.c":717:13)
^bb186:
  %v451 = sea.const 2 : i32 loc("_373"("aws-c-common/source/hash_table.c":725:16))
  %v452 = sea.and %v446, %v451 : i32 loc("_373"("aws-c-common/source/hash_table.c":725:16))
  %v453 = sea.const 0 : i32 loc(".not3.i.i.5"("aws-c-common/source/hash_table.c":725:16))
  %v454 = sea.icmp eq, %v452, %v453 : i32 loc(".not3.i.i.5"("aws-c-common/source/hash_table.c":725:16))
  sea.cond_br %v454, ^bb194(%v417, %v418 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb187 loc("aws-c-common/source/hash_table.c":725:13)
^bb187:
  sea.br ^bb188
^bb188:
  sea.br ^bb189
^bb189:
  sea.br ^bb190
^bb190:
  sea.br ^bb191
^bb191:
  %v455 = sea.load %v98[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_379"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:13))
  %v456 = sea.ptr.index %v455 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_380"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:21))
  %v457 = sea.const 8 : i64 loc("_381"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v458 = sea.ptr.dereferenceable %v456, %v457 : !sea.ptr<64>, i64 loc("_381"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v458, ^bb192, ^bb548
^bb192:
  %v459 = sea.load %v417[%v456] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_383"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v460 = sea.const 8 : i64 loc("_384"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v461 = sea.ptr.dereferenceable %v456, %v460 : !sea.ptr<64>, i64 loc("_384"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v461, ^bb193, ^bb548
^bb193:
  %v462 = sea.const 18446744073709551615 : i64 loc("_385"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v463 = sea.add %v418, %v462 : i64 loc("_385"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v464 = sea.const 18446744073709551615 : i64 loc("_386"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v465 = sea.add %v459, %v464 : i64 loc("_386"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v466 = sea.store %v417[%v456], %v465 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32)
  sea.br ^bb194(%v466, %v463 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/source/hash_table.c":727:9)
^bb194(%v467 : !sea.mem<!sea.ptr<64>, i8>, %v468 : i64):
  %v469 = sea.const 1 : i32 loc("_389"("aws-c-common/source/hash_table.c":729:18))
  %v470 = sea.and %v446, %v469 : i32 loc("_389"("aws-c-common/source/hash_table.c":729:18))
  %v471 = sea.const 0 : i32 loc(".not4.i.i.not.5"("aws-c-common/source/hash_table.c":729:18))
  %v472 = sea.icmp eq, %v470, %v471 : i32 loc(".not4.i.i.not.5"("aws-c-common/source/hash_table.c":729:18))
  sea.cond_br %v472, ^bb519(%v467 : !sea.mem<!sea.ptr<64>, i8>), ^bb195
^bb195:
  sea.br ^bb196
^bb196:
  sea.br ^bb197
^bb197:
  %v473 = sea.icmp eq, %v438, %v468 : i64 loc("_393"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:18))
  sea.cond_br %v473, ^bb207, ^bb198 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:7)
^bb198:
  sea.br ^bb199
^bb199:
  sea.br ^bb200
^bb200:
  %v474 = sea.nondet "nd_size_t" [28] : i64 loc("_397"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":49:22))
  %v475 = sea.const 0 : i64 loc(".not.i12.i.5"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v476 = sea.icmp eq, %v474, %v475 : i64 loc(".not.i12.i.5"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v477 = sea.const 0 : i1 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
  sea.cond_br %v476, ^bb204(%v477 : i1), ^bb201 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
^bb201:
  sea.br ^bb202
^bb202:
  sea.br ^bb203
^bb203:
  %v478 = sea.sub %v468, %v438 : i64 loc("_401"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:52))
  %v479 = sea.icmp ule, %v474, %v478 : i64 loc("_402"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:37))
  sea.br ^bb204(%v479 : i1)
^bb204(%v480 : i1):
  sea.assume %v480 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:3)
  sea.br ^bb205
^bb205:
  sea.br ^bb206
^bb206:
  %v481 = sea.add %v474, %v438 : i64 loc("_407"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":52:26))
  %v482 = sea.icmp eq, %v481, %v468 : i64 loc("_408"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:28))
  %v483 = sea.const 0 : i32 loc("_409"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v484 = sea.const 2 : i32 loc("_409"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v485 = sea.select %v482, %v483, %v484 : i32 loc("_409"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  sea.br ^bb208(%v485, %v481 : i32, i64)
^bb207:
  %v486 = sea.const 0 : i32
  sea.br ^bb208(%v486, %v438 : i32, i64)
^bb208(%v487 : i32, %v488 : i64):
  sea.br ^bb209
^bb209:
  sea.br ^bb210
^bb210:
  %v489 = sea.icmp eq, %v488, %v468 : i64 loc("_414"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":34:26))
  sea.br ^bb211
^bb211:
  %v490 = sea.const 0 : i32 loc("_416"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v491 = sea.icmp ne, %v487, %v490 : i32 loc("_416"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v492 = sea.xor %v491, %v489 : i1 loc("_417"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v493 = sea.const 1 : i1 loc("_418")
  %v494 = sea.const 0 : i1 loc("_418")
  %v495 = sea.select %v493, %v492, %v494 : i1 loc("_418")
  sea.cond_br %v495, ^bb212, ^bb548
^bb212:
  sea.cond_br %v489, ^bb519(%v467 : !sea.mem<!sea.ptr<64>, i8>), ^bb213 loc("aws-c-common/source/hash_table.c":715:5)
^bb213:
  %v496 = sea.nondet "nd_int" [29] : i32 loc("_420"("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":16:10))
  %v497 = sea.const 4 : i32 loc("_421"("aws-c-common/source/hash_table.c":717:16))
  %v498 = sea.and %v496, %v497 : i32 loc("_421"("aws-c-common/source/hash_table.c":717:16))
  %v499 = sea.const 0 : i32 loc(".not.i.i.6"("aws-c-common/source/hash_table.c":717:16))
  %v500 = sea.icmp eq, %v498, %v499 : i32 loc(".not.i.i.6"("aws-c-common/source/hash_table.c":717:16))
  sea.cond_br %v500, ^bb214, ^bb494(%v467 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/hash_table.c":717:13)
^bb214:
  %v501 = sea.const 2 : i32 loc("_423"("aws-c-common/source/hash_table.c":725:16))
  %v502 = sea.and %v496, %v501 : i32 loc("_423"("aws-c-common/source/hash_table.c":725:16))
  %v503 = sea.const 0 : i32 loc(".not3.i.i.6"("aws-c-common/source/hash_table.c":725:16))
  %v504 = sea.icmp eq, %v502, %v503 : i32 loc(".not3.i.i.6"("aws-c-common/source/hash_table.c":725:16))
  sea.cond_br %v504, ^bb222(%v467, %v468 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb215 loc("aws-c-common/source/hash_table.c":725:13)
^bb215:
  sea.br ^bb216
^bb216:
  sea.br ^bb217
^bb217:
  sea.br ^bb218
^bb218:
  sea.br ^bb219
^bb219:
  %v505 = sea.load %v98[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_429"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:13))
  %v506 = sea.ptr.index %v505 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_430"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:21))
  %v507 = sea.const 8 : i64 loc("_431"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v508 = sea.ptr.dereferenceable %v506, %v507 : !sea.ptr<64>, i64 loc("_431"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v508, ^bb220, ^bb548
^bb220:
  %v509 = sea.load %v467[%v506] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_433"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v510 = sea.const 8 : i64 loc("_434"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v511 = sea.ptr.dereferenceable %v506, %v510 : !sea.ptr<64>, i64 loc("_434"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v511, ^bb221, ^bb548
^bb221:
  %v512 = sea.const 18446744073709551615 : i64 loc("_435"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v513 = sea.add %v468, %v512 : i64 loc("_435"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v514 = sea.const 18446744073709551615 : i64 loc("_436"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v515 = sea.add %v509, %v514 : i64 loc("_436"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v516 = sea.store %v467[%v506], %v515 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32)
  sea.br ^bb222(%v516, %v513 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/source/hash_table.c":727:9)
^bb222(%v517 : !sea.mem<!sea.ptr<64>, i8>, %v518 : i64):
  %v519 = sea.const 1 : i32 loc("_439"("aws-c-common/source/hash_table.c":729:18))
  %v520 = sea.and %v496, %v519 : i32 loc("_439"("aws-c-common/source/hash_table.c":729:18))
  %v521 = sea.const 0 : i32 loc(".not4.i.i.not.6"("aws-c-common/source/hash_table.c":729:18))
  %v522 = sea.icmp eq, %v520, %v521 : i32 loc(".not4.i.i.not.6"("aws-c-common/source/hash_table.c":729:18))
  sea.cond_br %v522, ^bb519(%v517 : !sea.mem<!sea.ptr<64>, i8>), ^bb223
^bb223:
  sea.br ^bb224
^bb224:
  sea.br ^bb225
^bb225:
  %v523 = sea.icmp eq, %v488, %v518 : i64 loc("_443"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:18))
  sea.cond_br %v523, ^bb235, ^bb226 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:7)
^bb226:
  sea.br ^bb227
^bb227:
  sea.br ^bb228
^bb228:
  %v524 = sea.nondet "nd_size_t" [30] : i64 loc("_447"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":49:22))
  %v525 = sea.const 0 : i64 loc(".not.i12.i.6"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v526 = sea.icmp eq, %v524, %v525 : i64 loc(".not.i12.i.6"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v527 = sea.const 0 : i1 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
  sea.cond_br %v526, ^bb232(%v527 : i1), ^bb229 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
^bb229:
  sea.br ^bb230
^bb230:
  sea.br ^bb231
^bb231:
  %v528 = sea.sub %v518, %v488 : i64 loc("_451"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:52))
  %v529 = sea.icmp ule, %v524, %v528 : i64 loc("_452"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:37))
  sea.br ^bb232(%v529 : i1)
^bb232(%v530 : i1):
  sea.assume %v530 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:3)
  sea.br ^bb233
^bb233:
  sea.br ^bb234
^bb234:
  %v531 = sea.add %v524, %v488 : i64 loc("_457"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":52:26))
  %v532 = sea.icmp eq, %v531, %v518 : i64 loc("_458"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:28))
  %v533 = sea.const 0 : i32 loc("_459"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v534 = sea.const 2 : i32 loc("_459"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v535 = sea.select %v532, %v533, %v534 : i32 loc("_459"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  sea.br ^bb236(%v535, %v531 : i32, i64)
^bb235:
  %v536 = sea.const 0 : i32
  sea.br ^bb236(%v536, %v488 : i32, i64)
^bb236(%v537 : i32, %v538 : i64):
  sea.br ^bb237
^bb237:
  sea.br ^bb238
^bb238:
  %v539 = sea.icmp eq, %v538, %v518 : i64 loc("_464"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":34:26))
  sea.br ^bb239
^bb239:
  %v540 = sea.const 0 : i32 loc("_466"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v541 = sea.icmp ne, %v537, %v540 : i32 loc("_466"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v542 = sea.xor %v541, %v539 : i1 loc("_467"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v543 = sea.const 1 : i1 loc("_468")
  %v544 = sea.const 0 : i1 loc("_468")
  %v545 = sea.select %v543, %v542, %v544 : i1 loc("_468")
  sea.cond_br %v545, ^bb240, ^bb548
^bb240:
  sea.cond_br %v539, ^bb519(%v517 : !sea.mem<!sea.ptr<64>, i8>), ^bb241 loc("aws-c-common/source/hash_table.c":715:5)
^bb241:
  %v546 = sea.nondet "nd_int" [31] : i32 loc("_470"("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":16:10))
  %v547 = sea.const 4 : i32 loc("_471"("aws-c-common/source/hash_table.c":717:16))
  %v548 = sea.and %v546, %v547 : i32 loc("_471"("aws-c-common/source/hash_table.c":717:16))
  %v549 = sea.const 0 : i32 loc(".not.i.i.7"("aws-c-common/source/hash_table.c":717:16))
  %v550 = sea.icmp eq, %v548, %v549 : i32 loc(".not.i.i.7"("aws-c-common/source/hash_table.c":717:16))
  sea.cond_br %v550, ^bb242, ^bb494(%v517 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/hash_table.c":717:13)
^bb242:
  %v551 = sea.const 2 : i32 loc("_473"("aws-c-common/source/hash_table.c":725:16))
  %v552 = sea.and %v546, %v551 : i32 loc("_473"("aws-c-common/source/hash_table.c":725:16))
  %v553 = sea.const 0 : i32 loc(".not3.i.i.7"("aws-c-common/source/hash_table.c":725:16))
  %v554 = sea.icmp eq, %v552, %v553 : i32 loc(".not3.i.i.7"("aws-c-common/source/hash_table.c":725:16))
  sea.cond_br %v554, ^bb250(%v517, %v518 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb243 loc("aws-c-common/source/hash_table.c":725:13)
^bb243:
  sea.br ^bb244
^bb244:
  sea.br ^bb245
^bb245:
  sea.br ^bb246
^bb246:
  sea.br ^bb247
^bb247:
  %v555 = sea.load %v98[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_479"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:13))
  %v556 = sea.ptr.index %v555 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_480"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:21))
  %v557 = sea.const 8 : i64 loc("_481"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v558 = sea.ptr.dereferenceable %v556, %v557 : !sea.ptr<64>, i64 loc("_481"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v558, ^bb248, ^bb548
^bb248:
  %v559 = sea.load %v517[%v556] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_483"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v560 = sea.const 8 : i64 loc("_484"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v561 = sea.ptr.dereferenceable %v556, %v560 : !sea.ptr<64>, i64 loc("_484"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v561, ^bb249, ^bb548
^bb249:
  %v562 = sea.const 18446744073709551615 : i64 loc("_485"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v563 = sea.add %v518, %v562 : i64 loc("_485"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v564 = sea.const 18446744073709551615 : i64 loc("_486"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v565 = sea.add %v559, %v564 : i64 loc("_486"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v566 = sea.store %v517[%v556], %v565 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32)
  sea.br ^bb250(%v566, %v563 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/source/hash_table.c":727:9)
^bb250(%v567 : !sea.mem<!sea.ptr<64>, i8>, %v568 : i64):
  %v569 = sea.const 1 : i32 loc("_489"("aws-c-common/source/hash_table.c":729:18))
  %v570 = sea.and %v546, %v569 : i32 loc("_489"("aws-c-common/source/hash_table.c":729:18))
  %v571 = sea.const 0 : i32 loc(".not4.i.i.not.7"("aws-c-common/source/hash_table.c":729:18))
  %v572 = sea.icmp eq, %v570, %v571 : i32 loc(".not4.i.i.not.7"("aws-c-common/source/hash_table.c":729:18))
  sea.cond_br %v572, ^bb519(%v567 : !sea.mem<!sea.ptr<64>, i8>), ^bb251
^bb251:
  sea.br ^bb252
^bb252:
  sea.br ^bb253
^bb253:
  %v573 = sea.icmp eq, %v538, %v568 : i64 loc("_493"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:18))
  sea.cond_br %v573, ^bb263, ^bb254 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:7)
^bb254:
  sea.br ^bb255
^bb255:
  sea.br ^bb256
^bb256:
  %v574 = sea.nondet "nd_size_t" [32] : i64 loc("_497"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":49:22))
  %v575 = sea.const 0 : i64 loc(".not.i12.i.7"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v576 = sea.icmp eq, %v574, %v575 : i64 loc(".not.i12.i.7"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v577 = sea.const 0 : i1 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
  sea.cond_br %v576, ^bb260(%v577 : i1), ^bb257 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
^bb257:
  sea.br ^bb258
^bb258:
  sea.br ^bb259
^bb259:
  %v578 = sea.sub %v568, %v538 : i64 loc("_501"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:52))
  %v579 = sea.icmp ule, %v574, %v578 : i64 loc("_502"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:37))
  sea.br ^bb260(%v579 : i1)
^bb260(%v580 : i1):
  sea.assume %v580 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:3)
  sea.br ^bb261
^bb261:
  sea.br ^bb262
^bb262:
  %v581 = sea.add %v574, %v538 : i64 loc("_507"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":52:26))
  %v582 = sea.icmp eq, %v581, %v568 : i64 loc("_508"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:28))
  %v583 = sea.const 0 : i32 loc("_509"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v584 = sea.const 2 : i32 loc("_509"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v585 = sea.select %v582, %v583, %v584 : i32 loc("_509"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  sea.br ^bb264(%v585, %v581 : i32, i64)
^bb263:
  %v586 = sea.const 0 : i32
  sea.br ^bb264(%v586, %v538 : i32, i64)
^bb264(%v587 : i32, %v588 : i64):
  sea.br ^bb265
^bb265:
  sea.br ^bb266
^bb266:
  %v589 = sea.icmp eq, %v588, %v568 : i64 loc("_514"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":34:26))
  sea.br ^bb267
^bb267:
  %v590 = sea.const 0 : i32 loc("_516"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v591 = sea.icmp ne, %v587, %v590 : i32 loc("_516"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v592 = sea.xor %v591, %v589 : i1 loc("_517"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v593 = sea.const 1 : i1 loc("_518")
  %v594 = sea.const 0 : i1 loc("_518")
  %v595 = sea.select %v593, %v592, %v594 : i1 loc("_518")
  sea.cond_br %v595, ^bb268, ^bb548
^bb268:
  sea.cond_br %v589, ^bb519(%v567 : !sea.mem<!sea.ptr<64>, i8>), ^bb269 loc("aws-c-common/source/hash_table.c":715:5)
^bb269:
  %v596 = sea.nondet "nd_int" [33] : i32 loc("_520"("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":16:10))
  %v597 = sea.const 4 : i32 loc("_521"("aws-c-common/source/hash_table.c":717:16))
  %v598 = sea.and %v596, %v597 : i32 loc("_521"("aws-c-common/source/hash_table.c":717:16))
  %v599 = sea.const 0 : i32 loc(".not.i.i.8"("aws-c-common/source/hash_table.c":717:16))
  %v600 = sea.icmp eq, %v598, %v599 : i32 loc(".not.i.i.8"("aws-c-common/source/hash_table.c":717:16))
  sea.cond_br %v600, ^bb270, ^bb494(%v567 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/hash_table.c":717:13)
^bb270:
  %v601 = sea.const 2 : i32 loc("_523"("aws-c-common/source/hash_table.c":725:16))
  %v602 = sea.and %v596, %v601 : i32 loc("_523"("aws-c-common/source/hash_table.c":725:16))
  %v603 = sea.const 0 : i32 loc(".not3.i.i.8"("aws-c-common/source/hash_table.c":725:16))
  %v604 = sea.icmp eq, %v602, %v603 : i32 loc(".not3.i.i.8"("aws-c-common/source/hash_table.c":725:16))
  sea.cond_br %v604, ^bb278(%v567, %v568 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb271 loc("aws-c-common/source/hash_table.c":725:13)
^bb271:
  sea.br ^bb272
^bb272:
  sea.br ^bb273
^bb273:
  sea.br ^bb274
^bb274:
  sea.br ^bb275
^bb275:
  %v605 = sea.load %v98[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_529"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:13))
  %v606 = sea.ptr.index %v605 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_530"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:21))
  %v607 = sea.const 8 : i64 loc("_531"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v608 = sea.ptr.dereferenceable %v606, %v607 : !sea.ptr<64>, i64 loc("_531"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v608, ^bb276, ^bb548
^bb276:
  %v609 = sea.load %v567[%v606] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_533"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v610 = sea.const 8 : i64 loc("_534"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v611 = sea.ptr.dereferenceable %v606, %v610 : !sea.ptr<64>, i64 loc("_534"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v611, ^bb277, ^bb548
^bb277:
  %v612 = sea.const 18446744073709551615 : i64 loc("_535"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v613 = sea.add %v568, %v612 : i64 loc("_535"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v614 = sea.const 18446744073709551615 : i64 loc("_536"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v615 = sea.add %v609, %v614 : i64 loc("_536"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v616 = sea.store %v567[%v606], %v615 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32)
  sea.br ^bb278(%v616, %v613 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/source/hash_table.c":727:9)
^bb278(%v617 : !sea.mem<!sea.ptr<64>, i8>, %v618 : i64):
  %v619 = sea.const 1 : i32 loc("_539"("aws-c-common/source/hash_table.c":729:18))
  %v620 = sea.and %v596, %v619 : i32 loc("_539"("aws-c-common/source/hash_table.c":729:18))
  %v621 = sea.const 0 : i32 loc(".not4.i.i.not.8"("aws-c-common/source/hash_table.c":729:18))
  %v622 = sea.icmp eq, %v620, %v621 : i32 loc(".not4.i.i.not.8"("aws-c-common/source/hash_table.c":729:18))
  sea.cond_br %v622, ^bb519(%v617 : !sea.mem<!sea.ptr<64>, i8>), ^bb279
^bb279:
  sea.br ^bb280
^bb280:
  sea.br ^bb281
^bb281:
  %v623 = sea.icmp eq, %v588, %v618 : i64 loc("_543"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:18))
  sea.cond_br %v623, ^bb291, ^bb282 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:7)
^bb282:
  sea.br ^bb283
^bb283:
  sea.br ^bb284
^bb284:
  %v624 = sea.nondet "nd_size_t" [34] : i64 loc("_547"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":49:22))
  %v625 = sea.const 0 : i64 loc(".not.i12.i.8"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v626 = sea.icmp eq, %v624, %v625 : i64 loc(".not.i12.i.8"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v627 = sea.const 0 : i1 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
  sea.cond_br %v626, ^bb288(%v627 : i1), ^bb285 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
^bb285:
  sea.br ^bb286
^bb286:
  sea.br ^bb287
^bb287:
  %v628 = sea.sub %v618, %v588 : i64 loc("_551"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:52))
  %v629 = sea.icmp ule, %v624, %v628 : i64 loc("_552"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:37))
  sea.br ^bb288(%v629 : i1)
^bb288(%v630 : i1):
  sea.assume %v630 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:3)
  sea.br ^bb289
^bb289:
  sea.br ^bb290
^bb290:
  %v631 = sea.add %v624, %v588 : i64 loc("_557"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":52:26))
  %v632 = sea.icmp eq, %v631, %v618 : i64 loc("_558"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:28))
  %v633 = sea.const 0 : i32 loc("_559"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v634 = sea.const 2 : i32 loc("_559"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v635 = sea.select %v632, %v633, %v634 : i32 loc("_559"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  sea.br ^bb292(%v635, %v631 : i32, i64)
^bb291:
  %v636 = sea.const 0 : i32
  sea.br ^bb292(%v636, %v588 : i32, i64)
^bb292(%v637 : i32, %v638 : i64):
  sea.br ^bb293
^bb293:
  sea.br ^bb294
^bb294:
  %v639 = sea.icmp eq, %v638, %v618 : i64 loc("_564"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":34:26))
  sea.br ^bb295
^bb295:
  %v640 = sea.const 0 : i32 loc("_566"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v641 = sea.icmp ne, %v637, %v640 : i32 loc("_566"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v642 = sea.xor %v641, %v639 : i1 loc("_567"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v643 = sea.const 1 : i1 loc("_568")
  %v644 = sea.const 0 : i1 loc("_568")
  %v645 = sea.select %v643, %v642, %v644 : i1 loc("_568")
  sea.cond_br %v645, ^bb296, ^bb548
^bb296:
  sea.cond_br %v639, ^bb519(%v617 : !sea.mem<!sea.ptr<64>, i8>), ^bb297 loc("aws-c-common/source/hash_table.c":715:5)
^bb297:
  %v646 = sea.nondet "nd_int" [35] : i32 loc("_570"("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":16:10))
  %v647 = sea.const 4 : i32 loc("_571"("aws-c-common/source/hash_table.c":717:16))
  %v648 = sea.and %v646, %v647 : i32 loc("_571"("aws-c-common/source/hash_table.c":717:16))
  %v649 = sea.const 0 : i32 loc(".not.i.i.9"("aws-c-common/source/hash_table.c":717:16))
  %v650 = sea.icmp eq, %v648, %v649 : i32 loc(".not.i.i.9"("aws-c-common/source/hash_table.c":717:16))
  sea.cond_br %v650, ^bb298, ^bb494(%v617 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/hash_table.c":717:13)
^bb298:
  %v651 = sea.const 2 : i32 loc("_573"("aws-c-common/source/hash_table.c":725:16))
  %v652 = sea.and %v646, %v651 : i32 loc("_573"("aws-c-common/source/hash_table.c":725:16))
  %v653 = sea.const 0 : i32 loc(".not3.i.i.9"("aws-c-common/source/hash_table.c":725:16))
  %v654 = sea.icmp eq, %v652, %v653 : i32 loc(".not3.i.i.9"("aws-c-common/source/hash_table.c":725:16))
  sea.cond_br %v654, ^bb306(%v617, %v618 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb299 loc("aws-c-common/source/hash_table.c":725:13)
^bb299:
  sea.br ^bb300
^bb300:
  sea.br ^bb301
^bb301:
  sea.br ^bb302
^bb302:
  sea.br ^bb303
^bb303:
  %v655 = sea.load %v98[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_579"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:13))
  %v656 = sea.ptr.index %v655 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_580"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:21))
  %v657 = sea.const 8 : i64 loc("_581"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v658 = sea.ptr.dereferenceable %v656, %v657 : !sea.ptr<64>, i64 loc("_581"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v658, ^bb304, ^bb548
^bb304:
  %v659 = sea.load %v617[%v656] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_583"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v660 = sea.const 8 : i64 loc("_584"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v661 = sea.ptr.dereferenceable %v656, %v660 : !sea.ptr<64>, i64 loc("_584"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v661, ^bb305, ^bb548
^bb305:
  %v662 = sea.const 18446744073709551615 : i64 loc("_585"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v663 = sea.add %v618, %v662 : i64 loc("_585"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v664 = sea.const 18446744073709551615 : i64 loc("_586"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v665 = sea.add %v659, %v664 : i64 loc("_586"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v666 = sea.store %v617[%v656], %v665 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32)
  sea.br ^bb306(%v666, %v663 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/source/hash_table.c":727:9)
^bb306(%v667 : !sea.mem<!sea.ptr<64>, i8>, %v668 : i64):
  %v669 = sea.const 1 : i32 loc("_589"("aws-c-common/source/hash_table.c":729:18))
  %v670 = sea.and %v646, %v669 : i32 loc("_589"("aws-c-common/source/hash_table.c":729:18))
  %v671 = sea.const 0 : i32 loc(".not4.i.i.not.9"("aws-c-common/source/hash_table.c":729:18))
  %v672 = sea.icmp eq, %v670, %v671 : i32 loc(".not4.i.i.not.9"("aws-c-common/source/hash_table.c":729:18))
  sea.cond_br %v672, ^bb519(%v667 : !sea.mem<!sea.ptr<64>, i8>), ^bb307
^bb307:
  sea.br ^bb308
^bb308:
  sea.br ^bb309
^bb309:
  %v673 = sea.icmp eq, %v638, %v668 : i64 loc("_593"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:18))
  sea.cond_br %v673, ^bb319, ^bb310 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:7)
^bb310:
  sea.br ^bb311
^bb311:
  sea.br ^bb312
^bb312:
  %v674 = sea.nondet "nd_size_t" [36] : i64 loc("_597"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":49:22))
  %v675 = sea.const 0 : i64 loc(".not.i12.i.9"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v676 = sea.icmp eq, %v674, %v675 : i64 loc(".not.i12.i.9"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v677 = sea.const 0 : i1 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
  sea.cond_br %v676, ^bb316(%v677 : i1), ^bb313 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
^bb313:
  sea.br ^bb314
^bb314:
  sea.br ^bb315
^bb315:
  %v678 = sea.sub %v668, %v638 : i64 loc("_601"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:52))
  %v679 = sea.icmp ule, %v674, %v678 : i64 loc("_602"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:37))
  sea.br ^bb316(%v679 : i1)
^bb316(%v680 : i1):
  sea.assume %v680 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:3)
  sea.br ^bb317
^bb317:
  sea.br ^bb318
^bb318:
  %v681 = sea.add %v674, %v638 : i64 loc("_607"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":52:26))
  %v682 = sea.icmp eq, %v681, %v668 : i64 loc("_608"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:28))
  %v683 = sea.const 0 : i32 loc("_609"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v684 = sea.const 2 : i32 loc("_609"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v685 = sea.select %v682, %v683, %v684 : i32 loc("_609"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  sea.br ^bb320(%v685, %v681 : i32, i64)
^bb319:
  %v686 = sea.const 0 : i32
  sea.br ^bb320(%v686, %v638 : i32, i64)
^bb320(%v687 : i32, %v688 : i64):
  sea.br ^bb321
^bb321:
  sea.br ^bb322
^bb322:
  %v689 = sea.icmp eq, %v688, %v668 : i64 loc("_614"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":34:26))
  sea.br ^bb323
^bb323:
  %v690 = sea.const 0 : i32 loc("_616"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v691 = sea.icmp ne, %v687, %v690 : i32 loc("_616"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v692 = sea.xor %v691, %v689 : i1 loc("_617"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v693 = sea.const 1 : i1 loc("_618")
  %v694 = sea.const 0 : i1 loc("_618")
  %v695 = sea.select %v693, %v692, %v694 : i1 loc("_618")
  sea.cond_br %v695, ^bb324, ^bb548
^bb324:
  sea.cond_br %v689, ^bb519(%v667 : !sea.mem<!sea.ptr<64>, i8>), ^bb325 loc("aws-c-common/source/hash_table.c":715:5)
^bb325:
  %v696 = sea.nondet "nd_int" [37] : i32 loc("_620"("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":16:10))
  %v697 = sea.const 4 : i32 loc("_621"("aws-c-common/source/hash_table.c":717:16))
  %v698 = sea.and %v696, %v697 : i32 loc("_621"("aws-c-common/source/hash_table.c":717:16))
  %v699 = sea.const 0 : i32 loc(".not.i.i.10"("aws-c-common/source/hash_table.c":717:16))
  %v700 = sea.icmp eq, %v698, %v699 : i32 loc(".not.i.i.10"("aws-c-common/source/hash_table.c":717:16))
  sea.cond_br %v700, ^bb326, ^bb494(%v667 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/hash_table.c":717:13)
^bb326:
  %v701 = sea.const 2 : i32 loc("_623"("aws-c-common/source/hash_table.c":725:16))
  %v702 = sea.and %v696, %v701 : i32 loc("_623"("aws-c-common/source/hash_table.c":725:16))
  %v703 = sea.const 0 : i32 loc(".not3.i.i.10"("aws-c-common/source/hash_table.c":725:16))
  %v704 = sea.icmp eq, %v702, %v703 : i32 loc(".not3.i.i.10"("aws-c-common/source/hash_table.c":725:16))
  sea.cond_br %v704, ^bb334(%v667, %v668 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb327 loc("aws-c-common/source/hash_table.c":725:13)
^bb327:
  sea.br ^bb328
^bb328:
  sea.br ^bb329
^bb329:
  sea.br ^bb330
^bb330:
  sea.br ^bb331
^bb331:
  %v705 = sea.load %v98[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_629"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:13))
  %v706 = sea.ptr.index %v705 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_630"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:21))
  %v707 = sea.const 8 : i64 loc("_631"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v708 = sea.ptr.dereferenceable %v706, %v707 : !sea.ptr<64>, i64 loc("_631"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v708, ^bb332, ^bb548
^bb332:
  %v709 = sea.load %v667[%v706] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_633"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v710 = sea.const 8 : i64 loc("_634"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v711 = sea.ptr.dereferenceable %v706, %v710 : !sea.ptr<64>, i64 loc("_634"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v711, ^bb333, ^bb548
^bb333:
  %v712 = sea.const 18446744073709551615 : i64 loc("_635"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v713 = sea.add %v668, %v712 : i64 loc("_635"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v714 = sea.const 18446744073709551615 : i64 loc("_636"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v715 = sea.add %v709, %v714 : i64 loc("_636"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v716 = sea.store %v667[%v706], %v715 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32)
  sea.br ^bb334(%v716, %v713 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/source/hash_table.c":727:9)
^bb334(%v717 : !sea.mem<!sea.ptr<64>, i8>, %v718 : i64):
  %v719 = sea.const 1 : i32 loc("_639"("aws-c-common/source/hash_table.c":729:18))
  %v720 = sea.and %v696, %v719 : i32 loc("_639"("aws-c-common/source/hash_table.c":729:18))
  %v721 = sea.const 0 : i32 loc(".not4.i.i.not.10"("aws-c-common/source/hash_table.c":729:18))
  %v722 = sea.icmp eq, %v720, %v721 : i32 loc(".not4.i.i.not.10"("aws-c-common/source/hash_table.c":729:18))
  sea.cond_br %v722, ^bb519(%v717 : !sea.mem<!sea.ptr<64>, i8>), ^bb335
^bb335:
  sea.br ^bb336
^bb336:
  sea.br ^bb337
^bb337:
  %v723 = sea.icmp eq, %v688, %v718 : i64 loc("_643"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:18))
  sea.cond_br %v723, ^bb347, ^bb338 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:7)
^bb338:
  sea.br ^bb339
^bb339:
  sea.br ^bb340
^bb340:
  %v724 = sea.nondet "nd_size_t" [38] : i64 loc("_647"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":49:22))
  %v725 = sea.const 0 : i64 loc(".not.i12.i.10"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v726 = sea.icmp eq, %v724, %v725 : i64 loc(".not.i12.i.10"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v727 = sea.const 0 : i1 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
  sea.cond_br %v726, ^bb344(%v727 : i1), ^bb341 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
^bb341:
  sea.br ^bb342
^bb342:
  sea.br ^bb343
^bb343:
  %v728 = sea.sub %v718, %v688 : i64 loc("_651"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:52))
  %v729 = sea.icmp ule, %v724, %v728 : i64 loc("_652"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:37))
  sea.br ^bb344(%v729 : i1)
^bb344(%v730 : i1):
  sea.assume %v730 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:3)
  sea.br ^bb345
^bb345:
  sea.br ^bb346
^bb346:
  %v731 = sea.add %v724, %v688 : i64 loc("_657"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":52:26))
  %v732 = sea.icmp eq, %v731, %v718 : i64 loc("_658"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:28))
  %v733 = sea.const 0 : i32 loc("_659"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v734 = sea.const 2 : i32 loc("_659"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v735 = sea.select %v732, %v733, %v734 : i32 loc("_659"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  sea.br ^bb348(%v735, %v731 : i32, i64)
^bb347:
  %v736 = sea.const 0 : i32
  sea.br ^bb348(%v736, %v688 : i32, i64)
^bb348(%v737 : i32, %v738 : i64):
  sea.br ^bb349
^bb349:
  sea.br ^bb350
^bb350:
  %v739 = sea.icmp eq, %v738, %v718 : i64 loc("_664"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":34:26))
  sea.br ^bb351
^bb351:
  %v740 = sea.const 0 : i32 loc("_666"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v741 = sea.icmp ne, %v737, %v740 : i32 loc("_666"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v742 = sea.xor %v741, %v739 : i1 loc("_667"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v743 = sea.const 1 : i1 loc("_668")
  %v744 = sea.const 0 : i1 loc("_668")
  %v745 = sea.select %v743, %v742, %v744 : i1 loc("_668")
  sea.cond_br %v745, ^bb352, ^bb548
^bb352:
  sea.cond_br %v739, ^bb519(%v717 : !sea.mem<!sea.ptr<64>, i8>), ^bb353 loc("aws-c-common/source/hash_table.c":715:5)
^bb353:
  %v746 = sea.nondet "nd_int" [39] : i32 loc("_670"("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":16:10))
  %v747 = sea.const 4 : i32 loc("_671"("aws-c-common/source/hash_table.c":717:16))
  %v748 = sea.and %v746, %v747 : i32 loc("_671"("aws-c-common/source/hash_table.c":717:16))
  %v749 = sea.const 0 : i32 loc(".not.i.i.11"("aws-c-common/source/hash_table.c":717:16))
  %v750 = sea.icmp eq, %v748, %v749 : i32 loc(".not.i.i.11"("aws-c-common/source/hash_table.c":717:16))
  sea.cond_br %v750, ^bb354, ^bb494(%v717 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/hash_table.c":717:13)
^bb354:
  %v751 = sea.const 2 : i32 loc("_673"("aws-c-common/source/hash_table.c":725:16))
  %v752 = sea.and %v746, %v751 : i32 loc("_673"("aws-c-common/source/hash_table.c":725:16))
  %v753 = sea.const 0 : i32 loc(".not3.i.i.11"("aws-c-common/source/hash_table.c":725:16))
  %v754 = sea.icmp eq, %v752, %v753 : i32 loc(".not3.i.i.11"("aws-c-common/source/hash_table.c":725:16))
  sea.cond_br %v754, ^bb362(%v717, %v718 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb355 loc("aws-c-common/source/hash_table.c":725:13)
^bb355:
  sea.br ^bb356
^bb356:
  sea.br ^bb357
^bb357:
  sea.br ^bb358
^bb358:
  sea.br ^bb359
^bb359:
  %v755 = sea.load %v98[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_679"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:13))
  %v756 = sea.ptr.index %v755 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_680"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:21))
  %v757 = sea.const 8 : i64 loc("_681"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v758 = sea.ptr.dereferenceable %v756, %v757 : !sea.ptr<64>, i64 loc("_681"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v758, ^bb360, ^bb548
^bb360:
  %v759 = sea.load %v717[%v756] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_683"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v760 = sea.const 8 : i64 loc("_684"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v761 = sea.ptr.dereferenceable %v756, %v760 : !sea.ptr<64>, i64 loc("_684"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v761, ^bb361, ^bb548
^bb361:
  %v762 = sea.const 18446744073709551615 : i64 loc("_685"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v763 = sea.add %v718, %v762 : i64 loc("_685"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v764 = sea.const 18446744073709551615 : i64 loc("_686"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v765 = sea.add %v759, %v764 : i64 loc("_686"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v766 = sea.store %v717[%v756], %v765 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32)
  sea.br ^bb362(%v766, %v763 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/source/hash_table.c":727:9)
^bb362(%v767 : !sea.mem<!sea.ptr<64>, i8>, %v768 : i64):
  %v769 = sea.const 1 : i32 loc("_689"("aws-c-common/source/hash_table.c":729:18))
  %v770 = sea.and %v746, %v769 : i32 loc("_689"("aws-c-common/source/hash_table.c":729:18))
  %v771 = sea.const 0 : i32 loc(".not4.i.i.not.11"("aws-c-common/source/hash_table.c":729:18))
  %v772 = sea.icmp eq, %v770, %v771 : i32 loc(".not4.i.i.not.11"("aws-c-common/source/hash_table.c":729:18))
  sea.cond_br %v772, ^bb519(%v767 : !sea.mem<!sea.ptr<64>, i8>), ^bb363
^bb363:
  sea.br ^bb364
^bb364:
  sea.br ^bb365
^bb365:
  %v773 = sea.icmp eq, %v738, %v768 : i64 loc("_693"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:18))
  sea.cond_br %v773, ^bb375, ^bb366 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:7)
^bb366:
  sea.br ^bb367
^bb367:
  sea.br ^bb368
^bb368:
  %v774 = sea.nondet "nd_size_t" [40] : i64 loc("_697"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":49:22))
  %v775 = sea.const 0 : i64 loc(".not.i12.i.11"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v776 = sea.icmp eq, %v774, %v775 : i64 loc(".not.i12.i.11"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v777 = sea.const 0 : i1 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
  sea.cond_br %v776, ^bb372(%v777 : i1), ^bb369 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
^bb369:
  sea.br ^bb370
^bb370:
  sea.br ^bb371
^bb371:
  %v778 = sea.sub %v768, %v738 : i64 loc("_701"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:52))
  %v779 = sea.icmp ule, %v774, %v778 : i64 loc("_702"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:37))
  sea.br ^bb372(%v779 : i1)
^bb372(%v780 : i1):
  sea.assume %v780 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:3)
  sea.br ^bb373
^bb373:
  sea.br ^bb374
^bb374:
  %v781 = sea.add %v774, %v738 : i64 loc("_707"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":52:26))
  %v782 = sea.icmp eq, %v781, %v768 : i64 loc("_708"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:28))
  %v783 = sea.const 0 : i32 loc("_709"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v784 = sea.const 2 : i32 loc("_709"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v785 = sea.select %v782, %v783, %v784 : i32 loc("_709"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  sea.br ^bb376(%v785, %v781 : i32, i64)
^bb375:
  %v786 = sea.const 0 : i32
  sea.br ^bb376(%v786, %v738 : i32, i64)
^bb376(%v787 : i32, %v788 : i64):
  sea.br ^bb377
^bb377:
  sea.br ^bb378
^bb378:
  %v789 = sea.icmp eq, %v788, %v768 : i64 loc("_714"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":34:26))
  sea.br ^bb379
^bb379:
  %v790 = sea.const 0 : i32 loc("_716"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v791 = sea.icmp ne, %v787, %v790 : i32 loc("_716"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v792 = sea.xor %v791, %v789 : i1 loc("_717"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v793 = sea.const 1 : i1 loc("_718")
  %v794 = sea.const 0 : i1 loc("_718")
  %v795 = sea.select %v793, %v792, %v794 : i1 loc("_718")
  sea.cond_br %v795, ^bb380, ^bb548
^bb380:
  sea.cond_br %v789, ^bb519(%v767 : !sea.mem<!sea.ptr<64>, i8>), ^bb381 loc("aws-c-common/source/hash_table.c":715:5)
^bb381:
  %v796 = sea.nondet "nd_int" [41] : i32 loc("_720"("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":16:10))
  %v797 = sea.const 4 : i32 loc("_721"("aws-c-common/source/hash_table.c":717:16))
  %v798 = sea.and %v796, %v797 : i32 loc("_721"("aws-c-common/source/hash_table.c":717:16))
  %v799 = sea.const 0 : i32 loc(".not.i.i.12"("aws-c-common/source/hash_table.c":717:16))
  %v800 = sea.icmp eq, %v798, %v799 : i32 loc(".not.i.i.12"("aws-c-common/source/hash_table.c":717:16))
  sea.cond_br %v800, ^bb382, ^bb494(%v767 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/hash_table.c":717:13)
^bb382:
  %v801 = sea.const 2 : i32 loc("_723"("aws-c-common/source/hash_table.c":725:16))
  %v802 = sea.and %v796, %v801 : i32 loc("_723"("aws-c-common/source/hash_table.c":725:16))
  %v803 = sea.const 0 : i32 loc(".not3.i.i.12"("aws-c-common/source/hash_table.c":725:16))
  %v804 = sea.icmp eq, %v802, %v803 : i32 loc(".not3.i.i.12"("aws-c-common/source/hash_table.c":725:16))
  sea.cond_br %v804, ^bb390(%v767, %v768 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb383 loc("aws-c-common/source/hash_table.c":725:13)
^bb383:
  sea.br ^bb384
^bb384:
  sea.br ^bb385
^bb385:
  sea.br ^bb386
^bb386:
  sea.br ^bb387
^bb387:
  %v805 = sea.load %v98[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_729"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:13))
  %v806 = sea.ptr.index %v805 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_730"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:21))
  %v807 = sea.const 8 : i64 loc("_731"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v808 = sea.ptr.dereferenceable %v806, %v807 : !sea.ptr<64>, i64 loc("_731"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v808, ^bb388, ^bb548
^bb388:
  %v809 = sea.load %v767[%v806] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_733"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v810 = sea.const 8 : i64 loc("_734"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v811 = sea.ptr.dereferenceable %v806, %v810 : !sea.ptr<64>, i64 loc("_734"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v811, ^bb389, ^bb548
^bb389:
  %v812 = sea.const 18446744073709551615 : i64 loc("_735"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v813 = sea.add %v768, %v812 : i64 loc("_735"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v814 = sea.const 18446744073709551615 : i64 loc("_736"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v815 = sea.add %v809, %v814 : i64 loc("_736"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v816 = sea.store %v767[%v806], %v815 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32)
  sea.br ^bb390(%v816, %v813 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/source/hash_table.c":727:9)
^bb390(%v817 : !sea.mem<!sea.ptr<64>, i8>, %v818 : i64):
  %v819 = sea.const 1 : i32 loc("_739"("aws-c-common/source/hash_table.c":729:18))
  %v820 = sea.and %v796, %v819 : i32 loc("_739"("aws-c-common/source/hash_table.c":729:18))
  %v821 = sea.const 0 : i32 loc(".not4.i.i.not.12"("aws-c-common/source/hash_table.c":729:18))
  %v822 = sea.icmp eq, %v820, %v821 : i32 loc(".not4.i.i.not.12"("aws-c-common/source/hash_table.c":729:18))
  sea.cond_br %v822, ^bb519(%v817 : !sea.mem<!sea.ptr<64>, i8>), ^bb391
^bb391:
  sea.br ^bb392
^bb392:
  sea.br ^bb393
^bb393:
  %v823 = sea.icmp eq, %v788, %v818 : i64 loc("_743"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:18))
  sea.cond_br %v823, ^bb403, ^bb394 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:7)
^bb394:
  sea.br ^bb395
^bb395:
  sea.br ^bb396
^bb396:
  %v824 = sea.nondet "nd_size_t" [42] : i64 loc("_747"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":49:22))
  %v825 = sea.const 0 : i64 loc(".not.i12.i.12"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v826 = sea.icmp eq, %v824, %v825 : i64 loc(".not.i12.i.12"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v827 = sea.const 0 : i1 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
  sea.cond_br %v826, ^bb400(%v827 : i1), ^bb397 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
^bb397:
  sea.br ^bb398
^bb398:
  sea.br ^bb399
^bb399:
  %v828 = sea.sub %v818, %v788 : i64 loc("_751"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:52))
  %v829 = sea.icmp ule, %v824, %v828 : i64 loc("_752"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:37))
  sea.br ^bb400(%v829 : i1)
^bb400(%v830 : i1):
  sea.assume %v830 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:3)
  sea.br ^bb401
^bb401:
  sea.br ^bb402
^bb402:
  %v831 = sea.add %v824, %v788 : i64 loc("_757"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":52:26))
  %v832 = sea.icmp eq, %v831, %v818 : i64 loc("_758"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:28))
  %v833 = sea.const 0 : i32 loc("_759"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v834 = sea.const 2 : i32 loc("_759"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v835 = sea.select %v832, %v833, %v834 : i32 loc("_759"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  sea.br ^bb404(%v835, %v831 : i32, i64)
^bb403:
  %v836 = sea.const 0 : i32
  sea.br ^bb404(%v836, %v788 : i32, i64)
^bb404(%v837 : i32, %v838 : i64):
  sea.br ^bb405
^bb405:
  sea.br ^bb406
^bb406:
  %v839 = sea.icmp eq, %v838, %v818 : i64 loc("_764"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":34:26))
  sea.br ^bb407
^bb407:
  %v840 = sea.const 0 : i32 loc("_766"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v841 = sea.icmp ne, %v837, %v840 : i32 loc("_766"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v842 = sea.xor %v841, %v839 : i1 loc("_767"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v843 = sea.const 1 : i1 loc("_768")
  %v844 = sea.const 0 : i1 loc("_768")
  %v845 = sea.select %v843, %v842, %v844 : i1 loc("_768")
  sea.cond_br %v845, ^bb408, ^bb548
^bb408:
  sea.cond_br %v839, ^bb519(%v817 : !sea.mem<!sea.ptr<64>, i8>), ^bb409 loc("aws-c-common/source/hash_table.c":715:5)
^bb409:
  %v846 = sea.nondet "nd_int" [43] : i32 loc("_770"("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":16:10))
  %v847 = sea.const 4 : i32 loc("_771"("aws-c-common/source/hash_table.c":717:16))
  %v848 = sea.and %v846, %v847 : i32 loc("_771"("aws-c-common/source/hash_table.c":717:16))
  %v849 = sea.const 0 : i32 loc(".not.i.i.13"("aws-c-common/source/hash_table.c":717:16))
  %v850 = sea.icmp eq, %v848, %v849 : i32 loc(".not.i.i.13"("aws-c-common/source/hash_table.c":717:16))
  sea.cond_br %v850, ^bb410, ^bb494(%v817 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/hash_table.c":717:13)
^bb410:
  %v851 = sea.const 2 : i32 loc("_773"("aws-c-common/source/hash_table.c":725:16))
  %v852 = sea.and %v846, %v851 : i32 loc("_773"("aws-c-common/source/hash_table.c":725:16))
  %v853 = sea.const 0 : i32 loc(".not3.i.i.13"("aws-c-common/source/hash_table.c":725:16))
  %v854 = sea.icmp eq, %v852, %v853 : i32 loc(".not3.i.i.13"("aws-c-common/source/hash_table.c":725:16))
  sea.cond_br %v854, ^bb418(%v817, %v818 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb411 loc("aws-c-common/source/hash_table.c":725:13)
^bb411:
  sea.br ^bb412
^bb412:
  sea.br ^bb413
^bb413:
  sea.br ^bb414
^bb414:
  sea.br ^bb415
^bb415:
  %v855 = sea.load %v98[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_779"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:13))
  %v856 = sea.ptr.index %v855 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_780"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:21))
  %v857 = sea.const 8 : i64 loc("_781"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v858 = sea.ptr.dereferenceable %v856, %v857 : !sea.ptr<64>, i64 loc("_781"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v858, ^bb416, ^bb548
^bb416:
  %v859 = sea.load %v817[%v856] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_783"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v860 = sea.const 8 : i64 loc("_784"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v861 = sea.ptr.dereferenceable %v856, %v860 : !sea.ptr<64>, i64 loc("_784"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v861, ^bb417, ^bb548
^bb417:
  %v862 = sea.const 18446744073709551615 : i64 loc("_785"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v863 = sea.add %v818, %v862 : i64 loc("_785"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v864 = sea.const 18446744073709551615 : i64 loc("_786"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v865 = sea.add %v859, %v864 : i64 loc("_786"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v866 = sea.store %v817[%v856], %v865 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32)
  sea.br ^bb418(%v866, %v863 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/source/hash_table.c":727:9)
^bb418(%v867 : !sea.mem<!sea.ptr<64>, i8>, %v868 : i64):
  %v869 = sea.const 1 : i32 loc("_789"("aws-c-common/source/hash_table.c":729:18))
  %v870 = sea.and %v846, %v869 : i32 loc("_789"("aws-c-common/source/hash_table.c":729:18))
  %v871 = sea.const 0 : i32 loc(".not4.i.i.not.13"("aws-c-common/source/hash_table.c":729:18))
  %v872 = sea.icmp eq, %v870, %v871 : i32 loc(".not4.i.i.not.13"("aws-c-common/source/hash_table.c":729:18))
  sea.cond_br %v872, ^bb519(%v867 : !sea.mem<!sea.ptr<64>, i8>), ^bb419
^bb419:
  sea.br ^bb420
^bb420:
  sea.br ^bb421
^bb421:
  %v873 = sea.icmp eq, %v838, %v868 : i64 loc("_793"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:18))
  sea.cond_br %v873, ^bb431, ^bb422 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:7)
^bb422:
  sea.br ^bb423
^bb423:
  sea.br ^bb424
^bb424:
  %v874 = sea.nondet "nd_size_t" [44] : i64 loc("_797"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":49:22))
  %v875 = sea.const 0 : i64 loc(".not.i12.i.13"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v876 = sea.icmp eq, %v874, %v875 : i64 loc(".not.i12.i.13"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v877 = sea.const 0 : i1 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
  sea.cond_br %v876, ^bb428(%v877 : i1), ^bb425 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
^bb425:
  sea.br ^bb426
^bb426:
  sea.br ^bb427
^bb427:
  %v878 = sea.sub %v868, %v838 : i64 loc("_801"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:52))
  %v879 = sea.icmp ule, %v874, %v878 : i64 loc("_802"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:37))
  sea.br ^bb428(%v879 : i1)
^bb428(%v880 : i1):
  sea.assume %v880 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:3)
  sea.br ^bb429
^bb429:
  sea.br ^bb430
^bb430:
  %v881 = sea.add %v874, %v838 : i64 loc("_807"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":52:26))
  %v882 = sea.icmp eq, %v881, %v868 : i64 loc("_808"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:28))
  %v883 = sea.const 0 : i32 loc("_809"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v884 = sea.const 2 : i32 loc("_809"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v885 = sea.select %v882, %v883, %v884 : i32 loc("_809"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  sea.br ^bb432(%v885, %v881 : i32, i64)
^bb431:
  %v886 = sea.const 0 : i32
  sea.br ^bb432(%v886, %v838 : i32, i64)
^bb432(%v887 : i32, %v888 : i64):
  sea.br ^bb433
^bb433:
  sea.br ^bb434
^bb434:
  %v889 = sea.icmp eq, %v888, %v868 : i64 loc("_814"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":34:26))
  sea.br ^bb435
^bb435:
  %v890 = sea.const 0 : i32 loc("_816"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v891 = sea.icmp ne, %v887, %v890 : i32 loc("_816"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v892 = sea.xor %v891, %v889 : i1 loc("_817"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v893 = sea.const 1 : i1 loc("_818")
  %v894 = sea.const 0 : i1 loc("_818")
  %v895 = sea.select %v893, %v892, %v894 : i1 loc("_818")
  sea.cond_br %v895, ^bb436, ^bb548
^bb436:
  sea.cond_br %v889, ^bb519(%v867 : !sea.mem<!sea.ptr<64>, i8>), ^bb437 loc("aws-c-common/source/hash_table.c":715:5)
^bb437:
  %v896 = sea.nondet "nd_int" [45] : i32 loc("_820"("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":16:10))
  %v897 = sea.const 4 : i32 loc("_821"("aws-c-common/source/hash_table.c":717:16))
  %v898 = sea.and %v896, %v897 : i32 loc("_821"("aws-c-common/source/hash_table.c":717:16))
  %v899 = sea.const 0 : i32 loc(".not.i.i.14"("aws-c-common/source/hash_table.c":717:16))
  %v900 = sea.icmp eq, %v898, %v899 : i32 loc(".not.i.i.14"("aws-c-common/source/hash_table.c":717:16))
  sea.cond_br %v900, ^bb438, ^bb494(%v867 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/hash_table.c":717:13)
^bb438:
  %v901 = sea.const 2 : i32 loc("_823"("aws-c-common/source/hash_table.c":725:16))
  %v902 = sea.and %v896, %v901 : i32 loc("_823"("aws-c-common/source/hash_table.c":725:16))
  %v903 = sea.const 0 : i32 loc(".not3.i.i.14"("aws-c-common/source/hash_table.c":725:16))
  %v904 = sea.icmp eq, %v902, %v903 : i32 loc(".not3.i.i.14"("aws-c-common/source/hash_table.c":725:16))
  sea.cond_br %v904, ^bb446(%v867, %v868 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb439 loc("aws-c-common/source/hash_table.c":725:13)
^bb439:
  sea.br ^bb440
^bb440:
  sea.br ^bb441
^bb441:
  sea.br ^bb442
^bb442:
  sea.br ^bb443
^bb443:
  %v905 = sea.load %v98[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_829"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:13))
  %v906 = sea.ptr.index %v905 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_830"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:21))
  %v907 = sea.const 8 : i64 loc("_831"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v908 = sea.ptr.dereferenceable %v906, %v907 : !sea.ptr<64>, i64 loc("_831"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v908, ^bb444, ^bb548
^bb444:
  %v909 = sea.load %v867[%v906] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_833"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v910 = sea.const 8 : i64 loc("_834"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v911 = sea.ptr.dereferenceable %v906, %v910 : !sea.ptr<64>, i64 loc("_834"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v911, ^bb445, ^bb548
^bb445:
  %v912 = sea.const 18446744073709551615 : i64 loc("_835"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v913 = sea.add %v868, %v912 : i64 loc("_835"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v914 = sea.const 18446744073709551615 : i64 loc("_836"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v915 = sea.add %v909, %v914 : i64 loc("_836"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v916 = sea.store %v867[%v906], %v915 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32)
  sea.br ^bb446(%v916, %v913 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/source/hash_table.c":727:9)
^bb446(%v917 : !sea.mem<!sea.ptr<64>, i8>, %v918 : i64):
  %v919 = sea.const 1 : i32 loc("_839"("aws-c-common/source/hash_table.c":729:18))
  %v920 = sea.and %v896, %v919 : i32 loc("_839"("aws-c-common/source/hash_table.c":729:18))
  %v921 = sea.const 0 : i32 loc(".not4.i.i.not.14"("aws-c-common/source/hash_table.c":729:18))
  %v922 = sea.icmp eq, %v920, %v921 : i32 loc(".not4.i.i.not.14"("aws-c-common/source/hash_table.c":729:18))
  sea.cond_br %v922, ^bb519(%v917 : !sea.mem<!sea.ptr<64>, i8>), ^bb447
^bb447:
  sea.br ^bb448
^bb448:
  sea.br ^bb449
^bb449:
  %v923 = sea.icmp eq, %v888, %v918 : i64 loc("_843"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:18))
  sea.cond_br %v923, ^bb459, ^bb450 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:7)
^bb450:
  sea.br ^bb451
^bb451:
  sea.br ^bb452
^bb452:
  %v924 = sea.nondet "nd_size_t" [46] : i64 loc("_847"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":49:22))
  %v925 = sea.const 0 : i64 loc(".not.i12.i.14"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v926 = sea.icmp eq, %v924, %v925 : i64 loc(".not.i12.i.14"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v927 = sea.const 0 : i1 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
  sea.cond_br %v926, ^bb456(%v927 : i1), ^bb453 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
^bb453:
  sea.br ^bb454
^bb454:
  sea.br ^bb455
^bb455:
  %v928 = sea.sub %v918, %v888 : i64 loc("_851"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:52))
  %v929 = sea.icmp ule, %v924, %v928 : i64 loc("_852"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:37))
  sea.br ^bb456(%v929 : i1)
^bb456(%v930 : i1):
  sea.assume %v930 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:3)
  sea.br ^bb457
^bb457:
  sea.br ^bb458
^bb458:
  %v931 = sea.add %v924, %v888 : i64 loc("_857"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":52:26))
  %v932 = sea.icmp eq, %v931, %v918 : i64 loc("_858"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:28))
  %v933 = sea.const 0 : i32 loc("_859"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v934 = sea.const 2 : i32 loc("_859"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v935 = sea.select %v932, %v933, %v934 : i32 loc("_859"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  sea.br ^bb460(%v935, %v931 : i32, i64)
^bb459:
  %v936 = sea.const 0 : i32
  sea.br ^bb460(%v936, %v888 : i32, i64)
^bb460(%v937 : i32, %v938 : i64):
  sea.br ^bb461
^bb461:
  sea.br ^bb462
^bb462:
  %v939 = sea.icmp eq, %v938, %v918 : i64 loc("_864"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":34:26))
  sea.br ^bb463
^bb463:
  %v940 = sea.const 0 : i32 loc("_866"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v941 = sea.icmp ne, %v937, %v940 : i32 loc("_866"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v942 = sea.xor %v941, %v939 : i1 loc("_867"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v943 = sea.const 1 : i1 loc("_868")
  %v944 = sea.const 0 : i1 loc("_868")
  %v945 = sea.select %v943, %v942, %v944 : i1 loc("_868")
  sea.cond_br %v945, ^bb464, ^bb548
^bb464:
  sea.cond_br %v939, ^bb519(%v917 : !sea.mem<!sea.ptr<64>, i8>), ^bb465 loc("aws-c-common/source/hash_table.c":715:5)
^bb465:
  %v946 = sea.nondet "nd_int" [47] : i32 loc("_870"("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":16:10))
  %v947 = sea.const 4 : i32 loc("_871"("aws-c-common/source/hash_table.c":717:16))
  %v948 = sea.and %v946, %v947 : i32 loc("_871"("aws-c-common/source/hash_table.c":717:16))
  %v949 = sea.const 0 : i32 loc(".not.i.i.15"("aws-c-common/source/hash_table.c":717:16))
  %v950 = sea.icmp eq, %v948, %v949 : i32 loc(".not.i.i.15"("aws-c-common/source/hash_table.c":717:16))
  sea.cond_br %v950, ^bb466, ^bb494(%v917 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/hash_table.c":717:13)
^bb466:
  %v951 = sea.const 2 : i32 loc("_873"("aws-c-common/source/hash_table.c":725:16))
  %v952 = sea.and %v946, %v951 : i32 loc("_873"("aws-c-common/source/hash_table.c":725:16))
  %v953 = sea.const 0 : i32 loc(".not3.i.i.15"("aws-c-common/source/hash_table.c":725:16))
  %v954 = sea.icmp eq, %v952, %v953 : i32 loc(".not3.i.i.15"("aws-c-common/source/hash_table.c":725:16))
  sea.cond_br %v954, ^bb474(%v917, %v918 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb467 loc("aws-c-common/source/hash_table.c":725:13)
^bb467:
  sea.br ^bb468
^bb468:
  sea.br ^bb469
^bb469:
  sea.br ^bb470
^bb470:
  sea.br ^bb471
^bb471:
  %v955 = sea.load %v98[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_879"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:13))
  %v956 = sea.ptr.index %v955 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_880"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:21))
  %v957 = sea.const 8 : i64 loc("_881"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v958 = sea.ptr.dereferenceable %v956, %v957 : !sea.ptr<64>, i64 loc("_881"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v958, ^bb472, ^bb548
^bb472:
  %v959 = sea.load %v917[%v956] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_883"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v960 = sea.const 8 : i64 loc("_884"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v961 = sea.ptr.dereferenceable %v956, %v960 : !sea.ptr<64>, i64 loc("_884"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v961, ^bb473, ^bb548
^bb473:
  %v962 = sea.const 18446744073709551615 : i64 loc("_885"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v963 = sea.add %v918, %v962 : i64 loc("_885"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v964 = sea.const 18446744073709551615 : i64 loc("_886"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v965 = sea.add %v959, %v964 : i64 loc("_886"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v966 = sea.store %v917[%v956], %v965 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32)
  sea.br ^bb474(%v966, %v963 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/source/hash_table.c":727:9)
^bb474(%v967 : !sea.mem<!sea.ptr<64>, i8>, %v968 : i64):
  %v969 = sea.const 1 : i32 loc("_889"("aws-c-common/source/hash_table.c":729:18))
  %v970 = sea.and %v946, %v969 : i32 loc("_889"("aws-c-common/source/hash_table.c":729:18))
  %v971 = sea.const 0 : i32 loc(".not4.i.i.not.15"("aws-c-common/source/hash_table.c":729:18))
  %v972 = sea.icmp eq, %v970, %v971 : i32 loc(".not4.i.i.not.15"("aws-c-common/source/hash_table.c":729:18))
  sea.cond_br %v972, ^bb519(%v967 : !sea.mem<!sea.ptr<64>, i8>), ^bb475
^bb475:
  sea.br ^bb476
^bb476:
  sea.br ^bb477
^bb477:
  %v973 = sea.icmp eq, %v938, %v968 : i64 loc("_893"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:18))
  sea.cond_br %v973, ^bb487, ^bb478 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:7)
^bb478:
  sea.br ^bb479
^bb479:
  sea.br ^bb480
^bb480:
  %v974 = sea.nondet "nd_size_t" [48] : i64 loc("_897"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":49:22))
  %v975 = sea.const 0 : i64 loc(".not.i12.i.15"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v976 = sea.icmp eq, %v974, %v975 : i64 loc(".not.i12.i.15"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v977 = sea.const 0 : i1 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
  sea.cond_br %v976, ^bb484(%v977 : i1), ^bb481 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
^bb481:
  sea.br ^bb482
^bb482:
  sea.br ^bb483
^bb483:
  %v978 = sea.sub %v968, %v938 : i64 loc("_901"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:52))
  %v979 = sea.icmp ule, %v974, %v978 : i64 loc("_902"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:37))
  sea.br ^bb484(%v979 : i1)
^bb484(%v980 : i1):
  sea.assume %v980 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:3)
  sea.br ^bb485
^bb485:
  sea.br ^bb486
^bb486:
  %v981 = sea.add %v974, %v938 : i64 loc("_907"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":52:26))
  %v982 = sea.icmp eq, %v981, %v968 : i64 loc("_908"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:28))
  %v983 = sea.const 0 : i32 loc("_909"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v984 = sea.const 2 : i32 loc("_909"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  %v985 = sea.select %v982, %v983, %v984 : i32 loc("_909"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":53:17))
  sea.br ^bb488(%v985, %v981 : i32, i64)
^bb487:
  %v986 = sea.const 0 : i32
  sea.br ^bb488(%v986, %v938 : i32, i64)
^bb488(%v987 : i32, %v988 : i64):
  sea.br ^bb489
^bb489:
  sea.br ^bb490
^bb490:
  %v989 = sea.icmp eq, %v988, %v968 : i64 loc("_914"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":34:26))
  sea.br ^bb491
^bb491:
  %v990 = sea.const 0 : i32 loc("_916"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v991 = sea.icmp ne, %v987, %v990 : i32 loc("_916"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v992 = sea.xor %v991, %v989 : i1 loc("_917"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":35:3))
  %v993 = sea.const 1 : i1 loc("_918")
  %v994 = sea.const 0 : i1 loc("_918")
  %v995 = sea.select %v993, %v992, %v994 : i1 loc("_918")
  sea.cond_br %v995, ^bb492, ^bb548
^bb492:
  sea.cond_br %v989, ^bb519(%v967 : !sea.mem<!sea.ptr<64>, i8>), ^bb493 loc("aws-c-common/source/hash_table.c":715:5)
^bb493:
  %v996 = sea.nondet "nd_int" [49] : i32 loc("_920"("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":16:10))
  %v997 = sea.const 4 : i32 loc("_921"("aws-c-common/source/hash_table.c":717:16))
  %v998 = sea.and %v996, %v997 : i32 loc("_921"("aws-c-common/source/hash_table.c":717:16))
  %v999 = sea.const 0 : i32 loc(".not.i.i.16"("aws-c-common/source/hash_table.c":717:16))
  %v1000 = sea.icmp eq, %v998, %v999 : i32 loc(".not.i.i.16"("aws-c-common/source/hash_table.c":717:16))
  sea.cond_br %v1000, ^bb496, ^bb494(%v967 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/hash_table.c":717:13)
^bb494(%v1001 : !sea.mem<!sea.ptr<64>, i8>):
  %v1002 = sea.load %v49[%v6] align 4 : !sea.mem<!sea.ptr<64>, i8> -> i32 loc("_119"("seahorn/lib/error_override.c":10:10))
  %v1003 = sea.const 0 : i32 loc("_120"("aws-c-common/source/hash_table.c":719:23))
  %v1004 = sea.icmp eq, %v1002, %v1003 : i32 loc("_120"("aws-c-common/source/hash_table.c":719:23))
  sea.cond_br %v1004, ^bb495, ^bb519(%v1001 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/hash_table.c":719:17)
^bb495:
  %v1005 = sea.const 3 : i32 loc("seahorn/lib/error_override.c":6:17)
  %v1006 = sea.store %v49[%v6], %v1005 inplace align 4 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("seahorn/lib/error_override.c":6:17)
  sea.br ^bb519(%v1001 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/hash_table.c":721:13)
^bb496:
  %v1007 = sea.const 2 : i32 loc("_923"("aws-c-common/source/hash_table.c":725:16))
  %v1008 = sea.and %v996, %v1007 : i32 loc("_923"("aws-c-common/source/hash_table.c":725:16))
  %v1009 = sea.const 0 : i32 loc(".not3.i.i.16"("aws-c-common/source/hash_table.c":725:16))
  %v1010 = sea.icmp eq, %v1008, %v1009 : i32 loc(".not3.i.i.16"("aws-c-common/source/hash_table.c":725:16))
  sea.cond_br %v1010, ^bb504(%v967, %v968 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb497 loc("aws-c-common/source/hash_table.c":725:13)
^bb497:
  sea.br ^bb498
^bb498:
  sea.br ^bb499
^bb499:
  sea.br ^bb500
^bb500:
  sea.br ^bb501
^bb501:
  %v1011 = sea.load %v98[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_929"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:13))
  %v1012 = sea.ptr.index %v1011 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_930"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:21))
  %v1013 = sea.const 8 : i64 loc("_931"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v1014 = sea.ptr.dereferenceable %v1012, %v1013 : !sea.ptr<64>, i64 loc("_931"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v1014, ^bb502, ^bb548
^bb502:
  %v1015 = sea.load %v967[%v1012] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_933"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v1016 = sea.const 8 : i64 loc("_934"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v1017 = sea.ptr.dereferenceable %v1012, %v1016 : !sea.ptr<64>, i64 loc("_934"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  sea.cond_br %v1017, ^bb503, ^bb548
^bb503:
  %v1018 = sea.const 18446744073709551615 : i64 loc("_935"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v1019 = sea.add %v968, %v1018 : i64 loc("_935"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":67:28))
  %v1020 = sea.const 18446744073709551615 : i64 loc("_936"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v1021 = sea.add %v1015, %v1020 : i64 loc("_936"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32))
  %v1022 = sea.store %v967[%v1012], %v1021 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":69:32)
  sea.br ^bb504(%v1022, %v1019 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/source/hash_table.c":727:9)
^bb504(%v1023 : !sea.mem<!sea.ptr<64>, i8>, %v1024 : i64):
  %v1025 = sea.const 1 : i32 loc("_939"("aws-c-common/source/hash_table.c":729:18))
  %v1026 = sea.and %v996, %v1025 : i32 loc("_939"("aws-c-common/source/hash_table.c":729:18))
  %v1027 = sea.const 0 : i32 loc(".not4.i.i.not.16"("aws-c-common/source/hash_table.c":729:18))
  %v1028 = sea.icmp eq, %v1026, %v1027 : i32 loc(".not4.i.i.not.16"("aws-c-common/source/hash_table.c":729:18))
  sea.cond_br %v1028, ^bb519(%v1023 : !sea.mem<!sea.ptr<64>, i8>), ^bb505
^bb505:
  sea.br ^bb506
^bb506:
  sea.br ^bb507
^bb507:
  %v1029 = sea.icmp eq, %v988, %v1024 : i64 loc("_943"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:18))
  sea.cond_br %v1029, ^bb516, ^bb508 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":40:7)
^bb508:
  sea.br ^bb509
^bb509:
  sea.br ^bb510
^bb510:
  %v1030 = sea.nondet "nd_size_t" [50] : i64 loc("_947"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":49:22))
  %v1031 = sea.const 0 : i64 loc(".not.i12.i.16"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v1032 = sea.icmp eq, %v1030, %v1031 : i64 loc(".not.i12.i.16"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:20))
  %v1033 = sea.const 0 : i1 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
  sea.cond_br %v1032, ^bb514(%v1033 : i1), ^bb511 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:24)
^bb511:
  sea.br ^bb512
^bb512:
  sea.br ^bb513
^bb513:
  %v1034 = sea.sub %v1024, %v988 : i64 loc("_951"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:52))
  %v1035 = sea.icmp ule, %v1030, %v1034 : i64 loc("_952"("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:37))
  sea.br ^bb514(%v1035 : i1)
^bb514(%v1036 : i1):
  sea.assume %v1036 loc("seahorn/aws-c-common-stubs/aws_hash_iter_overrides.c":50:3)
  sea.br ^bb515
^bb515:
  sea.br ^bb517
^bb516:
  sea.br ^bb517
^bb517:
  sea.br ^bb518
^bb518:
  %v1037 = sea.const 1 : i1
  %v1038 = sea.const 1 : i1
  %v1039 = sea.xor %v1037, %v1038 : i1
  sea.assume %v1039
  sea.br ^bb548
^bb519(%v1040 : !sea.mem<!sea.ptr<64>, i8>):
  sea.br ^bb520
^bb520:
  %v1041 = sea.load %v98[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_958"("aws-c-common/source/hash_table.c":1027:24))
  %v1042 = sea.ptr.null : !sea.ptr<64> loc(".not1.i2.i"("aws-c-common/source/hash_table.c":1027:19))
  %v1043 = sea.ptr.cmp eq, %v1041, %v1042 : !sea.ptr<64> loc(".not1.i2.i"("aws-c-common/source/hash_table.c":1027:19))
  %v1044 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1027:31)
  sea.cond_br %v1043, ^bb533(%v1044 : i1), ^bb521 loc("aws-c-common/source/hash_table.c":1027:31)
^bb521:
  sea.br ^bb522
^bb522:
  %v1045 = sea.const 8 : i64 loc("_961"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":20:32))
  %v1046 = sea.ptr.dereferenceable %v1041, %v1045 : !sea.ptr<64>, i64 loc("_961"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":20:32))
  sea.cond_br %v1046, ^bb523, ^bb548
^bb523:
  %v1047 = sea.load %v1040[%v1041] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_963"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":20:32))
  %v1048 = sea.ptr.null : !sea.ptr<64> loc("_964"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":20:40))
  %v1049 = sea.ptr.cmp ne, %v1047, %v1048 : !sea.ptr<64> loc("_964"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":20:40))
  %v1050 = sea.ptr.index %v1041 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_965"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":21:34))
  %v1051 = sea.const 8 : i64 loc("_966"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":21:34))
  %v1052 = sea.ptr.dereferenceable %v1050, %v1051 : !sea.ptr<64>, i64 loc("_966"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":21:34))
  sea.cond_br %v1052, ^bb524, ^bb548
^bb524:
  %v1053 = sea.load %v1040[%v1050] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_968"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":21:34))
  %v1054 = sea.ptr.null : !sea.ptr<64> loc("_969"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":21:44))
  %v1055 = sea.ptr.cmp ne, %v1053, %v1054 : !sea.ptr<64> loc("_969"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":21:44))
  %v1056 = sea.ptr.index %v1041 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_970"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":23:30))
  %v1057 = sea.const 8 : i64 loc("_971"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":23:30))
  %v1058 = sea.ptr.dereferenceable %v1056, %v1057 : !sea.ptr<64>, i64 loc("_971"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":23:30))
  sea.cond_br %v1058, ^bb525, ^bb548
^bb525:
  %v1059 = sea.load %v1040[%v1056] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_973"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":23:30))
  %v1060 = sea.ptr.null : !sea.ptr<64> loc("_974"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":23:36))
  %v1061 = sea.ptr.cmp ne, %v1059, %v1060 : !sea.ptr<64> loc("_974"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":23:36))
  %v1062 = sea.ptr.index %v1041 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_975"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":24:34))
  %v1063 = sea.const 8 : i64 loc("_976"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":24:34))
  %v1064 = sea.ptr.dereferenceable %v1062, %v1063 : !sea.ptr<64>, i64 loc("_976"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":24:34))
  sea.cond_br %v1064, ^bb526, ^bb548
^bb526:
  %v1065 = sea.load %v1040[%v1062] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_978"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":24:34))
  %v1066 = sea.const 1 : i64 loc("_979"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":24:39))
  %v1067 = sea.icmp ugt, %v1065, %v1066 : i64 loc("_979"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":24:39))
  %v1068 = sea.const 8 : i64 loc("_980"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":25:56))
  %v1069 = sea.ptr.dereferenceable %v1062, %v1068 : !sea.ptr<64>, i64 loc("_980"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":25:56))
  sea.cond_br %v1069, ^bb527, ^bb548
^bb527:
  %v1070 = sea.ctpop %v1065 : i64 loc("_982"("aws-c-common/include/aws/common/math.inl":161:14))
  %v1071 = sea.const 1 : i64 loc("_983"("aws-c-common/include/aws/common/math.inl":161:14))
  %v1072 = sea.icmp eq, %v1070, %v1071 : i64 loc("_983"("aws-c-common/include/aws/common/math.inl":161:14))
  %v1073 = sea.ptr.index %v1041 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_984"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":31:25))
  %v1074 = sea.const 8 : i64 loc("_985"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":31:25))
  %v1075 = sea.ptr.dereferenceable %v1073, %v1074 : !sea.ptr<64>, i64 loc("_985"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":31:25))
  sea.cond_br %v1075, ^bb528, ^bb548
^bb528:
  %v1076 = sea.load %v1040[%v1073] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_987"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":31:25))
  %v1077 = sea.const 8 : i64 loc("_988"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":31:41))
  %v1078 = sea.ptr.dereferenceable %v1062, %v1077 : !sea.ptr<64>, i64 loc("_988"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":31:41))
  sea.cond_br %v1078, ^bb529, ^bb548
^bb529:
  %v1079 = sea.icmp ult, %v1076, %v1065 : i64 loc("_990"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":31:34))
  %v1080 = sea.ptr.index %v1041 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_991"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:32))
  %v1081 = sea.const 8 : i64 loc("_992"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:32))
  %v1082 = sea.ptr.dereferenceable %v1080, %v1081 : !sea.ptr<64>, i64 loc("_992"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:32))
  sea.cond_br %v1082, ^bb530, ^bb548
^bb530:
  %v1083 = sea.load %v1040[%v1080] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_994"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:32))
  %v1084 = sea.const 8 : i64 loc("_995"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:46))
  %v1085 = sea.ptr.dereferenceable %v1062, %v1084 : !sea.ptr<64>, i64 loc("_995"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:46))
  sea.cond_br %v1085, ^bb531, ^bb548
^bb531:
  %v1086 = sea.const 8 : i64 loc("_997"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":40:7))
  %v1087 = sea.ptr.dereferenceable %v1062, %v1086 : !sea.ptr<64>, i64 loc("_997"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":40:7))
  sea.cond_br %v1087, ^bb532, ^bb548
^bb532:
  %v1088 = sea.const 18446744073709551615 : i64 loc("_999"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:51))
  %v1089 = sea.add %v1065, %v1088 : i64 loc("_999"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:51))
  %v1090 = sea.icmp eq, %v1083, %v1089 : i64 loc("_1000"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:37))
  %v1091 = sea.const 0 : i1 loc("or.cond.i27.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v1092 = sea.select %v1049, %v1055, %v1091 : i1 loc("or.cond.i27.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v1093 = sea.const 0 : i1 loc("or.cond3.i28.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v1094 = sea.select %v1092, %v1061, %v1093 : i1 loc("or.cond3.i28.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v1095 = sea.const 0 : i1 loc("or.cond5.i29.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v1096 = sea.select %v1094, %v1067, %v1095 : i1 loc("or.cond5.i29.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v1097 = sea.const 0 : i1 loc("or.cond7.i30.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v1098 = sea.select %v1096, %v1072, %v1097 : i1 loc("or.cond7.i30.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v1099 = sea.const 0 : i1 loc("or.cond11.i31.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v1100 = sea.select %v1098, %v1079, %v1099 : i1 loc("or.cond11.i31.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v1101 = sea.const 0 : i1 loc("or.cond13.i32.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v1102 = sea.select %v1100, %v1090, %v1101 : i1 loc("or.cond13.i32.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  sea.br ^bb533(%v1102 : i1)
^bb533(%v1103 : i1):
  sea.br ^bb534
^bb534:
  %v1104 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1027:31)
  sea.cond_br %v1043, ^bb547(%v1104 : i1), ^bb535 loc("aws-c-common/source/hash_table.c":1027:31)
^bb535:
  sea.br ^bb536
^bb536:
  %v1105 = sea.const 8 : i64 loc("_1005"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":20:32))
  %v1106 = sea.ptr.dereferenceable %v1041, %v1105 : !sea.ptr<64>, i64 loc("_1005"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":20:32))
  sea.cond_br %v1106, ^bb537, ^bb548
^bb537:
  %v1107 = sea.load %v1040[%v1041] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1007"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":20:32))
  %v1108 = sea.ptr.null : !sea.ptr<64> loc("_1008"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":20:40))
  %v1109 = sea.ptr.cmp ne, %v1107, %v1108 : !sea.ptr<64> loc("_1008"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":20:40))
  %v1110 = sea.ptr.index %v1041 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_1009"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":21:34))
  %v1111 = sea.const 8 : i64 loc("_1010"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":21:34))
  %v1112 = sea.ptr.dereferenceable %v1110, %v1111 : !sea.ptr<64>, i64 loc("_1010"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":21:34))
  sea.cond_br %v1112, ^bb538, ^bb548
^bb538:
  %v1113 = sea.load %v1040[%v1110] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1012"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":21:34))
  %v1114 = sea.ptr.null : !sea.ptr<64> loc("_1013"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":21:44))
  %v1115 = sea.ptr.cmp ne, %v1113, %v1114 : !sea.ptr<64> loc("_1013"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":21:44))
  %v1116 = sea.ptr.index %v1041 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_1014"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":23:30))
  %v1117 = sea.const 8 : i64 loc("_1015"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":23:30))
  %v1118 = sea.ptr.dereferenceable %v1116, %v1117 : !sea.ptr<64>, i64 loc("_1015"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":23:30))
  sea.cond_br %v1118, ^bb539, ^bb548
^bb539:
  %v1119 = sea.load %v1040[%v1116] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1017"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":23:30))
  %v1120 = sea.ptr.null : !sea.ptr<64> loc("_1018"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":23:36))
  %v1121 = sea.ptr.cmp ne, %v1119, %v1120 : !sea.ptr<64> loc("_1018"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":23:36))
  %v1122 = sea.ptr.index %v1041 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_1019"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":24:34))
  %v1123 = sea.const 8 : i64 loc("_1020"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":24:34))
  %v1124 = sea.ptr.dereferenceable %v1122, %v1123 : !sea.ptr<64>, i64 loc("_1020"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":24:34))
  sea.cond_br %v1124, ^bb540, ^bb548
^bb540:
  %v1125 = sea.load %v1040[%v1122] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_1022"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":24:34))
  %v1126 = sea.const 1 : i64 loc("_1023"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":24:39))
  %v1127 = sea.icmp ugt, %v1125, %v1126 : i64 loc("_1023"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":24:39))
  %v1128 = sea.const 8 : i64 loc("_1024"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":25:56))
  %v1129 = sea.ptr.dereferenceable %v1122, %v1128 : !sea.ptr<64>, i64 loc("_1024"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":25:56))
  sea.cond_br %v1129, ^bb541, ^bb548
^bb541:
  %v1130 = sea.ctpop %v1125 : i64 loc("_1026"("aws-c-common/include/aws/common/math.inl":161:14))
  %v1131 = sea.const 1 : i64 loc("_1027"("aws-c-common/include/aws/common/math.inl":161:14))
  %v1132 = sea.icmp eq, %v1130, %v1131 : i64 loc("_1027"("aws-c-common/include/aws/common/math.inl":161:14))
  %v1133 = sea.ptr.index %v1041 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_1028"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":31:25))
  %v1134 = sea.const 8 : i64 loc("_1029"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":31:25))
  %v1135 = sea.ptr.dereferenceable %v1133, %v1134 : !sea.ptr<64>, i64 loc("_1029"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":31:25))
  sea.cond_br %v1135, ^bb542, ^bb548
^bb542:
  %v1136 = sea.load %v1040[%v1133] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_1031"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":31:25))
  %v1137 = sea.const 8 : i64 loc("_1032"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":31:41))
  %v1138 = sea.ptr.dereferenceable %v1122, %v1137 : !sea.ptr<64>, i64 loc("_1032"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":31:41))
  sea.cond_br %v1138, ^bb543, ^bb548
^bb543:
  %v1139 = sea.icmp ult, %v1136, %v1125 : i64 loc("_1034"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":31:34))
  %v1140 = sea.ptr.index %v1041 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_1035"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:32))
  %v1141 = sea.const 8 : i64 loc("_1036"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:32))
  %v1142 = sea.ptr.dereferenceable %v1140, %v1141 : !sea.ptr<64>, i64 loc("_1036"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:32))
  sea.cond_br %v1142, ^bb544, ^bb548
^bb544:
  %v1143 = sea.load %v1040[%v1140] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_1038"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:32))
  %v1144 = sea.const 8 : i64 loc("_1039"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:46))
  %v1145 = sea.ptr.dereferenceable %v1122, %v1144 : !sea.ptr<64>, i64 loc("_1039"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:46))
  sea.cond_br %v1145, ^bb545, ^bb548
^bb545:
  %v1146 = sea.const 8 : i64 loc("_1041"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":40:7))
  %v1147 = sea.ptr.dereferenceable %v1122, %v1146 : !sea.ptr<64>, i64 loc("_1041"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":40:7))
  sea.cond_br %v1147, ^bb546, ^bb548
^bb546:
  %v1148 = sea.const 18446744073709551615 : i64 loc("_1043"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:51))
  %v1149 = sea.add %v1125, %v1148 : i64 loc("_1043"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:51))
  %v1150 = sea.icmp eq, %v1143, %v1149 : i64 loc("_1044"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":32:37))
  %v1151 = sea.const 0 : i1 loc("or.cond.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v1152 = sea.select %v1109, %v1115, %v1151 : i1 loc("or.cond.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v1153 = sea.const 0 : i1 loc("or.cond3.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v1154 = sea.select %v1152, %v1121, %v1153 : i1 loc("or.cond3.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v1155 = sea.const 0 : i1 loc("or.cond5.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v1156 = sea.select %v1154, %v1127, %v1155 : i1 loc("or.cond5.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v1157 = sea.const 0 : i1 loc("or.cond7.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v1158 = sea.select %v1156, %v1132, %v1157 : i1 loc("or.cond7.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v1159 = sea.const 0 : i1 loc("or.cond11.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v1160 = sea.select %v1158, %v1139, %v1159 : i1 loc("or.cond11.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v1161 = sea.const 0 : i1 loc("or.cond13.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  %v1162 = sea.select %v1160, %v1150, %v1161 : i1 loc("or.cond13.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_ignore_entry_count_override.c":42:26))
  sea.br ^bb547(%v1162 : i1)
^bb547(%v1163 : i1):
  %v1164 = sea.const 1 : i1 loc("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":36:3)
  %v1165 = sea.xor %v1163, %v1164 : i1 loc("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":36:3)
  sea.assume %v1165 loc("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":36:3)
  sea.br ^bb548 loc("seahorn/jobs/hash_table_foreach/aws_hash_table_foreach_harness.c":36:3)
^bb548:
  sea.br ^bb549
^bb549:
  %v1166 = sea.const 0 : i1
  sea.assert %v1166
  sea.halt
}
