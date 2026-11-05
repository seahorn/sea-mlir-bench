// Exported from SeaHorn (array_list_shrink_to_fit2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm16")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm17")
  %v2 = sea.mem.nondet "region.56" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm18")
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
  sea.assume %v67 loc("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":20:5)
  %v68 = sea.nondet "nd_size_t" [10] : i64 loc("_46"("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":23:16))
  sea.br ^bb29
^bb29:
  %v69 = sea.const 0 : i64 loc(".not.i23.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v70 = sea.icmp eq, %v23, %v69 : i64 loc(".not.i23.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  sea.cond_br %v70, ^bb32, ^bb30 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb30:
  sea.br ^bb31
^bb31:
  %v71 = sea.ptr.null : !sea.ptr<64> loc(".not1.i24.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v72 = sea.ptr.cmp eq, %v38, %v71 : !sea.ptr<64> loc(".not1.i24.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v73 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v74 = sea.xor %v72, %v73 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v74 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb32 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb32:
  sea.br ^bb33
^bb33:
  %v75 = sea.icmp ugt, %v23, %v68 : i64 loc(".not.i17.i"("aws-c-common/include/aws/common/array_list.inl":209:11))
  sea.cond_br %v75, ^bb38, ^bb34 loc("aws-c-common/include/aws/common/array_list.inl":209:9)
^bb34:
  sea.br ^bb35
^bb35:
  %v76 = sea.ptr.null : !sea.ptr<64> loc(".not.i27.i"("aws-c-common/include/aws/common/array_list.inl":299:9))
  %v77 = sea.ptr.cmp eq, %v38, %v76 : !sea.ptr<64> loc(".not.i27.i"("aws-c-common/include/aws/common/array_list.inl":299:9))
  sea.cond_br %v77, ^bb50(%v37, %v42, %v23 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64), ^bb36 loc("aws-c-common/include/aws/common/array_list.inl":299:9)
^bb36:
  sea.br ^bb37
^bb37:
  %v78 = sea.const 0 : i64 loc("aws-c-common/include/aws/common/array_list.inl":303:22)
  %v79 = sea.store %v42[%v24], %v78 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":303:22)
  %v80 = sea.const 0 : i64 loc("aws-c-common/include/aws/common/array_list.inl":304:5)
  sea.br ^bb50(%v37, %v79, %v80 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/include/aws/common/array_list.inl":304:5)
^bb38:
  %v81 = sea.const 0 : i64 loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":215:11))
  %v82 = sea.icmp eq, %v68, %v81 : i64 loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":215:11))
  sea.cond_br %v82, ^bb50(%v37, %v42, %v23 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64), ^bb39 loc("aws-c-common/include/aws/common/array_list.inl":215:9)
^bb39:
  sea.br ^bb40
^bb40:
  %v83 = sea.mul %v68, %v20 : i64 loc("_58"("aws-c-common/include/aws/common/array_list.inl":216:48))
  sea.br ^bb41
^bb41:
  sea.br ^bb42
^bb42:
  %v84 = sea.ptr.null : !sea.ptr<64> loc(".not1.i21.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v85 = sea.ptr.cmp eq, %v38, %v84 : !sea.ptr<64> loc(".not1.i21.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v86 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v87 = sea.xor %v85, %v86 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v87 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb43
^bb43:
  %v88 = sea.sub %v23, %v68 : i64 loc("_61"("aws-c-common/include/aws/common/array_list.inl":217:62))
  sea.br ^bb44
^bb44:
  %v89 = sea.mul %v88, %v20 : i64 loc("_63"("aws-c-common/include/aws/common/array_list.inl":218:50))
  sea.br ^bb45
^bb45:
  sea.br ^bb46
^bb46:
  %v90 = sea.ptr.index %v38 [%v83] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_66"("aws-c-common/include/aws/common/array_list.inl":219:51))
  %v91 = sea.ptr.dereferenceable %v38, %v89 : !sea.ptr<64>, i64 loc("_67"("seahorn/lib/bcmp.c":142:3))
  %v92 = sea.ptr.dereferenceable %v38, %v89 : !sea.ptr<64>, i64 loc("_68"("seahorn/lib/bcmp.c":142:3))
  sea.cond_br %v92, ^bb47, ^bb116 loc("seahorn/lib/bcmp.c":142:3)
^bb47:
  %v93 = sea.ptr.dereferenceable %v90, %v89 : !sea.ptr<64>, i64 loc("_70"("seahorn/lib/bcmp.c":143:3))
  %v94 = sea.ptr.dereferenceable %v90, %v89 : !sea.ptr<64>, i64 loc("_71"("seahorn/lib/bcmp.c":143:3))
  sea.cond_br %v94, ^bb48, ^bb116 loc("seahorn/lib/bcmp.c":143:3)
^bb48:
  %v95 = sea.memmove %v37[%v38], %v37[%v90], %v89 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":144:10)
  sea.br ^bb49
^bb49:
  %v96 = sea.store %v42[%v24], %v88 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":220:22)
  sea.br ^bb50(%v95, %v96, %v88 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/include/aws/common/array_list.inl":224:5)
^bb50(%v97 : !sea.mem<!sea.ptr<64>, i8>, %v98 : !sea.mem<!sea.ptr<64>, i8>, %v99 : i64):
  sea.tracking_on loc("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":27:5)
  sea.br ^bb51
^bb51:
  %v100 = sea.load %v98[%v4] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_75"("aws-c-common/source/array_list.c":29:15))
  %v101 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("aws-c-common/source/array_list.c":29:9))
  %v102 = sea.ptr.cmp eq, %v100, %v101 : !sea.ptr<64> loc(".not.i.i"("aws-c-common/source/array_list.c":29:9))
  sea.cond_br %v102, ^bb79, ^bb52 loc("aws-c-common/source/array_list.c":29:9)
^bb52:
  sea.br ^bb53
^bb53:
  sea.br ^bb54
^bb54:
  %v103 = sea.load %v98[%v21] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_79"("aws-c-common/source/array_list.c":31:54))
  sea.br ^bb55
^bb55:
  %v104 = sea.mul %v99, %v103 : i64 loc("_81"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v105 = sea.umulo %v99, %v103 : i64 loc("_81"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v105, ^bb77, ^bb56 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb56:
  sea.br ^bb57
^bb57:
  %v106 = sea.load %v98[%v18] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_85"("aws-c-common/source/array_list.c":36:32))
  %v107 = sea.icmp ult, %v104, %v106 : i64 loc("_86"("aws-c-common/source/array_list.c":36:24))
  sea.cond_br %v107, ^bb59, ^bb58 loc("aws-c-common/source/array_list.c":36:13)
^bb58:
  %v108 = sea.load %v98[%v39] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc(".pr"("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":31:9))
  sea.br ^bb72(%v98, %v106, %v108 : !sea.mem<!sea.ptr<64>, i8>, i64, !sea.ptr<64>) loc("aws-c-common/source/array_list.c":54:5)
^bb59:
  %v109 = sea.const 0 : i64 loc(".not4.i.i"("aws-c-common/source/array_list.c":39:28))
  %v110 = sea.icmp eq, %v104, %v109 : i64 loc(".not4.i.i"("aws-c-common/source/array_list.c":39:28))
  %v111 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/array_list.c":39:17)
  sea.cond_br %v110, ^bb69(%v111 : !sea.ptr<64>), ^bb60 loc("aws-c-common/source/array_list.c":39:17)
^bb60:
  sea.br ^bb61
^bb61:
  %v112 = sea.nondet "nd_malloc_is_fail" [11] : i1 loc("_90"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v112, ^bb68, ^bb62 loc("seahorn/lib/sea_allocators.c":11:10)
^bb62:
  %v113 = sea.const 1 : i64 loc("malloc42.i")
  %v114 = sea.mul %v104, %v113 : i64 loc("malloc42.i")
  %v115 = sea.alloca %v114 align 16 [12] : i64 -> !sea.ptr<64> loc("malloc42.i")
  %v116 = sea.memhavoc %v97[%v115], %v104 [13] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb63
^bb63:
  %v117 = sea.load %v98[%v39] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_93"("aws-c-common/source/array_list.c":46:40))
  %v118 = sea.ptr.dereferenceable %v115, %v104 : !sea.ptr<64>, i64 loc("_94"("seahorn/lib/bcmp.c":161:3))
  %v119 = sea.ptr.dereferenceable %v115, %v104 : !sea.ptr<64>, i64 loc("_95"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v119, ^bb64, ^bb116 loc("seahorn/lib/bcmp.c":161:3)
^bb64:
  %v120 = sea.ptr.dereferenceable %v117, %v104 : !sea.ptr<64>, i64 loc("_97"("seahorn/lib/bcmp.c":162:3))
  %v121 = sea.ptr.dereferenceable %v117, %v104 : !sea.ptr<64>, i64 loc("_98"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v121, ^bb65, ^bb116 loc("seahorn/lib/bcmp.c":162:3)
^bb65:
  sea.br ^bb66
^bb66:
  sea.br ^bb67
^bb67:
  sea.br ^bb69(%v115 : !sea.ptr<64>) loc("aws-c-common/source/array_list.c":48:13)
^bb68:
  sea.br ^bb78 loc("aws-c-common/source/array_list.c":41:21)
^bb69(%v122 : !sea.ptr<64>):
  sea.br ^bb70
^bb70:
  sea.br ^bb71
^bb71:
  %v123 = sea.store %v98[%v18], %v104 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/array_list.c":50:32)
  sea.br ^bb72(%v123, %v104, %v122 : !sea.mem<!sea.ptr<64>, i8>, i64, !sea.ptr<64>)
^bb72(%v124 : !sea.mem<!sea.ptr<64>, i8>, %v125 : i64, %v126 : !sea.ptr<64>):
  %v127 = sea.const 0 : i64 loc("_105"("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":31:9))
  %v128 = sea.icmp eq, %v125, %v127 : i64 loc("_105"("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":31:9))
  %v129 = sea.ptr.null : !sea.ptr<64> loc("_106"("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":31:9))
  %v130 = sea.ptr.cmp eq, %v126, %v129 : !sea.ptr<64> loc("_106"("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":31:9))
  %v131 = sea.const 0 : i1 loc("or.cond"("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":31:9))
  %v132 = sea.select %v128, %v130, %v131 : i1 loc("or.cond"("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":31:9))
  sea.cond_br %v132, ^bb76, ^bb73 loc("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":31:9)
^bb73:
  sea.cond_br %v130, ^bb75, ^bb74 loc("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":31:9)
^bb74:
  %v133 = sea.icmp eq, %v125, %v104 : i64 loc("_110"("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":31:9))
  sea.cond_br %v133, ^bb83(%v124, %v126 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb116 loc("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":31:9)
^bb75:
  sea.br ^bb116 loc("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":31:9)
^bb76:
  %v134 = sea.ptr.null : !sea.ptr<64>
  sea.br ^bb83(%v124, %v134 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>)
^bb77:
  sea.br ^bb78 loc("aws-c-common/source/array_list.c":31:13)
^bb78:
  sea.br ^bb80 loc("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":30:9)
^bb79:
  sea.br ^bb80 loc("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":30:9)
^bb80:
  %v135 = sea.mem.is_modified %v98[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_112"("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":36:9))
  %v136 = sea.const 1 : i1 loc("_113"("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":36:9))
  %v137 = sea.xor %v135, %v136 : i1 loc("_113"("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":36:9))
  %v138 = sea.mem.is_modified %v98[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_114"("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":36:9))
  sea.cond_br %v138, ^bb116, ^bb81 loc("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":36:9)
^bb81:
  %v139 = sea.load %v98[%v39] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_116"("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":37:9))
  %v140 = sea.mem.is_modified %v97[%v139] : !sea.mem<!sea.ptr<64>, i8> loc("_117"("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":37:9))
  %v141 = sea.const 1 : i1 loc("_118"("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":37:9))
  %v142 = sea.xor %v140, %v141 : i1 loc("_118"("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":37:9))
  %v143 = sea.mem.is_modified %v97[%v139] : !sea.mem<!sea.ptr<64>, i8> loc("_119"("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":37:9))
  sea.cond_br %v143, ^bb116, ^bb82 loc("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":37:9)
^bb82:
  %v144 = sea.mem.is_modified %v7[%v100] : !sea.mem<!sea.ptr<64>, i8> loc("_121"("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":38:9))
  %v145 = sea.const 1 : i1 loc("_122"("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":38:9))
  %v146 = sea.xor %v144, %v145 : i1 loc("_122"("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":38:9))
  %v147 = sea.mem.is_modified %v7[%v100] : !sea.mem<!sea.ptr<64>, i8> loc("_123"("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":38:9))
  sea.cond_br %v147, ^bb116, ^bb83(%v98, %v139 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":38:9)
^bb83(%v148 : !sea.mem<!sea.ptr<64>, i8>, %v149 : !sea.ptr<64>):
  sea.br ^bb84
^bb84:
  sea.br ^bb85
^bb85:
  %v150 = sea.load %v148[%v21] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_127"("aws-c-common/include/aws/common/array_list.inl":91:51))
  sea.br ^bb86
^bb86:
  %v151 = sea.mul %v99, %v150 : i64 loc("_129"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v152 = sea.umulo %v99, %v150 : i64 loc("_129"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v152, ^bb87, ^bb88 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb87:
  sea.br ^bb88 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb88:
  %v153 = sea.const 1 : i1 loc("_133"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v154 = sea.xor %v152, %v153 : i1 loc("_133"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb89
^bb89:
  %v155 = sea.load %v148[%v18] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_135"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v156 = sea.icmp uge, %v155, %v151 : i64 loc("_136"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb90
^bb90:
  %v157 = sea.const 0 : i64 loc("_138"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v158 = sea.icmp eq, %v155, %v157 : i64 loc("_138"("aws-c-common/include/aws/common/array_list.inl":93:26))
  sea.cond_br %v158, ^bb95, ^bb91 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb91:
  sea.br ^bb92
^bb92:
  sea.br ^bb93
^bb93:
  sea.br ^bb94
^bb94:
  %v159 = sea.ptr.null : !sea.ptr<64> loc("_145"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v160 = sea.ptr.cmp ne, %v149, %v159 : !sea.ptr<64> loc("_145"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb98(%v160 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb95:
  sea.br ^bb96
^bb96:
  %v161 = sea.ptr.null : !sea.ptr<64> loc("_141"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v162 = sea.ptr.cmp eq, %v149, %v161 : !sea.ptr<64> loc("_141"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v163 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v162, ^bb97, ^bb98(%v163 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb97:
  %v164 = sea.const 1 : i1
  sea.br ^bb98(%v164 : i1)
^bb98(%v165 : i1):
  sea.br ^bb99
^bb99:
  %v166 = sea.const 0 : i1 loc("or.cond.i9.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v167 = sea.select %v154, %v156, %v166 : i1 loc("or.cond.i9.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v168 = sea.const 0 : i1 loc("or.cond3.i10.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v169 = sea.select %v167, %v165, %v168 : i1 loc("or.cond3.i10.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v170 = sea.const 0 : i64 loc("_148")
  %v171 = sea.icmp ne, %v150, %v170 : i64 loc("_148")
  %v172 = sea.const 0 : i1 loc("spec.select22"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v173 = sea.select %v169, %v171, %v172 : i1 loc("spec.select22"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb100
^bb100:
  sea.br ^bb101
^bb101:
  sea.br ^bb102
^bb102:
  sea.cond_br %v152, ^bb103, ^bb104 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb103:
  sea.br ^bb104 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb104:
  sea.br ^bb105
^bb105:
  sea.br ^bb106
^bb106:
  sea.cond_br %v158, ^bb111, ^bb107 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb107:
  sea.br ^bb108
^bb108:
  sea.br ^bb109
^bb109:
  sea.br ^bb110
^bb110:
  %v174 = sea.ptr.null : !sea.ptr<64> loc("_161"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v175 = sea.ptr.cmp ne, %v149, %v174 : !sea.ptr<64> loc("_161"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb114(%v175 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb111:
  sea.br ^bb112
^bb112:
  %v176 = sea.ptr.null : !sea.ptr<64> loc("_157"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v177 = sea.ptr.cmp eq, %v149, %v176 : !sea.ptr<64> loc("_157"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v178 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v177, ^bb113, ^bb114(%v178 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb113:
  %v179 = sea.const 1 : i1
  sea.br ^bb114(%v179 : i1)
^bb114(%v180 : i1):
  sea.br ^bb115
^bb115:
  %v181 = sea.const 0 : i1 loc("or.cond3.i15.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v182 = sea.select %v167, %v180, %v181 : i1 loc("or.cond3.i15.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v183 = sea.const 0 : i1 loc("spec.select23"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v184 = sea.select %v182, %v171, %v183 : i1 loc("spec.select23"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v185 = sea.const 1 : i1 loc("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":40:5)
  %v186 = sea.xor %v184, %v185 : i1 loc("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":40:5)
  sea.assume %v186 loc("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":40:5)
  sea.br ^bb116 loc("seahorn/jobs2/array_list_shrink_to_fit2/aws_array_list_shrink_to_fit_harness2.c":40:5)
^bb116:
  sea.br ^bb117
^bb117:
  %v187 = sea.const 0 : i1
  sea.assert %v187
  sea.halt
}
