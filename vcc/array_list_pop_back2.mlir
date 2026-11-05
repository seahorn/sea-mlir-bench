// Exported from SeaHorn (array_list_pop_back2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm12")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm13")
  %v2 = sea.mem.nondet "region.56" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm14")
  %v3 = sea.const 40 : i64 loc("_0")
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
  %v17 = sea.nondet "nd_size_t" [4] : i64 loc("_3"("seahorn/lib/array_list_helper.c":26:24))
  %v18 = sea.ptr.index %v4 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_4"("seahorn/lib/array_list_helper.c":26:9))
  sea.br ^bb1
^bb1:
  %v19 = sea.store %v1[%v18], %v17 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":26:22)
  %v20 = sea.nondet "nd_size_t" [5] : i64 loc("_6"("seahorn/lib/array_list_helper.c":27:21))
  %v21 = sea.ptr.index %v4 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_7"("seahorn/lib/array_list_helper.c":27:9))
  sea.br ^bb2
^bb2:
  %v22 = sea.store %v19[%v21], %v20 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":27:19)
  %v23 = sea.nondet "nd_size_t" [6] : i64 loc("_9"("seahorn/lib/array_list_helper.c":28:18))
  %v24 = sea.ptr.index %v4 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_10"("seahorn/lib/array_list_helper.c":28:9))
  sea.br ^bb3
^bb3:
  %v25 = sea.store %v22[%v24], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":28:16)
  sea.br ^bb4
^bb4:
  %v26 = sea.const 0 : i64 loc("_13"("seahorn/lib/proof_allocators.c":21:15))
  %v27 = sea.icmp eq, %v17, %v26 : i64 loc("_13"("seahorn/lib/proof_allocators.c":21:15))
  %v28 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v27, ^bb8(%v2, %v28 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb5 loc("seahorn/lib/proof_allocators.c":21:10)
^bb5:
  %v29 = sea.nondet "nd_malloc_is_fail" [7] : i1 loc("_15"("seahorn/lib/sea_allocators.c":11:10))
  %v30 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v29, ^bb7(%v2, %v30 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb6 loc("seahorn/lib/sea_allocators.c":11:10)
^bb6:
  %v31 = sea.const 1 : i64 loc("malloc.i")
  %v32 = sea.mul %v17, %v31 : i64 loc("malloc.i")
  %v33 = sea.alloca %v32 align 16 [8] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb7(%v2, %v33 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb7(%v34 : !sea.mem<!sea.ptr<64>, i8>, %v35 : !sea.ptr<64>):
  %v36 = sea.memhavoc %v34[%v35], %v17 [9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb8(%v36, %v35 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb8(%v37 : !sea.mem<!sea.ptr<64>, i8>, %v38 : !sea.ptr<64>):
  %v39 = sea.ptr.index %v4 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_19"("seahorn/lib/array_list_helper.c":29:9))
  sea.br ^bb9
^bb9:
  %v40 = sea.store %v25[%v39], %v38 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":29:14)
  sea.br ^bb10
^bb10:
  %v41 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  %v42 = sea.store %v40[%v4], %v41 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  %v43 = sea.const 3 : i64 loc("_22"("seahorn/lib/array_list_helper.c":38:47))
  %v44 = sea.icmp ult, %v20, %v43 : i64 loc("_22"("seahorn/lib/array_list_helper.c":38:47))
  %v45 = sea.const 9223372036854775809 : i64 loc("_23"("seahorn/lib/array_list_helper.c":39:41))
  %v46 = sea.icmp ult, %v23, %v45 : i64 loc("_23"("seahorn/lib/array_list_helper.c":39:41))
  %v47 = sea.const 0 : i1 loc("_24"("seahorn/lib/array_list_helper.c":40:31))
  %v48 = sea.select %v44, %v46, %v47 : i1 loc("_24"("seahorn/lib/array_list_helper.c":40:31))
  sea.assume %v48 loc("seahorn/lib/array_list_helper.c":31:3)
  sea.br ^bb13
^bb13:
  sea.br ^bb14
^bb14:
  sea.br ^bb15
^bb15:
  %v49 = sea.mul %v23, %v20 : i64 loc("_28"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v50 = sea.umulo %v23, %v20 : i64 loc("_28"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v50, ^bb16, ^bb17 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb16:
  sea.br ^bb17 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb17:
  %v51 = sea.const 1 : i1 loc("_32"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v52 = sea.xor %v50, %v51 : i1 loc("_32"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb18
^bb18:
  %v53 = sea.icmp uge, %v17, %v49 : i64 loc("_34"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb19
^bb19:
  sea.cond_br %v27, ^bb24, ^bb20 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb20:
  sea.br ^bb21
^bb21:
  sea.br ^bb22
^bb22:
  sea.br ^bb23
^bb23:
  %v54 = sea.ptr.null : !sea.ptr<64> loc("_42"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v55 = sea.ptr.cmp ne, %v38, %v54 : !sea.ptr<64> loc("_42"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb27(%v55 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb24:
  sea.br ^bb25
^bb25:
  %v56 = sea.ptr.null : !sea.ptr<64> loc("_38"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v57 = sea.ptr.cmp eq, %v38, %v56 : !sea.ptr<64> loc("_38"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v58 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v57, ^bb26, ^bb27(%v58 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb26:
  %v59 = sea.const 1 : i1
  sea.br ^bb27(%v59 : i1)
^bb27(%v60 : i1):
  sea.br ^bb28
^bb28:
  %v61 = sea.const 0 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v62 = sea.select %v52, %v53, %v61 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v63 = sea.and %v62, %v60 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v64 = sea.const 0 : i64 loc("_45")
  %v65 = sea.icmp ne, %v20, %v64 : i64 loc("_45")
  %v66 = sea.const 0 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v67 = sea.select %v63, %v65, %v66 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.assume %v67 loc("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":20:5)
  sea.tracking_on loc("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":23:5)
  sea.br ^bb29
^bb29:
  %v68 = sea.const 0 : i64 loc(".not.i17.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v69 = sea.icmp eq, %v23, %v68 : i64 loc(".not.i17.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  sea.cond_br %v69, ^bb44, ^bb30 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb30:
  sea.br ^bb31
^bb31:
  %v70 = sea.ptr.null : !sea.ptr<64> loc(".not1.i18.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v71 = sea.ptr.cmp eq, %v38, %v70 : !sea.ptr<64> loc(".not1.i18.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v72 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v73 = sea.xor %v71, %v72 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v73 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb32
^bb32:
  sea.br ^bb33
^bb33:
  %v74 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":282:9)
  %v75 = sea.xor %v71, %v74 : i1 loc("aws-c-common/include/aws/common/array_list.inl":282:9)
  sea.assume %v75 loc("aws-c-common/include/aws/common/array_list.inl":282:9)
  sea.br ^bb34
^bb34:
  sea.br ^bb35
^bb35:
  sea.br ^bb36
^bb36:
  %v76 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v77 = sea.xor %v71, %v76 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v77 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb37
^bb37:
  sea.br ^bb38
^bb38:
  sea.br ^bb39
^bb39:
  %v78 = sea.const 18446744073709551615 : i64 loc("_56"("aws-c-common/include/aws/common/array_list.inl":284:82))
  %v79 = sea.add %v23, %v78 : i64 loc("_56"("aws-c-common/include/aws/common/array_list.inl":284:82))
  %v80 = sea.mul %v79, %v20 : i64 loc("_57"("aws-c-common/include/aws/common/array_list.inl":284:51))
  %v81 = sea.ptr.index %v38 [%v80] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_58"("aws-c-common/include/aws/common/array_list.inl":286:47))
  %v82 = sea.const 0 : i8 loc("aws-c-common/include/aws/common/array_list.inl":286:9)
  %v83 = sea.memset %v37[%v81], %v82, %v20 inplace : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/include/aws/common/array_list.inl":286:9)
  sea.br ^bb40
^bb40:
  %v84 = sea.load %v25[%v24] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_60"("aws-c-common/include/aws/common/array_list.inl":287:21))
  sea.br ^bb41
^bb41:
  %v85 = sea.const 18446744073709551615 : i64 loc("_62"("aws-c-common/include/aws/common/array_list.inl":287:21))
  %v86 = sea.add %v84, %v85 : i64 loc("_62"("aws-c-common/include/aws/common/array_list.inl":287:21))
  %v87 = sea.icmp eq, %v84, %v23 : i64 loc("_63"("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":30:9))
  sea.cond_br %v87, ^bb42, ^bb83 loc("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":30:9)
^bb42:
  %v88 = sea.ptr.null : !sea.ptr<64> loc("_65"("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":31:9))
  %v89 = sea.ptr.cmp ne, %v38, %v88 : !sea.ptr<64> loc("_65"("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":31:9))
  sea.cond_br %v71, ^bb83, ^bb43 loc("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":31:9)
^bb43:
  sea.br ^bb47(%v86 : i64) loc("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":33:9)
^bb44:
  sea.br ^bb45
^bb45:
  %v90 = sea.mem.is_modified %v42[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_68"("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":36:9))
  %v91 = sea.const 1 : i1 loc("_69"("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":36:9))
  %v92 = sea.xor %v90, %v91 : i1 loc("_69"("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":36:9))
  %v93 = sea.mem.is_modified %v42[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_70"("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":36:9))
  sea.cond_br %v93, ^bb83, ^bb46 loc("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":36:9)
^bb46:
  %v94 = sea.mem.is_modified %v37[%v38] : !sea.mem<!sea.ptr<64>, i8> loc("_72"("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":37:9))
  %v95 = sea.const 1 : i1 loc("_73"("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":37:9))
  %v96 = sea.xor %v94, %v95 : i1 loc("_73"("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":37:9))
  %v97 = sea.mem.is_modified %v37[%v38] : !sea.mem<!sea.ptr<64>, i8> loc("_74"("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":37:9))
  %v98 = sea.const 0 : i64 loc("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":37:9)
  sea.cond_br %v97, ^bb83, ^bb47(%v98 : i64) loc("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":37:9)
^bb47(%v99 : i64):
  sea.br ^bb48
^bb48:
  sea.br ^bb49
^bb49:
  %v100 = sea.load %v22[%v21] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_79"("aws-c-common/include/aws/common/array_list.inl":91:51))
  sea.br ^bb50
^bb50:
  %v101 = sea.mul %v99, %v100 : i64 loc("_81"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v102 = sea.umulo %v99, %v100 : i64 loc("_81"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v102, ^bb51, ^bb52 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb51:
  sea.br ^bb52 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb52:
  %v103 = sea.const 1 : i1 loc("_85"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v104 = sea.xor %v102, %v103 : i1 loc("_85"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb53
^bb53:
  %v105 = sea.load %v19[%v18] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_87"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v106 = sea.icmp uge, %v105, %v101 : i64 loc("_88"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb54
^bb54:
  %v107 = sea.const 0 : i64 loc("_90"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v108 = sea.icmp eq, %v105, %v107 : i64 loc("_90"("aws-c-common/include/aws/common/array_list.inl":93:26))
  sea.cond_br %v108, ^bb59, ^bb55 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb55:
  sea.br ^bb56
^bb56:
  sea.br ^bb57
^bb57:
  sea.br ^bb58
^bb58:
  %v109 = sea.load %v40[%v39] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_98"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v110 = sea.ptr.null : !sea.ptr<64> loc("_99"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v111 = sea.ptr.cmp ne, %v109, %v110 : !sea.ptr<64> loc("_99"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb62(%v109, %v111 : !sea.ptr<64>, i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb59:
  sea.br ^bb60
^bb60:
  %v112 = sea.load %v40[%v39] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_93"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v113 = sea.ptr.null : !sea.ptr<64> loc("_94"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v114 = sea.ptr.cmp eq, %v112, %v113 : !sea.ptr<64> loc("_94"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v115 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v114, ^bb61, ^bb62(%v112, %v115 : !sea.ptr<64>, i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb61:
  %v116 = sea.ptr.null : !sea.ptr<64>
  %v117 = sea.const 1 : i1
  sea.br ^bb62(%v116, %v117 : !sea.ptr<64>, i1)
^bb62(%v118 : !sea.ptr<64>, %v119 : i1):
  sea.br ^bb63
^bb63:
  %v120 = sea.const 0 : i1 loc("or.cond.i4.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v121 = sea.select %v104, %v106, %v120 : i1 loc("or.cond.i4.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v122 = sea.const 0 : i1 loc("or.cond3.i5.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v123 = sea.select %v121, %v119, %v122 : i1 loc("or.cond3.i5.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v124 = sea.const 0 : i64 loc("_103")
  %v125 = sea.icmp ne, %v100, %v124 : i64 loc("_103")
  %v126 = sea.const 0 : i1 loc("spec.select7"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v127 = sea.select %v123, %v125, %v126 : i1 loc("spec.select7"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb64
^bb64:
  sea.br ^bb65
^bb65:
  sea.br ^bb66
^bb66:
  sea.cond_br %v102, ^bb67, ^bb68 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb67:
  sea.br ^bb68 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb68:
  sea.br ^bb69
^bb69:
  sea.br ^bb70
^bb70:
  sea.cond_br %v108, ^bb75, ^bb71 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb71:
  sea.br ^bb72
^bb72:
  sea.br ^bb73
^bb73:
  sea.br ^bb74
^bb74:
  %v128 = sea.ptr.null : !sea.ptr<64> loc("_116"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v129 = sea.ptr.cmp ne, %v118, %v128 : !sea.ptr<64> loc("_116"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb78(%v129 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb75:
  sea.br ^bb76
^bb76:
  %v130 = sea.ptr.null : !sea.ptr<64> loc("_112"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v131 = sea.ptr.cmp eq, %v118, %v130 : !sea.ptr<64> loc("_112"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v132 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v131, ^bb77, ^bb78(%v132 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb77:
  %v133 = sea.const 1 : i1
  sea.br ^bb78(%v133 : i1)
^bb78(%v134 : i1):
  sea.br ^bb79
^bb79:
  %v135 = sea.const 0 : i1 loc("or.cond3.i10.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v136 = sea.select %v121, %v134, %v135 : i1 loc("or.cond3.i10.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.cond_br %v136, ^bb81, ^bb80 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb80:
  sea.br ^bb83 loc("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":39:5)
^bb81:
  %v137 = sea.const 0 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v138 = sea.icmp eq, %v100, %v137 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  sea.cond_br %v138, ^bb83, ^bb82 loc("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":39:5)
^bb82:
  %v139 = sea.load %v42[%v4] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_121"("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":40:5))
  %v140 = sea.mem.is_modified %v7[%v139] : !sea.mem<!sea.ptr<64>, i8> loc("_122"("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":40:5))
  %v141 = sea.const 1 : i1 loc("_123"("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":40:5))
  %v142 = sea.xor %v140, %v141 : i1 loc("_123"("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":40:5))
  %v143 = sea.mem.is_modified %v7[%v139] : !sea.mem<!sea.ptr<64>, i8> loc("_124"("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":40:5))
  sea.assume %v143 loc("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":40:5)
  sea.br ^bb83 loc("seahorn/jobs2/array_list_pop_back2/aws_array_list_pop_back_harness2.c":40:5)
^bb83:
  sea.br ^bb84
^bb84:
  %v144 = sea.const 0 : i1
  sea.assert %v144
  sea.halt
}
