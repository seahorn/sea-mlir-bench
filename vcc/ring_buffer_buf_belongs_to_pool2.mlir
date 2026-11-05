// Exported from SeaHorn (ring_buffer_buf_belongs_to_pool2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm26")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm27")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm28")
  %v3 = sea.mem.nondet "region.88" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm29")
  %v4 = sea.const 32 : i64 loc("_0")
  %v5 = sea.alloca %v4 align 8 [4] : i64 -> !sea.ptr<64> loc("_0")
  %v6 = sea.const 40 : i64 loc("_1")
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
  %v46 = sea.icmp ugt, %v20, %v21 : i64 loc(".not2.i11.i"("aws-c-common/source/byte_buf.c":61:44))
  %v47 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v46, ^bb22(%v47 : i1), ^bb14 loc("aws-c-common/source/byte_buf.c":61:61)
^bb14:
  sea.br ^bb15
^bb15:
  sea.br ^bb16
^bb16:
  %v48 = sea.ptr.null : !sea.ptr<64> loc("_33"("aws-c-common/source/byte_buf.c":61:64))
  %v49 = sea.ptr.cmp ne, %v40, %v48 : !sea.ptr<64> loc("_33"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb22(%v49 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb17:
  sea.br ^bb18
^bb18:
  %v50 = sea.const 0 : i64 loc("_23"("aws-c-common/source/byte_buf.c":60:45))
  %v51 = sea.icmp eq, %v20, %v50 : i64 loc("_23"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v51, ^bb19, ^bb21 loc("aws-c-common/source/byte_buf.c":60:50)
^bb19:
  sea.br ^bb20
^bb20:
  %v52 = sea.ptr.null : !sea.ptr<64> loc("_26"("aws-c-common/source/byte_buf.c":60:65))
  %v53 = sea.ptr.cmp eq, %v40, %v52 : !sea.ptr<64> loc("_26"("aws-c-common/source/byte_buf.c":60:65))
  %v54 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v53, ^bb22(%v54 : i1), ^bb21 loc("aws-c-common/source/byte_buf.c":60:74)
^bb21:
  %v55 = sea.const 0 : i1
  sea.br ^bb22(%v55 : i1)
^bb22(%v56 : i1):
  sea.assume %v56 loc("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":19:3)
  %v57 = sea.nondet "nd_size_t" [11] : i64 loc("_35"("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":21:26))
  sea.br ^bb23
^bb23:
  %v58 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":10:23)
  %v59 = sea.store %v2[%v7], %v58 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":10:23)
  %v60 = sea.const 0 : i64 loc("_37"("seahorn/lib/ring_buffer_helper.c":12:12))
  %v61 = sea.icmp ne, %v57, %v60 : i64 loc("_37"("seahorn/lib/ring_buffer_helper.c":12:12))
  sea.assume %v61 loc("seahorn/lib/ring_buffer_helper.c":12:3)
  %v62 = sea.const 0 : i64 loc("_38"("seahorn/lib/proof_allocators.c":17:15))
  %v63 = sea.icmp eq, %v57, %v62 : i64 loc("_38"("seahorn/lib/proof_allocators.c":17:15))
  %v64 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v63, ^bb27(%v39, %v64 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb24 loc("seahorn/lib/proof_allocators.c":17:10)
^bb24:
  %v65 = sea.nondet "nd_malloc_is_fail" [12] : i1 loc("_40"("seahorn/lib/sea_allocators.c":11:10))
  %v66 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v65, ^bb26(%v39, %v66 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb25 loc("seahorn/lib/sea_allocators.c":11:10)
^bb25:
  %v67 = sea.const 1 : i64 loc("malloc154.i")
  %v68 = sea.mul %v57, %v67 : i64 loc("malloc154.i")
  %v69 = sea.alloca %v68 align 16 [13] : i64 -> !sea.ptr<64> loc("malloc154.i")
  sea.br ^bb26(%v39, %v69 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb26(%v70 : !sea.mem<!sea.ptr<64>, i8>, %v71 : !sea.ptr<64>):
  %v72 = sea.memhavoc %v70[%v71], %v57 [14] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v73 = sea.ptr.null : !sea.ptr<64> loc("_43"("seahorn/lib/sea_allocators.c":45:10))
  %v74 = sea.ptr.cmp ne, %v71, %v73 : !sea.ptr<64> loc("_43"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v74 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb27(%v72, %v71 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb27(%v75 : !sea.mem<!sea.ptr<64>, i8>, %v76 : !sea.ptr<64>):
  %v77 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_45"("seahorn/lib/ring_buffer_helper.c":13:13))
  sea.br ^bb28
^bb28:
  %v78 = sea.store %v59[%v77], %v76 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":13:24)
  %v79 = sea.nondet "nd_size_t" [15] : i64 loc("_47"("seahorn/lib/ring_buffer_helper.c":14:26))
  %v80 = sea.nondet "nd_size_t" [16] : i64 loc("_48"("seahorn/lib/ring_buffer_helper.c":15:26))
  %v81 = sea.icmp ult, %v79, %v57 : i64 loc("_49"("seahorn/lib/ring_buffer_helper.c":16:24))
  sea.assume %v81 loc("seahorn/lib/ring_buffer_helper.c":16:3)
  %v82 = sea.icmp ult, %v80, %v57 : i64 loc("_50"("seahorn/lib/ring_buffer_helper.c":17:24))
  sea.assume %v82 loc("seahorn/lib/ring_buffer_helper.c":17:3)
  sea.br ^bb29
^bb29:
  %v83 = sea.ptr.index %v7 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_52"("seahorn/lib/ring_buffer_helper.c":18:35))
  sea.br ^bb30
^bb30:
  %v84 = sea.ptr.index %v76 [%v79] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_54"("seahorn/lib/ring_buffer_helper.c":18:63))
  %v85 = sea.store %v78[%v83], %v84 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/atomics_gnu.inl":92:5)
  sea.br ^bb31
^bb31:
  %v86 = sea.ptr.index %v7 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_56"("seahorn/lib/ring_buffer_helper.c":19:35))
  sea.br ^bb32
^bb32:
  %v87 = sea.ptr.index %v76 [%v80] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_58"("seahorn/lib/ring_buffer_helper.c":19:63))
  %v88 = sea.store %v85[%v86], %v87 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/atomics_gnu.inl":92:5)
  sea.br ^bb33
^bb33:
  %v89 = sea.ptr.index %v7 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_60"("seahorn/lib/ring_buffer_helper.c":20:13))
  sea.br ^bb34
^bb34:
  %v90 = sea.ptr.index %v76 [%v57] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_61"("seahorn/lib/ring_buffer_helper.c":20:51))
  %v91 = sea.store %v88[%v89], %v90 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":20:28)
  %v92 = sea.nondet "nd_bool" [17] : i1 loc("_62"("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":27:20))
  sea.cond_br %v92, ^bb40, ^bb35 loc("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":28:7)
^bb35:
  sea.br ^bb36
^bb36:
  %v93 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":58:20)
  %v94 = sea.store %v45[%v43], %v93 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":58:20)
  %v95 = sea.nondet "nd_malloc_is_fail" [18] : i1 loc("_154"("seahorn/lib/sea_allocators.c":11:10))
  %v96 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v95, ^bb38(%v75, %v96 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb37 loc("seahorn/lib/sea_allocators.c":11:10)
^bb37:
  %v97 = sea.const 10 : i64 loc("malloc155.i13")
  %v98 = sea.alloca %v97 align 16 [19] : i64 -> !sea.ptr<64> loc("malloc155.i13")
  sea.br ^bb38(%v75, %v98 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb38(%v99 : !sea.mem<!sea.ptr<64>, i8>, %v100 : !sea.ptr<64>):
  %v101 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v102 = sea.memhavoc %v99[%v100], %v101 [20] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v103 = sea.ptr.null : !sea.ptr<64> loc("_157"("seahorn/lib/sea_allocators.c":45:10))
  %v104 = sea.ptr.cmp ne, %v100, %v103 : !sea.ptr<64> loc("_157"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v104 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb39
^bb39:
  %v105 = sea.store %v94[%v41], %v100 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":59:17)
  sea.br ^bb80(%v105 : !sea.mem<!sea.ptr<64>, i8>)
^bb40:
  sea.br ^bb41
^bb41:
  %v106 = sea.load %v85[%v83] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_65"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v107 = sea.load %v85[%v83] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_66"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb42
^bb42:
  %v108 = sea.load %v88[%v86] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_68"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v109 = sea.load %v88[%v86] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_69"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v110 = sea.ptr.cmp ne, %v106, %v108 : !sea.ptr<64> loc("_70"("aws-c-common/include/aws/common/ring_buffer.inl":26:17))
  sea.assume %v110 loc("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":29:5)
  %v111 = sea.nondet "nd_bool" [21] : i1 loc("_71"("seahorn/lib/ring_buffer_helper.c":37:20))
  %v112 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":37:20)
  sea.cond_br %v111, ^bb44(%v112 : !sea.ptr<64>), ^bb43 loc("seahorn/lib/ring_buffer_helper.c":37:20)
^bb43:
  %v113 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":37:20)
  sea.br ^bb44(%v113 : !sea.ptr<64>) loc("seahorn/lib/ring_buffer_helper.c":37:20)
^bb44(%v114 : !sea.ptr<64>):
  sea.br ^bb45
^bb45:
  %v115 = sea.store %v45[%v43], %v114 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":37:18)
  sea.br ^bb46
^bb46:
  %v116 = sea.load %v85[%v83] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_76"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v117 = sea.load %v85[%v83] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_77"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb47
^bb47:
  %v118 = sea.load %v88[%v86] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_78"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v119 = sea.load %v88[%v86] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_79"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v120 = sea.ptr.cmp ult, %v116, %v118 : !sea.ptr<64> loc("_80"("seahorn/lib/ring_buffer_helper.c":40:12))
  sea.cond_br %v120, ^bb57, ^bb48 loc("seahorn/lib/ring_buffer_helper.c":40:7)
^bb48:
  %v121 = sea.ptr.cmp ult, %v118, %v116 : !sea.ptr<64> loc("_132"("seahorn/lib/ring_buffer_helper.c":25:3))
  sea.cond_br %v121, ^bb49, ^bb195 loc("seahorn/lib/ring_buffer_helper.c":25:3)
^bb49:
  %v122 = sea.ptr.to_int %v116 : !sea.ptr<64> to i64 loc("_134"("seahorn/lib/ring_buffer_helper.c":26:21))
  %v123 = sea.ptr.to_int %v118 : !sea.ptr<64> to i64 loc("_135"("seahorn/lib/ring_buffer_helper.c":26:21))
  %v124 = sea.sub %v122, %v123 : i64 loc("_136"("seahorn/lib/ring_buffer_helper.c":26:21))
  %v125 = sea.nondet "nd_size_t" [22] : i64 loc("_137"("seahorn/lib/ring_buffer_helper.c":27:16))
  %v126 = sea.icmp ult, %v125, %v124 : i64 loc("_138"("seahorn/lib/ring_buffer_helper.c":28:14))
  sea.assume %v126 loc("seahorn/lib/ring_buffer_helper.c":28:3)
  sea.br ^bb50
^bb50:
  %v127 = sea.ptr.index %v118 [%v125] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_140"("seahorn/lib/ring_buffer_helper.c":29:20))
  %v128 = sea.store %v115[%v41], %v127 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":29:15)
  sea.br ^bb51
^bb51:
  %v129 = sea.ptr.to_int %v127 : !sea.ptr<64> to i64 loc("_142"("seahorn/lib/ring_buffer_helper.c":30:28))
  %v130 = sea.sub %v122, %v129 : i64 loc("_143"("seahorn/lib/ring_buffer_helper.c":30:28))
  %v131 = sea.ptr.cmp ne, %v127, %v116 : !sea.ptr<64> loc("_144"("seahorn/lib/ring_buffer_helper.c":31:3))
  %v132 = sea.ptr.cmp eq, %v127, %v116 : !sea.ptr<64> loc(".not.i.i.i"("seahorn/lib/ring_buffer_helper.c":31:3))
  sea.cond_br %v132, ^bb195, ^bb52 loc("seahorn/lib/ring_buffer_helper.c":31:3)
^bb52:
  sea.br ^bb53
^bb53:
  %v133 = sea.load %v27[%v26] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_147"("seahorn/lib/ring_buffer_helper.c":32:19))
  %v134 = sea.const 0 : i64 loc(".not1.i.i.i"("seahorn/lib/ring_buffer_helper.c":32:12))
  %v135 = sea.icmp eq, %v133, %v134 : i64 loc(".not1.i.i.i"("seahorn/lib/ring_buffer_helper.c":32:12))
  %v136 = sea.const 0 : i1 loc("seahorn/lib/ring_buffer_helper.c":32:28)
  sea.cond_br %v135, ^bb56(%v136 : i1), ^bb54 loc("seahorn/lib/ring_buffer_helper.c":32:28)
^bb54:
  sea.br ^bb55
^bb55:
  %v137 = sea.icmp ule, %v133, %v130 : i64 loc("_150"("seahorn/lib/ring_buffer_helper.c":32:45))
  sea.br ^bb56(%v137 : i1)
^bb56(%v138 : i1):
  sea.assume %v138 loc("seahorn/lib/ring_buffer_helper.c":32:3)
  sea.br ^bb80(%v128 : !sea.mem<!sea.ptr<64>, i8>)
^bb57:
  %v139 = sea.nondet "nd_bool" [23] : i1 loc("_82"("seahorn/lib/ring_buffer_helper.c":41:9))
  sea.cond_br %v139, ^bb69, ^bb58 loc("seahorn/lib/ring_buffer_helper.c":41:9)
^bb58:
  sea.br ^bb59
^bb59:
  %v140 = sea.load %v78[%v77] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_109"("seahorn/lib/ring_buffer_helper.c":46:24))
  %v141 = sea.ptr.cmp ult, %v140, %v116 : !sea.ptr<64> loc("_110"("seahorn/lib/ring_buffer_helper.c":46:35))
  sea.assume %v141 loc("seahorn/lib/ring_buffer_helper.c":46:7)
  sea.br ^bb60
^bb60:
  sea.cond_br %v141, ^bb61, ^bb195 loc("seahorn/lib/ring_buffer_helper.c":25:3)
^bb61:
  %v142 = sea.ptr.to_int %v116 : !sea.ptr<64> to i64 loc("_113"("seahorn/lib/ring_buffer_helper.c":26:21))
  %v143 = sea.ptr.to_int %v140 : !sea.ptr<64> to i64 loc("_114"("seahorn/lib/ring_buffer_helper.c":26:21))
  %v144 = sea.sub %v142, %v143 : i64 loc("_115"("seahorn/lib/ring_buffer_helper.c":26:21))
  %v145 = sea.nondet "nd_size_t" [24] : i64 loc("_116"("seahorn/lib/ring_buffer_helper.c":27:16))
  %v146 = sea.icmp ult, %v145, %v144 : i64 loc("_117"("seahorn/lib/ring_buffer_helper.c":28:14))
  sea.assume %v146 loc("seahorn/lib/ring_buffer_helper.c":28:3)
  sea.br ^bb62
^bb62:
  %v147 = sea.ptr.index %v140 [%v145] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_119"("seahorn/lib/ring_buffer_helper.c":29:20))
  %v148 = sea.store %v115[%v41], %v147 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":29:15)
  sea.br ^bb63
^bb63:
  %v149 = sea.ptr.to_int %v147 : !sea.ptr<64> to i64 loc("_121"("seahorn/lib/ring_buffer_helper.c":30:28))
  %v150 = sea.sub %v142, %v149 : i64 loc("_122"("seahorn/lib/ring_buffer_helper.c":30:28))
  %v151 = sea.ptr.cmp ne, %v147, %v116 : !sea.ptr<64> loc("_123"("seahorn/lib/ring_buffer_helper.c":31:3))
  %v152 = sea.ptr.cmp eq, %v147, %v116 : !sea.ptr<64> loc(".not.i2.i.i"("seahorn/lib/ring_buffer_helper.c":31:3))
  sea.cond_br %v152, ^bb195, ^bb64 loc("seahorn/lib/ring_buffer_helper.c":31:3)
^bb64:
  sea.br ^bb65
^bb65:
  %v153 = sea.load %v27[%v26] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_126"("seahorn/lib/ring_buffer_helper.c":32:19))
  %v154 = sea.const 0 : i64 loc(".not1.i3.i.i"("seahorn/lib/ring_buffer_helper.c":32:12))
  %v155 = sea.icmp eq, %v153, %v154 : i64 loc(".not1.i3.i.i"("seahorn/lib/ring_buffer_helper.c":32:12))
  %v156 = sea.const 0 : i1 loc("seahorn/lib/ring_buffer_helper.c":32:28)
  sea.cond_br %v155, ^bb68(%v156 : i1), ^bb66 loc("seahorn/lib/ring_buffer_helper.c":32:28)
^bb66:
  sea.br ^bb67
^bb67:
  %v157 = sea.icmp ule, %v153, %v150 : i64 loc("_129"("seahorn/lib/ring_buffer_helper.c":32:45))
  sea.br ^bb68(%v157 : i1)
^bb68(%v158 : i1):
  sea.assume %v158 loc("seahorn/lib/ring_buffer_helper.c":32:3)
  sea.br ^bb80(%v148 : !sea.mem<!sea.ptr<64>, i8>)
^bb69:
  sea.br ^bb70
^bb70:
  %v159 = sea.load %v91[%v89] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_85"("seahorn/lib/ring_buffer_helper.c":42:31))
  %v160 = sea.ptr.cmp ult, %v118, %v159 : !sea.ptr<64> loc("_86"("seahorn/lib/ring_buffer_helper.c":42:19))
  sea.assume %v160 loc("seahorn/lib/ring_buffer_helper.c":42:7)
  sea.br ^bb71
^bb71:
  sea.cond_br %v160, ^bb72, ^bb195 loc("seahorn/lib/ring_buffer_helper.c":25:3)
^bb72:
  %v161 = sea.ptr.to_int %v159 : !sea.ptr<64> to i64 loc("_89"("seahorn/lib/ring_buffer_helper.c":26:21))
  %v162 = sea.ptr.to_int %v118 : !sea.ptr<64> to i64 loc("_90"("seahorn/lib/ring_buffer_helper.c":26:21))
  %v163 = sea.sub %v161, %v162 : i64 loc("_91"("seahorn/lib/ring_buffer_helper.c":26:21))
  %v164 = sea.nondet "nd_size_t" [25] : i64 loc("_92"("seahorn/lib/ring_buffer_helper.c":27:16))
  %v165 = sea.icmp ult, %v164, %v163 : i64 loc("_93"("seahorn/lib/ring_buffer_helper.c":28:14))
  sea.assume %v165 loc("seahorn/lib/ring_buffer_helper.c":28:3)
  sea.br ^bb73
^bb73:
  %v166 = sea.ptr.index %v118 [%v164] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_95"("seahorn/lib/ring_buffer_helper.c":29:20))
  %v167 = sea.store %v115[%v41], %v166 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":29:15)
  sea.br ^bb74
^bb74:
  %v168 = sea.ptr.to_int %v166 : !sea.ptr<64> to i64 loc("_97"("seahorn/lib/ring_buffer_helper.c":30:28))
  %v169 = sea.sub %v161, %v168 : i64 loc("_98"("seahorn/lib/ring_buffer_helper.c":30:28))
  %v170 = sea.ptr.cmp ne, %v166, %v159 : !sea.ptr<64> loc("_99"("seahorn/lib/ring_buffer_helper.c":31:3))
  %v171 = sea.ptr.cmp eq, %v166, %v159 : !sea.ptr<64> loc(".not.i6.i.i"("seahorn/lib/ring_buffer_helper.c":31:3))
  sea.cond_br %v171, ^bb195, ^bb75 loc("seahorn/lib/ring_buffer_helper.c":31:3)
^bb75:
  sea.br ^bb76
^bb76:
  %v172 = sea.load %v27[%v26] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_102"("seahorn/lib/ring_buffer_helper.c":32:19))
  %v173 = sea.const 0 : i64 loc(".not1.i7.i.i"("seahorn/lib/ring_buffer_helper.c":32:12))
  %v174 = sea.icmp eq, %v172, %v173 : i64 loc(".not1.i7.i.i"("seahorn/lib/ring_buffer_helper.c":32:12))
  %v175 = sea.const 0 : i1 loc("seahorn/lib/ring_buffer_helper.c":32:28)
  sea.cond_br %v174, ^bb79(%v175 : i1), ^bb77 loc("seahorn/lib/ring_buffer_helper.c":32:28)
^bb77:
  sea.br ^bb78
^bb78:
  %v176 = sea.icmp ule, %v172, %v169 : i64 loc("_105"("seahorn/lib/ring_buffer_helper.c":32:45))
  sea.br ^bb79(%v176 : i1)
^bb79(%v177 : i1):
  sea.assume %v177 loc("seahorn/lib/ring_buffer_helper.c":32:3)
  sea.br ^bb80(%v167 : !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/lib/ring_buffer_helper.c":45:5)
^bb80(%v178 : !sea.mem<!sea.ptr<64>, i8>):
  sea.br ^bb81
^bb81:
  %v179 = sea.load %v85[%v83] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_159"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v180 = sea.load %v85[%v83] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_160"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb82
^bb82:
  %v181 = sea.load %v88[%v86] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_162"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v182 = sea.load %v88[%v86] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_163"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v183 = sea.ptr.null : !sea.ptr<64> loc(".not.i49.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v184 = sea.ptr.cmp eq, %v179, %v183 : !sea.ptr<64> loc(".not.i49.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v185 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v184, ^bb87(%v185 : i1), ^bb83 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb83:
  sea.br ^bb84
^bb84:
  %v186 = sea.load %v78[%v77] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_166"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v187 = sea.ptr.cmp ugt, %v186, %v179 : !sea.ptr<64> loc(".not1.i51.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v188 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v187, ^bb87(%v188 : i1), ^bb85 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb85:
  sea.br ^bb86
^bb86:
  %v189 = sea.load %v91[%v89] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_169"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v190 = sea.ptr.cmp uge, %v189, %v179 : !sea.ptr<64> loc("_170"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb87(%v190 : i1)
^bb87(%v191 : i1):
  %v192 = sea.ptr.null : !sea.ptr<64> loc(".not.i45.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v193 = sea.ptr.cmp eq, %v181, %v192 : !sea.ptr<64> loc(".not.i45.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v194 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v193, ^bb92(%v194 : i1), ^bb88 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb88:
  sea.br ^bb89
^bb89:
  %v195 = sea.load %v78[%v77] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_174"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v196 = sea.ptr.cmp ugt, %v195, %v181 : !sea.ptr<64> loc(".not1.i47.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v197 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v196, ^bb92(%v197 : i1), ^bb90 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb90:
  sea.br ^bb91
^bb91:
  %v198 = sea.load %v91[%v89] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_177"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v199 = sea.ptr.cmp uge, %v198, %v181 : !sea.ptr<64> loc("_178"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb92(%v199 : i1)
^bb92(%v200 : i1):
  sea.br ^bb93
^bb93:
  %v201 = sea.load %v78[%v77] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_181"("aws-c-common/include/aws/common/ring_buffer.inl":39:47))
  %v202 = sea.ptr.cmp eq, %v179, %v201 : !sea.ptr<64> loc(".not.i17.i"("aws-c-common/include/aws/common/ring_buffer.inl":39:34))
  %v203 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
  sea.cond_br %v202, ^bb94, ^bb96(%v203 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb94:
  sea.br ^bb95
^bb95:
  %v204 = sea.ptr.cmp eq, %v181, %v179 : !sea.ptr<64> loc("_184"("aws-c-common/include/aws/common/ring_buffer.inl":39:68))
  sea.br ^bb96(%v204 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb96(%v205 : i1):
  sea.br ^bb97
^bb97:
  %v206 = sea.ptr.null : !sea.ptr<64> loc("_188"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v207 = sea.ptr.cmp ne, %v201, %v206 : !sea.ptr<64> loc("_188"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v208 = sea.const 0 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v209 = sea.select %v207, %v191, %v208 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v210 = sea.const 0 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v211 = sea.select %v209, %v200, %v210 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v212 = sea.const 0 : i1 loc("or.cond5.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v213 = sea.select %v211, %v205, %v212 : i1 loc("or.cond5.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v214 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
  sea.cond_br %v213, ^bb98, ^bb100(%v214 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
^bb98:
  sea.br ^bb99
^bb99:
  %v215 = sea.load %v59[%v7] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_191"("aws-c-common/include/aws/common/ring_buffer.inl":41:23))
  %v216 = sea.ptr.null : !sea.ptr<64> loc("_192"("aws-c-common/include/aws/common/ring_buffer.inl":41:33))
  %v217 = sea.ptr.cmp ne, %v215, %v216 : !sea.ptr<64> loc("_192"("aws-c-common/include/aws/common/ring_buffer.inl":41:33))
  sea.br ^bb100(%v217 : i1)
^bb100(%v218 : i1):
  sea.assume %v218 loc("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":34:3)
  sea.br ^bb101
^bb101:
  %v219 = sea.load %v178[%v26] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_195"("aws-c-common/source/byte_buf.c":60:19))
  %v220 = sea.const 0 : i64 loc("_196"("aws-c-common/source/byte_buf.c":60:28))
  %v221 = sea.icmp eq, %v219, %v220 : i64 loc("_196"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v221, ^bb109, ^bb102 loc("aws-c-common/source/byte_buf.c":60:33)
^bb102:
  sea.br ^bb103
^bb103:
  sea.br ^bb104
^bb104:
  %v222 = sea.load %v178[%v5] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_207"("aws-c-common/source/byte_buf.c":61:40))
  sea.br ^bb105
^bb105:
  %v223 = sea.icmp ugt, %v222, %v219 : i64 loc(".not2.i7.i"("aws-c-common/source/byte_buf.c":61:44))
  %v224 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v223, ^bb114(%v224 : i1), ^bb106 loc("aws-c-common/source/byte_buf.c":61:61)
^bb106:
  sea.br ^bb107
^bb107:
  sea.br ^bb108
^bb108:
  %v225 = sea.load %v178[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_212"("aws-c-common/source/byte_buf.c":61:64))
  %v226 = sea.ptr.null : !sea.ptr<64> loc("_213"("aws-c-common/source/byte_buf.c":61:64))
  %v227 = sea.ptr.cmp ne, %v225, %v226 : !sea.ptr<64> loc("_213"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb114(%v227 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb109:
  sea.br ^bb110
^bb110:
  %v228 = sea.load %v178[%v5] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_199"("aws-c-common/source/byte_buf.c":60:41))
  %v229 = sea.const 0 : i64 loc("_200"("aws-c-common/source/byte_buf.c":60:45))
  %v230 = sea.icmp eq, %v228, %v229 : i64 loc("_200"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v230, ^bb111, ^bb113 loc("aws-c-common/source/byte_buf.c":60:50)
^bb111:
  sea.br ^bb112
^bb112:
  %v231 = sea.load %v178[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_203"("aws-c-common/source/byte_buf.c":60:58))
  %v232 = sea.ptr.null : !sea.ptr<64> loc("_204"("aws-c-common/source/byte_buf.c":60:65))
  %v233 = sea.ptr.cmp eq, %v231, %v232 : !sea.ptr<64> loc("_204"("aws-c-common/source/byte_buf.c":60:65))
  %v234 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v233, ^bb114(%v234 : i1), ^bb113 loc("aws-c-common/source/byte_buf.c":60:74)
^bb113:
  %v235 = sea.const 0 : i1
  sea.br ^bb114(%v235 : i1)
^bb114(%v236 : i1):
  sea.assume %v236 loc("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":35:3)
  sea.tracking_on loc("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":37:3)
  %v237 = sea.mem.reset_modified %v91[%v7] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":38:3)
  %v238 = sea.mem.reset_modified %v178[%v5] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":39:3)
  sea.br ^bb115
^bb115:
  %v239 = sea.load %v238[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_216"("aws-c-common/source/ring_buffer.c":241:17))
  %v240 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("aws-c-common/source/ring_buffer.c":241:12))
  %v241 = sea.ptr.cmp eq, %v239, %v240 : !sea.ptr<64> loc(".not.i.i"("aws-c-common/source/ring_buffer.c":241:12))
  sea.cond_br %v241, ^bb127, ^bb116 loc("aws-c-common/source/ring_buffer.c":241:24)
^bb116:
  sea.br ^bb117
^bb117:
  %v242 = sea.load %v78[%v77] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_219"("aws-c-common/source/ring_buffer.c":241:40))
  %v243 = sea.ptr.null : !sea.ptr<64> loc(".not1.i14.i"("aws-c-common/source/ring_buffer.c":241:27))
  %v244 = sea.ptr.cmp eq, %v242, %v243 : !sea.ptr<64> loc(".not1.i14.i"("aws-c-common/source/ring_buffer.c":241:27))
  sea.cond_br %v244, ^bb127, ^bb118 loc("aws-c-common/source/ring_buffer.c":241:51)
^bb118:
  sea.br ^bb119
^bb119:
  %v245 = sea.load %v91[%v89] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_222"("aws-c-common/source/ring_buffer.c":241:67))
  %v246 = sea.ptr.null : !sea.ptr<64> loc(".not2.i15.i"("aws-c-common/source/ring_buffer.c":241:54))
  %v247 = sea.ptr.cmp eq, %v245, %v246 : !sea.ptr<64> loc(".not2.i15.i"("aws-c-common/source/ring_buffer.c":241:54))
  sea.cond_br %v247, ^bb127, ^bb120 loc("aws-c-common/source/ring_buffer.c":241:82)
^bb120:
  sea.br ^bb121
^bb121:
  sea.br ^bb122
^bb122:
  %v248 = sea.ptr.cmp ult, %v239, %v242 : !sea.ptr<64> loc(".not3.i.i"("aws-c-common/source/ring_buffer.c":242:24))
  sea.cond_br %v248, ^bb127, ^bb123 loc("aws-c-common/source/ring_buffer.c":242:51)
^bb123:
  sea.br ^bb124
^bb124:
  sea.br ^bb125
^bb125:
  %v249 = sea.load %v238[%v26] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_229"("aws-c-common/source/ring_buffer.c":242:73))
  sea.br ^bb126
^bb126:
  %v250 = sea.ptr.index %v239 [%v249] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_231"("aws-c-common/source/ring_buffer.c":242:66))
  %v251 = sea.ptr.cmp ule, %v250, %v245 : !sea.ptr<64> loc("_232"("aws-c-common/source/ring_buffer.c":242:82))
  %v252 = sea.xor %v92, %v251 : i1 loc("_233"("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":44:3))
  %v253 = sea.const 1 : i1 loc("_234"("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":44:3))
  %v254 = sea.xor %v252, %v253 : i1 loc("_234"("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":44:3))
  sea.cond_br %v252, ^bb195, ^bb128 loc("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":44:3)
^bb127:
  %v255 = sea.const 1 : i1 loc("_230"("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":44:3))
  %v256 = sea.xor %v92, %v255 : i1 loc("_230"("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":44:3))
  sea.cond_br %v92, ^bb195, ^bb128 loc("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":44:3)
^bb128:
  sea.br ^bb129
^bb129:
  %v257 = sea.load %v85[%v83] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_237"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v258 = sea.load %v85[%v83] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_238"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb130
^bb130:
  %v259 = sea.load %v88[%v86] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_240"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v260 = sea.load %v88[%v86] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_241"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v261 = sea.ptr.null : !sea.ptr<64> loc(".not.i41.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v262 = sea.ptr.cmp eq, %v257, %v261 : !sea.ptr<64> loc(".not.i41.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v263 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v262, ^bb135(%v263 : i1), ^bb131 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb131:
  sea.br ^bb132
^bb132:
  %v264 = sea.load %v78[%v77] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_244"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v265 = sea.ptr.cmp ugt, %v264, %v257 : !sea.ptr<64> loc(".not1.i43.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v266 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v265, ^bb135(%v266 : i1), ^bb133 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb133:
  sea.br ^bb134
^bb134:
  %v267 = sea.load %v91[%v89] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_247"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v268 = sea.ptr.cmp uge, %v267, %v257 : !sea.ptr<64> loc("_248"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb135(%v268 : i1)
^bb135(%v269 : i1):
  %v270 = sea.ptr.null : !sea.ptr<64> loc(".not.i37.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v271 = sea.ptr.cmp eq, %v259, %v270 : !sea.ptr<64> loc(".not.i37.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v272 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v271, ^bb140(%v272 : i1), ^bb136 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb136:
  sea.br ^bb137
^bb137:
  %v273 = sea.load %v78[%v77] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_252"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v274 = sea.ptr.cmp ugt, %v273, %v259 : !sea.ptr<64> loc(".not1.i39.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v275 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v274, ^bb140(%v275 : i1), ^bb138 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb138:
  sea.br ^bb139
^bb139:
  %v276 = sea.load %v91[%v89] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_255"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v277 = sea.ptr.cmp uge, %v276, %v259 : !sea.ptr<64> loc("_256"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb140(%v277 : i1)
^bb140(%v278 : i1):
  sea.br ^bb141
^bb141:
  %v279 = sea.load %v78[%v77] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_259"("aws-c-common/include/aws/common/ring_buffer.inl":39:47))
  %v280 = sea.ptr.cmp eq, %v257, %v279 : !sea.ptr<64> loc(".not.i19.i"("aws-c-common/include/aws/common/ring_buffer.inl":39:34))
  %v281 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
  sea.cond_br %v280, ^bb142, ^bb144(%v281 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb142:
  sea.br ^bb143
^bb143:
  %v282 = sea.ptr.cmp eq, %v259, %v257 : !sea.ptr<64> loc("_262"("aws-c-common/include/aws/common/ring_buffer.inl":39:68))
  sea.br ^bb144(%v282 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb144(%v283 : i1):
  sea.br ^bb145
^bb145:
  %v284 = sea.ptr.null : !sea.ptr<64> loc("_266"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v285 = sea.ptr.cmp ne, %v279, %v284 : !sea.ptr<64> loc("_266"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v286 = sea.const 0 : i1 loc("or.cond.i20.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v287 = sea.select %v285, %v269, %v286 : i1 loc("or.cond.i20.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v288 = sea.const 0 : i1 loc("or.cond3.i21.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v289 = sea.select %v287, %v278, %v288 : i1 loc("or.cond3.i21.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v290 = sea.const 0 : i1 loc("or.cond5.i22.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v291 = sea.select %v289, %v283, %v290 : i1 loc("or.cond5.i22.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v292 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
  sea.cond_br %v291, ^bb146, ^bb148(%v292 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
^bb146:
  sea.br ^bb147
^bb147:
  %v293 = sea.load %v237[%v7] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_269"("aws-c-common/include/aws/common/ring_buffer.inl":41:23))
  %v294 = sea.ptr.null : !sea.ptr<64> loc("_270"("aws-c-common/include/aws/common/ring_buffer.inl":41:33))
  %v295 = sea.ptr.cmp ne, %v293, %v294 : !sea.ptr<64> loc("_270"("aws-c-common/include/aws/common/ring_buffer.inl":41:33))
  sea.br ^bb148(%v295 : i1)
^bb148(%v296 : i1):
  sea.br ^bb149
^bb149:
  %v297 = sea.load %v85[%v83] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_273"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v298 = sea.load %v85[%v83] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_274"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb150
^bb150:
  %v299 = sea.load %v88[%v86] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_276"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v300 = sea.load %v88[%v86] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_277"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v301 = sea.ptr.null : !sea.ptr<64> loc(".not.i33.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v302 = sea.ptr.cmp eq, %v297, %v301 : !sea.ptr<64> loc(".not.i33.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v303 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v302, ^bb155(%v303 : i1), ^bb151 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb151:
  sea.br ^bb152
^bb152:
  %v304 = sea.load %v78[%v77] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_280"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v305 = sea.ptr.cmp ugt, %v304, %v297 : !sea.ptr<64> loc(".not1.i35.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v306 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v305, ^bb155(%v306 : i1), ^bb153 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb153:
  sea.br ^bb154
^bb154:
  %v307 = sea.load %v91[%v89] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_283"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v308 = sea.ptr.cmp uge, %v307, %v297 : !sea.ptr<64> loc("_284"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb155(%v308 : i1)
^bb155(%v309 : i1):
  %v310 = sea.ptr.null : !sea.ptr<64> loc(".not.i30.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v311 = sea.ptr.cmp eq, %v299, %v310 : !sea.ptr<64> loc(".not.i30.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v312 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v311, ^bb160(%v312 : i1), ^bb156 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb156:
  sea.br ^bb157
^bb157:
  %v313 = sea.load %v78[%v77] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_288"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v314 = sea.ptr.cmp ugt, %v313, %v299 : !sea.ptr<64> loc(".not1.i32.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v315 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v314, ^bb160(%v315 : i1), ^bb158 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb158:
  sea.br ^bb159
^bb159:
  %v316 = sea.load %v91[%v89] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_291"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v317 = sea.ptr.cmp uge, %v316, %v299 : !sea.ptr<64> loc("_292"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb160(%v317 : i1)
^bb160(%v318 : i1):
  sea.br ^bb161
^bb161:
  %v319 = sea.load %v78[%v77] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_295"("aws-c-common/include/aws/common/ring_buffer.inl":39:47))
  %v320 = sea.ptr.cmp eq, %v297, %v319 : !sea.ptr<64> loc(".not.i25.i"("aws-c-common/include/aws/common/ring_buffer.inl":39:34))
  %v321 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
  sea.cond_br %v320, ^bb162, ^bb164(%v321 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb162:
  sea.br ^bb163
^bb163:
  %v322 = sea.ptr.cmp eq, %v299, %v297 : !sea.ptr<64> loc("_298"("aws-c-common/include/aws/common/ring_buffer.inl":39:68))
  sea.br ^bb164(%v322 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb164(%v323 : i1):
  sea.br ^bb165
^bb165:
  %v324 = sea.ptr.null : !sea.ptr<64> loc("_302"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v325 = sea.ptr.cmp ne, %v319, %v324 : !sea.ptr<64> loc("_302"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v326 = sea.const 0 : i1 loc("or.cond.i26.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v327 = sea.select %v325, %v309, %v326 : i1 loc("or.cond.i26.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v328 = sea.const 0 : i1 loc("or.cond3.i27.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v329 = sea.select %v327, %v318, %v328 : i1 loc("or.cond3.i27.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v330 = sea.const 0 : i1 loc("or.cond5.i28.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v331 = sea.select %v329, %v323, %v330 : i1 loc("or.cond5.i28.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  sea.cond_br %v331, ^bb166, ^bb195 loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
^bb166:
  %v332 = sea.load %v237[%v7] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_304")
  %v333 = sea.ptr.null : !sea.ptr<64> loc("_305")
  %v334 = sea.ptr.cmp ne, %v332, %v333 : !sea.ptr<64> loc("_305")
  %v335 = sea.const 1 : i1 loc("or.cond")
  %v336 = sea.const 0 : i1 loc("or.cond")
  %v337 = sea.select %v335, %v334, %v336 : i1 loc("or.cond")
  sea.cond_br %v337, ^bb167, ^bb195
^bb167:
  sea.br ^bb168
^bb168:
  %v338 = sea.load %v238[%v26] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_308"("aws-c-common/source/byte_buf.c":60:19))
  %v339 = sea.const 0 : i64 loc(".not"("aws-c-common/source/byte_buf.c":60:28))
  %v340 = sea.icmp eq, %v338, %v339 : i64 loc(".not"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v340, ^bb176, ^bb169 loc("aws-c-common/source/byte_buf.c":60:33)
^bb169:
  sea.br ^bb170
^bb170:
  sea.br ^bb171
^bb171:
  %v341 = sea.load %v238[%v5] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_319"("aws-c-common/source/byte_buf.c":61:40))
  sea.br ^bb172
^bb172:
  %v342 = sea.icmp ugt, %v341, %v338 : i64 loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":61:44))
  %v343 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v342, ^bb181(%v341, %v343 : i64, i1), ^bb173 loc("aws-c-common/source/byte_buf.c":61:61)
^bb173:
  sea.br ^bb174
^bb174:
  sea.br ^bb175
^bb175:
  %v344 = sea.load %v238[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_324"("aws-c-common/source/byte_buf.c":61:64))
  %v345 = sea.ptr.null : !sea.ptr<64> loc("_325"("aws-c-common/source/byte_buf.c":61:64))
  %v346 = sea.ptr.cmp ne, %v344, %v345 : !sea.ptr<64> loc("_325"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb181(%v341, %v346 : i64, i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb176:
  sea.br ^bb177
^bb177:
  %v347 = sea.load %v238[%v5] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_311"("aws-c-common/source/byte_buf.c":60:41))
  %v348 = sea.const 0 : i64 loc("_312"("aws-c-common/source/byte_buf.c":60:45))
  %v349 = sea.icmp eq, %v347, %v348 : i64 loc("_312"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v349, ^bb178, ^bb180 loc("aws-c-common/source/byte_buf.c":60:50)
^bb178:
  sea.br ^bb179
^bb179:
  %v350 = sea.load %v238[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_315"("aws-c-common/source/byte_buf.c":60:58))
  %v351 = sea.ptr.null : !sea.ptr<64> loc("_316"("aws-c-common/source/byte_buf.c":60:65))
  %v352 = sea.ptr.cmp eq, %v350, %v351 : !sea.ptr<64> loc("_316"("aws-c-common/source/byte_buf.c":60:65))
  %v353 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":60:74)
  %v354 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v352, ^bb181(%v353, %v354 : i64, i1), ^bb180 loc("aws-c-common/source/byte_buf.c":60:74)
^bb180:
  %v355 = sea.const 0 : i1
  sea.br ^bb181(%v347, %v355 : i64, i1)
^bb181(%v356 : i64, %v357 : i1):
  sea.br ^bb182
^bb182:
  sea.cond_br %v340, ^bb188, ^bb183 loc("aws-c-common/source/byte_buf.c":60:33)
^bb183:
  sea.br ^bb184
^bb184:
  sea.br ^bb185
^bb185:
  %v358 = sea.icmp ule, %v356, %v338 : i64 loc(".not2.i.i")
  %v359 = sea.const 1 : i1 loc("or.cond21.not")
  %v360 = sea.const 0 : i1 loc("or.cond21.not")
  %v361 = sea.select %v359, %v358, %v360 : i1 loc("or.cond21.not")
  sea.cond_br %v361, ^bb186, ^bb195
^bb186:
  sea.br ^bb187
^bb187:
  %v362 = sea.load %v238[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_341")
  %v363 = sea.ptr.null : !sea.ptr<64> loc("_342")
  %v364 = sea.ptr.cmp ne, %v362, %v363 : !sea.ptr<64> loc("_342")
  %v365 = sea.const 1 : i1 loc("or.cond18")
  %v366 = sea.const 0 : i1 loc("or.cond18")
  %v367 = sea.select %v365, %v364, %v366 : i1 loc("or.cond18")
  sea.cond_br %v367, ^bb193, ^bb195
^bb188:
  sea.br ^bb189
^bb189:
  %v368 = sea.const 0 : i64 loc("_331"("aws-c-common/source/byte_buf.c":60:45))
  %v369 = sea.icmp eq, %v356, %v368 : i64 loc("_331"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v369, ^bb190, ^bb192 loc("aws-c-common/source/byte_buf.c":60:50)
^bb190:
  sea.br ^bb191
^bb191:
  %v370 = sea.load %v238[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_334"("aws-c-common/source/byte_buf.c":60:58))
  %v371 = sea.ptr.null : !sea.ptr<64> loc("_335"("aws-c-common/source/byte_buf.c":60:65))
  %v372 = sea.ptr.cmp eq, %v370, %v371 : !sea.ptr<64> loc("_335"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v372, ^bb193, ^bb192 loc("aws-c-common/source/byte_buf.c":60:74)
^bb192:
  sea.br ^bb195
^bb193:
  %v373 = sea.mem.is_modified %v237[%v7] : !sea.mem<!sea.ptr<64>, i8> loc("_343"("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":47:3))
  %v374 = sea.const 1 : i1 loc("_344"("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":47:3))
  %v375 = sea.xor %v373, %v374 : i1 loc("_344"("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":47:3))
  %v376 = sea.mem.is_modified %v237[%v7] : !sea.mem<!sea.ptr<64>, i8> loc("_345"("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":47:3))
  sea.cond_br %v376, ^bb195, ^bb194 loc("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":47:3)
^bb194:
  %v377 = sea.mem.is_modified %v238[%v5] : !sea.mem<!sea.ptr<64>, i8> loc("_347"("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":48:3))
  %v378 = sea.const 1 : i1 loc("_348"("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":48:3))
  %v379 = sea.xor %v377, %v378 : i1 loc("_348"("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":48:3))
  %v380 = sea.mem.is_modified %v238[%v5] : !sea.mem<!sea.ptr<64>, i8> loc("_349"("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":48:3))
  sea.assume %v380 loc("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":48:3)
  sea.br ^bb195 loc("seahorn/jobs2/ring_buffer_buf_belongs_to_pool2/aws_ring_buffer_buf_belongs_to_pool_harness2.c":48:3)
^bb195:
  sea.br ^bb196
^bb196:
  %v381 = sea.const 0 : i1
  sea.assert %v381
  sea.halt
}
