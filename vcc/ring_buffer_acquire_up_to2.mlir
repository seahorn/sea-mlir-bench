// Exported from SeaHorn (ring_buffer_acquire_up_to2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm55")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm56")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm57")
  %v3 = sea.mem.nondet "region.88" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm58")
  %v4 = sea.mem.nondet "region.128" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm59")
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
  %v49 = sea.icmp ugt, %v23, %v24 : i64 loc(".not2.i35.i"("aws-c-common/source/byte_buf.c":61:44))
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
  sea.assume %v59 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":21:3)
  %v60 = sea.nondet "nd_size_t" [13] : i64 loc("_36"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":23:26))
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
  %v70 = sea.const 1 : i64 loc("malloc211.i")
  %v71 = sea.mul %v60, %v70 : i64 loc("malloc211.i")
  %v72 = sea.alloca %v71 align 16 [15] : i64 -> !sea.ptr<64> loc("malloc211.i")
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
  %v94 = sea.nondet "nd_size_t" [19] : i64 loc("_63"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":27:25))
  %v95 = sea.nondet "nd_size_t" [20] : i64 loc("_64"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":28:27))
  %v96 = sea.icmp uge, %v95, %v94 : i64 loc("_65"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":31:25))
  sea.assume %v96 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":31:3)
  sea.br ^bb35
^bb35:
  %v97 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_67"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v98 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_68"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb36
^bb36:
  %v99 = sea.load %v90[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_70"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v100 = sea.load %v90[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_71"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v101 = sea.load %v90[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_72"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v102 = sea.ptr.null : !sea.ptr<64> loc(".not.i189.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v103 = sea.ptr.cmp eq, %v97, %v102 : !sea.ptr<64> loc(".not.i189.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v104 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v103, ^bb41(%v104 : i1), ^bb37 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb37:
  sea.br ^bb38
^bb38:
  %v105 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_75"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v106 = sea.ptr.cmp ugt, %v105, %v97 : !sea.ptr<64> loc(".not1.i191.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v107 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v106, ^bb41(%v107 : i1), ^bb39 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb39:
  sea.br ^bb40
^bb40:
  %v108 = sea.load %v93[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_78"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v109 = sea.ptr.cmp uge, %v108, %v97 : !sea.ptr<64> loc("_79"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb41(%v109 : i1)
^bb41(%v110 : i1):
  %v111 = sea.ptr.null : !sea.ptr<64> loc(".not.i185.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v112 = sea.ptr.cmp eq, %v99, %v111 : !sea.ptr<64> loc(".not.i185.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v113 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v112, ^bb46(%v113 : i1), ^bb42 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb42:
  sea.br ^bb43
^bb43:
  %v114 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_83"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v115 = sea.ptr.cmp ugt, %v114, %v99 : !sea.ptr<64> loc(".not1.i187.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v116 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v115, ^bb46(%v116 : i1), ^bb44 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb44:
  sea.br ^bb45
^bb45:
  %v117 = sea.load %v93[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_86"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v118 = sea.ptr.cmp uge, %v117, %v99 : !sea.ptr<64> loc("_87"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb46(%v118 : i1)
^bb46(%v119 : i1):
  sea.br ^bb47
^bb47:
  %v120 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_90"("aws-c-common/include/aws/common/ring_buffer.inl":39:47))
  %v121 = sea.ptr.cmp eq, %v97, %v120 : !sea.ptr<64> loc(".not.i152.i"("aws-c-common/include/aws/common/ring_buffer.inl":39:34))
  %v122 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
  sea.cond_br %v121, ^bb48, ^bb50(%v122 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb48:
  sea.br ^bb49
^bb49:
  %v123 = sea.ptr.cmp eq, %v99, %v97 : !sea.ptr<64> loc("_93"("aws-c-common/include/aws/common/ring_buffer.inl":39:68))
  sea.br ^bb50(%v123 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb50(%v124 : i1):
  sea.br ^bb51
^bb51:
  %v125 = sea.ptr.null : !sea.ptr<64> loc("_97"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v126 = sea.ptr.cmp ne, %v120, %v125 : !sea.ptr<64> loc("_97"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v127 = sea.const 0 : i1 loc("or.cond.i153.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v128 = sea.select %v126, %v110, %v127 : i1 loc("or.cond.i153.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v129 = sea.const 0 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v130 = sea.select %v128, %v119, %v129 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v131 = sea.const 0 : i1 loc("or.cond5.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v132 = sea.select %v130, %v124, %v131 : i1 loc("or.cond5.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v133 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
  sea.cond_br %v132, ^bb52, ^bb54(%v133 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
^bb52:
  sea.br ^bb53
^bb53:
  %v134 = sea.load %v62[%v8] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_100"("aws-c-common/include/aws/common/ring_buffer.inl":41:23))
  %v135 = sea.ptr.null : !sea.ptr<64> loc("_101"("aws-c-common/include/aws/common/ring_buffer.inl":41:33))
  %v136 = sea.ptr.cmp ne, %v134, %v135 : !sea.ptr<64> loc("_101"("aws-c-common/include/aws/common/ring_buffer.inl":41:33))
  sea.br ^bb54(%v136 : i1)
^bb54(%v137 : i1):
  sea.assume %v137 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":32:3)
  sea.br ^bb55
^bb55:
  %v138 = sea.load %v30[%v29] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_104"("aws-c-common/source/byte_buf.c":60:19))
  %v139 = sea.const 0 : i64 loc("_105"("aws-c-common/source/byte_buf.c":60:28))
  %v140 = sea.icmp eq, %v138, %v139 : i64 loc("_105"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v140, ^bb63, ^bb56 loc("aws-c-common/source/byte_buf.c":60:33)
^bb56:
  sea.br ^bb57
^bb57:
  sea.br ^bb58
^bb58:
  %v141 = sea.load %v28[%v6] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_116"("aws-c-common/source/byte_buf.c":61:40))
  sea.br ^bb59
^bb59:
  %v142 = sea.icmp ugt, %v141, %v138 : i64 loc(".not2.i31.i"("aws-c-common/source/byte_buf.c":61:44))
  %v143 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v142, ^bb68(%v143 : i1), ^bb60 loc("aws-c-common/source/byte_buf.c":61:61)
^bb60:
  sea.br ^bb61
^bb61:
  sea.br ^bb62
^bb62:
  %v144 = sea.load %v45[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_121"("aws-c-common/source/byte_buf.c":61:64))
  %v145 = sea.ptr.null : !sea.ptr<64> loc("_122"("aws-c-common/source/byte_buf.c":61:64))
  %v146 = sea.ptr.cmp ne, %v144, %v145 : !sea.ptr<64> loc("_122"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb68(%v146 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb63:
  sea.br ^bb64
^bb64:
  %v147 = sea.load %v28[%v6] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_108"("aws-c-common/source/byte_buf.c":60:41))
  %v148 = sea.const 0 : i64 loc("_109"("aws-c-common/source/byte_buf.c":60:45))
  %v149 = sea.icmp eq, %v147, %v148 : i64 loc("_109"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v149, ^bb65, ^bb67 loc("aws-c-common/source/byte_buf.c":60:50)
^bb65:
  sea.br ^bb66
^bb66:
  %v150 = sea.load %v45[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_112"("aws-c-common/source/byte_buf.c":60:58))
  %v151 = sea.ptr.null : !sea.ptr<64> loc("_113"("aws-c-common/source/byte_buf.c":60:65))
  %v152 = sea.ptr.cmp eq, %v150, %v151 : !sea.ptr<64> loc("_113"("aws-c-common/source/byte_buf.c":60:65))
  %v153 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v152, ^bb68(%v153 : i1), ^bb67 loc("aws-c-common/source/byte_buf.c":60:74)
^bb67:
  %v154 = sea.const 0 : i1
  sea.br ^bb68(%v154 : i1)
^bb68(%v155 : i1):
  sea.assume %v155 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":33:3)
  %v156 = sea.load %v62[%v8] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc(".pmcpy.i"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":36:41))
  %v157 = sea.store %v3[%v10], %v156 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":36:41)
  %v158 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":36:41))
  %v159 = sea.store %v157[%v158], %v120 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":36:41)
  %v160 = sea.ptr.index %v10 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy11.i"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":36:41))
  %v161 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc(".pmcpy14.i"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":36:41))
  %v162 = sea.store %v159[%v160], %v161 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":36:41)
  %v163 = sea.ptr.index %v10 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy16.i"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":36:41))
  %v164 = sea.store %v162[%v163], %v100 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":36:41)
  %v165 = sea.ptr.index %v10 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy21.i"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":36:41))
  %v166 = sea.load %v93[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc(".pmcpy22.i"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":36:41))
  %v167 = sea.store %v164[%v165], %v166 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":36:41)
  sea.tracking_on loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":38:3)
  %v168 = sea.mem.reset_modified %v93[%v8] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":39:3)
  %v169 = sea.const 0 : i64 loc("_124"("aws-c-common/source/ring_buffer.c":137:24))
  %v170 = sea.icmp ne, %v95, %v169 : i64 loc("_124"("aws-c-common/source/ring_buffer.c":137:24))
  %v171 = sea.const 0 : i64 loc("_125")
  %v172 = sea.icmp ne, %v94, %v171 : i64 loc("_125")
  %v173 = sea.and %v172, %v170 : i1 loc("or.cond.not10.i.i"("aws-c-common/source/ring_buffer.c":137:29))
  %v174 = sea.const 0 : i1 loc("aws-c-common/source/ring_buffer.c":137:29)
  sea.cond_br %v173, ^bb69, ^bb109(%v168, %v48, %v174 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1) loc("aws-c-common/source/ring_buffer.c":137:29)
^bb69:
  sea.br ^bb70
^bb70:
  %v175 = sea.load %v90[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_128"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v176 = sea.load %v90[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_129"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb71
^bb71:
  %v177 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_131"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v178 = sea.load %v87[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_132"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v179 = sea.ptr.cmp eq, %v177, %v175 : !sea.ptr<64> loc("_133"("aws-c-common/source/ring_buffer.c":149:18))
  sea.cond_br %v179, ^bb96, ^bb72 loc("aws-c-common/source/ring_buffer.c":149:9)
^bb72:
  %v180 = sea.ptr.cmp ugt, %v175, %v177 : !sea.ptr<64> loc("_159"("aws-c-common/source/ring_buffer.c":171:18))
  sea.cond_br %v180, ^bb92, ^bb73 loc("aws-c-common/source/ring_buffer.c":171:9)
^bb73:
  %v181 = sea.ptr.cmp ult, %v175, %v177 : !sea.ptr<64> loc("_170"("aws-c-common/source/ring_buffer.c":187:25))
  sea.cond_br %v181, ^bb74, ^bb95 loc("aws-c-common/source/ring_buffer.c":187:16)
^bb74:
  sea.br ^bb75
^bb75:
  %v182 = sea.load %v93[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_173"("aws-c-common/source/ring_buffer.c":188:39))
  %v183 = sea.ptr.to_int %v182 : !sea.ptr<64> to i64 loc("_174"("aws-c-common/source/ring_buffer.c":188:54))
  %v184 = sea.ptr.to_int %v177 : !sea.ptr<64> to i64 loc("_175"("aws-c-common/source/ring_buffer.c":188:54))
  %v185 = sea.sub %v183, %v184 : i64 loc("_176"("aws-c-common/source/ring_buffer.c":188:54))
  sea.br ^bb76
^bb76:
  %v186 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_178"("aws-c-common/source/ring_buffer.c":189:50))
  %v187 = sea.ptr.to_int %v175 : !sea.ptr<64> to i64 loc("_179"("aws-c-common/source/ring_buffer.c":189:38))
  %v188 = sea.ptr.to_int %v186 : !sea.ptr<64> to i64 loc("_180"("aws-c-common/source/ring_buffer.c":189:38))
  %v189 = sea.sub %v187, %v188 : i64 loc("_181"("aws-c-common/source/ring_buffer.c":189:38))
  %v190 = sea.icmp ult, %v185, %v95 : i64 loc(".not.i.i"("aws-c-common/source/ring_buffer.c":192:24))
  sea.cond_br %v190, ^bb79, ^bb77 loc("aws-c-common/source/ring_buffer.c":192:13)
^bb77:
  sea.br ^bb78
^bb78:
  %v191 = sea.ptr.index %v177 [%v95] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_184"("aws-c-common/source/ring_buffer.c":193:13))
  %v192 = sea.store %v168[%v85], %v191 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/atomics_gnu.inl":92:5)
  %v193 = sea.const 0 : i64 loc("aws-c-common/source/ring_buffer.c":194:21)
  %v194 = sea.store %v48[%v6], %v193 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/ring_buffer.c":194:21)
  %v195 = sea.store %v194[%v44], %v177 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":194:21)
  %v196 = sea.store %v195[%v29], %v95 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/ring_buffer.c":194:21)
  %v197 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":194:21)
  %v198 = sea.store %v196[%v46], %v197 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":194:21)
  %v199 = sea.const 1 : i1 loc("aws-c-common/source/ring_buffer.c":197:13)
  sea.br ^bb109(%v192, %v198, %v199 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1) loc("aws-c-common/source/ring_buffer.c":197:13)
^bb79:
  %v200 = sea.icmp ugt, %v189, %v95 : i64 loc("_186"("aws-c-common/source/ring_buffer.c":200:24))
  sea.cond_br %v200, ^bb88, ^bb80 loc("aws-c-common/source/ring_buffer.c":200:13)
^bb80:
  %v201 = sea.icmp ult, %v185, %v94 : i64 loc(".not11.i.i"("aws-c-common/source/ring_buffer.c":209:24))
  %v202 = sea.icmp ult, %v185, %v189 : i64 loc(".not12.i.i")
  %v203 = sea.const 1 : i1 loc("or.cond.i.i"("aws-c-common/source/ring_buffer.c":209:40))
  %v204 = sea.select %v201, %v203, %v202 : i1 loc("or.cond.i.i"("aws-c-common/source/ring_buffer.c":209:40))
  sea.cond_br %v204, ^bb83, ^bb81 loc("aws-c-common/source/ring_buffer.c":209:40)
^bb81:
  sea.br ^bb82
^bb82:
  %v205 = sea.ptr.index %v177 [%v185] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_195"("aws-c-common/source/ring_buffer.c":210:13))
  %v206 = sea.store %v168[%v85], %v205 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/atomics_gnu.inl":92:5)
  %v207 = sea.const 0 : i64 loc("aws-c-common/source/ring_buffer.c":211:21)
  %v208 = sea.store %v48[%v6], %v207 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/ring_buffer.c":211:21)
  %v209 = sea.store %v208[%v44], %v177 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":211:21)
  %v210 = sea.store %v209[%v29], %v185 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/ring_buffer.c":211:21)
  %v211 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":211:21)
  %v212 = sea.store %v210[%v46], %v211 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":211:21)
  %v213 = sea.const 1 : i1 loc("aws-c-common/source/ring_buffer.c":214:13)
  sea.br ^bb109(%v206, %v212, %v213 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1) loc("aws-c-common/source/ring_buffer.c":214:13)
^bb83:
  %v214 = sea.icmp ugt, %v189, %v94 : i64 loc("_197"("aws-c-common/source/ring_buffer.c":217:24))
  sea.cond_br %v214, ^bb84, ^bb95 loc("aws-c-common/source/ring_buffer.c":217:13)
^bb84:
  sea.br ^bb85
^bb85:
  sea.br ^bb86
^bb86:
  %v215 = sea.ptr.index %v186 [%v189] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_201"("aws-c-common/source/ring_buffer.c":218:13))
  %v216 = sea.ptr.index %v215 [] strides [] offset -1 inbounds : !sea.ptr<64> loc("_202"("aws-c-common/source/ring_buffer.c":218:13))
  %v217 = sea.store %v168[%v85], %v216 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/atomics_gnu.inl":92:5)
  sea.br ^bb87
^bb87:
  %v218 = sea.const 18446744073709551615 : i64 loc("_204"("aws-c-common/source/ring_buffer.c":219:84))
  %v219 = sea.add %v189, %v218 : i64 loc("_204"("aws-c-common/source/ring_buffer.c":219:84))
  %v220 = sea.const 0 : i64 loc("aws-c-common/source/ring_buffer.c":219:21)
  %v221 = sea.store %v48[%v6], %v220 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/ring_buffer.c":219:21)
  %v222 = sea.store %v221[%v44], %v186 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":219:21)
  %v223 = sea.store %v222[%v29], %v219 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/ring_buffer.c":219:21)
  %v224 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":219:21)
  %v225 = sea.store %v223[%v46], %v224 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":219:21)
  %v226 = sea.const 1 : i1 loc("aws-c-common/source/ring_buffer.c":222:13)
  sea.br ^bb109(%v217, %v225, %v226 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1) loc("aws-c-common/source/ring_buffer.c":222:13)
^bb88:
  sea.br ^bb89
^bb89:
  sea.br ^bb90
^bb90:
  %v227 = sea.ptr.index %v186 [%v95] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_190"("aws-c-common/source/ring_buffer.c":201:13))
  %v228 = sea.store %v168[%v85], %v227 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/atomics_gnu.inl":92:5)
  sea.br ^bb91
^bb91:
  %v229 = sea.const 0 : i64 loc("aws-c-common/source/ring_buffer.c":202:21)
  %v230 = sea.store %v48[%v6], %v229 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/ring_buffer.c":202:21)
  %v231 = sea.store %v230[%v44], %v186 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":202:21)
  %v232 = sea.store %v231[%v29], %v95 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/ring_buffer.c":202:21)
  %v233 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":202:21)
  %v234 = sea.store %v232[%v46], %v233 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":202:21)
  %v235 = sea.const 1 : i1 loc("aws-c-common/source/ring_buffer.c":205:13)
  sea.br ^bb109(%v228, %v234, %v235 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1) loc("aws-c-common/source/ring_buffer.c":205:13)
^bb92:
  %v236 = sea.ptr.to_int %v175 : !sea.ptr<64> to i64 loc("_161"("aws-c-common/source/ring_buffer.c":172:33))
  %v237 = sea.ptr.to_int %v177 : !sea.ptr<64> to i64 loc("_162"("aws-c-common/source/ring_buffer.c":172:33))
  %v238 = sea.const 18446744073709551615 : i64 loc("_163"("aws-c-common/source/ring_buffer.c":175:15))
  %v239 = sea.xor %v237, %v238 : i64 loc("_163"("aws-c-common/source/ring_buffer.c":175:15))
  %v240 = sea.add %v239, %v236 : i64 loc("_164"("aws-c-common/source/ring_buffer.c":175:15))
  %v241 = sea.umin %v240, %v95 : i64 loc("_165"("aws-c-common/source/ring_buffer.c":177:34))
  %v242 = sea.icmp ult, %v241, %v94 : i64 loc(".not13.i.i"("aws-c-common/source/ring_buffer.c":179:29))
  sea.cond_br %v242, ^bb95, ^bb93 loc("aws-c-common/source/ring_buffer.c":179:13)
^bb93:
  sea.br ^bb94
^bb94:
  %v243 = sea.ptr.index %v177 [%v241] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_168"("aws-c-common/source/ring_buffer.c":180:13))
  %v244 = sea.store %v168[%v85], %v243 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/atomics_gnu.inl":92:5)
  %v245 = sea.const 0 : i64 loc("aws-c-common/source/ring_buffer.c":181:21)
  %v246 = sea.store %v48[%v6], %v245 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/ring_buffer.c":181:21)
  %v247 = sea.store %v246[%v44], %v177 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":181:21)
  %v248 = sea.store %v247[%v29], %v241 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/ring_buffer.c":181:21)
  %v249 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":181:21)
  %v250 = sea.store %v248[%v46], %v249 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":181:21)
  %v251 = sea.const 1 : i1
  sea.br ^bb109(%v244, %v250, %v251 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1)
^bb95:
  %v252 = sea.const 0 : i1 loc("aws-c-common/source/ring_buffer.c":228:5)
  sea.br ^bb109(%v168, %v48, %v252 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1) loc("aws-c-common/source/ring_buffer.c":228:5)
^bb96:
  sea.br ^bb97
^bb97:
  %v253 = sea.load %v93[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_136"("aws-c-common/source/ring_buffer.c":150:39))
  %v254 = sea.ptr.null : !sea.ptr<64> loc("_137"("aws-c-common/source/ring_buffer.c":150:54))
  %v255 = sea.ptr.cmp eq, %v253, %v254 : !sea.ptr<64> loc("_137"("aws-c-common/source/ring_buffer.c":150:54))
  %v256 = sea.const 0 : i64 loc("aws-c-common/source/ring_buffer.c":150:29)
  sea.cond_br %v255, ^bb101(%v256 : i64), ^bb98 loc("aws-c-common/source/ring_buffer.c":150:29)
^bb98:
  sea.br ^bb99
^bb99:
  sea.br ^bb100
^bb100:
  %v257 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_141"("aws-c-common/source/ring_buffer.c":150:105))
  %v258 = sea.ptr.to_int %v253 : !sea.ptr<64> to i64 loc("_142"("aws-c-common/source/ring_buffer.c":150:93))
  %v259 = sea.ptr.to_int %v257 : !sea.ptr<64> to i64 loc("_143"("aws-c-common/source/ring_buffer.c":150:93))
  %v260 = sea.sub %v258, %v259 : i64 loc("_144"("aws-c-common/source/ring_buffer.c":150:93))
  sea.br ^bb101(%v260 : i64) loc("aws-c-common/source/ring_buffer.c":150:29)
^bb101(%v261 : i64):
  %v262 = sea.umin %v261, %v95 : i64 loc("_147"("aws-c-common/source/ring_buffer.c":152:34))
  %v263 = sea.icmp ult, %v262, %v94 : i64 loc("_148"("aws-c-common/source/ring_buffer.c":154:29))
  sea.cond_br %v263, ^bb108, ^bb102 loc("aws-c-common/source/ring_buffer.c":154:13)
^bb102:
  sea.br ^bb103
^bb103:
  %v264 = sea.load %v80[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_152"("aws-c-common/source/ring_buffer.c":162:9))
  sea.br ^bb104
^bb104:
  %v265 = sea.ptr.index %v264 [%v262] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_154"("aws-c-common/source/ring_buffer.c":162:9))
  %v266 = sea.store %v168[%v85], %v265 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/atomics_gnu.inl":92:5)
  sea.br ^bb105
^bb105:
  sea.br ^bb106
^bb106:
  %v267 = sea.store %v266[%v88], %v264 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/atomics_gnu.inl":92:5)
  sea.br ^bb107
^bb107:
  %v268 = sea.const 0 : i64 loc("aws-c-common/source/ring_buffer.c":164:17)
  %v269 = sea.store %v48[%v6], %v268 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/ring_buffer.c":164:17)
  %v270 = sea.store %v269[%v44], %v264 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":164:17)
  %v271 = sea.store %v270[%v29], %v262 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/ring_buffer.c":164:17)
  %v272 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":164:17)
  %v273 = sea.store %v271[%v46], %v272 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":164:17)
  %v274 = sea.const 1 : i1 loc("aws-c-common/source/ring_buffer.c":167:9)
  sea.br ^bb109(%v267, %v273, %v274 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1) loc("aws-c-common/source/ring_buffer.c":167:9)
^bb108:
  %v275 = sea.const 0 : i1 loc("aws-c-common/source/ring_buffer.c":157:13)
  sea.br ^bb109(%v168, %v48, %v275 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1) loc("aws-c-common/source/ring_buffer.c":157:13)
^bb109(%v276 : !sea.mem<!sea.ptr<64>, i8>, %v277 : !sea.mem<!sea.ptr<64>, i8>, %v278 : i1):
  sea.br ^bb110
^bb110:
  %v279 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_207"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v280 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_208"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb111
^bb111:
  %v281 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_210"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v282 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_211"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v283 = sea.ptr.null : !sea.ptr<64> loc(".not.i181.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v284 = sea.ptr.cmp eq, %v279, %v283 : !sea.ptr<64> loc(".not.i181.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v285 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v284, ^bb116(%v285 : i1), ^bb112 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb112:
  sea.br ^bb113
^bb113:
  %v286 = sea.load %v276[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_214"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v287 = sea.ptr.cmp ugt, %v286, %v279 : !sea.ptr<64> loc(".not1.i183.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v288 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v287, ^bb116(%v288 : i1), ^bb114 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb114:
  sea.br ^bb115
^bb115:
  %v289 = sea.load %v276[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_217"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v290 = sea.ptr.cmp uge, %v289, %v279 : !sea.ptr<64> loc("_218"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb116(%v290 : i1)
^bb116(%v291 : i1):
  %v292 = sea.ptr.null : !sea.ptr<64> loc(".not.i177.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v293 = sea.ptr.cmp eq, %v281, %v292 : !sea.ptr<64> loc(".not.i177.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v294 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v293, ^bb121(%v294 : i1), ^bb117 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb117:
  sea.br ^bb118
^bb118:
  %v295 = sea.load %v276[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_222"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v296 = sea.ptr.cmp ugt, %v295, %v281 : !sea.ptr<64> loc(".not1.i179.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v297 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v296, ^bb121(%v297 : i1), ^bb119 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb119:
  sea.br ^bb120
^bb120:
  %v298 = sea.load %v276[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_225"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v299 = sea.ptr.cmp uge, %v298, %v281 : !sea.ptr<64> loc("_226"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb121(%v299 : i1)
^bb121(%v300 : i1):
  sea.br ^bb122
^bb122:
  %v301 = sea.load %v276[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_229"("aws-c-common/include/aws/common/ring_buffer.inl":39:47))
  %v302 = sea.ptr.cmp eq, %v279, %v301 : !sea.ptr<64> loc(".not.i157.i"("aws-c-common/include/aws/common/ring_buffer.inl":39:34))
  %v303 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
  sea.cond_br %v302, ^bb123, ^bb125(%v303 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb123:
  sea.br ^bb124
^bb124:
  %v304 = sea.ptr.cmp eq, %v281, %v279 : !sea.ptr<64> loc("_232"("aws-c-common/include/aws/common/ring_buffer.inl":39:68))
  sea.br ^bb125(%v304 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb125(%v305 : i1):
  sea.br ^bb126
^bb126:
  %v306 = sea.ptr.null : !sea.ptr<64> loc("_236"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v307 = sea.ptr.cmp ne, %v301, %v306 : !sea.ptr<64> loc("_236"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v308 = sea.const 0 : i1 loc("or.cond.i158.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v309 = sea.select %v307, %v291, %v308 : i1 loc("or.cond.i158.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v310 = sea.const 0 : i1 loc("or.cond3.i159.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v311 = sea.select %v309, %v300, %v310 : i1 loc("or.cond3.i159.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v312 = sea.const 0 : i1 loc("or.cond5.i160.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v313 = sea.select %v311, %v305, %v312 : i1 loc("or.cond5.i160.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v314 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
  sea.cond_br %v313, ^bb127, ^bb129(%v314 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
^bb127:
  sea.br ^bb128
^bb128:
  %v315 = sea.load %v276[%v8] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_239"("aws-c-common/include/aws/common/ring_buffer.inl":41:23))
  %v316 = sea.ptr.null : !sea.ptr<64> loc("_240"("aws-c-common/include/aws/common/ring_buffer.inl":41:33))
  %v317 = sea.ptr.cmp ne, %v315, %v316 : !sea.ptr<64> loc("_240"("aws-c-common/include/aws/common/ring_buffer.inl":41:33))
  sea.br ^bb129(%v317 : i1)
^bb129(%v318 : i1):
  sea.br ^bb130
^bb130:
  %v319 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_243"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v320 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_244"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb131
^bb131:
  %v321 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_246"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v322 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_247"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v323 = sea.ptr.null : !sea.ptr<64> loc(".not.i173.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v324 = sea.ptr.cmp eq, %v319, %v323 : !sea.ptr<64> loc(".not.i173.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v325 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v324, ^bb136(%v325 : i1), ^bb132 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb132:
  sea.br ^bb133
^bb133:
  %v326 = sea.load %v276[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_250"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v327 = sea.ptr.cmp ugt, %v326, %v319 : !sea.ptr<64> loc(".not1.i175.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v328 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v327, ^bb136(%v328 : i1), ^bb134 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb134:
  sea.br ^bb135
^bb135:
  %v329 = sea.load %v276[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_253"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v330 = sea.ptr.cmp uge, %v329, %v319 : !sea.ptr<64> loc("_254"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb136(%v330 : i1)
^bb136(%v331 : i1):
  %v332 = sea.ptr.null : !sea.ptr<64> loc(".not.i170.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v333 = sea.ptr.cmp eq, %v321, %v332 : !sea.ptr<64> loc(".not.i170.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v334 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v333, ^bb141(%v334 : i1), ^bb137 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb137:
  sea.br ^bb138
^bb138:
  %v335 = sea.load %v276[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_258"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v336 = sea.ptr.cmp ugt, %v335, %v321 : !sea.ptr<64> loc(".not1.i172.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v337 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v336, ^bb141(%v337 : i1), ^bb139 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb139:
  sea.br ^bb140
^bb140:
  %v338 = sea.load %v276[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_261"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v339 = sea.ptr.cmp uge, %v338, %v321 : !sea.ptr<64> loc("_262"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb141(%v339 : i1)
^bb141(%v340 : i1):
  sea.br ^bb142
^bb142:
  %v341 = sea.load %v276[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_265"("aws-c-common/include/aws/common/ring_buffer.inl":39:47))
  %v342 = sea.ptr.cmp eq, %v319, %v341 : !sea.ptr<64> loc(".not.i165.i"("aws-c-common/include/aws/common/ring_buffer.inl":39:34))
  %v343 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
  sea.cond_br %v342, ^bb143, ^bb145(%v343 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb143:
  sea.br ^bb144
^bb144:
  %v344 = sea.ptr.cmp eq, %v321, %v319 : !sea.ptr<64> loc("_268"("aws-c-common/include/aws/common/ring_buffer.inl":39:68))
  sea.br ^bb145(%v344 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb145(%v345 : i1):
  sea.br ^bb146
^bb146:
  %v346 = sea.ptr.null : !sea.ptr<64> loc("_272"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v347 = sea.ptr.cmp ne, %v341, %v346 : !sea.ptr<64> loc("_272"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v348 = sea.const 0 : i1 loc("or.cond.i166.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v349 = sea.select %v347, %v331, %v348 : i1 loc("or.cond.i166.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v350 = sea.const 0 : i1 loc("or.cond3.i167.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v351 = sea.select %v349, %v340, %v350 : i1 loc("or.cond3.i167.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v352 = sea.const 0 : i1 loc("or.cond5.i168.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v353 = sea.select %v351, %v345, %v352 : i1 loc("or.cond5.i168.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  sea.cond_br %v353, ^bb147, ^bb281 loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
^bb147:
  %v354 = sea.load %v276[%v8] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_274")
  %v355 = sea.ptr.null : !sea.ptr<64> loc("_275")
  %v356 = sea.ptr.cmp ne, %v354, %v355 : !sea.ptr<64> loc("_275")
  %v357 = sea.const 1 : i1 loc("or.cond")
  %v358 = sea.const 0 : i1 loc("or.cond")
  %v359 = sea.select %v357, %v356, %v358 : i1 loc("or.cond")
  sea.cond_br %v359, ^bb148, ^bb281
^bb148:
  sea.cond_br %v278, ^bb150, ^bb149 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":47:7)
^bb149:
  %v360 = sea.mem.is_modified %v276[%v8] : !sea.mem<!sea.ptr<64>, i8> loc("_559"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":65:5))
  %v361 = sea.const 1 : i1 loc("_560"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":65:5))
  %v362 = sea.xor %v360, %v361 : i1 loc("_560"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":65:5))
  %v363 = sea.mem.is_modified %v276[%v8] : !sea.mem<!sea.ptr<64>, i8> loc("_561"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":65:5))
  sea.cond_br %v363, ^bb281, ^bb278 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":65:5)
^bb150:
  sea.br ^bb151
^bb151:
  %v364 = sea.load %v277[%v29] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_279"("aws-c-common/source/byte_buf.c":60:19))
  %v365 = sea.const 0 : i64 loc(".not"("aws-c-common/source/byte_buf.c":60:28))
  %v366 = sea.icmp eq, %v364, %v365 : i64 loc(".not"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v366, ^bb159, ^bb152 loc("aws-c-common/source/byte_buf.c":60:33)
^bb152:
  sea.br ^bb153
^bb153:
  sea.br ^bb154
^bb154:
  %v367 = sea.load %v277[%v6] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_290"("aws-c-common/source/byte_buf.c":61:40))
  sea.br ^bb155
^bb155:
  %v368 = sea.icmp ugt, %v367, %v364 : i64 loc(".not2.i27.i"("aws-c-common/source/byte_buf.c":61:44))
  %v369 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v368, ^bb164(%v367, %v369 : i64, i1), ^bb156 loc("aws-c-common/source/byte_buf.c":61:61)
^bb156:
  sea.br ^bb157
^bb157:
  sea.br ^bb158
^bb158:
  %v370 = sea.load %v277[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_295"("aws-c-common/source/byte_buf.c":61:64))
  %v371 = sea.ptr.null : !sea.ptr<64> loc("_296"("aws-c-common/source/byte_buf.c":61:64))
  %v372 = sea.ptr.cmp ne, %v370, %v371 : !sea.ptr<64> loc("_296"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb164(%v367, %v372 : i64, i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb159:
  sea.br ^bb160
^bb160:
  %v373 = sea.load %v277[%v6] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_282"("aws-c-common/source/byte_buf.c":60:41))
  %v374 = sea.const 0 : i64 loc("_283"("aws-c-common/source/byte_buf.c":60:45))
  %v375 = sea.icmp eq, %v373, %v374 : i64 loc("_283"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v375, ^bb161, ^bb163 loc("aws-c-common/source/byte_buf.c":60:50)
^bb161:
  sea.br ^bb162
^bb162:
  %v376 = sea.load %v277[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_286"("aws-c-common/source/byte_buf.c":60:58))
  %v377 = sea.ptr.null : !sea.ptr<64> loc("_287"("aws-c-common/source/byte_buf.c":60:65))
  %v378 = sea.ptr.cmp eq, %v376, %v377 : !sea.ptr<64> loc("_287"("aws-c-common/source/byte_buf.c":60:65))
  %v379 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":60:74)
  %v380 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v378, ^bb164(%v379, %v380 : i64, i1), ^bb163 loc("aws-c-common/source/byte_buf.c":60:74)
^bb163:
  %v381 = sea.const 0 : i1
  sea.br ^bb164(%v373, %v381 : i64, i1)
^bb164(%v382 : i64, %v383 : i1):
  sea.br ^bb165
^bb165:
  sea.cond_br %v366, ^bb171, ^bb166 loc("aws-c-common/source/byte_buf.c":60:33)
^bb166:
  sea.br ^bb167
^bb167:
  sea.br ^bb168
^bb168:
  %v384 = sea.icmp ule, %v382, %v364 : i64 loc(".not2.i.i")
  %v385 = sea.const 1 : i1 loc("or.cond29.not")
  %v386 = sea.const 0 : i1 loc("or.cond29.not")
  %v387 = sea.select %v385, %v384, %v386 : i1 loc("or.cond29.not")
  sea.cond_br %v387, ^bb169, ^bb281
^bb169:
  sea.br ^bb170
^bb170:
  %v388 = sea.load %v277[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_312")
  %v389 = sea.ptr.null : !sea.ptr<64> loc("_313")
  %v390 = sea.ptr.cmp ne, %v388, %v389 : !sea.ptr<64> loc("_313")
  %v391 = sea.const 1 : i1 loc("or.cond23")
  %v392 = sea.const 0 : i1 loc("or.cond23")
  %v393 = sea.select %v391, %v390, %v392 : i1 loc("or.cond23")
  sea.cond_br %v393, ^bb176(%v388 : !sea.ptr<64>), ^bb281
^bb171:
  sea.br ^bb172
^bb172:
  %v394 = sea.const 0 : i64 loc("_302"("aws-c-common/source/byte_buf.c":60:45))
  %v395 = sea.icmp eq, %v382, %v394 : i64 loc("_302"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v395, ^bb173, ^bb175 loc("aws-c-common/source/byte_buf.c":60:50)
^bb173:
  sea.br ^bb174
^bb174:
  %v396 = sea.load %v277[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_305"("aws-c-common/source/byte_buf.c":60:58))
  %v397 = sea.ptr.null : !sea.ptr<64> loc("_306"("aws-c-common/source/byte_buf.c":60:65))
  %v398 = sea.ptr.cmp eq, %v396, %v397 : !sea.ptr<64> loc("_306"("aws-c-common/source/byte_buf.c":60:65))
  %v399 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v398, ^bb176(%v399 : !sea.ptr<64>), ^bb175 loc("aws-c-common/source/byte_buf.c":60:74)
^bb175:
  sea.br ^bb281
^bb176(%v400 : !sea.ptr<64>):
  %v401 = sea.icmp uge, %v364, %v94 : i64 loc("_315"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":49:5))
  %v402 = sea.icmp ule, %v364, %v95 : i64 loc("_316"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":49:5))
  %v403 = sea.const 0 : i1 loc("_317"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":49:5))
  %v404 = sea.select %v401, %v402, %v403 : i1 loc("_317"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":49:5))
  sea.cond_br %v404, ^bb177, ^bb281 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":49:5)
^bb177:
  %v405 = sea.const 0 : i64 loc("_319"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":51:5))
  %v406 = sea.icmp eq, %v382, %v405 : i64 loc("_319"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":51:5))
  sea.cond_br %v406, ^bb178, ^bb281 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":51:5)
^bb178:
  sea.br ^bb179
^bb179:
  %v407 = sea.ptr.null : !sea.ptr<64> loc(".not.i39.i"("aws-c-common/source/ring_buffer.c":241:12))
  %v408 = sea.ptr.cmp ne, %v400, %v407 : !sea.ptr<64> loc(".not.i39.i"("aws-c-common/source/ring_buffer.c":241:12))
  %v409 = sea.const 0 : i1 loc("aws-c-common/source/ring_buffer.c":241:24)
  sea.cond_br %v408, ^bb180, ^bb190(%v409 : i1) loc("aws-c-common/source/ring_buffer.c":241:24)
^bb180:
  sea.br ^bb181
^bb181:
  sea.br ^bb182
^bb182:
  %v410 = sea.load %v276[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_325"("aws-c-common/source/ring_buffer.c":241:67))
  %v411 = sea.ptr.null : !sea.ptr<64> loc(".not2.i41.i"("aws-c-common/source/ring_buffer.c":241:54))
  %v412 = sea.ptr.cmp eq, %v410, %v411 : !sea.ptr<64> loc(".not2.i41.i"("aws-c-common/source/ring_buffer.c":241:54))
  %v413 = sea.const 0 : i1 loc("aws-c-common/source/ring_buffer.c":241:82)
  sea.cond_br %v412, ^bb190(%v413 : i1), ^bb183 loc("aws-c-common/source/ring_buffer.c":241:82)
^bb183:
  sea.br ^bb184
^bb184:
  sea.br ^bb185
^bb185:
  %v414 = sea.ptr.cmp ult, %v400, %v341 : !sea.ptr<64> loc(".not3.i.i"("aws-c-common/source/ring_buffer.c":242:24))
  %v415 = sea.const 0 : i1 loc("aws-c-common/source/ring_buffer.c":242:51)
  sea.cond_br %v414, ^bb190(%v415 : i1), ^bb186 loc("aws-c-common/source/ring_buffer.c":242:51)
^bb186:
  sea.br ^bb187
^bb187:
  sea.br ^bb188
^bb188:
  sea.br ^bb189
^bb189:
  %v416 = sea.ptr.index %v400 [%v364] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_333"("aws-c-common/source/ring_buffer.c":242:66))
  %v417 = sea.ptr.cmp ule, %v416, %v410 : !sea.ptr<64> loc("_334"("aws-c-common/source/ring_buffer.c":242:82))
  sea.br ^bb190(%v417 : i1)
^bb190(%v418 : i1):
  %v419 = sea.const 1 : i1 loc("or.cond31.not")
  %v420 = sea.and %v408, %v419 : i1 loc("or.cond31.not")
  sea.cond_br %v420, ^bb191, ^bb281
^bb191:
  sea.br ^bb192
^bb192:
  %v421 = sea.load %v276[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_338")
  %v422 = sea.ptr.null : !sea.ptr<64> loc(".not2.i45.i")
  %v423 = sea.ptr.cmp ne, %v421, %v422 : !sea.ptr<64> loc(".not2.i45.i")
  %v424 = sea.const 1 : i1 loc("or.cond35.not")
  %v425 = sea.const 0 : i1 loc("or.cond35.not")
  %v426 = sea.select %v424, %v423, %v425 : i1 loc("or.cond35.not")
  sea.cond_br %v426, ^bb193, ^bb281
^bb193:
  sea.br ^bb194
^bb194:
  %v427 = sea.ptr.cmp uge, %v400, %v341 : !sea.ptr<64> loc(".not3.i46.i")
  %v428 = sea.const 1 : i1 loc("or.cond37.not")
  %v429 = sea.and %v427, %v428 : i1 loc("or.cond37.not")
  sea.cond_br %v429, ^bb195, ^bb281
^bb195:
  sea.br ^bb196
^bb196:
  sea.br ^bb197
^bb197:
  %v430 = sea.ptr.index %v400 [%v364] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_344")
  %v431 = sea.ptr.cmp ule, %v430, %v421 : !sea.ptr<64> loc("_345")
  %v432 = sea.const 1 : i1 loc("or.cond26")
  %v433 = sea.const 0 : i1 loc("or.cond26")
  %v434 = sea.select %v432, %v431, %v433 : i1 loc("or.cond26")
  sea.cond_br %v434, ^bb198, ^bb281
^bb198:
  sea.br ^bb199
^bb199:
  %v435 = sea.load %v162[%v160] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_348"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v436 = sea.load %v162[%v160] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_349"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb200
^bb200:
  %v437 = sea.load %v164[%v163] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_351"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v438 = sea.load %v164[%v163] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_352"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v439 = sea.ptr.cmp eq, %v437, %v435 : !sea.ptr<64> loc("_353"("seahorn/include/cbmc/ring_buffer_abstract_states.h":14:17))
  %v440 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":53:5)
  sea.cond_br %v439, ^bb201, ^bb205(%v440 : i1) loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":53:5)
^bb201:
  sea.br ^bb202
^bb202:
  %v441 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_356"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v442 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_357"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb203
^bb203:
  %v443 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_359"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v444 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_360"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb204
^bb204:
  %v445 = sea.load %v276[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_361"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:22))
  %v446 = sea.ptr.cmp eq, %v445, %v443 : !sea.ptr<64> loc("_362"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:33))
  %v447 = sea.ptr.cmp ult, %v443, %v441 : !sea.ptr<64> loc("_363"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v448 = sea.const 0 : i1 loc("_364"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v449 = sea.select %v446, %v447, %v448 : i1 loc("_364"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  sea.br ^bb205(%v449 : i1) loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":53:5)
^bb205(%v450 : i1):
  sea.br ^bb206
^bb206:
  %v451 = sea.load %v162[%v160] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_368"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v452 = sea.load %v162[%v160] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_369"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb207
^bb207:
  %v453 = sea.load %v164[%v163] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_371"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v454 = sea.load %v164[%v163] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_372"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v455 = sea.ptr.cmp eq, %v453, %v451 : !sea.ptr<64> loc("_373"("seahorn/include/cbmc/ring_buffer_abstract_states.h":14:17))
  sea.cond_br %v455, ^bb208, ^bb212 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":53:5)
^bb208:
  sea.br ^bb209
^bb209:
  %v456 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_376"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v457 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_377"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb210
^bb210:
  %v458 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_379"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v459 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_380"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb211
^bb211:
  %v460 = sea.load %v276[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_381"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:22))
  %v461 = sea.ptr.cmp eq, %v460, %v458 : !sea.ptr<64> loc("_382"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:33))
  %v462 = sea.ptr.cmp ult, %v458, %v456 : !sea.ptr<64> loc("_383"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v463 = sea.const 0 : i1 loc("_384"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v464 = sea.select %v461, %v462, %v463 : i1 loc("_384"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  sea.cond_br %v464, ^bb212, ^bb281 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":53:5)
^bb212:
  sea.br ^bb213
^bb213:
  %v465 = sea.load %v162[%v160] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_386"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v466 = sea.load %v162[%v160] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_387"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb214
^bb214:
  %v467 = sea.load %v164[%v163] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_389"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v468 = sea.load %v164[%v163] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_390"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb215
^bb215:
  %v469 = sea.load %v159[%v158] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_391"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:22))
  %v470 = sea.ptr.cmp eq, %v469, %v467 : !sea.ptr<64> loc("_392"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:33))
  %v471 = sea.ptr.cmp ult, %v467, %v465 : !sea.ptr<64> loc("_393"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v472 = sea.const 0 : i1 loc("_394"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v473 = sea.select %v470, %v471, %v472 : i1 loc("_394"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v474 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":55:5)
  sea.cond_br %v473, ^bb216, ^bb220(%v474 : i1) loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":55:5)
^bb216:
  sea.br ^bb217
^bb217:
  %v475 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_397"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v476 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_398"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb218
^bb218:
  %v477 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_400"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v478 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_401"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb219
^bb219:
  %v479 = sea.load %v276[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_402"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:22))
  %v480 = sea.ptr.cmp eq, %v479, %v477 : !sea.ptr<64> loc("_403"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:33))
  %v481 = sea.ptr.cmp ult, %v477, %v475 : !sea.ptr<64> loc("_404"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v482 = sea.const 0 : i1 loc("_405"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v483 = sea.select %v480, %v481, %v482 : i1 loc("_405"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  sea.br ^bb220(%v483 : i1) loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":55:5)
^bb220(%v484 : i1):
  sea.br ^bb221
^bb221:
  %v485 = sea.load %v162[%v160] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_409"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v486 = sea.load %v162[%v160] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_410"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb222
^bb222:
  %v487 = sea.load %v164[%v163] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_412"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v488 = sea.load %v164[%v163] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_413"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb223
^bb223:
  %v489 = sea.load %v159[%v158] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_414"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:22))
  %v490 = sea.ptr.cmp eq, %v489, %v487 : !sea.ptr<64> loc("_415"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:33))
  %v491 = sea.ptr.cmp ult, %v487, %v485 : !sea.ptr<64> loc("_416"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v492 = sea.const 0 : i1 loc("_417"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v493 = sea.select %v490, %v491, %v492 : i1 loc("_417"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  sea.cond_br %v493, ^bb224, ^bb228 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":55:5)
^bb224:
  sea.br ^bb225
^bb225:
  %v494 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_420"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v495 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_421"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb226
^bb226:
  %v496 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_423"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v497 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_424"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb227
^bb227:
  %v498 = sea.load %v276[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_425"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:22))
  %v499 = sea.ptr.cmp eq, %v498, %v496 : !sea.ptr<64> loc("_426"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:33))
  %v500 = sea.ptr.cmp ult, %v496, %v494 : !sea.ptr<64> loc("_427"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v501 = sea.const 0 : i1 loc("_428"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v502 = sea.select %v499, %v500, %v501 : i1 loc("_428"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  sea.cond_br %v502, ^bb228, ^bb281 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":55:5)
^bb228:
  sea.br ^bb229
^bb229:
  %v503 = sea.load %v162[%v160] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_430"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v504 = sea.load %v162[%v160] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_431"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb230
^bb230:
  %v505 = sea.load %v164[%v163] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_433"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v506 = sea.load %v164[%v163] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_434"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb231
^bb231:
  %v507 = sea.load %v159[%v158] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_435"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:22))
  %v508 = sea.ptr.cmp ult, %v507, %v505 : !sea.ptr<64> loc("_436"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:33))
  %v509 = sea.ptr.cmp ult, %v505, %v503 : !sea.ptr<64> loc("_437"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v510 = sea.const 0 : i1 loc("_438"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v511 = sea.select %v508, %v509, %v510 : i1 loc("_438"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v512 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":57:5)
  sea.cond_br %v511, ^bb232, ^bb239(%v512 : i1) loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":57:5)
^bb232:
  sea.br ^bb233
^bb233:
  %v513 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_441"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v514 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_442"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb234
^bb234:
  %v515 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_444"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v516 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_445"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb235
^bb235:
  %v517 = sea.load %v276[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_446"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:22))
  %v518 = sea.ptr.cmp ult, %v517, %v515 : !sea.ptr<64> loc("_447"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:33))
  %v519 = sea.ptr.cmp ult, %v515, %v513 : !sea.ptr<64> loc("_448"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v520 = sea.const 0 : i1 loc("_449"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v521 = sea.select %v518, %v519, %v520 : i1 loc("_449"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v522 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":57:5)
  sea.cond_br %v521, ^bb239(%v522 : i1), ^bb236 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":57:5)
^bb236:
  sea.br ^bb237
^bb237:
  %v523 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_452"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v524 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_453"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb238
^bb238:
  %v525 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_454"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v526 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_455"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v527 = sea.ptr.cmp ugt, %v525, %v523 : !sea.ptr<64> loc("_456"("seahorn/include/cbmc/ring_buffer_abstract_states.h":41:17))
  sea.br ^bb239(%v527 : i1) loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":57:5)
^bb239(%v528 : i1):
  sea.br ^bb240
^bb240:
  %v529 = sea.load %v162[%v160] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_460"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v530 = sea.load %v162[%v160] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_461"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb241
^bb241:
  %v531 = sea.load %v164[%v163] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_463"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v532 = sea.load %v164[%v163] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_464"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb242
^bb242:
  %v533 = sea.load %v159[%v158] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_465"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:22))
  %v534 = sea.ptr.cmp ult, %v533, %v531 : !sea.ptr<64> loc("_466"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:33))
  %v535 = sea.ptr.cmp ult, %v531, %v529 : !sea.ptr<64> loc("_467"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v536 = sea.const 0 : i1 loc("_468"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v537 = sea.select %v534, %v535, %v536 : i1 loc("_468"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  sea.cond_br %v537, ^bb243, ^bb250 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":57:5)
^bb243:
  sea.br ^bb244
^bb244:
  %v538 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_471"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v539 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_472"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb245
^bb245:
  %v540 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_474"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v541 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_475"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb246
^bb246:
  %v542 = sea.load %v276[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_476"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:22))
  %v543 = sea.ptr.cmp ult, %v542, %v540 : !sea.ptr<64> loc("_477"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:33))
  %v544 = sea.ptr.cmp ult, %v540, %v538 : !sea.ptr<64> loc("_478"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v545 = sea.const 0 : i1 loc("_479"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v546 = sea.select %v543, %v544, %v545 : i1 loc("_479"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  sea.cond_br %v546, ^bb250, ^bb247 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":57:5)
^bb247:
  sea.br ^bb248
^bb248:
  %v547 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_482"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v548 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_483"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb249
^bb249:
  %v549 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_484"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v550 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_485"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v551 = sea.ptr.cmp ugt, %v549, %v547 : !sea.ptr<64> loc("_486"("seahorn/include/cbmc/ring_buffer_abstract_states.h":41:17))
  sea.cond_br %v551, ^bb250, ^bb281 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":57:5)
^bb250:
  sea.br ^bb251
^bb251:
  %v552 = sea.load %v162[%v160] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_488"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v553 = sea.load %v162[%v160] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_489"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb252
^bb252:
  %v554 = sea.load %v164[%v163] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_490"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v555 = sea.load %v164[%v163] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_491"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v556 = sea.ptr.cmp ugt, %v554, %v552 : !sea.ptr<64> loc("_492"("seahorn/include/cbmc/ring_buffer_abstract_states.h":41:17))
  %v557 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":60:5)
  sea.cond_br %v556, ^bb253, ^bb256(%v557 : i1) loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":60:5)
^bb253:
  sea.br ^bb254
^bb254:
  %v558 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_495"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v559 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_496"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb255
^bb255:
  %v560 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_497"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v561 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_498"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v562 = sea.ptr.cmp ugt, %v560, %v558 : !sea.ptr<64> loc("_499"("seahorn/include/cbmc/ring_buffer_abstract_states.h":41:17))
  sea.br ^bb256(%v562 : i1) loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":60:5)
^bb256(%v563 : i1):
  sea.br ^bb257
^bb257:
  %v564 = sea.load %v162[%v160] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_503"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v565 = sea.load %v162[%v160] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_504"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb258
^bb258:
  %v566 = sea.load %v164[%v163] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_505"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v567 = sea.load %v164[%v163] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_506"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v568 = sea.ptr.cmp ugt, %v566, %v564 : !sea.ptr<64> loc("_507"("seahorn/include/cbmc/ring_buffer_abstract_states.h":41:17))
  sea.cond_br %v568, ^bb259, ^bb262 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":60:5)
^bb259:
  sea.br ^bb260
^bb260:
  %v569 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_510"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v570 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_511"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb261
^bb261:
  %v571 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_512"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v572 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_513"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v573 = sea.ptr.cmp ugt, %v571, %v569 : !sea.ptr<64> loc("_514"("seahorn/include/cbmc/ring_buffer_abstract_states.h":41:17))
  sea.cond_br %v573, ^bb262, ^bb281 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":60:5)
^bb262:
  sea.br ^bb263
^bb263:
  %v574 = sea.load %v162[%v160] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_516"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v575 = sea.load %v162[%v160] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_517"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb264
^bb264:
  %v576 = sea.load %v164[%v163] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_519"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v577 = sea.load %v164[%v163] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_520"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb265
^bb265:
  %v578 = sea.load %v159[%v158] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_521"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:22))
  %v579 = sea.ptr.cmp eq, %v578, %v576 : !sea.ptr<64> loc("_522"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:33))
  %v580 = sea.ptr.cmp ult, %v576, %v574 : !sea.ptr<64> loc("_523"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v581 = sea.const 0 : i1 loc("_524"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v582 = sea.select %v579, %v580, %v581 : i1 loc("_524"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v583 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":62:5)
  sea.cond_br %v582, ^bb266, ^bb270(%v583 : i1) loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":62:5)
^bb266:
  sea.br ^bb267
^bb267:
  %v584 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_527"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v585 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_528"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb268
^bb268:
  %v586 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_530"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v587 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_531"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb269
^bb269:
  %v588 = sea.load %v276[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_532"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:22))
  %v589 = sea.ptr.cmp uge, %v588, %v586 : !sea.ptr<64> loc("_533"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:33))
  %v590 = sea.ptr.cmp uge, %v586, %v584 : !sea.ptr<64> loc("_534"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v591 = sea.const 1 : i1 loc(".not17"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":62:5))
  %v592 = sea.select %v589, %v591, %v590 : i1 loc(".not17"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":62:5))
  sea.br ^bb270(%v592 : i1)
^bb270(%v593 : i1):
  sea.br ^bb271
^bb271:
  %v594 = sea.load %v162[%v160] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_538"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v595 = sea.load %v162[%v160] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_539"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb272
^bb272:
  %v596 = sea.load %v164[%v163] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_541"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v597 = sea.load %v164[%v163] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_542"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb273
^bb273:
  %v598 = sea.load %v159[%v158] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_543"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:22))
  %v599 = sea.ptr.cmp eq, %v598, %v596 : !sea.ptr<64> loc("_544"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:33))
  %v600 = sea.ptr.cmp ult, %v596, %v594 : !sea.ptr<64> loc("_545"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v601 = sea.const 0 : i1 loc("_546"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  %v602 = sea.select %v599, %v600, %v601 : i1 loc("_546"("seahorn/include/cbmc/ring_buffer_abstract_states.h":23:41))
  sea.cond_br %v602, ^bb274, ^bb278 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":62:5)
^bb274:
  sea.br ^bb275
^bb275:
  %v603 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_549"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v604 = sea.load %v276[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_550"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb276
^bb276:
  %v605 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_552"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v606 = sea.load %v276[%v88] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_553"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb277
^bb277:
  %v607 = sea.load %v276[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_554"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:22))
  %v608 = sea.ptr.cmp ult, %v607, %v605 : !sea.ptr<64> loc("_555"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:33))
  %v609 = sea.ptr.cmp ult, %v605, %v603 : !sea.ptr<64> loc("_556"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v610 = sea.const 0 : i1 loc("_557"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  %v611 = sea.select %v608, %v609, %v610 : i1 loc("_557"("seahorn/include/cbmc/ring_buffer_abstract_states.h":32:40))
  sea.cond_br %v611, ^bb281, ^bb278 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":62:5)
^bb278:
  %v612 = sea.load %v276[%v8] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_562"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":67:3))
  %v613 = sea.load %v157[%v10] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_563"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":67:3))
  %v614 = sea.ptr.cmp eq, %v612, %v613 : !sea.ptr<64> loc("_564"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":67:3))
  sea.cond_br %v614, ^bb279, ^bb281 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":67:3)
^bb279:
  %v615 = sea.load %v276[%v79] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_566"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":68:3))
  %v616 = sea.load %v159[%v158] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_567"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":68:3))
  %v617 = sea.ptr.cmp eq, %v615, %v616 : !sea.ptr<64> loc("_568"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":68:3))
  sea.cond_br %v617, ^bb280, ^bb281 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":68:3)
^bb280:
  %v618 = sea.load %v276[%v91] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_570"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":69:3))
  %v619 = sea.load %v167[%v165] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_571"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":69:3))
  %v620 = sea.ptr.cmp eq, %v618, %v619 : !sea.ptr<64> loc("_572"("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":69:3))
  %v621 = sea.const 1 : i1 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":69:3)
  %v622 = sea.xor %v620, %v621 : i1 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":69:3)
  sea.assume %v622 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":69:3)
  sea.br ^bb281 loc("seahorn/jobs2/ring_buffer_acquire_up_to2/aws_ring_buffer_acquire_up_to_harness2.c":69:3)
^bb281:
  sea.br ^bb282
^bb282:
  %v623 = sea.const 0 : i1
  sea.assert %v623
  sea.halt
}
