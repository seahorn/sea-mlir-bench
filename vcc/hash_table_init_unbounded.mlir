// Exported from SeaHorn (hash_table_init_unbounded.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.16" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm27")
  %v1 = sea.mem.nondet "region.88" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm28")
  %v2 = sea.mem.nondet "region.96" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm29")
  %v3 = sea.mem.nondet "region.0" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm30")
  %v4 = sea.const 80 : i64 loc("_0")
  %v5 = sea.alloca %v4 align 8 [4] : i64 -> !sea.ptr<64> loc("_0")
  %v6 = sea.const 8 : i64 loc("_1")
  %v7 = sea.alloca %v6 align 8 [5] : i64 -> !sea.ptr<64> loc("_1")
  %v8 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v9 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v10 = sea.store %v3[%v8], %v9 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v11 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_2")
  %v12 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_2")
  %v13 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v14 = sea.store %v10[%v12], %v13 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v15 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_3")
  %v16 = sea.ptr.index %v15 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_3")
  %v17 = sea.const 0 : i8
  %v18 = sea.const 24 : i64
  %v19 = sea.memset %v14[%v16], %v17, %v18 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v20 = sea.nondet "nd_size_t" [6] : i64 loc("_4"("seahorn/jobs/hash_table_init_unbounded/aws_hash_table_init_unbounded_harness.c":14:17))
  %v21 = sea.const 1 : i1 loc("seahorn/jobs/hash_table_init_unbounded/aws_hash_table_init_unbounded_harness.c":18:3)
  sea.assume %v21 loc("seahorn/jobs/hash_table_init_unbounded/aws_hash_table_init_unbounded_harness.c":18:3)
  %v22 = sea.const 1 : i1 loc("seahorn/jobs/hash_table_init_unbounded/aws_hash_table_init_unbounded_harness.c":21:3)
  sea.assume %v22 loc("seahorn/jobs/hash_table_init_unbounded/aws_hash_table_init_unbounded_harness.c":21:3)
  %v23 = sea.func_addr @"uninterpreted_hasher.addr" : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":226:22)
  %v24 = sea.store %v0[%v5], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":226:22)
  %v25 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_5"("aws-c-common/source/hash_table.c":227:14))
  %v26 = sea.func_addr @"uninterpreted_equals" : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":227:24)
  %v27 = sea.store %v24[%v25], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":227:24)
  %v28 = sea.ptr.index %v5 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_6"("aws-c-common/source/hash_table.c":228:14))
  %v29 = sea.func_addr @"uninterpreted_destroy_fn" : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":228:29)
  %v30 = sea.store %v27[%v28], %v29 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":228:29)
  %v31 = sea.ptr.index %v5 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_7"("aws-c-common/source/hash_table.c":229:14))
  %v32 = sea.func_addr @"uninterpreted_destroy_fn" : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":229:31)
  %v33 = sea.store %v30[%v31], %v32 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":229:31)
  %v34 = sea.ptr.index %v5 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_8"("aws-c-common/source/hash_table.c":230:14))
  %v35 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":230:20)
  %v36 = sea.store %v33[%v34], %v35 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":230:20)
  %v37 = sea.const 2 : i64 loc("spec.store.select.i.i"("seahorn/aws-c-common-stubs/s_update_template_size_override.c":32:7))
  %v38 = sea.umax %v20, %v37 : i64 loc("spec.store.select.i.i"("seahorn/aws-c-common-stubs/s_update_template_size_override.c":32:7))
  %v39 = sea.const 9223372036854775809 : i64 loc("_9"("aws-c-common/include/aws/common/math.inl":173:11))
  %v40 = sea.icmp ult, %v20, %v39 : i64 loc("_9"("aws-c-common/include/aws/common/math.inl":173:11))
  sea.cond_br %v40, ^bb2, ^bb1 loc("aws-c-common/include/aws/common/math.inl":173:9)
^bb1:
  %v41 = sea.ptr.nondet "undef" [7] : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":235:9)
  %v42 = sea.const 4294967295 : i32 loc("aws-c-common/source/hash_table.c":235:9)
  sea.br ^bb25(%v2, %v41, %v42 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i32) loc("aws-c-common/source/hash_table.c":235:9)
^bb2:
  sea.br ^bb3
^bb3:
  %v43 = sea.const 18446744073709551615 : i64 loc("_12"("aws-c-common/include/aws/common/math.inl":177:6))
  %v44 = sea.add %v38, %v43 : i64 loc("_12"("aws-c-common/include/aws/common/math.inl":177:6))
  %v45 = sea.const 1 : i64 loc("_13"("aws-c-common/include/aws/common/math.inl":178:12))
  %v46 = sea.lshr %v44, %v45 : i64 loc("_13"("aws-c-common/include/aws/common/math.inl":178:12))
  %v47 = sea.or %v46, %v44 : i64 loc("_14"("aws-c-common/include/aws/common/math.inl":178:7))
  %v48 = sea.const 2 : i64 loc("_15"("aws-c-common/include/aws/common/math.inl":179:12))
  %v49 = sea.lshr %v47, %v48 : i64 loc("_15"("aws-c-common/include/aws/common/math.inl":179:12))
  %v50 = sea.or %v49, %v47 : i64 loc("_16"("aws-c-common/include/aws/common/math.inl":179:7))
  %v51 = sea.const 4 : i64 loc("_17"("aws-c-common/include/aws/common/math.inl":180:12))
  %v52 = sea.lshr %v50, %v51 : i64 loc("_17"("aws-c-common/include/aws/common/math.inl":180:12))
  %v53 = sea.or %v52, %v50 : i64 loc("_18"("aws-c-common/include/aws/common/math.inl":180:7))
  %v54 = sea.const 8 : i64 loc("_19"("aws-c-common/include/aws/common/math.inl":181:12))
  %v55 = sea.lshr %v53, %v54 : i64 loc("_19"("aws-c-common/include/aws/common/math.inl":181:12))
  %v56 = sea.or %v55, %v53 : i64 loc("_20"("aws-c-common/include/aws/common/math.inl":181:7))
  %v57 = sea.const 16 : i64 loc("_21"("aws-c-common/include/aws/common/math.inl":182:12))
  %v58 = sea.lshr %v56, %v57 : i64 loc("_21"("aws-c-common/include/aws/common/math.inl":182:12))
  %v59 = sea.or %v58, %v56 : i64 loc("_22"("aws-c-common/include/aws/common/math.inl":182:7))
  %v60 = sea.const 32 : i64 loc("_23"("aws-c-common/include/aws/common/math.inl":184:12))
  %v61 = sea.lshr %v59, %v60 : i64 loc("_23"("aws-c-common/include/aws/common/math.inl":184:12))
  %v62 = sea.or %v61, %v59 : i64 loc("_24"("aws-c-common/include/aws/common/math.inl":184:7))
  %v63 = sea.const 1 : i64 loc("_25"("aws-c-common/include/aws/common/math.inl":186:6))
  %v64 = sea.add %v62, %v63 nuw : i64 loc("_25"("aws-c-common/include/aws/common/math.inl":186:6))
  %v65 = sea.ptr.index %v5 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_26"("seahorn/aws-c-common-stubs/s_update_template_size_override.c":44:13))
  sea.br ^bb4
^bb4:
  %v66 = sea.store %v36[%v65], %v64 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/s_update_template_size_override.c":44:18)
  %v67 = sea.nondet "nd_size_t" [8] : i64 loc("_28"("seahorn/aws-c-common-stubs/s_update_template_size_override.c":45:24))
  %v68 = sea.ptr.index %v5 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_29"("seahorn/aws-c-common-stubs/s_update_template_size_override.c":45:13))
  sea.br ^bb5
^bb5:
  %v69 = sea.store %v66[%v68], %v67 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/s_update_template_size_override.c":45:22)
  sea.br ^bb6
^bb6:
  %v70 = sea.icmp ule, %v67, %v62 : i64 loc("_32"("seahorn/aws-c-common-stubs/s_update_template_size_override.c":46:29))
  sea.assume %v70 loc("seahorn/aws-c-common-stubs/s_update_template_size_override.c":46:3)
  sea.br ^bb7
^bb7:
  sea.br ^bb8
^bb8:
  %v71 = sea.const 0 : i64 loc("_35"("seahorn/aws-c-common-stubs/s_update_template_size_override.c":47:29))
  %v72 = sea.icmp ne, %v67, %v71 : i64 loc("_35"("seahorn/aws-c-common-stubs/s_update_template_size_override.c":47:29))
  sea.assume %v72 loc("seahorn/aws-c-common-stubs/s_update_template_size_override.c":47:3)
  %v73 = sea.ptr.index %v5 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_36"("seahorn/aws-c-common-stubs/s_update_template_size_override.c":58:13))
  sea.br ^bb9
^bb9:
  %v74 = sea.store %v69[%v73], %v62 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/s_update_template_size_override.c":58:18)
  sea.br ^bb10
^bb10:
  sea.br ^bb11
^bb11:
  %v75 = sea.const 24 : i64 loc("_40"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v76 = sea.mul %v64, %v75 : i64 loc("_40"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v77 = sea.const 24 : i64 loc("_40"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v78 = sea.umulo %v64, %v77 : i64 loc("_40"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v78, ^bb21, ^bb12 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb12:
  sea.br ^bb13
^bb13:
  %v79 = sea.const 80 : i64 loc("_44"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v80 = sea.add %v76, %v79 : i64 loc("_44"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v81 = sea.const 80 : i64 loc("_44"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v82 = sea.uaddo %v76, %v81 : i64 loc("_44"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v82, ^bb20, ^bb14 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb14:
  sea.br ^bb15
^bb15:
  sea.br ^bb16
^bb16:
  %v83 = sea.const 0 : i64 loc("_49"("seahorn/lib/allocator_override.c":17:3))
  %v84 = sea.icmp ne, %v80, %v83 : i64 loc("_49"("seahorn/lib/allocator_override.c":17:3))
  %v85 = sea.const 0 : i64 loc(".not.i.i.i"("seahorn/lib/allocator_override.c":17:3))
  %v86 = sea.icmp eq, %v80, %v85 : i64 loc(".not.i.i.i"("seahorn/lib/allocator_override.c":17:3))
  sea.cond_br %v86, ^bb58, ^bb17 loc("seahorn/lib/allocator_override.c":17:3)
^bb17:
  %v87 = sea.nondet "nd_malloc_is_fail" [9] : i1 loc("_51"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v87, ^bb19, ^bb18 loc("seahorn/lib/sea_allocators.c":11:10)
^bb18:
  %v88 = sea.const 1 : i64 loc("malloc.i")
  %v89 = sea.mul %v80, %v88 : i64 loc("malloc.i")
  %v90 = sea.alloca %v89 align 16 [10] : i64 -> !sea.ptr<64> loc("malloc.i")
  %v91 = sea.memhavoc %v2[%v90], %v80 [11] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v92 = sea.const 0 : i8 loc("seahorn/lib/allocator_override.c":38:3)
  %v93 = sea.memset %v91[%v90], %v92, %v80 inplace align 16 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/allocator_override.c":38:3)
  %v94 = sea.func_addr @"uninterpreted_hasher.addr" : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":181:14)
  %v95 = sea.store %v93[%v90], %v94 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":181:14)
  %v96 = sea.ptr.index %v90 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i.i"("aws-c-common/source/hash_table.c":181:14))
  %v97 = sea.func_addr @"uninterpreted_equals" : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":181:14)
  %v98 = sea.store %v95[%v96], %v97 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":181:14)
  %v99 = sea.ptr.index %v90 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy5.i.i"("aws-c-common/source/hash_table.c":181:14))
  %v100 = sea.func_addr @"uninterpreted_destroy_fn" : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":181:14)
  %v101 = sea.store %v98[%v99], %v100 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":181:14)
  %v102 = sea.ptr.index %v90 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i.i"("aws-c-common/source/hash_table.c":181:14))
  %v103 = sea.func_addr @"uninterpreted_destroy_fn" : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":181:14)
  %v104 = sea.store %v101[%v102], %v103 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":181:14)
  %v105 = sea.ptr.index %v90 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy11.i.i"("aws-c-common/source/hash_table.c":181:14))
  %v106 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":181:14)
  %v107 = sea.store %v104[%v105], %v106 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":181:14)
  %v108 = sea.ptr.index %v90 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy14.i.i"("aws-c-common/source/hash_table.c":181:14))
  %v109 = sea.store %v107[%v108], %v64 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/hash_table.c":181:14)
  %v110 = sea.ptr.index %v90 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy17.i.i"("aws-c-common/source/hash_table.c":181:14))
  %v111 = sea.const 0 : i64 loc("aws-c-common/source/hash_table.c":181:14)
  %v112 = sea.store %v109[%v110], %v111 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/hash_table.c":181:14)
  %v113 = sea.ptr.index %v90 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy20.i.i"("aws-c-common/source/hash_table.c":181:14))
  %v114 = sea.store %v112[%v113], %v67 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/hash_table.c":181:14)
  %v115 = sea.ptr.index %v90 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy23.i.i"("aws-c-common/source/hash_table.c":181:14))
  %v116 = sea.store %v114[%v115], %v62 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/hash_table.c":181:14)
  %v117 = sea.ptr.index %v90 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy26.i.i"("aws-c-common/source/hash_table.c":181:14))
  %v118 = sea.const 4606732058837280358 : i64 loc("aws-c-common/source/hash_table.c":181:14)
  %v119 = sea.store %v116[%v117], %v118 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/hash_table.c":181:14)
  sea.br ^bb22(%v119, %v90 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("aws-c-common/source/hash_table.c":182:5)
^bb19:
  %v120 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":177:9)
  sea.br ^bb22(%v2, %v120 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("aws-c-common/source/hash_table.c":177:9)
^bb20:
  %v121 = sea.ptr.null : !sea.ptr<64>
  sea.br ^bb22(%v2, %v121 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>)
^bb21:
  %v122 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":170:9)
  sea.br ^bb22(%v2, %v122 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("aws-c-common/source/hash_table.c":170:9)
^bb22(%v123 : !sea.mem<!sea.ptr<64>, i8>, %v124 : !sea.ptr<64>):
  sea.br ^bb23
^bb23:
  %v125 = sea.store %v1[%v7], %v124 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":238:17)
  sea.br ^bb24
^bb24:
  %v126 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/source/hash_table.c":240:10))
  %v127 = sea.ptr.cmp eq, %v124, %v126 : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/source/hash_table.c":240:10))
  %v128 = sea.sext %v127 : i1 to i32 loc("..i.i"("aws-c-common/source/hash_table.c":0:0))
  sea.br ^bb25(%v123, %v124, %v128 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i32) loc("aws-c-common/source/hash_table.c":0:0)
^bb25(%v129 : !sea.mem<!sea.ptr<64>, i8>, %v130 : !sea.ptr<64>, %v131 : i32):
  %v132 = sea.const 0 : i32 loc("_55"("seahorn/jobs/hash_table_init_unbounded/aws_hash_table_init_unbounded_harness.c":30:12))
  %v133 = sea.icmp eq, %v131, %v132 : i32 loc("_55"("seahorn/jobs/hash_table_init_unbounded/aws_hash_table_init_unbounded_harness.c":30:12))
  sea.assume %v133 loc("seahorn/jobs/hash_table_init_unbounded/aws_hash_table_init_unbounded_harness.c":30:7)
  sea.br ^bb26
^bb26:
  %v134 = sea.ptr.null : !sea.ptr<64> loc(".not1.i12.i"("aws-c-common/source/hash_table.c":1027:19))
  %v135 = sea.ptr.cmp eq, %v130, %v134 : !sea.ptr<64> loc(".not1.i12.i"("aws-c-common/source/hash_table.c":1027:19))
  %v136 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1027:31)
  sea.cond_br %v135, ^bb41(%v136 : i1), ^bb27 loc("aws-c-common/source/hash_table.c":1027:31)
^bb27:
  sea.br ^bb28
^bb28:
  %v137 = sea.const 8 : i64 loc("_59"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v138 = sea.ptr.dereferenceable %v130, %v137 : !sea.ptr<64>, i64 loc("_59"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v138, ^bb29, ^bb58
^bb29:
  %v139 = sea.load %v129[%v130] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_61"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v140 = sea.ptr.null : !sea.ptr<64> loc("_62"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v141 = sea.ptr.cmp ne, %v139, %v140 : !sea.ptr<64> loc("_62"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v142 = sea.ptr.index %v130 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_63"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v143 = sea.const 8 : i64 loc("_64"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v144 = sea.ptr.dereferenceable %v142, %v143 : !sea.ptr<64>, i64 loc("_64"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v144, ^bb30, ^bb58
^bb30:
  %v145 = sea.load %v129[%v142] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_66"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v146 = sea.ptr.null : !sea.ptr<64> loc("_67"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v147 = sea.ptr.cmp ne, %v145, %v146 : !sea.ptr<64> loc("_67"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v148 = sea.ptr.index %v130 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_68"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v149 = sea.const 8 : i64 loc("_69"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v150 = sea.ptr.dereferenceable %v148, %v149 : !sea.ptr<64>, i64 loc("_69"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v150, ^bb31, ^bb58
^bb31:
  %v151 = sea.load %v129[%v148] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_71"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v152 = sea.ptr.null : !sea.ptr<64> loc("_72"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v153 = sea.ptr.cmp ne, %v151, %v152 : !sea.ptr<64> loc("_72"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v154 = sea.ptr.index %v130 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_73"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v155 = sea.const 8 : i64 loc("_74"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v156 = sea.ptr.dereferenceable %v154, %v155 : !sea.ptr<64>, i64 loc("_74"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v156, ^bb32, ^bb58
^bb32:
  %v157 = sea.load %v129[%v154] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_76"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v158 = sea.const 1 : i64 loc("_77"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v159 = sea.icmp ugt, %v157, %v158 : i64 loc("_77"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v160 = sea.const 8 : i64 loc("_78"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v161 = sea.ptr.dereferenceable %v154, %v160 : !sea.ptr<64>, i64 loc("_78"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v161, ^bb33, ^bb58
^bb33:
  %v162 = sea.ctpop %v157 : i64 loc("_80"("aws-c-common/include/aws/common/math.inl":161:14))
  %v163 = sea.const 1 : i64 loc("_81"("aws-c-common/include/aws/common/math.inl":161:14))
  %v164 = sea.icmp eq, %v162, %v163 : i64 loc("_81"("aws-c-common/include/aws/common/math.inl":161:14))
  %v165 = sea.ptr.index %v130 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_82"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v166 = sea.const 8 : i64 loc("_83"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v167 = sea.ptr.dereferenceable %v165, %v166 : !sea.ptr<64>, i64 loc("_83"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v167, ^bb34, ^bb58
^bb34:
  %v168 = sea.load %v129[%v165] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_85"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v169 = sea.ptr.index %v130 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_86"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v170 = sea.const 8 : i64 loc("_87"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v171 = sea.ptr.dereferenceable %v169, %v170 : !sea.ptr<64>, i64 loc("_87"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v171, ^bb35, ^bb58
^bb35:
  %v172 = sea.load %v129[%v169] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_89"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v173 = sea.icmp ule, %v168, %v172 : i64 loc("_90"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v174 = sea.const 8 : i64 loc("_91"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v175 = sea.ptr.dereferenceable %v169, %v174 : !sea.ptr<64>, i64 loc("_91"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v175, ^bb36, ^bb58
^bb36:
  %v176 = sea.const 8 : i64 loc("_93"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v177 = sea.ptr.dereferenceable %v154, %v176 : !sea.ptr<64>, i64 loc("_93"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v177, ^bb37, ^bb58
^bb37:
  %v178 = sea.icmp ult, %v172, %v157 : i64 loc("_95"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v179 = sea.ptr.index %v130 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_96"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v180 = sea.const 8 : i64 loc("_97"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v181 = sea.ptr.dereferenceable %v179, %v180 : !sea.ptr<64>, i64 loc("_97"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v181, ^bb38, ^bb58
^bb38:
  %v182 = sea.load %v129[%v179] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_99"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v183 = sea.const 8 : i64 loc("_100"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v184 = sea.ptr.dereferenceable %v154, %v183 : !sea.ptr<64>, i64 loc("_100"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v184, ^bb39, ^bb58
^bb39:
  %v185 = sea.const 8 : i64 loc("_102"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v186 = sea.ptr.dereferenceable %v154, %v185 : !sea.ptr<64>, i64 loc("_102"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v186, ^bb40, ^bb58
^bb40:
  %v187 = sea.const 18446744073709551615 : i64 loc("_104"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v188 = sea.add %v157, %v187 : i64 loc("_104"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v189 = sea.icmp eq, %v182, %v188 : i64 loc("_105"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
  %v190 = sea.const 0 : i1 loc("or.cond.i31.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v191 = sea.select %v141, %v147, %v190 : i1 loc("or.cond.i31.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v192 = sea.const 0 : i1 loc("or.cond3.i32.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v193 = sea.select %v191, %v153, %v192 : i1 loc("or.cond3.i32.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v194 = sea.const 0 : i1 loc("or.cond5.i33.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v195 = sea.select %v193, %v159, %v194 : i1 loc("or.cond5.i33.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v196 = sea.const 0 : i1 loc("or.cond7.i34.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v197 = sea.select %v195, %v164, %v196 : i1 loc("or.cond7.i34.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v198 = sea.const 0 : i1 loc("or.cond9.i35.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v199 = sea.select %v197, %v173, %v198 : i1 loc("or.cond9.i35.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v200 = sea.const 0 : i1 loc("or.cond11.i36.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v201 = sea.select %v199, %v178, %v200 : i1 loc("or.cond11.i36.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v202 = sea.const 0 : i1 loc("or.cond13.i37.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v203 = sea.select %v201, %v189, %v202 : i1 loc("or.cond13.i37.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.br ^bb41(%v203 : i1)
^bb41(%v204 : i1):
  sea.br ^bb42
^bb42:
  %v205 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1027:31)
  sea.cond_br %v135, ^bb57(%v205 : i1), ^bb43 loc("aws-c-common/source/hash_table.c":1027:31)
^bb43:
  sea.br ^bb44
^bb44:
  %v206 = sea.const 8 : i64 loc("_110"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v207 = sea.ptr.dereferenceable %v130, %v206 : !sea.ptr<64>, i64 loc("_110"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v207, ^bb45, ^bb58
^bb45:
  %v208 = sea.load %v129[%v130] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_112"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v209 = sea.ptr.null : !sea.ptr<64> loc("_113"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v210 = sea.ptr.cmp ne, %v208, %v209 : !sea.ptr<64> loc("_113"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v211 = sea.ptr.index %v130 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_114"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v212 = sea.const 8 : i64 loc("_115"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v213 = sea.ptr.dereferenceable %v211, %v212 : !sea.ptr<64>, i64 loc("_115"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v213, ^bb46, ^bb58
^bb46:
  %v214 = sea.load %v129[%v211] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_117"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v215 = sea.ptr.null : !sea.ptr<64> loc("_118"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v216 = sea.ptr.cmp ne, %v214, %v215 : !sea.ptr<64> loc("_118"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v217 = sea.ptr.index %v130 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_119"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v218 = sea.const 8 : i64 loc("_120"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v219 = sea.ptr.dereferenceable %v217, %v218 : !sea.ptr<64>, i64 loc("_120"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v219, ^bb47, ^bb58
^bb47:
  %v220 = sea.load %v129[%v217] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_122"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v221 = sea.ptr.null : !sea.ptr<64> loc("_123"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v222 = sea.ptr.cmp ne, %v220, %v221 : !sea.ptr<64> loc("_123"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v223 = sea.ptr.index %v130 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_124"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v224 = sea.const 8 : i64 loc("_125"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v225 = sea.ptr.dereferenceable %v223, %v224 : !sea.ptr<64>, i64 loc("_125"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v225, ^bb48, ^bb58
^bb48:
  %v226 = sea.load %v129[%v223] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_127"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v227 = sea.const 1 : i64 loc("_128"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v228 = sea.icmp ugt, %v226, %v227 : i64 loc("_128"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v229 = sea.const 8 : i64 loc("_129"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v230 = sea.ptr.dereferenceable %v223, %v229 : !sea.ptr<64>, i64 loc("_129"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v230, ^bb49, ^bb58
^bb49:
  %v231 = sea.ctpop %v226 : i64 loc("_131"("aws-c-common/include/aws/common/math.inl":161:14))
  %v232 = sea.const 1 : i64 loc("_132"("aws-c-common/include/aws/common/math.inl":161:14))
  %v233 = sea.icmp eq, %v231, %v232 : i64 loc("_132"("aws-c-common/include/aws/common/math.inl":161:14))
  %v234 = sea.ptr.index %v130 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_133"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v235 = sea.const 8 : i64 loc("_134"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v236 = sea.ptr.dereferenceable %v234, %v235 : !sea.ptr<64>, i64 loc("_134"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v236, ^bb50, ^bb58
^bb50:
  %v237 = sea.load %v129[%v234] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_136"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v238 = sea.ptr.index %v130 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_137"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v239 = sea.const 8 : i64 loc("_138"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v240 = sea.ptr.dereferenceable %v238, %v239 : !sea.ptr<64>, i64 loc("_138"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v240, ^bb51, ^bb58
^bb51:
  %v241 = sea.load %v129[%v238] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_140"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v242 = sea.icmp ule, %v237, %v241 : i64 loc("_141"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v243 = sea.const 8 : i64 loc("_142"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v244 = sea.ptr.dereferenceable %v238, %v243 : !sea.ptr<64>, i64 loc("_142"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v244, ^bb52, ^bb58
^bb52:
  %v245 = sea.const 8 : i64 loc("_144"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v246 = sea.ptr.dereferenceable %v223, %v245 : !sea.ptr<64>, i64 loc("_144"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v246, ^bb53, ^bb58
^bb53:
  %v247 = sea.icmp ult, %v241, %v226 : i64 loc("_146"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v248 = sea.ptr.index %v130 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_147"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v249 = sea.const 8 : i64 loc("_148"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v250 = sea.ptr.dereferenceable %v248, %v249 : !sea.ptr<64>, i64 loc("_148"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v250, ^bb54, ^bb58
^bb54:
  %v251 = sea.load %v129[%v248] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_150"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v252 = sea.const 8 : i64 loc("_151"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v253 = sea.ptr.dereferenceable %v223, %v252 : !sea.ptr<64>, i64 loc("_151"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v253, ^bb55, ^bb58
^bb55:
  %v254 = sea.const 8 : i64 loc("_153"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v255 = sea.ptr.dereferenceable %v223, %v254 : !sea.ptr<64>, i64 loc("_153"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v255, ^bb56, ^bb58
^bb56:
  %v256 = sea.const 18446744073709551615 : i64 loc("_155"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v257 = sea.add %v226, %v256 : i64 loc("_155"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v258 = sea.icmp eq, %v251, %v257 : i64 loc("_156"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
  %v259 = sea.const 0 : i1 loc("or.cond.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v260 = sea.select %v210, %v216, %v259 : i1 loc("or.cond.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v261 = sea.const 0 : i1 loc("or.cond3.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v262 = sea.select %v260, %v222, %v261 : i1 loc("or.cond3.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v263 = sea.const 0 : i1 loc("or.cond5.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v264 = sea.select %v262, %v228, %v263 : i1 loc("or.cond5.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v265 = sea.const 0 : i1 loc("or.cond7.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v266 = sea.select %v264, %v233, %v265 : i1 loc("or.cond7.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v267 = sea.const 0 : i1 loc("or.cond9.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v268 = sea.select %v266, %v242, %v267 : i1 loc("or.cond9.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v269 = sea.const 0 : i1 loc("or.cond11.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v270 = sea.select %v268, %v247, %v269 : i1 loc("or.cond11.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v271 = sea.const 0 : i1 loc("or.cond13.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v272 = sea.select %v270, %v258, %v271 : i1 loc("or.cond13.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.br ^bb57(%v272 : i1)
^bb57(%v273 : i1):
  %v274 = sea.const 1 : i1 loc("seahorn/jobs/hash_table_init_unbounded/aws_hash_table_init_unbounded_harness.c":32:5)
  %v275 = sea.xor %v273, %v274 : i1 loc("seahorn/jobs/hash_table_init_unbounded/aws_hash_table_init_unbounded_harness.c":32:5)
  sea.assume %v275 loc("seahorn/jobs/hash_table_init_unbounded/aws_hash_table_init_unbounded_harness.c":32:5)
  sea.br ^bb58 loc("seahorn/jobs/hash_table_init_unbounded/aws_hash_table_init_unbounded_harness.c":32:5)
^bb58:
  sea.br ^bb59
^bb59:
  %v276 = sea.const 0 : i1
  sea.assert %v276
  sea.halt
}
