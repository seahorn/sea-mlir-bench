// Exported from SeaHorn (hash_iter_next.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm31")
  %v1 = sea.mem.nondet "region.17" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm32")
  %v2 = sea.mem.nondet "region.16" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm33")
  %v3 = sea.const 8 : i64 loc("_0")
  %v4 = sea.alloca %v3 align 8 [3] : i64 -> !sea.ptr<64> loc("_0")
  %v5 = sea.const 64 : i64 loc("_1")
  %v6 = sea.alloca %v5 align 8 [4] : i64 -> !sea.ptr<64> loc("_1")
  %v7 = sea.const 16 : i64 loc("_2")
  %v8 = sea.alloca %v7 align 8 [5] : i64 -> !sea.ptr<64> loc("_2")
  %v9 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v10 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v11 = sea.store %v0[%v9], %v10 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v12 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_3")
  %v13 = sea.ptr.index %v12 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_3")
  %v14 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v15 = sea.store %v11[%v13], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v16 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_4")
  %v17 = sea.ptr.index %v16 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_4")
  %v18 = sea.const 0 : i8
  %v19 = sea.const 24 : i64
  %v20 = sea.memset %v15[%v17], %v18, %v19 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v21 = sea.nondet "nd_size_t" [6] : i64 loc("_5"("seahorn/lib/hash_table_helper.c":14:24))
  %v22 = sea.const 9 : i64 loc("_6"("seahorn/lib/hash_table_helper.c":15:22))
  %v23 = sea.icmp ult, %v21, %v22 : i64 loc("_6"("seahorn/lib/hash_table_helper.c":15:22))
  sea.assume %v23 loc("seahorn/lib/hash_table_helper.c":15:3)
  %v24 = sea.ctpop %v21 : i64 loc("_7"("aws-c-common/include/aws/common/math.inl":161:14))
  %v25 = sea.const 1 : i64 loc("_8"("aws-c-common/include/aws/common/math.inl":161:14))
  %v26 = sea.icmp eq, %v24, %v25 : i64 loc("_8"("aws-c-common/include/aws/common/math.inl":161:14))
  sea.assume %v26 loc("seahorn/lib/hash_table_helper.c":16:3)
  %v27 = sea.nondet "nd_size_t" [7] : i64 loc("_9"("seahorn/lib/hash_table_helper.c":18:27))
  sea.br ^bb1
^bb1:
  %v28 = sea.const 24 : i64 loc("_11"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v29 = sea.mul %v21, %v28 : i64 loc("_11"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v30 = sea.const 24 : i64 loc("_11"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v31 = sea.umulo %v21, %v30 : i64 loc("_11"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v32 = sea.const 4294967295 : i32 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
  sea.cond_br %v31, ^bb6(%v27, %v32 : i64, i32), ^bb2 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb2:
  sea.br ^bb3
^bb3:
  %v33 = sea.const 80 : i64 loc("_15"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v34 = sea.add %v29, %v33 : i64 loc("_15"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v35 = sea.const 80 : i64 loc("_15"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v36 = sea.uaddo %v29, %v35 : i64 loc("_15"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v36, ^bb4, ^bb5 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb4:
  sea.br ^bb5 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":71:9)
^bb5:
  %v37 = sea.sext %v36 : i1 to i32 loc("..i.i.i"("aws-c-common/source/hash_table.c":0:0))
  sea.br ^bb6(%v34, %v37 : i64, i32) loc("aws-c-common/source/hash_table.c":0:0)
^bb6(%v38 : i64, %v39 : i32):
  %v40 = sea.const 0 : i32 loc("_20"("seahorn/lib/hash_table_helper.c":20:72))
  %v41 = sea.icmp eq, %v39, %v40 : i32 loc("_20"("seahorn/lib/hash_table_helper.c":20:72))
  sea.assume %v41 loc("seahorn/lib/hash_table_helper.c":20:3)
  %v42 = sea.const 0 : i64 loc("_21"("seahorn/lib/proof_allocators.c":17:15))
  %v43 = sea.icmp eq, %v38, %v42 : i64 loc("_21"("seahorn/lib/proof_allocators.c":17:15))
  %v44 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v43, ^bb10(%v2, %v44 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb7 loc("seahorn/lib/proof_allocators.c":17:10)
^bb7:
  %v45 = sea.nondet "nd_malloc_is_fail" [8] : i1 loc("_23"("seahorn/lib/sea_allocators.c":11:10))
  %v46 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v45, ^bb9(%v2, %v46 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb8 loc("seahorn/lib/sea_allocators.c":11:10)
^bb8:
  %v47 = sea.const 1 : i64 loc("malloc.i")
  %v48 = sea.mul %v38, %v47 : i64 loc("malloc.i")
  %v49 = sea.alloca %v48 align 16 [9] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb9(%v2, %v49 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb9(%v50 : !sea.mem<!sea.ptr<64>, i8>, %v51 : !sea.ptr<64>):
  %v52 = sea.memhavoc %v50[%v51], %v38 [10] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v53 = sea.ptr.null : !sea.ptr<64> loc("_26"("seahorn/lib/sea_allocators.c":45:10))
  %v54 = sea.ptr.cmp ne, %v51, %v53 : !sea.ptr<64> loc("_26"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v54 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb10(%v52, %v51 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb10(%v55 : !sea.mem<!sea.ptr<64>, i8>, %v56 : !sea.ptr<64>):
  %v57 = sea.ptr.index %v56 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_28"("seahorn/lib/hash_table_helper.c":23:9))
  %v58 = sea.const 8 : i64 loc("_29"("seahorn/lib/hash_table_helper.c":23:14))
  %v59 = sea.ptr.dereferenceable %v57, %v58 : !sea.ptr<64>, i64 loc("_29"("seahorn/lib/hash_table_helper.c":23:14))
  sea.cond_br %v59, ^bb11, ^bb238(%v55, %v20 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb11:
  %v60 = sea.store %v55[%v57], %v21 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":23:14)
  %v61 = sea.ptr.index %v56 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_31"("seahorn/lib/hash_table_helper.c":24:9))
  %v62 = sea.const 8 : i64 loc("_32"("seahorn/lib/hash_table_helper.c":24:14))
  %v63 = sea.ptr.dereferenceable %v61, %v62 : !sea.ptr<64>, i64 loc("_32"("seahorn/lib/hash_table_helper.c":24:14))
  sea.cond_br %v63, ^bb12, ^bb238(%v60, %v20 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb12:
  %v64 = sea.const 18446744073709551615 : i64 loc("_34"("seahorn/lib/hash_table_helper.c":24:28))
  %v65 = sea.add %v21, %v64 : i64 loc("_34"("seahorn/lib/hash_table_helper.c":24:28))
  %v66 = sea.store %v60[%v61], %v65 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":24:14)
  %v67 = sea.ptr.index %v56 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_35"("seahorn/lib/hash_table_helper.c":25:9))
  %v68 = sea.const 8 : i64 loc("_36"("seahorn/lib/hash_table_helper.c":25:25))
  %v69 = sea.ptr.dereferenceable %v67, %v68 : !sea.ptr<64>, i64 loc("_36"("seahorn/lib/hash_table_helper.c":25:25))
  sea.cond_br %v69, ^bb13, ^bb238(%v66, %v20 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb13:
  %v70 = sea.const 4606732058837280358 : i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v71 = sea.store %v66[%v67], %v70 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v72 = sea.ptr.index %v56 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_38"("seahorn/lib/hash_table_helper.c":26:9))
  %v73 = sea.const 8 : i64 loc("_39"("seahorn/lib/hash_table_helper.c":26:15))
  %v74 = sea.ptr.dereferenceable %v72, %v73 : !sea.ptr<64>, i64 loc("_39"("seahorn/lib/hash_table_helper.c":26:15))
  sea.cond_br %v74, ^bb14, ^bb238(%v71, %v20 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb14:
  %v75 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v76 = sea.store %v71[%v72], %v75 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v77 = sea.const 8 : i64 loc("_41"("seahorn/lib/hash_table_helper.c":27:17))
  %v78 = sea.ptr.dereferenceable %v56, %v77 : !sea.ptr<64>, i64 loc("_41"("seahorn/lib/hash_table_helper.c":27:17))
  sea.cond_br %v78, ^bb15, ^bb238(%v76, %v20 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb15:
  %v79 = sea.func_addr @"nd_hash_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v80 = sea.store %v76[%v56], %v79 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v81 = sea.ptr.index %v56 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_43"("seahorn/lib/hash_table_helper.c":28:9))
  %v82 = sea.const 8 : i64 loc("_44"("seahorn/lib/hash_table_helper.c":28:19))
  %v83 = sea.ptr.dereferenceable %v81, %v82 : !sea.ptr<64>, i64 loc("_44"("seahorn/lib/hash_table_helper.c":28:19))
  sea.cond_br %v83, ^bb16, ^bb238(%v80, %v20 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb16:
  %v84 = sea.func_addr @"nd_hash_equals_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  %v85 = sea.store %v80[%v81], %v84 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  sea.br ^bb17
^bb17:
  %v86 = sea.store %v20[%v4], %v56 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":37:15)
  sea.br ^bb18
^bb18:
  sea.br ^bb19
^bb19:
  %v87 = sea.const 8 : i64 loc("_48"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v88 = sea.ptr.dereferenceable %v56, %v87 : !sea.ptr<64>, i64 loc("_48"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v88, ^bb20, ^bb238(%v85, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb20:
  %v89 = sea.load %v80[%v56] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_50"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v90 = sea.ptr.null : !sea.ptr<64> loc("_51"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v91 = sea.ptr.cmp ne, %v89, %v90 : !sea.ptr<64> loc("_51"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v92 = sea.const 8 : i64 loc("_52"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v93 = sea.ptr.dereferenceable %v81, %v92 : !sea.ptr<64>, i64 loc("_52"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v93, ^bb21, ^bb238(%v85, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb21:
  %v94 = sea.const 8 : i64 loc("_54"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v95 = sea.ptr.dereferenceable %v72, %v94 : !sea.ptr<64>, i64 loc("_54"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v95, ^bb22, ^bb238(%v85, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb22:
  %v96 = sea.const 8 : i64 loc("_56"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v97 = sea.ptr.dereferenceable %v57, %v96 : !sea.ptr<64>, i64 loc("_56"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v97, ^bb23, ^bb238(%v85, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb23:
  %v98 = sea.const 1 : i64 loc("_58"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v99 = sea.icmp ugt, %v21, %v98 : i64 loc("_58"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v100 = sea.const 8 : i64 loc("_59"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v101 = sea.ptr.dereferenceable %v57, %v100 : !sea.ptr<64>, i64 loc("_59"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v101, ^bb24, ^bb238(%v85, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb24:
  %v102 = sea.ptr.index %v56 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_61"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v103 = sea.const 8 : i64 loc("_62"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v104 = sea.ptr.dereferenceable %v102, %v103 : !sea.ptr<64>, i64 loc("_62"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v104, ^bb25, ^bb238(%v85, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb25:
  %v105 = sea.load %v60[%v102] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_64"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v106 = sea.ptr.index %v56 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_65"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v107 = sea.const 8 : i64 loc("_66"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v108 = sea.ptr.dereferenceable %v106, %v107 : !sea.ptr<64>, i64 loc("_66"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v108, ^bb26, ^bb238(%v85, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb26:
  %v109 = sea.load %v60[%v106] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_68"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v110 = sea.icmp ule, %v105, %v109 : i64 loc("_69"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v111 = sea.const 8 : i64 loc("_70"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v112 = sea.ptr.dereferenceable %v106, %v111 : !sea.ptr<64>, i64 loc("_70"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v112, ^bb27, ^bb238(%v85, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb27:
  %v113 = sea.const 8 : i64 loc("_72"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v114 = sea.ptr.dereferenceable %v57, %v113 : !sea.ptr<64>, i64 loc("_72"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v114, ^bb28, ^bb238(%v85, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb28:
  %v115 = sea.icmp ult, %v109, %v21 : i64 loc("_74"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v116 = sea.const 8 : i64 loc("_75"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v117 = sea.ptr.dereferenceable %v61, %v116 : !sea.ptr<64>, i64 loc("_75"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v117, ^bb29, ^bb238(%v85, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb29:
  %v118 = sea.const 8 : i64 loc("_77"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v119 = sea.ptr.dereferenceable %v57, %v118 : !sea.ptr<64>, i64 loc("_77"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v119, ^bb30, ^bb238(%v85, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb30:
  %v120 = sea.const 8 : i64 loc("_79"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v121 = sea.ptr.dereferenceable %v57, %v120 : !sea.ptr<64>, i64 loc("_79"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v121, ^bb31, ^bb238(%v85, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb31:
  %v122 = sea.const 0 : i1 loc("or.cond5.i99.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v123 = sea.select %v91, %v99, %v122 : i1 loc("or.cond5.i99.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v124 = sea.const 0 : i1 loc("or.cond7.i100.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v125 = sea.select %v123, %v26, %v124 : i1 loc("or.cond7.i100.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v126 = sea.const 0 : i1 loc("or.cond9.i101.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v127 = sea.select %v125, %v110, %v126 : i1 loc("or.cond9.i101.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v128 = sea.const 0 : i1 loc("or.cond11.i102.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v129 = sea.select %v127, %v115, %v128 : i1 loc("or.cond11.i102.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.assume %v129 loc("seahorn/jobs/hash_iter_next/aws_hash_iter_next_harness.c":17:3)
  sea.br ^bb32
^bb32:
  %v130 = sea.store %v85[%v6], %v4 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":43:13)
  %v131 = sea.ptr.nondet "nd_voidp" [11] : !sea.ptr<64> loc("_81"("seahorn/lib/hash_table_helper.c":44:23))
  %v132 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_82"("seahorn/lib/hash_table_helper.c":44:9))
  sea.br ^bb33
^bb33:
  %v133 = sea.store %v130[%v132], %v131 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":44:21)
  %v134 = sea.ptr.nondet "nd_voidp" [12] : !sea.ptr<64> loc("_84"("seahorn/lib/hash_table_helper.c":45:25))
  %v135 = sea.ptr.index %v6 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_85"("seahorn/lib/hash_table_helper.c":45:17))
  sea.br ^bb34
^bb34:
  %v136 = sea.store %v133[%v135], %v134 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":45:23)
  %v137 = sea.nondet "nd_size_t" [13] : i64 loc("_87"("seahorn/lib/hash_table_helper.c":46:16))
  %v138 = sea.ptr.index %v6 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_88"("seahorn/lib/hash_table_helper.c":46:9))
  sea.br ^bb35
^bb35:
  %v139 = sea.store %v136[%v138], %v137 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":46:14)
  %v140 = sea.nondet "nd_size_t" [14] : i64 loc("_90"("seahorn/lib/hash_table_helper.c":47:17))
  %v141 = sea.ptr.index %v6 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_91"("seahorn/lib/hash_table_helper.c":47:9))
  sea.br ^bb36
^bb36:
  %v142 = sea.store %v139[%v141], %v140 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":47:15)
  %v143 = sea.nondet "nd_hash_iter_status" [15] : i32 loc("_93"("seahorn/lib/hash_table_helper.c":48:18))
  %v144 = sea.ptr.index %v6 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_94"("seahorn/lib/hash_table_helper.c":48:9))
  sea.br ^bb37
^bb37:
  %v145 = sea.store %v142[%v144], %v143 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("seahorn/lib/hash_table_helper.c":48:16)
  sea.br ^bb38
^bb38:
  sea.br ^bb39
^bb39:
  sea.br ^bb40
^bb40:
  %v146 = sea.load %v86[%v4] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_98"("aws-c-common/source/hash_table.c":1027:24))
  %v147 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i.i.i"("aws-c-common/source/hash_table.c":1027:19))
  %v148 = sea.ptr.cmp eq, %v146, %v147 : !sea.ptr<64> loc(".not1.i.i.i.i"("aws-c-common/source/hash_table.c":1027:19))
  %v149 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1027:31)
  sea.cond_br %v148, ^bb82(%v149 : i1), ^bb41 loc("aws-c-common/source/hash_table.c":1027:31)
^bb41:
  sea.br ^bb42
^bb42:
  %v150 = sea.const 8 : i64 loc("_101"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v151 = sea.ptr.dereferenceable %v146, %v150 : !sea.ptr<64>, i64 loc("_101"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v151, ^bb43, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb43:
  %v152 = sea.load %v85[%v146] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_103"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v153 = sea.ptr.null : !sea.ptr<64> loc("_104"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v154 = sea.ptr.cmp ne, %v152, %v153 : !sea.ptr<64> loc("_104"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v155 = sea.ptr.index %v146 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_105"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v156 = sea.const 8 : i64 loc("_106"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v157 = sea.ptr.dereferenceable %v155, %v156 : !sea.ptr<64>, i64 loc("_106"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v157, ^bb44, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb44:
  %v158 = sea.load %v85[%v155] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_108"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v159 = sea.ptr.null : !sea.ptr<64> loc("_109"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v160 = sea.ptr.cmp ne, %v158, %v159 : !sea.ptr<64> loc("_109"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v161 = sea.ptr.index %v146 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_110"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v162 = sea.const 8 : i64 loc("_111"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v163 = sea.ptr.dereferenceable %v161, %v162 : !sea.ptr<64>, i64 loc("_111"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v163, ^bb45, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb45:
  %v164 = sea.load %v85[%v161] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_113"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v165 = sea.ptr.null : !sea.ptr<64> loc("_114"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v166 = sea.ptr.cmp ne, %v164, %v165 : !sea.ptr<64> loc("_114"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v167 = sea.ptr.index %v146 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_115"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v168 = sea.const 8 : i64 loc("_116"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v169 = sea.ptr.dereferenceable %v167, %v168 : !sea.ptr<64>, i64 loc("_116"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v169, ^bb46, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb46:
  %v170 = sea.load %v66[%v167] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_118"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v171 = sea.const 1 : i64 loc("_119"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v172 = sea.icmp ugt, %v170, %v171 : i64 loc("_119"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v173 = sea.const 8 : i64 loc("_120"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v174 = sea.ptr.dereferenceable %v167, %v173 : !sea.ptr<64>, i64 loc("_120"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v174, ^bb47, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb47:
  %v175 = sea.ctpop %v170 : i64 loc("_122"("aws-c-common/include/aws/common/math.inl":161:14))
  %v176 = sea.const 1 : i64 loc("_123"("aws-c-common/include/aws/common/math.inl":161:14))
  %v177 = sea.icmp eq, %v175, %v176 : i64 loc("_123"("aws-c-common/include/aws/common/math.inl":161:14))
  %v178 = sea.ptr.index %v146 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_124"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v179 = sea.const 8 : i64 loc("_125"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v180 = sea.ptr.dereferenceable %v178, %v179 : !sea.ptr<64>, i64 loc("_125"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v180, ^bb48, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb48:
  %v181 = sea.load %v66[%v178] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_127"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v182 = sea.ptr.index %v146 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_128"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v183 = sea.const 8 : i64 loc("_129"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v184 = sea.ptr.dereferenceable %v182, %v183 : !sea.ptr<64>, i64 loc("_129"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v184, ^bb49, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb49:
  %v185 = sea.load %v66[%v182] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_131"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v186 = sea.icmp ule, %v181, %v185 : i64 loc("_132"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v187 = sea.const 8 : i64 loc("_133"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v188 = sea.ptr.dereferenceable %v182, %v187 : !sea.ptr<64>, i64 loc("_133"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v188, ^bb50, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb50:
  %v189 = sea.const 8 : i64 loc("_135"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v190 = sea.ptr.dereferenceable %v167, %v189 : !sea.ptr<64>, i64 loc("_135"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v190, ^bb51, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb51:
  %v191 = sea.icmp ult, %v185, %v170 : i64 loc("_137"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v192 = sea.ptr.index %v146 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_138"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v193 = sea.const 8 : i64 loc("_139"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v194 = sea.ptr.dereferenceable %v192, %v193 : !sea.ptr<64>, i64 loc("_139"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v194, ^bb52, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb52:
  %v195 = sea.load %v66[%v192] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_141"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v196 = sea.const 8 : i64 loc("_142"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v197 = sea.ptr.dereferenceable %v167, %v196 : !sea.ptr<64>, i64 loc("_142"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v197, ^bb53, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb53:
  %v198 = sea.const 8 : i64 loc("_144"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v199 = sea.ptr.dereferenceable %v167, %v198 : !sea.ptr<64>, i64 loc("_144"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v199, ^bb54, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb54:
  %v200 = sea.const 18446744073709551615 : i64 loc("_145"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v201 = sea.add %v170, %v200 : i64 loc("_145"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v202 = sea.icmp eq, %v195, %v201 : i64 loc("_146"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
  %v203 = sea.const 0 : i1 loc("or.cond.i49.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v204 = sea.select %v154, %v160, %v203 : i1 loc("or.cond.i49.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v205 = sea.const 0 : i1 loc("or.cond3.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v206 = sea.select %v204, %v166, %v205 : i1 loc("or.cond3.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v207 = sea.const 0 : i1 loc("or.cond5.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v208 = sea.select %v206, %v172, %v207 : i1 loc("or.cond5.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v209 = sea.const 0 : i1 loc("or.cond7.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v210 = sea.select %v208, %v177, %v209 : i1 loc("or.cond7.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v211 = sea.const 0 : i1 loc("or.cond9.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v212 = sea.select %v210, %v186, %v211 : i1 loc("or.cond9.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v213 = sea.const 0 : i1 loc("or.cond11.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v214 = sea.select %v212, %v191, %v213 : i1 loc("or.cond11.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v215 = sea.const 0 : i1 loc("or.cond13.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v216 = sea.select %v214, %v202, %v215 : i1 loc("or.cond13.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v217 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1065:9)
  sea.cond_br %v216, ^bb55, ^bb82(%v217 : i1) loc("aws-c-common/source/hash_table.c":1065:9)
^bb55:
  sea.br ^bb56
^bb56:
  sea.br ^bb57
^bb57:
  sea.br ^bb58
^bb58:
  %v218 = sea.const 8 : i64 loc("_151"("aws-c-common/source/hash_table.c":1068:42))
  %v219 = sea.ptr.dereferenceable %v167, %v218 : !sea.ptr<64>, i64 loc("_151"("aws-c-common/source/hash_table.c":1068:42))
  sea.cond_br %v219, ^bb59, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb59:
  %v220 = sea.icmp ugt, %v140, %v170 : i64 loc("_153"("aws-c-common/source/hash_table.c":1068:21))
  %v221 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1068:9)
  sea.cond_br %v220, ^bb82(%v221 : i1), ^bb60 loc("aws-c-common/source/hash_table.c":1068:9)
^bb60:
  sea.br ^bb61
^bb61:
  %v222 = sea.const 1 : i32 loc("Pivot6.i.i.i")
  %v223 = sea.icmp slt, %v143, %v222 : i32 loc("Pivot6.i.i.i")
  sea.cond_br %v223, ^bb78, ^bb62
^bb62:
  sea.br ^bb63
^bb63:
  %v224 = sea.const 2 : i32 loc("Pivot")
  %v225 = sea.icmp slt, %v143, %v224 : i32 loc("Pivot")
  sea.cond_br %v225, ^bb73, ^bb64
^bb64:
  %v226 = sea.const 2 : i32 loc("SwitchLeaf")
  %v227 = sea.icmp eq, %v143, %v226 : i32 loc("SwitchLeaf")
  %v228 = sea.const 0 : i1
  sea.cond_br %v227, ^bb65, ^bb82(%v228 : i1)
^bb65:
  sea.br ^bb66
^bb66:
  sea.br ^bb67
^bb67:
  %v229 = sea.icmp ult, %v137, %v140 : i64 loc("_168"("aws-c-common/source/hash_table.c":1082:31))
  %v230 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1082:45)
  sea.cond_br %v229, ^bb68, ^bb82(%v230 : i1) loc("aws-c-common/source/hash_table.c":1082:45)
^bb68:
  sea.br ^bb69
^bb69:
  sea.br ^bb70
^bb70:
  sea.br ^bb71
^bb71:
  %v231 = sea.ptr.index %v146 [%v137] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_173"("aws-c-common/source/hash_table.c":1082:85))
  %v232 = sea.const 8 : i64 loc("_174"("aws-c-common/source/hash_table.c":1082:85))
  %v233 = sea.ptr.dereferenceable %v231, %v232 : !sea.ptr<64>, i64 loc("_174"("aws-c-common/source/hash_table.c":1082:85))
  sea.cond_br %v233, ^bb72, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb72:
  %v234 = sea.load %v66[%v231] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_176"("aws-c-common/source/hash_table.c":1082:85))
  %v235 = sea.const 0 : i64 loc("_177"("aws-c-common/source/hash_table.c":1082:95))
  %v236 = sea.icmp ne, %v234, %v235 : i64 loc("_177"("aws-c-common/source/hash_table.c":1082:95))
  sea.br ^bb82(%v236 : i1)
^bb73:
  sea.br ^bb74
^bb74:
  sea.br ^bb75
^bb75:
  %v237 = sea.icmp ugt, %v137, %v140 : i64 loc(".not2.i.i.i"("aws-c-common/source/hash_table.c":1079:31))
  %v238 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":1079:46)
  sea.cond_br %v237, ^bb76, ^bb82(%v238 : i1) loc("aws-c-common/source/hash_table.c":1079:46)
^bb76:
  sea.br ^bb77
^bb77:
  %v239 = sea.const 18446744073709551615 : i64 loc("_164"("aws-c-common/source/hash_table.c":1079:60))
  %v240 = sea.icmp eq, %v137, %v239 : i64 loc("_164"("aws-c-common/source/hash_table.c":1079:60))
  sea.br ^bb82(%v240 : i1) loc("aws-c-common/source/hash_table.c":1079:46)
^bb78:
  %v241 = sea.const 0 : i32 loc("SwitchLeaf.i.i.i")
  %v242 = sea.icmp eq, %v143, %v241 : i32 loc("SwitchLeaf.i.i.i")
  %v243 = sea.const 0 : i1
  sea.cond_br %v242, ^bb79, ^bb82(%v243 : i1)
^bb79:
  sea.br ^bb80
^bb80:
  sea.br ^bb81
^bb81:
  %v244 = sea.icmp eq, %v137, %v140 : i64 loc("_158"("aws-c-common/source/hash_table.c":1075:31))
  sea.br ^bb82(%v244 : i1) loc("aws-c-common/source/hash_table.c":1075:13)
^bb82(%v245 : i1):
  sea.assume %v245 loc("seahorn/lib/hash_table_helper.c":54:3)
  sea.br ^bb83
^bb83:
  %v246 = sea.nondet "nd_size_t" [16] : i64 loc("_179"("seahorn/lib/hash_table_helper.c":59:26))
  %v247 = sea.ptr.index %v146 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_180"("seahorn/lib/hash_table_helper.c":60:49))
  %v248 = sea.const 8 : i64 loc("_181"("seahorn/lib/hash_table_helper.c":60:49))
  %v249 = sea.ptr.dereferenceable %v247, %v248 : !sea.ptr<64>, i64 loc("_181"("seahorn/lib/hash_table_helper.c":60:49))
  sea.cond_br %v249, ^bb84, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb84:
  %v250 = sea.load %v66[%v247] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_183"("seahorn/lib/hash_table_helper.c":60:49))
  sea.br ^bb85
^bb85:
  %v251 = sea.const 24 : i64 loc("_185"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v252 = sea.mul %v250, %v251 : i64 loc("_185"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v253 = sea.const 24 : i64 loc("_185"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v254 = sea.umulo %v250, %v253 : i64 loc("_185"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v255 = sea.const 4294967295 : i32 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
  sea.cond_br %v254, ^bb90(%v246, %v255 : i64, i32), ^bb86 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb86:
  sea.br ^bb87
^bb87:
  %v256 = sea.const 80 : i64 loc("_189"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v257 = sea.add %v252, %v256 : i64 loc("_189"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v258 = sea.const 80 : i64 loc("_189"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v259 = sea.uaddo %v252, %v258 : i64 loc("_189"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v259, ^bb88, ^bb89 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb88:
  sea.br ^bb89 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":71:9)
^bb89:
  %v260 = sea.sext %v259 : i1 to i32 loc("..i.i43.i"("aws-c-common/source/hash_table.c":0:0))
  sea.br ^bb90(%v257, %v260 : i64, i32) loc("aws-c-common/source/hash_table.c":0:0)
^bb90(%v261 : i64, %v262 : i32):
  %v263 = sea.const 0 : i32 loc("_194"("seahorn/lib/hash_table_helper.c":60:71))
  %v264 = sea.icmp eq, %v262, %v263 : i32 loc("_194"("seahorn/lib/hash_table_helper.c":60:71))
  sea.assume %v264 loc("seahorn/lib/hash_table_helper.c":60:3)
  %v265 = sea.nondet "nd_size_t" [17] : i64 loc("_195"("seahorn/lib/utils.c":46:20))
  sea.br ^bb91
^bb91:
  %v266 = sea.store %v1[%v8], %v265 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v267 = sea.const 0 : i64 loc(".not29"("seahorn/lib/utils.c":47:12))
  %v268 = sea.icmp eq, %v261, %v267 : i64 loc(".not29"("seahorn/lib/utils.c":47:12))
  sea.cond_br %v268, ^bb97, ^bb92 loc("seahorn/lib/utils.c":47:16)
^bb92:
  sea.br ^bb93
^bb93:
  %v269 = sea.icmp ult, %v265, %v261 : i64 loc("_199"("seahorn/lib/utils.c":48:27))
  sea.assume %v269 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb94
^bb94:
  %v270 = sea.ptr.index %v146 [%v265] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_201"("seahorn/lib/utils.c":49:21))
  %v271 = sea.const 1 : i64 loc("_202"("seahorn/lib/utils.c":49:21))
  %v272 = sea.ptr.dereferenceable %v270, %v271 : !sea.ptr<64>, i64 loc("_202"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v272, ^bb95, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb95:
  %v273 = sea.load %v85[%v270] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_204"("seahorn/lib/utils.c":49:21))
  %v274 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_205"("seahorn/lib/utils.c":49:14))
  sea.br ^bb96
^bb96:
  %v275 = sea.store %v266[%v274], %v273 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb99(%v273 : i8) loc("seahorn/lib/utils.c":50:3)
^bb97:
  %v276 = sea.nondet "nd_uint8_t" [18] : i8 loc("_208"("seahorn/lib/utils.c":51:21))
  %v277 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_209"("seahorn/lib/utils.c":51:14))
  sea.br ^bb98
^bb98:
  %v278 = sea.store %v266[%v277], %v276 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb99(%v276 : i8)
^bb99(%v279 : i8):
  sea.br ^bb100
^bb100:
  sea.br ^bb101
^bb101:
  sea.br ^bb102
^bb102:
  sea.br ^bb103
^bb103:
  %v280 = sea.const 1 : i64 loc(".02.i.i1"("aws-c-common/source/hash_table.c":791:0))
  %v281 = sea.add %v137, %v280 : i64 loc(".02.i.i1"("aws-c-common/source/hash_table.c":791:0))
  %v282 = sea.icmp ult, %v281, %v140 : i64 loc(".not3.i.i.not.not.not.not2.not"("aws-c-common/source/hash_table.c":791:35))
  %v283 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":791:5)
  sea.cond_br %v282, ^bb104, ^bb130(%v283 : i1) loc("aws-c-common/source/hash_table.c":791:5)
^bb104:
  %v284 = sea.ptr.index %v146 [%v281] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_214"("aws-c-common/source/hash_table.c":794:20))
  %v285 = sea.const 8 : i64 loc("_215"("aws-c-common/source/hash_table.c":794:20))
  %v286 = sea.ptr.dereferenceable %v284, %v285 : !sea.ptr<64>, i64 loc("_215"("aws-c-common/source/hash_table.c":794:20))
  sea.cond_br %v286, ^bb105, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb105:
  %v287 = sea.load %v66[%v284] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_217"("aws-c-common/source/hash_table.c":794:20))
  %v288 = sea.const 0 : i64 loc(".not.i.i"("aws-c-common/source/hash_table.c":794:13))
  %v289 = sea.icmp eq, %v287, %v288 : i64 loc(".not.i.i"("aws-c-common/source/hash_table.c":794:13))
  sea.cond_br %v289, ^bb106, ^bb127(%v281 : i64) loc("aws-c-common/source/hash_table.c":794:13)
^bb106:
  %v290 = sea.const 2 : i64 loc(".02.i.i.1"("aws-c-common/source/hash_table.c":791:0))
  %v291 = sea.add %v137, %v290 : i64 loc(".02.i.i.1"("aws-c-common/source/hash_table.c":791:0))
  %v292 = sea.icmp ult, %v291, %v140 : i64 loc(".not3.i.i.not.not.not.not.1.not"("aws-c-common/source/hash_table.c":791:35))
  %v293 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":791:5)
  sea.cond_br %v292, ^bb107, ^bb130(%v293 : i1) loc("aws-c-common/source/hash_table.c":791:5)
^bb107:
  %v294 = sea.ptr.index %v146 [%v291] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_219"("aws-c-common/source/hash_table.c":794:20))
  %v295 = sea.const 8 : i64 loc("_220"("aws-c-common/source/hash_table.c":794:20))
  %v296 = sea.ptr.dereferenceable %v294, %v295 : !sea.ptr<64>, i64 loc("_220"("aws-c-common/source/hash_table.c":794:20))
  sea.cond_br %v296, ^bb108, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb108:
  %v297 = sea.load %v66[%v294] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_222"("aws-c-common/source/hash_table.c":794:20))
  %v298 = sea.const 0 : i64 loc(".not.i.i.1"("aws-c-common/source/hash_table.c":794:13))
  %v299 = sea.icmp eq, %v297, %v298 : i64 loc(".not.i.i.1"("aws-c-common/source/hash_table.c":794:13))
  sea.cond_br %v299, ^bb109, ^bb127(%v291 : i64) loc("aws-c-common/source/hash_table.c":794:13)
^bb109:
  %v300 = sea.const 3 : i64 loc(".02.i.i.2"("aws-c-common/source/hash_table.c":791:0))
  %v301 = sea.add %v137, %v300 : i64 loc(".02.i.i.2"("aws-c-common/source/hash_table.c":791:0))
  %v302 = sea.icmp ult, %v301, %v140 : i64 loc(".not3.i.i.not.not.not.not.2.not"("aws-c-common/source/hash_table.c":791:35))
  %v303 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":791:5)
  sea.cond_br %v302, ^bb110, ^bb130(%v303 : i1) loc("aws-c-common/source/hash_table.c":791:5)
^bb110:
  %v304 = sea.ptr.index %v146 [%v301] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_224"("aws-c-common/source/hash_table.c":794:20))
  %v305 = sea.const 8 : i64 loc("_225"("aws-c-common/source/hash_table.c":794:20))
  %v306 = sea.ptr.dereferenceable %v304, %v305 : !sea.ptr<64>, i64 loc("_225"("aws-c-common/source/hash_table.c":794:20))
  sea.cond_br %v306, ^bb111, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb111:
  %v307 = sea.load %v66[%v304] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_227"("aws-c-common/source/hash_table.c":794:20))
  %v308 = sea.const 0 : i64 loc(".not.i.i.2"("aws-c-common/source/hash_table.c":794:13))
  %v309 = sea.icmp eq, %v307, %v308 : i64 loc(".not.i.i.2"("aws-c-common/source/hash_table.c":794:13))
  sea.cond_br %v309, ^bb112, ^bb127(%v301 : i64) loc("aws-c-common/source/hash_table.c":794:13)
^bb112:
  %v310 = sea.const 4 : i64 loc(".02.i.i.3"("aws-c-common/source/hash_table.c":791:0))
  %v311 = sea.add %v137, %v310 : i64 loc(".02.i.i.3"("aws-c-common/source/hash_table.c":791:0))
  %v312 = sea.icmp ult, %v311, %v140 : i64 loc(".not3.i.i.not.not.not.not.3.not"("aws-c-common/source/hash_table.c":791:35))
  %v313 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":791:5)
  sea.cond_br %v312, ^bb113, ^bb130(%v313 : i1) loc("aws-c-common/source/hash_table.c":791:5)
^bb113:
  %v314 = sea.ptr.index %v146 [%v311] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_229"("aws-c-common/source/hash_table.c":794:20))
  %v315 = sea.const 8 : i64 loc("_230"("aws-c-common/source/hash_table.c":794:20))
  %v316 = sea.ptr.dereferenceable %v314, %v315 : !sea.ptr<64>, i64 loc("_230"("aws-c-common/source/hash_table.c":794:20))
  sea.cond_br %v316, ^bb114, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb114:
  %v317 = sea.load %v66[%v314] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_232"("aws-c-common/source/hash_table.c":794:20))
  %v318 = sea.const 0 : i64 loc(".not.i.i.3"("aws-c-common/source/hash_table.c":794:13))
  %v319 = sea.icmp eq, %v317, %v318 : i64 loc(".not.i.i.3"("aws-c-common/source/hash_table.c":794:13))
  sea.cond_br %v319, ^bb115, ^bb127(%v311 : i64) loc("aws-c-common/source/hash_table.c":794:13)
^bb115:
  %v320 = sea.const 5 : i64 loc(".02.i.i.4"("aws-c-common/source/hash_table.c":791:0))
  %v321 = sea.add %v137, %v320 : i64 loc(".02.i.i.4"("aws-c-common/source/hash_table.c":791:0))
  %v322 = sea.icmp ult, %v321, %v140 : i64 loc(".not3.i.i.not.not.not.not.4.not"("aws-c-common/source/hash_table.c":791:35))
  %v323 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":791:5)
  sea.cond_br %v322, ^bb116, ^bb130(%v323 : i1) loc("aws-c-common/source/hash_table.c":791:5)
^bb116:
  %v324 = sea.ptr.index %v146 [%v321] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_234"("aws-c-common/source/hash_table.c":794:20))
  %v325 = sea.const 8 : i64 loc("_235"("aws-c-common/source/hash_table.c":794:20))
  %v326 = sea.ptr.dereferenceable %v324, %v325 : !sea.ptr<64>, i64 loc("_235"("aws-c-common/source/hash_table.c":794:20))
  sea.cond_br %v326, ^bb117, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb117:
  %v327 = sea.load %v66[%v324] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_237"("aws-c-common/source/hash_table.c":794:20))
  %v328 = sea.const 0 : i64 loc(".not.i.i.4"("aws-c-common/source/hash_table.c":794:13))
  %v329 = sea.icmp eq, %v327, %v328 : i64 loc(".not.i.i.4"("aws-c-common/source/hash_table.c":794:13))
  sea.cond_br %v329, ^bb118, ^bb127(%v321 : i64) loc("aws-c-common/source/hash_table.c":794:13)
^bb118:
  %v330 = sea.const 6 : i64 loc(".02.i.i.5"("aws-c-common/source/hash_table.c":791:0))
  %v331 = sea.add %v137, %v330 : i64 loc(".02.i.i.5"("aws-c-common/source/hash_table.c":791:0))
  %v332 = sea.icmp ult, %v331, %v140 : i64 loc(".not3.i.i.not.not.not.not.5.not"("aws-c-common/source/hash_table.c":791:35))
  %v333 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":791:5)
  sea.cond_br %v332, ^bb119, ^bb130(%v333 : i1) loc("aws-c-common/source/hash_table.c":791:5)
^bb119:
  %v334 = sea.ptr.index %v146 [%v331] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_239"("aws-c-common/source/hash_table.c":794:20))
  %v335 = sea.const 8 : i64 loc("_240"("aws-c-common/source/hash_table.c":794:20))
  %v336 = sea.ptr.dereferenceable %v334, %v335 : !sea.ptr<64>, i64 loc("_240"("aws-c-common/source/hash_table.c":794:20))
  sea.cond_br %v336, ^bb120, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb120:
  %v337 = sea.load %v66[%v334] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_242"("aws-c-common/source/hash_table.c":794:20))
  %v338 = sea.const 0 : i64 loc(".not.i.i.5"("aws-c-common/source/hash_table.c":794:13))
  %v339 = sea.icmp eq, %v337, %v338 : i64 loc(".not.i.i.5"("aws-c-common/source/hash_table.c":794:13))
  sea.cond_br %v339, ^bb121, ^bb127(%v331 : i64) loc("aws-c-common/source/hash_table.c":794:13)
^bb121:
  %v340 = sea.const 7 : i64 loc(".02.i.i.6"("aws-c-common/source/hash_table.c":791:0))
  %v341 = sea.add %v137, %v340 : i64 loc(".02.i.i.6"("aws-c-common/source/hash_table.c":791:0))
  %v342 = sea.icmp ult, %v341, %v140 : i64 loc(".not3.i.i.not.not.not.not.6.not"("aws-c-common/source/hash_table.c":791:35))
  %v343 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":791:5)
  sea.cond_br %v342, ^bb122, ^bb130(%v343 : i1) loc("aws-c-common/source/hash_table.c":791:5)
^bb122:
  %v344 = sea.ptr.index %v146 [%v341] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_244"("aws-c-common/source/hash_table.c":794:20))
  %v345 = sea.const 8 : i64 loc("_245"("aws-c-common/source/hash_table.c":794:20))
  %v346 = sea.ptr.dereferenceable %v344, %v345 : !sea.ptr<64>, i64 loc("_245"("aws-c-common/source/hash_table.c":794:20))
  sea.cond_br %v346, ^bb123, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb123:
  %v347 = sea.load %v66[%v344] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_247"("aws-c-common/source/hash_table.c":794:20))
  %v348 = sea.const 0 : i64 loc(".not.i.i.6"("aws-c-common/source/hash_table.c":794:13))
  %v349 = sea.icmp eq, %v347, %v348 : i64 loc(".not.i.i.6"("aws-c-common/source/hash_table.c":794:13))
  sea.cond_br %v349, ^bb124, ^bb127(%v341 : i64) loc("aws-c-common/source/hash_table.c":794:13)
^bb124:
  %v350 = sea.const 8 : i64 loc(".02.i.i.7"("aws-c-common/source/hash_table.c":791:0))
  %v351 = sea.add %v137, %v350 : i64 loc(".02.i.i.7"("aws-c-common/source/hash_table.c":791:0))
  %v352 = sea.icmp ult, %v351, %v140 : i64 loc(".not3.i.i.not.not.not.not.7.not"("aws-c-common/source/hash_table.c":791:35))
  %v353 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":791:5)
  sea.cond_br %v352, ^bb125, ^bb130(%v353 : i1) loc("aws-c-common/source/hash_table.c":791:5)
^bb125:
  %v354 = sea.ptr.index %v146 [%v351] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_249"("aws-c-common/source/hash_table.c":794:20))
  %v355 = sea.const 8 : i64 loc("_250"("aws-c-common/source/hash_table.c":794:20))
  %v356 = sea.ptr.dereferenceable %v354, %v355 : !sea.ptr<64>, i64 loc("_250"("aws-c-common/source/hash_table.c":794:20))
  sea.cond_br %v356, ^bb126, ^bb238(%v145, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb126:
  %v357 = sea.load %v66[%v354] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_252"("aws-c-common/source/hash_table.c":794:20))
  %v358 = sea.const 0 : i64 loc(".not.i.i.7"("aws-c-common/source/hash_table.c":794:13))
  %v359 = sea.icmp eq, %v357, %v358 : i64 loc(".not.i.i.7"("aws-c-common/source/hash_table.c":794:13))
  sea.cond_br %v359, ^bb129, ^bb127(%v351 : i64) loc("aws-c-common/source/hash_table.c":794:13)
^bb127(%v360 : i64):
  %v361 = sea.ptr.index %v146 [%v360] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_254")
  %v362 = sea.const 16 : i64 loc("aws-c-common/source/hash_table.c":795:36)
  %v363 = sea.memmove %v145[%v132], %v85[%v361], %v362 inplace align 8 src_align 8 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/source/hash_table.c":795:36)
  sea.br ^bb128
^bb128:
  %v364 = sea.store %v363[%v138], %v360 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/hash_table.c":796:24)
  %v365 = sea.const 0 : i1
  %v366 = sea.const 2 : i32
  sea.br ^bb135(%v364, %v365, %v360, %v366 : !sea.mem<!sea.ptr<64>, i8>, i1, i64, i32)
^bb129:
  %v367 = sea.const 9 : i64 loc(".02.i.i"("aws-c-common/source/hash_table.c":791:0))
  %v368 = sea.add %v137, %v367 : i64 loc(".02.i.i"("aws-c-common/source/hash_table.c":791:0))
  %v369 = sea.icmp uge, %v368, %v140 : i64 loc(".not3.i.i.not.not.not.not"("aws-c-common/source/hash_table.c":791:35))
  sea.assume %v369
  sea.br ^bb130(%v369 : i1) loc("aws-c-common/source/hash_table.c":791:5)
^bb130(%v370 : i1):
  sea.br ^bb131
^bb131:
  %v371 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":801:23)
  %v372 = sea.store %v145[%v132], %v371 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":801:23)
  sea.br ^bb132
^bb132:
  %v373 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":802:25)
  %v374 = sea.store %v372[%v135], %v373 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":802:25)
  sea.br ^bb133
^bb133:
  sea.br ^bb134
^bb134:
  %v375 = sea.store %v374[%v138], %v140 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/hash_table.c":803:16)
  %v376 = sea.const 0 : i32
  sea.br ^bb135(%v375, %v370, %v140, %v376 : !sea.mem<!sea.ptr<64>, i8>, i1, i64, i32)
^bb135(%v377 : !sea.mem<!sea.ptr<64>, i8>, %v378 : i1, %v379 : i64, %v380 : i32):
  %v381 = sea.store %v377[%v144], %v380 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("aws-c-common/source/hash_table.c":0:0)
  sea.br ^bb136
^bb136:
  sea.br ^bb137
^bb137:
  sea.br ^bb138
^bb138:
  sea.br ^bb139
^bb139:
  %v382 = sea.const 8 : i64 loc("_266"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v383 = sea.ptr.dereferenceable %v146, %v382 : !sea.ptr<64>, i64 loc("_266"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v383, ^bb140, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb140:
  %v384 = sea.load %v381[%v146] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_268"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v385 = sea.ptr.null : !sea.ptr<64> loc("_269"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v386 = sea.ptr.cmp ne, %v384, %v385 : !sea.ptr<64> loc("_269"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v387 = sea.ptr.index %v146 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_270"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v388 = sea.const 8 : i64 loc("_271"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v389 = sea.ptr.dereferenceable %v387, %v388 : !sea.ptr<64>, i64 loc("_271"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v389, ^bb141, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb141:
  %v390 = sea.load %v381[%v387] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_273"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v391 = sea.ptr.null : !sea.ptr<64> loc("_274"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v392 = sea.ptr.cmp ne, %v390, %v391 : !sea.ptr<64> loc("_274"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v393 = sea.ptr.index %v146 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_275"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v394 = sea.const 8 : i64 loc("_276"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v395 = sea.ptr.dereferenceable %v393, %v394 : !sea.ptr<64>, i64 loc("_276"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v395, ^bb142, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb142:
  %v396 = sea.load %v381[%v393] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_278"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v397 = sea.ptr.null : !sea.ptr<64> loc("_279"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v398 = sea.ptr.cmp ne, %v396, %v397 : !sea.ptr<64> loc("_279"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v399 = sea.const 8 : i64 loc("_280"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v400 = sea.ptr.dereferenceable %v247, %v399 : !sea.ptr<64>, i64 loc("_280"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v400, ^bb143, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb143:
  %v401 = sea.const 1 : i64 loc("_282"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v402 = sea.icmp ugt, %v250, %v401 : i64 loc("_282"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v403 = sea.const 8 : i64 loc("_283"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v404 = sea.ptr.dereferenceable %v247, %v403 : !sea.ptr<64>, i64 loc("_283"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v404, ^bb144, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb144:
  %v405 = sea.ctpop %v250 : i64 loc("_285"("aws-c-common/include/aws/common/math.inl":161:14))
  %v406 = sea.const 1 : i64 loc("_286"("aws-c-common/include/aws/common/math.inl":161:14))
  %v407 = sea.icmp eq, %v405, %v406 : i64 loc("_286"("aws-c-common/include/aws/common/math.inl":161:14))
  %v408 = sea.ptr.index %v146 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_287"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v409 = sea.const 8 : i64 loc("_288"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v410 = sea.ptr.dereferenceable %v408, %v409 : !sea.ptr<64>, i64 loc("_288"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v410, ^bb145, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb145:
  %v411 = sea.load %v381[%v408] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_290"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v412 = sea.ptr.index %v146 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_291"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v413 = sea.const 8 : i64 loc("_292"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v414 = sea.ptr.dereferenceable %v412, %v413 : !sea.ptr<64>, i64 loc("_292"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v414, ^bb146, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb146:
  %v415 = sea.load %v381[%v412] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_294"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v416 = sea.icmp ule, %v411, %v415 : i64 loc("_295"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v417 = sea.const 8 : i64 loc("_296"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v418 = sea.ptr.dereferenceable %v412, %v417 : !sea.ptr<64>, i64 loc("_296"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v418, ^bb147, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb147:
  %v419 = sea.const 8 : i64 loc("_298"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v420 = sea.ptr.dereferenceable %v247, %v419 : !sea.ptr<64>, i64 loc("_298"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v420, ^bb148, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb148:
  %v421 = sea.icmp ult, %v415, %v250 : i64 loc("_300"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v422 = sea.ptr.index %v146 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_301"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v423 = sea.const 8 : i64 loc("_302"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v424 = sea.ptr.dereferenceable %v422, %v423 : !sea.ptr<64>, i64 loc("_302"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v424, ^bb149, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb149:
  %v425 = sea.load %v381[%v422] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_304"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v426 = sea.const 8 : i64 loc("_305"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v427 = sea.ptr.dereferenceable %v247, %v426 : !sea.ptr<64>, i64 loc("_305"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v427, ^bb150, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb150:
  %v428 = sea.const 8 : i64 loc("_307"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v429 = sea.ptr.dereferenceable %v247, %v428 : !sea.ptr<64>, i64 loc("_307"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v429, ^bb151, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb151:
  %v430 = sea.const 18446744073709551615 : i64 loc("_308"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v431 = sea.add %v250, %v430 : i64 loc("_308"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v432 = sea.icmp eq, %v425, %v431 : i64 loc("_309"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
  %v433 = sea.const 0 : i1 loc("or.cond.i64.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v434 = sea.select %v386, %v392, %v433 : i1 loc("or.cond.i64.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v435 = sea.const 0 : i1 loc("or.cond3.i65.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v436 = sea.select %v434, %v398, %v435 : i1 loc("or.cond3.i65.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v437 = sea.const 0 : i1 loc("or.cond5.i66.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v438 = sea.select %v436, %v402, %v437 : i1 loc("or.cond5.i66.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v439 = sea.const 0 : i1 loc("or.cond7.i67.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v440 = sea.select %v438, %v407, %v439 : i1 loc("or.cond7.i67.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v441 = sea.const 0 : i1 loc("or.cond9.i68.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v442 = sea.select %v440, %v416, %v441 : i1 loc("or.cond9.i68.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v443 = sea.const 0 : i1 loc("or.cond11.i69.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v444 = sea.select %v442, %v421, %v443 : i1 loc("or.cond11.i69.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v445 = sea.const 0 : i1 loc("or.cond13.i70.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v446 = sea.select %v444, %v432, %v445 : i1 loc("or.cond13.i70.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v447 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1065:9)
  sea.cond_br %v446, ^bb152, ^bb170(%v447 : i1) loc("aws-c-common/source/hash_table.c":1065:9)
^bb152:
  sea.br ^bb153
^bb153:
  sea.br ^bb154
^bb154:
  sea.br ^bb155
^bb155:
  %v448 = sea.const 8 : i64 loc("_314"("aws-c-common/source/hash_table.c":1068:42))
  %v449 = sea.ptr.dereferenceable %v247, %v448 : !sea.ptr<64>, i64 loc("_314"("aws-c-common/source/hash_table.c":1068:42))
  sea.cond_br %v449, ^bb156, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb156:
  %v450 = sea.icmp ugt, %v140, %v250 : i64 loc("_316"("aws-c-common/source/hash_table.c":1068:21))
  %v451 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1068:9)
  sea.cond_br %v450, ^bb170(%v451 : i1), ^bb157 loc("aws-c-common/source/hash_table.c":1068:9)
^bb157:
  sea.br ^bb158
^bb158:
  sea.cond_br %v378, ^bb167, ^bb159
^bb159:
  sea.br ^bb160
^bb160:
  sea.br ^bb161
^bb161:
  %v452 = sea.icmp ult, %v379, %v140 : i64 loc("_323"("aws-c-common/source/hash_table.c":1082:31))
  %v453 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1082:45)
  sea.cond_br %v452, ^bb162, ^bb170(%v453 : i1) loc("aws-c-common/source/hash_table.c":1082:45)
^bb162:
  sea.br ^bb163
^bb163:
  sea.br ^bb164
^bb164:
  sea.br ^bb165
^bb165:
  %v454 = sea.ptr.index %v146 [%v379] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_328"("aws-c-common/source/hash_table.c":1082:85))
  %v455 = sea.const 8 : i64 loc("_329"("aws-c-common/source/hash_table.c":1082:85))
  %v456 = sea.ptr.dereferenceable %v454, %v455 : !sea.ptr<64>, i64 loc("_329"("aws-c-common/source/hash_table.c":1082:85))
  sea.cond_br %v456, ^bb166, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb166:
  %v457 = sea.load %v381[%v454] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_331"("aws-c-common/source/hash_table.c":1082:85))
  %v458 = sea.const 0 : i64 loc("_332"("aws-c-common/source/hash_table.c":1082:95))
  %v459 = sea.icmp ne, %v457, %v458 : i64 loc("_332"("aws-c-common/source/hash_table.c":1082:95))
  sea.br ^bb170(%v459 : i1)
^bb167:
  sea.br ^bb168
^bb168:
  sea.br ^bb169
^bb169:
  %v460 = sea.icmp eq, %v379, %v140 : i64 loc("_320"("aws-c-common/source/hash_table.c":1075:31))
  sea.br ^bb170(%v460 : i1) loc("aws-c-common/source/hash_table.c":1075:13)
^bb170(%v461 : i1):
  sea.br ^bb171
^bb171:
  sea.br ^bb172
^bb172:
  sea.br ^bb173
^bb173:
  sea.br ^bb174
^bb174:
  %v462 = sea.const 8 : i64 loc("_337"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v463 = sea.ptr.dereferenceable %v146, %v462 : !sea.ptr<64>, i64 loc("_337"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v463, ^bb175, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb175:
  %v464 = sea.const 8 : i64 loc("_339"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v465 = sea.ptr.dereferenceable %v387, %v464 : !sea.ptr<64>, i64 loc("_339"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v465, ^bb176, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb176:
  %v466 = sea.const 8 : i64 loc("_341"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v467 = sea.ptr.dereferenceable %v393, %v466 : !sea.ptr<64>, i64 loc("_341"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v467, ^bb177, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb177:
  %v468 = sea.const 8 : i64 loc("_343"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v469 = sea.ptr.dereferenceable %v247, %v468 : !sea.ptr<64>, i64 loc("_343"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v469, ^bb178, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb178:
  %v470 = sea.const 8 : i64 loc("_345"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v471 = sea.ptr.dereferenceable %v247, %v470 : !sea.ptr<64>, i64 loc("_345"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v471, ^bb179, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb179:
  %v472 = sea.const 8 : i64 loc("_347"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v473 = sea.ptr.dereferenceable %v408, %v472 : !sea.ptr<64>, i64 loc("_347"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v473, ^bb180, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb180:
  %v474 = sea.const 8 : i64 loc("_349"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v475 = sea.ptr.dereferenceable %v412, %v474 : !sea.ptr<64>, i64 loc("_349"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v475, ^bb181, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb181:
  %v476 = sea.const 8 : i64 loc("_351"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v477 = sea.ptr.dereferenceable %v412, %v476 : !sea.ptr<64>, i64 loc("_351"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v477, ^bb182, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb182:
  %v478 = sea.const 8 : i64 loc("_353"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v479 = sea.ptr.dereferenceable %v247, %v478 : !sea.ptr<64>, i64 loc("_353"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v479, ^bb183, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb183:
  %v480 = sea.const 8 : i64 loc("_355"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v481 = sea.ptr.dereferenceable %v422, %v480 : !sea.ptr<64>, i64 loc("_355"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v481, ^bb184, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb184:
  %v482 = sea.const 8 : i64 loc("_357"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v483 = sea.ptr.dereferenceable %v247, %v482 : !sea.ptr<64>, i64 loc("_357"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v483, ^bb185, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb185:
  %v484 = sea.const 8 : i64 loc("_359"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v485 = sea.ptr.dereferenceable %v247, %v484 : !sea.ptr<64>, i64 loc("_359"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v486 = sea.and %v485, %v446 : i1 loc("brmerge.demorgan")
  sea.cond_br %v486, ^bb186, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb186:
  sea.br ^bb187
^bb187:
  sea.br ^bb188
^bb188:
  sea.br ^bb189
^bb189:
  %v487 = sea.const 8 : i64 loc("_364"("aws-c-common/source/hash_table.c":1068:42))
  %v488 = sea.ptr.dereferenceable %v247, %v487 : !sea.ptr<64>, i64 loc("_364"("aws-c-common/source/hash_table.c":1068:42))
  %v489 = sea.icmp ule, %v140, %v250 : i64 loc("_365")
  %v490 = sea.const 0 : i1 loc("or.cond26.not")
  %v491 = sea.select %v488, %v489, %v490 : i1 loc("or.cond26.not")
  sea.cond_br %v491, ^bb190, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb190:
  sea.br ^bb191
^bb191:
  sea.cond_br %v378, ^bb199, ^bb192
^bb192:
  sea.br ^bb193
^bb193:
  %v492 = sea.icmp ult, %v379, %v140 : i64 loc("_370")
  %v493 = sea.const 1 : i1 loc("or.cond22")
  %v494 = sea.const 0 : i1 loc("or.cond22")
  %v495 = sea.select %v493, %v492, %v494 : i1 loc("or.cond22")
  sea.cond_br %v495, ^bb194, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb194:
  sea.br ^bb195
^bb195:
  sea.br ^bb196
^bb196:
  sea.br ^bb197
^bb197:
  %v496 = sea.ptr.index %v146 [%v379] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_375"("aws-c-common/source/hash_table.c":1082:85))
  %v497 = sea.const 8 : i64 loc("_376"("aws-c-common/source/hash_table.c":1082:85))
  %v498 = sea.ptr.dereferenceable %v496, %v497 : !sea.ptr<64>, i64 loc("_376"("aws-c-common/source/hash_table.c":1082:85))
  sea.cond_br %v498, ^bb198, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb198:
  %v499 = sea.load %v381[%v496] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_377"("aws-c-common/source/hash_table.c":1082:85))
  %v500 = sea.const 0 : i64 loc(".not"("aws-c-common/source/hash_table.c":1082:95))
  %v501 = sea.icmp eq, %v499, %v500 : i64 loc(".not"("aws-c-common/source/hash_table.c":1082:95))
  sea.cond_br %v501, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>), ^bb201 loc("seahorn/jobs/hash_iter_next/aws_hash_iter_next_harness.c":28:3)
^bb199:
  sea.br ^bb200
^bb200:
  %v502 = sea.icmp eq, %v379, %v140 : i64 loc("_368")
  %v503 = sea.const 1 : i1 loc("or.cond27")
  %v504 = sea.const 0 : i1 loc("or.cond27")
  %v505 = sea.select %v503, %v502, %v504 : i1 loc("or.cond27")
  sea.cond_br %v505, ^bb201, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb201:
  %v506 = sea.const 1 : i1 loc("seahorn/jobs/hash_iter_next/aws_hash_iter_next_harness.c":33:3)
  sea.assume %v506 loc("seahorn/jobs/hash_iter_next/aws_hash_iter_next_harness.c":33:3)
  %v507 = sea.const 0 : i32 loc("_378"("seahorn/jobs/hash_iter_next/aws_hash_iter_next_harness.c":36:3))
  %v508 = sea.icmp ne, %v143, %v507 : i32 loc("_378"("seahorn/jobs/hash_iter_next/aws_hash_iter_next_harness.c":36:3))
  %v509 = sea.or %v508, %v378 : i1 loc("_379"("seahorn/jobs/hash_iter_next/aws_hash_iter_next_harness.c":36:3))
  sea.cond_br %v509, ^bb202, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/jobs/hash_iter_next/aws_hash_iter_next_harness.c":36:3)
^bb202:
  sea.br ^bb203
^bb203:
  sea.br ^bb204
^bb204:
  %v510 = sea.const 8 : i64 loc("_383"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v511 = sea.ptr.dereferenceable %v146, %v510 : !sea.ptr<64>, i64 loc("_383"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v511, ^bb205, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb205:
  %v512 = sea.const 8 : i64 loc("_385"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v513 = sea.ptr.dereferenceable %v387, %v512 : !sea.ptr<64>, i64 loc("_385"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v513, ^bb206, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb206:
  %v514 = sea.const 8 : i64 loc("_387"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v515 = sea.ptr.dereferenceable %v393, %v514 : !sea.ptr<64>, i64 loc("_387"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v515, ^bb207, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb207:
  %v516 = sea.const 8 : i64 loc("_389"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v517 = sea.ptr.dereferenceable %v247, %v516 : !sea.ptr<64>, i64 loc("_389"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v517, ^bb208, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb208:
  %v518 = sea.const 8 : i64 loc("_391"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v519 = sea.ptr.dereferenceable %v247, %v518 : !sea.ptr<64>, i64 loc("_391"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v519, ^bb209, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb209:
  %v520 = sea.const 8 : i64 loc("_393"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v521 = sea.ptr.dereferenceable %v408, %v520 : !sea.ptr<64>, i64 loc("_393"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v521, ^bb210, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb210:
  %v522 = sea.const 8 : i64 loc("_395"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v523 = sea.ptr.dereferenceable %v412, %v522 : !sea.ptr<64>, i64 loc("_395"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v523, ^bb211, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb211:
  %v524 = sea.const 8 : i64 loc("_397"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v525 = sea.ptr.dereferenceable %v412, %v524 : !sea.ptr<64>, i64 loc("_397"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v525, ^bb212, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb212:
  %v526 = sea.const 8 : i64 loc("_399"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v527 = sea.ptr.dereferenceable %v247, %v526 : !sea.ptr<64>, i64 loc("_399"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v527, ^bb213, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb213:
  %v528 = sea.const 8 : i64 loc("_401"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v529 = sea.ptr.dereferenceable %v422, %v528 : !sea.ptr<64>, i64 loc("_401"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v529, ^bb214, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb214:
  %v530 = sea.const 8 : i64 loc("_403"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v531 = sea.ptr.dereferenceable %v247, %v530 : !sea.ptr<64>, i64 loc("_403"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v531, ^bb215, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb215:
  %v532 = sea.const 8 : i64 loc("_405"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v533 = sea.ptr.dereferenceable %v247, %v532 : !sea.ptr<64>, i64 loc("_405"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v533, ^bb216, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb216:
  sea.br ^bb217
^bb217:
  sea.br ^bb218
^bb218:
  %v534 = sea.const 8 : i64 loc("_408"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v535 = sea.ptr.dereferenceable %v146, %v534 : !sea.ptr<64>, i64 loc("_408"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v535, ^bb219, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb219:
  %v536 = sea.const 8 : i64 loc("_410"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v537 = sea.ptr.dereferenceable %v387, %v536 : !sea.ptr<64>, i64 loc("_410"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v537, ^bb220, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb220:
  %v538 = sea.const 8 : i64 loc("_412"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v539 = sea.ptr.dereferenceable %v393, %v538 : !sea.ptr<64>, i64 loc("_412"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v539, ^bb221, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb221:
  %v540 = sea.const 8 : i64 loc("_414"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v541 = sea.ptr.dereferenceable %v247, %v540 : !sea.ptr<64>, i64 loc("_414"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v541, ^bb222, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb222:
  %v542 = sea.const 8 : i64 loc("_416"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v543 = sea.ptr.dereferenceable %v247, %v542 : !sea.ptr<64>, i64 loc("_416"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v543, ^bb223, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb223:
  %v544 = sea.const 8 : i64 loc("_418"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v545 = sea.ptr.dereferenceable %v408, %v544 : !sea.ptr<64>, i64 loc("_418"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v545, ^bb224, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb224:
  %v546 = sea.const 8 : i64 loc("_420"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v547 = sea.ptr.dereferenceable %v412, %v546 : !sea.ptr<64>, i64 loc("_420"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v547, ^bb225, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb225:
  %v548 = sea.const 8 : i64 loc("_422"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v549 = sea.ptr.dereferenceable %v412, %v548 : !sea.ptr<64>, i64 loc("_422"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v549, ^bb226, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb226:
  %v550 = sea.const 8 : i64 loc("_424"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v551 = sea.ptr.dereferenceable %v247, %v550 : !sea.ptr<64>, i64 loc("_424"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v551, ^bb227, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb227:
  %v552 = sea.const 8 : i64 loc("_426"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v553 = sea.ptr.dereferenceable %v422, %v552 : !sea.ptr<64>, i64 loc("_426"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v553, ^bb228, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb228:
  %v554 = sea.const 8 : i64 loc("_428"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v555 = sea.ptr.dereferenceable %v247, %v554 : !sea.ptr<64>, i64 loc("_428"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v555, ^bb229, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb229:
  %v556 = sea.const 8 : i64 loc("_430"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v557 = sea.ptr.dereferenceable %v247, %v556 : !sea.ptr<64>, i64 loc("_430"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v557, ^bb230, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb230:
  sea.br ^bb231
^bb231:
  %v558 = sea.const 1 : i1 loc("seahorn/lib/utils.c":39:14)
  sea.assume %v558 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb232
^bb232:
  %v559 = sea.ptr.index %v146 [%v265] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_432"("seahorn/lib/utils.c":40:5))
  %v560 = sea.const 1 : i64 loc("_433"("seahorn/lib/utils.c":40:5))
  %v561 = sea.ptr.dereferenceable %v559, %v560 : !sea.ptr<64>, i64 loc("_433"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v561, ^bb233, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb233:
  %v562 = sea.load %v381[%v559] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_435"("seahorn/lib/utils.c":40:5))
  sea.br ^bb234
^bb234:
  %v563 = sea.icmp eq, %v562, %v279 : i8 loc("_437"("seahorn/lib/utils.c":40:5))
  sea.br ^bb235
^bb235:
  %v564 = sea.const 1 : i64 loc("_439"("seahorn/lib/utils.c":40:5))
  %v565 = sea.ptr.dereferenceable %v559, %v564 : !sea.ptr<64>, i64 loc("_439"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v565, ^bb236, ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb236:
  sea.br ^bb237
^bb237:
  %v566 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v567 = sea.xor %v563, %v566 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v567 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb238(%v381, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/lib/utils.c":40:5)
^bb238(%v568 : !sea.mem<!sea.ptr<64>, i8>, %v569 : !sea.mem<!sea.ptr<64>, i8>):
  sea.br ^bb239
^bb239:
  %v570 = sea.const 0 : i1
  sea.assert %v570
  sea.halt
}
