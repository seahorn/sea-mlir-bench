// Exported from SeaHorn (byte_buf_init_copy.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm26")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm27")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm28")
  %v3 = sea.mem.nondet "region.57" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm29")
  %v4 = sea.mem.nondet "region.89" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm30")
  %v5 = sea.const 32 : i64 loc("_0")
  %v6 = sea.alloca %v5 align 8 [5] : i64 -> !sea.ptr<64> loc("_0")
  %v7 = sea.const 16 : i64 loc("_1")
  %v8 = sea.alloca %v7 align 8 [6] : i64 -> !sea.ptr<64> loc("_1")
  %v9 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v10 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v11 = sea.store %v0[%v9], %v10 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v12 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_2")
  %v13 = sea.ptr.index %v12 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_2")
  %v14 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v15 = sea.store %v11[%v13], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v16 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_3")
  %v17 = sea.ptr.index %v16 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_3")
  %v18 = sea.const 0 : i8
  %v19 = sea.const 24 : i64
  %v20 = sea.memset %v15[%v17], %v18, %v19 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v21 = sea.nondet "nd_malloc_is_fail" [7] : i1 loc("_4"("seahorn/lib/sea_allocators.c":11:10))
  %v22 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v21, ^bb2(%v3, %v22 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb1 loc("seahorn/lib/sea_allocators.c":11:10)
^bb1:
  %v23 = sea.const 32 : i64 loc("malloc.i9")
  %v24 = sea.alloca %v23 align 16 [8] : i64 -> !sea.ptr<64> loc("malloc.i9")
  sea.br ^bb2(%v3, %v24 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb2(%v25 : !sea.mem<!sea.ptr<64>, i8>, %v26 : !sea.ptr<64>):
  %v27 = sea.const 32 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v28 = sea.memhavoc %v25[%v26], %v27 [9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v29 = sea.ptr.null : !sea.ptr<64> loc("_7"("seahorn/lib/sea_allocators.c":45:10))
  %v30 = sea.ptr.cmp ne, %v26, %v29 : !sea.ptr<64> loc("_7"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v30 loc("seahorn/lib/sea_allocators.c":45:3)
  %v31 = sea.nondet "nd_size_t" [10] : i64 loc("_8"("seahorn/lib/byte_buf_helper.c":19:18))
  %v32 = sea.nondet "nd_size_t" [11] : i64 loc("_9"("seahorn/lib/byte_buf_helper.c":20:18))
  %v33 = sea.icmp ule, %v31, %v32 : i64 loc("_10"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v33 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v34 = sea.const 11 : i64 loc("_11"("seahorn/lib/byte_buf_helper.c":22:16))
  %v35 = sea.icmp ult, %v32, %v34 : i64 loc("_11"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v35 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb3
^bb3:
  %v36 = sea.store %v1[%v6], %v31 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v37 = sea.ptr.index %v6 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_13"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb4
^bb4:
  %v38 = sea.store %v36[%v37], %v32 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v39 = sea.const 0 : i64 loc("_15"("seahorn/lib/proof_allocators.c":21:15))
  %v40 = sea.icmp eq, %v32, %v39 : i64 loc("_15"("seahorn/lib/proof_allocators.c":21:15))
  %v41 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v40, ^bb8(%v4, %v41 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb5 loc("seahorn/lib/proof_allocators.c":21:10)
^bb5:
  %v42 = sea.nondet "nd_malloc_is_fail" [12] : i1 loc("_17"("seahorn/lib/sea_allocators.c":11:10))
  %v43 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v42, ^bb7(%v4, %v43 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb6 loc("seahorn/lib/sea_allocators.c":11:10)
^bb6:
  %v44 = sea.const 1 : i64 loc("malloc39.i")
  %v45 = sea.mul %v32, %v44 : i64 loc("malloc39.i")
  %v46 = sea.alloca %v45 align 16 [13] : i64 -> !sea.ptr<64> loc("malloc39.i")
  sea.br ^bb7(%v4, %v46 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb7(%v47 : !sea.mem<!sea.ptr<64>, i8>, %v48 : !sea.ptr<64>):
  %v49 = sea.memhavoc %v47[%v48], %v32 [14] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb8(%v49, %v48 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb8(%v50 : !sea.mem<!sea.ptr<64>, i8>, %v51 : !sea.ptr<64>):
  %v52 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_21"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb9
^bb9:
  %v53 = sea.store %v38[%v52], %v51 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v54 = sea.ptr.index %v6 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_23"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb10
^bb10:
  %v55 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v56 = sea.store %v53[%v54], %v55 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  sea.br ^bb11
^bb11:
  sea.cond_br %v40, ^bb19, ^bb12 loc("aws-c-common/source/byte_buf.c":60:33)
^bb12:
  sea.br ^bb13
^bb13:
  sea.br ^bb14
^bb14:
  sea.br ^bb15
^bb15:
  %v57 = sea.icmp ugt, %v31, %v32 : i64 loc(".not2.i23.i"("aws-c-common/source/byte_buf.c":61:44))
  %v58 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v57, ^bb24(%v58 : i1), ^bb16 loc("aws-c-common/source/byte_buf.c":61:61)
^bb16:
  sea.br ^bb17
^bb17:
  sea.br ^bb18
^bb18:
  %v59 = sea.ptr.null : !sea.ptr<64> loc("_37"("aws-c-common/source/byte_buf.c":61:64))
  %v60 = sea.ptr.cmp ne, %v51, %v59 : !sea.ptr<64> loc("_37"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb24(%v60 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb19:
  sea.br ^bb20
^bb20:
  %v61 = sea.const 0 : i64 loc("_27"("aws-c-common/source/byte_buf.c":60:45))
  %v62 = sea.icmp eq, %v31, %v61 : i64 loc("_27"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v62, ^bb21, ^bb23 loc("aws-c-common/source/byte_buf.c":60:50)
^bb21:
  sea.br ^bb22
^bb22:
  %v63 = sea.ptr.null : !sea.ptr<64> loc("_30"("aws-c-common/source/byte_buf.c":60:65))
  %v64 = sea.ptr.cmp eq, %v51, %v63 : !sea.ptr<64> loc("_30"("aws-c-common/source/byte_buf.c":60:65))
  %v65 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v64, ^bb24(%v65 : i1), ^bb23 loc("aws-c-common/source/byte_buf.c":60:74)
^bb23:
  %v66 = sea.const 0 : i1
  sea.br ^bb24(%v66 : i1)
^bb24(%v67 : i1):
  sea.assume %v67 loc("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":21:5)
  %v68 = sea.nondet "nd_size_t" [15] : i64 loc("_39"("seahorn/lib/utils.c":46:20))
  sea.br ^bb25
^bb25:
  %v69 = sea.store %v2[%v8], %v68 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v70 = sea.const 0 : i64 loc("_41"("seahorn/lib/utils.c":47:12))
  %v71 = sea.icmp ne, %v31, %v70 : i64 loc("_41"("seahorn/lib/utils.c":47:12))
  %v72 = sea.ptr.null : !sea.ptr<64> loc("_42")
  %v73 = sea.ptr.cmp ne, %v51, %v72 : !sea.ptr<64> loc("_42")
  %v74 = sea.and %v71, %v73 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v74, ^bb28, ^bb26 loc("seahorn/lib/utils.c":47:16)
^bb26:
  %v75 = sea.nondet "nd_uint8_t" [16] : i8 loc("_54"("seahorn/lib/utils.c":51:21))
  %v76 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_55"("seahorn/lib/utils.c":51:14))
  sea.br ^bb27
^bb27:
  %v77 = sea.store %v69[%v76], %v75 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb33(%v75 : i8)
^bb28:
  sea.br ^bb29
^bb29:
  %v78 = sea.icmp ult, %v68, %v31 : i64 loc("_45"("seahorn/lib/utils.c":48:27))
  sea.assume %v78 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb30
^bb30:
  %v79 = sea.ptr.index %v51 [%v68] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_47"("seahorn/lib/utils.c":49:21))
  %v80 = sea.const 1 : i64 loc("_48"("seahorn/lib/utils.c":49:21))
  %v81 = sea.ptr.dereferenceable %v79, %v80 : !sea.ptr<64>, i64 loc("_48"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v81, ^bb31, ^bb150
^bb31:
  %v82 = sea.load %v50[%v79] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_50"("seahorn/lib/utils.c":49:21))
  %v83 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_51"("seahorn/lib/utils.c":49:14))
  sea.br ^bb32
^bb32:
  %v84 = sea.store %v69[%v83], %v82 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb33(%v82 : i8) loc("seahorn/lib/utils.c":50:3)
^bb33(%v85 : i8):
  sea.br ^bb34
^bb34:
  sea.cond_br %v40, ^bb58, ^bb35 loc("aws-c-common/source/byte_buf.c":60:33)
^bb35:
  sea.br ^bb36
^bb36:
  sea.br ^bb37
^bb37:
  sea.br ^bb38
^bb38:
  %v86 = sea.icmp ugt, %v31, %v32 : i64 loc(".not2.i.i"("aws-c-common/source/byte_buf.c":61:44))
  sea.cond_br %v86, ^bb63, ^bb39 loc("aws-c-common/source/byte_buf.c":61:61)
^bb39:
  sea.br ^bb40
^bb40:
  sea.br ^bb41
^bb41:
  sea.cond_br %v73, ^bb42, ^bb63 loc("aws-c-common/source/byte_buf.c":37:5)
^bb42:
  sea.br ^bb43
^bb43:
  %v87 = sea.store %v28[%v26], %v31 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":46:13)
  %v88 = sea.ptr.index %v26 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i.i"("aws-c-common/source/byte_buf.c":46:13))
  %v89 = sea.store %v87[%v88], %v51 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":46:13)
  %v90 = sea.ptr.index %v26 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy5.i.i"("aws-c-common/source/byte_buf.c":46:13))
  %v91 = sea.store %v89[%v90], %v32 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":46:13)
  %v92 = sea.ptr.index %v26 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i.i"("aws-c-common/source/byte_buf.c":46:13))
  %v93 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":46:13)
  %v94 = sea.store %v91[%v92], %v93 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":46:13)
  %v95 = sea.const 8 : i64 loc("_75"("aws-c-common/source/byte_buf.c":47:21))
  %v96 = sea.ptr.dereferenceable %v92, %v95 : !sea.ptr<64>, i64 loc("_75"("aws-c-common/source/byte_buf.c":47:21))
  sea.cond_br %v96, ^bb44, ^bb150
^bb44:
  %v97 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":47:21)
  %v98 = sea.store %v94[%v92], %v97 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":47:21)
  sea.br ^bb45
^bb45:
  %v99 = sea.nondet "nd_malloc_is_fail" [17] : i1 loc("_78"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v99, ^bb47, ^bb46 loc("seahorn/lib/sea_allocators.c":11:10)
^bb46:
  %v100 = sea.const 1 : i64 loc("malloc40.i")
  %v101 = sea.mul %v32, %v100 : i64 loc("malloc40.i")
  %v102 = sea.alloca %v101 align 16 [18] : i64 -> !sea.ptr<64> loc("malloc40.i")
  %v103 = sea.memhavoc %v50[%v102], %v32 [19] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb48(%v103, %v102 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/allocator_override.c":19:7)
^bb47:
  %v104 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/allocator_override.c":21:3)
  sea.br ^bb48(%v50, %v104 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/allocator_override.c":21:3)
^bb48(%v105 : !sea.mem<!sea.ptr<64>, i8>, %v106 : !sea.ptr<64>):
  %v107 = sea.const 8 : i64 loc("_81"("aws-c-common/source/byte_buf.c":48:18))
  %v108 = sea.ptr.dereferenceable %v88, %v107 : !sea.ptr<64>, i64 loc("_81"("aws-c-common/source/byte_buf.c":48:18))
  sea.cond_br %v108, ^bb49, ^bb150
^bb49:
  %v109 = sea.store %v98[%v88], %v106 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":48:18)
  %v110 = sea.const 8 : i64 loc("_83"("aws-c-common/source/byte_buf.c":49:15))
  %v111 = sea.ptr.dereferenceable %v88, %v110 : !sea.ptr<64>, i64 loc("_83"("aws-c-common/source/byte_buf.c":49:15))
  sea.cond_br %v111, ^bb50, ^bb150
^bb50:
  sea.cond_br %v99, ^bb57, ^bb51 loc("aws-c-common/source/byte_buf.c":49:9)
^bb51:
  %v112 = sea.const 8 : i64 loc("_87"("aws-c-common/source/byte_buf.c":53:18))
  %v113 = sea.ptr.dereferenceable %v88, %v112 : !sea.ptr<64>, i64 loc("_87"("aws-c-common/source/byte_buf.c":53:18))
  sea.cond_br %v113, ^bb52, ^bb150
^bb52:
  sea.br ^bb53
^bb53:
  sea.br ^bb54
^bb54:
  %v114 = sea.ptr.dereferenceable %v106, %v31 : !sea.ptr<64>, i64 loc("_91"("seahorn/lib/bcmp.c":161:3))
  %v115 = sea.ptr.dereferenceable %v106, %v31 : !sea.ptr<64>, i64 loc("_92"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v115, ^bb55, ^bb150 loc("seahorn/lib/bcmp.c":161:3)
^bb55:
  %v116 = sea.ptr.dereferenceable %v51, %v31 : !sea.ptr<64>, i64 loc("_94"("seahorn/lib/bcmp.c":162:3))
  %v117 = sea.ptr.dereferenceable %v51, %v31 : !sea.ptr<64>, i64 loc("_95"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v117, ^bb56, ^bb150 loc("seahorn/lib/bcmp.c":162:3)
^bb56:
  %v118 = sea.memmove %v105[%v106], %v105[%v51], %v31 inplace align 16 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  %v119 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":55:5)
  sea.br ^bb67(%v118, %v109, %v119 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1) loc("aws-c-common/source/byte_buf.c":55:5)
^bb57:
  %v120 = sea.const 0 : i8 loc("aws-c-common/source/byte_buf.c":50:9)
  %v121 = sea.const 32 : i64 loc("aws-c-common/source/byte_buf.c":50:9)
  %v122 = sea.memset %v109[%v26], %v120, %v121 inplace align 16 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/source/byte_buf.c":50:9)
  %v123 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":51:9)
  sea.br ^bb67(%v105, %v122, %v123 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1) loc("aws-c-common/source/byte_buf.c":51:9)
^bb58:
  sea.br ^bb59
^bb59:
  %v124 = sea.const 0 : i64 loc("_61"("aws-c-common/source/byte_buf.c":60:45))
  %v125 = sea.icmp eq, %v31, %v124 : i64 loc("_61"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v125, ^bb60, ^bb62 loc("aws-c-common/source/byte_buf.c":60:50)
^bb60:
  sea.br ^bb61
^bb61:
  %v126 = sea.ptr.null : !sea.ptr<64> loc("_64"("aws-c-common/source/byte_buf.c":60:65))
  %v127 = sea.ptr.cmp eq, %v51, %v126 : !sea.ptr<64> loc("_64"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v127, ^bb64, ^bb62 loc("aws-c-common/source/byte_buf.c":60:74)
^bb62:
  sea.br ^bb63
^bb63:
  %v128 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":37:5)
  sea.br ^bb67(%v50, %v28, %v128 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1) loc("aws-c-common/source/byte_buf.c":37:5)
^bb64:
  sea.br ^bb65
^bb65:
  %v129 = sea.const 0 : i8 loc("aws-c-common/source/byte_buf.c":40:9)
  %v130 = sea.const 32 : i64 loc("aws-c-common/source/byte_buf.c":40:9)
  %v131 = sea.memset %v28[%v26], %v129, %v130 inplace align 16 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/source/byte_buf.c":40:9)
  %v132 = sea.ptr.index %v26 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_71"("aws-c-common/source/byte_buf.c":41:15))
  %v133 = sea.const 8 : i64 loc("_72"("aws-c-common/source/byte_buf.c":41:25))
  %v134 = sea.ptr.dereferenceable %v132, %v133 : !sea.ptr<64>, i64 loc("_72"("aws-c-common/source/byte_buf.c":41:25))
  sea.cond_br %v134, ^bb66, ^bb150
^bb66:
  %v135 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":41:25)
  %v136 = sea.store %v131[%v132], %v135 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":41:25)
  %v137 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":43:9)
  sea.br ^bb67(%v50, %v136, %v137 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1) loc("aws-c-common/source/byte_buf.c":43:9)
^bb67(%v138 : !sea.mem<!sea.ptr<64>, i8>, %v139 : !sea.mem<!sea.ptr<64>, i8>, %v140 : i1):
  sea.assume %v140 loc("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":28:9)
  %v141 = sea.ptr.null : !sea.ptr<64> loc(".not.i16.i"("aws-c-common/source/byte_buf.c":59:16))
  %v142 = sea.ptr.cmp eq, %v26, %v141 : !sea.ptr<64> loc(".not.i16.i"("aws-c-common/source/byte_buf.c":59:16))
  sea.cond_br %v142, ^bb149, ^bb68 loc("aws-c-common/source/byte_buf.c":59:24)
^bb68:
  %v143 = sea.ptr.index %v26 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_97"("aws-c-common/source/byte_buf.c":60:19))
  %v144 = sea.const 8 : i64 loc("_98"("aws-c-common/source/byte_buf.c":60:19))
  %v145 = sea.ptr.dereferenceable %v143, %v144 : !sea.ptr<64>, i64 loc("_98"("aws-c-common/source/byte_buf.c":60:19))
  sea.cond_br %v145, ^bb69, ^bb150
^bb69:
  %v146 = sea.load %v139[%v143] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_100"("aws-c-common/source/byte_buf.c":60:19))
  %v147 = sea.const 0 : i64 loc("_101"("aws-c-common/source/byte_buf.c":60:28))
  %v148 = sea.icmp eq, %v146, %v147 : i64 loc("_101"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v148, ^bb77, ^bb70 loc("aws-c-common/source/byte_buf.c":60:33)
^bb70:
  %v149 = sea.const 8 : i64 loc("_115"("aws-c-common/source/byte_buf.c":61:19))
  %v150 = sea.ptr.dereferenceable %v143, %v149 : !sea.ptr<64>, i64 loc("_115"("aws-c-common/source/byte_buf.c":61:19))
  sea.cond_br %v150, ^bb71, ^bb150
^bb71:
  %v151 = sea.const 8 : i64 loc("_116"("aws-c-common/source/byte_buf.c":61:40))
  %v152 = sea.ptr.dereferenceable %v26, %v151 : !sea.ptr<64>, i64 loc("_116"("aws-c-common/source/byte_buf.c":61:40))
  sea.cond_br %v152, ^bb72, ^bb150
^bb72:
  %v153 = sea.load %v139[%v26] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_118"("aws-c-common/source/byte_buf.c":61:40))
  %v154 = sea.const 8 : i64 loc("_119"("aws-c-common/source/byte_buf.c":61:52))
  %v155 = sea.ptr.dereferenceable %v143, %v154 : !sea.ptr<64>, i64 loc("_119"("aws-c-common/source/byte_buf.c":61:52))
  sea.cond_br %v155, ^bb73, ^bb150
^bb73:
  %v156 = sea.icmp ugt, %v153, %v146 : i64 loc(".not2.i19.i"("aws-c-common/source/byte_buf.c":61:44))
  %v157 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v156, ^bb82(%v153, %v157 : i64, i1), ^bb74 loc("aws-c-common/source/byte_buf.c":61:61)
^bb74:
  %v158 = sea.const 8 : i64 loc("_122"("aws-c-common/source/byte_buf.c":61:64))
  %v159 = sea.ptr.dereferenceable %v143, %v158 : !sea.ptr<64>, i64 loc("_122"("aws-c-common/source/byte_buf.c":61:64))
  sea.cond_br %v159, ^bb75, ^bb150
^bb75:
  %v160 = sea.ptr.index %v26 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_124"("aws-c-common/source/byte_buf.c":61:64))
  %v161 = sea.const 8 : i64 loc("_125"("aws-c-common/source/byte_buf.c":61:64))
  %v162 = sea.ptr.dereferenceable %v160, %v161 : !sea.ptr<64>, i64 loc("_125"("aws-c-common/source/byte_buf.c":61:64))
  sea.cond_br %v162, ^bb76, ^bb150
^bb76:
  %v163 = sea.load %v139[%v160] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_127"("aws-c-common/source/byte_buf.c":61:64))
  %v164 = sea.ptr.null : !sea.ptr<64> loc("_128"("aws-c-common/source/byte_buf.c":61:64))
  %v165 = sea.ptr.cmp ne, %v163, %v164 : !sea.ptr<64> loc("_128"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb82(%v153, %v165 : i64, i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb77:
  %v166 = sea.const 8 : i64 loc("_103"("aws-c-common/source/byte_buf.c":60:41))
  %v167 = sea.ptr.dereferenceable %v26, %v166 : !sea.ptr<64>, i64 loc("_103"("aws-c-common/source/byte_buf.c":60:41))
  sea.cond_br %v167, ^bb78, ^bb150
^bb78:
  %v168 = sea.load %v139[%v26] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_105"("aws-c-common/source/byte_buf.c":60:41))
  %v169 = sea.const 0 : i64 loc("_106"("aws-c-common/source/byte_buf.c":60:45))
  %v170 = sea.icmp eq, %v168, %v169 : i64 loc("_106"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v170, ^bb79, ^bb81 loc("aws-c-common/source/byte_buf.c":60:50)
^bb79:
  %v171 = sea.ptr.index %v26 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_108"("aws-c-common/source/byte_buf.c":60:58))
  %v172 = sea.const 8 : i64 loc("_109"("aws-c-common/source/byte_buf.c":60:58))
  %v173 = sea.ptr.dereferenceable %v171, %v172 : !sea.ptr<64>, i64 loc("_109"("aws-c-common/source/byte_buf.c":60:58))
  sea.cond_br %v173, ^bb80, ^bb150
^bb80:
  %v174 = sea.load %v139[%v171] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_111"("aws-c-common/source/byte_buf.c":60:58))
  %v175 = sea.ptr.null : !sea.ptr<64> loc("_112"("aws-c-common/source/byte_buf.c":60:65))
  %v176 = sea.ptr.cmp eq, %v174, %v175 : !sea.ptr<64> loc("_112"("aws-c-common/source/byte_buf.c":60:65))
  %v177 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":60:74)
  %v178 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v176, ^bb82(%v177, %v178 : i64, i1), ^bb81 loc("aws-c-common/source/byte_buf.c":60:74)
^bb81:
  %v179 = sea.const 8 : i64 loc("_114"("aws-c-common/source/byte_buf.c":61:19))
  %v180 = sea.ptr.dereferenceable %v143, %v179 : !sea.ptr<64>, i64 loc("_114"("aws-c-common/source/byte_buf.c":61:19))
  %v181 = sea.const 0 : i1
  sea.cond_br %v180, ^bb82(%v168, %v181 : i64, i1), ^bb150
^bb82(%v182 : i64, %v183 : i1):
  %v184 = sea.const 8 : i64 loc("_132"("aws-c-common/source/byte_buf.c":60:19))
  %v185 = sea.ptr.dereferenceable %v143, %v184 : !sea.ptr<64>, i64 loc("_132"("aws-c-common/source/byte_buf.c":60:19))
  sea.cond_br %v185, ^bb83, ^bb150
^bb83:
  sea.cond_br %v148, ^bb90, ^bb84 loc("aws-c-common/source/byte_buf.c":60:33)
^bb84:
  %v186 = sea.const 8 : i64 loc("_146"("aws-c-common/source/byte_buf.c":61:19))
  %v187 = sea.ptr.dereferenceable %v143, %v186 : !sea.ptr<64>, i64 loc("_146"("aws-c-common/source/byte_buf.c":61:19))
  sea.cond_br %v187, ^bb85, ^bb150
^bb85:
  %v188 = sea.const 8 : i64 loc("_147"("aws-c-common/source/byte_buf.c":61:40))
  %v189 = sea.ptr.dereferenceable %v26, %v188 : !sea.ptr<64>, i64 loc("_147"("aws-c-common/source/byte_buf.c":61:40))
  sea.cond_br %v189, ^bb86, ^bb150
^bb86:
  %v190 = sea.const 8 : i64 loc("_149"("aws-c-common/source/byte_buf.c":61:52))
  %v191 = sea.ptr.dereferenceable %v143, %v190 : !sea.ptr<64>, i64 loc("_149"("aws-c-common/source/byte_buf.c":61:52))
  %v192 = sea.icmp ule, %v182, %v146 : i64 loc(".not2.i14.i")
  %v193 = sea.const 0 : i1 loc("or.cond43.not")
  %v194 = sea.select %v191, %v192, %v193 : i1 loc("or.cond43.not")
  sea.cond_br %v194, ^bb87, ^bb150
^bb87:
  %v195 = sea.const 8 : i64 loc("_151"("aws-c-common/source/byte_buf.c":61:64))
  %v196 = sea.ptr.dereferenceable %v143, %v195 : !sea.ptr<64>, i64 loc("_151"("aws-c-common/source/byte_buf.c":61:64))
  sea.cond_br %v196, ^bb88, ^bb150
^bb88:
  %v197 = sea.ptr.index %v26 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_153"("aws-c-common/source/byte_buf.c":61:64))
  %v198 = sea.const 8 : i64 loc("_154"("aws-c-common/source/byte_buf.c":61:64))
  %v199 = sea.ptr.dereferenceable %v197, %v198 : !sea.ptr<64>, i64 loc("_154"("aws-c-common/source/byte_buf.c":61:64))
  sea.cond_br %v199, ^bb89, ^bb150
^bb89:
  %v200 = sea.load %v139[%v197] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_155"("aws-c-common/source/byte_buf.c":61:64))
  %v201 = sea.ptr.null : !sea.ptr<64> loc(".not51"("aws-c-common/source/byte_buf.c":61:64))
  %v202 = sea.ptr.cmp eq, %v200, %v201 : !sea.ptr<64> loc(".not51"("aws-c-common/source/byte_buf.c":61:64))
  sea.cond_br %v202, ^bb150, ^bb95(%v200 : !sea.ptr<64>) loc("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":30:9)
^bb90:
  %v203 = sea.const 8 : i64 loc("_135"("aws-c-common/source/byte_buf.c":60:41))
  %v204 = sea.ptr.dereferenceable %v26, %v203 : !sea.ptr<64>, i64 loc("_135"("aws-c-common/source/byte_buf.c":60:41))
  sea.cond_br %v204, ^bb91, ^bb150
^bb91:
  %v205 = sea.const 0 : i64 loc("_137"("aws-c-common/source/byte_buf.c":60:45))
  %v206 = sea.icmp eq, %v182, %v205 : i64 loc("_137"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v206, ^bb92, ^bb94 loc("aws-c-common/source/byte_buf.c":60:50)
^bb92:
  %v207 = sea.ptr.index %v26 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_139"("aws-c-common/source/byte_buf.c":60:58))
  %v208 = sea.const 8 : i64 loc("_140"("aws-c-common/source/byte_buf.c":60:58))
  %v209 = sea.ptr.dereferenceable %v207, %v208 : !sea.ptr<64>, i64 loc("_140"("aws-c-common/source/byte_buf.c":60:58))
  sea.cond_br %v209, ^bb93, ^bb150
^bb93:
  %v210 = sea.load %v139[%v207] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_142"("aws-c-common/source/byte_buf.c":60:58))
  %v211 = sea.ptr.null : !sea.ptr<64> loc("_143"("aws-c-common/source/byte_buf.c":60:65))
  %v212 = sea.ptr.cmp eq, %v210, %v211 : !sea.ptr<64> loc("_143"("aws-c-common/source/byte_buf.c":60:65))
  %v213 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v212, ^bb95(%v213 : !sea.ptr<64>), ^bb94 loc("aws-c-common/source/byte_buf.c":60:74)
^bb94:
  %v214 = sea.const 8 : i64 loc("_145"("aws-c-common/source/byte_buf.c":61:19))
  %v215 = sea.ptr.dereferenceable %v143, %v214 : !sea.ptr<64>, i64 loc("_145"("aws-c-common/source/byte_buf.c":61:19))
  sea.br ^bb150
^bb95(%v216 : !sea.ptr<64>):
  %v217 = sea.ptr.index %v26 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_157"("seahorn/lib/byte_buf_helper.c":63:18))
  %v218 = sea.const 8 : i64 loc("_158"("seahorn/lib/byte_buf_helper.c":63:18))
  %v219 = sea.ptr.dereferenceable %v217, %v218 : !sea.ptr<64>, i64 loc("_158"("seahorn/lib/byte_buf_helper.c":63:18))
  sea.cond_br %v219, ^bb96, ^bb150
^bb96:
  %v220 = sea.load %v139[%v217] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_159"("seahorn/lib/byte_buf_helper.c":63:18))
  %v221 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_160"("seahorn/lib/byte_buf_helper.c":63:28))
  %v222 = sea.ptr.cmp eq, %v220, %v221 : !sea.ptr<64> loc("_160"("seahorn/lib/byte_buf_helper.c":63:28))
  %v223 = sea.const 8 : i64 loc("_161"("seahorn/lib/byte_buf_helper.c":63:18))
  %v224 = sea.ptr.dereferenceable %v217, %v223 : !sea.ptr<64>, i64 loc("_161"("seahorn/lib/byte_buf_helper.c":63:18))
  sea.cond_br %v224, ^bb97, ^bb150
^bb97:
  sea.cond_br %v222, ^bb98, ^bb150 loc("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":31:9)
^bb98:
  %v225 = sea.const 8 : i64 loc("_163"("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":32:9))
  %v226 = sea.ptr.dereferenceable %v26, %v225 : !sea.ptr<64>, i64 loc("_163"("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":32:9))
  sea.cond_br %v226, ^bb99, ^bb150
^bb99:
  %v227 = sea.icmp eq, %v182, %v31 : i64 loc("_165"("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":32:9))
  %v228 = sea.const 8 : i64 loc("_166"("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":32:9))
  %v229 = sea.ptr.dereferenceable %v26, %v228 : !sea.ptr<64>, i64 loc("_166"("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":32:9))
  %v230 = sea.const 0 : i1 loc("_167")
  %v231 = sea.select %v229, %v227, %v230 : i1 loc("_167")
  sea.cond_br %v231, ^bb100, ^bb150
^bb100:
  %v232 = sea.const 8 : i64 loc("_169"("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":33:9))
  %v233 = sea.ptr.dereferenceable %v143, %v232 : !sea.ptr<64>, i64 loc("_169"("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":33:9))
  sea.cond_br %v233, ^bb101, ^bb150
^bb101:
  %v234 = sea.icmp eq, %v146, %v32 : i64 loc("_171"("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":33:9))
  %v235 = sea.const 8 : i64 loc("_172"("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":33:9))
  %v236 = sea.ptr.dereferenceable %v143, %v235 : !sea.ptr<64>, i64 loc("_172"("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":33:9))
  %v237 = sea.const 0 : i1 loc("_173")
  %v238 = sea.select %v236, %v234, %v237 : i1 loc("_173")
  sea.cond_br %v238, ^bb102, ^bb150
^bb102:
  %v239 = sea.ptr.index %v26 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_175"("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":34:34))
  %v240 = sea.const 8 : i64 loc("_176"("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":34:34))
  %v241 = sea.ptr.dereferenceable %v239, %v240 : !sea.ptr<64>, i64 loc("_176"("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":34:34))
  sea.cond_br %v241, ^bb103, ^bb150
^bb103:
  %v242 = sea.const 8 : i64 loc("_178"("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":34:60))
  %v243 = sea.ptr.dereferenceable %v26, %v242 : !sea.ptr<64>, i64 loc("_178"("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":34:60))
  sea.cond_br %v243, ^bb104, ^bb150
^bb104:
  %v244 = sea.const 0 : i64 loc("_180"("seahorn/lib/utils.c":15:3))
  %v245 = sea.icmp eq, %v31, %v244 : i64 loc("_180"("seahorn/lib/utils.c":15:3))
  %v246 = sea.ptr.null : !sea.ptr<64> loc(".not.i33.i"("seahorn/lib/utils.c":15:3))
  %v247 = sea.ptr.cmp eq, %v216, %v246 : !sea.ptr<64> loc(".not.i33.i"("seahorn/lib/utils.c":15:3))
  %v248 = sea.xor %v73, %v247 : i1 loc("_181"("seahorn/lib/utils.c":15:3))
  %v249 = sea.or %v245, %v248 : i1 loc("_182"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v245, ^bb108, ^bb105 loc("seahorn/lib/utils.c":15:3)
^bb105:
  sea.cond_br %v248, ^bb106, ^bb150 loc("seahorn/lib/utils.c":15:3)
^bb106:
  %v250 = sea.ptr.null : !sea.ptr<64> loc("_185")
  %v251 = sea.ptr.cmp ne, %v216, %v250 : !sea.ptr<64> loc("_185")
  %v252 = sea.and %v73, %v251 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v252, ^bb107, ^bb109(%v251 : i1) loc("seahorn/lib/utils.c":16:15)
^bb107:
  %v253 = sea.nondet "nd_size_t" [20] : i64 loc("_187"("seahorn/lib/utils.c":17:16))
  %v254 = sea.icmp ult, %v253, %v31 : i64 loc("_188"("seahorn/lib/utils.c":19:14))
  %v255 = sea.const 36028797018963967 : i64 loc("_189"("seahorn/lib/utils.c":19:20))
  %v256 = sea.icmp ult, %v31, %v255 : i64 loc("_189"("seahorn/lib/utils.c":19:20))
  %v257 = sea.and %v256, %v254 : i1 loc("_190"("seahorn/lib/utils.c":19:20))
  sea.assume %v257 loc("seahorn/lib/utils.c":19:5)
  %v258 = sea.ptr.index %v216 [%v253] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_191"("seahorn/lib/utils.c":20:5))
  %v259 = sea.load %v138[%v258] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_192"("seahorn/lib/utils.c":20:5))
  %v260 = sea.ptr.index %v51 [%v253] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_193"("seahorn/lib/utils.c":20:5))
  %v261 = sea.load %v138[%v260] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_194"("seahorn/lib/utils.c":20:5))
  %v262 = sea.icmp eq, %v259, %v261 : i8 loc("_195"("seahorn/lib/utils.c":20:5))
  %v263 = sea.const 1 : i1 loc("seahorn/lib/utils.c":20:5)
  sea.cond_br %v262, ^bb109(%v263 : i1), ^bb150 loc("seahorn/lib/utils.c":20:5)
^bb108:
  %v264 = sea.ptr.null : !sea.ptr<64> loc("_183")
  %v265 = sea.ptr.cmp ne, %v216, %v264 : !sea.ptr<64> loc("_183")
  sea.br ^bb109(%v265 : i1) loc("seahorn/lib/utils.c":16:15)
^bb109(%v266 : i1):
  sea.br ^bb110
^bb110:
  sea.cond_br %v40, ^bb117, ^bb111 loc("aws-c-common/source/byte_buf.c":60:33)
^bb111:
  sea.br ^bb112
^bb112:
  sea.br ^bb113
^bb113:
  sea.br ^bb114
^bb114:
  %v267 = sea.icmp ugt, %v31, %v32 : i64 loc(".not2.i9.i"("aws-c-common/source/byte_buf.c":61:44))
  %v268 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v267, ^bb122(%v268 : i1), ^bb115 loc("aws-c-common/source/byte_buf.c":61:61)
^bb115:
  sea.br ^bb116
^bb116:
  sea.br ^bb122(%v73 : i1)
^bb117:
  sea.br ^bb118
^bb118:
  sea.cond_br %v245, ^bb119, ^bb121 loc("aws-c-common/source/byte_buf.c":60:50)
^bb119:
  sea.br ^bb120
^bb120:
  %v269 = sea.ptr.null : !sea.ptr<64> loc("_202"("aws-c-common/source/byte_buf.c":60:65))
  %v270 = sea.ptr.cmp eq, %v51, %v269 : !sea.ptr<64> loc("_202"("aws-c-common/source/byte_buf.c":60:65))
  %v271 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v270, ^bb122(%v271 : i1), ^bb121 loc("aws-c-common/source/byte_buf.c":60:74)
^bb121:
  %v272 = sea.const 0 : i1
  sea.br ^bb122(%v272 : i1)
^bb122(%v273 : i1):
  sea.br ^bb123
^bb123:
  sea.cond_br %v40, ^bb129, ^bb124 loc("aws-c-common/source/byte_buf.c":60:33)
^bb124:
  sea.br ^bb125
^bb125:
  sea.br ^bb126
^bb126:
  %v274 = sea.const 1 : i1 loc("or.cond21.not")
  %v275 = sea.const 0 : i1 loc("or.cond21.not")
  %v276 = sea.select %v274, %v33, %v275 : i1 loc("or.cond21.not")
  sea.cond_br %v276, ^bb127, ^bb150
^bb127:
  sea.br ^bb128
^bb128:
  %v277 = sea.const 1 : i1 loc("or.cond")
  %v278 = sea.and %v73, %v277 : i1 loc("or.cond")
  sea.cond_br %v278, ^bb134, ^bb150
^bb129:
  sea.br ^bb130
^bb130:
  sea.cond_br %v245, ^bb131, ^bb133 loc("aws-c-common/source/byte_buf.c":60:50)
^bb131:
  sea.br ^bb132
^bb132:
  %v279 = sea.ptr.null : !sea.ptr<64> loc("_214"("aws-c-common/source/byte_buf.c":60:65))
  %v280 = sea.ptr.cmp eq, %v51, %v279 : !sea.ptr<64> loc("_214"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v280, ^bb134, ^bb133 loc("aws-c-common/source/byte_buf.c":60:74)
^bb133:
  sea.br ^bb150
^bb134:
  %v281 = sea.const 1 : i1 loc("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":36:13)
  %v282 = sea.xor %v245, %v281 : i1 loc("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":36:13)
  sea.assume %v282 loc("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":36:13)
  %v283 = sea.ptr.null : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v284 = sea.ptr.cmp eq, %v51, %v283 : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  sea.cond_br %v284, ^bb141, ^bb135 loc("seahorn/lib/utils.c":39:14)
^bb135:
  sea.br ^bb136
^bb136:
  %v285 = sea.ptr.index %v51 [%v68] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_222"("seahorn/lib/utils.c":40:5))
  %v286 = sea.const 1 : i64 loc("_223"("seahorn/lib/utils.c":40:5))
  %v287 = sea.ptr.dereferenceable %v285, %v286 : !sea.ptr<64>, i64 loc("_223"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v287, ^bb137, ^bb150
^bb137:
  %v288 = sea.load %v138[%v285] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_225"("seahorn/lib/utils.c":40:5))
  sea.br ^bb138
^bb138:
  %v289 = sea.icmp eq, %v288, %v85 : i8 loc("_227"("seahorn/lib/utils.c":40:5))
  sea.br ^bb139
^bb139:
  %v290 = sea.const 1 : i64 loc("_229"("seahorn/lib/utils.c":40:5))
  %v291 = sea.ptr.dereferenceable %v285, %v290 : !sea.ptr<64>, i64 loc("_229"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v291, ^bb140, ^bb150
^bb140:
  %v292 = sea.const 1 : i1 loc("or.cond17")
  %v293 = sea.const 0 : i1 loc("or.cond17")
  %v294 = sea.select %v292, %v289, %v293 : i1 loc("or.cond17")
  sea.cond_br %v294, ^bb141, ^bb150
^bb141:
  %v295 = sea.const 8 : i64 loc("_231"("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":38:51))
  %v296 = sea.ptr.dereferenceable %v239, %v295 : !sea.ptr<64>, i64 loc("_231"("seahorn/jobs/byte_buf_init_copy/aws_byte_buf_init_copy_harness.c":38:51))
  sea.cond_br %v296, ^bb142, ^bb150
^bb142:
  sea.assume %v266 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb143
^bb143:
  %v297 = sea.ptr.index %v216 [%v68] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_234"("seahorn/lib/utils.c":40:5))
  %v298 = sea.const 1 : i64 loc("_235"("seahorn/lib/utils.c":40:5))
  %v299 = sea.ptr.dereferenceable %v297, %v298 : !sea.ptr<64>, i64 loc("_235"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v299, ^bb144, ^bb150
^bb144:
  %v300 = sea.load %v138[%v297] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_237"("seahorn/lib/utils.c":40:5))
  sea.br ^bb145
^bb145:
  %v301 = sea.icmp eq, %v300, %v85 : i8 loc("_239"("seahorn/lib/utils.c":40:5))
  sea.br ^bb146
^bb146:
  %v302 = sea.const 1 : i64 loc("_241"("seahorn/lib/utils.c":40:5))
  %v303 = sea.ptr.dereferenceable %v297, %v302 : !sea.ptr<64>, i64 loc("_241"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v303, ^bb147, ^bb150
^bb147:
  sea.br ^bb148
^bb148:
  %v304 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v305 = sea.xor %v301, %v304 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v305 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb150 loc("seahorn/lib/utils.c":40:5)
^bb149:
  sea.br ^bb150 loc("aws-c-common/source/byte_buf.c":59:24)
^bb150:
  sea.br ^bb151
^bb151:
  %v306 = sea.const 0 : i1
  sea.assert %v306
  sea.halt
}
