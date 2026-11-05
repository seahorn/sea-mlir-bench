// Exported from SeaHorn (priority_queue_capacity.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm38")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm39")
  %v2 = sea.mem.nondet "region.104" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm40")
  %v3 = sea.mem.nondet "region.144" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm41")
  %v4 = sea.mem.nondet "region.153" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm42")
  %v5 = sea.mem.nondet "region.193" [5] : !sea.mem<!sea.ptr<64>, i8> loc("sm43")
  %v6 = sea.mem.nondet "region.202" [6] : !sea.mem<!sea.ptr<64>, i8> loc("sm44")
  %v7 = sea.mem.nondet "region.203" [7] : !sea.mem<!sea.ptr<64>, i8> loc("sm45")
  %v8 = sea.const 88 : i64 loc("_0")
  %v9 = sea.alloca %v8 align 8 [8] : i64 -> !sea.ptr<64> loc("_0")
  %v10 = sea.const 40 : i64 loc("_1")
  %v11 = sea.alloca %v10 align 8 [9] : i64 -> !sea.ptr<64> loc("_1")
  %v12 = sea.const 16 : i64 loc("_2")
  %v13 = sea.alloca %v12 align 8 [10] : i64 -> !sea.ptr<64> loc("_2")
  %v14 = sea.const 40 : i64 loc("_3")
  %v15 = sea.alloca %v14 align 8 [11] : i64 -> !sea.ptr<64> loc("_3")
  %v16 = sea.const 16 : i64 loc("_4")
  %v17 = sea.alloca %v16 align 8 [12] : i64 -> !sea.ptr<64> loc("_4")
  %v18 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v19 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v20 = sea.store %v0[%v18], %v19 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v21 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_5")
  %v22 = sea.ptr.index %v21 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_5")
  %v23 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v24 = sea.store %v20[%v22], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v25 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_6")
  %v26 = sea.ptr.index %v25 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_6")
  %v27 = sea.const 0 : i8
  %v28 = sea.const 24 : i64
  %v29 = sea.memset %v24[%v26], %v27, %v28 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  sea.br ^bb1
^bb1:
  %v30 = sea.func_addr @"nd_aws_priority_queue_compare_fn.addr" : !sea.ptr<64> loc("seahorn/lib/priority_queue_helper.c":8:15)
  %v31 = sea.store %v1[%v9], %v30 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/priority_queue_helper.c":8:15)
  %v32 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_8"("seahorn/lib/priority_queue_helper.c":9:33))
  %v33 = sea.nondet "nd_size_t" [13] : i64 loc("_9"("seahorn/lib/array_list_helper.c":17:24))
  %v34 = sea.ptr.index %v9 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_10"("seahorn/lib/array_list_helper.c":17:9))
  sea.br ^bb2
^bb2:
  %v35 = sea.store %v31[%v34], %v33 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":17:22)
  %v36 = sea.nondet "nd_size_t" [14] : i64 loc("_12"("seahorn/lib/array_list_helper.c":18:18))
  %v37 = sea.ptr.index %v9 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_13"("seahorn/lib/array_list_helper.c":18:9))
  sea.br ^bb3
^bb3:
  %v38 = sea.store %v35[%v37], %v36 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":18:16)
  %v39 = sea.nondet "nd_size_t" [15] : i64 loc("_15"("seahorn/lib/array_list_helper.c":19:21))
  %v40 = sea.ptr.index %v9 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_16"("seahorn/lib/array_list_helper.c":19:9))
  sea.br ^bb4
^bb4:
  %v41 = sea.store %v38[%v40], %v39 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":19:19)
  sea.br ^bb5
^bb5:
  %v42 = sea.const 0 : i64 loc("_19"("seahorn/lib/proof_allocators.c":21:15))
  %v43 = sea.icmp eq, %v33, %v42 : i64 loc("_19"("seahorn/lib/proof_allocators.c":21:15))
  %v44 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v43, ^bb9(%v6, %v44 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb6 loc("seahorn/lib/proof_allocators.c":21:10)
^bb6:
  %v45 = sea.nondet "nd_malloc_is_fail" [16] : i1 loc("_21"("seahorn/lib/sea_allocators.c":11:10))
  %v46 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v45, ^bb8(%v6, %v46 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb7 loc("seahorn/lib/sea_allocators.c":11:10)
^bb7:
  %v47 = sea.const 1 : i64 loc("malloc.i")
  %v48 = sea.mul %v33, %v47 : i64 loc("malloc.i")
  %v49 = sea.alloca %v48 align 16 [17] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb8(%v6, %v49 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb8(%v50 : !sea.mem<!sea.ptr<64>, i8>, %v51 : !sea.ptr<64>):
  %v52 = sea.memhavoc %v50[%v51], %v33 [18] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb9(%v52, %v51 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb9(%v53 : !sea.mem<!sea.ptr<64>, i8>, %v54 : !sea.ptr<64>):
  %v55 = sea.ptr.index %v9 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_25"("seahorn/lib/array_list_helper.c":21:9))
  sea.br ^bb10
^bb10:
  %v56 = sea.store %v41[%v55], %v54 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":21:14)
  sea.br ^bb11
^bb11:
  %v57 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":22:15)
  %v58 = sea.store %v56[%v32], %v57 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":22:15)
  %v59 = sea.ptr.index %v9 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_27"("seahorn/lib/priority_queue_helper.c":10:33))
  %v60 = sea.nondet "nd_size_t" [19] : i64 loc("_28"("seahorn/lib/array_list_helper.c":17:24))
  %v61 = sea.ptr.index %v9 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_29"("seahorn/lib/array_list_helper.c":17:9))
  sea.br ^bb12
^bb12:
  %v62 = sea.store %v58[%v61], %v60 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":17:22)
  %v63 = sea.nondet "nd_size_t" [20] : i64 loc("_31"("seahorn/lib/array_list_helper.c":18:18))
  %v64 = sea.ptr.index %v9 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_32"("seahorn/lib/array_list_helper.c":18:9))
  sea.br ^bb13
^bb13:
  %v65 = sea.store %v62[%v64], %v63 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":18:16)
  %v66 = sea.nondet "nd_size_t" [21] : i64 loc("_34"("seahorn/lib/array_list_helper.c":19:21))
  %v67 = sea.ptr.index %v9 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_35"("seahorn/lib/array_list_helper.c":19:9))
  sea.br ^bb14
^bb14:
  %v68 = sea.store %v65[%v67], %v66 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":19:19)
  sea.br ^bb15
^bb15:
  %v69 = sea.const 0 : i64 loc("_38"("seahorn/lib/proof_allocators.c":21:15))
  %v70 = sea.icmp eq, %v60, %v69 : i64 loc("_38"("seahorn/lib/proof_allocators.c":21:15))
  %v71 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v70, ^bb19(%v7, %v71 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb16 loc("seahorn/lib/proof_allocators.c":21:10)
^bb16:
  %v72 = sea.nondet "nd_malloc_is_fail" [22] : i1 loc("_40"("seahorn/lib/sea_allocators.c":11:10))
  %v73 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v72, ^bb18(%v7, %v73 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb17 loc("seahorn/lib/sea_allocators.c":11:10)
^bb17:
  %v74 = sea.const 1 : i64 loc("malloc112.i")
  %v75 = sea.mul %v60, %v74 : i64 loc("malloc112.i")
  %v76 = sea.alloca %v75 align 16 [23] : i64 -> !sea.ptr<64> loc("malloc112.i")
  sea.br ^bb18(%v7, %v76 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb18(%v77 : !sea.mem<!sea.ptr<64>, i8>, %v78 : !sea.ptr<64>):
  %v79 = sea.memhavoc %v77[%v78], %v60 [24] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb19(%v79, %v78 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb19(%v80 : !sea.mem<!sea.ptr<64>, i8>, %v81 : !sea.ptr<64>):
  %v82 = sea.ptr.index %v9 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_44"("seahorn/lib/array_list_helper.c":21:9))
  sea.br ^bb20
^bb20:
  %v83 = sea.store %v68[%v82], %v81 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":21:14)
  sea.br ^bb21
^bb21:
  %v84 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":22:15)
  %v85 = sea.store %v83[%v59], %v84 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":22:15)
  sea.br ^bb22
^bb22:
  sea.br ^bb23
^bb23:
  %v86 = sea.const 3 : i64 loc("_47"("seahorn/lib/array_list_helper.c":38:47))
  %v87 = sea.icmp ult, %v39, %v86 : i64 loc("_47"("seahorn/lib/array_list_helper.c":38:47))
  %v88 = sea.const 9223372036854775809 : i64 loc("_48"("seahorn/lib/array_list_helper.c":39:41))
  %v89 = sea.icmp ult, %v36, %v88 : i64 loc("_48"("seahorn/lib/array_list_helper.c":39:41))
  %v90 = sea.const 0 : i1 loc("_49"("seahorn/lib/array_list_helper.c":40:31))
  %v91 = sea.select %v87, %v89, %v90 : i1 loc("_49"("seahorn/lib/array_list_helper.c":40:31))
  sea.br ^bb24
^bb24:
  sea.br ^bb25
^bb25:
  %v92 = sea.const 9 : i64 loc("_51"("seahorn/lib/array_list_helper.c":38:47))
  %v93 = sea.icmp ult, %v66, %v92 : i64 loc("_51"("seahorn/lib/array_list_helper.c":38:47))
  %v94 = sea.const 9223372036854775809 : i64 loc("_52"("seahorn/lib/array_list_helper.c":39:41))
  %v95 = sea.icmp ult, %v63, %v94 : i64 loc("_52"("seahorn/lib/array_list_helper.c":39:41))
  %v96 = sea.const 0 : i1 loc("_53"("seahorn/lib/priority_queue_helper.c":20:13))
  %v97 = sea.select %v91, %v93, %v96 : i1 loc("_53"("seahorn/lib/priority_queue_helper.c":20:13))
  %v98 = sea.const 0 : i1 loc("_54"("seahorn/lib/priority_queue_helper.c":20:13))
  %v99 = sea.select %v97, %v95, %v98 : i1 loc("_54"("seahorn/lib/priority_queue_helper.c":20:13))
  sea.assume %v99 loc("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":21:3)
  sea.br ^bb26
^bb26:
  sea.br ^bb27
^bb27:
  sea.br ^bb28
^bb28:
  sea.br ^bb29
^bb29:
  %v100 = sea.mul %v36, %v39 : i64 loc("_59"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v101 = sea.umulo %v36, %v39 : i64 loc("_59"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v101, ^bb30, ^bb31 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb30:
  sea.br ^bb31 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb31:
  %v102 = sea.const 1 : i1 loc("_63"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v103 = sea.xor %v101, %v102 : i1 loc("_63"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb32
^bb32:
  %v104 = sea.icmp uge, %v33, %v100 : i64 loc("_65"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb33
^bb33:
  sea.cond_br %v43, ^bb38, ^bb34 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb34:
  sea.br ^bb35
^bb35:
  sea.br ^bb36
^bb36:
  sea.br ^bb37
^bb37:
  %v105 = sea.ptr.null : !sea.ptr<64> loc("_73"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v106 = sea.ptr.cmp ne, %v54, %v105 : !sea.ptr<64> loc("_73"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb41(%v106 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb38:
  sea.br ^bb39
^bb39:
  %v107 = sea.ptr.null : !sea.ptr<64> loc("_69"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v108 = sea.ptr.cmp eq, %v54, %v107 : !sea.ptr<64> loc("_69"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v109 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v108, ^bb40, ^bb41(%v109 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb40:
  %v110 = sea.const 1 : i1
  sea.br ^bb41(%v110 : i1)
^bb41(%v111 : i1):
  sea.br ^bb42
^bb42:
  %v112 = sea.const 0 : i1 loc("or.cond.i12.i67.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v113 = sea.select %v103, %v104, %v112 : i1 loc("or.cond.i12.i67.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v114 = sea.and %v113, %v111 : i1 loc("or.cond3.i13.i68.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v115 = sea.const 0 : i64 loc("_76")
  %v116 = sea.icmp ne, %v39, %v115 : i64 loc("_76")
  %v117 = sea.const 0 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v118 = sea.select %v114, %v116, %v117 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb43
^bb43:
  sea.br ^bb44
^bb44:
  sea.br ^bb45
^bb45:
  %v119 = sea.mul %v63, %v66 : i64 loc("_80"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v120 = sea.umulo %v63, %v66 : i64 loc("_80"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v120, ^bb46, ^bb47 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb46:
  sea.br ^bb47 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb47:
  %v121 = sea.const 1 : i1 loc("_84"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v122 = sea.xor %v120, %v121 : i1 loc("_84"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb48
^bb48:
  %v123 = sea.icmp uge, %v60, %v119 : i64 loc("_86"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb49
^bb49:
  sea.cond_br %v70, ^bb54, ^bb50 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb50:
  sea.br ^bb51
^bb51:
  sea.br ^bb52
^bb52:
  sea.br ^bb53
^bb53:
  %v124 = sea.ptr.null : !sea.ptr<64> loc("_94"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v125 = sea.ptr.cmp ne, %v81, %v124 : !sea.ptr<64> loc("_94"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb57(%v125 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb54:
  sea.br ^bb55
^bb55:
  %v126 = sea.ptr.null : !sea.ptr<64> loc("_90"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v127 = sea.ptr.cmp eq, %v81, %v126 : !sea.ptr<64> loc("_90"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v128 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v127, ^bb56, ^bb57(%v128 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb56:
  %v129 = sea.const 1 : i1
  sea.br ^bb57(%v129 : i1)
^bb57(%v130 : i1):
  sea.br ^bb58
^bb58:
  %v131 = sea.const 0 : i1 loc("or.cond.i4.i75.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v132 = sea.select %v122, %v123, %v131 : i1 loc("or.cond.i4.i75.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v133 = sea.and %v132, %v130 : i1 loc("or.cond3.i5.i76.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.cond_br %v133, ^bb60, ^bb59 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb59:
  %v134 = sea.const 0 : i1 loc("aws-c-common/source/priority_queue.c":221:56)
  sea.br ^bb65(%v134 : i1) loc("aws-c-common/source/priority_queue.c":221:56)
^bb60:
  %v135 = sea.const 0 : i64 loc(".not38"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v136 = sea.icmp eq, %v66, %v135 : i64 loc(".not38"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v137 = sea.const 0 : i1 loc("aws-c-common/source/priority_queue.c":221:56)
  sea.cond_br %v136, ^bb65(%v137 : i1), ^bb61 loc("aws-c-common/source/priority_queue.c":221:56)
^bb61:
  sea.br ^bb62
^bb62:
  %v138 = sea.const 0 : i1 loc("aws-c-common/source/priority_queue.c":221:99)
  sea.cond_br %v70, ^bb65(%v138 : i1), ^bb63 loc("aws-c-common/source/priority_queue.c":221:99)
^bb63:
  sea.br ^bb64
^bb64:
  %v139 = sea.ptr.null : !sea.ptr<64> loc("_102"("aws-c-common/source/priority_queue.c":222:36))
  %v140 = sea.ptr.cmp ne, %v81, %v139 : !sea.ptr<64> loc("_102"("aws-c-common/source/priority_queue.c":222:36))
  sea.br ^bb65(%v140 : i1)
^bb65(%v141 : i1):
  sea.br ^bb66
^bb66:
  %v142 = sea.const 8 : i64 loc("_106"("aws-c-common/source/priority_queue.c":228:69))
  %v143 = sea.icmp eq, %v66, %v142 : i64 loc("_106"("aws-c-common/source/priority_queue.c":228:69))
  sea.br ^bb67
^bb67:
  sea.br ^bb68
^bb68:
  %v144 = sea.icmp eq, %v63, %v36 : i64 loc("_109"("aws-c-common/source/priority_queue.c":229:59))
  sea.br ^bb69
^bb69:
  %v145 = sea.const 0 : i64 loc("_111"("aws-c-common/source/priority_queue.c":230:80))
  %v146 = sea.icmp ne, %v60, %v145 : i64 loc("_111"("aws-c-common/source/priority_queue.c":230:80))
  sea.br ^bb70
^bb70:
  sea.cond_br %v70, ^bb71, ^bb75 loc("aws-c-common/source/priority_queue.c":240:48)
^bb71:
  sea.br ^bb72
^bb72:
  %v147 = sea.const 0 : i64 loc("_115"("aws-c-common/source/priority_queue.c":240:78))
  %v148 = sea.icmp eq, %v63, %v147 : i64 loc("_115"("aws-c-common/source/priority_queue.c":240:78))
  sea.cond_br %v148, ^bb73, ^bb75 loc("aws-c-common/source/priority_queue.c":240:83)
^bb73:
  sea.br ^bb74
^bb74:
  %v149 = sea.ptr.null : !sea.ptr<64> loc(".not8.i.i91.i"("aws-c-common/source/priority_queue.c":240:111))
  %v150 = sea.ptr.cmp eq, %v81, %v149 : !sea.ptr<64> loc(".not8.i.i91.i"("aws-c-common/source/priority_queue.c":240:111))
  %v151 = sea.const 1 : i1 loc("aws-c-common/source/priority_queue.c":242:27)
  sea.cond_br %v150, ^bb76(%v151 : i1), ^bb75 loc("aws-c-common/source/priority_queue.c":242:27)
^bb75:
  %v152 = sea.const 0 : i1 loc("or.cond.i.i80.i"("aws-c-common/source/priority_queue.c":242:58))
  %v153 = sea.select %v143, %v144, %v152 : i1 loc("or.cond.i.i80.i"("aws-c-common/source/priority_queue.c":242:58))
  %v154 = sea.const 0 : i1 loc("or.cond3.i.i81.i"("aws-c-common/source/priority_queue.c":242:58))
  %v155 = sea.select %v153, %v146, %v154 : i1 loc("or.cond3.i.i81.i"("aws-c-common/source/priority_queue.c":242:58))
  sea.br ^bb76(%v155 : i1) loc("aws-c-common/source/priority_queue.c":242:58)
^bb76(%v156 : i1):
  %v157 = sea.and %v141, %v156 : i1 loc("or.cond5.i.i82.i"("aws-c-common/source/priority_queue.c":245:40))
  sea.cond_br %v157, ^bb78, ^bb77 loc("aws-c-common/source/priority_queue.c":245:40)
^bb77:
  sea.br ^bb78
^bb78:
  %v158 = sea.and %v118, %v157 : i1 loc("spec.select.i88.i"("aws-c-common/source/priority_queue.c":257:26))
  sea.assume %v158 loc("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":23:3)
  sea.assume %v116 loc("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":24:3)
  %v159 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":27:47)
  %v160 = sea.store %v2[%v11], %v159 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":27:47)
  %v161 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":27:47))
  %v162 = sea.store %v160[%v161], %v33 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":27:47)
  %v163 = sea.ptr.index %v11 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy5.i"("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":27:47))
  %v164 = sea.store %v162[%v163], %v36 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":27:47)
  %v165 = sea.ptr.index %v11 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i"("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":27:47))
  %v166 = sea.store %v164[%v165], %v39 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":27:47)
  %v167 = sea.ptr.index %v11 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy11.i"("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":27:47))
  %v168 = sea.store %v166[%v167], %v54 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":27:47)
  %v169 = sea.nondet "nd_size_t" [25] : i64 loc("_121"("seahorn/lib/utils.c":46:20))
  sea.br ^bb79
^bb79:
  %v170 = sea.store %v3[%v13], %v169 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v171 = sea.const 0 : i64 loc("_123"("seahorn/lib/utils.c":47:12))
  %v172 = sea.icmp ne, %v33, %v171 : i64 loc("_123"("seahorn/lib/utils.c":47:12))
  %v173 = sea.ptr.null : !sea.ptr<64> loc("_124")
  %v174 = sea.ptr.cmp ne, %v54, %v173 : !sea.ptr<64> loc("_124")
  %v175 = sea.and %v172, %v174 : i1 loc("or.cond.i100.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v175, ^bb82, ^bb80 loc("seahorn/lib/utils.c":47:16)
^bb80:
  %v176 = sea.nondet "nd_uint8_t" [26] : i8 loc("_136"("seahorn/lib/utils.c":51:21))
  %v177 = sea.ptr.index %v13 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_137"("seahorn/lib/utils.c":51:14))
  sea.br ^bb81
^bb81:
  %v178 = sea.store %v170[%v177], %v176 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb87(%v176 : i8)
^bb82:
  sea.br ^bb83
^bb83:
  %v179 = sea.icmp ult, %v169, %v33 : i64 loc("_127"("seahorn/lib/utils.c":48:27))
  sea.assume %v179 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb84
^bb84:
  %v180 = sea.ptr.index %v54 [%v169] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_129"("seahorn/lib/utils.c":49:21))
  %v181 = sea.const 1 : i64 loc("_130"("seahorn/lib/utils.c":49:21))
  %v182 = sea.ptr.dereferenceable %v180, %v181 : !sea.ptr<64>, i64 loc("_130"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v182, ^bb85, ^bb251
^bb85:
  %v183 = sea.load %v53[%v180] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_132"("seahorn/lib/utils.c":49:21))
  %v184 = sea.ptr.index %v13 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_133"("seahorn/lib/utils.c":49:14))
  sea.br ^bb86
^bb86:
  %v185 = sea.store %v170[%v184], %v183 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb87(%v183 : i8) loc("seahorn/lib/utils.c":50:3)
^bb87(%v186 : i8):
  %v187 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":33:50)
  %v188 = sea.store %v4[%v15], %v187 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":33:50)
  %v189 = sea.ptr.index %v15 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy17.i"("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":33:50))
  %v190 = sea.store %v188[%v189], %v60 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":33:50)
  %v191 = sea.ptr.index %v15 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy20.i"("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":33:50))
  %v192 = sea.store %v190[%v191], %v63 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":33:50)
  %v193 = sea.ptr.index %v15 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy23.i"("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":33:50))
  %v194 = sea.store %v192[%v193], %v66 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":33:50)
  %v195 = sea.ptr.index %v15 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy26.i"("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":33:50))
  %v196 = sea.store %v194[%v195], %v81 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":33:50)
  %v197 = sea.nondet "nd_size_t" [27] : i64 loc("_140"("seahorn/lib/utils.c":46:20))
  sea.br ^bb88
^bb88:
  %v198 = sea.store %v5[%v17], %v197 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v199 = sea.ptr.null : !sea.ptr<64> loc("_142")
  %v200 = sea.ptr.cmp ne, %v81, %v199 : !sea.ptr<64> loc("_142")
  %v201 = sea.and %v146, %v200 : i1 loc("or.cond.i102.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v201, ^bb91, ^bb89 loc("seahorn/lib/utils.c":47:16)
^bb89:
  %v202 = sea.nondet "nd_uint8_t" [28] : i8 loc("_154"("seahorn/lib/utils.c":51:21))
  %v203 = sea.ptr.index %v17 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_155"("seahorn/lib/utils.c":51:14))
  sea.br ^bb90
^bb90:
  %v204 = sea.store %v198[%v203], %v202 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb96(%v202 : i8)
^bb91:
  sea.br ^bb92
^bb92:
  %v205 = sea.icmp ult, %v197, %v60 : i64 loc("_145"("seahorn/lib/utils.c":48:27))
  sea.assume %v205 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb93
^bb93:
  %v206 = sea.ptr.index %v81 [%v197] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_147"("seahorn/lib/utils.c":49:21))
  %v207 = sea.const 1 : i64 loc("_148"("seahorn/lib/utils.c":49:21))
  %v208 = sea.ptr.dereferenceable %v206, %v207 : !sea.ptr<64>, i64 loc("_148"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v208, ^bb94, ^bb251
^bb94:
  %v209 = sea.load %v80[%v206] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_150"("seahorn/lib/utils.c":49:21))
  %v210 = sea.ptr.index %v17 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_151"("seahorn/lib/utils.c":49:14))
  sea.br ^bb95
^bb95:
  %v211 = sea.store %v198[%v210], %v209 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb96(%v209 : i8) loc("seahorn/lib/utils.c":50:3)
^bb96(%v212 : i8):
  sea.br ^bb97
^bb97:
  %v213 = sea.const 0 : i64 loc(".not.i.i"("aws-c-common/include/aws/common/array_list.inl":328:5))
  %v214 = sea.icmp eq, %v39, %v213 : i64 loc(".not.i.i"("aws-c-common/include/aws/common/array_list.inl":328:5))
  %v215 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":328:5)
  %v216 = sea.xor %v214, %v215 : i1 loc("aws-c-common/include/aws/common/array_list.inl":328:5)
  sea.assume %v216 loc("aws-c-common/include/aws/common/array_list.inl":328:5)
  sea.br ^bb98
^bb98:
  sea.br ^bb99
^bb99:
  sea.br ^bb100
^bb100:
  sea.br ^bb101
^bb101:
  sea.br ^bb102
^bb102:
  sea.br ^bb103
^bb103:
  sea.cond_br %v101, ^bb104, ^bb105 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb104:
  sea.br ^bb105 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb105:
  sea.br ^bb106
^bb106:
  sea.br ^bb107
^bb107:
  sea.cond_br %v43, ^bb111, ^bb108 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb108:
  sea.br ^bb109
^bb109:
  sea.br ^bb110
^bb110:
  sea.br ^bb114(%v174 : i1)
^bb111:
  sea.br ^bb112
^bb112:
  %v217 = sea.ptr.null : !sea.ptr<64> loc("_169"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v218 = sea.ptr.cmp eq, %v54, %v217 : !sea.ptr<64> loc("_169"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v219 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v218, ^bb113, ^bb114(%v219 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb113:
  %v220 = sea.const 1 : i1
  sea.br ^bb114(%v220 : i1)
^bb114(%v221 : i1):
  sea.br ^bb115
^bb115:
  sea.br ^bb116
^bb116:
  sea.br ^bb117
^bb117:
  sea.br ^bb118
^bb118:
  sea.cond_br %v120, ^bb119, ^bb120 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb119:
  sea.br ^bb120 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb120:
  sea.br ^bb121
^bb121:
  sea.br ^bb122
^bb122:
  sea.cond_br %v70, ^bb126, ^bb123 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb123:
  sea.br ^bb124
^bb124:
  sea.br ^bb125
^bb125:
  sea.br ^bb129(%v200 : i1)
^bb126:
  sea.br ^bb127
^bb127:
  %v222 = sea.ptr.null : !sea.ptr<64> loc("_182"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v223 = sea.ptr.cmp eq, %v81, %v222 : !sea.ptr<64> loc("_182"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v224 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v223, ^bb128, ^bb129(%v224 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb128:
  %v225 = sea.const 1 : i1
  sea.br ^bb129(%v225 : i1)
^bb129(%v226 : i1):
  sea.br ^bb130
^bb130:
  %v227 = sea.and %v132, %v226 : i1 loc("or.cond3.i5.i43.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.cond_br %v227, ^bb132, ^bb131 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb131:
  %v228 = sea.const 0 : i1 loc("aws-c-common/source/priority_queue.c":221:56)
  sea.br ^bb136(%v228 : i1) loc("aws-c-common/source/priority_queue.c":221:56)
^bb132:
  %v229 = sea.const 0 : i64 loc(".not39"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v230 = sea.icmp eq, %v66, %v229 : i64 loc(".not39"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v231 = sea.const 0 : i1 loc("aws-c-common/source/priority_queue.c":221:56)
  sea.cond_br %v230, ^bb136(%v231 : i1), ^bb133 loc("aws-c-common/source/priority_queue.c":221:56)
^bb133:
  sea.br ^bb134
^bb134:
  %v232 = sea.const 0 : i1 loc("aws-c-common/source/priority_queue.c":221:99)
  sea.cond_br %v70, ^bb136(%v232 : i1), ^bb135 loc("aws-c-common/source/priority_queue.c":221:99)
^bb135:
  sea.br ^bb136(%v200 : i1)
^bb136(%v233 : i1):
  sea.br ^bb137
^bb137:
  sea.br ^bb138
^bb138:
  sea.br ^bb139
^bb139:
  sea.br ^bb140
^bb140:
  sea.br ^bb141
^bb141:
  sea.cond_br %v70, ^bb142, ^bb146 loc("aws-c-common/source/priority_queue.c":240:48)
^bb142:
  sea.br ^bb143
^bb143:
  %v234 = sea.const 0 : i64 loc("_200"("aws-c-common/source/priority_queue.c":240:78))
  %v235 = sea.icmp eq, %v63, %v234 : i64 loc("_200"("aws-c-common/source/priority_queue.c":240:78))
  sea.cond_br %v235, ^bb144, ^bb146 loc("aws-c-common/source/priority_queue.c":240:83)
^bb144:
  sea.br ^bb145
^bb145:
  %v236 = sea.ptr.null : !sea.ptr<64> loc(".not8.i.i58.i"("aws-c-common/source/priority_queue.c":240:111))
  %v237 = sea.ptr.cmp eq, %v81, %v236 : !sea.ptr<64> loc(".not8.i.i58.i"("aws-c-common/source/priority_queue.c":240:111))
  %v238 = sea.const 1 : i1 loc("aws-c-common/source/priority_queue.c":242:27)
  sea.cond_br %v237, ^bb147(%v238 : i1), ^bb146 loc("aws-c-common/source/priority_queue.c":242:27)
^bb146:
  %v239 = sea.const 0 : i1 loc("or.cond.i.i47.i"("aws-c-common/source/priority_queue.c":242:58))
  %v240 = sea.select %v143, %v144, %v239 : i1 loc("or.cond.i.i47.i"("aws-c-common/source/priority_queue.c":242:58))
  %v241 = sea.const 0 : i1 loc("or.cond3.i.i48.i"("aws-c-common/source/priority_queue.c":242:58))
  %v242 = sea.select %v240, %v146, %v241 : i1 loc("or.cond3.i.i48.i"("aws-c-common/source/priority_queue.c":242:58))
  sea.br ^bb147(%v242 : i1) loc("aws-c-common/source/priority_queue.c":242:58)
^bb147(%v243 : i1):
  %v244 = sea.and %v233, %v243 : i1 loc("or.cond5.i.i49.i"("aws-c-common/source/priority_queue.c":245:40))
  sea.cond_br %v244, ^bb149, ^bb148 loc("aws-c-common/source/priority_queue.c":245:40)
^bb148:
  sea.br ^bb149
^bb149:
  %v245 = sea.and %v221, %v244 : i1 loc("_206"("aws-c-common/source/priority_queue.c":257:26))
  %v246 = sea.and %v113, %v245 : i1 loc("spec.select.i55.i"("aws-c-common/source/priority_queue.c":257:26))
  sea.br ^bb150
^bb150:
  sea.br ^bb151
^bb151:
  sea.br ^bb152
^bb152:
  sea.br ^bb153
^bb153:
  sea.cond_br %v101, ^bb154, ^bb155 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb154:
  sea.br ^bb155 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb155:
  sea.br ^bb156
^bb156:
  sea.br ^bb157
^bb157:
  sea.cond_br %v43, ^bb161, ^bb158 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb158:
  sea.br ^bb159
^bb159:
  sea.br ^bb160
^bb160:
  sea.br ^bb164(%v174 : i1)
^bb161:
  sea.br ^bb162
^bb162:
  %v247 = sea.ptr.null : !sea.ptr<64> loc("_216"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v248 = sea.ptr.cmp eq, %v54, %v247 : !sea.ptr<64> loc("_216"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v249 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v248, ^bb163, ^bb164(%v249 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb163:
  %v250 = sea.const 1 : i1
  sea.br ^bb164(%v250 : i1)
^bb164(%v251 : i1):
  sea.br ^bb165
^bb165:
  sea.br ^bb166
^bb166:
  sea.br ^bb167
^bb167:
  sea.br ^bb168
^bb168:
  sea.cond_br %v120, ^bb169, ^bb170 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb169:
  sea.br ^bb170 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb170:
  sea.br ^bb171
^bb171:
  sea.br ^bb172
^bb172:
  sea.cond_br %v70, ^bb176, ^bb173 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb173:
  sea.br ^bb174
^bb174:
  sea.br ^bb175
^bb175:
  sea.br ^bb179(%v200 : i1)
^bb176:
  sea.br ^bb177
^bb177:
  %v252 = sea.ptr.null : !sea.ptr<64> loc("_229"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v253 = sea.ptr.cmp eq, %v81, %v252 : !sea.ptr<64> loc("_229"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v254 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v253, ^bb178, ^bb179(%v254 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb178:
  %v255 = sea.const 1 : i1
  sea.br ^bb179(%v255 : i1)
^bb179(%v256 : i1):
  sea.br ^bb180
^bb180:
  %v257 = sea.and %v132, %v256 : i1 loc("or.cond3.i5.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.cond_br %v257, ^bb182, ^bb181 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb181:
  %v258 = sea.const 0 : i1 loc("aws-c-common/source/priority_queue.c":221:56)
  sea.br ^bb186(%v258 : i1) loc("aws-c-common/source/priority_queue.c":221:56)
^bb182:
  %v259 = sea.const 0 : i64 loc(".not40"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v260 = sea.icmp eq, %v66, %v259 : i64 loc(".not40"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v261 = sea.const 0 : i1 loc("aws-c-common/source/priority_queue.c":221:56)
  sea.cond_br %v260, ^bb186(%v261 : i1), ^bb183 loc("aws-c-common/source/priority_queue.c":221:56)
^bb183:
  sea.br ^bb184
^bb184:
  %v262 = sea.const 0 : i1 loc("aws-c-common/source/priority_queue.c":221:99)
  sea.cond_br %v70, ^bb186(%v262 : i1), ^bb185 loc("aws-c-common/source/priority_queue.c":221:99)
^bb185:
  sea.br ^bb186(%v200 : i1)
^bb186(%v263 : i1):
  sea.br ^bb187
^bb187:
  sea.br ^bb188
^bb188:
  sea.br ^bb189
^bb189:
  sea.br ^bb190
^bb190:
  sea.br ^bb191
^bb191:
  sea.cond_br %v70, ^bb192, ^bb196 loc("aws-c-common/source/priority_queue.c":240:48)
^bb192:
  sea.br ^bb193
^bb193:
  %v264 = sea.const 0 : i64 loc("_247"("aws-c-common/source/priority_queue.c":240:78))
  %v265 = sea.icmp eq, %v63, %v264 : i64 loc("_247"("aws-c-common/source/priority_queue.c":240:78))
  sea.cond_br %v265, ^bb194, ^bb196 loc("aws-c-common/source/priority_queue.c":240:83)
^bb194:
  sea.br ^bb195
^bb195:
  %v266 = sea.ptr.null : !sea.ptr<64> loc(".not8.i.i.i"("aws-c-common/source/priority_queue.c":240:111))
  %v267 = sea.ptr.cmp eq, %v81, %v266 : !sea.ptr<64> loc(".not8.i.i.i"("aws-c-common/source/priority_queue.c":240:111))
  %v268 = sea.const 1 : i1 loc("aws-c-common/source/priority_queue.c":242:27)
  sea.cond_br %v267, ^bb197(%v268 : i1), ^bb196 loc("aws-c-common/source/priority_queue.c":242:27)
^bb196:
  %v269 = sea.const 0 : i1 loc("or.cond.i.i.i"("aws-c-common/source/priority_queue.c":242:58))
  %v270 = sea.select %v143, %v144, %v269 : i1 loc("or.cond.i.i.i"("aws-c-common/source/priority_queue.c":242:58))
  %v271 = sea.const 0 : i1 loc("or.cond3.i.i.i"("aws-c-common/source/priority_queue.c":242:58))
  %v272 = sea.select %v270, %v146, %v271 : i1 loc("or.cond3.i.i.i"("aws-c-common/source/priority_queue.c":242:58))
  sea.br ^bb197(%v272 : i1) loc("aws-c-common/source/priority_queue.c":242:58)
^bb197(%v273 : i1):
  %v274 = sea.and %v263, %v273 : i1 loc("or.cond5.i.i.i"("aws-c-common/source/priority_queue.c":245:40))
  sea.cond_br %v274, ^bb199, ^bb198 loc("aws-c-common/source/priority_queue.c":245:40)
^bb198:
  sea.br ^bb251
^bb199:
  %v275 = sea.and %v113, %v251 : i1 loc(".old"("aws-c-common/source/priority_queue.c":257:26))
  sea.cond_br %v275, ^bb200, ^bb251 loc("seahorn/jobs/priority_queue_capacity/aws_priority_queue_capacity_harness.c":42:3)
^bb200:
  sea.br ^bb201
^bb201:
  sea.br ^bb202
^bb202:
  sea.br ^bb203
^bb203:
  sea.br ^bb204
^bb204:
  sea.br ^bb205
^bb205:
  sea.br ^bb206
^bb206:
  sea.br ^bb207
^bb207:
  sea.br ^bb208
^bb208:
  sea.br ^bb209
^bb209:
  sea.br ^bb210
^bb210:
  sea.br ^bb211
^bb211:
  sea.br ^bb212
^bb212:
  sea.br ^bb213
^bb213:
  %v276 = sea.load %v41[%v40] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_267"("seahorn/lib/utils.c":68:3))
  sea.br ^bb214
^bb214:
  %v277 = sea.icmp eq, %v276, %v39 : i64 loc("_269"("seahorn/lib/utils.c":68:3))
  sea.br ^bb215
^bb215:
  %v278 = sea.const 1 : i1 loc("or.cond13")
  %v279 = sea.const 0 : i1 loc("or.cond13")
  %v280 = sea.select %v278, %v277, %v279 : i1 loc("or.cond13")
  sea.cond_br %v280, ^bb216, ^bb251
^bb216:
  sea.br ^bb217
^bb217:
  %v281 = sea.load %v35[%v34] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_273"("seahorn/lib/utils.c":69:12))
  %v282 = sea.const 0 : i64 loc(".not.i105.i"("seahorn/lib/utils.c":69:25))
  %v283 = sea.icmp eq, %v281, %v282 : i64 loc(".not.i105.i"("seahorn/lib/utils.c":69:25))
  sea.cond_br %v283, ^bb226, ^bb218 loc("seahorn/lib/utils.c":69:7)
^bb218:
  sea.br ^bb219
^bb219:
  %v284 = sea.load %v56[%v55] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_276"("seahorn/lib/utils.c":70:53))
  %v285 = sea.ptr.null : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v286 = sea.ptr.cmp eq, %v284, %v285 : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  sea.cond_br %v286, ^bb226, ^bb220 loc("seahorn/lib/utils.c":39:14)
^bb220:
  sea.br ^bb221
^bb221:
  %v287 = sea.ptr.index %v284 [%v169] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_279"("seahorn/lib/utils.c":40:5))
  %v288 = sea.const 1 : i64 loc("_280"("seahorn/lib/utils.c":40:5))
  %v289 = sea.ptr.dereferenceable %v287, %v288 : !sea.ptr<64>, i64 loc("_280"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v289, ^bb222, ^bb251
^bb222:
  %v290 = sea.load %v53[%v287] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_282"("seahorn/lib/utils.c":40:5))
  sea.br ^bb223
^bb223:
  %v291 = sea.icmp eq, %v290, %v186 : i8 loc("_284"("seahorn/lib/utils.c":40:5))
  sea.br ^bb224
^bb224:
  %v292 = sea.const 1 : i64 loc("_286"("seahorn/lib/utils.c":40:5))
  %v293 = sea.ptr.dereferenceable %v287, %v292 : !sea.ptr<64>, i64 loc("_286"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v293, ^bb225, ^bb251
^bb225:
  %v294 = sea.const 1 : i1 loc("or.cond15")
  %v295 = sea.const 0 : i1 loc("or.cond15")
  %v296 = sea.select %v294, %v291, %v295 : i1 loc("or.cond15")
  sea.cond_br %v296, ^bb226, ^bb251
^bb226:
  sea.br ^bb227
^bb227:
  %v297 = sea.load %v85[%v59] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_289"("seahorn/lib/utils.c":65:3))
  sea.br ^bb228
^bb228:
  %v298 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_291"("seahorn/lib/utils.c":65:3))
  %v299 = sea.ptr.cmp eq, %v297, %v298 : !sea.ptr<64> loc("_291"("seahorn/lib/utils.c":65:3))
  sea.br ^bb229
^bb229:
  %v300 = sea.const 1 : i1 loc("or.cond17")
  %v301 = sea.const 0 : i1 loc("or.cond17")
  %v302 = sea.select %v300, %v299, %v301 : i1 loc("or.cond17")
  sea.cond_br %v302, ^bb230, ^bb251
^bb230:
  sea.br ^bb231
^bb231:
  %v303 = sea.load %v62[%v61] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_295"("seahorn/lib/utils.c":66:3))
  sea.br ^bb232
^bb232:
  %v304 = sea.icmp eq, %v303, %v60 : i64 loc("_297"("seahorn/lib/utils.c":66:3))
  sea.br ^bb233
^bb233:
  %v305 = sea.const 1 : i1 loc("or.cond19")
  %v306 = sea.const 0 : i1 loc("or.cond19")
  %v307 = sea.select %v305, %v304, %v306 : i1 loc("or.cond19")
  sea.cond_br %v307, ^bb234, ^bb251
^bb234:
  sea.br ^bb235
^bb235:
  %v308 = sea.load %v65[%v64] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_301"("seahorn/lib/utils.c":67:3))
  sea.br ^bb236
^bb236:
  %v309 = sea.icmp eq, %v308, %v63 : i64 loc("_303"("seahorn/lib/utils.c":67:3))
  sea.br ^bb237
^bb237:
  %v310 = sea.const 1 : i1 loc("or.cond21")
  %v311 = sea.const 0 : i1 loc("or.cond21")
  %v312 = sea.select %v310, %v309, %v311 : i1 loc("or.cond21")
  sea.cond_br %v312, ^bb238, ^bb251
^bb238:
  sea.br ^bb239
^bb239:
  %v313 = sea.load %v68[%v67] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_307"("seahorn/lib/utils.c":68:3))
  sea.br ^bb240
^bb240:
  %v314 = sea.icmp eq, %v313, %v66 : i64 loc("_309"("seahorn/lib/utils.c":68:3))
  sea.br ^bb241
^bb241:
  %v315 = sea.const 1 : i1 loc("or.cond23")
  %v316 = sea.const 0 : i1 loc("or.cond23")
  %v317 = sea.select %v315, %v314, %v316 : i1 loc("or.cond23")
  sea.cond_br %v317, ^bb242, ^bb251
^bb242:
  sea.br ^bb243
^bb243:
  %v318 = sea.const 1 : i1 loc("seahorn/lib/utils.c":69:7)
  %v319 = sea.xor %v70, %v318 : i1 loc("seahorn/lib/utils.c":69:7)
  sea.assume %v319 loc("seahorn/lib/utils.c":69:7)
  sea.br ^bb244
^bb244:
  %v320 = sea.load %v83[%v82] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_314"("seahorn/lib/utils.c":70:53))
  %v321 = sea.ptr.null : !sea.ptr<64> loc("_315"("seahorn/lib/utils.c":39:7))
  %v322 = sea.ptr.cmp ne, %v320, %v321 : !sea.ptr<64> loc("_315"("seahorn/lib/utils.c":39:7))
  sea.assume %v322 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb245
^bb245:
  %v323 = sea.ptr.index %v320 [%v197] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_317"("seahorn/lib/utils.c":40:5))
  %v324 = sea.const 1 : i64 loc("_318"("seahorn/lib/utils.c":40:5))
  %v325 = sea.ptr.dereferenceable %v323, %v324 : !sea.ptr<64>, i64 loc("_318"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v325, ^bb246, ^bb251
^bb246:
  %v326 = sea.load %v80[%v323] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_320"("seahorn/lib/utils.c":40:5))
  sea.br ^bb247
^bb247:
  %v327 = sea.icmp eq, %v326, %v212 : i8 loc("_322"("seahorn/lib/utils.c":40:5))
  sea.br ^bb248
^bb248:
  %v328 = sea.const 1 : i64 loc("_324"("seahorn/lib/utils.c":40:5))
  %v329 = sea.ptr.dereferenceable %v323, %v328 : !sea.ptr<64>, i64 loc("_324"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v329, ^bb249, ^bb251
^bb249:
  sea.br ^bb250
^bb250:
  %v330 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v331 = sea.xor %v327, %v330 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v331 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb251 loc("seahorn/lib/utils.c":40:5)
^bb251:
  sea.br ^bb252
^bb252:
  %v332 = sea.const 0 : i1
  sea.assert %v332
  sea.halt
}
