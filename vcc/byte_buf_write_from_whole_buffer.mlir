// Exported from SeaHorn (byte_buf_write_from_whole_buffer.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm36")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm37")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm38")
  %v3 = sea.mem.nondet "region.80" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm39")
  %v4 = sea.mem.nondet "region.112" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm40")
  %v5 = sea.mem.nondet "region.121" [5] : !sea.mem<!sea.ptr<64>, i8> loc("sm41")
  %v6 = sea.mem.nondet "region.153" [6] : !sea.mem<!sea.ptr<64>, i8> loc("sm42")
  %v7 = sea.mem.nondet "region.162" [7] : !sea.mem<!sea.ptr<64>, i8> loc("sm43")
  %v8 = sea.const 32 : i64 loc("_0")
  %v9 = sea.alloca %v8 align 8 [8] : i64 -> !sea.ptr<64> loc("_0")
  %v10 = sea.const 32 : i64 loc("_1")
  %v11 = sea.alloca %v10 align 8 [9] : i64 -> !sea.ptr<64> loc("_1")
  %v12 = sea.const 32 : i64 loc("_2")
  %v13 = sea.alloca %v12 align 8 [10] : i64 -> !sea.ptr<64> loc("_2")
  %v14 = sea.const 16 : i64 loc("_3")
  %v15 = sea.alloca %v14 align 8 [11] : i64 -> !sea.ptr<64> loc("_3")
  %v16 = sea.const 32 : i64 loc("_4")
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
  %v58 = sea.nondet "nd_size_t" [19] : i64 loc("_23"("seahorn/lib/byte_buf_helper.c":19:18))
  %v59 = sea.nondet "nd_size_t" [20] : i64 loc("_24"("seahorn/lib/byte_buf_helper.c":20:18))
  %v60 = sea.icmp ule, %v58, %v59 : i64 loc("_25"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v60 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v61 = sea.const 11 : i64 loc("_26"("seahorn/lib/byte_buf_helper.c":22:16))
  %v62 = sea.icmp ult, %v59, %v61 : i64 loc("_26"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v62 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb9
^bb9:
  %v63 = sea.store %v2[%v11], %v58 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v64 = sea.ptr.index %v11 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_28"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb10
^bb10:
  %v65 = sea.store %v63[%v64], %v59 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v66 = sea.const 0 : i64 loc("_30"("seahorn/lib/proof_allocators.c":21:15))
  %v67 = sea.icmp eq, %v59, %v66 : i64 loc("_30"("seahorn/lib/proof_allocators.c":21:15))
  %v68 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v67, ^bb14(%v51, %v68 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb11 loc("seahorn/lib/proof_allocators.c":21:10)
^bb11:
  %v69 = sea.nondet "nd_malloc_is_fail" [21] : i1 loc("_32"("seahorn/lib/sea_allocators.c":11:10))
  %v70 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v69, ^bb13(%v51, %v70 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb12 loc("seahorn/lib/sea_allocators.c":11:10)
^bb12:
  %v71 = sea.const 1 : i64 loc("malloc62.i")
  %v72 = sea.mul %v59, %v71 : i64 loc("malloc62.i")
  %v73 = sea.alloca %v72 align 16 [22] : i64 -> !sea.ptr<64> loc("malloc62.i")
  sea.br ^bb13(%v51, %v73 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb13(%v74 : !sea.mem<!sea.ptr<64>, i8>, %v75 : !sea.ptr<64>):
  %v76 = sea.memhavoc %v74[%v75], %v59 [23] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb14(%v76, %v75 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb14(%v77 : !sea.mem<!sea.ptr<64>, i8>, %v78 : !sea.ptr<64>):
  %v79 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_35"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb15
^bb15:
  %v80 = sea.store %v65[%v79], %v78 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v81 = sea.ptr.index %v11 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_37"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb16
^bb16:
  %v82 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v83 = sea.store %v80[%v81], %v82 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  sea.br ^bb17
^bb17:
  sea.cond_br %v41, ^bb25, ^bb18 loc("aws-c-common/source/byte_buf.c":60:33)
^bb18:
  sea.br ^bb19
^bb19:
  sea.br ^bb20
^bb20:
  sea.br ^bb21
^bb21:
  %v84 = sea.icmp ugt, %v32, %v33 : i64 loc(".not2.i42.i"("aws-c-common/source/byte_buf.c":61:44))
  %v85 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v84, ^bb30(%v85 : i1), ^bb22 loc("aws-c-common/source/byte_buf.c":61:61)
^bb22:
  sea.br ^bb23
^bb23:
  sea.br ^bb24
^bb24:
  %v86 = sea.ptr.null : !sea.ptr<64> loc("_51"("aws-c-common/source/byte_buf.c":61:64))
  %v87 = sea.ptr.cmp ne, %v52, %v86 : !sea.ptr<64> loc("_51"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb30(%v87 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb25:
  sea.br ^bb26
^bb26:
  %v88 = sea.const 0 : i64 loc("_41"("aws-c-common/source/byte_buf.c":60:45))
  %v89 = sea.icmp eq, %v32, %v88 : i64 loc("_41"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v89, ^bb27, ^bb29 loc("aws-c-common/source/byte_buf.c":60:50)
^bb27:
  sea.br ^bb28
^bb28:
  %v90 = sea.ptr.null : !sea.ptr<64> loc("_44"("aws-c-common/source/byte_buf.c":60:65))
  %v91 = sea.ptr.cmp eq, %v52, %v90 : !sea.ptr<64> loc("_44"("aws-c-common/source/byte_buf.c":60:65))
  %v92 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v91, ^bb30(%v92 : i1), ^bb29 loc("aws-c-common/source/byte_buf.c":60:74)
^bb29:
  %v93 = sea.const 0 : i1
  sea.br ^bb30(%v93 : i1)
^bb30(%v94 : i1):
  sea.assume %v94 loc("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":19:5)
  sea.br ^bb31
^bb31:
  sea.cond_br %v67, ^bb39, ^bb32 loc("aws-c-common/source/byte_buf.c":60:33)
^bb32:
  sea.br ^bb33
^bb33:
  sea.br ^bb34
^bb34:
  sea.br ^bb35
^bb35:
  %v95 = sea.icmp ugt, %v58, %v59 : i64 loc(".not2.i38.i"("aws-c-common/source/byte_buf.c":61:44))
  %v96 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v95, ^bb44(%v96 : i1), ^bb36 loc("aws-c-common/source/byte_buf.c":61:61)
^bb36:
  sea.br ^bb37
^bb37:
  sea.br ^bb38
^bb38:
  %v97 = sea.ptr.null : !sea.ptr<64> loc("_66"("aws-c-common/source/byte_buf.c":61:64))
  %v98 = sea.ptr.cmp ne, %v78, %v97 : !sea.ptr<64> loc("_66"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb44(%v98 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb39:
  sea.br ^bb40
^bb40:
  %v99 = sea.const 0 : i64 loc("_56"("aws-c-common/source/byte_buf.c":60:45))
  %v100 = sea.icmp eq, %v58, %v99 : i64 loc("_56"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v100, ^bb41, ^bb43 loc("aws-c-common/source/byte_buf.c":60:50)
^bb41:
  sea.br ^bb42
^bb42:
  %v101 = sea.ptr.null : !sea.ptr<64> loc("_59"("aws-c-common/source/byte_buf.c":60:65))
  %v102 = sea.ptr.cmp eq, %v78, %v101 : !sea.ptr<64> loc("_59"("aws-c-common/source/byte_buf.c":60:65))
  %v103 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v102, ^bb44(%v103 : i1), ^bb43 loc("aws-c-common/source/byte_buf.c":60:74)
^bb43:
  %v104 = sea.const 0 : i1
  sea.br ^bb44(%v104 : i1)
^bb44(%v105 : i1):
  sea.assume %v105 loc("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":20:5)
  %v106 = sea.store %v3[%v13], %v32 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":23:35)
  %v107 = sea.ptr.index %v13 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy4.i"("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":23:35))
  %v108 = sea.store %v106[%v107], %v52 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":23:35)
  %v109 = sea.ptr.index %v13 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy7.i"("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":23:35))
  %v110 = sea.store %v108[%v109], %v33 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":23:35)
  %v111 = sea.ptr.index %v13 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy10.i"("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":23:35))
  %v112 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":23:35)
  %v113 = sea.store %v110[%v111], %v112 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":23:35)
  %v114 = sea.nondet "nd_size_t" [24] : i64 loc("_68"("seahorn/lib/utils.c":46:20))
  sea.br ^bb45
^bb45:
  %v115 = sea.store %v4[%v15], %v114 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v116 = sea.const 0 : i64 loc("_70"("seahorn/lib/utils.c":47:12))
  %v117 = sea.icmp ne, %v32, %v116 : i64 loc("_70"("seahorn/lib/utils.c":47:12))
  %v118 = sea.ptr.null : !sea.ptr<64> loc("_71")
  %v119 = sea.ptr.cmp ne, %v52, %v118 : !sea.ptr<64> loc("_71")
  %v120 = sea.and %v117, %v119 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v120, ^bb48, ^bb46 loc("seahorn/lib/utils.c":47:16)
^bb46:
  %v121 = sea.nondet "nd_uint8_t" [25] : i8 loc("_83"("seahorn/lib/utils.c":51:21))
  %v122 = sea.ptr.index %v15 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_84"("seahorn/lib/utils.c":51:14))
  sea.br ^bb47
^bb47:
  %v123 = sea.store %v115[%v122], %v121 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb53(%v121 : i8)
^bb48:
  sea.br ^bb49
^bb49:
  %v124 = sea.icmp ult, %v114, %v32 : i64 loc("_74"("seahorn/lib/utils.c":48:27))
  sea.assume %v124 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb50
^bb50:
  %v125 = sea.ptr.index %v52 [%v114] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_76"("seahorn/lib/utils.c":49:21))
  %v126 = sea.const 1 : i64 loc("_77"("seahorn/lib/utils.c":49:21))
  %v127 = sea.ptr.dereferenceable %v125, %v126 : !sea.ptr<64>, i64 loc("_77"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v127, ^bb51, ^bb177
^bb51:
  %v128 = sea.load %v77[%v125] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_79"("seahorn/lib/utils.c":49:21))
  %v129 = sea.ptr.index %v15 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_80"("seahorn/lib/utils.c":49:14))
  sea.br ^bb52
^bb52:
  %v130 = sea.store %v115[%v129], %v128 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb53(%v128 : i8) loc("seahorn/lib/utils.c":50:3)
^bb53(%v131 : i8):
  %v132 = sea.store %v5[%v17], %v58 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":26:35)
  %v133 = sea.ptr.index %v17 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy16.i"("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":26:35))
  %v134 = sea.store %v132[%v133], %v78 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":26:35)
  %v135 = sea.ptr.index %v17 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy19.i"("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":26:35))
  %v136 = sea.store %v134[%v135], %v59 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":26:35)
  %v137 = sea.ptr.index %v17 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy22.i"("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":26:35))
  %v138 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":26:35)
  %v139 = sea.store %v136[%v137], %v138 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":26:35)
  %v140 = sea.nondet "nd_size_t" [26] : i64 loc("_87"("seahorn/lib/utils.c":46:20))
  sea.br ^bb54
^bb54:
  %v141 = sea.store %v6[%v19], %v140 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v142 = sea.const 0 : i64 loc("_89"("seahorn/lib/utils.c":47:12))
  %v143 = sea.icmp ne, %v58, %v142 : i64 loc("_89"("seahorn/lib/utils.c":47:12))
  %v144 = sea.ptr.null : !sea.ptr<64> loc("_90")
  %v145 = sea.ptr.cmp ne, %v78, %v144 : !sea.ptr<64> loc("_90")
  %v146 = sea.and %v143, %v145 : i1 loc("or.cond.i51.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v146, ^bb57, ^bb55 loc("seahorn/lib/utils.c":47:16)
^bb55:
  %v147 = sea.nondet "nd_uint8_t" [27] : i8 loc("_102"("seahorn/lib/utils.c":51:21))
  %v148 = sea.ptr.index %v19 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_103"("seahorn/lib/utils.c":51:14))
  sea.br ^bb56
^bb56:
  %v149 = sea.store %v141[%v148], %v147 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb62(%v149 : !sea.mem<!sea.ptr<64>, i8>)
^bb57:
  sea.br ^bb58
^bb58:
  %v150 = sea.icmp ult, %v140, %v58 : i64 loc("_93"("seahorn/lib/utils.c":48:27))
  sea.assume %v150 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb59
^bb59:
  %v151 = sea.ptr.index %v78 [%v140] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_95"("seahorn/lib/utils.c":49:21))
  %v152 = sea.const 1 : i64 loc("_96"("seahorn/lib/utils.c":49:21))
  %v153 = sea.ptr.dereferenceable %v151, %v152 : !sea.ptr<64>, i64 loc("_96"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v153, ^bb60, ^bb177
^bb60:
  %v154 = sea.load %v77[%v151] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_98"("seahorn/lib/utils.c":49:21))
  %v155 = sea.ptr.index %v19 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_99"("seahorn/lib/utils.c":49:14))
  sea.br ^bb61
^bb61:
  %v156 = sea.store %v141[%v155], %v154 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb62(%v156 : !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/lib/utils.c":50:3)
^bb62(%v157 : !sea.mem<!sea.ptr<64>, i8>):
  %v158 = sea.const 0 : i64 loc("_105"("aws-c-common/source/byte_buf.c":1447:13))
  %v159 = sea.icmp eq, %v58, %v158 : i64 loc("_105"("aws-c-common/source/byte_buf.c":1447:13))
  %v160 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":1447:9)
  sea.cond_br %v159, ^bb97(%v77, %v57, %v160, %v32 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64), ^bb63 loc("aws-c-common/source/byte_buf.c":1447:9)
^bb63:
  sea.br ^bb64
^bb64:
  %v161 = sea.or %v58, %v32 : i64 loc("_108"("aws-c-common/source/byte_buf.c":1452:36))
  %v162 = sea.const 18446744073709551615 : i64 loc("or.cond.i.i.i.not"("aws-c-common/source/byte_buf.c":1452:36))
  %v163 = sea.icmp sgt, %v161, %v162 : i64 loc("or.cond.i.i.i.not"("aws-c-common/source/byte_buf.c":1452:36))
  sea.cond_br %v163, ^bb65, ^bb75 loc("aws-c-common/source/byte_buf.c":1452:36)
^bb65:
  sea.br ^bb66
^bb66:
  sea.br ^bb67
^bb67:
  %v164 = sea.add %v58, %v32 : i64 loc("_112"("aws-c-common/source/byte_buf.c":1452:73))
  %v165 = sea.icmp ugt, %v164, %v33 : i64 loc("_113"("aws-c-common/source/byte_buf.c":1452:79))
  sea.cond_br %v165, ^bb75, ^bb68 loc("aws-c-common/source/byte_buf.c":1452:9)
^bb68:
  sea.br ^bb69
^bb69:
  sea.br ^bb70
^bb70:
  %v166 = sea.ptr.index %v52 [%v32] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_117"("aws-c-common/source/byte_buf.c":1457:24))
  %v167 = sea.ptr.dereferenceable %v166, %v58 : !sea.ptr<64>, i64 loc("_118"("seahorn/lib/bcmp.c":161:3))
  %v168 = sea.ptr.dereferenceable %v166, %v58 : !sea.ptr<64>, i64 loc("_119"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v168, ^bb71, ^bb177 loc("seahorn/lib/bcmp.c":161:3)
^bb71:
  %v169 = sea.ptr.dereferenceable %v78, %v58 : !sea.ptr<64>, i64 loc("_121"("seahorn/lib/bcmp.c":162:3))
  %v170 = sea.ptr.dereferenceable %v78, %v58 : !sea.ptr<64>, i64 loc("_122"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v170, ^bb72, ^bb177 loc("seahorn/lib/bcmp.c":162:3)
^bb72:
  %v171 = sea.memmove %v77[%v166], %v77[%v78], %v58 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb73
^bb73:
  sea.br ^bb74
^bb74:
  %v172 = sea.store %v57[%v9], %v164 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":1458:14)
  %v173 = sea.load %v63[%v11] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc(".pre"("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":33:9))
  sea.br ^bb97(%v171, %v172, %v173, %v164 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64) loc("aws-c-common/source/byte_buf.c":1461:5)
^bb75:
  sea.br ^bb76
^bb76:
  sea.br ^bb77
^bb77:
  sea.br ^bb78
^bb78:
  sea.br ^bb79
^bb79:
  sea.br ^bb80
^bb80:
  sea.br ^bb81
^bb81:
  sea.br ^bb82
^bb82:
  sea.br ^bb83
^bb83:
  sea.br ^bb84
^bb84:
  sea.br ^bb85
^bb85:
  sea.br ^bb86
^bb86:
  sea.br ^bb87
^bb87:
  sea.br ^bb88
^bb88:
  %v174 = sea.const 0 : i64 loc(".not.i55.i"("seahorn/lib/utils.c":86:16))
  %v175 = sea.icmp eq, %v32, %v174 : i64 loc(".not.i55.i"("seahorn/lib/utils.c":86:16))
  %v176 = sea.const 0 : i64 loc("seahorn/lib/utils.c":86:7)
  sea.cond_br %v175, ^bb104(%v77, %v57, %v58, %v176 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64), ^bb89 loc("seahorn/lib/utils.c":86:7)
^bb89:
  sea.br ^bb90
^bb90:
  %v177 = sea.ptr.null : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v178 = sea.ptr.cmp eq, %v52, %v177 : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  sea.cond_br %v178, ^bb104(%v77, %v57, %v58, %v32 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64), ^bb91 loc("seahorn/lib/utils.c":39:14)
^bb91:
  sea.br ^bb92
^bb92:
  %v179 = sea.ptr.index %v52 [%v114] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_170"("seahorn/lib/utils.c":40:5))
  %v180 = sea.const 1 : i64 loc("_171"("seahorn/lib/utils.c":40:5))
  %v181 = sea.ptr.dereferenceable %v179, %v180 : !sea.ptr<64>, i64 loc("_171"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v181, ^bb93, ^bb177
^bb93:
  %v182 = sea.load %v77[%v179] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_173"("seahorn/lib/utils.c":40:5))
  sea.br ^bb94
^bb94:
  %v183 = sea.icmp eq, %v182, %v131 : i8 loc("_175"("seahorn/lib/utils.c":40:5))
  sea.br ^bb95
^bb95:
  %v184 = sea.const 1 : i64 loc("_177"("seahorn/lib/utils.c":40:5))
  %v185 = sea.ptr.dereferenceable %v179, %v184 : !sea.ptr<64>, i64 loc("_177"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v185, ^bb96, ^bb177
^bb96:
  %v186 = sea.const 1 : i1 loc("or.cond21")
  %v187 = sea.const 0 : i1 loc("or.cond21")
  %v188 = sea.select %v186, %v183, %v187 : i1 loc("or.cond21")
  sea.cond_br %v188, ^bb104(%v77, %v57, %v58, %v32 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64), ^bb177
^bb97(%v189 : !sea.mem<!sea.ptr<64>, i8>, %v190 : !sea.mem<!sea.ptr<64>, i8>, %v191 : i64, %v192 : i64):
  %v193 = sea.add %v191, %v32 : i64 loc("_127"("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":33:9))
  %v194 = sea.icmp eq, %v192, %v193 : i64 loc("_128"("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":33:9))
  sea.cond_br %v194, ^bb98, ^bb177 loc("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":33:9)
^bb98:
  %v195 = sea.load %v190[%v38] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_130"("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":34:9))
  %v196 = sea.icmp eq, %v33, %v195 : i64 loc("_131"("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":34:9))
  sea.cond_br %v196, ^bb99, ^bb177 loc("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":34:9)
^bb99:
  %v197 = sea.load %v190[%v55] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_133"("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":35:9))
  %v198 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_134"("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":35:9))
  %v199 = sea.ptr.cmp eq, %v197, %v198 : !sea.ptr<64> loc("_134"("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":35:9))
  sea.cond_br %v199, ^bb100, ^bb177 loc("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":35:9)
^bb100:
  %v200 = sea.const 0 : i64 loc("_136"("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":36:21))
  %v201 = sea.icmp ne, %v191, %v200 : i64 loc("_136"("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":36:21))
  %v202 = sea.const 0 : i64 loc("_137")
  %v203 = sea.icmp ne, %v192, %v202 : i64 loc("_137")
  %v204 = sea.const 0 : i1 loc("or.cond.i"("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":36:25))
  %v205 = sea.select %v201, %v203, %v204 : i1 loc("or.cond.i"("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":36:25))
  sea.cond_br %v205, ^bb101, ^bb104(%v189, %v190, %v191, %v192 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64) loc("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":36:25)
^bb101:
  %v206 = sea.load %v190[%v53] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_139"("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":38:36))
  %v207 = sea.ptr.index %v206 [%v32] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_140"("seahorn/jobs/byte_buf_write_from_whole_buffer/aws_byte_buf_write_from_whole_buffer_harness.c":38:43))
  %v208 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v209 = sea.ptr.cmp eq, %v206, %v208 : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v210 = sea.xor %v145, %v209 : i1 loc("_141"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v210, ^bb102, ^bb177 loc("seahorn/lib/utils.c":15:3)
^bb102:
  %v211 = sea.ptr.null : !sea.ptr<64> loc("_142")
  %v212 = sea.ptr.cmp ne, %v206, %v211 : !sea.ptr<64> loc("_142")
  %v213 = sea.and %v145, %v212 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v213, ^bb103, ^bb104(%v189, %v190, %v191, %v192 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64) loc("seahorn/lib/utils.c":16:15)
^bb103:
  %v214 = sea.nondet "nd_size_t" [28] : i64 loc("_144"("seahorn/lib/utils.c":17:16))
  %v215 = sea.icmp ult, %v214, %v191 : i64 loc("_145"("seahorn/lib/utils.c":19:14))
  %v216 = sea.const 36028797018963967 : i64 loc("_146"("seahorn/lib/utils.c":19:20))
  %v217 = sea.icmp ult, %v191, %v216 : i64 loc("_146"("seahorn/lib/utils.c":19:20))
  %v218 = sea.and %v217, %v215 : i1 loc("_147"("seahorn/lib/utils.c":19:20))
  sea.assume %v218 loc("seahorn/lib/utils.c":19:5)
  %v219 = sea.ptr.index %v207 [%v214] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_148"("seahorn/lib/utils.c":20:5))
  %v220 = sea.load %v189[%v219] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_149"("seahorn/lib/utils.c":20:5))
  %v221 = sea.ptr.index %v78 [%v214] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_150"("seahorn/lib/utils.c":20:5))
  %v222 = sea.load %v189[%v221] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_151"("seahorn/lib/utils.c":20:5))
  %v223 = sea.icmp eq, %v220, %v222 : i8 loc("_152"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v223, ^bb104(%v189, %v190, %v191, %v192 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64), ^bb177 loc("seahorn/lib/utils.c":20:5)
^bb104(%v224 : !sea.mem<!sea.ptr<64>, i8>, %v225 : !sea.mem<!sea.ptr<64>, i8>, %v226 : i64, %v227 : i64):
  sea.br ^bb105
^bb105:
  sea.cond_br %v41, ^bb113, ^bb106 loc("aws-c-common/source/byte_buf.c":60:33)
^bb106:
  sea.br ^bb107
^bb107:
  sea.br ^bb108
^bb108:
  sea.br ^bb109
^bb109:
  %v228 = sea.icmp ugt, %v227, %v33 : i64 loc(".not2.i34.i"("aws-c-common/source/byte_buf.c":61:44))
  %v229 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v228, ^bb118(%v229 : i1), ^bb110 loc("aws-c-common/source/byte_buf.c":61:61)
^bb110:
  sea.br ^bb111
^bb111:
  sea.br ^bb112
^bb112:
  %v230 = sea.load %v225[%v53] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_195"("aws-c-common/source/byte_buf.c":61:64))
  %v231 = sea.ptr.null : !sea.ptr<64> loc("_196"("aws-c-common/source/byte_buf.c":61:64))
  %v232 = sea.ptr.cmp ne, %v230, %v231 : !sea.ptr<64> loc("_196"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb118(%v232 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb113:
  sea.br ^bb114
^bb114:
  %v233 = sea.const 0 : i64 loc("_184"("aws-c-common/source/byte_buf.c":60:45))
  %v234 = sea.icmp eq, %v227, %v233 : i64 loc("_184"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v234, ^bb115, ^bb117 loc("aws-c-common/source/byte_buf.c":60:50)
^bb115:
  sea.br ^bb116
^bb116:
  %v235 = sea.load %v225[%v53] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_187"("aws-c-common/source/byte_buf.c":60:58))
  %v236 = sea.ptr.null : !sea.ptr<64> loc("_188"("aws-c-common/source/byte_buf.c":60:65))
  %v237 = sea.ptr.cmp eq, %v235, %v236 : !sea.ptr<64> loc("_188"("aws-c-common/source/byte_buf.c":60:65))
  %v238 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v237, ^bb118(%v238 : i1), ^bb117 loc("aws-c-common/source/byte_buf.c":60:74)
^bb117:
  %v239 = sea.const 0 : i1
  sea.br ^bb118(%v239 : i1)
^bb118(%v240 : i1):
  sea.br ^bb119
^bb119:
  sea.cond_br %v41, ^bb125, ^bb120 loc("aws-c-common/source/byte_buf.c":60:33)
^bb120:
  sea.br ^bb121
^bb121:
  sea.br ^bb122
^bb122:
  %v241 = sea.icmp ule, %v227, %v33 : i64 loc(".not2.i30.i")
  %v242 = sea.const 1 : i1 loc("or.cond35.not")
  %v243 = sea.const 0 : i1 loc("or.cond35.not")
  %v244 = sea.select %v242, %v241, %v243 : i1 loc("or.cond35.not")
  sea.cond_br %v244, ^bb123, ^bb177
^bb123:
  sea.br ^bb124
^bb124:
  %v245 = sea.load %v225[%v53] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_211")
  %v246 = sea.ptr.null : !sea.ptr<64> loc("_212")
  %v247 = sea.ptr.cmp ne, %v245, %v246 : !sea.ptr<64> loc("_212")
  %v248 = sea.const 1 : i1 loc("or.cond23")
  %v249 = sea.const 0 : i1 loc("or.cond23")
  %v250 = sea.select %v248, %v247, %v249 : i1 loc("or.cond23")
  sea.cond_br %v250, ^bb130, ^bb177
^bb125:
  sea.br ^bb126
^bb126:
  %v251 = sea.const 0 : i64 loc("_201"("aws-c-common/source/byte_buf.c":60:45))
  %v252 = sea.icmp eq, %v227, %v251 : i64 loc("_201"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v252, ^bb127, ^bb129 loc("aws-c-common/source/byte_buf.c":60:50)
^bb127:
  sea.br ^bb128
^bb128:
  %v253 = sea.load %v225[%v53] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_204"("aws-c-common/source/byte_buf.c":60:58))
  %v254 = sea.ptr.null : !sea.ptr<64> loc("_205"("aws-c-common/source/byte_buf.c":60:65))
  %v255 = sea.ptr.cmp eq, %v253, %v254 : !sea.ptr<64> loc("_205"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v255, ^bb130, ^bb129 loc("aws-c-common/source/byte_buf.c":60:74)
^bb129:
  sea.br ^bb177
^bb130:
  sea.br ^bb131
^bb131:
  %v256 = sea.load %v65[%v64] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_214"("aws-c-common/source/byte_buf.c":60:19))
  %v257 = sea.const 0 : i64 loc(".not57"("aws-c-common/source/byte_buf.c":60:28))
  %v258 = sea.icmp eq, %v256, %v257 : i64 loc(".not57"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v258, ^bb139, ^bb132 loc("aws-c-common/source/byte_buf.c":60:33)
^bb132:
  sea.br ^bb133
^bb133:
  sea.br ^bb134
^bb134:
  sea.br ^bb135
^bb135:
  %v259 = sea.icmp ugt, %v226, %v256 : i64 loc(".not2.i26.i"("aws-c-common/source/byte_buf.c":61:44))
  %v260 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v259, ^bb144(%v260 : i1), ^bb136 loc("aws-c-common/source/byte_buf.c":61:61)
^bb136:
  sea.br ^bb137
^bb137:
  sea.br ^bb138
^bb138:
  %v261 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_228"("aws-c-common/source/byte_buf.c":61:64))
  %v262 = sea.ptr.null : !sea.ptr<64> loc("_229"("aws-c-common/source/byte_buf.c":61:64))
  %v263 = sea.ptr.cmp ne, %v261, %v262 : !sea.ptr<64> loc("_229"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb144(%v263 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb139:
  sea.br ^bb140
^bb140:
  %v264 = sea.const 0 : i64 loc("_217"("aws-c-common/source/byte_buf.c":60:45))
  %v265 = sea.icmp eq, %v226, %v264 : i64 loc("_217"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v265, ^bb141, ^bb143 loc("aws-c-common/source/byte_buf.c":60:50)
^bb141:
  sea.br ^bb142
^bb142:
  %v266 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_220"("aws-c-common/source/byte_buf.c":60:58))
  %v267 = sea.ptr.null : !sea.ptr<64> loc("_221"("aws-c-common/source/byte_buf.c":60:65))
  %v268 = sea.ptr.cmp eq, %v266, %v267 : !sea.ptr<64> loc("_221"("aws-c-common/source/byte_buf.c":60:65))
  %v269 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v268, ^bb144(%v269 : i1), ^bb143 loc("aws-c-common/source/byte_buf.c":60:74)
^bb143:
  %v270 = sea.const 0 : i1
  sea.br ^bb144(%v270 : i1)
^bb144(%v271 : i1):
  sea.br ^bb145
^bb145:
  sea.cond_br %v258, ^bb151, ^bb146 loc("aws-c-common/source/byte_buf.c":60:33)
^bb146:
  sea.br ^bb147
^bb147:
  sea.br ^bb148
^bb148:
  %v272 = sea.icmp ule, %v226, %v256 : i64 loc(".not2.i.i")
  %v273 = sea.const 1 : i1 loc("or.cond39.not")
  %v274 = sea.const 0 : i1 loc("or.cond39.not")
  %v275 = sea.select %v273, %v272, %v274 : i1 loc("or.cond39.not")
  sea.cond_br %v275, ^bb149, ^bb177
^bb149:
  sea.br ^bb150
^bb150:
  %v276 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_244")
  %v277 = sea.ptr.null : !sea.ptr<64> loc("_245")
  %v278 = sea.ptr.cmp ne, %v276, %v277 : !sea.ptr<64> loc("_245")
  %v279 = sea.const 1 : i1 loc("or.cond25")
  %v280 = sea.const 0 : i1 loc("or.cond25")
  %v281 = sea.select %v279, %v278, %v280 : i1 loc("or.cond25")
  sea.cond_br %v281, ^bb156(%v276 : !sea.ptr<64>), ^bb177
^bb151:
  sea.br ^bb152
^bb152:
  %v282 = sea.const 0 : i64 loc("_234"("aws-c-common/source/byte_buf.c":60:45))
  %v283 = sea.icmp eq, %v226, %v282 : i64 loc("_234"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v283, ^bb153, ^bb155 loc("aws-c-common/source/byte_buf.c":60:50)
^bb153:
  sea.br ^bb154
^bb154:
  %v284 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_237"("aws-c-common/source/byte_buf.c":60:58))
  %v285 = sea.ptr.null : !sea.ptr<64> loc("_238"("aws-c-common/source/byte_buf.c":60:65))
  %v286 = sea.ptr.cmp eq, %v284, %v285 : !sea.ptr<64> loc("_238"("aws-c-common/source/byte_buf.c":60:65))
  %v287 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v286, ^bb156(%v287 : !sea.ptr<64>), ^bb155 loc("aws-c-common/source/byte_buf.c":60:74)
^bb155:
  sea.br ^bb177
^bb156(%v288 : !sea.ptr<64>):
  sea.br ^bb157
^bb157:
  sea.br ^bb158
^bb158:
  %v289 = sea.load %v132[%v17] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_249"("seahorn/lib/utils.c":83:3))
  %v290 = sea.icmp eq, %v226, %v289 : i64 loc("_250"("seahorn/lib/utils.c":83:3))
  sea.br ^bb159
^bb159:
  %v291 = sea.const 1 : i1 loc("or.cond27")
  %v292 = sea.const 0 : i1 loc("or.cond27")
  %v293 = sea.select %v291, %v290, %v292 : i1 loc("or.cond27")
  sea.cond_br %v293, ^bb160, ^bb177
^bb160:
  sea.br ^bb161
^bb161:
  sea.br ^bb162
^bb162:
  %v294 = sea.load %v136[%v135] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_255"("seahorn/lib/utils.c":84:3))
  %v295 = sea.icmp eq, %v256, %v294 : i64 loc("_256"("seahorn/lib/utils.c":84:3))
  sea.br ^bb163
^bb163:
  %v296 = sea.const 1 : i1 loc("or.cond29")
  %v297 = sea.const 0 : i1 loc("or.cond29")
  %v298 = sea.select %v296, %v295, %v297 : i1 loc("or.cond29")
  sea.cond_br %v298, ^bb164, ^bb177
^bb164:
  sea.br ^bb165
^bb165:
  %v299 = sea.load %v83[%v81] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_260"("seahorn/lib/utils.c":85:3))
  sea.br ^bb166
^bb166:
  %v300 = sea.load %v139[%v137] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_262"("seahorn/lib/utils.c":85:3))
  %v301 = sea.ptr.cmp eq, %v299, %v300 : !sea.ptr<64> loc("_263"("seahorn/lib/utils.c":85:3))
  sea.br ^bb167
^bb167:
  %v302 = sea.const 1 : i1 loc("or.cond31")
  %v303 = sea.const 0 : i1 loc("or.cond31")
  %v304 = sea.select %v302, %v301, %v303 : i1 loc("or.cond31")
  sea.cond_br %v304, ^bb168, ^bb177
^bb168:
  sea.br ^bb169
^bb169:
  %v305 = sea.const 0 : i64 loc(".not.i58.i"("seahorn/lib/utils.c":86:16))
  %v306 = sea.icmp eq, %v226, %v305 : i64 loc(".not.i58.i"("seahorn/lib/utils.c":86:16))
  %v307 = sea.const 1 : i1 loc("seahorn/lib/utils.c":86:7)
  %v308 = sea.xor %v306, %v307 : i1 loc("seahorn/lib/utils.c":86:7)
  sea.assume %v308 loc("seahorn/lib/utils.c":86:7)
  sea.br ^bb170
^bb170:
  %v309 = sea.ptr.null : !sea.ptr<64> loc("_268"("seahorn/lib/utils.c":39:7))
  %v310 = sea.ptr.cmp ne, %v288, %v309 : !sea.ptr<64> loc("_268"("seahorn/lib/utils.c":39:7))
  sea.assume %v310 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb171
^bb171:
  %v311 = sea.load %v157[%v19] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_270"("seahorn/lib/utils.c":40:5))
  %v312 = sea.ptr.index %v288 [%v311] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_271"("seahorn/lib/utils.c":40:5))
  %v313 = sea.const 1 : i64 loc("_272"("seahorn/lib/utils.c":40:5))
  %v314 = sea.ptr.dereferenceable %v312, %v313 : !sea.ptr<64>, i64 loc("_272"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v314, ^bb172, ^bb177
^bb172:
  %v315 = sea.load %v224[%v312] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_274"("seahorn/lib/utils.c":40:5))
  %v316 = sea.ptr.index %v19 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_275"("seahorn/lib/utils.c":40:5))
  sea.br ^bb173
^bb173:
  %v317 = sea.load %v157[%v316] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_277"("seahorn/lib/utils.c":40:5))
  %v318 = sea.icmp eq, %v315, %v317 : i8 loc("_278"("seahorn/lib/utils.c":40:5))
  sea.br ^bb174
^bb174:
  %v319 = sea.const 1 : i64 loc("_280"("seahorn/lib/utils.c":40:5))
  %v320 = sea.ptr.dereferenceable %v312, %v319 : !sea.ptr<64>, i64 loc("_280"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v320, ^bb175, ^bb177
^bb175:
  sea.br ^bb176
^bb176:
  %v321 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v322 = sea.xor %v318, %v321 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v322 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb177 loc("seahorn/lib/utils.c":40:5)
^bb177:
  sea.br ^bb178
^bb178:
  %v323 = sea.const 0 : i1
  sea.assert %v323
  sea.halt
}
