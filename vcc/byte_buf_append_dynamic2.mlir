// Exported from SeaHorn (byte_buf_append_dynamic2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
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
  %v46 = sea.icmp ugt, %v20, %v21 : i64 loc(".not2.i7.i"("aws-c-common/source/byte_buf.c":61:44))
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
  sea.assume %v56 loc("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":13:5)
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
  %v63 = sea.const 10 : i64 loc("malloc37.i4")
  %v64 = sea.alloca %v63 align 16 [13] : i64 -> !sea.ptr<64> loc("malloc37.i4")
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
  %v74 = sea.ptr.null : !sea.ptr<64> loc(".not2.i18.i"("aws-c-common/source/byte_buf.c":66:55))
  %v75 = sea.ptr.cmp eq, %v66, %v74 : !sea.ptr<64> loc(".not2.i18.i"("aws-c-common/source/byte_buf.c":66:55))
  %v76 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v75, ^bb34(%v76 : i1), ^bb32 loc("aws-c-common/source/byte_buf.c":66:67)
^bb32:
  sea.br ^bb33
^bb33:
  %v77 = sea.const 1 : i1
  sea.br ^bb34(%v77 : i1)
^bb34(%v78 : i1):
  sea.assume %v78 loc("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":17:5)
  sea.tracking_on loc("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":20:5)
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
  sea.cond_br %v83, ^bb46, ^bb133 loc("seahorn/lib/bcmp.c":161:3)
^bb46:
  %v84 = sea.ptr.dereferenceable %v66, %v57 : !sea.ptr<64>, i64 loc("_114"("seahorn/lib/bcmp.c":162:3))
  %v85 = sea.ptr.dereferenceable %v66, %v57 : !sea.ptr<64>, i64 loc("_115"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v85, ^bb47, ^bb133 loc("seahorn/lib/bcmp.c":162:3)
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
  %v98 = sea.const 0 : i64 loc(".not.i31.i"("seahorn/lib/allocator_override.c":17:3))
  %v99 = sea.icmp eq, %v95, %v98 : i64 loc(".not.i31.i"("seahorn/lib/allocator_override.c":17:3))
  sea.cond_br %v99, ^bb133, ^bb58 loc("seahorn/lib/allocator_override.c":17:3)
^bb58:
  %v100 = sea.nondet "nd_malloc_is_fail" [15] : i1 loc("_72"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v100, ^bb60, ^bb59 loc("seahorn/lib/sea_allocators.c":11:10)
^bb59:
  %v101 = sea.const 1 : i64 loc("malloc38.i")
  %v102 = sea.mul %v95, %v101 : i64 loc("malloc38.i")
  %v103 = sea.alloca %v102 align 16 [16] : i64 -> !sea.ptr<64> loc("malloc38.i")
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
  %v108 = sea.const 0 : i64 loc(".not.i27.i"("seahorn/lib/allocator_override.c":17:3))
  %v109 = sea.icmp eq, %v89, %v108 : i64 loc(".not.i27.i"("seahorn/lib/allocator_override.c":17:3))
  sea.cond_br %v109, ^bb133, ^bb63 loc("seahorn/lib/allocator_override.c":17:3)
^bb63:
  %v110 = sea.nondet "nd_malloc_is_fail" [18] : i1 loc("_78"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v110, ^bb87, ^bb64 loc("seahorn/lib/sea_allocators.c":11:10)
^bb64:
  %v111 = sea.const 1 : i64 loc("malloc39.i")
  %v112 = sea.mul %v89, %v111 : i64 loc("malloc39.i")
  %v113 = sea.alloca %v112 align 16 [19] : i64 -> !sea.ptr<64> loc("malloc39.i")
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
  sea.cond_br %v121, ^bb70, ^bb133 loc("seahorn/lib/bcmp.c":161:3)
^bb70:
  %v122 = sea.ptr.dereferenceable %v40, %v20 : !sea.ptr<64>, i64 loc("_87"("seahorn/lib/bcmp.c":162:3))
  %v123 = sea.ptr.dereferenceable %v40, %v20 : !sea.ptr<64>, i64 loc("_88"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v123, ^bb71, ^bb133 loc("seahorn/lib/bcmp.c":162:3)
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
  sea.cond_br %v128, ^bb77, ^bb133 loc("seahorn/lib/bcmp.c":161:3)
^bb77:
  %v129 = sea.ptr.dereferenceable %v66, %v57 : !sea.ptr<64>, i64 loc("_98"("seahorn/lib/bcmp.c":162:3))
  %v130 = sea.ptr.dereferenceable %v66, %v57 : !sea.ptr<64>, i64 loc("_99"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v130, ^bb78, ^bb133 loc("seahorn/lib/bcmp.c":162:3)
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
  %v139 = sea.icmp eq, %v137, %v20 : i64 loc("_122"("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":24:9))
  sea.cond_br %v139, ^bb91(%v134, %v135, %v136, %v138 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64), ^bb133 loc("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":24:9)
^bb87:
  sea.br ^bb89 loc("aws-c-common/source/byte_buf.c":694:21)
^bb88:
  sea.br ^bb89 loc("aws-c-common/source/byte_buf.c":663:13)
^bb89:
  %v140 = sea.mem.is_modified %v25[%v5] : !sea.mem<!sea.ptr<64>, i8> loc("_123"("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":27:9))
  %v141 = sea.const 1 : i1 loc("_124"("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":27:9))
  %v142 = sea.xor %v140, %v141 : i1 loc("_124"("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":27:9))
  %v143 = sea.mem.is_modified %v25[%v5] : !sea.mem<!sea.ptr<64>, i8> loc("_125"("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":27:9))
  sea.cond_br %v143, ^bb133, ^bb90 loc("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":27:9)
^bb90:
  %v144 = sea.mem.is_modified %v68[%v40] : !sea.mem<!sea.ptr<64>, i8> loc("_127"("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":28:9))
  %v145 = sea.const 1 : i1 loc("_128"("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":28:9))
  %v146 = sea.xor %v144, %v145 : i1 loc("_128"("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":28:9))
  %v147 = sea.mem.is_modified %v68[%v40] : !sea.mem<!sea.ptr<64>, i8> loc("_129"("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":28:9))
  %v148 = sea.const 1 : i64 loc("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":28:9)
  sea.cond_br %v147, ^bb133, ^bb91(%v68, %v45, %v148, %v20 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64) loc("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":28:9)
^bb91(%v149 : !sea.mem<!sea.ptr<64>, i8>, %v150 : !sea.mem<!sea.ptr<64>, i8>, %v151 : i64, %v152 : i64):
  sea.br ^bb92
^bb92:
  %v153 = sea.load %v150[%v26] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_134"("aws-c-common/source/byte_buf.c":60:19))
  %v154 = sea.const 0 : i64 loc(".not"("aws-c-common/source/byte_buf.c":60:28))
  %v155 = sea.icmp eq, %v153, %v154 : i64 loc(".not"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v155, ^bb100, ^bb93 loc("aws-c-common/source/byte_buf.c":60:33)
^bb93:
  sea.br ^bb94
^bb94:
  sea.br ^bb95
^bb95:
  sea.br ^bb96
^bb96:
  %v156 = sea.icmp ugt, %v152, %v153 : i64 loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":61:44))
  %v157 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v156, ^bb105(%v157 : i1), ^bb97 loc("aws-c-common/source/byte_buf.c":61:61)
^bb97:
  sea.br ^bb98
^bb98:
  sea.br ^bb99
^bb99:
  %v158 = sea.load %v150[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_148"("aws-c-common/source/byte_buf.c":61:64))
  %v159 = sea.ptr.null : !sea.ptr<64> loc("_149"("aws-c-common/source/byte_buf.c":61:64))
  %v160 = sea.ptr.cmp ne, %v158, %v159 : !sea.ptr<64> loc("_149"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb105(%v160 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb100:
  sea.br ^bb101
^bb101:
  %v161 = sea.const 0 : i64 loc("_137"("aws-c-common/source/byte_buf.c":60:45))
  %v162 = sea.icmp eq, %v152, %v161 : i64 loc("_137"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v162, ^bb102, ^bb104 loc("aws-c-common/source/byte_buf.c":60:50)
^bb102:
  sea.br ^bb103
^bb103:
  %v163 = sea.load %v150[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_140"("aws-c-common/source/byte_buf.c":60:58))
  %v164 = sea.ptr.null : !sea.ptr<64> loc("_141"("aws-c-common/source/byte_buf.c":60:65))
  %v165 = sea.ptr.cmp eq, %v163, %v164 : !sea.ptr<64> loc("_141"("aws-c-common/source/byte_buf.c":60:65))
  %v166 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v165, ^bb105(%v166 : i1), ^bb104 loc("aws-c-common/source/byte_buf.c":60:74)
^bb104:
  %v167 = sea.const 0 : i1
  sea.br ^bb105(%v167 : i1)
^bb105(%v168 : i1):
  sea.br ^bb106
^bb106:
  sea.cond_br %v155, ^bb112, ^bb107 loc("aws-c-common/source/byte_buf.c":60:33)
^bb107:
  sea.br ^bb108
^bb108:
  sea.br ^bb109
^bb109:
  %v169 = sea.icmp ule, %v152, %v153 : i64 loc(".not2.i.i")
  %v170 = sea.const 1 : i1 loc("or.cond17.not")
  %v171 = sea.const 0 : i1 loc("or.cond17.not")
  %v172 = sea.select %v170, %v169, %v171 : i1 loc("or.cond17.not")
  sea.cond_br %v172, ^bb110, ^bb133
^bb110:
  sea.br ^bb111
^bb111:
  %v173 = sea.load %v150[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_164")
  %v174 = sea.ptr.null : !sea.ptr<64> loc("_165")
  %v175 = sea.ptr.cmp ne, %v173, %v174 : !sea.ptr<64> loc("_165")
  %v176 = sea.const 1 : i1 loc("or.cond")
  %v177 = sea.const 0 : i1 loc("or.cond")
  %v178 = sea.select %v176, %v175, %v177 : i1 loc("or.cond")
  sea.cond_br %v178, ^bb117, ^bb133
^bb112:
  sea.br ^bb113
^bb113:
  %v179 = sea.const 0 : i64 loc("_154"("aws-c-common/source/byte_buf.c":60:45))
  %v180 = sea.icmp eq, %v152, %v179 : i64 loc("_154"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v180, ^bb114, ^bb116 loc("aws-c-common/source/byte_buf.c":60:50)
^bb114:
  sea.br ^bb115
^bb115:
  %v181 = sea.load %v150[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_157"("aws-c-common/source/byte_buf.c":60:58))
  %v182 = sea.ptr.null : !sea.ptr<64> loc("_158"("aws-c-common/source/byte_buf.c":60:65))
  %v183 = sea.ptr.cmp eq, %v181, %v182 : !sea.ptr<64> loc("_158"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v183, ^bb117, ^bb116 loc("aws-c-common/source/byte_buf.c":60:74)
^bb116:
  sea.br ^bb133
^bb117:
  sea.br ^bb118
^bb118:
  %v184 = sea.const 0 : i64 loc("_167"("aws-c-common/source/byte_buf.c":66:26))
  %v185 = sea.icmp eq, %v151, %v184 : i64 loc("_167"("aws-c-common/source/byte_buf.c":66:26))
  %v186 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v185, ^bb124(%v186 : i1), ^bb119 loc("aws-c-common/source/byte_buf.c":66:32)
^bb119:
  sea.br ^bb120
^bb120:
  sea.br ^bb121
^bb121:
  %v187 = sea.load %v70[%v69] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_171"("aws-c-common/source/byte_buf.c":66:63))
  %v188 = sea.ptr.null : !sea.ptr<64> loc(".not2.i14.i"("aws-c-common/source/byte_buf.c":66:55))
  %v189 = sea.ptr.cmp eq, %v187, %v188 : !sea.ptr<64> loc(".not2.i14.i"("aws-c-common/source/byte_buf.c":66:55))
  %v190 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v189, ^bb124(%v190 : i1), ^bb122 loc("aws-c-common/source/byte_buf.c":66:67)
^bb122:
  sea.br ^bb123
^bb123:
  %v191 = sea.const 1 : i1
  sea.br ^bb124(%v191 : i1)
^bb124(%v192 : i1):
  sea.br ^bb125
^bb125:
  sea.cond_br %v185, ^bb130, ^bb126 loc("aws-c-common/source/byte_buf.c":66:32)
^bb126:
  sea.br ^bb127
^bb127:
  %v193 = sea.load %v70[%v69] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_178")
  %v194 = sea.ptr.null : !sea.ptr<64> loc(".not2.i11.i")
  %v195 = sea.ptr.cmp ne, %v193, %v194 : !sea.ptr<64> loc(".not2.i11.i")
  %v196 = sea.const 1 : i1 loc("or.cond21.not")
  %v197 = sea.const 0 : i1 loc("or.cond21.not")
  %v198 = sea.select %v196, %v195, %v197 : i1 loc("or.cond21.not")
  sea.cond_br %v198, ^bb128, ^bb133
^bb128:
  sea.br ^bb129
^bb129:
  sea.br ^bb130
^bb130:
  %v199 = sea.load %v150[%v43] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_181"("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":33:5))
  %v200 = sea.mem.is_modified %v10[%v199] : !sea.mem<!sea.ptr<64>, i8> loc("_182"("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":33:5))
  %v201 = sea.const 1 : i1 loc("_183"("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":33:5))
  %v202 = sea.xor %v200, %v201 : i1 loc("_183"("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":33:5))
  %v203 = sea.mem.is_modified %v10[%v199] : !sea.mem<!sea.ptr<64>, i8> loc("_184"("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":33:5))
  sea.cond_br %v203, ^bb133, ^bb131 loc("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":33:5)
^bb131:
  %v204 = sea.mem.is_modified %v58[%v7] : !sea.mem<!sea.ptr<64>, i8> loc("_186"("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":34:5))
  %v205 = sea.const 1 : i1 loc("_187"("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":34:5))
  %v206 = sea.xor %v204, %v205 : i1 loc("_187"("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":34:5))
  %v207 = sea.mem.is_modified %v58[%v7] : !sea.mem<!sea.ptr<64>, i8> loc("_188"("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":34:5))
  sea.cond_br %v207, ^bb133, ^bb132 loc("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":34:5)
^bb132:
  %v208 = sea.load %v70[%v69] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_190"("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":35:5))
  %v209 = sea.mem.is_modified %v149[%v208] : !sea.mem<!sea.ptr<64>, i8> loc("_191"("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":35:5))
  %v210 = sea.const 1 : i1 loc("_192"("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":35:5))
  %v211 = sea.xor %v209, %v210 : i1 loc("_192"("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":35:5))
  %v212 = sea.mem.is_modified %v149[%v208] : !sea.mem<!sea.ptr<64>, i8> loc("_193"("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":35:5))
  sea.assume %v212 loc("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":35:5)
  sea.br ^bb133 loc("seahorn/jobs2/byte_buf_append_dynamic2/aws_byte_buf_append_dynamic_harness2.c":35:5)
^bb133:
  sea.br ^bb134
^bb134:
  %v213 = sea.const 0 : i1
  sea.assert %v213
  sea.halt
}
