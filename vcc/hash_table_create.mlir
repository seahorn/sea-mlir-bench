// Exported from SeaHorn (hash_table_create.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.16" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm45")
  %v1 = sea.mem.nondet "region.100" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm46")
  %v2 = sea.mem.nondet "region.96" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm47")
  %v3 = sea.mem.nondet "region.0" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm48")
  %v4 = sea.mem.nondet "region.108" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm49")
  %v5 = sea.const 80 : i64 loc("_0")
  %v6 = sea.alloca %v5 align 8 [5] : i64 -> !sea.ptr<64> loc("_0")
  %v7 = sea.const 4 : i64 loc("_1")
  %v8 = sea.alloca %v7 align 8 [6] : i64 -> !sea.ptr<64> loc("_1")
  %v9 = sea.const 8 : i64 loc("_2")
  %v10 = sea.alloca %v9 align 8 [7] : i64 -> !sea.ptr<64> loc("_2")
  %v11 = sea.const 4 : i64 loc("_3")
  %v12 = sea.alloca %v11 align 8 [8] : i64 -> !sea.ptr<64> loc("_3")
  %v13 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v14 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v15 = sea.store %v3[%v13], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v16 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_4")
  %v17 = sea.ptr.index %v16 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_4")
  %v18 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v19 = sea.store %v15[%v17], %v18 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v20 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_5")
  %v21 = sea.ptr.index %v20 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_5")
  %v22 = sea.const 0 : i8
  %v23 = sea.const 24 : i64
  %v24 = sea.memset %v19[%v21], %v22, %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v25 = sea.nondet "nd_size_t" [9] : i64 loc("_6"("seahorn/lib/hash_table_helper.c":14:24))
  %v26 = sea.const 5 : i64 loc("_7"("seahorn/lib/hash_table_helper.c":15:22))
  %v27 = sea.icmp ult, %v25, %v26 : i64 loc("_7"("seahorn/lib/hash_table_helper.c":15:22))
  sea.assume %v27 loc("seahorn/lib/hash_table_helper.c":15:3)
  %v28 = sea.ctpop %v25 : i64 loc("_8"("aws-c-common/include/aws/common/math.inl":161:14))
  %v29 = sea.const 1 : i64 loc("_9"("aws-c-common/include/aws/common/math.inl":161:14))
  %v30 = sea.icmp eq, %v28, %v29 : i64 loc("_9"("aws-c-common/include/aws/common/math.inl":161:14))
  sea.assume %v30 loc("seahorn/lib/hash_table_helper.c":16:3)
  %v31 = sea.nondet "nd_size_t" [10] : i64 loc("_10"("seahorn/lib/hash_table_helper.c":18:27))
  sea.br ^bb1
^bb1:
  %v32 = sea.const 24 : i64 loc("_12"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v33 = sea.mul %v25, %v32 : i64 loc("_12"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v34 = sea.const 24 : i64 loc("_12"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v35 = sea.umulo %v25, %v34 : i64 loc("_12"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v36 = sea.const 4294967295 : i32 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
  sea.cond_br %v35, ^bb6(%v31, %v36 : i64, i32), ^bb2 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb2:
  sea.br ^bb3
^bb3:
  %v37 = sea.const 80 : i64 loc("_16"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v38 = sea.add %v33, %v37 : i64 loc("_16"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v39 = sea.const 80 : i64 loc("_16"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v40 = sea.uaddo %v33, %v39 : i64 loc("_16"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v40, ^bb4, ^bb5 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb4:
  sea.br ^bb5 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":71:9)
^bb5:
  %v41 = sea.sext %v40 : i1 to i32 loc("..i.i.i"("aws-c-common/source/hash_table.c":0:0))
  sea.br ^bb6(%v38, %v41 : i64, i32) loc("aws-c-common/source/hash_table.c":0:0)
^bb6(%v42 : i64, %v43 : i32):
  %v44 = sea.const 0 : i32 loc("_21"("seahorn/lib/hash_table_helper.c":20:72))
  %v45 = sea.icmp eq, %v43, %v44 : i32 loc("_21"("seahorn/lib/hash_table_helper.c":20:72))
  sea.assume %v45 loc("seahorn/lib/hash_table_helper.c":20:3)
  %v46 = sea.const 0 : i64 loc("_22"("seahorn/lib/proof_allocators.c":17:15))
  %v47 = sea.icmp eq, %v42, %v46 : i64 loc("_22"("seahorn/lib/proof_allocators.c":17:15))
  %v48 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v47, ^bb10(%v4, %v48 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb7 loc("seahorn/lib/proof_allocators.c":17:10)
^bb7:
  %v49 = sea.nondet "nd_malloc_is_fail" [11] : i1 loc("_24"("seahorn/lib/sea_allocators.c":11:10))
  %v50 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v49, ^bb9(%v4, %v50 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb8 loc("seahorn/lib/sea_allocators.c":11:10)
^bb8:
  %v51 = sea.const 1 : i64 loc("malloc.i")
  %v52 = sea.mul %v42, %v51 : i64 loc("malloc.i")
  %v53 = sea.alloca %v52 align 16 [12] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb9(%v4, %v53 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb9(%v54 : !sea.mem<!sea.ptr<64>, i8>, %v55 : !sea.ptr<64>):
  %v56 = sea.memhavoc %v54[%v55], %v42 [13] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v57 = sea.ptr.null : !sea.ptr<64> loc("_27"("seahorn/lib/sea_allocators.c":45:10))
  %v58 = sea.ptr.cmp ne, %v55, %v57 : !sea.ptr<64> loc("_27"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v58 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb10(%v56, %v55 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb10(%v59 : !sea.mem<!sea.ptr<64>, i8>, %v60 : !sea.ptr<64>):
  %v61 = sea.ptr.index %v60 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_29"("seahorn/lib/hash_table_helper.c":23:9))
  %v62 = sea.const 8 : i64 loc("_30"("seahorn/lib/hash_table_helper.c":23:14))
  %v63 = sea.ptr.dereferenceable %v61, %v62 : !sea.ptr<64>, i64 loc("_30"("seahorn/lib/hash_table_helper.c":23:14))
  sea.cond_br %v63, ^bb11, ^bb267
^bb11:
  %v64 = sea.store %v59[%v61], %v25 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":23:14)
  %v65 = sea.ptr.index %v60 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_32"("seahorn/lib/hash_table_helper.c":24:9))
  %v66 = sea.const 8 : i64 loc("_33"("seahorn/lib/hash_table_helper.c":24:14))
  %v67 = sea.ptr.dereferenceable %v65, %v66 : !sea.ptr<64>, i64 loc("_33"("seahorn/lib/hash_table_helper.c":24:14))
  sea.cond_br %v67, ^bb12, ^bb267
^bb12:
  %v68 = sea.const 18446744073709551615 : i64 loc("_35"("seahorn/lib/hash_table_helper.c":24:28))
  %v69 = sea.add %v25, %v68 : i64 loc("_35"("seahorn/lib/hash_table_helper.c":24:28))
  %v70 = sea.store %v64[%v65], %v69 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":24:14)
  %v71 = sea.ptr.index %v60 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_36"("seahorn/lib/hash_table_helper.c":25:9))
  %v72 = sea.const 8 : i64 loc("_37"("seahorn/lib/hash_table_helper.c":25:25))
  %v73 = sea.ptr.dereferenceable %v71, %v72 : !sea.ptr<64>, i64 loc("_37"("seahorn/lib/hash_table_helper.c":25:25))
  sea.cond_br %v73, ^bb13, ^bb267
^bb13:
  %v74 = sea.const 4606732058837280358 : i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v75 = sea.store %v70[%v71], %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v76 = sea.ptr.index %v60 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_39"("seahorn/lib/hash_table_helper.c":26:9))
  %v77 = sea.const 8 : i64 loc("_40"("seahorn/lib/hash_table_helper.c":26:15))
  %v78 = sea.ptr.dereferenceable %v76, %v77 : !sea.ptr<64>, i64 loc("_40"("seahorn/lib/hash_table_helper.c":26:15))
  sea.cond_br %v78, ^bb14, ^bb267
^bb14:
  %v79 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v80 = sea.store %v75[%v76], %v79 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v81 = sea.const 8 : i64 loc("_42"("seahorn/lib/hash_table_helper.c":27:17))
  %v82 = sea.ptr.dereferenceable %v60, %v81 : !sea.ptr<64>, i64 loc("_42"("seahorn/lib/hash_table_helper.c":27:17))
  sea.cond_br %v82, ^bb15, ^bb267
^bb15:
  %v83 = sea.func_addr @"nd_hash_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v84 = sea.store %v80[%v60], %v83 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v85 = sea.ptr.index %v60 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_44"("seahorn/lib/hash_table_helper.c":28:9))
  %v86 = sea.const 8 : i64 loc("_45"("seahorn/lib/hash_table_helper.c":28:19))
  %v87 = sea.ptr.dereferenceable %v85, %v86 : !sea.ptr<64>, i64 loc("_45"("seahorn/lib/hash_table_helper.c":28:19))
  sea.cond_br %v87, ^bb16, ^bb267
^bb16:
  %v88 = sea.func_addr @"nd_hash_equals_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  %v89 = sea.store %v84[%v85], %v88 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  sea.br ^bb17
^bb17:
  %v90 = sea.store %v1[%v10], %v60 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":37:15)
  sea.br ^bb18
^bb18:
  sea.br ^bb19
^bb19:
  %v91 = sea.const 8 : i64 loc("_49"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v92 = sea.ptr.dereferenceable %v60, %v91 : !sea.ptr<64>, i64 loc("_49"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v92, ^bb20, ^bb267
^bb20:
  %v93 = sea.load %v84[%v60] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_51"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v94 = sea.ptr.null : !sea.ptr<64> loc("_52"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v95 = sea.ptr.cmp ne, %v93, %v94 : !sea.ptr<64> loc("_52"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v96 = sea.const 8 : i64 loc("_53"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v97 = sea.ptr.dereferenceable %v85, %v96 : !sea.ptr<64>, i64 loc("_53"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v97, ^bb21, ^bb267
^bb21:
  %v98 = sea.const 8 : i64 loc("_55"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v99 = sea.ptr.dereferenceable %v76, %v98 : !sea.ptr<64>, i64 loc("_55"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v99, ^bb22, ^bb267
^bb22:
  %v100 = sea.const 8 : i64 loc("_57"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v101 = sea.ptr.dereferenceable %v61, %v100 : !sea.ptr<64>, i64 loc("_57"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v101, ^bb23, ^bb267
^bb23:
  %v102 = sea.const 1 : i64 loc("_59"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v103 = sea.icmp ugt, %v25, %v102 : i64 loc("_59"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v104 = sea.const 8 : i64 loc("_60"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v105 = sea.ptr.dereferenceable %v61, %v104 : !sea.ptr<64>, i64 loc("_60"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v105, ^bb24, ^bb267
^bb24:
  %v106 = sea.ptr.index %v60 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_62"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v107 = sea.const 8 : i64 loc("_63"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v108 = sea.ptr.dereferenceable %v106, %v107 : !sea.ptr<64>, i64 loc("_63"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v108, ^bb25, ^bb267
^bb25:
  %v109 = sea.load %v64[%v106] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_65"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v110 = sea.ptr.index %v60 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_66"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v111 = sea.const 8 : i64 loc("_67"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v112 = sea.ptr.dereferenceable %v110, %v111 : !sea.ptr<64>, i64 loc("_67"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v112, ^bb26, ^bb267
^bb26:
  %v113 = sea.load %v64[%v110] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_69"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v114 = sea.icmp ule, %v109, %v113 : i64 loc("_70"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v115 = sea.const 8 : i64 loc("_71"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v116 = sea.ptr.dereferenceable %v110, %v115 : !sea.ptr<64>, i64 loc("_71"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v116, ^bb27, ^bb267
^bb27:
  %v117 = sea.const 8 : i64 loc("_73"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v118 = sea.ptr.dereferenceable %v61, %v117 : !sea.ptr<64>, i64 loc("_73"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v118, ^bb28, ^bb267
^bb28:
  %v119 = sea.icmp ult, %v113, %v25 : i64 loc("_75"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v120 = sea.const 8 : i64 loc("_76"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v121 = sea.ptr.dereferenceable %v65, %v120 : !sea.ptr<64>, i64 loc("_76"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v121, ^bb29, ^bb267
^bb29:
  %v122 = sea.const 8 : i64 loc("_78"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v123 = sea.ptr.dereferenceable %v61, %v122 : !sea.ptr<64>, i64 loc("_78"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v123, ^bb30, ^bb267
^bb30:
  %v124 = sea.const 8 : i64 loc("_80"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v125 = sea.ptr.dereferenceable %v61, %v124 : !sea.ptr<64>, i64 loc("_80"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v125, ^bb31, ^bb267
^bb31:
  %v126 = sea.const 0 : i1 loc("or.cond5.i101.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v127 = sea.select %v95, %v103, %v126 : i1 loc("or.cond5.i101.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v128 = sea.const 0 : i1 loc("or.cond7.i102.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v129 = sea.select %v127, %v30, %v128 : i1 loc("or.cond7.i102.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v130 = sea.const 0 : i1 loc("or.cond9.i103.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v131 = sea.select %v129, %v114, %v130 : i1 loc("or.cond9.i103.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v132 = sea.const 0 : i1 loc("or.cond11.i104.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v133 = sea.select %v131, %v119, %v132 : i1 loc("or.cond11.i104.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.assume %v133 loc("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":14:3)
  sea.br ^bb32
^bb32:
  %v134 = sea.const 8 : i64 loc("_82"("seahorn/lib/hash_table_helper.c":79:17))
  %v135 = sea.ptr.dereferenceable %v106, %v134 : !sea.ptr<64>, i64 loc("_82"("seahorn/lib/hash_table_helper.c":79:17))
  sea.cond_br %v135, ^bb33, ^bb267
^bb33:
  %v136 = sea.const 0 : i64 loc("_84"("seahorn/lib/hash_table_helper.c":79:29))
  %v137 = sea.icmp ne, %v109, %v136 : i64 loc("_84"("seahorn/lib/hash_table_helper.c":79:29))
  sea.assume %v137 loc("seahorn/lib/hash_table_helper.c":79:3)
  %v138 = sea.nondet "nd_size_t" [14] : i64 loc("_85"("seahorn/lib/hash_table_helper.c":80:27))
  %v139 = sea.const 8 : i64 loc("_86"("seahorn/lib/hash_table_helper.c":81:34))
  %v140 = sea.ptr.dereferenceable %v61, %v139 : !sea.ptr<64>, i64 loc("_86"("seahorn/lib/hash_table_helper.c":81:34))
  sea.cond_br %v140, ^bb34, ^bb267
^bb34:
  %v141 = sea.icmp ult, %v138, %v25 : i64 loc("_88"("seahorn/lib/hash_table_helper.c":81:25))
  sea.assume %v141 loc("seahorn/lib/hash_table_helper.c":81:3)
  sea.br ^bb35
^bb35:
  %v142 = sea.ptr.index %v60 [%v138] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_90"("seahorn/lib/hash_table_helper.c":83:39))
  %v143 = sea.const 8 : i64 loc("_91"("seahorn/lib/hash_table_helper.c":83:39))
  %v144 = sea.ptr.dereferenceable %v142, %v143 : !sea.ptr<64>, i64 loc("_91"("seahorn/lib/hash_table_helper.c":83:39))
  sea.cond_br %v144, ^bb36, ^bb267
^bb36:
  %v145 = sea.load %v64[%v142] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_92"("seahorn/lib/hash_table_helper.c":83:39))
  %v146 = sea.const 0 : i64 loc("_93"("seahorn/lib/hash_table_helper.c":83:49))
  %v147 = sea.icmp eq, %v145, %v146 : i64 loc("_93"("seahorn/lib/hash_table_helper.c":83:49))
  sea.assume %v147 loc("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":18:3)
  %v148 = sea.ptr.nondet "nd_voidp" [15] : !sea.ptr<64> loc("_94"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":19:15))
  %v149 = sea.nondet "nd_bool" [16] : i1 loc("_95"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":22:21))
  %v150 = sea.nondet "nd_bool" [17] : i1 loc("_96"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":23:28))
  %v151 = sea.load %v64[%v106] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc(".pmcpy18.i"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":26:39))
  sea.br ^bb37
^bb37:
  %v152 = sea.ptr.null : !sea.ptr<64> loc("_98"("seahorn/aws-c-common-stubs/s_hash_for_override.c":7:11))
  %v153 = sea.ptr.cmp eq, %v148, %v152 : !sea.ptr<64> loc("_98"("seahorn/aws-c-common-stubs/s_hash_for_override.c":7:11))
  %v154 = sea.const 42 : i64 loc("seahorn/aws-c-common-stubs/s_hash_for_override.c":7:7)
  sea.cond_br %v153, ^bb39(%v154 : i64), ^bb38 loc("seahorn/aws-c-common-stubs/s_hash_for_override.c":7:7)
^bb38:
  %v155 = sea.nondet "nd_uint64_t" [18] : i64 loc("_100"("seahorn/aws-c-common-stubs/s_hash_for_override.c":13:24))
  %v156 = sea.const 1 : i64 loc("spec.store.select.i56.i"("seahorn/aws-c-common-stubs/s_hash_for_override.c":17:7))
  %v157 = sea.umax %v155, %v156 : i64 loc("spec.store.select.i56.i"("seahorn/aws-c-common-stubs/s_hash_for_override.c":17:7))
  sea.br ^bb39(%v157 : i64)
^bb39(%v158 : i64):
  %v159 = sea.select %v150, %v12, %v8 : !sea.ptr<64> loc("spec.store.select.i.i"("aws-c-common/source/hash_table.c":521:9))
  %v160 = sea.const 8 : i64 loc("_101"("aws-c-common/source/hash_table.c":309:71))
  %v161 = sea.ptr.dereferenceable %v65, %v160 : !sea.ptr<64>, i64 loc("_101"("aws-c-common/source/hash_table.c":309:71))
  sea.cond_br %v161, ^bb40, ^bb267
^bb40:
  %v162 = sea.load %v70[%v65] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_103"("aws-c-common/source/hash_table.c":309:71))
  %v163 = sea.and %v162, %v158 : i64 loc("_104"("aws-c-common/source/hash_table.c":309:62))
  %v164 = sea.ptr.index %v60 [%v163] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_105"("aws-c-common/source/hash_table.c":309:39))
  %v165 = sea.ptr.index %v60 [%v163] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_106"("aws-c-common/source/hash_table.c":311:16))
  %v166 = sea.const 8 : i64 loc("_107"("aws-c-common/source/hash_table.c":311:16))
  %v167 = sea.ptr.dereferenceable %v165, %v166 : !sea.ptr<64>, i64 loc("_107"("aws-c-common/source/hash_table.c":311:16))
  sea.cond_br %v167, ^bb41, ^bb267
^bb41:
  %v168 = sea.load %v64[%v165] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_109"("aws-c-common/source/hash_table.c":311:16))
  %v169 = sea.const 0 : i64 loc("_110"("aws-c-common/source/hash_table.c":311:26))
  %v170 = sea.icmp eq, %v168, %v169 : i64 loc("_110"("aws-c-common/source/hash_table.c":311:26))
  sea.cond_br %v170, ^bb163, ^bb42 loc("aws-c-common/source/hash_table.c":311:9)
^bb42:
  %v171 = sea.const 8 : i64 loc("_114"("aws-c-common/source/hash_table.c":319:16))
  %v172 = sea.ptr.dereferenceable %v165, %v171 : !sea.ptr<64>, i64 loc("_114"("aws-c-common/source/hash_table.c":319:16))
  sea.cond_br %v172, ^bb43, ^bb267
^bb43:
  %v173 = sea.icmp eq, %v168, %v158 : i64 loc("_116"("aws-c-common/source/hash_table.c":319:26))
  sea.cond_br %v173, ^bb44, ^bb49 loc("aws-c-common/source/hash_table.c":319:39)
^bb44:
  %v174 = sea.const 8 : i64 loc("_118"("aws-c-common/source/hash_table.c":319:84))
  %v175 = sea.ptr.dereferenceable %v164, %v174 : !sea.ptr<64>, i64 loc("_118"("aws-c-common/source/hash_table.c":319:84))
  sea.cond_br %v175, ^bb45, ^bb267
^bb45:
  %v176 = sea.load %v89[%v164] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_120"("aws-c-common/source/hash_table.c":319:84))
  %v177 = sea.const 8 : i64 loc("_121"("aws-c-common/source/hash_table.c":76:40))
  %v178 = sea.ptr.dereferenceable %v85, %v177 : !sea.ptr<64>, i64 loc("_121"("aws-c-common/source/hash_table.c":76:40))
  sea.cond_br %v178, ^bb46, ^bb267
^bb46:
  %v179 = sea.ptr.cmp eq, %v148, %v176 : !sea.ptr<64> loc("_122"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:9))
  sea.cond_br %v179, ^bb157, ^bb47 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:7)
^bb47:
  %v180 = sea.ptr.null : !sea.ptr<64> loc("_124")
  %v181 = sea.ptr.cmp eq, %v176, %v180 : !sea.ptr<64> loc("_124")
  %v182 = sea.or %v153, %v181 : i1 loc("or.cond.i.i"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17))
  sea.cond_br %v182, ^bb49, ^bb48 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17)
^bb48:
  %v183 = sea.nondet "nd_bool" [19] : i1 loc("_125"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":20:10))
  sea.cond_br %v183, ^bb157, ^bb49 loc("aws-c-common/source/hash_table.c":319:9)
^bb49:
  %v184 = sea.const 8 : i64 loc("_127"("aws-c-common/source/hash_table.c":352:59))
  %v185 = sea.ptr.dereferenceable %v65, %v184 : !sea.ptr<64>, i64 loc("_127"("aws-c-common/source/hash_table.c":352:59))
  sea.cond_br %v185, ^bb50, ^bb267
^bb50:
  %v186 = sea.const 1 : i64 loc("_129"("aws-c-common/source/hash_table.c":352:37))
  %v187 = sea.add %v158, %v186 : i64 loc("_129"("aws-c-common/source/hash_table.c":352:37))
  %v188 = sea.load %v70[%v65] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_130"("aws-c-common/source/hash_table.c":352:59))
  %v189 = sea.and %v188, %v187 : i64 loc("_131"("aws-c-common/source/hash_table.c":352:50))
  %v190 = sea.ptr.index %v60 [%v189] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_132"("aws-c-common/source/hash_table.c":356:18))
  %v191 = sea.ptr.index %v60 [%v189] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_133"("aws-c-common/source/hash_table.c":357:21))
  %v192 = sea.const 8 : i64 loc("_134"("aws-c-common/source/hash_table.c":357:21))
  %v193 = sea.ptr.dereferenceable %v191, %v192 : !sea.ptr<64>, i64 loc("_134"("aws-c-common/source/hash_table.c":357:21))
  sea.cond_br %v193, ^bb51, ^bb267
^bb51:
  %v194 = sea.load %v64[%v191] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_136"("aws-c-common/source/hash_table.c":357:21))
  %v195 = sea.const 0 : i64 loc(".not.i.i.i"("aws-c-common/source/hash_table.c":357:14))
  %v196 = sea.icmp eq, %v194, %v195 : i64 loc(".not.i.i.i"("aws-c-common/source/hash_table.c":357:14))
  %v197 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":357:13)
  sea.cond_br %v196, ^bb154(%v197 : i1), ^bb52 loc("aws-c-common/source/hash_table.c":357:13)
^bb52:
  %v198 = sea.const 8 : i64 loc("_138"("aws-c-common/source/hash_table.c":362:20))
  %v199 = sea.ptr.dereferenceable %v191, %v198 : !sea.ptr<64>, i64 loc("_138"("aws-c-common/source/hash_table.c":362:20))
  sea.cond_br %v199, ^bb53, ^bb267
^bb53:
  %v200 = sea.icmp eq, %v194, %v158 : i64 loc("_140"("aws-c-common/source/hash_table.c":362:30))
  sea.cond_br %v200, ^bb54, ^bb59 loc("aws-c-common/source/hash_table.c":362:43)
^bb54:
  %v201 = sea.const 8 : i64 loc("_142"("aws-c-common/source/hash_table.c":362:88))
  %v202 = sea.ptr.dereferenceable %v190, %v201 : !sea.ptr<64>, i64 loc("_142"("aws-c-common/source/hash_table.c":362:88))
  sea.cond_br %v202, ^bb55, ^bb267
^bb55:
  %v203 = sea.load %v89[%v190] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_144"("aws-c-common/source/hash_table.c":362:88))
  %v204 = sea.const 8 : i64 loc("_145"("aws-c-common/source/hash_table.c":76:40))
  %v205 = sea.ptr.dereferenceable %v85, %v204 : !sea.ptr<64>, i64 loc("_145"("aws-c-common/source/hash_table.c":76:40))
  sea.cond_br %v205, ^bb56, ^bb267
^bb56:
  %v206 = sea.ptr.cmp eq, %v148, %v203 : !sea.ptr<64> loc("_146"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:9))
  %v207 = sea.const 1 : i1 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:7)
  sea.cond_br %v206, ^bb154(%v207 : i1), ^bb57 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:7)
^bb57:
  %v208 = sea.ptr.null : !sea.ptr<64> loc("_148")
  %v209 = sea.ptr.cmp eq, %v203, %v208 : !sea.ptr<64> loc("_148")
  %v210 = sea.or %v153, %v209 : i1 loc("or.cond.i53.i"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17))
  sea.cond_br %v210, ^bb59, ^bb58 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17)
^bb58:
  %v211 = sea.nondet "nd_bool" [20] : i1 loc("_149"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":20:10))
  %v212 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":362:13)
  sea.cond_br %v211, ^bb154(%v212 : i1), ^bb59 loc("aws-c-common/source/hash_table.c":362:13)
^bb59:
  %v213 = sea.const 8 : i64 loc("_150"("aws-c-common/source/hash_table.c":371:48))
  %v214 = sea.ptr.dereferenceable %v191, %v213 : !sea.ptr<64>, i64 loc("_150"("aws-c-common/source/hash_table.c":371:48))
  sea.cond_br %v214, ^bb60, ^bb267
^bb60:
  %v215 = sea.const 8 : i64 loc("_152"("aws-c-common/source/hash_table.c":371:68))
  %v216 = sea.ptr.dereferenceable %v65, %v215 : !sea.ptr<64>, i64 loc("_152"("aws-c-common/source/hash_table.c":371:68))
  sea.cond_br %v216, ^bb61, ^bb267
^bb61:
  %v217 = sea.sub %v189, %v194 : i64 loc("_154"("aws-c-common/source/hash_table.c":371:39))
  %v218 = sea.and %v217, %v188 : i64 loc("_155"("aws-c-common/source/hash_table.c":371:59))
  %v219 = sea.const 0 : i64 loc(".not"("aws-c-common/source/hash_table.c":376:25))
  %v220 = sea.icmp eq, %v218, %v219 : i64 loc(".not"("aws-c-common/source/hash_table.c":376:25))
  %v221 = sea.const 0 : i1
  sea.cond_br %v220, ^bb154(%v221 : i1), ^bb62
^bb62:
  %v222 = sea.const 8 : i64 loc("_156"("aws-c-common/source/hash_table.c":352:59))
  %v223 = sea.ptr.dereferenceable %v65, %v222 : !sea.ptr<64>, i64 loc("_156"("aws-c-common/source/hash_table.c":352:59))
  sea.cond_br %v223, ^bb63, ^bb267
^bb63:
  %v224 = sea.const 2 : i64 loc("_158"("aws-c-common/source/hash_table.c":352:37))
  %v225 = sea.add %v158, %v224 : i64 loc("_158"("aws-c-common/source/hash_table.c":352:37))
  %v226 = sea.and %v188, %v225 : i64 loc("_159"("aws-c-common/source/hash_table.c":352:50))
  %v227 = sea.ptr.index %v60 [%v226] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_160"("aws-c-common/source/hash_table.c":356:18))
  %v228 = sea.ptr.index %v60 [%v226] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_161"("aws-c-common/source/hash_table.c":357:21))
  %v229 = sea.const 8 : i64 loc("_162"("aws-c-common/source/hash_table.c":357:21))
  %v230 = sea.ptr.dereferenceable %v228, %v229 : !sea.ptr<64>, i64 loc("_162"("aws-c-common/source/hash_table.c":357:21))
  sea.cond_br %v230, ^bb64, ^bb267
^bb64:
  %v231 = sea.load %v64[%v228] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_164"("aws-c-common/source/hash_table.c":357:21))
  %v232 = sea.const 0 : i64 loc(".not.i.i.i.1"("aws-c-common/source/hash_table.c":357:14))
  %v233 = sea.icmp eq, %v231, %v232 : i64 loc(".not.i.i.i.1"("aws-c-common/source/hash_table.c":357:14))
  %v234 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":357:13)
  sea.cond_br %v233, ^bb154(%v234 : i1), ^bb65 loc("aws-c-common/source/hash_table.c":357:13)
^bb65:
  %v235 = sea.const 8 : i64 loc("_166"("aws-c-common/source/hash_table.c":362:20))
  %v236 = sea.ptr.dereferenceable %v228, %v235 : !sea.ptr<64>, i64 loc("_166"("aws-c-common/source/hash_table.c":362:20))
  sea.cond_br %v236, ^bb66, ^bb267
^bb66:
  %v237 = sea.icmp eq, %v231, %v158 : i64 loc("_168"("aws-c-common/source/hash_table.c":362:30))
  sea.cond_br %v237, ^bb67, ^bb72 loc("aws-c-common/source/hash_table.c":362:43)
^bb67:
  %v238 = sea.const 8 : i64 loc("_170"("aws-c-common/source/hash_table.c":362:88))
  %v239 = sea.ptr.dereferenceable %v227, %v238 : !sea.ptr<64>, i64 loc("_170"("aws-c-common/source/hash_table.c":362:88))
  sea.cond_br %v239, ^bb68, ^bb267
^bb68:
  %v240 = sea.load %v89[%v227] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_172"("aws-c-common/source/hash_table.c":362:88))
  %v241 = sea.const 8 : i64 loc("_173"("aws-c-common/source/hash_table.c":76:40))
  %v242 = sea.ptr.dereferenceable %v85, %v241 : !sea.ptr<64>, i64 loc("_173"("aws-c-common/source/hash_table.c":76:40))
  sea.cond_br %v242, ^bb69, ^bb267
^bb69:
  %v243 = sea.ptr.cmp eq, %v148, %v240 : !sea.ptr<64> loc("_174"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:9))
  %v244 = sea.const 1 : i1 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:7)
  sea.cond_br %v243, ^bb154(%v244 : i1), ^bb70 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:7)
^bb70:
  %v245 = sea.ptr.null : !sea.ptr<64> loc("_176")
  %v246 = sea.ptr.cmp eq, %v240, %v245 : !sea.ptr<64> loc("_176")
  %v247 = sea.or %v153, %v246 : i1 loc("or.cond.i53.i.1"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17))
  sea.cond_br %v247, ^bb72, ^bb71 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17)
^bb71:
  %v248 = sea.nondet "nd_bool" [21] : i1 loc("_177"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":20:10))
  %v249 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":362:13)
  sea.cond_br %v248, ^bb154(%v249 : i1), ^bb72 loc("aws-c-common/source/hash_table.c":362:13)
^bb72:
  %v250 = sea.const 8 : i64 loc("_178"("aws-c-common/source/hash_table.c":371:48))
  %v251 = sea.ptr.dereferenceable %v228, %v250 : !sea.ptr<64>, i64 loc("_178"("aws-c-common/source/hash_table.c":371:48))
  sea.cond_br %v251, ^bb73, ^bb267
^bb73:
  %v252 = sea.const 8 : i64 loc("_180"("aws-c-common/source/hash_table.c":371:68))
  %v253 = sea.ptr.dereferenceable %v65, %v252 : !sea.ptr<64>, i64 loc("_180"("aws-c-common/source/hash_table.c":371:68))
  sea.cond_br %v253, ^bb74, ^bb267
^bb74:
  %v254 = sea.sub %v226, %v231 : i64 loc("_182"("aws-c-common/source/hash_table.c":371:39))
  %v255 = sea.and %v254, %v188 : i64 loc("_183"("aws-c-common/source/hash_table.c":371:59))
  %v256 = sea.const 1 : i64 loc("_184"("aws-c-common/source/hash_table.c":376:25))
  %v257 = sea.icmp ugt, %v255, %v256 : i64 loc("_184"("aws-c-common/source/hash_table.c":376:25))
  %v258 = sea.const 0 : i1
  sea.cond_br %v257, ^bb75, ^bb154(%v258 : i1)
^bb75:
  %v259 = sea.const 8 : i64 loc("_185"("aws-c-common/source/hash_table.c":352:59))
  %v260 = sea.ptr.dereferenceable %v65, %v259 : !sea.ptr<64>, i64 loc("_185"("aws-c-common/source/hash_table.c":352:59))
  sea.cond_br %v260, ^bb76, ^bb267
^bb76:
  %v261 = sea.const 3 : i64 loc("_187"("aws-c-common/source/hash_table.c":352:37))
  %v262 = sea.add %v158, %v261 : i64 loc("_187"("aws-c-common/source/hash_table.c":352:37))
  %v263 = sea.and %v262, %v188 : i64 loc("_188"("aws-c-common/source/hash_table.c":352:50))
  %v264 = sea.ptr.index %v60 [%v263] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_189"("aws-c-common/source/hash_table.c":356:18))
  %v265 = sea.ptr.index %v60 [%v263] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_190"("aws-c-common/source/hash_table.c":357:21))
  %v266 = sea.const 8 : i64 loc("_191"("aws-c-common/source/hash_table.c":357:21))
  %v267 = sea.ptr.dereferenceable %v265, %v266 : !sea.ptr<64>, i64 loc("_191"("aws-c-common/source/hash_table.c":357:21))
  sea.cond_br %v267, ^bb77, ^bb267
^bb77:
  %v268 = sea.load %v64[%v265] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_193"("aws-c-common/source/hash_table.c":357:21))
  %v269 = sea.const 0 : i64 loc(".not.i.i.i.2"("aws-c-common/source/hash_table.c":357:14))
  %v270 = sea.icmp eq, %v268, %v269 : i64 loc(".not.i.i.i.2"("aws-c-common/source/hash_table.c":357:14))
  %v271 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":357:13)
  sea.cond_br %v270, ^bb154(%v271 : i1), ^bb78 loc("aws-c-common/source/hash_table.c":357:13)
^bb78:
  %v272 = sea.const 8 : i64 loc("_195"("aws-c-common/source/hash_table.c":362:20))
  %v273 = sea.ptr.dereferenceable %v265, %v272 : !sea.ptr<64>, i64 loc("_195"("aws-c-common/source/hash_table.c":362:20))
  sea.cond_br %v273, ^bb79, ^bb267
^bb79:
  %v274 = sea.icmp eq, %v268, %v158 : i64 loc("_197"("aws-c-common/source/hash_table.c":362:30))
  sea.cond_br %v274, ^bb80, ^bb85 loc("aws-c-common/source/hash_table.c":362:43)
^bb80:
  %v275 = sea.const 8 : i64 loc("_199"("aws-c-common/source/hash_table.c":362:88))
  %v276 = sea.ptr.dereferenceable %v264, %v275 : !sea.ptr<64>, i64 loc("_199"("aws-c-common/source/hash_table.c":362:88))
  sea.cond_br %v276, ^bb81, ^bb267
^bb81:
  %v277 = sea.load %v89[%v264] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_201"("aws-c-common/source/hash_table.c":362:88))
  %v278 = sea.const 8 : i64 loc("_202"("aws-c-common/source/hash_table.c":76:40))
  %v279 = sea.ptr.dereferenceable %v85, %v278 : !sea.ptr<64>, i64 loc("_202"("aws-c-common/source/hash_table.c":76:40))
  sea.cond_br %v279, ^bb82, ^bb267
^bb82:
  %v280 = sea.ptr.cmp eq, %v148, %v277 : !sea.ptr<64> loc("_203"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:9))
  %v281 = sea.const 1 : i1 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:7)
  sea.cond_br %v280, ^bb154(%v281 : i1), ^bb83 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:7)
^bb83:
  %v282 = sea.ptr.null : !sea.ptr<64> loc("_205")
  %v283 = sea.ptr.cmp eq, %v277, %v282 : !sea.ptr<64> loc("_205")
  %v284 = sea.or %v153, %v283 : i1 loc("or.cond.i53.i.2"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17))
  sea.cond_br %v284, ^bb85, ^bb84 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17)
^bb84:
  %v285 = sea.nondet "nd_bool" [22] : i1 loc("_206"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":20:10))
  %v286 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":362:13)
  sea.cond_br %v285, ^bb154(%v286 : i1), ^bb85 loc("aws-c-common/source/hash_table.c":362:13)
^bb85:
  %v287 = sea.const 8 : i64 loc("_207"("aws-c-common/source/hash_table.c":371:48))
  %v288 = sea.ptr.dereferenceable %v265, %v287 : !sea.ptr<64>, i64 loc("_207"("aws-c-common/source/hash_table.c":371:48))
  sea.cond_br %v288, ^bb86, ^bb267
^bb86:
  %v289 = sea.const 8 : i64 loc("_209"("aws-c-common/source/hash_table.c":371:68))
  %v290 = sea.ptr.dereferenceable %v65, %v289 : !sea.ptr<64>, i64 loc("_209"("aws-c-common/source/hash_table.c":371:68))
  sea.cond_br %v290, ^bb87, ^bb267
^bb87:
  %v291 = sea.sub %v263, %v268 : i64 loc("_211"("aws-c-common/source/hash_table.c":371:39))
  %v292 = sea.and %v291, %v188 : i64 loc("_212"("aws-c-common/source/hash_table.c":371:59))
  %v293 = sea.const 2 : i64 loc("_213"("aws-c-common/source/hash_table.c":376:25))
  %v294 = sea.icmp ugt, %v292, %v293 : i64 loc("_213"("aws-c-common/source/hash_table.c":376:25))
  %v295 = sea.const 4 : i64 loc(".14.i.i.i.2"("aws-c-common/source/hash_table.c":376:13))
  %v296 = sea.const 3 : i64 loc(".14.i.i.i.2"("aws-c-common/source/hash_table.c":376:13))
  %v297 = sea.select %v294, %v295, %v296 : i64 loc(".14.i.i.i.2"("aws-c-common/source/hash_table.c":376:13))
  %v298 = sea.const 0 : i1
  sea.cond_br %v294, ^bb88, ^bb154(%v298 : i1)
^bb88:
  %v299 = sea.const 8 : i64 loc("_214"("aws-c-common/source/hash_table.c":352:59))
  %v300 = sea.ptr.dereferenceable %v65, %v299 : !sea.ptr<64>, i64 loc("_214"("aws-c-common/source/hash_table.c":352:59))
  sea.cond_br %v300, ^bb89, ^bb267
^bb89:
  %v301 = sea.add %v297, %v158 : i64 loc("_216"("aws-c-common/source/hash_table.c":352:37))
  %v302 = sea.and %v301, %v188 : i64 loc("_217"("aws-c-common/source/hash_table.c":352:50))
  %v303 = sea.ptr.index %v60 [%v302] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_218"("aws-c-common/source/hash_table.c":356:18))
  %v304 = sea.ptr.index %v60 [%v302] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_219"("aws-c-common/source/hash_table.c":357:21))
  %v305 = sea.const 8 : i64 loc("_220"("aws-c-common/source/hash_table.c":357:21))
  %v306 = sea.ptr.dereferenceable %v304, %v305 : !sea.ptr<64>, i64 loc("_220"("aws-c-common/source/hash_table.c":357:21))
  sea.cond_br %v306, ^bb90, ^bb267
^bb90:
  %v307 = sea.load %v64[%v304] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_222"("aws-c-common/source/hash_table.c":357:21))
  %v308 = sea.const 0 : i64 loc(".not.i.i.i.3"("aws-c-common/source/hash_table.c":357:14))
  %v309 = sea.icmp eq, %v307, %v308 : i64 loc(".not.i.i.i.3"("aws-c-common/source/hash_table.c":357:14))
  %v310 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":357:13)
  sea.cond_br %v309, ^bb154(%v310 : i1), ^bb91 loc("aws-c-common/source/hash_table.c":357:13)
^bb91:
  %v311 = sea.const 8 : i64 loc("_224"("aws-c-common/source/hash_table.c":362:20))
  %v312 = sea.ptr.dereferenceable %v304, %v311 : !sea.ptr<64>, i64 loc("_224"("aws-c-common/source/hash_table.c":362:20))
  sea.cond_br %v312, ^bb92, ^bb267
^bb92:
  %v313 = sea.icmp eq, %v307, %v158 : i64 loc("_226"("aws-c-common/source/hash_table.c":362:30))
  sea.cond_br %v313, ^bb93, ^bb98 loc("aws-c-common/source/hash_table.c":362:43)
^bb93:
  %v314 = sea.const 8 : i64 loc("_228"("aws-c-common/source/hash_table.c":362:88))
  %v315 = sea.ptr.dereferenceable %v303, %v314 : !sea.ptr<64>, i64 loc("_228"("aws-c-common/source/hash_table.c":362:88))
  sea.cond_br %v315, ^bb94, ^bb267
^bb94:
  %v316 = sea.load %v89[%v303] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_230"("aws-c-common/source/hash_table.c":362:88))
  %v317 = sea.const 8 : i64 loc("_231"("aws-c-common/source/hash_table.c":76:40))
  %v318 = sea.ptr.dereferenceable %v85, %v317 : !sea.ptr<64>, i64 loc("_231"("aws-c-common/source/hash_table.c":76:40))
  sea.cond_br %v318, ^bb95, ^bb267
^bb95:
  %v319 = sea.ptr.cmp eq, %v148, %v316 : !sea.ptr<64> loc("_232"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:9))
  %v320 = sea.const 1 : i1 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:7)
  sea.cond_br %v319, ^bb154(%v320 : i1), ^bb96 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:7)
^bb96:
  %v321 = sea.ptr.null : !sea.ptr<64> loc("_234")
  %v322 = sea.ptr.cmp eq, %v316, %v321 : !sea.ptr<64> loc("_234")
  %v323 = sea.or %v153, %v322 : i1 loc("or.cond.i53.i.3"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17))
  sea.cond_br %v323, ^bb98, ^bb97 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17)
^bb97:
  %v324 = sea.nondet "nd_bool" [23] : i1 loc("_235"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":20:10))
  %v325 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":362:13)
  sea.cond_br %v324, ^bb154(%v325 : i1), ^bb98 loc("aws-c-common/source/hash_table.c":362:13)
^bb98:
  %v326 = sea.const 8 : i64 loc("_236"("aws-c-common/source/hash_table.c":371:48))
  %v327 = sea.ptr.dereferenceable %v304, %v326 : !sea.ptr<64>, i64 loc("_236"("aws-c-common/source/hash_table.c":371:48))
  sea.cond_br %v327, ^bb99, ^bb267
^bb99:
  %v328 = sea.const 8 : i64 loc("_238"("aws-c-common/source/hash_table.c":371:68))
  %v329 = sea.ptr.dereferenceable %v65, %v328 : !sea.ptr<64>, i64 loc("_238"("aws-c-common/source/hash_table.c":371:68))
  sea.cond_br %v329, ^bb100, ^bb267
^bb100:
  %v330 = sea.sub %v302, %v307 : i64 loc("_240"("aws-c-common/source/hash_table.c":371:39))
  %v331 = sea.and %v330, %v188 : i64 loc("_241"("aws-c-common/source/hash_table.c":371:59))
  %v332 = sea.icmp uge, %v331, %v297 : i64 loc("_242"("aws-c-common/source/hash_table.c":376:25))
  %v333 = sea.zext %v332 : i1 to i64 loc("_243"("aws-c-common/source/hash_table.c":376:13))
  %v334 = sea.add %v297, %v333 nsw nuw : i64 loc(".14.i.i.i.3"("aws-c-common/source/hash_table.c":376:13))
  %v335 = sea.const 0 : i1
  sea.cond_br %v332, ^bb101, ^bb154(%v335 : i1)
^bb101:
  %v336 = sea.const 8 : i64 loc("_244"("aws-c-common/source/hash_table.c":352:59))
  %v337 = sea.ptr.dereferenceable %v65, %v336 : !sea.ptr<64>, i64 loc("_244"("aws-c-common/source/hash_table.c":352:59))
  sea.cond_br %v337, ^bb102, ^bb267
^bb102:
  %v338 = sea.add %v334, %v158 : i64 loc("_246"("aws-c-common/source/hash_table.c":352:37))
  %v339 = sea.and %v338, %v188 : i64 loc("_247"("aws-c-common/source/hash_table.c":352:50))
  %v340 = sea.ptr.index %v60 [%v339] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_248"("aws-c-common/source/hash_table.c":356:18))
  %v341 = sea.ptr.index %v60 [%v339] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_249"("aws-c-common/source/hash_table.c":357:21))
  %v342 = sea.const 8 : i64 loc("_250"("aws-c-common/source/hash_table.c":357:21))
  %v343 = sea.ptr.dereferenceable %v341, %v342 : !sea.ptr<64>, i64 loc("_250"("aws-c-common/source/hash_table.c":357:21))
  sea.cond_br %v343, ^bb103, ^bb267
^bb103:
  %v344 = sea.load %v64[%v341] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_252"("aws-c-common/source/hash_table.c":357:21))
  %v345 = sea.const 0 : i64 loc(".not.i.i.i.4"("aws-c-common/source/hash_table.c":357:14))
  %v346 = sea.icmp eq, %v344, %v345 : i64 loc(".not.i.i.i.4"("aws-c-common/source/hash_table.c":357:14))
  %v347 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":357:13)
  sea.cond_br %v346, ^bb154(%v347 : i1), ^bb104 loc("aws-c-common/source/hash_table.c":357:13)
^bb104:
  %v348 = sea.const 8 : i64 loc("_254"("aws-c-common/source/hash_table.c":362:20))
  %v349 = sea.ptr.dereferenceable %v341, %v348 : !sea.ptr<64>, i64 loc("_254"("aws-c-common/source/hash_table.c":362:20))
  sea.cond_br %v349, ^bb105, ^bb267
^bb105:
  %v350 = sea.icmp eq, %v344, %v158 : i64 loc("_256"("aws-c-common/source/hash_table.c":362:30))
  sea.cond_br %v350, ^bb106, ^bb111 loc("aws-c-common/source/hash_table.c":362:43)
^bb106:
  %v351 = sea.const 8 : i64 loc("_258"("aws-c-common/source/hash_table.c":362:88))
  %v352 = sea.ptr.dereferenceable %v340, %v351 : !sea.ptr<64>, i64 loc("_258"("aws-c-common/source/hash_table.c":362:88))
  sea.cond_br %v352, ^bb107, ^bb267
^bb107:
  %v353 = sea.load %v89[%v340] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_260"("aws-c-common/source/hash_table.c":362:88))
  %v354 = sea.const 8 : i64 loc("_261"("aws-c-common/source/hash_table.c":76:40))
  %v355 = sea.ptr.dereferenceable %v85, %v354 : !sea.ptr<64>, i64 loc("_261"("aws-c-common/source/hash_table.c":76:40))
  sea.cond_br %v355, ^bb108, ^bb267
^bb108:
  %v356 = sea.ptr.cmp eq, %v148, %v353 : !sea.ptr<64> loc("_262"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:9))
  %v357 = sea.const 1 : i1 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:7)
  sea.cond_br %v356, ^bb154(%v357 : i1), ^bb109 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:7)
^bb109:
  %v358 = sea.ptr.null : !sea.ptr<64> loc("_264")
  %v359 = sea.ptr.cmp eq, %v353, %v358 : !sea.ptr<64> loc("_264")
  %v360 = sea.or %v153, %v359 : i1 loc("or.cond.i53.i.4"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17))
  sea.cond_br %v360, ^bb111, ^bb110 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17)
^bb110:
  %v361 = sea.nondet "nd_bool" [24] : i1 loc("_265"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":20:10))
  %v362 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":362:13)
  sea.cond_br %v361, ^bb154(%v362 : i1), ^bb111 loc("aws-c-common/source/hash_table.c":362:13)
^bb111:
  %v363 = sea.const 8 : i64 loc("_266"("aws-c-common/source/hash_table.c":371:48))
  %v364 = sea.ptr.dereferenceable %v341, %v363 : !sea.ptr<64>, i64 loc("_266"("aws-c-common/source/hash_table.c":371:48))
  sea.cond_br %v364, ^bb112, ^bb267
^bb112:
  %v365 = sea.const 8 : i64 loc("_268"("aws-c-common/source/hash_table.c":371:68))
  %v366 = sea.ptr.dereferenceable %v65, %v365 : !sea.ptr<64>, i64 loc("_268"("aws-c-common/source/hash_table.c":371:68))
  sea.cond_br %v366, ^bb113, ^bb267
^bb113:
  %v367 = sea.sub %v339, %v344 : i64 loc("_270"("aws-c-common/source/hash_table.c":371:39))
  %v368 = sea.and %v367, %v188 : i64 loc("_271"("aws-c-common/source/hash_table.c":371:59))
  %v369 = sea.icmp uge, %v368, %v334 : i64 loc("_272"("aws-c-common/source/hash_table.c":376:25))
  %v370 = sea.zext %v369 : i1 to i64 loc("_273"("aws-c-common/source/hash_table.c":376:13))
  %v371 = sea.add %v334, %v370 nsw nuw : i64 loc(".14.i.i.i.4"("aws-c-common/source/hash_table.c":376:13))
  %v372 = sea.const 0 : i1
  sea.cond_br %v369, ^bb114, ^bb154(%v372 : i1)
^bb114:
  %v373 = sea.const 8 : i64 loc("_274"("aws-c-common/source/hash_table.c":352:59))
  %v374 = sea.ptr.dereferenceable %v65, %v373 : !sea.ptr<64>, i64 loc("_274"("aws-c-common/source/hash_table.c":352:59))
  sea.cond_br %v374, ^bb115, ^bb267
^bb115:
  %v375 = sea.add %v371, %v158 : i64 loc("_276"("aws-c-common/source/hash_table.c":352:37))
  %v376 = sea.and %v188, %v375 : i64 loc("_277"("aws-c-common/source/hash_table.c":352:50))
  %v377 = sea.ptr.index %v60 [%v376] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_278"("aws-c-common/source/hash_table.c":356:18))
  %v378 = sea.ptr.index %v60 [%v376] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_279"("aws-c-common/source/hash_table.c":357:21))
  %v379 = sea.const 8 : i64 loc("_280"("aws-c-common/source/hash_table.c":357:21))
  %v380 = sea.ptr.dereferenceable %v378, %v379 : !sea.ptr<64>, i64 loc("_280"("aws-c-common/source/hash_table.c":357:21))
  sea.cond_br %v380, ^bb116, ^bb267
^bb116:
  %v381 = sea.load %v64[%v378] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_282"("aws-c-common/source/hash_table.c":357:21))
  %v382 = sea.const 0 : i64 loc(".not.i.i.i.5"("aws-c-common/source/hash_table.c":357:14))
  %v383 = sea.icmp eq, %v381, %v382 : i64 loc(".not.i.i.i.5"("aws-c-common/source/hash_table.c":357:14))
  %v384 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":357:13)
  sea.cond_br %v383, ^bb154(%v384 : i1), ^bb117 loc("aws-c-common/source/hash_table.c":357:13)
^bb117:
  %v385 = sea.const 8 : i64 loc("_284"("aws-c-common/source/hash_table.c":362:20))
  %v386 = sea.ptr.dereferenceable %v378, %v385 : !sea.ptr<64>, i64 loc("_284"("aws-c-common/source/hash_table.c":362:20))
  sea.cond_br %v386, ^bb118, ^bb267
^bb118:
  %v387 = sea.icmp eq, %v381, %v158 : i64 loc("_286"("aws-c-common/source/hash_table.c":362:30))
  sea.cond_br %v387, ^bb119, ^bb124 loc("aws-c-common/source/hash_table.c":362:43)
^bb119:
  %v388 = sea.const 8 : i64 loc("_288"("aws-c-common/source/hash_table.c":362:88))
  %v389 = sea.ptr.dereferenceable %v377, %v388 : !sea.ptr<64>, i64 loc("_288"("aws-c-common/source/hash_table.c":362:88))
  sea.cond_br %v389, ^bb120, ^bb267
^bb120:
  %v390 = sea.load %v89[%v377] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_290"("aws-c-common/source/hash_table.c":362:88))
  %v391 = sea.const 8 : i64 loc("_291"("aws-c-common/source/hash_table.c":76:40))
  %v392 = sea.ptr.dereferenceable %v85, %v391 : !sea.ptr<64>, i64 loc("_291"("aws-c-common/source/hash_table.c":76:40))
  sea.cond_br %v392, ^bb121, ^bb267
^bb121:
  %v393 = sea.ptr.cmp eq, %v148, %v390 : !sea.ptr<64> loc("_292"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:9))
  %v394 = sea.const 1 : i1 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:7)
  sea.cond_br %v393, ^bb154(%v394 : i1), ^bb122 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:7)
^bb122:
  %v395 = sea.ptr.null : !sea.ptr<64> loc("_294")
  %v396 = sea.ptr.cmp eq, %v390, %v395 : !sea.ptr<64> loc("_294")
  %v397 = sea.or %v153, %v396 : i1 loc("or.cond.i53.i.5"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17))
  sea.cond_br %v397, ^bb124, ^bb123 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17)
^bb123:
  %v398 = sea.nondet "nd_bool" [25] : i1 loc("_295"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":20:10))
  %v399 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":362:13)
  sea.cond_br %v398, ^bb154(%v399 : i1), ^bb124 loc("aws-c-common/source/hash_table.c":362:13)
^bb124:
  %v400 = sea.const 8 : i64 loc("_296"("aws-c-common/source/hash_table.c":371:48))
  %v401 = sea.ptr.dereferenceable %v378, %v400 : !sea.ptr<64>, i64 loc("_296"("aws-c-common/source/hash_table.c":371:48))
  sea.cond_br %v401, ^bb125, ^bb267
^bb125:
  %v402 = sea.const 8 : i64 loc("_298"("aws-c-common/source/hash_table.c":371:68))
  %v403 = sea.ptr.dereferenceable %v65, %v402 : !sea.ptr<64>, i64 loc("_298"("aws-c-common/source/hash_table.c":371:68))
  sea.cond_br %v403, ^bb126, ^bb267
^bb126:
  %v404 = sea.sub %v376, %v381 : i64 loc("_300"("aws-c-common/source/hash_table.c":371:39))
  %v405 = sea.and %v404, %v188 : i64 loc("_301"("aws-c-common/source/hash_table.c":371:59))
  %v406 = sea.icmp uge, %v405, %v371 : i64 loc("_302"("aws-c-common/source/hash_table.c":376:25))
  %v407 = sea.zext %v406 : i1 to i64 loc("_303"("aws-c-common/source/hash_table.c":376:13))
  %v408 = sea.add %v371, %v407 nsw nuw : i64 loc(".14.i.i.i.5"("aws-c-common/source/hash_table.c":376:13))
  %v409 = sea.const 0 : i1
  sea.cond_br %v406, ^bb127, ^bb154(%v409 : i1)
^bb127:
  %v410 = sea.const 8 : i64 loc("_304"("aws-c-common/source/hash_table.c":352:59))
  %v411 = sea.ptr.dereferenceable %v65, %v410 : !sea.ptr<64>, i64 loc("_304"("aws-c-common/source/hash_table.c":352:59))
  sea.cond_br %v411, ^bb128, ^bb267
^bb128:
  %v412 = sea.add %v408, %v158 : i64 loc("_306"("aws-c-common/source/hash_table.c":352:37))
  %v413 = sea.and %v412, %v188 : i64 loc("_307"("aws-c-common/source/hash_table.c":352:50))
  %v414 = sea.ptr.index %v60 [%v413] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_308"("aws-c-common/source/hash_table.c":356:18))
  %v415 = sea.ptr.index %v60 [%v413] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_309"("aws-c-common/source/hash_table.c":357:21))
  %v416 = sea.const 8 : i64 loc("_310"("aws-c-common/source/hash_table.c":357:21))
  %v417 = sea.ptr.dereferenceable %v415, %v416 : !sea.ptr<64>, i64 loc("_310"("aws-c-common/source/hash_table.c":357:21))
  sea.cond_br %v417, ^bb129, ^bb267
^bb129:
  %v418 = sea.load %v64[%v415] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_312"("aws-c-common/source/hash_table.c":357:21))
  %v419 = sea.const 0 : i64 loc(".not.i.i.i.6"("aws-c-common/source/hash_table.c":357:14))
  %v420 = sea.icmp eq, %v418, %v419 : i64 loc(".not.i.i.i.6"("aws-c-common/source/hash_table.c":357:14))
  %v421 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":357:13)
  sea.cond_br %v420, ^bb154(%v421 : i1), ^bb130 loc("aws-c-common/source/hash_table.c":357:13)
^bb130:
  %v422 = sea.const 8 : i64 loc("_314"("aws-c-common/source/hash_table.c":362:20))
  %v423 = sea.ptr.dereferenceable %v415, %v422 : !sea.ptr<64>, i64 loc("_314"("aws-c-common/source/hash_table.c":362:20))
  sea.cond_br %v423, ^bb131, ^bb267
^bb131:
  %v424 = sea.icmp eq, %v418, %v158 : i64 loc("_316"("aws-c-common/source/hash_table.c":362:30))
  sea.cond_br %v424, ^bb132, ^bb137 loc("aws-c-common/source/hash_table.c":362:43)
^bb132:
  %v425 = sea.const 8 : i64 loc("_318"("aws-c-common/source/hash_table.c":362:88))
  %v426 = sea.ptr.dereferenceable %v414, %v425 : !sea.ptr<64>, i64 loc("_318"("aws-c-common/source/hash_table.c":362:88))
  sea.cond_br %v426, ^bb133, ^bb267
^bb133:
  %v427 = sea.load %v89[%v414] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_320"("aws-c-common/source/hash_table.c":362:88))
  %v428 = sea.const 8 : i64 loc("_321"("aws-c-common/source/hash_table.c":76:40))
  %v429 = sea.ptr.dereferenceable %v85, %v428 : !sea.ptr<64>, i64 loc("_321"("aws-c-common/source/hash_table.c":76:40))
  sea.cond_br %v429, ^bb134, ^bb267
^bb134:
  %v430 = sea.ptr.cmp eq, %v148, %v427 : !sea.ptr<64> loc("_322"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:9))
  %v431 = sea.const 1 : i1 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:7)
  sea.cond_br %v430, ^bb154(%v431 : i1), ^bb135 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:7)
^bb135:
  %v432 = sea.ptr.null : !sea.ptr<64> loc("_324")
  %v433 = sea.ptr.cmp eq, %v427, %v432 : !sea.ptr<64> loc("_324")
  %v434 = sea.or %v153, %v433 : i1 loc("or.cond.i53.i.6"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17))
  sea.cond_br %v434, ^bb137, ^bb136 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17)
^bb136:
  %v435 = sea.nondet "nd_bool" [26] : i1 loc("_325"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":20:10))
  %v436 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":362:13)
  sea.cond_br %v435, ^bb154(%v436 : i1), ^bb137 loc("aws-c-common/source/hash_table.c":362:13)
^bb137:
  %v437 = sea.const 8 : i64 loc("_326"("aws-c-common/source/hash_table.c":371:48))
  %v438 = sea.ptr.dereferenceable %v415, %v437 : !sea.ptr<64>, i64 loc("_326"("aws-c-common/source/hash_table.c":371:48))
  sea.cond_br %v438, ^bb138, ^bb267
^bb138:
  %v439 = sea.const 8 : i64 loc("_328"("aws-c-common/source/hash_table.c":371:68))
  %v440 = sea.ptr.dereferenceable %v65, %v439 : !sea.ptr<64>, i64 loc("_328"("aws-c-common/source/hash_table.c":371:68))
  sea.cond_br %v440, ^bb139, ^bb267
^bb139:
  %v441 = sea.sub %v413, %v418 : i64 loc("_330"("aws-c-common/source/hash_table.c":371:39))
  %v442 = sea.and %v441, %v188 : i64 loc("_331"("aws-c-common/source/hash_table.c":371:59))
  %v443 = sea.icmp uge, %v442, %v408 : i64 loc("_332"("aws-c-common/source/hash_table.c":376:25))
  %v444 = sea.zext %v443 : i1 to i64 loc("_333"("aws-c-common/source/hash_table.c":376:13))
  %v445 = sea.add %v408, %v444 nsw nuw : i64 loc(".14.i.i.i.6"("aws-c-common/source/hash_table.c":376:13))
  %v446 = sea.const 0 : i1
  sea.cond_br %v443, ^bb140, ^bb154(%v446 : i1)
^bb140:
  %v447 = sea.const 8 : i64 loc("_334"("aws-c-common/source/hash_table.c":352:59))
  %v448 = sea.ptr.dereferenceable %v65, %v447 : !sea.ptr<64>, i64 loc("_334"("aws-c-common/source/hash_table.c":352:59))
  sea.cond_br %v448, ^bb141, ^bb267
^bb141:
  %v449 = sea.add %v445, %v158 : i64 loc("_336"("aws-c-common/source/hash_table.c":352:37))
  %v450 = sea.and %v449, %v188 : i64 loc("_337"("aws-c-common/source/hash_table.c":352:50))
  %v451 = sea.ptr.index %v60 [%v450] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_338"("aws-c-common/source/hash_table.c":356:18))
  %v452 = sea.ptr.index %v60 [%v450] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_339"("aws-c-common/source/hash_table.c":357:21))
  %v453 = sea.const 8 : i64 loc("_340"("aws-c-common/source/hash_table.c":357:21))
  %v454 = sea.ptr.dereferenceable %v452, %v453 : !sea.ptr<64>, i64 loc("_340"("aws-c-common/source/hash_table.c":357:21))
  sea.cond_br %v454, ^bb142, ^bb267
^bb142:
  %v455 = sea.load %v64[%v452] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_342"("aws-c-common/source/hash_table.c":357:21))
  %v456 = sea.const 0 : i64 loc(".not.i.i.i.7"("aws-c-common/source/hash_table.c":357:14))
  %v457 = sea.icmp eq, %v455, %v456 : i64 loc(".not.i.i.i.7"("aws-c-common/source/hash_table.c":357:14))
  %v458 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":357:13)
  sea.cond_br %v457, ^bb154(%v458 : i1), ^bb143 loc("aws-c-common/source/hash_table.c":357:13)
^bb143:
  %v459 = sea.const 8 : i64 loc("_344"("aws-c-common/source/hash_table.c":362:20))
  %v460 = sea.ptr.dereferenceable %v452, %v459 : !sea.ptr<64>, i64 loc("_344"("aws-c-common/source/hash_table.c":362:20))
  sea.cond_br %v460, ^bb144, ^bb267
^bb144:
  %v461 = sea.icmp eq, %v455, %v158 : i64 loc("_346"("aws-c-common/source/hash_table.c":362:30))
  sea.cond_br %v461, ^bb145, ^bb150 loc("aws-c-common/source/hash_table.c":362:43)
^bb145:
  %v462 = sea.const 8 : i64 loc("_348"("aws-c-common/source/hash_table.c":362:88))
  %v463 = sea.ptr.dereferenceable %v451, %v462 : !sea.ptr<64>, i64 loc("_348"("aws-c-common/source/hash_table.c":362:88))
  sea.cond_br %v463, ^bb146, ^bb267
^bb146:
  %v464 = sea.load %v89[%v451] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_350"("aws-c-common/source/hash_table.c":362:88))
  %v465 = sea.const 8 : i64 loc("_351"("aws-c-common/source/hash_table.c":76:40))
  %v466 = sea.ptr.dereferenceable %v85, %v465 : !sea.ptr<64>, i64 loc("_351"("aws-c-common/source/hash_table.c":76:40))
  sea.cond_br %v466, ^bb147, ^bb267
^bb147:
  %v467 = sea.ptr.cmp eq, %v148, %v464 : !sea.ptr<64> loc("_352"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:9))
  %v468 = sea.const 1 : i1 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:7)
  sea.cond_br %v467, ^bb154(%v468 : i1), ^bb148 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":11:7)
^bb148:
  %v469 = sea.ptr.null : !sea.ptr<64> loc("_354")
  %v470 = sea.ptr.cmp eq, %v464, %v469 : !sea.ptr<64> loc("_354")
  %v471 = sea.or %v153, %v470 : i1 loc("or.cond.i53.i.7"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17))
  sea.cond_br %v471, ^bb150, ^bb149 loc("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":15:17)
^bb149:
  %v472 = sea.nondet "nd_bool" [27] : i1 loc("_355"("seahorn/aws-c-common-stubs/s_safe_eq_check_override.c":20:10))
  %v473 = sea.const 1 : i1 loc("aws-c-common/source/hash_table.c":362:13)
  sea.cond_br %v472, ^bb154(%v473 : i1), ^bb150 loc("aws-c-common/source/hash_table.c":362:13)
^bb150:
  %v474 = sea.const 8 : i64 loc("_356"("aws-c-common/source/hash_table.c":371:48))
  %v475 = sea.ptr.dereferenceable %v452, %v474 : !sea.ptr<64>, i64 loc("_356"("aws-c-common/source/hash_table.c":371:48))
  sea.cond_br %v475, ^bb151, ^bb267
^bb151:
  %v476 = sea.const 8 : i64 loc("_358"("aws-c-common/source/hash_table.c":371:68))
  %v477 = sea.ptr.dereferenceable %v65, %v476 : !sea.ptr<64>, i64 loc("_358"("aws-c-common/source/hash_table.c":371:68))
  sea.cond_br %v477, ^bb152, ^bb267
^bb152:
  %v478 = sea.sub %v450, %v455 : i64 loc("_360"("aws-c-common/source/hash_table.c":371:39))
  %v479 = sea.and %v478, %v188 : i64 loc("_361"("aws-c-common/source/hash_table.c":371:59))
  %v480 = sea.icmp ult, %v479, %v445 : i64 loc(".not22"("aws-c-common/source/hash_table.c":376:25))
  %v481 = sea.const 0 : i1
  sea.cond_br %v480, ^bb154(%v481 : i1), ^bb153
^bb153:
  %v482 = sea.const 8 : i64 loc("_128"("aws-c-common/source/hash_table.c":352:59))
  %v483 = sea.ptr.dereferenceable %v65, %v482 : !sea.ptr<64>, i64 loc("_128"("aws-c-common/source/hash_table.c":352:59))
  %v484 = sea.const 1 : i1
  %v485 = sea.xor %v483, %v484 : i1
  sea.assume %v485
  sea.br ^bb267
^bb154(%v486 : i1):
  sea.br ^bb155
^bb155:
  sea.br ^bb156
^bb156:
  sea.cond_br %v486, ^bb159, ^bb166(%v188 : i64) loc("aws-c-common/source/hash_table.c":527:9)
^bb157:
  sea.br ^bb158
^bb158:
  sea.br ^bb159
^bb159:
  sea.cond_br %v149, ^bb160, ^bb161 loc("aws-c-common/source/hash_table.c":528:13)
^bb160:
  sea.br ^bb161
^bb161:
  sea.br ^bb162
^bb162:
  %v487 = sea.const 0 : i32 loc("aws-c-common/source/hash_table.c":531:22)
  %v488 = sea.store %v2[%v159], %v487 inplace align 4 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("aws-c-common/source/hash_table.c":531:22)
  %v489 = sea.const 0 : i32 loc("aws-c-common/source/hash_table.c":532:9)
  sea.br ^bb221(%v89, %v488, %v90, %v489 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i32) loc("aws-c-common/source/hash_table.c":532:9)
^bb163:
  sea.br ^bb164
^bb164:
  sea.br ^bb165
^bb165:
  sea.br ^bb166(%v162 : i64) loc("aws-c-common/source/hash_table.c":527:9)
^bb166(%v490 : i64):
  %v491 = sea.const 8 : i64 loc("_369"("aws-c-common/source/hash_table.c":537:37))
  %v492 = sea.ptr.dereferenceable %v106, %v491 : !sea.ptr<64>, i64 loc("_369"("aws-c-common/source/hash_table.c":537:37))
  sea.cond_br %v492, ^bb167, ^bb267
^bb167:
  %v493 = sea.load %v64[%v106] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_371"("aws-c-common/source/hash_table.c":537:37))
  sea.br ^bb168
^bb168:
  %v494 = sea.const 1 : i64 loc("_373"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v495 = sea.add %v493, %v494 : i64 loc("_373"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v496 = sea.const 1 : i64 loc("_373"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v497 = sea.uaddo %v493, %v496 : i64 loc("_373"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v497, ^bb219, ^bb169 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb169:
  %v498 = sea.const 8 : i64 loc("_376"("aws-c-common/source/hash_table.c":540:35))
  %v499 = sea.ptr.dereferenceable %v110, %v498 : !sea.ptr<64>, i64 loc("_376"("aws-c-common/source/hash_table.c":540:35))
  sea.cond_br %v499, ^bb170, ^bb267
^bb170:
  %v500 = sea.load %v64[%v110] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_378"("aws-c-common/source/hash_table.c":540:35))
  %v501 = sea.icmp ugt, %v495, %v500 : i64 loc("_379"("aws-c-common/source/hash_table.c":540:26))
  sea.cond_br %v501, ^bb171, ^bb209(%v89, %v90, %v60 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("aws-c-common/source/hash_table.c":540:9)
^bb171:
  sea.br ^bb172
^bb172:
  %v502 = sea.load %v84[%v60] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc(".pmcpy.i61.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38))
  %v503 = sea.store %v0[%v6], %v502 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38)
  %v504 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38))
  %v505 = sea.load %v89[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc(".pmcpy3.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38))
  %v506 = sea.store %v503[%v504], %v505 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38)
  %v507 = sea.ptr.index %v60 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("src.gep.pmcpy4.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38))
  %v508 = sea.ptr.index %v6 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy5.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38))
  %v509 = sea.load %v64[%v507] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc(".pmcpy6.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38))
  %v510 = sea.store %v506[%v508], %v509 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38)
  %v511 = sea.ptr.index %v60 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("src.gep.pmcpy7.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38))
  %v512 = sea.ptr.index %v6 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38))
  %v513 = sea.load %v64[%v511] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc(".pmcpy9.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38))
  %v514 = sea.store %v510[%v512], %v513 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38)
  %v515 = sea.ptr.index %v6 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy11.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38))
  %v516 = sea.load %v80[%v76] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc(".pmcpy12.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38))
  %v517 = sea.store %v514[%v515], %v516 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38)
  %v518 = sea.ptr.index %v6 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy14.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38))
  %v519 = sea.load %v64[%v61] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc(".pmcpy15.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38))
  %v520 = sea.ptr.index %v6 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy17.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38))
  %v521 = sea.store %v517[%v520], %v493 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38)
  %v522 = sea.ptr.index %v6 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy20.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38))
  %v523 = sea.ptr.index %v6 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy23.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38))
  %v524 = sea.store %v521[%v523], %v490 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38)
  %v525 = sea.ptr.index %v6 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy26.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38))
  %v526 = sea.load %v75[%v71] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc(".pmcpy27.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38))
  %v527 = sea.store %v524[%v525], %v526 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":15:38)
  sea.br ^bb173
^bb173:
  %v528 = sea.const 1 : i64 loc("_383"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v529 = sea.shl %v519, %v528 : i64 loc("_383"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v530 = sea.const 18446744073709551615 : i64 loc("_384"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v531 = sea.icmp sgt, %v519, %v530 : i64 loc("_384"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v531, ^bb175, ^bb174 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb174:
  sea.br ^bb218 loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":18:7)
^bb175:
  %v532 = sea.const 2 : i64 loc("spec.store.select.i.i.i"("seahorn/aws-c-common-stubs/s_update_template_size_override.c":32:7))
  %v533 = sea.umax %v529, %v532 : i64 loc("spec.store.select.i.i.i"("seahorn/aws-c-common-stubs/s_update_template_size_override.c":32:7))
  %v534 = sea.const 9223372036854775809 : i64 loc("_385"("aws-c-common/include/aws/common/math.inl":173:11))
  %v535 = sea.icmp ult, %v529, %v534 : i64 loc("_385"("aws-c-common/include/aws/common/math.inl":173:11))
  sea.cond_br %v535, ^bb177, ^bb176 loc("aws-c-common/include/aws/common/math.inl":173:9)
^bb176:
  sea.br ^bb218 loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":22:7)
^bb177:
  sea.br ^bb178
^bb178:
  %v536 = sea.const 18446744073709551615 : i64 loc("_388"("aws-c-common/include/aws/common/math.inl":177:6))
  %v537 = sea.add %v533, %v536 : i64 loc("_388"("aws-c-common/include/aws/common/math.inl":177:6))
  %v538 = sea.const 1 : i64 loc("_389"("aws-c-common/include/aws/common/math.inl":178:12))
  %v539 = sea.lshr %v537, %v538 : i64 loc("_389"("aws-c-common/include/aws/common/math.inl":178:12))
  %v540 = sea.or %v539, %v537 : i64 loc("_390"("aws-c-common/include/aws/common/math.inl":178:7))
  %v541 = sea.const 2 : i64 loc("_391"("aws-c-common/include/aws/common/math.inl":179:12))
  %v542 = sea.lshr %v540, %v541 : i64 loc("_391"("aws-c-common/include/aws/common/math.inl":179:12))
  %v543 = sea.or %v542, %v540 : i64 loc("_392"("aws-c-common/include/aws/common/math.inl":179:7))
  %v544 = sea.const 4 : i64 loc("_393"("aws-c-common/include/aws/common/math.inl":180:12))
  %v545 = sea.lshr %v543, %v544 : i64 loc("_393"("aws-c-common/include/aws/common/math.inl":180:12))
  %v546 = sea.or %v545, %v543 : i64 loc("_394"("aws-c-common/include/aws/common/math.inl":180:7))
  %v547 = sea.const 8 : i64 loc("_395"("aws-c-common/include/aws/common/math.inl":181:12))
  %v548 = sea.lshr %v546, %v547 : i64 loc("_395"("aws-c-common/include/aws/common/math.inl":181:12))
  %v549 = sea.or %v548, %v546 : i64 loc("_396"("aws-c-common/include/aws/common/math.inl":181:7))
  %v550 = sea.const 16 : i64 loc("_397"("aws-c-common/include/aws/common/math.inl":182:12))
  %v551 = sea.lshr %v549, %v550 : i64 loc("_397"("aws-c-common/include/aws/common/math.inl":182:12))
  %v552 = sea.or %v551, %v549 : i64 loc("_398"("aws-c-common/include/aws/common/math.inl":182:7))
  %v553 = sea.const 32 : i64 loc("_399"("aws-c-common/include/aws/common/math.inl":184:12))
  %v554 = sea.lshr %v552, %v553 : i64 loc("_399"("aws-c-common/include/aws/common/math.inl":184:12))
  %v555 = sea.or %v554, %v552 : i64 loc("_400"("aws-c-common/include/aws/common/math.inl":184:7))
  %v556 = sea.const 1 : i64 loc("_401"("aws-c-common/include/aws/common/math.inl":186:6))
  %v557 = sea.add %v555, %v556 nuw : i64 loc("_401"("aws-c-common/include/aws/common/math.inl":186:6))
  sea.br ^bb179
^bb179:
  %v558 = sea.store %v527[%v518], %v557 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/s_update_template_size_override.c":44:18)
  %v559 = sea.nondet "nd_size_t" [28] : i64 loc("_403"("seahorn/aws-c-common-stubs/s_update_template_size_override.c":45:24))
  sea.br ^bb180
^bb180:
  %v560 = sea.store %v558[%v522], %v559 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/s_update_template_size_override.c":45:22)
  sea.br ^bb181
^bb181:
  %v561 = sea.icmp ule, %v559, %v555 : i64 loc("_406"("seahorn/aws-c-common-stubs/s_update_template_size_override.c":46:29))
  sea.assume %v561 loc("seahorn/aws-c-common-stubs/s_update_template_size_override.c":46:3)
  sea.br ^bb182
^bb182:
  sea.br ^bb183
^bb183:
  %v562 = sea.icmp ugt, %v559, %v493 : i64 loc("_409"("seahorn/aws-c-common-stubs/s_update_template_size_override.c":47:29))
  sea.assume %v562 loc("seahorn/aws-c-common-stubs/s_update_template_size_override.c":47:3)
  sea.br ^bb184
^bb184:
  %v563 = sea.store %v560[%v523], %v555 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/s_update_template_size_override.c":58:18)
  %v564 = sea.const 24 : i64 loc("_411"("seahorn/aws-c-common-stubs/s_expand_table_override.c":30:41))
  %v565 = sea.mul %v557, %v564 : i64 loc("_411"("seahorn/aws-c-common-stubs/s_expand_table_override.c":30:41))
  %v566 = sea.const 80 : i64 loc("_412"("seahorn/aws-c-common-stubs/s_expand_table_override.c":29:59))
  %v567 = sea.add %v565, %v566 : i64 loc("_412"("seahorn/aws-c-common-stubs/s_expand_table_override.c":29:59))
  %v568 = sea.const 0 : i64 loc("_413"("seahorn/lib/proof_allocators.c":21:15))
  %v569 = sea.icmp eq, %v567, %v568 : i64 loc("_413"("seahorn/lib/proof_allocators.c":21:15))
  sea.cond_br %v569, ^bb218, ^bb185 loc("seahorn/lib/proof_allocators.c":21:10)
^bb185:
  %v570 = sea.nondet "nd_malloc_is_fail" [29] : i1 loc("_415"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v570, ^bb217, ^bb186 loc("seahorn/lib/sea_allocators.c":11:10)
^bb186:
  %v571 = sea.const 1 : i64 loc("malloc108.i")
  %v572 = sea.mul %v567, %v571 : i64 loc("malloc108.i")
  %v573 = sea.alloca %v572 align 16 [30] : i64 -> !sea.ptr<64> loc("malloc108.i")
  %v574 = sea.memhavoc %v89[%v573], %v567 [31] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v575 = sea.store %v574[%v573], %v502 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":42:16)
  %v576 = sea.ptr.index %v573 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy35.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":42:16))
  %v577 = sea.store %v575[%v576], %v505 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":42:16)
  %v578 = sea.ptr.index %v573 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy38.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":42:16))
  %v579 = sea.store %v577[%v578], %v509 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":42:16)
  %v580 = sea.ptr.index %v573 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy41.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":42:16))
  %v581 = sea.store %v579[%v580], %v513 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":42:16)
  %v582 = sea.ptr.index %v573 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy44.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":42:16))
  %v583 = sea.store %v581[%v582], %v516 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":42:16)
  %v584 = sea.ptr.index %v573 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy47.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":42:16))
  %v585 = sea.store %v583[%v584], %v557 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":42:16)
  %v586 = sea.ptr.index %v573 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy50.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":42:16))
  %v587 = sea.store %v585[%v586], %v493 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":42:16)
  %v588 = sea.ptr.index %v573 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy53.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":42:16))
  %v589 = sea.store %v587[%v588], %v559 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":42:16)
  %v590 = sea.ptr.index %v573 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy56.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":42:16))
  %v591 = sea.store %v589[%v590], %v555 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":42:16)
  %v592 = sea.ptr.index %v573 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy59.i.i"("seahorn/aws-c-common-stubs/s_expand_table_override.c":42:16))
  %v593 = sea.store %v591[%v592], %v526 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":42:16)
  sea.br ^bb187
^bb187:
  sea.br ^bb188
^bb188:
  %v594 = sea.const 8 : i64 loc("_419"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v595 = sea.ptr.dereferenceable %v60, %v594 : !sea.ptr<64>, i64 loc("_419"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v595, ^bb189, ^bb267
^bb189:
  %v596 = sea.load %v593[%v60] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_421"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v597 = sea.ptr.null : !sea.ptr<64> loc("_422"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v598 = sea.ptr.cmp ne, %v596, %v597 : !sea.ptr<64> loc("_422"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v599 = sea.const 8 : i64 loc("_423"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v600 = sea.ptr.dereferenceable %v85, %v599 : !sea.ptr<64>, i64 loc("_423"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v600, ^bb190, ^bb267
^bb190:
  %v601 = sea.load %v589[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_425"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v602 = sea.ptr.null : !sea.ptr<64> loc("_426"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v603 = sea.ptr.cmp ne, %v601, %v602 : !sea.ptr<64> loc("_426"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v604 = sea.const 8 : i64 loc("_427"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v605 = sea.ptr.dereferenceable %v76, %v604 : !sea.ptr<64>, i64 loc("_427"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v605, ^bb191, ^bb267
^bb191:
  %v606 = sea.load %v589[%v76] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_429"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v607 = sea.ptr.null : !sea.ptr<64> loc("_430"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v608 = sea.ptr.cmp ne, %v606, %v607 : !sea.ptr<64> loc("_430"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v609 = sea.const 8 : i64 loc("_431"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v610 = sea.ptr.dereferenceable %v61, %v609 : !sea.ptr<64>, i64 loc("_431"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v610, ^bb192, ^bb267
^bb192:
  %v611 = sea.load %v591[%v61] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_433"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v612 = sea.const 1 : i64 loc("_434"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v613 = sea.icmp ugt, %v611, %v612 : i64 loc("_434"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v614 = sea.const 8 : i64 loc("_435"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v615 = sea.ptr.dereferenceable %v61, %v614 : !sea.ptr<64>, i64 loc("_435"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v615, ^bb193, ^bb267
^bb193:
  %v616 = sea.ctpop %v611 : i64 loc("_437"("aws-c-common/include/aws/common/math.inl":161:14))
  %v617 = sea.const 1 : i64 loc("_438"("aws-c-common/include/aws/common/math.inl":161:14))
  %v618 = sea.icmp eq, %v616, %v617 : i64 loc("_438"("aws-c-common/include/aws/common/math.inl":161:14))
  %v619 = sea.const 8 : i64 loc("_439"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v620 = sea.ptr.dereferenceable %v106, %v619 : !sea.ptr<64>, i64 loc("_439"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v620, ^bb194, ^bb267
^bb194:
  %v621 = sea.load %v593[%v106] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_441"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v622 = sea.const 8 : i64 loc("_442"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v623 = sea.ptr.dereferenceable %v110, %v622 : !sea.ptr<64>, i64 loc("_442"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v623, ^bb195, ^bb267
^bb195:
  %v624 = sea.load %v589[%v110] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_444"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v625 = sea.icmp ule, %v621, %v624 : i64 loc("_445"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v626 = sea.const 8 : i64 loc("_446"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v627 = sea.ptr.dereferenceable %v110, %v626 : !sea.ptr<64>, i64 loc("_446"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v627, ^bb196, ^bb267
^bb196:
  %v628 = sea.const 8 : i64 loc("_448"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v629 = sea.ptr.dereferenceable %v61, %v628 : !sea.ptr<64>, i64 loc("_448"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v629, ^bb197, ^bb267
^bb197:
  %v630 = sea.icmp ult, %v624, %v611 : i64 loc("_450"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v631 = sea.const 8 : i64 loc("_451"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v632 = sea.ptr.dereferenceable %v65, %v631 : !sea.ptr<64>, i64 loc("_451"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v632, ^bb198, ^bb267
^bb198:
  %v633 = sea.load %v591[%v65] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_453"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v634 = sea.const 8 : i64 loc("_454"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v635 = sea.ptr.dereferenceable %v61, %v634 : !sea.ptr<64>, i64 loc("_454"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v635, ^bb199, ^bb267
^bb199:
  %v636 = sea.const 8 : i64 loc("_456"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v637 = sea.ptr.dereferenceable %v61, %v636 : !sea.ptr<64>, i64 loc("_456"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v637, ^bb200, ^bb267
^bb200:
  %v638 = sea.const 0 : i1 loc("or.cond.i73.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v639 = sea.select %v598, %v603, %v638 : i1 loc("or.cond.i73.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v640 = sea.const 0 : i1 loc("or.cond3.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v641 = sea.select %v639, %v608, %v640 : i1 loc("or.cond3.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v642 = sea.const 0 : i1 loc("or.cond5.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v643 = sea.select %v641, %v613, %v642 : i1 loc("or.cond5.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v644 = sea.const 0 : i1 loc("or.cond7.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v645 = sea.select %v643, %v618, %v644 : i1 loc("or.cond7.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v646 = sea.const 0 : i1 loc("or.cond9.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v647 = sea.select %v645, %v625, %v646 : i1 loc("or.cond9.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v648 = sea.const 0 : i1 loc("or.cond11.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v649 = sea.select %v647, %v630, %v648 : i1 loc("or.cond11.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v650 = sea.const 18446744073709551615 : i64 loc("_457"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v651 = sea.add %v611, %v650 : i64 loc("_457"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v652 = sea.icmp eq, %v633, %v651 : i64 loc("_458"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
  %v653 = sea.const 0 : i1 loc("or.cond13.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v654 = sea.select %v649, %v652, %v653 : i1 loc("or.cond13.i.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.assume %v654 loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":43:3)
  sea.br ^bb201
^bb201:
  %v655 = sea.const 8 : i64 loc("_460"("seahorn/lib/hash_table_helper.c":79:17))
  %v656 = sea.ptr.dereferenceable %v106, %v655 : !sea.ptr<64>, i64 loc("_460"("seahorn/lib/hash_table_helper.c":79:17))
  sea.cond_br %v656, ^bb202, ^bb267
^bb202:
  %v657 = sea.const 0 : i64 loc("_462"("seahorn/lib/hash_table_helper.c":79:29))
  %v658 = sea.icmp ne, %v621, %v657 : i64 loc("_462"("seahorn/lib/hash_table_helper.c":79:29))
  sea.assume %v658 loc("seahorn/lib/hash_table_helper.c":79:3)
  %v659 = sea.nondet "nd_size_t" [32] : i64 loc("_463"("seahorn/lib/hash_table_helper.c":80:27))
  %v660 = sea.const 8 : i64 loc("_464"("seahorn/lib/hash_table_helper.c":81:34))
  %v661 = sea.ptr.dereferenceable %v61, %v660 : !sea.ptr<64>, i64 loc("_464"("seahorn/lib/hash_table_helper.c":81:34))
  sea.cond_br %v661, ^bb203, ^bb267
^bb203:
  %v662 = sea.icmp ult, %v659, %v611 : i64 loc("_466"("seahorn/lib/hash_table_helper.c":81:25))
  sea.assume %v662 loc("seahorn/lib/hash_table_helper.c":81:3)
  sea.br ^bb204
^bb204:
  %v663 = sea.ptr.index %v60 [%v659] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_468"("seahorn/lib/hash_table_helper.c":83:39))
  %v664 = sea.const 8 : i64 loc("_469"("seahorn/lib/hash_table_helper.c":83:39))
  %v665 = sea.ptr.dereferenceable %v663, %v664 : !sea.ptr<64>, i64 loc("_469"("seahorn/lib/hash_table_helper.c":83:39))
  sea.cond_br %v665, ^bb205, ^bb267
^bb205:
  %v666 = sea.load %v593[%v663] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_470"("seahorn/lib/hash_table_helper.c":83:39))
  %v667 = sea.const 0 : i64 loc("_471"("seahorn/lib/hash_table_helper.c":83:49))
  %v668 = sea.icmp eq, %v666, %v667 : i64 loc("_471"("seahorn/lib/hash_table_helper.c":83:49))
  sea.assume %v668 loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":45:3)
  sea.br ^bb206
^bb206:
  %v669 = sea.store %v90[%v10], %v573 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":56:15)
  %v670 = sea.const 8 : i64 loc("_473"("seahorn/aws-c-common-stubs/s_expand_table_override.c":57:30))
  %v671 = sea.ptr.dereferenceable %v582, %v670 : !sea.ptr<64>, i64 loc("_473"("seahorn/aws-c-common-stubs/s_expand_table_override.c":57:30))
  sea.cond_br %v671, ^bb207, ^bb267
^bb207:
  sea.br ^bb208
^bb208:
  sea.br ^bb209(%v593, %v669, %v573 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("aws-c-common/source/hash_table.c":555:5)
^bb209(%v672 : !sea.mem<!sea.ptr<64>, i8>, %v673 : !sea.mem<!sea.ptr<64>, i8>, %v674 : !sea.ptr<64>):
  %v675 = sea.ptr.index %v674 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_476"("aws-c-common/source/hash_table.c":557:12))
  %v676 = sea.const 8 : i64 loc("_477"("aws-c-common/source/hash_table.c":557:23))
  %v677 = sea.ptr.dereferenceable %v675, %v676 : !sea.ptr<64>, i64 loc("_477"("aws-c-common/source/hash_table.c":557:23))
  sea.cond_br %v677, ^bb210, ^bb267
^bb210:
  %v678 = sea.const 8 : i64 loc("_479"("aws-c-common/source/hash_table.c":557:23))
  %v679 = sea.ptr.dereferenceable %v675, %v678 : !sea.ptr<64>, i64 loc("_479"("aws-c-common/source/hash_table.c":557:23))
  sea.cond_br %v679, ^bb211, ^bb267
^bb211:
  %v680 = sea.const 1 : i64 loc("_481"("aws-c-common/source/hash_table.c":557:23))
  %v681 = sea.add %v493, %v680 nuw : i64 loc("_481"("aws-c-common/source/hash_table.c":557:23))
  %v682 = sea.store %v672[%v675], %v681 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/hash_table.c":557:23)
  %v683 = sea.nondet "nd_size_t" [33] : i64 loc("_482"("seahorn/aws-c-common-stubs/s_emplace_item_override.c":24:18))
  %v684 = sea.ptr.index %v674 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_483"("seahorn/aws-c-common-stubs/s_emplace_item_override.c":25:25))
  %v685 = sea.const 8 : i64 loc("_484"("seahorn/aws-c-common-stubs/s_emplace_item_override.c":25:25))
  %v686 = sea.ptr.dereferenceable %v684, %v685 : !sea.ptr<64>, i64 loc("_484"("seahorn/aws-c-common-stubs/s_emplace_item_override.c":25:25))
  sea.cond_br %v686, ^bb212, ^bb267
^bb212:
  %v687 = sea.load %v682[%v684] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_486"("seahorn/aws-c-common-stubs/s_emplace_item_override.c":25:25))
  %v688 = sea.icmp ult, %v683, %v687 : i64 loc("_487"("seahorn/aws-c-common-stubs/s_emplace_item_override.c":25:16))
  sea.assume %v688 loc("seahorn/aws-c-common-stubs/s_emplace_item_override.c":25:3)
  %v689 = sea.ptr.index %v674 [%v683] strides [24] offset 96 inbounds : !sea.ptr<64>, i64 loc("_488"("seahorn/aws-c-common-stubs/s_emplace_item_override.c":26:30))
  %v690 = sea.const 8 : i64 loc("_489"("seahorn/aws-c-common-stubs/s_emplace_item_override.c":26:30))
  %v691 = sea.ptr.dereferenceable %v689, %v690 : !sea.ptr<64>, i64 loc("_489"("seahorn/aws-c-common-stubs/s_emplace_item_override.c":26:30))
  sea.cond_br %v691, ^bb213, ^bb267
^bb213:
  %v692 = sea.load %v682[%v689] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_490"("seahorn/aws-c-common-stubs/s_emplace_item_override.c":26:30))
  %v693 = sea.const 0 : i64 loc("_491"("seahorn/aws-c-common-stubs/s_emplace_item_override.c":26:40))
  %v694 = sea.icmp eq, %v692, %v693 : i64 loc("_491"("seahorn/aws-c-common-stubs/s_emplace_item_override.c":26:40))
  sea.assume %v694 loc("seahorn/aws-c-common-stubs/s_emplace_item_override.c":26:3)
  %v695 = sea.ptr.index %v674 [%v683] strides [24] offset 80 inbounds : !sea.ptr<64>, i64 loc("_492"("seahorn/aws-c-common-stubs/s_emplace_item_override.c":27:3))
  %v696 = sea.store %v682[%v695], %v148 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/aws-c-common-stubs/s_emplace_item_override.c":27:25)
  %v697 = sea.ptr.index %v695 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy4.i.i"("seahorn/aws-c-common-stubs/s_emplace_item_override.c":27:25))
  %v698 = sea.ptr.null : !sea.ptr<64> loc("seahorn/aws-c-common-stubs/s_emplace_item_override.c":27:25)
  %v699 = sea.store %v696[%v697], %v698 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/aws-c-common-stubs/s_emplace_item_override.c":27:25)
  %v700 = sea.store %v699[%v689], %v158 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/s_emplace_item_override.c":27:25)
  sea.cond_br %v149, ^bb214, ^bb215 loc("aws-c-common/source/hash_table.c":565:9)
^bb214:
  sea.br ^bb215
^bb215:
  sea.br ^bb216
^bb216:
  %v701 = sea.const 1 : i32 loc("aws-c-common/source/hash_table.c":569:18)
  %v702 = sea.store %v2[%v159], %v701 inplace align 4 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("aws-c-common/source/hash_table.c":569:18)
  %v703 = sea.const 0 : i32
  sea.br ^bb220(%v700, %v702, %v673, %v703 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i32)
^bb217:
  sea.br ^bb218 loc("seahorn/aws-c-common-stubs/s_expand_table_override.c":37:7)
^bb218:
  %v704 = sea.const 4294967295 : i32 loc("aws-c-common/source/hash_table.c":542:13)
  sea.br ^bb220(%v89, %v2, %v90, %v704 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i32) loc("aws-c-common/source/hash_table.c":542:13)
^bb219:
  %v705 = sea.const 4294967295 : i32 loc("aws-c-common/source/hash_table.c":537:9)
  sea.br ^bb220(%v89, %v2, %v90, %v705 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i32) loc("aws-c-common/source/hash_table.c":537:9)
^bb220(%v706 : !sea.mem<!sea.ptr<64>, i8>, %v707 : !sea.mem<!sea.ptr<64>, i8>, %v708 : !sea.mem<!sea.ptr<64>, i8>, %v709 : i32):
  sea.br ^bb221(%v706, %v707, %v708, %v709 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i32)
^bb221(%v710 : !sea.mem<!sea.ptr<64>, i8>, %v711 : !sea.mem<!sea.ptr<64>, i8>, %v712 : !sea.mem<!sea.ptr<64>, i8>, %v713 : i32):
  sea.br ^bb222
^bb222:
  %v714 = sea.load %v712[%v10] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_498"("aws-c-common/source/hash_table.c":1027:24))
  %v715 = sea.ptr.null : !sea.ptr<64> loc(".not1.i40.i"("aws-c-common/source/hash_table.c":1027:19))
  %v716 = sea.ptr.cmp ne, %v714, %v715 : !sea.ptr<64> loc(".not1.i40.i"("aws-c-common/source/hash_table.c":1027:19))
  %v717 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1027:31)
  sea.cond_br %v716, ^bb223, ^bb237(%v717 : i1) loc("aws-c-common/source/hash_table.c":1027:31)
^bb223:
  sea.br ^bb224
^bb224:
  %v718 = sea.const 8 : i64 loc("_501"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v719 = sea.ptr.dereferenceable %v714, %v718 : !sea.ptr<64>, i64 loc("_501"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v719, ^bb225, ^bb267
^bb225:
  %v720 = sea.load %v710[%v714] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_503"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v721 = sea.ptr.null : !sea.ptr<64> loc("_504"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v722 = sea.ptr.cmp ne, %v720, %v721 : !sea.ptr<64> loc("_504"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v723 = sea.ptr.index %v714 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_505"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v724 = sea.const 8 : i64 loc("_506"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v725 = sea.ptr.dereferenceable %v723, %v724 : !sea.ptr<64>, i64 loc("_506"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v725, ^bb226, ^bb267
^bb226:
  %v726 = sea.load %v710[%v723] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_508"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v727 = sea.ptr.null : !sea.ptr<64> loc("_509"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v728 = sea.ptr.cmp ne, %v726, %v727 : !sea.ptr<64> loc("_509"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v729 = sea.ptr.index %v714 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_510"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v730 = sea.const 8 : i64 loc("_511"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v731 = sea.ptr.dereferenceable %v729, %v730 : !sea.ptr<64>, i64 loc("_511"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v731, ^bb227, ^bb267
^bb227:
  %v732 = sea.load %v710[%v729] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_513"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v733 = sea.ptr.null : !sea.ptr<64> loc("_514"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v734 = sea.ptr.cmp ne, %v732, %v733 : !sea.ptr<64> loc("_514"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v735 = sea.ptr.index %v714 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_515"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v736 = sea.const 8 : i64 loc("_516"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v737 = sea.ptr.dereferenceable %v735, %v736 : !sea.ptr<64>, i64 loc("_516"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v737, ^bb228, ^bb267
^bb228:
  %v738 = sea.load %v710[%v735] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_518"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v739 = sea.const 1 : i64 loc("_519"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v740 = sea.icmp ugt, %v738, %v739 : i64 loc("_519"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v741 = sea.const 8 : i64 loc("_520"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v742 = sea.ptr.dereferenceable %v735, %v741 : !sea.ptr<64>, i64 loc("_520"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v742, ^bb229, ^bb267
^bb229:
  %v743 = sea.ctpop %v738 : i64 loc("_522"("aws-c-common/include/aws/common/math.inl":161:14))
  %v744 = sea.const 1 : i64 loc("_523"("aws-c-common/include/aws/common/math.inl":161:14))
  %v745 = sea.icmp eq, %v743, %v744 : i64 loc("_523"("aws-c-common/include/aws/common/math.inl":161:14))
  %v746 = sea.ptr.index %v714 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_524"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v747 = sea.const 8 : i64 loc("_525"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v748 = sea.ptr.dereferenceable %v746, %v747 : !sea.ptr<64>, i64 loc("_525"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v748, ^bb230, ^bb267
^bb230:
  %v749 = sea.load %v710[%v746] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_527"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v750 = sea.ptr.index %v714 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_528"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v751 = sea.const 8 : i64 loc("_529"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v752 = sea.ptr.dereferenceable %v750, %v751 : !sea.ptr<64>, i64 loc("_529"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v752, ^bb231, ^bb267
^bb231:
  %v753 = sea.load %v710[%v750] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_531"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v754 = sea.icmp ule, %v749, %v753 : i64 loc("_532"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v755 = sea.const 8 : i64 loc("_533"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v756 = sea.ptr.dereferenceable %v750, %v755 : !sea.ptr<64>, i64 loc("_533"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v756, ^bb232, ^bb267
^bb232:
  %v757 = sea.const 8 : i64 loc("_535"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v758 = sea.ptr.dereferenceable %v735, %v757 : !sea.ptr<64>, i64 loc("_535"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v758, ^bb233, ^bb267
^bb233:
  %v759 = sea.icmp ult, %v753, %v738 : i64 loc("_537"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v760 = sea.ptr.index %v714 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_538"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v761 = sea.const 8 : i64 loc("_539"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v762 = sea.ptr.dereferenceable %v760, %v761 : !sea.ptr<64>, i64 loc("_539"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v762, ^bb234, ^bb267
^bb234:
  %v763 = sea.load %v710[%v760] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_541"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v764 = sea.const 8 : i64 loc("_542"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v765 = sea.ptr.dereferenceable %v735, %v764 : !sea.ptr<64>, i64 loc("_542"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v765, ^bb235, ^bb267
^bb235:
  %v766 = sea.const 8 : i64 loc("_544"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v767 = sea.ptr.dereferenceable %v735, %v766 : !sea.ptr<64>, i64 loc("_544"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v767, ^bb236, ^bb267
^bb236:
  %v768 = sea.const 18446744073709551615 : i64 loc("_546"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v769 = sea.add %v738, %v768 : i64 loc("_546"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v770 = sea.icmp eq, %v763, %v769 : i64 loc("_547"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
  %v771 = sea.const 0 : i1 loc("or.cond.i88.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v772 = sea.select %v722, %v728, %v771 : i1 loc("or.cond.i88.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v773 = sea.const 0 : i1 loc("or.cond3.i89.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v774 = sea.select %v772, %v734, %v773 : i1 loc("or.cond3.i89.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v775 = sea.const 0 : i1 loc("or.cond5.i90.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v776 = sea.select %v774, %v740, %v775 : i1 loc("or.cond5.i90.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v777 = sea.const 0 : i1 loc("or.cond7.i91.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v778 = sea.select %v776, %v745, %v777 : i1 loc("or.cond7.i91.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v779 = sea.const 0 : i1 loc("or.cond9.i92.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v780 = sea.select %v778, %v754, %v779 : i1 loc("or.cond9.i92.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v781 = sea.const 0 : i1 loc("or.cond11.i93.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v782 = sea.select %v780, %v759, %v781 : i1 loc("or.cond11.i93.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v783 = sea.const 0 : i1 loc("or.cond13.i94.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v784 = sea.select %v782, %v770, %v783 : i1 loc("or.cond13.i94.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.br ^bb237(%v784 : i1)
^bb237(%v785 : i1):
  %v786 = sea.const 1 : i1 loc("or.cond.not")
  %v787 = sea.and %v716, %v786 : i1 loc("or.cond.not")
  sea.cond_br %v787, ^bb238, ^bb267
^bb238:
  sea.br ^bb239
^bb239:
  %v788 = sea.const 8 : i64 loc("_551"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v789 = sea.ptr.dereferenceable %v714, %v788 : !sea.ptr<64>, i64 loc("_551"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v789, ^bb240, ^bb267
^bb240:
  %v790 = sea.load %v710[%v714] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_553"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v791 = sea.ptr.null : !sea.ptr<64> loc("_554"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v792 = sea.ptr.cmp ne, %v790, %v791 : !sea.ptr<64> loc("_554"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v793 = sea.ptr.index %v714 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_555"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v794 = sea.const 8 : i64 loc("_556"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v795 = sea.ptr.dereferenceable %v793, %v794 : !sea.ptr<64>, i64 loc("_556"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v795, ^bb241, ^bb267
^bb241:
  %v796 = sea.load %v710[%v793] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_558"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v797 = sea.ptr.null : !sea.ptr<64> loc("_559"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v798 = sea.ptr.cmp ne, %v796, %v797 : !sea.ptr<64> loc("_559"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v799 = sea.ptr.index %v714 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_560"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v800 = sea.const 8 : i64 loc("_561"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v801 = sea.ptr.dereferenceable %v799, %v800 : !sea.ptr<64>, i64 loc("_561"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v801, ^bb242, ^bb267
^bb242:
  %v802 = sea.load %v710[%v799] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_563"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v803 = sea.ptr.null : !sea.ptr<64> loc("_564"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v804 = sea.ptr.cmp ne, %v802, %v803 : !sea.ptr<64> loc("_564"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v805 = sea.ptr.index %v714 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_565"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v806 = sea.const 8 : i64 loc("_566"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v807 = sea.ptr.dereferenceable %v805, %v806 : !sea.ptr<64>, i64 loc("_566"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v807, ^bb243, ^bb267
^bb243:
  %v808 = sea.load %v710[%v805] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_568"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v809 = sea.const 1 : i64 loc("_569"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v810 = sea.icmp ugt, %v808, %v809 : i64 loc("_569"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v811 = sea.const 8 : i64 loc("_570"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v812 = sea.ptr.dereferenceable %v805, %v811 : !sea.ptr<64>, i64 loc("_570"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v812, ^bb244, ^bb267
^bb244:
  %v813 = sea.ctpop %v808 : i64 loc("_572"("aws-c-common/include/aws/common/math.inl":161:14))
  %v814 = sea.const 1 : i64 loc("_573"("aws-c-common/include/aws/common/math.inl":161:14))
  %v815 = sea.icmp eq, %v813, %v814 : i64 loc("_573"("aws-c-common/include/aws/common/math.inl":161:14))
  %v816 = sea.ptr.index %v714 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_574"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v817 = sea.const 8 : i64 loc("_575"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v818 = sea.ptr.dereferenceable %v816, %v817 : !sea.ptr<64>, i64 loc("_575"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v818, ^bb245, ^bb267
^bb245:
  %v819 = sea.load %v710[%v816] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_577"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v820 = sea.ptr.index %v714 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_578"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v821 = sea.const 8 : i64 loc("_579"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v822 = sea.ptr.dereferenceable %v820, %v821 : !sea.ptr<64>, i64 loc("_579"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v822, ^bb246, ^bb267
^bb246:
  %v823 = sea.load %v710[%v820] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_581"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v824 = sea.icmp ule, %v819, %v823 : i64 loc("_582"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v825 = sea.const 8 : i64 loc("_583"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v826 = sea.ptr.dereferenceable %v820, %v825 : !sea.ptr<64>, i64 loc("_583"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v826, ^bb247, ^bb267
^bb247:
  %v827 = sea.const 8 : i64 loc("_585"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v828 = sea.ptr.dereferenceable %v805, %v827 : !sea.ptr<64>, i64 loc("_585"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v828, ^bb248, ^bb267
^bb248:
  %v829 = sea.icmp ult, %v823, %v808 : i64 loc("_587"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v830 = sea.ptr.index %v714 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_588"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v831 = sea.const 8 : i64 loc("_589"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v832 = sea.ptr.dereferenceable %v830, %v831 : !sea.ptr<64>, i64 loc("_589"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v832, ^bb249, ^bb267
^bb249:
  %v833 = sea.load %v710[%v830] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_591"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v834 = sea.const 8 : i64 loc("_592"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v835 = sea.ptr.dereferenceable %v805, %v834 : !sea.ptr<64>, i64 loc("_592"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v835, ^bb250, ^bb267
^bb250:
  %v836 = sea.const 8 : i64 loc("_594"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v837 = sea.ptr.dereferenceable %v805, %v836 : !sea.ptr<64>, i64 loc("_594"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v837, ^bb251, ^bb267
^bb251:
  %v838 = sea.const 18446744073709551615 : i64 loc("_595"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v839 = sea.add %v808, %v838 : i64 loc("_595"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v840 = sea.icmp eq, %v833, %v839 : i64 loc("_596"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
  %v841 = sea.const 0 : i1 loc("or.cond.i77.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v842 = sea.select %v792, %v798, %v841 : i1 loc("or.cond.i77.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v843 = sea.const 0 : i1 loc("or.cond3.i78.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v844 = sea.select %v842, %v804, %v843 : i1 loc("or.cond3.i78.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v845 = sea.const 0 : i1 loc("or.cond5.i79.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v846 = sea.select %v844, %v810, %v845 : i1 loc("or.cond5.i79.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v847 = sea.const 0 : i1 loc("or.cond7.i80.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v848 = sea.select %v846, %v815, %v847 : i1 loc("or.cond7.i80.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v849 = sea.const 0 : i1 loc("or.cond9.i81.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v850 = sea.select %v848, %v824, %v849 : i1 loc("or.cond9.i81.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v851 = sea.const 0 : i1 loc("or.cond11.i82.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v852 = sea.select %v850, %v829, %v851 : i1 loc("or.cond11.i82.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v853 = sea.const 0 : i1 loc("or.cond13.i83.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v854 = sea.select %v852, %v840, %v853 : i1 loc("or.cond13.i83.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.cond_br %v854, ^bb252, ^bb267 loc("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":33:3)
^bb252:
  %v855 = sea.const 0 : i32 loc("_598"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":34:12))
  %v856 = sea.icmp eq, %v713, %v855 : i32 loc("_598"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":34:12))
  %v857 = sea.const 8 : i64 loc("_599"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":0:0))
  %v858 = sea.ptr.dereferenceable %v816, %v857 : !sea.ptr<64>, i64 loc("_599"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":0:0))
  sea.cond_br %v856, ^bb256, ^bb253 loc("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":34:7)
^bb253:
  sea.cond_br %v858, ^bb254, ^bb267
^bb254:
  %v859 = sea.icmp eq, %v819, %v151 : i64 loc("_627"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":47:5))
  %v860 = sea.const 8 : i64 loc("_628"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":47:5))
  %v861 = sea.ptr.dereferenceable %v816, %v860 : !sea.ptr<64>, i64 loc("_628"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":47:5))
  sea.cond_br %v861, ^bb255, ^bb267
^bb255:
  %v862 = sea.const 1 : i1 loc("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":47:5)
  %v863 = sea.xor %v859, %v862 : i1 loc("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":47:5)
  sea.assume %v863 loc("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":47:5)
  sea.br ^bb267 loc("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":47:5)
^bb256:
  sea.cond_br %v150, ^bb264, ^bb257 loc("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":35:9)
^bb257:
  sea.cond_br %v858, ^bb258, ^bb267
^bb258:
  %v864 = sea.icmp eq, %v819, %v151 : i64 loc("_611"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":38:7))
  %v865 = sea.const 1 : i1 loc("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":38:7)
  sea.cond_br %v864, ^bb261(%v865 : i1), ^bb259 loc("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":38:7)
^bb259:
  %v866 = sea.const 8 : i64 loc("_613"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":38:7))
  %v867 = sea.ptr.dereferenceable %v816, %v866 : !sea.ptr<64>, i64 loc("_613"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":38:7))
  sea.cond_br %v867, ^bb260, ^bb267
^bb260:
  %v868 = sea.const 1 : i64 loc("_615"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":38:7))
  %v869 = sea.add %v151, %v868 : i64 loc("_615"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":38:7))
  %v870 = sea.icmp eq, %v819, %v869 : i64 loc("_616"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":38:7))
  sea.br ^bb261(%v870 : i1) loc("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":38:7)
^bb261(%v871 : i1):
  %v872 = sea.const 8 : i64 loc("_619"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":38:7))
  %v873 = sea.ptr.dereferenceable %v816, %v872 : !sea.ptr<64>, i64 loc("_619"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":38:7))
  sea.cond_br %v873, ^bb262, ^bb267
^bb262:
  %v874 = sea.const 1 : i1 loc("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":38:7)
  %v875 = sea.xor %v864, %v874 : i1 loc("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":38:7)
  sea.assume %v875 loc("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":38:7)
  %v876 = sea.const 8 : i64 loc("_621"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":38:7))
  %v877 = sea.ptr.dereferenceable %v816, %v876 : !sea.ptr<64>, i64 loc("_621"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":38:7))
  sea.cond_br %v877, ^bb263, ^bb267
^bb263:
  %v878 = sea.const 1 : i64 loc("_623"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":38:7))
  %v879 = sea.add %v151, %v878 : i64 loc("_623"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":38:7))
  %v880 = sea.icmp eq, %v819, %v879 : i64 loc("_624"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":38:7))
  %v881 = sea.const 1 : i1 loc("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":38:7)
  %v882 = sea.xor %v880, %v881 : i1 loc("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":38:7)
  sea.assume %v882 loc("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":38:7)
  sea.br ^bb267 loc("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":38:7)
^bb264:
  sea.cond_br %v858, ^bb265, ^bb267
^bb265:
  %v883 = sea.load %v711[%v12] align 4 : !sea.mem<!sea.ptr<64>, i8> -> i32 loc("_603"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":36:7))
  %v884 = sea.sext %v883 : i32 to i64 loc("_604"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":36:7))
  %v885 = sea.add %v151, %v884 : i64 loc("_605"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":36:7))
  %v886 = sea.icmp eq, %v819, %v885 : i64 loc("_606"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":36:7))
  %v887 = sea.const 8 : i64 loc("_607"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":36:7))
  %v888 = sea.ptr.dereferenceable %v816, %v887 : !sea.ptr<64>, i64 loc("_607"("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":36:7))
  sea.cond_br %v888, ^bb266, ^bb267
^bb266:
  %v889 = sea.const 1 : i1 loc("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":36:7)
  %v890 = sea.xor %v886, %v889 : i1 loc("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":36:7)
  sea.assume %v890 loc("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":36:7)
  sea.br ^bb267 loc("seahorn/jobs/hash_table_create/aws_hash_table_create_harness.c":36:7)
^bb267:
  sea.br ^bb268
^bb268:
  %v891 = sea.const 0 : i1
  sea.assert %v891
  sea.halt
}
