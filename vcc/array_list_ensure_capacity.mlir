// Exported from SeaHorn (array_list_ensure_capacity.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm22")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm23")
  %v2 = sea.mem.nondet "region.56" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm24")
  %v3 = sea.mem.nondet "region.96" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm25")
  %v4 = sea.mem.nondet "region.105" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm26")
  %v5 = sea.const 40 : i64 loc("_0")
  %v6 = sea.alloca %v5 align 8 [5] : i64 -> !sea.ptr<64> loc("_0")
  %v7 = sea.const 40 : i64 loc("_1")
  %v8 = sea.alloca %v7 align 8 [6] : i64 -> !sea.ptr<64> loc("_1")
  %v9 = sea.const 16 : i64 loc("_2")
  %v10 = sea.alloca %v9 align 8 [7] : i64 -> !sea.ptr<64> loc("_2")
  %v11 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v12 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v13 = sea.store %v0[%v11], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v14 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_3")
  %v15 = sea.ptr.index %v14 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_3")
  %v16 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v17 = sea.store %v13[%v15], %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v18 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_4")
  %v19 = sea.ptr.index %v18 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_4")
  %v20 = sea.const 0 : i8
  %v21 = sea.const 24 : i64
  %v22 = sea.memset %v17[%v19], %v20, %v21 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v23 = sea.nondet "nd_size_t" [8] : i64 loc("_5"("seahorn/lib/array_list_helper.c":26:24))
  %v24 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_6"("seahorn/lib/array_list_helper.c":26:9))
  sea.br ^bb1
^bb1:
  %v25 = sea.store %v1[%v24], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":26:22)
  %v26 = sea.nondet "nd_size_t" [9] : i64 loc("_8"("seahorn/lib/array_list_helper.c":27:21))
  %v27 = sea.ptr.index %v6 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_9"("seahorn/lib/array_list_helper.c":27:9))
  sea.br ^bb2
^bb2:
  %v28 = sea.store %v25[%v27], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":27:19)
  %v29 = sea.nondet "nd_size_t" [10] : i64 loc("_11"("seahorn/lib/array_list_helper.c":28:18))
  %v30 = sea.ptr.index %v6 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_12"("seahorn/lib/array_list_helper.c":28:9))
  sea.br ^bb3
^bb3:
  %v31 = sea.store %v28[%v30], %v29 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":28:16)
  sea.br ^bb4
^bb4:
  %v32 = sea.const 0 : i64 loc("_15"("seahorn/lib/proof_allocators.c":21:15))
  %v33 = sea.icmp eq, %v23, %v32 : i64 loc("_15"("seahorn/lib/proof_allocators.c":21:15))
  %v34 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v33, ^bb8(%v4, %v34 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb5 loc("seahorn/lib/proof_allocators.c":21:10)
^bb5:
  %v35 = sea.nondet "nd_malloc_is_fail" [11] : i1 loc("_17"("seahorn/lib/sea_allocators.c":11:10))
  %v36 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v35, ^bb7(%v4, %v36 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb6 loc("seahorn/lib/sea_allocators.c":11:10)
^bb6:
  %v37 = sea.const 1 : i64 loc("malloc.i")
  %v38 = sea.mul %v23, %v37 : i64 loc("malloc.i")
  %v39 = sea.alloca %v38 align 16 [12] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb7(%v4, %v39 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb7(%v40 : !sea.mem<!sea.ptr<64>, i8>, %v41 : !sea.ptr<64>):
  %v42 = sea.memhavoc %v40[%v41], %v23 [13] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb8(%v42, %v41 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb8(%v43 : !sea.mem<!sea.ptr<64>, i8>, %v44 : !sea.ptr<64>):
  %v45 = sea.ptr.index %v6 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_21"("seahorn/lib/array_list_helper.c":29:9))
  sea.br ^bb9
^bb9:
  %v46 = sea.store %v31[%v45], %v44 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":29:14)
  sea.br ^bb10
^bb10:
  %v47 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  %v48 = sea.store %v46[%v6], %v47 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  %v49 = sea.const 3 : i64 loc("_24"("seahorn/lib/array_list_helper.c":38:47))
  %v50 = sea.icmp ult, %v26, %v49 : i64 loc("_24"("seahorn/lib/array_list_helper.c":38:47))
  %v51 = sea.const 9223372036854775809 : i64 loc("_25"("seahorn/lib/array_list_helper.c":39:41))
  %v52 = sea.icmp ult, %v29, %v51 : i64 loc("_25"("seahorn/lib/array_list_helper.c":39:41))
  %v53 = sea.const 0 : i1 loc("_26"("seahorn/lib/array_list_helper.c":40:31))
  %v54 = sea.select %v50, %v52, %v53 : i1 loc("_26"("seahorn/lib/array_list_helper.c":40:31))
  sea.assume %v54 loc("seahorn/lib/array_list_helper.c":31:3)
  sea.br ^bb13
^bb13:
  sea.br ^bb14
^bb14:
  sea.br ^bb15
^bb15:
  %v55 = sea.mul %v29, %v26 : i64 loc("_30"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v56 = sea.umulo %v29, %v26 : i64 loc("_30"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v56, ^bb16, ^bb17 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb16:
  sea.br ^bb17 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb17:
  %v57 = sea.const 1 : i1 loc("_34"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v58 = sea.xor %v56, %v57 : i1 loc("_34"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb18
^bb18:
  %v59 = sea.icmp uge, %v23, %v55 : i64 loc("_36"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb19
^bb19:
  sea.cond_br %v33, ^bb24, ^bb20 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb20:
  sea.br ^bb21
^bb21:
  sea.br ^bb22
^bb22:
  sea.br ^bb23
^bb23:
  %v60 = sea.ptr.null : !sea.ptr<64> loc("_44"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v61 = sea.ptr.cmp ne, %v44, %v60 : !sea.ptr<64> loc("_44"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb27(%v61 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb24:
  sea.br ^bb25
^bb25:
  %v62 = sea.ptr.null : !sea.ptr<64> loc("_40"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v63 = sea.ptr.cmp eq, %v44, %v62 : !sea.ptr<64> loc("_40"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v64 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v63, ^bb26, ^bb27(%v64 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb26:
  %v65 = sea.const 1 : i1
  sea.br ^bb27(%v65 : i1)
^bb27(%v66 : i1):
  sea.br ^bb28
^bb28:
  %v67 = sea.const 0 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v68 = sea.select %v58, %v59, %v67 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v69 = sea.and %v68, %v66 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v70 = sea.const 0 : i64 loc("_47")
  %v71 = sea.icmp ne, %v26, %v70 : i64 loc("_47")
  %v72 = sea.const 0 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v73 = sea.select %v69, %v71, %v72 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.assume %v73 loc("seahorn/jobs/array_list_ensure_capacity/aws_array_list_ensure_capacity_harness.c":19:5)
  %v74 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/array_list_ensure_capacity/aws_array_list_ensure_capacity_harness.c":22:33)
  %v75 = sea.store %v2[%v8], %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_ensure_capacity/aws_array_list_ensure_capacity_harness.c":22:33)
  %v76 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs/array_list_ensure_capacity/aws_array_list_ensure_capacity_harness.c":22:33))
  %v77 = sea.store %v75[%v76], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_ensure_capacity/aws_array_list_ensure_capacity_harness.c":22:33)
  %v78 = sea.ptr.index %v8 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy5.i"("seahorn/jobs/array_list_ensure_capacity/aws_array_list_ensure_capacity_harness.c":22:33))
  %v79 = sea.store %v77[%v78], %v29 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_ensure_capacity/aws_array_list_ensure_capacity_harness.c":22:33)
  %v80 = sea.ptr.index %v8 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i"("seahorn/jobs/array_list_ensure_capacity/aws_array_list_ensure_capacity_harness.c":22:33))
  %v81 = sea.store %v79[%v80], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_ensure_capacity/aws_array_list_ensure_capacity_harness.c":22:33)
  %v82 = sea.ptr.index %v8 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy11.i"("seahorn/jobs/array_list_ensure_capacity/aws_array_list_ensure_capacity_harness.c":22:33))
  %v83 = sea.store %v81[%v82], %v44 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_ensure_capacity/aws_array_list_ensure_capacity_harness.c":22:33)
  %v84 = sea.nondet "nd_size_t" [14] : i64 loc("_48"("seahorn/lib/utils.c":46:20))
  sea.br ^bb29
^bb29:
  %v85 = sea.store %v3[%v10], %v84 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v86 = sea.const 0 : i64 loc("_50"("seahorn/lib/utils.c":47:12))
  %v87 = sea.icmp ne, %v23, %v86 : i64 loc("_50"("seahorn/lib/utils.c":47:12))
  %v88 = sea.ptr.null : !sea.ptr<64> loc("_51")
  %v89 = sea.ptr.cmp ne, %v44, %v88 : !sea.ptr<64> loc("_51")
  %v90 = sea.and %v87, %v89 : i1 loc("or.cond.i36.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v90, ^bb32, ^bb30 loc("seahorn/lib/utils.c":47:16)
^bb30:
  %v91 = sea.nondet "nd_uint8_t" [15] : i8 loc("_63"("seahorn/lib/utils.c":51:21))
  %v92 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_64"("seahorn/lib/utils.c":51:14))
  sea.br ^bb31
^bb31:
  %v93 = sea.store %v85[%v92], %v91 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb37(%v91 : i8)
^bb32:
  sea.br ^bb33
^bb33:
  %v94 = sea.icmp ult, %v84, %v23 : i64 loc("_54"("seahorn/lib/utils.c":48:27))
  sea.assume %v94 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb34
^bb34:
  %v95 = sea.ptr.index %v44 [%v84] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_56"("seahorn/lib/utils.c":49:21))
  %v96 = sea.const 1 : i64 loc("_57"("seahorn/lib/utils.c":49:21))
  %v97 = sea.ptr.dereferenceable %v95, %v96 : !sea.ptr<64>, i64 loc("_57"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v97, ^bb35, ^bb126
^bb35:
  %v98 = sea.load %v43[%v95] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_59"("seahorn/lib/utils.c":49:21))
  %v99 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_60"("seahorn/lib/utils.c":49:14))
  sea.br ^bb36
^bb36:
  %v100 = sea.store %v85[%v99], %v98 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb37(%v98 : i8) loc("seahorn/lib/utils.c":50:3)
^bb37(%v101 : i8):
  %v102 = sea.nondet "nd_size_t" [16] : i64 loc("_67"("seahorn/jobs/array_list_ensure_capacity/aws_array_list_ensure_capacity_harness.c":27:20))
  sea.br ^bb38
^bb38:
  %v103 = sea.const 1 : i64 loc("_69"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v104 = sea.add %v102, %v103 : i64 loc("_69"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v105 = sea.const 1 : i64 loc("_69"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v106 = sea.uaddo %v102, %v105 : i64 loc("_69"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v106, ^bb100, ^bb39 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb39:
  sea.br ^bb40
^bb40:
  sea.br ^bb41
^bb41:
  %v107 = sea.mul %v104, %v26 : i64 loc("_74"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v108 = sea.umulo %v104, %v26 : i64 loc("_74"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v108, ^bb99, ^bb42 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb42:
  sea.br ^bb43
^bb43:
  %v109 = sea.icmp ult, %v23, %v107 : i64 loc("_79"("aws-c-common/source/array_list.c":116:28))
  sea.cond_br %v109, ^bb44, ^bb61(%v44, %v23 : !sea.ptr<64>, i64) loc("aws-c-common/source/array_list.c":116:9)
^bb44:
  sea.br ^bb45
^bb45:
  sea.br ^bb46
^bb46:
  %v110 = sea.const 1 : i64 loc("_83"("aws-c-common/source/array_list.c":129:58))
  %v111 = sea.shl %v23, %v110 : i64 loc("_83"("aws-c-common/source/array_list.c":129:58))
  %v112 = sea.umax %v111, %v107 : i64 loc("_84"("aws-c-common/source/array_list.c":130:27))
  sea.br ^bb47
^bb47:
  %v113 = sea.icmp ult, %v112, %v23 : i64 loc("_86"("aws-c-common/source/array_list.c":132:22))
  sea.cond_br %v113, ^bb98, ^bb48 loc("aws-c-common/source/array_list.c":132:13)
^bb48:
  sea.br ^bb49
^bb49:
  %v114 = sea.nondet "nd_malloc_is_fail" [17] : i1 loc("_90"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v114, ^bb97, ^bb50 loc("seahorn/lib/sea_allocators.c":11:10)
^bb50:
  %v115 = sea.const 1 : i64 loc("malloc44.i")
  %v116 = sea.mul %v112, %v115 : i64 loc("malloc44.i")
  %v117 = sea.alloca %v116 align 16 [18] : i64 -> !sea.ptr<64> loc("malloc44.i")
  %v118 = sea.memhavoc %v43[%v117], %v112 [19] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb51
^bb51:
  %v119 = sea.ptr.null : !sea.ptr<64> loc(".not5.i.i"("aws-c-common/source/array_list.c":150:13))
  %v120 = sea.ptr.cmp eq, %v44, %v119 : !sea.ptr<64> loc(".not5.i.i"("aws-c-common/source/array_list.c":150:13))
  sea.cond_br %v120, ^bb59, ^bb52 loc("aws-c-common/source/array_list.c":150:13)
^bb52:
  sea.br ^bb53
^bb53:
  sea.br ^bb54
^bb54:
  %v121 = sea.ptr.dereferenceable %v117, %v23 : !sea.ptr<64>, i64 loc("_96"("seahorn/lib/bcmp.c":161:3))
  %v122 = sea.ptr.dereferenceable %v117, %v23 : !sea.ptr<64>, i64 loc("_97"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v122, ^bb55, ^bb126 loc("seahorn/lib/bcmp.c":161:3)
^bb55:
  %v123 = sea.ptr.dereferenceable %v44, %v23 : !sea.ptr<64>, i64 loc("_99"("seahorn/lib/bcmp.c":162:3))
  %v124 = sea.ptr.dereferenceable %v44, %v23 : !sea.ptr<64>, i64 loc("_100"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v124, ^bb56, ^bb126 loc("seahorn/lib/bcmp.c":162:3)
^bb56:
  sea.br ^bb57
^bb57:
  sea.br ^bb58
^bb58:
  sea.br ^bb59 loc("aws-c-common/source/array_list.c":160:9)
^bb59:
  sea.br ^bb60
^bb60:
  sea.br ^bb61(%v117, %v112 : !sea.ptr<64>, i64)
^bb61(%v125 : !sea.ptr<64>, %v126 : i64):
  sea.br ^bb62
^bb62:
  sea.br ^bb63
^bb63:
  sea.br ^bb64
^bb64:
  sea.cond_br %v56, ^bb65, ^bb66 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb65:
  sea.br ^bb66 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb66:
  sea.br ^bb67
^bb67:
  %v127 = sea.icmp uge, %v126, %v55 : i64 loc("_111"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb68
^bb68:
  %v128 = sea.const 0 : i64 loc("_113"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v129 = sea.icmp eq, %v126, %v128 : i64 loc("_113"("aws-c-common/include/aws/common/array_list.inl":93:26))
  sea.cond_br %v129, ^bb73, ^bb69 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb69:
  sea.br ^bb70
^bb70:
  sea.br ^bb71
^bb71:
  sea.br ^bb72
^bb72:
  %v130 = sea.ptr.null : !sea.ptr<64> loc("_120"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v131 = sea.ptr.cmp ne, %v125, %v130 : !sea.ptr<64> loc("_120"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb76(%v131 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb73:
  sea.br ^bb74
^bb74:
  %v132 = sea.ptr.null : !sea.ptr<64> loc("_116"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v133 = sea.ptr.cmp eq, %v125, %v132 : !sea.ptr<64> loc("_116"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v134 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v133, ^bb75, ^bb76(%v134 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb75:
  %v135 = sea.const 1 : i1
  sea.br ^bb76(%v135 : i1)
^bb76(%v136 : i1):
  sea.br ^bb77
^bb77:
  %v137 = sea.const 0 : i1 loc("or.cond.i18.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v138 = sea.select %v58, %v127, %v137 : i1 loc("or.cond.i18.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v139 = sea.and %v138, %v136 : i1 loc("or.cond3.i19.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v140 = sea.const 0 : i1 loc("spec.select24"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v141 = sea.select %v139, %v71, %v140 : i1 loc("spec.select24"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb78
^bb78:
  sea.br ^bb79
^bb79:
  sea.br ^bb80
^bb80:
  sea.cond_br %v56, ^bb81, ^bb82 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb81:
  sea.br ^bb82 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb82:
  sea.br ^bb83
^bb83:
  sea.br ^bb84
^bb84:
  sea.cond_br %v129, ^bb89, ^bb85 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb85:
  sea.br ^bb86
^bb86:
  sea.br ^bb87
^bb87:
  sea.br ^bb88
^bb88:
  %v142 = sea.ptr.null : !sea.ptr<64> loc("_135"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v143 = sea.ptr.cmp ne, %v125, %v142 : !sea.ptr<64> loc("_135"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb92(%v143 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb89:
  sea.br ^bb90
^bb90:
  %v144 = sea.ptr.null : !sea.ptr<64> loc("_131"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v145 = sea.ptr.cmp eq, %v125, %v144 : !sea.ptr<64> loc("_131"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v146 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v145, ^bb91, ^bb92(%v146 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb91:
  %v147 = sea.const 1 : i1
  sea.br ^bb92(%v147 : i1)
^bb92(%v148 : i1):
  sea.br ^bb93
^bb93:
  %v149 = sea.and %v138, %v148 : i1 loc("or.cond3.i24.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.cond_br %v149, ^bb95, ^bb94 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb94:
  sea.br ^bb126 loc("seahorn/jobs/array_list_ensure_capacity/aws_array_list_ensure_capacity_harness.c":31:9)
^bb95:
  %v150 = sea.const 0 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v151 = sea.icmp eq, %v26, %v150 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  sea.cond_br %v151, ^bb126, ^bb96 loc("seahorn/jobs/array_list_ensure_capacity/aws_array_list_ensure_capacity_harness.c":31:9)
^bb96:
  %v152 = sea.icmp uge, %v126, %v23 : i64 loc("_140"("seahorn/jobs/array_list_ensure_capacity/aws_array_list_ensure_capacity_harness.c":35:9))
  %v153 = sea.icmp ult, %v126, %v23 : i64 loc(".not13.i"("seahorn/jobs/array_list_ensure_capacity/aws_array_list_ensure_capacity_harness.c":35:9))
  sea.assume %v153 loc("seahorn/jobs/array_list_ensure_capacity/aws_array_list_ensure_capacity_harness.c":35:9)
  sea.br ^bb126 loc("seahorn/jobs/array_list_ensure_capacity/aws_array_list_ensure_capacity_harness.c":35:9)
^bb97:
  sea.br ^bb101 loc("aws-c-common/source/array_list.c":145:13)
^bb98:
  sea.br ^bb101 loc("aws-c-common/source/array_list.c":140:13)
^bb99:
  sea.br ^bb101
^bb100:
  sea.br ^bb101 loc("aws-c-common/source/array_list.c":111:9)
^bb101:
  sea.br ^bb102
^bb102:
  sea.br ^bb103
^bb103:
  sea.br ^bb104
^bb104:
  sea.br ^bb105
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
  sea.br ^bb116
^bb116:
  sea.br ^bb117
^bb117:
  sea.br ^bb118
^bb118:
  %v154 = sea.const 1 : i1 loc("seahorn/lib/utils.c":69:7)
  %v155 = sea.xor %v33, %v154 : i1 loc("seahorn/lib/utils.c":69:7)
  sea.assume %v155 loc("seahorn/lib/utils.c":69:7)
  sea.br ^bb119
^bb119:
  sea.assume %v89 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb120
^bb120:
  %v156 = sea.ptr.index %v44 [%v84] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_160"("seahorn/lib/utils.c":40:5))
  %v157 = sea.const 1 : i64 loc("_161"("seahorn/lib/utils.c":40:5))
  %v158 = sea.ptr.dereferenceable %v156, %v157 : !sea.ptr<64>, i64 loc("_161"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v158, ^bb121, ^bb126
^bb121:
  %v159 = sea.load %v43[%v156] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_163"("seahorn/lib/utils.c":40:5))
  sea.br ^bb122
^bb122:
  %v160 = sea.icmp eq, %v159, %v101 : i8 loc("_165"("seahorn/lib/utils.c":40:5))
  sea.br ^bb123
^bb123:
  %v161 = sea.const 1 : i64 loc("_167"("seahorn/lib/utils.c":40:5))
  %v162 = sea.ptr.dereferenceable %v156, %v161 : !sea.ptr<64>, i64 loc("_167"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v162, ^bb124, ^bb126
^bb124:
  sea.br ^bb125
^bb125:
  %v163 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v164 = sea.xor %v160, %v163 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v164 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb126 loc("seahorn/lib/utils.c":40:5)
^bb126:
  sea.br ^bb127
^bb127:
  %v165 = sea.const 0 : i1
  sea.assert %v165
  sea.halt
}
