// Exported from SeaHorn (array_list_init_static2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm17")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm18")
  %v2 = sea.mem.nondet "region.56" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm19")
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
  %v49 = sea.nondet "nd_size_t" [10] : i64 loc("_25"("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":21:24))
  %v50 = sea.nondet "nd_size_t" [11] : i64 loc("_26"("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":22:38))
  %v51 = sea.nondet "nd_size_t" [12] : i64 loc("_27"("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":23:18))
  %v52 = sea.const 18446744073709551615 : i64 loc("_28"("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":26:40))
  %v53 = sea.add %v50, %v52 : i64 loc("_28"("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":26:40))
  %v54 = sea.const 18446744073709551615 : i64 loc("_29"("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":26:40))
  %v55 = sea.icmp sgt, %v53, %v54 : i64 loc("_29"("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":26:40))
  sea.assume %v55 loc("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":26:5)
  %v56 = sea.const 18446744073709551615 : i64 loc("_30"("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":27:26))
  %v57 = sea.add %v49, %v56 : i64 loc("_30"("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":27:26))
  %v58 = sea.const 2 : i64 loc("_31"("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":27:26))
  %v59 = sea.icmp ult, %v57, %v58 : i64 loc("_31"("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":27:26))
  sea.assume %v59 loc("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":27:5)
  sea.br ^bb13
^bb13:
  %v60 = sea.mul %v50, %v49 : i64 loc("_33"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v61 = sea.umulo %v50, %v49 : i64 loc("_33"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v61, ^bb14, ^bb15 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb14:
  sea.br ^bb15 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb15:
  %v62 = sea.const 1 : i1 loc(".not.i"("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":28:5))
  %v63 = sea.xor %v61, %v62 : i1 loc(".not.i"("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":28:5))
  sea.assume %v63 loc("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":28:5)
  sea.tracking_on loc("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":31:5)
  %v64 = sea.const 0 : i64 loc("_37"("seahorn/lib/proof_allocators.c":17:15))
  %v65 = sea.icmp eq, %v60, %v64 : i64 loc("_37"("seahorn/lib/proof_allocators.c":17:15))
  %v66 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v65, ^bb19(%v37, %v66 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb16 loc("seahorn/lib/proof_allocators.c":17:10)
^bb16:
  %v67 = sea.nondet "nd_malloc_is_fail" [13] : i1 loc("_39"("seahorn/lib/sea_allocators.c":11:10))
  %v68 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v67, ^bb18(%v37, %v68 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb17 loc("seahorn/lib/sea_allocators.c":11:10)
^bb17:
  %v69 = sea.const 1 : i64 loc("malloc23.i")
  %v70 = sea.mul %v60, %v69 : i64 loc("malloc23.i")
  %v71 = sea.alloca %v70 align 16 [14] : i64 -> !sea.ptr<64> loc("malloc23.i")
  sea.br ^bb18(%v37, %v71 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb18(%v72 : !sea.mem<!sea.ptr<64>, i8>, %v73 : !sea.ptr<64>):
  %v74 = sea.memhavoc %v72[%v73], %v60 [15] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v75 = sea.ptr.null : !sea.ptr<64> loc("_42"("seahorn/lib/sea_allocators.c":45:10))
  %v76 = sea.ptr.cmp ne, %v73, %v75 : !sea.ptr<64> loc("_42"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v76 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb19(%v74, %v73 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb19(%v77 : !sea.mem<!sea.ptr<64>, i8>, %v78 : !sea.ptr<64>):
  %v79 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":66:5))
  %v80 = sea.ptr.cmp eq, %v78, %v79 : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":66:5))
  %v81 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":66:5)
  %v82 = sea.xor %v80, %v81 : i1 loc("aws-c-common/include/aws/common/array_list.inl":66:5)
  sea.assume %v82 loc("aws-c-common/include/aws/common/array_list.inl":66:5)
  %v83 = sea.const 0 : i64 loc(".not2.i.i"("aws-c-common/include/aws/common/array_list.inl":67:5))
  %v84 = sea.icmp eq, %v50, %v83 : i64 loc(".not2.i.i"("aws-c-common/include/aws/common/array_list.inl":67:5))
  %v85 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":67:5)
  %v86 = sea.xor %v84, %v85 : i1 loc("aws-c-common/include/aws/common/array_list.inl":67:5)
  sea.assume %v86 loc("aws-c-common/include/aws/common/array_list.inl":67:5)
  %v87 = sea.const 0 : i64 loc(".not3.i.i"("aws-c-common/include/aws/common/array_list.inl":68:5))
  %v88 = sea.icmp eq, %v49, %v87 : i64 loc(".not3.i.i"("aws-c-common/include/aws/common/array_list.inl":68:5))
  %v89 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":68:5)
  %v90 = sea.xor %v88, %v89 : i1 loc("aws-c-common/include/aws/common/array_list.inl":68:5)
  sea.assume %v90 loc("aws-c-common/include/aws/common/array_list.inl":68:5)
  sea.br ^bb20
^bb20:
  %v91 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":71:17)
  %v92 = sea.store %v42[%v4], %v91 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":71:17)
  sea.br ^bb21
^bb21:
  sea.cond_br %v61, ^bb22, ^bb23 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb22:
  sea.br ^bb23 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb23:
  sea.assume %v63 loc("aws-c-common/include/aws/common/array_list.inl":75:5)
  sea.br ^bb24
^bb24:
  %v93 = sea.store %v92[%v18], %v60 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":76:24)
  sea.br ^bb25
^bb25:
  %v94 = sea.store %v93[%v21], %v49 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":78:21)
  sea.br ^bb26
^bb26:
  %v95 = sea.const 0 : i64 loc("aws-c-common/include/aws/common/array_list.inl":79:18)
  %v96 = sea.store %v94[%v24], %v95 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":79:18)
  sea.br ^bb27
^bb27:
  %v97 = sea.store %v96[%v39], %v78 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":80:16)
  sea.br ^bb28
^bb28:
  sea.br ^bb29
^bb29:
  sea.br ^bb30
^bb30:
  sea.br ^bb31
^bb31:
  sea.br ^bb32
^bb32:
  sea.cond_br %v65, ^bb37, ^bb33 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb33:
  sea.br ^bb34
^bb34:
  sea.br ^bb35
^bb35:
  sea.br ^bb36
^bb36:
  %v98 = sea.ptr.null : !sea.ptr<64> loc("_59"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v99 = sea.ptr.cmp ne, %v78, %v98 : !sea.ptr<64> loc("_59"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb41(%v99 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb37:
  sea.br ^bb38
^bb38:
  sea.cond_br %v80, ^bb40, ^bb39 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb39:
  %v100 = sea.const 0 : i1
  sea.br ^bb43(%v100 : i1)
^bb40:
  %v101 = sea.const 1 : i1
  sea.br ^bb41(%v101 : i1)
^bb41(%v102 : i1):
  sea.br ^bb42
^bb42:
  %v103 = sea.const 0 : i64 loc("_63")
  %v104 = sea.icmp ne, %v49, %v103 : i64 loc("_63")
  %v105 = sea.const 0 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v106 = sea.select %v102, %v104, %v105 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb43(%v106 : i1) loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb43(%v107 : i1):
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
  sea.cond_br %v65, ^bb54, ^bb49 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb49:
  sea.br ^bb50
^bb50:
  sea.br ^bb51
^bb51:
  sea.br ^bb52
^bb52:
  sea.br ^bb53
^bb53:
  sea.cond_br %v80, ^bb57, ^bb60 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb54:
  sea.br ^bb55
^bb55:
  sea.cond_br %v80, ^bb58, ^bb56 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb56:
  sea.br ^bb57
^bb57:
  sea.br ^bb65 loc("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":38:5)
^bb58:
  sea.br ^bb59
^bb59:
  sea.br ^bb60
^bb60:
  sea.cond_br %v88, ^bb65, ^bb61 loc("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":38:5)
^bb61:
  %v108 = sea.mul %v50, %v49 : i64 loc("_76"("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":42:5))
  %v109 = sea.icmp eq, %v60, %v108 : i64 loc("_77"("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":42:5))
  sea.cond_br %v109, ^bb62, ^bb65 loc("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":42:5)
^bb62:
  %v110 = sea.or %v65, %v80 : i1 loc("brmerge"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v110, ^bb64, ^bb63 loc("seahorn/lib/utils.c":15:3)
^bb63:
  %v111 = sea.nondet "nd_size_t" [16] : i64 loc("_80"("seahorn/lib/utils.c":17:16))
  %v112 = sea.icmp ult, %v111, %v60 : i64 loc("_81"("seahorn/lib/utils.c":19:14))
  %v113 = sea.const 36028797018963967 : i64 loc("_82"("seahorn/lib/utils.c":19:20))
  %v114 = sea.icmp ult, %v60, %v113 : i64 loc("_82"("seahorn/lib/utils.c":19:20))
  %v115 = sea.and %v114, %v112 : i1 loc("_83"("seahorn/lib/utils.c":19:20))
  sea.assume %v115 loc("seahorn/lib/utils.c":19:5)
  sea.br ^bb64 loc("seahorn/lib/utils.c":20:5)
^bb64:
  %v116 = sea.mem.is_modified %v77[%v78] : !sea.mem<!sea.ptr<64>, i8> loc("_84"("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":45:5))
  %v117 = sea.const 1 : i1 loc("_85"("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":45:5))
  %v118 = sea.xor %v116, %v117 : i1 loc("_85"("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":45:5))
  %v119 = sea.mem.is_modified %v77[%v78] : !sea.mem<!sea.ptr<64>, i8> loc("_86"("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":45:5))
  sea.assume %v119 loc("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":45:5)
  sea.br ^bb65 loc("seahorn/jobs2/array_list_init_static2/aws_array_list_init_static_harness2.c":45:5)
^bb65:
  sea.br ^bb66
^bb66:
  %v120 = sea.const 0 : i1
  sea.assert %v120
  sea.halt
}
