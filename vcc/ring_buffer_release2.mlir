// Exported from SeaHorn (ring_buffer_release2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm30")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm31")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm32")
  %v3 = sea.mem.nondet "region.88" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm33")
  %v4 = sea.mem.nondet "region.128" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm34")
  %v5 = sea.const 32 : i64 loc("_0")
  %v6 = sea.alloca %v5 align 8 [5] : i64 -> !sea.ptr<64> loc("_0")
  %v7 = sea.const 40 : i64 loc("_1")
  %v8 = sea.alloca %v7 align 8 [6] : i64 -> !sea.ptr<64> loc("_1")
  %v9 = sea.const 40 : i64 loc("_2")
  %v10 = sea.alloca %v9 align 8 [7] : i64 -> !sea.ptr<64> loc("_2")
  %v11 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v12 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v13 = sea.store %v0[%v11], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
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
  %v28 = sea.store %v1[%v6], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
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
  %v49 = sea.icmp ugt, %v23, %v24 : i64 loc(".not2.i.i"("aws-c-common/source/byte_buf.c":61:44))
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
  sea.assume %v59 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":18:3)
  %v60 = sea.nondet "nd_size_t" [13] : i64 loc("_36"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":20:26))
  sea.br ^bb23
^bb23:
  %v61 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":10:23)
  %v62 = sea.store %v2[%v8], %v61 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":10:23)
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
  %v70 = sea.const 1 : i64 loc("malloc312.i")
  %v71 = sea.mul %v60, %v70 : i64 loc("malloc312.i")
  %v72 = sea.alloca %v71 align 16 [15] : i64 -> !sea.ptr<64> loc("malloc312.i")
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
  sea.br ^bb35
^bb35:
  %v94 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_64"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v95 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_65"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb36
^bb36:
  %v96 = sea.load %v90[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_66"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v97 = sea.load %v90[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_67"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v98 = sea.ptr.cmp ne, %v94, %v96 : !sea.ptr<64> loc("_68"("aws-c-common/include/aws/common/ring_buffer.inl":26:17))
  sea.assume %v98 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":25:3)
  sea.br ^bb37
^bb37:
  %v99 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_70"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v100 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_71"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb38
^bb38:
  %v101 = sea.load %v90[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_73"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v102 = sea.load %v90[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_74"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v103 = sea.ptr.null : !sea.ptr<64> loc(".not.i281.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v104 = sea.ptr.cmp eq, %v99, %v103 : !sea.ptr<64> loc(".not.i281.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v105 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v104, ^bb43(%v105 : i1), ^bb39 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb39:
  sea.br ^bb40
^bb40:
  %v106 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_77"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v107 = sea.ptr.cmp ugt, %v106, %v99 : !sea.ptr<64> loc(".not1.i283.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v108 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v107, ^bb43(%v108 : i1), ^bb41 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb41:
  sea.br ^bb42
^bb42:
  %v109 = sea.load %v93[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_80"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v110 = sea.ptr.cmp uge, %v109, %v99 : !sea.ptr<64> loc("_81"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb43(%v110 : i1)
^bb43(%v111 : i1):
  %v112 = sea.ptr.null : !sea.ptr<64> loc(".not.i277.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v113 = sea.ptr.cmp eq, %v101, %v112 : !sea.ptr<64> loc(".not.i277.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v114 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v113, ^bb48(%v114 : i1), ^bb44 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb44:
  sea.br ^bb45
^bb45:
  %v115 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_85"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v116 = sea.ptr.cmp ugt, %v115, %v101 : !sea.ptr<64> loc(".not1.i279.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v117 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v116, ^bb48(%v117 : i1), ^bb46 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb46:
  sea.br ^bb47
^bb47:
  %v118 = sea.load %v93[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_88"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v119 = sea.ptr.cmp uge, %v118, %v101 : !sea.ptr<64> loc("_89"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb48(%v119 : i1)
^bb48(%v120 : i1):
  sea.br ^bb49
^bb49:
  %v121 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_92"("aws-c-common/include/aws/common/ring_buffer.inl":39:47))
  %v122 = sea.ptr.cmp eq, %v99, %v121 : !sea.ptr<64> loc(".not.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":39:34))
  %v123 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
  sea.cond_br %v122, ^bb50, ^bb52(%v123 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb50:
  sea.br ^bb51
^bb51:
  %v124 = sea.ptr.cmp eq, %v101, %v99 : !sea.ptr<64> loc("_95"("aws-c-common/include/aws/common/ring_buffer.inl":39:68))
  sea.br ^bb52(%v124 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb52(%v125 : i1):
  sea.br ^bb53
^bb53:
  %v126 = sea.ptr.null : !sea.ptr<64> loc("_99"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v127 = sea.ptr.cmp ne, %v121, %v126 : !sea.ptr<64> loc("_99"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v128 = sea.const 0 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v129 = sea.select %v127, %v111, %v128 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v130 = sea.const 0 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v131 = sea.select %v129, %v120, %v130 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v132 = sea.const 0 : i1 loc("or.cond5.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v133 = sea.select %v131, %v125, %v132 : i1 loc("or.cond5.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v134 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
  sea.cond_br %v133, ^bb54, ^bb56(%v134 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
^bb54:
  sea.br ^bb55
^bb55:
  %v135 = sea.load %v62[%v8] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_102"("aws-c-common/include/aws/common/ring_buffer.inl":41:23))
  %v136 = sea.ptr.null : !sea.ptr<64> loc("_103"("aws-c-common/include/aws/common/ring_buffer.inl":41:33))
  %v137 = sea.ptr.cmp ne, %v135, %v136 : !sea.ptr<64> loc("_103"("aws-c-common/include/aws/common/ring_buffer.inl":41:33))
  sea.br ^bb56(%v137 : i1)
^bb56(%v138 : i1):
  sea.assume %v138 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":26:3)
  %v139 = sea.nondet "nd_bool" [19] : i1 loc("_105"("seahorn/lib/ring_buffer_helper.c":37:20))
  %v140 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":37:20)
  sea.cond_br %v139, ^bb58(%v140 : !sea.ptr<64>), ^bb57 loc("seahorn/lib/ring_buffer_helper.c":37:20)
^bb57:
  %v141 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":37:20)
  sea.br ^bb58(%v141 : !sea.ptr<64>) loc("seahorn/lib/ring_buffer_helper.c":37:20)
^bb58(%v142 : !sea.ptr<64>):
  sea.br ^bb59
^bb59:
  %v143 = sea.store %v48[%v46], %v142 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":37:18)
  sea.br ^bb60
^bb60:
  %v144 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_110"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v145 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_111"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb61
^bb61:
  %v146 = sea.load %v90[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_112"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v147 = sea.load %v90[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_113"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v148 = sea.load %v90[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_114"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v149 = sea.ptr.cmp ult, %v144, %v146 : !sea.ptr<64> loc("_115"("seahorn/lib/ring_buffer_helper.c":40:12))
  sea.cond_br %v149, ^bb71, ^bb62 loc("seahorn/lib/ring_buffer_helper.c":40:7)
^bb62:
  %v150 = sea.ptr.cmp ult, %v146, %v144 : !sea.ptr<64> loc("_167"("seahorn/lib/ring_buffer_helper.c":25:3))
  sea.cond_br %v150, ^bb63, ^bb222 loc("seahorn/lib/ring_buffer_helper.c":25:3)
^bb63:
  %v151 = sea.ptr.to_int %v144 : !sea.ptr<64> to i64 loc("_169"("seahorn/lib/ring_buffer_helper.c":26:21))
  %v152 = sea.ptr.to_int %v146 : !sea.ptr<64> to i64 loc("_170"("seahorn/lib/ring_buffer_helper.c":26:21))
  %v153 = sea.sub %v151, %v152 : i64 loc("_171"("seahorn/lib/ring_buffer_helper.c":26:21))
  %v154 = sea.nondet "nd_size_t" [20] : i64 loc("_172"("seahorn/lib/ring_buffer_helper.c":27:16))
  %v155 = sea.icmp ult, %v154, %v153 : i64 loc("_173"("seahorn/lib/ring_buffer_helper.c":28:14))
  sea.assume %v155 loc("seahorn/lib/ring_buffer_helper.c":28:3)
  sea.br ^bb64
^bb64:
  %v156 = sea.ptr.index %v146 [%v154] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_175"("seahorn/lib/ring_buffer_helper.c":29:20))
  %v157 = sea.store %v143[%v44], %v156 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":29:15)
  sea.br ^bb65
^bb65:
  %v158 = sea.ptr.to_int %v156 : !sea.ptr<64> to i64 loc("_177"("seahorn/lib/ring_buffer_helper.c":30:28))
  %v159 = sea.sub %v151, %v158 : i64 loc("_178"("seahorn/lib/ring_buffer_helper.c":30:28))
  %v160 = sea.ptr.cmp ne, %v156, %v144 : !sea.ptr<64> loc("_179"("seahorn/lib/ring_buffer_helper.c":31:3))
  %v161 = sea.ptr.cmp eq, %v156, %v144 : !sea.ptr<64> loc(".not.i.i.i"("seahorn/lib/ring_buffer_helper.c":31:3))
  sea.cond_br %v161, ^bb222, ^bb66 loc("seahorn/lib/ring_buffer_helper.c":31:3)
^bb66:
  sea.br ^bb67
^bb67:
  %v162 = sea.load %v30[%v29] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_182"("seahorn/lib/ring_buffer_helper.c":32:19))
  %v163 = sea.const 0 : i64 loc(".not1.i.i.i"("seahorn/lib/ring_buffer_helper.c":32:12))
  %v164 = sea.icmp eq, %v162, %v163 : i64 loc(".not1.i.i.i"("seahorn/lib/ring_buffer_helper.c":32:12))
  %v165 = sea.const 0 : i1 loc("seahorn/lib/ring_buffer_helper.c":32:28)
  sea.cond_br %v164, ^bb70(%v165 : i1), ^bb68 loc("seahorn/lib/ring_buffer_helper.c":32:28)
^bb68:
  sea.br ^bb69
^bb69:
  %v166 = sea.icmp ule, %v162, %v159 : i64 loc("_185"("seahorn/lib/ring_buffer_helper.c":32:45))
  sea.br ^bb70(%v166 : i1)
^bb70(%v167 : i1):
  sea.assume %v167 loc("seahorn/lib/ring_buffer_helper.c":32:3)
  sea.br ^bb94(%v157, %v162, %v156 : !sea.mem<!sea.ptr<64>, i8>, i64, !sea.ptr<64>)
^bb71:
  %v168 = sea.nondet "nd_bool" [21] : i1 loc("_117"("seahorn/lib/ring_buffer_helper.c":41:9))
  sea.cond_br %v168, ^bb83, ^bb72 loc("seahorn/lib/ring_buffer_helper.c":41:9)
^bb72:
  sea.br ^bb73
^bb73:
  %v169 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_144"("seahorn/lib/ring_buffer_helper.c":46:24))
  %v170 = sea.ptr.cmp ult, %v169, %v144 : !sea.ptr<64> loc("_145"("seahorn/lib/ring_buffer_helper.c":46:35))
  sea.assume %v170 loc("seahorn/lib/ring_buffer_helper.c":46:7)
  sea.br ^bb74
^bb74:
  sea.cond_br %v170, ^bb75, ^bb222 loc("seahorn/lib/ring_buffer_helper.c":25:3)
^bb75:
  %v171 = sea.ptr.to_int %v144 : !sea.ptr<64> to i64 loc("_148"("seahorn/lib/ring_buffer_helper.c":26:21))
  %v172 = sea.ptr.to_int %v169 : !sea.ptr<64> to i64 loc("_149"("seahorn/lib/ring_buffer_helper.c":26:21))
  %v173 = sea.sub %v171, %v172 : i64 loc("_150"("seahorn/lib/ring_buffer_helper.c":26:21))
  %v174 = sea.nondet "nd_size_t" [22] : i64 loc("_151"("seahorn/lib/ring_buffer_helper.c":27:16))
  %v175 = sea.icmp ult, %v174, %v173 : i64 loc("_152"("seahorn/lib/ring_buffer_helper.c":28:14))
  sea.assume %v175 loc("seahorn/lib/ring_buffer_helper.c":28:3)
  sea.br ^bb76
^bb76:
  %v176 = sea.ptr.index %v169 [%v174] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_154"("seahorn/lib/ring_buffer_helper.c":29:20))
  %v177 = sea.store %v143[%v44], %v176 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":29:15)
  sea.br ^bb77
^bb77:
  %v178 = sea.ptr.to_int %v176 : !sea.ptr<64> to i64 loc("_156"("seahorn/lib/ring_buffer_helper.c":30:28))
  %v179 = sea.sub %v171, %v178 : i64 loc("_157"("seahorn/lib/ring_buffer_helper.c":30:28))
  %v180 = sea.ptr.cmp ne, %v176, %v144 : !sea.ptr<64> loc("_158"("seahorn/lib/ring_buffer_helper.c":31:3))
  %v181 = sea.ptr.cmp eq, %v176, %v144 : !sea.ptr<64> loc(".not.i2.i.i"("seahorn/lib/ring_buffer_helper.c":31:3))
  sea.cond_br %v181, ^bb222, ^bb78 loc("seahorn/lib/ring_buffer_helper.c":31:3)
^bb78:
  sea.br ^bb79
^bb79:
  %v182 = sea.load %v30[%v29] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_161"("seahorn/lib/ring_buffer_helper.c":32:19))
  %v183 = sea.const 0 : i64 loc(".not1.i3.i.i"("seahorn/lib/ring_buffer_helper.c":32:12))
  %v184 = sea.icmp eq, %v182, %v183 : i64 loc(".not1.i3.i.i"("seahorn/lib/ring_buffer_helper.c":32:12))
  %v185 = sea.const 0 : i1 loc("seahorn/lib/ring_buffer_helper.c":32:28)
  sea.cond_br %v184, ^bb82(%v185 : i1), ^bb80 loc("seahorn/lib/ring_buffer_helper.c":32:28)
^bb80:
  sea.br ^bb81
^bb81:
  %v186 = sea.icmp ule, %v182, %v179 : i64 loc("_164"("seahorn/lib/ring_buffer_helper.c":32:45))
  sea.br ^bb82(%v186 : i1)
^bb82(%v187 : i1):
  sea.assume %v187 loc("seahorn/lib/ring_buffer_helper.c":32:3)
  sea.br ^bb94(%v177, %v182, %v176 : !sea.mem<!sea.ptr<64>, i8>, i64, !sea.ptr<64>)
^bb83:
  sea.br ^bb84
^bb84:
  %v188 = sea.load %v93[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_120"("seahorn/lib/ring_buffer_helper.c":42:31))
  %v189 = sea.ptr.cmp ult, %v146, %v188 : !sea.ptr<64> loc("_121"("seahorn/lib/ring_buffer_helper.c":42:19))
  sea.assume %v189 loc("seahorn/lib/ring_buffer_helper.c":42:7)
  sea.br ^bb85
^bb85:
  sea.cond_br %v189, ^bb86, ^bb222 loc("seahorn/lib/ring_buffer_helper.c":25:3)
^bb86:
  %v190 = sea.ptr.to_int %v188 : !sea.ptr<64> to i64 loc("_124"("seahorn/lib/ring_buffer_helper.c":26:21))
  %v191 = sea.ptr.to_int %v146 : !sea.ptr<64> to i64 loc("_125"("seahorn/lib/ring_buffer_helper.c":26:21))
  %v192 = sea.sub %v190, %v191 : i64 loc("_126"("seahorn/lib/ring_buffer_helper.c":26:21))
  %v193 = sea.nondet "nd_size_t" [23] : i64 loc("_127"("seahorn/lib/ring_buffer_helper.c":27:16))
  %v194 = sea.icmp ult, %v193, %v192 : i64 loc("_128"("seahorn/lib/ring_buffer_helper.c":28:14))
  sea.assume %v194 loc("seahorn/lib/ring_buffer_helper.c":28:3)
  sea.br ^bb87
^bb87:
  %v195 = sea.ptr.index %v146 [%v193] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_130"("seahorn/lib/ring_buffer_helper.c":29:20))
  %v196 = sea.store %v143[%v44], %v195 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":29:15)
  sea.br ^bb88
^bb88:
  %v197 = sea.ptr.to_int %v195 : !sea.ptr<64> to i64 loc("_132"("seahorn/lib/ring_buffer_helper.c":30:28))
  %v198 = sea.sub %v190, %v197 : i64 loc("_133"("seahorn/lib/ring_buffer_helper.c":30:28))
  %v199 = sea.ptr.cmp ne, %v195, %v188 : !sea.ptr<64> loc("_134"("seahorn/lib/ring_buffer_helper.c":31:3))
  %v200 = sea.ptr.cmp eq, %v195, %v188 : !sea.ptr<64> loc(".not.i6.i.i"("seahorn/lib/ring_buffer_helper.c":31:3))
  sea.cond_br %v200, ^bb222, ^bb89 loc("seahorn/lib/ring_buffer_helper.c":31:3)
^bb89:
  sea.br ^bb90
^bb90:
  %v201 = sea.load %v30[%v29] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_137"("seahorn/lib/ring_buffer_helper.c":32:19))
  %v202 = sea.const 0 : i64 loc(".not1.i7.i.i"("seahorn/lib/ring_buffer_helper.c":32:12))
  %v203 = sea.icmp eq, %v201, %v202 : i64 loc(".not1.i7.i.i"("seahorn/lib/ring_buffer_helper.c":32:12))
  %v204 = sea.const 0 : i1 loc("seahorn/lib/ring_buffer_helper.c":32:28)
  sea.cond_br %v203, ^bb93(%v204 : i1), ^bb91 loc("seahorn/lib/ring_buffer_helper.c":32:28)
^bb91:
  sea.br ^bb92
^bb92:
  %v205 = sea.icmp ule, %v201, %v198 : i64 loc("_140"("seahorn/lib/ring_buffer_helper.c":32:45))
  sea.br ^bb93(%v205 : i1)
^bb93(%v206 : i1):
  sea.assume %v206 loc("seahorn/lib/ring_buffer_helper.c":32:3)
  sea.br ^bb94(%v196, %v201, %v195 : !sea.mem<!sea.ptr<64>, i8>, i64, !sea.ptr<64>) loc("seahorn/lib/ring_buffer_helper.c":45:5)
^bb94(%v207 : !sea.mem<!sea.ptr<64>, i8>, %v208 : i64, %v209 : !sea.ptr<64>):
  %v210 = sea.load %v62[%v8] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc(".pmcpy.i"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":30:41))
  %v211 = sea.store %v3[%v10], %v210 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":30:41)
  %v212 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy6.i"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":30:41))
  %v213 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc(".pmcpy7.i"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":30:41))
  %v214 = sea.store %v211[%v212], %v213 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":30:41)
  %v215 = sea.ptr.index %v10 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy9.i"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":30:41))
  %v216 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc(".pmcpy12.i"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":30:41))
  %v217 = sea.store %v214[%v215], %v216 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":30:41)
  %v218 = sea.ptr.index %v10 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy14.i"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":30:41))
  %v219 = sea.store %v217[%v218], %v147 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":30:41)
  %v220 = sea.ptr.index %v10 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy19.i"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":30:41))
  %v221 = sea.load %v93[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc(".pmcpy20.i"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":30:41))
  %v222 = sea.store %v219[%v220], %v221 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":30:41)
  sea.tracking_on loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":32:3)
  %v223 = sea.mem.reset_modified %v93[%v8] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":33:3)
  sea.br ^bb95
^bb95:
  sea.br ^bb96
^bb96:
  sea.br ^bb97
^bb97:
  %v224 = sea.ptr.index %v209 [%v208] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_189"("aws-c-common/source/ring_buffer.c":249:5))
  %v225 = sea.store %v223[%v88], %v224 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/atomics_gnu.inl":92:5)
  %v226 = sea.const 0 : i8 loc("aws-c-common/source/ring_buffer.c":250:5)
  %v227 = sea.const 32 : i64 loc("aws-c-common/source/ring_buffer.c":250:5)
  %v228 = sea.memset %v207[%v6], %v226, %v227 inplace align 8 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/source/ring_buffer.c":250:5)
  sea.br ^bb98
^bb98:
  %v229 = sea.load %v217[%v215] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_191"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v230 = sea.load %v217[%v215] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_192"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb99
^bb99:
  %v231 = sea.load %v219[%v218] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_194"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v232 = sea.load %v219[%v218] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_195"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb100
^bb100:
  %v233 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_197"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v234 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_198"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb101
^bb101:
  %v235 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_200"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v236 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_201"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb102
^bb102:
  %v237 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_203"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v238 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_204"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb103
^bb103:
  %v239 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_206"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v240 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_207"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v241 = sea.ptr.null : !sea.ptr<64> loc(".not.i273.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v242 = sea.ptr.cmp eq, %v237, %v241 : !sea.ptr<64> loc(".not.i273.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v243 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v242, ^bb108(%v243 : i1), ^bb104 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb104:
  sea.br ^bb105
^bb105:
  %v244 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_210"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v245 = sea.ptr.cmp ugt, %v244, %v237 : !sea.ptr<64> loc(".not1.i275.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v246 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v245, ^bb108(%v246 : i1), ^bb106 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb106:
  sea.br ^bb107
^bb107:
  %v247 = sea.load %v93[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_213"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v248 = sea.ptr.cmp uge, %v247, %v237 : !sea.ptr<64> loc("_214"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb108(%v248 : i1)
^bb108(%v249 : i1):
  %v250 = sea.ptr.null : !sea.ptr<64> loc(".not.i269.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v251 = sea.ptr.cmp eq, %v239, %v250 : !sea.ptr<64> loc(".not.i269.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v252 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v251, ^bb113(%v252 : i1), ^bb109 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb109:
  sea.br ^bb110
^bb110:
  %v253 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_218"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v254 = sea.ptr.cmp ugt, %v253, %v239 : !sea.ptr<64> loc(".not1.i271.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v255 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v254, ^bb113(%v255 : i1), ^bb111 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb111:
  sea.br ^bb112
^bb112:
  %v256 = sea.load %v93[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_221"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v257 = sea.ptr.cmp uge, %v256, %v239 : !sea.ptr<64> loc("_222"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb113(%v257 : i1)
^bb113(%v258 : i1):
  sea.br ^bb114
^bb114:
  %v259 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_225"("aws-c-common/include/aws/common/ring_buffer.inl":39:47))
  %v260 = sea.ptr.cmp eq, %v237, %v259 : !sea.ptr<64> loc(".not.i249.i"("aws-c-common/include/aws/common/ring_buffer.inl":39:34))
  %v261 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
  sea.cond_br %v260, ^bb115, ^bb117(%v261 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb115:
  sea.br ^bb116
^bb116:
  %v262 = sea.ptr.cmp eq, %v239, %v237 : !sea.ptr<64> loc("_228"("aws-c-common/include/aws/common/ring_buffer.inl":39:68))
  sea.br ^bb117(%v262 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb117(%v263 : i1):
  sea.br ^bb118
^bb118:
  %v264 = sea.ptr.null : !sea.ptr<64> loc("_232"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v265 = sea.ptr.cmp ne, %v259, %v264 : !sea.ptr<64> loc("_232"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v266 = sea.const 0 : i1 loc("or.cond.i250.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v267 = sea.select %v265, %v249, %v266 : i1 loc("or.cond.i250.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v268 = sea.const 0 : i1 loc("or.cond3.i251.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v269 = sea.select %v267, %v258, %v268 : i1 loc("or.cond3.i251.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v270 = sea.const 0 : i1 loc("or.cond5.i252.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v271 = sea.select %v269, %v263, %v270 : i1 loc("or.cond5.i252.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v272 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
  sea.cond_br %v271, ^bb119, ^bb121(%v272 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
^bb119:
  sea.br ^bb120
^bb120:
  %v273 = sea.load %v223[%v8] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_235"("aws-c-common/include/aws/common/ring_buffer.inl":41:23))
  %v274 = sea.ptr.null : !sea.ptr<64> loc("_236"("aws-c-common/include/aws/common/ring_buffer.inl":41:33))
  %v275 = sea.ptr.cmp ne, %v273, %v274 : !sea.ptr<64> loc("_236"("aws-c-common/include/aws/common/ring_buffer.inl":41:33))
  sea.br ^bb121(%v275 : i1)
^bb121(%v276 : i1):
  sea.br ^bb122
^bb122:
  %v277 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_239"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v278 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_240"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb123
^bb123:
  %v279 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_242"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v280 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_243"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v281 = sea.ptr.null : !sea.ptr<64> loc(".not.i265.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v282 = sea.ptr.cmp eq, %v277, %v281 : !sea.ptr<64> loc(".not.i265.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v283 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v282, ^bb128(%v283 : i1), ^bb124 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb124:
  sea.br ^bb125
^bb125:
  %v284 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_246"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v285 = sea.ptr.cmp ugt, %v284, %v277 : !sea.ptr<64> loc(".not1.i267.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v286 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v285, ^bb128(%v286 : i1), ^bb126 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb126:
  sea.br ^bb127
^bb127:
  %v287 = sea.load %v93[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_249"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v288 = sea.ptr.cmp uge, %v287, %v277 : !sea.ptr<64> loc("_250"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb128(%v288 : i1)
^bb128(%v289 : i1):
  %v290 = sea.ptr.null : !sea.ptr<64> loc(".not.i262.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v291 = sea.ptr.cmp eq, %v279, %v290 : !sea.ptr<64> loc(".not.i262.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v292 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v291, ^bb133(%v292 : i1), ^bb129 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb129:
  sea.br ^bb130
^bb130:
  %v293 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_254"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v294 = sea.ptr.cmp ugt, %v293, %v279 : !sea.ptr<64> loc(".not1.i264.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v295 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v294, ^bb133(%v295 : i1), ^bb131 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb131:
  sea.br ^bb132
^bb132:
  %v296 = sea.load %v93[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_257"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v297 = sea.ptr.cmp uge, %v296, %v279 : !sea.ptr<64> loc("_258"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb133(%v297 : i1)
^bb133(%v298 : i1):
  sea.br ^bb134
^bb134:
  %v299 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_261"("aws-c-common/include/aws/common/ring_buffer.inl":39:47))
  %v300 = sea.ptr.cmp eq, %v277, %v299 : !sea.ptr<64> loc(".not.i257.i"("aws-c-common/include/aws/common/ring_buffer.inl":39:34))
  %v301 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
  sea.cond_br %v300, ^bb135, ^bb137(%v301 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb135:
  sea.br ^bb136
^bb136:
  %v302 = sea.ptr.cmp eq, %v279, %v277 : !sea.ptr<64> loc("_264"("aws-c-common/include/aws/common/ring_buffer.inl":39:68))
  sea.br ^bb137(%v302 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb137(%v303 : i1):
  sea.br ^bb138
^bb138:
  %v304 = sea.ptr.null : !sea.ptr<64> loc("_268"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v305 = sea.ptr.cmp ne, %v299, %v304 : !sea.ptr<64> loc("_268"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v306 = sea.const 0 : i1 loc("or.cond.i258.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v307 = sea.select %v305, %v289, %v306 : i1 loc("or.cond.i258.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v308 = sea.const 0 : i1 loc("or.cond3.i259.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v309 = sea.select %v307, %v298, %v308 : i1 loc("or.cond3.i259.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v310 = sea.const 0 : i1 loc("or.cond5.i260.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v311 = sea.select %v309, %v303, %v310 : i1 loc("or.cond5.i260.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  sea.cond_br %v311, ^bb139, ^bb222 loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
^bb139:
  %v312 = sea.load %v223[%v8] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_270")
  %v313 = sea.ptr.null : !sea.ptr<64> loc("_271")
  %v314 = sea.ptr.cmp ne, %v312, %v313 : !sea.ptr<64> loc("_271")
  %v315 = sea.const 1 : i1 loc("or.cond")
  %v316 = sea.const 0 : i1 loc("or.cond")
  %v317 = sea.select %v315, %v314, %v316 : i1 loc("or.cond")
  sea.cond_br %v317, ^bb140, ^bb222
^bb140:
  %v318 = sea.load %v211[%v10] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_273"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":44:3))
  %v319 = sea.ptr.cmp eq, %v312, %v318 : !sea.ptr<64> loc("_274"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":44:3))
  sea.cond_br %v319, ^bb141, ^bb222 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":44:3)
^bb141:
  %v320 = sea.load %v214[%v212] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_276"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":45:3))
  %v321 = sea.ptr.cmp eq, %v299, %v320 : !sea.ptr<64> loc("_277"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":45:3))
  sea.cond_br %v321, ^bb142, ^bb222 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":45:3)
^bb142:
  %v322 = sea.ptr.cmp eq, %v233, %v229 : !sea.ptr<64> loc("_279"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":46:3))
  sea.cond_br %v322, ^bb143, ^bb222 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":46:3)
^bb143:
  %v323 = sea.ptr.cmp eq, %v235, %v224 : !sea.ptr<64> loc("_281"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":47:3))
  sea.cond_br %v323, ^bb144, ^bb222 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":47:3)
^bb144:
  %v324 = sea.load %v93[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_283"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":48:3))
  %v325 = sea.load %v222[%v220] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_284"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":48:3))
  %v326 = sea.ptr.cmp eq, %v324, %v325 : !sea.ptr<64> loc("_285"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":48:3))
  sea.cond_br %v326, ^bb145, ^bb222 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":48:3)
^bb145:
  %v327 = sea.load %v228[%v46] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_287"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":49:3))
  %v328 = sea.ptr.null : !sea.ptr<64> loc("_288"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":49:3))
  %v329 = sea.ptr.cmp eq, %v327, %v328 : !sea.ptr<64> loc("_288"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":49:3))
  sea.cond_br %v329, ^bb146, ^bb222 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":49:3)
^bb146:
  %v330 = sea.load %v228[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_290"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":50:3))
  %v331 = sea.ptr.null : !sea.ptr<64> loc("_291"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":50:3))
  %v332 = sea.ptr.cmp eq, %v330, %v331 : !sea.ptr<64> loc("_291"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":50:3))
  sea.cond_br %v332, ^bb147, ^bb222 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":50:3)
^bb147:
  %v333 = sea.load %v228[%v6] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_293"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":51:3))
  %v334 = sea.const 0 : i64 loc("_294"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":51:3))
  %v335 = sea.icmp eq, %v333, %v334 : i64 loc("_294"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":51:3))
  sea.cond_br %v335, ^bb148, ^bb222 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":51:3)
^bb148:
  %v336 = sea.load %v228[%v29] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_296"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":52:3))
  %v337 = sea.const 0 : i64 loc("_297"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":52:3))
  %v338 = sea.icmp eq, %v336, %v337 : i64 loc("_297"("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":52:3))
  sea.cond_br %v338, ^bb149, ^bb222 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":52:3)
^bb149:
  sea.br ^bb150
^bb150:
  %v339 = sea.load %v217[%v215] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_300"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v340 = sea.load %v217[%v215] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_301"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb151
^bb151:
  %v341 = sea.load %v219[%v218] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_303"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v342 = sea.load %v219[%v218] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_304"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb152
^bb152:
  %v343 = sea.load %v214[%v212] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_305"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:22))
  %v344 = sea.ptr.cmp eq, %v343, %v341 : !sea.ptr<64> loc("_306"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:33))
  %v345 = sea.ptr.cmp ult, %v341, %v339 : !sea.ptr<64> loc("_307"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v346 = sea.const 0 : i1 loc("_308"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v347 = sea.select %v344, %v345, %v346 : i1 loc("_308"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v348 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":53:3)
  sea.cond_br %v347, ^bb153, ^bb160(%v348 : i1) loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":53:3)
^bb153:
  sea.br ^bb154
^bb154:
  %v349 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_311"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v350 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_312"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb155
^bb155:
  %v351 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_314"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v352 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_315"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v353 = sea.ptr.cmp eq, %v351, %v349 : !sea.ptr<64> loc("_316"("seahorn/include/cbmc/ring_buffer_abstract_states.h":14:17))
  %v354 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":53:3)
  sea.cond_br %v353, ^bb160(%v354 : i1), ^bb156 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":53:3)
^bb156:
  sea.br ^bb157
^bb157:
  %v355 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_319"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v356 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_320"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb158
^bb158:
  %v357 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_322"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v358 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_323"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb159
^bb159:
  %v359 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_324"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:22))
  %v360 = sea.ptr.cmp ult, %v359, %v357 : !sea.ptr<64> loc("_325"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:33))
  %v361 = sea.ptr.cmp ult, %v357, %v355 : !sea.ptr<64> loc("_326"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v362 = sea.const 0 : i1 loc("_327"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v363 = sea.select %v360, %v361, %v362 : i1 loc("_327"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  sea.br ^bb160(%v363 : i1) loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":53:3)
^bb160(%v364 : i1):
  sea.br ^bb161
^bb161:
  %v365 = sea.load %v217[%v215] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_331"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v366 = sea.load %v217[%v215] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_332"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb162
^bb162:
  %v367 = sea.load %v219[%v218] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_334"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v368 = sea.load %v219[%v218] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_335"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb163
^bb163:
  %v369 = sea.load %v214[%v212] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_336"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:22))
  %v370 = sea.ptr.cmp eq, %v369, %v367 : !sea.ptr<64> loc("_337"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:33))
  %v371 = sea.ptr.cmp ult, %v367, %v365 : !sea.ptr<64> loc("_338"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v372 = sea.const 0 : i1 loc("_339"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v373 = sea.select %v370, %v371, %v372 : i1 loc("_339"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  sea.cond_br %v373, ^bb164, ^bb171 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":53:3)
^bb164:
  sea.br ^bb165
^bb165:
  %v374 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_342"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v375 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_343"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb166
^bb166:
  %v376 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_345"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v377 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_346"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v378 = sea.ptr.cmp eq, %v376, %v374 : !sea.ptr<64> loc("_347"("seahorn/include/cbmc/ring_buffer_abstract_states.h":14:17))
  sea.cond_br %v378, ^bb171, ^bb167 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":53:3)
^bb167:
  sea.br ^bb168
^bb168:
  %v379 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_350"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v380 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_351"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb169
^bb169:
  %v381 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_353"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v382 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_354"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb170
^bb170:
  %v383 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_355"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:22))
  %v384 = sea.ptr.cmp ult, %v383, %v381 : !sea.ptr<64> loc("_356"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:33))
  %v385 = sea.ptr.cmp ult, %v381, %v379 : !sea.ptr<64> loc("_357"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v386 = sea.const 0 : i1 loc("_358"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v387 = sea.select %v384, %v385, %v386 : i1 loc("_358"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  sea.cond_br %v387, ^bb171, ^bb222 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":53:3)
^bb171:
  sea.br ^bb172
^bb172:
  %v388 = sea.load %v217[%v215] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_360"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v389 = sea.load %v217[%v215] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_361"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb173
^bb173:
  %v390 = sea.load %v219[%v218] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_363"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v391 = sea.load %v219[%v218] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_364"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb174
^bb174:
  %v392 = sea.load %v214[%v212] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_365"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:22))
  %v393 = sea.ptr.cmp ult, %v392, %v390 : !sea.ptr<64> loc("_366"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:33))
  %v394 = sea.ptr.cmp ult, %v390, %v388 : !sea.ptr<64> loc("_367"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v395 = sea.const 0 : i1 loc("_368"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v396 = sea.select %v393, %v394, %v395 : i1 loc("_368"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v397 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":56:3)
  sea.cond_br %v396, ^bb175, ^bb185(%v397 : i1) loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":56:3)
^bb175:
  sea.br ^bb176
^bb176:
  %v398 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_371"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v399 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_372"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb177
^bb177:
  %v400 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_374"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v401 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_375"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v402 = sea.ptr.cmp eq, %v400, %v398 : !sea.ptr<64> loc("_376"("seahorn/include/cbmc/ring_buffer_abstract_states.h":14:17))
  %v403 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":56:3)
  sea.cond_br %v402, ^bb185(%v403 : i1), ^bb178 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":56:3)
^bb178:
  sea.br ^bb179
^bb179:
  %v404 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_379"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v405 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_380"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb180
^bb180:
  %v406 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_382"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v407 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_383"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb181
^bb181:
  %v408 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_384"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:22))
  %v409 = sea.ptr.cmp ult, %v408, %v406 : !sea.ptr<64> loc("_385"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:33))
  %v410 = sea.ptr.cmp ult, %v406, %v404 : !sea.ptr<64> loc("_386"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v411 = sea.const 0 : i1 loc("_387"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v412 = sea.select %v409, %v410, %v411 : i1 loc("_387"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v413 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":56:3)
  sea.cond_br %v412, ^bb185(%v413 : i1), ^bb182 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":56:3)
^bb182:
  sea.br ^bb183
^bb183:
  %v414 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_390"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v415 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_391"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb184
^bb184:
  %v416 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_392"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v417 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_393"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v418 = sea.ptr.cmp ugt, %v416, %v414 : !sea.ptr<64> loc("_394"("seahorn/include/cbmc/ring_buffer_abstract_states.h":41:17))
  sea.br ^bb185(%v418 : i1) loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":56:3)
^bb185(%v419 : i1):
  sea.br ^bb186
^bb186:
  %v420 = sea.load %v217[%v215] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_398"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v421 = sea.load %v217[%v215] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_399"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb187
^bb187:
  %v422 = sea.load %v219[%v218] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_401"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v423 = sea.load %v219[%v218] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_402"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb188
^bb188:
  %v424 = sea.load %v214[%v212] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_403"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:22))
  %v425 = sea.ptr.cmp ult, %v424, %v422 : !sea.ptr<64> loc("_404"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:33))
  %v426 = sea.ptr.cmp ult, %v422, %v420 : !sea.ptr<64> loc("_405"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v427 = sea.const 0 : i1 loc("_406"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v428 = sea.select %v425, %v426, %v427 : i1 loc("_406"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  sea.cond_br %v428, ^bb189, ^bb199 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":56:3)
^bb189:
  sea.br ^bb190
^bb190:
  %v429 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_409"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v430 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_410"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb191
^bb191:
  %v431 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_412"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v432 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_413"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v433 = sea.ptr.cmp eq, %v431, %v429 : !sea.ptr<64> loc("_414"("seahorn/include/cbmc/ring_buffer_abstract_states.h":14:17))
  sea.cond_br %v433, ^bb199, ^bb192 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":56:3)
^bb192:
  sea.br ^bb193
^bb193:
  %v434 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_417"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v435 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_418"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb194
^bb194:
  %v436 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_420"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v437 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_421"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb195
^bb195:
  %v438 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_422"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:22))
  %v439 = sea.ptr.cmp ult, %v438, %v436 : !sea.ptr<64> loc("_423"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:33))
  %v440 = sea.ptr.cmp ult, %v436, %v434 : !sea.ptr<64> loc("_424"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v441 = sea.const 0 : i1 loc("_425"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v442 = sea.select %v439, %v440, %v441 : i1 loc("_425"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  sea.cond_br %v442, ^bb199, ^bb196 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":56:3)
^bb196:
  sea.br ^bb197
^bb197:
  %v443 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_428"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v444 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_429"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb198
^bb198:
  %v445 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_430"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v446 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_431"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v447 = sea.ptr.cmp ugt, %v445, %v443 : !sea.ptr<64> loc("_432"("seahorn/include/cbmc/ring_buffer_abstract_states.h":41:17))
  sea.cond_br %v447, ^bb199, ^bb222 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":56:3)
^bb199:
  sea.br ^bb200
^bb200:
  %v448 = sea.load %v217[%v215] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_434"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v449 = sea.load %v217[%v215] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_435"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb201
^bb201:
  %v450 = sea.load %v219[%v218] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_436"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v451 = sea.load %v219[%v218] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_437"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v452 = sea.ptr.cmp ugt, %v450, %v448 : !sea.ptr<64> loc("_438"("seahorn/include/cbmc/ring_buffer_abstract_states.h":41:17))
  %v453 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":60:3)
  sea.cond_br %v452, ^bb202, ^bb212(%v453 : i1) loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":60:3)
^bb202:
  sea.br ^bb203
^bb203:
  %v454 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_441"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v455 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_442"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb204
^bb204:
  %v456 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_444"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v457 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_445"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v458 = sea.ptr.cmp eq, %v456, %v454 : !sea.ptr<64> loc("_446"("seahorn/include/cbmc/ring_buffer_abstract_states.h":14:17))
  %v459 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":60:3)
  sea.cond_br %v458, ^bb212(%v459 : i1), ^bb205 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":60:3)
^bb205:
  sea.br ^bb206
^bb206:
  %v460 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_449"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v461 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_450"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb207
^bb207:
  %v462 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_452"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v463 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_453"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb208
^bb208:
  %v464 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_454"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:22))
  %v465 = sea.ptr.cmp ult, %v464, %v462 : !sea.ptr<64> loc("_455"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:33))
  %v466 = sea.ptr.cmp ult, %v462, %v460 : !sea.ptr<64> loc("_456"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v467 = sea.const 0 : i1 loc("_457"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v468 = sea.select %v465, %v466, %v467 : i1 loc("_457"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v469 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":60:3)
  sea.cond_br %v468, ^bb212(%v469 : i1), ^bb209 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":60:3)
^bb209:
  sea.br ^bb210
^bb210:
  %v470 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_460"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v471 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_461"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb211
^bb211:
  %v472 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_462"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v473 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_463"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v474 = sea.ptr.cmp ugt, %v472, %v470 : !sea.ptr<64> loc("_464"("seahorn/include/cbmc/ring_buffer_abstract_states.h":41:17))
  sea.br ^bb212(%v474 : i1) loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":60:3)
^bb212(%v475 : i1):
  sea.br ^bb213
^bb213:
  %v476 = sea.load %v217[%v215] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_468"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v477 = sea.load %v217[%v215] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_469"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb214
^bb214:
  %v478 = sea.load %v219[%v218] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_470"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v479 = sea.load %v219[%v218] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_471"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v480 = sea.ptr.cmp ugt, %v478, %v476 : !sea.ptr<64> loc("_472"("seahorn/include/cbmc/ring_buffer_abstract_states.h":41:17))
  sea.assume %v480 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":60:3)
  sea.br ^bb215
^bb215:
  %v481 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_474"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v482 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_475"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb216
^bb216:
  %v483 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_477"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v484 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_478"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v485 = sea.ptr.cmp eq, %v483, %v481 : !sea.ptr<64> loc("_479"("seahorn/include/cbmc/ring_buffer_abstract_states.h":14:17))
  %v486 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":60:3)
  %v487 = sea.xor %v485, %v486 : i1 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":60:3)
  sea.assume %v487 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":60:3)
  sea.br ^bb217
^bb217:
  %v488 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_481"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v489 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_482"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb218
^bb218:
  %v490 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_484"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v491 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_485"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb219
^bb219:
  %v492 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_486"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:22))
  %v493 = sea.ptr.cmp ult, %v492, %v490 : !sea.ptr<64> loc("_487"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:33))
  %v494 = sea.ptr.cmp ult, %v490, %v488 : !sea.ptr<64> loc("_488"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v495 = sea.const 0 : i1 loc("_489"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v496 = sea.select %v493, %v494, %v495 : i1 loc("_489"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v497 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":60:3)
  %v498 = sea.xor %v496, %v497 : i1 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":60:3)
  sea.assume %v498 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":60:3)
  sea.br ^bb220
^bb220:
  %v499 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_491"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v500 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_492"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb221
^bb221:
  %v501 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_493"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v502 = sea.load %v225[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_494"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v503 = sea.ptr.cmp ugt, %v501, %v499 : !sea.ptr<64> loc("_495"("seahorn/include/cbmc/ring_buffer_abstract_states.h":41:17))
  %v504 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":60:3)
  %v505 = sea.xor %v503, %v504 : i1 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":60:3)
  sea.assume %v505 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":60:3)
  sea.br ^bb222 loc("seahorn/jobs2/ring_buffer_release2/aws_ring_buffer_release_harness2.c":60:3)
^bb222:
  sea.br ^bb223
^bb223:
  %v506 = sea.const 0 : i1
  sea.assert %v506
  sea.halt
}
