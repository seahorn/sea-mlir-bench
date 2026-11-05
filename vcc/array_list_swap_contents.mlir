// Exported from SeaHorn (array_list_swap_contents.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm48")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm49")
  %v2 = sea.mem.nondet "region.56" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm50")
  %v3 = sea.mem.nondet "region.96" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm51")
  %v4 = sea.mem.nondet "region.136" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm52")
  %v5 = sea.mem.nondet "region.145" [5] : !sea.mem<!sea.ptr<64>, i8> loc("sm53")
  %v6 = sea.mem.nondet "region.185" [6] : !sea.mem<!sea.ptr<64>, i8> loc("sm54")
  %v7 = sea.mem.nondet "region.194" [7] : !sea.mem<!sea.ptr<64>, i8> loc("sm55")
  %v8 = sea.const 40 : i64 loc("_0")
  %v9 = sea.alloca %v8 align 8 [8] : i64 -> !sea.ptr<64> loc("_0")
  %v10 = sea.const 40 : i64 loc("_1")
  %v11 = sea.alloca %v10 align 8 [9] : i64 -> !sea.ptr<64> loc("_1")
  %v12 = sea.const 40 : i64 loc("_2")
  %v13 = sea.alloca %v12 align 8 [10] : i64 -> !sea.ptr<64> loc("_2")
  %v14 = sea.const 16 : i64 loc("_3")
  %v15 = sea.alloca %v14 align 8 [11] : i64 -> !sea.ptr<64> loc("_3")
  %v16 = sea.const 40 : i64 loc("_4")
  %v17 = sea.alloca %v16 align 8 [12] : i64 -> !sea.ptr<64> loc("_4")
  %v18 = sea.const 16 : i64 loc("_5")
  %v19 = sea.alloca %v18 align 8 [13] : i64 -> !sea.ptr<64> loc("_5")
  %v20 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v21 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v22 = sea.store %v0[%v20], %v21 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v23 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_6")
  %v24 = sea.ptr.index %v23 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_6")
  %v25 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v26 = sea.store %v22[%v24], %v25 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v27 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_7")
  %v28 = sea.ptr.index %v27 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_7")
  %v29 = sea.const 0 : i8
  %v30 = sea.const 24 : i64
  %v31 = sea.memset %v26[%v28], %v29, %v30 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v32 = sea.nondet "nd_size_t" [14] : i64 loc("_8"("seahorn/lib/array_list_helper.c":26:24))
  %v33 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_9"("seahorn/lib/array_list_helper.c":26:9))
  sea.br ^bb1
^bb1:
  %v34 = sea.store %v1[%v33], %v32 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":26:22)
  %v35 = sea.nondet "nd_size_t" [15] : i64 loc("_11"("seahorn/lib/array_list_helper.c":27:21))
  %v36 = sea.ptr.index %v9 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_12"("seahorn/lib/array_list_helper.c":27:9))
  sea.br ^bb2
^bb2:
  %v37 = sea.store %v34[%v36], %v35 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":27:19)
  %v38 = sea.nondet "nd_size_t" [16] : i64 loc("_14"("seahorn/lib/array_list_helper.c":28:18))
  %v39 = sea.ptr.index %v9 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_15"("seahorn/lib/array_list_helper.c":28:9))
  sea.br ^bb3
^bb3:
  %v40 = sea.store %v37[%v39], %v38 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":28:16)
  sea.br ^bb4
^bb4:
  %v41 = sea.const 0 : i64 loc("_18"("seahorn/lib/proof_allocators.c":21:15))
  %v42 = sea.icmp eq, %v32, %v41 : i64 loc("_18"("seahorn/lib/proof_allocators.c":21:15))
  %v43 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v42, ^bb8(%v7, %v43 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb5 loc("seahorn/lib/proof_allocators.c":21:10)
^bb5:
  %v44 = sea.nondet "nd_malloc_is_fail" [17] : i1 loc("_20"("seahorn/lib/sea_allocators.c":11:10))
  %v45 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v44, ^bb7(%v7, %v45 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb6 loc("seahorn/lib/sea_allocators.c":11:10)
^bb6:
  %v46 = sea.const 1 : i64 loc("malloc.i")
  %v47 = sea.mul %v32, %v46 : i64 loc("malloc.i")
  %v48 = sea.alloca %v47 align 16 [18] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb7(%v7, %v48 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb7(%v49 : !sea.mem<!sea.ptr<64>, i8>, %v50 : !sea.ptr<64>):
  %v51 = sea.memhavoc %v49[%v50], %v32 [19] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb8(%v51, %v50 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb8(%v52 : !sea.mem<!sea.ptr<64>, i8>, %v53 : !sea.ptr<64>):
  %v54 = sea.ptr.index %v9 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_24"("seahorn/lib/array_list_helper.c":29:9))
  sea.br ^bb9
^bb9:
  %v55 = sea.store %v40[%v54], %v53 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":29:14)
  sea.br ^bb10
^bb10:
  %v56 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  %v57 = sea.store %v55[%v9], %v56 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  %v58 = sea.const 3 : i64 loc("_27"("seahorn/lib/array_list_helper.c":38:47))
  %v59 = sea.icmp ult, %v35, %v58 : i64 loc("_27"("seahorn/lib/array_list_helper.c":38:47))
  %v60 = sea.const 9223372036854775809 : i64 loc("_28"("seahorn/lib/array_list_helper.c":39:41))
  %v61 = sea.icmp ult, %v38, %v60 : i64 loc("_28"("seahorn/lib/array_list_helper.c":39:41))
  %v62 = sea.const 0 : i1 loc("_29"("seahorn/lib/array_list_helper.c":40:31))
  %v63 = sea.select %v59, %v61, %v62 : i1 loc("_29"("seahorn/lib/array_list_helper.c":40:31))
  sea.assume %v63 loc("seahorn/lib/array_list_helper.c":31:3)
  %v64 = sea.nondet "nd_size_t" [20] : i64 loc("_30"("seahorn/lib/array_list_helper.c":26:24))
  %v65 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_31"("seahorn/lib/array_list_helper.c":26:9))
  sea.br ^bb13
^bb13:
  %v66 = sea.store %v2[%v65], %v64 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":26:22)
  %v67 = sea.nondet "nd_size_t" [21] : i64 loc("_33"("seahorn/lib/array_list_helper.c":27:21))
  %v68 = sea.ptr.index %v11 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_34"("seahorn/lib/array_list_helper.c":27:9))
  sea.br ^bb14
^bb14:
  %v69 = sea.store %v66[%v68], %v67 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":27:19)
  %v70 = sea.nondet "nd_size_t" [22] : i64 loc("_36"("seahorn/lib/array_list_helper.c":28:18))
  %v71 = sea.ptr.index %v11 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_37"("seahorn/lib/array_list_helper.c":28:9))
  sea.br ^bb15
^bb15:
  %v72 = sea.store %v69[%v71], %v70 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":28:16)
  sea.br ^bb16
^bb16:
  %v73 = sea.const 0 : i64 loc("_40"("seahorn/lib/proof_allocators.c":21:15))
  %v74 = sea.icmp eq, %v64, %v73 : i64 loc("_40"("seahorn/lib/proof_allocators.c":21:15))
  %v75 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v74, ^bb20(%v52, %v75 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb17 loc("seahorn/lib/proof_allocators.c":21:10)
^bb17:
  %v76 = sea.nondet "nd_malloc_is_fail" [23] : i1 loc("_42"("seahorn/lib/sea_allocators.c":11:10))
  %v77 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v76, ^bb19(%v52, %v77 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb18 loc("seahorn/lib/sea_allocators.c":11:10)
^bb18:
  %v78 = sea.const 1 : i64 loc("malloc90.i")
  %v79 = sea.mul %v64, %v78 : i64 loc("malloc90.i")
  %v80 = sea.alloca %v79 align 16 [24] : i64 -> !sea.ptr<64> loc("malloc90.i")
  sea.br ^bb19(%v52, %v80 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb19(%v81 : !sea.mem<!sea.ptr<64>, i8>, %v82 : !sea.ptr<64>):
  %v83 = sea.memhavoc %v81[%v82], %v64 [25] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb20(%v83, %v82 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb20(%v84 : !sea.mem<!sea.ptr<64>, i8>, %v85 : !sea.ptr<64>):
  %v86 = sea.ptr.index %v11 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_46"("seahorn/lib/array_list_helper.c":29:9))
  sea.br ^bb21
^bb21:
  %v87 = sea.store %v72[%v86], %v85 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":29:14)
  sea.br ^bb22
^bb22:
  %v88 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  %v89 = sea.store %v87[%v11], %v88 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  sea.br ^bb23
^bb23:
  sea.br ^bb24
^bb24:
  %v90 = sea.const 3 : i64 loc("_49"("seahorn/lib/array_list_helper.c":38:47))
  %v91 = sea.icmp ult, %v67, %v90 : i64 loc("_49"("seahorn/lib/array_list_helper.c":38:47))
  %v92 = sea.const 9223372036854775809 : i64 loc("_50"("seahorn/lib/array_list_helper.c":39:41))
  %v93 = sea.icmp ult, %v70, %v92 : i64 loc("_50"("seahorn/lib/array_list_helper.c":39:41))
  %v94 = sea.const 0 : i1 loc("_51"("seahorn/lib/array_list_helper.c":40:31))
  %v95 = sea.select %v91, %v93, %v94 : i1 loc("_51"("seahorn/lib/array_list_helper.c":40:31))
  sea.assume %v95 loc("seahorn/lib/array_list_helper.c":31:3)
  sea.br ^bb25
^bb25:
  sea.br ^bb26
^bb26:
  sea.br ^bb27
^bb27:
  %v96 = sea.mul %v38, %v35 : i64 loc("_55"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v97 = sea.umulo %v38, %v35 : i64 loc("_55"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v97, ^bb28, ^bb29 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb28:
  sea.br ^bb29 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb29:
  %v98 = sea.const 1 : i1 loc("_59"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v99 = sea.xor %v97, %v98 : i1 loc("_59"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb30
^bb30:
  %v100 = sea.icmp uge, %v32, %v96 : i64 loc("_61"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb31
^bb31:
  sea.cond_br %v42, ^bb36, ^bb32 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb32:
  sea.br ^bb33
^bb33:
  sea.br ^bb34
^bb34:
  sea.br ^bb35
^bb35:
  %v101 = sea.ptr.null : !sea.ptr<64> loc("_69"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v102 = sea.ptr.cmp ne, %v53, %v101 : !sea.ptr<64> loc("_69"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb39(%v102 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb36:
  sea.br ^bb37
^bb37:
  %v103 = sea.ptr.null : !sea.ptr<64> loc("_65"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v104 = sea.ptr.cmp eq, %v53, %v103 : !sea.ptr<64> loc("_65"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v105 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v104, ^bb38, ^bb39(%v105 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb38:
  %v106 = sea.const 1 : i1
  sea.br ^bb39(%v106 : i1)
^bb39(%v107 : i1):
  sea.br ^bb40
^bb40:
  %v108 = sea.const 0 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v109 = sea.select %v99, %v100, %v108 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v110 = sea.and %v109, %v107 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v111 = sea.const 0 : i64 loc("_72")
  %v112 = sea.icmp ne, %v35, %v111 : i64 loc("_72")
  %v113 = sea.const 0 : i1 loc("spec.select35"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v114 = sea.select %v110, %v112, %v113 : i1 loc("spec.select35"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.assume %v114 loc("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":21:5)
  sea.br ^bb41
^bb41:
  sea.br ^bb42
^bb42:
  sea.br ^bb43
^bb43:
  %v115 = sea.mul %v70, %v67 : i64 loc("_76"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v116 = sea.umulo %v70, %v67 : i64 loc("_76"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v116, ^bb44, ^bb45 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb44:
  sea.br ^bb45 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb45:
  %v117 = sea.const 1 : i1 loc("_80"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v118 = sea.xor %v116, %v117 : i1 loc("_80"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb46
^bb46:
  %v119 = sea.icmp uge, %v64, %v115 : i64 loc("_82"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb47
^bb47:
  sea.cond_br %v74, ^bb52, ^bb48 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb48:
  sea.br ^bb49
^bb49:
  sea.br ^bb50
^bb50:
  sea.br ^bb51
^bb51:
  %v120 = sea.ptr.null : !sea.ptr<64> loc("_90"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v121 = sea.ptr.cmp ne, %v85, %v120 : !sea.ptr<64> loc("_90"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb55(%v121 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb52:
  sea.br ^bb53
^bb53:
  %v122 = sea.ptr.null : !sea.ptr<64> loc("_86"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v123 = sea.ptr.cmp eq, %v85, %v122 : !sea.ptr<64> loc("_86"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v124 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v123, ^bb54, ^bb55(%v124 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb54:
  %v125 = sea.const 1 : i1
  sea.br ^bb55(%v125 : i1)
^bb55(%v126 : i1):
  sea.br ^bb56
^bb56:
  %v127 = sea.const 0 : i1 loc("or.cond.i30.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v128 = sea.select %v118, %v119, %v127 : i1 loc("or.cond.i30.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v129 = sea.and %v128, %v126 : i1 loc("or.cond3.i31.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v130 = sea.const 0 : i64 loc("_93")
  %v131 = sea.icmp ne, %v67, %v130 : i64 loc("_93")
  %v132 = sea.const 0 : i1 loc("spec.select36"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v133 = sea.select %v129, %v131, %v132 : i1 loc("spec.select36"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.assume %v133 loc("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":22:5)
  %v134 = sea.const 1 : i1 loc("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":24:5)
  sea.assume %v134 loc("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":24:5)
  %v135 = sea.const 1 : i1 loc("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":25:5)
  sea.assume %v135 loc("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":25:5)
  sea.assume %v112 loc("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":27:5)
  sea.assume %v131 loc("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":28:5)
  %v136 = sea.icmp eq, %v35, %v67 : i64 loc("_94"("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":29:27))
  sea.assume %v136 loc("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":29:5)
  %v137 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":32:38)
  %v138 = sea.store %v3[%v13], %v137 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":32:38)
  %v139 = sea.ptr.index %v13 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":32:38))
  %v140 = sea.store %v138[%v139], %v32 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":32:38)
  %v141 = sea.ptr.index %v13 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy5.i"("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":32:38))
  %v142 = sea.store %v140[%v141], %v38 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":32:38)
  %v143 = sea.ptr.index %v13 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i"("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":32:38))
  %v144 = sea.store %v142[%v143], %v35 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":32:38)
  %v145 = sea.ptr.index %v13 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy11.i"("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":32:38))
  %v146 = sea.store %v144[%v145], %v53 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":32:38)
  %v147 = sea.nondet "nd_size_t" [26] : i64 loc("_95"("seahorn/lib/utils.c":46:20))
  sea.br ^bb57
^bb57:
  %v148 = sea.store %v4[%v15], %v147 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v149 = sea.const 0 : i64 loc("_97"("seahorn/lib/utils.c":47:12))
  %v150 = sea.icmp ne, %v32, %v149 : i64 loc("_97"("seahorn/lib/utils.c":47:12))
  %v151 = sea.ptr.null : !sea.ptr<64> loc("_98")
  %v152 = sea.ptr.cmp ne, %v53, %v151 : !sea.ptr<64> loc("_98")
  %v153 = sea.and %v150, %v152 : i1 loc("or.cond.i79.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v153, ^bb60, ^bb58 loc("seahorn/lib/utils.c":47:16)
^bb58:
  %v154 = sea.nondet "nd_uint8_t" [27] : i8 loc("_110"("seahorn/lib/utils.c":51:21))
  %v155 = sea.ptr.index %v15 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_111"("seahorn/lib/utils.c":51:14))
  sea.br ^bb59
^bb59:
  %v156 = sea.store %v148[%v155], %v154 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb65(%v154 : i8)
^bb60:
  sea.br ^bb61
^bb61:
  %v157 = sea.icmp ult, %v147, %v32 : i64 loc("_101"("seahorn/lib/utils.c":48:27))
  sea.assume %v157 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb62
^bb62:
  %v158 = sea.ptr.index %v53 [%v147] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_103"("seahorn/lib/utils.c":49:21))
  %v159 = sea.const 1 : i64 loc("_104"("seahorn/lib/utils.c":49:21))
  %v160 = sea.ptr.dereferenceable %v158, %v159 : !sea.ptr<64>, i64 loc("_104"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v160, ^bb63, ^bb194
^bb63:
  %v161 = sea.load %v84[%v158] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_106"("seahorn/lib/utils.c":49:21))
  %v162 = sea.ptr.index %v15 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_107"("seahorn/lib/utils.c":49:14))
  sea.br ^bb64
^bb64:
  %v163 = sea.store %v148[%v162], %v161 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb65(%v161 : i8) loc("seahorn/lib/utils.c":50:3)
^bb65(%v164 : i8):
  %v165 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":36:36)
  %v166 = sea.store %v5[%v17], %v165 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":36:36)
  %v167 = sea.ptr.index %v17 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy17.i"("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":36:36))
  %v168 = sea.store %v166[%v167], %v64 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":36:36)
  %v169 = sea.ptr.index %v17 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy20.i"("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":36:36))
  %v170 = sea.store %v168[%v169], %v70 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":36:36)
  %v171 = sea.ptr.index %v17 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy23.i"("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":36:36))
  %v172 = sea.store %v170[%v171], %v67 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":36:36)
  %v173 = sea.ptr.index %v17 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy26.i"("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":36:36))
  %v174 = sea.store %v172[%v173], %v85 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":36:36)
  %v175 = sea.nondet "nd_size_t" [28] : i64 loc("_114"("seahorn/lib/utils.c":46:20))
  sea.br ^bb66
^bb66:
  %v176 = sea.store %v6[%v19], %v175 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v177 = sea.const 0 : i64 loc("_116"("seahorn/lib/utils.c":47:12))
  %v178 = sea.icmp ne, %v64, %v177 : i64 loc("_116"("seahorn/lib/utils.c":47:12))
  %v179 = sea.ptr.null : !sea.ptr<64> loc("_117")
  %v180 = sea.ptr.cmp ne, %v85, %v179 : !sea.ptr<64> loc("_117")
  %v181 = sea.and %v178, %v180 : i1 loc("or.cond.i81.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v181, ^bb69, ^bb67 loc("seahorn/lib/utils.c":47:16)
^bb67:
  %v182 = sea.nondet "nd_uint8_t" [29] : i8 loc("_129"("seahorn/lib/utils.c":51:21))
  %v183 = sea.ptr.index %v19 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_130"("seahorn/lib/utils.c":51:14))
  sea.br ^bb68
^bb68:
  %v184 = sea.store %v176[%v183], %v182 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb74(%v182 : i8)
^bb69:
  sea.br ^bb70
^bb70:
  %v185 = sea.icmp ult, %v175, %v64 : i64 loc("_120"("seahorn/lib/utils.c":48:27))
  sea.assume %v185 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb71
^bb71:
  %v186 = sea.ptr.index %v85 [%v175] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_122"("seahorn/lib/utils.c":49:21))
  %v187 = sea.const 1 : i64 loc("_123"("seahorn/lib/utils.c":49:21))
  %v188 = sea.ptr.dereferenceable %v186, %v187 : !sea.ptr<64>, i64 loc("_123"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v188, ^bb72, ^bb194
^bb72:
  %v189 = sea.load %v84[%v186] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_125"("seahorn/lib/utils.c":49:21))
  %v190 = sea.ptr.index %v19 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_126"("seahorn/lib/utils.c":49:14))
  sea.br ^bb73
^bb73:
  %v191 = sea.store %v176[%v190], %v189 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb74(%v189 : i8) loc("seahorn/lib/utils.c":50:3)
^bb74(%v192 : i8):
  sea.br ^bb75
^bb75:
  %v193 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":312:5)
  %v194 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":312:5)
  %v195 = sea.xor %v193, %v194 : i1 loc("aws-c-common/include/aws/common/array_list.inl":312:5)
  sea.assume %v195 loc("aws-c-common/include/aws/common/array_list.inl":312:5)
  sea.br ^bb76
^bb76:
  sea.br ^bb77
^bb77:
  %v196 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":313:5)
  sea.assume %v196 loc("aws-c-common/include/aws/common/array_list.inl":313:5)
  sea.br ^bb78
^bb78:
  sea.br ^bb79
^bb79:
  sea.assume %v136 loc("aws-c-common/include/aws/common/array_list.inl":314:5)
  %v197 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":320:15)
  %v198 = sea.store %v57[%v9], %v197 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":320:15)
  %v199 = sea.store %v198[%v33], %v64 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":320:15)
  %v200 = sea.store %v199[%v39], %v70 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":320:15)
  %v201 = sea.store %v200[%v36], %v67 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":320:15)
  %v202 = sea.store %v201[%v54], %v85 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":320:15)
  %v203 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":321:15)
  %v204 = sea.store %v89[%v11], %v203 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":321:15)
  %v205 = sea.store %v204[%v65], %v32 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":321:15)
  %v206 = sea.store %v205[%v71], %v38 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":321:15)
  %v207 = sea.store %v206[%v68], %v35 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":321:15)
  %v208 = sea.store %v207[%v86], %v53 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":321:15)
  sea.br ^bb80
^bb80:
  sea.br ^bb81
^bb81:
  sea.br ^bb82
^bb82:
  sea.cond_br %v116, ^bb83, ^bb84 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb83:
  sea.br ^bb84 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb84:
  sea.br ^bb85
^bb85:
  sea.br ^bb86
^bb86:
  sea.cond_br %v74, ^bb90, ^bb87 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb87:
  sea.br ^bb88
^bb88:
  sea.br ^bb89
^bb89:
  sea.br ^bb93(%v180 : i1)
^bb90:
  sea.br ^bb91
^bb91:
  %v209 = sea.ptr.null : !sea.ptr<64> loc("_145"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v210 = sea.ptr.cmp eq, %v85, %v209 : !sea.ptr<64> loc("_145"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v211 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v210, ^bb92, ^bb93(%v211 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb92:
  %v212 = sea.const 1 : i1
  sea.br ^bb93(%v212 : i1)
^bb93(%v213 : i1):
  sea.br ^bb94
^bb94:
  %v214 = sea.and %v128, %v213 : i1 loc("or.cond3.i36.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v215 = sea.const 0 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v216 = sea.select %v214, %v131, %v215 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb95
^bb95:
  sea.br ^bb96
^bb96:
  sea.br ^bb97
^bb97:
  sea.cond_br %v116, ^bb98, ^bb99 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb98:
  sea.br ^bb99 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb99:
  sea.br ^bb100
^bb100:
  sea.br ^bb101
^bb101:
  sea.cond_br %v74, ^bb105, ^bb102 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb102:
  sea.br ^bb103
^bb103:
  sea.br ^bb104
^bb104:
  sea.br ^bb108(%v180 : i1)
^bb105:
  sea.br ^bb106
^bb106:
  %v217 = sea.ptr.null : !sea.ptr<64> loc("_158"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v218 = sea.ptr.cmp eq, %v85, %v217 : !sea.ptr<64> loc("_158"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v219 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v218, ^bb107, ^bb108(%v219 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb107:
  %v220 = sea.const 1 : i1
  sea.br ^bb108(%v220 : i1)
^bb108(%v221 : i1):
  sea.br ^bb109
^bb109:
  %v222 = sea.and %v128, %v221 : i1 loc("or.cond3.i41.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v223 = sea.const 0 : i1 loc("_164"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v224 = sea.select %v222, %v131, %v223 : i1 loc("_164"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.cond_br %v224, ^bb110, ^bb194 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb110:
  sea.br ^bb111
^bb111:
  sea.br ^bb112
^bb112:
  sea.br ^bb113
^bb113:
  sea.cond_br %v97, ^bb114, ^bb115 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb114:
  sea.br ^bb115 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb115:
  sea.br ^bb116
^bb116:
  sea.br ^bb117
^bb117:
  sea.cond_br %v42, ^bb121, ^bb118 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb118:
  sea.br ^bb119
^bb119:
  sea.br ^bb120
^bb120:
  sea.br ^bb124(%v152 : i1)
^bb121:
  sea.br ^bb122
^bb122:
  %v225 = sea.ptr.null : !sea.ptr<64> loc("_174"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v226 = sea.ptr.cmp eq, %v53, %v225 : !sea.ptr<64> loc("_174"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v227 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v226, ^bb123, ^bb124(%v227 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb123:
  %v228 = sea.const 1 : i1
  sea.br ^bb124(%v228 : i1)
^bb124(%v229 : i1):
  sea.br ^bb125
^bb125:
  %v230 = sea.and %v109, %v229 : i1 loc("or.cond3.i46.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v231 = sea.const 0 : i1 loc("spec.select37"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v232 = sea.select %v230, %v112, %v231 : i1 loc("spec.select37"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb126
^bb126:
  sea.br ^bb127
^bb127:
  sea.br ^bb128
^bb128:
  sea.cond_br %v97, ^bb129, ^bb130 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb129:
  sea.br ^bb130 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb130:
  sea.br ^bb131
^bb131:
  sea.br ^bb132
^bb132:
  sea.cond_br %v42, ^bb136, ^bb133 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb133:
  sea.br ^bb134
^bb134:
  sea.br ^bb135
^bb135:
  sea.br ^bb139(%v152 : i1)
^bb136:
  sea.br ^bb137
^bb137:
  %v233 = sea.ptr.null : !sea.ptr<64> loc("_187"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v234 = sea.ptr.cmp eq, %v53, %v233 : !sea.ptr<64> loc("_187"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v235 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v234, ^bb138, ^bb139(%v235 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb138:
  %v236 = sea.const 1 : i1
  sea.br ^bb139(%v236 : i1)
^bb139(%v237 : i1):
  sea.br ^bb140
^bb140:
  %v238 = sea.and %v109, %v237 : i1 loc("or.cond3.i51.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.cond_br %v238, ^bb142, ^bb141 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb141:
  sea.br ^bb194 loc("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":45:5)
^bb142:
  %v239 = sea.const 0 : i64 loc(".not34"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v240 = sea.icmp eq, %v35, %v239 : i64 loc(".not34"("aws-c-common/include/aws/common/array_list.inl":95:48))
  sea.cond_br %v240, ^bb194, ^bb143 loc("seahorn/jobs/array_list_swap_contents/aws_array_list_swap_contents_harness.c":45:5)
^bb143:
  sea.br ^bb144
^bb144:
  sea.br ^bb145
^bb145:
  sea.br ^bb146
^bb146:
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
  sea.br ^bb152
^bb152:
  sea.br ^bb153
^bb153:
  sea.br ^bb154
^bb154:
  sea.br ^bb155
^bb155:
  sea.br ^bb156
^bb156:
  sea.br ^bb157
^bb157:
  sea.br ^bb158
^bb158:
  sea.br ^bb159
^bb159:
  sea.br ^bb160
^bb160:
  sea.cond_br %v74, ^bb169, ^bb161 loc("seahorn/lib/utils.c":69:7)
^bb161:
  sea.br ^bb162
^bb162:
  %v241 = sea.ptr.null : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v242 = sea.ptr.cmp eq, %v85, %v241 : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  sea.cond_br %v242, ^bb169, ^bb163 loc("seahorn/lib/utils.c":39:14)
^bb163:
  sea.br ^bb164
^bb164:
  %v243 = sea.ptr.index %v85 [%v175] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_215"("seahorn/lib/utils.c":40:5))
  %v244 = sea.const 1 : i64 loc("_216"("seahorn/lib/utils.c":40:5))
  %v245 = sea.ptr.dereferenceable %v243, %v244 : !sea.ptr<64>, i64 loc("_216"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v245, ^bb165, ^bb194
^bb165:
  %v246 = sea.load %v84[%v243] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_218"("seahorn/lib/utils.c":40:5))
  sea.br ^bb166
^bb166:
  %v247 = sea.icmp eq, %v246, %v192 : i8 loc("_220"("seahorn/lib/utils.c":40:5))
  sea.br ^bb167
^bb167:
  %v248 = sea.const 1 : i64 loc("_222"("seahorn/lib/utils.c":40:5))
  %v249 = sea.ptr.dereferenceable %v243, %v248 : !sea.ptr<64>, i64 loc("_222"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v249, ^bb168, ^bb194
^bb168:
  %v250 = sea.const 1 : i1 loc("or.cond14")
  %v251 = sea.const 0 : i1 loc("or.cond14")
  %v252 = sea.select %v250, %v247, %v251 : i1 loc("or.cond14")
  sea.cond_br %v252, ^bb169, ^bb194
^bb169:
  sea.br ^bb170
^bb170:
  sea.br ^bb171
^bb171:
  sea.br ^bb172
^bb172:
  sea.br ^bb173
^bb173:
  sea.br ^bb174
^bb174:
  sea.br ^bb175
^bb175:
  sea.br ^bb176
^bb176:
  sea.br ^bb177
^bb177:
  sea.br ^bb178
^bb178:
  sea.br ^bb179
^bb179:
  sea.br ^bb180
^bb180:
  sea.br ^bb181
^bb181:
  sea.br ^bb182
^bb182:
  sea.br ^bb183
^bb183:
  sea.br ^bb184
^bb184:
  sea.br ^bb185
^bb185:
  sea.br ^bb186
^bb186:
  %v253 = sea.const 1 : i1 loc("seahorn/lib/utils.c":69:7)
  %v254 = sea.xor %v42, %v253 : i1 loc("seahorn/lib/utils.c":69:7)
  sea.assume %v254 loc("seahorn/lib/utils.c":69:7)
  sea.br ^bb187
^bb187:
  sea.assume %v152 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb188
^bb188:
  %v255 = sea.ptr.index %v53 [%v147] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_243"("seahorn/lib/utils.c":40:5))
  %v256 = sea.const 1 : i64 loc("_244"("seahorn/lib/utils.c":40:5))
  %v257 = sea.ptr.dereferenceable %v255, %v256 : !sea.ptr<64>, i64 loc("_244"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v257, ^bb189, ^bb194
^bb189:
  %v258 = sea.load %v84[%v255] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_246"("seahorn/lib/utils.c":40:5))
  sea.br ^bb190
^bb190:
  %v259 = sea.icmp eq, %v258, %v164 : i8 loc("_248"("seahorn/lib/utils.c":40:5))
  sea.br ^bb191
^bb191:
  %v260 = sea.const 1 : i64 loc("_250"("seahorn/lib/utils.c":40:5))
  %v261 = sea.ptr.dereferenceable %v255, %v260 : !sea.ptr<64>, i64 loc("_250"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v261, ^bb192, ^bb194
^bb192:
  sea.br ^bb193
^bb193:
  %v262 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v263 = sea.xor %v259, %v262 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v263 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb194 loc("seahorn/lib/utils.c":40:5)
^bb194:
  sea.br ^bb195
^bb195:
  %v264 = sea.const 0 : i1
  sea.assert %v264
  sea.halt
}
