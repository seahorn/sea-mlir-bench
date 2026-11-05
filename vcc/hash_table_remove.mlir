// Exported from SeaHorn (hash_table_remove.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.20" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm25")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm26")
  %v2 = sea.mem.nondet "region.0" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm27")
  %v3 = sea.mem.nondet "region.28" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm28")
  %v4 = sea.const 4 : i64 loc("_0")
  %v5 = sea.alloca %v4 align 8 [4] : i64 -> !sea.ptr<64> loc("_0")
  %v6 = sea.const 8 : i64 loc("_1")
  %v7 = sea.alloca %v6 align 8 [5] : i64 -> !sea.ptr<64> loc("_1")
  %v8 = sea.const 4 : i64 loc("_2")
  %v9 = sea.alloca %v8 align 8 [6] : i64 -> !sea.ptr<64> loc("_2")
  %v10 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v11 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v12 = sea.store %v2[%v10], %v11 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v13 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_3")
  %v14 = sea.ptr.index %v13 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_3")
  %v15 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v16 = sea.store %v12[%v14], %v15 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v17 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_4")
  %v18 = sea.ptr.index %v17 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_4")
  %v19 = sea.const 0 : i8
  %v20 = sea.const 24 : i64
  %v21 = sea.memset %v16[%v18], %v19, %v20 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v22 = sea.nondet "nd_size_t" [7] : i64 loc("_5"("seahorn/lib/hash_table_helper.c":14:24))
  %v23 = sea.const 5 : i64 loc("_6"("seahorn/lib/hash_table_helper.c":15:22))
  %v24 = sea.icmp ult, %v22, %v23 : i64 loc("_6"("seahorn/lib/hash_table_helper.c":15:22))
  sea.assume %v24 loc("seahorn/lib/hash_table_helper.c":15:3)
  %v25 = sea.ctpop %v22 : i64 loc("_7"("aws-c-common/include/aws/common/math.inl":161:14))
  %v26 = sea.const 1 : i64 loc("_8"("aws-c-common/include/aws/common/math.inl":161:14))
  %v27 = sea.icmp eq, %v25, %v26 : i64 loc("_8"("aws-c-common/include/aws/common/math.inl":161:14))
  sea.assume %v27 loc("seahorn/lib/hash_table_helper.c":16:3)
  %v28 = sea.nondet "nd_size_t" [8] : i64 loc("_9"("seahorn/lib/hash_table_helper.c":18:27))
  sea.br ^bb1
^bb1:
  %v29 = sea.const 24 : i64 loc("_11"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v30 = sea.mul %v22, %v29 : i64 loc("_11"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v31 = sea.const 24 : i64 loc("_11"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v32 = sea.umulo %v22, %v31 : i64 loc("_11"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v33 = sea.const 4294967295 : i32 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
  sea.cond_br %v32, ^bb6(%v28, %v33 : i64, i32), ^bb2 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb2:
  sea.br ^bb3
^bb3:
  %v34 = sea.const 80 : i64 loc("_15"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v35 = sea.add %v30, %v34 : i64 loc("_15"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v36 = sea.const 80 : i64 loc("_15"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v37 = sea.uaddo %v30, %v36 : i64 loc("_15"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v37, ^bb4, ^bb5 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb4:
  sea.br ^bb5 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":71:9)
^bb5:
  %v38 = sea.sext %v37 : i1 to i32 loc("..i.i.i"("aws-c-common/source/hash_table.c":0:0))
  sea.br ^bb6(%v35, %v38 : i64, i32) loc("aws-c-common/source/hash_table.c":0:0)
^bb6(%v39 : i64, %v40 : i32):
  %v41 = sea.const 0 : i32 loc("_20"("seahorn/lib/hash_table_helper.c":20:72))
  %v42 = sea.icmp eq, %v40, %v41 : i32 loc("_20"("seahorn/lib/hash_table_helper.c":20:72))
  sea.assume %v42 loc("seahorn/lib/hash_table_helper.c":20:3)
  %v43 = sea.const 0 : i64 loc("_21"("seahorn/lib/proof_allocators.c":17:15))
  %v44 = sea.icmp eq, %v39, %v43 : i64 loc("_21"("seahorn/lib/proof_allocators.c":17:15))
  %v45 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v44, ^bb10(%v3, %v45 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb7 loc("seahorn/lib/proof_allocators.c":17:10)
^bb7:
  %v46 = sea.nondet "nd_malloc_is_fail" [9] : i1 loc("_23"("seahorn/lib/sea_allocators.c":11:10))
  %v47 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v46, ^bb9(%v3, %v47 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb8 loc("seahorn/lib/sea_allocators.c":11:10)
^bb8:
  %v48 = sea.const 1 : i64 loc("malloc.i")
  %v49 = sea.mul %v39, %v48 : i64 loc("malloc.i")
  %v50 = sea.alloca %v49 align 16 [10] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb9(%v3, %v50 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb9(%v51 : !sea.mem<!sea.ptr<64>, i8>, %v52 : !sea.ptr<64>):
  %v53 = sea.memhavoc %v51[%v52], %v39 [11] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v54 = sea.ptr.null : !sea.ptr<64> loc("_26"("seahorn/lib/sea_allocators.c":45:10))
  %v55 = sea.ptr.cmp ne, %v52, %v54 : !sea.ptr<64> loc("_26"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v55 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb10(%v53, %v52 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb10(%v56 : !sea.mem<!sea.ptr<64>, i8>, %v57 : !sea.ptr<64>):
  %v58 = sea.ptr.index %v57 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_28"("seahorn/lib/hash_table_helper.c":23:9))
  %v59 = sea.const 8 : i64 loc("_29"("seahorn/lib/hash_table_helper.c":23:14))
  %v60 = sea.ptr.dereferenceable %v58, %v59 : !sea.ptr<64>, i64 loc("_29"("seahorn/lib/hash_table_helper.c":23:14))
  sea.cond_br %v60, ^bb11, ^bb205
^bb11:
  %v61 = sea.store %v56[%v58], %v22 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":23:14)
  %v62 = sea.ptr.index %v57 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_31"("seahorn/lib/hash_table_helper.c":24:9))
  %v63 = sea.const 8 : i64 loc("_32"("seahorn/lib/hash_table_helper.c":24:14))
  %v64 = sea.ptr.dereferenceable %v62, %v63 : !sea.ptr<64>, i64 loc("_32"("seahorn/lib/hash_table_helper.c":24:14))
  sea.cond_br %v64, ^bb12, ^bb205
^bb12:
  %v65 = sea.const 18446744073709551615 : i64 loc("_34"("seahorn/lib/hash_table_helper.c":24:28))
  %v66 = sea.add %v22, %v65 : i64 loc("_34"("seahorn/lib/hash_table_helper.c":24:28))
  %v67 = sea.store %v61[%v62], %v66 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":24:14)
  %v68 = sea.ptr.index %v57 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_35"("seahorn/lib/hash_table_helper.c":25:9))
  %v69 = sea.const 8 : i64 loc("_36"("seahorn/lib/hash_table_helper.c":25:25))
  %v70 = sea.ptr.dereferenceable %v68, %v69 : !sea.ptr<64>, i64 loc("_36"("seahorn/lib/hash_table_helper.c":25:25))
  sea.cond_br %v70, ^bb13, ^bb205
^bb13:
  %v71 = sea.const 4606732058837280358 : i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v72 = sea.store %v67[%v68], %v71 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v73 = sea.ptr.index %v57 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_38"("seahorn/lib/hash_table_helper.c":26:9))
  %v74 = sea.const 8 : i64 loc("_39"("seahorn/lib/hash_table_helper.c":26:15))
  %v75 = sea.ptr.dereferenceable %v73, %v74 : !sea.ptr<64>, i64 loc("_39"("seahorn/lib/hash_table_helper.c":26:15))
  sea.cond_br %v75, ^bb14, ^bb205
^bb14:
  %v76 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v77 = sea.store %v72[%v73], %v76 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v78 = sea.const 8 : i64 loc("_41"("seahorn/lib/hash_table_helper.c":27:17))
  %v79 = sea.ptr.dereferenceable %v57, %v78 : !sea.ptr<64>, i64 loc("_41"("seahorn/lib/hash_table_helper.c":27:17))
  sea.cond_br %v79, ^bb15, ^bb205
^bb15:
  %v80 = sea.func_addr @"nd_hash_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v81 = sea.store %v77[%v57], %v80 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v82 = sea.ptr.index %v57 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_43"("seahorn/lib/hash_table_helper.c":28:9))
  %v83 = sea.const 8 : i64 loc("_44"("seahorn/lib/hash_table_helper.c":28:19))
  %v84 = sea.ptr.dereferenceable %v82, %v83 : !sea.ptr<64>, i64 loc("_44"("seahorn/lib/hash_table_helper.c":28:19))
  sea.cond_br %v84, ^bb16, ^bb205
^bb16:
  %v85 = sea.func_addr @"nd_hash_equals_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  %v86 = sea.store %v81[%v82], %v85 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  sea.br ^bb17
^bb17:
  %v87 = sea.store %v0[%v7], %v57 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":37:15)
  sea.br ^bb18
^bb18:
  sea.br ^bb19
^bb19:
  %v88 = sea.const 8 : i64 loc("_48"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v89 = sea.ptr.dereferenceable %v57, %v88 : !sea.ptr<64>, i64 loc("_48"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v89, ^bb20, ^bb205
^bb20:
  %v90 = sea.load %v81[%v57] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_50"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v91 = sea.ptr.null : !sea.ptr<64> loc("_51"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v92 = sea.ptr.cmp ne, %v90, %v91 : !sea.ptr<64> loc("_51"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v93 = sea.const 8 : i64 loc("_52"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v94 = sea.ptr.dereferenceable %v82, %v93 : !sea.ptr<64>, i64 loc("_52"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v94, ^bb21, ^bb205
^bb21:
  %v95 = sea.const 8 : i64 loc("_54"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v96 = sea.ptr.dereferenceable %v73, %v95 : !sea.ptr<64>, i64 loc("_54"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v96, ^bb22, ^bb205
^bb22:
  %v97 = sea.const 8 : i64 loc("_56"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v98 = sea.ptr.dereferenceable %v58, %v97 : !sea.ptr<64>, i64 loc("_56"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v98, ^bb23, ^bb205
^bb23:
  %v99 = sea.const 1 : i64 loc("_58"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v100 = sea.icmp ugt, %v22, %v99 : i64 loc("_58"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v101 = sea.const 8 : i64 loc("_59"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v102 = sea.ptr.dereferenceable %v58, %v101 : !sea.ptr<64>, i64 loc("_59"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v102, ^bb24, ^bb205
^bb24:
  %v103 = sea.ptr.index %v57 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_61"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v104 = sea.const 8 : i64 loc("_62"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v105 = sea.ptr.dereferenceable %v103, %v104 : !sea.ptr<64>, i64 loc("_62"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v105, ^bb25, ^bb205
^bb25:
  %v106 = sea.load %v61[%v103] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_64"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v107 = sea.ptr.index %v57 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_65"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v108 = sea.const 8 : i64 loc("_66"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v109 = sea.ptr.dereferenceable %v107, %v108 : !sea.ptr<64>, i64 loc("_66"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v109, ^bb26, ^bb205
^bb26:
  %v110 = sea.load %v61[%v107] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_68"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v111 = sea.icmp ule, %v106, %v110 : i64 loc("_69"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v112 = sea.const 8 : i64 loc("_70"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v113 = sea.ptr.dereferenceable %v107, %v112 : !sea.ptr<64>, i64 loc("_70"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v113, ^bb27, ^bb205
^bb27:
  %v114 = sea.const 8 : i64 loc("_72"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v115 = sea.ptr.dereferenceable %v58, %v114 : !sea.ptr<64>, i64 loc("_72"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v115, ^bb28, ^bb205
^bb28:
  %v116 = sea.icmp ult, %v110, %v22 : i64 loc("_74"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v117 = sea.const 8 : i64 loc("_75"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v118 = sea.ptr.dereferenceable %v62, %v117 : !sea.ptr<64>, i64 loc("_75"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v118, ^bb29, ^bb205
^bb29:
  %v119 = sea.const 8 : i64 loc("_77"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v120 = sea.ptr.dereferenceable %v58, %v119 : !sea.ptr<64>, i64 loc("_77"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v120, ^bb30, ^bb205
^bb30:
  %v121 = sea.const 8 : i64 loc("_79"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v122 = sea.ptr.dereferenceable %v58, %v121 : !sea.ptr<64>, i64 loc("_79"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v122, ^bb31, ^bb205
^bb31:
  %v123 = sea.const 0 : i1 loc("or.cond5.i92.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v124 = sea.select %v92, %v100, %v123 : i1 loc("or.cond5.i92.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v125 = sea.const 0 : i1 loc("or.cond7.i93.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v126 = sea.select %v124, %v27, %v125 : i1 loc("or.cond7.i93.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v127 = sea.const 0 : i1 loc("or.cond9.i94.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v128 = sea.select %v126, %v111, %v127 : i1 loc("or.cond9.i94.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v129 = sea.const 0 : i1 loc("or.cond11.i95.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v130 = sea.select %v128, %v116, %v129 : i1 loc("or.cond11.i95.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.assume %v130 loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":11:3)
  %v131 = sea.nondet "nd_bool" [12] : i1 loc("_80"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":12:32))
  %v132 = sea.ptr.index %v57 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_81"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":12:15))
  %v133 = sea.const 8 : i64 loc("_82"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":12:30))
  %v134 = sea.ptr.dereferenceable %v132, %v133 : !sea.ptr<64>, i64 loc("_82"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":12:30))
  sea.cond_br %v134, ^bb32, ^bb205
^bb32:
  %v135 = sea.ptr.null : !sea.ptr<64> loc("_84"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":12:32))
  %v136 = sea.func_addr @"hash_proof_destroy_noop.addr" : !sea.ptr<64> loc("_84"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":12:32))
  %v137 = sea.select %v131, %v135, %v136 : !sea.ptr<64> loc("_84"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":12:32))
  %v138 = sea.store %v86[%v132], %v137 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":12:30)
  %v139 = sea.nondet "nd_bool" [13] : i1 loc("_85"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":13:34))
  %v140 = sea.ptr.index %v57 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_86"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":13:15))
  %v141 = sea.const 8 : i64 loc("_87"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":13:32))
  %v142 = sea.ptr.dereferenceable %v140, %v141 : !sea.ptr<64>, i64 loc("_87"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":13:32))
  sea.cond_br %v142, ^bb33, ^bb205
^bb33:
  %v143 = sea.ptr.null : !sea.ptr<64> loc("_89"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":13:34))
  %v144 = sea.func_addr @"hash_proof_destroy_noop.addr" : !sea.ptr<64> loc("_89"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":13:34))
  %v145 = sea.select %v139, %v143, %v144 : !sea.ptr<64> loc("_89"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":13:34))
  %v146 = sea.store %v138[%v140], %v145 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":13:32)
  sea.br ^bb34
^bb34:
  %v147 = sea.const 8 : i64 loc("_91"("seahorn/lib/hash_table_helper.c":79:17))
  %v148 = sea.ptr.dereferenceable %v103, %v147 : !sea.ptr<64>, i64 loc("_91"("seahorn/lib/hash_table_helper.c":79:17))
  sea.cond_br %v148, ^bb35, ^bb205
^bb35:
  %v149 = sea.const 0 : i64 loc("_93"("seahorn/lib/hash_table_helper.c":79:29))
  %v150 = sea.icmp ne, %v106, %v149 : i64 loc("_93"("seahorn/lib/hash_table_helper.c":79:29))
  sea.assume %v150 loc("seahorn/lib/hash_table_helper.c":79:3)
  %v151 = sea.nondet "nd_size_t" [14] : i64 loc("_94"("seahorn/lib/hash_table_helper.c":80:27))
  %v152 = sea.const 8 : i64 loc("_95"("seahorn/lib/hash_table_helper.c":81:34))
  %v153 = sea.ptr.dereferenceable %v58, %v152 : !sea.ptr<64>, i64 loc("_95"("seahorn/lib/hash_table_helper.c":81:34))
  sea.cond_br %v153, ^bb36, ^bb205
^bb36:
  %v154 = sea.icmp ult, %v151, %v22 : i64 loc("_97"("seahorn/lib/hash_table_helper.c":81:25))
  sea.assume %v154 loc("seahorn/lib/hash_table_helper.c":81:3)
  sea.br ^bb37
^bb37:
  %v155 = sea.ptr.index %v57 [%v151] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_99"("seahorn/lib/hash_table_helper.c":83:39))
  %v156 = sea.const 8 : i64 loc("_100"("seahorn/lib/hash_table_helper.c":83:39))
  %v157 = sea.ptr.dereferenceable %v155, %v156 : !sea.ptr<64>, i64 loc("_100"("seahorn/lib/hash_table_helper.c":83:39))
  sea.cond_br %v157, ^bb38, ^bb205
^bb38:
  %v158 = sea.load %v61[%v155] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_101"("seahorn/lib/hash_table_helper.c":83:39))
  %v159 = sea.const 0 : i64 loc("_102"("seahorn/lib/hash_table_helper.c":83:49))
  %v160 = sea.icmp eq, %v158, %v159 : i64 loc("_102"("seahorn/lib/hash_table_helper.c":83:49))
  sea.assume %v160 loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":16:3)
  %v161 = sea.ptr.nondet "nd_voidp" [15] : !sea.ptr<64> loc("_103"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":17:15))
  %v162 = sea.nondet "nd_bool" [16] : i1 loc("_104"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":19:21))
  %v163 = sea.nondet "nd_bool" [17] : i1 loc("_105"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":20:28))
  %v164 = sea.load %v61[%v103] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc(".pmcpy18.i"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":23:39))
  sea.br ^bb39
^bb39:
  sea.br ^bb40
^bb40:
  %v165 = sea.const 8 : i64 loc("_108"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v166 = sea.ptr.dereferenceable %v57, %v165 : !sea.ptr<64>, i64 loc("_108"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v166, ^bb41, ^bb205
^bb41:
  %v167 = sea.load %v81[%v57] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_110"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v168 = sea.ptr.null : !sea.ptr<64> loc("_111"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v169 = sea.ptr.cmp ne, %v167, %v168 : !sea.ptr<64> loc("_111"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v170 = sea.const 8 : i64 loc("_112"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v171 = sea.ptr.dereferenceable %v82, %v170 : !sea.ptr<64>, i64 loc("_112"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v171, ^bb42, ^bb205
^bb42:
  %v172 = sea.load %v86[%v82] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_114"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v173 = sea.ptr.null : !sea.ptr<64> loc("_115"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v174 = sea.ptr.cmp ne, %v172, %v173 : !sea.ptr<64> loc("_115"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v175 = sea.const 8 : i64 loc("_116"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v176 = sea.ptr.dereferenceable %v73, %v175 : !sea.ptr<64>, i64 loc("_116"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v176, ^bb43, ^bb205
^bb43:
  %v177 = sea.load %v77[%v73] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_118"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v178 = sea.ptr.null : !sea.ptr<64> loc("_119"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v179 = sea.ptr.cmp ne, %v177, %v178 : !sea.ptr<64> loc("_119"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v180 = sea.const 8 : i64 loc("_120"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v181 = sea.ptr.dereferenceable %v58, %v180 : !sea.ptr<64>, i64 loc("_120"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v181, ^bb44, ^bb205
^bb44:
  %v182 = sea.load %v61[%v58] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_122"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v183 = sea.const 1 : i64 loc("_123"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v184 = sea.icmp ugt, %v182, %v183 : i64 loc("_123"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v185 = sea.const 8 : i64 loc("_124"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v186 = sea.ptr.dereferenceable %v58, %v185 : !sea.ptr<64>, i64 loc("_124"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v186, ^bb45, ^bb205
^bb45:
  %v187 = sea.ctpop %v182 : i64 loc("_126"("aws-c-common/include/aws/common/math.inl":161:14))
  %v188 = sea.const 1 : i64 loc("_127"("aws-c-common/include/aws/common/math.inl":161:14))
  %v189 = sea.icmp eq, %v187, %v188 : i64 loc("_127"("aws-c-common/include/aws/common/math.inl":161:14))
  %v190 = sea.const 8 : i64 loc("_128"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v191 = sea.ptr.dereferenceable %v103, %v190 : !sea.ptr<64>, i64 loc("_128"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v191, ^bb46, ^bb205
^bb46:
  %v192 = sea.const 8 : i64 loc("_130"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v193 = sea.ptr.dereferenceable %v107, %v192 : !sea.ptr<64>, i64 loc("_130"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v193, ^bb47, ^bb205
^bb47:
  %v194 = sea.load %v61[%v107] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_132"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v195 = sea.icmp ule, %v164, %v194 : i64 loc("_133"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v196 = sea.const 8 : i64 loc("_134"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v197 = sea.ptr.dereferenceable %v107, %v196 : !sea.ptr<64>, i64 loc("_134"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v197, ^bb48, ^bb205
^bb48:
  %v198 = sea.const 8 : i64 loc("_136"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v199 = sea.ptr.dereferenceable %v58, %v198 : !sea.ptr<64>, i64 loc("_136"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v199, ^bb49, ^bb205
^bb49:
  %v200 = sea.icmp ult, %v194, %v182 : i64 loc("_138"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v201 = sea.const 8 : i64 loc("_139"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v202 = sea.ptr.dereferenceable %v62, %v201 : !sea.ptr<64>, i64 loc("_139"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v202, ^bb50, ^bb205
^bb50:
  %v203 = sea.load %v67[%v62] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_141"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v204 = sea.const 8 : i64 loc("_142"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v205 = sea.ptr.dereferenceable %v58, %v204 : !sea.ptr<64>, i64 loc("_142"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v205, ^bb51, ^bb205
^bb51:
  %v206 = sea.const 8 : i64 loc("_144"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v207 = sea.ptr.dereferenceable %v58, %v206 : !sea.ptr<64>, i64 loc("_144"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v207, ^bb52, ^bb205
^bb52:
  %v208 = sea.const 18446744073709551615 : i64 loc("_145"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v209 = sea.add %v182, %v208 : i64 loc("_145"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v210 = sea.icmp eq, %v203, %v209 : i64 loc("_146"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
  %v211 = sea.const 0 : i1 loc("or.cond.i79.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v212 = sea.select %v169, %v174, %v211 : i1 loc("or.cond.i79.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v213 = sea.const 0 : i1 loc("or.cond3.i80.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v214 = sea.select %v212, %v179, %v213 : i1 loc("or.cond3.i80.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v215 = sea.const 0 : i1 loc("or.cond5.i81.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v216 = sea.select %v214, %v184, %v215 : i1 loc("or.cond5.i81.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v217 = sea.const 0 : i1 loc("or.cond7.i82.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v218 = sea.select %v216, %v189, %v217 : i1 loc("or.cond7.i82.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v219 = sea.const 0 : i1 loc("or.cond9.i83.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v220 = sea.select %v218, %v195, %v219 : i1 loc("or.cond9.i83.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v221 = sea.const 0 : i1 loc("or.cond11.i84.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v222 = sea.select %v220, %v200, %v221 : i1 loc("or.cond11.i84.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v223 = sea.const 0 : i1 loc("or.cond13.i85.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v224 = sea.select %v222, %v210, %v223 : i1 loc("or.cond13.i85.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.assume %v224 loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":26:3)
  %v225 = sea.const 1 : i1 loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":27:3)
  sea.assume %v225 loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":27:3)
  %v226 = sea.const 1 : i1 loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":28:3)
  sea.assume %v226 loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":28:3)
  sea.br ^bb53
^bb53:
  %v227 = sea.ptr.null : !sea.ptr<64> loc("_148"("seahorn/aws-c-common-stubs/s_hash_for_override.c":7:11))
  %v228 = sea.ptr.cmp eq, %v161, %v227 : !sea.ptr<64> loc("_148"("seahorn/aws-c-common-stubs/s_hash_for_override.c":7:11))
  %v229 = sea.const 42 : i64 loc("seahorn/aws-c-common-stubs/s_hash_for_override.c":7:7)
  sea.cond_br %v228, ^bb55(%v229 : i64), ^bb54 loc("seahorn/aws-c-common-stubs/s_hash_for_override.c":7:7)
^bb54:
  %v230 = sea.nondet "nd_uint64_t" [18] : i64 loc("_150"("seahorn/aws-c-common-stubs/s_hash_for_override.c":13:24))
  %v231 = sea.const 1 : i64 loc("spec.store.select.i60.i"("seahorn/aws-c-common-stubs/s_hash_for_override.c":17:7))
  %v232 = sea.umax %v230, %v231 : i64 loc("spec.store.select.i60.i"("seahorn/aws-c-common-stubs/s_hash_for_override.c":17:7))
  sea.br ^bb55(%v232 : i64)
^bb55(%v233 : i64):
  %v234 = sea.select %v163, %v9, %v5 : !sea.ptr<64> loc("spec.store.select.i.i"("aws-c-common/source/hash_table.c":670:9))
  %v235 = sea.const 8 : i64 loc("_151"("aws-c-common/source/hash_table.c":309:71))
  %v236 = sea.ptr.dereferenceable %v62, %v235 : !sea.ptr<64>, i64 loc("_151"("aws-c-common/source/hash_table.c":309:71))
  sea.cond_br %v236, ^bb56, ^bb205
^bb56:
  %v237 = sea.and %v233, %v203 : i64 loc("_153"("aws-c-common/source/hash_table.c":309:62))
  %v238 = sea.ptr.index %v57 [%v237] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_154"("aws-c-common/source/hash_table.c":309:39))
  %v239 = sea.ptr.index %v57 [%v237] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_155"("aws-c-common/source/hash_table.c":311:16))
  %v240 = sea.const 8 : i64 loc("_156"("aws-c-common/source/hash_table.c":311:16))
  %v241 = sea.ptr.dereferenceable %v239, %v240 : !sea.ptr<64>, i64 loc("_156"("aws-c-common/source/hash_table.c":311:16))
  sea.cond_br %v241, ^bb57, ^bb205
^bb57:
  %v242 = sea.load %v61[%v239] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_158"("aws-c-common/source/hash_table.c":311:16))
  %v243 = sea.const 0 : i64 loc("_159"("aws-c-common/source/hash_table.c":311:26))
  %v244 = sea.icmp eq, %v242, %v243 : i64 loc("_159"("aws-c-common/source/hash_table.c":311:26))
  sea.cond_br %v244, ^bb163, ^bb58 loc("aws-c-common/source/hash_table.c":311:9)
^bb58:
  %v245 = sea.const 8 : i64 loc("_162"("aws-c-common/source/hash_table.c":319:16))
  %v246 = sea.ptr.dereferenceable %v239, %v245 : !sea.ptr<64>, i64 loc("_162"("aws-c-common/source/hash_table.c":319:16))
  sea.cond_br %v246, ^bb59, ^bb205
^bb59:
  %v247 = sea.icmp eq, %v242, %v233 : i64 loc("_164"("aws-c-common/source/hash_table.c":319:26))
  sea.cond_br %v247, ^bb60, ^bb65 loc("aws-c-common/source/hash_table.c":319:39)
^bb60:
  %v248 = sea.const 8 : i64 loc("_166"("aws-c-common/source/hash_table.c":319:84))
  %v249 = sea.ptr.dereferenceable %v238, %v248 : !sea.ptr<64>, i64 loc("_166"("aws-c-common/source/hash_table.c":319:84))
  sea.cond_br %v249, ^bb61, ^bb205
^bb61:
  %v250 = sea.load %v86[%v238] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_168"("aws-c-common/source/hash_table.c":319:84))
  %v251 = sea.const 8 : i64 loc("_169"("aws-c-common/source/hash_table.c":76:40))
  %v252 = sea.ptr.dereferenceable %v82, %v251 : !sea.ptr<64>, i64 loc("_169"("aws-c-common/source/hash_table.c":76:40))
  sea.cond_br %v252, ^bb62, ^bb205
^bb62:
  %v253 = sea.ptr.cmp eq, %v161, %v250 : !sea.ptr<64> loc("_170"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:9))
  sea.cond_br %v253, ^bb121, ^bb63 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:7)
^bb63:
  %v254 = sea.ptr.null : !sea.ptr<64> loc("_172")
  %v255 = sea.ptr.cmp eq, %v250, %v254 : !sea.ptr<64> loc("_172")
  %v256 = sea.or %v228, %v255 : i1 loc("or.cond.i.i"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17))
  sea.cond_br %v256, ^bb65, ^bb64 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17)
^bb64:
  %v257 = sea.nondet "nd_bool" [19] : i1 loc("_173"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":20:10))
  sea.cond_br %v257, ^bb121, ^bb65 loc("aws-c-common/source/hash_table.c":319:9)
^bb65:
  %v258 = sea.const 8 : i64 loc("_174"("aws-c-common/source/hash_table.c":352:59))
  %v259 = sea.ptr.dereferenceable %v62, %v258 : !sea.ptr<64>, i64 loc("_174"("aws-c-common/source/hash_table.c":352:59))
  sea.cond_br %v259, ^bb66, ^bb205
^bb66:
  %v260 = sea.const 1 : i64 loc("_176"("aws-c-common/source/hash_table.c":352:37))
  %v261 = sea.add %v233, %v260 : i64 loc("_176"("aws-c-common/source/hash_table.c":352:37))
  %v262 = sea.load %v67[%v62] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_177"("aws-c-common/source/hash_table.c":352:59))
  %v263 = sea.and %v262, %v261 : i64 loc("_178"("aws-c-common/source/hash_table.c":352:50))
  %v264 = sea.ptr.index %v57 [%v263] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_179"("aws-c-common/source/hash_table.c":356:18))
  %v265 = sea.ptr.index %v57 [%v263] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_180"("aws-c-common/source/hash_table.c":357:21))
  %v266 = sea.const 8 : i64 loc("_181"("aws-c-common/source/hash_table.c":357:21))
  %v267 = sea.ptr.dereferenceable %v265, %v266 : !sea.ptr<64>, i64 loc("_181"("aws-c-common/source/hash_table.c":357:21))
  sea.cond_br %v267, ^bb67, ^bb205
^bb67:
  %v268 = sea.load %v61[%v265] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_183"("aws-c-common/source/hash_table.c":357:21))
  %v269 = sea.const 0 : i64 loc(".not.i.i.i"("aws-c-common/source/hash_table.c":357:14))
  %v270 = sea.icmp eq, %v268, %v269 : i64 loc(".not.i.i.i"("aws-c-common/source/hash_table.c":357:14))
  sea.cond_br %v270, ^bb120, ^bb68 loc("aws-c-common/source/hash_table.c":357:13)
^bb68:
  %v271 = sea.const 8 : i64 loc("_185"("aws-c-common/source/hash_table.c":362:20))
  %v272 = sea.ptr.dereferenceable %v265, %v271 : !sea.ptr<64>, i64 loc("_185"("aws-c-common/source/hash_table.c":362:20))
  sea.cond_br %v272, ^bb69, ^bb205
^bb69:
  %v273 = sea.icmp eq, %v268, %v233 : i64 loc("_187"("aws-c-common/source/hash_table.c":362:30))
  sea.cond_br %v273, ^bb70, ^bb75 loc("aws-c-common/source/hash_table.c":362:43)
^bb70:
  %v274 = sea.const 8 : i64 loc("_189"("aws-c-common/source/hash_table.c":362:88))
  %v275 = sea.ptr.dereferenceable %v264, %v274 : !sea.ptr<64>, i64 loc("_189"("aws-c-common/source/hash_table.c":362:88))
  sea.cond_br %v275, ^bb71, ^bb205
^bb71:
  %v276 = sea.load %v86[%v264] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_191"("aws-c-common/source/hash_table.c":362:88))
  %v277 = sea.const 8 : i64 loc("_192"("aws-c-common/source/hash_table.c":76:40))
  %v278 = sea.ptr.dereferenceable %v82, %v277 : !sea.ptr<64>, i64 loc("_192"("aws-c-common/source/hash_table.c":76:40))
  sea.cond_br %v278, ^bb72, ^bb205
^bb72:
  %v279 = sea.ptr.cmp eq, %v161, %v276 : !sea.ptr<64> loc("_193"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:9))
  sea.cond_br %v279, ^bb119(%v264 : !sea.ptr<64>), ^bb73 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:7)
^bb73:
  %v280 = sea.ptr.null : !sea.ptr<64> loc("_195")
  %v281 = sea.ptr.cmp eq, %v276, %v280 : !sea.ptr<64> loc("_195")
  %v282 = sea.or %v228, %v281 : i1 loc("or.cond.i57.i"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17))
  sea.cond_br %v282, ^bb75, ^bb74 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17)
^bb74:
  %v283 = sea.nondet "nd_bool" [20] : i1 loc("_196"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":20:10))
  sea.cond_br %v283, ^bb119(%v264 : !sea.ptr<64>), ^bb75 loc("aws-c-common/source/hash_table.c":362:13)
^bb75:
  %v284 = sea.const 8 : i64 loc("_197"("aws-c-common/source/hash_table.c":371:48))
  %v285 = sea.ptr.dereferenceable %v265, %v284 : !sea.ptr<64>, i64 loc("_197"("aws-c-common/source/hash_table.c":371:48))
  sea.cond_br %v285, ^bb76, ^bb205
^bb76:
  %v286 = sea.const 8 : i64 loc("_199"("aws-c-common/source/hash_table.c":371:68))
  %v287 = sea.ptr.dereferenceable %v62, %v286 : !sea.ptr<64>, i64 loc("_199"("aws-c-common/source/hash_table.c":371:68))
  sea.cond_br %v287, ^bb77, ^bb205
^bb77:
  %v288 = sea.sub %v263, %v268 : i64 loc("_201"("aws-c-common/source/hash_table.c":371:39))
  %v289 = sea.and %v288, %v262 : i64 loc("_202"("aws-c-common/source/hash_table.c":371:59))
  %v290 = sea.const 0 : i64 loc(".not"("aws-c-common/source/hash_table.c":376:25))
  %v291 = sea.icmp eq, %v289, %v290 : i64 loc(".not"("aws-c-common/source/hash_table.c":376:25))
  sea.cond_br %v291, ^bb118, ^bb78
^bb78:
  %v292 = sea.const 8 : i64 loc("_203"("aws-c-common/source/hash_table.c":352:59))
  %v293 = sea.ptr.dereferenceable %v62, %v292 : !sea.ptr<64>, i64 loc("_203"("aws-c-common/source/hash_table.c":352:59))
  sea.cond_br %v293, ^bb79, ^bb205
^bb79:
  %v294 = sea.const 2 : i64 loc("_205"("aws-c-common/source/hash_table.c":352:37))
  %v295 = sea.add %v233, %v294 : i64 loc("_205"("aws-c-common/source/hash_table.c":352:37))
  %v296 = sea.and %v262, %v295 : i64 loc("_206"("aws-c-common/source/hash_table.c":352:50))
  %v297 = sea.ptr.index %v57 [%v296] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_207"("aws-c-common/source/hash_table.c":356:18))
  %v298 = sea.ptr.index %v57 [%v296] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_208"("aws-c-common/source/hash_table.c":357:21))
  %v299 = sea.const 8 : i64 loc("_209"("aws-c-common/source/hash_table.c":357:21))
  %v300 = sea.ptr.dereferenceable %v298, %v299 : !sea.ptr<64>, i64 loc("_209"("aws-c-common/source/hash_table.c":357:21))
  sea.cond_br %v300, ^bb80, ^bb205
^bb80:
  %v301 = sea.load %v61[%v298] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_211"("aws-c-common/source/hash_table.c":357:21))
  %v302 = sea.const 0 : i64 loc(".not.i.i.i.1"("aws-c-common/source/hash_table.c":357:14))
  %v303 = sea.icmp eq, %v301, %v302 : i64 loc(".not.i.i.i.1"("aws-c-common/source/hash_table.c":357:14))
  sea.cond_br %v303, ^bb120, ^bb81 loc("aws-c-common/source/hash_table.c":357:13)
^bb81:
  %v304 = sea.const 8 : i64 loc("_213"("aws-c-common/source/hash_table.c":362:20))
  %v305 = sea.ptr.dereferenceable %v298, %v304 : !sea.ptr<64>, i64 loc("_213"("aws-c-common/source/hash_table.c":362:20))
  sea.cond_br %v305, ^bb82, ^bb205
^bb82:
  %v306 = sea.icmp eq, %v301, %v233 : i64 loc("_215"("aws-c-common/source/hash_table.c":362:30))
  sea.cond_br %v306, ^bb83, ^bb88 loc("aws-c-common/source/hash_table.c":362:43)
^bb83:
  %v307 = sea.const 8 : i64 loc("_217"("aws-c-common/source/hash_table.c":362:88))
  %v308 = sea.ptr.dereferenceable %v297, %v307 : !sea.ptr<64>, i64 loc("_217"("aws-c-common/source/hash_table.c":362:88))
  sea.cond_br %v308, ^bb84, ^bb205
^bb84:
  %v309 = sea.load %v86[%v297] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_219"("aws-c-common/source/hash_table.c":362:88))
  %v310 = sea.const 8 : i64 loc("_220"("aws-c-common/source/hash_table.c":76:40))
  %v311 = sea.ptr.dereferenceable %v82, %v310 : !sea.ptr<64>, i64 loc("_220"("aws-c-common/source/hash_table.c":76:40))
  sea.cond_br %v311, ^bb85, ^bb205
^bb85:
  %v312 = sea.ptr.cmp eq, %v161, %v309 : !sea.ptr<64> loc("_221"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:9))
  sea.cond_br %v312, ^bb119(%v297 : !sea.ptr<64>), ^bb86 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:7)
^bb86:
  %v313 = sea.ptr.null : !sea.ptr<64> loc("_223")
  %v314 = sea.ptr.cmp eq, %v309, %v313 : !sea.ptr<64> loc("_223")
  %v315 = sea.or %v228, %v314 : i1 loc("or.cond.i57.i.1"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17))
  sea.cond_br %v315, ^bb88, ^bb87 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17)
^bb87:
  %v316 = sea.nondet "nd_bool" [21] : i1 loc("_224"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":20:10))
  sea.cond_br %v316, ^bb119(%v297 : !sea.ptr<64>), ^bb88 loc("aws-c-common/source/hash_table.c":362:13)
^bb88:
  %v317 = sea.const 8 : i64 loc("_225"("aws-c-common/source/hash_table.c":371:48))
  %v318 = sea.ptr.dereferenceable %v298, %v317 : !sea.ptr<64>, i64 loc("_225"("aws-c-common/source/hash_table.c":371:48))
  sea.cond_br %v318, ^bb89, ^bb205
^bb89:
  %v319 = sea.const 8 : i64 loc("_227"("aws-c-common/source/hash_table.c":371:68))
  %v320 = sea.ptr.dereferenceable %v62, %v319 : !sea.ptr<64>, i64 loc("_227"("aws-c-common/source/hash_table.c":371:68))
  sea.cond_br %v320, ^bb90, ^bb205
^bb90:
  %v321 = sea.sub %v296, %v301 : i64 loc("_229"("aws-c-common/source/hash_table.c":371:39))
  %v322 = sea.and %v321, %v262 : i64 loc("_230"("aws-c-common/source/hash_table.c":371:59))
  %v323 = sea.const 1 : i64 loc("_231"("aws-c-common/source/hash_table.c":376:25))
  %v324 = sea.icmp ugt, %v322, %v323 : i64 loc("_231"("aws-c-common/source/hash_table.c":376:25))
  sea.cond_br %v324, ^bb91, ^bb118
^bb91:
  %v325 = sea.const 8 : i64 loc("_232"("aws-c-common/source/hash_table.c":352:59))
  %v326 = sea.ptr.dereferenceable %v62, %v325 : !sea.ptr<64>, i64 loc("_232"("aws-c-common/source/hash_table.c":352:59))
  sea.cond_br %v326, ^bb92, ^bb205
^bb92:
  %v327 = sea.const 3 : i64 loc("_234"("aws-c-common/source/hash_table.c":352:37))
  %v328 = sea.add %v233, %v327 : i64 loc("_234"("aws-c-common/source/hash_table.c":352:37))
  %v329 = sea.and %v328, %v262 : i64 loc("_235"("aws-c-common/source/hash_table.c":352:50))
  %v330 = sea.ptr.index %v57 [%v329] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_236"("aws-c-common/source/hash_table.c":356:18))
  %v331 = sea.ptr.index %v57 [%v329] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_237"("aws-c-common/source/hash_table.c":357:21))
  %v332 = sea.const 8 : i64 loc("_238"("aws-c-common/source/hash_table.c":357:21))
  %v333 = sea.ptr.dereferenceable %v331, %v332 : !sea.ptr<64>, i64 loc("_238"("aws-c-common/source/hash_table.c":357:21))
  sea.cond_br %v333, ^bb93, ^bb205
^bb93:
  %v334 = sea.load %v61[%v331] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_240"("aws-c-common/source/hash_table.c":357:21))
  %v335 = sea.const 0 : i64 loc(".not.i.i.i.2"("aws-c-common/source/hash_table.c":357:14))
  %v336 = sea.icmp eq, %v334, %v335 : i64 loc(".not.i.i.i.2"("aws-c-common/source/hash_table.c":357:14))
  sea.cond_br %v336, ^bb120, ^bb94 loc("aws-c-common/source/hash_table.c":357:13)
^bb94:
  %v337 = sea.const 8 : i64 loc("_242"("aws-c-common/source/hash_table.c":362:20))
  %v338 = sea.ptr.dereferenceable %v331, %v337 : !sea.ptr<64>, i64 loc("_242"("aws-c-common/source/hash_table.c":362:20))
  sea.cond_br %v338, ^bb95, ^bb205
^bb95:
  %v339 = sea.icmp eq, %v334, %v233 : i64 loc("_244"("aws-c-common/source/hash_table.c":362:30))
  sea.cond_br %v339, ^bb96, ^bb101 loc("aws-c-common/source/hash_table.c":362:43)
^bb96:
  %v340 = sea.const 8 : i64 loc("_246"("aws-c-common/source/hash_table.c":362:88))
  %v341 = sea.ptr.dereferenceable %v330, %v340 : !sea.ptr<64>, i64 loc("_246"("aws-c-common/source/hash_table.c":362:88))
  sea.cond_br %v341, ^bb97, ^bb205
^bb97:
  %v342 = sea.load %v86[%v330] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_248"("aws-c-common/source/hash_table.c":362:88))
  %v343 = sea.const 8 : i64 loc("_249"("aws-c-common/source/hash_table.c":76:40))
  %v344 = sea.ptr.dereferenceable %v82, %v343 : !sea.ptr<64>, i64 loc("_249"("aws-c-common/source/hash_table.c":76:40))
  sea.cond_br %v344, ^bb98, ^bb205
^bb98:
  %v345 = sea.ptr.cmp eq, %v161, %v342 : !sea.ptr<64> loc("_250"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:9))
  sea.cond_br %v345, ^bb119(%v330 : !sea.ptr<64>), ^bb99 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:7)
^bb99:
  %v346 = sea.ptr.null : !sea.ptr<64> loc("_252")
  %v347 = sea.ptr.cmp eq, %v342, %v346 : !sea.ptr<64> loc("_252")
  %v348 = sea.or %v228, %v347 : i1 loc("or.cond.i57.i.2"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17))
  sea.cond_br %v348, ^bb101, ^bb100 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17)
^bb100:
  %v349 = sea.nondet "nd_bool" [22] : i1 loc("_253"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":20:10))
  sea.cond_br %v349, ^bb119(%v330 : !sea.ptr<64>), ^bb101 loc("aws-c-common/source/hash_table.c":362:13)
^bb101:
  %v350 = sea.const 8 : i64 loc("_254"("aws-c-common/source/hash_table.c":371:48))
  %v351 = sea.ptr.dereferenceable %v331, %v350 : !sea.ptr<64>, i64 loc("_254"("aws-c-common/source/hash_table.c":371:48))
  sea.cond_br %v351, ^bb102, ^bb205
^bb102:
  %v352 = sea.const 8 : i64 loc("_256"("aws-c-common/source/hash_table.c":371:68))
  %v353 = sea.ptr.dereferenceable %v62, %v352 : !sea.ptr<64>, i64 loc("_256"("aws-c-common/source/hash_table.c":371:68))
  sea.cond_br %v353, ^bb103, ^bb205
^bb103:
  %v354 = sea.sub %v329, %v334 : i64 loc("_258"("aws-c-common/source/hash_table.c":371:39))
  %v355 = sea.and %v354, %v262 : i64 loc("_259"("aws-c-common/source/hash_table.c":371:59))
  %v356 = sea.const 2 : i64 loc("_260"("aws-c-common/source/hash_table.c":376:25))
  %v357 = sea.icmp ugt, %v355, %v356 : i64 loc("_260"("aws-c-common/source/hash_table.c":376:25))
  %v358 = sea.const 4 : i64 loc(".14.i.i.i.2"("aws-c-common/source/hash_table.c":376:13))
  %v359 = sea.const 3 : i64 loc(".14.i.i.i.2"("aws-c-common/source/hash_table.c":376:13))
  %v360 = sea.select %v357, %v358, %v359 : i64 loc(".14.i.i.i.2"("aws-c-common/source/hash_table.c":376:13))
  sea.cond_br %v357, ^bb104, ^bb118
^bb104:
  %v361 = sea.const 8 : i64 loc("_261"("aws-c-common/source/hash_table.c":352:59))
  %v362 = sea.ptr.dereferenceable %v62, %v361 : !sea.ptr<64>, i64 loc("_261"("aws-c-common/source/hash_table.c":352:59))
  sea.cond_br %v362, ^bb105, ^bb205
^bb105:
  %v363 = sea.add %v360, %v233 : i64 loc("_263"("aws-c-common/source/hash_table.c":352:37))
  %v364 = sea.and %v363, %v262 : i64 loc("_264"("aws-c-common/source/hash_table.c":352:50))
  %v365 = sea.ptr.index %v57 [%v364] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_265"("aws-c-common/source/hash_table.c":356:18))
  %v366 = sea.ptr.index %v57 [%v364] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_266"("aws-c-common/source/hash_table.c":357:21))
  %v367 = sea.const 8 : i64 loc("_267"("aws-c-common/source/hash_table.c":357:21))
  %v368 = sea.ptr.dereferenceable %v366, %v367 : !sea.ptr<64>, i64 loc("_267"("aws-c-common/source/hash_table.c":357:21))
  sea.cond_br %v368, ^bb106, ^bb205
^bb106:
  %v369 = sea.load %v61[%v366] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_269"("aws-c-common/source/hash_table.c":357:21))
  %v370 = sea.const 0 : i64 loc(".not.i.i.i.3"("aws-c-common/source/hash_table.c":357:14))
  %v371 = sea.icmp eq, %v369, %v370 : i64 loc(".not.i.i.i.3"("aws-c-common/source/hash_table.c":357:14))
  sea.cond_br %v371, ^bb120, ^bb107 loc("aws-c-common/source/hash_table.c":357:13)
^bb107:
  %v372 = sea.const 8 : i64 loc("_271"("aws-c-common/source/hash_table.c":362:20))
  %v373 = sea.ptr.dereferenceable %v366, %v372 : !sea.ptr<64>, i64 loc("_271"("aws-c-common/source/hash_table.c":362:20))
  sea.cond_br %v373, ^bb108, ^bb205
^bb108:
  %v374 = sea.icmp eq, %v369, %v233 : i64 loc("_273"("aws-c-common/source/hash_table.c":362:30))
  sea.cond_br %v374, ^bb109, ^bb114 loc("aws-c-common/source/hash_table.c":362:43)
^bb109:
  %v375 = sea.const 8 : i64 loc("_275"("aws-c-common/source/hash_table.c":362:88))
  %v376 = sea.ptr.dereferenceable %v365, %v375 : !sea.ptr<64>, i64 loc("_275"("aws-c-common/source/hash_table.c":362:88))
  sea.cond_br %v376, ^bb110, ^bb205
^bb110:
  %v377 = sea.load %v86[%v365] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_277"("aws-c-common/source/hash_table.c":362:88))
  %v378 = sea.const 8 : i64 loc("_278"("aws-c-common/source/hash_table.c":76:40))
  %v379 = sea.ptr.dereferenceable %v82, %v378 : !sea.ptr<64>, i64 loc("_278"("aws-c-common/source/hash_table.c":76:40))
  sea.cond_br %v379, ^bb111, ^bb205
^bb111:
  %v380 = sea.ptr.cmp eq, %v161, %v377 : !sea.ptr<64> loc("_279"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:9))
  sea.cond_br %v380, ^bb119(%v365 : !sea.ptr<64>), ^bb112 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:7)
^bb112:
  %v381 = sea.ptr.null : !sea.ptr<64> loc("_281")
  %v382 = sea.ptr.cmp eq, %v377, %v381 : !sea.ptr<64> loc("_281")
  %v383 = sea.or %v228, %v382 : i1 loc("or.cond.i57.i.3"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17))
  sea.cond_br %v383, ^bb114, ^bb113 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17)
^bb113:
  %v384 = sea.nondet "nd_bool" [23] : i1 loc("_282"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":20:10))
  sea.cond_br %v384, ^bb119(%v365 : !sea.ptr<64>), ^bb114 loc("aws-c-common/source/hash_table.c":362:13)
^bb114:
  %v385 = sea.const 8 : i64 loc("_283"("aws-c-common/source/hash_table.c":371:48))
  %v386 = sea.ptr.dereferenceable %v366, %v385 : !sea.ptr<64>, i64 loc("_283"("aws-c-common/source/hash_table.c":371:48))
  sea.cond_br %v386, ^bb115, ^bb205
^bb115:
  %v387 = sea.const 8 : i64 loc("_285"("aws-c-common/source/hash_table.c":371:68))
  %v388 = sea.ptr.dereferenceable %v62, %v387 : !sea.ptr<64>, i64 loc("_285"("aws-c-common/source/hash_table.c":371:68))
  sea.cond_br %v388, ^bb116, ^bb205
^bb116:
  %v389 = sea.sub %v364, %v369 : i64 loc("_287"("aws-c-common/source/hash_table.c":371:39))
  %v390 = sea.and %v389, %v262 : i64 loc("_288"("aws-c-common/source/hash_table.c":371:59))
  %v391 = sea.icmp ult, %v390, %v360 : i64 loc(".not20"("aws-c-common/source/hash_table.c":376:25))
  sea.cond_br %v391, ^bb118, ^bb117
^bb117:
  %v392 = sea.const 8 : i64 loc("_175"("aws-c-common/source/hash_table.c":352:59))
  %v393 = sea.ptr.dereferenceable %v62, %v392 : !sea.ptr<64>, i64 loc("_175"("aws-c-common/source/hash_table.c":352:59))
  %v394 = sea.const 1 : i1
  %v395 = sea.xor %v393, %v394 : i1
  sea.assume %v395
  sea.br ^bb205
^bb118:
  sea.br ^bb164
^bb119(%v396 : !sea.ptr<64>):
  sea.br ^bb122(%v262, %v396 : i64, !sea.ptr<64>)
^bb120:
  sea.br ^bb164
^bb121:
  sea.br ^bb122(%v203, %v238 : i64, !sea.ptr<64>)
^bb122(%v397 : i64, %v398 : !sea.ptr<64>):
  sea.br ^bb123
^bb123:
  %v399 = sea.const 1 : i32 loc("aws-c-common/source/hash_table.c":681:18)
  %v400 = sea.store %v1[%v234], %v399 inplace align 4 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("aws-c-common/source/hash_table.c":681:18)
  sea.cond_br %v162, ^bb134, ^bb124 loc("aws-c-common/source/hash_table.c":683:9)
^bb124:
  %v401 = sea.const 8 : i64 loc("_294"("aws-c-common/source/hash_table.c":686:20))
  %v402 = sea.ptr.dereferenceable %v132, %v401 : !sea.ptr<64>, i64 loc("_294"("aws-c-common/source/hash_table.c":686:20))
  sea.cond_br %v402, ^bb125, ^bb205
^bb125:
  %v403 = sea.load %v138[%v132] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_296"("aws-c-common/source/hash_table.c":686:20))
  %v404 = sea.ptr.null : !sea.ptr<64> loc(".not3.i.i"("aws-c-common/source/hash_table.c":686:13))
  %v405 = sea.ptr.cmp eq, %v403, %v404 : !sea.ptr<64> loc(".not3.i.i"("aws-c-common/source/hash_table.c":686:13))
  sea.cond_br %v405, ^bb129, ^bb126 loc("aws-c-common/source/hash_table.c":686:13)
^bb126:
  %v406 = sea.const 8 : i64 loc("_298"("aws-c-common/source/hash_table.c":687:20))
  %v407 = sea.ptr.dereferenceable %v132, %v406 : !sea.ptr<64>, i64 loc("_298"("aws-c-common/source/hash_table.c":687:20))
  sea.cond_br %v407, ^bb127, ^bb205
^bb127:
  %v408 = sea.const 8 : i64 loc("_300"("aws-c-common/source/hash_table.c":687:58))
  %v409 = sea.ptr.dereferenceable %v398, %v408 : !sea.ptr<64>, i64 loc("_300"("aws-c-common/source/hash_table.c":687:58))
  sea.cond_br %v409, ^bb128, ^bb205
^bb128:
  sea.br ^bb129 loc("aws-c-common/source/hash_table.c":688:9)
^bb129:
  %v410 = sea.const 8 : i64 loc("_303"("aws-c-common/source/hash_table.c":689:20))
  %v411 = sea.ptr.dereferenceable %v140, %v410 : !sea.ptr<64>, i64 loc("_303"("aws-c-common/source/hash_table.c":689:20))
  sea.cond_br %v411, ^bb130, ^bb205
^bb130:
  %v412 = sea.load %v146[%v140] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_305"("aws-c-common/source/hash_table.c":689:20))
  %v413 = sea.ptr.null : !sea.ptr<64> loc(".not4.i.i"("aws-c-common/source/hash_table.c":689:13))
  %v414 = sea.ptr.cmp eq, %v412, %v413 : !sea.ptr<64> loc(".not4.i.i"("aws-c-common/source/hash_table.c":689:13))
  sea.cond_br %v414, ^bb134, ^bb131 loc("aws-c-common/source/hash_table.c":689:13)
^bb131:
  %v415 = sea.const 8 : i64 loc("_307"("aws-c-common/source/hash_table.c":690:20))
  %v416 = sea.ptr.dereferenceable %v140, %v415 : !sea.ptr<64>, i64 loc("_307"("aws-c-common/source/hash_table.c":690:20))
  sea.cond_br %v416, ^bb132, ^bb205
^bb132:
  %v417 = sea.ptr.index %v398 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_309"("aws-c-common/source/hash_table.c":690:52))
  %v418 = sea.const 8 : i64 loc("_310"("aws-c-common/source/hash_table.c":690:52))
  %v419 = sea.ptr.dereferenceable %v417, %v418 : !sea.ptr<64>, i64 loc("_310"("aws-c-common/source/hash_table.c":690:52))
  sea.cond_br %v419, ^bb133, ^bb205
^bb133:
  sea.br ^bb134 loc("aws-c-common/source/hash_table.c":691:9)
^bb134:
  %v420 = sea.const 8 : i64 loc("_313"("aws-c-common/source/hash_table.c":619:23))
  %v421 = sea.ptr.dereferenceable %v103, %v420 : !sea.ptr<64>, i64 loc("_313"("aws-c-common/source/hash_table.c":619:23))
  sea.cond_br %v421, ^bb135, ^bb205
^bb135:
  %v422 = sea.load %v61[%v103] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_315"("aws-c-common/source/hash_table.c":619:23))
  %v423 = sea.const 8 : i64 loc("_316"("aws-c-common/source/hash_table.c":619:23))
  %v424 = sea.ptr.dereferenceable %v103, %v423 : !sea.ptr<64>, i64 loc("_316"("aws-c-common/source/hash_table.c":619:23))
  sea.cond_br %v424, ^bb136, ^bb205
^bb136:
  %v425 = sea.const 18446744073709551615 : i64 loc("_318"("aws-c-common/source/hash_table.c":619:23))
  %v426 = sea.add %v422, %v425 : i64 loc("_318"("aws-c-common/source/hash_table.c":619:23))
  %v427 = sea.store %v146[%v103], %v426 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/hash_table.c":619:23)
  %v428 = sea.const 8 : i64 loc("_319"("aws-c-common/source/hash_table.c":628:50))
  %v429 = sea.ptr.dereferenceable %v62, %v428 : !sea.ptr<64>, i64 loc("_319"("aws-c-common/source/hash_table.c":628:50))
  sea.cond_br %v429, ^bb137, ^bb205
^bb137:
  %v430 = sea.ptr.to_int %v398 : !sea.ptr<64> to i64 loc("_320"("aws-c-common/source/hash_table.c":82:26))
  %v431 = sea.ptr.index %v57 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_321"("aws-c-common/source/hash_table.c":82:33))
  %v432 = sea.ptr.to_int %v431 : !sea.ptr<64> to i64 loc("_322"("aws-c-common/source/hash_table.c":82:26))
  %v433 = sea.sub %v430, %v432 : i64 loc("_323"("aws-c-common/source/hash_table.c":82:26))
  %v434 = sea.const 24 : i64 loc("_324"("aws-c-common/source/hash_table.c":82:26))
  %v435 = sea.sdiv %v433, %v434 : i64 loc("_324"("aws-c-common/source/hash_table.c":82:26))
  %v436 = sea.const 1 : i64 loc("_325"("aws-c-common/source/hash_table.c":628:36))
  %v437 = sea.add %v435, %v436 nsw : i64 loc("_325"("aws-c-common/source/hash_table.c":628:36))
  %v438 = sea.and %v397, %v437 : i64 loc("_326"("aws-c-common/source/hash_table.c":628:41))
  %v439 = sea.ptr.index %v57 [%v438] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_327"("aws-c-common/source/hash_table.c":631:39))
  %v440 = sea.const 8 : i64 loc("_328"("aws-c-common/source/hash_table.c":631:39))
  %v441 = sea.ptr.dereferenceable %v439, %v440 : !sea.ptr<64>, i64 loc("_328"("aws-c-common/source/hash_table.c":631:39))
  sea.cond_br %v441, ^bb138, ^bb205
^bb138:
  %v442 = sea.load %v427[%v439] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_334"("aws-c-common/source/hash_table.c":631:39))
  %v443 = sea.const 0 : i64 loc(".not.i39.i"("aws-c-common/source/hash_table.c":631:14))
  %v444 = sea.icmp eq, %v442, %v443 : i64 loc(".not.i39.i"("aws-c-common/source/hash_table.c":631:14))
  sea.cond_br %v444, ^bb162(%v427, %v435 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb139 loc("aws-c-common/source/hash_table.c":631:13)
^bb139:
  %v445 = sea.const 8 : i64 loc("_336"("aws-c-common/source/hash_table.c":639:39))
  %v446 = sea.ptr.dereferenceable %v439, %v445 : !sea.ptr<64>, i64 loc("_336"("aws-c-common/source/hash_table.c":639:39))
  sea.cond_br %v446, ^bb140, ^bb205
^bb140:
  %v447 = sea.const 8 : i64 loc("_338"("aws-c-common/source/hash_table.c":639:58))
  %v448 = sea.ptr.dereferenceable %v62, %v447 : !sea.ptr<64>, i64 loc("_338"("aws-c-common/source/hash_table.c":639:58))
  sea.cond_br %v448, ^bb141, ^bb205
^bb141:
  %v449 = sea.and %v442, %v397 : i64 loc("_340"("aws-c-common/source/hash_table.c":639:49))
  %v450 = sea.icmp eq, %v449, %v438 : i64 loc("_341"("aws-c-common/source/hash_table.c":639:64))
  sea.cond_br %v450, ^bb162(%v427, %v435 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb142 loc("aws-c-common/source/hash_table.c":639:13)
^bb142:
  %v451 = sea.ptr.index %v57 [%v435] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_342"("aws-c-common/source/hash_table.c":644:9))
  %v452 = sea.ptr.index %v57 [%v438] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_343"("aws-c-common/source/hash_table.c":644:31))
  %v453 = sea.const 24 : i64 loc("aws-c-common/source/hash_table.c":644:31)
  %v454 = sea.memmove %v427[%v451], %v138[%v452], %v453 inplace align 8 src_align 8 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/source/hash_table.c":644:31)
  %v455 = sea.const 8 : i64 loc("_344"("aws-c-common/source/hash_table.c":628:50))
  %v456 = sea.ptr.dereferenceable %v62, %v455 : !sea.ptr<64>, i64 loc("_344"("aws-c-common/source/hash_table.c":628:50))
  sea.cond_br %v456, ^bb143, ^bb205
^bb143:
  %v457 = sea.const 1 : i64 loc("_345"("aws-c-common/source/hash_table.c":628:36))
  %v458 = sea.add %v438, %v457 : i64 loc("_345"("aws-c-common/source/hash_table.c":628:36))
  %v459 = sea.load %v454[%v62] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_346"("aws-c-common/source/hash_table.c":628:50))
  %v460 = sea.and %v459, %v458 : i64 loc("_347"("aws-c-common/source/hash_table.c":628:41))
  %v461 = sea.ptr.index %v57 [%v460] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_348"("aws-c-common/source/hash_table.c":631:39))
  %v462 = sea.const 8 : i64 loc("_349"("aws-c-common/source/hash_table.c":631:39))
  %v463 = sea.ptr.dereferenceable %v461, %v462 : !sea.ptr<64>, i64 loc("_349"("aws-c-common/source/hash_table.c":631:39))
  sea.cond_br %v463, ^bb144, ^bb205
^bb144:
  %v464 = sea.load %v427[%v461] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_351"("aws-c-common/source/hash_table.c":631:39))
  %v465 = sea.const 0 : i64 loc(".not.i39.i.1"("aws-c-common/source/hash_table.c":631:14))
  %v466 = sea.icmp eq, %v464, %v465 : i64 loc(".not.i39.i.1"("aws-c-common/source/hash_table.c":631:14))
  sea.cond_br %v466, ^bb162(%v454, %v438 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb145 loc("aws-c-common/source/hash_table.c":631:13)
^bb145:
  %v467 = sea.const 8 : i64 loc("_353"("aws-c-common/source/hash_table.c":639:39))
  %v468 = sea.ptr.dereferenceable %v461, %v467 : !sea.ptr<64>, i64 loc("_353"("aws-c-common/source/hash_table.c":639:39))
  sea.cond_br %v468, ^bb146, ^bb205
^bb146:
  %v469 = sea.const 8 : i64 loc("_355"("aws-c-common/source/hash_table.c":639:58))
  %v470 = sea.ptr.dereferenceable %v62, %v469 : !sea.ptr<64>, i64 loc("_355"("aws-c-common/source/hash_table.c":639:58))
  sea.cond_br %v470, ^bb147, ^bb205
^bb147:
  %v471 = sea.and %v464, %v459 : i64 loc("_357"("aws-c-common/source/hash_table.c":639:49))
  %v472 = sea.icmp eq, %v471, %v460 : i64 loc("_358"("aws-c-common/source/hash_table.c":639:64))
  sea.cond_br %v472, ^bb162(%v454, %v438 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb148 loc("aws-c-common/source/hash_table.c":639:13)
^bb148:
  %v473 = sea.ptr.index %v57 [%v460] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_359"("aws-c-common/source/hash_table.c":644:31))
  %v474 = sea.const 24 : i64 loc("aws-c-common/source/hash_table.c":644:31)
  %v475 = sea.memmove %v454[%v452], %v454[%v473], %v474 inplace align 8 src_align 8 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/source/hash_table.c":644:31)
  %v476 = sea.const 8 : i64 loc("_360"("aws-c-common/source/hash_table.c":628:50))
  %v477 = sea.ptr.dereferenceable %v62, %v476 : !sea.ptr<64>, i64 loc("_360"("aws-c-common/source/hash_table.c":628:50))
  sea.cond_br %v477, ^bb149, ^bb205
^bb149:
  %v478 = sea.const 1 : i64 loc("_361"("aws-c-common/source/hash_table.c":628:36))
  %v479 = sea.add %v460, %v478 : i64 loc("_361"("aws-c-common/source/hash_table.c":628:36))
  %v480 = sea.load %v475[%v62] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_362"("aws-c-common/source/hash_table.c":628:50))
  %v481 = sea.and %v480, %v479 : i64 loc("_363"("aws-c-common/source/hash_table.c":628:41))
  %v482 = sea.ptr.index %v57 [%v481] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_364"("aws-c-common/source/hash_table.c":631:39))
  %v483 = sea.const 8 : i64 loc("_365"("aws-c-common/source/hash_table.c":631:39))
  %v484 = sea.ptr.dereferenceable %v482, %v483 : !sea.ptr<64>, i64 loc("_365"("aws-c-common/source/hash_table.c":631:39))
  sea.cond_br %v484, ^bb150, ^bb205
^bb150:
  %v485 = sea.load %v427[%v482] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_367"("aws-c-common/source/hash_table.c":631:39))
  %v486 = sea.const 0 : i64 loc(".not.i39.i.2"("aws-c-common/source/hash_table.c":631:14))
  %v487 = sea.icmp eq, %v485, %v486 : i64 loc(".not.i39.i.2"("aws-c-common/source/hash_table.c":631:14))
  sea.cond_br %v487, ^bb162(%v475, %v460 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb151 loc("aws-c-common/source/hash_table.c":631:13)
^bb151:
  %v488 = sea.const 8 : i64 loc("_369"("aws-c-common/source/hash_table.c":639:39))
  %v489 = sea.ptr.dereferenceable %v482, %v488 : !sea.ptr<64>, i64 loc("_369"("aws-c-common/source/hash_table.c":639:39))
  sea.cond_br %v489, ^bb152, ^bb205
^bb152:
  %v490 = sea.const 8 : i64 loc("_371"("aws-c-common/source/hash_table.c":639:58))
  %v491 = sea.ptr.dereferenceable %v62, %v490 : !sea.ptr<64>, i64 loc("_371"("aws-c-common/source/hash_table.c":639:58))
  sea.cond_br %v491, ^bb153, ^bb205
^bb153:
  %v492 = sea.and %v485, %v480 : i64 loc("_373"("aws-c-common/source/hash_table.c":639:49))
  %v493 = sea.icmp eq, %v492, %v481 : i64 loc("_374"("aws-c-common/source/hash_table.c":639:64))
  sea.cond_br %v493, ^bb162(%v475, %v460 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb154 loc("aws-c-common/source/hash_table.c":639:13)
^bb154:
  %v494 = sea.ptr.index %v57 [%v481] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_375"("aws-c-common/source/hash_table.c":644:31))
  %v495 = sea.const 24 : i64 loc("aws-c-common/source/hash_table.c":644:31)
  %v496 = sea.memmove %v475[%v473], %v475[%v494], %v495 inplace align 8 src_align 8 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/source/hash_table.c":644:31)
  %v497 = sea.const 8 : i64 loc("_376"("aws-c-common/source/hash_table.c":628:50))
  %v498 = sea.ptr.dereferenceable %v62, %v497 : !sea.ptr<64>, i64 loc("_376"("aws-c-common/source/hash_table.c":628:50))
  sea.cond_br %v498, ^bb155, ^bb205
^bb155:
  %v499 = sea.const 1 : i64 loc("_377"("aws-c-common/source/hash_table.c":628:36))
  %v500 = sea.add %v481, %v499 : i64 loc("_377"("aws-c-common/source/hash_table.c":628:36))
  %v501 = sea.load %v496[%v62] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_378"("aws-c-common/source/hash_table.c":628:50))
  %v502 = sea.and %v501, %v500 : i64 loc("_379"("aws-c-common/source/hash_table.c":628:41))
  %v503 = sea.ptr.index %v57 [%v502] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_380"("aws-c-common/source/hash_table.c":631:39))
  %v504 = sea.const 8 : i64 loc("_381"("aws-c-common/source/hash_table.c":631:39))
  %v505 = sea.ptr.dereferenceable %v503, %v504 : !sea.ptr<64>, i64 loc("_381"("aws-c-common/source/hash_table.c":631:39))
  sea.cond_br %v505, ^bb156, ^bb205
^bb156:
  %v506 = sea.load %v427[%v503] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_383"("aws-c-common/source/hash_table.c":631:39))
  %v507 = sea.const 0 : i64 loc(".not.i39.i.3"("aws-c-common/source/hash_table.c":631:14))
  %v508 = sea.icmp eq, %v506, %v507 : i64 loc(".not.i39.i.3"("aws-c-common/source/hash_table.c":631:14))
  sea.cond_br %v508, ^bb162(%v496, %v481 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb157 loc("aws-c-common/source/hash_table.c":631:13)
^bb157:
  %v509 = sea.const 8 : i64 loc("_385"("aws-c-common/source/hash_table.c":639:39))
  %v510 = sea.ptr.dereferenceable %v503, %v509 : !sea.ptr<64>, i64 loc("_385"("aws-c-common/source/hash_table.c":639:39))
  sea.cond_br %v510, ^bb158, ^bb205
^bb158:
  %v511 = sea.const 8 : i64 loc("_387"("aws-c-common/source/hash_table.c":639:58))
  %v512 = sea.ptr.dereferenceable %v62, %v511 : !sea.ptr<64>, i64 loc("_387"("aws-c-common/source/hash_table.c":639:58))
  sea.cond_br %v512, ^bb159, ^bb205
^bb159:
  %v513 = sea.and %v506, %v501 : i64 loc("_389"("aws-c-common/source/hash_table.c":639:49))
  %v514 = sea.icmp eq, %v513, %v502 : i64 loc("_390"("aws-c-common/source/hash_table.c":639:64))
  sea.cond_br %v514, ^bb162(%v496, %v481 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb160 loc("aws-c-common/source/hash_table.c":639:13)
^bb160:
  %v515 = sea.ptr.index %v57 [%v502] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_391"("aws-c-common/source/hash_table.c":644:31))
  %v516 = sea.const 24 : i64 loc("aws-c-common/source/hash_table.c":644:31)
  %v517 = sea.memmove %v496[%v494], %v496[%v515], %v516 inplace align 8 src_align 8 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/source/hash_table.c":644:31)
  %v518 = sea.const 8 : i64 loc("_392"("aws-c-common/source/hash_table.c":628:50))
  %v519 = sea.ptr.dereferenceable %v62, %v518 : !sea.ptr<64>, i64 loc("_392"("aws-c-common/source/hash_table.c":628:50))
  sea.cond_br %v519, ^bb161, ^bb205
^bb161:
  %v520 = sea.const 1 : i64 loc("_329"("aws-c-common/source/hash_table.c":628:36))
  %v521 = sea.add %v502, %v520 : i64 loc("_329"("aws-c-common/source/hash_table.c":628:36))
  %v522 = sea.load %v517[%v62] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_330"("aws-c-common/source/hash_table.c":628:50))
  %v523 = sea.and %v522, %v521 : i64 loc("_331"("aws-c-common/source/hash_table.c":628:41))
  %v524 = sea.ptr.index %v57 [%v523] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_332"("aws-c-common/source/hash_table.c":631:39))
  %v525 = sea.const 8 : i64 loc("_333"("aws-c-common/source/hash_table.c":631:39))
  %v526 = sea.ptr.dereferenceable %v524, %v525 : !sea.ptr<64>, i64 loc("_333"("aws-c-common/source/hash_table.c":631:39))
  %v527 = sea.const 1 : i1
  %v528 = sea.xor %v526, %v527 : i1
  sea.assume %v528
  sea.br ^bb205
^bb162(%v529 : !sea.mem<!sea.ptr<64>, i8>, %v530 : i64):
  %v531 = sea.ptr.index %v57 [%v530] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_393"("aws-c-common/source/hash_table.c":649:5))
  %v532 = sea.const 0 : i8 loc("aws-c-common/source/hash_table.c":649:5)
  %v533 = sea.const 24 : i64 loc("aws-c-common/source/hash_table.c":649:5)
  %v534 = sea.memset %v529[%v531], %v532, %v533 inplace align 8 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/source/hash_table.c":649:5)
  sea.br ^bb166(%v534, %v400 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/hash_table.c":695:5)
^bb163:
  sea.br ^bb164
^bb164:
  sea.br ^bb165
^bb165:
  %v535 = sea.const 0 : i32 loc("aws-c-common/source/hash_table.c":677:22)
  %v536 = sea.store %v1[%v234], %v535 inplace align 4 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("aws-c-common/source/hash_table.c":677:22)
  sea.br ^bb166(%v146, %v536 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/hash_table.c":678:9)
^bb166(%v537 : !sea.mem<!sea.ptr<64>, i8>, %v538 : !sea.mem<!sea.ptr<64>, i8>):
  sea.br ^bb167
^bb167:
  sea.br ^bb168
^bb168:
  %v539 = sea.const 8 : i64 loc("_396"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v540 = sea.ptr.dereferenceable %v57, %v539 : !sea.ptr<64>, i64 loc("_396"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v540, ^bb169, ^bb205
^bb169:
  %v541 = sea.load %v537[%v57] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_398"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v542 = sea.ptr.null : !sea.ptr<64> loc("_399"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v543 = sea.ptr.cmp ne, %v541, %v542 : !sea.ptr<64> loc("_399"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v544 = sea.const 8 : i64 loc("_400"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v545 = sea.ptr.dereferenceable %v82, %v544 : !sea.ptr<64>, i64 loc("_400"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v545, ^bb170, ^bb205
^bb170:
  %v546 = sea.load %v537[%v82] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_402"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v547 = sea.ptr.null : !sea.ptr<64> loc("_403"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v548 = sea.ptr.cmp ne, %v546, %v547 : !sea.ptr<64> loc("_403"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v549 = sea.const 8 : i64 loc("_404"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v550 = sea.ptr.dereferenceable %v73, %v549 : !sea.ptr<64>, i64 loc("_404"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v550, ^bb171, ^bb205
^bb171:
  %v551 = sea.load %v537[%v73] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_406"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v552 = sea.ptr.null : !sea.ptr<64> loc("_407"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v553 = sea.ptr.cmp ne, %v551, %v552 : !sea.ptr<64> loc("_407"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v554 = sea.const 8 : i64 loc("_408"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v555 = sea.ptr.dereferenceable %v58, %v554 : !sea.ptr<64>, i64 loc("_408"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v555, ^bb172, ^bb205
^bb172:
  %v556 = sea.load %v537[%v58] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_410"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v557 = sea.const 1 : i64 loc("_411"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v558 = sea.icmp ugt, %v556, %v557 : i64 loc("_411"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v559 = sea.const 8 : i64 loc("_412"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v560 = sea.ptr.dereferenceable %v58, %v559 : !sea.ptr<64>, i64 loc("_412"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v560, ^bb173, ^bb205
^bb173:
  %v561 = sea.ctpop %v556 : i64 loc("_414"("aws-c-common/include/aws/common/math.inl":161:14))
  %v562 = sea.const 1 : i64 loc("_415"("aws-c-common/include/aws/common/math.inl":161:14))
  %v563 = sea.icmp eq, %v561, %v562 : i64 loc("_415"("aws-c-common/include/aws/common/math.inl":161:14))
  %v564 = sea.const 8 : i64 loc("_416"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v565 = sea.ptr.dereferenceable %v103, %v564 : !sea.ptr<64>, i64 loc("_416"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v565, ^bb174, ^bb205
^bb174:
  %v566 = sea.load %v537[%v103] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_418"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v567 = sea.const 8 : i64 loc("_419"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v568 = sea.ptr.dereferenceable %v107, %v567 : !sea.ptr<64>, i64 loc("_419"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v568, ^bb175, ^bb205
^bb175:
  %v569 = sea.load %v537[%v107] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_421"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v570 = sea.icmp ule, %v566, %v569 : i64 loc("_422"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v571 = sea.const 8 : i64 loc("_423"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v572 = sea.ptr.dereferenceable %v107, %v571 : !sea.ptr<64>, i64 loc("_423"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v572, ^bb176, ^bb205
^bb176:
  %v573 = sea.const 8 : i64 loc("_425"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v574 = sea.ptr.dereferenceable %v58, %v573 : !sea.ptr<64>, i64 loc("_425"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v574, ^bb177, ^bb205
^bb177:
  %v575 = sea.icmp ult, %v569, %v556 : i64 loc("_427"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v576 = sea.const 8 : i64 loc("_428"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v577 = sea.ptr.dereferenceable %v62, %v576 : !sea.ptr<64>, i64 loc("_428"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v577, ^bb178, ^bb205
^bb178:
  %v578 = sea.load %v537[%v62] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_430"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v579 = sea.const 8 : i64 loc("_431"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v580 = sea.ptr.dereferenceable %v58, %v579 : !sea.ptr<64>, i64 loc("_431"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v580, ^bb179, ^bb205
^bb179:
  %v581 = sea.const 8 : i64 loc("_433"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v582 = sea.ptr.dereferenceable %v58, %v581 : !sea.ptr<64>, i64 loc("_433"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v582, ^bb180, ^bb205
^bb180:
  %v583 = sea.const 0 : i1 loc("or.cond.i68.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v584 = sea.select %v543, %v548, %v583 : i1 loc("or.cond.i68.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v585 = sea.const 0 : i1 loc("or.cond3.i69.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v586 = sea.select %v584, %v553, %v585 : i1 loc("or.cond3.i69.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v587 = sea.const 0 : i1 loc("or.cond5.i70.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v588 = sea.select %v586, %v558, %v587 : i1 loc("or.cond5.i70.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v589 = sea.const 0 : i1 loc("or.cond7.i71.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v590 = sea.select %v588, %v563, %v589 : i1 loc("or.cond7.i71.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v591 = sea.const 0 : i1 loc("or.cond9.i72.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v592 = sea.select %v590, %v570, %v591 : i1 loc("or.cond9.i72.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v593 = sea.const 0 : i1 loc("or.cond11.i73.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v594 = sea.select %v592, %v575, %v593 : i1 loc("or.cond11.i73.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v595 = sea.const 18446744073709551615 : i64 loc("_434"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v596 = sea.add %v556, %v595 : i64 loc("_434"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v597 = sea.icmp eq, %v578, %v596 : i64 loc("_435"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
  %v598 = sea.const 0 : i1 loc("or.cond13.i74.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v599 = sea.select %v594, %v597, %v598 : i1 loc("or.cond13.i74.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.br ^bb181
^bb181:
  sea.br ^bb182
^bb182:
  %v600 = sea.const 8 : i64 loc("_438"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v601 = sea.ptr.dereferenceable %v57, %v600 : !sea.ptr<64>, i64 loc("_438"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v601, ^bb183, ^bb205
^bb183:
  %v602 = sea.const 8 : i64 loc("_440"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v603 = sea.ptr.dereferenceable %v82, %v602 : !sea.ptr<64>, i64 loc("_440"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v603, ^bb184, ^bb205
^bb184:
  %v604 = sea.const 8 : i64 loc("_442"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v605 = sea.ptr.dereferenceable %v73, %v604 : !sea.ptr<64>, i64 loc("_442"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v605, ^bb185, ^bb205
^bb185:
  %v606 = sea.const 8 : i64 loc("_444"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v607 = sea.ptr.dereferenceable %v58, %v606 : !sea.ptr<64>, i64 loc("_444"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v607, ^bb186, ^bb205
^bb186:
  %v608 = sea.const 8 : i64 loc("_446"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v609 = sea.ptr.dereferenceable %v58, %v608 : !sea.ptr<64>, i64 loc("_446"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v609, ^bb187, ^bb205
^bb187:
  %v610 = sea.const 8 : i64 loc("_448"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v611 = sea.ptr.dereferenceable %v103, %v610 : !sea.ptr<64>, i64 loc("_448"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v611, ^bb188, ^bb205
^bb188:
  %v612 = sea.const 8 : i64 loc("_450"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v613 = sea.ptr.dereferenceable %v107, %v612 : !sea.ptr<64>, i64 loc("_450"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v613, ^bb189, ^bb205
^bb189:
  %v614 = sea.const 8 : i64 loc("_452"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v615 = sea.ptr.dereferenceable %v107, %v614 : !sea.ptr<64>, i64 loc("_452"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v615, ^bb190, ^bb205
^bb190:
  %v616 = sea.const 8 : i64 loc("_454"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v617 = sea.ptr.dereferenceable %v58, %v616 : !sea.ptr<64>, i64 loc("_454"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v617, ^bb191, ^bb205
^bb191:
  %v618 = sea.const 8 : i64 loc("_456"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v619 = sea.ptr.dereferenceable %v62, %v618 : !sea.ptr<64>, i64 loc("_456"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v619, ^bb192, ^bb205
^bb192:
  %v620 = sea.const 8 : i64 loc("_458"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v621 = sea.ptr.dereferenceable %v58, %v620 : !sea.ptr<64>, i64 loc("_458"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v621, ^bb193, ^bb205
^bb193:
  %v622 = sea.const 8 : i64 loc("_460"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v623 = sea.ptr.dereferenceable %v58, %v622 : !sea.ptr<64>, i64 loc("_460"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v624 = sea.const 0 : i1 loc("_461")
  %v625 = sea.select %v623, %v599, %v624 : i1 loc("_461")
  sea.cond_br %v625, ^bb194, ^bb205
^bb194:
  %v626 = sea.const 8 : i64 loc("_463"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":0:0))
  %v627 = sea.ptr.dereferenceable %v103, %v626 : !sea.ptr<64>, i64 loc("_463"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":0:0))
  sea.cond_br %v163, ^bb202, ^bb195 loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":34:9)
^bb195:
  sea.cond_br %v627, ^bb196, ^bb205
^bb196:
  %v628 = sea.icmp eq, %v566, %v164 : i64 loc("_474"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":37:7))
  %v629 = sea.const 1 : i1 loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":37:7)
  sea.cond_br %v628, ^bb199(%v629 : i1), ^bb197 loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":37:7)
^bb197:
  %v630 = sea.const 8 : i64 loc("_476"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":37:7))
  %v631 = sea.ptr.dereferenceable %v103, %v630 : !sea.ptr<64>, i64 loc("_476"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":37:7))
  sea.cond_br %v631, ^bb198, ^bb205
^bb198:
  %v632 = sea.const 18446744073709551615 : i64 loc("_478"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":37:7))
  %v633 = sea.add %v164, %v632 : i64 loc("_478"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":37:7))
  %v634 = sea.icmp eq, %v566, %v633 : i64 loc("_479"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":37:7))
  sea.br ^bb199(%v634 : i1) loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":37:7)
^bb199(%v635 : i1):
  %v636 = sea.const 8 : i64 loc("_482"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":37:7))
  %v637 = sea.ptr.dereferenceable %v103, %v636 : !sea.ptr<64>, i64 loc("_482"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":37:7))
  sea.cond_br %v637, ^bb200, ^bb205
^bb200:
  %v638 = sea.const 1 : i1 loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":37:7)
  %v639 = sea.xor %v628, %v638 : i1 loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":37:7)
  sea.assume %v639 loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":37:7)
  %v640 = sea.const 8 : i64 loc("_484"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":37:7))
  %v641 = sea.ptr.dereferenceable %v103, %v640 : !sea.ptr<64>, i64 loc("_484"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":37:7))
  sea.cond_br %v641, ^bb201, ^bb205
^bb201:
  %v642 = sea.const 18446744073709551615 : i64 loc("_486"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":37:7))
  %v643 = sea.add %v164, %v642 : i64 loc("_486"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":37:7))
  %v644 = sea.icmp eq, %v566, %v643 : i64 loc("_487"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":37:7))
  %v645 = sea.const 1 : i1 loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":37:7)
  %v646 = sea.xor %v644, %v645 : i1 loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":37:7)
  sea.assume %v646 loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":37:7)
  sea.br ^bb205 loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":37:7)
^bb202:
  sea.cond_br %v627, ^bb203, ^bb205
^bb203:
  %v647 = sea.load %v538[%v9] align 4 : !sea.mem<!sea.ptr<64>, i8> -> i32 loc("_466"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":35:7))
  %v648 = sea.sext %v647 : i32 to i64 loc("_467"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":35:7))
  %v649 = sea.sub %v164, %v648 : i64 loc("_468"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":35:7))
  %v650 = sea.icmp eq, %v566, %v649 : i64 loc("_469"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":35:7))
  %v651 = sea.const 8 : i64 loc("_470"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":35:7))
  %v652 = sea.ptr.dereferenceable %v103, %v651 : !sea.ptr<64>, i64 loc("_470"("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":35:7))
  sea.cond_br %v652, ^bb204, ^bb205
^bb204:
  %v653 = sea.const 1 : i1 loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":35:7)
  %v654 = sea.xor %v650, %v653 : i1 loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":35:7)
  sea.assume %v654 loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":35:7)
  sea.br ^bb205 loc("seahorn/jobs/hash_table_remove/aws_hash_table_remove_harness.c":35:7)
^bb205:
  sea.br ^bb206
^bb206:
  %v655 = sea.const 0 : i1
  sea.assert %v655
  sea.halt
}
