// Exported from SeaHorn (array_list_ensure_capacity2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm13")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm14")
  %v2 = sea.mem.nondet "region.56" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm15")
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
  sea.assume %v67 loc("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":19:5)
  sea.tracking_on loc("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":22:5)
  %v68 = sea.nondet "nd_size_t" [10] : i64 loc("_46"("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":28:20))
  sea.br ^bb29
^bb29:
  %v69 = sea.const 1 : i64 loc("_48"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v70 = sea.add %v68, %v69 : i64 loc("_48"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v71 = sea.const 1 : i64 loc("_48"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v72 = sea.uaddo %v68, %v71 : i64 loc("_48"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v72, ^bb91, ^bb30 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb30:
  sea.br ^bb31
^bb31:
  sea.br ^bb32
^bb32:
  %v73 = sea.mul %v70, %v20 : i64 loc("_53"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v74 = sea.umulo %v70, %v20 : i64 loc("_53"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v74, ^bb90, ^bb33 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb33:
  sea.br ^bb34
^bb34:
  %v75 = sea.icmp ult, %v17, %v73 : i64 loc("_58"("aws-c-common/source/array_list.c":116:28))
  sea.cond_br %v75, ^bb35, ^bb52(%v38, %v17 : !sea.ptr<64>, i64) loc("aws-c-common/source/array_list.c":116:9)
^bb35:
  sea.br ^bb36
^bb36:
  sea.br ^bb37
^bb37:
  %v76 = sea.const 1 : i64 loc("_62"("aws-c-common/source/array_list.c":129:58))
  %v77 = sea.shl %v17, %v76 : i64 loc("_62"("aws-c-common/source/array_list.c":129:58))
  %v78 = sea.umax %v77, %v73 : i64 loc("_63"("aws-c-common/source/array_list.c":130:27))
  sea.br ^bb38
^bb38:
  %v79 = sea.icmp ult, %v78, %v17 : i64 loc("_65"("aws-c-common/source/array_list.c":132:22))
  sea.cond_br %v79, ^bb89, ^bb39 loc("aws-c-common/source/array_list.c":132:13)
^bb39:
  sea.br ^bb40
^bb40:
  %v80 = sea.nondet "nd_malloc_is_fail" [11] : i1 loc("_69"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v80, ^bb88, ^bb41 loc("seahorn/lib/sea_allocators.c":11:10)
^bb41:
  %v81 = sea.const 1 : i64 loc("malloc27.i")
  %v82 = sea.mul %v78, %v81 : i64 loc("malloc27.i")
  %v83 = sea.alloca %v82 align 16 [12] : i64 -> !sea.ptr<64> loc("malloc27.i")
  %v84 = sea.memhavoc %v37[%v83], %v78 [13] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb42
^bb42:
  %v85 = sea.ptr.null : !sea.ptr<64> loc(".not5.i.i"("aws-c-common/source/array_list.c":150:13))
  %v86 = sea.ptr.cmp eq, %v38, %v85 : !sea.ptr<64> loc(".not5.i.i"("aws-c-common/source/array_list.c":150:13))
  sea.cond_br %v86, ^bb50, ^bb43 loc("aws-c-common/source/array_list.c":150:13)
^bb43:
  sea.br ^bb44
^bb44:
  sea.br ^bb45
^bb45:
  %v87 = sea.ptr.dereferenceable %v83, %v17 : !sea.ptr<64>, i64 loc("_75"("seahorn/lib/bcmp.c":161:3))
  %v88 = sea.ptr.dereferenceable %v83, %v17 : !sea.ptr<64>, i64 loc("_76"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v88, ^bb46, ^bb95 loc("seahorn/lib/bcmp.c":161:3)
^bb46:
  %v89 = sea.ptr.dereferenceable %v38, %v17 : !sea.ptr<64>, i64 loc("_78"("seahorn/lib/bcmp.c":162:3))
  %v90 = sea.ptr.dereferenceable %v38, %v17 : !sea.ptr<64>, i64 loc("_79"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v90, ^bb47, ^bb95 loc("seahorn/lib/bcmp.c":162:3)
^bb47:
  %v91 = sea.memmove %v84[%v83], %v84[%v38], %v17 inplace align 16 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb48
^bb48:
  sea.br ^bb49
^bb49:
  sea.br ^bb50 loc("aws-c-common/source/array_list.c":160:9)
^bb50:
  sea.br ^bb51
^bb51:
  sea.br ^bb52(%v83, %v78 : !sea.ptr<64>, i64)
^bb52(%v92 : !sea.ptr<64>, %v93 : i64):
  sea.br ^bb53
^bb53:
  sea.br ^bb54
^bb54:
  sea.br ^bb55
^bb55:
  sea.cond_br %v50, ^bb56, ^bb57 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb56:
  sea.br ^bb57 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb57:
  sea.br ^bb58
^bb58:
  %v94 = sea.icmp uge, %v93, %v49 : i64 loc("_90"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb59
^bb59:
  %v95 = sea.const 0 : i64 loc("_92"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v96 = sea.icmp eq, %v93, %v95 : i64 loc("_92"("aws-c-common/include/aws/common/array_list.inl":93:26))
  sea.cond_br %v96, ^bb64, ^bb60 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb60:
  sea.br ^bb61
^bb61:
  sea.br ^bb62
^bb62:
  sea.br ^bb63
^bb63:
  %v97 = sea.ptr.null : !sea.ptr<64> loc("_99"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v98 = sea.ptr.cmp ne, %v92, %v97 : !sea.ptr<64> loc("_99"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb67(%v98 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb64:
  sea.br ^bb65
^bb65:
  %v99 = sea.ptr.null : !sea.ptr<64> loc("_95"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v100 = sea.ptr.cmp eq, %v92, %v99 : !sea.ptr<64> loc("_95"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v101 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v100, ^bb66, ^bb67(%v101 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb66:
  %v102 = sea.const 1 : i1
  sea.br ^bb67(%v102 : i1)
^bb67(%v103 : i1):
  sea.br ^bb68
^bb68:
  %v104 = sea.const 0 : i1 loc("or.cond.i6.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v105 = sea.select %v52, %v94, %v104 : i1 loc("or.cond.i6.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v106 = sea.and %v105, %v103 : i1 loc("or.cond3.i7.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v107 = sea.const 0 : i1 loc("spec.select18"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v108 = sea.select %v106, %v65, %v107 : i1 loc("spec.select18"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb69
^bb69:
  sea.br ^bb70
^bb70:
  sea.br ^bb71
^bb71:
  sea.cond_br %v50, ^bb72, ^bb73 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb72:
  sea.br ^bb73 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb73:
  sea.br ^bb74
^bb74:
  sea.br ^bb75
^bb75:
  sea.cond_br %v96, ^bb80, ^bb76 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb76:
  sea.br ^bb77
^bb77:
  sea.br ^bb78
^bb78:
  sea.br ^bb79
^bb79:
  %v109 = sea.ptr.null : !sea.ptr<64> loc("_114"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v110 = sea.ptr.cmp ne, %v92, %v109 : !sea.ptr<64> loc("_114"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb83(%v110 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb80:
  sea.br ^bb81
^bb81:
  %v111 = sea.ptr.null : !sea.ptr<64> loc("_110"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v112 = sea.ptr.cmp eq, %v92, %v111 : !sea.ptr<64> loc("_110"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v113 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v112, ^bb82, ^bb83(%v113 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb82:
  %v114 = sea.const 1 : i1
  sea.br ^bb83(%v114 : i1)
^bb83(%v115 : i1):
  sea.br ^bb84
^bb84:
  %v116 = sea.and %v105, %v115 : i1 loc("or.cond3.i12.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.cond_br %v116, ^bb86, ^bb85 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb85:
  sea.br ^bb95 loc("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":32:9)
^bb86:
  %v117 = sea.const 0 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v118 = sea.icmp eq, %v20, %v117 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  sea.cond_br %v118, ^bb95, ^bb87 loc("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":32:9)
^bb87:
  %v119 = sea.icmp uge, %v93, %v17 : i64 loc("_119"("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":35:9))
  %v120 = sea.icmp ult, %v93, %v17 : i64 loc(".not1.i"("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":35:9))
  sea.cond_br %v120, ^bb95, ^bb94 loc("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":35:9)
^bb88:
  sea.br ^bb92 loc("aws-c-common/source/array_list.c":145:13)
^bb89:
  sea.br ^bb92 loc("aws-c-common/source/array_list.c":140:13)
^bb90:
  sea.br ^bb92
^bb91:
  sea.br ^bb92 loc("aws-c-common/source/array_list.c":111:9)
^bb92:
  %v121 = sea.mem.is_modified %v42[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_120"("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":38:9))
  %v122 = sea.const 1 : i1 loc("_121"("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":38:9))
  %v123 = sea.xor %v121, %v122 : i1 loc("_121"("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":38:9))
  %v124 = sea.mem.is_modified %v42[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_122"("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":38:9))
  sea.cond_br %v124, ^bb95, ^bb93 loc("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":38:9)
^bb93:
  %v125 = sea.mem.is_modified %v37[%v38] : !sea.mem<!sea.ptr<64>, i8> loc("_124"("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":39:9))
  %v126 = sea.const 1 : i1 loc("_125"("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":39:9))
  %v127 = sea.xor %v125, %v126 : i1 loc("_125"("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":39:9))
  %v128 = sea.mem.is_modified %v37[%v38] : !sea.mem<!sea.ptr<64>, i8> loc("_126"("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":39:9))
  sea.cond_br %v128, ^bb95, ^bb94 loc("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":39:9)
^bb94:
  %v129 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_128"("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":42:5))
  %v130 = sea.mem.is_modified %v7[%v129] : !sea.mem<!sea.ptr<64>, i8> loc("_128"("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":42:5))
  %v131 = sea.const 1 : i1 loc("_129"("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":42:5))
  %v132 = sea.xor %v130, %v131 : i1 loc("_129"("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":42:5))
  %v133 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_130"("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":42:5))
  %v134 = sea.mem.is_modified %v7[%v133] : !sea.mem<!sea.ptr<64>, i8> loc("_130"("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":42:5))
  sea.assume %v134 loc("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":42:5)
  sea.br ^bb95 loc("seahorn/jobs2/array_list_ensure_capacity2/aws_array_list_ensure_capacity_harness2.c":42:5)
^bb95:
  sea.br ^bb96
^bb96:
  %v135 = sea.const 0 : i1
  sea.assert %v135
  sea.halt
}
