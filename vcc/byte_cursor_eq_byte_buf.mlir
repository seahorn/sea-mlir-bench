// Exported from SeaHorn (byte_cursor_eq_byte_buf.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm27")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm28")
  %v2 = sea.mem.nondet "region.32" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm29")
  %v3 = sea.mem.nondet "region.64" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm30")
  %v4 = sea.mem.nondet "region.73" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm31")
  %v5 = sea.mem.nondet "region.105" [5] : !sea.mem<!sea.ptr<64>, i8> loc("sm32")
  %v6 = sea.mem.nondet "region.114" [6] : !sea.mem<!sea.ptr<64>, i8> loc("sm33")
  %v7 = sea.mem.nondet "region.115" [7] : !sea.mem<!sea.ptr<64>, i8> loc("sm34")
  %v8 = sea.const 16 : i64 loc("_0")
  %v9 = sea.alloca %v8 align 8 [8] : i64 -> !sea.ptr<64> loc("_0")
  %v10 = sea.const 32 : i64 loc("_1")
  %v11 = sea.alloca %v10 align 8 [9] : i64 -> !sea.ptr<64> loc("_1")
  %v12 = sea.const 16 : i64 loc("_2")
  %v13 = sea.alloca %v12 align 8 [10] : i64 -> !sea.ptr<64> loc("_2")
  %v14 = sea.const 32 : i64 loc("_3")
  %v15 = sea.alloca %v14 align 8 [11] : i64 -> !sea.ptr<64> loc("_3")
  %v16 = sea.const 16 : i64 loc("_4")
  %v17 = sea.alloca %v16 align 8 [12] : i64 -> !sea.ptr<64> loc("_4")
  %v18 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v19 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v20 = sea.store %v0[%v18], %v19 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v21 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_5")
  %v22 = sea.ptr.index %v21 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_5")
  %v23 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v24 = sea.store %v20[%v22], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v25 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_6")
  %v26 = sea.ptr.index %v25 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_6")
  %v27 = sea.const 0 : i8
  %v28 = sea.const 24 : i64
  %v29 = sea.memset %v24[%v26], %v27, %v28 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v30 = sea.nondet "nd_size_t" [13] : i64 loc("_7"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb1
^bb1:
  %v31 = sea.store %v1[%v9], %v30 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb2
^bb2:
  %v32 = sea.const 11 : i64 loc("_10"("seahorn/lib/byte_buf_helper.c":33:24))
  %v33 = sea.icmp ult, %v30, %v32 : i64 loc("_10"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v33 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v34 = sea.nondet "nd_malloc_is_fail" [14] : i1 loc("_11"("seahorn/lib/sea_allocators.c":11:10))
  %v35 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v34, ^bb4(%v6, %v35 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/sea_allocators.c":11:10)
^bb3:
  %v36 = sea.const 10 : i64 loc("malloc.i10")
  %v37 = sea.alloca %v36 align 16 [15] : i64 -> !sea.ptr<64> loc("malloc.i10")
  sea.br ^bb4(%v6, %v37 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb4(%v38 : !sea.mem<!sea.ptr<64>, i8>, %v39 : !sea.ptr<64>):
  %v40 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v41 = sea.memhavoc %v38[%v39], %v40 [16] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v42 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_14"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb5
^bb5:
  %v43 = sea.store %v31[%v42], %v39 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  %v44 = sea.nondet "nd_size_t" [17] : i64 loc("_15"("seahorn/lib/byte_buf_helper.c":19:18))
  %v45 = sea.nondet "nd_size_t" [18] : i64 loc("_16"("seahorn/lib/byte_buf_helper.c":20:18))
  %v46 = sea.icmp ule, %v44, %v45 : i64 loc("_17"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v46 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v47 = sea.const 11 : i64 loc("_18"("seahorn/lib/byte_buf_helper.c":22:16))
  %v48 = sea.icmp ult, %v45, %v47 : i64 loc("_18"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v48 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb6
^bb6:
  %v49 = sea.store %v2[%v11], %v44 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v50 = sea.ptr.index %v11 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_20"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb7
^bb7:
  %v51 = sea.store %v49[%v50], %v45 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v52 = sea.const 0 : i64 loc("_22"("seahorn/lib/proof_allocators.c":21:15))
  %v53 = sea.icmp eq, %v45, %v52 : i64 loc("_22"("seahorn/lib/proof_allocators.c":21:15))
  %v54 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v53, ^bb11(%v7, %v54 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb8 loc("seahorn/lib/proof_allocators.c":21:10)
^bb8:
  %v55 = sea.nondet "nd_malloc_is_fail" [19] : i1 loc("_24"("seahorn/lib/sea_allocators.c":11:10))
  %v56 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v55, ^bb10(%v7, %v56 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb9 loc("seahorn/lib/sea_allocators.c":11:10)
^bb9:
  %v57 = sea.const 1 : i64 loc("malloc46.i")
  %v58 = sea.mul %v45, %v57 : i64 loc("malloc46.i")
  %v59 = sea.alloca %v58 align 16 [20] : i64 -> !sea.ptr<64> loc("malloc46.i")
  sea.br ^bb10(%v7, %v59 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb10(%v60 : !sea.mem<!sea.ptr<64>, i8>, %v61 : !sea.ptr<64>):
  %v62 = sea.memhavoc %v60[%v61], %v45 [21] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb11(%v62, %v61 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb11(%v63 : !sea.mem<!sea.ptr<64>, i8>, %v64 : !sea.ptr<64>):
  %v65 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_28"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb12
^bb12:
  %v66 = sea.store %v51[%v65], %v64 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v67 = sea.ptr.index %v11 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_30"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb13
^bb13:
  %v68 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v69 = sea.store %v66[%v67], %v68 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  sea.br ^bb14
^bb14:
  %v70 = sea.const 0 : i64 loc("_32"("aws-c-common/source/byte_buf.c":66:26))
  %v71 = sea.icmp eq, %v30, %v70 : i64 loc("_32"("aws-c-common/source/byte_buf.c":66:26))
  %v72 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v71, ^bb20(%v72 : i1), ^bb15 loc("aws-c-common/source/byte_buf.c":66:32)
^bb15:
  sea.br ^bb16
^bb16:
  sea.br ^bb17
^bb17:
  %v73 = sea.ptr.null : !sea.ptr<64> loc(".not2.i28.i"("aws-c-common/source/byte_buf.c":66:55))
  %v74 = sea.ptr.cmp eq, %v39, %v73 : !sea.ptr<64> loc(".not2.i28.i"("aws-c-common/source/byte_buf.c":66:55))
  %v75 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v74, ^bb20(%v75 : i1), ^bb18 loc("aws-c-common/source/byte_buf.c":66:67)
^bb18:
  sea.br ^bb19
^bb19:
  %v76 = sea.const 1 : i1
  sea.br ^bb20(%v76 : i1)
^bb20(%v77 : i1):
  sea.assume %v77 loc("seahorn/jobs/byte_cursor_eq_byte_buf/aws_byte_cursor_eq_byte_buf_harness.c":18:5)
  sea.br ^bb21
^bb21:
  sea.cond_br %v53, ^bb29, ^bb22 loc("aws-c-common/source/byte_buf.c":60:33)
^bb22:
  sea.br ^bb23
^bb23:
  sea.br ^bb24
^bb24:
  sea.br ^bb25
^bb25:
  %v78 = sea.icmp ugt, %v44, %v45 : i64 loc(".not2.i17.i"("aws-c-common/source/byte_buf.c":61:44))
  %v79 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v78, ^bb34(%v79 : i1), ^bb26 loc("aws-c-common/source/byte_buf.c":61:61)
^bb26:
  sea.br ^bb27
^bb27:
  sea.br ^bb28
^bb28:
  %v80 = sea.ptr.null : !sea.ptr<64> loc("_52"("aws-c-common/source/byte_buf.c":61:64))
  %v81 = sea.ptr.cmp ne, %v64, %v80 : !sea.ptr<64> loc("_52"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb34(%v81 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb29:
  sea.br ^bb30
^bb30:
  %v82 = sea.const 0 : i64 loc("_42"("aws-c-common/source/byte_buf.c":60:45))
  %v83 = sea.icmp eq, %v44, %v82 : i64 loc("_42"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v83, ^bb31, ^bb33 loc("aws-c-common/source/byte_buf.c":60:50)
^bb31:
  sea.br ^bb32
^bb32:
  %v84 = sea.ptr.null : !sea.ptr<64> loc("_45"("aws-c-common/source/byte_buf.c":60:65))
  %v85 = sea.ptr.cmp eq, %v64, %v84 : !sea.ptr<64> loc("_45"("aws-c-common/source/byte_buf.c":60:65))
  %v86 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v85, ^bb34(%v86 : i1), ^bb33 loc("aws-c-common/source/byte_buf.c":60:74)
^bb33:
  %v87 = sea.const 0 : i1
  sea.br ^bb34(%v87 : i1)
^bb34(%v88 : i1):
  sea.assume %v88 loc("seahorn/jobs/byte_cursor_eq_byte_buf/aws_byte_cursor_eq_byte_buf_harness.c":19:5)
  %v89 = sea.nondet "nd_size_t" [22] : i64 loc("_54"("seahorn/lib/utils.c":46:20))
  sea.br ^bb35
^bb35:
  %v90 = sea.store %v3[%v13], %v89 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v91 = sea.const 0 : i64 loc("_56"("seahorn/lib/utils.c":47:12))
  %v92 = sea.icmp ne, %v30, %v91 : i64 loc("_56"("seahorn/lib/utils.c":47:12))
  %v93 = sea.ptr.null : !sea.ptr<64> loc("_57")
  %v94 = sea.ptr.cmp ne, %v39, %v93 : !sea.ptr<64> loc("_57")
  %v95 = sea.and %v92, %v94 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v95, ^bb38, ^bb36 loc("seahorn/lib/utils.c":47:16)
^bb36:
  %v96 = sea.nondet "nd_uint8_t" [23] : i8 loc("_69"("seahorn/lib/utils.c":51:21))
  %v97 = sea.ptr.index %v13 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_70"("seahorn/lib/utils.c":51:14))
  sea.br ^bb37
^bb37:
  %v98 = sea.store %v90[%v97], %v96 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb43(%v96 : i8)
^bb38:
  sea.br ^bb39
^bb39:
  %v99 = sea.icmp ult, %v89, %v30 : i64 loc("_60"("seahorn/lib/utils.c":48:27))
  sea.assume %v99 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb40
^bb40:
  %v100 = sea.ptr.index %v39 [%v89] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_62"("seahorn/lib/utils.c":49:21))
  %v101 = sea.const 1 : i64 loc("_63"("seahorn/lib/utils.c":49:21))
  %v102 = sea.ptr.dereferenceable %v100, %v101 : !sea.ptr<64>, i64 loc("_63"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v102, ^bb41, ^bb181
^bb41:
  %v103 = sea.load %v41[%v100] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_65"("seahorn/lib/utils.c":49:21))
  %v104 = sea.ptr.index %v13 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_66"("seahorn/lib/utils.c":49:14))
  sea.br ^bb42
^bb42:
  %v105 = sea.store %v90[%v104], %v103 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb43(%v103 : i8) loc("seahorn/lib/utils.c":50:3)
^bb43(%v106 : i8):
  %v107 = sea.store %v4[%v15], %v44 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_cursor_eq_byte_buf/aws_byte_cursor_eq_byte_buf_harness.c":24:35)
  %v108 = sea.ptr.index %v15 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs/byte_cursor_eq_byte_buf/aws_byte_cursor_eq_byte_buf_harness.c":24:35))
  %v109 = sea.store %v107[%v108], %v64 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_cursor_eq_byte_buf/aws_byte_cursor_eq_byte_buf_harness.c":24:35)
  %v110 = sea.ptr.index %v15 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy5.i"("seahorn/jobs/byte_cursor_eq_byte_buf/aws_byte_cursor_eq_byte_buf_harness.c":24:35))
  %v111 = sea.store %v109[%v110], %v45 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_cursor_eq_byte_buf/aws_byte_cursor_eq_byte_buf_harness.c":24:35)
  %v112 = sea.ptr.index %v15 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i"("seahorn/jobs/byte_cursor_eq_byte_buf/aws_byte_cursor_eq_byte_buf_harness.c":24:35))
  %v113 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/byte_cursor_eq_byte_buf/aws_byte_cursor_eq_byte_buf_harness.c":24:35)
  %v114 = sea.store %v111[%v112], %v113 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_cursor_eq_byte_buf/aws_byte_cursor_eq_byte_buf_harness.c":24:35)
  %v115 = sea.nondet "nd_size_t" [24] : i64 loc("_73"("seahorn/lib/utils.c":46:20))
  sea.br ^bb44
^bb44:
  %v116 = sea.store %v5[%v17], %v115 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v117 = sea.const 0 : i64 loc("_75"("seahorn/lib/utils.c":47:12))
  %v118 = sea.icmp ne, %v44, %v117 : i64 loc("_75"("seahorn/lib/utils.c":47:12))
  %v119 = sea.ptr.null : !sea.ptr<64> loc("_76")
  %v120 = sea.ptr.cmp ne, %v64, %v119 : !sea.ptr<64> loc("_76")
  %v121 = sea.and %v118, %v120 : i1 loc("or.cond.i37.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v121, ^bb47, ^bb45 loc("seahorn/lib/utils.c":47:16)
^bb45:
  %v122 = sea.nondet "nd_uint8_t" [25] : i8 loc("_88"("seahorn/lib/utils.c":51:21))
  %v123 = sea.ptr.index %v17 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_89"("seahorn/lib/utils.c":51:14))
  sea.br ^bb46
^bb46:
  %v124 = sea.store %v116[%v123], %v122 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb52(%v122 : i8)
^bb47:
  sea.br ^bb48
^bb48:
  %v125 = sea.icmp ult, %v115, %v44 : i64 loc("_79"("seahorn/lib/utils.c":48:27))
  sea.assume %v125 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb49
^bb49:
  %v126 = sea.ptr.index %v64 [%v115] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_81"("seahorn/lib/utils.c":49:21))
  %v127 = sea.const 1 : i64 loc("_82"("seahorn/lib/utils.c":49:21))
  %v128 = sea.ptr.dereferenceable %v126, %v127 : !sea.ptr<64>, i64 loc("_82"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v128, ^bb50, ^bb181
^bb50:
  %v129 = sea.load %v63[%v126] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_84"("seahorn/lib/utils.c":49:21))
  %v130 = sea.ptr.index %v17 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_85"("seahorn/lib/utils.c":49:14))
  sea.br ^bb51
^bb51:
  %v131 = sea.store %v116[%v130], %v129 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb52(%v129 : i8) loc("seahorn/lib/utils.c":50:3)
^bb52(%v132 : i8):
  sea.br ^bb53
^bb53:
  sea.br ^bb54
^bb54:
  sea.br ^bb55
^bb55:
  sea.br ^bb56
^bb56:
  %v133 = sea.icmp eq, %v30, %v44 : i64 loc(".not.i.i.i"("aws-c-common/source/byte_buf.c":425:15))
  sea.cond_br %v133, ^bb57, ^bb114 loc("aws-c-common/source/byte_buf.c":425:9)
^bb57:
  sea.cond_br %v71, ^bb113, ^bb58 loc("aws-c-common/source/byte_buf.c":429:9)
^bb58:
  %v134 = sea.ptr.cmp eq, %v39, %v64 : !sea.ptr<64> loc("_98"("seahorn/lib/bcmp.c":55:10))
  sea.cond_br %v134, ^bb109, ^bb59 loc("seahorn/lib/bcmp.c":55:7)
^bb59:
  %v135 = sea.const 1 : i64 loc("_101"("seahorn/lib/bcmp.c":61:11))
  %v136 = sea.ptr.dereferenceable %v39, %v135 : !sea.ptr<64>, i64 loc("_101"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v136, ^bb60, ^bb181
^bb60:
  %v137 = sea.load %v41[%v39] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_103"("seahorn/lib/bcmp.c":61:11))
  %v138 = sea.const 1 : i64 loc("_104"("seahorn/lib/bcmp.c":61:20))
  %v139 = sea.ptr.dereferenceable %v64, %v138 : !sea.ptr<64>, i64 loc("_104"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v139, ^bb61, ^bb181
^bb61:
  %v140 = sea.load %v63[%v64] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_106"("seahorn/lib/bcmp.c":61:20))
  %v141 = sea.icmp eq, %v137, %v140 : i8 loc(".not2.i45.i"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v141, ^bb62, ^bb98(%v64, %v39 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb62:
  %v142 = sea.const 1 : i64 loc(".not10"("seahorn/lib/bcmp.c":60:11))
  %v143 = sea.icmp eq, %v30, %v142 : i64 loc(".not10"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v143, ^bb108, ^bb63 loc("seahorn/lib/bcmp.c":60:9)
^bb63:
  %v144 = sea.ptr.index %v39 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_112"("seahorn/lib/bcmp.c":61:11))
  %v145 = sea.const 1 : i64 loc("_113"("seahorn/lib/bcmp.c":61:11))
  %v146 = sea.ptr.dereferenceable %v144, %v145 : !sea.ptr<64>, i64 loc("_113"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v146, ^bb64, ^bb181
^bb64:
  %v147 = sea.load %v41[%v144] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_115"("seahorn/lib/bcmp.c":61:11))
  %v148 = sea.ptr.index %v64 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_116"("seahorn/lib/bcmp.c":61:20))
  %v149 = sea.const 1 : i64 loc("_117"("seahorn/lib/bcmp.c":61:20))
  %v150 = sea.ptr.dereferenceable %v148, %v149 : !sea.ptr<64>, i64 loc("_117"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v150, ^bb65, ^bb181
^bb65:
  %v151 = sea.load %v63[%v148] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_119"("seahorn/lib/bcmp.c":61:20))
  %v152 = sea.icmp eq, %v147, %v151 : i8 loc(".not2.i45.i.1"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v152, ^bb66, ^bb98(%v148, %v144 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb66:
  %v153 = sea.const 2 : i64 loc("_120"("seahorn/lib/bcmp.c":60:11))
  %v154 = sea.icmp ugt, %v30, %v153 : i64 loc("_120"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v154, ^bb67, ^bb108 loc("seahorn/lib/bcmp.c":60:9)
^bb67:
  %v155 = sea.ptr.index %v39 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_122"("seahorn/lib/bcmp.c":61:11))
  %v156 = sea.const 1 : i64 loc("_123"("seahorn/lib/bcmp.c":61:11))
  %v157 = sea.ptr.dereferenceable %v155, %v156 : !sea.ptr<64>, i64 loc("_123"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v157, ^bb68, ^bb181
^bb68:
  %v158 = sea.load %v41[%v155] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_125"("seahorn/lib/bcmp.c":61:11))
  %v159 = sea.ptr.index %v64 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_126"("seahorn/lib/bcmp.c":61:20))
  %v160 = sea.const 1 : i64 loc("_127"("seahorn/lib/bcmp.c":61:20))
  %v161 = sea.ptr.dereferenceable %v159, %v160 : !sea.ptr<64>, i64 loc("_127"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v161, ^bb69, ^bb181
^bb69:
  %v162 = sea.load %v63[%v159] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_129"("seahorn/lib/bcmp.c":61:20))
  %v163 = sea.icmp eq, %v158, %v162 : i8 loc(".not2.i45.i.2"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v163, ^bb70, ^bb98(%v159, %v155 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb70:
  %v164 = sea.const 3 : i64 loc(".not11"("seahorn/lib/bcmp.c":60:11))
  %v165 = sea.icmp eq, %v30, %v164 : i64 loc(".not11"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v165, ^bb108, ^bb71 loc("seahorn/lib/bcmp.c":60:9)
^bb71:
  %v166 = sea.ptr.index %v39 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_131"("seahorn/lib/bcmp.c":61:11))
  %v167 = sea.const 1 : i64 loc("_132"("seahorn/lib/bcmp.c":61:11))
  %v168 = sea.ptr.dereferenceable %v166, %v167 : !sea.ptr<64>, i64 loc("_132"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v168, ^bb72, ^bb181
^bb72:
  %v169 = sea.load %v41[%v166] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_134"("seahorn/lib/bcmp.c":61:11))
  %v170 = sea.ptr.index %v64 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_135"("seahorn/lib/bcmp.c":61:20))
  %v171 = sea.const 1 : i64 loc("_136"("seahorn/lib/bcmp.c":61:20))
  %v172 = sea.ptr.dereferenceable %v170, %v171 : !sea.ptr<64>, i64 loc("_136"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v172, ^bb73, ^bb181
^bb73:
  %v173 = sea.load %v63[%v170] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_138"("seahorn/lib/bcmp.c":61:20))
  %v174 = sea.icmp eq, %v169, %v173 : i8 loc(".not2.i45.i.3"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v174, ^bb74, ^bb98(%v170, %v166 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb74:
  %v175 = sea.const 4 : i64 loc("_139"("seahorn/lib/bcmp.c":60:11))
  %v176 = sea.icmp ugt, %v30, %v175 : i64 loc("_139"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v176, ^bb75, ^bb108 loc("seahorn/lib/bcmp.c":60:9)
^bb75:
  %v177 = sea.ptr.index %v39 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_141"("seahorn/lib/bcmp.c":61:11))
  %v178 = sea.const 1 : i64 loc("_142"("seahorn/lib/bcmp.c":61:11))
  %v179 = sea.ptr.dereferenceable %v177, %v178 : !sea.ptr<64>, i64 loc("_142"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v179, ^bb76, ^bb181
^bb76:
  %v180 = sea.load %v41[%v177] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_144"("seahorn/lib/bcmp.c":61:11))
  %v181 = sea.ptr.index %v64 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_145"("seahorn/lib/bcmp.c":61:20))
  %v182 = sea.const 1 : i64 loc("_146"("seahorn/lib/bcmp.c":61:20))
  %v183 = sea.ptr.dereferenceable %v181, %v182 : !sea.ptr<64>, i64 loc("_146"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v183, ^bb77, ^bb181
^bb77:
  %v184 = sea.load %v63[%v181] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_148"("seahorn/lib/bcmp.c":61:20))
  %v185 = sea.icmp eq, %v180, %v184 : i8 loc(".not2.i45.i.4"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v185, ^bb78, ^bb98(%v181, %v177 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb78:
  %v186 = sea.const 5 : i64 loc(".not12"("seahorn/lib/bcmp.c":60:11))
  %v187 = sea.icmp eq, %v30, %v186 : i64 loc(".not12"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v187, ^bb108, ^bb79 loc("seahorn/lib/bcmp.c":60:9)
^bb79:
  %v188 = sea.ptr.index %v39 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_150"("seahorn/lib/bcmp.c":61:11))
  %v189 = sea.const 1 : i64 loc("_151"("seahorn/lib/bcmp.c":61:11))
  %v190 = sea.ptr.dereferenceable %v188, %v189 : !sea.ptr<64>, i64 loc("_151"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v190, ^bb80, ^bb181
^bb80:
  %v191 = sea.load %v41[%v188] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_153"("seahorn/lib/bcmp.c":61:11))
  %v192 = sea.ptr.index %v64 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_154"("seahorn/lib/bcmp.c":61:20))
  %v193 = sea.const 1 : i64 loc("_155"("seahorn/lib/bcmp.c":61:20))
  %v194 = sea.ptr.dereferenceable %v192, %v193 : !sea.ptr<64>, i64 loc("_155"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v194, ^bb81, ^bb181
^bb81:
  %v195 = sea.load %v63[%v192] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_157"("seahorn/lib/bcmp.c":61:20))
  %v196 = sea.icmp eq, %v191, %v195 : i8 loc(".not2.i45.i.5"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v196, ^bb82, ^bb98(%v192, %v188 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb82:
  %v197 = sea.const 6 : i64 loc("_158"("seahorn/lib/bcmp.c":60:11))
  %v198 = sea.icmp ugt, %v30, %v197 : i64 loc("_158"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v198, ^bb83, ^bb108 loc("seahorn/lib/bcmp.c":60:9)
^bb83:
  %v199 = sea.ptr.index %v39 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_160"("seahorn/lib/bcmp.c":61:11))
  %v200 = sea.const 1 : i64 loc("_161"("seahorn/lib/bcmp.c":61:11))
  %v201 = sea.ptr.dereferenceable %v199, %v200 : !sea.ptr<64>, i64 loc("_161"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v201, ^bb84, ^bb181
^bb84:
  %v202 = sea.load %v41[%v199] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_163"("seahorn/lib/bcmp.c":61:11))
  %v203 = sea.ptr.index %v64 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_164"("seahorn/lib/bcmp.c":61:20))
  %v204 = sea.const 1 : i64 loc("_165"("seahorn/lib/bcmp.c":61:20))
  %v205 = sea.ptr.dereferenceable %v203, %v204 : !sea.ptr<64>, i64 loc("_165"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v205, ^bb85, ^bb181
^bb85:
  %v206 = sea.load %v63[%v203] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_167"("seahorn/lib/bcmp.c":61:20))
  %v207 = sea.icmp eq, %v202, %v206 : i8 loc(".not2.i45.i.6"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v207, ^bb86, ^bb98(%v203, %v199 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb86:
  %v208 = sea.const 7 : i64 loc(".not13"("seahorn/lib/bcmp.c":60:11))
  %v209 = sea.icmp eq, %v30, %v208 : i64 loc(".not13"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v209, ^bb108, ^bb87 loc("seahorn/lib/bcmp.c":60:9)
^bb87:
  %v210 = sea.ptr.index %v39 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_169"("seahorn/lib/bcmp.c":61:11))
  %v211 = sea.const 1 : i64 loc("_170"("seahorn/lib/bcmp.c":61:11))
  %v212 = sea.ptr.dereferenceable %v210, %v211 : !sea.ptr<64>, i64 loc("_170"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v212, ^bb88, ^bb181
^bb88:
  %v213 = sea.load %v41[%v210] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_172"("seahorn/lib/bcmp.c":61:11))
  %v214 = sea.ptr.index %v64 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_173"("seahorn/lib/bcmp.c":61:20))
  %v215 = sea.const 1 : i64 loc("_174"("seahorn/lib/bcmp.c":61:20))
  %v216 = sea.ptr.dereferenceable %v214, %v215 : !sea.ptr<64>, i64 loc("_174"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v216, ^bb89, ^bb181
^bb89:
  %v217 = sea.load %v63[%v214] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_176"("seahorn/lib/bcmp.c":61:20))
  %v218 = sea.icmp eq, %v213, %v217 : i8 loc(".not2.i45.i.7"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v218, ^bb90, ^bb98(%v214, %v210 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb90:
  %v219 = sea.const 8 : i64 loc("_177"("seahorn/lib/bcmp.c":60:11))
  %v220 = sea.icmp ugt, %v30, %v219 : i64 loc("_177"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v220, ^bb91, ^bb108 loc("seahorn/lib/bcmp.c":60:9)
^bb91:
  %v221 = sea.ptr.index %v39 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_179"("seahorn/lib/bcmp.c":61:11))
  %v222 = sea.const 1 : i64 loc("_180"("seahorn/lib/bcmp.c":61:11))
  %v223 = sea.ptr.dereferenceable %v221, %v222 : !sea.ptr<64>, i64 loc("_180"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v223, ^bb92, ^bb181
^bb92:
  %v224 = sea.load %v41[%v221] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_182"("seahorn/lib/bcmp.c":61:11))
  %v225 = sea.ptr.index %v64 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_183"("seahorn/lib/bcmp.c":61:20))
  %v226 = sea.const 1 : i64 loc("_184"("seahorn/lib/bcmp.c":61:20))
  %v227 = sea.ptr.dereferenceable %v225, %v226 : !sea.ptr<64>, i64 loc("_184"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v227, ^bb93, ^bb181
^bb93:
  %v228 = sea.load %v63[%v225] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_186"("seahorn/lib/bcmp.c":61:20))
  %v229 = sea.icmp eq, %v224, %v228 : i8 loc(".not2.i45.i.8"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v229, ^bb94, ^bb98(%v225, %v221 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb94:
  %v230 = sea.const 9 : i64 loc(".not14"("seahorn/lib/bcmp.c":60:11))
  %v231 = sea.icmp eq, %v30, %v230 : i64 loc(".not14"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v231, ^bb108, ^bb95 loc("seahorn/lib/bcmp.c":60:9)
^bb95:
  %v232 = sea.ptr.index %v39 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_188"("seahorn/lib/bcmp.c":61:11))
  %v233 = sea.const 1 : i64 loc("_189"("seahorn/lib/bcmp.c":61:11))
  %v234 = sea.ptr.dereferenceable %v232, %v233 : !sea.ptr<64>, i64 loc("_189"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v234, ^bb96, ^bb181
^bb96:
  %v235 = sea.load %v41[%v232] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_191"("seahorn/lib/bcmp.c":61:11))
  %v236 = sea.ptr.index %v64 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_192"("seahorn/lib/bcmp.c":61:20))
  %v237 = sea.const 1 : i64 loc("_193"("seahorn/lib/bcmp.c":61:20))
  %v238 = sea.ptr.dereferenceable %v236, %v237 : !sea.ptr<64>, i64 loc("_193"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v238, ^bb97, ^bb181
^bb97:
  %v239 = sea.load %v63[%v236] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_195"("seahorn/lib/bcmp.c":61:20))
  %v240 = sea.icmp eq, %v235, %v239 : i8 loc(".not2.i45.i.9"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v240, ^bb100, ^bb98(%v236, %v232 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb98(%v241 : !sea.ptr<64>, %v242 : !sea.ptr<64>):
  %v243 = sea.const 1 : i64 loc("_108"("seahorn/lib/bcmp.c":62:16))
  %v244 = sea.ptr.dereferenceable %v242, %v243 : !sea.ptr<64>, i64 loc("_108"("seahorn/lib/bcmp.c":62:16))
  sea.cond_br %v244, ^bb99, ^bb181
^bb99:
  %v245 = sea.const 1 : i64 loc("_110"("seahorn/lib/bcmp.c":62:24))
  %v246 = sea.ptr.dereferenceable %v241, %v245 : !sea.ptr<64>, i64 loc("_110"("seahorn/lib/bcmp.c":62:24))
  sea.cond_br %v246, ^bb114, ^bb181
^bb100:
  %v247 = sea.const 10 : i64 loc("_196"("seahorn/lib/bcmp.c":67:31))
  %v248 = sea.icmp ugt, %v30, %v247 : i64 loc("_196"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v248, ^bb101, ^bb108 loc("seahorn/lib/bcmp.c":67:3)
^bb101:
  %v249 = sea.ptr.index %v39 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_99"("seahorn/lib/bcmp.c":68:9))
  %v250 = sea.const 1 : i64 loc("_100"("seahorn/lib/bcmp.c":68:9))
  %v251 = sea.ptr.dereferenceable %v249, %v250 : !sea.ptr<64>, i64 loc("_100"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v251, ^bb102, ^bb181
^bb102:
  %v252 = sea.load %v41[%v249] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_200"("seahorn/lib/bcmp.c":68:9))
  %v253 = sea.ptr.index %v64 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_201"("seahorn/lib/bcmp.c":68:18))
  %v254 = sea.const 1 : i64 loc("_202"("seahorn/lib/bcmp.c":68:18))
  %v255 = sea.ptr.dereferenceable %v253, %v254 : !sea.ptr<64>, i64 loc("_202"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v255, ^bb103, ^bb181
^bb103:
  %v256 = sea.load %v63[%v253] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_204"("seahorn/lib/bcmp.c":68:18))
  %v257 = sea.icmp eq, %v252, %v256 : i8 loc(".not.i44.i"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v257, ^bb106, ^bb104 loc("seahorn/lib/bcmp.c":68:9)
^bb104:
  %v258 = sea.const 1 : i64 loc("_206"("seahorn/lib/bcmp.c":69:14))
  %v259 = sea.ptr.dereferenceable %v249, %v258 : !sea.ptr<64>, i64 loc("_206"("seahorn/lib/bcmp.c":69:14))
  sea.cond_br %v259, ^bb105, ^bb181
^bb105:
  %v260 = sea.const 1 : i64 loc("_208"("seahorn/lib/bcmp.c":69:22))
  %v261 = sea.ptr.dereferenceable %v253, %v260 : !sea.ptr<64>, i64 loc("_208"("seahorn/lib/bcmp.c":69:22))
  sea.cond_br %v261, ^bb114, ^bb181
^bb106:
  %v262 = sea.const 11 : i64 loc("exitcond57.not"("seahorn/lib/bcmp.c":67:31))
  %v263 = sea.icmp eq, %v30, %v262 : i64 loc("exitcond57.not"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v263, ^bb108, ^bb107 loc("seahorn/lib/bcmp.c":67:3)
^bb107:
  %v264 = sea.ptr.index %v39 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_198"("seahorn/lib/bcmp.c":68:9))
  %v265 = sea.const 1 : i64 loc("_199"("seahorn/lib/bcmp.c":68:9))
  %v266 = sea.ptr.dereferenceable %v264, %v265 : !sea.ptr<64>, i64 loc("_199"("seahorn/lib/bcmp.c":68:9))
  %v267 = sea.const 1 : i1
  %v268 = sea.xor %v266, %v267 : i1
  sea.assume %v268
  sea.br ^bb181
^bb108:
  sea.br ^bb110
^bb109:
  sea.br ^bb110 loc("seahorn/jobs/byte_cursor_eq_byte_buf/aws_byte_cursor_eq_byte_buf_harness.c":31:13)
^bb110:
  %v269 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v270 = sea.ptr.cmp eq, %v39, %v269 : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v271 = sea.xor %v270, %v120 : i1 loc("_210"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v271, ^bb111, ^bb181 loc("seahorn/lib/utils.c":15:3)
^bb111:
  %v272 = sea.and %v94, %v120 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v272, ^bb112, ^bb114 loc("seahorn/lib/utils.c":16:15)
^bb112:
  %v273 = sea.nondet "nd_size_t" [26] : i64 loc("_212"("seahorn/lib/utils.c":17:16))
  %v274 = sea.icmp ult, %v273, %v30 : i64 loc("_213"("seahorn/lib/utils.c":19:14))
  %v275 = sea.const 36028797018963967 : i64 loc("_214"("seahorn/lib/utils.c":19:20))
  %v276 = sea.icmp ult, %v30, %v275 : i64 loc("_214"("seahorn/lib/utils.c":19:20))
  %v277 = sea.and %v276, %v274 : i1 loc("_215"("seahorn/lib/utils.c":19:20))
  sea.assume %v277 loc("seahorn/lib/utils.c":19:5)
  %v278 = sea.ptr.index %v39 [%v273] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_216"("seahorn/lib/utils.c":20:5))
  %v279 = sea.load %v41[%v278] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_217"("seahorn/lib/utils.c":20:5))
  %v280 = sea.ptr.index %v64 [%v273] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_218"("seahorn/lib/utils.c":20:5))
  %v281 = sea.load %v63[%v280] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_219"("seahorn/lib/utils.c":20:5))
  %v282 = sea.icmp eq, %v279, %v281 : i8 loc("_220"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v282, ^bb114, ^bb181 loc("seahorn/lib/utils.c":20:5)
^bb113:
  sea.br ^bb114 loc("seahorn/jobs/byte_cursor_eq_byte_buf/aws_byte_cursor_eq_byte_buf_harness.c":31:13)
^bb114:
  sea.br ^bb115
^bb115:
  %v283 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v71, ^bb121(%v283 : i1), ^bb116 loc("aws-c-common/source/byte_buf.c":66:32)
^bb116:
  sea.br ^bb117
^bb117:
  sea.br ^bb118
^bb118:
  %v284 = sea.ptr.null : !sea.ptr<64> loc(".not2.i24.i"("aws-c-common/source/byte_buf.c":66:55))
  %v285 = sea.ptr.cmp eq, %v39, %v284 : !sea.ptr<64> loc(".not2.i24.i"("aws-c-common/source/byte_buf.c":66:55))
  %v286 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v285, ^bb121(%v286 : i1), ^bb119 loc("aws-c-common/source/byte_buf.c":66:67)
^bb119:
  sea.br ^bb120
^bb120:
  %v287 = sea.const 1 : i1
  sea.br ^bb121(%v287 : i1)
^bb121(%v288 : i1):
  sea.br ^bb122
^bb122:
  sea.cond_br %v71, ^bb127, ^bb123 loc("aws-c-common/source/byte_buf.c":66:32)
^bb123:
  sea.br ^bb124
^bb124:
  %v289 = sea.const 1 : i1 loc("or.cond28.not")
  %v290 = sea.and %v94, %v289 : i1 loc("or.cond28.not")
  sea.cond_br %v290, ^bb125, ^bb181
^bb125:
  sea.br ^bb126
^bb126:
  sea.br ^bb127
^bb127:
  sea.br ^bb128
^bb128:
  sea.cond_br %v53, ^bb135, ^bb129 loc("aws-c-common/source/byte_buf.c":60:33)
^bb129:
  sea.br ^bb130
^bb130:
  sea.br ^bb131
^bb131:
  sea.br ^bb132
^bb132:
  %v291 = sea.icmp ugt, %v44, %v45 : i64 loc(".not2.i13.i"("aws-c-common/source/byte_buf.c":61:44))
  %v292 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v291, ^bb140(%v292 : i1), ^bb133 loc("aws-c-common/source/byte_buf.c":61:61)
^bb133:
  sea.br ^bb134
^bb134:
  sea.br ^bb140(%v120 : i1)
^bb135:
  sea.br ^bb136
^bb136:
  %v293 = sea.const 0 : i64 loc("_236"("aws-c-common/source/byte_buf.c":60:45))
  %v294 = sea.icmp eq, %v44, %v293 : i64 loc("_236"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v294, ^bb137, ^bb139 loc("aws-c-common/source/byte_buf.c":60:50)
^bb137:
  sea.br ^bb138
^bb138:
  %v295 = sea.ptr.null : !sea.ptr<64> loc("_239"("aws-c-common/source/byte_buf.c":60:65))
  %v296 = sea.ptr.cmp eq, %v64, %v295 : !sea.ptr<64> loc("_239"("aws-c-common/source/byte_buf.c":60:65))
  %v297 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v296, ^bb140(%v297 : i1), ^bb139 loc("aws-c-common/source/byte_buf.c":60:74)
^bb139:
  %v298 = sea.const 0 : i1
  sea.br ^bb140(%v298 : i1)
^bb140(%v299 : i1):
  sea.br ^bb141
^bb141:
  sea.cond_br %v53, ^bb147, ^bb142 loc("aws-c-common/source/byte_buf.c":60:33)
^bb142:
  sea.br ^bb143
^bb143:
  sea.br ^bb144
^bb144:
  %v300 = sea.const 1 : i1 loc("or.cond32.not")
  %v301 = sea.const 0 : i1 loc("or.cond32.not")
  %v302 = sea.select %v300, %v46, %v301 : i1 loc("or.cond32.not")
  sea.cond_br %v302, ^bb145, ^bb181
^bb145:
  sea.br ^bb146
^bb146:
  %v303 = sea.const 1 : i1 loc("or.cond16")
  %v304 = sea.and %v120, %v303 : i1 loc("or.cond16")
  sea.cond_br %v304, ^bb152, ^bb181
^bb147:
  sea.br ^bb148
^bb148:
  %v305 = sea.const 0 : i64 loc("_249"("aws-c-common/source/byte_buf.c":60:45))
  %v306 = sea.icmp eq, %v44, %v305 : i64 loc("_249"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v306, ^bb149, ^bb151 loc("aws-c-common/source/byte_buf.c":60:50)
^bb149:
  sea.br ^bb150
^bb150:
  %v307 = sea.ptr.null : !sea.ptr<64> loc("_252"("aws-c-common/source/byte_buf.c":60:65))
  %v308 = sea.ptr.cmp eq, %v64, %v307 : !sea.ptr<64> loc("_252"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v308, ^bb152, ^bb151 loc("aws-c-common/source/byte_buf.c":60:74)
^bb151:
  sea.br ^bb181
^bb152:
  sea.cond_br %v71, ^bb160, ^bb153 loc("seahorn/jobs/byte_cursor_eq_byte_buf/aws_byte_cursor_eq_byte_buf_harness.c":39:9)
^bb153:
  %v309 = sea.ptr.null : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v310 = sea.ptr.cmp eq, %v39, %v309 : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  sea.cond_br %v310, ^bb160, ^bb154 loc("seahorn/lib/utils.c":39:14)
^bb154:
  sea.br ^bb155
^bb155:
  %v311 = sea.ptr.index %v39 [%v89] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_261"("seahorn/lib/utils.c":40:5))
  %v312 = sea.const 1 : i64 loc("_262"("seahorn/lib/utils.c":40:5))
  %v313 = sea.ptr.dereferenceable %v311, %v312 : !sea.ptr<64>, i64 loc("_262"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v313, ^bb156, ^bb181
^bb156:
  %v314 = sea.load %v41[%v311] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_264"("seahorn/lib/utils.c":40:5))
  sea.br ^bb157
^bb157:
  %v315 = sea.icmp eq, %v314, %v106 : i8 loc("_266"("seahorn/lib/utils.c":40:5))
  sea.br ^bb158
^bb158:
  %v316 = sea.const 1 : i64 loc("_268"("seahorn/lib/utils.c":40:5))
  %v317 = sea.ptr.dereferenceable %v311, %v316 : !sea.ptr<64>, i64 loc("_268"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v317, ^bb159, ^bb181
^bb159:
  %v318 = sea.const 1 : i1 loc("or.cond18")
  %v319 = sea.const 0 : i1 loc("or.cond18")
  %v320 = sea.select %v318, %v315, %v319 : i1 loc("or.cond18")
  sea.cond_br %v320, ^bb160, ^bb181
^bb160:
  sea.br ^bb161
^bb161:
  sea.br ^bb162
^bb162:
  sea.br ^bb163
^bb163:
  sea.br ^bb164
^bb164:
  sea.br ^bb165
^bb165:
  sea.br ^bb166
^bb166:
  sea.br ^bb167
^bb167:
  sea.br ^bb168
^bb168:
  sea.br ^bb169
^bb169:
  sea.br ^bb170
^bb170:
  sea.br ^bb171
^bb171:
  sea.br ^bb172
^bb172:
  sea.br ^bb173
^bb173:
  %v321 = sea.const 0 : i64 loc(".not.i42.i"("seahorn/lib/utils.c":86:16))
  %v322 = sea.icmp eq, %v44, %v321 : i64 loc(".not.i42.i"("seahorn/lib/utils.c":86:16))
  %v323 = sea.const 1 : i1 loc("seahorn/lib/utils.c":86:7)
  %v324 = sea.xor %v322, %v323 : i1 loc("seahorn/lib/utils.c":86:7)
  sea.assume %v324 loc("seahorn/lib/utils.c":86:7)
  sea.br ^bb174
^bb174:
  sea.assume %v120 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb175
^bb175:
  %v325 = sea.ptr.index %v64 [%v115] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_285"("seahorn/lib/utils.c":40:5))
  %v326 = sea.const 1 : i64 loc("_286"("seahorn/lib/utils.c":40:5))
  %v327 = sea.ptr.dereferenceable %v325, %v326 : !sea.ptr<64>, i64 loc("_286"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v327, ^bb176, ^bb181
^bb176:
  %v328 = sea.load %v63[%v325] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_288"("seahorn/lib/utils.c":40:5))
  sea.br ^bb177
^bb177:
  %v329 = sea.icmp eq, %v328, %v132 : i8 loc("_290"("seahorn/lib/utils.c":40:5))
  sea.br ^bb178
^bb178:
  %v330 = sea.const 1 : i64 loc("_292"("seahorn/lib/utils.c":40:5))
  %v331 = sea.ptr.dereferenceable %v325, %v330 : !sea.ptr<64>, i64 loc("_292"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v331, ^bb179, ^bb181
^bb179:
  sea.br ^bb180
^bb180:
  %v332 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v333 = sea.xor %v329, %v332 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v333 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb181 loc("seahorn/lib/utils.c":40:5)
^bb181:
  sea.br ^bb182
^bb182:
  %v334 = sea.const 0 : i1
  sea.assert %v334
  sea.halt
}
