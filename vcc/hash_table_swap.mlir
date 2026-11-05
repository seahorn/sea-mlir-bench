// Exported from SeaHorn (hash_table_swap.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.16" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm33")
  %v1 = sea.mem.nondet "region.24" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm34")
  %v2 = sea.mem.nondet "region.32" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm35")
  %v3 = sea.mem.nondet "region.41" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm36")
  %v4 = sea.mem.nondet "region.0" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm37")
  %v5 = sea.mem.nondet "region.50" [5] : !sea.mem<!sea.ptr<64>, i8> loc("sm38")
  %v6 = sea.const 8 : i64 loc("_0")
  %v7 = sea.alloca %v6 align 8 [6] : i64 -> !sea.ptr<64> loc("_0")
  %v8 = sea.const 8 : i64 loc("_1")
  %v9 = sea.alloca %v8 align 8 [7] : i64 -> !sea.ptr<64> loc("_1")
  %v10 = sea.const 16 : i64 loc("_2")
  %v11 = sea.alloca %v10 align 8 [8] : i64 -> !sea.ptr<64> loc("_2")
  %v12 = sea.const 16 : i64 loc("_3")
  %v13 = sea.alloca %v12 align 8 [9] : i64 -> !sea.ptr<64> loc("_3")
  %v14 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v15 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v16 = sea.store %v4[%v14], %v15 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v17 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_4")
  %v18 = sea.ptr.index %v17 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_4")
  %v19 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v20 = sea.store %v16[%v18], %v19 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v21 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_5")
  %v22 = sea.ptr.index %v21 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_5")
  %v23 = sea.const 0 : i8
  %v24 = sea.const 24 : i64
  %v25 = sea.memset %v20[%v22], %v23, %v24 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v26 = sea.nondet "nd_size_t" [10] : i64 loc("_6"("seahorn/lib/hash_table_helper.c":14:24))
  %v27 = sea.const 1 : i1 loc("seahorn/lib/hash_table_helper.c":15:3)
  sea.assume %v27 loc("seahorn/lib/hash_table_helper.c":15:3)
  %v28 = sea.ctpop %v26 : i64 loc("_7"("aws-c-common/include/aws/common/math.inl":161:14))
  %v29 = sea.const 1 : i64 loc("_8"("aws-c-common/include/aws/common/math.inl":161:14))
  %v30 = sea.icmp eq, %v28, %v29 : i64 loc("_8"("aws-c-common/include/aws/common/math.inl":161:14))
  sea.assume %v30 loc("seahorn/lib/hash_table_helper.c":16:3)
  %v31 = sea.nondet "nd_size_t" [11] : i64 loc("_9"("seahorn/lib/hash_table_helper.c":18:27))
  sea.br ^bb1
^bb1:
  %v32 = sea.const 24 : i64 loc("_11"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v33 = sea.mul %v26, %v32 : i64 loc("_11"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v34 = sea.const 24 : i64 loc("_11"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v35 = sea.umulo %v26, %v34 : i64 loc("_11"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v36 = sea.const 4294967295 : i32 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
  sea.cond_br %v35, ^bb6(%v31, %v36 : i64, i32), ^bb2 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb2:
  sea.br ^bb3
^bb3:
  %v37 = sea.const 80 : i64 loc("_15"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v38 = sea.add %v33, %v37 : i64 loc("_15"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v39 = sea.const 80 : i64 loc("_15"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v40 = sea.uaddo %v33, %v39 : i64 loc("_15"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v40, ^bb4, ^bb5 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb4:
  sea.br ^bb5 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":71:9)
^bb5:
  %v41 = sea.sext %v40 : i1 to i32 loc("..i.i.i"("aws-c-common/source/hash_table.c":0:0))
  sea.br ^bb6(%v38, %v41 : i64, i32) loc("aws-c-common/source/hash_table.c":0:0)
^bb6(%v42 : i64, %v43 : i32):
  %v44 = sea.const 0 : i32 loc("_20"("seahorn/lib/hash_table_helper.c":20:72))
  %v45 = sea.icmp eq, %v43, %v44 : i32 loc("_20"("seahorn/lib/hash_table_helper.c":20:72))
  sea.assume %v45 loc("seahorn/lib/hash_table_helper.c":20:3)
  %v46 = sea.const 0 : i64 loc("_21"("seahorn/lib/proof_allocators.c":17:15))
  %v47 = sea.icmp eq, %v42, %v46 : i64 loc("_21"("seahorn/lib/proof_allocators.c":17:15))
  %v48 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v47, ^bb10(%v5, %v48 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb7 loc("seahorn/lib/proof_allocators.c":17:10)
^bb7:
  %v49 = sea.nondet "nd_malloc_is_fail" [12] : i1 loc("_23"("seahorn/lib/sea_allocators.c":11:10))
  %v50 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v49, ^bb9(%v5, %v50 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb8 loc("seahorn/lib/sea_allocators.c":11:10)
^bb8:
  %v51 = sea.const 1 : i64 loc("malloc.i")
  %v52 = sea.mul %v42, %v51 : i64 loc("malloc.i")
  %v53 = sea.alloca %v52 align 16 [13] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb9(%v5, %v53 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb9(%v54 : !sea.mem<!sea.ptr<64>, i8>, %v55 : !sea.ptr<64>):
  %v56 = sea.memhavoc %v54[%v55], %v42 [14] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v57 = sea.ptr.null : !sea.ptr<64> loc("_26"("seahorn/lib/sea_allocators.c":45:10))
  %v58 = sea.ptr.cmp ne, %v55, %v57 : !sea.ptr<64> loc("_26"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v58 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb10(%v56, %v55 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb10(%v59 : !sea.mem<!sea.ptr<64>, i8>, %v60 : !sea.ptr<64>):
  %v61 = sea.ptr.index %v60 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_28"("seahorn/lib/hash_table_helper.c":23:9))
  %v62 = sea.const 8 : i64 loc("_29"("seahorn/lib/hash_table_helper.c":23:14))
  %v63 = sea.ptr.dereferenceable %v61, %v62 : !sea.ptr<64>, i64 loc("_29"("seahorn/lib/hash_table_helper.c":23:14))
  sea.cond_br %v63, ^bb11, ^bb170
^bb11:
  %v64 = sea.store %v59[%v61], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":23:14)
  %v65 = sea.ptr.index %v60 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_31"("seahorn/lib/hash_table_helper.c":24:9))
  %v66 = sea.const 8 : i64 loc("_32"("seahorn/lib/hash_table_helper.c":24:14))
  %v67 = sea.ptr.dereferenceable %v65, %v66 : !sea.ptr<64>, i64 loc("_32"("seahorn/lib/hash_table_helper.c":24:14))
  sea.cond_br %v67, ^bb12, ^bb170
^bb12:
  %v68 = sea.const 18446744073709551615 : i64 loc("_34"("seahorn/lib/hash_table_helper.c":24:28))
  %v69 = sea.add %v26, %v68 : i64 loc("_34"("seahorn/lib/hash_table_helper.c":24:28))
  %v70 = sea.store %v64[%v65], %v69 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":24:14)
  %v71 = sea.ptr.index %v60 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_35"("seahorn/lib/hash_table_helper.c":25:9))
  %v72 = sea.const 8 : i64 loc("_36"("seahorn/lib/hash_table_helper.c":25:25))
  %v73 = sea.ptr.dereferenceable %v71, %v72 : !sea.ptr<64>, i64 loc("_36"("seahorn/lib/hash_table_helper.c":25:25))
  sea.cond_br %v73, ^bb13, ^bb170
^bb13:
  %v74 = sea.const 4606732058837280358 : i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v75 = sea.store %v70[%v71], %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v76 = sea.ptr.index %v60 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_38"("seahorn/lib/hash_table_helper.c":26:9))
  %v77 = sea.const 8 : i64 loc("_39"("seahorn/lib/hash_table_helper.c":26:15))
  %v78 = sea.ptr.dereferenceable %v76, %v77 : !sea.ptr<64>, i64 loc("_39"("seahorn/lib/hash_table_helper.c":26:15))
  sea.cond_br %v78, ^bb14, ^bb170
^bb14:
  %v79 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v80 = sea.store %v75[%v76], %v79 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v81 = sea.const 8 : i64 loc("_41"("seahorn/lib/hash_table_helper.c":27:17))
  %v82 = sea.ptr.dereferenceable %v60, %v81 : !sea.ptr<64>, i64 loc("_41"("seahorn/lib/hash_table_helper.c":27:17))
  sea.cond_br %v82, ^bb15, ^bb170
^bb15:
  %v83 = sea.func_addr @"nd_hash_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v84 = sea.store %v80[%v60], %v83 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v85 = sea.ptr.index %v60 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_43"("seahorn/lib/hash_table_helper.c":28:9))
  %v86 = sea.const 8 : i64 loc("_44"("seahorn/lib/hash_table_helper.c":28:19))
  %v87 = sea.ptr.dereferenceable %v85, %v86 : !sea.ptr<64>, i64 loc("_44"("seahorn/lib/hash_table_helper.c":28:19))
  sea.cond_br %v87, ^bb16, ^bb170
^bb16:
  %v88 = sea.func_addr @"nd_hash_equals_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  %v89 = sea.store %v84[%v85], %v88 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  sea.br ^bb17
^bb17:
  %v90 = sea.store %v0[%v7], %v60 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":37:15)
  sea.br ^bb18
^bb18:
  sea.br ^bb19
^bb19:
  %v91 = sea.const 8 : i64 loc("_48"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v92 = sea.ptr.dereferenceable %v60, %v91 : !sea.ptr<64>, i64 loc("_48"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v92, ^bb20, ^bb170
^bb20:
  %v93 = sea.load %v84[%v60] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_50"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v94 = sea.ptr.null : !sea.ptr<64> loc("_51"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v95 = sea.ptr.cmp ne, %v93, %v94 : !sea.ptr<64> loc("_51"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v96 = sea.const 8 : i64 loc("_52"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v97 = sea.ptr.dereferenceable %v85, %v96 : !sea.ptr<64>, i64 loc("_52"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v97, ^bb21, ^bb170
^bb21:
  %v98 = sea.const 8 : i64 loc("_54"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v99 = sea.ptr.dereferenceable %v76, %v98 : !sea.ptr<64>, i64 loc("_54"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v99, ^bb22, ^bb170
^bb22:
  %v100 = sea.const 8 : i64 loc("_56"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v101 = sea.ptr.dereferenceable %v61, %v100 : !sea.ptr<64>, i64 loc("_56"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v101, ^bb23, ^bb170
^bb23:
  %v102 = sea.const 1 : i64 loc("_58"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v103 = sea.icmp ugt, %v26, %v102 : i64 loc("_58"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v104 = sea.const 8 : i64 loc("_59"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v105 = sea.ptr.dereferenceable %v61, %v104 : !sea.ptr<64>, i64 loc("_59"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v105, ^bb24, ^bb170
^bb24:
  %v106 = sea.ptr.index %v60 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_61"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v107 = sea.const 8 : i64 loc("_62"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v108 = sea.ptr.dereferenceable %v106, %v107 : !sea.ptr<64>, i64 loc("_62"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v108, ^bb25, ^bb170
^bb25:
  %v109 = sea.load %v64[%v106] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_64"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v110 = sea.ptr.index %v60 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_65"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v111 = sea.const 8 : i64 loc("_66"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v112 = sea.ptr.dereferenceable %v110, %v111 : !sea.ptr<64>, i64 loc("_66"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v112, ^bb26, ^bb170
^bb26:
  %v113 = sea.load %v64[%v110] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_68"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v114 = sea.icmp ule, %v109, %v113 : i64 loc("_69"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v115 = sea.const 8 : i64 loc("_70"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v116 = sea.ptr.dereferenceable %v110, %v115 : !sea.ptr<64>, i64 loc("_70"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v116, ^bb27, ^bb170
^bb27:
  %v117 = sea.const 8 : i64 loc("_72"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v118 = sea.ptr.dereferenceable %v61, %v117 : !sea.ptr<64>, i64 loc("_72"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v118, ^bb28, ^bb170
^bb28:
  %v119 = sea.icmp ult, %v113, %v26 : i64 loc("_74"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v120 = sea.const 8 : i64 loc("_75"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v121 = sea.ptr.dereferenceable %v65, %v120 : !sea.ptr<64>, i64 loc("_75"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v121, ^bb29, ^bb170
^bb29:
  %v122 = sea.const 8 : i64 loc("_77"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v123 = sea.ptr.dereferenceable %v61, %v122 : !sea.ptr<64>, i64 loc("_77"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v123, ^bb30, ^bb170
^bb30:
  %v124 = sea.const 8 : i64 loc("_79"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v125 = sea.ptr.dereferenceable %v61, %v124 : !sea.ptr<64>, i64 loc("_79"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v125, ^bb31, ^bb170
^bb31:
  %v126 = sea.const 0 : i1 loc("or.cond5.i117.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v127 = sea.select %v95, %v103, %v126 : i1 loc("or.cond5.i117.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v128 = sea.const 0 : i1 loc("or.cond7.i118.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v129 = sea.select %v127, %v30, %v128 : i1 loc("or.cond7.i118.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v130 = sea.const 0 : i1 loc("or.cond9.i119.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v131 = sea.select %v129, %v114, %v130 : i1 loc("or.cond9.i119.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v132 = sea.const 0 : i1 loc("or.cond11.i120.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v133 = sea.select %v131, %v119, %v132 : i1 loc("or.cond11.i120.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.assume %v133 loc("seahorn/jobs/hash_table_swap/aws_hash_table_swap_harness.c":22:3)
  sea.br ^bb32
^bb32:
  %v134 = sea.nondet "nd_size_t" [15] : i64 loc("_81"("seahorn/lib/hash_table_helper.c":59:26))
  %v135 = sea.const 8 : i64 loc("_82"("seahorn/lib/hash_table_helper.c":60:49))
  %v136 = sea.ptr.dereferenceable %v61, %v135 : !sea.ptr<64>, i64 loc("_82"("seahorn/lib/hash_table_helper.c":60:49))
  sea.cond_br %v136, ^bb33, ^bb170
^bb33:
  sea.br ^bb34
^bb34:
  %v137 = sea.const 4294967295 : i32 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
  sea.cond_br %v35, ^bb39(%v134, %v137 : i64, i32), ^bb35 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb35:
  sea.br ^bb36
^bb36:
  %v138 = sea.const 80 : i64 loc("_86"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v139 = sea.add %v33, %v138 : i64 loc("_86"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v140 = sea.const 80 : i64 loc("_86"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v141 = sea.uaddo %v33, %v140 : i64 loc("_86"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v141, ^bb37, ^bb38 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb37:
  sea.br ^bb38 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":71:9)
^bb38:
  %v142 = sea.sext %v141 : i1 to i32 loc("..i.i43.i"("aws-c-common/source/hash_table.c":0:0))
  sea.br ^bb39(%v139, %v142 : i64, i32) loc("aws-c-common/source/hash_table.c":0:0)
^bb39(%v143 : i64, %v144 : i32):
  %v145 = sea.const 0 : i32 loc("_91"("seahorn/lib/hash_table_helper.c":60:71))
  %v146 = sea.icmp eq, %v144, %v145 : i32 loc("_91"("seahorn/lib/hash_table_helper.c":60:71))
  sea.assume %v146 loc("seahorn/lib/hash_table_helper.c":60:3)
  %v147 = sea.nondet "nd_size_t" [16] : i64 loc("_92"("seahorn/lib/utils.c":46:20))
  sea.br ^bb40
^bb40:
  %v148 = sea.store %v2[%v11], %v147 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v149 = sea.const 0 : i64 loc(".not"("seahorn/lib/utils.c":47:12))
  %v150 = sea.icmp eq, %v143, %v149 : i64 loc(".not"("seahorn/lib/utils.c":47:12))
  sea.cond_br %v150, ^bb46, ^bb41 loc("seahorn/lib/utils.c":47:16)
^bb41:
  sea.br ^bb42
^bb42:
  %v151 = sea.icmp ult, %v147, %v143 : i64 loc("_96"("seahorn/lib/utils.c":48:27))
  sea.assume %v151 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb43
^bb43:
  %v152 = sea.ptr.index %v60 [%v147] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_98"("seahorn/lib/utils.c":49:21))
  %v153 = sea.const 1 : i64 loc("_99"("seahorn/lib/utils.c":49:21))
  %v154 = sea.ptr.dereferenceable %v152, %v153 : !sea.ptr<64>, i64 loc("_99"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v154, ^bb44, ^bb170
^bb44:
  %v155 = sea.load %v89[%v152] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_101"("seahorn/lib/utils.c":49:21))
  %v156 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_102"("seahorn/lib/utils.c":49:14))
  sea.br ^bb45
^bb45:
  %v157 = sea.store %v148[%v156], %v155 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb48(%v157 : !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/lib/utils.c":50:3)
^bb46:
  %v158 = sea.nondet "nd_uint8_t" [17] : i8 loc("_105"("seahorn/lib/utils.c":51:21))
  %v159 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_106"("seahorn/lib/utils.c":51:14))
  sea.br ^bb47
^bb47:
  %v160 = sea.store %v148[%v159], %v158 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb48(%v160 : !sea.mem<!sea.ptr<64>, i8>)
^bb48(%v161 : !sea.mem<!sea.ptr<64>, i8>):
  %v162 = sea.nondet "nd_size_t" [18] : i64 loc("_108"("seahorn/lib/hash_table_helper.c":14:24))
  %v163 = sea.const 1 : i1 loc("seahorn/lib/hash_table_helper.c":15:3)
  sea.assume %v163 loc("seahorn/lib/hash_table_helper.c":15:3)
  %v164 = sea.ctpop %v162 : i64 loc("_109"("aws-c-common/include/aws/common/math.inl":161:14))
  %v165 = sea.const 1 : i64 loc("_110"("aws-c-common/include/aws/common/math.inl":161:14))
  %v166 = sea.icmp eq, %v164, %v165 : i64 loc("_110"("aws-c-common/include/aws/common/math.inl":161:14))
  sea.assume %v166 loc("seahorn/lib/hash_table_helper.c":16:3)
  %v167 = sea.nondet "nd_size_t" [19] : i64 loc("_111"("seahorn/lib/hash_table_helper.c":18:27))
  sea.br ^bb49
^bb49:
  %v168 = sea.const 24 : i64 loc("_113"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v169 = sea.mul %v162, %v168 : i64 loc("_113"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v170 = sea.const 24 : i64 loc("_113"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v171 = sea.umulo %v162, %v170 : i64 loc("_113"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v172 = sea.const 4294967295 : i32 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
  sea.cond_br %v171, ^bb54(%v167, %v172 : i64, i32), ^bb50 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb50:
  sea.br ^bb51
^bb51:
  %v173 = sea.const 80 : i64 loc("_117"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v174 = sea.add %v169, %v173 : i64 loc("_117"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v175 = sea.const 80 : i64 loc("_117"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v176 = sea.uaddo %v169, %v175 : i64 loc("_117"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v176, ^bb52, ^bb53 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb52:
  sea.br ^bb53 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":71:9)
^bb53:
  %v177 = sea.sext %v176 : i1 to i32 loc("..i.i30.i"("aws-c-common/source/hash_table.c":0:0))
  sea.br ^bb54(%v174, %v177 : i64, i32) loc("aws-c-common/source/hash_table.c":0:0)
^bb54(%v178 : i64, %v179 : i32):
  %v180 = sea.const 0 : i32 loc("_122"("seahorn/lib/hash_table_helper.c":20:72))
  %v181 = sea.icmp eq, %v179, %v180 : i32 loc("_122"("seahorn/lib/hash_table_helper.c":20:72))
  sea.assume %v181 loc("seahorn/lib/hash_table_helper.c":20:3)
  %v182 = sea.const 0 : i64 loc("_123"("seahorn/lib/proof_allocators.c":17:15))
  %v183 = sea.icmp eq, %v178, %v182 : i64 loc("_123"("seahorn/lib/proof_allocators.c":17:15))
  %v184 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v183, ^bb58(%v89, %v184 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb55 loc("seahorn/lib/proof_allocators.c":17:10)
^bb55:
  %v185 = sea.nondet "nd_malloc_is_fail" [20] : i1 loc("_125"("seahorn/lib/sea_allocators.c":11:10))
  %v186 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v185, ^bb57(%v89, %v186 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb56 loc("seahorn/lib/sea_allocators.c":11:10)
^bb56:
  %v187 = sea.const 1 : i64 loc("malloc124.i")
  %v188 = sea.mul %v178, %v187 : i64 loc("malloc124.i")
  %v189 = sea.alloca %v188 align 16 [21] : i64 -> !sea.ptr<64> loc("malloc124.i")
  sea.br ^bb57(%v89, %v189 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb57(%v190 : !sea.mem<!sea.ptr<64>, i8>, %v191 : !sea.ptr<64>):
  %v192 = sea.memhavoc %v190[%v191], %v178 [22] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v193 = sea.ptr.null : !sea.ptr<64> loc("_128"("seahorn/lib/sea_allocators.c":45:10))
  %v194 = sea.ptr.cmp ne, %v191, %v193 : !sea.ptr<64> loc("_128"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v194 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb58(%v192, %v191 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb58(%v195 : !sea.mem<!sea.ptr<64>, i8>, %v196 : !sea.ptr<64>):
  %v197 = sea.ptr.index %v196 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_130"("seahorn/lib/hash_table_helper.c":23:9))
  %v198 = sea.const 8 : i64 loc("_131"("seahorn/lib/hash_table_helper.c":23:14))
  %v199 = sea.ptr.dereferenceable %v197, %v198 : !sea.ptr<64>, i64 loc("_131"("seahorn/lib/hash_table_helper.c":23:14))
  sea.cond_br %v199, ^bb59, ^bb170
^bb59:
  %v200 = sea.store %v195[%v197], %v162 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":23:14)
  %v201 = sea.ptr.index %v196 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_133"("seahorn/lib/hash_table_helper.c":24:9))
  %v202 = sea.const 8 : i64 loc("_134"("seahorn/lib/hash_table_helper.c":24:14))
  %v203 = sea.ptr.dereferenceable %v201, %v202 : !sea.ptr<64>, i64 loc("_134"("seahorn/lib/hash_table_helper.c":24:14))
  sea.cond_br %v203, ^bb60, ^bb170
^bb60:
  %v204 = sea.const 18446744073709551615 : i64 loc("_136"("seahorn/lib/hash_table_helper.c":24:28))
  %v205 = sea.add %v162, %v204 : i64 loc("_136"("seahorn/lib/hash_table_helper.c":24:28))
  %v206 = sea.store %v200[%v201], %v205 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":24:14)
  %v207 = sea.ptr.index %v196 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_137"("seahorn/lib/hash_table_helper.c":25:9))
  %v208 = sea.const 8 : i64 loc("_138"("seahorn/lib/hash_table_helper.c":25:25))
  %v209 = sea.ptr.dereferenceable %v207, %v208 : !sea.ptr<64>, i64 loc("_138"("seahorn/lib/hash_table_helper.c":25:25))
  sea.cond_br %v209, ^bb61, ^bb170
^bb61:
  %v210 = sea.const 4606732058837280358 : i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v211 = sea.store %v206[%v207], %v210 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/hash_table_helper.c":25:25)
  %v212 = sea.ptr.index %v196 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_140"("seahorn/lib/hash_table_helper.c":26:9))
  %v213 = sea.const 8 : i64 loc("_141"("seahorn/lib/hash_table_helper.c":26:15))
  %v214 = sea.ptr.dereferenceable %v212, %v213 : !sea.ptr<64>, i64 loc("_141"("seahorn/lib/hash_table_helper.c":26:15))
  sea.cond_br %v214, ^bb62, ^bb170
^bb62:
  %v215 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v216 = sea.store %v211[%v212], %v215 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":26:15)
  %v217 = sea.const 8 : i64 loc("_143"("seahorn/lib/hash_table_helper.c":27:17))
  %v218 = sea.ptr.dereferenceable %v196, %v217 : !sea.ptr<64>, i64 loc("_143"("seahorn/lib/hash_table_helper.c":27:17))
  sea.cond_br %v218, ^bb63, ^bb170
^bb63:
  %v219 = sea.func_addr @"nd_hash_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v220 = sea.store %v216[%v196], %v219 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":27:17)
  %v221 = sea.ptr.index %v196 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_145"("seahorn/lib/hash_table_helper.c":28:9))
  %v222 = sea.const 8 : i64 loc("_146"("seahorn/lib/hash_table_helper.c":28:19))
  %v223 = sea.ptr.dereferenceable %v221, %v222 : !sea.ptr<64>, i64 loc("_146"("seahorn/lib/hash_table_helper.c":28:19))
  sea.cond_br %v223, ^bb64, ^bb170
^bb64:
  %v224 = sea.func_addr @"nd_hash_equals_fn" : !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  %v225 = sea.store %v220[%v221], %v224 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":28:19)
  sea.br ^bb65
^bb65:
  %v226 = sea.store %v1[%v9], %v196 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/hash_table_helper.c":37:15)
  sea.br ^bb66
^bb66:
  sea.br ^bb67
^bb67:
  %v227 = sea.const 8 : i64 loc("_150"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v228 = sea.ptr.dereferenceable %v196, %v227 : !sea.ptr<64>, i64 loc("_150"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v228, ^bb68, ^bb170
^bb68:
  %v229 = sea.load %v220[%v196] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_152"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v230 = sea.ptr.null : !sea.ptr<64> loc("_153"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v231 = sea.ptr.cmp ne, %v229, %v230 : !sea.ptr<64> loc("_153"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v232 = sea.const 8 : i64 loc("_154"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v233 = sea.ptr.dereferenceable %v221, %v232 : !sea.ptr<64>, i64 loc("_154"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v233, ^bb69, ^bb170
^bb69:
  %v234 = sea.const 8 : i64 loc("_156"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v235 = sea.ptr.dereferenceable %v212, %v234 : !sea.ptr<64>, i64 loc("_156"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v235, ^bb70, ^bb170
^bb70:
  %v236 = sea.const 8 : i64 loc("_158"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v237 = sea.ptr.dereferenceable %v197, %v236 : !sea.ptr<64>, i64 loc("_158"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v237, ^bb71, ^bb170
^bb71:
  %v238 = sea.const 1 : i64 loc("_160"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v239 = sea.icmp ugt, %v162, %v238 : i64 loc("_160"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v240 = sea.const 8 : i64 loc("_161"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v241 = sea.ptr.dereferenceable %v197, %v240 : !sea.ptr<64>, i64 loc("_161"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v241, ^bb72, ^bb170
^bb72:
  %v242 = sea.ptr.index %v196 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_163"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v243 = sea.const 8 : i64 loc("_164"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v244 = sea.ptr.dereferenceable %v242, %v243 : !sea.ptr<64>, i64 loc("_164"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v244, ^bb73, ^bb170
^bb73:
  %v245 = sea.load %v200[%v242] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_166"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v246 = sea.ptr.index %v196 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_167"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v247 = sea.const 8 : i64 loc("_168"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v248 = sea.ptr.dereferenceable %v246, %v247 : !sea.ptr<64>, i64 loc("_168"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v248, ^bb74, ^bb170
^bb74:
  %v249 = sea.load %v200[%v246] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_170"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v250 = sea.icmp ule, %v245, %v249 : i64 loc("_171"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v251 = sea.const 8 : i64 loc("_172"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v252 = sea.ptr.dereferenceable %v246, %v251 : !sea.ptr<64>, i64 loc("_172"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v252, ^bb75, ^bb170
^bb75:
  %v253 = sea.const 8 : i64 loc("_174"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v254 = sea.ptr.dereferenceable %v197, %v253 : !sea.ptr<64>, i64 loc("_174"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v254, ^bb76, ^bb170
^bb76:
  %v255 = sea.icmp ult, %v249, %v162 : i64 loc("_176"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v256 = sea.const 8 : i64 loc("_177"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v257 = sea.ptr.dereferenceable %v201, %v256 : !sea.ptr<64>, i64 loc("_177"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v257, ^bb77, ^bb170
^bb77:
  %v258 = sea.const 8 : i64 loc("_179"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v259 = sea.ptr.dereferenceable %v197, %v258 : !sea.ptr<64>, i64 loc("_179"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v259, ^bb78, ^bb170
^bb78:
  %v260 = sea.const 8 : i64 loc("_181"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v261 = sea.ptr.dereferenceable %v197, %v260 : !sea.ptr<64>, i64 loc("_181"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v261, ^bb79, ^bb170
^bb79:
  %v262 = sea.const 0 : i1 loc("or.cond5.i106.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v263 = sea.select %v231, %v239, %v262 : i1 loc("or.cond5.i106.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v264 = sea.const 0 : i1 loc("or.cond7.i107.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v265 = sea.select %v263, %v166, %v264 : i1 loc("or.cond7.i107.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v266 = sea.const 0 : i1 loc("or.cond9.i108.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v267 = sea.select %v265, %v250, %v266 : i1 loc("or.cond9.i108.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v268 = sea.const 0 : i1 loc("or.cond11.i109.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v269 = sea.select %v267, %v255, %v268 : i1 loc("or.cond11.i109.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.assume %v269 loc("seahorn/jobs/hash_table_swap/aws_hash_table_swap_harness.c":32:3)
  sea.br ^bb80
^bb80:
  %v270 = sea.nondet "nd_size_t" [23] : i64 loc("_183"("seahorn/lib/hash_table_helper.c":59:26))
  %v271 = sea.const 8 : i64 loc("_184"("seahorn/lib/hash_table_helper.c":60:49))
  %v272 = sea.ptr.dereferenceable %v197, %v271 : !sea.ptr<64>, i64 loc("_184"("seahorn/lib/hash_table_helper.c":60:49))
  sea.cond_br %v272, ^bb81, ^bb170
^bb81:
  sea.br ^bb82
^bb82:
  %v273 = sea.const 4294967295 : i32 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
  sea.cond_br %v171, ^bb87(%v270, %v273 : i64, i32), ^bb83 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb83:
  sea.br ^bb84
^bb84:
  %v274 = sea.const 80 : i64 loc("_188"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v275 = sea.add %v169, %v274 : i64 loc("_188"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v276 = sea.const 80 : i64 loc("_188"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v277 = sea.uaddo %v169, %v276 : i64 loc("_188"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v277, ^bb85, ^bb86 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb85:
  sea.br ^bb86 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":71:9)
^bb86:
  %v278 = sea.sext %v277 : i1 to i32 loc("..i.i55.i"("aws-c-common/source/hash_table.c":0:0))
  sea.br ^bb87(%v275, %v278 : i64, i32) loc("aws-c-common/source/hash_table.c":0:0)
^bb87(%v279 : i64, %v280 : i32):
  %v281 = sea.const 0 : i32 loc("_193"("seahorn/lib/hash_table_helper.c":60:71))
  %v282 = sea.icmp eq, %v280, %v281 : i32 loc("_193"("seahorn/lib/hash_table_helper.c":60:71))
  sea.assume %v282 loc("seahorn/lib/hash_table_helper.c":60:3)
  %v283 = sea.nondet "nd_size_t" [24] : i64 loc("_194"("seahorn/lib/utils.c":46:20))
  sea.br ^bb88
^bb88:
  %v284 = sea.store %v3[%v13], %v283 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v285 = sea.const 0 : i64 loc(".not23"("seahorn/lib/utils.c":47:12))
  %v286 = sea.icmp eq, %v279, %v285 : i64 loc(".not23"("seahorn/lib/utils.c":47:12))
  sea.cond_br %v286, ^bb94, ^bb89 loc("seahorn/lib/utils.c":47:16)
^bb89:
  sea.br ^bb90
^bb90:
  %v287 = sea.icmp ult, %v283, %v279 : i64 loc("_198"("seahorn/lib/utils.c":48:27))
  sea.assume %v287 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb91
^bb91:
  %v288 = sea.ptr.index %v196 [%v283] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_200"("seahorn/lib/utils.c":49:21))
  %v289 = sea.const 1 : i64 loc("_201"("seahorn/lib/utils.c":49:21))
  %v290 = sea.ptr.dereferenceable %v288, %v289 : !sea.ptr<64>, i64 loc("_201"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v290, ^bb92, ^bb170
^bb92:
  %v291 = sea.load %v225[%v288] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_203"("seahorn/lib/utils.c":49:21))
  %v292 = sea.ptr.index %v13 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_204"("seahorn/lib/utils.c":49:14))
  sea.br ^bb93
^bb93:
  %v293 = sea.store %v284[%v292], %v291 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb96(%v291 : i8) loc("seahorn/lib/utils.c":50:3)
^bb94:
  %v294 = sea.nondet "nd_uint8_t" [25] : i8 loc("_207"("seahorn/lib/utils.c":51:21))
  %v295 = sea.ptr.index %v13 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_208"("seahorn/lib/utils.c":51:14))
  sea.br ^bb95
^bb95:
  %v296 = sea.store %v284[%v295], %v294 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb96(%v294 : i8)
^bb96(%v297 : i8):
  %v298 = sea.load %v90[%v7] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_211"("aws-c-common/source/hash_table.c":269:33))
  %v299 = sea.ptr.to_int %v298 : !sea.ptr<64> to i64 loc("_212"("aws-c-common/source/hash_table.c":269:33))
  %v300 = sea.load %v90[%v7] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_213"("aws-c-common/source/hash_table.c":269:33))
  %v301 = sea.store %v90[%v7], %v196 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":270:10)
  %v302 = sea.store %v226[%v9], %v298 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/hash_table.c":271:10)
  %v303 = sea.store %v302[%v9], %v299 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/hash_table.c":271:10)
  sea.br ^bb97
^bb97:
  %v304 = sea.const 0 : i64 loc(".not1.i5.i"("aws-c-common/source/hash_table.c":1027:19))
  %v305 = sea.icmp ne, %v299, %v304 : i64 loc(".not1.i5.i"("aws-c-common/source/hash_table.c":1027:19))
  %v306 = sea.const 0 : i1 loc("aws-c-common/source/hash_table.c":1027:31)
  sea.cond_br %v305, ^bb98, ^bb112(%v306 : i1) loc("aws-c-common/source/hash_table.c":1027:31)
^bb98:
  sea.br ^bb99
^bb99:
  %v307 = sea.const 8 : i64 loc("_217"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v308 = sea.ptr.dereferenceable %v298, %v307 : !sea.ptr<64>, i64 loc("_217"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v308, ^bb100, ^bb170
^bb100:
  %v309 = sea.load %v225[%v298] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_219"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v310 = sea.ptr.null : !sea.ptr<64> loc("_220"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v311 = sea.ptr.cmp ne, %v309, %v310 : !sea.ptr<64> loc("_220"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v312 = sea.ptr.index %v298 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_221"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v313 = sea.const 8 : i64 loc("_222"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v314 = sea.ptr.dereferenceable %v312, %v313 : !sea.ptr<64>, i64 loc("_222"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v314, ^bb101, ^bb170
^bb101:
  %v315 = sea.load %v225[%v312] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_224"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v316 = sea.ptr.null : !sea.ptr<64> loc("_225"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v317 = sea.ptr.cmp ne, %v315, %v316 : !sea.ptr<64> loc("_225"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v318 = sea.ptr.index %v298 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_226"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v319 = sea.const 8 : i64 loc("_227"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v320 = sea.ptr.dereferenceable %v318, %v319 : !sea.ptr<64>, i64 loc("_227"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v320, ^bb102, ^bb170
^bb102:
  %v321 = sea.load %v225[%v318] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_229"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v322 = sea.ptr.null : !sea.ptr<64> loc("_230"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v323 = sea.ptr.cmp ne, %v321, %v322 : !sea.ptr<64> loc("_230"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v324 = sea.ptr.index %v298 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_231"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v325 = sea.const 8 : i64 loc("_232"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v326 = sea.ptr.dereferenceable %v324, %v325 : !sea.ptr<64>, i64 loc("_232"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v326, ^bb103, ^bb170
^bb103:
  %v327 = sea.load %v206[%v324] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_234"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v328 = sea.const 1 : i64 loc("_235"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v329 = sea.icmp ugt, %v327, %v328 : i64 loc("_235"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v330 = sea.const 8 : i64 loc("_236"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v331 = sea.ptr.dereferenceable %v324, %v330 : !sea.ptr<64>, i64 loc("_236"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v331, ^bb104, ^bb170
^bb104:
  %v332 = sea.ctpop %v327 : i64 loc("_238"("aws-c-common/include/aws/common/math.inl":161:14))
  %v333 = sea.const 1 : i64 loc("_239"("aws-c-common/include/aws/common/math.inl":161:14))
  %v334 = sea.icmp eq, %v332, %v333 : i64 loc("_239"("aws-c-common/include/aws/common/math.inl":161:14))
  %v335 = sea.ptr.index %v298 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_240"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v336 = sea.const 8 : i64 loc("_241"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v337 = sea.ptr.dereferenceable %v335, %v336 : !sea.ptr<64>, i64 loc("_241"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v337, ^bb105, ^bb170
^bb105:
  %v338 = sea.load %v206[%v335] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_243"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v339 = sea.ptr.index %v298 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_244"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v340 = sea.const 8 : i64 loc("_245"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v341 = sea.ptr.dereferenceable %v339, %v340 : !sea.ptr<64>, i64 loc("_245"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v341, ^bb106, ^bb170
^bb106:
  %v342 = sea.load %v206[%v339] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_247"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v343 = sea.icmp ule, %v338, %v342 : i64 loc("_248"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v344 = sea.const 8 : i64 loc("_249"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v345 = sea.ptr.dereferenceable %v339, %v344 : !sea.ptr<64>, i64 loc("_249"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v345, ^bb107, ^bb170
^bb107:
  %v346 = sea.const 8 : i64 loc("_251"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v347 = sea.ptr.dereferenceable %v324, %v346 : !sea.ptr<64>, i64 loc("_251"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v347, ^bb108, ^bb170
^bb108:
  %v348 = sea.icmp ult, %v342, %v327 : i64 loc("_253"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v349 = sea.ptr.index %v298 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_254"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v350 = sea.const 8 : i64 loc("_255"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v351 = sea.ptr.dereferenceable %v349, %v350 : !sea.ptr<64>, i64 loc("_255"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v351, ^bb109, ^bb170
^bb109:
  %v352 = sea.load %v206[%v349] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_257"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v353 = sea.const 8 : i64 loc("_258"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v354 = sea.ptr.dereferenceable %v324, %v353 : !sea.ptr<64>, i64 loc("_258"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v354, ^bb110, ^bb170
^bb110:
  %v355 = sea.const 8 : i64 loc("_260"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v356 = sea.ptr.dereferenceable %v324, %v355 : !sea.ptr<64>, i64 loc("_260"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v356, ^bb111, ^bb170
^bb111:
  %v357 = sea.const 18446744073709551615 : i64 loc("_262"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v358 = sea.add %v327, %v357 : i64 loc("_262"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v359 = sea.icmp eq, %v352, %v358 : i64 loc("_263"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
  %v360 = sea.const 0 : i1 loc("or.cond.i93.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v361 = sea.select %v311, %v317, %v360 : i1 loc("or.cond.i93.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v362 = sea.const 0 : i1 loc("or.cond3.i94.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v363 = sea.select %v361, %v323, %v362 : i1 loc("or.cond3.i94.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v364 = sea.const 0 : i1 loc("or.cond5.i95.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v365 = sea.select %v363, %v329, %v364 : i1 loc("or.cond5.i95.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v366 = sea.const 0 : i1 loc("or.cond7.i96.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v367 = sea.select %v365, %v334, %v366 : i1 loc("or.cond7.i96.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v368 = sea.const 0 : i1 loc("or.cond9.i97.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v369 = sea.select %v367, %v343, %v368 : i1 loc("or.cond9.i97.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v370 = sea.const 0 : i1 loc("or.cond11.i98.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v371 = sea.select %v369, %v348, %v370 : i1 loc("or.cond11.i98.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v372 = sea.const 0 : i1 loc("or.cond13.i99.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v373 = sea.select %v371, %v359, %v372 : i1 loc("or.cond13.i99.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.br ^bb112(%v373 : i1)
^bb112(%v374 : i1):
  %v375 = sea.const 1 : i1 loc("or.cond20.not")
  %v376 = sea.and %v305, %v375 : i1 loc("or.cond20.not")
  sea.cond_br %v376, ^bb113, ^bb170
^bb113:
  sea.br ^bb114
^bb114:
  %v377 = sea.const 8 : i64 loc("_267"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v378 = sea.ptr.dereferenceable %v298, %v377 : !sea.ptr<64>, i64 loc("_267"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v378, ^bb115, ^bb170
^bb115:
  %v379 = sea.load %v225[%v298] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_269"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v380 = sea.ptr.null : !sea.ptr<64> loc("_270"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v381 = sea.ptr.cmp ne, %v379, %v380 : !sea.ptr<64> loc("_270"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v382 = sea.ptr.index %v298 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_271"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v383 = sea.const 8 : i64 loc("_272"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v384 = sea.ptr.dereferenceable %v382, %v383 : !sea.ptr<64>, i64 loc("_272"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v384, ^bb116, ^bb170
^bb116:
  %v385 = sea.load %v225[%v382] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_274"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v386 = sea.ptr.null : !sea.ptr<64> loc("_275"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v387 = sea.ptr.cmp ne, %v385, %v386 : !sea.ptr<64> loc("_275"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:44))
  %v388 = sea.ptr.index %v298 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_276"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v389 = sea.const 8 : i64 loc("_277"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v390 = sea.ptr.dereferenceable %v388, %v389 : !sea.ptr<64>, i64 loc("_277"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v390, ^bb117, ^bb170
^bb117:
  %v391 = sea.load %v225[%v388] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_279"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v392 = sea.ptr.null : !sea.ptr<64> loc("_280"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v393 = sea.ptr.cmp ne, %v391, %v392 : !sea.ptr<64> loc("_280"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:36))
  %v394 = sea.ptr.index %v298 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_281"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v395 = sea.const 8 : i64 loc("_282"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v396 = sea.ptr.dereferenceable %v394, %v395 : !sea.ptr<64>, i64 loc("_282"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v396, ^bb118, ^bb170
^bb118:
  %v397 = sea.load %v206[%v394] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_284"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v398 = sea.const 1 : i64 loc("_285"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v399 = sea.icmp ugt, %v397, %v398 : i64 loc("_285"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:39))
  %v400 = sea.const 8 : i64 loc("_286"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v401 = sea.ptr.dereferenceable %v394, %v400 : !sea.ptr<64>, i64 loc("_286"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v401, ^bb119, ^bb170
^bb119:
  %v402 = sea.ctpop %v397 : i64 loc("_288"("aws-c-common/include/aws/common/math.inl":161:14))
  %v403 = sea.const 1 : i64 loc("_289"("aws-c-common/include/aws/common/math.inl":161:14))
  %v404 = sea.icmp eq, %v402, %v403 : i64 loc("_289"("aws-c-common/include/aws/common/math.inl":161:14))
  %v405 = sea.ptr.index %v298 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_290"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v406 = sea.const 8 : i64 loc("_291"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v407 = sea.ptr.dereferenceable %v405, %v406 : !sea.ptr<64>, i64 loc("_291"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v407, ^bb120, ^bb170
^bb120:
  %v408 = sea.load %v206[%v405] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_293"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v409 = sea.ptr.index %v298 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_294"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v410 = sea.const 8 : i64 loc("_295"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v411 = sea.ptr.dereferenceable %v409, %v410 : !sea.ptr<64>, i64 loc("_295"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v411, ^bb121, ^bb170
^bb121:
  %v412 = sea.load %v206[%v409] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_297"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v413 = sea.icmp ule, %v408, %v412 : i64 loc("_298"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:40))
  %v414 = sea.const 8 : i64 loc("_299"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v415 = sea.ptr.dereferenceable %v409, %v414 : !sea.ptr<64>, i64 loc("_299"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v415, ^bb122, ^bb170
^bb122:
  %v416 = sea.const 8 : i64 loc("_301"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v417 = sea.ptr.dereferenceable %v394, %v416 : !sea.ptr<64>, i64 loc("_301"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v417, ^bb123, ^bb170
^bb123:
  %v418 = sea.icmp ult, %v412, %v397 : i64 loc("_303"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:34))
  %v419 = sea.ptr.index %v298 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_304"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v420 = sea.const 8 : i64 loc("_305"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v421 = sea.ptr.dereferenceable %v419, %v420 : !sea.ptr<64>, i64 loc("_305"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v421, ^bb124, ^bb170
^bb124:
  %v422 = sea.load %v206[%v419] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_307"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v423 = sea.const 8 : i64 loc("_308"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v424 = sea.ptr.dereferenceable %v394, %v423 : !sea.ptr<64>, i64 loc("_308"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v424, ^bb125, ^bb170
^bb125:
  %v425 = sea.const 8 : i64 loc("_310"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v426 = sea.ptr.dereferenceable %v394, %v425 : !sea.ptr<64>, i64 loc("_310"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v426, ^bb126, ^bb170
^bb126:
  %v427 = sea.const 18446744073709551615 : i64 loc("_311"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v428 = sea.add %v397, %v427 : i64 loc("_311"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:51))
  %v429 = sea.icmp eq, %v422, %v428 : i64 loc("_312"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:37))
  %v430 = sea.const 0 : i1 loc("or.cond.i82.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v431 = sea.select %v381, %v387, %v430 : i1 loc("or.cond.i82.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v432 = sea.const 0 : i1 loc("or.cond3.i83.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v433 = sea.select %v431, %v393, %v432 : i1 loc("or.cond3.i83.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v434 = sea.const 0 : i1 loc("or.cond5.i84.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v435 = sea.select %v433, %v399, %v434 : i1 loc("or.cond5.i84.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v436 = sea.const 0 : i1 loc("or.cond7.i85.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v437 = sea.select %v435, %v404, %v436 : i1 loc("or.cond7.i85.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v438 = sea.const 0 : i1 loc("or.cond9.i86.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v439 = sea.select %v437, %v413, %v438 : i1 loc("or.cond9.i86.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v440 = sea.const 0 : i1 loc("or.cond11.i87.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v441 = sea.select %v439, %v418, %v440 : i1 loc("or.cond11.i87.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v442 = sea.const 0 : i1 loc("or.cond13.i88.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v443 = sea.select %v441, %v429, %v442 : i1 loc("or.cond13.i88.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.cond_br %v443, ^bb127, ^bb170 loc("seahorn/jobs/hash_table_swap/aws_hash_table_swap_harness.c":37:3)
^bb127:
  sea.br ^bb128
^bb128:
  sea.br ^bb129
^bb129:
  %v444 = sea.ptr.index %v298 [%v147] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_316"("seahorn/lib/utils.c":40:5))
  %v445 = sea.const 1 : i64 loc("_317"("seahorn/lib/utils.c":40:5))
  %v446 = sea.ptr.dereferenceable %v444, %v445 : !sea.ptr<64>, i64 loc("_317"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v446, ^bb130, ^bb170
^bb130:
  %v447 = sea.load %v225[%v444] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_319"("seahorn/lib/utils.c":40:5))
  %v448 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_320"("seahorn/lib/utils.c":40:5))
  sea.br ^bb131
^bb131:
  %v449 = sea.load %v161[%v448] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_322"("seahorn/lib/utils.c":40:5))
  %v450 = sea.icmp eq, %v447, %v449 : i8 loc("_323"("seahorn/lib/utils.c":40:5))
  sea.br ^bb132
^bb132:
  %v451 = sea.const 1 : i64 loc("_325"("seahorn/lib/utils.c":40:5))
  %v452 = sea.ptr.dereferenceable %v444, %v451 : !sea.ptr<64>, i64 loc("_325"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v452, ^bb133, ^bb170
^bb133:
  %v453 = sea.const 1 : i1 loc("or.cond")
  %v454 = sea.const 0 : i1 loc("or.cond")
  %v455 = sea.select %v453, %v450, %v454 : i1 loc("or.cond")
  sea.cond_br %v455, ^bb134, ^bb170
^bb134:
  sea.br ^bb135
^bb135:
  sea.br ^bb136
^bb136:
  %v456 = sea.const 8 : i64 loc("_329"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v457 = sea.ptr.dereferenceable %v196, %v456 : !sea.ptr<64>, i64 loc("_329"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v457, ^bb137, ^bb170
^bb137:
  %v458 = sea.load %v220[%v196] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_331"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v459 = sea.ptr.null : !sea.ptr<64> loc("_332"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v460 = sea.ptr.cmp ne, %v458, %v459 : !sea.ptr<64> loc("_332"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:40))
  %v461 = sea.const 8 : i64 loc("_333"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v462 = sea.ptr.dereferenceable %v221, %v461 : !sea.ptr<64>, i64 loc("_333"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v462, ^bb138, ^bb170
^bb138:
  %v463 = sea.const 8 : i64 loc("_335"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v464 = sea.ptr.dereferenceable %v212, %v463 : !sea.ptr<64>, i64 loc("_335"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v464, ^bb139, ^bb170
^bb139:
  %v465 = sea.const 8 : i64 loc("_337"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v466 = sea.ptr.dereferenceable %v197, %v465 : !sea.ptr<64>, i64 loc("_337"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v466, ^bb140, ^bb170
^bb140:
  %v467 = sea.const 8 : i64 loc("_339"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v468 = sea.ptr.dereferenceable %v197, %v467 : !sea.ptr<64>, i64 loc("_339"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v468, ^bb141, ^bb170
^bb141:
  %v469 = sea.const 8 : i64 loc("_341"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v470 = sea.ptr.dereferenceable %v242, %v469 : !sea.ptr<64>, i64 loc("_341"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v470, ^bb142, ^bb170
^bb142:
  %v471 = sea.const 8 : i64 loc("_343"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v472 = sea.ptr.dereferenceable %v246, %v471 : !sea.ptr<64>, i64 loc("_343"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v472, ^bb143, ^bb170
^bb143:
  %v473 = sea.const 8 : i64 loc("_345"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v474 = sea.ptr.dereferenceable %v246, %v473 : !sea.ptr<64>, i64 loc("_345"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v474, ^bb144, ^bb170
^bb144:
  %v475 = sea.const 8 : i64 loc("_347"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v476 = sea.ptr.dereferenceable %v197, %v475 : !sea.ptr<64>, i64 loc("_347"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v476, ^bb145, ^bb170
^bb145:
  %v477 = sea.const 8 : i64 loc("_349"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v478 = sea.ptr.dereferenceable %v201, %v477 : !sea.ptr<64>, i64 loc("_349"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v478, ^bb146, ^bb170
^bb146:
  %v479 = sea.const 8 : i64 loc("_351"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v480 = sea.ptr.dereferenceable %v197, %v479 : !sea.ptr<64>, i64 loc("_351"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v480, ^bb147, ^bb170
^bb147:
  %v481 = sea.const 8 : i64 loc("_353"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v482 = sea.ptr.dereferenceable %v197, %v481 : !sea.ptr<64>, i64 loc("_353"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  sea.cond_br %v482, ^bb148, ^bb170
^bb148:
  %v483 = sea.const 0 : i1 loc("or.cond5.i73.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v484 = sea.select %v460, %v239, %v483 : i1 loc("or.cond5.i73.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v485 = sea.const 0 : i1 loc("or.cond7.i74.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v486 = sea.select %v484, %v166, %v485 : i1 loc("or.cond7.i74.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v487 = sea.const 0 : i1 loc("or.cond9.i75.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v488 = sea.select %v486, %v250, %v487 : i1 loc("or.cond9.i75.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v489 = sea.const 0 : i1 loc("or.cond11.i76.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  %v490 = sea.select %v488, %v255, %v489 : i1 loc("or.cond11.i76.i"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":36:26))
  sea.br ^bb149
^bb149:
  sea.br ^bb150
^bb150:
  %v491 = sea.const 8 : i64 loc("_356"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  %v492 = sea.ptr.dereferenceable %v196, %v491 : !sea.ptr<64>, i64 loc("_356"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":18:32))
  sea.cond_br %v492, ^bb151, ^bb170
^bb151:
  %v493 = sea.const 8 : i64 loc("_358"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  %v494 = sea.ptr.dereferenceable %v221, %v493 : !sea.ptr<64>, i64 loc("_358"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":19:34))
  sea.cond_br %v494, ^bb152, ^bb170
^bb152:
  %v495 = sea.const 8 : i64 loc("_360"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  %v496 = sea.ptr.dereferenceable %v212, %v495 : !sea.ptr<64>, i64 loc("_360"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":21:30))
  sea.cond_br %v496, ^bb153, ^bb170
^bb153:
  %v497 = sea.const 8 : i64 loc("_362"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  %v498 = sea.ptr.dereferenceable %v197, %v497 : !sea.ptr<64>, i64 loc("_362"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":22:34))
  sea.cond_br %v498, ^bb154, ^bb170
^bb154:
  %v499 = sea.const 8 : i64 loc("_364"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  %v500 = sea.ptr.dereferenceable %v197, %v499 : !sea.ptr<64>, i64 loc("_364"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":23:56))
  sea.cond_br %v500, ^bb155, ^bb170
^bb155:
  %v501 = sea.const 8 : i64 loc("_366"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  %v502 = sea.ptr.dereferenceable %v242, %v501 : !sea.ptr<64>, i64 loc("_366"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:28))
  sea.cond_br %v502, ^bb156, ^bb170
^bb156:
  %v503 = sea.const 8 : i64 loc("_368"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  %v504 = sea.ptr.dereferenceable %v246, %v503 : !sea.ptr<64>, i64 loc("_368"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":24:48))
  sea.cond_br %v504, ^bb157, ^bb170
^bb157:
  %v505 = sea.const 8 : i64 loc("_370"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  %v506 = sea.ptr.dereferenceable %v246, %v505 : !sea.ptr<64>, i64 loc("_370"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:25))
  sea.cond_br %v506, ^bb158, ^bb170
^bb158:
  %v507 = sea.const 8 : i64 loc("_372"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  %v508 = sea.ptr.dereferenceable %v197, %v507 : !sea.ptr<64>, i64 loc("_372"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":25:41))
  sea.cond_br %v508, ^bb159, ^bb170
^bb159:
  %v509 = sea.const 8 : i64 loc("_374"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  %v510 = sea.ptr.dereferenceable %v201, %v509 : !sea.ptr<64>, i64 loc("_374"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:32))
  sea.cond_br %v510, ^bb160, ^bb170
^bb160:
  %v511 = sea.const 8 : i64 loc("_376"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  %v512 = sea.ptr.dereferenceable %v197, %v511 : !sea.ptr<64>, i64 loc("_376"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":26:46))
  sea.cond_br %v512, ^bb161, ^bb170
^bb161:
  %v513 = sea.const 8 : i64 loc("_378"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v514 = sea.ptr.dereferenceable %v197, %v513 : !sea.ptr<64>, i64 loc("_378"("seahorn/aws-c-common-stubs/hash_table_state_is_valid_override.c":34:7))
  %v515 = sea.const 0 : i1 loc("_379")
  %v516 = sea.select %v514, %v490, %v515 : i1 loc("_379")
  sea.cond_br %v516, ^bb162, ^bb170
^bb162:
  sea.br ^bb163
^bb163:
  %v517 = sea.const 1 : i1 loc("seahorn/lib/utils.c":39:14)
  sea.assume %v517 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb164
^bb164:
  %v518 = sea.ptr.index %v196 [%v283] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_382"("seahorn/lib/utils.c":40:5))
  %v519 = sea.const 1 : i64 loc("_383"("seahorn/lib/utils.c":40:5))
  %v520 = sea.ptr.dereferenceable %v518, %v519 : !sea.ptr<64>, i64 loc("_383"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v520, ^bb165, ^bb170
^bb165:
  %v521 = sea.load %v225[%v518] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_385"("seahorn/lib/utils.c":40:5))
  sea.br ^bb166
^bb166:
  %v522 = sea.icmp eq, %v521, %v297 : i8 loc("_387"("seahorn/lib/utils.c":40:5))
  sea.br ^bb167
^bb167:
  %v523 = sea.const 1 : i64 loc("_389"("seahorn/lib/utils.c":40:5))
  %v524 = sea.ptr.dereferenceable %v518, %v523 : !sea.ptr<64>, i64 loc("_389"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v524, ^bb168, ^bb170
^bb168:
  sea.br ^bb169
^bb169:
  %v525 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v526 = sea.xor %v522, %v525 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v526 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb170 loc("seahorn/lib/utils.c":40:5)
^bb170:
  sea.br ^bb171
^bb171:
  %v527 = sea.const 0 : i1
  sea.assert %v527
  sea.halt
}
