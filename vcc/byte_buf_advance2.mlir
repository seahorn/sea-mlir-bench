// Exported from SeaHorn (byte_buf_advance2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm21")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm22")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm23")
  %v3 = sea.mem.nondet "region.80" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm24")
  %v4 = sea.const 32 : i64 loc("_0")
  %v5 = sea.alloca %v4 align 8 [4] : i64 -> !sea.ptr<64> loc("_0")
  %v6 = sea.const 32 : i64 loc("_1")
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
  %v46 = sea.nondet "nd_size_t" [11] : i64 loc("_20"("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":15:18))
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
  %v47 = sea.icmp ugt, %v20, %v21 : i64 loc(".not2.i28.i"("aws-c-common/source/byte_buf.c":61:44))
  %v48 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v47, ^bb22(%v48 : i1), ^bb14 loc("aws-c-common/source/byte_buf.c":61:61)
^bb14:
  sea.br ^bb15
^bb15:
  sea.br ^bb16
^bb16:
  %v49 = sea.ptr.null : !sea.ptr<64> loc("_34"("aws-c-common/source/byte_buf.c":61:64))
  %v50 = sea.ptr.cmp ne, %v40, %v49 : !sea.ptr<64> loc("_34"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb22(%v50 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb17:
  sea.br ^bb18
^bb18:
  %v51 = sea.const 0 : i64 loc("_24"("aws-c-common/source/byte_buf.c":60:45))
  %v52 = sea.icmp eq, %v20, %v51 : i64 loc("_24"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v52, ^bb19, ^bb21 loc("aws-c-common/source/byte_buf.c":60:50)
^bb19:
  sea.br ^bb20
^bb20:
  %v53 = sea.ptr.null : !sea.ptr<64> loc("_27"("aws-c-common/source/byte_buf.c":60:65))
  %v54 = sea.ptr.cmp eq, %v40, %v53 : !sea.ptr<64> loc("_27"("aws-c-common/source/byte_buf.c":60:65))
  %v55 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v54, ^bb22(%v55 : i1), ^bb21 loc("aws-c-common/source/byte_buf.c":60:74)
^bb21:
  %v56 = sea.const 0 : i1
  sea.br ^bb22(%v56 : i1)
^bb22(%v57 : i1):
  sea.assume %v57 loc("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":18:5)
  %v58 = sea.nondet "nd_bool" [12] : i1 loc("_36"("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":19:9))
  sea.cond_br %v58, ^bb46(%v39, %v2 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>), ^bb23 loc("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":19:9)
^bb23:
  %v59 = sea.nondet "nd_size_t" [13] : i64 loc("_38"("seahorn/lib/byte_buf_helper.c":19:18))
  %v60 = sea.nondet "nd_size_t" [14] : i64 loc("_39"("seahorn/lib/byte_buf_helper.c":20:18))
  %v61 = sea.icmp ule, %v59, %v60 : i64 loc("_40"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v61 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v62 = sea.const 11 : i64 loc("_41"("seahorn/lib/byte_buf_helper.c":22:16))
  %v63 = sea.icmp ult, %v60, %v62 : i64 loc("_41"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v63 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb24
^bb24:
  %v64 = sea.store %v2[%v7], %v59 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v65 = sea.ptr.index %v7 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_43"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb25
^bb25:
  %v66 = sea.store %v64[%v65], %v60 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v67 = sea.const 0 : i64 loc("_45"("seahorn/lib/proof_allocators.c":21:15))
  %v68 = sea.icmp eq, %v60, %v67 : i64 loc("_45"("seahorn/lib/proof_allocators.c":21:15))
  %v69 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v68, ^bb29(%v39, %v69 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb26 loc("seahorn/lib/proof_allocators.c":21:10)
^bb26:
  %v70 = sea.nondet "nd_malloc_is_fail" [15] : i1 loc("_47"("seahorn/lib/sea_allocators.c":11:10))
  %v71 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v70, ^bb28(%v39, %v71 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb27 loc("seahorn/lib/sea_allocators.c":11:10)
^bb27:
  %v72 = sea.const 1 : i64 loc("malloc36.i")
  %v73 = sea.mul %v60, %v72 : i64 loc("malloc36.i")
  %v74 = sea.alloca %v73 align 16 [16] : i64 -> !sea.ptr<64> loc("malloc36.i")
  sea.br ^bb28(%v39, %v74 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb28(%v75 : !sea.mem<!sea.ptr<64>, i8>, %v76 : !sea.ptr<64>):
  %v77 = sea.memhavoc %v75[%v76], %v60 [17] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb29(%v77, %v76 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb29(%v78 : !sea.mem<!sea.ptr<64>, i8>, %v79 : !sea.ptr<64>):
  %v80 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_51"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb30
^bb30:
  %v81 = sea.store %v66[%v80], %v79 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  sea.br ^bb31
^bb31:
  sea.br ^bb32
^bb32:
  sea.cond_br %v68, ^bb40, ^bb33 loc("aws-c-common/source/byte_buf.c":60:33)
^bb33:
  sea.br ^bb34
^bb34:
  sea.br ^bb35
^bb35:
  sea.br ^bb36
^bb36:
  %v82 = sea.icmp ugt, %v59, %v60 : i64 loc(".not2.i24.i"("aws-c-common/source/byte_buf.c":61:44))
  %v83 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v82, ^bb45(%v83 : i1), ^bb37 loc("aws-c-common/source/byte_buf.c":61:61)
^bb37:
  sea.br ^bb38
^bb38:
  sea.br ^bb39
^bb39:
  %v84 = sea.ptr.null : !sea.ptr<64> loc("_66"("aws-c-common/source/byte_buf.c":61:64))
  %v85 = sea.ptr.cmp ne, %v79, %v84 : !sea.ptr<64> loc("_66"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb45(%v85 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb40:
  sea.br ^bb41
^bb41:
  %v86 = sea.const 0 : i64 loc("_56"("aws-c-common/source/byte_buf.c":60:45))
  %v87 = sea.icmp eq, %v59, %v86 : i64 loc("_56"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v87, ^bb42, ^bb44 loc("aws-c-common/source/byte_buf.c":60:50)
^bb42:
  sea.br ^bb43
^bb43:
  %v88 = sea.ptr.null : !sea.ptr<64> loc("_59"("aws-c-common/source/byte_buf.c":60:65))
  %v89 = sea.ptr.cmp eq, %v79, %v88 : !sea.ptr<64> loc("_59"("aws-c-common/source/byte_buf.c":60:65))
  %v90 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v89, ^bb45(%v90 : i1), ^bb44 loc("aws-c-common/source/byte_buf.c":60:74)
^bb44:
  %v91 = sea.const 0 : i1
  sea.br ^bb45(%v91 : i1)
^bb45(%v92 : i1):
  sea.assume %v92 loc("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":23:9)
  sea.br ^bb46(%v78, %v81 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>)
^bb46(%v93 : !sea.mem<!sea.ptr<64>, i8>, %v94 : !sea.mem<!sea.ptr<64>, i8>):
  sea.tracking_on loc("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":27:5)
  sea.br ^bb47
^bb47:
  sea.br ^bb48
^bb48:
  %v95 = sea.sub %v21, %v20 : i64 loc("_71"("aws-c-common/source/byte_buf.c":1421:26))
  %v96 = sea.icmp ult, %v95, %v46 : i64 loc(".not.i.i.not"("aws-c-common/source/byte_buf.c":1421:40))
  sea.cond_br %v96, ^bb60, ^bb49 loc("aws-c-common/source/byte_buf.c":1421:9)
^bb49:
  sea.br ^bb50
^bb50:
  %v97 = sea.ptr.null : !sea.ptr<64> loc("_74"("aws-c-common/source/byte_buf.c":1422:59))
  %v98 = sea.ptr.cmp eq, %v40, %v97 : !sea.ptr<64> loc("_74"("aws-c-common/source/byte_buf.c":1422:59))
  %v99 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1422:43)
  sea.cond_br %v98, ^bb54(%v99 : !sea.ptr<64>), ^bb51 loc("aws-c-common/source/byte_buf.c":1422:43)
^bb51:
  sea.br ^bb52
^bb52:
  sea.br ^bb53
^bb53:
  %v100 = sea.ptr.index %v40 [%v20] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_78"("aws-c-common/source/byte_buf.c":1422:92))
  sea.br ^bb54(%v100 : !sea.ptr<64>) loc("aws-c-common/source/byte_buf.c":1422:43)
^bb54(%v101 : !sea.ptr<64>):
  %v102 = sea.const 0 : i64 loc(".not.i.i.i"("aws-c-common/source/byte_buf.c":962:23))
  %v103 = sea.icmp eq, %v46, %v102 : i64 loc(".not.i.i.i"("aws-c-common/source/byte_buf.c":962:23))
  %v104 = sea.ptr.null : !sea.ptr<64> loc("_81"("aws-c-common/source/byte_buf.c":962:18))
  %v105 = sea.select %v103, %v104, %v101 : !sea.ptr<64> loc("_81"("aws-c-common/source/byte_buf.c":962:18))
  %v106 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i.i"("aws-c-common/source/byte_buf.c":1422:19))
  %v107 = sea.store %v94[%v106], %v105 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1422:19)
  %v108 = sea.ptr.index %v7 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy5.i.i"("aws-c-common/source/byte_buf.c":1422:19))
  %v109 = sea.store %v107[%v108], %v46 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":1422:19)
  %v110 = sea.ptr.index %v7 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i.i"("aws-c-common/source/byte_buf.c":1422:19))
  %v111 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1422:19)
  %v112 = sea.store %v109[%v110], %v111 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":1422:19)
  sea.br ^bb55
^bb55:
  sea.br ^bb56
^bb56:
  %v113 = sea.add %v46, %v20 : i64 loc("_84"("aws-c-common/source/byte_buf.c":1423:21))
  %v114 = sea.store %v45[%v5], %v113 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":1423:21)
  sea.br ^bb57
^bb57:
  %v115 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":1424:21)
  %v116 = sea.store %v112[%v7], %v115 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":1424:21)
  %v117 = sea.const 0 : i64 loc(".not.i"("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":37:21))
  %v118 = sea.icmp eq, %v20, %v117 : i64 loc(".not.i"("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":37:21))
  sea.cond_br %v118, ^bb59, ^bb58 loc("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":37:13)
^bb58:
  %v119 = sea.mem.is_modified %v93[%v40] : !sea.mem<!sea.ptr<64>, i8> loc("_87"("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":38:13))
  %v120 = sea.const 1 : i1 loc("_88"("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":38:13))
  %v121 = sea.xor %v119, %v120 : i1 loc("_88"("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":38:13))
  %v122 = sea.mem.is_modified %v93[%v40] : !sea.mem<!sea.ptr<64>, i8> loc("_89"("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":38:13))
  sea.cond_br %v122, ^bb113, ^bb59 loc("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":38:13)
^bb59:
  sea.br ^bb63(%v105, %v46, %v113 : !sea.ptr<64>, i64, i64)
^bb60:
  %v123 = sea.const 0 : i8 loc("aws-c-common/source/byte_buf.c":1429:9)
  %v124 = sea.const 32 : i64 loc("aws-c-common/source/byte_buf.c":1429:9)
  %v125 = sea.memset %v94[%v7], %v123, %v124 inplace align 8 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/source/byte_buf.c":1429:9)
  %v126 = sea.mem.is_modified %v25[%v5] : !sea.mem<!sea.ptr<64>, i8> loc("_92"("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":44:9))
  %v127 = sea.const 1 : i1 loc("_93"("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":44:9))
  %v128 = sea.xor %v126, %v127 : i1 loc("_93"("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":44:9))
  %v129 = sea.mem.is_modified %v25[%v5] : !sea.mem<!sea.ptr<64>, i8> loc("_94"("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":44:9))
  sea.cond_br %v129, ^bb113, ^bb61 loc("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":44:9)
^bb61:
  %v130 = sea.mem.is_modified %v93[%v40] : !sea.mem<!sea.ptr<64>, i8> loc("_96"("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":45:9))
  %v131 = sea.const 1 : i1 loc("_97"("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":45:9))
  %v132 = sea.xor %v130, %v131 : i1 loc("_97"("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":45:9))
  %v133 = sea.mem.is_modified %v93[%v40] : !sea.mem<!sea.ptr<64>, i8> loc("_98"("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":45:9))
  sea.cond_br %v133, ^bb113, ^bb62 loc("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":45:9)
^bb62:
  %v134 = sea.ptr.null : !sea.ptr<64>
  %v135 = sea.const 0 : i64
  sea.br ^bb63(%v134, %v135, %v20 : !sea.ptr<64>, i64, i64)
^bb63(%v136 : !sea.ptr<64>, %v137 : i64, %v138 : i64):
  sea.br ^bb64
^bb64:
  sea.cond_br %v29, ^bb72, ^bb65 loc("aws-c-common/source/byte_buf.c":60:33)
^bb65:
  sea.br ^bb66
^bb66:
  sea.br ^bb67
^bb67:
  sea.br ^bb68
^bb68:
  %v139 = sea.icmp ugt, %v138, %v21 : i64 loc(".not2.i20.i"("aws-c-common/source/byte_buf.c":61:44))
  %v140 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v139, ^bb77(%v140 : i1), ^bb69 loc("aws-c-common/source/byte_buf.c":61:61)
^bb69:
  sea.br ^bb70
^bb70:
  sea.br ^bb71
^bb71:
  %v141 = sea.ptr.null : !sea.ptr<64> loc("_117"("aws-c-common/source/byte_buf.c":61:64))
  %v142 = sea.ptr.cmp ne, %v40, %v141 : !sea.ptr<64> loc("_117"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb77(%v142 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb72:
  sea.br ^bb73
^bb73:
  %v143 = sea.const 0 : i64 loc("_107"("aws-c-common/source/byte_buf.c":60:45))
  %v144 = sea.icmp eq, %v138, %v143 : i64 loc("_107"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v144, ^bb74, ^bb76 loc("aws-c-common/source/byte_buf.c":60:50)
^bb74:
  sea.br ^bb75
^bb75:
  %v145 = sea.ptr.null : !sea.ptr<64> loc("_110"("aws-c-common/source/byte_buf.c":60:65))
  %v146 = sea.ptr.cmp eq, %v40, %v145 : !sea.ptr<64> loc("_110"("aws-c-common/source/byte_buf.c":60:65))
  %v147 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v146, ^bb77(%v147 : i1), ^bb76 loc("aws-c-common/source/byte_buf.c":60:74)
^bb76:
  %v148 = sea.const 0 : i1
  sea.br ^bb77(%v148 : i1)
^bb77(%v149 : i1):
  sea.br ^bb78
^bb78:
  sea.cond_br %v29, ^bb84, ^bb79 loc("aws-c-common/source/byte_buf.c":60:33)
^bb79:
  sea.br ^bb80
^bb80:
  sea.br ^bb81
^bb81:
  %v150 = sea.icmp ule, %v138, %v21 : i64 loc(".not2.i16.i")
  %v151 = sea.const 1 : i1 loc("or.cond11.not")
  %v152 = sea.const 0 : i1 loc("or.cond11.not")
  %v153 = sea.select %v151, %v150, %v152 : i1 loc("or.cond11.not")
  sea.cond_br %v153, ^bb82, ^bb113
^bb82:
  sea.br ^bb83
^bb83:
  %v154 = sea.ptr.null : !sea.ptr<64> loc("_131")
  %v155 = sea.ptr.cmp ne, %v40, %v154 : !sea.ptr<64> loc("_131")
  %v156 = sea.const 1 : i1 loc("or.cond")
  %v157 = sea.and %v155, %v156 : i1 loc("or.cond")
  sea.cond_br %v157, ^bb89, ^bb113
^bb84:
  sea.br ^bb85
^bb85:
  %v158 = sea.const 0 : i64 loc("_122"("aws-c-common/source/byte_buf.c":60:45))
  %v159 = sea.icmp eq, %v138, %v158 : i64 loc("_122"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v159, ^bb86, ^bb88 loc("aws-c-common/source/byte_buf.c":60:50)
^bb86:
  sea.br ^bb87
^bb87:
  %v160 = sea.ptr.null : !sea.ptr<64> loc("_125"("aws-c-common/source/byte_buf.c":60:65))
  %v161 = sea.ptr.cmp eq, %v40, %v160 : !sea.ptr<64> loc("_125"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v161, ^bb89, ^bb88 loc("aws-c-common/source/byte_buf.c":60:74)
^bb88:
  sea.br ^bb113
^bb89:
  sea.br ^bb90
^bb90:
  %v162 = sea.const 0 : i64 loc(".not38"("aws-c-common/source/byte_buf.c":60:28))
  %v163 = sea.icmp eq, %v137, %v162 : i64 loc(".not38"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v163, ^bb97, ^bb91 loc("aws-c-common/source/byte_buf.c":60:33)
^bb91:
  sea.br ^bb92
^bb92:
  sea.br ^bb93
^bb93:
  sea.br ^bb94
^bb94:
  sea.br ^bb95
^bb95:
  sea.br ^bb96
^bb96:
  %v164 = sea.ptr.null : !sea.ptr<64> loc("_142"("aws-c-common/source/byte_buf.c":61:64))
  %v165 = sea.ptr.cmp ne, %v136, %v164 : !sea.ptr<64> loc("_142"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb101(%v165 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb97:
  sea.br ^bb98
^bb98:
  sea.br ^bb99
^bb99:
  %v166 = sea.ptr.null : !sea.ptr<64> loc("_136"("aws-c-common/source/byte_buf.c":60:65))
  %v167 = sea.ptr.cmp eq, %v136, %v166 : !sea.ptr<64> loc("_136"("aws-c-common/source/byte_buf.c":60:65))
  %v168 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v167, ^bb101(%v168 : i1), ^bb100 loc("aws-c-common/source/byte_buf.c":60:74)
^bb100:
  %v169 = sea.const 0 : i1
  sea.br ^bb101(%v169 : i1)
^bb101(%v170 : i1):
  sea.br ^bb102
^bb102:
  sea.cond_br %v163, ^bb108, ^bb103 loc("aws-c-common/source/byte_buf.c":60:33)
^bb103:
  sea.br ^bb104
^bb104:
  sea.br ^bb105
^bb105:
  sea.br ^bb106
^bb106:
  sea.br ^bb107
^bb107:
  %v171 = sea.ptr.null : !sea.ptr<64> loc("_154")
  %v172 = sea.ptr.cmp ne, %v136, %v171 : !sea.ptr<64> loc("_154")
  %v173 = sea.const 1 : i1 loc("or.cond8")
  %v174 = sea.const 0 : i1 loc("or.cond8")
  %v175 = sea.select %v173, %v172, %v174 : i1 loc("or.cond8")
  sea.cond_br %v175, ^bb112, ^bb113
^bb108:
  sea.br ^bb109
^bb109:
  sea.br ^bb110
^bb110:
  %v176 = sea.ptr.null : !sea.ptr<64> loc("_148"("aws-c-common/source/byte_buf.c":60:65))
  %v177 = sea.ptr.cmp eq, %v136, %v176 : !sea.ptr<64> loc("_148"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v177, ^bb112, ^bb111 loc("aws-c-common/source/byte_buf.c":60:74)
^bb111:
  sea.br ^bb113
^bb112:
  %v178 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_155"("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":54:5))
  %v179 = sea.mem.is_modified %v10[%v178] : !sea.mem<!sea.ptr<64>, i8> loc("_155"("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":54:5))
  %v180 = sea.const 1 : i1 loc("_156"("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":54:5))
  %v181 = sea.xor %v179, %v180 : i1 loc("_156"("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":54:5))
  %v182 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_157"("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":54:5))
  %v183 = sea.mem.is_modified %v10[%v182] : !sea.mem<!sea.ptr<64>, i8> loc("_157"("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":54:5))
  sea.assume %v183 loc("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":54:5)
  sea.br ^bb113 loc("seahorn/jobs2/byte_buf_advance2/aws_byte_buf_advance_harness2.c":54:5)
^bb113:
  sea.br ^bb114
^bb114:
  %v184 = sea.const 0 : i1
  sea.assert %v184
  sea.halt
}
