// Exported from SeaHorn (array_list_get_at_ptr2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm13")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm14")
  %v2 = sea.mem.nondet "region.57" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm15")
  %v3 = sea.mem.nondet "region.56" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm16")
  %v4 = sea.const 40 : i64 loc("_0")
  %v5 = sea.alloca %v4 align 8 [4] : i64 -> !sea.ptr<64> loc("_0")
  %v6 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v7 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v8 = sea.store %v0[%v6], %v7 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v9 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_1")
  %v10 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_1")
  %v11 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v12 = sea.store %v8[%v10], %v11 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v13 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_2")
  %v14 = sea.ptr.index %v13 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_2")
  %v15 = sea.const 0 : i8
  %v16 = sea.const 24 : i64
  %v17 = sea.memset %v12[%v14], %v15, %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v18 = sea.nondet "nd_size_t" [5] : i64 loc("_3"("seahorn/lib/array_list_helper.c":26:24))
  %v19 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_4"("seahorn/lib/array_list_helper.c":26:9))
  sea.br ^bb1
^bb1:
  %v20 = sea.store %v1[%v19], %v18 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":26:22)
  %v21 = sea.nondet "nd_size_t" [6] : i64 loc("_6"("seahorn/lib/array_list_helper.c":27:21))
  %v22 = sea.ptr.index %v5 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_7"("seahorn/lib/array_list_helper.c":27:9))
  sea.br ^bb2
^bb2:
  %v23 = sea.store %v20[%v22], %v21 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":27:19)
  %v24 = sea.nondet "nd_size_t" [7] : i64 loc("_9"("seahorn/lib/array_list_helper.c":28:18))
  %v25 = sea.ptr.index %v5 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_10"("seahorn/lib/array_list_helper.c":28:9))
  sea.br ^bb3
^bb3:
  %v26 = sea.store %v23[%v25], %v24 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":28:16)
  sea.br ^bb4
^bb4:
  %v27 = sea.const 0 : i64 loc("_13"("seahorn/lib/proof_allocators.c":21:15))
  %v28 = sea.icmp eq, %v18, %v27 : i64 loc("_13"("seahorn/lib/proof_allocators.c":21:15))
  %v29 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v28, ^bb8(%v3, %v29 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb5 loc("seahorn/lib/proof_allocators.c":21:10)
^bb5:
  %v30 = sea.nondet "nd_malloc_is_fail" [8] : i1 loc("_15"("seahorn/lib/sea_allocators.c":11:10))
  %v31 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v30, ^bb7(%v3, %v31 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb6 loc("seahorn/lib/sea_allocators.c":11:10)
^bb6:
  %v32 = sea.const 1 : i64 loc("malloc.i")
  %v33 = sea.mul %v18, %v32 : i64 loc("malloc.i")
  %v34 = sea.alloca %v33 align 16 [9] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb7(%v3, %v34 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb7(%v35 : !sea.mem<!sea.ptr<64>, i8>, %v36 : !sea.ptr<64>):
  %v37 = sea.memhavoc %v35[%v36], %v18 [10] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb8(%v37, %v36 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb8(%v38 : !sea.mem<!sea.ptr<64>, i8>, %v39 : !sea.ptr<64>):
  %v40 = sea.ptr.index %v5 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_19"("seahorn/lib/array_list_helper.c":29:9))
  sea.br ^bb9
^bb9:
  %v41 = sea.store %v26[%v40], %v39 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":29:14)
  sea.br ^bb10
^bb10:
  %v42 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  %v43 = sea.store %v41[%v5], %v42 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  %v44 = sea.const 3 : i64 loc("_22"("seahorn/lib/array_list_helper.c":38:47))
  %v45 = sea.icmp ult, %v21, %v44 : i64 loc("_22"("seahorn/lib/array_list_helper.c":38:47))
  %v46 = sea.const 9223372036854775809 : i64 loc("_23"("seahorn/lib/array_list_helper.c":39:41))
  %v47 = sea.icmp ult, %v24, %v46 : i64 loc("_23"("seahorn/lib/array_list_helper.c":39:41))
  %v48 = sea.const 0 : i1 loc("_24"("seahorn/lib/array_list_helper.c":40:31))
  %v49 = sea.select %v45, %v47, %v48 : i1 loc("_24"("seahorn/lib/array_list_helper.c":40:31))
  sea.assume %v49 loc("seahorn/lib/array_list_helper.c":31:3)
  sea.br ^bb13
^bb13:
  sea.br ^bb14
^bb14:
  sea.br ^bb15
^bb15:
  %v50 = sea.mul %v24, %v21 : i64 loc("_28"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v51 = sea.umulo %v24, %v21 : i64 loc("_28"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v51, ^bb16, ^bb17 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb16:
  sea.br ^bb17 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb17:
  %v52 = sea.const 1 : i1 loc("_32"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v53 = sea.xor %v51, %v52 : i1 loc("_32"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb18
^bb18:
  %v54 = sea.icmp uge, %v18, %v50 : i64 loc("_34"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb19
^bb19:
  sea.cond_br %v28, ^bb24, ^bb20 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb20:
  sea.br ^bb21
^bb21:
  sea.br ^bb22
^bb22:
  sea.br ^bb23
^bb23:
  %v55 = sea.ptr.null : !sea.ptr<64> loc("_42"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v56 = sea.ptr.cmp ne, %v39, %v55 : !sea.ptr<64> loc("_42"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb27(%v56 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb24:
  sea.br ^bb25
^bb25:
  %v57 = sea.ptr.null : !sea.ptr<64> loc("_38"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v58 = sea.ptr.cmp eq, %v39, %v57 : !sea.ptr<64> loc("_38"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v59 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v58, ^bb26, ^bb27(%v59 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb26:
  %v60 = sea.const 1 : i1
  sea.br ^bb27(%v60 : i1)
^bb27(%v61 : i1):
  sea.br ^bb28
^bb28:
  %v62 = sea.const 0 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v63 = sea.select %v53, %v54, %v62 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v64 = sea.and %v63, %v61 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v65 = sea.const 0 : i64 loc("_45")
  %v66 = sea.icmp ne, %v21, %v65 : i64 loc("_45")
  %v67 = sea.const 0 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v68 = sea.select %v64, %v66, %v67 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.assume %v68 loc("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":20:5)
  %v69 = sea.nondet "nd_malloc_is_fail" [11] : i1 loc("_46"("seahorn/lib/sea_allocators.c":11:10))
  %v70 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v69, ^bb30(%v2, %v70 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb29 loc("seahorn/lib/sea_allocators.c":11:10)
^bb29:
  %v71 = sea.const 8 : i64 loc("malloc32.i2")
  %v72 = sea.alloca %v71 align 16 [12] : i64 -> !sea.ptr<64> loc("malloc32.i2")
  sea.br ^bb30(%v2, %v72 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb30(%v73 : !sea.mem<!sea.ptr<64>, i8>, %v74 : !sea.ptr<64>):
  %v75 = sea.const 8 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v76 = sea.memhavoc %v73[%v74], %v75 [13] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v77 = sea.ptr.null : !sea.ptr<64> loc("_49"("seahorn/lib/sea_allocators.c":45:10))
  %v78 = sea.ptr.cmp ne, %v74, %v77 : !sea.ptr<64> loc("_49"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v78 loc("seahorn/lib/sea_allocators.c":45:3)
  %v79 = sea.nondet "nd_size_t" [14] : i64 loc("_50"("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":22:20))
  sea.br ^bb31
^bb31:
  sea.br ^bb32
^bb32:
  sea.br ^bb33
^bb33:
  sea.cond_br %v51, ^bb34, ^bb35 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb34:
  sea.br ^bb35 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb35:
  sea.br ^bb36
^bb36:
  sea.br ^bb37
^bb37:
  sea.cond_br %v28, ^bb42, ^bb38 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb38:
  sea.br ^bb39
^bb39:
  sea.br ^bb40
^bb40:
  sea.br ^bb41
^bb41:
  %v80 = sea.ptr.null : !sea.ptr<64> loc("_63"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v81 = sea.ptr.cmp ne, %v39, %v80 : !sea.ptr<64> loc("_63"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb45(%v81 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb42:
  sea.br ^bb43
^bb43:
  %v82 = sea.ptr.null : !sea.ptr<64> loc("_59"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v83 = sea.ptr.cmp eq, %v39, %v82 : !sea.ptr<64> loc("_59"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v84 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v83, ^bb44, ^bb45(%v84 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb44:
  %v85 = sea.const 1 : i1
  sea.br ^bb45(%v85 : i1)
^bb45(%v86 : i1):
  sea.br ^bb46
^bb46:
  %v87 = sea.and %v63, %v86 : i1 loc("or.cond3.i5.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v88 = sea.const 0 : i1 loc("spec.select11"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v89 = sea.select %v87, %v66, %v88 : i1 loc("spec.select11"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.assume %v89 loc("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":25:5)
  sea.assume %v78 loc("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":26:5)
  sea.tracking_on loc("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":29:5)
  sea.br ^bb47
^bb47:
  %v90 = sea.const 0 : i64 loc(".not.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v91 = sea.icmp eq, %v24, %v90 : i64 loc(".not.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  sea.cond_br %v91, ^bb50, ^bb48 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb48:
  sea.br ^bb49
^bb49:
  %v92 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v93 = sea.ptr.cmp eq, %v39, %v92 : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v94 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v95 = sea.xor %v93, %v94 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v95 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb50 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb50:
  sea.br ^bb51
^bb51:
  %v96 = sea.icmp ugt, %v24, %v79 : i64 loc("_70"("aws-c-common/include/aws/common/array_list.inl":367:37))
  sea.cond_br %v96, ^bb53, ^bb52 loc("aws-c-common/include/aws/common/array_list.inl":367:9)
^bb52:
  sea.br ^bb58
^bb53:
  sea.br ^bb54
^bb54:
  sea.br ^bb55
^bb55:
  %v97 = sea.const 8 : i64 loc("_74"("aws-c-common/include/aws/common/array_list.inl":368:14))
  %v98 = sea.ptr.dereferenceable %v74, %v97 : !sea.ptr<64>, i64 loc("_74"("aws-c-common/include/aws/common/array_list.inl":368:14))
  sea.cond_br %v98, ^bb56, ^bb96
^bb56:
  %v99 = sea.mul %v79, %v21 : i64 loc("_76"("aws-c-common/include/aws/common/array_list.inl":368:66))
  %v100 = sea.ptr.index %v39 [%v99] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_77"("aws-c-common/include/aws/common/array_list.inl":368:47))
  %v101 = sea.store %v76[%v74], %v100 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":368:14)
  %v102 = sea.ptr.null : !sea.ptr<64> loc("_78"("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":36:9))
  %v103 = sea.ptr.cmp ne, %v39, %v102 : !sea.ptr<64> loc("_78"("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":36:9))
  %v104 = sea.ptr.null : !sea.ptr<64> loc(".not1.i"("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":36:9))
  %v105 = sea.ptr.cmp eq, %v39, %v104 : !sea.ptr<64> loc(".not1.i"("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":36:9))
  sea.cond_br %v105, ^bb96, ^bb57 loc("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":36:9)
^bb57:
  sea.br ^bb58 loc("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":37:9)
^bb58:
  sea.br ^bb59
^bb59:
  sea.br ^bb60
^bb60:
  sea.br ^bb61
^bb61:
  sea.cond_br %v51, ^bb62, ^bb63 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb62:
  sea.br ^bb63 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb63:
  sea.br ^bb64
^bb64:
  sea.br ^bb65
^bb65:
  sea.cond_br %v28, ^bb70, ^bb66 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb66:
  sea.br ^bb67
^bb67:
  sea.br ^bb68
^bb68:
  sea.br ^bb69
^bb69:
  %v106 = sea.ptr.null : !sea.ptr<64> loc("_93"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v107 = sea.ptr.cmp ne, %v39, %v106 : !sea.ptr<64> loc("_93"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb73(%v107 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb70:
  sea.br ^bb71
^bb71:
  %v108 = sea.ptr.null : !sea.ptr<64> loc("_89"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v109 = sea.ptr.cmp eq, %v39, %v108 : !sea.ptr<64> loc("_89"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v110 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v109, ^bb72, ^bb73(%v110 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb72:
  %v111 = sea.const 1 : i1
  sea.br ^bb73(%v111 : i1)
^bb73(%v112 : i1):
  sea.br ^bb74
^bb74:
  %v113 = sea.and %v63, %v112 : i1 loc("or.cond3.i10.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v114 = sea.const 0 : i1 loc("spec.select10"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v115 = sea.select %v113, %v66, %v114 : i1 loc("spec.select10"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb75
^bb75:
  sea.br ^bb76
^bb76:
  sea.br ^bb77
^bb77:
  sea.cond_br %v51, ^bb78, ^bb79 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb78:
  sea.br ^bb79 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb79:
  sea.br ^bb80
^bb80:
  sea.br ^bb81
^bb81:
  sea.cond_br %v28, ^bb86, ^bb82 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb82:
  sea.br ^bb83
^bb83:
  sea.br ^bb84
^bb84:
  sea.br ^bb85
^bb85:
  %v116 = sea.ptr.null : !sea.ptr<64> loc("_108"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v117 = sea.ptr.cmp ne, %v39, %v116 : !sea.ptr<64> loc("_108"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb89(%v117 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb86:
  sea.br ^bb87
^bb87:
  %v118 = sea.ptr.null : !sea.ptr<64> loc("_104"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v119 = sea.ptr.cmp eq, %v39, %v118 : !sea.ptr<64> loc("_104"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v120 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v119, ^bb88, ^bb89(%v120 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb88:
  %v121 = sea.const 1 : i1
  sea.br ^bb89(%v121 : i1)
^bb89(%v122 : i1):
  sea.br ^bb90
^bb90:
  %v123 = sea.and %v63, %v122 : i1 loc("or.cond3.i15.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.cond_br %v123, ^bb92, ^bb91 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb91:
  sea.br ^bb96 loc("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":41:5)
^bb92:
  %v124 = sea.const 0 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v125 = sea.icmp eq, %v21, %v124 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  sea.cond_br %v125, ^bb96, ^bb93 loc("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":41:5)
^bb93:
  %v126 = sea.mem.is_modified %v43[%v5] : !sea.mem<!sea.ptr<64>, i8> loc("_113"("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":42:5))
  %v127 = sea.const 1 : i1 loc("_114"("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":42:5))
  %v128 = sea.xor %v126, %v127 : i1 loc("_114"("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":42:5))
  %v129 = sea.mem.is_modified %v43[%v5] : !sea.mem<!sea.ptr<64>, i8> loc("_115"("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":42:5))
  sea.cond_br %v129, ^bb96, ^bb94 loc("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":42:5)
^bb94:
  %v130 = sea.mem.is_modified %v38[%v39] : !sea.mem<!sea.ptr<64>, i8> loc("_117"("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":43:5))
  %v131 = sea.const 1 : i1 loc("_118"("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":43:5))
  %v132 = sea.xor %v130, %v131 : i1 loc("_118"("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":43:5))
  %v133 = sea.mem.is_modified %v38[%v39] : !sea.mem<!sea.ptr<64>, i8> loc("_119"("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":43:5))
  sea.cond_br %v133, ^bb96, ^bb95 loc("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":43:5)
^bb95:
  %v134 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_121"("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":44:5))
  %v135 = sea.mem.is_modified %v8[%v134] : !sea.mem<!sea.ptr<64>, i8> loc("_121"("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":44:5))
  %v136 = sea.const 1 : i1 loc("_122"("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":44:5))
  %v137 = sea.xor %v135, %v136 : i1 loc("_122"("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":44:5))
  %v138 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_123"("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":44:5))
  %v139 = sea.mem.is_modified %v8[%v138] : !sea.mem<!sea.ptr<64>, i8> loc("_123"("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":44:5))
  sea.assume %v139 loc("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":44:5)
  sea.br ^bb96 loc("seahorn/jobs2/array_list_get_at_ptr2/aws_array_list_get_at_ptr_harness2.c":44:5)
^bb96:
  sea.br ^bb97
^bb97:
  %v140 = sea.const 0 : i1
  sea.assert %v140
  sea.halt
}
