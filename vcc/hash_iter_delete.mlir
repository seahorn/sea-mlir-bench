// Exported from SeaHorn (hash_iter_delete.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.16" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm27")
  %v1 = sea.mem.nondet "region.24" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm28")
  %v2 = sea.mem.nondet "region.0" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm29")
  %v3 = sea.mem.nondet "region.68" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm30")
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
  %v21 = sea.const 5 : i64 loc("_5"("seahorn/lib/hash_table_helper.c":15:22))
  %v22 = sea.icmp ult, %v20, %v21 : i64 loc("_5"("seahorn/lib/hash_table_helper.c":15:22))
  sea.assume %v22 loc("seahorn/lib/hash_table_helper.c":15:3)
  %v23 = sea.ctpop %v20 : i64 loc("_6"("aws-c-common/include/aws/common/math.inl":161:14))
  %v24 = sea.const 1 : i64 loc("_7"("aws-c-common/include/aws/common/math.inl":161:14))
  %v25 = sea.icmp eq, %v23, %v24 : i64 loc("_7"("aws-c-common/include/aws/common/math.inl":161:14))
  sea.assume %v25 loc("seahorn/lib/hash_table_helper.c":16:3)
  %v26 = sea.nondet "nd_size_t" [7] : i64 loc("_8"("seahorn/lib/hash_table_helper.c":18:27))
  sea.br ^bb1
^bb1:
  %v27 = sea.const 24 : i64 loc("_10"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v28 = sea.mul %v20, %v27 : i64 loc("_10"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v29 = sea.const 24 : i64 loc("_10"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v30 = sea.umulo %v20, %v29 : i64 loc("_10"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v31 = sea.const 4294967295 : i32 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
  sea.cond_br %v30, ^bb6(%v26, %v31 : i64, i32), ^bb2 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb2:
  sea.br ^bb3
^bb3:
  %v32 = sea.const 80 : i64 loc("_14"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v33 = sea.add %v28, %v32 : i64 loc("_14"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v34 = sea.const 80 : i64 loc("_14"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v35 = sea.uaddo %v28, %v34 : i64 loc("_14"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v35, ^bb4, ^bb5 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb4:
  sea.br ^bb5 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":71:9)
^bb5:
  %v36 = sea.sext %v35 : i1 to i32 loc("..i.i.i"("aws-c-common/source/hash_table.c":0:0))
  sea.br ^bb6(%v33, %v36 : i64, i32) loc("aws-c-common/source/hash_table.c":0:0)
^bb6(%v37 : i64, %v38 : i32):
  %v39 = sea.const 0 : i32 loc("_19"("seahorn/lib/hash_table_helper.c":20:72))
  %v40 = sea.icmp eq, %v38, %v39 : i32 loc("_19"("seahorn/lib/hash_table_helper.c":20:72))
  sea.assume %v40 loc("seahorn/lib/hash_table_helper.c":20:3)
  %v41 = sea.const 0 : i64 loc("_20"("seahorn/lib/proof_allocators.c":17:15))
  %v42 = sea.icmp eq, %v37, %v41 : i64 loc("_20"("seahorn/lib/proof_allocators.c":17:15))
  %v43 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v42, ^bb10(%v3, %v43 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb7 loc("seahorn/lib/proof_allocators.c":17:10)
^bb7:
  %v44 = sea.nondet "nd_malloc_is_fail" [8] : i1 loc("_22"("seahorn/lib/sea_allocators.c":11:10))
  %v45 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v44, ^bb9(%v3, %v45 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb8 loc("seahorn/lib/sea_allocators.c":11:10)
^bb8:
  %v46 = sea.const 1 : i64 loc("malloc.i")
  %v47 = sea.mul %v37, %v46 : i64 loc("malloc.i")
  %v48 = sea.alloca %v47 align 16 [9] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb9(%v3, %v48 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb9(%v49 : !sea.mem<!sea.ptr<64>, i8>, %v50 : !sea.ptr<64>):
  %v51 = sea.memhavoc %v49[%v50], %v37 [10] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v52 = sea.ptr.null : !sea.ptr<64> loc("_25"("seahorn/lib/sea_allocators.c":45:10))
  %v53 = sea.ptr.cmp ne, %v50, %v52 : !sea.ptr<64> loc("_25"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v53 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb10(%v51, %v50 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb10(%v54 : !sea.mem<!sea.ptr<64>, i8>, %v55 : !sea.ptr<64>):
  %v56 = sea.ptr.index %v55 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_27"("seahorn/lib/hash_table_helper.c":23:9))
  %v57 = sea.const 8 : i64 loc("_28"("seahorn/lib/hash_table_helper.c":23:14))
  %v58 = sea.ptr.dereferenceable %v56, %v57 : !sea.ptr<64>, i64 loc("_28"("seahorn/lib/hash_table_helper.c":23:14))
  sea.cond_br %v58, ^bb11, ^bb201
^bb11:
  %v59 = sea.store %v54[%v56], %v20 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":23:14)
  %v60 = sea.ptr.index %v55 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_30"("seahorn/lib/hash_table_helper.c":24:9))
  %v61 = sea.const 8 : i64 loc("_31"("seahorn/lib/hash_table_helper.c":24:14))
  %v62 = sea.ptr.dereferenceable %v60, %v61 : !sea.ptr<64>, i64 loc("_31"("seahorn/lib/hash_table_helper.c":24:14))
  sea.cond_br %v62, ^bb12, ^bb201
^bb12:
  %v63 = sea.const 18446744073709551615 : i64 loc("_33"("seahorn/lib/hash_table_helper.c":24:28))
  %v64 = sea.add %v20, %v63 : i64 loc("_33"("seahorn/lib/hash_table_helper.c":24:28))
  %v65 = sea.store %v59[%v60], %v64 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":24:14)
  %v66 = sea.ptr.index %v55 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_34"("seahorn/lib/hash_table_helper.c":25:9))
  %v67 = sea.const 8 : i64 loc("_35"("seahorn/lib/hash_table_helper.c":25:25))
  %v68 = sea.ptr.dereferenceable %v66, %v67 : !sea.ptr<64>, i64 loc("_35"("seahorn/lib/hash_table_helper.c":25:25))
  sea.cond_br %v68, ^bb13, ^bb201
^bb13:
  %v69 = sea.const 4606732058837280358 : i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v70 = sea.store %v65[%v66], %v69 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v71 = sea.ptr.index %v55 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_37"("seahorn/lib/hash_table_helper.c":26:9))
  %v72 = sea.const 8 : i64 loc("_38"("seahorn/lib/hash_table_helper.c":26:15))
  %v73 = sea.ptr.dereferenceable %v71, %v72 : !sea.ptr<64>, i64 loc("_38"("seahorn/lib/hash_table_helper.c":26:15))
  sea.cond_br %v73, ^bb14, ^bb201
^bb14:
  %v74 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v75 = sea.store %v70[%v71], %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v76 = sea.const 8 : i64 loc("_40"("seahorn/lib/hash_table_helper.c":27:17))
  %v77 = sea.ptr.dereferenceable %v55, %v76 : !sea.ptr<64>, i64 loc("_40"("seahorn/lib/hash_table_helper.c":27:17))
  sea.cond_br %v77, ^bb15, ^bb201
^bb15:
  %v78 = sea.func_addr @"nd_hash_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v79 = sea.store %v75[%v55], %v78 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v80 = sea.ptr.index %v55 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_42"("seahorn/lib/hash_table_helper.c":28:9))
  %v81 = sea.const 8 : i64 loc("_43"("seahorn/lib/hash_table_helper.c":28:19))
  %v82 = sea.ptr.dereferenceable %v80, %v81 : !sea.ptr<64>, i64 loc("_43"("seahorn/lib/hash_table_helper.c":28:19))
  sea.cond_br %v82, ^bb16, ^bb201
^bb16:
  %v83 = sea.func_addr @"nd_hash_equals_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  %v84 = sea.store %v79[%v80], %v83 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  sea.br ^bb17
^bb17:
  %v85 = sea.store %v0[%v5], %v55 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":37:15)
  sea.br ^bb18
^bb18:
  sea.br ^bb19
^bb19:
  %v86 = sea.const 8 : i64 loc("_47"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v87 = sea.ptr.dereferenceable %v55, %v86 : !sea.ptr<64>, i64 loc("_47"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v87, ^bb20, ^bb201
^bb20:
  %v88 = sea.load %v79[%v55] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_49"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v89 = sea.ptr.null : !sea.ptr<64> loc("_50"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v90 = sea.ptr.cmp ne, %v88, %v89 : !sea.ptr<64> loc("_50"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v91 = sea.const 8 : i64 loc("_51"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v92 = sea.ptr.dereferenceable %v80, %v91 : !sea.ptr<64>, i64 loc("_51"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v92, ^bb21, ^bb201
^bb21:
  %v93 = sea.const 8 : i64 loc("_53"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v94 = sea.ptr.dereferenceable %v71, %v93 : !sea.ptr<64>, i64 loc("_53"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v94, ^bb22, ^bb201
^bb22:
  %v95 = sea.const 8 : i64 loc("_55"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v96 = sea.ptr.dereferenceable %v56, %v95 : !sea.ptr<64>, i64 loc("_55"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v96, ^bb23, ^bb201
^bb23:
  %v97 = sea.const 1 : i64 loc("_57"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v98 = sea.icmp ugt, %v20, %v97 : i64 loc("_57"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v99 = sea.const 8 : i64 loc("_58"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v100 = sea.ptr.dereferenceable %v56, %v99 : !sea.ptr<64>, i64 loc("_58"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v100, ^bb24, ^bb201
^bb24:
  %v101 = sea.ptr.index %v55 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_60"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v102 = sea.const 8 : i64 loc("_61"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v103 = sea.ptr.dereferenceable %v101, %v102 : !sea.ptr<64>, i64 loc("_61"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v103, ^bb25, ^bb201
^bb25:
  %v104 = sea.load %v59[%v101] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_63"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v105 = sea.ptr.index %v55 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_64"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v106 = sea.const 8 : i64 loc("_65"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v107 = sea.ptr.dereferenceable %v105, %v106 : !sea.ptr<64>, i64 loc("_65"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v107, ^bb26, ^bb201
^bb26:
  %v108 = sea.load %v59[%v105] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_67"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v109 = sea.icmp ule, %v104, %v108 : i64 loc("_68"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v110 = sea.const 8 : i64 loc("_69"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v111 = sea.ptr.dereferenceable %v105, %v110 : !sea.ptr<64>, i64 loc("_69"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v111, ^bb27, ^bb201
^bb27:
  %v112 = sea.const 8 : i64 loc("_71"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v113 = sea.ptr.dereferenceable %v56, %v112 : !sea.ptr<64>, i64 loc("_71"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v113, ^bb28, ^bb201
^bb28:
  %v114 = sea.icmp ult, %v108, %v20 : i64 loc("_73"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v115 = sea.const 8 : i64 loc("_74"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v116 = sea.ptr.dereferenceable %v60, %v115 : !sea.ptr<64>, i64 loc("_74"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v116, ^bb29, ^bb201
^bb29:
  %v117 = sea.const 8 : i64 loc("_76"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v118 = sea.ptr.dereferenceable %v56, %v117 : !sea.ptr<64>, i64 loc("_76"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v118, ^bb30, ^bb201
^bb30:
  %v119 = sea.const 8 : i64 loc("_78"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v120 = sea.ptr.dereferenceable %v56, %v119 : !sea.ptr<64>, i64 loc("_78"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v120, ^bb31, ^bb201
^bb31:
  %v121 = sea.const 0 : i1 loc("or.cond5.i62.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v122 = sea.select %v90, %v98, %v121 : i1 loc("or.cond5.i62.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v123 = sea.const 0 : i1 loc("or.cond7.i63.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v124 = sea.select %v122, %v25, %v123 : i1 loc("or.cond7.i63.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v125 = sea.const 0 : i1 loc("or.cond9.i64.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v126 = sea.select %v124, %v109, %v125 : i1 loc("or.cond9.i64.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v127 = sea.const 0 : i1 loc("or.cond11.i65.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v128 = sea.select %v126, %v114, %v127 : i1 loc("or.cond11.i65.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.assume %v128 loc("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":17:3)
  %v129 = sea.ptr.index %v55 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_79"("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":18:22))
  %v130 = sea.const 8 : i64 loc("_80"("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":18:22))
  %v131 = sea.ptr.dereferenceable %v129, %v130 : !sea.ptr<64>, i64 loc("_80"("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":18:22))
  sea.cond_br %v131, ^bb32, ^bb201
^bb32:
  %v132 = sea.load %v59[%v129] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_82"("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":18:22))
  %v133 = sea.func_addr @"hash_proof_destroy_noop.addr" : !sea.ptr<64> loc("_83"("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":18:37))
  %v134 = sea.ptr.cmp eq, %v132, %v133 : !sea.ptr<64> loc("_83"("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":18:37))
  %v135 = sea.const 1 : i1 loc("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":18:64)
  sea.cond_br %v134, ^bb35(%v135 : i1), ^bb33 loc("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":18:64)
^bb33:
  %v136 = sea.const 8 : i64 loc("_85"("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":19:22))
  %v137 = sea.ptr.dereferenceable %v129, %v136 : !sea.ptr<64>, i64 loc("_85"("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":19:22))
  sea.cond_br %v137, ^bb34, ^bb201
^bb34:
  %v138 = sea.ptr.null : !sea.ptr<64> loc("_87"("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":19:37))
  %v139 = sea.ptr.cmp eq, %v132, %v138 : !sea.ptr<64> loc("_87"("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":19:37))
  sea.br ^bb35(%v139 : i1) loc("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":18:64)
^bb35(%v140 : i1):
  sea.assume %v140 loc("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":18:3)
  %v141 = sea.ptr.index %v55 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_90"("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":20:22))
  %v142 = sea.const 8 : i64 loc("_91"("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":20:22))
  %v143 = sea.ptr.dereferenceable %v141, %v142 : !sea.ptr<64>, i64 loc("_91"("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":20:22))
  sea.cond_br %v143, ^bb36, ^bb201
^bb36:
  %v144 = sea.load %v59[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_93"("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":20:22))
  %v145 = sea.func_addr @"hash_proof_destroy_noop.addr" : !sea.ptr<64> loc("_94"("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":20:39))
  %v146 = sea.ptr.cmp eq, %v144, %v145 : !sea.ptr<64> loc("_94"("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":20:39))
  %v147 = sea.const 1 : i1 loc("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":20:66)
  sea.cond_br %v146, ^bb39(%v147 : i1), ^bb37 loc("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":20:66)
^bb37:
  %v148 = sea.const 8 : i64 loc("_96"("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":21:22))
  %v149 = sea.ptr.dereferenceable %v141, %v148 : !sea.ptr<64>, i64 loc("_96"("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":21:22))
  sea.cond_br %v149, ^bb38, ^bb201
^bb38:
  %v150 = sea.ptr.null : !sea.ptr<64> loc("_98"("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":21:39))
  %v151 = sea.ptr.cmp eq, %v144, %v150 : !sea.ptr<64> loc("_98"("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":21:39))
  sea.br ^bb39(%v151 : i1) loc("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":20:66)
^bb39(%v152 : i1):
  sea.assume %v152 loc("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":20:3)
  sea.br ^bb40
^bb40:
  %v153 = sea.const 8 : i64 loc("_102"("seahorn/lib/hash_table_helper.c":79:17))
  %v154 = sea.ptr.dereferenceable %v101, %v153 : !sea.ptr<64>, i64 loc("_102"("seahorn/lib/hash_table_helper.c":79:17))
  sea.cond_br %v154, ^bb41, ^bb201
^bb41:
  %v155 = sea.const 0 : i64 loc("_104"("seahorn/lib/hash_table_helper.c":79:29))
  %v156 = sea.icmp ne, %v104, %v155 : i64 loc("_104"("seahorn/lib/hash_table_helper.c":79:29))
  sea.assume %v156 loc("seahorn/lib/hash_table_helper.c":79:3)
  %v157 = sea.nondet "nd_size_t" [11] : i64 loc("_105"("seahorn/lib/hash_table_helper.c":80:27))
  %v158 = sea.const 8 : i64 loc("_106"("seahorn/lib/hash_table_helper.c":81:34))
  %v159 = sea.ptr.dereferenceable %v56, %v158 : !sea.ptr<64>, i64 loc("_106"("seahorn/lib/hash_table_helper.c":81:34))
  sea.cond_br %v159, ^bb42, ^bb201
^bb42:
  %v160 = sea.icmp ult, %v157, %v20 : i64 loc("_108"("seahorn/lib/hash_table_helper.c":81:25))
  sea.assume %v160 loc("seahorn/lib/hash_table_helper.c":81:3)
  sea.br ^bb43
^bb43:
  %v161 = sea.ptr.index %v55 [%v157] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_110"("seahorn/lib/hash_table_helper.c":83:39))
  %v162 = sea.const 8 : i64 loc("_111"("seahorn/lib/hash_table_helper.c":83:39))
  %v163 = sea.ptr.dereferenceable %v161, %v162 : !sea.ptr<64>, i64 loc("_111"("seahorn/lib/hash_table_helper.c":83:39))
  sea.cond_br %v163, ^bb44, ^bb201
^bb44:
  %v164 = sea.load %v59[%v161] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_112"("seahorn/lib/hash_table_helper.c":83:39))
  %v165 = sea.const 0 : i64 loc("_113"("seahorn/lib/hash_table_helper.c":83:49))
  %v166 = sea.icmp eq, %v164, %v165 : i64 loc("_113"("seahorn/lib/hash_table_helper.c":83:49))
  sea.assume %v166 loc("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":24:3)
  sea.br ^bb45
^bb45:
  %v167 = sea.store %v1[%v7], %v5 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":43:13)
  %v168 = sea.ptr.nondet "nd_voidp" [12] : !sea.ptr<64> loc("_115"("seahorn/lib/hash_table_helper.c":44:23))
  %v169 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_116"("seahorn/lib/hash_table_helper.c":44:9))
  sea.br ^bb46
^bb46:
  %v170 = sea.store %v167[%v169], %v168 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":44:21)
  %v171 = sea.ptr.nondet "nd_voidp" [13] : !sea.ptr<64> loc("_118"("seahorn/lib/hash_table_helper.c":45:25))
  %v172 = sea.ptr.index %v7 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_119"("seahorn/lib/hash_table_helper.c":45:17))
  sea.br ^bb47
^bb47:
  %v173 = sea.store %v170[%v172], %v171 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":45:23)
  %v174 = sea.nondet "nd_size_t" [14] : i64 loc("_121"("seahorn/lib/hash_table_helper.c":46:16))
  %v175 = sea.ptr.index %v7 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_122"("seahorn/lib/hash_table_helper.c":46:9))
  sea.br ^bb48
^bb48:
  %v176 = sea.store %v173[%v175], %v174 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":46:14)
  %v177 = sea.nondet "nd_size_t" [15] : i64 loc("_124"("seahorn/lib/hash_table_helper.c":47:17))
  %v178 = sea.ptr.index %v7 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_125"("seahorn/lib/hash_table_helper.c":47:9))
  sea.br ^bb49
^bb49:
  %v179 = sea.store %v176[%v178], %v177 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":47:15)
  %v180 = sea.nondet "nd_hash_iter_status" [16] : i32 loc("_127"("seahorn/lib/hash_table_helper.c":48:18))
  %v181 = sea.ptr.index %v7 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_128"("seahorn/lib/hash_table_helper.c":48:9))
  sea.br ^bb50
^bb50:
  %v182 = sea.store %v179[%v181], %v180 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("seahorn/lib/hash_table_helper.c":48:16)
  sea.br ^bb51
^bb51:
  sea.br ^bb52
^bb52:
  sea.br ^bb53
^bb53:
  %v183 = sea.load %v85[%v5] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_132"("aws-c-common/source/hash_table.c":1027:24))
  %v184 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i.i.i"("aws-c-common/source/hash_table.c":1027:19))
  %v185 = sea.ptr.cmp eq, %v183, %v184 : !sea.ptr<64> loc(".not1.i.i.i.i"("aws-c-common/source/hash_table.c":1027:19))
  %v186 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1027:31)
  sea.cond_br %v185, ^bb95(%v186 : i1), ^bb54 loc("aws-c-common/source/hash_table.c":1027:31)
^bb54:
  sea.br ^bb55
^bb55:
  %v187 = sea.const 8 : i64 loc("_135"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v188 = sea.ptr.dereferenceable %v183, %v187 : !sea.ptr<64>, i64 loc("_135"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v188, ^bb56, ^bb201
^bb56:
  %v189 = sea.load %v79[%v183] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_137"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v190 = sea.ptr.null : !sea.ptr<64> loc("_138"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v191 = sea.ptr.cmp ne, %v189, %v190 : !sea.ptr<64> loc("_138"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v192 = sea.ptr.index %v183 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_139"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v193 = sea.const 8 : i64 loc("_140"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v194 = sea.ptr.dereferenceable %v192, %v193 : !sea.ptr<64>, i64 loc("_140"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v194, ^bb57, ^bb201
^bb57:
  %v195 = sea.load %v84[%v192] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_142"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v196 = sea.ptr.null : !sea.ptr<64> loc("_143"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v197 = sea.ptr.cmp ne, %v195, %v196 : !sea.ptr<64> loc("_143"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v198 = sea.ptr.index %v183 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_144"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v199 = sea.const 8 : i64 loc("_145"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v200 = sea.ptr.dereferenceable %v198, %v199 : !sea.ptr<64>, i64 loc("_145"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v200, ^bb58, ^bb201
^bb58:
  %v201 = sea.load %v84[%v198] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_147"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v202 = sea.ptr.null : !sea.ptr<64> loc("_148"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v203 = sea.ptr.cmp ne, %v201, %v202 : !sea.ptr<64> loc("_148"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v204 = sea.ptr.index %v183 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_149"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v205 = sea.const 8 : i64 loc("_150"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v206 = sea.ptr.dereferenceable %v204, %v205 : !sea.ptr<64>, i64 loc("_150"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v206, ^bb59, ^bb201
^bb59:
  %v207 = sea.load %v65[%v204] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_152"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v208 = sea.const 1 : i64 loc("_153"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v209 = sea.icmp ugt, %v207, %v208 : i64 loc("_153"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v210 = sea.const 8 : i64 loc("_154"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v211 = sea.ptr.dereferenceable %v204, %v210 : !sea.ptr<64>, i64 loc("_154"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v211, ^bb60, ^bb201
^bb60:
  %v212 = sea.ctpop %v207 : i64 loc("_156"("aws-c-common/include/aws/common/math.inl":161:14))
  %v213 = sea.const 1 : i64 loc("_157"("aws-c-common/include/aws/common/math.inl":161:14))
  %v214 = sea.icmp eq, %v212, %v213 : i64 loc("_157"("aws-c-common/include/aws/common/math.inl":161:14))
  %v215 = sea.ptr.index %v183 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_158"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v216 = sea.const 8 : i64 loc("_159"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v217 = sea.ptr.dereferenceable %v215, %v216 : !sea.ptr<64>, i64 loc("_159"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v217, ^bb61, ^bb201
^bb61:
  %v218 = sea.load %v59[%v215] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_161"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v219 = sea.ptr.index %v183 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_162"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v220 = sea.const 8 : i64 loc("_163"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v221 = sea.ptr.dereferenceable %v219, %v220 : !sea.ptr<64>, i64 loc("_163"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v221, ^bb62, ^bb201
^bb62:
  %v222 = sea.load %v59[%v219] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_165"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v223 = sea.icmp ule, %v218, %v222 : i64 loc("_166"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v224 = sea.const 8 : i64 loc("_167"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v225 = sea.ptr.dereferenceable %v219, %v224 : !sea.ptr<64>, i64 loc("_167"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v225, ^bb63, ^bb201
^bb63:
  %v226 = sea.const 8 : i64 loc("_169"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v227 = sea.ptr.dereferenceable %v204, %v226 : !sea.ptr<64>, i64 loc("_169"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v227, ^bb64, ^bb201
^bb64:
  %v228 = sea.icmp ult, %v222, %v207 : i64 loc("_171"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v229 = sea.ptr.index %v183 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_172"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v230 = sea.const 8 : i64 loc("_173"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v231 = sea.ptr.dereferenceable %v229, %v230 : !sea.ptr<64>, i64 loc("_173"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v231, ^bb65, ^bb201
^bb65:
  %v232 = sea.load %v65[%v229] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_175"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v233 = sea.const 8 : i64 loc("_176"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v234 = sea.ptr.dereferenceable %v204, %v233 : !sea.ptr<64>, i64 loc("_176"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v234, ^bb66, ^bb201
^bb66:
  %v235 = sea.const 8 : i64 loc("_178"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v236 = sea.ptr.dereferenceable %v204, %v235 : !sea.ptr<64>, i64 loc("_178"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v236, ^bb67, ^bb201
^bb67:
  %v237 = sea.const 18446744073709551615 : i64 loc("_179"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v238 = sea.add %v207, %v237 : i64 loc("_179"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v239 = sea.icmp eq, %v232, %v238 : i64 loc("_180"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
  %v240 = sea.const 0 : i1 loc("or.cond.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v241 = sea.select %v191, %v197, %v240 : i1 loc("or.cond.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v242 = sea.const 0 : i1 loc("or.cond3.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v243 = sea.select %v241, %v203, %v242 : i1 loc("or.cond3.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v244 = sea.const 0 : i1 loc("or.cond5.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v245 = sea.select %v243, %v209, %v244 : i1 loc("or.cond5.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v246 = sea.const 0 : i1 loc("or.cond7.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v247 = sea.select %v245, %v214, %v246 : i1 loc("or.cond7.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v248 = sea.const 0 : i1 loc("or.cond9.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v249 = sea.select %v247, %v223, %v248 : i1 loc("or.cond9.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v250 = sea.const 0 : i1 loc("or.cond11.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v251 = sea.select %v249, %v228, %v250 : i1 loc("or.cond11.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v252 = sea.const 0 : i1 loc("or.cond13.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v253 = sea.select %v251, %v239, %v252 : i1 loc("or.cond13.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v254 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1065:9)
  sea.cond_br %v253, ^bb68, ^bb95(%v254 : i1) loc("aws-c-common/source/hash_table.c":1065:9)
^bb68:
  sea.br ^bb69
^bb69:
  sea.br ^bb70
^bb70:
  sea.br ^bb71
^bb71:
  %v255 = sea.const 8 : i64 loc("_185"("aws-c-common/source/hash_table.c":1068:42))
  %v256 = sea.ptr.dereferenceable %v204, %v255 : !sea.ptr<64>, i64 loc("_185"("aws-c-common/source/hash_table.c":1068:42))
  sea.cond_br %v256, ^bb72, ^bb201
^bb72:
  %v257 = sea.icmp ugt, %v177, %v207 : i64 loc("_187"("aws-c-common/source/hash_table.c":1068:21))
  %v258 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1068:9)
  sea.cond_br %v257, ^bb95(%v258 : i1), ^bb73 loc("aws-c-common/source/hash_table.c":1068:9)
^bb73:
  sea.br ^bb74
^bb74:
  %v259 = sea.const 1 : i32 loc("Pivot6.i.i.i")
  %v260 = sea.icmp slt, %v180, %v259 : i32 loc("Pivot6.i.i.i")
  sea.cond_br %v260, ^bb91, ^bb75
^bb75:
  sea.br ^bb76
^bb76:
  %v261 = sea.const 2 : i32 loc("Pivot")
  %v262 = sea.icmp slt, %v180, %v261 : i32 loc("Pivot")
  sea.cond_br %v262, ^bb86, ^bb77
^bb77:
  %v263 = sea.const 2 : i32 loc("SwitchLeaf")
  %v264 = sea.icmp eq, %v180, %v263 : i32 loc("SwitchLeaf")
  %v265 = sea.const 0 : i1
  sea.cond_br %v264, ^bb78, ^bb95(%v265 : i1)
^bb78:
  sea.br ^bb79
^bb79:
  sea.br ^bb80
^bb80:
  %v266 = sea.icmp ult, %v174, %v177 : i64 loc("_202"("aws-c-common/source/hash_table.c":1082:31))
  %v267 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1082:45)
  sea.cond_br %v266, ^bb81, ^bb95(%v267 : i1) loc("aws-c-common/source/hash_table.c":1082:45)
^bb81:
  sea.br ^bb82
^bb82:
  sea.br ^bb83
^bb83:
  sea.br ^bb84
^bb84:
  %v268 = sea.ptr.index %v183 [%v174] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_207"("aws-c-common/source/hash_table.c":1082:85))
  %v269 = sea.const 8 : i64 loc("_208"("aws-c-common/source/hash_table.c":1082:85))
  %v270 = sea.ptr.dereferenceable %v268, %v269 : !sea.ptr<64>, i64 loc("_208"("aws-c-common/source/hash_table.c":1082:85))
  sea.cond_br %v270, ^bb85, ^bb201
^bb85:
  %v271 = sea.load %v59[%v268] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_210"("aws-c-common/source/hash_table.c":1082:85))
  %v272 = sea.const 0 : i64 loc("_211"("aws-c-common/source/hash_table.c":1082:95))
  %v273 = sea.icmp ne, %v271, %v272 : i64 loc("_211"("aws-c-common/source/hash_table.c":1082:95))
  sea.br ^bb95(%v273 : i1)
^bb86:
  sea.br ^bb87
^bb87:
  sea.br ^bb88
^bb88:
  %v274 = sea.icmp ugt, %v174, %v177 : i64 loc(".not2.i.i.i"("aws-c-common/source/hash_table.c":1079:31))
  %v275 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":1079:46)
  sea.cond_br %v274, ^bb89, ^bb95(%v275 : i1) loc("aws-c-common/source/hash_table.c":1079:46)
^bb89:
  sea.br ^bb90
^bb90:
  %v276 = sea.const 18446744073709551615 : i64 loc("_198"("aws-c-common/source/hash_table.c":1079:60))
  %v277 = sea.icmp eq, %v174, %v276 : i64 loc("_198"("aws-c-common/source/hash_table.c":1079:60))
  sea.br ^bb95(%v277 : i1) loc("aws-c-common/source/hash_table.c":1079:46)
^bb91:
  %v278 = sea.const 0 : i32 loc("SwitchLeaf.i.i30.i")
  %v279 = sea.icmp eq, %v180, %v278 : i32 loc("SwitchLeaf.i.i30.i")
  %v280 = sea.const 0 : i1
  sea.cond_br %v279, ^bb92, ^bb95(%v280 : i1)
^bb92:
  sea.br ^bb93
^bb93:
  sea.br ^bb94
^bb94:
  %v281 = sea.icmp eq, %v174, %v177 : i64 loc("_192"("aws-c-common/source/hash_table.c":1075:31))
  sea.br ^bb95(%v281 : i1) loc("aws-c-common/source/hash_table.c":1075:13)
^bb95(%v282 : i1):
  sea.assume %v282 loc("seahorn/lib/hash_table_helper.c":54:3)
  %v283 = sea.const 2 : i32 loc("_212"("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":30:22))
  %v284 = sea.icmp eq, %v180, %v283 : i32 loc("_212"("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":30:22))
  sea.assume %v284 loc("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":30:3)
  %v285 = sea.nondet "nd_bool" [17] : i1 loc("_213"("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":32:31))
  sea.br ^bb96
^bb96:
  sea.br ^bb97
^bb97:
  sea.cond_br %v285, ^bb98, ^bb108 loc("aws-c-common/source/hash_table.c":870:9)
^bb98:
  %v286 = sea.ptr.index %v183 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_217"("aws-c-common/source/hash_table.c":871:20))
  %v287 = sea.const 8 : i64 loc("_218"("aws-c-common/source/hash_table.c":871:20))
  %v288 = sea.ptr.dereferenceable %v286, %v287 : !sea.ptr<64>, i64 loc("_218"("aws-c-common/source/hash_table.c":871:20))
  sea.cond_br %v288, ^bb99, ^bb201
^bb99:
  %v289 = sea.load %v59[%v286] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_220"("aws-c-common/source/hash_table.c":871:20))
  %v290 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("aws-c-common/source/hash_table.c":871:13))
  %v291 = sea.ptr.cmp eq, %v289, %v290 : !sea.ptr<64> loc(".not.i.i"("aws-c-common/source/hash_table.c":871:13))
  sea.cond_br %v291, ^bb103, ^bb100 loc("aws-c-common/source/hash_table.c":871:13)
^bb100:
  %v292 = sea.const 8 : i64 loc("_222"("aws-c-common/source/hash_table.c":872:20))
  %v293 = sea.ptr.dereferenceable %v286, %v292 : !sea.ptr<64>, i64 loc("_222"("aws-c-common/source/hash_table.c":872:20))
  sea.cond_br %v293, ^bb101, ^bb201
^bb101:
  sea.br ^bb102
^bb102:
  sea.br ^bb103 loc("aws-c-common/source/hash_table.c":873:9)
^bb103:
  %v294 = sea.ptr.index %v183 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_226"("aws-c-common/source/hash_table.c":874:20))
  %v295 = sea.const 8 : i64 loc("_227"("aws-c-common/source/hash_table.c":874:20))
  %v296 = sea.ptr.dereferenceable %v294, %v295 : !sea.ptr<64>, i64 loc("_227"("aws-c-common/source/hash_table.c":874:20))
  sea.cond_br %v296, ^bb104, ^bb201
^bb104:
  %v297 = sea.load %v79[%v294] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_229"("aws-c-common/source/hash_table.c":874:20))
  %v298 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/source/hash_table.c":874:13))
  %v299 = sea.ptr.cmp eq, %v297, %v298 : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/source/hash_table.c":874:13))
  sea.cond_br %v299, ^bb108, ^bb105 loc("aws-c-common/source/hash_table.c":874:13)
^bb105:
  %v300 = sea.const 8 : i64 loc("_231"("aws-c-common/source/hash_table.c":875:20))
  %v301 = sea.ptr.dereferenceable %v294, %v300 : !sea.ptr<64>, i64 loc("_231"("aws-c-common/source/hash_table.c":875:20))
  sea.cond_br %v301, ^bb106, ^bb201
^bb106:
  sea.br ^bb107
^bb107:
  sea.br ^bb108 loc("aws-c-common/source/hash_table.c":876:9)
^bb108:
  sea.br ^bb109
^bb109:
  %v302 = sea.ptr.index %v183 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_236"("aws-c-common/source/hash_table.c":619:12))
  %v303 = sea.const 8 : i64 loc("_237"("aws-c-common/source/hash_table.c":619:23))
  %v304 = sea.ptr.dereferenceable %v302, %v303 : !sea.ptr<64>, i64 loc("_237"("aws-c-common/source/hash_table.c":619:23))
  sea.cond_br %v304, ^bb110, ^bb201
^bb110:
  %v305 = sea.load %v59[%v302] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_239"("aws-c-common/source/hash_table.c":619:23))
  %v306 = sea.const 8 : i64 loc("_240"("aws-c-common/source/hash_table.c":619:23))
  %v307 = sea.ptr.dereferenceable %v302, %v306 : !sea.ptr<64>, i64 loc("_240"("aws-c-common/source/hash_table.c":619:23))
  sea.cond_br %v307, ^bb111, ^bb201
^bb111:
  %v308 = sea.const 18446744073709551615 : i64 loc("_242"("aws-c-common/source/hash_table.c":619:23))
  %v309 = sea.add %v305, %v308 : i64 loc("_242"("aws-c-common/source/hash_table.c":619:23))
  %v310 = sea.store %v84[%v302], %v309 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/hash_table.c":619:23)
  %v311 = sea.ptr.index %v183 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_243")
  %v312 = sea.const 8 : i64 loc("_244"("aws-c-common/source/hash_table.c":628:50))
  %v313 = sea.ptr.dereferenceable %v311, %v312 : !sea.ptr<64>, i64 loc("_244"("aws-c-common/source/hash_table.c":628:50))
  sea.cond_br %v313, ^bb112, ^bb201
^bb112:
  %v314 = sea.const 1 : i64 loc("_245"("aws-c-common/source/hash_table.c":628:36))
  %v315 = sea.add %v174, %v314 : i64 loc("_245"("aws-c-common/source/hash_table.c":628:36))
  %v316 = sea.load %v65[%v311] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_246"("aws-c-common/source/hash_table.c":628:50))
  %v317 = sea.and %v316, %v315 : i64 loc("_247"("aws-c-common/source/hash_table.c":628:41))
  %v318 = sea.ptr.index %v183 [%v317] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_248"("aws-c-common/source/hash_table.c":631:39))
  %v319 = sea.const 8 : i64 loc("_249"("aws-c-common/source/hash_table.c":631:39))
  %v320 = sea.ptr.dereferenceable %v318, %v319 : !sea.ptr<64>, i64 loc("_249"("aws-c-common/source/hash_table.c":631:39))
  sea.cond_br %v320, ^bb113, ^bb201
^bb113:
  %v321 = sea.load %v310[%v318] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_255"("aws-c-common/source/hash_table.c":631:39))
  %v322 = sea.const 0 : i64 loc(".not.i.i.i"("aws-c-common/source/hash_table.c":631:14))
  %v323 = sea.icmp eq, %v321, %v322 : i64 loc(".not.i.i.i"("aws-c-common/source/hash_table.c":631:14))
  sea.cond_br %v323, ^bb137(%v310, %v174 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb114 loc("aws-c-common/source/hash_table.c":631:13)
^bb114:
  %v324 = sea.const 8 : i64 loc("_257"("aws-c-common/source/hash_table.c":639:39))
  %v325 = sea.ptr.dereferenceable %v318, %v324 : !sea.ptr<64>, i64 loc("_257"("aws-c-common/source/hash_table.c":639:39))
  sea.cond_br %v325, ^bb115, ^bb201
^bb115:
  %v326 = sea.const 8 : i64 loc("_259"("aws-c-common/source/hash_table.c":639:58))
  %v327 = sea.ptr.dereferenceable %v311, %v326 : !sea.ptr<64>, i64 loc("_259"("aws-c-common/source/hash_table.c":639:58))
  sea.cond_br %v327, ^bb116, ^bb201
^bb116:
  %v328 = sea.and %v321, %v316 : i64 loc("_261"("aws-c-common/source/hash_table.c":639:49))
  %v329 = sea.icmp eq, %v328, %v317 : i64 loc("_262"("aws-c-common/source/hash_table.c":639:64))
  sea.cond_br %v329, ^bb137(%v310, %v174 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb117 loc("aws-c-common/source/hash_table.c":639:13)
^bb117:
  %v330 = sea.ptr.index %v183 [%v174] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_263"("aws-c-common/source/hash_table.c":644:9))
  %v331 = sea.ptr.index %v183 [%v317] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_264"("aws-c-common/source/hash_table.c":644:31))
  %v332 = sea.const 24 : i64 loc("aws-c-common/source/hash_table.c":644:31)
  %v333 = sea.memmove %v310[%v330], %v84[%v331], %v332 inplace align 8 src_align 8 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/source/hash_table.c":644:31)
  %v334 = sea.const 8 : i64 loc("_265"("aws-c-common/source/hash_table.c":628:50))
  %v335 = sea.ptr.dereferenceable %v311, %v334 : !sea.ptr<64>, i64 loc("_265"("aws-c-common/source/hash_table.c":628:50))
  sea.cond_br %v335, ^bb118, ^bb201
^bb118:
  %v336 = sea.const 1 : i64 loc("_266"("aws-c-common/source/hash_table.c":628:36))
  %v337 = sea.add %v317, %v336 : i64 loc("_266"("aws-c-common/source/hash_table.c":628:36))
  %v338 = sea.load %v333[%v311] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_267"("aws-c-common/source/hash_table.c":628:50))
  %v339 = sea.and %v338, %v337 : i64 loc("_268"("aws-c-common/source/hash_table.c":628:41))
  %v340 = sea.ptr.index %v183 [%v339] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_269"("aws-c-common/source/hash_table.c":631:39))
  %v341 = sea.const 8 : i64 loc("_270"("aws-c-common/source/hash_table.c":631:39))
  %v342 = sea.ptr.dereferenceable %v340, %v341 : !sea.ptr<64>, i64 loc("_270"("aws-c-common/source/hash_table.c":631:39))
  sea.cond_br %v342, ^bb119, ^bb201
^bb119:
  %v343 = sea.load %v310[%v340] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_272"("aws-c-common/source/hash_table.c":631:39))
  %v344 = sea.const 0 : i64 loc(".not.i.i.i.1"("aws-c-common/source/hash_table.c":631:14))
  %v345 = sea.icmp eq, %v343, %v344 : i64 loc(".not.i.i.i.1"("aws-c-common/source/hash_table.c":631:14))
  sea.cond_br %v345, ^bb137(%v333, %v317 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb120 loc("aws-c-common/source/hash_table.c":631:13)
^bb120:
  %v346 = sea.const 8 : i64 loc("_274"("aws-c-common/source/hash_table.c":639:39))
  %v347 = sea.ptr.dereferenceable %v340, %v346 : !sea.ptr<64>, i64 loc("_274"("aws-c-common/source/hash_table.c":639:39))
  sea.cond_br %v347, ^bb121, ^bb201
^bb121:
  %v348 = sea.const 8 : i64 loc("_276"("aws-c-common/source/hash_table.c":639:58))
  %v349 = sea.ptr.dereferenceable %v311, %v348 : !sea.ptr<64>, i64 loc("_276"("aws-c-common/source/hash_table.c":639:58))
  sea.cond_br %v349, ^bb122, ^bb201
^bb122:
  %v350 = sea.and %v343, %v338 : i64 loc("_278"("aws-c-common/source/hash_table.c":639:49))
  %v351 = sea.icmp eq, %v350, %v339 : i64 loc("_279"("aws-c-common/source/hash_table.c":639:64))
  sea.cond_br %v351, ^bb137(%v333, %v317 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb123 loc("aws-c-common/source/hash_table.c":639:13)
^bb123:
  %v352 = sea.ptr.index %v183 [%v339] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_280"("aws-c-common/source/hash_table.c":644:31))
  %v353 = sea.const 24 : i64 loc("aws-c-common/source/hash_table.c":644:31)
  %v354 = sea.memmove %v333[%v331], %v333[%v352], %v353 inplace align 8 src_align 8 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/source/hash_table.c":644:31)
  %v355 = sea.const 8 : i64 loc("_281"("aws-c-common/source/hash_table.c":628:50))
  %v356 = sea.ptr.dereferenceable %v311, %v355 : !sea.ptr<64>, i64 loc("_281"("aws-c-common/source/hash_table.c":628:50))
  sea.cond_br %v356, ^bb124, ^bb201
^bb124:
  %v357 = sea.const 1 : i64 loc("_282"("aws-c-common/source/hash_table.c":628:36))
  %v358 = sea.add %v339, %v357 : i64 loc("_282"("aws-c-common/source/hash_table.c":628:36))
  %v359 = sea.load %v354[%v311] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_283"("aws-c-common/source/hash_table.c":628:50))
  %v360 = sea.and %v359, %v358 : i64 loc("_284"("aws-c-common/source/hash_table.c":628:41))
  %v361 = sea.ptr.index %v183 [%v360] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_285"("aws-c-common/source/hash_table.c":631:39))
  %v362 = sea.const 8 : i64 loc("_286"("aws-c-common/source/hash_table.c":631:39))
  %v363 = sea.ptr.dereferenceable %v361, %v362 : !sea.ptr<64>, i64 loc("_286"("aws-c-common/source/hash_table.c":631:39))
  sea.cond_br %v363, ^bb125, ^bb201
^bb125:
  %v364 = sea.load %v310[%v361] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_288"("aws-c-common/source/hash_table.c":631:39))
  %v365 = sea.const 0 : i64 loc(".not.i.i.i.2"("aws-c-common/source/hash_table.c":631:14))
  %v366 = sea.icmp eq, %v364, %v365 : i64 loc(".not.i.i.i.2"("aws-c-common/source/hash_table.c":631:14))
  sea.cond_br %v366, ^bb137(%v354, %v339 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb126 loc("aws-c-common/source/hash_table.c":631:13)
^bb126:
  %v367 = sea.const 8 : i64 loc("_290"("aws-c-common/source/hash_table.c":639:39))
  %v368 = sea.ptr.dereferenceable %v361, %v367 : !sea.ptr<64>, i64 loc("_290"("aws-c-common/source/hash_table.c":639:39))
  sea.cond_br %v368, ^bb127, ^bb201
^bb127:
  %v369 = sea.const 8 : i64 loc("_292"("aws-c-common/source/hash_table.c":639:58))
  %v370 = sea.ptr.dereferenceable %v311, %v369 : !sea.ptr<64>, i64 loc("_292"("aws-c-common/source/hash_table.c":639:58))
  sea.cond_br %v370, ^bb128, ^bb201
^bb128:
  %v371 = sea.and %v364, %v359 : i64 loc("_294"("aws-c-common/source/hash_table.c":639:49))
  %v372 = sea.icmp eq, %v371, %v360 : i64 loc("_295"("aws-c-common/source/hash_table.c":639:64))
  sea.cond_br %v372, ^bb137(%v354, %v339 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb129 loc("aws-c-common/source/hash_table.c":639:13)
^bb129:
  %v373 = sea.ptr.index %v183 [%v360] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_296"("aws-c-common/source/hash_table.c":644:31))
  %v374 = sea.const 24 : i64 loc("aws-c-common/source/hash_table.c":644:31)
  %v375 = sea.memmove %v354[%v352], %v354[%v373], %v374 inplace align 8 src_align 8 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/source/hash_table.c":644:31)
  %v376 = sea.const 8 : i64 loc("_297"("aws-c-common/source/hash_table.c":628:50))
  %v377 = sea.ptr.dereferenceable %v311, %v376 : !sea.ptr<64>, i64 loc("_297"("aws-c-common/source/hash_table.c":628:50))
  sea.cond_br %v377, ^bb130, ^bb201
^bb130:
  %v378 = sea.const 1 : i64 loc("_298"("aws-c-common/source/hash_table.c":628:36))
  %v379 = sea.add %v360, %v378 : i64 loc("_298"("aws-c-common/source/hash_table.c":628:36))
  %v380 = sea.load %v375[%v311] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_299"("aws-c-common/source/hash_table.c":628:50))
  %v381 = sea.and %v380, %v379 : i64 loc("_300"("aws-c-common/source/hash_table.c":628:41))
  %v382 = sea.ptr.index %v183 [%v381] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_301"("aws-c-common/source/hash_table.c":631:39))
  %v383 = sea.const 8 : i64 loc("_302"("aws-c-common/source/hash_table.c":631:39))
  %v384 = sea.ptr.dereferenceable %v382, %v383 : !sea.ptr<64>, i64 loc("_302"("aws-c-common/source/hash_table.c":631:39))
  sea.cond_br %v384, ^bb131, ^bb201
^bb131:
  %v385 = sea.load %v310[%v382] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_304"("aws-c-common/source/hash_table.c":631:39))
  %v386 = sea.const 0 : i64 loc(".not.i.i.i.3"("aws-c-common/source/hash_table.c":631:14))
  %v387 = sea.icmp eq, %v385, %v386 : i64 loc(".not.i.i.i.3"("aws-c-common/source/hash_table.c":631:14))
  sea.cond_br %v387, ^bb137(%v375, %v360 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb132 loc("aws-c-common/source/hash_table.c":631:13)
^bb132:
  %v388 = sea.const 8 : i64 loc("_306"("aws-c-common/source/hash_table.c":639:39))
  %v389 = sea.ptr.dereferenceable %v382, %v388 : !sea.ptr<64>, i64 loc("_306"("aws-c-common/source/hash_table.c":639:39))
  sea.cond_br %v389, ^bb133, ^bb201
^bb133:
  %v390 = sea.const 8 : i64 loc("_308"("aws-c-common/source/hash_table.c":639:58))
  %v391 = sea.ptr.dereferenceable %v311, %v390 : !sea.ptr<64>, i64 loc("_308"("aws-c-common/source/hash_table.c":639:58))
  sea.cond_br %v391, ^bb134, ^bb201
^bb134:
  %v392 = sea.and %v385, %v380 : i64 loc("_310"("aws-c-common/source/hash_table.c":639:49))
  %v393 = sea.icmp eq, %v392, %v381 : i64 loc("_311"("aws-c-common/source/hash_table.c":639:64))
  sea.cond_br %v393, ^bb137(%v375, %v360 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb135 loc("aws-c-common/source/hash_table.c":639:13)
^bb135:
  %v394 = sea.ptr.index %v183 [%v381] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_312"("aws-c-common/source/hash_table.c":644:31))
  %v395 = sea.const 24 : i64 loc("aws-c-common/source/hash_table.c":644:31)
  %v396 = sea.memmove %v375[%v373], %v375[%v394], %v395 inplace align 8 src_align 8 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/source/hash_table.c":644:31)
  %v397 = sea.const 8 : i64 loc("_313"("aws-c-common/source/hash_table.c":628:50))
  %v398 = sea.ptr.dereferenceable %v311, %v397 : !sea.ptr<64>, i64 loc("_313"("aws-c-common/source/hash_table.c":628:50))
  sea.cond_br %v398, ^bb136, ^bb201
^bb136:
  %v399 = sea.const 1 : i64 loc("_250"("aws-c-common/source/hash_table.c":628:36))
  %v400 = sea.add %v381, %v399 : i64 loc("_250"("aws-c-common/source/hash_table.c":628:36))
  %v401 = sea.load %v396[%v311] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_251"("aws-c-common/source/hash_table.c":628:50))
  %v402 = sea.and %v401, %v400 : i64 loc("_252"("aws-c-common/source/hash_table.c":628:41))
  %v403 = sea.ptr.index %v183 [%v402] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_253"("aws-c-common/source/hash_table.c":631:39))
  %v404 = sea.const 8 : i64 loc("_254"("aws-c-common/source/hash_table.c":631:39))
  %v405 = sea.ptr.dereferenceable %v403, %v404 : !sea.ptr<64>, i64 loc("_254"("aws-c-common/source/hash_table.c":631:39))
  %v406 = sea.const 1 : i1
  %v407 = sea.xor %v405, %v406 : i1
  sea.assume %v407
  sea.br ^bb201
^bb137(%v408 : !sea.mem<!sea.ptr<64>, i8>, %v409 : i64):
  %v410 = sea.ptr.index %v183 [%v409] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_314"("aws-c-common/source/hash_table.c":649:5))
  %v411 = sea.const 0 : i8 loc("aws-c-common/source/hash_table.c":649:5)
  %v412 = sea.const 24 : i64 loc("aws-c-common/source/hash_table.c":649:5)
  %v413 = sea.memset %v408[%v410], %v411, %v412 inplace align 8 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/source/hash_table.c":649:5)
  sea.br ^bb138
^bb138:
  %v414 = sea.icmp ult, %v409, %v174 : i64 loc("_316"("aws-c-common/source/hash_table.c":889:20))
  sea.cond_br %v414, ^bb141, ^bb139 loc("aws-c-common/source/hash_table.c":889:33)
^bb139:
  sea.br ^bb140
^bb140:
  %v415 = sea.icmp ult, %v409, %v177 : i64 loc(".not2.i.i"("aws-c-common/source/hash_table.c":889:47))
  sea.cond_br %v415, ^bb144(%v177 : i64), ^bb141 loc("aws-c-common/source/hash_table.c":889:9)
^bb141:
  sea.br ^bb142
^bb142:
  sea.br ^bb143
^bb143:
  %v416 = sea.const 18446744073709551615 : i64 loc("_322"("aws-c-common/source/hash_table.c":890:20))
  %v417 = sea.add %v177, %v416 : i64 loc("_322"("aws-c-common/source/hash_table.c":890:20))
  sea.br ^bb144(%v417 : i64) loc("aws-c-common/source/hash_table.c":891:5)
^bb144(%v418 : i64):
  sea.br ^bb145
^bb145:
  sea.br ^bb146
^bb146:
  %v419 = sea.const 18446744073709551615 : i64 loc("_327"("aws-c-common/source/hash_table.c":910:15))
  %v420 = sea.add %v174, %v419 : i64 loc("_327"("aws-c-common/source/hash_table.c":910:15))
  sea.br ^bb147
^bb147:
  sea.br ^bb148
^bb148:
  sea.br ^bb149
^bb149:
  sea.br ^bb150
^bb150:
  sea.br ^bb151
^bb151:
  %v421 = sea.const 8 : i64 loc("_332"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v422 = sea.ptr.dereferenceable %v183, %v421 : !sea.ptr<64>, i64 loc("_332"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v422, ^bb152, ^bb201
^bb152:
  %v423 = sea.load %v413[%v183] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_334"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v424 = sea.ptr.null : !sea.ptr<64> loc("_335"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v425 = sea.ptr.cmp ne, %v423, %v424 : !sea.ptr<64> loc("_335"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v426 = sea.ptr.index %v183 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_336"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v427 = sea.const 8 : i64 loc("_337"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v428 = sea.ptr.dereferenceable %v426, %v427 : !sea.ptr<64>, i64 loc("_337"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v428, ^bb153, ^bb201
^bb153:
  %v429 = sea.load %v413[%v426] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_339"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v430 = sea.ptr.null : !sea.ptr<64> loc("_340"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v431 = sea.ptr.cmp ne, %v429, %v430 : !sea.ptr<64> loc("_340"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v432 = sea.ptr.index %v183 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_341"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v433 = sea.const 8 : i64 loc("_342"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v434 = sea.ptr.dereferenceable %v432, %v433 : !sea.ptr<64>, i64 loc("_342"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v434, ^bb154, ^bb201
^bb154:
  %v435 = sea.load %v413[%v432] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_344"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v436 = sea.ptr.null : !sea.ptr<64> loc("_345"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v437 = sea.ptr.cmp ne, %v435, %v436 : !sea.ptr<64> loc("_345"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v438 = sea.ptr.index %v183 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_346"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v439 = sea.const 8 : i64 loc("_347"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v440 = sea.ptr.dereferenceable %v438, %v439 : !sea.ptr<64>, i64 loc("_347"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v440, ^bb155, ^bb201
^bb155:
  %v441 = sea.load %v413[%v438] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_349"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v442 = sea.const 1 : i64 loc("_350"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v443 = sea.icmp ugt, %v441, %v442 : i64 loc("_350"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v444 = sea.const 8 : i64 loc("_351"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v445 = sea.ptr.dereferenceable %v438, %v444 : !sea.ptr<64>, i64 loc("_351"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v445, ^bb156, ^bb201
^bb156:
  %v446 = sea.ctpop %v441 : i64 loc("_353"("aws-c-common/include/aws/common/math.inl":161:14))
  %v447 = sea.const 1 : i64 loc("_354"("aws-c-common/include/aws/common/math.inl":161:14))
  %v448 = sea.icmp eq, %v446, %v447 : i64 loc("_354"("aws-c-common/include/aws/common/math.inl":161:14))
  %v449 = sea.const 8 : i64 loc("_355"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v450 = sea.ptr.dereferenceable %v302, %v449 : !sea.ptr<64>, i64 loc("_355"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v450, ^bb157, ^bb201
^bb157:
  %v451 = sea.load %v413[%v302] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_357"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v452 = sea.ptr.index %v183 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_358"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v453 = sea.const 8 : i64 loc("_359"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v454 = sea.ptr.dereferenceable %v452, %v453 : !sea.ptr<64>, i64 loc("_359"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v454, ^bb158, ^bb201
^bb158:
  %v455 = sea.load %v413[%v452] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_361"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v456 = sea.icmp ule, %v451, %v455 : i64 loc("_362"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v457 = sea.const 8 : i64 loc("_363"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v458 = sea.ptr.dereferenceable %v452, %v457 : !sea.ptr<64>, i64 loc("_363"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v458, ^bb159, ^bb201
^bb159:
  %v459 = sea.const 8 : i64 loc("_365"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v460 = sea.ptr.dereferenceable %v438, %v459 : !sea.ptr<64>, i64 loc("_365"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v460, ^bb160, ^bb201
^bb160:
  %v461 = sea.icmp ult, %v455, %v441 : i64 loc("_367"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v462 = sea.const 8 : i64 loc("_368"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v463 = sea.ptr.dereferenceable %v311, %v462 : !sea.ptr<64>, i64 loc("_368"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v463, ^bb161, ^bb201
^bb161:
  %v464 = sea.load %v413[%v311] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_370"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v465 = sea.const 8 : i64 loc("_371"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v466 = sea.ptr.dereferenceable %v438, %v465 : !sea.ptr<64>, i64 loc("_371"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v466, ^bb162, ^bb201
^bb162:
  %v467 = sea.const 8 : i64 loc("_373"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v468 = sea.ptr.dereferenceable %v438, %v467 : !sea.ptr<64>, i64 loc("_373"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v468, ^bb163, ^bb201
^bb163:
  %v469 = sea.const 18446744073709551615 : i64 loc("_374"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v470 = sea.add %v441, %v469 : i64 loc("_374"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v471 = sea.icmp eq, %v464, %v470 : i64 loc("_375"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
  %v472 = sea.const 0 : i1 loc("or.cond.i49.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v473 = sea.select %v425, %v431, %v472 : i1 loc("or.cond.i49.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v474 = sea.const 0 : i1 loc("or.cond3.i50.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v475 = sea.select %v473, %v437, %v474 : i1 loc("or.cond3.i50.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v476 = sea.const 0 : i1 loc("or.cond5.i51.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v477 = sea.select %v475, %v443, %v476 : i1 loc("or.cond5.i51.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v478 = sea.const 0 : i1 loc("or.cond7.i52.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v479 = sea.select %v477, %v448, %v478 : i1 loc("or.cond7.i52.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v480 = sea.const 0 : i1 loc("or.cond9.i53.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v481 = sea.select %v479, %v456, %v480 : i1 loc("or.cond9.i53.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v482 = sea.const 0 : i1 loc("or.cond11.i54.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v483 = sea.select %v481, %v461, %v482 : i1 loc("or.cond11.i54.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v484 = sea.const 0 : i1 loc("or.cond13.i55.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v485 = sea.select %v483, %v471, %v484 : i1 loc("or.cond13.i55.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v486 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1065:9)
  sea.cond_br %v485, ^bb164, ^bb175(%v486 : i1) loc("aws-c-common/source/hash_table.c":1065:9)
^bb164:
  sea.br ^bb165
^bb165:
  sea.br ^bb166
^bb166:
  sea.br ^bb167
^bb167:
  %v487 = sea.const 8 : i64 loc("_380"("aws-c-common/source/hash_table.c":1068:42))
  %v488 = sea.ptr.dereferenceable %v438, %v487 : !sea.ptr<64>, i64 loc("_380"("aws-c-common/source/hash_table.c":1068:42))
  sea.cond_br %v488, ^bb168, ^bb201
^bb168:
  %v489 = sea.icmp ugt, %v418, %v441 : i64 loc("_382"("aws-c-common/source/hash_table.c":1068:21))
  %v490 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1068:9)
  sea.cond_br %v489, ^bb175(%v490 : i1), ^bb169 loc("aws-c-common/source/hash_table.c":1068:9)
^bb169:
  sea.br ^bb170
^bb170:
  sea.br ^bb171
^bb171:
  sea.br ^bb172
^bb172:
  %v491 = sea.icmp ugt, %v420, %v418 : i64 loc(".not2.i7.i"("aws-c-common/source/hash_table.c":1079:31))
  %v492 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":1079:46)
  sea.cond_br %v491, ^bb173, ^bb175(%v492 : i1) loc("aws-c-common/source/hash_table.c":1079:46)
^bb173:
  sea.br ^bb174
^bb174:
  %v493 = sea.const 0 : i64 loc("_388"("aws-c-common/source/hash_table.c":1079:60))
  %v494 = sea.icmp eq, %v174, %v493 : i64 loc("_388"("aws-c-common/source/hash_table.c":1079:60))
  sea.br ^bb175(%v494 : i1) loc("aws-c-common/source/hash_table.c":1079:46)
^bb175(%v495 : i1):
  sea.br ^bb176
^bb176:
  sea.br ^bb177
^bb177:
  sea.br ^bb178
^bb178:
  sea.br ^bb179
^bb179:
  %v496 = sea.const 8 : i64 loc("_393"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v497 = sea.ptr.dereferenceable %v183, %v496 : !sea.ptr<64>, i64 loc("_393"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v497, ^bb180, ^bb201
^bb180:
  %v498 = sea.const 8 : i64 loc("_395"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v499 = sea.ptr.dereferenceable %v426, %v498 : !sea.ptr<64>, i64 loc("_395"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v499, ^bb181, ^bb201
^bb181:
  %v500 = sea.const 8 : i64 loc("_397"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v501 = sea.ptr.dereferenceable %v432, %v500 : !sea.ptr<64>, i64 loc("_397"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v501, ^bb182, ^bb201
^bb182:
  %v502 = sea.const 8 : i64 loc("_399"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v503 = sea.ptr.dereferenceable %v438, %v502 : !sea.ptr<64>, i64 loc("_399"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v503, ^bb183, ^bb201
^bb183:
  %v504 = sea.const 8 : i64 loc("_401"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v505 = sea.ptr.dereferenceable %v438, %v504 : !sea.ptr<64>, i64 loc("_401"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v505, ^bb184, ^bb201
^bb184:
  %v506 = sea.const 8 : i64 loc("_403"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v507 = sea.ptr.dereferenceable %v302, %v506 : !sea.ptr<64>, i64 loc("_403"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v507, ^bb185, ^bb201
^bb185:
  %v508 = sea.const 8 : i64 loc("_405"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v509 = sea.ptr.dereferenceable %v452, %v508 : !sea.ptr<64>, i64 loc("_405"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v509, ^bb186, ^bb201
^bb186:
  %v510 = sea.const 8 : i64 loc("_407"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v511 = sea.ptr.dereferenceable %v452, %v510 : !sea.ptr<64>, i64 loc("_407"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v511, ^bb187, ^bb201
^bb187:
  %v512 = sea.const 8 : i64 loc("_409"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v513 = sea.ptr.dereferenceable %v438, %v512 : !sea.ptr<64>, i64 loc("_409"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v513, ^bb188, ^bb201
^bb188:
  %v514 = sea.const 8 : i64 loc("_411"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v515 = sea.ptr.dereferenceable %v311, %v514 : !sea.ptr<64>, i64 loc("_411"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v515, ^bb189, ^bb201
^bb189:
  %v516 = sea.const 8 : i64 loc("_413"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v517 = sea.ptr.dereferenceable %v438, %v516 : !sea.ptr<64>, i64 loc("_413"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v517, ^bb190, ^bb201
^bb190:
  %v518 = sea.const 8 : i64 loc("_415"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v519 = sea.ptr.dereferenceable %v438, %v518 : !sea.ptr<64>, i64 loc("_415"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v520 = sea.and %v519, %v485 : i1 loc("brmerge.demorgan")
  sea.cond_br %v520, ^bb191, ^bb201
^bb191:
  sea.br ^bb192
^bb192:
  sea.br ^bb193
^bb193:
  sea.br ^bb194
^bb194:
  %v521 = sea.const 8 : i64 loc("_420"("aws-c-common/source/hash_table.c":1068:42))
  %v522 = sea.ptr.dereferenceable %v438, %v521 : !sea.ptr<64>, i64 loc("_420"("aws-c-common/source/hash_table.c":1068:42))
  %v523 = sea.icmp ule, %v418, %v441 : i64 loc("_421")
  %v524 = sea.const 0 : i1 loc("or.cond22.not")
  %v525 = sea.select %v522, %v523, %v524 : i1 loc("or.cond22.not")
  sea.cond_br %v525, ^bb195, ^bb201
^bb195:
  sea.br ^bb196
^bb196:
  sea.br ^bb197
^bb197:
  sea.br ^bb198
^bb198:
  %v526 = sea.icmp ugt, %v420, %v418 : i64 loc(".not2.i18.i"("aws-c-common/source/hash_table.c":1079:31))
  sea.cond_br %v526, ^bb199, ^bb200 loc("aws-c-common/source/hash_table.c":1079:46)
^bb199:
  %v527 = sea.const 0 : i64 loc("_426")
  %v528 = sea.icmp eq, %v174, %v527 : i64 loc("_426")
  %v529 = sea.const 1 : i1 loc("or.cond24")
  %v530 = sea.const 0 : i1 loc("or.cond24")
  %v531 = sea.select %v529, %v528, %v530 : i1 loc("or.cond24")
  sea.cond_br %v531, ^bb200, ^bb201
^bb200:
  %v532 = sea.const 1 : i1 loc("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":34:3)
  %v533 = sea.const 1 : i1 loc("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":34:3)
  %v534 = sea.xor %v532, %v533 : i1 loc("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":34:3)
  sea.assume %v534 loc("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":34:3)
  sea.br ^bb201 loc("seahorn/jobs/hash_iter_delete/aws_hash_iter_delete_harness.c":34:3)
^bb201:
  sea.br ^bb202
^bb202:
  %v535 = sea.const 0 : i1
  sea.assert %v535
  sea.halt
}
