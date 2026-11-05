// Exported from SeaHorn (byte_buf_cat2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm37")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm38")
  %v2 = sea.mem.nondet "region.32" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm39")
  %v3 = sea.mem.nondet "region.64" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm40")
  %v4 = sea.mem.nondet "region.96" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm41")
  %v5 = sea.mem.nondet "region.128" [5] : !sea.mem<!sea.ptr<64>, i8> loc("sm42")
  %v6 = sea.mem.nondet "region.160" [6] : !sea.mem<!sea.ptr<64>, i8> loc("sm43")
  %v7 = sea.const 16 : i64 loc("_0")
  %v8 = sea.alloca %v7 align 8 [7] : i64 -> !sea.ptr<64> loc("_0")
  %v9 = sea.const 32 : i64 loc("_1")
  %v10 = sea.alloca %v9 align 8 [8] : i64 -> !sea.ptr<64> loc("_1")
  %v11 = sea.const 32 : i64 loc("_2")
  %v12 = sea.alloca %v11 align 8 [9] : i64 -> !sea.ptr<64> loc("_2")
  %v13 = sea.const 32 : i64 loc("_3")
  %v14 = sea.alloca %v13 align 8 [10] : i64 -> !sea.ptr<64> loc("_3")
  %v15 = sea.const 32 : i64 loc("_4")
  %v16 = sea.alloca %v15 align 8 [11] : i64 -> !sea.ptr<64> loc("_4")
  %v17 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v18 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v19 = sea.store %v0[%v17], %v18 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v20 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_5")
  %v21 = sea.ptr.index %v20 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_5")
  %v22 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v23 = sea.store %v19[%v21], %v22 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v24 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_6")
  %v25 = sea.ptr.index %v24 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_6")
  %v26 = sea.const 0 : i8
  %v27 = sea.const 24 : i64
  %v28 = sea.memset %v23[%v25], %v26, %v27 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v29 = sea.nondet "nd_size_t" [12] : i64 loc("_7"("seahorn/lib/byte_buf_helper.c":19:18))
  %v30 = sea.nondet "nd_size_t" [13] : i64 loc("_8"("seahorn/lib/byte_buf_helper.c":20:18))
  %v31 = sea.icmp ule, %v29, %v30 : i64 loc("_9"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v31 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v32 = sea.const 11 : i64 loc("_10"("seahorn/lib/byte_buf_helper.c":22:16))
  %v33 = sea.icmp ult, %v30, %v32 : i64 loc("_10"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v33 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb1
^bb1:
  %v34 = sea.store %v2[%v10], %v29 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v35 = sea.ptr.index %v10 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_12"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb2
^bb2:
  %v36 = sea.store %v34[%v35], %v30 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v37 = sea.const 0 : i64 loc("_14"("seahorn/lib/proof_allocators.c":21:15))
  %v38 = sea.icmp eq, %v30, %v37 : i64 loc("_14"("seahorn/lib/proof_allocators.c":21:15))
  %v39 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v38, ^bb6(%v6, %v39 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/proof_allocators.c":21:10)
^bb3:
  %v40 = sea.nondet "nd_malloc_is_fail" [14] : i1 loc("_16"("seahorn/lib/sea_allocators.c":11:10))
  %v41 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v40, ^bb5(%v6, %v41 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/sea_allocators.c":11:10)
^bb4:
  %v42 = sea.const 1 : i64 loc("malloc.i")
  %v43 = sea.mul %v30, %v42 : i64 loc("malloc.i")
  %v44 = sea.alloca %v43 align 16 [15] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb5(%v6, %v44 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb5(%v45 : !sea.mem<!sea.ptr<64>, i8>, %v46 : !sea.ptr<64>):
  %v47 = sea.memhavoc %v45[%v46], %v30 [16] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb6(%v47, %v46 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb6(%v48 : !sea.mem<!sea.ptr<64>, i8>, %v49 : !sea.ptr<64>):
  %v50 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_20"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb7
^bb7:
  %v51 = sea.store %v36[%v50], %v49 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v52 = sea.ptr.index %v10 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_22"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb8
^bb8:
  %v53 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v54 = sea.store %v51[%v52], %v53 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v55 = sea.nondet "nd_size_t" [17] : i64 loc("_23"("seahorn/lib/byte_buf_helper.c":19:18))
  %v56 = sea.nondet "nd_size_t" [18] : i64 loc("_24"("seahorn/lib/byte_buf_helper.c":20:18))
  %v57 = sea.icmp ule, %v55, %v56 : i64 loc("_25"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v57 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v58 = sea.const 11 : i64 loc("_26"("seahorn/lib/byte_buf_helper.c":22:16))
  %v59 = sea.icmp ult, %v56, %v58 : i64 loc("_26"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v59 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb9
^bb9:
  %v60 = sea.store %v3[%v12], %v55 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v61 = sea.ptr.index %v12 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_28"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb10
^bb10:
  %v62 = sea.store %v60[%v61], %v56 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v63 = sea.const 0 : i64 loc("_30"("seahorn/lib/proof_allocators.c":21:15))
  %v64 = sea.icmp eq, %v56, %v63 : i64 loc("_30"("seahorn/lib/proof_allocators.c":21:15))
  %v65 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v64, ^bb14(%v48, %v65 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb11 loc("seahorn/lib/proof_allocators.c":21:10)
^bb11:
  %v66 = sea.nondet "nd_malloc_is_fail" [19] : i1 loc("_32"("seahorn/lib/sea_allocators.c":11:10))
  %v67 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v66, ^bb13(%v48, %v67 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb12 loc("seahorn/lib/sea_allocators.c":11:10)
^bb12:
  %v68 = sea.const 1 : i64 loc("malloc62.i")
  %v69 = sea.mul %v56, %v68 : i64 loc("malloc62.i")
  %v70 = sea.alloca %v69 align 16 [20] : i64 -> !sea.ptr<64> loc("malloc62.i")
  sea.br ^bb13(%v48, %v70 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb13(%v71 : !sea.mem<!sea.ptr<64>, i8>, %v72 : !sea.ptr<64>):
  %v73 = sea.memhavoc %v71[%v72], %v56 [21] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb14(%v73, %v72 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb14(%v74 : !sea.mem<!sea.ptr<64>, i8>, %v75 : !sea.ptr<64>):
  %v76 = sea.ptr.index %v12 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_36"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb15
^bb15:
  %v77 = sea.store %v62[%v76], %v75 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v78 = sea.ptr.index %v12 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_38"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb16
^bb16:
  %v79 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v80 = sea.store %v77[%v78], %v79 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v81 = sea.nondet "nd_size_t" [22] : i64 loc("_39"("seahorn/lib/byte_buf_helper.c":19:18))
  %v82 = sea.nondet "nd_size_t" [23] : i64 loc("_40"("seahorn/lib/byte_buf_helper.c":20:18))
  %v83 = sea.icmp ule, %v81, %v82 : i64 loc("_41"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v83 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v84 = sea.const 11 : i64 loc("_42"("seahorn/lib/byte_buf_helper.c":22:16))
  %v85 = sea.icmp ult, %v82, %v84 : i64 loc("_42"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v85 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb17
^bb17:
  %v86 = sea.store %v4[%v14], %v81 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v87 = sea.ptr.index %v14 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_44"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb18
^bb18:
  %v88 = sea.store %v86[%v87], %v82 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v89 = sea.const 0 : i64 loc("_46"("seahorn/lib/proof_allocators.c":21:15))
  %v90 = sea.icmp eq, %v82, %v89 : i64 loc("_46"("seahorn/lib/proof_allocators.c":21:15))
  %v91 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v90, ^bb22(%v74, %v91 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb19 loc("seahorn/lib/proof_allocators.c":21:10)
^bb19:
  %v92 = sea.nondet "nd_malloc_is_fail" [24] : i1 loc("_48"("seahorn/lib/sea_allocators.c":11:10))
  %v93 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v92, ^bb21(%v74, %v93 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb20 loc("seahorn/lib/sea_allocators.c":11:10)
^bb20:
  %v94 = sea.const 1 : i64 loc("malloc63.i")
  %v95 = sea.mul %v82, %v94 : i64 loc("malloc63.i")
  %v96 = sea.alloca %v95 align 16 [25] : i64 -> !sea.ptr<64> loc("malloc63.i")
  sea.br ^bb21(%v74, %v96 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb21(%v97 : !sea.mem<!sea.ptr<64>, i8>, %v98 : !sea.ptr<64>):
  %v99 = sea.memhavoc %v97[%v98], %v82 [26] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb22(%v99, %v98 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb22(%v100 : !sea.mem<!sea.ptr<64>, i8>, %v101 : !sea.ptr<64>):
  %v102 = sea.ptr.index %v14 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_52"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb23
^bb23:
  %v103 = sea.store %v88[%v102], %v101 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v104 = sea.ptr.index %v14 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_54"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb24
^bb24:
  %v105 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v106 = sea.store %v103[%v104], %v105 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v107 = sea.nondet "nd_size_t" [27] : i64 loc("_55"("seahorn/lib/byte_buf_helper.c":19:18))
  %v108 = sea.nondet "nd_size_t" [28] : i64 loc("_56"("seahorn/lib/byte_buf_helper.c":20:18))
  %v109 = sea.icmp ule, %v107, %v108 : i64 loc("_57"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v109 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v110 = sea.const 11 : i64 loc("_58"("seahorn/lib/byte_buf_helper.c":22:16))
  %v111 = sea.icmp ult, %v108, %v110 : i64 loc("_58"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v111 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb25
^bb25:
  %v112 = sea.store %v5[%v16], %v107 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v113 = sea.ptr.index %v16 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_60"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb26
^bb26:
  %v114 = sea.store %v112[%v113], %v108 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v115 = sea.const 0 : i64 loc("_62"("seahorn/lib/proof_allocators.c":21:15))
  %v116 = sea.icmp eq, %v108, %v115 : i64 loc("_62"("seahorn/lib/proof_allocators.c":21:15))
  %v117 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v116, ^bb30(%v100, %v117 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb27 loc("seahorn/lib/proof_allocators.c":21:10)
^bb27:
  %v118 = sea.nondet "nd_malloc_is_fail" [29] : i1 loc("_64"("seahorn/lib/sea_allocators.c":11:10))
  %v119 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v118, ^bb29(%v100, %v119 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb28 loc("seahorn/lib/sea_allocators.c":11:10)
^bb28:
  %v120 = sea.const 1 : i64 loc("malloc64.i")
  %v121 = sea.mul %v108, %v120 : i64 loc("malloc64.i")
  %v122 = sea.alloca %v121 align 16 [30] : i64 -> !sea.ptr<64> loc("malloc64.i")
  sea.br ^bb29(%v100, %v122 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb29(%v123 : !sea.mem<!sea.ptr<64>, i8>, %v124 : !sea.ptr<64>):
  %v125 = sea.memhavoc %v123[%v124], %v108 [31] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb30(%v125, %v124 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb30(%v126 : !sea.mem<!sea.ptr<64>, i8>, %v127 : !sea.ptr<64>):
  %v128 = sea.ptr.index %v16 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_68"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb31
^bb31:
  %v129 = sea.store %v114[%v128], %v127 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v130 = sea.ptr.index %v16 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_70"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb32
^bb32:
  %v131 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v132 = sea.store %v129[%v130], %v131 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  sea.br ^bb33
^bb33:
  sea.cond_br %v38, ^bb41, ^bb34 loc("aws-c-common/source/byte_buf.c":60:33)
^bb34:
  sea.br ^bb35
^bb35:
  sea.br ^bb36
^bb36:
  sea.br ^bb37
^bb37:
  %v133 = sea.icmp ugt, %v29, %v30 : i64 loc(".not2.i43.i"("aws-c-common/source/byte_buf.c":61:44))
  %v134 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v133, ^bb46(%v134 : i1), ^bb38 loc("aws-c-common/source/byte_buf.c":61:61)
^bb38:
  sea.br ^bb39
^bb39:
  sea.br ^bb40
^bb40:
  %v135 = sea.ptr.null : !sea.ptr<64> loc("_84"("aws-c-common/source/byte_buf.c":61:64))
  %v136 = sea.ptr.cmp ne, %v49, %v135 : !sea.ptr<64> loc("_84"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb46(%v136 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb41:
  sea.br ^bb42
^bb42:
  %v137 = sea.const 0 : i64 loc("_74"("aws-c-common/source/byte_buf.c":60:45))
  %v138 = sea.icmp eq, %v29, %v137 : i64 loc("_74"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v138, ^bb43, ^bb45 loc("aws-c-common/source/byte_buf.c":60:50)
^bb43:
  sea.br ^bb44
^bb44:
  %v139 = sea.ptr.null : !sea.ptr<64> loc("_77"("aws-c-common/source/byte_buf.c":60:65))
  %v140 = sea.ptr.cmp eq, %v49, %v139 : !sea.ptr<64> loc("_77"("aws-c-common/source/byte_buf.c":60:65))
  %v141 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v140, ^bb46(%v141 : i1), ^bb45 loc("aws-c-common/source/byte_buf.c":60:74)
^bb45:
  %v142 = sea.const 0 : i1
  sea.br ^bb46(%v142 : i1)
^bb46(%v143 : i1):
  sea.assume %v143 loc("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":56:3)
  sea.br ^bb47
^bb47:
  sea.cond_br %v64, ^bb55, ^bb48 loc("aws-c-common/source/byte_buf.c":60:33)
^bb48:
  sea.br ^bb49
^bb49:
  sea.br ^bb50
^bb50:
  sea.br ^bb51
^bb51:
  %v144 = sea.icmp ugt, %v55, %v56 : i64 loc(".not2.i39.i"("aws-c-common/source/byte_buf.c":61:44))
  %v145 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v144, ^bb60(%v145 : i1), ^bb52 loc("aws-c-common/source/byte_buf.c":61:61)
^bb52:
  sea.br ^bb53
^bb53:
  sea.br ^bb54
^bb54:
  %v146 = sea.ptr.null : !sea.ptr<64> loc("_99"("aws-c-common/source/byte_buf.c":61:64))
  %v147 = sea.ptr.cmp ne, %v75, %v146 : !sea.ptr<64> loc("_99"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb60(%v147 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb55:
  sea.br ^bb56
^bb56:
  %v148 = sea.const 0 : i64 loc("_89"("aws-c-common/source/byte_buf.c":60:45))
  %v149 = sea.icmp eq, %v55, %v148 : i64 loc("_89"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v149, ^bb57, ^bb59 loc("aws-c-common/source/byte_buf.c":60:50)
^bb57:
  sea.br ^bb58
^bb58:
  %v150 = sea.ptr.null : !sea.ptr<64> loc("_92"("aws-c-common/source/byte_buf.c":60:65))
  %v151 = sea.ptr.cmp eq, %v75, %v150 : !sea.ptr<64> loc("_92"("aws-c-common/source/byte_buf.c":60:65))
  %v152 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v151, ^bb60(%v152 : i1), ^bb59 loc("aws-c-common/source/byte_buf.c":60:74)
^bb59:
  %v153 = sea.const 0 : i1
  sea.br ^bb60(%v153 : i1)
^bb60(%v154 : i1):
  sea.assume %v154 loc("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":57:3)
  sea.br ^bb61
^bb61:
  sea.cond_br %v90, ^bb69, ^bb62 loc("aws-c-common/source/byte_buf.c":60:33)
^bb62:
  sea.br ^bb63
^bb63:
  sea.br ^bb64
^bb64:
  sea.br ^bb65
^bb65:
  %v155 = sea.icmp ugt, %v81, %v82 : i64 loc(".not2.i35.i"("aws-c-common/source/byte_buf.c":61:44))
  %v156 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v155, ^bb74(%v156 : i1), ^bb66 loc("aws-c-common/source/byte_buf.c":61:61)
^bb66:
  sea.br ^bb67
^bb67:
  sea.br ^bb68
^bb68:
  %v157 = sea.ptr.null : !sea.ptr<64> loc("_114"("aws-c-common/source/byte_buf.c":61:64))
  %v158 = sea.ptr.cmp ne, %v101, %v157 : !sea.ptr<64> loc("_114"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb74(%v158 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb69:
  sea.br ^bb70
^bb70:
  %v159 = sea.const 0 : i64 loc("_104"("aws-c-common/source/byte_buf.c":60:45))
  %v160 = sea.icmp eq, %v81, %v159 : i64 loc("_104"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v160, ^bb71, ^bb73 loc("aws-c-common/source/byte_buf.c":60:50)
^bb71:
  sea.br ^bb72
^bb72:
  %v161 = sea.ptr.null : !sea.ptr<64> loc("_107"("aws-c-common/source/byte_buf.c":60:65))
  %v162 = sea.ptr.cmp eq, %v101, %v161 : !sea.ptr<64> loc("_107"("aws-c-common/source/byte_buf.c":60:65))
  %v163 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v162, ^bb74(%v163 : i1), ^bb73 loc("aws-c-common/source/byte_buf.c":60:74)
^bb73:
  %v164 = sea.const 0 : i1
  sea.br ^bb74(%v164 : i1)
^bb74(%v165 : i1):
  sea.assume %v165 loc("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":58:3)
  sea.br ^bb75
^bb75:
  sea.cond_br %v116, ^bb83, ^bb76 loc("aws-c-common/source/byte_buf.c":60:33)
^bb76:
  sea.br ^bb77
^bb77:
  sea.br ^bb78
^bb78:
  sea.br ^bb79
^bb79:
  %v166 = sea.icmp ugt, %v107, %v108 : i64 loc(".not2.i31.i"("aws-c-common/source/byte_buf.c":61:44))
  %v167 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v166, ^bb88(%v167 : i1), ^bb80 loc("aws-c-common/source/byte_buf.c":61:61)
^bb80:
  sea.br ^bb81
^bb81:
  sea.br ^bb82
^bb82:
  %v168 = sea.ptr.null : !sea.ptr<64> loc("_129"("aws-c-common/source/byte_buf.c":61:64))
  %v169 = sea.ptr.cmp ne, %v127, %v168 : !sea.ptr<64> loc("_129"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb88(%v169 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb83:
  sea.br ^bb84
^bb84:
  %v170 = sea.const 0 : i64 loc("_119"("aws-c-common/source/byte_buf.c":60:45))
  %v171 = sea.icmp eq, %v107, %v170 : i64 loc("_119"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v171, ^bb85, ^bb87 loc("aws-c-common/source/byte_buf.c":60:50)
^bb85:
  sea.br ^bb86
^bb86:
  %v172 = sea.ptr.null : !sea.ptr<64> loc("_122"("aws-c-common/source/byte_buf.c":60:65))
  %v173 = sea.ptr.cmp eq, %v127, %v172 : !sea.ptr<64> loc("_122"("aws-c-common/source/byte_buf.c":60:65))
  %v174 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v173, ^bb88(%v174 : i1), ^bb87 loc("aws-c-common/source/byte_buf.c":60:74)
^bb87:
  %v175 = sea.const 0 : i1
  sea.br ^bb88(%v175 : i1)
^bb88(%v176 : i1):
  sea.assume %v176 loc("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":59:3)
  sea.tracking_on loc("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":62:3)
  sea.br ^bb89
^bb89:
  sea.br ^bb90
^bb90:
  %v177 = sea.store %v1[%v8], %v29 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":21:35)
  %v178 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_132"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":21:35))
  %v179 = sea.store %v177[%v178], %v49 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":21:35)
  sea.br ^bb91
^bb91:
  sea.br ^bb92
^bb92:
  sea.br ^bb93
^bb93:
  %v180 = sea.sub %v108, %v107 : i64 loc("_136"("aws-c-common/source/byte_buf.c":601:22))
  %v181 = sea.icmp ult, %v180, %v29 : i64 loc(".not"("aws-c-common/source/byte_buf.c":601:32))
  sea.cond_br %v181, ^bb145, ^bb94 loc("aws-c-common/source/byte_buf.c":601:9)
^bb94:
  sea.br ^bb95
^bb95:
  %v182 = sea.const 0 : i64 loc(".not.i10.i.i"("aws-c-common/source/byte_buf.c":607:19))
  %v183 = sea.icmp eq, %v29, %v182 : i64 loc(".not.i10.i.i"("aws-c-common/source/byte_buf.c":607:19))
  sea.cond_br %v183, ^bb106(%v126, %v132, %v107 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64), ^bb96 loc("aws-c-common/source/byte_buf.c":607:9)
^bb96:
  sea.br ^bb97
^bb97:
  sea.br ^bb98
^bb98:
  %v184 = sea.ptr.index %v127 [%v107] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_142"("aws-c-common/source/byte_buf.c":611:27))
  sea.br ^bb99
^bb99:
  sea.br ^bb100
^bb100:
  %v185 = sea.ptr.dereferenceable %v184, %v29 : !sea.ptr<64>, i64 loc("_145"("seahorn/lib/bcmp.c":161:3))
  %v186 = sea.ptr.dereferenceable %v184, %v29 : !sea.ptr<64>, i64 loc("_146"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v186, ^bb101, ^bb261 loc("seahorn/lib/bcmp.c":161:3)
^bb101:
  %v187 = sea.ptr.dereferenceable %v49, %v29 : !sea.ptr<64>, i64 loc("_148"("seahorn/lib/bcmp.c":162:3))
  %v188 = sea.ptr.dereferenceable %v49, %v29 : !sea.ptr<64>, i64 loc("_149"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v188, ^bb102, ^bb261 loc("seahorn/lib/bcmp.c":162:3)
^bb102:
  %v189 = sea.memmove %v126[%v184], %v126[%v49], %v29 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb103
^bb103:
  sea.br ^bb104
^bb104:
  sea.br ^bb105
^bb105:
  %v190 = sea.add %v107, %v29 : i64 loc("_153"("aws-c-common/source/byte_buf.c":612:17))
  %v191 = sea.store %v132[%v16], %v190 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":612:17)
  sea.br ^bb106(%v189, %v191, %v190 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/source/byte_buf.c":613:5)
^bb106(%v192 : !sea.mem<!sea.ptr<64>, i8>, %v193 : !sea.mem<!sea.ptr<64>, i8>, %v194 : i64):
  sea.br ^bb107
^bb107:
  %v195 = sea.load %v77[%v76] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_157"("aws-c-common/source/byte_buf.c":985:20))
  sea.br ^bb108
^bb108:
  %v196 = sea.load %v60[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_158"("aws-c-common/source/byte_buf.c":986:20))
  sea.br ^bb109
^bb109:
  sea.br ^bb110
^bb110:
  sea.br ^bb111
^bb111:
  %v197 = sea.sub %v108, %v194 : i64 loc("_162"("aws-c-common/source/byte_buf.c":601:22))
  %v198 = sea.icmp ult, %v197, %v196 : i64 loc(".not4"("aws-c-common/source/byte_buf.c":601:32))
  sea.cond_br %v198, ^bb144, ^bb112 loc("aws-c-common/source/byte_buf.c":601:9)
^bb112:
  sea.br ^bb113
^bb113:
  %v199 = sea.const 0 : i64 loc(".not.i6.i.i"("aws-c-common/source/byte_buf.c":607:19))
  %v200 = sea.icmp eq, %v196, %v199 : i64 loc(".not.i6.i.i"("aws-c-common/source/byte_buf.c":607:19))
  sea.cond_br %v200, ^bb124(%v192, %v193, %v194 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64), ^bb114 loc("aws-c-common/source/byte_buf.c":607:9)
^bb114:
  sea.br ^bb115
^bb115:
  %v201 = sea.load %v193[%v128] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_167"("aws-c-common/source/byte_buf.c":611:20))
  sea.br ^bb116
^bb116:
  %v202 = sea.ptr.index %v201 [%v194] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_169"("aws-c-common/source/byte_buf.c":611:27))
  sea.br ^bb117
^bb117:
  sea.br ^bb118
^bb118:
  %v203 = sea.ptr.dereferenceable %v202, %v196 : !sea.ptr<64>, i64 loc("_172"("seahorn/lib/bcmp.c":161:3))
  %v204 = sea.ptr.dereferenceable %v202, %v196 : !sea.ptr<64>, i64 loc("_173"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v204, ^bb119, ^bb261 loc("seahorn/lib/bcmp.c":161:3)
^bb119:
  %v205 = sea.ptr.dereferenceable %v195, %v196 : !sea.ptr<64>, i64 loc("_175"("seahorn/lib/bcmp.c":162:3))
  %v206 = sea.ptr.dereferenceable %v195, %v196 : !sea.ptr<64>, i64 loc("_176"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v206, ^bb120, ^bb261 loc("seahorn/lib/bcmp.c":162:3)
^bb120:
  %v207 = sea.memmove %v192[%v202], %v192[%v195], %v196 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb121
^bb121:
  sea.br ^bb122
^bb122:
  sea.br ^bb123
^bb123:
  %v208 = sea.add %v196, %v194 : i64 loc("_180"("aws-c-common/source/byte_buf.c":612:17))
  %v209 = sea.store %v193[%v16], %v208 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":612:17)
  sea.br ^bb124(%v207, %v209, %v208 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/source/byte_buf.c":613:5)
^bb124(%v210 : !sea.mem<!sea.ptr<64>, i8>, %v211 : !sea.mem<!sea.ptr<64>, i8>, %v212 : i64):
  sea.br ^bb125
^bb125:
  %v213 = sea.load %v103[%v102] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_184"("aws-c-common/source/byte_buf.c":985:20))
  sea.br ^bb126
^bb126:
  %v214 = sea.load %v86[%v14] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_185"("aws-c-common/source/byte_buf.c":986:20))
  sea.br ^bb127
^bb127:
  %v215 = sea.load %v211[%v113] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_187"("aws-c-common/source/byte_buf.c":601:13))
  sea.br ^bb128
^bb128:
  sea.br ^bb129
^bb129:
  %v216 = sea.sub %v215, %v212 : i64 loc("_190"("aws-c-common/source/byte_buf.c":601:22))
  %v217 = sea.icmp ult, %v216, %v214 : i64 loc("_191"("aws-c-common/source/byte_buf.c":601:32))
  sea.cond_br %v217, ^bb143, ^bb130 loc("aws-c-common/source/byte_buf.c":601:9)
^bb130:
  sea.br ^bb131
^bb131:
  %v218 = sea.const 0 : i64 loc(".not.i.i.i"("aws-c-common/source/byte_buf.c":607:19))
  %v219 = sea.icmp eq, %v214, %v218 : i64 loc(".not.i.i.i"("aws-c-common/source/byte_buf.c":607:19))
  sea.cond_br %v219, ^bb142(%v210, %v211, %v212 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64), ^bb132 loc("aws-c-common/source/byte_buf.c":607:9)
^bb132:
  sea.br ^bb133
^bb133:
  %v220 = sea.load %v211[%v128] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_196"("aws-c-common/source/byte_buf.c":611:20))
  sea.br ^bb134
^bb134:
  %v221 = sea.ptr.index %v220 [%v212] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_198"("aws-c-common/source/byte_buf.c":611:27))
  sea.br ^bb135
^bb135:
  sea.br ^bb136
^bb136:
  %v222 = sea.ptr.dereferenceable %v221, %v214 : !sea.ptr<64>, i64 loc("_201"("seahorn/lib/bcmp.c":161:3))
  %v223 = sea.ptr.dereferenceable %v221, %v214 : !sea.ptr<64>, i64 loc("_202"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v223, ^bb137, ^bb261 loc("seahorn/lib/bcmp.c":161:3)
^bb137:
  %v224 = sea.ptr.dereferenceable %v213, %v214 : !sea.ptr<64>, i64 loc("_204"("seahorn/lib/bcmp.c":162:3))
  %v225 = sea.ptr.dereferenceable %v213, %v214 : !sea.ptr<64>, i64 loc("_205"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v225, ^bb138, ^bb261 loc("seahorn/lib/bcmp.c":162:3)
^bb138:
  %v226 = sea.memmove %v210[%v221], %v210[%v213], %v214 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb139
^bb139:
  sea.br ^bb140
^bb140:
  sea.br ^bb141
^bb141:
  %v227 = sea.add %v214, %v212 : i64 loc("_209"("aws-c-common/source/byte_buf.c":612:17))
  %v228 = sea.store %v211[%v16], %v227 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":612:17)
  sea.br ^bb142(%v226, %v228, %v227 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/source/byte_buf.c":613:5)
^bb142(%v229 : !sea.mem<!sea.ptr<64>, i8>, %v230 : !sea.mem<!sea.ptr<64>, i8>, %v231 : i64):
  %v232 = sea.load %v34[%v10] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_215"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":69:5))
  %v233 = sea.add %v214, %v196 : i64 loc("_216"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":69:5))
  %v234 = sea.add %v233, %v232 : i64 loc("_217"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":69:5))
  %v235 = sea.icmp uge, %v180, %v234 : i64 loc("_218"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":69:5))
  %v236 = sea.icmp ult, %v180, %v234 : i64 loc(".not.i"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":69:5))
  sea.cond_br %v236, ^bb261, ^bb148(%v229, %v230, %v231, %v214, %v195, %v196, %v232 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64, !sea.ptr<64>, i64, i64) loc("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":69:5)
^bb143:
  sea.br ^bb147(%v210, %v211, %v212, %v195, %v214, %v196 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, !sea.ptr<64>, i64, i64)
^bb144:
  %v237 = sea.load %v86[%v14] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc(".pre.pre"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":72:5))
  sea.br ^bb146(%v192, %v193, %v237, %v194, %v195, %v196 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64, !sea.ptr<64>, i64)
^bb145:
  sea.br ^bb146(%v126, %v132, %v81, %v107, %v75, %v55 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64, !sea.ptr<64>, i64)
^bb146(%v238 : !sea.mem<!sea.ptr<64>, i8>, %v239 : !sea.mem<!sea.ptr<64>, i8>, %v240 : i64, %v241 : i64, %v242 : !sea.ptr<64>, %v243 : i64):
  sea.br ^bb147(%v238, %v239, %v241, %v242, %v240, %v243 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, !sea.ptr<64>, i64, i64) loc("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":67:7)
^bb147(%v244 : !sea.mem<!sea.ptr<64>, i8>, %v245 : !sea.mem<!sea.ptr<64>, i8>, %v246 : i64, %v247 : !sea.ptr<64>, %v248 : i64, %v249 : i64):
  %v250 = sea.load %v34[%v10] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_224"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":72:5))
  %v251 = sea.add %v249, %v248 : i64 loc("_225"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":72:5))
  %v252 = sea.add %v251, %v250 : i64 loc("_226"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":72:5))
  %v253 = sea.icmp ult, %v180, %v252 : i64 loc("_227"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":72:5))
  sea.cond_br %v253, ^bb148(%v244, %v245, %v246, %v248, %v247, %v249, %v250 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64, !sea.ptr<64>, i64, i64), ^bb261 loc("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":72:5)
^bb148(%v254 : !sea.mem<!sea.ptr<64>, i8>, %v255 : !sea.mem<!sea.ptr<64>, i8>, %v256 : i64, %v257 : i64, %v258 : !sea.ptr<64>, %v259 : i64, %v260 : i64):
  sea.br ^bb149
^bb149:
  %v261 = sea.load %v36[%v35] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_235"("aws-c-common/source/byte_buf.c":60:19))
  %v262 = sea.const 0 : i64 loc(".not72"("aws-c-common/source/byte_buf.c":60:28))
  %v263 = sea.icmp eq, %v261, %v262 : i64 loc(".not72"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v263, ^bb157, ^bb150 loc("aws-c-common/source/byte_buf.c":60:33)
^bb150:
  sea.br ^bb151
^bb151:
  sea.br ^bb152
^bb152:
  sea.br ^bb153
^bb153:
  %v264 = sea.icmp ugt, %v260, %v261 : i64 loc(".not2.i27.i"("aws-c-common/source/byte_buf.c":61:44))
  %v265 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v264, ^bb162(%v265 : i1), ^bb154 loc("aws-c-common/source/byte_buf.c":61:61)
^bb154:
  sea.br ^bb155
^bb155:
  sea.br ^bb156
^bb156:
  %v266 = sea.load %v51[%v50] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_249"("aws-c-common/source/byte_buf.c":61:64))
  %v267 = sea.ptr.null : !sea.ptr<64> loc("_250"("aws-c-common/source/byte_buf.c":61:64))
  %v268 = sea.ptr.cmp ne, %v266, %v267 : !sea.ptr<64> loc("_250"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb162(%v268 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb157:
  sea.br ^bb158
^bb158:
  %v269 = sea.const 0 : i64 loc("_238"("aws-c-common/source/byte_buf.c":60:45))
  %v270 = sea.icmp eq, %v260, %v269 : i64 loc("_238"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v270, ^bb159, ^bb161 loc("aws-c-common/source/byte_buf.c":60:50)
^bb159:
  sea.br ^bb160
^bb160:
  %v271 = sea.load %v51[%v50] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_241"("aws-c-common/source/byte_buf.c":60:58))
  %v272 = sea.ptr.null : !sea.ptr<64> loc("_242"("aws-c-common/source/byte_buf.c":60:65))
  %v273 = sea.ptr.cmp eq, %v271, %v272 : !sea.ptr<64> loc("_242"("aws-c-common/source/byte_buf.c":60:65))
  %v274 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v273, ^bb162(%v274 : i1), ^bb161 loc("aws-c-common/source/byte_buf.c":60:74)
^bb161:
  %v275 = sea.const 0 : i1
  sea.br ^bb162(%v275 : i1)
^bb162(%v276 : i1):
  sea.br ^bb163
^bb163:
  sea.cond_br %v263, ^bb169, ^bb164 loc("aws-c-common/source/byte_buf.c":60:33)
^bb164:
  sea.br ^bb165
^bb165:
  sea.br ^bb166
^bb166:
  %v277 = sea.icmp ule, %v260, %v261 : i64 loc(".not2.i23.i")
  %v278 = sea.const 1 : i1 loc("or.cond22.not")
  %v279 = sea.const 0 : i1 loc("or.cond22.not")
  %v280 = sea.select %v278, %v277, %v279 : i1 loc("or.cond22.not")
  sea.cond_br %v280, ^bb167, ^bb261
^bb167:
  sea.br ^bb168
^bb168:
  %v281 = sea.load %v51[%v50] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_265")
  %v282 = sea.ptr.null : !sea.ptr<64> loc("_266")
  %v283 = sea.ptr.cmp ne, %v281, %v282 : !sea.ptr<64> loc("_266")
  %v284 = sea.const 1 : i1 loc("or.cond")
  %v285 = sea.const 0 : i1 loc("or.cond")
  %v286 = sea.select %v284, %v283, %v285 : i1 loc("or.cond")
  sea.cond_br %v286, ^bb174(%v281 : !sea.ptr<64>), ^bb261
^bb169:
  sea.br ^bb170
^bb170:
  %v287 = sea.const 0 : i64 loc("_255"("aws-c-common/source/byte_buf.c":60:45))
  %v288 = sea.icmp eq, %v260, %v287 : i64 loc("_255"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v288, ^bb171, ^bb173 loc("aws-c-common/source/byte_buf.c":60:50)
^bb171:
  sea.br ^bb172
^bb172:
  %v289 = sea.load %v51[%v50] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_258"("aws-c-common/source/byte_buf.c":60:58))
  %v290 = sea.ptr.null : !sea.ptr<64> loc("_259"("aws-c-common/source/byte_buf.c":60:65))
  %v291 = sea.ptr.cmp eq, %v289, %v290 : !sea.ptr<64> loc("_259"("aws-c-common/source/byte_buf.c":60:65))
  %v292 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v291, ^bb174(%v292 : !sea.ptr<64>), ^bb173 loc("aws-c-common/source/byte_buf.c":60:74)
^bb173:
  sea.br ^bb261
^bb174(%v293 : !sea.ptr<64>):
  sea.br ^bb175
^bb175:
  %v294 = sea.load %v62[%v61] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_269"("aws-c-common/source/byte_buf.c":60:19))
  %v295 = sea.const 0 : i64 loc(".not73"("aws-c-common/source/byte_buf.c":60:28))
  %v296 = sea.icmp eq, %v294, %v295 : i64 loc(".not73"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v296, ^bb183, ^bb176 loc("aws-c-common/source/byte_buf.c":60:33)
^bb176:
  sea.br ^bb177
^bb177:
  sea.br ^bb178
^bb178:
  sea.br ^bb179
^bb179:
  %v297 = sea.icmp ugt, %v259, %v294 : i64 loc(".not2.i19.i"("aws-c-common/source/byte_buf.c":61:44))
  %v298 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v297, ^bb188(%v298 : i1), ^bb180 loc("aws-c-common/source/byte_buf.c":61:61)
^bb180:
  sea.br ^bb181
^bb181:
  sea.br ^bb182
^bb182:
  %v299 = sea.ptr.null : !sea.ptr<64> loc("_282"("aws-c-common/source/byte_buf.c":61:64))
  %v300 = sea.ptr.cmp ne, %v258, %v299 : !sea.ptr<64> loc("_282"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb188(%v300 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb183:
  sea.br ^bb184
^bb184:
  %v301 = sea.const 0 : i64 loc("_272"("aws-c-common/source/byte_buf.c":60:45))
  %v302 = sea.icmp eq, %v259, %v301 : i64 loc("_272"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v302, ^bb185, ^bb187 loc("aws-c-common/source/byte_buf.c":60:50)
^bb185:
  sea.br ^bb186
^bb186:
  %v303 = sea.ptr.null : !sea.ptr<64> loc("_275"("aws-c-common/source/byte_buf.c":60:65))
  %v304 = sea.ptr.cmp eq, %v258, %v303 : !sea.ptr<64> loc("_275"("aws-c-common/source/byte_buf.c":60:65))
  %v305 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v304, ^bb188(%v305 : i1), ^bb187 loc("aws-c-common/source/byte_buf.c":60:74)
^bb187:
  %v306 = sea.const 0 : i1
  sea.br ^bb188(%v306 : i1)
^bb188(%v307 : i1):
  sea.br ^bb189
^bb189:
  sea.cond_br %v296, ^bb195, ^bb190 loc("aws-c-common/source/byte_buf.c":60:33)
^bb190:
  sea.br ^bb191
^bb191:
  sea.br ^bb192
^bb192:
  %v308 = sea.icmp ule, %v259, %v294 : i64 loc(".not2.i15.i")
  %v309 = sea.const 1 : i1 loc("or.cond26.not")
  %v310 = sea.const 0 : i1 loc("or.cond26.not")
  %v311 = sea.select %v309, %v308, %v310 : i1 loc("or.cond26.not")
  sea.cond_br %v311, ^bb193, ^bb261
^bb193:
  sea.br ^bb194
^bb194:
  %v312 = sea.ptr.null : !sea.ptr<64> loc("_296")
  %v313 = sea.ptr.cmp ne, %v258, %v312 : !sea.ptr<64> loc("_296")
  %v314 = sea.const 1 : i1 loc("or.cond14")
  %v315 = sea.const 0 : i1 loc("or.cond14")
  %v316 = sea.select %v314, %v313, %v315 : i1 loc("or.cond14")
  sea.cond_br %v316, ^bb200, ^bb261
^bb195:
  sea.br ^bb196
^bb196:
  %v317 = sea.const 0 : i64 loc("_287"("aws-c-common/source/byte_buf.c":60:45))
  %v318 = sea.icmp eq, %v259, %v317 : i64 loc("_287"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v318, ^bb197, ^bb199 loc("aws-c-common/source/byte_buf.c":60:50)
^bb197:
  sea.br ^bb198
^bb198:
  %v319 = sea.ptr.null : !sea.ptr<64> loc("_290"("aws-c-common/source/byte_buf.c":60:65))
  %v320 = sea.ptr.cmp eq, %v258, %v319 : !sea.ptr<64> loc("_290"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v320, ^bb200, ^bb199 loc("aws-c-common/source/byte_buf.c":60:74)
^bb199:
  sea.br ^bb261
^bb200:
  sea.br ^bb201
^bb201:
  %v321 = sea.load %v88[%v87] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_298"("aws-c-common/source/byte_buf.c":60:19))
  %v322 = sea.const 0 : i64 loc(".not74"("aws-c-common/source/byte_buf.c":60:28))
  %v323 = sea.icmp eq, %v321, %v322 : i64 loc(".not74"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v323, ^bb209, ^bb202 loc("aws-c-common/source/byte_buf.c":60:33)
^bb202:
  sea.br ^bb203
^bb203:
  sea.br ^bb204
^bb204:
  sea.br ^bb205
^bb205:
  %v324 = sea.icmp ugt, %v257, %v321 : i64 loc(".not2.i11.i"("aws-c-common/source/byte_buf.c":61:44))
  %v325 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v324, ^bb214(%v325 : i1), ^bb206 loc("aws-c-common/source/byte_buf.c":61:61)
^bb206:
  sea.br ^bb207
^bb207:
  sea.br ^bb208
^bb208:
  %v326 = sea.load %v103[%v102] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_312"("aws-c-common/source/byte_buf.c":61:64))
  %v327 = sea.ptr.null : !sea.ptr<64> loc("_313"("aws-c-common/source/byte_buf.c":61:64))
  %v328 = sea.ptr.cmp ne, %v326, %v327 : !sea.ptr<64> loc("_313"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb214(%v328 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb209:
  sea.br ^bb210
^bb210:
  %v329 = sea.const 0 : i64 loc("_301"("aws-c-common/source/byte_buf.c":60:45))
  %v330 = sea.icmp eq, %v257, %v329 : i64 loc("_301"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v330, ^bb211, ^bb213 loc("aws-c-common/source/byte_buf.c":60:50)
^bb211:
  sea.br ^bb212
^bb212:
  %v331 = sea.load %v103[%v102] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_304"("aws-c-common/source/byte_buf.c":60:58))
  %v332 = sea.ptr.null : !sea.ptr<64> loc("_305"("aws-c-common/source/byte_buf.c":60:65))
  %v333 = sea.ptr.cmp eq, %v331, %v332 : !sea.ptr<64> loc("_305"("aws-c-common/source/byte_buf.c":60:65))
  %v334 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v333, ^bb214(%v334 : i1), ^bb213 loc("aws-c-common/source/byte_buf.c":60:74)
^bb213:
  %v335 = sea.const 0 : i1
  sea.br ^bb214(%v335 : i1)
^bb214(%v336 : i1):
  sea.br ^bb215
^bb215:
  sea.cond_br %v323, ^bb221, ^bb216 loc("aws-c-common/source/byte_buf.c":60:33)
^bb216:
  sea.br ^bb217
^bb217:
  sea.br ^bb218
^bb218:
  %v337 = sea.icmp ule, %v257, %v321 : i64 loc(".not2.i7.i")
  %v338 = sea.const 1 : i1 loc("or.cond30.not")
  %v339 = sea.const 0 : i1 loc("or.cond30.not")
  %v340 = sea.select %v338, %v337, %v339 : i1 loc("or.cond30.not")
  sea.cond_br %v340, ^bb219, ^bb261
^bb219:
  sea.br ^bb220
^bb220:
  %v341 = sea.load %v103[%v102] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_328")
  %v342 = sea.ptr.null : !sea.ptr<64> loc("_329")
  %v343 = sea.ptr.cmp ne, %v341, %v342 : !sea.ptr<64> loc("_329")
  %v344 = sea.const 1 : i1 loc("or.cond16")
  %v345 = sea.const 0 : i1 loc("or.cond16")
  %v346 = sea.select %v344, %v343, %v345 : i1 loc("or.cond16")
  sea.cond_br %v346, ^bb226(%v341 : !sea.ptr<64>), ^bb261
^bb221:
  sea.br ^bb222
^bb222:
  %v347 = sea.const 0 : i64 loc("_318"("aws-c-common/source/byte_buf.c":60:45))
  %v348 = sea.icmp eq, %v257, %v347 : i64 loc("_318"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v348, ^bb223, ^bb225 loc("aws-c-common/source/byte_buf.c":60:50)
^bb223:
  sea.br ^bb224
^bb224:
  %v349 = sea.load %v103[%v102] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_321"("aws-c-common/source/byte_buf.c":60:58))
  %v350 = sea.ptr.null : !sea.ptr<64> loc("_322"("aws-c-common/source/byte_buf.c":60:65))
  %v351 = sea.ptr.cmp eq, %v349, %v350 : !sea.ptr<64> loc("_322"("aws-c-common/source/byte_buf.c":60:65))
  %v352 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v351, ^bb226(%v352 : !sea.ptr<64>), ^bb225 loc("aws-c-common/source/byte_buf.c":60:74)
^bb225:
  sea.br ^bb261
^bb226(%v353 : !sea.ptr<64>):
  sea.br ^bb227
^bb227:
  %v354 = sea.load %v255[%v113] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_332"("aws-c-common/source/byte_buf.c":60:19))
  %v355 = sea.const 0 : i64 loc(".not75"("aws-c-common/source/byte_buf.c":60:28))
  %v356 = sea.icmp eq, %v354, %v355 : i64 loc(".not75"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v356, ^bb235, ^bb228 loc("aws-c-common/source/byte_buf.c":60:33)
^bb228:
  sea.br ^bb229
^bb229:
  sea.br ^bb230
^bb230:
  sea.br ^bb231
^bb231:
  %v357 = sea.icmp ugt, %v256, %v354 : i64 loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":61:44))
  %v358 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v357, ^bb240(%v358 : i1), ^bb232 loc("aws-c-common/source/byte_buf.c":61:61)
^bb232:
  sea.br ^bb233
^bb233:
  sea.br ^bb234
^bb234:
  %v359 = sea.load %v255[%v128] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_346"("aws-c-common/source/byte_buf.c":61:64))
  %v360 = sea.ptr.null : !sea.ptr<64> loc("_347"("aws-c-common/source/byte_buf.c":61:64))
  %v361 = sea.ptr.cmp ne, %v359, %v360 : !sea.ptr<64> loc("_347"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb240(%v361 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb235:
  sea.br ^bb236
^bb236:
  %v362 = sea.const 0 : i64 loc("_335"("aws-c-common/source/byte_buf.c":60:45))
  %v363 = sea.icmp eq, %v256, %v362 : i64 loc("_335"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v363, ^bb237, ^bb239 loc("aws-c-common/source/byte_buf.c":60:50)
^bb237:
  sea.br ^bb238
^bb238:
  %v364 = sea.load %v255[%v128] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_338"("aws-c-common/source/byte_buf.c":60:58))
  %v365 = sea.ptr.null : !sea.ptr<64> loc("_339"("aws-c-common/source/byte_buf.c":60:65))
  %v366 = sea.ptr.cmp eq, %v364, %v365 : !sea.ptr<64> loc("_339"("aws-c-common/source/byte_buf.c":60:65))
  %v367 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v366, ^bb240(%v367 : i1), ^bb239 loc("aws-c-common/source/byte_buf.c":60:74)
^bb239:
  %v368 = sea.const 0 : i1
  sea.br ^bb240(%v368 : i1)
^bb240(%v369 : i1):
  sea.br ^bb241
^bb241:
  sea.cond_br %v356, ^bb247, ^bb242 loc("aws-c-common/source/byte_buf.c":60:33)
^bb242:
  sea.br ^bb243
^bb243:
  sea.br ^bb244
^bb244:
  %v370 = sea.icmp ule, %v256, %v354 : i64 loc(".not2.i.i")
  %v371 = sea.const 1 : i1 loc("or.cond34.not")
  %v372 = sea.const 0 : i1 loc("or.cond34.not")
  %v373 = sea.select %v371, %v370, %v372 : i1 loc("or.cond34.not")
  sea.cond_br %v373, ^bb245, ^bb261
^bb245:
  sea.br ^bb246
^bb246:
  %v374 = sea.load %v255[%v128] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_362")
  %v375 = sea.ptr.null : !sea.ptr<64> loc("_363")
  %v376 = sea.ptr.cmp ne, %v374, %v375 : !sea.ptr<64> loc("_363")
  %v377 = sea.const 1 : i1 loc("or.cond18")
  %v378 = sea.const 0 : i1 loc("or.cond18")
  %v379 = sea.select %v377, %v376, %v378 : i1 loc("or.cond18")
  sea.cond_br %v379, ^bb252, ^bb261
^bb247:
  sea.br ^bb248
^bb248:
  %v380 = sea.const 0 : i64 loc("_352"("aws-c-common/source/byte_buf.c":60:45))
  %v381 = sea.icmp eq, %v256, %v380 : i64 loc("_352"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v381, ^bb249, ^bb251 loc("aws-c-common/source/byte_buf.c":60:50)
^bb249:
  sea.br ^bb250
^bb250:
  %v382 = sea.load %v255[%v128] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_355"("aws-c-common/source/byte_buf.c":60:58))
  %v383 = sea.ptr.null : !sea.ptr<64> loc("_356"("aws-c-common/source/byte_buf.c":60:65))
  %v384 = sea.ptr.cmp eq, %v382, %v383 : !sea.ptr<64> loc("_356"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v384, ^bb252, ^bb251 loc("aws-c-common/source/byte_buf.c":60:74)
^bb251:
  sea.br ^bb261
^bb252:
  %v385 = sea.mem.is_modified %v34[%v10] : !sea.mem<!sea.ptr<64>, i8> loc("_364"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":81:3))
  %v386 = sea.const 1 : i1 loc("_365"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":81:3))
  %v387 = sea.xor %v385, %v386 : i1 loc("_365"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":81:3))
  %v388 = sea.mem.is_modified %v34[%v10] : !sea.mem<!sea.ptr<64>, i8> loc("_366"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":81:3))
  sea.cond_br %v388, ^bb261, ^bb253 loc("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":81:3)
^bb253:
  %v389 = sea.mem.is_modified %v254[%v293] : !sea.mem<!sea.ptr<64>, i8> loc("_368"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":82:3))
  %v390 = sea.const 1 : i1 loc("_369"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":82:3))
  %v391 = sea.xor %v389, %v390 : i1 loc("_369"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":82:3))
  %v392 = sea.mem.is_modified %v254[%v293] : !sea.mem<!sea.ptr<64>, i8> loc("_370"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":82:3))
  sea.cond_br %v392, ^bb261, ^bb254 loc("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":82:3)
^bb254:
  %v393 = sea.load %v54[%v52] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_372"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":83:3))
  %v394 = sea.mem.is_modified %v19[%v393] : !sea.mem<!sea.ptr<64>, i8> loc("_373"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":83:3))
  %v395 = sea.const 1 : i1 loc("_374"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":83:3))
  %v396 = sea.xor %v394, %v395 : i1 loc("_374"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":83:3))
  %v397 = sea.mem.is_modified %v19[%v393] : !sea.mem<!sea.ptr<64>, i8> loc("_375"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":83:3))
  sea.cond_br %v397, ^bb261, ^bb255 loc("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":83:3)
^bb255:
  %v398 = sea.mem.is_modified %v60[%v12] : !sea.mem<!sea.ptr<64>, i8> loc("_377"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":84:3))
  %v399 = sea.const 1 : i1 loc("_378"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":84:3))
  %v400 = sea.xor %v398, %v399 : i1 loc("_378"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":84:3))
  %v401 = sea.mem.is_modified %v60[%v12] : !sea.mem<!sea.ptr<64>, i8> loc("_379"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":84:3))
  sea.cond_br %v401, ^bb261, ^bb256 loc("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":84:3)
^bb256:
  %v402 = sea.load %v77[%v76] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_381"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":85:3))
  %v403 = sea.mem.is_modified %v254[%v402] : !sea.mem<!sea.ptr<64>, i8> loc("_382"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":85:3))
  %v404 = sea.const 1 : i1 loc("_383"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":85:3))
  %v405 = sea.xor %v403, %v404 : i1 loc("_383"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":85:3))
  %v406 = sea.mem.is_modified %v254[%v402] : !sea.mem<!sea.ptr<64>, i8> loc("_384"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":85:3))
  sea.cond_br %v406, ^bb261, ^bb257 loc("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":85:3)
^bb257:
  %v407 = sea.load %v80[%v78] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_386"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":86:3))
  %v408 = sea.mem.is_modified %v19[%v407] : !sea.mem<!sea.ptr<64>, i8> loc("_387"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":86:3))
  %v409 = sea.const 1 : i1 loc("_388"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":86:3))
  %v410 = sea.xor %v408, %v409 : i1 loc("_388"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":86:3))
  %v411 = sea.mem.is_modified %v19[%v407] : !sea.mem<!sea.ptr<64>, i8> loc("_389"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":86:3))
  sea.cond_br %v411, ^bb261, ^bb258 loc("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":86:3)
^bb258:
  %v412 = sea.mem.is_modified %v86[%v14] : !sea.mem<!sea.ptr<64>, i8> loc("_391"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":87:3))
  %v413 = sea.const 1 : i1 loc("_392"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":87:3))
  %v414 = sea.xor %v412, %v413 : i1 loc("_392"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":87:3))
  %v415 = sea.mem.is_modified %v86[%v14] : !sea.mem<!sea.ptr<64>, i8> loc("_393"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":87:3))
  sea.cond_br %v415, ^bb261, ^bb259 loc("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":87:3)
^bb259:
  %v416 = sea.mem.is_modified %v254[%v353] : !sea.mem<!sea.ptr<64>, i8> loc("_395"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":88:3))
  %v417 = sea.const 1 : i1 loc("_396"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":88:3))
  %v418 = sea.xor %v416, %v417 : i1 loc("_396"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":88:3))
  %v419 = sea.mem.is_modified %v254[%v353] : !sea.mem<!sea.ptr<64>, i8> loc("_397"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":88:3))
  sea.cond_br %v419, ^bb261, ^bb260 loc("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":88:3)
^bb260:
  %v420 = sea.load %v106[%v104] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_399"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":89:3))
  %v421 = sea.mem.is_modified %v19[%v420] : !sea.mem<!sea.ptr<64>, i8> loc("_400"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":89:3))
  %v422 = sea.const 1 : i1 loc("_401"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":89:3))
  %v423 = sea.xor %v421, %v422 : i1 loc("_401"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":89:3))
  %v424 = sea.mem.is_modified %v19[%v420] : !sea.mem<!sea.ptr<64>, i8> loc("_402"("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":89:3))
  sea.assume %v424 loc("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":89:3)
  sea.br ^bb261 loc("seahorn/jobs2/byte_buf_cat2/aws_byte_buf_cat_harness2.c":89:3)
^bb261:
  sea.br ^bb262
^bb262:
  %v425 = sea.const 0 : i1
  sea.assert %v425
  sea.halt
}
