// Exported from SeaHorn (hash_table_get_entry_count2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm15")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm16")
  %v2 = sea.mem.nondet "region.24" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm17")
  %v3 = sea.const 8 : i64 loc("_0")
  %v4 = sea.alloca %v3 align 8 [3] : i64 -> !sea.ptr<64> loc("_0")
  %v5 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v6 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v7 = sea.store %v0[%v5], %v6 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v8 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_1")
  %v9 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_1")
  %v10 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v11 = sea.store %v7[%v9], %v10 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v12 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_2")
  %v13 = sea.ptr.index %v12 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_2")
  %v14 = sea.const 0 : i8
  %v15 = sea.const 24 : i64
  %v16 = sea.memset %v11[%v13], %v14, %v15 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v17 = sea.nondet "nd_size_t" [4] : i64 loc("_3"("seahorn/lib/hash_table_helper.c":14:24))
  %v18 = sea.const 1 : i1 loc("seahorn/lib/hash_table_helper.c":15:3)
  sea.assume %v18 loc("seahorn/lib/hash_table_helper.c":15:3)
  %v19 = sea.ctpop %v17 : i64 loc("_4"("aws-c-common/include/aws/common/math.inl":161:14))
  %v20 = sea.const 1 : i64 loc("_5"("aws-c-common/include/aws/common/math.inl":161:14))
  %v21 = sea.icmp eq, %v19, %v20 : i64 loc("_5"("aws-c-common/include/aws/common/math.inl":161:14))
  sea.assume %v21 loc("seahorn/lib/hash_table_helper.c":16:3)
  %v22 = sea.nondet "nd_size_t" [5] : i64 loc("_6"("seahorn/lib/hash_table_helper.c":18:27))
  sea.br ^bb1
^bb1:
  %v23 = sea.const 24 : i64 loc("_8"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v24 = sea.mul %v17, %v23 : i64 loc("_8"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v25 = sea.const 24 : i64 loc("_8"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v26 = sea.umulo %v17, %v25 : i64 loc("_8"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v27 = sea.const 4294967295 : i32 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
  sea.cond_br %v26, ^bb6(%v22, %v27 : i64, i32), ^bb2 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb2:
  sea.br ^bb3
^bb3:
  %v28 = sea.const 80 : i64 loc("_12"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v29 = sea.add %v24, %v28 : i64 loc("_12"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v30 = sea.const 80 : i64 loc("_12"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v31 = sea.uaddo %v24, %v30 : i64 loc("_12"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v31, ^bb4, ^bb5 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb4:
  sea.br ^bb5 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":71:9)
^bb5:
  %v32 = sea.sext %v31 : i1 to i32 loc("..i.i.i"("aws-c-common/source/hash_table.c":0:0))
  sea.br ^bb6(%v29, %v32 : i64, i32) loc("aws-c-common/source/hash_table.c":0:0)
^bb6(%v33 : i64, %v34 : i32):
  %v35 = sea.const 0 : i32 loc("_17"("seahorn/lib/hash_table_helper.c":20:72))
  %v36 = sea.icmp eq, %v34, %v35 : i32 loc("_17"("seahorn/lib/hash_table_helper.c":20:72))
  sea.assume %v36 loc("seahorn/lib/hash_table_helper.c":20:3)
  %v37 = sea.const 0 : i64 loc("_18"("seahorn/lib/proof_allocators.c":17:15))
  %v38 = sea.icmp eq, %v33, %v37 : i64 loc("_18"("seahorn/lib/proof_allocators.c":17:15))
  %v39 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v38, ^bb10(%v2, %v39 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb7 loc("seahorn/lib/proof_allocators.c":17:10)
^bb7:
  %v40 = sea.nondet "nd_malloc_is_fail" [6] : i1 loc("_20"("seahorn/lib/sea_allocators.c":11:10))
  %v41 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v40, ^bb9(%v2, %v41 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb8 loc("seahorn/lib/sea_allocators.c":11:10)
^bb8:
  %v42 = sea.const 1 : i64 loc("malloc.i")
  %v43 = sea.mul %v33, %v42 : i64 loc("malloc.i")
  %v44 = sea.alloca %v43 align 16 [7] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb9(%v2, %v44 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb9(%v45 : !sea.mem<!sea.ptr<64>, i8>, %v46 : !sea.ptr<64>):
  %v47 = sea.memhavoc %v45[%v46], %v33 [8] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v48 = sea.ptr.null : !sea.ptr<64> loc("_23"("seahorn/lib/sea_allocators.c":45:10))
  %v49 = sea.ptr.cmp ne, %v46, %v48 : !sea.ptr<64> loc("_23"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v49 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb10(%v47, %v46 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb10(%v50 : !sea.mem<!sea.ptr<64>, i8>, %v51 : !sea.ptr<64>):
  %v52 = sea.ptr.index %v51 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_25"("seahorn/lib/hash_table_helper.c":23:9))
  %v53 = sea.const 8 : i64 loc("_26"("seahorn/lib/hash_table_helper.c":23:14))
  %v54 = sea.ptr.dereferenceable %v52, %v53 : !sea.ptr<64>, i64 loc("_26"("seahorn/lib/hash_table_helper.c":23:14))
  sea.cond_br %v54, ^bb11, ^bb65
^bb11:
  %v55 = sea.store %v50[%v52], %v17 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":23:14)
  %v56 = sea.ptr.index %v51 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_28"("seahorn/lib/hash_table_helper.c":24:9))
  %v57 = sea.const 8 : i64 loc("_29"("seahorn/lib/hash_table_helper.c":24:14))
  %v58 = sea.ptr.dereferenceable %v56, %v57 : !sea.ptr<64>, i64 loc("_29"("seahorn/lib/hash_table_helper.c":24:14))
  sea.cond_br %v58, ^bb12, ^bb65
^bb12:
  %v59 = sea.const 18446744073709551615 : i64 loc("_31"("seahorn/lib/hash_table_helper.c":24:28))
  %v60 = sea.add %v17, %v59 : i64 loc("_31"("seahorn/lib/hash_table_helper.c":24:28))
  %v61 = sea.store %v55[%v56], %v60 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":24:14)
  %v62 = sea.ptr.index %v51 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_32"("seahorn/lib/hash_table_helper.c":25:9))
  %v63 = sea.const 8 : i64 loc("_33"("seahorn/lib/hash_table_helper.c":25:25))
  %v64 = sea.ptr.dereferenceable %v62, %v63 : !sea.ptr<64>, i64 loc("_33"("seahorn/lib/hash_table_helper.c":25:25))
  sea.cond_br %v64, ^bb13, ^bb65
^bb13:
  %v65 = sea.const 4606732058837280358 : i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v66 = sea.store %v61[%v62], %v65 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v67 = sea.ptr.index %v51 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_35"("seahorn/lib/hash_table_helper.c":26:9))
  %v68 = sea.const 8 : i64 loc("_36"("seahorn/lib/hash_table_helper.c":26:15))
  %v69 = sea.ptr.dereferenceable %v67, %v68 : !sea.ptr<64>, i64 loc("_36"("seahorn/lib/hash_table_helper.c":26:15))
  sea.cond_br %v69, ^bb14, ^bb65
^bb14:
  %v70 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v71 = sea.store %v66[%v67], %v70 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v72 = sea.const 8 : i64 loc("_38"("seahorn/lib/hash_table_helper.c":27:17))
  %v73 = sea.ptr.dereferenceable %v51, %v72 : !sea.ptr<64>, i64 loc("_38"("seahorn/lib/hash_table_helper.c":27:17))
  sea.cond_br %v73, ^bb15, ^bb65
^bb15:
  %v74 = sea.func_addr @"nd_hash_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v75 = sea.store %v71[%v51], %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v76 = sea.ptr.index %v51 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_40"("seahorn/lib/hash_table_helper.c":28:9))
  %v77 = sea.const 8 : i64 loc("_41"("seahorn/lib/hash_table_helper.c":28:19))
  %v78 = sea.ptr.dereferenceable %v76, %v77 : !sea.ptr<64>, i64 loc("_41"("seahorn/lib/hash_table_helper.c":28:19))
  sea.cond_br %v78, ^bb16, ^bb65
^bb16:
  %v79 = sea.func_addr @"nd_hash_equals_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  %v80 = sea.store %v75[%v76], %v79 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  sea.br ^bb17
^bb17:
  %v81 = sea.store %v1[%v4], %v51 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":37:15)
  sea.br ^bb18
^bb18:
  sea.br ^bb19
^bb19:
  %v82 = sea.const 8 : i64 loc("_45"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v83 = sea.ptr.dereferenceable %v51, %v82 : !sea.ptr<64>, i64 loc("_45"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v83, ^bb20, ^bb65
^bb20:
  %v84 = sea.load %v75[%v51] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_47"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v85 = sea.ptr.null : !sea.ptr<64> loc("_48"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v86 = sea.ptr.cmp ne, %v84, %v85 : !sea.ptr<64> loc("_48"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v87 = sea.const 8 : i64 loc("_49"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v88 = sea.ptr.dereferenceable %v76, %v87 : !sea.ptr<64>, i64 loc("_49"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v88, ^bb21, ^bb65
^bb21:
  %v89 = sea.const 8 : i64 loc("_51"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v90 = sea.ptr.dereferenceable %v67, %v89 : !sea.ptr<64>, i64 loc("_51"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v90, ^bb22, ^bb65
^bb22:
  %v91 = sea.const 8 : i64 loc("_53"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v92 = sea.ptr.dereferenceable %v52, %v91 : !sea.ptr<64>, i64 loc("_53"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v92, ^bb23, ^bb65
^bb23:
  %v93 = sea.const 1 : i64 loc("_55"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v94 = sea.icmp ugt, %v17, %v93 : i64 loc("_55"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v95 = sea.const 8 : i64 loc("_56"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v96 = sea.ptr.dereferenceable %v52, %v95 : !sea.ptr<64>, i64 loc("_56"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v96, ^bb24, ^bb65
^bb24:
  %v97 = sea.ptr.index %v51 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_58"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v98 = sea.const 8 : i64 loc("_59"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v99 = sea.ptr.dereferenceable %v97, %v98 : !sea.ptr<64>, i64 loc("_59"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v99, ^bb25, ^bb65
^bb25:
  %v100 = sea.load %v55[%v97] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_61"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v101 = sea.ptr.index %v51 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_62"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v102 = sea.const 8 : i64 loc("_63"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v103 = sea.ptr.dereferenceable %v101, %v102 : !sea.ptr<64>, i64 loc("_63"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v103, ^bb26, ^bb65
^bb26:
  %v104 = sea.load %v55[%v101] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_65"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v105 = sea.icmp ule, %v100, %v104 : i64 loc("_66"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v106 = sea.const 8 : i64 loc("_67"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v107 = sea.ptr.dereferenceable %v101, %v106 : !sea.ptr<64>, i64 loc("_67"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v107, ^bb27, ^bb65
^bb27:
  %v108 = sea.const 8 : i64 loc("_69"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v109 = sea.ptr.dereferenceable %v52, %v108 : !sea.ptr<64>, i64 loc("_69"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v109, ^bb28, ^bb65
^bb28:
  %v110 = sea.icmp ult, %v104, %v17 : i64 loc("_71"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v111 = sea.const 8 : i64 loc("_72"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v112 = sea.ptr.dereferenceable %v56, %v111 : !sea.ptr<64>, i64 loc("_72"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v112, ^bb29, ^bb65
^bb29:
  %v113 = sea.const 8 : i64 loc("_74"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v114 = sea.ptr.dereferenceable %v52, %v113 : !sea.ptr<64>, i64 loc("_74"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v114, ^bb30, ^bb65
^bb30:
  %v115 = sea.const 8 : i64 loc("_76"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v116 = sea.ptr.dereferenceable %v52, %v115 : !sea.ptr<64>, i64 loc("_76"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v116, ^bb31, ^bb65
^bb31:
  %v117 = sea.const 0 : i1 loc("or.cond5.i25.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v118 = sea.select %v86, %v94, %v117 : i1 loc("or.cond5.i25.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v119 = sea.const 0 : i1 loc("or.cond7.i26.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v120 = sea.select %v118, %v21, %v119 : i1 loc("or.cond7.i26.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v121 = sea.const 0 : i1 loc("or.cond9.i27.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v122 = sea.select %v120, %v105, %v121 : i1 loc("or.cond9.i27.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v123 = sea.const 0 : i1 loc("or.cond11.i28.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v124 = sea.select %v122, %v110, %v123 : i1 loc("or.cond11.i28.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.assume %v124 loc("seahorn/jobs2/hash_table_get_entry_count2/aws_hash_table_get_entry_count_harness2.c":19:3)
  %v125 = sea.const 8 : i64 loc("_77"("seahorn/jobs2/hash_table_get_entry_count2/aws_hash_table_get_entry_count_harness2.c":23:35))
  %v126 = sea.ptr.dereferenceable %v97, %v125 : !sea.ptr<64>, i64 loc("_77"("seahorn/jobs2/hash_table_get_entry_count2/aws_hash_table_get_entry_count_harness2.c":23:35))
  sea.cond_br %v126, ^bb32, ^bb65
^bb32:
  sea.tracking_on loc("seahorn/jobs2/hash_table_get_entry_count2/aws_hash_table_get_entry_count_harness2.c":25:3)
  %v127 = sea.mem.reset_modified %v81[%v4] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/hash_table_get_entry_count2/aws_hash_table_get_entry_count_harness2.c":26:3)
  %v128 = sea.load %v127[%v4] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_79"("seahorn/jobs2/hash_table_get_entry_count2/aws_hash_table_get_entry_count_harness2.c":27:36))
  %v129 = sea.mem.reset_modified %v80[%v128] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/hash_table_get_entry_count2/aws_hash_table_get_entry_count_harness2.c":27:3)
  sea.br ^bb33
^bb33:
  %v130 = sea.ptr.index %v128 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_81"("aws-c-common/source/hash_table.c":161:19))
  %v131 = sea.const 8 : i64 loc("_82"("aws-c-common/source/hash_table.c":161:19))
  %v132 = sea.ptr.dereferenceable %v130, %v131 : !sea.ptr<64>, i64 loc("_82"("aws-c-common/source/hash_table.c":161:19))
  sea.cond_br %v132, ^bb34, ^bb65
^bb34:
  %v133 = sea.load %v55[%v130] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_83"("aws-c-common/source/hash_table.c":161:19))
  %v134 = sea.icmp eq, %v133, %v100 : i64 loc("_84"("seahorn/jobs2/hash_table_get_entry_count2/aws_hash_table_get_entry_count_harness2.c":33:3))
  sea.cond_br %v134, ^bb35, ^bb65 loc("seahorn/jobs2/hash_table_get_entry_count2/aws_hash_table_get_entry_count_harness2.c":33:3)
^bb35:
  sea.br ^bb36
^bb36:
  sea.br ^bb37
^bb37:
  %v135 = sea.const 8 : i64 loc("_88"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v136 = sea.ptr.dereferenceable %v128, %v135 : !sea.ptr<64>, i64 loc("_88"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v136, ^bb38, ^bb65
^bb38:
  %v137 = sea.load %v129[%v128] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_90"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v138 = sea.ptr.null : !sea.ptr<64> loc("_91"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v139 = sea.ptr.cmp ne, %v137, %v138 : !sea.ptr<64> loc("_91"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v140 = sea.ptr.index %v128 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_92"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v141 = sea.const 8 : i64 loc("_93"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v142 = sea.ptr.dereferenceable %v140, %v141 : !sea.ptr<64>, i64 loc("_93"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v142, ^bb39, ^bb65
^bb39:
  %v143 = sea.load %v80[%v140] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_95"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v144 = sea.ptr.null : !sea.ptr<64> loc("_96"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v145 = sea.ptr.cmp ne, %v143, %v144 : !sea.ptr<64> loc("_96"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v146 = sea.ptr.index %v128 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_97"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v147 = sea.const 8 : i64 loc("_98"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v148 = sea.ptr.dereferenceable %v146, %v147 : !sea.ptr<64>, i64 loc("_98"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v148, ^bb40, ^bb65
^bb40:
  %v149 = sea.load %v71[%v146] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_100"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v150 = sea.ptr.null : !sea.ptr<64> loc("_101"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v151 = sea.ptr.cmp ne, %v149, %v150 : !sea.ptr<64> loc("_101"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v152 = sea.ptr.index %v128 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_102"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v153 = sea.const 8 : i64 loc("_103"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v154 = sea.ptr.dereferenceable %v152, %v153 : !sea.ptr<64>, i64 loc("_103"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v154, ^bb41, ^bb65
^bb41:
  %v155 = sea.load %v55[%v152] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_105"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v156 = sea.const 1 : i64 loc("_106"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v157 = sea.icmp ugt, %v155, %v156 : i64 loc("_106"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v158 = sea.const 8 : i64 loc("_107"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v159 = sea.ptr.dereferenceable %v152, %v158 : !sea.ptr<64>, i64 loc("_107"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v159, ^bb42, ^bb65
^bb42:
  %v160 = sea.ctpop %v155 : i64 loc("_109"("aws-c-common/include/aws/common/math.inl":161:14))
  %v161 = sea.const 1 : i64 loc("_110"("aws-c-common/include/aws/common/math.inl":161:14))
  %v162 = sea.icmp eq, %v160, %v161 : i64 loc("_110"("aws-c-common/include/aws/common/math.inl":161:14))
  %v163 = sea.const 8 : i64 loc("_111"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v164 = sea.ptr.dereferenceable %v130, %v163 : !sea.ptr<64>, i64 loc("_111"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v164, ^bb43, ^bb65
^bb43:
  %v165 = sea.ptr.index %v128 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_113"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v166 = sea.const 8 : i64 loc("_114"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v167 = sea.ptr.dereferenceable %v165, %v166 : !sea.ptr<64>, i64 loc("_114"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v167, ^bb44, ^bb65
^bb44:
  %v168 = sea.load %v55[%v165] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_116"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v169 = sea.icmp ule, %v100, %v168 : i64 loc("_117"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v170 = sea.const 8 : i64 loc("_118"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v171 = sea.ptr.dereferenceable %v165, %v170 : !sea.ptr<64>, i64 loc("_118"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v171, ^bb45, ^bb65
^bb45:
  %v172 = sea.const 8 : i64 loc("_120"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v173 = sea.ptr.dereferenceable %v152, %v172 : !sea.ptr<64>, i64 loc("_120"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v173, ^bb46, ^bb65
^bb46:
  %v174 = sea.icmp ult, %v168, %v155 : i64 loc("_122"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v175 = sea.ptr.index %v128 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_123"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v176 = sea.const 8 : i64 loc("_124"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v177 = sea.ptr.dereferenceable %v175, %v176 : !sea.ptr<64>, i64 loc("_124"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v177, ^bb47, ^bb65
^bb47:
  %v178 = sea.load %v61[%v175] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_126"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v179 = sea.const 8 : i64 loc("_127"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v180 = sea.ptr.dereferenceable %v152, %v179 : !sea.ptr<64>, i64 loc("_127"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v180, ^bb48, ^bb65
^bb48:
  %v181 = sea.const 8 : i64 loc("_129"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v182 = sea.ptr.dereferenceable %v152, %v181 : !sea.ptr<64>, i64 loc("_129"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v182, ^bb49, ^bb65
^bb49:
  %v183 = sea.const 18446744073709551615 : i64 loc("_130"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v184 = sea.add %v155, %v183 : i64 loc("_130"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v185 = sea.icmp eq, %v178, %v184 : i64 loc("_131"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
  %v186 = sea.const 0 : i1 loc("or.cond.i12.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v187 = sea.select %v139, %v145, %v186 : i1 loc("or.cond.i12.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v188 = sea.const 0 : i1 loc("or.cond3.i13.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v189 = sea.select %v187, %v151, %v188 : i1 loc("or.cond3.i13.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v190 = sea.const 0 : i1 loc("or.cond5.i14.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v191 = sea.select %v189, %v157, %v190 : i1 loc("or.cond5.i14.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v192 = sea.const 0 : i1 loc("or.cond7.i15.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v193 = sea.select %v191, %v162, %v192 : i1 loc("or.cond7.i15.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v194 = sea.const 0 : i1 loc("or.cond9.i16.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v195 = sea.select %v193, %v169, %v194 : i1 loc("or.cond9.i16.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v196 = sea.const 0 : i1 loc("or.cond11.i17.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v197 = sea.select %v195, %v174, %v196 : i1 loc("or.cond11.i17.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v198 = sea.const 0 : i1 loc("or.cond13.i18.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v199 = sea.select %v197, %v185, %v198 : i1 loc("or.cond13.i18.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.br ^bb50
^bb50:
  sea.br ^bb51
^bb51:
  %v200 = sea.const 8 : i64 loc("_134"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v201 = sea.ptr.dereferenceable %v128, %v200 : !sea.ptr<64>, i64 loc("_134"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v201, ^bb52, ^bb65
^bb52:
  %v202 = sea.const 8 : i64 loc("_136"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v203 = sea.ptr.dereferenceable %v140, %v202 : !sea.ptr<64>, i64 loc("_136"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v203, ^bb53, ^bb65
^bb53:
  %v204 = sea.const 8 : i64 loc("_138"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v205 = sea.ptr.dereferenceable %v146, %v204 : !sea.ptr<64>, i64 loc("_138"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v205, ^bb54, ^bb65
^bb54:
  %v206 = sea.const 8 : i64 loc("_140"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v207 = sea.ptr.dereferenceable %v152, %v206 : !sea.ptr<64>, i64 loc("_140"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v207, ^bb55, ^bb65
^bb55:
  %v208 = sea.const 8 : i64 loc("_142"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v209 = sea.ptr.dereferenceable %v152, %v208 : !sea.ptr<64>, i64 loc("_142"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v209, ^bb56, ^bb65
^bb56:
  %v210 = sea.const 8 : i64 loc("_144"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v211 = sea.ptr.dereferenceable %v130, %v210 : !sea.ptr<64>, i64 loc("_144"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v211, ^bb57, ^bb65
^bb57:
  %v212 = sea.const 8 : i64 loc("_146"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v213 = sea.ptr.dereferenceable %v165, %v212 : !sea.ptr<64>, i64 loc("_146"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v213, ^bb58, ^bb65
^bb58:
  %v214 = sea.const 8 : i64 loc("_148"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v215 = sea.ptr.dereferenceable %v165, %v214 : !sea.ptr<64>, i64 loc("_148"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v215, ^bb59, ^bb65
^bb59:
  %v216 = sea.const 8 : i64 loc("_150"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v217 = sea.ptr.dereferenceable %v152, %v216 : !sea.ptr<64>, i64 loc("_150"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v217, ^bb60, ^bb65
^bb60:
  %v218 = sea.const 8 : i64 loc("_152"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v219 = sea.ptr.dereferenceable %v175, %v218 : !sea.ptr<64>, i64 loc("_152"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v219, ^bb61, ^bb65
^bb61:
  %v220 = sea.const 8 : i64 loc("_154"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v221 = sea.ptr.dereferenceable %v152, %v220 : !sea.ptr<64>, i64 loc("_154"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v221, ^bb62, ^bb65
^bb62:
  %v222 = sea.const 8 : i64 loc("_156"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v223 = sea.ptr.dereferenceable %v152, %v222 : !sea.ptr<64>, i64 loc("_156"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v224 = sea.const 0 : i1 loc("_157")
  %v225 = sea.select %v223, %v199, %v224 : i1 loc("_157")
  sea.cond_br %v225, ^bb63, ^bb65
^bb63:
  %v226 = sea.mem.is_modified %v127[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_159"("seahorn/jobs2/hash_table_get_entry_count2/aws_hash_table_get_entry_count_harness2.c":38:3))
  %v227 = sea.const 1 : i1 loc("_160"("seahorn/jobs2/hash_table_get_entry_count2/aws_hash_table_get_entry_count_harness2.c":38:3))
  %v228 = sea.xor %v226, %v227 : i1 loc("_160"("seahorn/jobs2/hash_table_get_entry_count2/aws_hash_table_get_entry_count_harness2.c":38:3))
  %v229 = sea.mem.is_modified %v127[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_161"("seahorn/jobs2/hash_table_get_entry_count2/aws_hash_table_get_entry_count_harness2.c":38:3))
  sea.cond_br %v229, ^bb65, ^bb64 loc("seahorn/jobs2/hash_table_get_entry_count2/aws_hash_table_get_entry_count_harness2.c":38:3)
^bb64:
  %v230 = sea.mem.is_modified %v129[%v128] : !sea.mem<!sea.ptr<64>, i8> loc("_163"("seahorn/jobs2/hash_table_get_entry_count2/aws_hash_table_get_entry_count_harness2.c":39:3))
  %v231 = sea.const 1 : i1 loc("_164"("seahorn/jobs2/hash_table_get_entry_count2/aws_hash_table_get_entry_count_harness2.c":39:3))
  %v232 = sea.xor %v230, %v231 : i1 loc("_164"("seahorn/jobs2/hash_table_get_entry_count2/aws_hash_table_get_entry_count_harness2.c":39:3))
  %v233 = sea.mem.is_modified %v129[%v128] : !sea.mem<!sea.ptr<64>, i8> loc("_165"("seahorn/jobs2/hash_table_get_entry_count2/aws_hash_table_get_entry_count_harness2.c":39:3))
  sea.assume %v233 loc("seahorn/jobs2/hash_table_get_entry_count2/aws_hash_table_get_entry_count_harness2.c":39:3)
  sea.br ^bb65 loc("seahorn/jobs2/hash_table_get_entry_count2/aws_hash_table_get_entry_count_harness2.c":39:3)
^bb65:
  sea.br ^bb66
^bb66:
  %v234 = sea.const 0 : i1
  sea.assert %v234
  sea.halt
}
