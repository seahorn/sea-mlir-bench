// Exported from SeaHorn (hash_table_init_bounded.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.16" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm27")
  %v1 = sea.mem.nondet "region.88" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm28")
  %v2 = sea.mem.nondet "region.0" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm29")
  %v3 = sea.mem.nondet "region.96" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm30")
  %v4 = sea.const 80 : i64 loc("_0")
  %v5 = sea.alloca %v4 align 8 [4] : i64 -> !sea.ptr<64> loc("_0")
  %v6 = sea.const 8 : i64 loc("_1")
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
  %v20 = sea.nondet "nd_size_t" [6] : i64 loc("_4"("seahorn/jobs/hash_table_init_bounded/aws_hash_table_init_bounded_harness.c":14:17))
  %v21 = sea.const 9 : i64 loc("_5"("seahorn/jobs/hash_table_init_bounded/aws_hash_table_init_bounded_harness.c":18:15))
  %v22 = sea.icmp ult, %v20, %v21 : i64 loc("_5"("seahorn/jobs/hash_table_init_bounded/aws_hash_table_init_bounded_harness.c":18:15))
  sea.assume %v22 loc("seahorn/jobs/hash_table_init_bounded/aws_hash_table_init_bounded_harness.c":18:3)
  %v23 = sea.const 1 : i1 loc("seahorn/jobs/hash_table_init_bounded/aws_hash_table_init_bounded_harness.c":22:3)
  sea.assume %v23 loc("seahorn/jobs/hash_table_init_bounded/aws_hash_table_init_bounded_harness.c":22:3)
  %v24 = sea.const 1 : i1 loc("seahorn/jobs/hash_table_init_bounded/aws_hash_table_init_bounded_harness.c":25:3)
  sea.assume %v24 loc("seahorn/jobs/hash_table_init_bounded/aws_hash_table_init_bounded_harness.c":25:3)
  %v25 = sea.func_addr @"uninterpreted_hasher.addr" : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":226:22)
  %v26 = sea.store %v0[%v5], %v25 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":226:22)
  %v27 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_6"("aws-c-common/source/hash_table.c":227:14))
  %v28 = sea.func_addr @"uninterpreted_equals" : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":227:24)
  %v29 = sea.store %v26[%v27], %v28 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":227:24)
  %v30 = sea.ptr.index %v5 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_7"("aws-c-common/source/hash_table.c":228:14))
  %v31 = sea.func_addr @"uninterpreted_destroy_fn" : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":228:29)
  %v32 = sea.store %v29[%v30], %v31 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":228:29)
  %v33 = sea.ptr.index %v5 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_8"("aws-c-common/source/hash_table.c":229:14))
  %v34 = sea.func_addr @"uninterpreted_destroy_fn" : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":229:31)
  %v35 = sea.store %v32[%v33], %v34 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":229:31)
  %v36 = sea.ptr.index %v5 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_9"("aws-c-common/source/hash_table.c":230:14))
  %v37 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":230:20)
  %v38 = sea.store %v35[%v36], %v37 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":230:20)
  %v39 = sea.const 2 : i64 loc("spec.store.select.i.i"("seahorn/aws-c-common-stubs/s_update_template_size_override.c":32:7))
  %v40 = sea.umax %v20, %v39 : i64 loc("spec.store.select.i.i"("seahorn/aws-c-common-stubs/s_update_template_size_override.c":32:7))
  %v41 = sea.const 9223372036854775809 : i64 loc("_10"("aws-c-common/include/aws/common/math.inl":173:11))
  %v42 = sea.icmp ult, %v20, %v41 : i64 loc("_10"("aws-c-common/include/aws/common/math.inl":173:11))
  sea.cond_br %v42, ^bb2, ^bb1 loc("aws-c-common/include/aws/common/math.inl":173:9)
^bb1:
  %v43 = sea.ptr.nondet "undef" [7] : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":235:9)
  %v44 = sea.const 4294967295 : i32 loc("aws-c-common/source/hash_table.c":235:9)
  sea.br ^bb25(%v3, %v43, %v44 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i32) loc("aws-c-common/source/hash_table.c":235:9)
^bb2:
  sea.br ^bb3
^bb3:
  %v45 = sea.const 18446744073709551615 : i64 loc("_13"("aws-c-common/include/aws/common/math.inl":177:6))
  %v46 = sea.add %v40, %v45 : i64 loc("_13"("aws-c-common/include/aws/common/math.inl":177:6))
  %v47 = sea.const 1 : i64 loc("_14"("aws-c-common/include/aws/common/math.inl":178:12))
  %v48 = sea.lshr %v46, %v47 : i64 loc("_14"("aws-c-common/include/aws/common/math.inl":178:12))
  %v49 = sea.or %v48, %v46 : i64 loc("_15"("aws-c-common/include/aws/common/math.inl":178:7))
  %v50 = sea.const 2 : i64 loc("_16"("aws-c-common/include/aws/common/math.inl":179:12))
  %v51 = sea.lshr %v49, %v50 : i64 loc("_16"("aws-c-common/include/aws/common/math.inl":179:12))
  %v52 = sea.or %v51, %v49 : i64 loc("_17"("aws-c-common/include/aws/common/math.inl":179:7))
  %v53 = sea.const 4 : i64 loc("_18"("aws-c-common/include/aws/common/math.inl":180:12))
  %v54 = sea.lshr %v52, %v53 : i64 loc("_18"("aws-c-common/include/aws/common/math.inl":180:12))
  %v55 = sea.or %v54, %v52 : i64 loc("_19"("aws-c-common/include/aws/common/math.inl":180:7))
  %v56 = sea.const 8 : i64 loc("_20"("aws-c-common/include/aws/common/math.inl":181:12))
  %v57 = sea.lshr %v55, %v56 : i64 loc("_20"("aws-c-common/include/aws/common/math.inl":181:12))
  %v58 = sea.or %v57, %v55 : i64 loc("_21"("aws-c-common/include/aws/common/math.inl":181:7))
  %v59 = sea.const 16 : i64 loc("_22"("aws-c-common/include/aws/common/math.inl":182:12))
  %v60 = sea.lshr %v58, %v59 : i64 loc("_22"("aws-c-common/include/aws/common/math.inl":182:12))
  %v61 = sea.or %v60, %v58 : i64 loc("_23"("aws-c-common/include/aws/common/math.inl":182:7))
  %v62 = sea.const 32 : i64 loc("_24"("aws-c-common/include/aws/common/math.inl":184:12))
  %v63 = sea.lshr %v61, %v62 : i64 loc("_24"("aws-c-common/include/aws/common/math.inl":184:12))
  %v64 = sea.or %v63, %v61 : i64 loc("_25"("aws-c-common/include/aws/common/math.inl":184:7))
  %v65 = sea.const 1 : i64 loc("_26"("aws-c-common/include/aws/common/math.inl":186:6))
  %v66 = sea.add %v64, %v65 nuw : i64 loc("_26"("aws-c-common/include/aws/common/math.inl":186:6))
  %v67 = sea.ptr.index %v5 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_27"("seahorn/aws-c-common-stubs/s_update_template_size_override.c":44:13))
  sea.br ^bb4
^bb4:
  %v68 = sea.store %v38[%v67], %v66 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/s_update_template_size_override.c":44:18)
  %v69 = sea.nondet "nd_size_t" [8] : i64 loc("_29"("seahorn/aws-c-common-stubs/s_update_template_size_override.c":45:24))
  %v70 = sea.ptr.index %v5 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_30"("seahorn/aws-c-common-stubs/s_update_template_size_override.c":45:13))
  sea.br ^bb5
^bb5:
  %v71 = sea.store %v68[%v70], %v69 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/s_update_template_size_override.c":45:22)
  sea.br ^bb6
^bb6:
  %v72 = sea.icmp ule, %v69, %v64 : i64 loc("_33"("seahorn/aws-c-common-stubs/s_update_template_size_override.c":46:29))
  sea.assume %v72 loc("seahorn/aws-c-common-stubs/s_update_template_size_override.c":46:3)
  sea.br ^bb7
^bb7:
  sea.br ^bb8
^bb8:
  %v73 = sea.const 0 : i64 loc("_36"("seahorn/aws-c-common-stubs/s_update_template_size_override.c":47:29))
  %v74 = sea.icmp ne, %v69, %v73 : i64 loc("_36"("seahorn/aws-c-common-stubs/s_update_template_size_override.c":47:29))
  sea.assume %v74 loc("seahorn/aws-c-common-stubs/s_update_template_size_override.c":47:3)
  %v75 = sea.ptr.index %v5 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_37"("seahorn/aws-c-common-stubs/s_update_template_size_override.c":58:13))
  sea.br ^bb9
^bb9:
  %v76 = sea.store %v71[%v75], %v64 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/s_update_template_size_override.c":58:18)
  sea.br ^bb10
^bb10:
  sea.br ^bb11
^bb11:
  %v77 = sea.const 24 : i64 loc("_41"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v78 = sea.mul %v66, %v77 : i64 loc("_41"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v79 = sea.const 24 : i64 loc("_41"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v80 = sea.umulo %v66, %v79 : i64 loc("_41"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v80, ^bb21, ^bb12 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb12:
  sea.br ^bb13
^bb13:
  %v81 = sea.const 80 : i64 loc("_45"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v82 = sea.add %v78, %v81 : i64 loc("_45"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v83 = sea.const 80 : i64 loc("_45"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v84 = sea.uaddo %v78, %v83 : i64 loc("_45"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v84, ^bb20, ^bb14 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb14:
  sea.br ^bb15
^bb15:
  sea.br ^bb16
^bb16:
  %v85 = sea.const 0 : i64 loc("_50"("seahorn/lib/allocator_override.c":17:3))
  %v86 = sea.icmp ne, %v82, %v85 : i64 loc("_50"("seahorn/lib/allocator_override.c":17:3))
  %v87 = sea.const 0 : i64 loc(".not.i.i.i"("seahorn/lib/allocator_override.c":17:3))
  %v88 = sea.icmp eq, %v82, %v87 : i64 loc(".not.i.i.i"("seahorn/lib/allocator_override.c":17:3))
  sea.cond_br %v88, ^bb60, ^bb17 loc("seahorn/lib/allocator_override.c":17:3)
^bb17:
  %v89 = sea.nondet "nd_malloc_is_fail" [9] : i1 loc("_52"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v89, ^bb19, ^bb18 loc("seahorn/lib/sea_allocators.c":11:10)
^bb18:
  %v90 = sea.const 1 : i64 loc("malloc.i")
  %v91 = sea.mul %v82, %v90 : i64 loc("malloc.i")
  %v92 = sea.alloca %v91 align 16 [10] : i64 -> !sea.ptr<64> loc("malloc.i")
  %v93 = sea.memhavoc %v3[%v92], %v82 [11] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v94 = sea.const 0 : i8 loc("seahorn/lib/allocator_override.c":38:3)
  %v95 = sea.memset %v93[%v92], %v94, %v82 inplace align 16 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/allocator_override.c":38:3)
  %v96 = sea.func_addr @"uninterpreted_hasher.addr" : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":181:14)
  %v97 = sea.store %v95[%v92], %v96 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":181:14)
  %v98 = sea.ptr.index %v92 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i.i"("aws-c-common/source/hash_table.c":181:14))
  %v99 = sea.func_addr @"uninterpreted_equals" : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":181:14)
  %v100 = sea.store %v97[%v98], %v99 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":181:14)
  %v101 = sea.ptr.index %v92 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy5.i.i"("aws-c-common/source/hash_table.c":181:14))
  %v102 = sea.func_addr @"uninterpreted_destroy_fn" : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":181:14)
  %v103 = sea.store %v100[%v101], %v102 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":181:14)
  %v104 = sea.ptr.index %v92 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i.i"("aws-c-common/source/hash_table.c":181:14))
  %v105 = sea.func_addr @"uninterpreted_destroy_fn" : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":181:14)
  %v106 = sea.store %v103[%v104], %v105 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":181:14)
  %v107 = sea.ptr.index %v92 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy11.i.i"("aws-c-common/source/hash_table.c":181:14))
  %v108 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":181:14)
  %v109 = sea.store %v106[%v107], %v108 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":181:14)
  %v110 = sea.ptr.index %v92 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy14.i.i"("aws-c-common/source/hash_table.c":181:14))
  %v111 = sea.store %v109[%v110], %v66 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/hash_table.c":181:14)
  %v112 = sea.ptr.index %v92 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy17.i.i"("aws-c-common/source/hash_table.c":181:14))
  %v113 = sea.const 0 : i64 loc("aws-c-common/source/hash_table.c":181:14)
  %v114 = sea.store %v111[%v112], %v113 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/hash_table.c":181:14)
  %v115 = sea.ptr.index %v92 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy20.i.i"("aws-c-common/source/hash_table.c":181:14))
  %v116 = sea.store %v114[%v115], %v69 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/hash_table.c":181:14)
  %v117 = sea.ptr.index %v92 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy23.i.i"("aws-c-common/source/hash_table.c":181:14))
  %v118 = sea.store %v116[%v117], %v64 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/hash_table.c":181:14)
  %v119 = sea.ptr.index %v92 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy26.i.i"("aws-c-common/source/hash_table.c":181:14))
  %v120 = sea.const 4606732058837280358 : i64 loc("aws-c-common/source/hash_table.c":181:14)
  %v121 = sea.store %v118[%v119], %v120 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/hash_table.c":181:14)
  sea.br ^bb22(%v121, %v92 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("aws-c-common/source/hash_table.c":182:5)
^bb19:
  %v122 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":177:9)
  sea.br ^bb22(%v3, %v122 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("aws-c-common/source/hash_table.c":177:9)
^bb20:
  %v123 = sea.ptr.null : !sea.ptr<64>
  sea.br ^bb22(%v3, %v123 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>)
^bb21:
  %v124 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/hash_table.c":170:9)
  sea.br ^bb22(%v3, %v124 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("aws-c-common/source/hash_table.c":170:9)
^bb22(%v125 : !sea.mem<!sea.ptr<64>, i8>, %v126 : !sea.ptr<64>):
  sea.br ^bb23
^bb23:
  %v127 = sea.store %v1[%v7], %v126 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":238:17)
  sea.br ^bb24
^bb24:
  %v128 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/source/hash_table.c":240:10))
  %v129 = sea.ptr.cmp eq, %v126, %v128 : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/source/hash_table.c":240:10))
  %v130 = sea.sext %v129 : i1 to i32 loc("..i.i"("aws-c-common/source/hash_table.c":0:0))
  sea.br ^bb25(%v125, %v126, %v130 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i32) loc("aws-c-common/source/hash_table.c":0:0)
^bb25(%v131 : !sea.mem<!sea.ptr<64>, i8>, %v132 : !sea.ptr<64>, %v133 : i32):
  %v134 = sea.const 0 : i32 loc("_56"("seahorn/jobs/hash_table_init_bounded/aws_hash_table_init_bounded_harness.c":34:12))
  %v135 = sea.icmp eq, %v133, %v134 : i32 loc("_56"("seahorn/jobs/hash_table_init_bounded/aws_hash_table_init_bounded_harness.c":34:12))
  sea.assume %v135 loc("seahorn/jobs/hash_table_init_bounded/aws_hash_table_init_bounded_harness.c":34:7)
  sea.br ^bb26
^bb26:
  %v136 = sea.ptr.null : !sea.ptr<64> loc(".not1.i12.i"("aws-c-common/source/hash_table.c":1027:19))
  %v137 = sea.ptr.cmp ne, %v132, %v136 : !sea.ptr<64> loc(".not1.i12.i"("aws-c-common/source/hash_table.c":1027:19))
  %v138 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1027:31)
  sea.cond_br %v137, ^bb27, ^bb41(%v138 : i1) loc("aws-c-common/source/hash_table.c":1027:31)
^bb27:
  sea.br ^bb28
^bb28:
  %v139 = sea.const 8 : i64 loc("_60"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v140 = sea.ptr.dereferenceable %v132, %v139 : !sea.ptr<64>, i64 loc("_60"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v140, ^bb29, ^bb60
^bb29:
  %v141 = sea.load %v131[%v132] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_62"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v142 = sea.ptr.null : !sea.ptr<64> loc("_63"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v143 = sea.ptr.cmp ne, %v141, %v142 : !sea.ptr<64> loc("_63"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v144 = sea.ptr.index %v132 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_64"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v145 = sea.const 8 : i64 loc("_65"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v146 = sea.ptr.dereferenceable %v144, %v145 : !sea.ptr<64>, i64 loc("_65"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v146, ^bb30, ^bb60
^bb30:
  %v147 = sea.load %v131[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_67"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v148 = sea.ptr.null : !sea.ptr<64> loc("_68"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v149 = sea.ptr.cmp ne, %v147, %v148 : !sea.ptr<64> loc("_68"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v150 = sea.ptr.index %v132 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_69"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v151 = sea.const 8 : i64 loc("_70"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v152 = sea.ptr.dereferenceable %v150, %v151 : !sea.ptr<64>, i64 loc("_70"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v152, ^bb31, ^bb60
^bb31:
  %v153 = sea.load %v131[%v150] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_72"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v154 = sea.ptr.null : !sea.ptr<64> loc("_73"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v155 = sea.ptr.cmp ne, %v153, %v154 : !sea.ptr<64> loc("_73"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v156 = sea.ptr.index %v132 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_74"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v157 = sea.const 8 : i64 loc("_75"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v158 = sea.ptr.dereferenceable %v156, %v157 : !sea.ptr<64>, i64 loc("_75"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v158, ^bb32, ^bb60
^bb32:
  %v159 = sea.load %v131[%v156] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_77"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v160 = sea.const 1 : i64 loc("_78"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v161 = sea.icmp ugt, %v159, %v160 : i64 loc("_78"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v162 = sea.const 8 : i64 loc("_79"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v163 = sea.ptr.dereferenceable %v156, %v162 : !sea.ptr<64>, i64 loc("_79"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v163, ^bb33, ^bb60
^bb33:
  %v164 = sea.ctpop %v159 : i64 loc("_81"("aws-c-common/include/aws/common/math.inl":161:14))
  %v165 = sea.const 1 : i64 loc("_82"("aws-c-common/include/aws/common/math.inl":161:14))
  %v166 = sea.icmp eq, %v164, %v165 : i64 loc("_82"("aws-c-common/include/aws/common/math.inl":161:14))
  %v167 = sea.ptr.index %v132 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_83"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v168 = sea.const 8 : i64 loc("_84"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v169 = sea.ptr.dereferenceable %v167, %v168 : !sea.ptr<64>, i64 loc("_84"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v169, ^bb34, ^bb60
^bb34:
  %v170 = sea.load %v131[%v167] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_86"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v171 = sea.ptr.index %v132 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_87"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v172 = sea.const 8 : i64 loc("_88"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v173 = sea.ptr.dereferenceable %v171, %v172 : !sea.ptr<64>, i64 loc("_88"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v173, ^bb35, ^bb60
^bb35:
  %v174 = sea.load %v131[%v171] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_90"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v175 = sea.icmp ule, %v170, %v174 : i64 loc("_91"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v176 = sea.const 8 : i64 loc("_92"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v177 = sea.ptr.dereferenceable %v171, %v176 : !sea.ptr<64>, i64 loc("_92"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v177, ^bb36, ^bb60
^bb36:
  %v178 = sea.const 8 : i64 loc("_94"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v179 = sea.ptr.dereferenceable %v156, %v178 : !sea.ptr<64>, i64 loc("_94"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v179, ^bb37, ^bb60
^bb37:
  %v180 = sea.icmp ult, %v174, %v159 : i64 loc("_96"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v181 = sea.ptr.index %v132 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_97"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v182 = sea.const 8 : i64 loc("_98"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v183 = sea.ptr.dereferenceable %v181, %v182 : !sea.ptr<64>, i64 loc("_98"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v183, ^bb38, ^bb60
^bb38:
  %v184 = sea.load %v131[%v181] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_100"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v185 = sea.const 8 : i64 loc("_101"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v186 = sea.ptr.dereferenceable %v156, %v185 : !sea.ptr<64>, i64 loc("_101"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v186, ^bb39, ^bb60
^bb39:
  %v187 = sea.const 8 : i64 loc("_103"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v188 = sea.ptr.dereferenceable %v156, %v187 : !sea.ptr<64>, i64 loc("_103"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v188, ^bb40, ^bb60
^bb40:
  %v189 = sea.const 18446744073709551615 : i64 loc("_105"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v190 = sea.add %v159, %v189 : i64 loc("_105"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v191 = sea.icmp eq, %v184, %v190 : i64 loc("_106"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
  %v192 = sea.const 0 : i1 loc("or.cond.i31.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v193 = sea.select %v143, %v149, %v192 : i1 loc("or.cond.i31.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v194 = sea.const 0 : i1 loc("or.cond3.i32.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v195 = sea.select %v193, %v155, %v194 : i1 loc("or.cond3.i32.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v196 = sea.const 0 : i1 loc("or.cond5.i33.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v197 = sea.select %v195, %v161, %v196 : i1 loc("or.cond5.i33.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v198 = sea.const 0 : i1 loc("or.cond7.i34.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v199 = sea.select %v197, %v166, %v198 : i1 loc("or.cond7.i34.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v200 = sea.const 0 : i1 loc("or.cond9.i35.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v201 = sea.select %v199, %v175, %v200 : i1 loc("or.cond9.i35.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v202 = sea.const 0 : i1 loc("or.cond11.i36.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v203 = sea.select %v201, %v180, %v202 : i1 loc("or.cond11.i36.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v204 = sea.const 0 : i1 loc("or.cond13.i37.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v205 = sea.select %v203, %v191, %v204 : i1 loc("or.cond13.i37.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.br ^bb41(%v205 : i1)
^bb41(%v206 : i1):
  %v207 = sea.const 1 : i1 loc("or.cond.not")
  %v208 = sea.and %v137, %v207 : i1 loc("or.cond.not")
  sea.cond_br %v208, ^bb42, ^bb60
^bb42:
  sea.br ^bb43
^bb43:
  %v209 = sea.const 8 : i64 loc("_110"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v210 = sea.ptr.dereferenceable %v132, %v209 : !sea.ptr<64>, i64 loc("_110"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v210, ^bb44, ^bb60
^bb44:
  %v211 = sea.load %v131[%v132] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_112"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v212 = sea.ptr.null : !sea.ptr<64> loc("_113"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v213 = sea.ptr.cmp ne, %v211, %v212 : !sea.ptr<64> loc("_113"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v214 = sea.ptr.index %v132 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_114"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v215 = sea.const 8 : i64 loc("_115"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v216 = sea.ptr.dereferenceable %v214, %v215 : !sea.ptr<64>, i64 loc("_115"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v216, ^bb45, ^bb60
^bb45:
  %v217 = sea.load %v131[%v214] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_117"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v218 = sea.ptr.null : !sea.ptr<64> loc("_118"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v219 = sea.ptr.cmp ne, %v217, %v218 : !sea.ptr<64> loc("_118"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v220 = sea.ptr.index %v132 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_119"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v221 = sea.const 8 : i64 loc("_120"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v222 = sea.ptr.dereferenceable %v220, %v221 : !sea.ptr<64>, i64 loc("_120"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v222, ^bb46, ^bb60
^bb46:
  %v223 = sea.load %v131[%v220] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_122"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v224 = sea.ptr.null : !sea.ptr<64> loc("_123"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v225 = sea.ptr.cmp ne, %v223, %v224 : !sea.ptr<64> loc("_123"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v226 = sea.ptr.index %v132 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_124"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v227 = sea.const 8 : i64 loc("_125"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v228 = sea.ptr.dereferenceable %v226, %v227 : !sea.ptr<64>, i64 loc("_125"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v228, ^bb47, ^bb60
^bb47:
  %v229 = sea.load %v131[%v226] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_127"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v230 = sea.const 1 : i64 loc("_128"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v231 = sea.icmp ugt, %v229, %v230 : i64 loc("_128"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v232 = sea.const 8 : i64 loc("_129"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v233 = sea.ptr.dereferenceable %v226, %v232 : !sea.ptr<64>, i64 loc("_129"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v233, ^bb48, ^bb60
^bb48:
  %v234 = sea.ctpop %v229 : i64 loc("_131"("aws-c-common/include/aws/common/math.inl":161:14))
  %v235 = sea.const 1 : i64 loc("_132"("aws-c-common/include/aws/common/math.inl":161:14))
  %v236 = sea.icmp eq, %v234, %v235 : i64 loc("_132"("aws-c-common/include/aws/common/math.inl":161:14))
  %v237 = sea.ptr.index %v132 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_133"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v238 = sea.const 8 : i64 loc("_134"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v239 = sea.ptr.dereferenceable %v237, %v238 : !sea.ptr<64>, i64 loc("_134"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v239, ^bb49, ^bb60
^bb49:
  %v240 = sea.load %v131[%v237] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_136"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v241 = sea.ptr.index %v132 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_137"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v242 = sea.const 8 : i64 loc("_138"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v243 = sea.ptr.dereferenceable %v241, %v242 : !sea.ptr<64>, i64 loc("_138"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v243, ^bb50, ^bb60
^bb50:
  %v244 = sea.load %v131[%v241] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_140"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v245 = sea.icmp ule, %v240, %v244 : i64 loc("_141"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v246 = sea.const 8 : i64 loc("_142"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v247 = sea.ptr.dereferenceable %v241, %v246 : !sea.ptr<64>, i64 loc("_142"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v247, ^bb51, ^bb60
^bb51:
  %v248 = sea.const 8 : i64 loc("_144"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v249 = sea.ptr.dereferenceable %v226, %v248 : !sea.ptr<64>, i64 loc("_144"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v249, ^bb52, ^bb60
^bb52:
  %v250 = sea.icmp ult, %v244, %v229 : i64 loc("_146"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v251 = sea.ptr.index %v132 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_147"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v252 = sea.const 8 : i64 loc("_148"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v253 = sea.ptr.dereferenceable %v251, %v252 : !sea.ptr<64>, i64 loc("_148"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v253, ^bb53, ^bb60
^bb53:
  %v254 = sea.load %v131[%v251] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_150"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v255 = sea.const 8 : i64 loc("_151"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v256 = sea.ptr.dereferenceable %v226, %v255 : !sea.ptr<64>, i64 loc("_151"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v256, ^bb54, ^bb60
^bb54:
  %v257 = sea.const 8 : i64 loc("_153"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v258 = sea.ptr.dereferenceable %v226, %v257 : !sea.ptr<64>, i64 loc("_153"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v258, ^bb55, ^bb60
^bb55:
  %v259 = sea.const 18446744073709551615 : i64 loc("_154"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v260 = sea.add %v229, %v259 : i64 loc("_154"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v261 = sea.icmp eq, %v254, %v260 : i64 loc("_155"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
  %v262 = sea.const 0 : i1 loc("or.cond.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v263 = sea.select %v213, %v219, %v262 : i1 loc("or.cond.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v264 = sea.const 0 : i1 loc("or.cond3.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v265 = sea.select %v263, %v225, %v264 : i1 loc("or.cond3.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v266 = sea.const 0 : i1 loc("or.cond5.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v267 = sea.select %v265, %v231, %v266 : i1 loc("or.cond5.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v268 = sea.const 0 : i1 loc("or.cond7.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v269 = sea.select %v267, %v236, %v268 : i1 loc("or.cond7.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v270 = sea.const 0 : i1 loc("or.cond9.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v271 = sea.select %v269, %v245, %v270 : i1 loc("or.cond9.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v272 = sea.const 0 : i1 loc("or.cond11.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v273 = sea.select %v271, %v250, %v272 : i1 loc("or.cond11.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v274 = sea.const 0 : i1 loc("or.cond13.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v275 = sea.select %v273, %v261, %v274 : i1 loc("or.cond13.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.cond_br %v275, ^bb56, ^bb60 loc("seahorn/jobs/hash_table_init_bounded/aws_hash_table_init_bounded_harness.c":36:5)
^bb56:
  %v276 = sea.const 8 : i64 loc("_157"("seahorn/jobs/hash_table_init_bounded/aws_hash_table_init_bounded_harness.c":39:29))
  %v277 = sea.ptr.dereferenceable %v226, %v276 : !sea.ptr<64>, i64 loc("_157"("seahorn/jobs/hash_table_init_bounded/aws_hash_table_init_bounded_harness.c":39:29))
  sea.cond_br %v277, ^bb57, ^bb60
^bb57:
  %v278 = sea.ptr.index %v132 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_159"("seahorn/jobs/hash_table_init_bounded/aws_hash_table_init_bounded_harness.c":38:41))
  %v279 = sea.const 24 : i64 loc("_160"("seahorn/jobs/hash_table_init_bounded/aws_hash_table_init_bounded_harness.c":39:34))
  %v280 = sea.mul %v229, %v279 : i64 loc("_160"("seahorn/jobs/hash_table_init_bounded/aws_hash_table_init_bounded_harness.c":39:34))
  %v281 = sea.const 0 : i64 loc("_161"("seahorn/lib/utils.c":26:11))
  %v282 = sea.icmp ne, %v280, %v281 : i64 loc("_161"("seahorn/lib/utils.c":26:11))
  sea.assume %v282 loc("seahorn/lib/utils.c":26:15)
  %v283 = sea.nondet "nd_size_t" [12] : i64 loc("_162"("seahorn/lib/utils.c":27:16))
  %v284 = sea.icmp ult, %v283, %v280 : i64 loc("_163"("seahorn/lib/utils.c":28:14))
  sea.assume %v284 loc("seahorn/lib/utils.c":28:5)
  %v285 = sea.ptr.index %v278 [%v283] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_164"("seahorn/lib/utils.c":29:5))
  %v286 = sea.const 1 : i64 loc("_165"("seahorn/lib/utils.c":29:5))
  %v287 = sea.ptr.dereferenceable %v285, %v286 : !sea.ptr<64>, i64 loc("_165"("seahorn/lib/utils.c":29:5))
  sea.cond_br %v287, ^bb58, ^bb60
^bb58:
  %v288 = sea.load %v131[%v285] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_167"("seahorn/lib/utils.c":29:5))
  %v289 = sea.const 0 : i8 loc("_168"("seahorn/lib/utils.c":29:5))
  %v290 = sea.icmp eq, %v288, %v289 : i8 loc("_168"("seahorn/lib/utils.c":29:5))
  %v291 = sea.const 1 : i64 loc("_169"("seahorn/lib/utils.c":29:5))
  %v292 = sea.ptr.dereferenceable %v285, %v291 : !sea.ptr<64>, i64 loc("_169"("seahorn/lib/utils.c":29:5))
  sea.cond_br %v292, ^bb59, ^bb60
^bb59:
  %v293 = sea.const 1 : i1 loc("seahorn/lib/utils.c":29:5)
  %v294 = sea.xor %v290, %v293 : i1 loc("seahorn/lib/utils.c":29:5)
  sea.assume %v294 loc("seahorn/lib/utils.c":29:5)
  sea.br ^bb60 loc("seahorn/lib/utils.c":29:5)
^bb60:
  sea.br ^bb61
^bb61:
  %v295 = sea.const 0 : i1
  sea.assert %v295
  sea.halt
}
