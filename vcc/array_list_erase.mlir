// Exported from SeaHorn (array_list_erase.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm25")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm26")
  %v2 = sea.mem.nondet "region.56" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm27")
  %v3 = sea.mem.nondet "region.96" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm28")
  %v4 = sea.mem.nondet "region.105" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm29")
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
  %v55 = sea.nondet "nd_size_t" [14] : i64 loc("_27"("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":15:20))
  sea.br ^bb13
^bb13:
  sea.br ^bb14
^bb14:
  sea.br ^bb15
^bb15:
  %v56 = sea.mul %v29, %v26 : i64 loc("_31"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v57 = sea.umulo %v29, %v26 : i64 loc("_31"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v57, ^bb16, ^bb17 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb16:
  sea.br ^bb17 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb17:
  %v58 = sea.const 1 : i1 loc("_35"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v59 = sea.xor %v57, %v58 : i1 loc("_35"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb18
^bb18:
  %v60 = sea.icmp uge, %v23, %v56 : i64 loc("_37"("aws-c-common/include/aws/common/array_list.inl":92:54))
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
  %v61 = sea.ptr.null : !sea.ptr<64> loc("_45"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v62 = sea.ptr.cmp ne, %v44, %v61 : !sea.ptr<64> loc("_45"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb27(%v62 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb24:
  sea.br ^bb25
^bb25:
  %v63 = sea.ptr.null : !sea.ptr<64> loc("_41"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v64 = sea.ptr.cmp eq, %v44, %v63 : !sea.ptr<64> loc("_41"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v65 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v64, ^bb26, ^bb27(%v65 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb26:
  %v66 = sea.const 1 : i1
  sea.br ^bb27(%v66 : i1)
^bb27(%v67 : i1):
  sea.br ^bb28
^bb28:
  %v68 = sea.const 0 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v69 = sea.select %v59, %v60, %v68 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v70 = sea.and %v69, %v67 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v71 = sea.const 0 : i64 loc("_48")
  %v72 = sea.icmp ne, %v26, %v71 : i64 loc("_48")
  %v73 = sea.const 0 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v74 = sea.select %v70, %v72, %v73 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.assume %v74 loc("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":18:5)
  %v75 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":21:33)
  %v76 = sea.store %v2[%v8], %v75 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":21:33)
  %v77 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":21:33))
  %v78 = sea.store %v76[%v77], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":21:33)
  %v79 = sea.ptr.index %v8 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy5.i"("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":21:33))
  %v80 = sea.store %v78[%v79], %v29 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":21:33)
  %v81 = sea.ptr.index %v8 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i"("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":21:33))
  %v82 = sea.store %v80[%v81], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":21:33)
  %v83 = sea.ptr.index %v8 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy11.i"("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":21:33))
  %v84 = sea.store %v82[%v83], %v44 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":21:33)
  %v85 = sea.nondet "nd_size_t" [15] : i64 loc("_49"("seahorn/lib/utils.c":46:20))
  sea.br ^bb29
^bb29:
  %v86 = sea.store %v3[%v10], %v85 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v87 = sea.const 0 : i64 loc("_51"("seahorn/lib/utils.c":47:12))
  %v88 = sea.icmp ne, %v23, %v87 : i64 loc("_51"("seahorn/lib/utils.c":47:12))
  %v89 = sea.ptr.null : !sea.ptr<64> loc("_52")
  %v90 = sea.ptr.cmp ne, %v44, %v89 : !sea.ptr<64> loc("_52")
  %v91 = sea.and %v88, %v90 : i1 loc("or.cond.i72.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v91, ^bb32, ^bb30 loc("seahorn/lib/utils.c":47:16)
^bb30:
  %v92 = sea.nondet "nd_uint8_t" [16] : i8 loc("_64"("seahorn/lib/utils.c":51:21))
  %v93 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_65"("seahorn/lib/utils.c":51:14))
  sea.br ^bb31
^bb31:
  %v94 = sea.store %v86[%v93], %v92 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb37(%v92 : i8)
^bb32:
  sea.br ^bb33
^bb33:
  %v95 = sea.icmp ult, %v85, %v23 : i64 loc("_55"("seahorn/lib/utils.c":48:27))
  sea.assume %v95 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb34
^bb34:
  %v96 = sea.ptr.index %v44 [%v85] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_57"("seahorn/lib/utils.c":49:21))
  %v97 = sea.const 1 : i64 loc("_58"("seahorn/lib/utils.c":49:21))
  %v98 = sea.ptr.dereferenceable %v96, %v97 : !sea.ptr<64>, i64 loc("_58"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v98, ^bb35, ^bb162
^bb35:
  %v99 = sea.load %v43[%v96] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_60"("seahorn/lib/utils.c":49:21))
  %v100 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_61"("seahorn/lib/utils.c":49:14))
  sea.br ^bb36
^bb36:
  %v101 = sea.store %v86[%v100], %v99 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb37(%v99 : i8) loc("seahorn/lib/utils.c":50:3)
^bb37(%v102 : i8):
  sea.br ^bb38
^bb38:
  %v103 = sea.const 0 : i64 loc(".not.i25.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v104 = sea.icmp eq, %v29, %v103 : i64 loc(".not.i25.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  sea.cond_br %v104, ^bb41, ^bb39 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb39:
  sea.br ^bb40
^bb40:
  %v105 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v106 = sea.ptr.cmp eq, %v44, %v105 : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v107 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v108 = sea.xor %v106, %v107 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v108 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb41 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb41:
  sea.br ^bb42
^bb42:
  %v109 = sea.icmp ugt, %v29, %v55 : i64 loc(".not.i.i"("aws-c-common/include/aws/common/array_list.inl":233:15))
  sea.cond_br %v109, ^bb69, ^bb43 loc("aws-c-common/include/aws/common/array_list.inl":233:9)
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
  %v110 = sea.const 0 : i64 loc("seahorn/lib/utils.c":69:7)
  sea.cond_br %v33, ^bb129(%v110, %v26, %v29 : i64, i64, i64), ^bb61 loc("seahorn/lib/utils.c":69:7)
^bb61:
  sea.br ^bb62
^bb62:
  %v111 = sea.ptr.null : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v112 = sea.ptr.cmp eq, %v44, %v111 : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  sea.cond_br %v112, ^bb129(%v23, %v26, %v29 : i64, i64, i64), ^bb63 loc("seahorn/lib/utils.c":39:14)
^bb63:
  sea.br ^bb64
^bb64:
  %v113 = sea.ptr.index %v44 [%v85] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_186"("seahorn/lib/utils.c":40:5))
  %v114 = sea.const 1 : i64 loc("_187"("seahorn/lib/utils.c":40:5))
  %v115 = sea.ptr.dereferenceable %v113, %v114 : !sea.ptr<64>, i64 loc("_187"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v115, ^bb65, ^bb162
^bb65:
  %v116 = sea.load %v43[%v113] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_189"("seahorn/lib/utils.c":40:5))
  sea.br ^bb66
^bb66:
  %v117 = sea.icmp eq, %v116, %v102 : i8 loc("_191"("seahorn/lib/utils.c":40:5))
  sea.br ^bb67
^bb67:
  %v118 = sea.const 1 : i64 loc("_193"("seahorn/lib/utils.c":40:5))
  %v119 = sea.ptr.dereferenceable %v113, %v118 : !sea.ptr<64>, i64 loc("_193"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v119, ^bb68, ^bb162
^bb68:
  %v120 = sea.const 1 : i1 loc("or.cond13")
  %v121 = sea.const 0 : i1 loc("or.cond13")
  %v122 = sea.select %v120, %v117, %v121 : i1 loc("or.cond13")
  sea.cond_br %v122, ^bb129(%v23, %v26, %v29 : i64, i64, i64), ^bb162
^bb69:
  %v123 = sea.const 0 : i64 loc("_73"("aws-c-common/include/aws/common/array_list.inl":238:15))
  %v124 = sea.icmp eq, %v55, %v123 : i64 loc("_73"("aws-c-common/include/aws/common/array_list.inl":238:15))
  sea.cond_br %v124, ^bb104, ^bb70 loc("aws-c-common/include/aws/common/array_list.inl":238:9)
^bb70:
  %v125 = sea.const 18446744073709551615 : i64 loc("_98"("aws-c-common/include/aws/common/array_list.inl":241:33))
  %v126 = sea.add %v29, %v125 : i64 loc("_98"("aws-c-common/include/aws/common/array_list.inl":241:33))
  %v127 = sea.icmp eq, %v126, %v55 : i64 loc("_99"("aws-c-common/include/aws/common/array_list.inl":241:22))
  sea.cond_br %v127, ^bb92, ^bb71 loc("aws-c-common/include/aws/common/array_list.inl":241:16)
^bb71:
  sea.br ^bb72
^bb72:
  sea.br ^bb73
^bb73:
  %v128 = sea.mul %v55, %v26 : i64 loc("_115"("aws-c-common/include/aws/common/array_list.inl":246:60))
  %v129 = sea.ptr.index %v44 [%v128] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_116"("aws-c-common/include/aws/common/array_list.inl":246:51))
  sea.br ^bb74
^bb74:
  sea.br ^bb75
^bb75:
  %v130 = sea.const 18446744073709551615 : i64 loc("_119"("aws-c-common/include/aws/common/array_list.inl":248:50))
  %v131 = sea.xor %v55, %v130 : i64 loc("_119"("aws-c-common/include/aws/common/array_list.inl":248:50))
  %v132 = sea.add %v29, %v131 : i64 loc("_120"("aws-c-common/include/aws/common/array_list.inl":248:50))
  %v133 = sea.ptr.index %v129 [%v26] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_121"("aws-c-common/include/aws/common/array_list.inl":247:43))
  %v134 = sea.mul %v132, %v26 : i64 loc("_122"("aws-c-common/include/aws/common/array_list.inl":249:48))
  %v135 = sea.ptr.dereferenceable %v129, %v134 : !sea.ptr<64>, i64 loc("_123"("seahorn/lib/bcmp.c":142:3))
  %v136 = sea.ptr.dereferenceable %v129, %v134 : !sea.ptr<64>, i64 loc("_124"("seahorn/lib/bcmp.c":142:3))
  sea.cond_br %v136, ^bb76, ^bb162 loc("seahorn/lib/bcmp.c":142:3)
^bb76:
  %v137 = sea.ptr.dereferenceable %v133, %v134 : !sea.ptr<64>, i64 loc("_126"("seahorn/lib/bcmp.c":143:3))
  %v138 = sea.ptr.dereferenceable %v133, %v134 : !sea.ptr<64>, i64 loc("_127"("seahorn/lib/bcmp.c":143:3))
  sea.cond_br %v138, ^bb77, ^bb162 loc("seahorn/lib/bcmp.c":143:3)
^bb77:
  %v139 = sea.memmove %v43[%v129], %v43[%v133], %v134 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":144:10)
  sea.br ^bb78
^bb78:
  %v140 = sea.load %v31[%v30] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_129"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v141 = sea.const 0 : i64 loc(".not.i3.i37.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v142 = sea.icmp eq, %v140, %v141 : i64 loc(".not.i3.i37.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  sea.cond_br %v142, ^bb90, ^bb79 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb79:
  sea.br ^bb80
^bb80:
  %v143 = sea.load %v46[%v45] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_132"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v144 = sea.ptr.null : !sea.ptr<64> loc(".not1.i4.i38.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v145 = sea.ptr.cmp eq, %v143, %v144 : !sea.ptr<64> loc(".not1.i4.i38.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v146 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v147 = sea.xor %v145, %v146 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v147 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb81
^bb81:
  sea.br ^bb82
^bb82:
  %v148 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":282:9)
  %v149 = sea.xor %v145, %v148 : i1 loc("aws-c-common/include/aws/common/array_list.inl":282:9)
  sea.assume %v149 loc("aws-c-common/include/aws/common/array_list.inl":282:9)
  sea.br ^bb83
^bb83:
  %v150 = sea.load %v28[%v27] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_136"("aws-c-common/include/aws/common/array_list.inl":284:41))
  sea.br ^bb84
^bb84:
  sea.br ^bb85
^bb85:
  %v151 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v152 = sea.xor %v145, %v151 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v152 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb86
^bb86:
  sea.br ^bb87
^bb87:
  sea.br ^bb88
^bb88:
  %v153 = sea.const 18446744073709551615 : i64 loc("_141"("aws-c-common/include/aws/common/array_list.inl":284:82))
  %v154 = sea.add %v140, %v153 : i64 loc("_141"("aws-c-common/include/aws/common/array_list.inl":284:82))
  %v155 = sea.mul %v150, %v154 : i64 loc("_142"("aws-c-common/include/aws/common/array_list.inl":284:51))
  %v156 = sea.ptr.index %v143 [%v155] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_143"("aws-c-common/include/aws/common/array_list.inl":286:47))
  %v157 = sea.const 0 : i8 loc("aws-c-common/include/aws/common/array_list.inl":286:9)
  %v158 = sea.memset %v139[%v156], %v157, %v150 inplace : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/include/aws/common/array_list.inl":286:9)
  sea.br ^bb89
^bb89:
  sea.br ^bb124(%v154 : i64)
^bb90:
  sea.br ^bb91
^bb91:
  %v159 = sea.const 0 : i64 loc("aws-c-common/include/aws/common/array_list.inl":293:5)
  sea.br ^bb124(%v159 : i64) loc("aws-c-common/include/aws/common/array_list.inl":293:5)
^bb92:
  sea.br ^bb93
^bb93:
  sea.br ^bb94
^bb94:
  %v160 = sea.ptr.null : !sea.ptr<64> loc(".not1.i4.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v161 = sea.ptr.cmp eq, %v44, %v160 : !sea.ptr<64> loc(".not1.i4.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v162 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v163 = sea.xor %v161, %v162 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v163 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb95
^bb95:
  sea.br ^bb96
^bb96:
  %v164 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":282:9)
  %v165 = sea.xor %v161, %v164 : i1 loc("aws-c-common/include/aws/common/array_list.inl":282:9)
  sea.assume %v165 loc("aws-c-common/include/aws/common/array_list.inl":282:9)
  sea.br ^bb97
^bb97:
  sea.br ^bb98
^bb98:
  sea.br ^bb99
^bb99:
  %v166 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v167 = sea.xor %v161, %v166 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v167 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb100
^bb100:
  sea.br ^bb101
^bb101:
  sea.br ^bb102
^bb102:
  %v168 = sea.mul %v55, %v26 : i64 loc("_109"("aws-c-common/include/aws/common/array_list.inl":284:51))
  %v169 = sea.ptr.index %v44 [%v168] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_110"("aws-c-common/include/aws/common/array_list.inl":286:47))
  %v170 = sea.const 0 : i8 loc("aws-c-common/include/aws/common/array_list.inl":286:9)
  %v171 = sea.memset %v43[%v169], %v170, %v26 inplace : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/include/aws/common/array_list.inl":286:9)
  sea.br ^bb103
^bb103:
  sea.br ^bb124(%v55 : i64)
^bb104:
  sea.br ^bb105
^bb105:
  sea.br ^bb106
^bb106:
  %v172 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v173 = sea.ptr.cmp eq, %v44, %v172 : !sea.ptr<64> loc(".not1.i.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v174 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v175 = sea.xor %v173, %v174 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v175 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb107
^bb107:
  sea.br ^bb108
^bb108:
  sea.br ^bb109
^bb109:
  %v176 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v177 = sea.xor %v173, %v176 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v177 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb110
^bb110:
  %v178 = sea.const 1 : i64 loc(".not.i53.i"("aws-c-common/include/aws/common/array_list.inl":209:11))
  %v179 = sea.icmp ugt, %v29, %v178 : i64 loc(".not.i53.i"("aws-c-common/include/aws/common/array_list.inl":209:11))
  sea.cond_br %v179, ^bb114, ^bb111 loc("aws-c-common/include/aws/common/array_list.inl":209:9)
^bb111:
  sea.br ^bb112
^bb112:
  %v180 = sea.const 1 : i64 loc("aws-c-common/include/aws/common/array_list.inl":299:9)
  sea.cond_br %v173, ^bb124(%v180 : i64), ^bb113 loc("aws-c-common/include/aws/common/array_list.inl":299:9)
^bb113:
  %v181 = sea.const 0 : i64
  sea.br ^bb124(%v181 : i64)
^bb114:
  sea.br ^bb115
^bb115:
  sea.br ^bb116
^bb116:
  sea.br ^bb117
^bb117:
  %v182 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v183 = sea.xor %v173, %v182 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v183 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb118
^bb118:
  %v184 = sea.const 18446744073709551615 : i64 loc("_86"("aws-c-common/include/aws/common/array_list.inl":217:62))
  %v185 = sea.add %v29, %v184 : i64 loc("_86"("aws-c-common/include/aws/common/array_list.inl":217:62))
  sea.br ^bb119
^bb119:
  %v186 = sea.mul %v185, %v26 : i64 loc("_88"("aws-c-common/include/aws/common/array_list.inl":218:50))
  sea.br ^bb120
^bb120:
  sea.br ^bb121
^bb121:
  %v187 = sea.ptr.index %v44 [%v26] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_91"("aws-c-common/include/aws/common/array_list.inl":219:51))
  %v188 = sea.ptr.dereferenceable %v44, %v186 : !sea.ptr<64>, i64 loc("_92"("seahorn/lib/bcmp.c":142:3))
  %v189 = sea.ptr.dereferenceable %v44, %v186 : !sea.ptr<64>, i64 loc("_93"("seahorn/lib/bcmp.c":142:3))
  sea.cond_br %v189, ^bb122, ^bb162 loc("seahorn/lib/bcmp.c":142:3)
^bb122:
  %v190 = sea.ptr.dereferenceable %v187, %v186 : !sea.ptr<64>, i64 loc("_95"("seahorn/lib/bcmp.c":143:3))
  %v191 = sea.ptr.dereferenceable %v187, %v186 : !sea.ptr<64>, i64 loc("_96"("seahorn/lib/bcmp.c":143:3))
  sea.cond_br %v191, ^bb123, ^bb162 loc("seahorn/lib/bcmp.c":143:3)
^bb123:
  %v192 = sea.memmove %v43[%v44], %v43[%v187], %v186 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":144:10)
  sea.br ^bb124(%v185 : i64)
^bb124(%v193 : i64):
  %v194 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_147"("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":27:9))
  %v195 = sea.const 18446744073709551615 : i64 loc("_148"("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":27:9))
  %v196 = sea.add %v194, %v195 : i64 loc("_148"("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":27:9))
  %v197 = sea.icmp eq, %v193, %v196 : i64 loc("_149"("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":27:9))
  sea.cond_br %v197, ^bb125, ^bb162 loc("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":27:9)
^bb125:
  %v198 = sea.load %v28[%v27] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_151"("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":28:9))
  %v199 = sea.load %v82[%v81] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_152"("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":28:9))
  %v200 = sea.icmp eq, %v198, %v199 : i64 loc("_153"("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":28:9))
  sea.cond_br %v200, ^bb126, ^bb162 loc("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":28:9)
^bb126:
  %v201 = sea.load %v48[%v6] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_155"("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":29:9))
  %v202 = sea.load %v76[%v8] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_156"("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":29:9))
  %v203 = sea.ptr.cmp eq, %v201, %v202 : !sea.ptr<64> loc("_157"("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":29:9))
  sea.cond_br %v203, ^bb127, ^bb162 loc("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":29:9)
^bb127:
  %v204 = sea.load %v25[%v24] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_159"("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":30:9))
  %v205 = sea.load %v78[%v77] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_160"("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":30:9))
  %v206 = sea.icmp eq, %v204, %v205 : i64 loc("_161"("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":30:9))
  sea.cond_br %v206, ^bb128, ^bb162 loc("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":30:9)
^bb128:
  %v207 = sea.icmp ult, %v55, %v194 : i64 loc("_163"("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":31:9))
  sea.cond_br %v207, ^bb129(%v204, %v198, %v193 : i64, i64, i64), ^bb162 loc("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":31:9)
^bb129(%v208 : i64, %v209 : i64, %v210 : i64):
  sea.br ^bb130
^bb130:
  sea.br ^bb131
^bb131:
  sea.br ^bb132
^bb132:
  %v211 = sea.mul %v210, %v209 : i64 loc("_201"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v212 = sea.umulo %v210, %v209 : i64 loc("_201"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v212, ^bb133, ^bb134 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb133:
  sea.br ^bb134 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb134:
  %v213 = sea.const 1 : i1 loc("_205"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v214 = sea.xor %v212, %v213 : i1 loc("_205"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb135
^bb135:
  %v215 = sea.icmp uge, %v208, %v211 : i64 loc("_207"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb136
^bb136:
  %v216 = sea.const 0 : i64 loc("_209"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v217 = sea.icmp eq, %v208, %v216 : i64 loc("_209"("aws-c-common/include/aws/common/array_list.inl":93:26))
  sea.cond_br %v217, ^bb141, ^bb137 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb137:
  sea.br ^bb138
^bb138:
  sea.br ^bb139
^bb139:
  sea.br ^bb140
^bb140:
  %v218 = sea.load %v46[%v45] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_217"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v219 = sea.ptr.null : !sea.ptr<64> loc("_218"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v220 = sea.ptr.cmp ne, %v218, %v219 : !sea.ptr<64> loc("_218"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb144(%v218, %v220 : !sea.ptr<64>, i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb141:
  sea.br ^bb142
^bb142:
  %v221 = sea.load %v46[%v45] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_212"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v222 = sea.ptr.null : !sea.ptr<64> loc("_213"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v223 = sea.ptr.cmp eq, %v221, %v222 : !sea.ptr<64> loc("_213"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v224 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v223, ^bb143, ^bb144(%v221, %v224 : !sea.ptr<64>, i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb143:
  %v225 = sea.ptr.null : !sea.ptr<64>
  %v226 = sea.const 1 : i1
  sea.br ^bb144(%v225, %v226 : !sea.ptr<64>, i1)
^bb144(%v227 : !sea.ptr<64>, %v228 : i1):
  sea.br ^bb145
^bb145:
  %v229 = sea.const 0 : i1 loc("or.cond.i15.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v230 = sea.select %v214, %v215, %v229 : i1 loc("or.cond.i15.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v231 = sea.const 0 : i1 loc("or.cond3.i16.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v232 = sea.select %v230, %v228, %v231 : i1 loc("or.cond3.i16.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v233 = sea.const 0 : i64 loc("_222")
  %v234 = sea.icmp ne, %v209, %v233 : i64 loc("_222")
  %v235 = sea.const 0 : i1 loc("spec.select20"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v236 = sea.select %v232, %v234, %v235 : i1 loc("spec.select20"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb146
^bb146:
  sea.br ^bb147
^bb147:
  sea.br ^bb148
^bb148:
  sea.cond_br %v212, ^bb149, ^bb150 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb149:
  sea.br ^bb150 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb150:
  sea.br ^bb151
^bb151:
  sea.br ^bb152
^bb152:
  sea.cond_br %v217, ^bb157, ^bb153 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb153:
  sea.br ^bb154
^bb154:
  sea.br ^bb155
^bb155:
  sea.br ^bb156
^bb156:
  %v237 = sea.ptr.null : !sea.ptr<64> loc("_235"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v238 = sea.ptr.cmp ne, %v227, %v237 : !sea.ptr<64> loc("_235"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb160(%v238 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb157:
  sea.br ^bb158
^bb158:
  %v239 = sea.ptr.null : !sea.ptr<64> loc("_231"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v240 = sea.ptr.cmp eq, %v227, %v239 : !sea.ptr<64> loc("_231"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v241 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v240, ^bb159, ^bb160(%v241 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb159:
  %v242 = sea.const 1 : i1
  sea.br ^bb160(%v242 : i1)
^bb160(%v243 : i1):
  sea.br ^bb161
^bb161:
  %v244 = sea.const 0 : i1 loc("or.cond3.i21.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v245 = sea.select %v230, %v243, %v244 : i1 loc("or.cond3.i21.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v246 = sea.const 0 : i1 loc("spec.select21"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v247 = sea.select %v245, %v234, %v246 : i1 loc("spec.select21"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v248 = sea.const 1 : i1 loc("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":35:5)
  %v249 = sea.xor %v247, %v248 : i1 loc("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":35:5)
  sea.assume %v249 loc("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":35:5)
  sea.br ^bb162 loc("seahorn/jobs/array_list_erase/aws_array_list_erase_harness.c":35:5)
^bb162:
  sea.br ^bb163
^bb163:
  %v250 = sea.const 0 : i1
  sea.assert %v250
  sea.halt
}
