// Exported from SeaHorn (ring_buffer_acquire2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.16" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm45")
  %v1 = sea.mem.nondet "region.48" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm46")
  %v2 = sea.mem.nondet "region.88" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm47")
  %v3 = sea.mem.nondet "region.0" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm48")
  %v4 = sea.mem.nondet "region.128" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm49")
  %v5 = sea.const 32 : i64 loc("_0")
  %v6 = sea.alloca %v5 align 8 [5] : i64 -> !sea.ptr<64> loc("_0")
  %v7 = sea.const 40 : i64 loc("_1")
  %v8 = sea.alloca %v7 align 8 [6] : i64 -> !sea.ptr<64> loc("_1")
  %v9 = sea.const 40 : i64 loc("_2")
  %v10 = sea.alloca %v9 align 8 [7] : i64 -> !sea.ptr<64> loc("_2")
  %v11 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v12 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v13 = sea.store %v3[%v11], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v14 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_3")
  %v15 = sea.ptr.index %v14 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_3")
  %v16 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v17 = sea.store %v13[%v15], %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v18 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_4")
  %v19 = sea.ptr.index %v18 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_4")
  %v20 = sea.const 0 : i8
  %v21 = sea.const 24 : i64
  %v22 = sea.memset %v17[%v19], %v20, %v21 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v23 = sea.nondet "nd_size_t" [8] : i64 loc("_5"("seahorn/lib/byte_buf_helper.c":19:18))
  %v24 = sea.nondet "nd_size_t" [9] : i64 loc("_6"("seahorn/lib/byte_buf_helper.c":20:18))
  %v25 = sea.icmp ule, %v23, %v24 : i64 loc("_7"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v25 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v26 = sea.const 11 : i64 loc("_8"("seahorn/lib/byte_buf_helper.c":22:16))
  %v27 = sea.icmp ult, %v24, %v26 : i64 loc("_8"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v27 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb1
^bb1:
  %v28 = sea.store %v0[%v6], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v29 = sea.ptr.index %v6 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_10"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb2
^bb2:
  %v30 = sea.store %v28[%v29], %v24 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v31 = sea.const 0 : i64 loc("_12"("seahorn/lib/proof_allocators.c":21:15))
  %v32 = sea.icmp eq, %v24, %v31 : i64 loc("_12"("seahorn/lib/proof_allocators.c":21:15))
  %v33 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v32, ^bb6(%v4, %v33 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/proof_allocators.c":21:10)
^bb3:
  %v34 = sea.nondet "nd_malloc_is_fail" [10] : i1 loc("_14"("seahorn/lib/sea_allocators.c":11:10))
  %v35 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v34, ^bb5(%v4, %v35 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/sea_allocators.c":11:10)
^bb4:
  %v36 = sea.const 1 : i64 loc("malloc.i")
  %v37 = sea.mul %v24, %v36 : i64 loc("malloc.i")
  %v38 = sea.alloca %v37 align 16 [11] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb5(%v4, %v38 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb5(%v39 : !sea.mem<!sea.ptr<64>, i8>, %v40 : !sea.ptr<64>):
  %v41 = sea.memhavoc %v39[%v40], %v24 [12] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb6(%v41, %v40 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb6(%v42 : !sea.mem<!sea.ptr<64>, i8>, %v43 : !sea.ptr<64>):
  %v44 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_18"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb7
^bb7:
  %v45 = sea.store %v30[%v44], %v43 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v46 = sea.ptr.index %v6 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_20"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb8
^bb8:
  %v47 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v48 = sea.store %v45[%v46], %v47 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  sea.br ^bb9
^bb9:
  sea.cond_br %v32, ^bb17, ^bb10 loc("aws-c-common/source/byte_buf.c":60:33)
^bb10:
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  sea.br ^bb13
^bb13:
  %v49 = sea.icmp ugt, %v23, %v24 : i64 loc(".not2.i31.i"("aws-c-common/source/byte_buf.c":61:44))
  %v50 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v49, ^bb22(%v50 : i1), ^bb14 loc("aws-c-common/source/byte_buf.c":61:61)
^bb14:
  sea.br ^bb15
^bb15:
  sea.br ^bb16
^bb16:
  %v51 = sea.ptr.null : !sea.ptr<64> loc("_34"("aws-c-common/source/byte_buf.c":61:64))
  %v52 = sea.ptr.cmp ne, %v43, %v51 : !sea.ptr<64> loc("_34"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb22(%v52 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb17:
  sea.br ^bb18
^bb18:
  %v53 = sea.const 0 : i64 loc("_24"("aws-c-common/source/byte_buf.c":60:45))
  %v54 = sea.icmp eq, %v23, %v53 : i64 loc("_24"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v54, ^bb19, ^bb21 loc("aws-c-common/source/byte_buf.c":60:50)
^bb19:
  sea.br ^bb20
^bb20:
  %v55 = sea.ptr.null : !sea.ptr<64> loc("_27"("aws-c-common/source/byte_buf.c":60:65))
  %v56 = sea.ptr.cmp eq, %v43, %v55 : !sea.ptr<64> loc("_27"("aws-c-common/source/byte_buf.c":60:65))
  %v57 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v56, ^bb22(%v57 : i1), ^bb21 loc("aws-c-common/source/byte_buf.c":60:74)
^bb21:
  %v58 = sea.const 0 : i1
  sea.br ^bb22(%v58 : i1)
^bb22(%v59 : i1):
  sea.assume %v59 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":21:3)
  %v60 = sea.nondet "nd_size_t" [13] : i64 loc("_36"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":23:26))
  sea.br ^bb23
^bb23:
  %v61 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":10:23)
  %v62 = sea.store %v1[%v8], %v61 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":10:23)
  %v63 = sea.const 0 : i64 loc("_38"("seahorn/lib/ring_buffer_helper.c":12:12))
  %v64 = sea.icmp ne, %v60, %v63 : i64 loc("_38"("seahorn/lib/ring_buffer_helper.c":12:12))
  sea.assume %v64 loc("seahorn/lib/ring_buffer_helper.c":12:3)
  %v65 = sea.const 0 : i64 loc("_39"("seahorn/lib/proof_allocators.c":17:15))
  %v66 = sea.icmp eq, %v60, %v65 : i64 loc("_39"("seahorn/lib/proof_allocators.c":17:15))
  %v67 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v66, ^bb27(%v67 : !sea.ptr<64>), ^bb24 loc("seahorn/lib/proof_allocators.c":17:10)
^bb24:
  %v68 = sea.nondet "nd_malloc_is_fail" [14] : i1 loc("_41"("seahorn/lib/sea_allocators.c":11:10))
  %v69 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v68, ^bb26(%v42, %v69 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb25 loc("seahorn/lib/sea_allocators.c":11:10)
^bb25:
  %v70 = sea.const 1 : i64 loc("malloc307.i")
  %v71 = sea.mul %v60, %v70 : i64 loc("malloc307.i")
  %v72 = sea.alloca %v71 align 16 [15] : i64 -> !sea.ptr<64> loc("malloc307.i")
  sea.br ^bb26(%v42, %v72 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb26(%v73 : !sea.mem<!sea.ptr<64>, i8>, %v74 : !sea.ptr<64>):
  %v75 = sea.memhavoc %v73[%v74], %v60 [16] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v76 = sea.ptr.null : !sea.ptr<64> loc("_44"("seahorn/lib/sea_allocators.c":45:10))
  %v77 = sea.ptr.cmp ne, %v74, %v76 : !sea.ptr<64> loc("_44"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v77 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb27(%v74 : !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb27(%v78 : !sea.ptr<64>):
  %v79 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_46"("seahorn/lib/ring_buffer_helper.c":13:13))
  sea.br ^bb28
^bb28:
  %v80 = sea.store %v62[%v79], %v78 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":13:24)
  %v81 = sea.nondet "nd_size_t" [17] : i64 loc("_48"("seahorn/lib/ring_buffer_helper.c":14:26))
  %v82 = sea.nondet "nd_size_t" [18] : i64 loc("_49"("seahorn/lib/ring_buffer_helper.c":15:26))
  %v83 = sea.icmp ult, %v81, %v60 : i64 loc("_50"("seahorn/lib/ring_buffer_helper.c":16:24))
  sea.assume %v83 loc("seahorn/lib/ring_buffer_helper.c":16:3)
  %v84 = sea.icmp ult, %v82, %v60 : i64 loc("_51"("seahorn/lib/ring_buffer_helper.c":17:24))
  sea.assume %v84 loc("seahorn/lib/ring_buffer_helper.c":17:3)
  sea.br ^bb29
^bb29:
  %v85 = sea.ptr.index %v8 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_53"("seahorn/lib/ring_buffer_helper.c":18:35))
  sea.br ^bb30
^bb30:
  %v86 = sea.ptr.index %v78 [%v81] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_55"("seahorn/lib/ring_buffer_helper.c":18:63))
  %v87 = sea.store %v80[%v85], %v86 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/atomics_gnu.inl":92:5)
  sea.br ^bb31
^bb31:
  %v88 = sea.ptr.index %v8 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_57"("seahorn/lib/ring_buffer_helper.c":19:35))
  sea.br ^bb32
^bb32:
  %v89 = sea.ptr.index %v78 [%v82] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_59"("seahorn/lib/ring_buffer_helper.c":19:63))
  %v90 = sea.store %v87[%v88], %v89 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/atomics_gnu.inl":92:5)
  sea.br ^bb33
^bb33:
  %v91 = sea.ptr.index %v8 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_61"("seahorn/lib/ring_buffer_helper.c":20:13))
  sea.br ^bb34
^bb34:
  %v92 = sea.ptr.index %v78 [%v60] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_62"("seahorn/lib/ring_buffer_helper.c":20:51))
  %v93 = sea.store %v90[%v91], %v92 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":20:28)
  %v94 = sea.nondet "nd_size_t" [19] : i64 loc("_63"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":27:27))
  sea.br ^bb35
^bb35:
  %v95 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_65"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v96 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_66"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb36
^bb36:
  %v97 = sea.load %v90[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_68"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v98 = sea.load %v90[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_69"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v99 = sea.load %v90[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_70"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v100 = sea.ptr.null : !sea.ptr<64> loc(".not.i285.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v101 = sea.ptr.cmp eq, %v95, %v100 : !sea.ptr<64> loc(".not.i285.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v102 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v101, ^bb41(%v102 : i1), ^bb37 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb37:
  sea.br ^bb38
^bb38:
  %v103 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_73"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v104 = sea.ptr.cmp ugt, %v103, %v95 : !sea.ptr<64> loc(".not1.i287.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v105 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v104, ^bb41(%v105 : i1), ^bb39 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb39:
  sea.br ^bb40
^bb40:
  %v106 = sea.load %v93[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_76"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v107 = sea.ptr.cmp uge, %v106, %v95 : !sea.ptr<64> loc("_77"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb41(%v107 : i1)
^bb41(%v108 : i1):
  %v109 = sea.ptr.null : !sea.ptr<64> loc(".not.i281.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v110 = sea.ptr.cmp eq, %v97, %v109 : !sea.ptr<64> loc(".not.i281.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v111 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v110, ^bb46(%v111 : i1), ^bb42 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb42:
  sea.br ^bb43
^bb43:
  %v112 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_81"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v113 = sea.ptr.cmp ugt, %v112, %v97 : !sea.ptr<64> loc(".not1.i283.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v114 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v113, ^bb46(%v114 : i1), ^bb44 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb44:
  sea.br ^bb45
^bb45:
  %v115 = sea.load %v93[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_84"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v116 = sea.ptr.cmp uge, %v115, %v97 : !sea.ptr<64> loc("_85"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb46(%v116 : i1)
^bb46(%v117 : i1):
  sea.br ^bb47
^bb47:
  %v118 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_88"("aws-c-common/include/aws/common/ring_buffer.inl":39:47))
  %v119 = sea.ptr.cmp eq, %v95, %v118 : !sea.ptr<64> loc(".not.i247.i"("aws-c-common/include/aws/common/ring_buffer.inl":39:34))
  %v120 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
  sea.cond_br %v119, ^bb48, ^bb50(%v120 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb48:
  sea.br ^bb49
^bb49:
  %v121 = sea.ptr.cmp eq, %v97, %v95 : !sea.ptr<64> loc("_91"("aws-c-common/include/aws/common/ring_buffer.inl":39:68))
  sea.br ^bb50(%v121 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb50(%v122 : i1):
  sea.br ^bb51
^bb51:
  %v123 = sea.ptr.null : !sea.ptr<64> loc("_95"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v124 = sea.ptr.cmp ne, %v118, %v123 : !sea.ptr<64> loc("_95"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v125 = sea.const 0 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v126 = sea.select %v124, %v108, %v125 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v127 = sea.const 0 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v128 = sea.select %v126, %v117, %v127 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v129 = sea.const 0 : i1 loc("or.cond5.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v130 = sea.select %v128, %v122, %v129 : i1 loc("or.cond5.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  sea.cond_br %v130, ^bb53, ^bb52 loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
^bb52:
  %v131 = sea.load %v62[%v8] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc(".pmcpy.i.pre"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":33:41))
  %v132 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
  sea.br ^bb55(%v131, %v132 : !sea.ptr<64>, i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
^bb53:
  sea.br ^bb54
^bb54:
  %v133 = sea.load %v62[%v8] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_98"("aws-c-common/include/aws/common/ring_buffer.inl":41:23))
  %v134 = sea.ptr.null : !sea.ptr<64> loc("_99"("aws-c-common/include/aws/common/ring_buffer.inl":41:33))
  %v135 = sea.ptr.cmp ne, %v133, %v134 : !sea.ptr<64> loc("_99"("aws-c-common/include/aws/common/ring_buffer.inl":41:33))
  sea.br ^bb55(%v133, %v135 : !sea.ptr<64>, i1)
^bb55(%v136 : !sea.ptr<64>, %v137 : i1):
  sea.assume %v137 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":30:3)
  %v138 = sea.store %v2[%v10], %v136 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":33:41)
  %v139 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":33:41))
  %v140 = sea.store %v138[%v139], %v118 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":33:41)
  %v141 = sea.ptr.index %v10 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy11.i"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":33:41))
  %v142 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc(".pmcpy14.i"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":33:41))
  %v143 = sea.store %v140[%v141], %v142 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":33:41)
  %v144 = sea.ptr.index %v10 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy16.i"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":33:41))
  %v145 = sea.store %v143[%v144], %v98 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":33:41)
  %v146 = sea.ptr.index %v10 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy21.i"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":33:41))
  %v147 = sea.load %v93[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc(".pmcpy22.i"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":33:41))
  %v148 = sea.store %v145[%v146], %v147 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":33:41)
  sea.tracking_on loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":35:3)
  %v149 = sea.mem.reset_modified %v93[%v8] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":36:3)
  %v150 = sea.const 0 : i64 loc(".not.i.i"("aws-c-common/source/ring_buffer.c":67:5))
  %v151 = sea.icmp eq, %v94, %v150 : i64 loc(".not.i.i"("aws-c-common/source/ring_buffer.c":67:5))
  %v152 = sea.const 0 : i1 loc("aws-c-common/source/ring_buffer.c":67:5)
  sea.cond_br %v151, ^bb88(%v149, %v48, %v152 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1), ^bb56 loc("aws-c-common/source/ring_buffer.c":67:5)
^bb56:
  sea.br ^bb57
^bb57:
  %v153 = sea.load %v90[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_103"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v154 = sea.load %v90[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_104"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb58
^bb58:
  %v155 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_106"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v156 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_107"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v157 = sea.ptr.cmp eq, %v155, %v153 : !sea.ptr<64> loc("_108"("aws-c-common/source/ring_buffer.c":75:18))
  sea.cond_br %v157, ^bb75, ^bb59 loc("aws-c-common/source/ring_buffer.c":75:9)
^bb59:
  %v158 = sea.ptr.cmp ugt, %v153, %v155 : !sea.ptr<64> loc("_133"("aws-c-common/source/ring_buffer.c":93:18))
  sea.cond_br %v158, ^bb71, ^bb60 loc("aws-c-common/source/ring_buffer.c":93:9)
^bb60:
  %v159 = sea.ptr.cmp ult, %v153, %v155 : !sea.ptr<64> loc("_143"("aws-c-common/source/ring_buffer.c":104:25))
  sea.cond_br %v159, ^bb61, ^bb74 loc("aws-c-common/source/ring_buffer.c":104:16)
^bb61:
  sea.br ^bb62
^bb62:
  %v160 = sea.load %v93[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_146"("aws-c-common/source/ring_buffer.c":106:32))
  %v161 = sea.ptr.to_int %v160 : !sea.ptr<64> to i64 loc("_147"("aws-c-common/source/ring_buffer.c":106:47))
  %v162 = sea.ptr.to_int %v155 : !sea.ptr<64> to i64 loc("_148"("aws-c-common/source/ring_buffer.c":106:47))
  %v163 = sea.sub %v161, %v162 : i64 loc("_149"("aws-c-common/source/ring_buffer.c":106:47))
  %v164 = sea.icmp ult, %v163, %v94 : i64 loc(".not2.i34.i"("aws-c-common/source/ring_buffer.c":106:59))
  sea.cond_br %v164, ^bb65, ^bb63 loc("aws-c-common/source/ring_buffer.c":106:13)
^bb63:
  sea.br ^bb64
^bb64:
  %v165 = sea.ptr.index %v155 [%v94] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_152"("aws-c-common/source/ring_buffer.c":107:13))
  %v166 = sea.store %v149[%v85], %v165 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/atomics_gnu.inl":92:5)
  %v167 = sea.const 0 : i64 loc("aws-c-common/source/ring_buffer.c":108:21)
  %v168 = sea.store %v48[%v6], %v167 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/ring_buffer.c":108:21)
  %v169 = sea.store %v168[%v44], %v155 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":108:21)
  %v170 = sea.store %v169[%v29], %v94 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/ring_buffer.c":108:21)
  %v171 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":108:21)
  %v172 = sea.store %v170[%v46], %v171 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":108:21)
  %v173 = sea.const 1 : i1 loc("aws-c-common/source/ring_buffer.c":111:13)
  sea.br ^bb88(%v166, %v172, %v173 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1) loc("aws-c-common/source/ring_buffer.c":111:13)
^bb65:
  sea.br ^bb66
^bb66:
  %v174 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_155"("aws-c-common/source/ring_buffer.c":114:43))
  %v175 = sea.ptr.to_int %v153 : !sea.ptr<64> to i64 loc("_156"("aws-c-common/source/ring_buffer.c":114:31))
  %v176 = sea.ptr.to_int %v174 : !sea.ptr<64> to i64 loc("_157"("aws-c-common/source/ring_buffer.c":114:31))
  %v177 = sea.sub %v175, %v176 : i64 loc("_158"("aws-c-common/source/ring_buffer.c":114:31))
  %v178 = sea.icmp ugt, %v177, %v94 : i64 loc("_159"("aws-c-common/source/ring_buffer.c":114:55))
  sea.cond_br %v178, ^bb67, ^bb74 loc("aws-c-common/source/ring_buffer.c":114:13)
^bb67:
  sea.br ^bb68
^bb68:
  sea.br ^bb69
^bb69:
  %v179 = sea.ptr.index %v174 [%v94] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_163"("aws-c-common/source/ring_buffer.c":115:13))
  %v180 = sea.store %v149[%v85], %v179 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/atomics_gnu.inl":92:5)
  sea.br ^bb70
^bb70:
  %v181 = sea.const 0 : i64 loc("aws-c-common/source/ring_buffer.c":116:21)
  %v182 = sea.store %v48[%v6], %v181 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/ring_buffer.c":116:21)
  %v183 = sea.store %v182[%v44], %v174 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":116:21)
  %v184 = sea.store %v183[%v29], %v94 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/ring_buffer.c":116:21)
  %v185 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":116:21)
  %v186 = sea.store %v184[%v46], %v185 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":116:21)
  %v187 = sea.const 1 : i1 loc("aws-c-common/source/ring_buffer.c":119:13)
  sea.br ^bb88(%v180, %v186, %v187 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1) loc("aws-c-common/source/ring_buffer.c":119:13)
^bb71:
  %v188 = sea.ptr.to_int %v153 : !sea.ptr<64> to i64 loc("_135"("aws-c-common/source/ring_buffer.c":94:33))
  %v189 = sea.ptr.to_int %v155 : !sea.ptr<64> to i64 loc("_136"("aws-c-common/source/ring_buffer.c":94:33))
  %v190 = sea.const 18446744073709551615 : i64 loc("_137"("aws-c-common/source/ring_buffer.c":94:44))
  %v191 = sea.xor %v189, %v190 : i64 loc("_137"("aws-c-common/source/ring_buffer.c":94:44))
  %v192 = sea.add %v191, %v188 : i64 loc("_138"("aws-c-common/source/ring_buffer.c":94:44))
  %v193 = sea.icmp ult, %v192, %v94 : i64 loc(".not3.i.i"("aws-c-common/source/ring_buffer.c":96:19))
  sea.cond_br %v193, ^bb74, ^bb72 loc("aws-c-common/source/ring_buffer.c":96:13)
^bb72:
  sea.br ^bb73
^bb73:
  %v194 = sea.ptr.index %v155 [%v94] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_141"("aws-c-common/source/ring_buffer.c":97:13))
  %v195 = sea.store %v149[%v85], %v194 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/atomics_gnu.inl":92:5)
  %v196 = sea.const 0 : i64 loc("aws-c-common/source/ring_buffer.c":98:21)
  %v197 = sea.store %v48[%v6], %v196 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/ring_buffer.c":98:21)
  %v198 = sea.store %v197[%v44], %v155 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":98:21)
  %v199 = sea.store %v198[%v29], %v94 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/ring_buffer.c":98:21)
  %v200 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":98:21)
  %v201 = sea.store %v199[%v46], %v200 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":98:21)
  %v202 = sea.const 1 : i1
  sea.br ^bb88(%v195, %v201, %v202 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1)
^bb74:
  %v203 = sea.const 0 : i1 loc("aws-c-common/source/ring_buffer.c":125:5)
  sea.br ^bb88(%v149, %v48, %v203 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1) loc("aws-c-common/source/ring_buffer.c":125:5)
^bb75:
  sea.br ^bb76
^bb76:
  %v204 = sea.load %v93[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_111"("aws-c-common/source/ring_buffer.c":76:39))
  %v205 = sea.ptr.null : !sea.ptr<64> loc("_112"("aws-c-common/source/ring_buffer.c":76:54))
  %v206 = sea.ptr.cmp eq, %v204, %v205 : !sea.ptr<64> loc("_112"("aws-c-common/source/ring_buffer.c":76:54))
  %v207 = sea.const 0 : i64 loc("aws-c-common/source/ring_buffer.c":76:29)
  sea.cond_br %v206, ^bb80(%v207 : i64), ^bb77 loc("aws-c-common/source/ring_buffer.c":76:29)
^bb77:
  sea.br ^bb78
^bb78:
  sea.br ^bb79
^bb79:
  %v208 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_116"("aws-c-common/source/ring_buffer.c":76:105))
  %v209 = sea.ptr.to_int %v204 : !sea.ptr<64> to i64 loc("_117"("aws-c-common/source/ring_buffer.c":76:93))
  %v210 = sea.ptr.to_int %v208 : !sea.ptr<64> to i64 loc("_118"("aws-c-common/source/ring_buffer.c":76:93))
  %v211 = sea.sub %v209, %v210 : i64 loc("_119"("aws-c-common/source/ring_buffer.c":76:93))
  sea.br ^bb80(%v211 : i64) loc("aws-c-common/source/ring_buffer.c":76:29)
^bb80(%v212 : i64):
  %v213 = sea.icmp ult, %v212, %v94 : i64 loc("_122"("aws-c-common/source/ring_buffer.c":78:28))
  sea.cond_br %v213, ^bb87, ^bb81 loc("aws-c-common/source/ring_buffer.c":78:13)
^bb81:
  sea.br ^bb82
^bb82:
  %v214 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_126"("aws-c-common/source/ring_buffer.c":83:9))
  sea.br ^bb83
^bb83:
  %v215 = sea.ptr.index %v214 [%v94] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_128"("aws-c-common/source/ring_buffer.c":83:9))
  %v216 = sea.store %v149[%v85], %v215 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/atomics_gnu.inl":92:5)
  sea.br ^bb84
^bb84:
  sea.br ^bb85
^bb85:
  %v217 = sea.store %v216[%v88], %v214 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/atomics_gnu.inl":92:5)
  sea.br ^bb86
^bb86:
  %v218 = sea.const 0 : i64 loc("aws-c-common/source/ring_buffer.c":85:17)
  %v219 = sea.store %v48[%v6], %v218 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/ring_buffer.c":85:17)
  %v220 = sea.store %v219[%v44], %v214 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":85:17)
  %v221 = sea.store %v220[%v29], %v94 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/ring_buffer.c":85:17)
  %v222 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":85:17)
  %v223 = sea.store %v221[%v46], %v222 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":85:17)
  %v224 = sea.const 1 : i1 loc("aws-c-common/source/ring_buffer.c":88:9)
  sea.br ^bb88(%v217, %v223, %v224 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1) loc("aws-c-common/source/ring_buffer.c":88:9)
^bb87:
  %v225 = sea.const 0 : i1 loc("aws-c-common/source/ring_buffer.c":81:13)
  sea.br ^bb88(%v149, %v48, %v225 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1) loc("aws-c-common/source/ring_buffer.c":81:13)
^bb88(%v226 : !sea.mem<!sea.ptr<64>, i8>, %v227 : !sea.mem<!sea.ptr<64>, i8>, %v228 : i1):
  sea.br ^bb89
^bb89:
  %v229 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_167"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v230 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_168"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb90
^bb90:
  %v231 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_170"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v232 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_171"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb91
^bb91:
  %v233 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_173"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v234 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_174"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb92
^bb92:
  %v235 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_176"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v236 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_177"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.cond_br %v228, ^bb94, ^bb93 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":46:7)
^bb93:
  %v237 = sea.mem.is_modified %v226[%v8] : !sea.mem<!sea.ptr<64>, i8> loc("_484"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":72:5))
  %v238 = sea.const 1 : i1 loc("_485"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":72:5))
  %v239 = sea.xor %v237, %v238 : i1 loc("_485"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":72:5))
  %v240 = sea.mem.is_modified %v226[%v8] : !sea.mem<!sea.ptr<64>, i8> loc("_486"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":72:5))
  sea.cond_br %v240, ^bb273, ^bb231 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":72:5)
^bb94:
  sea.br ^bb95
^bb95:
  %v241 = sea.load %v227[%v29] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_180"("aws-c-common/source/byte_buf.c":60:19))
  %v242 = sea.const 0 : i64 loc("_181"("aws-c-common/source/byte_buf.c":60:28))
  %v243 = sea.icmp eq, %v241, %v242 : i64 loc("_181"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v243, ^bb103, ^bb96 loc("aws-c-common/source/byte_buf.c":60:33)
^bb96:
  sea.br ^bb97
^bb97:
  sea.br ^bb98
^bb98:
  %v244 = sea.load %v227[%v6] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_192"("aws-c-common/source/byte_buf.c":61:40))
  sea.br ^bb99
^bb99:
  %v245 = sea.icmp ugt, %v244, %v241 : i64 loc(".not2.i27.i"("aws-c-common/source/byte_buf.c":61:44))
  %v246 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v245, ^bb108(%v244, %v246 : i64, i1), ^bb100 loc("aws-c-common/source/byte_buf.c":61:61)
^bb100:
  sea.br ^bb101
^bb101:
  sea.br ^bb102
^bb102:
  %v247 = sea.load %v227[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_197"("aws-c-common/source/byte_buf.c":61:64))
  %v248 = sea.ptr.null : !sea.ptr<64> loc("_198"("aws-c-common/source/byte_buf.c":61:64))
  %v249 = sea.ptr.cmp ne, %v247, %v248 : !sea.ptr<64> loc("_198"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb108(%v244, %v249 : i64, i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb103:
  sea.br ^bb104
^bb104:
  %v250 = sea.load %v227[%v6] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_184"("aws-c-common/source/byte_buf.c":60:41))
  %v251 = sea.const 0 : i64 loc("_185"("aws-c-common/source/byte_buf.c":60:45))
  %v252 = sea.icmp eq, %v250, %v251 : i64 loc("_185"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v252, ^bb105, ^bb107 loc("aws-c-common/source/byte_buf.c":60:50)
^bb105:
  sea.br ^bb106
^bb106:
  %v253 = sea.load %v227[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_188"("aws-c-common/source/byte_buf.c":60:58))
  %v254 = sea.ptr.null : !sea.ptr<64> loc("_189"("aws-c-common/source/byte_buf.c":60:65))
  %v255 = sea.ptr.cmp eq, %v253, %v254 : !sea.ptr<64> loc("_189"("aws-c-common/source/byte_buf.c":60:65))
  %v256 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":60:74)
  %v257 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v255, ^bb108(%v256, %v257 : i64, i1), ^bb107 loc("aws-c-common/source/byte_buf.c":60:74)
^bb107:
  %v258 = sea.const 0 : i1
  sea.br ^bb108(%v250, %v258 : i64, i1)
^bb108(%v259 : i64, %v260 : i1):
  sea.br ^bb109
^bb109:
  sea.cond_br %v243, ^bb115, ^bb110 loc("aws-c-common/source/byte_buf.c":60:33)
^bb110:
  sea.br ^bb111
^bb111:
  sea.br ^bb112
^bb112:
  %v261 = sea.icmp ule, %v259, %v241 : i64 loc(".not2.i.i")
  %v262 = sea.const 1 : i1 loc("or.cond24.not")
  %v263 = sea.const 0 : i1 loc("or.cond24.not")
  %v264 = sea.select %v262, %v261, %v263 : i1 loc("or.cond24.not")
  sea.cond_br %v264, ^bb113, ^bb273
^bb113:
  sea.br ^bb114
^bb114:
  %v265 = sea.load %v227[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_214")
  %v266 = sea.ptr.null : !sea.ptr<64> loc("_215")
  %v267 = sea.ptr.cmp ne, %v265, %v266 : !sea.ptr<64> loc("_215")
  %v268 = sea.const 1 : i1 loc("or.cond")
  %v269 = sea.const 0 : i1 loc("or.cond")
  %v270 = sea.select %v268, %v267, %v269 : i1 loc("or.cond")
  sea.cond_br %v270, ^bb120(%v265 : !sea.ptr<64>), ^bb273
^bb115:
  sea.br ^bb116
^bb116:
  %v271 = sea.const 0 : i64 loc("_204"("aws-c-common/source/byte_buf.c":60:45))
  %v272 = sea.icmp eq, %v259, %v271 : i64 loc("_204"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v272, ^bb117, ^bb119 loc("aws-c-common/source/byte_buf.c":60:50)
^bb117:
  sea.br ^bb118
^bb118:
  %v273 = sea.load %v227[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_207"("aws-c-common/source/byte_buf.c":60:58))
  %v274 = sea.ptr.null : !sea.ptr<64> loc("_208"("aws-c-common/source/byte_buf.c":60:65))
  %v275 = sea.ptr.cmp eq, %v273, %v274 : !sea.ptr<64> loc("_208"("aws-c-common/source/byte_buf.c":60:65))
  %v276 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v275, ^bb120(%v276 : !sea.ptr<64>), ^bb119 loc("aws-c-common/source/byte_buf.c":60:74)
^bb119:
  sea.br ^bb273
^bb120(%v277 : !sea.ptr<64>):
  %v278 = sea.icmp eq, %v241, %v94 : i64 loc("_217"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":48:5))
  sea.cond_br %v278, ^bb121, ^bb273 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":48:5)
^bb121:
  %v279 = sea.ptr.null : !sea.ptr<64> loc("_219"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":49:5))
  %v280 = sea.ptr.cmp ne, %v277, %v279 : !sea.ptr<64> loc("_219"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":49:5))
  %v281 = sea.const 1 : i1 loc("_220"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":49:5))
  %v282 = sea.select %v243, %v281, %v280 : i1 loc("_220"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":49:5))
  sea.cond_br %v282, ^bb122, ^bb273 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":49:5)
^bb122:
  %v283 = sea.const 0 : i64 loc("_222"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":50:74))
  %v284 = sea.icmp eq, %v259, %v283 : i64 loc("_222"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":50:74))
  sea.cond_br %v284, ^bb123, ^bb273 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":50:74)
^bb123:
  sea.br ^bb124
^bb124:
  %v285 = sea.const 0 : i1 loc("aws-c-common/source/ring_buffer.c":241:24)
  sea.cond_br %v280, ^bb125, ^bb136(%v285 : i1) loc("aws-c-common/source/ring_buffer.c":241:24)
^bb125:
  sea.br ^bb126
^bb126:
  %v286 = sea.load %v226[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_227"("aws-c-common/source/ring_buffer.c":241:40))
  %v287 = sea.ptr.null : !sea.ptr<64> loc(".not1.i88.i"("aws-c-common/source/ring_buffer.c":241:27))
  %v288 = sea.ptr.cmp eq, %v286, %v287 : !sea.ptr<64> loc(".not1.i88.i"("aws-c-common/source/ring_buffer.c":241:27))
  %v289 = sea.const 0 : i1 loc("aws-c-common/source/ring_buffer.c":241:51)
  sea.cond_br %v288, ^bb136(%v289 : i1), ^bb127 loc("aws-c-common/source/ring_buffer.c":241:51)
^bb127:
  sea.br ^bb128
^bb128:
  %v290 = sea.load %v226[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_230"("aws-c-common/source/ring_buffer.c":241:67))
  %v291 = sea.ptr.null : !sea.ptr<64> loc(".not2.i89.i"("aws-c-common/source/ring_buffer.c":241:54))
  %v292 = sea.ptr.cmp eq, %v290, %v291 : !sea.ptr<64> loc(".not2.i89.i"("aws-c-common/source/ring_buffer.c":241:54))
  %v293 = sea.const 0 : i1 loc("aws-c-common/source/ring_buffer.c":241:82)
  sea.cond_br %v292, ^bb136(%v293 : i1), ^bb129 loc("aws-c-common/source/ring_buffer.c":241:82)
^bb129:
  sea.br ^bb130
^bb130:
  sea.br ^bb131
^bb131:
  %v294 = sea.ptr.cmp ult, %v277, %v286 : !sea.ptr<64> loc(".not3.i90.i"("aws-c-common/source/ring_buffer.c":242:24))
  %v295 = sea.const 0 : i1 loc("aws-c-common/source/ring_buffer.c":242:51)
  sea.cond_br %v294, ^bb136(%v295 : i1), ^bb132 loc("aws-c-common/source/ring_buffer.c":242:51)
^bb132:
  sea.br ^bb133
^bb133:
  sea.br ^bb134
^bb134:
  sea.br ^bb135
^bb135:
  %v296 = sea.ptr.index %v277 [%v94] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_238"("aws-c-common/source/ring_buffer.c":242:66))
  %v297 = sea.ptr.cmp ule, %v296, %v290 : !sea.ptr<64> loc("_239"("aws-c-common/source/ring_buffer.c":242:82))
  sea.br ^bb136(%v297 : i1)
^bb136(%v298 : i1):
  %v299 = sea.const 1 : i1 loc("or.cond26.not")
  %v300 = sea.and %v280, %v299 : i1 loc("or.cond26.not")
  sea.cond_br %v300, ^bb137, ^bb273
^bb137:
  %v301 = sea.load %v226[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_242")
  %v302 = sea.ptr.null : !sea.ptr<64> loc(".not1.i93.i")
  %v303 = sea.ptr.cmp ne, %v301, %v302 : !sea.ptr<64> loc(".not1.i93.i")
  %v304 = sea.const 1 : i1 loc("or.cond28.not")
  %v305 = sea.const 0 : i1 loc("or.cond28.not")
  %v306 = sea.select %v304, %v303, %v305 : i1 loc("or.cond28.not")
  sea.cond_br %v306, ^bb138, ^bb273
^bb138:
  %v307 = sea.load %v226[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_244")
  %v308 = sea.ptr.null : !sea.ptr<64> loc(".not2.i94.i")
  %v309 = sea.ptr.cmp ne, %v307, %v308 : !sea.ptr<64> loc(".not2.i94.i")
  %v310 = sea.const 1 : i1 loc("or.cond30.not")
  %v311 = sea.const 0 : i1 loc("or.cond30.not")
  %v312 = sea.select %v310, %v309, %v311 : i1 loc("or.cond30.not")
  sea.cond_br %v312, ^bb139, ^bb273
^bb139:
  sea.br ^bb140
^bb140:
  %v313 = sea.ptr.cmp uge, %v277, %v301 : !sea.ptr<64> loc(".not3.i95.i")
  %v314 = sea.const 1 : i1 loc("or.cond32.not")
  %v315 = sea.const 0 : i1 loc("or.cond32.not")
  %v316 = sea.select %v314, %v313, %v315 : i1 loc("or.cond32.not")
  sea.cond_br %v316, ^bb141, ^bb273
^bb141:
  sea.br ^bb142
^bb142:
  sea.br ^bb143
^bb143:
  %v317 = sea.ptr.index %v277 [%v94] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_250")
  %v318 = sea.ptr.cmp ule, %v317, %v307 : !sea.ptr<64> loc("_251")
  %v319 = sea.const 1 : i1 loc("or.cond19")
  %v320 = sea.const 0 : i1 loc("or.cond19")
  %v321 = sea.select %v319, %v318, %v320 : i1 loc("or.cond19")
  sea.cond_br %v321, ^bb144, ^bb273
^bb144:
  sea.br ^bb145
^bb145:
  %v322 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_254"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v323 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_255"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb146
^bb146:
  %v324 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_256"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v325 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_257"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v326 = sea.ptr.cmp eq, %v322, %v324 : !sea.ptr<64> loc("_258"("aws-c-common/include/aws/common/ring_buffer.inl":26:17))
  %v327 = sea.load %v140[%v139] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_259"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":0:0))
  %v328 = sea.ptr.index %v327 [%v94] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_260"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":0:0))
  %v329 = sea.ptr.cmp eq, %v233, %v328 : !sea.ptr<64> loc("_261"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":0:0))
  sea.cond_br %v326, ^bb149, ^bb147 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":52:9)
^bb147:
  %v330 = sea.ptr.index %v229 [%v94] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_266"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":56:7))
  %v331 = sea.ptr.cmp eq, %v233, %v330 : !sea.ptr<64> loc("_267"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":56:7))
  %v332 = sea.const 1 : i1 loc("_268"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":56:7))
  %v333 = sea.select %v329, %v332, %v331 : i1 loc("_268"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":56:7))
  sea.cond_br %v333, ^bb148, ^bb273 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":56:7)
^bb148:
  %v334 = sea.ptr.cmp eq, %v235, %v231 : !sea.ptr<64> loc("_270"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":58:7))
  sea.cond_br %v334, ^bb151, ^bb273 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":58:7)
^bb149:
  sea.cond_br %v329, ^bb150, ^bb273 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":53:7)
^bb150:
  %v335 = sea.ptr.cmp eq, %v235, %v327 : !sea.ptr<64> loc("_264"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":54:7))
  sea.cond_br %v335, ^bb151, ^bb273 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":54:7)
^bb151:
  sea.br ^bb152
^bb152:
  %v336 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_273"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v337 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_274"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb153
^bb153:
  %v338 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_276"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v339 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_277"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v340 = sea.ptr.cmp eq, %v338, %v336 : !sea.ptr<64> loc("_278"("seahorn/include/cbmc/ring_buffer_abstract_states.h":14:17))
  %v341 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":60:5)
  sea.cond_br %v340, ^bb154, ^bb158(%v341 : i1) loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":60:5)
^bb154:
  sea.br ^bb155
^bb155:
  %v342 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_281"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v343 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_282"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb156
^bb156:
  %v344 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_284"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v345 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_285"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb157
^bb157:
  %v346 = sea.load %v226[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_286"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:22))
  %v347 = sea.ptr.cmp eq, %v346, %v344 : !sea.ptr<64> loc("_287"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:33))
  %v348 = sea.ptr.cmp ult, %v344, %v342 : !sea.ptr<64> loc("_288"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v349 = sea.const 0 : i1 loc("_289"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v350 = sea.select %v347, %v348, %v349 : i1 loc("_289"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  sea.br ^bb158(%v350 : i1) loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":60:5)
^bb158(%v351 : i1):
  sea.br ^bb159
^bb159:
  %v352 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_293"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v353 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_294"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb160
^bb160:
  %v354 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_296"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v355 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_297"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v356 = sea.ptr.cmp eq, %v354, %v352 : !sea.ptr<64> loc("_298"("seahorn/include/cbmc/ring_buffer_abstract_states.h":14:17))
  sea.cond_br %v356, ^bb161, ^bb165 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":60:5)
^bb161:
  sea.br ^bb162
^bb162:
  %v357 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_301"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v358 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_302"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb163
^bb163:
  %v359 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_304"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v360 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_305"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb164
^bb164:
  %v361 = sea.load %v226[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_306"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:22))
  %v362 = sea.ptr.cmp eq, %v361, %v359 : !sea.ptr<64> loc("_307"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:33))
  %v363 = sea.ptr.cmp ult, %v359, %v357 : !sea.ptr<64> loc("_308"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v364 = sea.const 0 : i1 loc("_309"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v365 = sea.select %v362, %v363, %v364 : i1 loc("_309"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  sea.cond_br %v365, ^bb165, ^bb273 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":60:5)
^bb165:
  sea.br ^bb166
^bb166:
  %v366 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_311"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v367 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_312"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb167
^bb167:
  %v368 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_314"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v369 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_315"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb168
^bb168:
  %v370 = sea.load %v140[%v139] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_316"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:22))
  %v371 = sea.ptr.cmp eq, %v370, %v368 : !sea.ptr<64> loc("_317"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:33))
  %v372 = sea.ptr.cmp ult, %v368, %v366 : !sea.ptr<64> loc("_318"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v373 = sea.const 0 : i1 loc("_319"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v374 = sea.select %v371, %v372, %v373 : i1 loc("_319"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v375 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":62:5)
  sea.cond_br %v374, ^bb169, ^bb173(%v375 : i1) loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":62:5)
^bb169:
  sea.br ^bb170
^bb170:
  %v376 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_322"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v377 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_323"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb171
^bb171:
  %v378 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_325"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v379 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_326"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb172
^bb172:
  %v380 = sea.load %v226[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_327"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:22))
  %v381 = sea.ptr.cmp eq, %v380, %v378 : !sea.ptr<64> loc("_328"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:33))
  %v382 = sea.ptr.cmp ult, %v378, %v376 : !sea.ptr<64> loc("_329"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v383 = sea.const 0 : i1 loc("_330"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v384 = sea.select %v381, %v382, %v383 : i1 loc("_330"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  sea.br ^bb173(%v384 : i1) loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":62:5)
^bb173(%v385 : i1):
  sea.br ^bb174
^bb174:
  %v386 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_334"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v387 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_335"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb175
^bb175:
  %v388 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_337"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v389 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_338"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb176
^bb176:
  %v390 = sea.load %v140[%v139] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_339"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:22))
  %v391 = sea.ptr.cmp eq, %v390, %v388 : !sea.ptr<64> loc("_340"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:33))
  %v392 = sea.ptr.cmp ult, %v388, %v386 : !sea.ptr<64> loc("_341"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v393 = sea.const 0 : i1 loc("_342"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v394 = sea.select %v391, %v392, %v393 : i1 loc("_342"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  sea.cond_br %v394, ^bb177, ^bb181 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":62:5)
^bb177:
  sea.br ^bb178
^bb178:
  %v395 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_345"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v396 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_346"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb179
^bb179:
  %v397 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_348"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v398 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_349"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb180
^bb180:
  %v399 = sea.load %v226[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_350"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:22))
  %v400 = sea.ptr.cmp eq, %v399, %v397 : !sea.ptr<64> loc("_351"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:33))
  %v401 = sea.ptr.cmp ult, %v397, %v395 : !sea.ptr<64> loc("_352"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v402 = sea.const 0 : i1 loc("_353"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v403 = sea.select %v400, %v401, %v402 : i1 loc("_353"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  sea.cond_br %v403, ^bb181, ^bb273 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":62:5)
^bb181:
  sea.br ^bb182
^bb182:
  %v404 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_355"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v405 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_356"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb183
^bb183:
  %v406 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_358"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v407 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_359"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb184
^bb184:
  %v408 = sea.load %v140[%v139] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_360"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:22))
  %v409 = sea.ptr.cmp ult, %v408, %v406 : !sea.ptr<64> loc("_361"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:33))
  %v410 = sea.ptr.cmp ult, %v406, %v404 : !sea.ptr<64> loc("_362"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v411 = sea.const 0 : i1 loc("_363"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v412 = sea.select %v409, %v410, %v411 : i1 loc("_363"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v413 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":64:5)
  sea.cond_br %v412, ^bb185, ^bb192(%v413 : i1) loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":64:5)
^bb185:
  sea.br ^bb186
^bb186:
  %v414 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_366"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v415 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_367"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb187
^bb187:
  %v416 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_369"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v417 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_370"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb188
^bb188:
  %v418 = sea.load %v226[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_371"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:22))
  %v419 = sea.ptr.cmp ult, %v418, %v416 : !sea.ptr<64> loc("_372"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:33))
  %v420 = sea.ptr.cmp ult, %v416, %v414 : !sea.ptr<64> loc("_373"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v421 = sea.const 0 : i1 loc("_374"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v422 = sea.select %v419, %v420, %v421 : i1 loc("_374"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v423 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":64:5)
  sea.cond_br %v422, ^bb192(%v423 : i1), ^bb189 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":64:5)
^bb189:
  sea.br ^bb190
^bb190:
  %v424 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_377"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v425 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_378"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb191
^bb191:
  %v426 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_379"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v427 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_380"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v428 = sea.ptr.cmp ugt, %v426, %v424 : !sea.ptr<64> loc("_381"("seahorn/include/cbmc/ring_buffer_abstract_states.h":41:17))
  sea.br ^bb192(%v428 : i1) loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":64:5)
^bb192(%v429 : i1):
  sea.br ^bb193
^bb193:
  %v430 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_385"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v431 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_386"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb194
^bb194:
  %v432 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_388"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v433 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_389"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb195
^bb195:
  %v434 = sea.load %v140[%v139] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_390"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:22))
  %v435 = sea.ptr.cmp ult, %v434, %v432 : !sea.ptr<64> loc("_391"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:33))
  %v436 = sea.ptr.cmp ult, %v432, %v430 : !sea.ptr<64> loc("_392"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v437 = sea.const 0 : i1 loc("_393"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v438 = sea.select %v435, %v436, %v437 : i1 loc("_393"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  sea.cond_br %v438, ^bb196, ^bb203 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":64:5)
^bb196:
  sea.br ^bb197
^bb197:
  %v439 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_396"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v440 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_397"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb198
^bb198:
  %v441 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_399"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v442 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_400"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb199
^bb199:
  %v443 = sea.load %v226[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_401"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:22))
  %v444 = sea.ptr.cmp ult, %v443, %v441 : !sea.ptr<64> loc("_402"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:33))
  %v445 = sea.ptr.cmp ult, %v441, %v439 : !sea.ptr<64> loc("_403"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v446 = sea.const 0 : i1 loc("_404"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v447 = sea.select %v444, %v445, %v446 : i1 loc("_404"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  sea.cond_br %v447, ^bb203, ^bb200 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":64:5)
^bb200:
  sea.br ^bb201
^bb201:
  %v448 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_407"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v449 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_408"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb202
^bb202:
  %v450 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_409"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v451 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_410"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v452 = sea.ptr.cmp ugt, %v450, %v448 : !sea.ptr<64> loc("_411"("seahorn/include/cbmc/ring_buffer_abstract_states.h":41:17))
  sea.cond_br %v452, ^bb203, ^bb273 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":64:5)
^bb203:
  sea.br ^bb204
^bb204:
  %v453 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_413"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v454 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_414"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb205
^bb205:
  %v455 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_415"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v456 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_416"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v457 = sea.ptr.cmp ugt, %v455, %v453 : !sea.ptr<64> loc("_417"("seahorn/include/cbmc/ring_buffer_abstract_states.h":41:17))
  %v458 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":67:5)
  sea.cond_br %v457, ^bb206, ^bb209(%v458 : i1) loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":67:5)
^bb206:
  sea.br ^bb207
^bb207:
  %v459 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_420"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v460 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_421"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb208
^bb208:
  %v461 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_422"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v462 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_423"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v463 = sea.ptr.cmp ugt, %v461, %v459 : !sea.ptr<64> loc("_424"("seahorn/include/cbmc/ring_buffer_abstract_states.h":41:17))
  sea.br ^bb209(%v463 : i1) loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":67:5)
^bb209(%v464 : i1):
  sea.br ^bb210
^bb210:
  %v465 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_428"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v466 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_429"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb211
^bb211:
  %v467 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_430"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v468 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_431"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v469 = sea.ptr.cmp ugt, %v467, %v465 : !sea.ptr<64> loc("_432"("seahorn/include/cbmc/ring_buffer_abstract_states.h":41:17))
  sea.cond_br %v469, ^bb212, ^bb215 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":67:5)
^bb212:
  sea.br ^bb213
^bb213:
  %v470 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_435"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v471 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_436"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb214
^bb214:
  %v472 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_437"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v473 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_438"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v474 = sea.ptr.cmp ugt, %v472, %v470 : !sea.ptr<64> loc("_439"("seahorn/include/cbmc/ring_buffer_abstract_states.h":41:17))
  sea.cond_br %v474, ^bb215, ^bb273 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":67:5)
^bb215:
  sea.br ^bb216
^bb216:
  %v475 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_441"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v476 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_442"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb217
^bb217:
  %v477 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_444"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v478 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_445"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb218
^bb218:
  %v479 = sea.load %v140[%v139] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_446"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:22))
  %v480 = sea.ptr.cmp eq, %v479, %v477 : !sea.ptr<64> loc("_447"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:33))
  %v481 = sea.ptr.cmp ult, %v477, %v475 : !sea.ptr<64> loc("_448"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v482 = sea.const 0 : i1 loc("_449"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v483 = sea.select %v480, %v481, %v482 : i1 loc("_449"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v484 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":69:5)
  sea.cond_br %v483, ^bb219, ^bb223(%v484 : i1) loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":69:5)
^bb219:
  sea.br ^bb220
^bb220:
  %v485 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_452"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v486 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_453"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb221
^bb221:
  %v487 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_455"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v488 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_456"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb222
^bb222:
  %v489 = sea.load %v226[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_457"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:22))
  %v490 = sea.ptr.cmp uge, %v489, %v487 : !sea.ptr<64> loc("_458"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:33))
  %v491 = sea.ptr.cmp uge, %v487, %v485 : !sea.ptr<64> loc("_459"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v492 = sea.const 1 : i1 loc(".not12"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":69:5))
  %v493 = sea.select %v490, %v492, %v491 : i1 loc(".not12"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":69:5))
  sea.br ^bb223(%v493 : i1)
^bb223(%v494 : i1):
  sea.br ^bb224
^bb224:
  %v495 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_463"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v496 = sea.load %v143[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_464"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb225
^bb225:
  %v497 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_466"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v498 = sea.load %v145[%v144] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_467"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb226
^bb226:
  %v499 = sea.load %v140[%v139] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_468"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:22))
  %v500 = sea.ptr.cmp eq, %v499, %v497 : !sea.ptr<64> loc("_469"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:33))
  %v501 = sea.ptr.cmp ult, %v497, %v495 : !sea.ptr<64> loc("_470"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v502 = sea.const 0 : i1 loc("_471"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v503 = sea.select %v500, %v501, %v502 : i1 loc("_471"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  sea.cond_br %v503, ^bb227, ^bb231 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":69:5)
^bb227:
  sea.br ^bb228
^bb228:
  %v504 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_474"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v505 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_475"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb229
^bb229:
  %v506 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_477"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v507 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_478"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb230
^bb230:
  %v508 = sea.load %v226[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_479"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:22))
  %v509 = sea.ptr.cmp ult, %v508, %v506 : !sea.ptr<64> loc("_480"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:33))
  %v510 = sea.ptr.cmp ult, %v506, %v504 : !sea.ptr<64> loc("_481"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v511 = sea.const 0 : i1 loc("_482"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v512 = sea.select %v509, %v510, %v511 : i1 loc("_482"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  sea.cond_br %v512, ^bb273, ^bb231 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":69:5)
^bb231:
  sea.br ^bb232
^bb232:
  %v513 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_488"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v514 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_489"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb233
^bb233:
  %v515 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_491"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v516 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_492"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v517 = sea.ptr.null : !sea.ptr<64> loc(".not.i277.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v518 = sea.ptr.cmp eq, %v513, %v517 : !sea.ptr<64> loc(".not.i277.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v519 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v518, ^bb238(%v519 : i1), ^bb234 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb234:
  sea.br ^bb235
^bb235:
  %v520 = sea.load %v226[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_495"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v521 = sea.ptr.cmp ugt, %v520, %v513 : !sea.ptr<64> loc(".not1.i279.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v522 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v521, ^bb238(%v522 : i1), ^bb236 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb236:
  sea.br ^bb237
^bb237:
  %v523 = sea.load %v226[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_498"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v524 = sea.ptr.cmp uge, %v523, %v513 : !sea.ptr<64> loc("_499"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb238(%v524 : i1)
^bb238(%v525 : i1):
  %v526 = sea.ptr.null : !sea.ptr<64> loc(".not.i273.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v527 = sea.ptr.cmp eq, %v515, %v526 : !sea.ptr<64> loc(".not.i273.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v528 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v527, ^bb243(%v528 : i1), ^bb239 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb239:
  sea.br ^bb240
^bb240:
  %v529 = sea.load %v226[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_503"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v530 = sea.ptr.cmp ugt, %v529, %v515 : !sea.ptr<64> loc(".not1.i275.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v531 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v530, ^bb243(%v531 : i1), ^bb241 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb241:
  sea.br ^bb242
^bb242:
  %v532 = sea.load %v226[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_506"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v533 = sea.ptr.cmp uge, %v532, %v515 : !sea.ptr<64> loc("_507"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb243(%v533 : i1)
^bb243(%v534 : i1):
  sea.br ^bb244
^bb244:
  %v535 = sea.load %v226[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_510"("aws-c-common/include/aws/common/ring_buffer.inl":39:47))
  %v536 = sea.ptr.cmp eq, %v513, %v535 : !sea.ptr<64> loc(".not.i251.i"("aws-c-common/include/aws/common/ring_buffer.inl":39:34))
  %v537 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
  sea.cond_br %v536, ^bb245, ^bb247(%v537 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb245:
  sea.br ^bb246
^bb246:
  %v538 = sea.ptr.cmp eq, %v515, %v513 : !sea.ptr<64> loc("_513"("aws-c-common/include/aws/common/ring_buffer.inl":39:68))
  sea.br ^bb247(%v538 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb247(%v539 : i1):
  sea.br ^bb248
^bb248:
  %v540 = sea.ptr.null : !sea.ptr<64> loc("_517"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v541 = sea.ptr.cmp ne, %v535, %v540 : !sea.ptr<64> loc("_517"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v542 = sea.const 0 : i1 loc("or.cond.i252.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v543 = sea.select %v541, %v525, %v542 : i1 loc("or.cond.i252.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v544 = sea.const 0 : i1 loc("or.cond3.i253.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v545 = sea.select %v543, %v534, %v544 : i1 loc("or.cond3.i253.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v546 = sea.const 0 : i1 loc("or.cond5.i254.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v547 = sea.select %v545, %v539, %v546 : i1 loc("or.cond5.i254.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v548 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
  sea.cond_br %v547, ^bb249, ^bb251(%v548 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
^bb249:
  sea.br ^bb250
^bb250:
  %v549 = sea.load %v226[%v8] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_520"("aws-c-common/include/aws/common/ring_buffer.inl":41:23))
  %v550 = sea.ptr.null : !sea.ptr<64> loc("_521"("aws-c-common/include/aws/common/ring_buffer.inl":41:33))
  %v551 = sea.ptr.cmp ne, %v549, %v550 : !sea.ptr<64> loc("_521"("aws-c-common/include/aws/common/ring_buffer.inl":41:33))
  sea.br ^bb251(%v551 : i1)
^bb251(%v552 : i1):
  sea.br ^bb252
^bb252:
  %v553 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_524"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v554 = sea.load %v226[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_525"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb253
^bb253:
  %v555 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_527"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v556 = sea.load %v226[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_528"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v557 = sea.ptr.null : !sea.ptr<64> loc(".not.i269.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v558 = sea.ptr.cmp eq, %v553, %v557 : !sea.ptr<64> loc(".not.i269.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v559 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v558, ^bb258(%v559 : i1), ^bb254 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb254:
  sea.br ^bb255
^bb255:
  %v560 = sea.load %v226[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_531"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v561 = sea.ptr.cmp ugt, %v560, %v553 : !sea.ptr<64> loc(".not1.i271.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v562 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v561, ^bb258(%v562 : i1), ^bb256 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb256:
  sea.br ^bb257
^bb257:
  %v563 = sea.load %v226[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_534"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v564 = sea.ptr.cmp uge, %v563, %v553 : !sea.ptr<64> loc("_535"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb258(%v564 : i1)
^bb258(%v565 : i1):
  %v566 = sea.ptr.null : !sea.ptr<64> loc(".not.i266.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v567 = sea.ptr.cmp eq, %v555, %v566 : !sea.ptr<64> loc(".not.i266.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v568 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v567, ^bb263(%v568 : i1), ^bb259 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb259:
  sea.br ^bb260
^bb260:
  %v569 = sea.load %v226[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_539"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v570 = sea.ptr.cmp ugt, %v569, %v555 : !sea.ptr<64> loc(".not1.i268.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v571 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v570, ^bb263(%v571 : i1), ^bb261 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb261:
  sea.br ^bb262
^bb262:
  %v572 = sea.load %v226[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_542"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v573 = sea.ptr.cmp uge, %v572, %v555 : !sea.ptr<64> loc("_543"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb263(%v573 : i1)
^bb263(%v574 : i1):
  sea.br ^bb264
^bb264:
  %v575 = sea.load %v226[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_546"("aws-c-common/include/aws/common/ring_buffer.inl":39:47))
  %v576 = sea.ptr.cmp eq, %v553, %v575 : !sea.ptr<64> loc(".not.i259.i"("aws-c-common/include/aws/common/ring_buffer.inl":39:34))
  %v577 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
  sea.cond_br %v576, ^bb265, ^bb267(%v577 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb265:
  sea.br ^bb266
^bb266:
  %v578 = sea.ptr.cmp eq, %v555, %v553 : !sea.ptr<64> loc("_549"("aws-c-common/include/aws/common/ring_buffer.inl":39:68))
  sea.br ^bb267(%v578 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb267(%v579 : i1):
  sea.br ^bb268
^bb268:
  %v580 = sea.ptr.null : !sea.ptr<64> loc("_553"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v581 = sea.ptr.cmp ne, %v575, %v580 : !sea.ptr<64> loc("_553"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v582 = sea.const 0 : i1 loc("or.cond.i260.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v583 = sea.select %v581, %v565, %v582 : i1 loc("or.cond.i260.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v584 = sea.const 0 : i1 loc("or.cond3.i261.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v585 = sea.select %v583, %v574, %v584 : i1 loc("or.cond3.i261.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v586 = sea.const 0 : i1 loc("or.cond5.i262.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v587 = sea.select %v585, %v579, %v586 : i1 loc("or.cond5.i262.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  sea.cond_br %v587, ^bb269, ^bb273 loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
^bb269:
  %v588 = sea.load %v226[%v8] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_555")
  %v589 = sea.ptr.null : !sea.ptr<64> loc("_556")
  %v590 = sea.ptr.cmp ne, %v588, %v589 : !sea.ptr<64> loc("_556")
  %v591 = sea.const 1 : i1 loc("or.cond21")
  %v592 = sea.const 0 : i1 loc("or.cond21")
  %v593 = sea.select %v591, %v590, %v592 : i1 loc("or.cond21")
  sea.cond_br %v593, ^bb270, ^bb273
^bb270:
  %v594 = sea.load %v138[%v10] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_558"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":75:3))
  %v595 = sea.ptr.cmp eq, %v588, %v594 : !sea.ptr<64> loc("_559"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":75:3))
  sea.cond_br %v595, ^bb271, ^bb273 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":75:3)
^bb271:
  %v596 = sea.load %v140[%v139] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_561"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":76:3))
  %v597 = sea.ptr.cmp eq, %v575, %v596 : !sea.ptr<64> loc("_562"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":76:3))
  sea.cond_br %v597, ^bb272, ^bb273 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":76:3)
^bb272:
  %v598 = sea.load %v226[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_564"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":77:3))
  %v599 = sea.load %v148[%v146] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_565"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":77:3))
  %v600 = sea.ptr.cmp eq, %v598, %v599 : !sea.ptr<64> loc("_566"("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":77:3))
  %v601 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":77:3)
  %v602 = sea.xor %v600, %v601 : i1 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":77:3)
  sea.assume %v602 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":77:3)
  sea.br ^bb273 loc("seahorn/jobs2/ring_buffer_acquire2/aws_ring_buffer_acquire_harness2.c":77:3)
^bb273:
  sea.br ^bb274
^bb274:
  %v603 = sea.const 0 : i1
  sea.assert %v603
  sea.halt
}
