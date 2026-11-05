// Exported from SeaHorn (array_list_get_at2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
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
  sea.assume %v67 loc("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":20:5)
  %v68 = sea.const 0 : i64 loc("_46"("seahorn/lib/proof_allocators.c":17:15))
  %v69 = sea.icmp eq, %v20, %v68 : i64 loc("_46"("seahorn/lib/proof_allocators.c":17:15))
  %v70 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v69, ^bb32(%v37, %v70 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb29 loc("seahorn/lib/proof_allocators.c":17:10)
^bb29:
  %v71 = sea.nondet "nd_malloc_is_fail" [10] : i1 loc("_48"("seahorn/lib/sea_allocators.c":11:10))
  %v72 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v71, ^bb31(%v37, %v72 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb30 loc("seahorn/lib/sea_allocators.c":11:10)
^bb30:
  %v73 = sea.const 1 : i64 loc("malloc33.i")
  %v74 = sea.mul %v20, %v73 : i64 loc("malloc33.i")
  %v75 = sea.alloca %v74 align 16 [11] : i64 -> !sea.ptr<64> loc("malloc33.i")
  sea.br ^bb31(%v37, %v75 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb31(%v76 : !sea.mem<!sea.ptr<64>, i8>, %v77 : !sea.ptr<64>):
  %v78 = sea.memhavoc %v76[%v77], %v20 [12] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v79 = sea.ptr.null : !sea.ptr<64> loc("_51"("seahorn/lib/sea_allocators.c":45:10))
  %v80 = sea.ptr.cmp ne, %v77, %v79 : !sea.ptr<64> loc("_51"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v80 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb32(%v78, %v77 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb32(%v81 : !sea.mem<!sea.ptr<64>, i8>, %v82 : !sea.ptr<64>):
  %v83 = sea.nondet "nd_size_t" [13] : i64 loc("_53"("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":22:20))
  sea.br ^bb33
^bb33:
  sea.br ^bb34
^bb34:
  sea.br ^bb35
^bb35:
  sea.cond_br %v50, ^bb36, ^bb37 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb36:
  sea.br ^bb37 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb37:
  sea.br ^bb38
^bb38:
  sea.br ^bb39
^bb39:
  sea.cond_br %v27, ^bb44, ^bb40 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb40:
  sea.br ^bb41
^bb41:
  sea.br ^bb42
^bb42:
  sea.br ^bb43
^bb43:
  %v84 = sea.ptr.null : !sea.ptr<64> loc("_66"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v85 = sea.ptr.cmp ne, %v38, %v84 : !sea.ptr<64> loc("_66"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb47(%v85 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb44:
  sea.br ^bb45
^bb45:
  %v86 = sea.ptr.null : !sea.ptr<64> loc("_62"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v87 = sea.ptr.cmp eq, %v38, %v86 : !sea.ptr<64> loc("_62"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v88 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v87, ^bb46, ^bb47(%v88 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb46:
  %v89 = sea.const 1 : i1
  sea.br ^bb47(%v89 : i1)
^bb47(%v90 : i1):
  sea.br ^bb48
^bb48:
  %v91 = sea.and %v62, %v90 : i1 loc("or.cond3.i6.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v92 = sea.const 0 : i1 loc("spec.select11"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v93 = sea.select %v91, %v65, %v92 : i1 loc("spec.select11"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.assume %v93 loc("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":25:5)
  %v94 = sea.ptr.null : !sea.ptr<64> loc(".not.i"("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":26:12))
  %v95 = sea.ptr.cmp ne, %v82, %v94 : !sea.ptr<64> loc(".not.i"("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":26:12))
  sea.assume %v95 loc("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":26:5)
  sea.tracking_on loc("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":29:5)
  sea.br ^bb49
^bb49:
  %v96 = sea.const 0 : i64 loc(".not.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v97 = sea.icmp eq, %v23, %v96 : i64 loc(".not.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  sea.cond_br %v97, ^bb52, ^bb50 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb50:
  sea.br ^bb51
^bb51:
  %v98 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v99 = sea.ptr.cmp eq, %v38, %v98 : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v100 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v101 = sea.xor %v99, %v100 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v101 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb52 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb52:
  sea.br ^bb53
^bb53:
  %v102 = sea.icmp ugt, %v23, %v83 : i64 loc("_73"("aws-c-common/include/aws/common/array_list.inl":354:37))
  sea.cond_br %v102, ^bb55, ^bb54 loc("aws-c-common/include/aws/common/array_list.inl":354:9)
^bb54:
  sea.br ^bb62(%v81, %v38, %v23 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64)
^bb55:
  sea.br ^bb56
^bb56:
  sea.br ^bb57
^bb57:
  sea.br ^bb58
^bb58:
  %v103 = sea.mul %v83, %v20 : i64 loc("_78"("aws-c-common/include/aws/common/array_list.inl":355:71))
  %v104 = sea.ptr.index %v38 [%v103] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_79"("aws-c-common/include/aws/common/array_list.inl":355:52))
  %v105 = sea.ptr.dereferenceable %v82, %v20 : !sea.ptr<64>, i64 loc("_80"("seahorn/lib/bcmp.c":161:3))
  %v106 = sea.ptr.dereferenceable %v82, %v20 : !sea.ptr<64>, i64 loc("_81"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v106, ^bb59, ^bb100 loc("seahorn/lib/bcmp.c":161:3)
^bb59:
  %v107 = sea.ptr.dereferenceable %v104, %v20 : !sea.ptr<64>, i64 loc("_83"("seahorn/lib/bcmp.c":162:3))
  %v108 = sea.ptr.dereferenceable %v104, %v20 : !sea.ptr<64>, i64 loc("_84"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v108, ^bb60, ^bb100 loc("seahorn/lib/bcmp.c":162:3)
^bb60:
  %v109 = sea.memmove %v81[%v82], %v81[%v104], %v20 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  %v110 = sea.load %v40[%v39] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_86"("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":36:9))
  %v111 = sea.ptr.null : !sea.ptr<64> loc("_87"("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":36:9))
  %v112 = sea.ptr.cmp ne, %v110, %v111 : !sea.ptr<64> loc("_87"("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":36:9))
  %v113 = sea.ptr.null : !sea.ptr<64> loc(".not2.i"("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":36:9))
  %v114 = sea.ptr.cmp eq, %v110, %v113 : !sea.ptr<64> loc(".not2.i"("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":36:9))
  sea.cond_br %v114, ^bb100, ^bb61 loc("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":36:9)
^bb61:
  %v115 = sea.load %v25[%v24] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_89"("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":37:9))
  %v116 = sea.icmp ugt, %v115, %v83 : i64 loc("_90"("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":37:9))
  sea.cond_br %v116, ^bb62(%v109, %v110, %v115 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64), ^bb100 loc("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":37:9)
^bb62(%v117 : !sea.mem<!sea.ptr<64>, i8>, %v118 : !sea.ptr<64>, %v119 : i64):
  sea.br ^bb63
^bb63:
  sea.br ^bb64
^bb64:
  %v120 = sea.load %v22[%v21] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_96"("aws-c-common/include/aws/common/array_list.inl":91:51))
  sea.br ^bb65
^bb65:
  %v121 = sea.mul %v119, %v120 : i64 loc("_98"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v122 = sea.umulo %v119, %v120 : i64 loc("_98"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v122, ^bb66, ^bb67 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb66:
  sea.br ^bb67 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb67:
  %v123 = sea.const 1 : i1 loc("_102"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v124 = sea.xor %v122, %v123 : i1 loc("_102"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb68
^bb68:
  %v125 = sea.load %v19[%v18] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_104"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v126 = sea.icmp uge, %v125, %v121 : i64 loc("_105"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb69
^bb69:
  %v127 = sea.const 0 : i64 loc("_107"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v128 = sea.icmp eq, %v125, %v127 : i64 loc("_107"("aws-c-common/include/aws/common/array_list.inl":93:26))
  sea.cond_br %v128, ^bb74, ^bb70 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb70:
  sea.br ^bb71
^bb71:
  sea.br ^bb72
^bb72:
  sea.br ^bb73
^bb73:
  %v129 = sea.ptr.null : !sea.ptr<64> loc("_114"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v130 = sea.ptr.cmp ne, %v118, %v129 : !sea.ptr<64> loc("_114"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb77(%v130 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb74:
  sea.br ^bb75
^bb75:
  %v131 = sea.ptr.null : !sea.ptr<64> loc("_110"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v132 = sea.ptr.cmp eq, %v118, %v131 : !sea.ptr<64> loc("_110"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v133 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v132, ^bb76, ^bb77(%v133 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb76:
  %v134 = sea.const 1 : i1
  sea.br ^bb77(%v134 : i1)
^bb77(%v135 : i1):
  sea.br ^bb78
^bb78:
  %v136 = sea.const 0 : i1 loc("or.cond.i10.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v137 = sea.select %v124, %v126, %v136 : i1 loc("or.cond.i10.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v138 = sea.const 0 : i1 loc("or.cond3.i11.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v139 = sea.select %v137, %v135, %v138 : i1 loc("or.cond3.i11.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v140 = sea.const 0 : i64 loc("_117")
  %v141 = sea.icmp ne, %v120, %v140 : i64 loc("_117")
  %v142 = sea.const 0 : i1 loc("spec.select10"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v143 = sea.select %v139, %v141, %v142 : i1 loc("spec.select10"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb79
^bb79:
  sea.br ^bb80
^bb80:
  sea.br ^bb81
^bb81:
  sea.cond_br %v122, ^bb82, ^bb83 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb82:
  sea.br ^bb83 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb83:
  sea.br ^bb84
^bb84:
  sea.br ^bb85
^bb85:
  sea.cond_br %v128, ^bb90, ^bb86 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb86:
  sea.br ^bb87
^bb87:
  sea.br ^bb88
^bb88:
  sea.br ^bb89
^bb89:
  %v144 = sea.ptr.null : !sea.ptr<64> loc("_130"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v145 = sea.ptr.cmp ne, %v118, %v144 : !sea.ptr<64> loc("_130"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb93(%v145 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb90:
  sea.br ^bb91
^bb91:
  %v146 = sea.ptr.null : !sea.ptr<64> loc("_126"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v147 = sea.ptr.cmp eq, %v118, %v146 : !sea.ptr<64> loc("_126"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v148 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v147, ^bb92, ^bb93(%v148 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb92:
  %v149 = sea.const 1 : i1
  sea.br ^bb93(%v149 : i1)
^bb93(%v150 : i1):
  sea.br ^bb94
^bb94:
  %v151 = sea.const 0 : i1 loc("or.cond3.i16.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v152 = sea.select %v137, %v150, %v151 : i1 loc("or.cond3.i16.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.cond_br %v152, ^bb96, ^bb95 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb95:
  sea.br ^bb100 loc("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":41:5)
^bb96:
  %v153 = sea.const 0 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v154 = sea.icmp eq, %v120, %v153 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  sea.cond_br %v154, ^bb100, ^bb97 loc("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":41:5)
^bb97:
  %v155 = sea.mem.is_modified %v42[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_135"("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":42:5))
  %v156 = sea.const 1 : i1 loc("_136"("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":42:5))
  %v157 = sea.xor %v155, %v156 : i1 loc("_136"("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":42:5))
  %v158 = sea.mem.is_modified %v42[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_137"("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":42:5))
  sea.cond_br %v158, ^bb100, ^bb98 loc("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":42:5)
^bb98:
  %v159 = sea.mem.is_modified %v117[%v118] : !sea.mem<!sea.ptr<64>, i8> loc("_139"("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":43:5))
  %v160 = sea.const 1 : i1 loc("_140"("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":43:5))
  %v161 = sea.xor %v159, %v160 : i1 loc("_140"("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":43:5))
  %v162 = sea.mem.is_modified %v117[%v118] : !sea.mem<!sea.ptr<64>, i8> loc("_141"("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":43:5))
  sea.cond_br %v162, ^bb100, ^bb99 loc("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":43:5)
^bb99:
  %v163 = sea.load %v42[%v4] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_143"("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":44:5))
  %v164 = sea.mem.is_modified %v7[%v163] : !sea.mem<!sea.ptr<64>, i8> loc("_144"("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":44:5))
  %v165 = sea.const 1 : i1 loc("_145"("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":44:5))
  %v166 = sea.xor %v164, %v165 : i1 loc("_145"("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":44:5))
  %v167 = sea.mem.is_modified %v7[%v163] : !sea.mem<!sea.ptr<64>, i8> loc("_146"("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":44:5))
  sea.assume %v167 loc("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":44:5)
  sea.br ^bb100 loc("seahorn/jobs2/array_list_get_at2/aws_array_list_get_at_harness2.c":44:5)
^bb100:
  sea.br ^bb101
^bb101:
  %v168 = sea.const 0 : i1
  sea.assert %v168
  sea.halt
}
