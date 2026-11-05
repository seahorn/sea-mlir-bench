// Exported from SeaHorn (hash_table_get_entry_count.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.16" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm17")
  %v1 = sea.mem.nondet "region.24" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm18")
  %v2 = sea.mem.nondet "region.0" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm19")
  %v3 = sea.mem.nondet "region.33" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm20")
  %v4 = sea.const 8 : i64 loc("_0")
  %v5 = sea.alloca %v4 align 8 [4] : i64 -> !sea.ptr<64> loc("_0")
  %v6 = sea.const 16 : i64 loc("_1")
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
  sea.cond_br %v57, ^bb11, ^bb87
^bb11:
  %v58 = sea.store %v53[%v55], %v20 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":23:14)
  %v59 = sea.ptr.index %v54 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_29"("seahorn/lib/hash_table_helper.c":24:9))
  %v60 = sea.const 8 : i64 loc("_30"("seahorn/lib/hash_table_helper.c":24:14))
  %v61 = sea.ptr.dereferenceable %v59, %v60 : !sea.ptr<64>, i64 loc("_30"("seahorn/lib/hash_table_helper.c":24:14))
  sea.cond_br %v61, ^bb12, ^bb87
^bb12:
  %v62 = sea.const 18446744073709551615 : i64 loc("_32"("seahorn/lib/hash_table_helper.c":24:28))
  %v63 = sea.add %v20, %v62 : i64 loc("_32"("seahorn/lib/hash_table_helper.c":24:28))
  %v64 = sea.store %v58[%v59], %v63 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":24:14)
  %v65 = sea.ptr.index %v54 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_33"("seahorn/lib/hash_table_helper.c":25:9))
  %v66 = sea.const 8 : i64 loc("_34"("seahorn/lib/hash_table_helper.c":25:25))
  %v67 = sea.ptr.dereferenceable %v65, %v66 : !sea.ptr<64>, i64 loc("_34"("seahorn/lib/hash_table_helper.c":25:25))
  sea.cond_br %v67, ^bb13, ^bb87
^bb13:
  %v68 = sea.const 4606732058837280358 : i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v69 = sea.store %v64[%v65], %v68 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v70 = sea.ptr.index %v54 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_36"("seahorn/lib/hash_table_helper.c":26:9))
  %v71 = sea.const 8 : i64 loc("_37"("seahorn/lib/hash_table_helper.c":26:15))
  %v72 = sea.ptr.dereferenceable %v70, %v71 : !sea.ptr<64>, i64 loc("_37"("seahorn/lib/hash_table_helper.c":26:15))
  sea.cond_br %v72, ^bb14, ^bb87
^bb14:
  %v73 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v74 = sea.store %v69[%v70], %v73 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v75 = sea.const 8 : i64 loc("_39"("seahorn/lib/hash_table_helper.c":27:17))
  %v76 = sea.ptr.dereferenceable %v54, %v75 : !sea.ptr<64>, i64 loc("_39"("seahorn/lib/hash_table_helper.c":27:17))
  sea.cond_br %v76, ^bb15, ^bb87
^bb15:
  %v77 = sea.func_addr @"nd_hash_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v78 = sea.store %v74[%v54], %v77 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v79 = sea.ptr.index %v54 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_41"("seahorn/lib/hash_table_helper.c":28:9))
  %v80 = sea.const 8 : i64 loc("_42"("seahorn/lib/hash_table_helper.c":28:19))
  %v81 = sea.ptr.dereferenceable %v79, %v80 : !sea.ptr<64>, i64 loc("_42"("seahorn/lib/hash_table_helper.c":28:19))
  sea.cond_br %v81, ^bb16, ^bb87
^bb16:
  %v82 = sea.func_addr @"nd_hash_equals_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  %v83 = sea.store %v78[%v79], %v82 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  sea.br ^bb17
^bb17:
  %v84 = sea.store %v0[%v5], %v54 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":37:15)
  sea.br ^bb18
^bb18:
  sea.br ^bb19
^bb19:
  %v85 = sea.const 8 : i64 loc("_46"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v86 = sea.ptr.dereferenceable %v54, %v85 : !sea.ptr<64>, i64 loc("_46"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v86, ^bb20, ^bb87
^bb20:
  %v87 = sea.load %v78[%v54] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_48"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v88 = sea.ptr.null : !sea.ptr<64> loc("_49"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v89 = sea.ptr.cmp ne, %v87, %v88 : !sea.ptr<64> loc("_49"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v90 = sea.const 8 : i64 loc("_50"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v91 = sea.ptr.dereferenceable %v79, %v90 : !sea.ptr<64>, i64 loc("_50"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v91, ^bb21, ^bb87
^bb21:
  %v92 = sea.const 8 : i64 loc("_52"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v93 = sea.ptr.dereferenceable %v70, %v92 : !sea.ptr<64>, i64 loc("_52"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v93, ^bb22, ^bb87
^bb22:
  %v94 = sea.const 8 : i64 loc("_54"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v95 = sea.ptr.dereferenceable %v55, %v94 : !sea.ptr<64>, i64 loc("_54"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v95, ^bb23, ^bb87
^bb23:
  %v96 = sea.const 1 : i64 loc("_56"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v97 = sea.icmp ugt, %v20, %v96 : i64 loc("_56"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v98 = sea.const 8 : i64 loc("_57"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v99 = sea.ptr.dereferenceable %v55, %v98 : !sea.ptr<64>, i64 loc("_57"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v99, ^bb24, ^bb87
^bb24:
  %v100 = sea.ptr.index %v54 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_59"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v101 = sea.const 8 : i64 loc("_60"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v102 = sea.ptr.dereferenceable %v100, %v101 : !sea.ptr<64>, i64 loc("_60"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v102, ^bb25, ^bb87
^bb25:
  %v103 = sea.load %v58[%v100] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_62"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v104 = sea.ptr.index %v54 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_63"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v105 = sea.const 8 : i64 loc("_64"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v106 = sea.ptr.dereferenceable %v104, %v105 : !sea.ptr<64>, i64 loc("_64"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v106, ^bb26, ^bb87
^bb26:
  %v107 = sea.load %v58[%v104] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_66"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v108 = sea.icmp ule, %v103, %v107 : i64 loc("_67"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v109 = sea.const 8 : i64 loc("_68"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v110 = sea.ptr.dereferenceable %v104, %v109 : !sea.ptr<64>, i64 loc("_68"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v110, ^bb27, ^bb87
^bb27:
  %v111 = sea.const 8 : i64 loc("_70"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v112 = sea.ptr.dereferenceable %v55, %v111 : !sea.ptr<64>, i64 loc("_70"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v112, ^bb28, ^bb87
^bb28:
  %v113 = sea.icmp ult, %v107, %v20 : i64 loc("_72"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v114 = sea.const 8 : i64 loc("_73"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v115 = sea.ptr.dereferenceable %v59, %v114 : !sea.ptr<64>, i64 loc("_73"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v115, ^bb29, ^bb87
^bb29:
  %v116 = sea.const 8 : i64 loc("_75"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v117 = sea.ptr.dereferenceable %v55, %v116 : !sea.ptr<64>, i64 loc("_75"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v117, ^bb30, ^bb87
^bb30:
  %v118 = sea.const 8 : i64 loc("_77"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v119 = sea.ptr.dereferenceable %v55, %v118 : !sea.ptr<64>, i64 loc("_77"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v119, ^bb31, ^bb87
^bb31:
  %v120 = sea.const 0 : i1 loc("or.cond5.i41.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v121 = sea.select %v89, %v97, %v120 : i1 loc("or.cond5.i41.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v122 = sea.const 0 : i1 loc("or.cond7.i42.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v123 = sea.select %v121, %v24, %v122 : i1 loc("or.cond7.i42.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v124 = sea.const 0 : i1 loc("or.cond9.i43.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v125 = sea.select %v123, %v108, %v124 : i1 loc("or.cond9.i43.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v126 = sea.const 0 : i1 loc("or.cond11.i44.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v127 = sea.select %v125, %v113, %v126 : i1 loc("or.cond11.i44.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.assume %v127 loc("seahorn/jobs/hash_table_get_entry_count/aws_hash_table_get_entry_count_harness.c":20:3)
  sea.br ^bb32
^bb32:
  %v128 = sea.nondet "nd_size_t" [11] : i64 loc("_79"("seahorn/lib/hash_table_helper.c":59:26))
  %v129 = sea.const 8 : i64 loc("_80"("seahorn/lib/hash_table_helper.c":60:49))
  %v130 = sea.ptr.dereferenceable %v55, %v129 : !sea.ptr<64>, i64 loc("_80"("seahorn/lib/hash_table_helper.c":60:49))
  sea.cond_br %v130, ^bb33, ^bb87
^bb33:
  sea.br ^bb34
^bb34:
  %v131 = sea.const 4294967295 : i32 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
  sea.cond_br %v29, ^bb39(%v128, %v131 : i64, i32), ^bb35 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb35:
  sea.br ^bb36
^bb36:
  %v132 = sea.const 80 : i64 loc("_84"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v133 = sea.add %v27, %v132 : i64 loc("_84"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v134 = sea.const 80 : i64 loc("_84"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v135 = sea.uaddo %v27, %v134 : i64 loc("_84"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v135, ^bb37, ^bb38 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb37:
  sea.br ^bb38 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":71:9)
^bb38:
  %v136 = sea.sext %v135 : i1 to i32 loc("..i.i20.i"("aws-c-common/source/hash_table.c":0:0))
  sea.br ^bb39(%v133, %v136 : i64, i32) loc("aws-c-common/source/hash_table.c":0:0)
^bb39(%v137 : i64, %v138 : i32):
  %v139 = sea.const 0 : i32 loc("_89"("seahorn/lib/hash_table_helper.c":60:71))
  %v140 = sea.icmp eq, %v138, %v139 : i32 loc("_89"("seahorn/lib/hash_table_helper.c":60:71))
  sea.assume %v140 loc("seahorn/lib/hash_table_helper.c":60:3)
  %v141 = sea.nondet "nd_size_t" [12] : i64 loc("_90"("seahorn/lib/utils.c":46:20))
  sea.br ^bb40
^bb40:
  %v142 = sea.store %v1[%v7], %v141 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v143 = sea.const 0 : i64 loc(".not8"("seahorn/lib/utils.c":47:12))
  %v144 = sea.icmp eq, %v137, %v143 : i64 loc(".not8"("seahorn/lib/utils.c":47:12))
  sea.cond_br %v144, ^bb46, ^bb41 loc("seahorn/lib/utils.c":47:16)
^bb41:
  sea.br ^bb42
^bb42:
  %v145 = sea.icmp ult, %v141, %v137 : i64 loc("_94"("seahorn/lib/utils.c":48:27))
  sea.assume %v145 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb43
^bb43:
  %v146 = sea.ptr.index %v54 [%v141] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_96"("seahorn/lib/utils.c":49:21))
  %v147 = sea.const 1 : i64 loc("_97"("seahorn/lib/utils.c":49:21))
  %v148 = sea.ptr.dereferenceable %v146, %v147 : !sea.ptr<64>, i64 loc("_97"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v148, ^bb44, ^bb87
^bb44:
  %v149 = sea.load %v83[%v146] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_99"("seahorn/lib/utils.c":49:21))
  %v150 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_100"("seahorn/lib/utils.c":49:14))
  sea.br ^bb45
^bb45:
  %v151 = sea.store %v142[%v150], %v149 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb48(%v149 : i8) loc("seahorn/lib/utils.c":50:3)
^bb46:
  %v152 = sea.nondet "nd_uint8_t" [13] : i8 loc("_103"("seahorn/lib/utils.c":51:21))
  %v153 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_104"("seahorn/lib/utils.c":51:14))
  sea.br ^bb47
^bb47:
  %v154 = sea.store %v142[%v153], %v152 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb48(%v152 : i8)
^bb48(%v155 : i8):
  %v156 = sea.const 8 : i64 loc("_107"("seahorn/jobs/hash_table_get_entry_count/aws_hash_table_get_entry_count_harness.c":25:35))
  %v157 = sea.ptr.dereferenceable %v100, %v156 : !sea.ptr<64>, i64 loc("_107"("seahorn/jobs/hash_table_get_entry_count/aws_hash_table_get_entry_count_harness.c":25:35))
  sea.cond_br %v157, ^bb49, ^bb87
^bb49:
  sea.br ^bb50
^bb50:
  %v158 = sea.const 8 : i64 loc("_110"("aws-c-common/source/hash_table.c":161:19))
  %v159 = sea.ptr.dereferenceable %v100, %v158 : !sea.ptr<64>, i64 loc("_110"("aws-c-common/source/hash_table.c":161:19))
  sea.cond_br %v159, ^bb51, ^bb87
^bb51:
  sea.br ^bb52
^bb52:
  sea.br ^bb53
^bb53:
  %v160 = sea.const 8 : i64 loc("_114"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v161 = sea.ptr.dereferenceable %v54, %v160 : !sea.ptr<64>, i64 loc("_114"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v161, ^bb54, ^bb87
^bb54:
  %v162 = sea.load %v78[%v54] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_116"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v163 = sea.ptr.null : !sea.ptr<64> loc("_117"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v164 = sea.ptr.cmp ne, %v162, %v163 : !sea.ptr<64> loc("_117"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v165 = sea.const 8 : i64 loc("_118"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v166 = sea.ptr.dereferenceable %v79, %v165 : !sea.ptr<64>, i64 loc("_118"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v166, ^bb55, ^bb87
^bb55:
  %v167 = sea.const 8 : i64 loc("_120"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v168 = sea.ptr.dereferenceable %v70, %v167 : !sea.ptr<64>, i64 loc("_120"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v168, ^bb56, ^bb87
^bb56:
  %v169 = sea.const 8 : i64 loc("_122"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v170 = sea.ptr.dereferenceable %v55, %v169 : !sea.ptr<64>, i64 loc("_122"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v170, ^bb57, ^bb87
^bb57:
  %v171 = sea.const 8 : i64 loc("_124"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v172 = sea.ptr.dereferenceable %v55, %v171 : !sea.ptr<64>, i64 loc("_124"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v172, ^bb58, ^bb87
^bb58:
  %v173 = sea.const 8 : i64 loc("_126"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v174 = sea.ptr.dereferenceable %v100, %v173 : !sea.ptr<64>, i64 loc("_126"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v174, ^bb59, ^bb87
^bb59:
  %v175 = sea.const 8 : i64 loc("_128"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v176 = sea.ptr.dereferenceable %v104, %v175 : !sea.ptr<64>, i64 loc("_128"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v176, ^bb60, ^bb87
^bb60:
  %v177 = sea.const 8 : i64 loc("_130"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v178 = sea.ptr.dereferenceable %v104, %v177 : !sea.ptr<64>, i64 loc("_130"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v178, ^bb61, ^bb87
^bb61:
  %v179 = sea.const 8 : i64 loc("_132"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v180 = sea.ptr.dereferenceable %v55, %v179 : !sea.ptr<64>, i64 loc("_132"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v180, ^bb62, ^bb87
^bb62:
  %v181 = sea.const 8 : i64 loc("_134"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v182 = sea.ptr.dereferenceable %v59, %v181 : !sea.ptr<64>, i64 loc("_134"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v182, ^bb63, ^bb87
^bb63:
  %v183 = sea.const 8 : i64 loc("_136"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v184 = sea.ptr.dereferenceable %v55, %v183 : !sea.ptr<64>, i64 loc("_136"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v184, ^bb64, ^bb87
^bb64:
  %v185 = sea.const 8 : i64 loc("_138"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v186 = sea.ptr.dereferenceable %v55, %v185 : !sea.ptr<64>, i64 loc("_138"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v186, ^bb65, ^bb87
^bb65:
  %v187 = sea.const 0 : i1 loc("or.cond5.i30.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v188 = sea.select %v164, %v97, %v187 : i1 loc("or.cond5.i30.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v189 = sea.const 0 : i1 loc("or.cond7.i31.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v190 = sea.select %v188, %v24, %v189 : i1 loc("or.cond7.i31.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v191 = sea.const 0 : i1 loc("or.cond9.i32.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v192 = sea.select %v190, %v108, %v191 : i1 loc("or.cond9.i32.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v193 = sea.const 0 : i1 loc("or.cond11.i33.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v194 = sea.select %v192, %v113, %v193 : i1 loc("or.cond11.i33.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.br ^bb66
^bb66:
  sea.br ^bb67
^bb67:
  %v195 = sea.const 8 : i64 loc("_141"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v196 = sea.ptr.dereferenceable %v54, %v195 : !sea.ptr<64>, i64 loc("_141"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v196, ^bb68, ^bb87
^bb68:
  %v197 = sea.const 8 : i64 loc("_143"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v198 = sea.ptr.dereferenceable %v79, %v197 : !sea.ptr<64>, i64 loc("_143"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v198, ^bb69, ^bb87
^bb69:
  %v199 = sea.const 8 : i64 loc("_145"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v200 = sea.ptr.dereferenceable %v70, %v199 : !sea.ptr<64>, i64 loc("_145"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v200, ^bb70, ^bb87
^bb70:
  %v201 = sea.const 8 : i64 loc("_147"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v202 = sea.ptr.dereferenceable %v55, %v201 : !sea.ptr<64>, i64 loc("_147"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v202, ^bb71, ^bb87
^bb71:
  %v203 = sea.const 8 : i64 loc("_149"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v204 = sea.ptr.dereferenceable %v55, %v203 : !sea.ptr<64>, i64 loc("_149"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v204, ^bb72, ^bb87
^bb72:
  %v205 = sea.const 8 : i64 loc("_151"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v206 = sea.ptr.dereferenceable %v100, %v205 : !sea.ptr<64>, i64 loc("_151"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v206, ^bb73, ^bb87
^bb73:
  %v207 = sea.const 8 : i64 loc("_153"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v208 = sea.ptr.dereferenceable %v104, %v207 : !sea.ptr<64>, i64 loc("_153"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v208, ^bb74, ^bb87
^bb74:
  %v209 = sea.const 8 : i64 loc("_155"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v210 = sea.ptr.dereferenceable %v104, %v209 : !sea.ptr<64>, i64 loc("_155"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v210, ^bb75, ^bb87
^bb75:
  %v211 = sea.const 8 : i64 loc("_157"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v212 = sea.ptr.dereferenceable %v55, %v211 : !sea.ptr<64>, i64 loc("_157"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v212, ^bb76, ^bb87
^bb76:
  %v213 = sea.const 8 : i64 loc("_159"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v214 = sea.ptr.dereferenceable %v59, %v213 : !sea.ptr<64>, i64 loc("_159"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v214, ^bb77, ^bb87
^bb77:
  %v215 = sea.const 8 : i64 loc("_161"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v216 = sea.ptr.dereferenceable %v55, %v215 : !sea.ptr<64>, i64 loc("_161"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v216, ^bb78, ^bb87
^bb78:
  %v217 = sea.const 8 : i64 loc("_163"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v218 = sea.ptr.dereferenceable %v55, %v217 : !sea.ptr<64>, i64 loc("_163"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v219 = sea.const 0 : i1 loc("_164")
  %v220 = sea.select %v218, %v194, %v219 : i1 loc("_164")
  sea.cond_br %v220, ^bb79, ^bb87
^bb79:
  sea.br ^bb80
^bb80:
  %v221 = sea.const 1 : i1 loc("seahorn/lib/utils.c":39:14)
  sea.assume %v221 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb81
^bb81:
  %v222 = sea.ptr.index %v54 [%v141] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_167"("seahorn/lib/utils.c":40:5))
  %v223 = sea.const 1 : i64 loc("_168"("seahorn/lib/utils.c":40:5))
  %v224 = sea.ptr.dereferenceable %v222, %v223 : !sea.ptr<64>, i64 loc("_168"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v224, ^bb82, ^bb87
^bb82:
  %v225 = sea.load %v83[%v222] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_170"("seahorn/lib/utils.c":40:5))
  sea.br ^bb83
^bb83:
  %v226 = sea.icmp eq, %v225, %v155 : i8 loc("_172"("seahorn/lib/utils.c":40:5))
  sea.br ^bb84
^bb84:
  %v227 = sea.const 1 : i64 loc("_174"("seahorn/lib/utils.c":40:5))
  %v228 = sea.ptr.dereferenceable %v222, %v227 : !sea.ptr<64>, i64 loc("_174"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v228, ^bb85, ^bb87
^bb85:
  sea.br ^bb86
^bb86:
  %v229 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v230 = sea.xor %v226, %v229 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v230 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb87 loc("seahorn/lib/utils.c":40:5)
^bb87:
  sea.br ^bb88
^bb88:
  %v231 = sea.const 0 : i1
  sea.assert %v231
  sea.halt
}
