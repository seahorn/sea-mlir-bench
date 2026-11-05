// Exported from SeaHorn (priority_queue_init_dynamic.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm12")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm13")
  %v2 = sea.mem.nondet "region.64" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm14")
  %v3 = sea.const 88 : i64 loc("_0")
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
  %v17 = sea.nondet "nd_size_t" [4] : i64 loc("_3"("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":17:22))
  %v18 = sea.nondet "nd_size_t" [5] : i64 loc("_4"("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":18:36))
  %v19 = sea.nondet "nd_size_t" [6] : i64 loc("_5"("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":19:16))
  %v20 = sea.const 9223372036854775809 : i64 loc("_6"("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":24:34))
  %v21 = sea.icmp ult, %v18, %v20 : i64 loc("_6"("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":24:34))
  sea.assume %v21 loc("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":24:3)
  %v22 = sea.const 18446744073709551615 : i64 loc("_7"("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":25:24))
  %v23 = sea.add %v17, %v22 : i64 loc("_7"("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":25:24))
  %v24 = sea.const 2 : i64 loc("_8"("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":25:24))
  %v25 = sea.icmp ult, %v23, %v24 : i64 loc("_8"("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":25:24))
  sea.assume %v25 loc("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":25:3)
  sea.br ^bb1
^bb1:
  %v26 = sea.mul %v18, %v17 : i64 loc("_10"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v27 = sea.umulo %v18, %v17 : i64 loc("_10"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v27, ^bb2, ^bb3 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb2:
  sea.br ^bb3 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb3:
  %v28 = sea.const 1 : i1 loc(".not.i"("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":26:3))
  %v29 = sea.xor %v27, %v28 : i1 loc(".not.i"("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":26:3))
  sea.assume %v29 loc("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":26:3)
  %v30 = sea.const 1 : i1 loc("seahorn/lib/sea_allocators.c":39:3)
  sea.assume %v30 loc("seahorn/lib/sea_allocators.c":39:3)
  %v31 = sea.const 0 : i64 loc(".not2.i.i"("aws-c-common/source/priority_queue.c":156:5))
  %v32 = sea.icmp eq, %v17, %v31 : i64 loc(".not2.i.i"("aws-c-common/source/priority_queue.c":156:5))
  %v33 = sea.const 1 : i1 loc("aws-c-common/source/priority_queue.c":156:5)
  %v34 = sea.xor %v32, %v33 : i1 loc("aws-c-common/source/priority_queue.c":156:5)
  sea.assume %v34 loc("aws-c-common/source/priority_queue.c":156:5)
  sea.br ^bb4
^bb4:
  %v35 = sea.func_addr @"nondet_compare" : !sea.ptr<64> loc("aws-c-common/source/priority_queue.c":158:17)
  %v36 = sea.store %v1[%v4], %v35 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/priority_queue.c":158:17)
  %v37 = sea.ptr.index %v4 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_14"("aws-c-common/source/priority_queue.c":161:51))
  %v38 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":26:5)
  %v39 = sea.xor %v32, %v38 : i1 loc("aws-c-common/include/aws/common/array_list.inl":26:5)
  sea.assume %v39 loc("aws-c-common/include/aws/common/array_list.inl":26:5)
  %v40 = sea.ptr.index %v4 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_15"("aws-c-common/include/aws/common/array_list.inl":28:5))
  %v41 = sea.const 0 : i8 loc("aws-c-common/include/aws/common/array_list.inl":28:5)
  %v42 = sea.const 72 : i64 loc("aws-c-common/include/aws/common/array_list.inl":28:5)
  %v43 = sea.memset %v36[%v40], %v41, %v42 inplace align 8 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/include/aws/common/array_list.inl":28:5)
  sea.br ^bb5
^bb5:
  sea.cond_br %v27, ^bb94, ^bb6 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb6:
  %v44 = sea.const 0 : i64 loc(".not4.i.i"("aws-c-common/include/aws/common/array_list.inl":35:25))
  %v45 = sea.icmp eq, %v26, %v44 : i64 loc(".not4.i.i"("aws-c-common/include/aws/common/array_list.inl":35:25))
  %v46 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":35:9)
  sea.cond_br %v45, ^bb15(%v43, %v46 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb7 loc("aws-c-common/include/aws/common/array_list.inl":35:9)
^bb7:
  %v47 = sea.nondet "nd_malloc_is_fail" [7] : i1 loc("_18"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v47, ^bb9, ^bb8 loc("seahorn/lib/sea_allocators.c":11:10)
^bb8:
  %v48 = sea.const 1 : i64 loc("malloc66.i")
  %v49 = sea.mul %v26, %v48 : i64 loc("malloc66.i")
  %v50 = sea.alloca %v49 align 16 [8] : i64 -> !sea.ptr<64> loc("malloc66.i")
  %v51 = sea.memhavoc %v2[%v50], %v26 [9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb10(%v50 : !sea.ptr<64>) loc("seahorn/lib/allocator_override.c":19:7)
^bb9:
  %v52 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/allocator_override.c":21:3)
  sea.br ^bb10(%v52 : !sea.ptr<64>) loc("seahorn/lib/allocator_override.c":21:3)
^bb10(%v53 : !sea.ptr<64>):
  %v54 = sea.ptr.index %v4 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_21"("aws-c-common/include/aws/common/array_list.inl":36:15))
  sea.br ^bb11
^bb11:
  %v55 = sea.store %v43[%v54], %v53 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":36:20)
  sea.br ^bb12
^bb12:
  %v56 = sea.ptr.to_int %v53 : !sea.ptr<64> to i64 loc("_24")
  sea.cond_br %v47, ^bb95(%v56 : i64), ^bb13 loc("aws-c-common/include/aws/common/array_list.inl":37:13)
^bb13:
  %v57 = sea.ptr.index %v4 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_26"("aws-c-common/include/aws/common/array_list.inl":44:15))
  sea.br ^bb14
^bb14:
  %v58 = sea.store %v55[%v57], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":44:28)
  sea.br ^bb15(%v58, %v53 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("aws-c-common/include/aws/common/array_list.inl":45:5)
^bb15(%v59 : !sea.mem<!sea.ptr<64>, i8>, %v60 : !sea.ptr<64>):
  %v61 = sea.ptr.index %v4 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_30"("aws-c-common/include/aws/common/array_list.inl":46:11))
  sea.br ^bb16
^bb16:
  %v62 = sea.store %v59[%v61], %v17 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":46:21)
  sea.br ^bb17
^bb17:
  %v63 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":47:17)
  %v64 = sea.store %v62[%v37], %v63 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":47:17)
  sea.br ^bb18
^bb18:
  sea.cond_br %v45, ^bb21, ^bb19 loc("aws-c-common/include/aws/common/array_list.inl":49:5)
^bb19:
  sea.br ^bb20
^bb20:
  %v65 = sea.ptr.null : !sea.ptr<64> loc(".not6.i.i"("aws-c-common/include/aws/common/array_list.inl":49:5))
  %v66 = sea.ptr.cmp eq, %v60, %v65 : !sea.ptr<64> loc(".not6.i.i"("aws-c-common/include/aws/common/array_list.inl":49:5))
  %v67 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":49:5)
  %v68 = sea.xor %v66, %v67 : i1 loc("aws-c-common/include/aws/common/array_list.inl":49:5)
  sea.assume %v68 loc("aws-c-common/include/aws/common/array_list.inl":49:5)
  sea.br ^bb21 loc("aws-c-common/include/aws/common/array_list.inl":49:5)
^bb21:
  sea.br ^bb22
^bb22:
  sea.br ^bb23
^bb23:
  sea.br ^bb24
^bb24:
  sea.br ^bb25
^bb25:
  sea.br ^bb26
^bb26:
  sea.br ^bb27
^bb27:
  sea.cond_br %v45, ^bb32, ^bb28 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb28:
  sea.br ^bb29
^bb29:
  sea.br ^bb30
^bb30:
  sea.br ^bb31
^bb31:
  %v69 = sea.ptr.null : !sea.ptr<64> loc("_48"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v70 = sea.ptr.cmp ne, %v60, %v69 : !sea.ptr<64> loc("_48"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb35(%v70 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb32:
  sea.br ^bb33
^bb33:
  %v71 = sea.ptr.null : !sea.ptr<64> loc("_44"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v72 = sea.ptr.cmp eq, %v60, %v71 : !sea.ptr<64> loc("_44"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v73 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v72, ^bb34, ^bb35(%v73 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb34:
  %v74 = sea.const 1 : i1
  sea.br ^bb35(%v74 : i1)
^bb35(%v75 : i1):
  sea.br ^bb36
^bb36:
  %v76 = sea.const 0 : i64 loc("_51")
  %v77 = sea.icmp ne, %v17, %v76 : i64 loc("_51")
  %v78 = sea.const 0 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v79 = sea.select %v75, %v77, %v78 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb37
^bb37:
  sea.br ^bb38
^bb38:
  sea.br ^bb39
^bb39:
  sea.br ^bb40
^bb40:
  sea.br ^bb41
^bb41:
  sea.br ^bb42
^bb42:
  sea.br ^bb43
^bb43:
  sea.br ^bb44
^bb44:
  sea.br ^bb45
^bb45:
  sea.br ^bb46
^bb46:
  sea.br ^bb47
^bb47:
  sea.br ^bb48
^bb48:
  sea.br ^bb49
^bb49:
  sea.br ^bb50
^bb50:
  sea.br ^bb51
^bb51:
  sea.br ^bb52
^bb52:
  sea.br ^bb53
^bb53:
  sea.br ^bb54
^bb54:
  sea.br ^bb55
^bb55:
  sea.br ^bb56
^bb56:
  sea.br ^bb57
^bb57:
  sea.br ^bb58
^bb58:
  sea.br ^bb59
^bb59:
  sea.br ^bb60
^bb60:
  sea.br ^bb61
^bb61:
  sea.br ^bb62
^bb62:
  sea.cond_br %v45, ^bb67, ^bb63 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb63:
  sea.br ^bb64
^bb64:
  sea.br ^bb65
^bb65:
  sea.br ^bb66
^bb66:
  %v80 = sea.ptr.null : !sea.ptr<64> loc("_81"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v81 = sea.ptr.cmp ne, %v60, %v80 : !sea.ptr<64> loc("_81"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb70(%v81 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb67:
  sea.br ^bb68
^bb68:
  %v82 = sea.ptr.null : !sea.ptr<64> loc("_77"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v83 = sea.ptr.cmp eq, %v60, %v82 : !sea.ptr<64> loc("_77"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v84 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v83, ^bb69, ^bb70(%v84 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb69:
  %v85 = sea.const 1 : i1
  sea.br ^bb70(%v85 : i1)
^bb70(%v86 : i1):
  sea.br ^bb71
^bb71:
  sea.br ^bb72
^bb72:
  sea.br ^bb73
^bb73:
  sea.br ^bb74
^bb74:
  sea.br ^bb75
^bb75:
  sea.br ^bb76
^bb76:
  sea.br ^bb77
^bb77:
  sea.br ^bb78
^bb78:
  sea.br ^bb79
^bb79:
  sea.br ^bb80
^bb80:
  sea.br ^bb81
^bb81:
  sea.br ^bb82
^bb82:
  sea.br ^bb83
^bb83:
  sea.br ^bb84
^bb84:
  sea.br ^bb85
^bb85:
  sea.br ^bb86
^bb86:
  sea.br ^bb87
^bb87:
  sea.br ^bb88
^bb88:
  sea.br ^bb89
^bb89:
  sea.br ^bb90
^bb90:
  %v87 = sea.const 1 : i1 loc("_102")
  %v88 = sea.and %v86, %v87 : i1 loc("_102")
  %v89 = sea.const 0 : i1 loc("or.cond14")
  %v90 = sea.select %v88, %v77, %v89 : i1 loc("or.cond14")
  sea.cond_br %v90, ^bb91, ^bb116
^bb91:
  %v91 = sea.ptr.null : !sea.ptr<64> loc("_104"("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":44:5))
  %v92 = sea.ptr.cmp eq, %v60, %v91 : !sea.ptr<64> loc("_104"("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":44:5))
  sea.cond_br %v92, ^bb93, ^bb92 loc("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":44:5)
^bb92:
  %v93 = sea.mul %v18, %v17 : i64 loc("_106"("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":44:5))
  %v94 = sea.icmp eq, %v26, %v93 : i64 loc("_107"("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":44:5))
  %v95 = sea.const 1 : i1 loc("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":44:5)
  %v96 = sea.xor %v94, %v95 : i1 loc("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":44:5)
  sea.assume %v96 loc("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":44:5)
  sea.br ^bb116 loc("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":44:5)
^bb93:
  %v97 = sea.const 1 : i1 loc("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":44:5)
  %v98 = sea.xor %v45, %v97 : i1 loc("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":44:5)
  sea.assume %v98 loc("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":44:5)
  sea.br ^bb116 loc("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":44:5)
^bb94:
  %v99 = sea.const 0 : i64 loc("aws-c-common/include/aws/common/array_list.inl":31:9)
  sea.br ^bb95(%v99 : i64) loc("aws-c-common/include/aws/common/array_list.inl":31:9)
^bb95(%v100 : i64):
  sea.br ^bb96
^bb96:
  sea.br ^bb97
^bb97:
  sea.br ^bb98
^bb98:
  sea.br ^bb99
^bb99:
  sea.br ^bb100
^bb100:
  %v101 = sea.const 0 : i64 loc(".not3.i47.i.4"("aws-c-common/include/aws/common/zero.inl":27:13))
  %v102 = sea.icmp eq, %v100, %v101 : i64 loc(".not3.i47.i.4"("aws-c-common/include/aws/common/zero.inl":27:13))
  sea.br ^bb101
^bb101:
  sea.br ^bb102
^bb102:
  sea.br ^bb103
^bb103:
  sea.br ^bb104
^bb104:
  %v103 = sea.const 0 : i64 loc(".not3.i51.i.4")
  %v104 = sea.icmp eq, %v100, %v103 : i64 loc(".not3.i51.i.4")
  %v105 = sea.const 1 : i1 loc("or.cond10")
  %v106 = sea.and %v105, %v104 : i1 loc("or.cond10")
  sea.cond_br %v106, ^bb105, ^bb116
^bb105:
  sea.br ^bb106
^bb106:
  sea.br ^bb107
^bb107:
  sea.br ^bb108
^bb108:
  sea.br ^bb109
^bb109:
  sea.br ^bb110
^bb110:
  sea.br ^bb111
^bb111:
  sea.br ^bb112
^bb112:
  sea.br ^bb113
^bb113:
  sea.br ^bb114
^bb114:
  sea.br ^bb115
^bb115:
  %v107 = sea.const 1 : i1 loc("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":51:5)
  %v108 = sea.const 1 : i1 loc("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":51:5)
  %v109 = sea.xor %v107, %v108 : i1 loc("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":51:5)
  sea.assume %v109 loc("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":51:5)
  sea.br ^bb116 loc("seahorn/jobs/priority_queue_init_dynamic/aws_priority_queue_init_dynamic_harness.c":51:5)
^bb116:
  sea.br ^bb117
^bb117:
  %v110 = sea.const 0 : i1
  sea.assert %v110
  sea.halt
}
