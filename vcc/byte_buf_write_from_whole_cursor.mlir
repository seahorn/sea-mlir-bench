// Exported from SeaHorn (byte_buf_write_from_whole_cursor.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm31")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm32")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm33")
  %v3 = sea.mem.nondet "region.64" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm34")
  %v4 = sea.mem.nondet "region.96" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm35")
  %v5 = sea.mem.nondet "region.105" [5] : !sea.mem<!sea.ptr<64>, i8> loc("sm36")
  %v6 = sea.mem.nondet "region.121" [6] : !sea.mem<!sea.ptr<64>, i8> loc("sm37")
  %v7 = sea.mem.nondet "region.130" [7] : !sea.mem<!sea.ptr<64>, i8> loc("sm38")
  %v8 = sea.const 32 : i64 loc("_0")
  %v9 = sea.alloca %v8 align 8 [8] : i64 -> !sea.ptr<64> loc("_0")
  %v10 = sea.const 16 : i64 loc("_1")
  %v11 = sea.alloca %v10 align 8 [9] : i64 -> !sea.ptr<64> loc("_1")
  %v12 = sea.const 32 : i64 loc("_2")
  %v13 = sea.alloca %v12 align 8 [10] : i64 -> !sea.ptr<64> loc("_2")
  %v14 = sea.const 16 : i64 loc("_3")
  %v15 = sea.alloca %v14 align 8 [11] : i64 -> !sea.ptr<64> loc("_3")
  %v16 = sea.const 16 : i64 loc("_4")
  %v17 = sea.alloca %v16 align 8 [12] : i64 -> !sea.ptr<64> loc("_4")
  %v18 = sea.const 16 : i64 loc("_5")
  %v19 = sea.alloca %v18 align 8 [13] : i64 -> !sea.ptr<64> loc("_5")
  %v20 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v21 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v22 = sea.store %v0[%v20], %v21 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v23 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_6")
  %v24 = sea.ptr.index %v23 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_6")
  %v25 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v26 = sea.store %v22[%v24], %v25 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v27 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_7")
  %v28 = sea.ptr.index %v27 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_7")
  %v29 = sea.const 0 : i8
  %v30 = sea.const 24 : i64
  %v31 = sea.memset %v26[%v28], %v29, %v30 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v32 = sea.nondet "nd_size_t" [14] : i64 loc("_8"("seahorn/lib/byte_buf_helper.c":19:18))
  %v33 = sea.nondet "nd_size_t" [15] : i64 loc("_9"("seahorn/lib/byte_buf_helper.c":20:18))
  %v34 = sea.icmp ule, %v32, %v33 : i64 loc("_10"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v34 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v35 = sea.const 11 : i64 loc("_11"("seahorn/lib/byte_buf_helper.c":22:16))
  %v36 = sea.icmp ult, %v33, %v35 : i64 loc("_11"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v36 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb1
^bb1:
  %v37 = sea.store %v1[%v9], %v32 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v38 = sea.ptr.index %v9 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_13"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb2
^bb2:
  %v39 = sea.store %v37[%v38], %v33 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v40 = sea.const 0 : i64 loc("_15"("seahorn/lib/proof_allocators.c":21:15))
  %v41 = sea.icmp eq, %v33, %v40 : i64 loc("_15"("seahorn/lib/proof_allocators.c":21:15))
  %v42 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v41, ^bb6(%v7, %v42 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/proof_allocators.c":21:10)
^bb3:
  %v43 = sea.nondet "nd_malloc_is_fail" [16] : i1 loc("_17"("seahorn/lib/sea_allocators.c":11:10))
  %v44 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v43, ^bb5(%v7, %v44 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/sea_allocators.c":11:10)
^bb4:
  %v45 = sea.const 1 : i64 loc("malloc.i")
  %v46 = sea.mul %v33, %v45 : i64 loc("malloc.i")
  %v47 = sea.alloca %v46 align 16 [17] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb5(%v7, %v47 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb5(%v48 : !sea.mem<!sea.ptr<64>, i8>, %v49 : !sea.ptr<64>):
  %v50 = sea.memhavoc %v48[%v49], %v33 [18] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb6(%v50, %v49 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb6(%v51 : !sea.mem<!sea.ptr<64>, i8>, %v52 : !sea.ptr<64>):
  %v53 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_20"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb7
^bb7:
  %v54 = sea.store %v39[%v53], %v52 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v55 = sea.ptr.index %v9 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_22"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb8
^bb8:
  %v56 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v57 = sea.store %v54[%v55], %v56 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v58 = sea.nondet "nd_size_t" [19] : i64 loc("_23"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb9
^bb9:
  %v59 = sea.store %v2[%v11], %v58 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb10
^bb10:
  %v60 = sea.const 11 : i64 loc("_26"("seahorn/lib/byte_buf_helper.c":33:24))
  %v61 = sea.icmp ult, %v58, %v60 : i64 loc("_26"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v61 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v62 = sea.nondet "nd_malloc_is_fail" [20] : i1 loc("_27"("seahorn/lib/sea_allocators.c":11:10))
  %v63 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v62, ^bb12(%v51, %v63 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb11 loc("seahorn/lib/sea_allocators.c":11:10)
^bb11:
  %v64 = sea.const 10 : i64 loc("malloc53.i9")
  %v65 = sea.alloca %v64 align 16 [21] : i64 -> !sea.ptr<64> loc("malloc53.i9")
  sea.br ^bb12(%v51, %v65 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb12(%v66 : !sea.mem<!sea.ptr<64>, i8>, %v67 : !sea.ptr<64>):
  %v68 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v69 = sea.memhavoc %v66[%v67], %v68 [22] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v70 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_30"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb13
^bb13:
  %v71 = sea.store %v59[%v70], %v67 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  sea.br ^bb14
^bb14:
  sea.cond_br %v41, ^bb22, ^bb15 loc("aws-c-common/source/byte_buf.c":60:33)
^bb15:
  sea.br ^bb16
^bb16:
  sea.br ^bb17
^bb17:
  sea.br ^bb18
^bb18:
  %v72 = sea.icmp ugt, %v32, %v33 : i64 loc(".not2.i24.i"("aws-c-common/source/byte_buf.c":61:44))
  %v73 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v72, ^bb27(%v73 : i1), ^bb19 loc("aws-c-common/source/byte_buf.c":61:61)
^bb19:
  sea.br ^bb20
^bb20:
  sea.br ^bb21
^bb21:
  %v74 = sea.ptr.null : !sea.ptr<64> loc("_44"("aws-c-common/source/byte_buf.c":61:64))
  %v75 = sea.ptr.cmp ne, %v52, %v74 : !sea.ptr<64> loc("_44"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb27(%v75 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb22:
  sea.br ^bb23
^bb23:
  %v76 = sea.const 0 : i64 loc("_34"("aws-c-common/source/byte_buf.c":60:45))
  %v77 = sea.icmp eq, %v32, %v76 : i64 loc("_34"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v77, ^bb24, ^bb26 loc("aws-c-common/source/byte_buf.c":60:50)
^bb24:
  sea.br ^bb25
^bb25:
  %v78 = sea.ptr.null : !sea.ptr<64> loc("_37"("aws-c-common/source/byte_buf.c":60:65))
  %v79 = sea.ptr.cmp eq, %v52, %v78 : !sea.ptr<64> loc("_37"("aws-c-common/source/byte_buf.c":60:65))
  %v80 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v79, ^bb27(%v80 : i1), ^bb26 loc("aws-c-common/source/byte_buf.c":60:74)
^bb26:
  %v81 = sea.const 0 : i1
  sea.br ^bb27(%v81 : i1)
^bb27(%v82 : i1):
  sea.assume %v82 loc("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":18:5)
  sea.br ^bb28
^bb28:
  %v83 = sea.const 0 : i64 loc("_47"("aws-c-common/source/byte_buf.c":66:26))
  %v84 = sea.icmp eq, %v58, %v83 : i64 loc("_47"("aws-c-common/source/byte_buf.c":66:26))
  %v85 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v84, ^bb34(%v85 : i1), ^bb29 loc("aws-c-common/source/byte_buf.c":66:32)
^bb29:
  sea.br ^bb30
^bb30:
  sea.br ^bb31
^bb31:
  %v86 = sea.ptr.null : !sea.ptr<64> loc(".not2.i35.i"("aws-c-common/source/byte_buf.c":66:55))
  %v87 = sea.ptr.cmp eq, %v67, %v86 : !sea.ptr<64> loc(".not2.i35.i"("aws-c-common/source/byte_buf.c":66:55))
  %v88 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v87, ^bb34(%v88 : i1), ^bb32 loc("aws-c-common/source/byte_buf.c":66:67)
^bb32:
  sea.br ^bb33
^bb33:
  %v89 = sea.const 1 : i1
  sea.br ^bb34(%v89 : i1)
^bb34(%v90 : i1):
  sea.assume %v90 loc("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":19:5)
  %v91 = sea.store %v3[%v13], %v32 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":22:35)
  %v92 = sea.ptr.index %v13 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy4.i"("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":22:35))
  %v93 = sea.store %v91[%v92], %v52 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":22:35)
  %v94 = sea.ptr.index %v13 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy7.i"("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":22:35))
  %v95 = sea.store %v93[%v94], %v33 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":22:35)
  %v96 = sea.ptr.index %v13 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy10.i"("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":22:35))
  %v97 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":22:35)
  %v98 = sea.store %v95[%v96], %v97 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":22:35)
  %v99 = sea.nondet "nd_size_t" [23] : i64 loc("_54"("seahorn/lib/utils.c":46:20))
  sea.br ^bb35
^bb35:
  %v100 = sea.store %v4[%v15], %v99 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v101 = sea.const 0 : i64 loc("_56"("seahorn/lib/utils.c":47:12))
  %v102 = sea.icmp ne, %v32, %v101 : i64 loc("_56"("seahorn/lib/utils.c":47:12))
  %v103 = sea.ptr.null : !sea.ptr<64> loc("_57")
  %v104 = sea.ptr.cmp ne, %v52, %v103 : !sea.ptr<64> loc("_57")
  %v105 = sea.and %v102, %v104 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v105, ^bb38, ^bb36 loc("seahorn/lib/utils.c":47:16)
^bb36:
  %v106 = sea.nondet "nd_uint8_t" [24] : i8 loc("_69"("seahorn/lib/utils.c":51:21))
  %v107 = sea.ptr.index %v15 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_70"("seahorn/lib/utils.c":51:14))
  sea.br ^bb37
^bb37:
  %v108 = sea.store %v100[%v107], %v106 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb43(%v106 : i8)
^bb38:
  sea.br ^bb39
^bb39:
  %v109 = sea.icmp ult, %v99, %v32 : i64 loc("_60"("seahorn/lib/utils.c":48:27))
  sea.assume %v109 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb40
^bb40:
  %v110 = sea.ptr.index %v52 [%v99] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_62"("seahorn/lib/utils.c":49:21))
  %v111 = sea.const 1 : i64 loc("_63"("seahorn/lib/utils.c":49:21))
  %v112 = sea.ptr.dereferenceable %v110, %v111 : !sea.ptr<64>, i64 loc("_63"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v112, ^bb41, ^bb145
^bb41:
  %v113 = sea.load %v69[%v110] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_65"("seahorn/lib/utils.c":49:21))
  %v114 = sea.ptr.index %v15 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_66"("seahorn/lib/utils.c":49:14))
  sea.br ^bb42
^bb42:
  %v115 = sea.store %v100[%v114], %v113 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb43(%v113 : i8) loc("seahorn/lib/utils.c":50:3)
^bb43(%v116 : i8):
  %v117 = sea.store %v5[%v17], %v58 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":25:38)
  %v118 = sea.ptr.index %v17 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy16.i"("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":25:38))
  %v119 = sea.store %v117[%v118], %v67 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":25:38)
  %v120 = sea.nondet "nd_size_t" [25] : i64 loc("_73"("seahorn/lib/utils.c":46:20))
  sea.br ^bb44
^bb44:
  %v121 = sea.store %v6[%v19], %v120 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v122 = sea.const 0 : i64 loc("_75"("seahorn/lib/utils.c":47:12))
  %v123 = sea.icmp ne, %v58, %v122 : i64 loc("_75"("seahorn/lib/utils.c":47:12))
  %v124 = sea.ptr.null : !sea.ptr<64> loc("_76")
  %v125 = sea.ptr.cmp ne, %v67, %v124 : !sea.ptr<64> loc("_76")
  %v126 = sea.and %v123, %v125 : i1 loc("or.cond.i43.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v126, ^bb47, ^bb45 loc("seahorn/lib/utils.c":47:16)
^bb45:
  %v127 = sea.nondet "nd_uint8_t" [26] : i8 loc("_88"("seahorn/lib/utils.c":51:21))
  %v128 = sea.ptr.index %v19 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_89"("seahorn/lib/utils.c":51:14))
  sea.br ^bb46
^bb46:
  %v129 = sea.store %v121[%v128], %v127 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb52(%v129 : !sea.mem<!sea.ptr<64>, i8>)
^bb47:
  sea.br ^bb48
^bb48:
  %v130 = sea.icmp ult, %v120, %v58 : i64 loc("_79"("seahorn/lib/utils.c":48:27))
  sea.assume %v130 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb49
^bb49:
  %v131 = sea.ptr.index %v67 [%v120] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_81"("seahorn/lib/utils.c":49:21))
  %v132 = sea.const 1 : i64 loc("_82"("seahorn/lib/utils.c":49:21))
  %v133 = sea.ptr.dereferenceable %v131, %v132 : !sea.ptr<64>, i64 loc("_82"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v133, ^bb50, ^bb145
^bb50:
  %v134 = sea.load %v69[%v131] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_84"("seahorn/lib/utils.c":49:21))
  %v135 = sea.ptr.index %v19 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_85"("seahorn/lib/utils.c":49:14))
  sea.br ^bb51
^bb51:
  %v136 = sea.store %v121[%v135], %v134 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb52(%v136 : !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/lib/utils.c":50:3)
^bb52(%v137 : !sea.mem<!sea.ptr<64>, i8>):
  sea.cond_br %v84, ^bb87(%v69, %v33, %v32 : !sea.mem<!sea.ptr<64>, i8>, i64, i64), ^bb53 loc("aws-c-common/source/byte_buf.c":1447:9)
^bb53:
  sea.br ^bb54
^bb54:
  %v138 = sea.or %v58, %v32 : i64 loc("_93"("aws-c-common/source/byte_buf.c":1452:36))
  %v139 = sea.const 18446744073709551615 : i64 loc("or.cond.i.i.i.not"("aws-c-common/source/byte_buf.c":1452:36))
  %v140 = sea.icmp sgt, %v138, %v139 : i64 loc("or.cond.i.i.i.not"("aws-c-common/source/byte_buf.c":1452:36))
  sea.cond_br %v140, ^bb55, ^bb65 loc("aws-c-common/source/byte_buf.c":1452:36)
^bb55:
  sea.br ^bb56
^bb56:
  sea.br ^bb57
^bb57:
  %v141 = sea.add %v58, %v32 : i64 loc("_97"("aws-c-common/source/byte_buf.c":1452:73))
  %v142 = sea.icmp ugt, %v141, %v33 : i64 loc("_98"("aws-c-common/source/byte_buf.c":1452:79))
  sea.cond_br %v142, ^bb65, ^bb58 loc("aws-c-common/source/byte_buf.c":1452:9)
^bb58:
  sea.br ^bb59
^bb59:
  sea.br ^bb60
^bb60:
  %v143 = sea.ptr.index %v52 [%v32] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_102"("aws-c-common/source/byte_buf.c":1457:24))
  %v144 = sea.ptr.dereferenceable %v143, %v58 : !sea.ptr<64>, i64 loc("_103"("seahorn/lib/bcmp.c":161:3))
  %v145 = sea.ptr.dereferenceable %v143, %v58 : !sea.ptr<64>, i64 loc("_104"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v145, ^bb61, ^bb145 loc("seahorn/lib/bcmp.c":161:3)
^bb61:
  %v146 = sea.ptr.dereferenceable %v67, %v58 : !sea.ptr<64>, i64 loc("_106"("seahorn/lib/bcmp.c":162:3))
  %v147 = sea.ptr.dereferenceable %v67, %v58 : !sea.ptr<64>, i64 loc("_107"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v147, ^bb62, ^bb145 loc("seahorn/lib/bcmp.c":162:3)
^bb62:
  %v148 = sea.memmove %v69[%v143], %v69[%v67], %v58 inplace src_align 16 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb63
^bb63:
  sea.br ^bb64
^bb64:
  %v149 = sea.load %v39[%v38] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc(".pre"("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":32:9))
  sea.br ^bb87(%v148, %v149, %v141 : !sea.mem<!sea.ptr<64>, i8>, i64, i64)
^bb65:
  sea.br ^bb66
^bb66:
  sea.br ^bb67
^bb67:
  sea.br ^bb68
^bb68:
  sea.br ^bb69
^bb69:
  sea.br ^bb70
^bb70:
  sea.br ^bb71
^bb71:
  sea.br ^bb72
^bb72:
  sea.br ^bb73
^bb73:
  sea.br ^bb74
^bb74:
  sea.br ^bb75
^bb75:
  sea.br ^bb76
^bb76:
  sea.br ^bb77
^bb77:
  sea.br ^bb78
^bb78:
  %v150 = sea.const 0 : i64 loc(".not.i47.i"("seahorn/lib/utils.c":86:16))
  %v151 = sea.icmp eq, %v32, %v150 : i64 loc(".not.i47.i"("seahorn/lib/utils.c":86:16))
  %v152 = sea.const 0 : i64 loc("seahorn/lib/utils.c":86:7)
  sea.cond_br %v151, ^bb93(%v69, %v152 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb79 loc("seahorn/lib/utils.c":86:7)
^bb79:
  sea.br ^bb80
^bb80:
  %v153 = sea.ptr.null : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v154 = sea.ptr.cmp eq, %v52, %v153 : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  sea.cond_br %v154, ^bb93(%v69, %v32 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb81 loc("seahorn/lib/utils.c":39:14)
^bb81:
  sea.br ^bb82
^bb82:
  %v155 = sea.ptr.index %v52 [%v99] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_150"("seahorn/lib/utils.c":40:5))
  %v156 = sea.const 1 : i64 loc("_151"("seahorn/lib/utils.c":40:5))
  %v157 = sea.ptr.dereferenceable %v155, %v156 : !sea.ptr<64>, i64 loc("_151"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v157, ^bb83, ^bb145
^bb83:
  %v158 = sea.load %v69[%v155] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_153"("seahorn/lib/utils.c":40:5))
  sea.br ^bb84
^bb84:
  %v159 = sea.icmp eq, %v158, %v116 : i8 loc("_155"("seahorn/lib/utils.c":40:5))
  sea.br ^bb85
^bb85:
  %v160 = sea.const 1 : i64 loc("_157"("seahorn/lib/utils.c":40:5))
  %v161 = sea.ptr.dereferenceable %v155, %v160 : !sea.ptr<64>, i64 loc("_157"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v161, ^bb86, ^bb145
^bb86:
  %v162 = sea.const 1 : i1 loc("or.cond20")
  %v163 = sea.const 0 : i1 loc("or.cond20")
  %v164 = sea.select %v162, %v159, %v163 : i1 loc("or.cond20")
  sea.cond_br %v164, ^bb93(%v69, %v32 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb145
^bb87(%v165 : !sea.mem<!sea.ptr<64>, i8>, %v166 : i64, %v167 : i64):
  %v168 = sea.icmp eq, %v33, %v166 : i64 loc("_112"("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":32:9))
  sea.cond_br %v168, ^bb88, ^bb145 loc("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":32:9)
^bb88:
  %v169 = sea.load %v57[%v55] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_114"("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":33:9))
  %v170 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_115"("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":33:9))
  %v171 = sea.ptr.cmp eq, %v169, %v170 : !sea.ptr<64> loc("_115"("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":33:9))
  sea.cond_br %v171, ^bb89, ^bb145 loc("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":33:9)
^bb89:
  %v172 = sea.const 0 : i64 loc("_117")
  %v173 = sea.icmp ne, %v167, %v172 : i64 loc("_117")
  %v174 = sea.const 0 : i1 loc("or.cond.i"("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":34:25))
  %v175 = sea.select %v123, %v173, %v174 : i1 loc("or.cond.i"("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":34:25))
  sea.cond_br %v175, ^bb90, ^bb93(%v165, %v167 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":34:25)
^bb90:
  %v176 = sea.load %v54[%v53] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_119"("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":35:36))
  %v177 = sea.ptr.index %v176 [%v32] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_120"("seahorn/jobs/byte_buf_write_from_whole_cursor/aws_byte_buf_write_from_whole_cursor_harness.c":35:43))
  %v178 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v179 = sea.ptr.cmp eq, %v176, %v178 : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v180 = sea.xor %v125, %v179 : i1 loc("_121"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v180, ^bb91, ^bb145 loc("seahorn/lib/utils.c":15:3)
^bb91:
  %v181 = sea.ptr.null : !sea.ptr<64> loc("_122")
  %v182 = sea.ptr.cmp ne, %v176, %v181 : !sea.ptr<64> loc("_122")
  %v183 = sea.and %v125, %v182 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v183, ^bb92, ^bb93(%v165, %v167 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("seahorn/lib/utils.c":16:15)
^bb92:
  %v184 = sea.nondet "nd_size_t" [27] : i64 loc("_124"("seahorn/lib/utils.c":17:16))
  %v185 = sea.icmp ult, %v184, %v58 : i64 loc("_125"("seahorn/lib/utils.c":19:14))
  %v186 = sea.const 36028797018963967 : i64 loc("_126"("seahorn/lib/utils.c":19:20))
  %v187 = sea.icmp ult, %v58, %v186 : i64 loc("_126"("seahorn/lib/utils.c":19:20))
  %v188 = sea.and %v187, %v185 : i1 loc("_127"("seahorn/lib/utils.c":19:20))
  sea.assume %v188 loc("seahorn/lib/utils.c":19:5)
  %v189 = sea.ptr.index %v177 [%v184] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_128"("seahorn/lib/utils.c":20:5))
  %v190 = sea.load %v165[%v189] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_129"("seahorn/lib/utils.c":20:5))
  %v191 = sea.ptr.index %v67 [%v184] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_130"("seahorn/lib/utils.c":20:5))
  %v192 = sea.load %v165[%v191] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_131"("seahorn/lib/utils.c":20:5))
  %v193 = sea.icmp eq, %v190, %v192 : i8 loc("_132"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v193, ^bb93(%v165, %v167 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb145 loc("seahorn/lib/utils.c":20:5)
^bb93(%v194 : !sea.mem<!sea.ptr<64>, i8>, %v195 : i64):
  sea.br ^bb94
^bb94:
  sea.cond_br %v41, ^bb102, ^bb95 loc("aws-c-common/source/byte_buf.c":60:33)
^bb95:
  sea.br ^bb96
^bb96:
  sea.br ^bb97
^bb97:
  sea.br ^bb98
^bb98:
  %v196 = sea.icmp ugt, %v195, %v33 : i64 loc(".not2.i20.i"("aws-c-common/source/byte_buf.c":61:44))
  %v197 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v196, ^bb107(%v197 : i1), ^bb99 loc("aws-c-common/source/byte_buf.c":61:61)
^bb99:
  sea.br ^bb100
^bb100:
  sea.br ^bb101
^bb101:
  %v198 = sea.load %v54[%v53] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_174"("aws-c-common/source/byte_buf.c":61:64))
  %v199 = sea.ptr.null : !sea.ptr<64> loc("_175"("aws-c-common/source/byte_buf.c":61:64))
  %v200 = sea.ptr.cmp ne, %v198, %v199 : !sea.ptr<64> loc("_175"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb107(%v200 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb102:
  sea.br ^bb103
^bb103:
  %v201 = sea.const 0 : i64 loc("_163"("aws-c-common/source/byte_buf.c":60:45))
  %v202 = sea.icmp eq, %v195, %v201 : i64 loc("_163"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v202, ^bb104, ^bb106 loc("aws-c-common/source/byte_buf.c":60:50)
^bb104:
  sea.br ^bb105
^bb105:
  %v203 = sea.load %v54[%v53] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_166"("aws-c-common/source/byte_buf.c":60:58))
  %v204 = sea.ptr.null : !sea.ptr<64> loc("_167"("aws-c-common/source/byte_buf.c":60:65))
  %v205 = sea.ptr.cmp eq, %v203, %v204 : !sea.ptr<64> loc("_167"("aws-c-common/source/byte_buf.c":60:65))
  %v206 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v205, ^bb107(%v206 : i1), ^bb106 loc("aws-c-common/source/byte_buf.c":60:74)
^bb106:
  %v207 = sea.const 0 : i1
  sea.br ^bb107(%v207 : i1)
^bb107(%v208 : i1):
  sea.br ^bb108
^bb108:
  sea.cond_br %v41, ^bb114, ^bb109 loc("aws-c-common/source/byte_buf.c":60:33)
^bb109:
  sea.br ^bb110
^bb110:
  sea.br ^bb111
^bb111:
  %v209 = sea.icmp ule, %v195, %v33 : i64 loc(".not2.i.i")
  %v210 = sea.const 1 : i1 loc("or.cond30.not")
  %v211 = sea.const 0 : i1 loc("or.cond30.not")
  %v212 = sea.select %v210, %v209, %v211 : i1 loc("or.cond30.not")
  sea.cond_br %v212, ^bb112, ^bb145
^bb112:
  sea.br ^bb113
^bb113:
  %v213 = sea.load %v54[%v53] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_190")
  %v214 = sea.ptr.null : !sea.ptr<64> loc("_191")
  %v215 = sea.ptr.cmp ne, %v213, %v214 : !sea.ptr<64> loc("_191")
  %v216 = sea.const 1 : i1 loc("or.cond22")
  %v217 = sea.const 0 : i1 loc("or.cond22")
  %v218 = sea.select %v216, %v215, %v217 : i1 loc("or.cond22")
  sea.cond_br %v218, ^bb119, ^bb145
^bb114:
  sea.br ^bb115
^bb115:
  %v219 = sea.const 0 : i64 loc("_180"("aws-c-common/source/byte_buf.c":60:45))
  %v220 = sea.icmp eq, %v195, %v219 : i64 loc("_180"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v220, ^bb116, ^bb118 loc("aws-c-common/source/byte_buf.c":60:50)
^bb116:
  sea.br ^bb117
^bb117:
  %v221 = sea.load %v54[%v53] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_183"("aws-c-common/source/byte_buf.c":60:58))
  %v222 = sea.ptr.null : !sea.ptr<64> loc("_184"("aws-c-common/source/byte_buf.c":60:65))
  %v223 = sea.ptr.cmp eq, %v221, %v222 : !sea.ptr<64> loc("_184"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v223, ^bb119, ^bb118 loc("aws-c-common/source/byte_buf.c":60:74)
^bb118:
  sea.br ^bb145
^bb119:
  sea.br ^bb120
^bb120:
  %v224 = sea.load %v59[%v11] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_193"("aws-c-common/source/byte_buf.c":66:22))
  %v225 = sea.const 0 : i64 loc("_194"("aws-c-common/source/byte_buf.c":66:26))
  %v226 = sea.icmp eq, %v224, %v225 : i64 loc("_194"("aws-c-common/source/byte_buf.c":66:26))
  %v227 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v226, ^bb126(%v227 : i1), ^bb121 loc("aws-c-common/source/byte_buf.c":66:32)
^bb121:
  sea.br ^bb122
^bb122:
  sea.br ^bb123
^bb123:
  %v228 = sea.load %v71[%v70] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_198"("aws-c-common/source/byte_buf.c":66:63))
  %v229 = sea.ptr.null : !sea.ptr<64> loc(".not2.i31.i"("aws-c-common/source/byte_buf.c":66:55))
  %v230 = sea.ptr.cmp eq, %v228, %v229 : !sea.ptr<64> loc(".not2.i31.i"("aws-c-common/source/byte_buf.c":66:55))
  %v231 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v230, ^bb126(%v231 : i1), ^bb124 loc("aws-c-common/source/byte_buf.c":66:67)
^bb124:
  sea.br ^bb125
^bb125:
  %v232 = sea.const 1 : i1
  sea.br ^bb126(%v232 : i1)
^bb126(%v233 : i1):
  sea.br ^bb127
^bb127:
  sea.cond_br %v226, ^bb132, ^bb128 loc("aws-c-common/source/byte_buf.c":66:32)
^bb128:
  sea.br ^bb129
^bb129:
  %v234 = sea.load %v71[%v70] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_205")
  %v235 = sea.ptr.null : !sea.ptr<64> loc(".not2.i28.i")
  %v236 = sea.ptr.cmp ne, %v234, %v235 : !sea.ptr<64> loc(".not2.i28.i")
  %v237 = sea.const 1 : i1 loc("or.cond34.not")
  %v238 = sea.const 0 : i1 loc("or.cond34.not")
  %v239 = sea.select %v237, %v236, %v238 : i1 loc("or.cond34.not")
  sea.cond_br %v239, ^bb130, ^bb145
^bb130:
  sea.br ^bb131
^bb131:
  sea.br ^bb132
^bb132:
  sea.br ^bb133
^bb133:
  sea.br ^bb134
^bb134:
  %v240 = sea.load %v117[%v17] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_210"("seahorn/lib/utils.c":97:5))
  %v241 = sea.icmp eq, %v224, %v240 : i64 loc("_211"("seahorn/lib/utils.c":97:5))
  sea.br ^bb135
^bb135:
  %v242 = sea.const 1 : i1 loc("or.cond26")
  %v243 = sea.const 0 : i1 loc("or.cond26")
  %v244 = sea.select %v242, %v241, %v243 : i1 loc("or.cond26")
  sea.cond_br %v244, ^bb136, ^bb145
^bb136:
  sea.br ^bb137
^bb137:
  %v245 = sea.const 1 : i1 loc("seahorn/lib/utils.c":98:9)
  %v246 = sea.xor %v226, %v245 : i1 loc("seahorn/lib/utils.c":98:9)
  sea.assume %v246 loc("seahorn/lib/utils.c":98:9)
  sea.br ^bb138
^bb138:
  %v247 = sea.load %v71[%v70] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_216"("seahorn/lib/utils.c":99:44))
  %v248 = sea.ptr.null : !sea.ptr<64> loc("_217"("seahorn/lib/utils.c":39:7))
  %v249 = sea.ptr.cmp ne, %v247, %v248 : !sea.ptr<64> loc("_217"("seahorn/lib/utils.c":39:7))
  sea.assume %v249 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb139
^bb139:
  %v250 = sea.load %v137[%v19] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_219"("seahorn/lib/utils.c":40:5))
  %v251 = sea.ptr.index %v247 [%v250] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_220"("seahorn/lib/utils.c":40:5))
  %v252 = sea.const 1 : i64 loc("_221"("seahorn/lib/utils.c":40:5))
  %v253 = sea.ptr.dereferenceable %v251, %v252 : !sea.ptr<64>, i64 loc("_221"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v253, ^bb140, ^bb145
^bb140:
  %v254 = sea.load %v194[%v251] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_223"("seahorn/lib/utils.c":40:5))
  %v255 = sea.ptr.index %v19 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_224"("seahorn/lib/utils.c":40:5))
  sea.br ^bb141
^bb141:
  %v256 = sea.load %v137[%v255] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_226"("seahorn/lib/utils.c":40:5))
  %v257 = sea.icmp eq, %v254, %v256 : i8 loc("_227"("seahorn/lib/utils.c":40:5))
  sea.br ^bb142
^bb142:
  %v258 = sea.const 1 : i64 loc("_229"("seahorn/lib/utils.c":40:5))
  %v259 = sea.ptr.dereferenceable %v251, %v258 : !sea.ptr<64>, i64 loc("_229"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v259, ^bb143, ^bb145
^bb143:
  sea.br ^bb144
^bb144:
  %v260 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v261 = sea.xor %v257, %v260 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v261 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb145 loc("seahorn/lib/utils.c":40:5)
^bb145:
  sea.br ^bb146
^bb146:
  %v262 = sea.const 0 : i1
  sea.assert %v262
  sea.halt
}
