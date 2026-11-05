// Exported from SeaHorn (array_list_swap.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm18")
  %v1 = sea.mem.nondet "region.17" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm19")
  %v2 = sea.mem.nondet "region.16" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm20")
  %v3 = sea.const 128 : i64 loc("_0")
  %v4 = sea.alloca %v3 align 16 [3] : i64 -> !sea.ptr<64> loc("_0")
  %v5 = sea.const 40 : i64 loc("_1")
  %v6 = sea.alloca %v5 align 8 [4] : i64 -> !sea.ptr<64> loc("_1")
  %v7 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v8 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v9 = sea.store %v0[%v7], %v8 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v10 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_2")
  %v11 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_2")
  %v12 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v13 = sea.store %v9[%v11], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v14 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_3")
  %v15 = sea.ptr.index %v14 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_3")
  %v16 = sea.const 0 : i8
  %v17 = sea.const 24 : i64
  %v18 = sea.memset %v13[%v15], %v16, %v17 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v19 = sea.nondet "nd_size_t" [5] : i64 loc("_4"("seahorn/lib/array_list_helper.c":26:24))
  %v20 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_5"("seahorn/lib/array_list_helper.c":26:9))
  sea.br ^bb1
^bb1:
  %v21 = sea.store %v1[%v20], %v19 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":26:22)
  %v22 = sea.nondet "nd_size_t" [6] : i64 loc("_7"("seahorn/lib/array_list_helper.c":27:21))
  %v23 = sea.ptr.index %v6 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_8"("seahorn/lib/array_list_helper.c":27:9))
  sea.br ^bb2
^bb2:
  %v24 = sea.store %v21[%v23], %v22 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":27:19)
  %v25 = sea.nondet "nd_size_t" [7] : i64 loc("_10"("seahorn/lib/array_list_helper.c":28:18))
  %v26 = sea.ptr.index %v6 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_11"("seahorn/lib/array_list_helper.c":28:9))
  sea.br ^bb3
^bb3:
  %v27 = sea.store %v24[%v26], %v25 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":28:16)
  sea.br ^bb4
^bb4:
  %v28 = sea.const 0 : i64 loc("_14"("seahorn/lib/proof_allocators.c":21:15))
  %v29 = sea.icmp eq, %v19, %v28 : i64 loc("_14"("seahorn/lib/proof_allocators.c":21:15))
  %v30 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v29, ^bb8(%v2, %v30 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb5 loc("seahorn/lib/proof_allocators.c":21:10)
^bb5:
  %v31 = sea.nondet "nd_malloc_is_fail" [8] : i1 loc("_16"("seahorn/lib/sea_allocators.c":11:10))
  %v32 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v31, ^bb7(%v2, %v32 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb6 loc("seahorn/lib/sea_allocators.c":11:10)
^bb6:
  %v33 = sea.const 1 : i64 loc("malloc.i")
  %v34 = sea.mul %v19, %v33 : i64 loc("malloc.i")
  %v35 = sea.alloca %v34 align 16 [9] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb7(%v2, %v35 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb7(%v36 : !sea.mem<!sea.ptr<64>, i8>, %v37 : !sea.ptr<64>):
  %v38 = sea.memhavoc %v36[%v37], %v19 [10] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb8(%v38, %v37 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb8(%v39 : !sea.mem<!sea.ptr<64>, i8>, %v40 : !sea.ptr<64>):
  %v41 = sea.ptr.index %v6 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_20"("seahorn/lib/array_list_helper.c":29:9))
  sea.br ^bb9
^bb9:
  %v42 = sea.store %v27[%v41], %v40 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":29:14)
  sea.br ^bb10
^bb10:
  %v43 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  %v44 = sea.store %v42[%v6], %v43 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  %v45 = sea.const 3 : i64 loc("_23"("seahorn/lib/array_list_helper.c":38:47))
  %v46 = sea.icmp ult, %v22, %v45 : i64 loc("_23"("seahorn/lib/array_list_helper.c":38:47))
  %v47 = sea.const 9223372036854775809 : i64 loc("_24"("seahorn/lib/array_list_helper.c":39:41))
  %v48 = sea.icmp ult, %v25, %v47 : i64 loc("_24"("seahorn/lib/array_list_helper.c":39:41))
  %v49 = sea.const 0 : i1 loc("_25"("seahorn/lib/array_list_helper.c":40:31))
  %v50 = sea.select %v46, %v48, %v49 : i1 loc("_25"("seahorn/lib/array_list_helper.c":40:31))
  sea.assume %v50 loc("seahorn/lib/array_list_helper.c":31:3)
  %v51 = sea.nondet "nd_size_t" [11] : i64 loc("_26"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":19:22))
  %v52 = sea.nondet "nd_size_t" [12] : i64 loc("_27"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":20:22))
  sea.br ^bb13
^bb13:
  sea.br ^bb14
^bb14:
  sea.br ^bb15
^bb15:
  %v53 = sea.mul %v25, %v22 : i64 loc("_31"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v54 = sea.umulo %v25, %v22 : i64 loc("_31"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v54, ^bb16, ^bb17 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb16:
  sea.br ^bb17 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb17:
  %v55 = sea.const 1 : i1 loc("_35"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v56 = sea.xor %v54, %v55 : i1 loc("_35"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb18
^bb18:
  %v57 = sea.icmp uge, %v19, %v53 : i64 loc("_37"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb19
^bb19:
  sea.cond_br %v29, ^bb24, ^bb20 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb20:
  sea.br ^bb21
^bb21:
  sea.br ^bb22
^bb22:
  sea.br ^bb23
^bb23:
  %v58 = sea.ptr.null : !sea.ptr<64> loc("_45"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v59 = sea.ptr.cmp ne, %v40, %v58 : !sea.ptr<64> loc("_45"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb27(%v59 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb24:
  sea.br ^bb25
^bb25:
  %v60 = sea.ptr.null : !sea.ptr<64> loc("_41"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v61 = sea.ptr.cmp eq, %v40, %v60 : !sea.ptr<64> loc("_41"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v62 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v61, ^bb26, ^bb27(%v62 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb26:
  %v63 = sea.const 1 : i1
  sea.br ^bb27(%v63 : i1)
^bb27(%v64 : i1):
  sea.br ^bb28
^bb28:
  %v65 = sea.const 0 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v66 = sea.select %v56, %v57, %v65 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v67 = sea.and %v66, %v64 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v68 = sea.const 0 : i64 loc("_48")
  %v69 = sea.icmp ne, %v22, %v68 : i64 loc("_48")
  %v70 = sea.const 0 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v71 = sea.select %v67, %v69, %v70 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.assume %v71 loc("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":23:5)
  sea.br ^bb29
^bb29:
  %v72 = sea.const 0 : i64 loc(".not.i50.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v73 = sea.icmp eq, %v25, %v72 : i64 loc(".not.i50.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  sea.cond_br %v73, ^bb32, ^bb30 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb30:
  sea.br ^bb31
^bb31:
  %v74 = sea.ptr.null : !sea.ptr<64> loc(".not1.i51.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v75 = sea.ptr.cmp eq, %v40, %v74 : !sea.ptr<64> loc(".not1.i51.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v76 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v77 = sea.xor %v75, %v76 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v77 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb32 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb32:
  sea.br ^bb33
^bb33:
  %v78 = sea.icmp ult, %v51, %v25 : i64 loc("_53"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":28:20))
  sea.assume %v78 loc("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":28:5)
  sea.br ^bb34
^bb34:
  sea.cond_br %v73, ^bb37, ^bb35 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb35:
  sea.br ^bb36
^bb36:
  %v79 = sea.ptr.null : !sea.ptr<64> loc(".not1.i54.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v80 = sea.ptr.cmp eq, %v40, %v79 : !sea.ptr<64> loc(".not1.i54.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v81 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v82 = sea.xor %v80, %v81 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v82 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb37 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb37:
  sea.br ^bb38
^bb38:
  %v83 = sea.icmp ult, %v52, %v25 : i64 loc("_58"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":29:20))
  sea.assume %v83 loc("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":29:5)
  %v84 = sea.mul %v51, %v22 : i64 loc("_59"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":35:32))
  %v85 = sea.ptr.index %v40 [%v84] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_60"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":36:23))
  %v86 = sea.const 1 : i64 loc("_61"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":36:23))
  %v87 = sea.ptr.dereferenceable %v85, %v86 : !sea.ptr<64>, i64 loc("_61"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":36:23))
  sea.cond_br %v87, ^bb39, ^bb127
^bb39:
  %v88 = sea.load %v39[%v85] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_63"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":36:23))
  %v89 = sea.mul %v52, %v22 : i64 loc("_64"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":40:32))
  %v90 = sea.ptr.index %v40 [%v89] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_65"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":41:23))
  %v91 = sea.const 1 : i64 loc("_66"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":41:23))
  %v92 = sea.ptr.dereferenceable %v90, %v91 : !sea.ptr<64>, i64 loc("_66"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":41:23))
  sea.cond_br %v92, ^bb40, ^bb127
^bb40:
  %v93 = sea.load %v39[%v90] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_68"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":41:23))
  sea.br ^bb41
^bb41:
  sea.assume %v78 loc("aws-c-common/source/array_list.c":193:5)
  sea.br ^bb42
^bb42:
  sea.assume %v83 loc("aws-c-common/source/array_list.c":194:5)
  %v94 = sea.icmp eq, %v51, %v52 : i64 loc("_71"("aws-c-common/source/array_list.c":197:11))
  sea.cond_br %v94, ^bb83(%v39 : !sea.mem<!sea.ptr<64>, i8>), ^bb43 loc("aws-c-common/source/array_list.c":197:9)
^bb43:
  sea.br ^bb44
^bb44:
  sea.cond_br %v73, ^bb47, ^bb45 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb45:
  sea.br ^bb46
^bb46:
  %v95 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v96 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v97 = sea.xor %v95, %v96 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v97 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb47 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb47:
  sea.br ^bb48
^bb48:
  sea.cond_br %v78, ^bb50, ^bb49 loc("aws-c-common/include/aws/common/array_list.inl":367:9)
^bb49:
  %v98 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":373:5)
  sea.br ^bb54(%v98 : !sea.ptr<64>) loc("aws-c-common/include/aws/common/array_list.inl":373:5)
^bb50:
  sea.br ^bb51
^bb51:
  sea.br ^bb52
^bb52:
  sea.br ^bb53
^bb53:
  sea.br ^bb54(%v85 : !sea.ptr<64>) loc("aws-c-common/include/aws/common/array_list.inl":370:9)
^bb54(%v99 : !sea.ptr<64>):
  sea.br ^bb55
^bb55:
  sea.cond_br %v73, ^bb58, ^bb56 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb56:
  sea.br ^bb57
^bb57:
  %v100 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v101 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v102 = sea.xor %v100, %v101 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v102 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb58 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb58:
  sea.br ^bb59
^bb59:
  sea.cond_br %v83, ^bb61, ^bb60 loc("aws-c-common/include/aws/common/array_list.inl":367:9)
^bb60:
  %v103 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":373:5)
  sea.br ^bb65(%v103 : !sea.ptr<64>) loc("aws-c-common/include/aws/common/array_list.inl":373:5)
^bb61:
  sea.br ^bb62
^bb62:
  sea.br ^bb63
^bb63:
  sea.br ^bb64
^bb64:
  sea.br ^bb65(%v90 : !sea.ptr<64>) loc("aws-c-common/include/aws/common/array_list.inl":370:9)
^bb65(%v104 : !sea.ptr<64>):
  sea.br ^bb66
^bb66:
  %v105 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("aws-c-common/source/array_list.c":172:5))
  %v106 = sea.ptr.cmp eq, %v99, %v105 : !sea.ptr<64> loc(".not.i.i"("aws-c-common/source/array_list.c":172:5))
  %v107 = sea.const 1 : i1 loc("aws-c-common/source/array_list.c":172:5)
  %v108 = sea.xor %v106, %v107 : i1 loc("aws-c-common/source/array_list.c":172:5)
  sea.assume %v108 loc("aws-c-common/source/array_list.c":172:5)
  %v109 = sea.ptr.null : !sea.ptr<64> loc(".not3.i.i"("aws-c-common/source/array_list.c":173:5))
  %v110 = sea.ptr.cmp eq, %v104, %v109 : !sea.ptr<64> loc(".not3.i.i"("aws-c-common/source/array_list.c":173:5))
  %v111 = sea.const 1 : i1 loc("aws-c-common/source/array_list.c":173:5)
  %v112 = sea.xor %v110, %v111 : i1 loc("aws-c-common/source/array_list.c":173:5)
  sea.assume %v112 loc("aws-c-common/source/array_list.c":173:5)
  %v113 = sea.const 128 : i64 loc(".not"("aws-c-common/source/array_list.c":178:26))
  %v114 = sea.icmp ult, %v22, %v113 : i64 loc(".not"("aws-c-common/source/array_list.c":178:26))
  sea.cond_br %v114, ^bb76(%v39, %v104, %v99 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>), ^bb67 loc("aws-c-common/source/array_list.c":178:5)
^bb67:
  sea.br ^bb68 loc("seahorn/lib/bcmp.c":161:3)
^bb68:
  %v115 = sea.const 128 : i64 loc("_94"("seahorn/lib/bcmp.c":162:3))
  %v116 = sea.ptr.dereferenceable %v99, %v115 : !sea.ptr<64>, i64 loc("_94"("seahorn/lib/bcmp.c":162:3))
  %v117 = sea.const 128 : i64 loc("_95"("seahorn/lib/bcmp.c":162:3))
  %v118 = sea.ptr.dereferenceable %v99, %v117 : !sea.ptr<64>, i64 loc("_95"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v118, ^bb69, ^bb127 loc("seahorn/lib/bcmp.c":162:3)
^bb69:
  %v119 = sea.const 128 : i64 loc("seahorn/lib/bcmp.c":163:10)
  %v120 = sea.memmove %v39[%v4], %v39[%v99], %v119 inplace align 16 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  %v121 = sea.const 128 : i64 loc("_96"("seahorn/lib/bcmp.c":161:3))
  %v122 = sea.ptr.dereferenceable %v99, %v121 : !sea.ptr<64>, i64 loc("_96"("seahorn/lib/bcmp.c":161:3))
  %v123 = sea.const 128 : i64 loc("_97"("seahorn/lib/bcmp.c":161:3))
  %v124 = sea.ptr.dereferenceable %v99, %v123 : !sea.ptr<64>, i64 loc("_97"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v124, ^bb70, ^bb127 loc("seahorn/lib/bcmp.c":161:3)
^bb70:
  %v125 = sea.const 128 : i64 loc("_99"("seahorn/lib/bcmp.c":162:3))
  %v126 = sea.ptr.dereferenceable %v104, %v125 : !sea.ptr<64>, i64 loc("_99"("seahorn/lib/bcmp.c":162:3))
  %v127 = sea.const 128 : i64 loc("_100"("seahorn/lib/bcmp.c":162:3))
  %v128 = sea.ptr.dereferenceable %v104, %v127 : !sea.ptr<64>, i64 loc("_100"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v128, ^bb71, ^bb127 loc("seahorn/lib/bcmp.c":162:3)
^bb71:
  %v129 = sea.const 128 : i64 loc("seahorn/lib/bcmp.c":163:10)
  %v130 = sea.memmove %v120[%v99], %v120[%v104], %v129 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  %v131 = sea.const 128 : i64 loc("_101"("seahorn/lib/bcmp.c":161:3))
  %v132 = sea.ptr.dereferenceable %v104, %v131 : !sea.ptr<64>, i64 loc("_101"("seahorn/lib/bcmp.c":161:3))
  %v133 = sea.const 128 : i64 loc("_102"("seahorn/lib/bcmp.c":161:3))
  %v134 = sea.ptr.dereferenceable %v104, %v133 : !sea.ptr<64>, i64 loc("_102"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v134, ^bb72, ^bb127 loc("seahorn/lib/bcmp.c":161:3)
^bb72:
  sea.br ^bb73 loc("seahorn/lib/bcmp.c":162:3)
^bb73:
  %v135 = sea.const 128 : i64 loc("seahorn/lib/bcmp.c":163:10)
  %v136 = sea.memmove %v130[%v104], %v130[%v4], %v135 inplace src_align 16 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  %v137 = sea.const 18446744073709551488 : i64 loc(".mask"("aws-c-common/source/array_list.c":178:26))
  %v138 = sea.and %v22, %v137 : i64 loc(".mask"("aws-c-common/source/array_list.c":178:26))
  %v139 = sea.const 128 : i64 loc("exitcond.not"("aws-c-common/source/array_list.c":178:26))
  %v140 = sea.icmp eq, %v138, %v139 : i64 loc("exitcond.not"("aws-c-common/source/array_list.c":178:26))
  sea.cond_br %v140, ^bb75, ^bb74 loc("aws-c-common/source/array_list.c":178:5)
^bb74:
  %v141 = sea.const 1 : i1
  %v142 = sea.const 1 : i1
  %v143 = sea.xor %v141, %v142 : i1
  sea.assume %v143
  sea.br ^bb127 loc("seahorn/lib/bcmp.c":161:3)
^bb75:
  %v144 = sea.ptr.index %v104 [] strides [] offset 128 inbounds : !sea.ptr<64> loc("_104"("aws-c-common/source/array_list.c":183:34))
  %v145 = sea.ptr.index %v99 [] strides [] offset 128 inbounds : !sea.ptr<64> loc("_105"("aws-c-common/source/array_list.c":182:34))
  sea.br ^bb76(%v136, %v144, %v145 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>) loc("aws-c-common/source/array_list.c":186:34)
^bb76(%v146 : !sea.mem<!sea.ptr<64>, i8>, %v147 : !sea.ptr<64>, %v148 : !sea.ptr<64>):
  %v149 = sea.const 127 : i64 loc("_106"("aws-c-common/source/array_list.c":186:34))
  %v150 = sea.and %v22, %v149 : i64 loc("_106"("aws-c-common/source/array_list.c":186:34))
  %v151 = sea.ptr.dereferenceable %v4, %v150 : !sea.ptr<64>, i64 loc("_107"("seahorn/lib/bcmp.c":161:3))
  %v152 = sea.ptr.dereferenceable %v4, %v150 : !sea.ptr<64>, i64 loc("_108"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v152, ^bb77, ^bb127 loc("seahorn/lib/bcmp.c":161:3)
^bb77:
  %v153 = sea.ptr.dereferenceable %v148, %v150 : !sea.ptr<64>, i64 loc("_110"("seahorn/lib/bcmp.c":162:3))
  %v154 = sea.ptr.dereferenceable %v148, %v150 : !sea.ptr<64>, i64 loc("_111"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v154, ^bb78, ^bb127 loc("seahorn/lib/bcmp.c":162:3)
^bb78:
  %v155 = sea.memmove %v146[%v4], %v146[%v148], %v150 inplace align 16 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  %v156 = sea.ptr.dereferenceable %v148, %v150 : !sea.ptr<64>, i64 loc("_112"("seahorn/lib/bcmp.c":161:3))
  %v157 = sea.ptr.dereferenceable %v148, %v150 : !sea.ptr<64>, i64 loc("_113"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v157, ^bb79, ^bb127 loc("seahorn/lib/bcmp.c":161:3)
^bb79:
  %v158 = sea.ptr.dereferenceable %v147, %v150 : !sea.ptr<64>, i64 loc("_115"("seahorn/lib/bcmp.c":162:3))
  %v159 = sea.ptr.dereferenceable %v147, %v150 : !sea.ptr<64>, i64 loc("_116"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v159, ^bb80, ^bb127 loc("seahorn/lib/bcmp.c":162:3)
^bb80:
  %v160 = sea.memmove %v155[%v148], %v155[%v147], %v150 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  %v161 = sea.ptr.dereferenceable %v147, %v150 : !sea.ptr<64>, i64 loc("_117"("seahorn/lib/bcmp.c":161:3))
  %v162 = sea.ptr.dereferenceable %v147, %v150 : !sea.ptr<64>, i64 loc("_118"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v162, ^bb81, ^bb127 loc("seahorn/lib/bcmp.c":161:3)
^bb81:
  %v163 = sea.ptr.dereferenceable %v4, %v150 : !sea.ptr<64>, i64 loc("_120"("seahorn/lib/bcmp.c":162:3))
  %v164 = sea.ptr.dereferenceable %v4, %v150 : !sea.ptr<64>, i64 loc("_121"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v164, ^bb82, ^bb127 loc("seahorn/lib/bcmp.c":162:3)
^bb82:
  %v165 = sea.memmove %v160[%v147], %v160[%v4], %v150 inplace src_align 16 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb83(%v165 : !sea.mem<!sea.ptr<64>, i8>)
^bb83(%v166 : !sea.mem<!sea.ptr<64>, i8>):
  sea.br ^bb84
^bb84:
  %v167 = sea.load %v27[%v26] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_123"("aws-c-common/include/aws/common/array_list.inl":91:37))
  sea.br ^bb85
^bb85:
  %v168 = sea.load %v24[%v23] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_125"("aws-c-common/include/aws/common/array_list.inl":91:51))
  sea.br ^bb86
^bb86:
  %v169 = sea.mul %v167, %v168 : i64 loc("_127"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v170 = sea.umulo %v167, %v168 : i64 loc("_127"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v170, ^bb87, ^bb88 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb87:
  sea.br ^bb88 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb88:
  %v171 = sea.const 1 : i1 loc("_131"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v172 = sea.xor %v170, %v171 : i1 loc("_131"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb89
^bb89:
  %v173 = sea.load %v21[%v20] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_133"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v174 = sea.icmp uge, %v173, %v169 : i64 loc("_134"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb90
^bb90:
  %v175 = sea.const 0 : i64 loc("_136"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v176 = sea.icmp eq, %v173, %v175 : i64 loc("_136"("aws-c-common/include/aws/common/array_list.inl":93:26))
  sea.cond_br %v176, ^bb95, ^bb91 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb91:
  sea.br ^bb92
^bb92:
  sea.br ^bb93
^bb93:
  sea.br ^bb94
^bb94:
  %v177 = sea.load %v42[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_144"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v178 = sea.ptr.null : !sea.ptr<64> loc("_145"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v179 = sea.ptr.cmp ne, %v177, %v178 : !sea.ptr<64> loc("_145"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb98(%v177, %v179 : !sea.ptr<64>, i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb95:
  sea.br ^bb96
^bb96:
  %v180 = sea.load %v42[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_139"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v181 = sea.ptr.null : !sea.ptr<64> loc("_140"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v182 = sea.ptr.cmp eq, %v180, %v181 : !sea.ptr<64> loc("_140"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v183 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v182, ^bb97, ^bb98(%v180, %v183 : !sea.ptr<64>, i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb97:
  %v184 = sea.ptr.null : !sea.ptr<64>
  %v185 = sea.const 1 : i1
  sea.br ^bb98(%v184, %v185 : !sea.ptr<64>, i1)
^bb98(%v186 : !sea.ptr<64>, %v187 : i1):
  sea.br ^bb99
^bb99:
  %v188 = sea.const 0 : i1 loc("or.cond.i39.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v189 = sea.select %v172, %v174, %v188 : i1 loc("or.cond.i39.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v190 = sea.const 0 : i1 loc("or.cond3.i40.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v191 = sea.select %v189, %v187, %v190 : i1 loc("or.cond3.i40.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v192 = sea.const 0 : i64 loc("_149")
  %v193 = sea.icmp ne, %v168, %v192 : i64 loc("_149")
  %v194 = sea.const 0 : i1 loc("spec.select8"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v195 = sea.select %v191, %v193, %v194 : i1 loc("spec.select8"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb100
^bb100:
  sea.br ^bb101
^bb101:
  sea.br ^bb102
^bb102:
  sea.cond_br %v170, ^bb103, ^bb104 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb103:
  sea.br ^bb104 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb104:
  sea.br ^bb105
^bb105:
  sea.br ^bb106
^bb106:
  sea.cond_br %v176, ^bb111, ^bb107 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb107:
  sea.br ^bb108
^bb108:
  sea.br ^bb109
^bb109:
  sea.br ^bb110
^bb110:
  %v196 = sea.ptr.null : !sea.ptr<64> loc("_162"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v197 = sea.ptr.cmp ne, %v186, %v196 : !sea.ptr<64> loc("_162"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb114(%v197 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb111:
  sea.br ^bb112
^bb112:
  %v198 = sea.ptr.null : !sea.ptr<64> loc("_158"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v199 = sea.ptr.cmp eq, %v186, %v198 : !sea.ptr<64> loc("_158"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v200 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v199, ^bb113, ^bb114(%v200 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb113:
  %v201 = sea.const 1 : i1
  sea.br ^bb114(%v201 : i1)
^bb114(%v202 : i1):
  sea.br ^bb115
^bb115:
  %v203 = sea.const 0 : i1 loc("or.cond3.i46.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v204 = sea.select %v189, %v202, %v203 : i1 loc("or.cond3.i46.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.cond_br %v204, ^bb117, ^bb116 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb116:
  sea.br ^bb127 loc("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":47:5)
^bb117:
  %v205 = sea.const 0 : i64 loc(".not10"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v206 = sea.icmp eq, %v168, %v205 : i64 loc(".not10"("aws-c-common/include/aws/common/array_list.inl":95:48))
  sea.cond_br %v206, ^bb127, ^bb118 loc("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":47:5)
^bb118:
  %v207 = sea.load %v44[%v6] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_167"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":48:5))
  %v208 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_168"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":48:5))
  %v209 = sea.ptr.cmp eq, %v207, %v208 : !sea.ptr<64> loc("_168"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":48:5))
  sea.cond_br %v209, ^bb119, ^bb127 loc("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":48:5)
^bb119:
  %v210 = sea.icmp eq, %v173, %v19 : i64 loc("_170"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":49:5))
  sea.cond_br %v210, ^bb120, ^bb127 loc("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":49:5)
^bb120:
  %v211 = sea.icmp eq, %v167, %v25 : i64 loc("_172"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":50:5))
  sea.cond_br %v211, ^bb121, ^bb127 loc("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":50:5)
^bb121:
  %v212 = sea.icmp eq, %v168, %v22 : i64 loc("_174"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":51:5))
  sea.cond_br %v212, ^bb122, ^bb127 loc("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":51:5)
^bb122:
  %v213 = sea.ptr.index %v186 [%v84] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_176"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":54:5))
  %v214 = sea.const 1 : i64 loc("_177"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":54:5))
  %v215 = sea.ptr.dereferenceable %v213, %v214 : !sea.ptr<64>, i64 loc("_177"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":54:5))
  sea.cond_br %v215, ^bb123, ^bb127
^bb123:
  %v216 = sea.load %v166[%v213] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_179"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":54:5))
  %v217 = sea.icmp eq, %v216, %v93 : i8 loc("_180"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":54:5))
  %v218 = sea.const 1 : i64 loc("_181"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":54:5))
  %v219 = sea.ptr.dereferenceable %v213, %v218 : !sea.ptr<64>, i64 loc("_181"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":54:5))
  %v220 = sea.const 0 : i1 loc("_182")
  %v221 = sea.select %v219, %v217, %v220 : i1 loc("_182")
  sea.cond_br %v221, ^bb124, ^bb127
^bb124:
  %v222 = sea.ptr.index %v186 [%v89] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_184"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":55:5))
  %v223 = sea.const 1 : i64 loc("_185"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":55:5))
  %v224 = sea.ptr.dereferenceable %v222, %v223 : !sea.ptr<64>, i64 loc("_185"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":55:5))
  sea.cond_br %v224, ^bb125, ^bb127
^bb125:
  %v225 = sea.load %v166[%v222] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_187"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":55:5))
  %v226 = sea.icmp eq, %v225, %v88 : i8 loc("_188"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":55:5))
  %v227 = sea.const 1 : i64 loc("_189"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":55:5))
  %v228 = sea.ptr.dereferenceable %v222, %v227 : !sea.ptr<64>, i64 loc("_189"("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":55:5))
  sea.cond_br %v228, ^bb126, ^bb127
^bb126:
  %v229 = sea.const 1 : i1 loc("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":55:5)
  %v230 = sea.xor %v226, %v229 : i1 loc("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":55:5)
  sea.assume %v230 loc("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":55:5)
  sea.br ^bb127 loc("seahorn/jobs/array_list_swap/aws_array_list_swap_harness.c":55:5)
^bb127:
  sea.br ^bb128
^bb128:
  %v231 = sea.const 0 : i1
  sea.assert %v231
  sea.halt
}
