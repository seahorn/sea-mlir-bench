// Exported from SeaHorn (priority_queue_clean_up.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm18")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm19")
  %v2 = sea.mem.nondet "region.104" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm20")
  %v3 = sea.mem.nondet "region.105" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm21")
  %v4 = sea.const 88 : i64 loc("_0")
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
  sea.br ^bb1
^bb1:
  %v18 = sea.func_addr @"nd_aws_priority_queue_compare_fn.addr" : !sea.ptr<64> loc("seahorn/lib/priority_queue_helper.c":8:15)
  %v19 = sea.store %v1[%v5], %v18 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/priority_queue_helper.c":8:15)
  %v20 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_4"("seahorn/lib/priority_queue_helper.c":9:33))
  %v21 = sea.nondet "nd_size_t" [5] : i64 loc("_5"("seahorn/lib/array_list_helper.c":17:24))
  %v22 = sea.ptr.index %v5 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_6"("seahorn/lib/array_list_helper.c":17:9))
  sea.br ^bb2
^bb2:
  %v23 = sea.store %v19[%v22], %v21 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":17:22)
  %v24 = sea.nondet "nd_size_t" [6] : i64 loc("_8"("seahorn/lib/array_list_helper.c":18:18))
  %v25 = sea.ptr.index %v5 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_9"("seahorn/lib/array_list_helper.c":18:9))
  sea.br ^bb3
^bb3:
  %v26 = sea.store %v23[%v25], %v24 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":18:16)
  %v27 = sea.nondet "nd_size_t" [7] : i64 loc("_11"("seahorn/lib/array_list_helper.c":19:21))
  %v28 = sea.ptr.index %v5 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_12"("seahorn/lib/array_list_helper.c":19:9))
  sea.br ^bb4
^bb4:
  %v29 = sea.store %v26[%v28], %v27 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":19:19)
  sea.br ^bb5
^bb5:
  %v30 = sea.const 0 : i64 loc("_15"("seahorn/lib/proof_allocators.c":21:15))
  %v31 = sea.icmp eq, %v21, %v30 : i64 loc("_15"("seahorn/lib/proof_allocators.c":21:15))
  %v32 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v31, ^bb9(%v32 : !sea.ptr<64>), ^bb6 loc("seahorn/lib/proof_allocators.c":21:10)
^bb6:
  %v33 = sea.nondet "nd_malloc_is_fail" [8] : i1 loc("_17"("seahorn/lib/sea_allocators.c":11:10))
  %v34 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v33, ^bb8(%v2, %v34 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb7 loc("seahorn/lib/sea_allocators.c":11:10)
^bb7:
  %v35 = sea.const 1 : i64 loc("malloc.i")
  %v36 = sea.mul %v21, %v35 : i64 loc("malloc.i")
  %v37 = sea.alloca %v36 align 16 [9] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb8(%v2, %v37 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb8(%v38 : !sea.mem<!sea.ptr<64>, i8>, %v39 : !sea.ptr<64>):
  %v40 = sea.memhavoc %v38[%v39], %v21 [10] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb9(%v39 : !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb9(%v41 : !sea.ptr<64>):
  %v42 = sea.ptr.index %v5 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_21"("seahorn/lib/array_list_helper.c":21:9))
  sea.br ^bb10
^bb10:
  %v43 = sea.store %v29[%v42], %v41 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":21:14)
  sea.br ^bb11
^bb11:
  %v44 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":22:15)
  %v45 = sea.store %v43[%v20], %v44 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":22:15)
  %v46 = sea.ptr.index %v5 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_23"("seahorn/lib/priority_queue_helper.c":10:33))
  %v47 = sea.nondet "nd_size_t" [11] : i64 loc("_24"("seahorn/lib/array_list_helper.c":17:24))
  %v48 = sea.ptr.index %v5 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_25"("seahorn/lib/array_list_helper.c":17:9))
  sea.br ^bb12
^bb12:
  %v49 = sea.store %v45[%v48], %v47 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":17:22)
  %v50 = sea.nondet "nd_size_t" [12] : i64 loc("_27"("seahorn/lib/array_list_helper.c":18:18))
  %v51 = sea.ptr.index %v5 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_28"("seahorn/lib/array_list_helper.c":18:9))
  sea.br ^bb13
^bb13:
  %v52 = sea.store %v49[%v51], %v50 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":18:16)
  %v53 = sea.nondet "nd_size_t" [13] : i64 loc("_30"("seahorn/lib/array_list_helper.c":19:21))
  %v54 = sea.ptr.index %v5 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_31"("seahorn/lib/array_list_helper.c":19:9))
  sea.br ^bb14
^bb14:
  %v55 = sea.store %v52[%v54], %v53 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":19:19)
  sea.br ^bb15
^bb15:
  %v56 = sea.const 0 : i64 loc("_34"("seahorn/lib/proof_allocators.c":21:15))
  %v57 = sea.icmp eq, %v47, %v56 : i64 loc("_34"("seahorn/lib/proof_allocators.c":21:15))
  %v58 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v57, ^bb19(%v58 : !sea.ptr<64>), ^bb16 loc("seahorn/lib/proof_allocators.c":21:10)
^bb16:
  %v59 = sea.nondet "nd_malloc_is_fail" [14] : i1 loc("_36"("seahorn/lib/sea_allocators.c":11:10))
  %v60 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v59, ^bb18(%v3, %v60 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb17 loc("seahorn/lib/sea_allocators.c":11:10)
^bb17:
  %v61 = sea.const 1 : i64 loc("malloc19.i")
  %v62 = sea.mul %v47, %v61 : i64 loc("malloc19.i")
  %v63 = sea.alloca %v62 align 16 [15] : i64 -> !sea.ptr<64> loc("malloc19.i")
  sea.br ^bb18(%v3, %v63 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb18(%v64 : !sea.mem<!sea.ptr<64>, i8>, %v65 : !sea.ptr<64>):
  %v66 = sea.memhavoc %v64[%v65], %v47 [16] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb19(%v65 : !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb19(%v67 : !sea.ptr<64>):
  %v68 = sea.ptr.index %v5 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_40"("seahorn/lib/array_list_helper.c":21:9))
  sea.br ^bb20
^bb20:
  %v69 = sea.store %v55[%v68], %v67 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":21:14)
  sea.br ^bb21
^bb21:
  %v70 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":22:15)
  %v71 = sea.store %v69[%v46], %v70 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":22:15)
  sea.br ^bb22
^bb22:
  sea.br ^bb23
^bb23:
  %v72 = sea.const 3 : i64 loc("_43"("seahorn/lib/array_list_helper.c":38:47))
  %v73 = sea.icmp ult, %v27, %v72 : i64 loc("_43"("seahorn/lib/array_list_helper.c":38:47))
  %v74 = sea.const 9223372036854775809 : i64 loc("_44"("seahorn/lib/array_list_helper.c":39:41))
  %v75 = sea.icmp ult, %v24, %v74 : i64 loc("_44"("seahorn/lib/array_list_helper.c":39:41))
  %v76 = sea.const 0 : i1 loc("_45"("seahorn/lib/array_list_helper.c":40:31))
  %v77 = sea.select %v73, %v75, %v76 : i1 loc("_45"("seahorn/lib/array_list_helper.c":40:31))
  sea.br ^bb24
^bb24:
  sea.br ^bb25
^bb25:
  %v78 = sea.const 9 : i64 loc("_47"("seahorn/lib/array_list_helper.c":38:47))
  %v79 = sea.icmp ult, %v53, %v78 : i64 loc("_47"("seahorn/lib/array_list_helper.c":38:47))
  %v80 = sea.const 9223372036854775809 : i64 loc("_48"("seahorn/lib/array_list_helper.c":39:41))
  %v81 = sea.icmp ult, %v50, %v80 : i64 loc("_48"("seahorn/lib/array_list_helper.c":39:41))
  %v82 = sea.const 0 : i1 loc("_49"("seahorn/lib/priority_queue_helper.c":20:13))
  %v83 = sea.select %v77, %v79, %v82 : i1 loc("_49"("seahorn/lib/priority_queue_helper.c":20:13))
  %v84 = sea.const 0 : i1 loc("_50"("seahorn/lib/priority_queue_helper.c":20:13))
  %v85 = sea.select %v83, %v81, %v84 : i1 loc("_50"("seahorn/lib/priority_queue_helper.c":20:13))
  sea.assume %v85 loc("seahorn/jobs/priority_queue_clean_up/aws_priority_queue_clean_up_harness.c":22:3)
  sea.br ^bb26
^bb26:
  sea.br ^bb27
^bb27:
  sea.br ^bb28
^bb28:
  sea.br ^bb29
^bb29:
  %v86 = sea.mul %v24, %v27 : i64 loc("_55"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v87 = sea.umulo %v24, %v27 : i64 loc("_55"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v87, ^bb30, ^bb31 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb30:
  sea.br ^bb31 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb31:
  %v88 = sea.const 1 : i1 loc("_59"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v89 = sea.xor %v87, %v88 : i1 loc("_59"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb32
^bb32:
  %v90 = sea.icmp uge, %v21, %v86 : i64 loc("_61"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb33
^bb33:
  sea.cond_br %v31, ^bb38, ^bb34 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb34:
  sea.br ^bb35
^bb35:
  sea.br ^bb36
^bb36:
  sea.br ^bb37
^bb37:
  %v91 = sea.ptr.null : !sea.ptr<64> loc("_69"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v92 = sea.ptr.cmp ne, %v41, %v91 : !sea.ptr<64> loc("_69"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb41(%v92 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb38:
  sea.br ^bb39
^bb39:
  %v93 = sea.ptr.null : !sea.ptr<64> loc("_65"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v94 = sea.ptr.cmp eq, %v41, %v93 : !sea.ptr<64> loc("_65"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v95 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v94, ^bb40, ^bb41(%v95 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb40:
  %v96 = sea.const 1 : i1
  sea.br ^bb41(%v96 : i1)
^bb41(%v97 : i1):
  sea.br ^bb42
^bb42:
  %v98 = sea.const 0 : i1 loc("or.cond.i12.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v99 = sea.select %v89, %v90, %v98 : i1 loc("or.cond.i12.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v100 = sea.and %v99, %v97 : i1 loc("or.cond3.i13.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v101 = sea.const 0 : i64 loc("_72")
  %v102 = sea.icmp ne, %v27, %v101 : i64 loc("_72")
  %v103 = sea.const 0 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v104 = sea.select %v100, %v102, %v103 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb43
^bb43:
  sea.br ^bb44
^bb44:
  sea.br ^bb45
^bb45:
  %v105 = sea.mul %v50, %v53 : i64 loc("_76"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v106 = sea.umulo %v50, %v53 : i64 loc("_76"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v106, ^bb46, ^bb47 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb46:
  sea.br ^bb47 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb47:
  %v107 = sea.const 1 : i1 loc("_80"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v108 = sea.xor %v106, %v107 : i1 loc("_80"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb48
^bb48:
  %v109 = sea.icmp uge, %v47, %v105 : i64 loc("_82"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb49
^bb49:
  sea.cond_br %v57, ^bb54, ^bb50 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb50:
  sea.br ^bb51
^bb51:
  sea.br ^bb52
^bb52:
  sea.br ^bb53
^bb53:
  %v110 = sea.ptr.null : !sea.ptr<64> loc("_90"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v111 = sea.ptr.cmp ne, %v67, %v110 : !sea.ptr<64> loc("_90"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb57(%v111 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb54:
  sea.br ^bb55
^bb55:
  %v112 = sea.ptr.null : !sea.ptr<64> loc("_86"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v113 = sea.ptr.cmp eq, %v67, %v112 : !sea.ptr<64> loc("_86"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v114 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v113, ^bb56, ^bb57(%v114 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb56:
  %v115 = sea.const 1 : i1
  sea.br ^bb57(%v115 : i1)
^bb57(%v116 : i1):
  sea.br ^bb58
^bb58:
  %v117 = sea.const 0 : i1 loc("or.cond.i4.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v118 = sea.select %v108, %v109, %v117 : i1 loc("or.cond.i4.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v119 = sea.and %v118, %v116 : i1 loc("or.cond3.i5.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.cond_br %v119, ^bb60, ^bb59 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb59:
  %v120 = sea.const 0 : i1 loc("aws-c-common/source/priority_queue.c":221:56)
  sea.br ^bb65(%v120 : i1) loc("aws-c-common/source/priority_queue.c":221:56)
^bb60:
  %v121 = sea.const 0 : i64 loc(".not8"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v122 = sea.icmp eq, %v53, %v121 : i64 loc(".not8"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v123 = sea.const 0 : i1 loc("aws-c-common/source/priority_queue.c":221:56)
  sea.cond_br %v122, ^bb65(%v123 : i1), ^bb61 loc("aws-c-common/source/priority_queue.c":221:56)
^bb61:
  sea.br ^bb62
^bb62:
  %v124 = sea.const 0 : i1 loc("aws-c-common/source/priority_queue.c":221:99)
  sea.cond_br %v57, ^bb65(%v124 : i1), ^bb63 loc("aws-c-common/source/priority_queue.c":221:99)
^bb63:
  sea.br ^bb64
^bb64:
  %v125 = sea.ptr.null : !sea.ptr<64> loc("_98"("aws-c-common/source/priority_queue.c":222:36))
  %v126 = sea.ptr.cmp ne, %v67, %v125 : !sea.ptr<64> loc("_98"("aws-c-common/source/priority_queue.c":222:36))
  sea.br ^bb65(%v126 : i1)
^bb65(%v127 : i1):
  sea.br ^bb66
^bb66:
  %v128 = sea.const 8 : i64 loc("_102"("aws-c-common/source/priority_queue.c":228:69))
  %v129 = sea.icmp eq, %v53, %v128 : i64 loc("_102"("aws-c-common/source/priority_queue.c":228:69))
  sea.br ^bb67
^bb67:
  sea.br ^bb68
^bb68:
  %v130 = sea.icmp eq, %v50, %v24 : i64 loc("_105"("aws-c-common/source/priority_queue.c":229:59))
  sea.br ^bb69
^bb69:
  %v131 = sea.const 0 : i64 loc("_107"("aws-c-common/source/priority_queue.c":230:80))
  %v132 = sea.icmp ne, %v47, %v131 : i64 loc("_107"("aws-c-common/source/priority_queue.c":230:80))
  sea.br ^bb70
^bb70:
  sea.cond_br %v57, ^bb71, ^bb75 loc("aws-c-common/source/priority_queue.c":240:48)
^bb71:
  sea.br ^bb72
^bb72:
  %v133 = sea.const 0 : i64 loc("_111"("aws-c-common/source/priority_queue.c":240:78))
  %v134 = sea.icmp eq, %v50, %v133 : i64 loc("_111"("aws-c-common/source/priority_queue.c":240:78))
  sea.cond_br %v134, ^bb73, ^bb75 loc("aws-c-common/source/priority_queue.c":240:83)
^bb73:
  sea.br ^bb74
^bb74:
  %v135 = sea.ptr.null : !sea.ptr<64> loc(".not8.i.i.i"("aws-c-common/source/priority_queue.c":240:111))
  %v136 = sea.ptr.cmp eq, %v67, %v135 : !sea.ptr<64> loc(".not8.i.i.i"("aws-c-common/source/priority_queue.c":240:111))
  %v137 = sea.const 1 : i1 loc("aws-c-common/source/priority_queue.c":242:27)
  sea.cond_br %v136, ^bb76(%v137 : i1), ^bb75 loc("aws-c-common/source/priority_queue.c":242:27)
^bb75:
  %v138 = sea.const 0 : i1 loc("or.cond.i.i.i"("aws-c-common/source/priority_queue.c":242:58))
  %v139 = sea.select %v129, %v130, %v138 : i1 loc("or.cond.i.i.i"("aws-c-common/source/priority_queue.c":242:58))
  %v140 = sea.const 0 : i1 loc("or.cond3.i.i.i"("aws-c-common/source/priority_queue.c":242:58))
  %v141 = sea.select %v139, %v132, %v140 : i1 loc("or.cond3.i.i.i"("aws-c-common/source/priority_queue.c":242:58))
  sea.br ^bb76(%v141 : i1) loc("aws-c-common/source/priority_queue.c":242:58)
^bb76(%v142 : i1):
  %v143 = sea.and %v127, %v142 : i1 loc("or.cond5.i.i.i"("aws-c-common/source/priority_queue.c":245:40))
  sea.cond_br %v143, ^bb78, ^bb77 loc("aws-c-common/source/priority_queue.c":245:40)
^bb77:
  sea.br ^bb78
^bb78:
  %v144 = sea.and %v104, %v143 : i1 loc("spec.select.i.i"("aws-c-common/source/priority_queue.c":257:26))
  sea.assume %v144 loc("seahorn/jobs/priority_queue_clean_up/aws_priority_queue_clean_up_harness.c":24:3)
  sea.br ^bb79
^bb79:
  sea.br ^bb80
^bb80:
  %v145 = sea.ptr.null : !sea.ptr<64> loc(".not1.i5.i"("aws-c-common/include/aws/common/array_list.inl":114:24))
  %v146 = sea.ptr.cmp eq, %v41, %v145 : !sea.ptr<64> loc(".not1.i5.i"("aws-c-common/include/aws/common/array_list.inl":114:24))
  sea.cond_br %v146, ^bb84, ^bb81 loc("aws-c-common/include/aws/common/array_list.inl":114:9)
^bb81:
  sea.br ^bb82
^bb82:
  sea.br ^bb83
^bb83:
  sea.br ^bb84 loc("aws-c-common/include/aws/common/array_list.inl":116:5)
^bb84:
  sea.br ^bb85
^bb85:
  sea.br ^bb86
^bb86:
  sea.br ^bb87
^bb87:
  %v147 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":114:24))
  %v148 = sea.ptr.cmp eq, %v67, %v147 : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":114:24))
  sea.cond_br %v148, ^bb91, ^bb88 loc("aws-c-common/include/aws/common/array_list.inl":114:9)
^bb88:
  sea.br ^bb89
^bb89:
  sea.br ^bb90
^bb90:
  sea.br ^bb91 loc("aws-c-common/include/aws/common/array_list.inl":116:5)
^bb91:
  %v149 = sea.const 0 : i1 loc("seahorn/lib/utils.c":26:15)
  sea.assume %v149 loc("seahorn/lib/utils.c":26:15)
  %v150 = sea.nondet "nd_size_t" [17] : i64 loc("_125"("seahorn/lib/utils.c":27:16))
  %v151 = sea.const 0 : i1 loc("seahorn/lib/utils.c":28:5)
  sea.assume %v151 loc("seahorn/lib/utils.c":28:5)
  %v152 = sea.ptr.null : !sea.ptr<64> loc("_126"("seahorn/lib/utils.c":29:5))
  %v153 = sea.ptr.index %v152 [%v150] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_126"("seahorn/lib/utils.c":29:5))
  %v154 = sea.const 1 : i64 loc("_127"("seahorn/lib/utils.c":29:5))
  %v155 = sea.ptr.dereferenceable %v153, %v154 : !sea.ptr<64>, i64 loc("_127"("seahorn/lib/utils.c":29:5))
  %v156 = sea.const 1 : i1 loc("_128")
  %v157 = sea.xor %v155, %v156 : i1 loc("_128")
  sea.assume %v157
  sea.br ^bb92
^bb92:
  sea.br ^bb93
^bb93:
  %v158 = sea.const 0 : i1
  sea.assert %v158
  sea.halt
}
