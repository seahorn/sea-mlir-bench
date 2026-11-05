// Exported from SeaHorn (byte_buf_append_dynamic.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm21")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm22")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm23")
  %v3 = sea.mem.nondet "region.64" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm24")
  %v4 = sea.const 32 : i64 loc("_0")
  %v5 = sea.alloca %v4 align 8 [4] : i64 -> !sea.ptr<64> loc("_0")
  %v6 = sea.const 16 : i64 loc("_1")
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
  %v20 = sea.nondet "nd_size_t" [6] : i64 loc("_4"("seahorn/lib/byte_buf_helper.c":19:18))
  %v21 = sea.nondet "nd_size_t" [7] : i64 loc("_5"("seahorn/lib/byte_buf_helper.c":20:18))
  %v22 = sea.icmp ule, %v20, %v21 : i64 loc("_6"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v22 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v23 = sea.const 11 : i64 loc("_7"("seahorn/lib/byte_buf_helper.c":22:16))
  %v24 = sea.icmp ult, %v21, %v23 : i64 loc("_7"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v24 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb1
^bb1:
  %v25 = sea.store %v1[%v5], %v20 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v26 = sea.ptr.index %v5 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_9"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb2
^bb2:
  %v27 = sea.store %v25[%v26], %v21 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v28 = sea.const 0 : i64 loc("_11"("seahorn/lib/proof_allocators.c":21:15))
  %v29 = sea.icmp eq, %v21, %v28 : i64 loc("_11"("seahorn/lib/proof_allocators.c":21:15))
  %v30 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v29, ^bb6(%v3, %v30 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/proof_allocators.c":21:10)
^bb3:
  %v31 = sea.nondet "nd_malloc_is_fail" [8] : i1 loc("_13"("seahorn/lib/sea_allocators.c":11:10))
  %v32 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v31, ^bb5(%v3, %v32 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/sea_allocators.c":11:10)
^bb4:
  %v33 = sea.const 1 : i64 loc("malloc.i")
  %v34 = sea.mul %v21, %v33 : i64 loc("malloc.i")
  %v35 = sea.alloca %v34 align 16 [9] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb5(%v3, %v35 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb5(%v36 : !sea.mem<!sea.ptr<64>, i8>, %v37 : !sea.ptr<64>):
  %v38 = sea.memhavoc %v36[%v37], %v21 [10] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb6(%v38, %v37 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb6(%v39 : !sea.mem<!sea.ptr<64>, i8>, %v40 : !sea.ptr<64>):
  %v41 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_17"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb7
^bb7:
  %v42 = sea.store %v27[%v41], %v40 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v43 = sea.ptr.index %v5 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_19"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb8
^bb8:
  %v44 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v45 = sea.store %v42[%v43], %v44 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  sea.br ^bb9
^bb9:
  sea.cond_br %v29, ^bb17, ^bb10 loc("aws-c-common/source/byte_buf.c":60:33)
^bb10:
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  sea.br ^bb13
^bb13:
  %v46 = sea.icmp ugt, %v20, %v21 : i64 loc(".not2.i24.i"("aws-c-common/source/byte_buf.c":61:44))
  %v47 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v46, ^bb22(%v47 : i1), ^bb14 loc("aws-c-common/source/byte_buf.c":61:61)
^bb14:
  sea.br ^bb15
^bb15:
  sea.br ^bb16
^bb16:
  %v48 = sea.ptr.null : !sea.ptr<64> loc("_33"("aws-c-common/source/byte_buf.c":61:64))
  %v49 = sea.ptr.cmp ne, %v40, %v48 : !sea.ptr<64> loc("_33"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb22(%v49 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb17:
  sea.br ^bb18
^bb18:
  %v50 = sea.const 0 : i64 loc("_23"("aws-c-common/source/byte_buf.c":60:45))
  %v51 = sea.icmp eq, %v20, %v50 : i64 loc("_23"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v51, ^bb19, ^bb21 loc("aws-c-common/source/byte_buf.c":60:50)
^bb19:
  sea.br ^bb20
^bb20:
  %v52 = sea.ptr.null : !sea.ptr<64> loc("_26"("aws-c-common/source/byte_buf.c":60:65))
  %v53 = sea.ptr.cmp eq, %v40, %v52 : !sea.ptr<64> loc("_26"("aws-c-common/source/byte_buf.c":60:65))
  %v54 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v53, ^bb22(%v54 : i1), ^bb21 loc("aws-c-common/source/byte_buf.c":60:74)
^bb21:
  %v55 = sea.const 0 : i1
  sea.br ^bb22(%v55 : i1)
^bb22(%v56 : i1):
  sea.assume %v56 loc("seahorn/jobs/byte_buf_append_dynamic/aws_byte_buf_append_dynamic_harness.c":13:5)
  %v57 = sea.nondet "nd_size_t" [11] : i64 loc("_35"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb23
^bb23:
  %v58 = sea.store %v2[%v7], %v57 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb24
^bb24:
  %v59 = sea.const 11 : i64 loc("_38"("seahorn/lib/byte_buf_helper.c":33:24))
  %v60 = sea.icmp ult, %v57, %v59 : i64 loc("_38"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v60 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v61 = sea.nondet "nd_malloc_is_fail" [12] : i1 loc("_39"("seahorn/lib/sea_allocators.c":11:10))
  %v62 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v61, ^bb26(%v39, %v62 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb25 loc("seahorn/lib/sea_allocators.c":11:10)
^bb25:
  %v63 = sea.const 10 : i64 loc("malloc65.i8")
  %v64 = sea.alloca %v63 align 16 [13] : i64 -> !sea.ptr<64> loc("malloc65.i8")
  sea.br ^bb26(%v39, %v64 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb26(%v65 : !sea.mem<!sea.ptr<64>, i8>, %v66 : !sea.ptr<64>):
  %v67 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v68 = sea.memhavoc %v65[%v66], %v67 [14] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v69 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_42"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb27
^bb27:
  %v70 = sea.store %v58[%v69], %v66 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  sea.br ^bb28
^bb28:
  %v71 = sea.const 0 : i64 loc("_44"("aws-c-common/source/byte_buf.c":66:26))
  %v72 = sea.icmp eq, %v57, %v71 : i64 loc("_44"("aws-c-common/source/byte_buf.c":66:26))
  %v73 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v72, ^bb34(%v73 : i1), ^bb29 loc("aws-c-common/source/byte_buf.c":66:32)
^bb29:
  sea.br ^bb30
^bb30:
  sea.br ^bb31
^bb31:
  %v74 = sea.ptr.null : !sea.ptr<64> loc(".not2.i35.i"("aws-c-common/source/byte_buf.c":66:55))
  %v75 = sea.ptr.cmp eq, %v66, %v74 : !sea.ptr<64> loc(".not2.i35.i"("aws-c-common/source/byte_buf.c":66:55))
  %v76 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v75, ^bb34(%v76 : i1), ^bb32 loc("aws-c-common/source/byte_buf.c":66:67)
^bb32:
  sea.br ^bb33
^bb33:
  %v77 = sea.const 1 : i1
  sea.br ^bb34(%v77 : i1)
^bb34(%v78 : i1):
  sea.assume %v78 loc("seahorn/jobs/byte_buf_append_dynamic/aws_byte_buf_append_dynamic_harness.c":20:5)
  sea.br ^bb35
^bb35:
  sea.br ^bb36
^bb36:
  sea.br ^bb37
^bb37:
  sea.br ^bb38
^bb38:
  %v79 = sea.sub %v21, %v20 : i64 loc("_55"("aws-c-common/source/byte_buf.c":656:22))
  %v80 = sea.icmp ult, %v79, %v57 : i64 loc("_56"("aws-c-common/source/byte_buf.c":656:32))
  sea.cond_br %v80, ^bb48, ^bb39 loc("aws-c-common/source/byte_buf.c":656:9)
^bb39:
  sea.br ^bb40
^bb40:
  sea.cond_br %v72, ^bb83(%v68, %v45 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>), ^bb41 loc("aws-c-common/source/byte_buf.c":734:13)
^bb41:
  sea.br ^bb42
^bb42:
  sea.br ^bb43
^bb43:
  %v81 = sea.ptr.index %v40 [%v20] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_108"("aws-c-common/source/byte_buf.c":738:31))
  sea.br ^bb44
^bb44:
  sea.br ^bb45
^bb45:
  %v82 = sea.ptr.dereferenceable %v81, %v57 : !sea.ptr<64>, i64 loc("_111"("seahorn/lib/bcmp.c":161:3))
  %v83 = sea.ptr.dereferenceable %v81, %v57 : !sea.ptr<64>, i64 loc("_112"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v83, ^bb46, ^bb137 loc("seahorn/lib/bcmp.c":161:3)
^bb46:
  %v84 = sea.ptr.dereferenceable %v66, %v57 : !sea.ptr<64>, i64 loc("_114"("seahorn/lib/bcmp.c":162:3))
  %v85 = sea.ptr.dereferenceable %v66, %v57 : !sea.ptr<64>, i64 loc("_115"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v85, ^bb47, ^bb137 loc("seahorn/lib/bcmp.c":162:3)
^bb47:
  %v86 = sea.memmove %v68[%v81], %v68[%v66], %v57 inplace src_align 16 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb83(%v86, %v45 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":739:9)
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
  %v87 = sea.sub %v20, %v21 : i64 loc(".neg.i.i"("aws-c-common/source/byte_buf.c":660:61))
  %v88 = sea.add %v87, %v57 : i64 loc("_63"("aws-c-common/source/byte_buf.c":660:45))
  %v89 = sea.add %v21, %v88 : i64 loc("_64"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v90 = sea.uaddo %v21, %v88 : i64 loc("_64"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v90, ^bb88, ^bb54 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb54:
  sea.br ^bb55
^bb55:
  sea.br ^bb56
^bb56:
  %v91 = sea.add %v21, %v21 : i64 loc("spec.store.select.i.i"("aws-c-common/include/aws/common/math.gcc_overflow.inl":82:9))
  %v92 = sea.uaddo %v21, %v21 : i64 loc("spec.store.select.i.i"("aws-c-common/include/aws/common/math.gcc_overflow.inl":82:9))
  %v93 = sea.const 18446744073709551615 : i64 loc("spec.store.select.i.i"("aws-c-common/include/aws/common/math.gcc_overflow.inl":82:9))
  %v94 = sea.select %v92, %v93, %v91 : i64 loc("spec.store.select.i.i"("aws-c-common/include/aws/common/math.gcc_overflow.inl":82:9))
  %v95 = sea.umax %v89, %v94 : i64 loc("spec.select.i.i"("aws-c-common/source/byte_buf.c":677:13))
  sea.br ^bb57
^bb57:
  %v96 = sea.const 0 : i64 loc("_70"("seahorn/lib/allocator_override.c":17:3))
  %v97 = sea.icmp ne, %v95, %v96 : i64 loc("_70"("seahorn/lib/allocator_override.c":17:3))
  %v98 = sea.const 0 : i64 loc(".not.i59.i"("seahorn/lib/allocator_override.c":17:3))
  %v99 = sea.icmp eq, %v95, %v98 : i64 loc(".not.i59.i"("seahorn/lib/allocator_override.c":17:3))
  sea.cond_br %v99, ^bb137, ^bb58 loc("seahorn/lib/allocator_override.c":17:3)
^bb58:
  %v100 = sea.nondet "nd_malloc_is_fail" [15] : i1 loc("_72"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v100, ^bb60, ^bb59 loc("seahorn/lib/sea_allocators.c":11:10)
^bb59:
  %v101 = sea.const 1 : i64 loc("malloc66.i")
  %v102 = sea.mul %v95, %v101 : i64 loc("malloc66.i")
  %v103 = sea.alloca %v102 align 16 [16] : i64 -> !sea.ptr<64> loc("malloc66.i")
  %v104 = sea.memhavoc %v68[%v103], %v95 [17] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb65(%v104, %v95, %v103 : !sea.mem<!sea.ptr<64>, i8>, i64, !sea.ptr<64>) loc("seahorn/lib/allocator_override.c":19:7)
^bb60:
  %v105 = sea.icmp ugt, %v94, %v89 : i64 loc("_73"("aws-c-common/source/byte_buf.c":691:30))
  sea.cond_br %v105, ^bb61, ^bb89 loc("aws-c-common/source/byte_buf.c":691:17)
^bb61:
  sea.br ^bb62
^bb62:
  %v106 = sea.const 0 : i64 loc("_76"("seahorn/lib/allocator_override.c":17:3))
  %v107 = sea.icmp ne, %v89, %v106 : i64 loc("_76"("seahorn/lib/allocator_override.c":17:3))
  %v108 = sea.const 0 : i64 loc(".not.i55.i"("seahorn/lib/allocator_override.c":17:3))
  %v109 = sea.icmp eq, %v89, %v108 : i64 loc(".not.i55.i"("seahorn/lib/allocator_override.c":17:3))
  sea.cond_br %v109, ^bb137, ^bb63 loc("seahorn/lib/allocator_override.c":17:3)
^bb63:
  %v110 = sea.nondet "nd_malloc_is_fail" [18] : i1 loc("_78"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v110, ^bb87, ^bb64 loc("seahorn/lib/sea_allocators.c":11:10)
^bb64:
  %v111 = sea.const 1 : i64 loc("malloc67.i")
  %v112 = sea.mul %v89, %v111 : i64 loc("malloc67.i")
  %v113 = sea.alloca %v112 align 16 [19] : i64 -> !sea.ptr<64> loc("malloc67.i")
  %v114 = sea.memhavoc %v68[%v113], %v89 [20] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb65(%v114, %v89, %v113 : !sea.mem<!sea.ptr<64>, i8>, i64, !sea.ptr<64>) loc("seahorn/lib/allocator_override.c":19:7)
^bb65(%v115 : !sea.mem<!sea.ptr<64>, i8>, %v116 : i64, %v117 : !sea.ptr<64>):
  sea.br ^bb66
^bb66:
  %v118 = sea.const 0 : i64 loc(".not8.i.i"("aws-c-common/source/byte_buf.c":709:21))
  %v119 = sea.icmp eq, %v20, %v118 : i64 loc(".not8.i.i"("aws-c-common/source/byte_buf.c":709:21))
  sea.cond_br %v119, ^bb72(%v115 : !sea.mem<!sea.ptr<64>, i8>), ^bb67 loc("aws-c-common/source/byte_buf.c":709:13)
^bb67:
  sea.br ^bb68
^bb68:
  sea.br ^bb69
^bb69:
  %v120 = sea.ptr.dereferenceable %v117, %v20 : !sea.ptr<64>, i64 loc("_84"("seahorn/lib/bcmp.c":161:3))
  %v121 = sea.ptr.dereferenceable %v117, %v20 : !sea.ptr<64>, i64 loc("_85"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v121, ^bb70, ^bb137 loc("seahorn/lib/bcmp.c":161:3)
^bb70:
  %v122 = sea.ptr.dereferenceable %v40, %v20 : !sea.ptr<64>, i64 loc("_87"("seahorn/lib/bcmp.c":162:3))
  %v123 = sea.ptr.dereferenceable %v40, %v20 : !sea.ptr<64>, i64 loc("_88"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v123, ^bb71, ^bb137 loc("seahorn/lib/bcmp.c":162:3)
^bb71:
  %v124 = sea.memmove %v115[%v117], %v115[%v40], %v20 inplace align 16 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb72(%v124 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":711:9)
^bb72(%v125 : !sea.mem<!sea.ptr<64>, i8>):
  sea.br ^bb73
^bb73:
  sea.br ^bb74
^bb74:
  %v126 = sea.ptr.index %v117 [%v20] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_92"("aws-c-common/source/byte_buf.c":716:31))
  sea.br ^bb75
^bb75:
  sea.br ^bb76
^bb76:
  %v127 = sea.ptr.dereferenceable %v126, %v57 : !sea.ptr<64>, i64 loc("_95"("seahorn/lib/bcmp.c":161:3))
  %v128 = sea.ptr.dereferenceable %v126, %v57 : !sea.ptr<64>, i64 loc("_96"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v128, ^bb77, ^bb137 loc("seahorn/lib/bcmp.c":161:3)
^bb77:
  %v129 = sea.ptr.dereferenceable %v66, %v57 : !sea.ptr<64>, i64 loc("_98"("seahorn/lib/bcmp.c":162:3))
  %v130 = sea.ptr.dereferenceable %v66, %v57 : !sea.ptr<64>, i64 loc("_99"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v130, ^bb78, ^bb137 loc("seahorn/lib/bcmp.c":162:3)
^bb78:
  %v131 = sea.memmove %v125[%v126], %v125[%v66], %v57 inplace src_align 16 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb79
^bb79:
  sea.br ^bb80
^bb80:
  sea.br ^bb81
^bb81:
  %v132 = sea.store %v45[%v41], %v117 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":731:20)
  sea.br ^bb82
^bb82:
  %v133 = sea.store %v132[%v26], %v116 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":732:22)
  sea.br ^bb83(%v131, %v133 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb83(%v134 : !sea.mem<!sea.ptr<64>, i8>, %v135 : !sea.mem<!sea.ptr<64>, i8>):
  sea.br ^bb84
^bb84:
  %v136 = sea.load %v58[%v7] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_118"("aws-c-common/source/byte_buf.c":742:22))
  sea.br ^bb85
^bb85:
  %v137 = sea.load %v135[%v5] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_120"("aws-c-common/source/byte_buf.c":742:13))
  sea.br ^bb86
^bb86:
  %v138 = sea.add %v137, %v136 : i64 loc("_121"("aws-c-common/source/byte_buf.c":742:13))
  %v139 = sea.icmp eq, %v137, %v20 : i64 loc("_122"("seahorn/jobs/byte_buf_append_dynamic/aws_byte_buf_append_dynamic_harness.c":26:9))
  sea.cond_br %v139, ^bb92(%v134, %v135, %v136, %v138 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64), ^bb137 loc("seahorn/jobs/byte_buf_append_dynamic/aws_byte_buf_append_dynamic_harness.c":26:9)
^bb87:
  sea.br ^bb89 loc("aws-c-common/source/byte_buf.c":694:21)
^bb88:
  sea.br ^bb89 loc("aws-c-common/source/byte_buf.c":663:13)
^bb89:
  %v140 = sea.const 0 : i64 loc("_123"("seahorn/lib/utils.c":15:3))
  %v141 = sea.icmp eq, %v20, %v140 : i64 loc("_123"("seahorn/lib/utils.c":15:3))
  %v142 = sea.ptr.null : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":15:3))
  %v143 = sea.ptr.cmp eq, %v40, %v142 : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":15:3))
  %v144 = sea.or %v141, %v143 : i1 loc("brmerge"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v144, ^bb91, ^bb90 loc("seahorn/lib/utils.c":15:3)
^bb90:
  %v145 = sea.nondet "nd_size_t" [21] : i64 loc("_125"("seahorn/lib/utils.c":17:16))
  %v146 = sea.icmp ult, %v145, %v20 : i64 loc("_126"("seahorn/lib/utils.c":19:14))
  %v147 = sea.const 36028797018963967 : i64 loc("_127"("seahorn/lib/utils.c":19:20))
  %v148 = sea.icmp ult, %v20, %v147 : i64 loc("_127"("seahorn/lib/utils.c":19:20))
  %v149 = sea.and %v148, %v146 : i1 loc("_128"("seahorn/lib/utils.c":19:20))
  sea.assume %v149 loc("seahorn/lib/utils.c":19:5)
  sea.br ^bb91
^bb91:
  sea.br ^bb92(%v68, %v45, %v57, %v20 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64)
^bb92(%v150 : !sea.mem<!sea.ptr<64>, i8>, %v151 : !sea.mem<!sea.ptr<64>, i8>, %v152 : i64, %v153 : i64):
  sea.br ^bb93
^bb93:
  %v154 = sea.load %v151[%v26] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_133"("aws-c-common/source/byte_buf.c":60:19))
  %v155 = sea.const 0 : i64 loc(".not37"("aws-c-common/source/byte_buf.c":60:28))
  %v156 = sea.icmp eq, %v154, %v155 : i64 loc(".not37"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v156, ^bb101, ^bb94 loc("aws-c-common/source/byte_buf.c":60:33)
^bb94:
  sea.br ^bb95
^bb95:
  sea.br ^bb96
^bb96:
  sea.br ^bb97
^bb97:
  %v157 = sea.icmp ugt, %v153, %v154 : i64 loc(".not2.i20.i"("aws-c-common/source/byte_buf.c":61:44))
  %v158 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v157, ^bb106(%v158 : i1), ^bb98 loc("aws-c-common/source/byte_buf.c":61:61)
^bb98:
  sea.br ^bb99
^bb99:
  sea.br ^bb100
^bb100:
  %v159 = sea.load %v151[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_147"("aws-c-common/source/byte_buf.c":61:64))
  %v160 = sea.ptr.null : !sea.ptr<64> loc("_148"("aws-c-common/source/byte_buf.c":61:64))
  %v161 = sea.ptr.cmp ne, %v159, %v160 : !sea.ptr<64> loc("_148"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb106(%v161 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb101:
  sea.br ^bb102
^bb102:
  %v162 = sea.const 0 : i64 loc("_136"("aws-c-common/source/byte_buf.c":60:45))
  %v163 = sea.icmp eq, %v153, %v162 : i64 loc("_136"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v163, ^bb103, ^bb105 loc("aws-c-common/source/byte_buf.c":60:50)
^bb103:
  sea.br ^bb104
^bb104:
  %v164 = sea.load %v151[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_139"("aws-c-common/source/byte_buf.c":60:58))
  %v165 = sea.ptr.null : !sea.ptr<64> loc("_140"("aws-c-common/source/byte_buf.c":60:65))
  %v166 = sea.ptr.cmp eq, %v164, %v165 : !sea.ptr<64> loc("_140"("aws-c-common/source/byte_buf.c":60:65))
  %v167 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v166, ^bb106(%v167 : i1), ^bb105 loc("aws-c-common/source/byte_buf.c":60:74)
^bb105:
  %v168 = sea.const 0 : i1
  sea.br ^bb106(%v168 : i1)
^bb106(%v169 : i1):
  sea.br ^bb107
^bb107:
  sea.cond_br %v156, ^bb113, ^bb108 loc("aws-c-common/source/byte_buf.c":60:33)
^bb108:
  sea.br ^bb109
^bb109:
  sea.br ^bb110
^bb110:
  %v170 = sea.icmp ule, %v153, %v154 : i64 loc(".not2.i.i")
  %v171 = sea.const 1 : i1 loc("or.cond21.not")
  %v172 = sea.const 0 : i1 loc("or.cond21.not")
  %v173 = sea.select %v171, %v170, %v172 : i1 loc("or.cond21.not")
  sea.cond_br %v173, ^bb111, ^bb137
^bb111:
  sea.br ^bb112
^bb112:
  %v174 = sea.load %v151[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_163")
  %v175 = sea.ptr.null : !sea.ptr<64> loc("_164")
  %v176 = sea.ptr.cmp ne, %v174, %v175 : !sea.ptr<64> loc("_164")
  %v177 = sea.const 1 : i1 loc("or.cond")
  %v178 = sea.const 0 : i1 loc("or.cond")
  %v179 = sea.select %v177, %v176, %v178 : i1 loc("or.cond")
  sea.cond_br %v179, ^bb118, ^bb137
^bb113:
  sea.br ^bb114
^bb114:
  %v180 = sea.const 0 : i64 loc("_153"("aws-c-common/source/byte_buf.c":60:45))
  %v181 = sea.icmp eq, %v153, %v180 : i64 loc("_153"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v181, ^bb115, ^bb117 loc("aws-c-common/source/byte_buf.c":60:50)
^bb115:
  sea.br ^bb116
^bb116:
  %v182 = sea.load %v151[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_156"("aws-c-common/source/byte_buf.c":60:58))
  %v183 = sea.ptr.null : !sea.ptr<64> loc("_157"("aws-c-common/source/byte_buf.c":60:65))
  %v184 = sea.ptr.cmp eq, %v182, %v183 : !sea.ptr<64> loc("_157"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v184, ^bb118, ^bb117 loc("aws-c-common/source/byte_buf.c":60:74)
^bb117:
  sea.br ^bb137
^bb118:
  sea.br ^bb119
^bb119:
  %v185 = sea.const 0 : i64 loc("_166"("aws-c-common/source/byte_buf.c":66:26))
  %v186 = sea.icmp eq, %v152, %v185 : i64 loc("_166"("aws-c-common/source/byte_buf.c":66:26))
  %v187 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v186, ^bb125(%v187 : i1), ^bb120 loc("aws-c-common/source/byte_buf.c":66:32)
^bb120:
  sea.br ^bb121
^bb121:
  sea.br ^bb122
^bb122:
  %v188 = sea.load %v70[%v69] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_170"("aws-c-common/source/byte_buf.c":66:63))
  %v189 = sea.ptr.null : !sea.ptr<64> loc(".not2.i31.i"("aws-c-common/source/byte_buf.c":66:55))
  %v190 = sea.ptr.cmp eq, %v188, %v189 : !sea.ptr<64> loc(".not2.i31.i"("aws-c-common/source/byte_buf.c":66:55))
  %v191 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v190, ^bb125(%v191 : i1), ^bb123 loc("aws-c-common/source/byte_buf.c":66:67)
^bb123:
  sea.br ^bb124
^bb124:
  %v192 = sea.const 1 : i1
  sea.br ^bb125(%v192 : i1)
^bb125(%v193 : i1):
  sea.br ^bb126
^bb126:
  sea.cond_br %v186, ^bb131, ^bb127 loc("aws-c-common/source/byte_buf.c":66:32)
^bb127:
  sea.br ^bb128
^bb128:
  %v194 = sea.load %v70[%v69] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_177")
  %v195 = sea.ptr.null : !sea.ptr<64> loc(".not2.i28.i")
  %v196 = sea.ptr.cmp ne, %v194, %v195 : !sea.ptr<64> loc(".not2.i28.i")
  %v197 = sea.const 1 : i1 loc("or.cond25.not")
  %v198 = sea.const 0 : i1 loc("or.cond25.not")
  %v199 = sea.select %v197, %v196, %v198 : i1 loc("or.cond25.not")
  sea.cond_br %v199, ^bb129, ^bb137
^bb129:
  sea.br ^bb130
^bb130:
  sea.br ^bb131
^bb131:
  %v200 = sea.load %v151[%v43] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_180"("seahorn/jobs/byte_buf_append_dynamic/aws_byte_buf_append_dynamic_harness.c":35:5))
  %v201 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_181"("seahorn/jobs/byte_buf_append_dynamic/aws_byte_buf_append_dynamic_harness.c":35:5))
  %v202 = sea.ptr.cmp eq, %v200, %v201 : !sea.ptr<64> loc("_181"("seahorn/jobs/byte_buf_append_dynamic/aws_byte_buf_append_dynamic_harness.c":35:5))
  sea.cond_br %v202, ^bb132, ^bb137 loc("seahorn/jobs/byte_buf_append_dynamic/aws_byte_buf_append_dynamic_harness.c":35:5)
^bb132:
  %v203 = sea.load %v70[%v69] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_183"("seahorn/jobs/byte_buf_append_dynamic/aws_byte_buf_append_dynamic_harness.c":36:43))
  %v204 = sea.ptr.null : !sea.ptr<64> loc(".not.i45.i"("seahorn/lib/utils.c":15:3))
  %v205 = sea.ptr.cmp eq, %v66, %v204 : !sea.ptr<64> loc(".not.i45.i"("seahorn/lib/utils.c":15:3))
  %v206 = sea.ptr.null : !sea.ptr<64> loc("_184"("seahorn/lib/utils.c":15:3))
  %v207 = sea.ptr.cmp ne, %v203, %v206 : !sea.ptr<64> loc("_184"("seahorn/lib/utils.c":15:3))
  %v208 = sea.xor %v205, %v207 : i1 loc("_185"("seahorn/lib/utils.c":15:3))
  %v209 = sea.or %v186, %v208 : i1 loc("_186"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v186, ^bb136, ^bb133 loc("seahorn/lib/utils.c":15:3)
^bb133:
  sea.cond_br %v208, ^bb134, ^bb137 loc("seahorn/lib/utils.c":15:3)
^bb134:
  %v210 = sea.ptr.null : !sea.ptr<64> loc("_188")
  %v211 = sea.ptr.cmp ne, %v66, %v210 : !sea.ptr<64> loc("_188")
  %v212 = sea.and %v211, %v207 : i1 loc("or.cond3.i51.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v212, ^bb135, ^bb136 loc("seahorn/lib/utils.c":16:15)
^bb135:
  %v213 = sea.nondet "nd_size_t" [22] : i64 loc("_190"("seahorn/lib/utils.c":17:16))
  %v214 = sea.icmp ult, %v213, %v152 : i64 loc("_191"("seahorn/lib/utils.c":19:14))
  %v215 = sea.const 36028797018963967 : i64 loc("_192"("seahorn/lib/utils.c":19:20))
  %v216 = sea.icmp ult, %v152, %v215 : i64 loc("_192"("seahorn/lib/utils.c":19:20))
  %v217 = sea.and %v216, %v214 : i1 loc("_193"("seahorn/lib/utils.c":19:20))
  sea.assume %v217 loc("seahorn/lib/utils.c":19:5)
  %v218 = sea.ptr.index %v66 [%v213] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_194"("seahorn/lib/utils.c":20:5))
  %v219 = sea.load %v150[%v218] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_195"("seahorn/lib/utils.c":20:5))
  %v220 = sea.ptr.index %v203 [%v213] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_196"("seahorn/lib/utils.c":20:5))
  %v221 = sea.load %v150[%v220] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_197"("seahorn/lib/utils.c":20:5))
  %v222 = sea.icmp eq, %v219, %v221 : i8 loc("_198"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v222, ^bb136, ^bb137 loc("seahorn/lib/utils.c":20:5)
^bb136:
  %v223 = sea.icmp eq, %v57, %v152 : i64 loc("_199"("seahorn/jobs/byte_buf_append_dynamic/aws_byte_buf_append_dynamic_harness.c":37:5))
  %v224 = sea.const 1 : i1 loc("seahorn/jobs/byte_buf_append_dynamic/aws_byte_buf_append_dynamic_harness.c":37:5)
  %v225 = sea.xor %v223, %v224 : i1 loc("seahorn/jobs/byte_buf_append_dynamic/aws_byte_buf_append_dynamic_harness.c":37:5)
  sea.assume %v225 loc("seahorn/jobs/byte_buf_append_dynamic/aws_byte_buf_append_dynamic_harness.c":37:5)
  sea.br ^bb137 loc("seahorn/jobs/byte_buf_append_dynamic/aws_byte_buf_append_dynamic_harness.c":37:5)
^bb137:
  sea.br ^bb138
^bb138:
  %v226 = sea.const 0 : i1
  sea.assert %v226
  sea.halt
}
