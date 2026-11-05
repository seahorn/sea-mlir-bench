// Exported from SeaHorn (byte_buf_advance.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm35")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm36")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm37")
  %v3 = sea.mem.nondet "region.80" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm38")
  %v4 = sea.mem.nondet "region.112" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm39")
  %v5 = sea.mem.nondet "region.121" [5] : !sea.mem<!sea.ptr<64>, i8> loc("sm40")
  %v6 = sea.const 32 : i64 loc("_0")
  %v7 = sea.alloca %v6 align 8 [6] : i64 -> !sea.ptr<64> loc("_0")
  %v8 = sea.const 32 : i64 loc("_1")
  %v9 = sea.alloca %v8 align 8 [7] : i64 -> !sea.ptr<64> loc("_1")
  %v10 = sea.const 32 : i64 loc("_2")
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
  %v26 = sea.nondet "nd_size_t" [10] : i64 loc("_6"("seahorn/lib/byte_buf_helper.c":19:18))
  %v27 = sea.nondet "nd_size_t" [11] : i64 loc("_7"("seahorn/lib/byte_buf_helper.c":20:18))
  %v28 = sea.icmp ule, %v26, %v27 : i64 loc("_8"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v28 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v29 = sea.const 11 : i64 loc("_9"("seahorn/lib/byte_buf_helper.c":22:16))
  %v30 = sea.icmp ult, %v27, %v29 : i64 loc("_9"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v30 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb1
^bb1:
  %v31 = sea.store %v1[%v7], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v32 = sea.ptr.index %v7 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_11"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb2
^bb2:
  %v33 = sea.store %v31[%v32], %v27 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v34 = sea.const 0 : i64 loc("_13"("seahorn/lib/proof_allocators.c":21:15))
  %v35 = sea.icmp eq, %v27, %v34 : i64 loc("_13"("seahorn/lib/proof_allocators.c":21:15))
  %v36 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v35, ^bb6(%v5, %v36 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/proof_allocators.c":21:10)
^bb3:
  %v37 = sea.nondet "nd_malloc_is_fail" [12] : i1 loc("_15"("seahorn/lib/sea_allocators.c":11:10))
  %v38 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v37, ^bb5(%v5, %v38 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/sea_allocators.c":11:10)
^bb4:
  %v39 = sea.const 1 : i64 loc("malloc.i")
  %v40 = sea.mul %v27, %v39 : i64 loc("malloc.i")
  %v41 = sea.alloca %v40 align 16 [13] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb5(%v5, %v41 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb5(%v42 : !sea.mem<!sea.ptr<64>, i8>, %v43 : !sea.ptr<64>):
  %v44 = sea.memhavoc %v42[%v43], %v27 [14] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb6(%v44, %v43 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb6(%v45 : !sea.mem<!sea.ptr<64>, i8>, %v46 : !sea.ptr<64>):
  %v47 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_19"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb7
^bb7:
  %v48 = sea.store %v33[%v47], %v46 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v49 = sea.ptr.index %v7 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_21"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb8
^bb8:
  %v50 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v51 = sea.store %v48[%v49], %v50 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v52 = sea.nondet "nd_size_t" [15] : i64 loc("_22"("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":15:18))
  sea.br ^bb9
^bb9:
  sea.cond_br %v35, ^bb17, ^bb10 loc("aws-c-common/source/byte_buf.c":60:33)
^bb10:
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  sea.br ^bb13
^bb13:
  %v53 = sea.icmp ugt, %v26, %v27 : i64 loc(".not2.i40.i"("aws-c-common/source/byte_buf.c":61:44))
  %v54 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v53, ^bb22(%v54 : i1), ^bb14 loc("aws-c-common/source/byte_buf.c":61:61)
^bb14:
  sea.br ^bb15
^bb15:
  sea.br ^bb16
^bb16:
  %v55 = sea.ptr.null : !sea.ptr<64> loc("_36"("aws-c-common/source/byte_buf.c":61:64))
  %v56 = sea.ptr.cmp ne, %v46, %v55 : !sea.ptr<64> loc("_36"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb22(%v56 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb17:
  sea.br ^bb18
^bb18:
  %v57 = sea.const 0 : i64 loc("_26"("aws-c-common/source/byte_buf.c":60:45))
  %v58 = sea.icmp eq, %v26, %v57 : i64 loc("_26"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v58, ^bb19, ^bb21 loc("aws-c-common/source/byte_buf.c":60:50)
^bb19:
  sea.br ^bb20
^bb20:
  %v59 = sea.ptr.null : !sea.ptr<64> loc("_29"("aws-c-common/source/byte_buf.c":60:65))
  %v60 = sea.ptr.cmp eq, %v46, %v59 : !sea.ptr<64> loc("_29"("aws-c-common/source/byte_buf.c":60:65))
  %v61 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v60, ^bb22(%v61 : i1), ^bb21 loc("aws-c-common/source/byte_buf.c":60:74)
^bb21:
  %v62 = sea.const 0 : i1
  sea.br ^bb22(%v62 : i1)
^bb22(%v63 : i1):
  sea.assume %v63 loc("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":18:5)
  %v64 = sea.nondet "nd_bool" [16] : i1 loc("_38"("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":19:9))
  sea.cond_br %v64, ^bb46, ^bb23 loc("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":19:9)
^bb23:
  %v65 = sea.nondet "nd_size_t" [17] : i64 loc("_41"("seahorn/lib/byte_buf_helper.c":19:18))
  %v66 = sea.nondet "nd_size_t" [18] : i64 loc("_42"("seahorn/lib/byte_buf_helper.c":20:18))
  %v67 = sea.icmp ule, %v65, %v66 : i64 loc("_43"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v67 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v68 = sea.const 11 : i64 loc("_44"("seahorn/lib/byte_buf_helper.c":22:16))
  %v69 = sea.icmp ult, %v66, %v68 : i64 loc("_44"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v69 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb24
^bb24:
  %v70 = sea.store %v2[%v9], %v65 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v71 = sea.ptr.index %v9 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_46"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb25
^bb25:
  %v72 = sea.store %v70[%v71], %v66 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v73 = sea.const 0 : i64 loc("_48"("seahorn/lib/proof_allocators.c":21:15))
  %v74 = sea.icmp eq, %v66, %v73 : i64 loc("_48"("seahorn/lib/proof_allocators.c":21:15))
  %v75 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v74, ^bb29(%v45, %v75 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb26 loc("seahorn/lib/proof_allocators.c":21:10)
^bb26:
  %v76 = sea.nondet "nd_malloc_is_fail" [19] : i1 loc("_50"("seahorn/lib/sea_allocators.c":11:10))
  %v77 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v76, ^bb28(%v45, %v77 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb27 loc("seahorn/lib/sea_allocators.c":11:10)
^bb27:
  %v78 = sea.const 1 : i64 loc("malloc52.i")
  %v79 = sea.mul %v66, %v78 : i64 loc("malloc52.i")
  %v80 = sea.alloca %v79 align 16 [20] : i64 -> !sea.ptr<64> loc("malloc52.i")
  sea.br ^bb28(%v45, %v80 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb28(%v81 : !sea.mem<!sea.ptr<64>, i8>, %v82 : !sea.ptr<64>):
  %v83 = sea.memhavoc %v81[%v82], %v66 [21] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb29(%v83, %v82 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb29(%v84 : !sea.mem<!sea.ptr<64>, i8>, %v85 : !sea.ptr<64>):
  %v86 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_54"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb30
^bb30:
  %v87 = sea.store %v72[%v86], %v85 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v88 = sea.ptr.index %v9 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_56"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb31
^bb31:
  %v89 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v90 = sea.store %v87[%v88], %v89 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  sea.br ^bb32
^bb32:
  sea.cond_br %v74, ^bb40, ^bb33 loc("aws-c-common/source/byte_buf.c":60:33)
^bb33:
  sea.br ^bb34
^bb34:
  sea.br ^bb35
^bb35:
  sea.br ^bb36
^bb36:
  %v91 = sea.icmp ugt, %v65, %v66 : i64 loc(".not2.i36.i"("aws-c-common/source/byte_buf.c":61:44))
  %v92 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v91, ^bb45(%v92 : i1), ^bb37 loc("aws-c-common/source/byte_buf.c":61:61)
^bb37:
  sea.br ^bb38
^bb38:
  sea.br ^bb39
^bb39:
  %v93 = sea.ptr.null : !sea.ptr<64> loc("_70"("aws-c-common/source/byte_buf.c":61:64))
  %v94 = sea.ptr.cmp ne, %v85, %v93 : !sea.ptr<64> loc("_70"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb45(%v94 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb40:
  sea.br ^bb41
^bb41:
  %v95 = sea.const 0 : i64 loc("_60"("aws-c-common/source/byte_buf.c":60:45))
  %v96 = sea.icmp eq, %v65, %v95 : i64 loc("_60"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v96, ^bb42, ^bb44 loc("aws-c-common/source/byte_buf.c":60:50)
^bb42:
  sea.br ^bb43
^bb43:
  %v97 = sea.ptr.null : !sea.ptr<64> loc("_63"("aws-c-common/source/byte_buf.c":60:65))
  %v98 = sea.ptr.cmp eq, %v85, %v97 : !sea.ptr<64> loc("_63"("aws-c-common/source/byte_buf.c":60:65))
  %v99 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v98, ^bb45(%v99 : i1), ^bb44 loc("aws-c-common/source/byte_buf.c":60:74)
^bb44:
  %v100 = sea.const 0 : i1
  sea.br ^bb45(%v100 : i1)
^bb45(%v101 : i1):
  sea.assume %v101 loc("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":23:9)
  sea.br ^bb47(%v84, %v90 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb46:
  %v102 = sea.store %v2[%v9], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":20:18)
  %v103 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":20:18))
  %v104 = sea.store %v102[%v103], %v46 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":20:18)
  %v105 = sea.ptr.index %v9 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy5.i"("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":20:18))
  %v106 = sea.store %v104[%v105], %v27 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":20:18)
  %v107 = sea.ptr.index %v9 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i"("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":20:18))
  %v108 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":20:18)
  %v109 = sea.store %v106[%v107], %v108 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":20:18)
  sea.br ^bb47(%v45, %v109 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":21:5)
^bb47(%v110 : !sea.mem<!sea.ptr<64>, i8>, %v111 : !sea.mem<!sea.ptr<64>, i8>):
  %v112 = sea.store %v3[%v11], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":27:31)
  %v113 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy14.i"("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":27:31))
  %v114 = sea.store %v112[%v113], %v46 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":27:31)
  %v115 = sea.ptr.index %v11 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy17.i"("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":27:31))
  %v116 = sea.store %v114[%v115], %v27 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":27:31)
  %v117 = sea.ptr.index %v11 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy20.i"("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":27:31))
  %v118 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":27:31)
  %v119 = sea.store %v116[%v117], %v118 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":27:31)
  %v120 = sea.nondet "nd_size_t" [22] : i64 loc("_73"("seahorn/lib/utils.c":46:20))
  sea.br ^bb48
^bb48:
  %v121 = sea.store %v4[%v13], %v120 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v122 = sea.const 0 : i64 loc("_75"("seahorn/lib/utils.c":47:12))
  %v123 = sea.icmp ne, %v26, %v122 : i64 loc("_75"("seahorn/lib/utils.c":47:12))
  %v124 = sea.ptr.null : !sea.ptr<64> loc("_76")
  %v125 = sea.ptr.cmp ne, %v46, %v124 : !sea.ptr<64> loc("_76")
  %v126 = sea.and %v123, %v125 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v126, ^bb51, ^bb49 loc("seahorn/lib/utils.c":47:16)
^bb49:
  %v127 = sea.nondet "nd_uint8_t" [23] : i8 loc("_88"("seahorn/lib/utils.c":51:21))
  %v128 = sea.ptr.index %v13 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_89"("seahorn/lib/utils.c":51:14))
  sea.br ^bb50
^bb50:
  %v129 = sea.store %v121[%v128], %v127 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb56(%v127 : i8)
^bb51:
  sea.br ^bb52
^bb52:
  %v130 = sea.icmp ult, %v120, %v26 : i64 loc("_79"("seahorn/lib/utils.c":48:27))
  sea.assume %v130 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb53
^bb53:
  %v131 = sea.ptr.index %v46 [%v120] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_81"("seahorn/lib/utils.c":49:21))
  %v132 = sea.const 1 : i64 loc("_82"("seahorn/lib/utils.c":49:21))
  %v133 = sea.ptr.dereferenceable %v131, %v132 : !sea.ptr<64>, i64 loc("_82"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v133, ^bb54, ^bb149
^bb54:
  %v134 = sea.load %v110[%v131] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_84"("seahorn/lib/utils.c":49:21))
  %v135 = sea.ptr.index %v13 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_85"("seahorn/lib/utils.c":49:14))
  sea.br ^bb55
^bb55:
  %v136 = sea.store %v121[%v135], %v134 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb56(%v134 : i8) loc("seahorn/lib/utils.c":50:3)
^bb56(%v137 : i8):
  sea.br ^bb57
^bb57:
  sea.br ^bb58
^bb58:
  %v138 = sea.sub %v27, %v26 : i64 loc("_94"("aws-c-common/source/byte_buf.c":1421:26))
  %v139 = sea.icmp ult, %v138, %v52 : i64 loc(".not.i.i.not"("aws-c-common/source/byte_buf.c":1421:40))
  sea.cond_br %v139, ^bb76, ^bb59 loc("aws-c-common/source/byte_buf.c":1421:9)
^bb59:
  sea.br ^bb60
^bb60:
  %v140 = sea.ptr.null : !sea.ptr<64> loc("_97"("aws-c-common/source/byte_buf.c":1422:59))
  %v141 = sea.ptr.cmp eq, %v46, %v140 : !sea.ptr<64> loc("_97"("aws-c-common/source/byte_buf.c":1422:59))
  %v142 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1422:43)
  sea.cond_br %v141, ^bb64(%v142 : !sea.ptr<64>), ^bb61 loc("aws-c-common/source/byte_buf.c":1422:43)
^bb61:
  sea.br ^bb62
^bb62:
  sea.br ^bb63
^bb63:
  %v143 = sea.ptr.index %v46 [%v26] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_101"("aws-c-common/source/byte_buf.c":1422:92))
  sea.br ^bb64(%v143 : !sea.ptr<64>) loc("aws-c-common/source/byte_buf.c":1422:43)
^bb64(%v144 : !sea.ptr<64>):
  %v145 = sea.const 0 : i64 loc(".not.i.i.i"("aws-c-common/source/byte_buf.c":962:23))
  %v146 = sea.icmp eq, %v52, %v145 : i64 loc(".not.i.i.i"("aws-c-common/source/byte_buf.c":962:23))
  %v147 = sea.ptr.null : !sea.ptr<64> loc("_104"("aws-c-common/source/byte_buf.c":962:18))
  %v148 = sea.select %v146, %v147, %v144 : !sea.ptr<64> loc("_104"("aws-c-common/source/byte_buf.c":962:18))
  %v149 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i.i"("aws-c-common/source/byte_buf.c":1422:19))
  %v150 = sea.store %v111[%v149], %v148 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1422:19)
  %v151 = sea.ptr.index %v9 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy5.i.i"("aws-c-common/source/byte_buf.c":1422:19))
  %v152 = sea.store %v150[%v151], %v52 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":1422:19)
  %v153 = sea.ptr.index %v9 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i.i"("aws-c-common/source/byte_buf.c":1422:19))
  %v154 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1422:19)
  %v155 = sea.store %v152[%v153], %v154 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1422:19)
  sea.br ^bb65
^bb65:
  sea.br ^bb66
^bb66:
  %v156 = sea.add %v52, %v26 : i64 loc("_107"("aws-c-common/source/byte_buf.c":1423:21))
  %v157 = sea.store %v51[%v7], %v156 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":1423:21)
  sea.br ^bb67
^bb67:
  %v158 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":1424:21)
  %v159 = sea.store %v155[%v9], %v158 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":1424:21)
  %v160 = sea.const 0 : i64 loc(".not.i"("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":36:21))
  %v161 = sea.icmp eq, %v26, %v160 : i64 loc(".not.i"("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":36:21))
  sea.cond_br %v161, ^bb75, ^bb68 loc("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":36:13)
^bb68:
  sea.cond_br %v141, ^bb75, ^bb69 loc("seahorn/lib/utils.c":39:14)
^bb69:
  sea.br ^bb70
^bb70:
  %v162 = sea.ptr.index %v46 [%v120] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_112"("seahorn/lib/utils.c":40:5))
  %v163 = sea.const 1 : i64 loc("_113"("seahorn/lib/utils.c":40:5))
  %v164 = sea.ptr.dereferenceable %v162, %v163 : !sea.ptr<64>, i64 loc("_113"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v164, ^bb71, ^bb149
^bb71:
  %v165 = sea.load %v110[%v162] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_115"("seahorn/lib/utils.c":40:5))
  sea.br ^bb72
^bb72:
  %v166 = sea.icmp eq, %v165, %v137 : i8 loc("_117"("seahorn/lib/utils.c":40:5))
  sea.br ^bb73
^bb73:
  %v167 = sea.const 1 : i64 loc("_119"("seahorn/lib/utils.c":40:5))
  %v168 = sea.ptr.dereferenceable %v162, %v167 : !sea.ptr<64>, i64 loc("_119"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v168, ^bb74, ^bb149
^bb74:
  %v169 = sea.const 1 : i1 loc("or.cond")
  %v170 = sea.const 0 : i1 loc("or.cond")
  %v171 = sea.select %v169, %v166, %v170 : i1 loc("or.cond")
  sea.cond_br %v171, ^bb75, ^bb149
^bb75:
  sea.br ^bb99(%v148, %v52, %v156 : !sea.ptr<64>, i64, i64)
^bb76:
  %v172 = sea.const 0 : i8 loc("aws-c-common/source/byte_buf.c":1429:9)
  %v173 = sea.const 32 : i64 loc("aws-c-common/source/byte_buf.c":1429:9)
  %v174 = sea.memset %v111[%v9], %v172, %v173 inplace align 8 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/source/byte_buf.c":1429:9)
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
  sea.br ^bb89
^bb89:
  %v175 = sea.const 0 : i64 loc(".not.i51.i"("seahorn/lib/utils.c":86:16))
  %v176 = sea.icmp eq, %v26, %v175 : i64 loc(".not.i51.i"("seahorn/lib/utils.c":86:16))
  sea.cond_br %v176, ^bb98, ^bb90 loc("seahorn/lib/utils.c":86:7)
^bb90:
  sea.br ^bb91
^bb91:
  %v177 = sea.ptr.null : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v178 = sea.ptr.cmp eq, %v46, %v177 : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  sea.cond_br %v178, ^bb98, ^bb92 loc("seahorn/lib/utils.c":39:14)
^bb92:
  sea.br ^bb93
^bb93:
  %v179 = sea.ptr.index %v46 [%v120] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_140"("seahorn/lib/utils.c":40:5))
  %v180 = sea.const 1 : i64 loc("_141"("seahorn/lib/utils.c":40:5))
  %v181 = sea.ptr.dereferenceable %v179, %v180 : !sea.ptr<64>, i64 loc("_141"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v181, ^bb94, ^bb149
^bb94:
  %v182 = sea.load %v110[%v179] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_143"("seahorn/lib/utils.c":40:5))
  sea.br ^bb95
^bb95:
  %v183 = sea.icmp eq, %v182, %v137 : i8 loc("_145"("seahorn/lib/utils.c":40:5))
  sea.br ^bb96
^bb96:
  %v184 = sea.const 1 : i64 loc("_147"("seahorn/lib/utils.c":40:5))
  %v185 = sea.ptr.dereferenceable %v179, %v184 : !sea.ptr<64>, i64 loc("_147"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v185, ^bb97, ^bb149
^bb97:
  %v186 = sea.const 1 : i1 loc("or.cond17")
  %v187 = sea.const 0 : i1 loc("or.cond17")
  %v188 = sea.select %v186, %v183, %v187 : i1 loc("or.cond17")
  sea.cond_br %v188, ^bb98, ^bb149
^bb98:
  %v189 = sea.ptr.null : !sea.ptr<64>
  %v190 = sea.const 0 : i64
  sea.br ^bb99(%v189, %v190, %v26 : !sea.ptr<64>, i64, i64)
^bb99(%v191 : !sea.ptr<64>, %v192 : i64, %v193 : i64):
  sea.br ^bb100
^bb100:
  sea.cond_br %v35, ^bb107, ^bb101 loc("aws-c-common/source/byte_buf.c":60:33)
^bb101:
  sea.br ^bb102
^bb102:
  sea.br ^bb103
^bb103:
  sea.br ^bb104
^bb104:
  %v194 = sea.icmp ugt, %v193, %v27 : i64 loc(".not2.i32.i"("aws-c-common/source/byte_buf.c":61:44))
  %v195 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v194, ^bb112(%v195 : i1), ^bb105 loc("aws-c-common/source/byte_buf.c":61:61)
^bb105:
  sea.br ^bb106
^bb106:
  sea.br ^bb112(%v125 : i1)
^bb107:
  sea.br ^bb108
^bb108:
  %v196 = sea.const 0 : i64 loc("_157"("aws-c-common/source/byte_buf.c":60:45))
  %v197 = sea.icmp eq, %v193, %v196 : i64 loc("_157"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v197, ^bb109, ^bb111 loc("aws-c-common/source/byte_buf.c":60:50)
^bb109:
  sea.br ^bb110
^bb110:
  %v198 = sea.ptr.null : !sea.ptr<64> loc("_160"("aws-c-common/source/byte_buf.c":60:65))
  %v199 = sea.ptr.cmp eq, %v46, %v198 : !sea.ptr<64> loc("_160"("aws-c-common/source/byte_buf.c":60:65))
  %v200 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v199, ^bb112(%v200 : i1), ^bb111 loc("aws-c-common/source/byte_buf.c":60:74)
^bb111:
  %v201 = sea.const 0 : i1
  sea.br ^bb112(%v201 : i1)
^bb112(%v202 : i1):
  sea.br ^bb113
^bb113:
  sea.cond_br %v35, ^bb119, ^bb114 loc("aws-c-common/source/byte_buf.c":60:33)
^bb114:
  sea.br ^bb115
^bb115:
  sea.br ^bb116
^bb116:
  %v203 = sea.icmp ule, %v193, %v27 : i64 loc(".not2.i28.i")
  %v204 = sea.const 1 : i1 loc("or.cond23.not")
  %v205 = sea.const 0 : i1 loc("or.cond23.not")
  %v206 = sea.select %v204, %v203, %v205 : i1 loc("or.cond23.not")
  sea.cond_br %v206, ^bb117, ^bb149
^bb117:
  sea.br ^bb118
^bb118:
  %v207 = sea.const 1 : i1 loc("or.cond19")
  %v208 = sea.and %v125, %v207 : i1 loc("or.cond19")
  sea.cond_br %v208, ^bb124, ^bb149
^bb119:
  sea.br ^bb120
^bb120:
  %v209 = sea.const 0 : i64 loc("_170"("aws-c-common/source/byte_buf.c":60:45))
  %v210 = sea.icmp eq, %v193, %v209 : i64 loc("_170"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v210, ^bb121, ^bb123 loc("aws-c-common/source/byte_buf.c":60:50)
^bb121:
  sea.br ^bb122
^bb122:
  %v211 = sea.ptr.null : !sea.ptr<64> loc("_173"("aws-c-common/source/byte_buf.c":60:65))
  %v212 = sea.ptr.cmp eq, %v46, %v211 : !sea.ptr<64> loc("_173"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v212, ^bb124, ^bb123 loc("aws-c-common/source/byte_buf.c":60:74)
^bb123:
  sea.br ^bb149
^bb124:
  sea.br ^bb125
^bb125:
  %v213 = sea.const 0 : i64 loc("_180"("aws-c-common/source/byte_buf.c":60:28))
  %v214 = sea.icmp eq, %v192, %v213 : i64 loc("_180"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v214, ^bb132, ^bb126 loc("aws-c-common/source/byte_buf.c":60:33)
^bb126:
  sea.br ^bb127
^bb127:
  sea.br ^bb128
^bb128:
  sea.br ^bb129
^bb129:
  sea.br ^bb130
^bb130:
  sea.br ^bb131
^bb131:
  %v215 = sea.ptr.null : !sea.ptr<64> loc("_190"("aws-c-common/source/byte_buf.c":61:64))
  %v216 = sea.ptr.cmp ne, %v191, %v215 : !sea.ptr<64> loc("_190"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb136(%v216 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb132:
  sea.br ^bb133
^bb133:
  sea.br ^bb134
^bb134:
  %v217 = sea.ptr.null : !sea.ptr<64> loc("_184"("aws-c-common/source/byte_buf.c":60:65))
  %v218 = sea.ptr.cmp eq, %v191, %v217 : !sea.ptr<64> loc("_184"("aws-c-common/source/byte_buf.c":60:65))
  %v219 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v218, ^bb136(%v219 : i1), ^bb135 loc("aws-c-common/source/byte_buf.c":60:74)
^bb135:
  %v220 = sea.const 0 : i1
  sea.br ^bb136(%v220 : i1)
^bb136(%v221 : i1):
  sea.br ^bb137
^bb137:
  sea.cond_br %v214, ^bb144, ^bb138 loc("aws-c-common/source/byte_buf.c":60:33)
^bb138:
  sea.br ^bb139
^bb139:
  sea.br ^bb140
^bb140:
  sea.br ^bb141
^bb141:
  sea.br ^bb142
^bb142:
  sea.br ^bb143
^bb143:
  %v222 = sea.ptr.null : !sea.ptr<64> loc("_202"("aws-c-common/source/byte_buf.c":61:64))
  %v223 = sea.ptr.cmp ne, %v191, %v222 : !sea.ptr<64> loc("_202"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb148(%v223 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb144:
  sea.br ^bb145
^bb145:
  sea.br ^bb146
^bb146:
  %v224 = sea.ptr.null : !sea.ptr<64> loc("_196"("aws-c-common/source/byte_buf.c":60:65))
  %v225 = sea.ptr.cmp eq, %v191, %v224 : !sea.ptr<64> loc("_196"("aws-c-common/source/byte_buf.c":60:65))
  %v226 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v225, ^bb148(%v226 : i1), ^bb147 loc("aws-c-common/source/byte_buf.c":60:74)
^bb147:
  %v227 = sea.const 0 : i1
  sea.br ^bb148(%v227 : i1)
^bb148(%v228 : i1):
  %v229 = sea.const 1 : i1 loc("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":50:5)
  %v230 = sea.xor %v228, %v229 : i1 loc("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":50:5)
  sea.assume %v230 loc("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":50:5)
  sea.br ^bb149 loc("seahorn/jobs/byte_buf_advance/aws_byte_buf_advance_harness.c":50:5)
^bb149:
  sea.br ^bb150
^bb150:
  %v231 = sea.const 0 : i1
  sea.assert %v231
  sea.halt
}
