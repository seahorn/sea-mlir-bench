// Exported from SeaHorn (byte_buf_cat.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm68")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm69")
  %v2 = sea.mem.nondet "region.32" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm70")
  %v3 = sea.mem.nondet "region.64" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm71")
  %v4 = sea.mem.nondet "region.96" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm72")
  %v5 = sea.mem.nondet "region.128" [5] : !sea.mem<!sea.ptr<64>, i8> loc("sm73")
  %v6 = sea.mem.nondet "region.160" [6] : !sea.mem<!sea.ptr<64>, i8> loc("sm74")
  %v7 = sea.mem.nondet "region.192" [7] : !sea.mem<!sea.ptr<64>, i8> loc("sm75")
  %v8 = sea.mem.nondet "region.201" [8] : !sea.mem<!sea.ptr<64>, i8> loc("sm76")
  %v9 = sea.mem.nondet "region.233" [9] : !sea.mem<!sea.ptr<64>, i8> loc("sm77")
  %v10 = sea.mem.nondet "region.242" [10] : !sea.mem<!sea.ptr<64>, i8> loc("sm78")
  %v11 = sea.mem.nondet "region.274" [11] : !sea.mem<!sea.ptr<64>, i8> loc("sm79")
  %v12 = sea.mem.nondet "region.283" [12] : !sea.mem<!sea.ptr<64>, i8> loc("sm80")
  %v13 = sea.mem.nondet "region.292" [13] : !sea.mem<!sea.ptr<64>, i8> loc("sm81")
  %v14 = sea.const 16 : i64 loc("_0")
  %v15 = sea.alloca %v14 align 8 [14] : i64 -> !sea.ptr<64> loc("_0")
  %v16 = sea.const 32 : i64 loc("_1")
  %v17 = sea.alloca %v16 align 8 [15] : i64 -> !sea.ptr<64> loc("_1")
  %v18 = sea.const 32 : i64 loc("_2")
  %v19 = sea.alloca %v18 align 8 [16] : i64 -> !sea.ptr<64> loc("_2")
  %v20 = sea.const 32 : i64 loc("_3")
  %v21 = sea.alloca %v20 align 8 [17] : i64 -> !sea.ptr<64> loc("_3")
  %v22 = sea.const 32 : i64 loc("_4")
  %v23 = sea.alloca %v22 align 8 [18] : i64 -> !sea.ptr<64> loc("_4")
  %v24 = sea.const 32 : i64 loc("_5")
  %v25 = sea.alloca %v24 align 8 [19] : i64 -> !sea.ptr<64> loc("_5")
  %v26 = sea.const 16 : i64 loc("_6")
  %v27 = sea.alloca %v26 align 8 [20] : i64 -> !sea.ptr<64> loc("_6")
  %v28 = sea.const 32 : i64 loc("_7")
  %v29 = sea.alloca %v28 align 8 [21] : i64 -> !sea.ptr<64> loc("_7")
  %v30 = sea.const 16 : i64 loc("_8")
  %v31 = sea.alloca %v30 align 8 [22] : i64 -> !sea.ptr<64> loc("_8")
  %v32 = sea.const 32 : i64 loc("_9")
  %v33 = sea.alloca %v32 align 8 [23] : i64 -> !sea.ptr<64> loc("_9")
  %v34 = sea.const 16 : i64 loc("_10")
  %v35 = sea.alloca %v34 align 8 [24] : i64 -> !sea.ptr<64> loc("_10")
  %v36 = sea.const 16 : i64 loc("_11")
  %v37 = sea.alloca %v36 align 8 [25] : i64 -> !sea.ptr<64> loc("_11")
  %v38 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v39 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v40 = sea.store %v0[%v38], %v39 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v41 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_12")
  %v42 = sea.ptr.index %v41 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_12")
  %v43 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v44 = sea.store %v40[%v42], %v43 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v45 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_13")
  %v46 = sea.ptr.index %v45 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_13")
  %v47 = sea.const 0 : i8
  %v48 = sea.const 24 : i64
  %v49 = sea.memset %v44[%v46], %v47, %v48 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v50 = sea.nondet "nd_size_t" [26] : i64 loc("_14"("seahorn/lib/byte_buf_helper.c":19:18))
  %v51 = sea.nondet "nd_size_t" [27] : i64 loc("_15"("seahorn/lib/byte_buf_helper.c":20:18))
  %v52 = sea.icmp ule, %v50, %v51 : i64 loc("_16"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v52 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v53 = sea.const 11 : i64 loc("_17"("seahorn/lib/byte_buf_helper.c":22:16))
  %v54 = sea.icmp ult, %v51, %v53 : i64 loc("_17"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v54 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb1
^bb1:
  %v55 = sea.store %v2[%v17], %v50 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v56 = sea.ptr.index %v17 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_19"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb2
^bb2:
  %v57 = sea.store %v55[%v56], %v51 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v58 = sea.const 0 : i64 loc("_21"("seahorn/lib/proof_allocators.c":21:15))
  %v59 = sea.icmp eq, %v51, %v58 : i64 loc("_21"("seahorn/lib/proof_allocators.c":21:15))
  %v60 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v59, ^bb6(%v13, %v60 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/proof_allocators.c":21:10)
^bb3:
  %v61 = sea.nondet "nd_malloc_is_fail" [28] : i1 loc("_23"("seahorn/lib/sea_allocators.c":11:10))
  %v62 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v61, ^bb5(%v13, %v62 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/sea_allocators.c":11:10)
^bb4:
  %v63 = sea.const 1 : i64 loc("malloc.i")
  %v64 = sea.mul %v51, %v63 : i64 loc("malloc.i")
  %v65 = sea.alloca %v64 align 16 [29] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb5(%v13, %v65 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb5(%v66 : !sea.mem<!sea.ptr<64>, i8>, %v67 : !sea.ptr<64>):
  %v68 = sea.memhavoc %v66[%v67], %v51 [30] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb6(%v68, %v67 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb6(%v69 : !sea.mem<!sea.ptr<64>, i8>, %v70 : !sea.ptr<64>):
  %v71 = sea.ptr.index %v17 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_27"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb7
^bb7:
  %v72 = sea.store %v57[%v71], %v70 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v73 = sea.ptr.index %v17 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_29"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb8
^bb8:
  %v74 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v75 = sea.store %v72[%v73], %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v76 = sea.nondet "nd_size_t" [31] : i64 loc("_30"("seahorn/lib/byte_buf_helper.c":19:18))
  %v77 = sea.nondet "nd_size_t" [32] : i64 loc("_31"("seahorn/lib/byte_buf_helper.c":20:18))
  %v78 = sea.icmp ule, %v76, %v77 : i64 loc("_32"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v78 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v79 = sea.const 11 : i64 loc("_33"("seahorn/lib/byte_buf_helper.c":22:16))
  %v80 = sea.icmp ult, %v77, %v79 : i64 loc("_33"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v80 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb9
^bb9:
  %v81 = sea.store %v3[%v19], %v76 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v82 = sea.ptr.index %v19 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_35"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb10
^bb10:
  %v83 = sea.store %v81[%v82], %v77 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v84 = sea.const 0 : i64 loc("_37"("seahorn/lib/proof_allocators.c":21:15))
  %v85 = sea.icmp eq, %v77, %v84 : i64 loc("_37"("seahorn/lib/proof_allocators.c":21:15))
  %v86 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v85, ^bb14(%v69, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb11 loc("seahorn/lib/proof_allocators.c":21:10)
^bb11:
  %v87 = sea.nondet "nd_malloc_is_fail" [33] : i1 loc("_39"("seahorn/lib/sea_allocators.c":11:10))
  %v88 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v87, ^bb13(%v69, %v88 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb12 loc("seahorn/lib/sea_allocators.c":11:10)
^bb12:
  %v89 = sea.const 1 : i64 loc("malloc136.i")
  %v90 = sea.mul %v77, %v89 : i64 loc("malloc136.i")
  %v91 = sea.alloca %v90 align 16 [34] : i64 -> !sea.ptr<64> loc("malloc136.i")
  sea.br ^bb13(%v69, %v91 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb13(%v92 : !sea.mem<!sea.ptr<64>, i8>, %v93 : !sea.ptr<64>):
  %v94 = sea.memhavoc %v92[%v93], %v77 [35] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb14(%v94, %v93 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb14(%v95 : !sea.mem<!sea.ptr<64>, i8>, %v96 : !sea.ptr<64>):
  %v97 = sea.ptr.index %v19 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_42"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb15
^bb15:
  %v98 = sea.store %v83[%v97], %v96 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v99 = sea.ptr.index %v19 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_44"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb16
^bb16:
  %v100 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v101 = sea.store %v98[%v99], %v100 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v102 = sea.nondet "nd_size_t" [36] : i64 loc("_45"("seahorn/lib/byte_buf_helper.c":19:18))
  %v103 = sea.nondet "nd_size_t" [37] : i64 loc("_46"("seahorn/lib/byte_buf_helper.c":20:18))
  %v104 = sea.icmp ule, %v102, %v103 : i64 loc("_47"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v104 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v105 = sea.const 11 : i64 loc("_48"("seahorn/lib/byte_buf_helper.c":22:16))
  %v106 = sea.icmp ult, %v103, %v105 : i64 loc("_48"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v106 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb17
^bb17:
  %v107 = sea.store %v4[%v21], %v102 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v108 = sea.ptr.index %v21 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_50"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb18
^bb18:
  %v109 = sea.store %v107[%v108], %v103 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v110 = sea.const 0 : i64 loc("_52"("seahorn/lib/proof_allocators.c":21:15))
  %v111 = sea.icmp eq, %v103, %v110 : i64 loc("_52"("seahorn/lib/proof_allocators.c":21:15))
  %v112 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v111, ^bb22(%v95, %v112 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb19 loc("seahorn/lib/proof_allocators.c":21:10)
^bb19:
  %v113 = sea.nondet "nd_malloc_is_fail" [38] : i1 loc("_54"("seahorn/lib/sea_allocators.c":11:10))
  %v114 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v113, ^bb21(%v95, %v114 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb20 loc("seahorn/lib/sea_allocators.c":11:10)
^bb20:
  %v115 = sea.const 1 : i64 loc("malloc137.i")
  %v116 = sea.mul %v103, %v115 : i64 loc("malloc137.i")
  %v117 = sea.alloca %v116 align 16 [39] : i64 -> !sea.ptr<64> loc("malloc137.i")
  sea.br ^bb21(%v95, %v117 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb21(%v118 : !sea.mem<!sea.ptr<64>, i8>, %v119 : !sea.ptr<64>):
  %v120 = sea.memhavoc %v118[%v119], %v103 [40] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb22(%v120, %v119 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb22(%v121 : !sea.mem<!sea.ptr<64>, i8>, %v122 : !sea.ptr<64>):
  %v123 = sea.ptr.index %v21 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_57"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb23
^bb23:
  %v124 = sea.store %v109[%v123], %v122 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v125 = sea.ptr.index %v21 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_59"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb24
^bb24:
  %v126 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v127 = sea.store %v124[%v125], %v126 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v128 = sea.nondet "nd_size_t" [41] : i64 loc("_60"("seahorn/lib/byte_buf_helper.c":19:18))
  %v129 = sea.nondet "nd_size_t" [42] : i64 loc("_61"("seahorn/lib/byte_buf_helper.c":20:18))
  %v130 = sea.icmp ule, %v128, %v129 : i64 loc("_62"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v130 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v131 = sea.const 11 : i64 loc("_63"("seahorn/lib/byte_buf_helper.c":22:16))
  %v132 = sea.icmp ult, %v129, %v131 : i64 loc("_63"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v132 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb25
^bb25:
  %v133 = sea.store %v5[%v23], %v128 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v134 = sea.ptr.index %v23 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_65"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb26
^bb26:
  %v135 = sea.store %v133[%v134], %v129 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v136 = sea.const 0 : i64 loc("_67"("seahorn/lib/proof_allocators.c":21:15))
  %v137 = sea.icmp eq, %v129, %v136 : i64 loc("_67"("seahorn/lib/proof_allocators.c":21:15))
  %v138 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v137, ^bb30(%v121, %v138 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb27 loc("seahorn/lib/proof_allocators.c":21:10)
^bb27:
  %v139 = sea.nondet "nd_malloc_is_fail" [43] : i1 loc("_69"("seahorn/lib/sea_allocators.c":11:10))
  %v140 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v139, ^bb29(%v121, %v140 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb28 loc("seahorn/lib/sea_allocators.c":11:10)
^bb28:
  %v141 = sea.const 1 : i64 loc("malloc138.i")
  %v142 = sea.mul %v129, %v141 : i64 loc("malloc138.i")
  %v143 = sea.alloca %v142 align 16 [44] : i64 -> !sea.ptr<64> loc("malloc138.i")
  sea.br ^bb29(%v121, %v143 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb29(%v144 : !sea.mem<!sea.ptr<64>, i8>, %v145 : !sea.ptr<64>):
  %v146 = sea.memhavoc %v144[%v145], %v129 [45] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb30(%v146, %v145 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb30(%v147 : !sea.mem<!sea.ptr<64>, i8>, %v148 : !sea.ptr<64>):
  %v149 = sea.ptr.index %v23 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_73"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb31
^bb31:
  %v150 = sea.store %v135[%v149], %v148 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v151 = sea.ptr.index %v23 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_75"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb32
^bb32:
  %v152 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v153 = sea.store %v150[%v151], %v152 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  sea.br ^bb33
^bb33:
  sea.cond_br %v59, ^bb41, ^bb34 loc("aws-c-common/source/byte_buf.c":60:33)
^bb34:
  sea.br ^bb35
^bb35:
  sea.br ^bb36
^bb36:
  sea.br ^bb37
^bb37:
  %v154 = sea.icmp ugt, %v50, %v51 : i64 loc(".not2.i94.i"("aws-c-common/source/byte_buf.c":61:44))
  %v155 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v154, ^bb46(%v155 : i1), ^bb38 loc("aws-c-common/source/byte_buf.c":61:61)
^bb38:
  sea.br ^bb39
^bb39:
  sea.br ^bb40
^bb40:
  %v156 = sea.ptr.null : !sea.ptr<64> loc("_89"("aws-c-common/source/byte_buf.c":61:64))
  %v157 = sea.ptr.cmp ne, %v70, %v156 : !sea.ptr<64> loc("_89"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb46(%v157 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb41:
  sea.br ^bb42
^bb42:
  %v158 = sea.const 0 : i64 loc("_79"("aws-c-common/source/byte_buf.c":60:45))
  %v159 = sea.icmp eq, %v50, %v158 : i64 loc("_79"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v159, ^bb43, ^bb45 loc("aws-c-common/source/byte_buf.c":60:50)
^bb43:
  sea.br ^bb44
^bb44:
  %v160 = sea.ptr.null : !sea.ptr<64> loc("_82"("aws-c-common/source/byte_buf.c":60:65))
  %v161 = sea.ptr.cmp eq, %v70, %v160 : !sea.ptr<64> loc("_82"("aws-c-common/source/byte_buf.c":60:65))
  %v162 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v161, ^bb46(%v162 : i1), ^bb45 loc("aws-c-common/source/byte_buf.c":60:74)
^bb45:
  %v163 = sea.const 0 : i1
  sea.br ^bb46(%v163 : i1)
^bb46(%v164 : i1):
  sea.assume %v164 loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":56:3)
  sea.br ^bb47
^bb47:
  sea.cond_br %v85, ^bb55, ^bb48 loc("aws-c-common/source/byte_buf.c":60:33)
^bb48:
  sea.br ^bb49
^bb49:
  sea.br ^bb50
^bb50:
  sea.br ^bb51
^bb51:
  %v165 = sea.icmp ugt, %v76, %v77 : i64 loc(".not2.i90.i"("aws-c-common/source/byte_buf.c":61:44))
  %v166 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v165, ^bb60(%v166 : i1), ^bb52 loc("aws-c-common/source/byte_buf.c":61:61)
^bb52:
  sea.br ^bb53
^bb53:
  sea.br ^bb54
^bb54:
  %v167 = sea.ptr.null : !sea.ptr<64> loc("_104"("aws-c-common/source/byte_buf.c":61:64))
  %v168 = sea.ptr.cmp ne, %v96, %v167 : !sea.ptr<64> loc("_104"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb60(%v168 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb55:
  sea.br ^bb56
^bb56:
  %v169 = sea.const 0 : i64 loc("_94"("aws-c-common/source/byte_buf.c":60:45))
  %v170 = sea.icmp eq, %v76, %v169 : i64 loc("_94"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v170, ^bb57, ^bb59 loc("aws-c-common/source/byte_buf.c":60:50)
^bb57:
  sea.br ^bb58
^bb58:
  %v171 = sea.ptr.null : !sea.ptr<64> loc("_97"("aws-c-common/source/byte_buf.c":60:65))
  %v172 = sea.ptr.cmp eq, %v96, %v171 : !sea.ptr<64> loc("_97"("aws-c-common/source/byte_buf.c":60:65))
  %v173 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v172, ^bb60(%v173 : i1), ^bb59 loc("aws-c-common/source/byte_buf.c":60:74)
^bb59:
  %v174 = sea.const 0 : i1
  sea.br ^bb60(%v174 : i1)
^bb60(%v175 : i1):
  sea.assume %v175 loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":57:3)
  sea.br ^bb61
^bb61:
  sea.cond_br %v111, ^bb69, ^bb62 loc("aws-c-common/source/byte_buf.c":60:33)
^bb62:
  sea.br ^bb63
^bb63:
  sea.br ^bb64
^bb64:
  sea.br ^bb65
^bb65:
  %v176 = sea.icmp ugt, %v102, %v103 : i64 loc(".not2.i86.i"("aws-c-common/source/byte_buf.c":61:44))
  %v177 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v176, ^bb74(%v177 : i1), ^bb66 loc("aws-c-common/source/byte_buf.c":61:61)
^bb66:
  sea.br ^bb67
^bb67:
  sea.br ^bb68
^bb68:
  %v178 = sea.ptr.null : !sea.ptr<64> loc("_119"("aws-c-common/source/byte_buf.c":61:64))
  %v179 = sea.ptr.cmp ne, %v122, %v178 : !sea.ptr<64> loc("_119"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb74(%v179 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb69:
  sea.br ^bb70
^bb70:
  %v180 = sea.const 0 : i64 loc("_109"("aws-c-common/source/byte_buf.c":60:45))
  %v181 = sea.icmp eq, %v102, %v180 : i64 loc("_109"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v181, ^bb71, ^bb73 loc("aws-c-common/source/byte_buf.c":60:50)
^bb71:
  sea.br ^bb72
^bb72:
  %v182 = sea.ptr.null : !sea.ptr<64> loc("_112"("aws-c-common/source/byte_buf.c":60:65))
  %v183 = sea.ptr.cmp eq, %v122, %v182 : !sea.ptr<64> loc("_112"("aws-c-common/source/byte_buf.c":60:65))
  %v184 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v183, ^bb74(%v184 : i1), ^bb73 loc("aws-c-common/source/byte_buf.c":60:74)
^bb73:
  %v185 = sea.const 0 : i1
  sea.br ^bb74(%v185 : i1)
^bb74(%v186 : i1):
  sea.assume %v186 loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":58:3)
  sea.br ^bb75
^bb75:
  sea.cond_br %v137, ^bb83, ^bb76 loc("aws-c-common/source/byte_buf.c":60:33)
^bb76:
  sea.br ^bb77
^bb77:
  sea.br ^bb78
^bb78:
  sea.br ^bb79
^bb79:
  %v187 = sea.icmp ugt, %v128, %v129 : i64 loc(".not2.i82.i"("aws-c-common/source/byte_buf.c":61:44))
  %v188 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v187, ^bb88(%v188 : i1), ^bb80 loc("aws-c-common/source/byte_buf.c":61:61)
^bb80:
  sea.br ^bb81
^bb81:
  sea.br ^bb82
^bb82:
  %v189 = sea.ptr.null : !sea.ptr<64> loc("_134"("aws-c-common/source/byte_buf.c":61:64))
  %v190 = sea.ptr.cmp ne, %v148, %v189 : !sea.ptr<64> loc("_134"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb88(%v190 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb83:
  sea.br ^bb84
^bb84:
  %v191 = sea.const 0 : i64 loc("_124"("aws-c-common/source/byte_buf.c":60:45))
  %v192 = sea.icmp eq, %v128, %v191 : i64 loc("_124"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v192, ^bb85, ^bb87 loc("aws-c-common/source/byte_buf.c":60:50)
^bb85:
  sea.br ^bb86
^bb86:
  %v193 = sea.ptr.null : !sea.ptr<64> loc("_127"("aws-c-common/source/byte_buf.c":60:65))
  %v194 = sea.ptr.cmp eq, %v148, %v193 : !sea.ptr<64> loc("_127"("aws-c-common/source/byte_buf.c":60:65))
  %v195 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v194, ^bb88(%v195 : i1), ^bb87 loc("aws-c-common/source/byte_buf.c":60:74)
^bb87:
  %v196 = sea.const 0 : i1
  sea.br ^bb88(%v196 : i1)
^bb88(%v197 : i1):
  sea.assume %v197 loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":59:3)
  %v198 = sea.store %v6[%v25], %v50 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":62:37)
  %v199 = sea.ptr.index %v25 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":62:37))
  %v200 = sea.store %v198[%v199], %v70 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":62:37)
  %v201 = sea.ptr.index %v25 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy5.i"("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":62:37))
  %v202 = sea.store %v200[%v201], %v51 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":62:37)
  %v203 = sea.ptr.index %v25 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i"("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":62:37))
  %v204 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":62:37)
  %v205 = sea.store %v202[%v203], %v204 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":62:37)
  %v206 = sea.nondet "nd_size_t" [46] : i64 loc("_136"("seahorn/lib/utils.c":46:20))
  sea.br ^bb89
^bb89:
  %v207 = sea.store %v7[%v27], %v206 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v208 = sea.const 0 : i64 loc("_138"("seahorn/lib/utils.c":47:12))
  %v209 = sea.icmp ne, %v50, %v208 : i64 loc("_138"("seahorn/lib/utils.c":47:12))
  %v210 = sea.ptr.null : !sea.ptr<64> loc("_139")
  %v211 = sea.ptr.cmp ne, %v70, %v210 : !sea.ptr<64> loc("_139")
  %v212 = sea.and %v209, %v211 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v212, ^bb92, ^bb90 loc("seahorn/lib/utils.c":47:16)
^bb90:
  %v213 = sea.nondet "nd_uint8_t" [47] : i8 loc("_151"("seahorn/lib/utils.c":51:21))
  %v214 = sea.ptr.index %v27 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_152"("seahorn/lib/utils.c":51:14))
  sea.br ^bb91
^bb91:
  %v215 = sea.store %v207[%v214], %v213 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb97(%v215 : !sea.mem<!sea.ptr<64>, i8>)
^bb92:
  sea.br ^bb93
^bb93:
  %v216 = sea.icmp ult, %v206, %v50 : i64 loc("_142"("seahorn/lib/utils.c":48:27))
  sea.assume %v216 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb94
^bb94:
  %v217 = sea.ptr.index %v70 [%v206] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_144"("seahorn/lib/utils.c":49:21))
  %v218 = sea.const 1 : i64 loc("_145"("seahorn/lib/utils.c":49:21))
  %v219 = sea.ptr.dereferenceable %v217, %v218 : !sea.ptr<64>, i64 loc("_145"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v219, ^bb95, ^bb353
^bb95:
  %v220 = sea.load %v147[%v217] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_147"("seahorn/lib/utils.c":49:21))
  %v221 = sea.ptr.index %v27 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_148"("seahorn/lib/utils.c":49:14))
  sea.br ^bb96
^bb96:
  %v222 = sea.store %v207[%v221], %v220 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb97(%v222 : !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/lib/utils.c":50:3)
^bb97(%v223 : !sea.mem<!sea.ptr<64>, i8>):
  %v224 = sea.store %v8[%v29], %v76 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":65:37)
  %v225 = sea.ptr.index %v29 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy14.i"("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":65:37))
  %v226 = sea.store %v224[%v225], %v96 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":65:37)
  %v227 = sea.ptr.index %v29 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy17.i"("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":65:37))
  %v228 = sea.store %v226[%v227], %v77 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":65:37)
  %v229 = sea.ptr.index %v29 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy20.i"("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":65:37))
  %v230 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":65:37)
  %v231 = sea.store %v228[%v229], %v230 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":65:37)
  %v232 = sea.nondet "nd_size_t" [48] : i64 loc("_154"("seahorn/lib/utils.c":46:20))
  sea.br ^bb98
^bb98:
  %v233 = sea.store %v9[%v31], %v232 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v234 = sea.const 0 : i64 loc("_156"("seahorn/lib/utils.c":47:12))
  %v235 = sea.icmp ne, %v76, %v234 : i64 loc("_156"("seahorn/lib/utils.c":47:12))
  %v236 = sea.ptr.null : !sea.ptr<64> loc("_157")
  %v237 = sea.ptr.cmp ne, %v96, %v236 : !sea.ptr<64> loc("_157")
  %v238 = sea.and %v235, %v237 : i1 loc("or.cond.i113.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v238, ^bb101, ^bb99 loc("seahorn/lib/utils.c":47:16)
^bb99:
  %v239 = sea.nondet "nd_uint8_t" [49] : i8 loc("_169"("seahorn/lib/utils.c":51:21))
  %v240 = sea.ptr.index %v31 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_170"("seahorn/lib/utils.c":51:14))
  sea.br ^bb100
^bb100:
  %v241 = sea.store %v233[%v240], %v239 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb106(%v241 : !sea.mem<!sea.ptr<64>, i8>)
^bb101:
  sea.br ^bb102
^bb102:
  %v242 = sea.icmp ult, %v232, %v76 : i64 loc("_160"("seahorn/lib/utils.c":48:27))
  sea.assume %v242 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb103
^bb103:
  %v243 = sea.ptr.index %v96 [%v232] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_162"("seahorn/lib/utils.c":49:21))
  %v244 = sea.const 1 : i64 loc("_163"("seahorn/lib/utils.c":49:21))
  %v245 = sea.ptr.dereferenceable %v243, %v244 : !sea.ptr<64>, i64 loc("_163"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v245, ^bb104, ^bb353
^bb104:
  %v246 = sea.load %v147[%v243] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_165"("seahorn/lib/utils.c":49:21))
  %v247 = sea.ptr.index %v31 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_166"("seahorn/lib/utils.c":49:14))
  sea.br ^bb105
^bb105:
  %v248 = sea.store %v233[%v247], %v246 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb106(%v248 : !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/lib/utils.c":50:3)
^bb106(%v249 : !sea.mem<!sea.ptr<64>, i8>):
  %v250 = sea.store %v10[%v33], %v102 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":68:37)
  %v251 = sea.ptr.index %v33 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy26.i"("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":68:37))
  %v252 = sea.store %v250[%v251], %v122 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":68:37)
  %v253 = sea.ptr.index %v33 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy29.i"("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":68:37))
  %v254 = sea.store %v252[%v253], %v103 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":68:37)
  %v255 = sea.ptr.index %v33 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy32.i"("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":68:37))
  %v256 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":68:37)
  %v257 = sea.store %v254[%v255], %v256 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":68:37)
  %v258 = sea.nondet "nd_size_t" [50] : i64 loc("_172"("seahorn/lib/utils.c":46:20))
  sea.br ^bb107
^bb107:
  %v259 = sea.store %v11[%v35], %v258 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v260 = sea.const 0 : i64 loc("_174"("seahorn/lib/utils.c":47:12))
  %v261 = sea.icmp ne, %v102, %v260 : i64 loc("_174"("seahorn/lib/utils.c":47:12))
  %v262 = sea.ptr.null : !sea.ptr<64> loc("_175")
  %v263 = sea.ptr.cmp ne, %v122, %v262 : !sea.ptr<64> loc("_175")
  %v264 = sea.and %v261, %v263 : i1 loc("or.cond.i116.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v264, ^bb110, ^bb108 loc("seahorn/lib/utils.c":47:16)
^bb108:
  %v265 = sea.nondet "nd_uint8_t" [51] : i8 loc("_187"("seahorn/lib/utils.c":51:21))
  %v266 = sea.ptr.index %v35 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_188"("seahorn/lib/utils.c":51:14))
  sea.br ^bb109
^bb109:
  %v267 = sea.store %v259[%v266], %v265 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb115(%v267 : !sea.mem<!sea.ptr<64>, i8>)
^bb110:
  sea.br ^bb111
^bb111:
  %v268 = sea.icmp ult, %v258, %v102 : i64 loc("_178"("seahorn/lib/utils.c":48:27))
  sea.assume %v268 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb112
^bb112:
  %v269 = sea.ptr.index %v122 [%v258] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_180"("seahorn/lib/utils.c":49:21))
  %v270 = sea.const 1 : i64 loc("_181"("seahorn/lib/utils.c":49:21))
  %v271 = sea.ptr.dereferenceable %v269, %v270 : !sea.ptr<64>, i64 loc("_181"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v271, ^bb113, ^bb353
^bb113:
  %v272 = sea.load %v147[%v269] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_183"("seahorn/lib/utils.c":49:21))
  %v273 = sea.ptr.index %v35 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_184"("seahorn/lib/utils.c":49:14))
  sea.br ^bb114
^bb114:
  %v274 = sea.store %v259[%v273], %v272 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb115(%v274 : !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/lib/utils.c":50:3)
^bb115(%v275 : !sea.mem<!sea.ptr<64>, i8>):
  %v276 = sea.nondet "nd_size_t" [52] : i64 loc("_190"("seahorn/lib/utils.c":46:20))
  sea.br ^bb116
^bb116:
  %v277 = sea.store %v12[%v37], %v276 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v278 = sea.const 0 : i64 loc("_192"("seahorn/lib/utils.c":47:12))
  %v279 = sea.icmp ne, %v128, %v278 : i64 loc("_192"("seahorn/lib/utils.c":47:12))
  %v280 = sea.ptr.null : !sea.ptr<64> loc("_193")
  %v281 = sea.ptr.cmp ne, %v148, %v280 : !sea.ptr<64> loc("_193")
  %v282 = sea.and %v279, %v281 : i1 loc("or.cond.i119.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v282, ^bb119, ^bb117 loc("seahorn/lib/utils.c":47:16)
^bb117:
  %v283 = sea.nondet "nd_uint8_t" [53] : i8 loc("_205"("seahorn/lib/utils.c":51:21))
  %v284 = sea.ptr.index %v37 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_206"("seahorn/lib/utils.c":51:14))
  sea.br ^bb118
^bb118:
  %v285 = sea.store %v277[%v284], %v283 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb124
^bb119:
  sea.br ^bb120
^bb120:
  %v286 = sea.icmp ult, %v276, %v128 : i64 loc("_196"("seahorn/lib/utils.c":48:27))
  sea.assume %v286 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb121
^bb121:
  %v287 = sea.ptr.index %v148 [%v276] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_198"("seahorn/lib/utils.c":49:21))
  %v288 = sea.const 1 : i64 loc("_199"("seahorn/lib/utils.c":49:21))
  %v289 = sea.ptr.dereferenceable %v287, %v288 : !sea.ptr<64>, i64 loc("_199"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v289, ^bb122, ^bb353
^bb122:
  %v290 = sea.load %v147[%v287] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_201"("seahorn/lib/utils.c":49:21))
  %v291 = sea.ptr.index %v37 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_202"("seahorn/lib/utils.c":49:14))
  sea.br ^bb123
^bb123:
  %v292 = sea.store %v277[%v291], %v290 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb124 loc("seahorn/lib/utils.c":50:3)
^bb124:
  sea.br ^bb125
^bb125:
  sea.br ^bb126
^bb126:
  %v293 = sea.store %v1[%v15], %v50 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":21:35)
  %v294 = sea.ptr.index %v15 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_209"("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":21:35))
  %v295 = sea.store %v293[%v294], %v70 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":21:35)
  sea.br ^bb127
^bb127:
  sea.br ^bb128
^bb128:
  sea.br ^bb129
^bb129:
  %v296 = sea.sub %v129, %v128 : i64 loc("_213"("aws-c-common/source/byte_buf.c":601:22))
  %v297 = sea.icmp ult, %v296, %v50 : i64 loc(".not"("aws-c-common/source/byte_buf.c":601:32))
  sea.cond_br %v297, ^bb181, ^bb130 loc("aws-c-common/source/byte_buf.c":601:9)
^bb130:
  sea.br ^bb131
^bb131:
  %v298 = sea.const 0 : i64 loc(".not.i10.i.i"("aws-c-common/source/byte_buf.c":607:19))
  %v299 = sea.icmp eq, %v50, %v298 : i64 loc(".not.i10.i.i"("aws-c-common/source/byte_buf.c":607:19))
  sea.cond_br %v299, ^bb142(%v147, %v153, %v128 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64), ^bb132 loc("aws-c-common/source/byte_buf.c":607:9)
^bb132:
  sea.br ^bb133
^bb133:
  sea.br ^bb134
^bb134:
  %v300 = sea.ptr.index %v148 [%v128] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_219"("aws-c-common/source/byte_buf.c":611:27))
  sea.br ^bb135
^bb135:
  sea.br ^bb136
^bb136:
  %v301 = sea.ptr.dereferenceable %v300, %v50 : !sea.ptr<64>, i64 loc("_222"("seahorn/lib/bcmp.c":161:3))
  %v302 = sea.ptr.dereferenceable %v300, %v50 : !sea.ptr<64>, i64 loc("_223"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v302, ^bb137, ^bb353 loc("seahorn/lib/bcmp.c":161:3)
^bb137:
  %v303 = sea.ptr.dereferenceable %v70, %v50 : !sea.ptr<64>, i64 loc("_225"("seahorn/lib/bcmp.c":162:3))
  %v304 = sea.ptr.dereferenceable %v70, %v50 : !sea.ptr<64>, i64 loc("_226"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v304, ^bb138, ^bb353 loc("seahorn/lib/bcmp.c":162:3)
^bb138:
  %v305 = sea.memmove %v147[%v300], %v147[%v70], %v50 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb139
^bb139:
  sea.br ^bb140
^bb140:
  sea.br ^bb141
^bb141:
  %v306 = sea.add %v128, %v50 : i64 loc("_230"("aws-c-common/source/byte_buf.c":612:17))
  %v307 = sea.store %v153[%v23], %v306 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":612:17)
  sea.br ^bb142(%v305, %v307, %v306 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/source/byte_buf.c":613:5)
^bb142(%v308 : !sea.mem<!sea.ptr<64>, i8>, %v309 : !sea.mem<!sea.ptr<64>, i8>, %v310 : i64):
  sea.br ^bb143
^bb143:
  %v311 = sea.load %v98[%v97] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_234"("aws-c-common/source/byte_buf.c":985:20))
  sea.br ^bb144
^bb144:
  %v312 = sea.load %v81[%v19] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_235"("aws-c-common/source/byte_buf.c":986:20))
  sea.br ^bb145
^bb145:
  sea.br ^bb146
^bb146:
  sea.br ^bb147
^bb147:
  %v313 = sea.sub %v129, %v310 : i64 loc("_239"("aws-c-common/source/byte_buf.c":601:22))
  %v314 = sea.icmp ult, %v313, %v312 : i64 loc(".not13"("aws-c-common/source/byte_buf.c":601:32))
  sea.cond_br %v314, ^bb180, ^bb148 loc("aws-c-common/source/byte_buf.c":601:9)
^bb148:
  sea.br ^bb149
^bb149:
  %v315 = sea.const 0 : i64 loc(".not.i6.i.i"("aws-c-common/source/byte_buf.c":607:19))
  %v316 = sea.icmp eq, %v312, %v315 : i64 loc(".not.i6.i.i"("aws-c-common/source/byte_buf.c":607:19))
  sea.cond_br %v316, ^bb160(%v308, %v309, %v310 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64), ^bb150 loc("aws-c-common/source/byte_buf.c":607:9)
^bb150:
  sea.br ^bb151
^bb151:
  sea.br ^bb152
^bb152:
  %v317 = sea.ptr.index %v148 [%v310] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_245"("aws-c-common/source/byte_buf.c":611:27))
  sea.br ^bb153
^bb153:
  sea.br ^bb154
^bb154:
  %v318 = sea.ptr.dereferenceable %v317, %v312 : !sea.ptr<64>, i64 loc("_248"("seahorn/lib/bcmp.c":161:3))
  %v319 = sea.ptr.dereferenceable %v317, %v312 : !sea.ptr<64>, i64 loc("_249"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v319, ^bb155, ^bb353 loc("seahorn/lib/bcmp.c":161:3)
^bb155:
  %v320 = sea.ptr.dereferenceable %v311, %v312 : !sea.ptr<64>, i64 loc("_251"("seahorn/lib/bcmp.c":162:3))
  %v321 = sea.ptr.dereferenceable %v311, %v312 : !sea.ptr<64>, i64 loc("_252"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v321, ^bb156, ^bb353 loc("seahorn/lib/bcmp.c":162:3)
^bb156:
  %v322 = sea.memmove %v308[%v317], %v308[%v311], %v312 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb157
^bb157:
  sea.br ^bb158
^bb158:
  sea.br ^bb159
^bb159:
  %v323 = sea.add %v312, %v310 : i64 loc("_256"("aws-c-common/source/byte_buf.c":612:17))
  %v324 = sea.store %v309[%v23], %v323 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":612:17)
  sea.br ^bb160(%v322, %v324, %v323 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64) loc("aws-c-common/source/byte_buf.c":613:5)
^bb160(%v325 : !sea.mem<!sea.ptr<64>, i8>, %v326 : !sea.mem<!sea.ptr<64>, i8>, %v327 : i64):
  sea.br ^bb161
^bb161:
  %v328 = sea.load %v124[%v123] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_260"("aws-c-common/source/byte_buf.c":985:20))
  sea.br ^bb162
^bb162:
  %v329 = sea.load %v107[%v21] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_261"("aws-c-common/source/byte_buf.c":986:20))
  sea.br ^bb163
^bb163:
  %v330 = sea.load %v326[%v134] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_263"("aws-c-common/source/byte_buf.c":601:13))
  sea.br ^bb164
^bb164:
  sea.br ^bb165
^bb165:
  %v331 = sea.sub %v330, %v327 : i64 loc("_266"("aws-c-common/source/byte_buf.c":601:22))
  %v332 = sea.icmp ult, %v331, %v329 : i64 loc("_267"("aws-c-common/source/byte_buf.c":601:32))
  sea.cond_br %v332, ^bb179, ^bb166 loc("aws-c-common/source/byte_buf.c":601:9)
^bb166:
  sea.br ^bb167
^bb167:
  %v333 = sea.const 0 : i64 loc(".not.i.i.i"("aws-c-common/source/byte_buf.c":607:19))
  %v334 = sea.icmp eq, %v329, %v333 : i64 loc(".not.i.i.i"("aws-c-common/source/byte_buf.c":607:19))
  sea.cond_br %v334, ^bb178(%v325, %v326 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>), ^bb168 loc("aws-c-common/source/byte_buf.c":607:9)
^bb168:
  sea.br ^bb169
^bb169:
  %v335 = sea.load %v326[%v149] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_272"("aws-c-common/source/byte_buf.c":611:20))
  sea.br ^bb170
^bb170:
  %v336 = sea.ptr.index %v335 [%v327] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_274"("aws-c-common/source/byte_buf.c":611:27))
  sea.br ^bb171
^bb171:
  sea.br ^bb172
^bb172:
  %v337 = sea.ptr.dereferenceable %v336, %v329 : !sea.ptr<64>, i64 loc("_277"("seahorn/lib/bcmp.c":161:3))
  %v338 = sea.ptr.dereferenceable %v336, %v329 : !sea.ptr<64>, i64 loc("_278"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v338, ^bb173, ^bb353 loc("seahorn/lib/bcmp.c":161:3)
^bb173:
  %v339 = sea.ptr.dereferenceable %v328, %v329 : !sea.ptr<64>, i64 loc("_280"("seahorn/lib/bcmp.c":162:3))
  %v340 = sea.ptr.dereferenceable %v328, %v329 : !sea.ptr<64>, i64 loc("_281"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v340, ^bb174, ^bb353 loc("seahorn/lib/bcmp.c":162:3)
^bb174:
  %v341 = sea.memmove %v325[%v336], %v325[%v328], %v329 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb175
^bb175:
  sea.br ^bb176
^bb176:
  sea.br ^bb177
^bb177:
  %v342 = sea.add %v329, %v327 : i64 loc("_285"("aws-c-common/source/byte_buf.c":612:17))
  %v343 = sea.store %v326[%v23], %v342 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":612:17)
  sea.br ^bb178(%v341, %v343 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":613:5)
^bb178(%v344 : !sea.mem<!sea.ptr<64>, i8>, %v345 : !sea.mem<!sea.ptr<64>, i8>):
  %v346 = sea.load %v55[%v17] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_288"("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":78:5))
  %v347 = sea.load %v81[%v19] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_289"("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":78:5))
  %v348 = sea.add %v346, %v329 : i64 loc("_290"("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":78:5))
  %v349 = sea.add %v348, %v347 : i64 loc("_291"("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":78:5))
  %v350 = sea.icmp uge, %v296, %v349 : i64 loc("_292"("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":78:5))
  %v351 = sea.icmp ult, %v296, %v349 : i64 loc(".not.i"("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":78:5))
  sea.cond_br %v351, ^bb353, ^bb184(%v344, %v345, %v329, %v347, %v346 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64, i64) loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":78:5)
^bb179:
  %v352 = sea.load %v81[%v19] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc(".pre"("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":81:5))
  sea.br ^bb183(%v325, %v326, %v329, %v352 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64)
^bb180:
  %v353 = sea.load %v107[%v21] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc(".pre104.pre"("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":81:5))
  sea.br ^bb182(%v308, %v309, %v353, %v312 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64)
^bb181:
  sea.br ^bb182(%v147, %v153, %v102, %v76 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64)
^bb182(%v354 : !sea.mem<!sea.ptr<64>, i8>, %v355 : !sea.mem<!sea.ptr<64>, i8>, %v356 : i64, %v357 : i64):
  sea.br ^bb183(%v354, %v355, %v356, %v357 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64) loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":76:7)
^bb183(%v358 : !sea.mem<!sea.ptr<64>, i8>, %v359 : !sea.mem<!sea.ptr<64>, i8>, %v360 : i64, %v361 : i64):
  %v362 = sea.load %v55[%v17] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_296"("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":81:5))
  %v363 = sea.add %v361, %v360 : i64 loc("_297"("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":81:5))
  %v364 = sea.add %v363, %v362 : i64 loc("_298"("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":81:5))
  %v365 = sea.icmp ult, %v296, %v364 : i64 loc("_299"("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":81:5))
  sea.cond_br %v365, ^bb184(%v358, %v359, %v360, %v361, %v362 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64, i64), ^bb353 loc("seahorn/jobs/byte_buf_cat/aws_byte_buf_cat_harness.c":81:5)
^bb184(%v366 : !sea.mem<!sea.ptr<64>, i8>, %v367 : !sea.mem<!sea.ptr<64>, i8>, %v368 : i64, %v369 : i64, %v370 : i64):
  sea.br ^bb185
^bb185:
  %v371 = sea.load %v57[%v56] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_305"("aws-c-common/source/byte_buf.c":60:19))
  %v372 = sea.const 0 : i64 loc(".not106"("aws-c-common/source/byte_buf.c":60:28))
  %v373 = sea.icmp eq, %v371, %v372 : i64 loc(".not106"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v373, ^bb193, ^bb186 loc("aws-c-common/source/byte_buf.c":60:33)
^bb186:
  sea.br ^bb187
^bb187:
  sea.br ^bb188
^bb188:
  sea.br ^bb189
^bb189:
  %v374 = sea.icmp ugt, %v370, %v371 : i64 loc(".not2.i78.i"("aws-c-common/source/byte_buf.c":61:44))
  %v375 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v374, ^bb198(%v375 : i1), ^bb190 loc("aws-c-common/source/byte_buf.c":61:61)
^bb190:
  sea.br ^bb191
^bb191:
  sea.br ^bb192
^bb192:
  %v376 = sea.load %v72[%v71] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_319"("aws-c-common/source/byte_buf.c":61:64))
  %v377 = sea.ptr.null : !sea.ptr<64> loc("_320"("aws-c-common/source/byte_buf.c":61:64))
  %v378 = sea.ptr.cmp ne, %v376, %v377 : !sea.ptr<64> loc("_320"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb198(%v378 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb193:
  sea.br ^bb194
^bb194:
  %v379 = sea.const 0 : i64 loc("_308"("aws-c-common/source/byte_buf.c":60:45))
  %v380 = sea.icmp eq, %v370, %v379 : i64 loc("_308"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v380, ^bb195, ^bb197 loc("aws-c-common/source/byte_buf.c":60:50)
^bb195:
  sea.br ^bb196
^bb196:
  %v381 = sea.load %v72[%v71] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_311"("aws-c-common/source/byte_buf.c":60:58))
  %v382 = sea.ptr.null : !sea.ptr<64> loc("_312"("aws-c-common/source/byte_buf.c":60:65))
  %v383 = sea.ptr.cmp eq, %v381, %v382 : !sea.ptr<64> loc("_312"("aws-c-common/source/byte_buf.c":60:65))
  %v384 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v383, ^bb198(%v384 : i1), ^bb197 loc("aws-c-common/source/byte_buf.c":60:74)
^bb197:
  %v385 = sea.const 0 : i1
  sea.br ^bb198(%v385 : i1)
^bb198(%v386 : i1):
  sea.br ^bb199
^bb199:
  sea.cond_br %v373, ^bb205, ^bb200 loc("aws-c-common/source/byte_buf.c":60:33)
^bb200:
  sea.br ^bb201
^bb201:
  sea.br ^bb202
^bb202:
  %v387 = sea.icmp ule, %v370, %v371 : i64 loc(".not2.i74.i")
  %v388 = sea.const 1 : i1 loc("or.cond55.not")
  %v389 = sea.const 0 : i1 loc("or.cond55.not")
  %v390 = sea.select %v388, %v387, %v389 : i1 loc("or.cond55.not")
  sea.cond_br %v390, ^bb203, ^bb353
^bb203:
  sea.br ^bb204
^bb204:
  %v391 = sea.load %v72[%v71] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_335")
  %v392 = sea.ptr.null : !sea.ptr<64> loc("_336")
  %v393 = sea.ptr.cmp ne, %v391, %v392 : !sea.ptr<64> loc("_336")
  %v394 = sea.const 1 : i1 loc("or.cond")
  %v395 = sea.const 0 : i1 loc("or.cond")
  %v396 = sea.select %v394, %v393, %v395 : i1 loc("or.cond")
  sea.cond_br %v396, ^bb210(%v391 : !sea.ptr<64>), ^bb353
^bb205:
  sea.br ^bb206
^bb206:
  %v397 = sea.const 0 : i64 loc("_325"("aws-c-common/source/byte_buf.c":60:45))
  %v398 = sea.icmp eq, %v370, %v397 : i64 loc("_325"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v398, ^bb207, ^bb209 loc("aws-c-common/source/byte_buf.c":60:50)
^bb207:
  sea.br ^bb208
^bb208:
  %v399 = sea.load %v72[%v71] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_328"("aws-c-common/source/byte_buf.c":60:58))
  %v400 = sea.ptr.null : !sea.ptr<64> loc("_329"("aws-c-common/source/byte_buf.c":60:65))
  %v401 = sea.ptr.cmp eq, %v399, %v400 : !sea.ptr<64> loc("_329"("aws-c-common/source/byte_buf.c":60:65))
  %v402 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v401, ^bb210(%v402 : !sea.ptr<64>), ^bb209 loc("aws-c-common/source/byte_buf.c":60:74)
^bb209:
  sea.br ^bb353
^bb210(%v403 : !sea.ptr<64>):
  sea.br ^bb211
^bb211:
  %v404 = sea.load %v83[%v82] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_339"("aws-c-common/source/byte_buf.c":60:19))
  %v405 = sea.const 0 : i64 loc(".not107"("aws-c-common/source/byte_buf.c":60:28))
  %v406 = sea.icmp eq, %v404, %v405 : i64 loc(".not107"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v406, ^bb219, ^bb212 loc("aws-c-common/source/byte_buf.c":60:33)
^bb212:
  sea.br ^bb213
^bb213:
  sea.br ^bb214
^bb214:
  sea.br ^bb215
^bb215:
  %v407 = sea.icmp ugt, %v369, %v404 : i64 loc(".not2.i70.i"("aws-c-common/source/byte_buf.c":61:44))
  %v408 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v407, ^bb224(%v408 : i1), ^bb216 loc("aws-c-common/source/byte_buf.c":61:61)
^bb216:
  sea.br ^bb217
^bb217:
  sea.br ^bb218
^bb218:
  %v409 = sea.load %v98[%v97] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_353"("aws-c-common/source/byte_buf.c":61:64))
  %v410 = sea.ptr.null : !sea.ptr<64> loc("_354"("aws-c-common/source/byte_buf.c":61:64))
  %v411 = sea.ptr.cmp ne, %v409, %v410 : !sea.ptr<64> loc("_354"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb224(%v411 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb219:
  sea.br ^bb220
^bb220:
  %v412 = sea.const 0 : i64 loc("_342"("aws-c-common/source/byte_buf.c":60:45))
  %v413 = sea.icmp eq, %v369, %v412 : i64 loc("_342"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v413, ^bb221, ^bb223 loc("aws-c-common/source/byte_buf.c":60:50)
^bb221:
  sea.br ^bb222
^bb222:
  %v414 = sea.load %v98[%v97] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_345"("aws-c-common/source/byte_buf.c":60:58))
  %v415 = sea.ptr.null : !sea.ptr<64> loc("_346"("aws-c-common/source/byte_buf.c":60:65))
  %v416 = sea.ptr.cmp eq, %v414, %v415 : !sea.ptr<64> loc("_346"("aws-c-common/source/byte_buf.c":60:65))
  %v417 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v416, ^bb224(%v417 : i1), ^bb223 loc("aws-c-common/source/byte_buf.c":60:74)
^bb223:
  %v418 = sea.const 0 : i1
  sea.br ^bb224(%v418 : i1)
^bb224(%v419 : i1):
  sea.br ^bb225
^bb225:
  sea.cond_br %v406, ^bb231, ^bb226 loc("aws-c-common/source/byte_buf.c":60:33)
^bb226:
  sea.br ^bb227
^bb227:
  sea.br ^bb228
^bb228:
  %v420 = sea.icmp ule, %v369, %v404 : i64 loc(".not2.i66.i")
  %v421 = sea.const 1 : i1 loc("or.cond59.not")
  %v422 = sea.const 0 : i1 loc("or.cond59.not")
  %v423 = sea.select %v421, %v420, %v422 : i1 loc("or.cond59.not")
  sea.cond_br %v423, ^bb229, ^bb353
^bb229:
  sea.br ^bb230
^bb230:
  %v424 = sea.load %v98[%v97] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_369")
  %v425 = sea.ptr.null : !sea.ptr<64> loc("_370")
  %v426 = sea.ptr.cmp ne, %v424, %v425 : !sea.ptr<64> loc("_370")
  %v427 = sea.const 1 : i1 loc("or.cond25")
  %v428 = sea.const 0 : i1 loc("or.cond25")
  %v429 = sea.select %v427, %v426, %v428 : i1 loc("or.cond25")
  sea.cond_br %v429, ^bb236(%v424 : !sea.ptr<64>), ^bb353
^bb231:
  sea.br ^bb232
^bb232:
  %v430 = sea.const 0 : i64 loc("_359"("aws-c-common/source/byte_buf.c":60:45))
  %v431 = sea.icmp eq, %v369, %v430 : i64 loc("_359"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v431, ^bb233, ^bb235 loc("aws-c-common/source/byte_buf.c":60:50)
^bb233:
  sea.br ^bb234
^bb234:
  %v432 = sea.load %v98[%v97] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_362"("aws-c-common/source/byte_buf.c":60:58))
  %v433 = sea.ptr.null : !sea.ptr<64> loc("_363"("aws-c-common/source/byte_buf.c":60:65))
  %v434 = sea.ptr.cmp eq, %v432, %v433 : !sea.ptr<64> loc("_363"("aws-c-common/source/byte_buf.c":60:65))
  %v435 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v434, ^bb236(%v435 : !sea.ptr<64>), ^bb235 loc("aws-c-common/source/byte_buf.c":60:74)
^bb235:
  sea.br ^bb353
^bb236(%v436 : !sea.ptr<64>):
  sea.br ^bb237
^bb237:
  %v437 = sea.load %v109[%v108] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_373"("aws-c-common/source/byte_buf.c":60:19))
  %v438 = sea.const 0 : i64 loc(".not108"("aws-c-common/source/byte_buf.c":60:28))
  %v439 = sea.icmp eq, %v437, %v438 : i64 loc(".not108"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v439, ^bb245, ^bb238 loc("aws-c-common/source/byte_buf.c":60:33)
^bb238:
  sea.br ^bb239
^bb239:
  sea.br ^bb240
^bb240:
  sea.br ^bb241
^bb241:
  %v440 = sea.icmp ugt, %v368, %v437 : i64 loc(".not2.i62.i"("aws-c-common/source/byte_buf.c":61:44))
  %v441 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v440, ^bb250(%v441 : i1), ^bb242 loc("aws-c-common/source/byte_buf.c":61:61)
^bb242:
  sea.br ^bb243
^bb243:
  sea.br ^bb244
^bb244:
  %v442 = sea.load %v124[%v123] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_387"("aws-c-common/source/byte_buf.c":61:64))
  %v443 = sea.ptr.null : !sea.ptr<64> loc("_388"("aws-c-common/source/byte_buf.c":61:64))
  %v444 = sea.ptr.cmp ne, %v442, %v443 : !sea.ptr<64> loc("_388"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb250(%v444 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb245:
  sea.br ^bb246
^bb246:
  %v445 = sea.const 0 : i64 loc("_376"("aws-c-common/source/byte_buf.c":60:45))
  %v446 = sea.icmp eq, %v368, %v445 : i64 loc("_376"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v446, ^bb247, ^bb249 loc("aws-c-common/source/byte_buf.c":60:50)
^bb247:
  sea.br ^bb248
^bb248:
  %v447 = sea.load %v124[%v123] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_379"("aws-c-common/source/byte_buf.c":60:58))
  %v448 = sea.ptr.null : !sea.ptr<64> loc("_380"("aws-c-common/source/byte_buf.c":60:65))
  %v449 = sea.ptr.cmp eq, %v447, %v448 : !sea.ptr<64> loc("_380"("aws-c-common/source/byte_buf.c":60:65))
  %v450 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v449, ^bb250(%v450 : i1), ^bb249 loc("aws-c-common/source/byte_buf.c":60:74)
^bb249:
  %v451 = sea.const 0 : i1
  sea.br ^bb250(%v451 : i1)
^bb250(%v452 : i1):
  sea.br ^bb251
^bb251:
  sea.cond_br %v439, ^bb257, ^bb252 loc("aws-c-common/source/byte_buf.c":60:33)
^bb252:
  sea.br ^bb253
^bb253:
  sea.br ^bb254
^bb254:
  %v453 = sea.icmp ule, %v368, %v437 : i64 loc(".not2.i58.i")
  %v454 = sea.const 1 : i1 loc("or.cond63.not")
  %v455 = sea.const 0 : i1 loc("or.cond63.not")
  %v456 = sea.select %v454, %v453, %v455 : i1 loc("or.cond63.not")
  sea.cond_br %v456, ^bb255, ^bb353
^bb255:
  sea.br ^bb256
^bb256:
  %v457 = sea.load %v124[%v123] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_403")
  %v458 = sea.ptr.null : !sea.ptr<64> loc("_404")
  %v459 = sea.ptr.cmp ne, %v457, %v458 : !sea.ptr<64> loc("_404")
  %v460 = sea.const 1 : i1 loc("or.cond27")
  %v461 = sea.const 0 : i1 loc("or.cond27")
  %v462 = sea.select %v460, %v459, %v461 : i1 loc("or.cond27")
  sea.cond_br %v462, ^bb262(%v457 : !sea.ptr<64>), ^bb353
^bb257:
  sea.br ^bb258
^bb258:
  %v463 = sea.const 0 : i64 loc("_393"("aws-c-common/source/byte_buf.c":60:45))
  %v464 = sea.icmp eq, %v368, %v463 : i64 loc("_393"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v464, ^bb259, ^bb261 loc("aws-c-common/source/byte_buf.c":60:50)
^bb259:
  sea.br ^bb260
^bb260:
  %v465 = sea.load %v124[%v123] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_396"("aws-c-common/source/byte_buf.c":60:58))
  %v466 = sea.ptr.null : !sea.ptr<64> loc("_397"("aws-c-common/source/byte_buf.c":60:65))
  %v467 = sea.ptr.cmp eq, %v465, %v466 : !sea.ptr<64> loc("_397"("aws-c-common/source/byte_buf.c":60:65))
  %v468 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v467, ^bb262(%v468 : !sea.ptr<64>), ^bb261 loc("aws-c-common/source/byte_buf.c":60:74)
^bb261:
  sea.br ^bb353
^bb262(%v469 : !sea.ptr<64>):
  sea.br ^bb263
^bb263:
  %v470 = sea.load %v367[%v134] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_407"("aws-c-common/source/byte_buf.c":60:19))
  %v471 = sea.const 0 : i64 loc(".not109"("aws-c-common/source/byte_buf.c":60:28))
  %v472 = sea.icmp eq, %v470, %v471 : i64 loc(".not109"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v472, ^bb271, ^bb264 loc("aws-c-common/source/byte_buf.c":60:33)
^bb264:
  sea.br ^bb265
^bb265:
  sea.br ^bb266
^bb266:
  %v473 = sea.load %v367[%v23] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_418"("aws-c-common/source/byte_buf.c":61:40))
  sea.br ^bb267
^bb267:
  %v474 = sea.icmp ugt, %v473, %v470 : i64 loc(".not2.i54.i"("aws-c-common/source/byte_buf.c":61:44))
  %v475 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v474, ^bb276(%v473, %v475 : i64, i1), ^bb268 loc("aws-c-common/source/byte_buf.c":61:61)
^bb268:
  sea.br ^bb269
^bb269:
  sea.br ^bb270
^bb270:
  %v476 = sea.load %v367[%v149] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_423"("aws-c-common/source/byte_buf.c":61:64))
  %v477 = sea.ptr.null : !sea.ptr<64> loc("_424"("aws-c-common/source/byte_buf.c":61:64))
  %v478 = sea.ptr.cmp ne, %v476, %v477 : !sea.ptr<64> loc("_424"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb276(%v473, %v478 : i64, i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb271:
  sea.br ^bb272
^bb272:
  %v479 = sea.load %v367[%v23] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_410"("aws-c-common/source/byte_buf.c":60:41))
  %v480 = sea.const 0 : i64 loc("_411"("aws-c-common/source/byte_buf.c":60:45))
  %v481 = sea.icmp eq, %v479, %v480 : i64 loc("_411"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v481, ^bb273, ^bb275 loc("aws-c-common/source/byte_buf.c":60:50)
^bb273:
  sea.br ^bb274
^bb274:
  %v482 = sea.load %v367[%v149] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_414"("aws-c-common/source/byte_buf.c":60:58))
  %v483 = sea.ptr.null : !sea.ptr<64> loc("_415"("aws-c-common/source/byte_buf.c":60:65))
  %v484 = sea.ptr.cmp eq, %v482, %v483 : !sea.ptr<64> loc("_415"("aws-c-common/source/byte_buf.c":60:65))
  %v485 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":60:74)
  %v486 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v484, ^bb276(%v485, %v486 : i64, i1), ^bb275 loc("aws-c-common/source/byte_buf.c":60:74)
^bb275:
  %v487 = sea.const 0 : i1
  sea.br ^bb276(%v479, %v487 : i64, i1)
^bb276(%v488 : i64, %v489 : i1):
  sea.br ^bb277
^bb277:
  sea.cond_br %v472, ^bb283, ^bb278 loc("aws-c-common/source/byte_buf.c":60:33)
^bb278:
  sea.br ^bb279
^bb279:
  sea.br ^bb280
^bb280:
  %v490 = sea.icmp ule, %v488, %v470 : i64 loc(".not2.i.i")
  %v491 = sea.const 1 : i1 loc("or.cond67.not")
  %v492 = sea.const 0 : i1 loc("or.cond67.not")
  %v493 = sea.select %v491, %v490, %v492 : i1 loc("or.cond67.not")
  sea.cond_br %v493, ^bb281, ^bb353
^bb281:
  sea.br ^bb282
^bb282:
  %v494 = sea.load %v367[%v149] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_440")
  %v495 = sea.ptr.null : !sea.ptr<64> loc("_441")
  %v496 = sea.ptr.cmp ne, %v494, %v495 : !sea.ptr<64> loc("_441")
  %v497 = sea.const 1 : i1 loc("or.cond29")
  %v498 = sea.const 0 : i1 loc("or.cond29")
  %v499 = sea.select %v497, %v496, %v498 : i1 loc("or.cond29")
  sea.cond_br %v499, ^bb288, ^bb353
^bb283:
  sea.br ^bb284
^bb284:
  %v500 = sea.const 0 : i64 loc("_430"("aws-c-common/source/byte_buf.c":60:45))
  %v501 = sea.icmp eq, %v488, %v500 : i64 loc("_430"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v501, ^bb285, ^bb287 loc("aws-c-common/source/byte_buf.c":60:50)
^bb285:
  sea.br ^bb286
^bb286:
  %v502 = sea.load %v367[%v149] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_433"("aws-c-common/source/byte_buf.c":60:58))
  %v503 = sea.ptr.null : !sea.ptr<64> loc("_434"("aws-c-common/source/byte_buf.c":60:65))
  %v504 = sea.ptr.cmp eq, %v502, %v503 : !sea.ptr<64> loc("_434"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v504, ^bb288, ^bb287 loc("aws-c-common/source/byte_buf.c":60:74)
^bb287:
  sea.br ^bb353
^bb288:
  sea.br ^bb289
^bb289:
  sea.br ^bb290
^bb290:
  %v505 = sea.load %v198[%v25] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_444"("seahorn/lib/utils.c":83:3))
  %v506 = sea.icmp eq, %v370, %v505 : i64 loc("_445"("seahorn/lib/utils.c":83:3))
  sea.br ^bb291
^bb291:
  %v507 = sea.const 1 : i1 loc("or.cond31")
  %v508 = sea.const 0 : i1 loc("or.cond31")
  %v509 = sea.select %v507, %v506, %v508 : i1 loc("or.cond31")
  sea.cond_br %v509, ^bb292, ^bb353
^bb292:
  sea.br ^bb293
^bb293:
  sea.br ^bb294
^bb294:
  %v510 = sea.load %v202[%v201] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_450"("seahorn/lib/utils.c":84:3))
  %v511 = sea.icmp eq, %v371, %v510 : i64 loc("_451"("seahorn/lib/utils.c":84:3))
  sea.br ^bb295
^bb295:
  %v512 = sea.const 1 : i1 loc("or.cond33")
  %v513 = sea.const 0 : i1 loc("or.cond33")
  %v514 = sea.select %v512, %v511, %v513 : i1 loc("or.cond33")
  sea.cond_br %v514, ^bb296, ^bb353
^bb296:
  sea.br ^bb297
^bb297:
  %v515 = sea.load %v75[%v73] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_455"("seahorn/lib/utils.c":85:3))
  sea.br ^bb298
^bb298:
  %v516 = sea.load %v205[%v203] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_457"("seahorn/lib/utils.c":85:3))
  %v517 = sea.ptr.cmp eq, %v515, %v516 : !sea.ptr<64> loc("_458"("seahorn/lib/utils.c":85:3))
  sea.br ^bb299
^bb299:
  %v518 = sea.const 1 : i1 loc("or.cond35")
  %v519 = sea.const 0 : i1 loc("or.cond35")
  %v520 = sea.select %v518, %v517, %v519 : i1 loc("or.cond35")
  sea.cond_br %v520, ^bb300, ^bb353
^bb300:
  sea.br ^bb301
^bb301:
  %v521 = sea.const 0 : i64 loc(".not.i122.i"("seahorn/lib/utils.c":86:16))
  %v522 = sea.icmp eq, %v370, %v521 : i64 loc(".not.i122.i"("seahorn/lib/utils.c":86:16))
  sea.cond_br %v522, ^bb310, ^bb302 loc("seahorn/lib/utils.c":86:7)
^bb302:
  sea.br ^bb303
^bb303:
  %v523 = sea.ptr.null : !sea.ptr<64> loc(".not14"("seahorn/lib/utils.c":39:7))
  %v524 = sea.ptr.cmp eq, %v403, %v523 : !sea.ptr<64> loc(".not14"("seahorn/lib/utils.c":39:7))
  sea.cond_br %v524, ^bb310, ^bb304 loc("seahorn/lib/utils.c":39:14)
^bb304:
  sea.br ^bb305
^bb305:
  %v525 = sea.load %v223[%v27] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_466"("seahorn/lib/utils.c":40:5))
  %v526 = sea.ptr.index %v403 [%v525] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_467"("seahorn/lib/utils.c":40:5))
  %v527 = sea.const 1 : i64 loc("_468"("seahorn/lib/utils.c":40:5))
  %v528 = sea.ptr.dereferenceable %v526, %v527 : !sea.ptr<64>, i64 loc("_468"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v528, ^bb306, ^bb353
^bb306:
  %v529 = sea.load %v366[%v526] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_470"("seahorn/lib/utils.c":40:5))
  %v530 = sea.ptr.index %v27 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_471"("seahorn/lib/utils.c":40:5))
  sea.br ^bb307
^bb307:
  %v531 = sea.load %v223[%v530] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_473"("seahorn/lib/utils.c":40:5))
  %v532 = sea.icmp eq, %v529, %v531 : i8 loc("_474"("seahorn/lib/utils.c":40:5))
  sea.br ^bb308
^bb308:
  %v533 = sea.const 1 : i64 loc("_476"("seahorn/lib/utils.c":40:5))
  %v534 = sea.ptr.dereferenceable %v526, %v533 : !sea.ptr<64>, i64 loc("_476"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v534, ^bb309, ^bb353
^bb309:
  %v535 = sea.const 1 : i1 loc("or.cond37")
  %v536 = sea.const 0 : i1 loc("or.cond37")
  %v537 = sea.select %v535, %v532, %v536 : i1 loc("or.cond37")
  sea.cond_br %v537, ^bb310, ^bb353
^bb310:
  sea.br ^bb311
^bb311:
  %v538 = sea.load %v81[%v19] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_479"("seahorn/lib/utils.c":83:3))
  sea.br ^bb312
^bb312:
  %v539 = sea.load %v224[%v29] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_481"("seahorn/lib/utils.c":83:3))
  %v540 = sea.icmp eq, %v538, %v539 : i64 loc("_482"("seahorn/lib/utils.c":83:3))
  sea.br ^bb313
^bb313:
  %v541 = sea.const 1 : i1 loc("or.cond39")
  %v542 = sea.const 0 : i1 loc("or.cond39")
  %v543 = sea.select %v541, %v540, %v542 : i1 loc("or.cond39")
  sea.cond_br %v543, ^bb314, ^bb353
^bb314:
  sea.br ^bb315
^bb315:
  sea.br ^bb316
^bb316:
  %v544 = sea.load %v228[%v227] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_487"("seahorn/lib/utils.c":84:3))
  %v545 = sea.icmp eq, %v404, %v544 : i64 loc("_488"("seahorn/lib/utils.c":84:3))
  sea.br ^bb317
^bb317:
  %v546 = sea.const 1 : i1 loc("or.cond41")
  %v547 = sea.const 0 : i1 loc("or.cond41")
  %v548 = sea.select %v546, %v545, %v547 : i1 loc("or.cond41")
  sea.cond_br %v548, ^bb318, ^bb353
^bb318:
  sea.br ^bb319
^bb319:
  %v549 = sea.load %v101[%v99] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_492"("seahorn/lib/utils.c":85:3))
  sea.br ^bb320
^bb320:
  %v550 = sea.load %v231[%v229] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_494"("seahorn/lib/utils.c":85:3))
  %v551 = sea.ptr.cmp eq, %v549, %v550 : !sea.ptr<64> loc("_495"("seahorn/lib/utils.c":85:3))
  sea.br ^bb321
^bb321:
  %v552 = sea.const 1 : i1 loc("or.cond43")
  %v553 = sea.const 0 : i1 loc("or.cond43")
  %v554 = sea.select %v552, %v551, %v553 : i1 loc("or.cond43")
  sea.cond_br %v554, ^bb322, ^bb353
^bb322:
  sea.br ^bb323
^bb323:
  %v555 = sea.const 0 : i64 loc(".not.i125.i"("seahorn/lib/utils.c":86:16))
  %v556 = sea.icmp eq, %v538, %v555 : i64 loc(".not.i125.i"("seahorn/lib/utils.c":86:16))
  sea.cond_br %v556, ^bb332, ^bb324 loc("seahorn/lib/utils.c":86:7)
^bb324:
  sea.br ^bb325
^bb325:
  %v557 = sea.ptr.null : !sea.ptr<64> loc(".not15"("seahorn/lib/utils.c":39:7))
  %v558 = sea.ptr.cmp eq, %v436, %v557 : !sea.ptr<64> loc(".not15"("seahorn/lib/utils.c":39:7))
  sea.cond_br %v558, ^bb332, ^bb326 loc("seahorn/lib/utils.c":39:14)
^bb326:
  sea.br ^bb327
^bb327:
  %v559 = sea.load %v249[%v31] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_503"("seahorn/lib/utils.c":40:5))
  %v560 = sea.ptr.index %v436 [%v559] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_504"("seahorn/lib/utils.c":40:5))
  %v561 = sea.const 1 : i64 loc("_505"("seahorn/lib/utils.c":40:5))
  %v562 = sea.ptr.dereferenceable %v560, %v561 : !sea.ptr<64>, i64 loc("_505"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v562, ^bb328, ^bb353
^bb328:
  %v563 = sea.load %v366[%v560] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_507"("seahorn/lib/utils.c":40:5))
  %v564 = sea.ptr.index %v31 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_508"("seahorn/lib/utils.c":40:5))
  sea.br ^bb329
^bb329:
  %v565 = sea.load %v249[%v564] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_510"("seahorn/lib/utils.c":40:5))
  %v566 = sea.icmp eq, %v563, %v565 : i8 loc("_511"("seahorn/lib/utils.c":40:5))
  sea.br ^bb330
^bb330:
  %v567 = sea.const 1 : i64 loc("_513"("seahorn/lib/utils.c":40:5))
  %v568 = sea.ptr.dereferenceable %v560, %v567 : !sea.ptr<64>, i64 loc("_513"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v568, ^bb331, ^bb353
^bb331:
  %v569 = sea.const 1 : i1 loc("or.cond45")
  %v570 = sea.const 0 : i1 loc("or.cond45")
  %v571 = sea.select %v569, %v566, %v570 : i1 loc("or.cond45")
  sea.cond_br %v571, ^bb332, ^bb353
^bb332:
  sea.br ^bb333
^bb333:
  sea.br ^bb334
^bb334:
  %v572 = sea.load %v250[%v33] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_517"("seahorn/lib/utils.c":83:3))
  %v573 = sea.icmp eq, %v368, %v572 : i64 loc("_518"("seahorn/lib/utils.c":83:3))
  sea.br ^bb335
^bb335:
  %v574 = sea.const 1 : i1 loc("or.cond47")
  %v575 = sea.const 0 : i1 loc("or.cond47")
  %v576 = sea.select %v574, %v573, %v575 : i1 loc("or.cond47")
  sea.cond_br %v576, ^bb336, ^bb353
^bb336:
  sea.br ^bb337
^bb337:
  sea.br ^bb338
^bb338:
  %v577 = sea.load %v254[%v253] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_523"("seahorn/lib/utils.c":84:3))
  %v578 = sea.icmp eq, %v437, %v577 : i64 loc("_524"("seahorn/lib/utils.c":84:3))
  sea.br ^bb339
^bb339:
  %v579 = sea.const 1 : i1 loc("or.cond49")
  %v580 = sea.const 0 : i1 loc("or.cond49")
  %v581 = sea.select %v579, %v578, %v580 : i1 loc("or.cond49")
  sea.cond_br %v581, ^bb340, ^bb353
^bb340:
  sea.br ^bb341
^bb341:
  %v582 = sea.load %v127[%v125] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_528"("seahorn/lib/utils.c":85:3))
  sea.br ^bb342
^bb342:
  %v583 = sea.load %v257[%v255] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_530"("seahorn/lib/utils.c":85:3))
  %v584 = sea.ptr.cmp eq, %v582, %v583 : !sea.ptr<64> loc("_531"("seahorn/lib/utils.c":85:3))
  sea.br ^bb343
^bb343:
  %v585 = sea.const 1 : i1 loc("or.cond51")
  %v586 = sea.const 0 : i1 loc("or.cond51")
  %v587 = sea.select %v585, %v584, %v586 : i1 loc("or.cond51")
  sea.cond_br %v587, ^bb344, ^bb353
^bb344:
  sea.br ^bb345
^bb345:
  %v588 = sea.const 0 : i64 loc(".not.i130.i"("seahorn/lib/utils.c":86:16))
  %v589 = sea.icmp eq, %v368, %v588 : i64 loc(".not.i130.i"("seahorn/lib/utils.c":86:16))
  %v590 = sea.const 1 : i1 loc("seahorn/lib/utils.c":86:7)
  %v591 = sea.xor %v589, %v590 : i1 loc("seahorn/lib/utils.c":86:7)
  sea.assume %v591 loc("seahorn/lib/utils.c":86:7)
  sea.br ^bb346
^bb346:
  %v592 = sea.ptr.null : !sea.ptr<64> loc("_536"("seahorn/lib/utils.c":39:7))
  %v593 = sea.ptr.cmp ne, %v469, %v592 : !sea.ptr<64> loc("_536"("seahorn/lib/utils.c":39:7))
  sea.assume %v593 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb347
^bb347:
  %v594 = sea.load %v275[%v35] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_538"("seahorn/lib/utils.c":40:5))
  %v595 = sea.ptr.index %v469 [%v594] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_539"("seahorn/lib/utils.c":40:5))
  %v596 = sea.const 1 : i64 loc("_540"("seahorn/lib/utils.c":40:5))
  %v597 = sea.ptr.dereferenceable %v595, %v596 : !sea.ptr<64>, i64 loc("_540"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v597, ^bb348, ^bb353
^bb348:
  %v598 = sea.load %v366[%v595] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_542"("seahorn/lib/utils.c":40:5))
  %v599 = sea.ptr.index %v35 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_543"("seahorn/lib/utils.c":40:5))
  sea.br ^bb349
^bb349:
  %v600 = sea.load %v275[%v599] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_545"("seahorn/lib/utils.c":40:5))
  %v601 = sea.icmp eq, %v598, %v600 : i8 loc("_546"("seahorn/lib/utils.c":40:5))
  sea.br ^bb350
^bb350:
  %v602 = sea.const 1 : i64 loc("_548"("seahorn/lib/utils.c":40:5))
  %v603 = sea.ptr.dereferenceable %v595, %v602 : !sea.ptr<64>, i64 loc("_548"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v603, ^bb351, ^bb353
^bb351:
  sea.br ^bb352
^bb352:
  %v604 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v605 = sea.xor %v601, %v604 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v605 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb353 loc("seahorn/lib/utils.c":40:5)
^bb353:
  sea.br ^bb354
^bb354:
  %v606 = sea.const 0 : i1
  sea.assert %v606
  sea.halt
}
