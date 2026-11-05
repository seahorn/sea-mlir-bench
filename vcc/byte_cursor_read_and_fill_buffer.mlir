// Exported from SeaHorn (byte_cursor_read_and_fill_buffer.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm26")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm27")
  %v2 = sea.mem.nondet "region.32" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm28")
  %v3 = sea.mem.nondet "region.64" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm29")
  %v4 = sea.mem.nondet "region.73" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm30")
  %v5 = sea.mem.nondet "region.82" [5] : !sea.mem<!sea.ptr<64>, i8> loc("sm31")
  %v6 = sea.const 16 : i64 loc("_0")
  %v7 = sea.alloca %v6 align 8 [6] : i64 -> !sea.ptr<64> loc("_0")
  %v8 = sea.const 32 : i64 loc("_1")
  %v9 = sea.alloca %v8 align 8 [7] : i64 -> !sea.ptr<64> loc("_1")
  %v10 = sea.const 16 : i64 loc("_2")
  %v11 = sea.alloca %v10 align 8 [8] : i64 -> !sea.ptr<64> loc("_2")
  %v12 = sea.const 16 : i64 loc("_3")
  %v13 = sea.alloca %v12 align 8 [9] : i64 -> !sea.ptr<64> loc("_3")
  %v14 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v15 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v16 = sea.store %v0[%v14], %v15 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v17 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_4")
  %v18 = sea.ptr.index %v17 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_4")
  %v19 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v20 = sea.store %v16[%v18], %v19 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v21 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_5")
  %v22 = sea.ptr.index %v21 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_5")
  %v23 = sea.const 0 : i8
  %v24 = sea.const 24 : i64
  %v25 = sea.memset %v20[%v22], %v23, %v24 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v26 = sea.nondet "nd_size_t" [10] : i64 loc("_6"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb1
^bb1:
  %v27 = sea.store %v1[%v7], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb2
^bb2:
  %v28 = sea.const 11 : i64 loc("_9"("seahorn/lib/byte_buf_helper.c":33:24))
  %v29 = sea.icmp ult, %v26, %v28 : i64 loc("_9"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v29 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v30 = sea.nondet "nd_malloc_is_fail" [11] : i1 loc("_10"("seahorn/lib/sea_allocators.c":11:10))
  %v31 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v30, ^bb4(%v5, %v31 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/sea_allocators.c":11:10)
^bb3:
  %v32 = sea.const 10 : i64 loc("malloc.i6")
  %v33 = sea.alloca %v32 align 16 [12] : i64 -> !sea.ptr<64> loc("malloc.i6")
  sea.br ^bb4(%v5, %v33 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb4(%v34 : !sea.mem<!sea.ptr<64>, i8>, %v35 : !sea.ptr<64>):
  %v36 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v37 = sea.memhavoc %v34[%v35], %v36 [13] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v38 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_12"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb5
^bb5:
  %v39 = sea.store %v27[%v38], %v35 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  %v40 = sea.nondet "nd_size_t" [14] : i64 loc("_13"("seahorn/lib/byte_buf_helper.c":19:18))
  %v41 = sea.nondet "nd_size_t" [15] : i64 loc("_14"("seahorn/lib/byte_buf_helper.c":20:18))
  %v42 = sea.icmp ule, %v40, %v41 : i64 loc("_15"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v42 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v43 = sea.const 11 : i64 loc("_16"("seahorn/lib/byte_buf_helper.c":22:16))
  %v44 = sea.icmp ult, %v41, %v43 : i64 loc("_16"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v44 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb6
^bb6:
  %v45 = sea.store %v2[%v9], %v40 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v46 = sea.ptr.index %v9 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_18"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb7
^bb7:
  %v47 = sea.store %v45[%v46], %v41 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v48 = sea.const 0 : i64 loc("_20"("seahorn/lib/proof_allocators.c":21:15))
  %v49 = sea.icmp eq, %v41, %v48 : i64 loc("_20"("seahorn/lib/proof_allocators.c":21:15))
  %v50 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v49, ^bb11(%v37, %v50 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb8 loc("seahorn/lib/proof_allocators.c":21:10)
^bb8:
  %v51 = sea.nondet "nd_malloc_is_fail" [16] : i1 loc("_22"("seahorn/lib/sea_allocators.c":11:10))
  %v52 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v51, ^bb10(%v37, %v52 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb9 loc("seahorn/lib/sea_allocators.c":11:10)
^bb9:
  %v53 = sea.const 1 : i64 loc("malloc62.i")
  %v54 = sea.mul %v41, %v53 : i64 loc("malloc62.i")
  %v55 = sea.alloca %v54 align 16 [17] : i64 -> !sea.ptr<64> loc("malloc62.i")
  sea.br ^bb10(%v37, %v55 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb10(%v56 : !sea.mem<!sea.ptr<64>, i8>, %v57 : !sea.ptr<64>):
  %v58 = sea.memhavoc %v56[%v57], %v41 [18] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb11(%v58, %v57 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb11(%v59 : !sea.mem<!sea.ptr<64>, i8>, %v60 : !sea.ptr<64>):
  %v61 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_26"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb12
^bb12:
  %v62 = sea.store %v47[%v61], %v60 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v63 = sea.ptr.index %v9 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_28"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb13
^bb13:
  %v64 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v65 = sea.store %v62[%v63], %v64 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  sea.br ^bb14
^bb14:
  %v66 = sea.const 0 : i64 loc("_30"("aws-c-common/source/byte_buf.c":66:26))
  %v67 = sea.icmp eq, %v26, %v66 : i64 loc("_30"("aws-c-common/source/byte_buf.c":66:26))
  %v68 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v67, ^bb20(%v68 : i1), ^bb15 loc("aws-c-common/source/byte_buf.c":66:32)
^bb15:
  sea.br ^bb16
^bb16:
  sea.br ^bb17
^bb17:
  %v69 = sea.ptr.null : !sea.ptr<64> loc(".not2.i46.i"("aws-c-common/source/byte_buf.c":66:55))
  %v70 = sea.ptr.cmp eq, %v35, %v69 : !sea.ptr<64> loc(".not2.i46.i"("aws-c-common/source/byte_buf.c":66:55))
  %v71 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v70, ^bb20(%v71 : i1), ^bb18 loc("aws-c-common/source/byte_buf.c":66:67)
^bb18:
  sea.br ^bb19
^bb19:
  %v72 = sea.const 1 : i1
  sea.br ^bb20(%v72 : i1)
^bb20(%v73 : i1):
  sea.assume %v73 loc("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":19:5)
  sea.br ^bb21
^bb21:
  sea.cond_br %v49, ^bb29, ^bb22 loc("aws-c-common/source/byte_buf.c":60:33)
^bb22:
  sea.br ^bb23
^bb23:
  sea.br ^bb24
^bb24:
  sea.br ^bb25
^bb25:
  %v74 = sea.icmp ugt, %v40, %v41 : i64 loc(".not2.i35.i"("aws-c-common/source/byte_buf.c":61:44))
  %v75 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v74, ^bb34(%v75 : i1), ^bb26 loc("aws-c-common/source/byte_buf.c":61:61)
^bb26:
  sea.br ^bb27
^bb27:
  sea.br ^bb28
^bb28:
  %v76 = sea.ptr.null : !sea.ptr<64> loc("_50"("aws-c-common/source/byte_buf.c":61:64))
  %v77 = sea.ptr.cmp ne, %v60, %v76 : !sea.ptr<64> loc("_50"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb34(%v77 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb29:
  sea.br ^bb30
^bb30:
  %v78 = sea.const 0 : i64 loc("_40"("aws-c-common/source/byte_buf.c":60:45))
  %v79 = sea.icmp eq, %v40, %v78 : i64 loc("_40"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v79, ^bb31, ^bb33 loc("aws-c-common/source/byte_buf.c":60:50)
^bb31:
  sea.br ^bb32
^bb32:
  %v80 = sea.ptr.null : !sea.ptr<64> loc("_43"("aws-c-common/source/byte_buf.c":60:65))
  %v81 = sea.ptr.cmp eq, %v60, %v80 : !sea.ptr<64> loc("_43"("aws-c-common/source/byte_buf.c":60:65))
  %v82 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v81, ^bb34(%v82 : i1), ^bb33 loc("aws-c-common/source/byte_buf.c":60:74)
^bb33:
  %v83 = sea.const 0 : i1
  sea.br ^bb34(%v83 : i1)
^bb34(%v84 : i1):
  sea.assume %v84 loc("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":20:5)
  %v85 = sea.nondet "nd_size_t" [19] : i64 loc("_52"("seahorn/lib/utils.c":46:20))
  sea.br ^bb35
^bb35:
  %v86 = sea.store %v3[%v11], %v85 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v87 = sea.const 0 : i64 loc("_54"("seahorn/lib/utils.c":47:12))
  %v88 = sea.icmp ne, %v26, %v87 : i64 loc("_54"("seahorn/lib/utils.c":47:12))
  %v89 = sea.ptr.null : !sea.ptr<64> loc("_55")
  %v90 = sea.ptr.cmp ne, %v35, %v89 : !sea.ptr<64> loc("_55")
  %v91 = sea.and %v88, %v90 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v91, ^bb38, ^bb36 loc("seahorn/lib/utils.c":47:16)
^bb36:
  %v92 = sea.nondet "nd_uint8_t" [20] : i8 loc("_67"("seahorn/lib/utils.c":51:21))
  %v93 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_68"("seahorn/lib/utils.c":51:14))
  sea.br ^bb37
^bb37:
  %v94 = sea.store %v86[%v93], %v92 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb43(%v94 : !sea.mem<!sea.ptr<64>, i8>)
^bb38:
  sea.br ^bb39
^bb39:
  %v95 = sea.icmp ult, %v85, %v26 : i64 loc("_58"("seahorn/lib/utils.c":48:27))
  sea.assume %v95 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb40
^bb40:
  %v96 = sea.ptr.index %v35 [%v85] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_60"("seahorn/lib/utils.c":49:21))
  %v97 = sea.const 1 : i64 loc("_61"("seahorn/lib/utils.c":49:21))
  %v98 = sea.ptr.dereferenceable %v96, %v97 : !sea.ptr<64>, i64 loc("_61"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v98, ^bb41, ^bb130
^bb41:
  %v99 = sea.load %v59[%v96] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_63"("seahorn/lib/utils.c":49:21))
  %v100 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_64"("seahorn/lib/utils.c":49:14))
  sea.br ^bb42
^bb42:
  %v101 = sea.store %v86[%v100], %v99 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb43(%v101 : !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/lib/utils.c":50:3)
^bb43(%v102 : !sea.mem<!sea.ptr<64>, i8>):
  %v103 = sea.nondet "nd_size_t" [21] : i64 loc("_70"("seahorn/lib/utils.c":46:20))
  sea.br ^bb44
^bb44:
  %v104 = sea.store %v4[%v13], %v103 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v105 = sea.const 0 : i64 loc("_72"("seahorn/lib/utils.c":47:12))
  %v106 = sea.icmp ne, %v40, %v105 : i64 loc("_72"("seahorn/lib/utils.c":47:12))
  %v107 = sea.ptr.null : !sea.ptr<64> loc("_73")
  %v108 = sea.ptr.cmp ne, %v60, %v107 : !sea.ptr<64> loc("_73")
  %v109 = sea.and %v106, %v108 : i1 loc("or.cond.i55.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v109, ^bb47, ^bb45 loc("seahorn/lib/utils.c":47:16)
^bb45:
  %v110 = sea.nondet "nd_uint8_t" [22] : i8 loc("_85"("seahorn/lib/utils.c":51:21))
  %v111 = sea.ptr.index %v13 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_86"("seahorn/lib/utils.c":51:14))
  sea.br ^bb46
^bb46:
  %v112 = sea.store %v104[%v111], %v110 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb52
^bb47:
  sea.br ^bb48
^bb48:
  %v113 = sea.icmp ult, %v103, %v40 : i64 loc("_76"("seahorn/lib/utils.c":48:27))
  sea.assume %v113 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb49
^bb49:
  %v114 = sea.ptr.index %v60 [%v103] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_78"("seahorn/lib/utils.c":49:21))
  %v115 = sea.const 1 : i64 loc("_79"("seahorn/lib/utils.c":49:21))
  %v116 = sea.ptr.dereferenceable %v114, %v115 : !sea.ptr<64>, i64 loc("_79"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v116, ^bb50, ^bb130
^bb50:
  %v117 = sea.load %v59[%v114] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_81"("seahorn/lib/utils.c":49:21))
  %v118 = sea.ptr.index %v13 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_82"("seahorn/lib/utils.c":49:14))
  sea.br ^bb51
^bb51:
  %v119 = sea.store %v104[%v118], %v117 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb52 loc("seahorn/lib/utils.c":50:3)
^bb52:
  sea.br ^bb53
^bb53:
  sea.br ^bb54
^bb54:
  sea.cond_br %v49, ^bb74(%v59, %v39 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>), ^bb55 loc("aws-c-common/source/byte_buf.c":1163:9)
^bb55:
  sea.br ^bb56
^bb56:
  %v120 = sea.icmp uge, %v26, %v41 : i64 loc("_92"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:13))
  %v121 = sea.const 18446744073709551615 : i64 loc("_93")
  %v122 = sea.icmp sgt, %v41, %v121 : i64 loc("_93")
  %v123 = sea.and %v120, %v122 : i1 loc("or.cond.i60.i"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:28))
  sea.cond_br %v123, ^bb57, ^bb80(%v59, %v65, %v39, %v40 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64) loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:28)
^bb57:
  sea.br ^bb58
^bb58:
  %v124 = sea.const 18446744073709551615 : i64 loc("_96"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:69))
  %v125 = sea.icmp sgt, %v26, %v124 : i64 loc("_96"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:69))
  sea.cond_br %v125, ^bb59, ^bb80(%v59, %v65, %v39, %v40 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64) loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:9)
^bb59:
  sea.br ^bb60
^bb60:
  %v126 = sea.const 1 : i64 loc("_99"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":26:59))
  %v127 = sea.add %v26, %v126 nuw : i64 loc("_99"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":26:59))
  %v128 = sea.sub %v26, %v41 : i64 loc("_101"("aws-c-common/source/byte_buf.c":1050:40))
  %v129 = sea.or %v127, %v128 : i64 loc("_102"("aws-c-common/source/byte_buf.c":1051:42))
  %v130 = sea.or %v129, %v41 : i64 loc("_103"("aws-c-common/source/byte_buf.c":1051:42))
  %v131 = sea.const 18446744073709551615 : i64 loc("_104"("aws-c-common/source/byte_buf.c":1064:38))
  %v132 = sea.icmp sgt, %v130, %v131 : i64 loc("_104"("aws-c-common/source/byte_buf.c":1064:38))
  %v133 = sea.sext %v132 : i1 to i64 loc(".neg.i.i.i"("aws-c-common/source/byte_buf.c":1064:38))
  %v134 = sea.and %v41, %v133 : i64 loc("_105"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":29:19))
  %v135 = sea.ptr.null : !sea.ptr<64> loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":33:23)
  sea.cond_br %v132, ^bb61, ^bb62(%v135 : !sea.ptr<64>) loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":33:23)
^bb61:
  sea.br ^bb62(%v35 : !sea.ptr<64>)
^bb62(%v136 : !sea.ptr<64>):
  sea.br ^bb63
^bb63:
  sea.br ^bb64
^bb64:
  sea.br ^bb65
^bb65:
  %v137 = sea.and %v26, %v133 : i64 loc("_112"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":35:35))
  sea.br ^bb66
^bb66:
  sea.br ^bb67
^bb67:
  sea.br ^bb68
^bb68:
  %v138 = sea.ptr.index %v136 [%v134] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_116"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":41:21))
  %v139 = sea.store %v39[%v38], %v138 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":41:21)
  sea.br ^bb69
^bb69:
  sea.br ^bb70
^bb70:
  %v140 = sea.sub %v137, %v134 nsw : i64 loc("_118"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":42:21))
  %v141 = sea.store %v139[%v7], %v140 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":42:21)
  %v142 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i.i.not"("aws-c-common/source/byte_buf.c":1169:9))
  %v143 = sea.ptr.cmp eq, %v136, %v142 : !sea.ptr<64> loc(".not.i.i.i.not"("aws-c-common/source/byte_buf.c":1169:9))
  sea.cond_br %v143, ^bb80(%v59, %v65, %v141, %v40 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64), ^bb71 loc("aws-c-common/source/byte_buf.c":1169:9)
^bb71:
  %v144 = sea.ptr.dereferenceable %v60, %v41 : !sea.ptr<64>, i64 loc("_120"("seahorn/lib/bcmp.c":161:3))
  %v145 = sea.ptr.dereferenceable %v60, %v41 : !sea.ptr<64>, i64 loc("_121"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v145, ^bb72, ^bb130 loc("seahorn/lib/bcmp.c":161:3)
^bb72:
  %v146 = sea.ptr.dereferenceable %v136, %v41 : !sea.ptr<64>, i64 loc("_123"("seahorn/lib/bcmp.c":162:3))
  %v147 = sea.ptr.dereferenceable %v136, %v41 : !sea.ptr<64>, i64 loc("_124"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v147, ^bb73, ^bb130 loc("seahorn/lib/bcmp.c":162:3)
^bb73:
  %v148 = sea.memmove %v59[%v60], %v59[%v136], %v41 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb74(%v148, %v141 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":1173:9)
^bb74(%v149 : !sea.mem<!sea.ptr<64>, i8>, %v150 : !sea.mem<!sea.ptr<64>, i8>):
  sea.br ^bb75
^bb75:
  sea.br ^bb76
^bb76:
  %v151 = sea.store %v65[%v9], %v41 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":1192:19)
  %v152 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v153 = sea.ptr.cmp eq, %v35, %v152 : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v154 = sea.xor %v153, %v108 : i1 loc("_128"("seahorn/lib/utils.c":15:3))
  %v155 = sea.or %v49, %v154 : i1 loc("_129"("seahorn/lib/utils.c":15:3))
  %v156 = sea.const 0 : i64 loc("seahorn/lib/utils.c":15:3)
  sea.cond_br %v49, ^bb80(%v149, %v151, %v150, %v156 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64), ^bb77 loc("seahorn/lib/utils.c":15:3)
^bb77:
  sea.cond_br %v154, ^bb78, ^bb130 loc("seahorn/lib/utils.c":15:3)
^bb78:
  %v157 = sea.and %v90, %v108 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v157, ^bb79, ^bb80(%v149, %v151, %v150, %v41 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64) loc("seahorn/lib/utils.c":16:15)
^bb79:
  %v158 = sea.nondet "nd_size_t" [23] : i64 loc("_132"("seahorn/lib/utils.c":17:16))
  %v159 = sea.icmp ult, %v158, %v41 : i64 loc("_133"("seahorn/lib/utils.c":19:14))
  %v160 = sea.const 36028797018963967 : i64 loc("_134"("seahorn/lib/utils.c":19:20))
  %v161 = sea.icmp ult, %v41, %v160 : i64 loc("_134"("seahorn/lib/utils.c":19:20))
  %v162 = sea.and %v161, %v159 : i1 loc("_135"("seahorn/lib/utils.c":19:20))
  sea.assume %v162 loc("seahorn/lib/utils.c":19:5)
  %v163 = sea.ptr.index %v35 [%v158] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_136"("seahorn/lib/utils.c":20:5))
  %v164 = sea.load %v149[%v163] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_137"("seahorn/lib/utils.c":20:5))
  %v165 = sea.ptr.index %v60 [%v158] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_138"("seahorn/lib/utils.c":20:5))
  %v166 = sea.load %v149[%v165] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_139"("seahorn/lib/utils.c":20:5))
  %v167 = sea.icmp eq, %v164, %v166 : i8 loc("_140"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v167, ^bb80(%v149, %v151, %v150, %v41 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64), ^bb130 loc("seahorn/lib/utils.c":20:5)
^bb80(%v168 : !sea.mem<!sea.ptr<64>, i8>, %v169 : !sea.mem<!sea.ptr<64>, i8>, %v170 : !sea.mem<!sea.ptr<64>, i8>, %v171 : i64):
  sea.br ^bb81
^bb81:
  %v172 = sea.load %v170[%v7] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_143"("aws-c-common/source/byte_buf.c":66:22))
  %v173 = sea.const 0 : i64 loc("_144"("aws-c-common/source/byte_buf.c":66:26))
  %v174 = sea.icmp eq, %v172, %v173 : i64 loc("_144"("aws-c-common/source/byte_buf.c":66:26))
  %v175 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v174, ^bb87(%v175 : i1), ^bb82 loc("aws-c-common/source/byte_buf.c":66:32)
^bb82:
  sea.br ^bb83
^bb83:
  sea.br ^bb84
^bb84:
  %v176 = sea.load %v170[%v38] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_148"("aws-c-common/source/byte_buf.c":66:63))
  %v177 = sea.ptr.null : !sea.ptr<64> loc(".not2.i42.i"("aws-c-common/source/byte_buf.c":66:55))
  %v178 = sea.ptr.cmp eq, %v176, %v177 : !sea.ptr<64> loc(".not2.i42.i"("aws-c-common/source/byte_buf.c":66:55))
  %v179 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v178, ^bb87(%v179 : i1), ^bb85 loc("aws-c-common/source/byte_buf.c":66:67)
^bb85:
  sea.br ^bb86
^bb86:
  %v180 = sea.const 1 : i1
  sea.br ^bb87(%v180 : i1)
^bb87(%v181 : i1):
  sea.br ^bb88
^bb88:
  sea.cond_br %v174, ^bb93, ^bb89 loc("aws-c-common/source/byte_buf.c":66:32)
^bb89:
  sea.br ^bb90
^bb90:
  %v182 = sea.load %v170[%v38] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_155")
  %v183 = sea.ptr.null : !sea.ptr<64> loc(".not2.i39.i")
  %v184 = sea.ptr.cmp ne, %v182, %v183 : !sea.ptr<64> loc(".not2.i39.i")
  %v185 = sea.const 1 : i1 loc("or.cond15.not")
  %v186 = sea.const 0 : i1 loc("or.cond15.not")
  %v187 = sea.select %v185, %v184, %v186 : i1 loc("or.cond15.not")
  sea.cond_br %v187, ^bb91, ^bb130
^bb91:
  sea.br ^bb92
^bb92:
  sea.br ^bb93
^bb93:
  sea.br ^bb94
^bb94:
  %v188 = sea.load %v169[%v46] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_159"("aws-c-common/source/byte_buf.c":60:19))
  %v189 = sea.const 0 : i64 loc(".not"("aws-c-common/source/byte_buf.c":60:28))
  %v190 = sea.icmp eq, %v188, %v189 : i64 loc(".not"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v190, ^bb102, ^bb95 loc("aws-c-common/source/byte_buf.c":60:33)
^bb95:
  sea.br ^bb96
^bb96:
  sea.br ^bb97
^bb97:
  sea.br ^bb98
^bb98:
  %v191 = sea.icmp ugt, %v171, %v188 : i64 loc(".not2.i31.i"("aws-c-common/source/byte_buf.c":61:44))
  %v192 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v191, ^bb107(%v192 : i1), ^bb99 loc("aws-c-common/source/byte_buf.c":61:61)
^bb99:
  sea.br ^bb100
^bb100:
  sea.br ^bb101
^bb101:
  %v193 = sea.load %v169[%v61] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_173"("aws-c-common/source/byte_buf.c":61:64))
  %v194 = sea.ptr.null : !sea.ptr<64> loc("_174"("aws-c-common/source/byte_buf.c":61:64))
  %v195 = sea.ptr.cmp ne, %v193, %v194 : !sea.ptr<64> loc("_174"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb107(%v195 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb102:
  sea.br ^bb103
^bb103:
  %v196 = sea.const 0 : i64 loc("_162"("aws-c-common/source/byte_buf.c":60:45))
  %v197 = sea.icmp eq, %v171, %v196 : i64 loc("_162"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v197, ^bb104, ^bb106 loc("aws-c-common/source/byte_buf.c":60:50)
^bb104:
  sea.br ^bb105
^bb105:
  %v198 = sea.load %v169[%v61] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_165"("aws-c-common/source/byte_buf.c":60:58))
  %v199 = sea.ptr.null : !sea.ptr<64> loc("_166"("aws-c-common/source/byte_buf.c":60:65))
  %v200 = sea.ptr.cmp eq, %v198, %v199 : !sea.ptr<64> loc("_166"("aws-c-common/source/byte_buf.c":60:65))
  %v201 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v200, ^bb107(%v201 : i1), ^bb106 loc("aws-c-common/source/byte_buf.c":60:74)
^bb106:
  %v202 = sea.const 0 : i1
  sea.br ^bb107(%v202 : i1)
^bb107(%v203 : i1):
  sea.br ^bb108
^bb108:
  sea.cond_br %v190, ^bb114, ^bb109 loc("aws-c-common/source/byte_buf.c":60:33)
^bb109:
  sea.br ^bb110
^bb110:
  sea.br ^bb111
^bb111:
  %v204 = sea.icmp ule, %v171, %v188 : i64 loc(".not2.i.i")
  %v205 = sea.const 1 : i1 loc("or.cond19.not")
  %v206 = sea.const 0 : i1 loc("or.cond19.not")
  %v207 = sea.select %v205, %v204, %v206 : i1 loc("or.cond19.not")
  sea.cond_br %v207, ^bb112, ^bb130
^bb112:
  sea.br ^bb113
^bb113:
  %v208 = sea.load %v169[%v61] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_189")
  %v209 = sea.ptr.null : !sea.ptr<64> loc("_190")
  %v210 = sea.ptr.cmp ne, %v208, %v209 : !sea.ptr<64> loc("_190")
  %v211 = sea.const 1 : i1 loc("or.cond12")
  %v212 = sea.const 0 : i1 loc("or.cond12")
  %v213 = sea.select %v211, %v210, %v212 : i1 loc("or.cond12")
  sea.cond_br %v213, ^bb119, ^bb130
^bb114:
  sea.br ^bb115
^bb115:
  %v214 = sea.const 0 : i64 loc("_179"("aws-c-common/source/byte_buf.c":60:45))
  %v215 = sea.icmp eq, %v171, %v214 : i64 loc("_179"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v215, ^bb116, ^bb118 loc("aws-c-common/source/byte_buf.c":60:50)
^bb116:
  sea.br ^bb117
^bb117:
  %v216 = sea.load %v169[%v61] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_182"("aws-c-common/source/byte_buf.c":60:58))
  %v217 = sea.ptr.null : !sea.ptr<64> loc("_183"("aws-c-common/source/byte_buf.c":60:65))
  %v218 = sea.ptr.cmp eq, %v216, %v217 : !sea.ptr<64> loc("_183"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v218, ^bb119, ^bb118 loc("aws-c-common/source/byte_buf.c":60:74)
^bb118:
  sea.br ^bb130
^bb119:
  %v219 = sea.load %v169[%v63] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_191"("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":39:5))
  %v220 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_192"("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":39:5))
  %v221 = sea.ptr.cmp eq, %v219, %v220 : !sea.ptr<64> loc("_192"("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":39:5))
  sea.cond_br %v221, ^bb120, ^bb130 loc("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":39:5)
^bb120:
  %v222 = sea.const 0 : i64 loc("_194"("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":43:21))
  %v223 = sea.icmp slt, %v26, %v222 : i64 loc("_194"("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":43:21))
  %v224 = sea.const 0 : i64 loc("_195")
  %v225 = sea.icmp slt, %v41, %v224 : i64 loc("_195")
  %v226 = sea.const 1 : i1 loc("or.cond.i"("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":43:39))
  %v227 = sea.select %v223, %v226, %v225 : i1 loc("or.cond.i"("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":43:39))
  %v228 = sea.icmp ugt, %v41, %v26 : i64 loc("_196")
  %v229 = sea.const 1 : i1 loc("or.cond28.i"("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":43:39))
  %v230 = sea.select %v227, %v229, %v228 : i1 loc("or.cond28.i"("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":43:39))
  sea.cond_br %v230, ^bb123, ^bb121 loc("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":43:39)
^bb121:
  %v231 = sea.load %v170[%v38] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_215"("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":48:9))
  %v232 = sea.ptr.index %v35 [%v41] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_216"("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":48:9))
  %v233 = sea.ptr.cmp eq, %v231, %v232 : !sea.ptr<64> loc("_217"("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":48:9))
  sea.cond_br %v233, ^bb122, ^bb130 loc("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":48:9)
^bb122:
  %v234 = sea.sub %v26, %v41 nsw : i64 loc("_219"("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":49:9))
  %v235 = sea.icmp eq, %v172, %v234 : i64 loc("_220"("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":49:9))
  %v236 = sea.const 1 : i1 loc("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":49:9)
  %v237 = sea.xor %v235, %v236 : i1 loc("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":49:9)
  sea.assume %v237 loc("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":49:9)
  sea.br ^bb130 loc("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":49:9)
^bb123:
  %v238 = sea.const 1 : i1 loc("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":44:13)
  %v239 = sea.xor %v67, %v238 : i1 loc("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":44:13)
  sea.assume %v239 loc("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":44:13)
  %v240 = sea.load %v170[%v38] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_198"("seahorn/jobs/byte_cursor_read_and_fill_buffer/aws_byte_cursor_read_and_fill_buffer_harness.c":45:49))
  %v241 = sea.ptr.null : !sea.ptr<64> loc("_199"("seahorn/lib/utils.c":39:7))
  %v242 = sea.ptr.cmp ne, %v240, %v241 : !sea.ptr<64> loc("_199"("seahorn/lib/utils.c":39:7))
  sea.assume %v242 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb124
^bb124:
  %v243 = sea.load %v102[%v11] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_201"("seahorn/lib/utils.c":40:5))
  %v244 = sea.ptr.index %v240 [%v243] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_202"("seahorn/lib/utils.c":40:5))
  %v245 = sea.const 1 : i64 loc("_203"("seahorn/lib/utils.c":40:5))
  %v246 = sea.ptr.dereferenceable %v244, %v245 : !sea.ptr<64>, i64 loc("_203"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v246, ^bb125, ^bb130
^bb125:
  %v247 = sea.load %v168[%v244] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_205"("seahorn/lib/utils.c":40:5))
  %v248 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_206"("seahorn/lib/utils.c":40:5))
  sea.br ^bb126
^bb126:
  %v249 = sea.load %v102[%v248] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_208"("seahorn/lib/utils.c":40:5))
  %v250 = sea.icmp eq, %v247, %v249 : i8 loc("_209"("seahorn/lib/utils.c":40:5))
  sea.br ^bb127
^bb127:
  %v251 = sea.const 1 : i64 loc("_211"("seahorn/lib/utils.c":40:5))
  %v252 = sea.ptr.dereferenceable %v244, %v251 : !sea.ptr<64>, i64 loc("_211"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v252, ^bb128, ^bb130
^bb128:
  sea.br ^bb129
^bb129:
  %v253 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v254 = sea.xor %v250, %v253 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v254 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb130 loc("seahorn/lib/utils.c":40:5)
^bb130:
  sea.br ^bb131
^bb131:
  %v255 = sea.const 0 : i1
  sea.assert %v255
  sea.halt
}
