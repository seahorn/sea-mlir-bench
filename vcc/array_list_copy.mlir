// Exported from SeaHorn (array_list_copy.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm25")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm26")
  %v2 = sea.mem.nondet "region.56" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm27")
  %v3 = sea.mem.nondet "region.96" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm28")
  %v4 = sea.const 40 : i64 loc("_0")
  %v5 = sea.alloca %v4 align 8 [4] : i64 -> !sea.ptr<64> loc("_0")
  %v6 = sea.const 40 : i64 loc("_1")
  %v7 = sea.alloca %v6 align 8 [5] : i64 -> !sea.ptr<64> loc("_1")
  %v8 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v9 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v10 = sea.store %v0[%v8], %v9 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v11 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_2")
  %v12 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_2")
  %v13 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v14 = sea.store %v10[%v12], %v13 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v15 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_3")
  %v16 = sea.ptr.index %v15 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_3")
  %v17 = sea.const 0 : i8
  %v18 = sea.const 24 : i64
  %v19 = sea.memset %v14[%v16], %v17, %v18 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v20 = sea.nondet "nd_size_t" [6] : i64 loc("_4"("seahorn/lib/array_list_helper.c":26:24))
  %v21 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_5"("seahorn/lib/array_list_helper.c":26:9))
  sea.br ^bb1
^bb1:
  %v22 = sea.store %v1[%v21], %v20 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":26:22)
  %v23 = sea.nondet "nd_size_t" [7] : i64 loc("_7"("seahorn/lib/array_list_helper.c":27:21))
  %v24 = sea.ptr.index %v5 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_8"("seahorn/lib/array_list_helper.c":27:9))
  sea.br ^bb2
^bb2:
  %v25 = sea.store %v22[%v24], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":27:19)
  %v26 = sea.nondet "nd_size_t" [8] : i64 loc("_10"("seahorn/lib/array_list_helper.c":28:18))
  %v27 = sea.ptr.index %v5 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_11"("seahorn/lib/array_list_helper.c":28:9))
  sea.br ^bb3
^bb3:
  %v28 = sea.store %v25[%v27], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":28:16)
  sea.br ^bb4
^bb4:
  %v29 = sea.const 0 : i64 loc("_14"("seahorn/lib/proof_allocators.c":21:15))
  %v30 = sea.icmp eq, %v20, %v29 : i64 loc("_14"("seahorn/lib/proof_allocators.c":21:15))
  %v31 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v30, ^bb8(%v3, %v31 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb5 loc("seahorn/lib/proof_allocators.c":21:10)
^bb5:
  %v32 = sea.nondet "nd_malloc_is_fail" [9] : i1 loc("_16"("seahorn/lib/sea_allocators.c":11:10))
  %v33 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v32, ^bb7(%v3, %v33 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb6 loc("seahorn/lib/sea_allocators.c":11:10)
^bb6:
  %v34 = sea.const 1 : i64 loc("malloc.i")
  %v35 = sea.mul %v20, %v34 : i64 loc("malloc.i")
  %v36 = sea.alloca %v35 align 16 [10] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb7(%v3, %v36 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb7(%v37 : !sea.mem<!sea.ptr<64>, i8>, %v38 : !sea.ptr<64>):
  %v39 = sea.memhavoc %v37[%v38], %v20 [11] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb8(%v39, %v38 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb8(%v40 : !sea.mem<!sea.ptr<64>, i8>, %v41 : !sea.ptr<64>):
  %v42 = sea.ptr.index %v5 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_20"("seahorn/lib/array_list_helper.c":29:9))
  sea.br ^bb9
^bb9:
  %v43 = sea.store %v28[%v42], %v41 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":29:14)
  sea.br ^bb10
^bb10:
  %v44 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  %v45 = sea.store %v43[%v5], %v44 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  %v46 = sea.const 3 : i64 loc("_23"("seahorn/lib/array_list_helper.c":38:47))
  %v47 = sea.icmp ult, %v23, %v46 : i64 loc("_23"("seahorn/lib/array_list_helper.c":38:47))
  %v48 = sea.const 9223372036854775809 : i64 loc("_24"("seahorn/lib/array_list_helper.c":39:41))
  %v49 = sea.icmp ult, %v26, %v48 : i64 loc("_24"("seahorn/lib/array_list_helper.c":39:41))
  %v50 = sea.const 0 : i1 loc("_25"("seahorn/lib/array_list_helper.c":40:31))
  %v51 = sea.select %v47, %v49, %v50 : i1 loc("_25"("seahorn/lib/array_list_helper.c":40:31))
  sea.assume %v51 loc("seahorn/lib/array_list_helper.c":31:3)
  %v52 = sea.nondet "nd_size_t" [12] : i64 loc("_26"("seahorn/lib/array_list_helper.c":26:24))
  %v53 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_27"("seahorn/lib/array_list_helper.c":26:9))
  sea.br ^bb13
^bb13:
  %v54 = sea.store %v2[%v53], %v52 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":26:22)
  %v55 = sea.nondet "nd_size_t" [13] : i64 loc("_29"("seahorn/lib/array_list_helper.c":27:21))
  %v56 = sea.ptr.index %v7 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_30"("seahorn/lib/array_list_helper.c":27:9))
  sea.br ^bb14
^bb14:
  %v57 = sea.store %v54[%v56], %v55 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":27:19)
  %v58 = sea.nondet "nd_size_t" [14] : i64 loc("_32"("seahorn/lib/array_list_helper.c":28:18))
  %v59 = sea.ptr.index %v7 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_33"("seahorn/lib/array_list_helper.c":28:9))
  sea.br ^bb15
^bb15:
  %v60 = sea.store %v57[%v59], %v58 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":28:16)
  sea.br ^bb16
^bb16:
  %v61 = sea.const 0 : i64 loc("_36"("seahorn/lib/proof_allocators.c":21:15))
  %v62 = sea.icmp eq, %v52, %v61 : i64 loc("_36"("seahorn/lib/proof_allocators.c":21:15))
  %v63 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v62, ^bb20(%v40, %v63 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb17 loc("seahorn/lib/proof_allocators.c":21:10)
^bb17:
  %v64 = sea.nondet "nd_malloc_is_fail" [15] : i1 loc("_38"("seahorn/lib/sea_allocators.c":11:10))
  %v65 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v64, ^bb19(%v40, %v65 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb18 loc("seahorn/lib/sea_allocators.c":11:10)
^bb18:
  %v66 = sea.const 1 : i64 loc("malloc59.i")
  %v67 = sea.mul %v52, %v66 : i64 loc("malloc59.i")
  %v68 = sea.alloca %v67 align 16 [16] : i64 -> !sea.ptr<64> loc("malloc59.i")
  sea.br ^bb19(%v40, %v68 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb19(%v69 : !sea.mem<!sea.ptr<64>, i8>, %v70 : !sea.ptr<64>):
  %v71 = sea.memhavoc %v69[%v70], %v52 [17] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb20(%v71, %v70 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb20(%v72 : !sea.mem<!sea.ptr<64>, i8>, %v73 : !sea.ptr<64>):
  %v74 = sea.ptr.index %v7 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_42"("seahorn/lib/array_list_helper.c":29:9))
  sea.br ^bb21
^bb21:
  %v75 = sea.store %v60[%v74], %v73 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":29:14)
  sea.br ^bb22
^bb22:
  %v76 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  %v77 = sea.store %v75[%v7], %v76 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  sea.br ^bb23
^bb23:
  sea.br ^bb24
^bb24:
  %v78 = sea.const 3 : i64 loc("_45"("seahorn/lib/array_list_helper.c":38:47))
  %v79 = sea.icmp ult, %v55, %v78 : i64 loc("_45"("seahorn/lib/array_list_helper.c":38:47))
  %v80 = sea.const 9223372036854775809 : i64 loc("_46"("seahorn/lib/array_list_helper.c":39:41))
  %v81 = sea.icmp ult, %v58, %v80 : i64 loc("_46"("seahorn/lib/array_list_helper.c":39:41))
  %v82 = sea.const 0 : i1 loc("_47"("seahorn/lib/array_list_helper.c":40:31))
  %v83 = sea.select %v79, %v81, %v82 : i1 loc("_47"("seahorn/lib/array_list_helper.c":40:31))
  sea.assume %v83 loc("seahorn/lib/array_list_helper.c":31:3)
  sea.br ^bb25
^bb25:
  sea.br ^bb26
^bb26:
  sea.br ^bb27
^bb27:
  %v84 = sea.mul %v26, %v23 : i64 loc("_51"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v85 = sea.umulo %v26, %v23 : i64 loc("_51"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v85, ^bb28, ^bb29 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb28:
  sea.br ^bb29 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb29:
  %v86 = sea.const 1 : i1 loc("_55"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v87 = sea.xor %v85, %v86 : i1 loc("_55"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb30
^bb30:
  %v88 = sea.icmp uge, %v20, %v84 : i64 loc("_57"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb31
^bb31:
  sea.cond_br %v30, ^bb36, ^bb32 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb32:
  sea.br ^bb33
^bb33:
  sea.br ^bb34
^bb34:
  sea.br ^bb35
^bb35:
  %v89 = sea.ptr.null : !sea.ptr<64> loc("_65"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v90 = sea.ptr.cmp ne, %v41, %v89 : !sea.ptr<64> loc("_65"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb39(%v90 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb36:
  sea.br ^bb37
^bb37:
  %v91 = sea.ptr.null : !sea.ptr<64> loc("_61"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v92 = sea.ptr.cmp eq, %v41, %v91 : !sea.ptr<64> loc("_61"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v93 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v92, ^bb38, ^bb39(%v93 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb38:
  %v94 = sea.const 1 : i1
  sea.br ^bb39(%v94 : i1)
^bb39(%v95 : i1):
  sea.br ^bb40
^bb40:
  %v96 = sea.const 0 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v97 = sea.select %v87, %v88, %v96 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v98 = sea.and %v97, %v95 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v99 = sea.const 0 : i64 loc("_68")
  %v100 = sea.icmp ne, %v23, %v99 : i64 loc("_68")
  %v101 = sea.const 0 : i1 loc("spec.select21"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v102 = sea.select %v98, %v100, %v101 : i1 loc("spec.select21"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.assume %v102 loc("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":21:5)
  sea.br ^bb41
^bb41:
  sea.br ^bb42
^bb42:
  sea.br ^bb43
^bb43:
  %v103 = sea.mul %v58, %v55 : i64 loc("_72"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v104 = sea.umulo %v58, %v55 : i64 loc("_72"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v104, ^bb44, ^bb45 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb44:
  sea.br ^bb45 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb45:
  %v105 = sea.const 1 : i1 loc("_76"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v106 = sea.xor %v104, %v105 : i1 loc("_76"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb46
^bb46:
  %v107 = sea.icmp uge, %v52, %v103 : i64 loc("_78"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb47
^bb47:
  sea.cond_br %v62, ^bb52, ^bb48 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb48:
  sea.br ^bb49
^bb49:
  sea.br ^bb50
^bb50:
  sea.br ^bb51
^bb51:
  %v108 = sea.ptr.null : !sea.ptr<64> loc("_86"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v109 = sea.ptr.cmp ne, %v73, %v108 : !sea.ptr<64> loc("_86"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb55(%v109 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb52:
  sea.br ^bb53
^bb53:
  %v110 = sea.ptr.null : !sea.ptr<64> loc("_82"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v111 = sea.ptr.cmp eq, %v73, %v110 : !sea.ptr<64> loc("_82"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v112 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v111, ^bb54, ^bb55(%v112 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb54:
  %v113 = sea.const 1 : i1
  sea.br ^bb55(%v113 : i1)
^bb55(%v114 : i1):
  sea.br ^bb56
^bb56:
  %v115 = sea.const 0 : i1 loc("or.cond.i6.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v116 = sea.select %v106, %v107, %v115 : i1 loc("or.cond.i6.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v117 = sea.and %v116, %v114 : i1 loc("or.cond3.i7.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v118 = sea.const 0 : i64 loc("_89")
  %v119 = sea.icmp ne, %v55, %v118 : i64 loc("_89")
  %v120 = sea.const 0 : i1 loc("spec.select22"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v121 = sea.select %v117, %v119, %v120 : i1 loc("spec.select22"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.assume %v121 loc("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":22:5)
  %v122 = sea.icmp eq, %v23, %v55 : i64 loc("_90"("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":24:27))
  sea.assume %v122 loc("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":24:5)
  %v123 = sea.ptr.null : !sea.ptr<64> loc("_91"("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":30:26))
  %v124 = sea.ptr.cmp ne, %v41, %v123 : !sea.ptr<64> loc("_91"("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":30:26))
  sea.assume %v124 loc("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":30:9)
  sea.br ^bb57
^bb57:
  sea.br ^bb58
^bb58:
  sea.assume %v122 loc("aws-c-common/source/array_list.c":61:5)
  sea.br ^bb59
^bb59:
  %v125 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("aws-c-common/source/array_list.c":62:5))
  %v126 = sea.ptr.cmp eq, %v41, %v125 : !sea.ptr<64> loc(".not.i.i"("aws-c-common/source/array_list.c":62:5))
  %v127 = sea.const 1 : i1 loc("aws-c-common/source/array_list.c":62:5)
  %v128 = sea.xor %v126, %v127 : i1 loc("aws-c-common/source/array_list.c":62:5)
  sea.assume %v128 loc("aws-c-common/source/array_list.c":62:5)
  sea.br ^bb60
^bb60:
  sea.br ^bb61
^bb61:
  sea.br ^bb62
^bb62:
  sea.cond_br %v85, ^bb93, ^bb63 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb63:
  sea.br ^bb64
^bb64:
  %v129 = sea.icmp ult, %v52, %v84 : i64 loc(".not2.i.i"("aws-c-common/source/array_list.c":73:26))
  sea.cond_br %v129, ^bb75, ^bb65 loc("aws-c-common/source/array_list.c":73:9)
^bb65:
  %v130 = sea.const 0 : i64 loc(".not6.i.i"("aws-c-common/source/array_list.c":74:23))
  %v131 = sea.icmp eq, %v84, %v130 : i64 loc(".not6.i.i"("aws-c-common/source/array_list.c":74:23))
  sea.cond_br %v131, ^bb71, ^bb66 loc("aws-c-common/source/array_list.c":74:13)
^bb66:
  sea.br ^bb67
^bb67:
  sea.br ^bb68
^bb68:
  %v132 = sea.ptr.dereferenceable %v73, %v84 : !sea.ptr<64>, i64 loc("_103"("seahorn/lib/bcmp.c":161:3))
  %v133 = sea.ptr.dereferenceable %v73, %v84 : !sea.ptr<64>, i64 loc("_104"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v133, ^bb69, ^bb166 loc("seahorn/lib/bcmp.c":161:3)
^bb69:
  %v134 = sea.ptr.dereferenceable %v41, %v84 : !sea.ptr<64>, i64 loc("_106"("seahorn/lib/bcmp.c":162:3))
  %v135 = sea.ptr.dereferenceable %v41, %v84 : !sea.ptr<64>, i64 loc("_107"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v135, ^bb70, ^bb166 loc("seahorn/lib/bcmp.c":162:3)
^bb70:
  %v136 = sea.memmove %v72[%v73], %v72[%v41], %v84 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb71 loc("aws-c-common/source/array_list.c":76:9)
^bb71:
  sea.br ^bb72
^bb72:
  sea.br ^bb73
^bb73:
  %v137 = sea.store %v77[%v59], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/array_list.c":77:20)
  %v138 = sea.load %v28[%v27] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc(".pre"("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":36:9))
  %v139 = sea.icmp eq, %v26, %v138 : i64 loc("_128"("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":36:9))
  sea.cond_br %v139, ^bb74, ^bb166 loc("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":36:9)
^bb74:
  %v140 = sea.load %v54[%v53] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc(".pre8"("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":37:9))
  %v141 = sea.load %v25[%v24] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc(".pre9"("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":37:9))
  sea.br ^bb91(%v137, %v141, %v140 : !sea.mem<!sea.ptr<64>, i8>, i64, i64) loc("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":36:9)
^bb75:
  sea.br ^bb76
^bb76:
  sea.br ^bb77
^bb77:
  %v142 = sea.nondet "nd_malloc_is_fail" [18] : i1 loc("_113"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v142, ^bb92, ^bb78 loc("seahorn/lib/sea_allocators.c":11:10)
^bb78:
  %v143 = sea.const 1 : i64 loc("malloc60.i")
  %v144 = sea.mul %v84, %v143 : i64 loc("malloc60.i")
  %v145 = sea.alloca %v144 align 16 [19] : i64 -> !sea.ptr<64> loc("malloc60.i")
  %v146 = sea.memhavoc %v72[%v145], %v84 [20] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb79
^bb79:
  %v147 = sea.ptr.dereferenceable %v145, %v84 : !sea.ptr<64>, i64 loc("_116"("seahorn/lib/bcmp.c":161:3))
  %v148 = sea.ptr.dereferenceable %v145, %v84 : !sea.ptr<64>, i64 loc("_117"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v148, ^bb80, ^bb166 loc("seahorn/lib/bcmp.c":161:3)
^bb80:
  %v149 = sea.ptr.dereferenceable %v41, %v84 : !sea.ptr<64>, i64 loc("_119"("seahorn/lib/bcmp.c":162:3))
  %v150 = sea.ptr.dereferenceable %v41, %v84 : !sea.ptr<64>, i64 loc("_120"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v150, ^bb81, ^bb166 loc("seahorn/lib/bcmp.c":162:3)
^bb81:
  %v151 = sea.memmove %v146[%v145], %v146[%v41], %v84 inplace align 16 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb82
^bb82:
  %v152 = sea.ptr.null : !sea.ptr<64> loc(".not5.i.i"("aws-c-common/source/array_list.c":93:13))
  %v153 = sea.ptr.cmp eq, %v73, %v152 : !sea.ptr<64> loc(".not5.i.i"("aws-c-common/source/array_list.c":93:13))
  sea.cond_br %v153, ^bb86, ^bb83 loc("aws-c-common/source/array_list.c":93:13)
^bb83:
  sea.br ^bb84
^bb84:
  sea.br ^bb85
^bb85:
  sea.br ^bb86 loc("aws-c-common/source/array_list.c":95:9)
^bb86:
  sea.br ^bb87
^bb87:
  %v154 = sea.store %v77[%v74], %v145 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/array_list.c":97:18)
  sea.br ^bb88
^bb88:
  sea.br ^bb89
^bb89:
  %v155 = sea.store %v154[%v59], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/array_list.c":98:20)
  sea.br ^bb90
^bb90:
  %v156 = sea.store %v155[%v53], %v84 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/array_list.c":99:26)
  sea.br ^bb91(%v156, %v23, %v84 : !sea.mem<!sea.ptr<64>, i8>, i64, i64) loc("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":36:9)
^bb91(%v157 : !sea.mem<!sea.ptr<64>, i8>, %v158 : i64, %v159 : i64):
  %v160 = sea.mul %v158, %v26 : i64 loc("_132"("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":37:9))
  %v161 = sea.icmp uge, %v159, %v160 : i64 loc("_133"("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":37:9))
  %v162 = sea.icmp ult, %v159, %v160 : i64 loc(".not1.i"("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":37:9))
  sea.cond_br %v162, ^bb166, ^bb95(%v157, %v159, %v26, %v158 : !sea.mem<!sea.ptr<64>, i8>, i64, i64, i64) loc("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":37:9)
^bb92:
  sea.br ^bb94 loc("aws-c-common/source/array_list.c":86:13)
^bb93:
  sea.br ^bb94 loc("aws-c-common/source/array_list.c":67:9)
^bb94:
  sea.br ^bb95(%v77, %v52, %v58, %v23 : !sea.mem<!sea.ptr<64>, i8>, i64, i64, i64) loc("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":34:9)
^bb95(%v163 : !sea.mem<!sea.ptr<64>, i8>, %v164 : i64, %v165 : i64, %v166 : i64):
  sea.br ^bb96
^bb96:
  sea.br ^bb97
^bb97:
  sea.br ^bb98
^bb98:
  %v167 = sea.mul %v26, %v166 : i64 loc("_141"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v168 = sea.umulo %v26, %v166 : i64 loc("_141"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v168, ^bb99, ^bb100 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb99:
  sea.br ^bb100 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb100:
  %v169 = sea.const 1 : i1 loc("_145"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v170 = sea.xor %v168, %v169 : i1 loc("_145"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb101
^bb101:
  %v171 = sea.load %v22[%v21] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_147"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v172 = sea.icmp uge, %v171, %v167 : i64 loc("_148"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb102
^bb102:
  %v173 = sea.const 0 : i64 loc("_150"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v174 = sea.icmp eq, %v171, %v173 : i64 loc("_150"("aws-c-common/include/aws/common/array_list.inl":93:26))
  sea.cond_br %v174, ^bb107, ^bb103 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb103:
  sea.br ^bb104
^bb104:
  sea.br ^bb105
^bb105:
  sea.br ^bb106
^bb106:
  %v175 = sea.load %v43[%v42] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_158"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v176 = sea.ptr.null : !sea.ptr<64> loc("_159"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v177 = sea.ptr.cmp ne, %v175, %v176 : !sea.ptr<64> loc("_159"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb110(%v175, %v177 : !sea.ptr<64>, i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb107:
  sea.br ^bb108
^bb108:
  %v178 = sea.load %v43[%v42] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_153"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v179 = sea.ptr.null : !sea.ptr<64> loc("_154"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v180 = sea.ptr.cmp eq, %v178, %v179 : !sea.ptr<64> loc("_154"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v181 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v180, ^bb109, ^bb110(%v178, %v181 : !sea.ptr<64>, i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb109:
  %v182 = sea.ptr.null : !sea.ptr<64>
  %v183 = sea.const 1 : i1
  sea.br ^bb110(%v182, %v183 : !sea.ptr<64>, i1)
^bb110(%v184 : !sea.ptr<64>, %v185 : i1):
  sea.br ^bb111
^bb111:
  %v186 = sea.const 0 : i1 loc("or.cond.i11.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v187 = sea.select %v170, %v172, %v186 : i1 loc("or.cond.i11.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v188 = sea.const 0 : i1 loc("or.cond3.i12.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v189 = sea.select %v187, %v185, %v188 : i1 loc("or.cond3.i12.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v190 = sea.const 0 : i64 loc("_163")
  %v191 = sea.icmp ne, %v166, %v190 : i64 loc("_163")
  %v192 = sea.const 0 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v193 = sea.select %v189, %v191, %v192 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb112
^bb112:
  sea.br ^bb113
^bb113:
  sea.br ^bb114
^bb114:
  sea.cond_br %v168, ^bb115, ^bb116 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb115:
  sea.br ^bb116 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb116:
  sea.br ^bb117
^bb117:
  sea.br ^bb118
^bb118:
  sea.cond_br %v174, ^bb123, ^bb119 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb119:
  sea.br ^bb120
^bb120:
  sea.br ^bb121
^bb121:
  sea.br ^bb122
^bb122:
  %v194 = sea.ptr.null : !sea.ptr<64> loc("_176"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v195 = sea.ptr.cmp ne, %v184, %v194 : !sea.ptr<64> loc("_176"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb126(%v195 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb123:
  sea.br ^bb124
^bb124:
  %v196 = sea.ptr.null : !sea.ptr<64> loc("_172"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v197 = sea.ptr.cmp eq, %v184, %v196 : !sea.ptr<64> loc("_172"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v198 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v197, ^bb125, ^bb126(%v198 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb125:
  %v199 = sea.const 1 : i1
  sea.br ^bb126(%v199 : i1)
^bb126(%v200 : i1):
  sea.br ^bb127
^bb127:
  %v201 = sea.const 0 : i1 loc("or.cond3.i17.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v202 = sea.select %v187, %v200, %v201 : i1 loc("or.cond3.i17.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.cond_br %v202, ^bb129, ^bb128 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb128:
  sea.br ^bb166 loc("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":41:5)
^bb129:
  %v203 = sea.const 0 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v204 = sea.icmp eq, %v166, %v203 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  sea.cond_br %v204, ^bb166, ^bb130 loc("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":41:5)
^bb130:
  sea.br ^bb131
^bb131:
  sea.br ^bb132
^bb132:
  %v205 = sea.load %v163[%v56] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_183"("aws-c-common/include/aws/common/array_list.inl":91:51))
  sea.br ^bb133
^bb133:
  %v206 = sea.mul %v165, %v205 : i64 loc("_185"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v207 = sea.umulo %v165, %v205 : i64 loc("_185"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v207, ^bb134, ^bb135 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb134:
  sea.br ^bb135 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb135:
  %v208 = sea.const 1 : i1 loc("_189"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v209 = sea.xor %v207, %v208 : i1 loc("_189"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb136
^bb136:
  %v210 = sea.icmp uge, %v164, %v206 : i64 loc("_191"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb137
^bb137:
  %v211 = sea.const 0 : i64 loc("_193"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v212 = sea.icmp eq, %v164, %v211 : i64 loc("_193"("aws-c-common/include/aws/common/array_list.inl":93:26))
  sea.cond_br %v212, ^bb142, ^bb138 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb138:
  sea.br ^bb139
^bb139:
  sea.br ^bb140
^bb140:
  sea.br ^bb141
^bb141:
  %v213 = sea.load %v163[%v74] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_201"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v214 = sea.ptr.null : !sea.ptr<64> loc("_202"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v215 = sea.ptr.cmp ne, %v213, %v214 : !sea.ptr<64> loc("_202"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb145(%v213, %v215 : !sea.ptr<64>, i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb142:
  sea.br ^bb143
^bb143:
  %v216 = sea.load %v163[%v74] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_196"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v217 = sea.ptr.null : !sea.ptr<64> loc("_197"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v218 = sea.ptr.cmp eq, %v216, %v217 : !sea.ptr<64> loc("_197"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v219 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v218, ^bb144, ^bb145(%v216, %v219 : !sea.ptr<64>, i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb144:
  %v220 = sea.ptr.null : !sea.ptr<64>
  %v221 = sea.const 1 : i1
  sea.br ^bb145(%v220, %v221 : !sea.ptr<64>, i1)
^bb145(%v222 : !sea.ptr<64>, %v223 : i1):
  sea.br ^bb146
^bb146:
  %v224 = sea.const 0 : i1 loc("or.cond.i21.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v225 = sea.select %v209, %v210, %v224 : i1 loc("or.cond.i21.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v226 = sea.const 0 : i1 loc("or.cond3.i22.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v227 = sea.select %v225, %v223, %v226 : i1 loc("or.cond3.i22.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v228 = sea.const 0 : i64 loc("_206")
  %v229 = sea.icmp ne, %v205, %v228 : i64 loc("_206")
  %v230 = sea.const 0 : i1 loc("spec.select18"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v231 = sea.select %v227, %v229, %v230 : i1 loc("spec.select18"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb147
^bb147:
  sea.br ^bb148
^bb148:
  sea.br ^bb149
^bb149:
  sea.cond_br %v207, ^bb150, ^bb151 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb150:
  sea.br ^bb151 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb151:
  sea.br ^bb152
^bb152:
  sea.br ^bb153
^bb153:
  sea.cond_br %v212, ^bb158, ^bb154 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb154:
  sea.br ^bb155
^bb155:
  sea.br ^bb156
^bb156:
  sea.br ^bb157
^bb157:
  %v232 = sea.ptr.null : !sea.ptr<64> loc("_219"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v233 = sea.ptr.cmp ne, %v222, %v232 : !sea.ptr<64> loc("_219"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb161(%v233 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb158:
  sea.br ^bb159
^bb159:
  %v234 = sea.ptr.null : !sea.ptr<64> loc("_215"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v235 = sea.ptr.cmp eq, %v222, %v234 : !sea.ptr<64> loc("_215"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v236 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v235, ^bb160, ^bb161(%v236 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb160:
  %v237 = sea.const 1 : i1
  sea.br ^bb161(%v237 : i1)
^bb161(%v238 : i1):
  sea.br ^bb162
^bb162:
  %v239 = sea.const 0 : i1 loc("or.cond3.i27.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v240 = sea.select %v225, %v238, %v239 : i1 loc("or.cond3.i27.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.cond_br %v240, ^bb164, ^bb163 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb163:
  sea.br ^bb166 loc("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":42:5)
^bb164:
  %v241 = sea.const 0 : i64 loc(".not19"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v242 = sea.icmp eq, %v205, %v241 : i64 loc(".not19"("aws-c-common/include/aws/common/array_list.inl":95:48))
  sea.cond_br %v242, ^bb166, ^bb165 loc("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":42:5)
^bb165:
  %v243 = sea.icmp eq, %v166, %v205 : i64 loc("_224"("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":43:5))
  %v244 = sea.const 1 : i1 loc("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":43:5)
  %v245 = sea.xor %v243, %v244 : i1 loc("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":43:5)
  sea.assume %v245 loc("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":43:5)
  sea.br ^bb166 loc("seahorn/jobs/array_list_copy/aws_array_list_copy_harness.c":43:5)
^bb166:
  sea.br ^bb167
^bb167:
  %v246 = sea.const 0 : i1
  sea.assert %v246
  sea.halt
}
