// Exported from SeaHorn (array_list_sort2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm11")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm12")
  %v2 = sea.mem.nondet "region.56" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm13")
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
  sea.assume %v67 loc("seahorn/jobs2/array_list_sort2/aws_array_list_sort_harness2.c":31:5)
  sea.tracking_on loc("seahorn/jobs2/array_list_sort2/aws_array_list_sort_harness2.c":34:5)
  sea.br ^bb29
^bb29:
  %v68 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("aws-c-common/include/aws/common/array_list.inl":410:9))
  %v69 = sea.ptr.cmp eq, %v38, %v68 : !sea.ptr<64> loc(".not.i.i"("aws-c-common/include/aws/common/array_list.inl":410:9))
  sea.cond_br %v69, ^bb38, ^bb30 loc("aws-c-common/include/aws/common/array_list.inl":410:9)
^bb30:
  sea.br ^bb31
^bb31:
  sea.br ^bb32
^bb32:
  %v70 = sea.const 0 : i64 loc(".not.i13.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v71 = sea.icmp eq, %v23, %v70 : i64 loc(".not.i13.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  sea.cond_br %v71, ^bb35, ^bb33 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb33:
  sea.br ^bb34
^bb34:
  %v72 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v73 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v74 = sea.xor %v72, %v73 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v74 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb35 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb35:
  sea.br ^bb36
^bb36:
  sea.br ^bb37
^bb37:
  sea.br ^bb38 loc("aws-c-common/include/aws/common/array_list.inl":412:5)
^bb38:
  sea.br ^bb39
^bb39:
  %v75 = sea.load %v25[%v24] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_55"("aws-c-common/include/aws/common/array_list.inl":91:37))
  sea.br ^bb40
^bb40:
  %v76 = sea.load %v22[%v21] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_57"("aws-c-common/include/aws/common/array_list.inl":91:51))
  sea.br ^bb41
^bb41:
  %v77 = sea.mul %v75, %v76 : i64 loc("_59"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v78 = sea.umulo %v75, %v76 : i64 loc("_59"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v78, ^bb42, ^bb43 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb42:
  sea.br ^bb43 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb43:
  %v79 = sea.const 1 : i1 loc("_63"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v80 = sea.xor %v78, %v79 : i1 loc("_63"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb44
^bb44:
  %v81 = sea.load %v19[%v18] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_65"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v82 = sea.icmp uge, %v81, %v77 : i64 loc("_66"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb45
^bb45:
  %v83 = sea.const 0 : i64 loc("_68"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v84 = sea.icmp eq, %v81, %v83 : i64 loc("_68"("aws-c-common/include/aws/common/array_list.inl":93:26))
  sea.cond_br %v84, ^bb50, ^bb46 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb46:
  sea.br ^bb47
^bb47:
  sea.br ^bb48
^bb48:
  sea.br ^bb49
^bb49:
  %v85 = sea.ptr.null : !sea.ptr<64> loc("_74"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v86 = sea.ptr.cmp ne, %v38, %v85 : !sea.ptr<64> loc("_74"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb53(%v86 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb50:
  sea.br ^bb51
^bb51:
  %v87 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v69, ^bb52, ^bb53(%v87 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb52:
  %v88 = sea.const 1 : i1
  sea.br ^bb53(%v88 : i1)
^bb53(%v89 : i1):
  sea.br ^bb54
^bb54:
  %v90 = sea.const 0 : i1 loc("or.cond.i3.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v91 = sea.select %v80, %v82, %v90 : i1 loc("or.cond.i3.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v92 = sea.and %v91, %v89 : i1 loc("or.cond3.i4.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v93 = sea.const 0 : i64 loc("_77")
  %v94 = sea.icmp ne, %v76, %v93 : i64 loc("_77")
  %v95 = sea.const 0 : i1 loc("spec.select6"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v96 = sea.select %v92, %v94, %v95 : i1 loc("spec.select6"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb55
^bb55:
  sea.br ^bb56
^bb56:
  sea.br ^bb57
^bb57:
  sea.cond_br %v78, ^bb58, ^bb59 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb58:
  sea.br ^bb59 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb59:
  sea.br ^bb60
^bb60:
  sea.br ^bb61
^bb61:
  sea.cond_br %v84, ^bb66, ^bb62 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb62:
  sea.br ^bb63
^bb63:
  sea.br ^bb64
^bb64:
  sea.br ^bb65
^bb65:
  %v97 = sea.ptr.null : !sea.ptr<64> loc("_89"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v98 = sea.ptr.cmp ne, %v38, %v97 : !sea.ptr<64> loc("_89"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb69(%v98 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb66:
  sea.br ^bb67
^bb67:
  %v99 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v69, ^bb68, ^bb69(%v99 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb68:
  %v100 = sea.const 1 : i1
  sea.br ^bb69(%v100 : i1)
^bb69(%v101 : i1):
  sea.br ^bb70
^bb70:
  %v102 = sea.and %v91, %v101 : i1 loc("or.cond3.i9.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.cond_br %v102, ^bb72, ^bb71 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb71:
  sea.br ^bb76 loc("seahorn/jobs2/array_list_sort2/aws_array_list_sort_harness2.c":41:5)
^bb72:
  %v103 = sea.const 0 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v104 = sea.icmp eq, %v76, %v103 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  sea.cond_br %v104, ^bb76, ^bb73 loc("seahorn/jobs2/array_list_sort2/aws_array_list_sort_harness2.c":41:5)
^bb73:
  %v105 = sea.mem.is_modified %v42[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_94"("seahorn/jobs2/array_list_sort2/aws_array_list_sort_harness2.c":42:5))
  %v106 = sea.const 1 : i1 loc("_95"("seahorn/jobs2/array_list_sort2/aws_array_list_sort_harness2.c":42:5))
  %v107 = sea.xor %v105, %v106 : i1 loc("_95"("seahorn/jobs2/array_list_sort2/aws_array_list_sort_harness2.c":42:5))
  %v108 = sea.mem.is_modified %v42[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_96"("seahorn/jobs2/array_list_sort2/aws_array_list_sort_harness2.c":42:5))
  sea.cond_br %v108, ^bb76, ^bb74 loc("seahorn/jobs2/array_list_sort2/aws_array_list_sort_harness2.c":42:5)
^bb74:
  %v109 = sea.mem.is_modified %v37[%v38] : !sea.mem<!sea.ptr<64>, i8> loc("_98"("seahorn/jobs2/array_list_sort2/aws_array_list_sort_harness2.c":43:5))
  %v110 = sea.const 1 : i1 loc("_99"("seahorn/jobs2/array_list_sort2/aws_array_list_sort_harness2.c":43:5))
  %v111 = sea.xor %v109, %v110 : i1 loc("_99"("seahorn/jobs2/array_list_sort2/aws_array_list_sort_harness2.c":43:5))
  %v112 = sea.mem.is_modified %v37[%v38] : !sea.mem<!sea.ptr<64>, i8> loc("_100"("seahorn/jobs2/array_list_sort2/aws_array_list_sort_harness2.c":43:5))
  sea.cond_br %v112, ^bb76, ^bb75 loc("seahorn/jobs2/array_list_sort2/aws_array_list_sort_harness2.c":43:5)
^bb75:
  %v113 = sea.load %v42[%v4] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_102"("seahorn/jobs2/array_list_sort2/aws_array_list_sort_harness2.c":44:5))
  %v114 = sea.mem.is_modified %v7[%v113] : !sea.mem<!sea.ptr<64>, i8> loc("_103"("seahorn/jobs2/array_list_sort2/aws_array_list_sort_harness2.c":44:5))
  %v115 = sea.const 1 : i1 loc("_104"("seahorn/jobs2/array_list_sort2/aws_array_list_sort_harness2.c":44:5))
  %v116 = sea.xor %v114, %v115 : i1 loc("_104"("seahorn/jobs2/array_list_sort2/aws_array_list_sort_harness2.c":44:5))
  %v117 = sea.mem.is_modified %v7[%v113] : !sea.mem<!sea.ptr<64>, i8> loc("_105"("seahorn/jobs2/array_list_sort2/aws_array_list_sort_harness2.c":44:5))
  sea.assume %v117 loc("seahorn/jobs2/array_list_sort2/aws_array_list_sort_harness2.c":44:5)
  sea.br ^bb76 loc("seahorn/jobs2/array_list_sort2/aws_array_list_sort_harness2.c":44:5)
^bb76:
  sea.br ^bb77
^bb77:
  %v118 = sea.const 0 : i1
  sea.assert %v118
  sea.halt
}
