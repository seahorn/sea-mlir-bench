// Exported from SeaHorn (array_list_back2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
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
  %v49 = sea.const 0 : i64 loc("_25"("seahorn/lib/proof_allocators.c":17:15))
  %v50 = sea.icmp eq, %v20, %v49 : i64 loc("_25"("seahorn/lib/proof_allocators.c":17:15))
  %v51 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v50, ^bb16(%v37, %v51 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb13 loc("seahorn/lib/proof_allocators.c":17:10)
^bb13:
  %v52 = sea.nondet "nd_malloc_is_fail" [10] : i1 loc("_27"("seahorn/lib/sea_allocators.c":11:10))
  %v53 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v52, ^bb15(%v37, %v53 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb14 loc("seahorn/lib/sea_allocators.c":11:10)
^bb14:
  %v54 = sea.const 1 : i64 loc("malloc38.i")
  %v55 = sea.mul %v20, %v54 : i64 loc("malloc38.i")
  %v56 = sea.alloca %v55 align 16 [11] : i64 -> !sea.ptr<64> loc("malloc38.i")
  sea.br ^bb15(%v37, %v56 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb15(%v57 : !sea.mem<!sea.ptr<64>, i8>, %v58 : !sea.ptr<64>):
  %v59 = sea.memhavoc %v57[%v58], %v20 [12] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v60 = sea.ptr.null : !sea.ptr<64> loc("_30"("seahorn/lib/sea_allocators.c":45:10))
  %v61 = sea.ptr.cmp ne, %v58, %v60 : !sea.ptr<64> loc("_30"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v61 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb16(%v59, %v58 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb16(%v62 : !sea.mem<!sea.ptr<64>, i8>, %v63 : !sea.ptr<64>):
  sea.br ^bb17
^bb17:
  sea.br ^bb18
^bb18:
  sea.br ^bb19
^bb19:
  %v64 = sea.mul %v23, %v20 : i64 loc("_35"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v65 = sea.umulo %v23, %v20 : i64 loc("_35"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v65, ^bb20, ^bb21 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb20:
  sea.br ^bb21 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb21:
  %v66 = sea.const 1 : i1 loc("_39"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v67 = sea.xor %v65, %v66 : i1 loc("_39"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb22
^bb22:
  %v68 = sea.icmp uge, %v17, %v64 : i64 loc("_41"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb23
^bb23:
  sea.cond_br %v27, ^bb28, ^bb24 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb24:
  sea.br ^bb25
^bb25:
  sea.br ^bb26
^bb26:
  sea.br ^bb27
^bb27:
  %v69 = sea.ptr.null : !sea.ptr<64> loc("_49"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v70 = sea.ptr.cmp ne, %v38, %v69 : !sea.ptr<64> loc("_49"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb31(%v70 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb28:
  sea.br ^bb29
^bb29:
  %v71 = sea.ptr.null : !sea.ptr<64> loc("_45"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v72 = sea.ptr.cmp eq, %v38, %v71 : !sea.ptr<64> loc("_45"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v73 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v72, ^bb30, ^bb31(%v73 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb30:
  %v74 = sea.const 1 : i1
  sea.br ^bb31(%v74 : i1)
^bb31(%v75 : i1):
  sea.br ^bb32
^bb32:
  %v76 = sea.const 0 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v77 = sea.select %v67, %v68, %v76 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v78 = sea.and %v77, %v75 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v79 = sea.const 0 : i64 loc("_52")
  %v80 = sea.icmp ne, %v20, %v79 : i64 loc("_52")
  %v81 = sea.const 0 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v82 = sea.select %v78, %v80, %v81 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.assume %v82 loc("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":21:5)
  sea.br ^bb33
^bb33:
  sea.br ^bb34
^bb34:
  sea.br ^bb35
^bb35:
  sea.cond_br %v65, ^bb36, ^bb37 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
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
  %v83 = sea.ptr.null : !sea.ptr<64> loc("_65"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v84 = sea.ptr.cmp ne, %v38, %v83 : !sea.ptr<64> loc("_65"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb47(%v84 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb44:
  sea.br ^bb45
^bb45:
  %v85 = sea.ptr.null : !sea.ptr<64> loc("_61"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v86 = sea.ptr.cmp eq, %v38, %v85 : !sea.ptr<64> loc("_61"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v87 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v86, ^bb46, ^bb47(%v87 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb46:
  %v88 = sea.const 1 : i1
  sea.br ^bb47(%v88 : i1)
^bb47(%v89 : i1):
  sea.br ^bb48
^bb48:
  %v90 = sea.and %v77, %v89 : i1 loc("or.cond3.i6.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v91 = sea.const 0 : i1 loc("spec.select11"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v92 = sea.select %v90, %v80, %v91 : i1 loc("spec.select11"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.assume %v92 loc("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":24:5)
  %v93 = sea.ptr.null : !sea.ptr<64> loc(".not.i"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":25:12))
  %v94 = sea.ptr.cmp ne, %v63, %v93 : !sea.ptr<64> loc(".not.i"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":25:12))
  sea.assume %v94 loc("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":25:5)
  sea.tracking_on loc("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":28:5)
  sea.br ^bb49
^bb49:
  %v95 = sea.const 0 : i64 loc(".not.i22.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v96 = sea.icmp eq, %v23, %v95 : i64 loc(".not.i22.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  sea.cond_br %v96, ^bb62, ^bb50 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb50:
  sea.br ^bb51
^bb51:
  %v97 = sea.ptr.null : !sea.ptr<64> loc(".not1.i23.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v98 = sea.ptr.cmp eq, %v38, %v97 : !sea.ptr<64> loc(".not1.i23.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v99 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v100 = sea.xor %v98, %v99 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v100 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb52
^bb52:
  sea.br ^bb53
^bb53:
  sea.br ^bb54
^bb54:
  sea.br ^bb55
^bb55:
  %v101 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v102 = sea.xor %v98, %v101 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v102 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb56
^bb56:
  sea.br ^bb57
^bb57:
  sea.br ^bb58
^bb58:
  %v103 = sea.const 18446744073709551615 : i64 loc("_77"("aws-c-common/include/aws/common/array_list.inl":266:82))
  %v104 = sea.add %v23, %v103 : i64 loc("_77"("aws-c-common/include/aws/common/array_list.inl":266:82))
  %v105 = sea.mul %v104, %v20 : i64 loc("_78"("aws-c-common/include/aws/common/array_list.inl":266:51))
  %v106 = sea.ptr.index %v38 [%v105] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_79"("aws-c-common/include/aws/common/array_list.inl":268:52))
  %v107 = sea.ptr.dereferenceable %v63, %v20 : !sea.ptr<64>, i64 loc("_80"("seahorn/lib/bcmp.c":161:3))
  %v108 = sea.ptr.dereferenceable %v63, %v20 : !sea.ptr<64>, i64 loc("_81"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v108, ^bb59, ^bb102 loc("seahorn/lib/bcmp.c":161:3)
^bb59:
  %v109 = sea.ptr.dereferenceable %v106, %v20 : !sea.ptr<64>, i64 loc("_83"("seahorn/lib/bcmp.c":162:3))
  %v110 = sea.ptr.dereferenceable %v106, %v20 : !sea.ptr<64>, i64 loc("_84"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v110, ^bb60, ^bb102 loc("seahorn/lib/bcmp.c":162:3)
^bb60:
  %v111 = sea.memmove %v62[%v63], %v62[%v106], %v20 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  %v112 = sea.load %v40[%v39] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_86"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":33:9))
  %v113 = sea.ptr.null : !sea.ptr<64> loc("_87"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":33:9))
  %v114 = sea.ptr.cmp ne, %v112, %v113 : !sea.ptr<64> loc("_87"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":33:9))
  %v115 = sea.ptr.null : !sea.ptr<64> loc(".not1.i"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":33:9))
  %v116 = sea.ptr.cmp eq, %v112, %v115 : !sea.ptr<64> loc(".not1.i"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":33:9))
  sea.cond_br %v116, ^bb102, ^bb61 loc("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":33:9)
^bb61:
  %v117 = sea.load %v25[%v24] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_89"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":34:9))
  %v118 = sea.const 0 : i64 loc("_90"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":34:9))
  %v119 = sea.icmp ne, %v117, %v118 : i64 loc("_90"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":34:9))
  %v120 = sea.const 0 : i64 loc(".not2.i"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":34:9))
  %v121 = sea.icmp eq, %v117, %v120 : i64 loc(".not2.i"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":34:9))
  sea.cond_br %v121, ^bb102, ^bb64(%v111, %v112, %v117 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64) loc("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":34:9)
^bb62:
  sea.br ^bb63
^bb63:
  %v122 = sea.const 0 : i64 loc("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":31:9)
  sea.br ^bb64(%v62, %v38, %v122 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64) loc("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":31:9)
^bb64(%v123 : !sea.mem<!sea.ptr<64>, i8>, %v124 : !sea.ptr<64>, %v125 : i64):
  sea.br ^bb65
^bb65:
  sea.br ^bb66
^bb66:
  %v126 = sea.load %v22[%v21] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_96"("aws-c-common/include/aws/common/array_list.inl":91:51))
  sea.br ^bb67
^bb67:
  %v127 = sea.mul %v125, %v126 : i64 loc("_98"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v128 = sea.umulo %v125, %v126 : i64 loc("_98"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v128, ^bb68, ^bb69 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb68:
  sea.br ^bb69 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb69:
  %v129 = sea.const 1 : i1 loc("_102"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v130 = sea.xor %v128, %v129 : i1 loc("_102"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb70
^bb70:
  %v131 = sea.load %v19[%v18] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_104"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v132 = sea.icmp uge, %v131, %v127 : i64 loc("_105"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb71
^bb71:
  %v133 = sea.const 0 : i64 loc("_107"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v134 = sea.icmp eq, %v131, %v133 : i64 loc("_107"("aws-c-common/include/aws/common/array_list.inl":93:26))
  sea.cond_br %v134, ^bb76, ^bb72 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb72:
  sea.br ^bb73
^bb73:
  sea.br ^bb74
^bb74:
  sea.br ^bb75
^bb75:
  %v135 = sea.ptr.null : !sea.ptr<64> loc("_114"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v136 = sea.ptr.cmp ne, %v124, %v135 : !sea.ptr<64> loc("_114"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb79(%v136 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb76:
  sea.br ^bb77
^bb77:
  %v137 = sea.ptr.null : !sea.ptr<64> loc("_110"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v138 = sea.ptr.cmp eq, %v124, %v137 : !sea.ptr<64> loc("_110"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v139 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v138, ^bb78, ^bb79(%v139 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb78:
  %v140 = sea.const 1 : i1
  sea.br ^bb79(%v140 : i1)
^bb79(%v141 : i1):
  sea.br ^bb80
^bb80:
  %v142 = sea.const 0 : i1 loc("or.cond.i10.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v143 = sea.select %v130, %v132, %v142 : i1 loc("or.cond.i10.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v144 = sea.const 0 : i1 loc("or.cond3.i11.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v145 = sea.select %v143, %v141, %v144 : i1 loc("or.cond3.i11.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v146 = sea.const 0 : i64 loc("_117")
  %v147 = sea.icmp ne, %v126, %v146 : i64 loc("_117")
  %v148 = sea.const 0 : i1 loc("spec.select10"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v149 = sea.select %v145, %v147, %v148 : i1 loc("spec.select10"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb81
^bb81:
  sea.br ^bb82
^bb82:
  sea.br ^bb83
^bb83:
  sea.cond_br %v128, ^bb84, ^bb85 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb84:
  sea.br ^bb85 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb85:
  sea.br ^bb86
^bb86:
  sea.br ^bb87
^bb87:
  sea.cond_br %v134, ^bb92, ^bb88 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb88:
  sea.br ^bb89
^bb89:
  sea.br ^bb90
^bb90:
  sea.br ^bb91
^bb91:
  %v150 = sea.ptr.null : !sea.ptr<64> loc("_130"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v151 = sea.ptr.cmp ne, %v124, %v150 : !sea.ptr<64> loc("_130"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb95(%v151 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb92:
  sea.br ^bb93
^bb93:
  %v152 = sea.ptr.null : !sea.ptr<64> loc("_126"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v153 = sea.ptr.cmp eq, %v124, %v152 : !sea.ptr<64> loc("_126"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v154 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v153, ^bb94, ^bb95(%v154 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb94:
  %v155 = sea.const 1 : i1
  sea.br ^bb95(%v155 : i1)
^bb95(%v156 : i1):
  sea.br ^bb96
^bb96:
  %v157 = sea.const 0 : i1 loc("or.cond3.i16.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v158 = sea.select %v143, %v156, %v157 : i1 loc("or.cond3.i16.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.cond_br %v158, ^bb98, ^bb97 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb97:
  sea.br ^bb102 loc("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":38:5)
^bb98:
  %v159 = sea.const 0 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v160 = sea.icmp eq, %v126, %v159 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  sea.cond_br %v160, ^bb102, ^bb99 loc("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":38:5)
^bb99:
  %v161 = sea.mem.is_modified %v42[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_135"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":39:5))
  %v162 = sea.const 1 : i1 loc("_136"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":39:5))
  %v163 = sea.xor %v161, %v162 : i1 loc("_136"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":39:5))
  %v164 = sea.mem.is_modified %v42[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_137"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":39:5))
  sea.cond_br %v164, ^bb102, ^bb100 loc("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":39:5)
^bb100:
  %v165 = sea.mem.is_modified %v123[%v124] : !sea.mem<!sea.ptr<64>, i8> loc("_139"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":40:5))
  %v166 = sea.const 1 : i1 loc("_140"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":40:5))
  %v167 = sea.xor %v165, %v166 : i1 loc("_140"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":40:5))
  %v168 = sea.mem.is_modified %v123[%v124] : !sea.mem<!sea.ptr<64>, i8> loc("_141"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":40:5))
  sea.cond_br %v168, ^bb102, ^bb101 loc("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":40:5)
^bb101:
  %v169 = sea.load %v42[%v4] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_143"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":41:5))
  %v170 = sea.mem.is_modified %v7[%v169] : !sea.mem<!sea.ptr<64>, i8> loc("_144"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":41:5))
  %v171 = sea.const 1 : i1 loc("_145"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":41:5))
  %v172 = sea.xor %v170, %v171 : i1 loc("_145"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":41:5))
  %v173 = sea.mem.is_modified %v7[%v169] : !sea.mem<!sea.ptr<64>, i8> loc("_146"("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":41:5))
  sea.assume %v173 loc("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":41:5)
  sea.br ^bb102 loc("seahorn/jobs2/array_list_back2/aws_array_list_back_harness2.c":41:5)
^bb102:
  sea.br ^bb103
^bb103:
  %v174 = sea.const 0 : i1
  sea.assert %v174
  sea.halt
}
