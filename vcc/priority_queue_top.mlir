// Exported from SeaHorn (priority_queue_top.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
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
  %v74 = sea.const 1 : i64 loc("malloc115.i")
  %v75 = sea.mul %v60, %v74 : i64 loc("malloc115.i")
  %v76 = sea.alloca %v75 align 16 [23] : i64 -> !sea.ptr<64> loc("malloc115.i")
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
  sea.assume %v99 loc("seahorn/jobs/priority_queue_top/aws_priority_queue_top_harness.c":24:3)
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
  %v135 = sea.const 0 : i64 loc(".not40"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v136 = sea.icmp eq, %v66, %v135 : i64 loc(".not40"("aws-c-common/include/aws/common/array_list.inl":95:48))
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
  sea.assume %v158 loc("seahorn/jobs/priority_queue_top/aws_priority_queue_top_harness.c":26:3)
  %v159 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/priority_queue_top/aws_priority_queue_top_harness.c":29:47)
  %v160 = sea.store %v2[%v11], %v159 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/priority_queue_top/aws_priority_queue_top_harness.c":29:47)
  %v161 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs/priority_queue_top/aws_priority_queue_top_harness.c":29:47))
  %v162 = sea.store %v160[%v161], %v33 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/priority_queue_top/aws_priority_queue_top_harness.c":29:47)
  %v163 = sea.ptr.index %v11 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy5.i"("seahorn/jobs/priority_queue_top/aws_priority_queue_top_harness.c":29:47))
  %v164 = sea.store %v162[%v163], %v36 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/priority_queue_top/aws_priority_queue_top_harness.c":29:47)
  %v165 = sea.ptr.index %v11 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i"("seahorn/jobs/priority_queue_top/aws_priority_queue_top_harness.c":29:47))
  %v166 = sea.store %v164[%v165], %v39 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/priority_queue_top/aws_priority_queue_top_harness.c":29:47)
  %v167 = sea.ptr.index %v11 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy11.i"("seahorn/jobs/priority_queue_top/aws_priority_queue_top_harness.c":29:47))
  %v168 = sea.store %v166[%v167], %v54 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/priority_queue_top/aws_priority_queue_top_harness.c":29:47)
  %v169 = sea.nondet "nd_size_t" [25] : i64 loc("_121"("seahorn/lib/utils.c":46:20))
  sea.br ^bb79
^bb79:
  %v170 = sea.store %v3[%v13], %v169 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v171 = sea.const 0 : i64 loc("_123"("seahorn/lib/utils.c":47:12))
  %v172 = sea.icmp ne, %v33, %v171 : i64 loc("_123"("seahorn/lib/utils.c":47:12))
  %v173 = sea.ptr.null : !sea.ptr<64> loc("_124")
  %v174 = sea.ptr.cmp ne, %v54, %v173 : !sea.ptr<64> loc("_124")
  %v175 = sea.and %v172, %v174 : i1 loc("or.cond.i103.i"("seahorn/lib/utils.c":47:16))
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
  sea.cond_br %v182, ^bb85, ^bb261
^bb85:
  %v183 = sea.load %v53[%v180] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_132"("seahorn/lib/utils.c":49:21))
  %v184 = sea.ptr.index %v13 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_133"("seahorn/lib/utils.c":49:14))
  sea.br ^bb86
^bb86:
  %v185 = sea.store %v170[%v184], %v183 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb87(%v183 : i8) loc("seahorn/lib/utils.c":50:3)
^bb87(%v186 : i8):
  %v187 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/priority_queue_top/aws_priority_queue_top_harness.c":35:50)
  %v188 = sea.store %v4[%v15], %v187 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/priority_queue_top/aws_priority_queue_top_harness.c":35:50)
  %v189 = sea.ptr.index %v15 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy17.i"("seahorn/jobs/priority_queue_top/aws_priority_queue_top_harness.c":35:50))
  %v190 = sea.store %v188[%v189], %v60 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/priority_queue_top/aws_priority_queue_top_harness.c":35:50)
  %v191 = sea.ptr.index %v15 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy20.i"("seahorn/jobs/priority_queue_top/aws_priority_queue_top_harness.c":35:50))
  %v192 = sea.store %v190[%v191], %v63 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/priority_queue_top/aws_priority_queue_top_harness.c":35:50)
  %v193 = sea.ptr.index %v15 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy23.i"("seahorn/jobs/priority_queue_top/aws_priority_queue_top_harness.c":35:50))
  %v194 = sea.store %v192[%v193], %v66 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/priority_queue_top/aws_priority_queue_top_harness.c":35:50)
  %v195 = sea.ptr.index %v15 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy26.i"("seahorn/jobs/priority_queue_top/aws_priority_queue_top_harness.c":35:50))
  %v196 = sea.store %v194[%v195], %v81 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/priority_queue_top/aws_priority_queue_top_harness.c":35:50)
  %v197 = sea.nondet "nd_size_t" [27] : i64 loc("_140"("seahorn/lib/utils.c":46:20))
  sea.br ^bb88
^bb88:
  %v198 = sea.store %v5[%v17], %v197 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v199 = sea.ptr.null : !sea.ptr<64> loc("_142")
  %v200 = sea.ptr.cmp ne, %v81, %v199 : !sea.ptr<64> loc("_142")
  %v201 = sea.and %v146, %v200 : i1 loc("or.cond.i105.i"("seahorn/lib/utils.c":47:16))
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
  sea.cond_br %v208, ^bb94, ^bb261
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
  %v213 = sea.const 0 : i64 loc(".not.i.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v214 = sea.icmp eq, %v36, %v213 : i64 loc(".not.i.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  sea.cond_br %v214, ^bb107, ^bb98 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb98:
  sea.br ^bb99
^bb99:
  %v215 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v216 = sea.ptr.cmp eq, %v54, %v215 : !sea.ptr<64> loc(".not1.i.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v217 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v218 = sea.xor %v216, %v217 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v218 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb100
^bb100:
  sea.br ^bb101
^bb101:
  sea.br ^bb102
^bb102:
  %v219 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v220 = sea.xor %v216, %v219 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v220 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb103
^bb103:
  sea.br ^bb104
^bb104:
  sea.br ^bb105
^bb105:
  sea.br ^bb106
^bb106:
  sea.br ^bb109 loc("aws-c-common/include/aws/common/array_list.inl":370:9)
^bb107:
  sea.br ^bb108
^bb108:
  sea.br ^bb109 loc("aws-c-common/source/priority_queue.c":392:5)
^bb109:
  sea.br ^bb110
^bb110:
  sea.br ^bb111
^bb111:
  sea.br ^bb112
^bb112:
  sea.br ^bb113
^bb113:
  sea.cond_br %v101, ^bb114, ^bb115 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb114:
  sea.br ^bb115 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb115:
  sea.br ^bb116
^bb116:
  sea.br ^bb117
^bb117:
  sea.cond_br %v43, ^bb121, ^bb118 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb118:
  sea.br ^bb119
^bb119:
  sea.br ^bb120
^bb120:
  sea.br ^bb124(%v174 : i1)
^bb121:
  sea.br ^bb122
^bb122:
  %v221 = sea.ptr.null : !sea.ptr<64> loc("_176"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v222 = sea.ptr.cmp eq, %v54, %v221 : !sea.ptr<64> loc("_176"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v223 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v222, ^bb123, ^bb124(%v223 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb123:
  %v224 = sea.const 1 : i1
  sea.br ^bb124(%v224 : i1)
^bb124(%v225 : i1):
  sea.br ^bb125
^bb125:
  %v226 = sea.and %v113, %v225 : i1 loc("or.cond3.i13.i35.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v227 = sea.const 0 : i1 loc("spec.select54"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v228 = sea.select %v226, %v116, %v227 : i1 loc("spec.select54"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb126
^bb126:
  sea.br ^bb127
^bb127:
  sea.br ^bb128
^bb128:
  sea.cond_br %v120, ^bb129, ^bb130 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb129:
  sea.br ^bb130 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb130:
  sea.br ^bb131
^bb131:
  sea.br ^bb132
^bb132:
  sea.cond_br %v70, ^bb136, ^bb133 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb133:
  sea.br ^bb134
^bb134:
  sea.br ^bb135
^bb135:
  sea.br ^bb139(%v200 : i1)
^bb136:
  sea.br ^bb137
^bb137:
  %v229 = sea.ptr.null : !sea.ptr<64> loc("_189"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v230 = sea.ptr.cmp eq, %v81, %v229 : !sea.ptr<64> loc("_189"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v231 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v230, ^bb138, ^bb139(%v231 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb138:
  %v232 = sea.const 1 : i1
  sea.br ^bb139(%v232 : i1)
^bb139(%v233 : i1):
  sea.br ^bb140
^bb140:
  %v234 = sea.and %v132, %v233 : i1 loc("or.cond3.i5.i43.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.cond_br %v234, ^bb142, ^bb141 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb141:
  %v235 = sea.const 0 : i1 loc("aws-c-common/source/priority_queue.c":221:56)
  sea.br ^bb146(%v235 : i1) loc("aws-c-common/source/priority_queue.c":221:56)
^bb142:
  %v236 = sea.const 0 : i64 loc(".not41"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v237 = sea.icmp eq, %v66, %v236 : i64 loc(".not41"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v238 = sea.const 0 : i1 loc("aws-c-common/source/priority_queue.c":221:56)
  sea.cond_br %v237, ^bb146(%v238 : i1), ^bb143 loc("aws-c-common/source/priority_queue.c":221:56)
^bb143:
  sea.br ^bb144
^bb144:
  %v239 = sea.const 0 : i1 loc("aws-c-common/source/priority_queue.c":221:99)
  sea.cond_br %v70, ^bb146(%v239 : i1), ^bb145 loc("aws-c-common/source/priority_queue.c":221:99)
^bb145:
  sea.br ^bb146(%v200 : i1)
^bb146(%v240 : i1):
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
  sea.cond_br %v70, ^bb152, ^bb156 loc("aws-c-common/source/priority_queue.c":240:48)
^bb152:
  sea.br ^bb153
^bb153:
  %v241 = sea.const 0 : i64 loc("_207"("aws-c-common/source/priority_queue.c":240:78))
  %v242 = sea.icmp eq, %v63, %v241 : i64 loc("_207"("aws-c-common/source/priority_queue.c":240:78))
  sea.cond_br %v242, ^bb154, ^bb156 loc("aws-c-common/source/priority_queue.c":240:83)
^bb154:
  sea.br ^bb155
^bb155:
  %v243 = sea.ptr.null : !sea.ptr<64> loc(".not8.i.i58.i"("aws-c-common/source/priority_queue.c":240:111))
  %v244 = sea.ptr.cmp eq, %v81, %v243 : !sea.ptr<64> loc(".not8.i.i58.i"("aws-c-common/source/priority_queue.c":240:111))
  %v245 = sea.const 1 : i1 loc("aws-c-common/source/priority_queue.c":242:27)
  sea.cond_br %v244, ^bb157(%v245 : i1), ^bb156 loc("aws-c-common/source/priority_queue.c":242:27)
^bb156:
  %v246 = sea.const 0 : i1 loc("or.cond.i.i47.i"("aws-c-common/source/priority_queue.c":242:58))
  %v247 = sea.select %v143, %v144, %v246 : i1 loc("or.cond.i.i47.i"("aws-c-common/source/priority_queue.c":242:58))
  %v248 = sea.const 0 : i1 loc("or.cond3.i.i48.i"("aws-c-common/source/priority_queue.c":242:58))
  %v249 = sea.select %v247, %v146, %v248 : i1 loc("or.cond3.i.i48.i"("aws-c-common/source/priority_queue.c":242:58))
  sea.br ^bb157(%v249 : i1) loc("aws-c-common/source/priority_queue.c":242:58)
^bb157(%v250 : i1):
  %v251 = sea.and %v240, %v250 : i1 loc("or.cond5.i.i49.i"("aws-c-common/source/priority_queue.c":245:40))
  sea.cond_br %v251, ^bb159, ^bb158 loc("aws-c-common/source/priority_queue.c":245:40)
^bb158:
  sea.br ^bb159
^bb159:
  %v252 = sea.and %v228, %v251 : i1 loc("spec.select.i55.i"("aws-c-common/source/priority_queue.c":257:26))
  sea.br ^bb160
^bb160:
  sea.br ^bb161
^bb161:
  sea.br ^bb162
^bb162:
  sea.br ^bb163
^bb163:
  sea.cond_br %v101, ^bb164, ^bb165 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb164:
  sea.br ^bb165 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb165:
  sea.br ^bb166
^bb166:
  sea.br ^bb167
^bb167:
  sea.cond_br %v43, ^bb171, ^bb168 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb168:
  sea.br ^bb169
^bb169:
  sea.br ^bb170
^bb170:
  sea.br ^bb174(%v174 : i1)
^bb171:
  sea.br ^bb172
^bb172:
  %v253 = sea.ptr.null : !sea.ptr<64> loc("_222"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v254 = sea.ptr.cmp eq, %v54, %v253 : !sea.ptr<64> loc("_222"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v255 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v254, ^bb173, ^bb174(%v255 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb173:
  %v256 = sea.const 1 : i1
  sea.br ^bb174(%v256 : i1)
^bb174(%v257 : i1):
  sea.br ^bb175
^bb175:
  sea.br ^bb176
^bb176:
  sea.br ^bb177
^bb177:
  sea.br ^bb178
^bb178:
  sea.cond_br %v120, ^bb179, ^bb180 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb179:
  sea.br ^bb180 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb180:
  sea.br ^bb181
^bb181:
  sea.br ^bb182
^bb182:
  sea.cond_br %v70, ^bb186, ^bb183 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb183:
  sea.br ^bb184
^bb184:
  sea.br ^bb185
^bb185:
  sea.br ^bb189(%v200 : i1)
^bb186:
  sea.br ^bb187
^bb187:
  %v258 = sea.ptr.null : !sea.ptr<64> loc("_235"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v259 = sea.ptr.cmp eq, %v81, %v258 : !sea.ptr<64> loc("_235"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v260 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v259, ^bb188, ^bb189(%v260 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb188:
  %v261 = sea.const 1 : i1
  sea.br ^bb189(%v261 : i1)
^bb189(%v262 : i1):
  sea.br ^bb190
^bb190:
  %v263 = sea.and %v132, %v262 : i1 loc("or.cond3.i5.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.cond_br %v263, ^bb192, ^bb191 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb191:
  %v264 = sea.const 0 : i1 loc("aws-c-common/source/priority_queue.c":221:56)
  sea.br ^bb196(%v264 : i1) loc("aws-c-common/source/priority_queue.c":221:56)
^bb192:
  %v265 = sea.const 0 : i64 loc(".not42"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v266 = sea.icmp eq, %v66, %v265 : i64 loc(".not42"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v267 = sea.const 0 : i1 loc("aws-c-common/source/priority_queue.c":221:56)
  sea.cond_br %v266, ^bb196(%v267 : i1), ^bb193 loc("aws-c-common/source/priority_queue.c":221:56)
^bb193:
  sea.br ^bb194
^bb194:
  %v268 = sea.const 0 : i1 loc("aws-c-common/source/priority_queue.c":221:99)
  sea.cond_br %v70, ^bb196(%v268 : i1), ^bb195 loc("aws-c-common/source/priority_queue.c":221:99)
^bb195:
  sea.br ^bb196(%v200 : i1)
^bb196(%v269 : i1):
  sea.br ^bb197
^bb197:
  sea.br ^bb198
^bb198:
  sea.br ^bb199
^bb199:
  sea.br ^bb200
^bb200:
  sea.br ^bb201
^bb201:
  sea.cond_br %v70, ^bb202, ^bb206 loc("aws-c-common/source/priority_queue.c":240:48)
^bb202:
  sea.br ^bb203
^bb203:
  %v270 = sea.const 0 : i64 loc("_253"("aws-c-common/source/priority_queue.c":240:78))
  %v271 = sea.icmp eq, %v63, %v270 : i64 loc("_253"("aws-c-common/source/priority_queue.c":240:78))
  sea.cond_br %v271, ^bb204, ^bb206 loc("aws-c-common/source/priority_queue.c":240:83)
^bb204:
  sea.br ^bb205
^bb205:
  %v272 = sea.ptr.null : !sea.ptr<64> loc(".not8.i.i.i"("aws-c-common/source/priority_queue.c":240:111))
  %v273 = sea.ptr.cmp eq, %v81, %v272 : !sea.ptr<64> loc(".not8.i.i.i"("aws-c-common/source/priority_queue.c":240:111))
  %v274 = sea.const 1 : i1 loc("aws-c-common/source/priority_queue.c":242:27)
  sea.cond_br %v273, ^bb207(%v274 : i1), ^bb206 loc("aws-c-common/source/priority_queue.c":242:27)
^bb206:
  %v275 = sea.const 0 : i1 loc("or.cond.i.i.i"("aws-c-common/source/priority_queue.c":242:58))
  %v276 = sea.select %v143, %v144, %v275 : i1 loc("or.cond.i.i.i"("aws-c-common/source/priority_queue.c":242:58))
  %v277 = sea.const 0 : i1 loc("or.cond3.i.i.i"("aws-c-common/source/priority_queue.c":242:58))
  %v278 = sea.select %v276, %v146, %v277 : i1 loc("or.cond3.i.i.i"("aws-c-common/source/priority_queue.c":242:58))
  sea.br ^bb207(%v278 : i1) loc("aws-c-common/source/priority_queue.c":242:58)
^bb207(%v279 : i1):
  %v280 = sea.and %v269, %v279 : i1 loc("or.cond5.i.i.i"("aws-c-common/source/priority_queue.c":245:40))
  sea.cond_br %v280, ^bb209, ^bb208 loc("aws-c-common/source/priority_queue.c":245:40)
^bb208:
  sea.br ^bb261
^bb209:
  %v281 = sea.and %v113, %v257 : i1 loc(".old"("aws-c-common/source/priority_queue.c":257:26))
  %v282 = sea.const 0 : i1 loc("or.cond.i.i.old"("aws-c-common/source/priority_queue.c":257:26))
  %v283 = sea.select %v281, %v116, %v282 : i1 loc("or.cond.i.i.old"("aws-c-common/source/priority_queue.c":257:26))
  sea.cond_br %v283, ^bb210, ^bb261 loc("seahorn/jobs/priority_queue_top/aws_priority_queue_top_harness.c":45:3)
^bb210:
  sea.br ^bb211
^bb211:
  %v284 = sea.load %v58[%v32] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_261"("seahorn/lib/utils.c":65:3))
  sea.br ^bb212
^bb212:
  %v285 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_263"("seahorn/lib/utils.c":65:3))
  %v286 = sea.ptr.cmp eq, %v284, %v285 : !sea.ptr<64> loc("_263"("seahorn/lib/utils.c":65:3))
  sea.br ^bb213
^bb213:
  %v287 = sea.const 1 : i1 loc("or.cond")
  %v288 = sea.const 0 : i1 loc("or.cond")
  %v289 = sea.select %v287, %v286, %v288 : i1 loc("or.cond")
  sea.cond_br %v289, ^bb214, ^bb261
^bb214:
  sea.br ^bb215
^bb215:
  sea.br ^bb216
^bb216:
  sea.br ^bb217
^bb217:
  sea.br ^bb218
^bb218:
  sea.br ^bb219
^bb219:
  %v290 = sea.load %v38[%v37] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_271"("seahorn/lib/utils.c":67:3))
  sea.br ^bb220
^bb220:
  %v291 = sea.icmp eq, %v290, %v36 : i64 loc("_273"("seahorn/lib/utils.c":67:3))
  sea.br ^bb221
^bb221:
  %v292 = sea.const 1 : i1 loc("or.cond12")
  %v293 = sea.const 0 : i1 loc("or.cond12")
  %v294 = sea.select %v292, %v291, %v293 : i1 loc("or.cond12")
  sea.cond_br %v294, ^bb222, ^bb261
^bb222:
  sea.br ^bb223
^bb223:
  %v295 = sea.load %v41[%v40] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_277"("seahorn/lib/utils.c":68:3))
  sea.br ^bb224
^bb224:
  %v296 = sea.icmp eq, %v295, %v39 : i64 loc("_279"("seahorn/lib/utils.c":68:3))
  sea.br ^bb225
^bb225:
  %v297 = sea.const 1 : i1 loc("or.cond14")
  %v298 = sea.const 0 : i1 loc("or.cond14")
  %v299 = sea.select %v297, %v296, %v298 : i1 loc("or.cond14")
  sea.cond_br %v299, ^bb226, ^bb261
^bb226:
  sea.br ^bb227
^bb227:
  %v300 = sea.load %v35[%v34] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_283"("seahorn/lib/utils.c":69:12))
  %v301 = sea.const 0 : i64 loc(".not.i108.i"("seahorn/lib/utils.c":69:25))
  %v302 = sea.icmp eq, %v300, %v301 : i64 loc(".not.i108.i"("seahorn/lib/utils.c":69:25))
  sea.cond_br %v302, ^bb236, ^bb228 loc("seahorn/lib/utils.c":69:7)
^bb228:
  sea.br ^bb229
^bb229:
  %v303 = sea.load %v56[%v55] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_286"("seahorn/lib/utils.c":70:53))
  %v304 = sea.ptr.null : !sea.ptr<64> loc(".not5"("seahorn/lib/utils.c":39:7))
  %v305 = sea.ptr.cmp eq, %v303, %v304 : !sea.ptr<64> loc(".not5"("seahorn/lib/utils.c":39:7))
  sea.cond_br %v305, ^bb236, ^bb230 loc("seahorn/lib/utils.c":39:14)
^bb230:
  sea.br ^bb231
^bb231:
  %v306 = sea.ptr.index %v303 [%v169] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_289"("seahorn/lib/utils.c":40:5))
  %v307 = sea.const 1 : i64 loc("_290"("seahorn/lib/utils.c":40:5))
  %v308 = sea.ptr.dereferenceable %v306, %v307 : !sea.ptr<64>, i64 loc("_290"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v308, ^bb232, ^bb261
^bb232:
  %v309 = sea.load %v53[%v306] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_292"("seahorn/lib/utils.c":40:5))
  sea.br ^bb233
^bb233:
  %v310 = sea.icmp eq, %v309, %v186 : i8 loc("_294"("seahorn/lib/utils.c":40:5))
  sea.br ^bb234
^bb234:
  %v311 = sea.const 1 : i64 loc("_296"("seahorn/lib/utils.c":40:5))
  %v312 = sea.ptr.dereferenceable %v306, %v311 : !sea.ptr<64>, i64 loc("_296"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v312, ^bb235, ^bb261
^bb235:
  %v313 = sea.const 1 : i1 loc("or.cond16")
  %v314 = sea.const 0 : i1 loc("or.cond16")
  %v315 = sea.select %v313, %v310, %v314 : i1 loc("or.cond16")
  sea.cond_br %v315, ^bb236, ^bb261
^bb236:
  sea.br ^bb237
^bb237:
  %v316 = sea.load %v85[%v59] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_299"("seahorn/lib/utils.c":65:3))
  sea.br ^bb238
^bb238:
  %v317 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_301"("seahorn/lib/utils.c":65:3))
  %v318 = sea.ptr.cmp eq, %v316, %v317 : !sea.ptr<64> loc("_301"("seahorn/lib/utils.c":65:3))
  sea.br ^bb239
^bb239:
  %v319 = sea.const 1 : i1 loc("or.cond18")
  %v320 = sea.const 0 : i1 loc("or.cond18")
  %v321 = sea.select %v319, %v318, %v320 : i1 loc("or.cond18")
  sea.cond_br %v321, ^bb240, ^bb261
^bb240:
  sea.br ^bb241
^bb241:
  %v322 = sea.load %v62[%v61] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_305"("seahorn/lib/utils.c":66:3))
  sea.br ^bb242
^bb242:
  %v323 = sea.icmp eq, %v322, %v60 : i64 loc("_307"("seahorn/lib/utils.c":66:3))
  sea.br ^bb243
^bb243:
  %v324 = sea.const 1 : i1 loc("or.cond20")
  %v325 = sea.const 0 : i1 loc("or.cond20")
  %v326 = sea.select %v324, %v323, %v325 : i1 loc("or.cond20")
  sea.cond_br %v326, ^bb244, ^bb261
^bb244:
  sea.br ^bb245
^bb245:
  %v327 = sea.load %v65[%v64] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_311"("seahorn/lib/utils.c":67:3))
  sea.br ^bb246
^bb246:
  %v328 = sea.icmp eq, %v327, %v63 : i64 loc("_313"("seahorn/lib/utils.c":67:3))
  sea.br ^bb247
^bb247:
  %v329 = sea.const 1 : i1 loc("or.cond22")
  %v330 = sea.const 0 : i1 loc("or.cond22")
  %v331 = sea.select %v329, %v328, %v330 : i1 loc("or.cond22")
  sea.cond_br %v331, ^bb248, ^bb261
^bb248:
  sea.br ^bb249
^bb249:
  %v332 = sea.load %v68[%v67] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_317"("seahorn/lib/utils.c":68:3))
  sea.br ^bb250
^bb250:
  %v333 = sea.icmp eq, %v332, %v66 : i64 loc("_319"("seahorn/lib/utils.c":68:3))
  sea.br ^bb251
^bb251:
  %v334 = sea.const 1 : i1 loc("or.cond24")
  %v335 = sea.const 0 : i1 loc("or.cond24")
  %v336 = sea.select %v334, %v333, %v335 : i1 loc("or.cond24")
  sea.cond_br %v336, ^bb252, ^bb261
^bb252:
  sea.br ^bb253
^bb253:
  %v337 = sea.const 1 : i1 loc("seahorn/lib/utils.c":69:7)
  %v338 = sea.xor %v70, %v337 : i1 loc("seahorn/lib/utils.c":69:7)
  sea.assume %v338 loc("seahorn/lib/utils.c":69:7)
  sea.br ^bb254
^bb254:
  %v339 = sea.load %v83[%v82] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_324"("seahorn/lib/utils.c":70:53))
  %v340 = sea.ptr.null : !sea.ptr<64> loc("_325"("seahorn/lib/utils.c":39:7))
  %v341 = sea.ptr.cmp ne, %v339, %v340 : !sea.ptr<64> loc("_325"("seahorn/lib/utils.c":39:7))
  sea.assume %v341 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb255
^bb255:
  %v342 = sea.ptr.index %v339 [%v197] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_327"("seahorn/lib/utils.c":40:5))
  %v343 = sea.const 1 : i64 loc("_328"("seahorn/lib/utils.c":40:5))
  %v344 = sea.ptr.dereferenceable %v342, %v343 : !sea.ptr<64>, i64 loc("_328"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v344, ^bb256, ^bb261
^bb256:
  %v345 = sea.load %v80[%v342] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_330"("seahorn/lib/utils.c":40:5))
  sea.br ^bb257
^bb257:
  %v346 = sea.icmp eq, %v345, %v212 : i8 loc("_332"("seahorn/lib/utils.c":40:5))
  sea.br ^bb258
^bb258:
  %v347 = sea.const 1 : i64 loc("_334"("seahorn/lib/utils.c":40:5))
  %v348 = sea.ptr.dereferenceable %v342, %v347 : !sea.ptr<64>, i64 loc("_334"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v348, ^bb259, ^bb261
^bb259:
  sea.br ^bb260
^bb260:
  %v349 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v350 = sea.xor %v346, %v349 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v350 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb261 loc("seahorn/lib/utils.c":40:5)
^bb261:
  sea.br ^bb262
^bb262:
  %v351 = sea.const 0 : i1
  sea.assert %v351
  sea.halt
}
