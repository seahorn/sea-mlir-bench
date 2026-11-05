// Exported from SeaHorn (ring_buffer_clean_up.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm12")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm13")
  %v2 = sea.mem.nondet "region.56" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm14")
  %v3 = sea.const 40 : i64 loc("_0")
  %v4 = sea.alloca %v3 align 8 [3] : i64 -> !sea.ptr<64> loc("_0")
  %v5 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v6 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v7 = sea.store %v0[%v5], %v6 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v8 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_1")
  %v9 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_1")
  %v10 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v11 = sea.store %v7[%v9], %v10 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v12 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_2")
  %v13 = sea.ptr.index %v12 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_2")
  %v14 = sea.const 0 : i8
  %v15 = sea.const 24 : i64
  %v16 = sea.memset %v11[%v13], %v14, %v15 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v17 = sea.nondet "nd_size_t" [4] : i64 loc("_3"("seahorn/jobs/ring_buffer_clean_up/aws_ring_buffer_clean_up_harness.c":16:26))
  sea.br ^bb1
^bb1:
  %v18 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":10:23)
  %v19 = sea.store %v1[%v4], %v18 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":10:23)
  %v20 = sea.const 0 : i64 loc("_5"("seahorn/lib/ring_buffer_helper.c":12:12))
  %v21 = sea.icmp ne, %v17, %v20 : i64 loc("_5"("seahorn/lib/ring_buffer_helper.c":12:12))
  sea.assume %v21 loc("seahorn/lib/ring_buffer_helper.c":12:3)
  %v22 = sea.const 0 : i64 loc("_6"("seahorn/lib/proof_allocators.c":17:15))
  %v23 = sea.icmp eq, %v17, %v22 : i64 loc("_6"("seahorn/lib/proof_allocators.c":17:15))
  %v24 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v23, ^bb5(%v24 : !sea.ptr<64>), ^bb2 loc("seahorn/lib/proof_allocators.c":17:10)
^bb2:
  %v25 = sea.nondet "nd_malloc_is_fail" [5] : i1 loc("_8"("seahorn/lib/sea_allocators.c":11:10))
  %v26 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v25, ^bb4(%v2, %v26 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/sea_allocators.c":11:10)
^bb3:
  %v27 = sea.const 1 : i64 loc("malloc.i")
  %v28 = sea.mul %v17, %v27 : i64 loc("malloc.i")
  %v29 = sea.alloca %v28 align 16 [6] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb4(%v2, %v29 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb4(%v30 : !sea.mem<!sea.ptr<64>, i8>, %v31 : !sea.ptr<64>):
  %v32 = sea.memhavoc %v30[%v31], %v17 [7] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v33 = sea.ptr.null : !sea.ptr<64> loc("_11"("seahorn/lib/sea_allocators.c":45:10))
  %v34 = sea.ptr.cmp ne, %v31, %v33 : !sea.ptr<64> loc("_11"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v34 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb5(%v31 : !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb5(%v35 : !sea.ptr<64>):
  %v36 = sea.ptr.index %v4 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_13"("seahorn/lib/ring_buffer_helper.c":13:13))
  sea.br ^bb6
^bb6:
  %v37 = sea.store %v19[%v36], %v35 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":13:24)
  %v38 = sea.nondet "nd_size_t" [8] : i64 loc("_15"("seahorn/lib/ring_buffer_helper.c":14:26))
  %v39 = sea.nondet "nd_size_t" [9] : i64 loc("_16"("seahorn/lib/ring_buffer_helper.c":15:26))
  %v40 = sea.icmp ult, %v38, %v17 : i64 loc("_17"("seahorn/lib/ring_buffer_helper.c":16:24))
  sea.assume %v40 loc("seahorn/lib/ring_buffer_helper.c":16:3)
  %v41 = sea.icmp ult, %v39, %v17 : i64 loc("_18"("seahorn/lib/ring_buffer_helper.c":17:24))
  sea.assume %v41 loc("seahorn/lib/ring_buffer_helper.c":17:3)
  sea.br ^bb7
^bb7:
  %v42 = sea.ptr.index %v4 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_20"("seahorn/lib/ring_buffer_helper.c":18:35))
  sea.br ^bb8
^bb8:
  %v43 = sea.ptr.index %v35 [%v38] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_22"("seahorn/lib/ring_buffer_helper.c":18:63))
  %v44 = sea.store %v37[%v42], %v43 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/atomics_gnu.inl":92:5)
  sea.br ^bb9
^bb9:
  %v45 = sea.ptr.index %v4 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_24"("seahorn/lib/ring_buffer_helper.c":19:35))
  sea.br ^bb10
^bb10:
  %v46 = sea.ptr.index %v35 [%v39] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_26"("seahorn/lib/ring_buffer_helper.c":19:63))
  %v47 = sea.store %v44[%v45], %v46 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/atomics_gnu.inl":92:5)
  sea.br ^bb11
^bb11:
  %v48 = sea.ptr.index %v4 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_28"("seahorn/lib/ring_buffer_helper.c":20:13))
  sea.br ^bb12
^bb12:
  %v49 = sea.ptr.index %v35 [%v17] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_29"("seahorn/lib/ring_buffer_helper.c":20:51))
  %v50 = sea.store %v47[%v48], %v49 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/ring_buffer_helper.c":20:28)
  sea.br ^bb13
^bb13:
  %v51 = sea.load %v44[%v42] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_31"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v52 = sea.load %v44[%v42] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_32"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb14
^bb14:
  %v53 = sea.load %v47[%v45] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_34"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v54 = sea.load %v47[%v45] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_35"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v55 = sea.ptr.null : !sea.ptr<64> loc(".not.i57.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v56 = sea.ptr.cmp eq, %v51, %v55 : !sea.ptr<64> loc(".not.i57.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v57 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v56, ^bb19(%v57 : i1), ^bb15 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb15:
  sea.br ^bb16
^bb16:
  %v58 = sea.load %v37[%v36] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_38"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v59 = sea.ptr.cmp ugt, %v58, %v51 : !sea.ptr<64> loc(".not1.i59.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v60 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v59, ^bb19(%v60 : i1), ^bb17 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb17:
  sea.br ^bb18
^bb18:
  %v61 = sea.load %v50[%v48] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_41"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v62 = sea.ptr.cmp uge, %v61, %v51 : !sea.ptr<64> loc("_42"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb19(%v62 : i1)
^bb19(%v63 : i1):
  %v64 = sea.ptr.null : !sea.ptr<64> loc(".not.i55.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v65 = sea.ptr.cmp eq, %v53, %v64 : !sea.ptr<64> loc(".not.i55.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v66 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v65, ^bb24(%v66 : i1), ^bb20 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb20:
  sea.br ^bb21
^bb21:
  %v67 = sea.load %v37[%v36] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_46"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v68 = sea.ptr.cmp ugt, %v67, %v53 : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v69 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v68, ^bb24(%v69 : i1), ^bb22 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb22:
  sea.br ^bb23
^bb23:
  %v70 = sea.load %v50[%v48] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_49"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v71 = sea.ptr.cmp uge, %v70, %v53 : !sea.ptr<64> loc("_50"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb24(%v71 : i1)
^bb24(%v72 : i1):
  sea.br ^bb25
^bb25:
  %v73 = sea.load %v37[%v36] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_53"("aws-c-common/include/aws/common/ring_buffer.inl":39:47))
  %v74 = sea.ptr.cmp eq, %v51, %v73 : !sea.ptr<64> loc(".not.i2.i"("aws-c-common/include/aws/common/ring_buffer.inl":39:34))
  %v75 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
  sea.cond_br %v74, ^bb26, ^bb28(%v75 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb26:
  sea.br ^bb27
^bb27:
  %v76 = sea.ptr.cmp eq, %v53, %v51 : !sea.ptr<64> loc("_56"("aws-c-common/include/aws/common/ring_buffer.inl":39:68))
  sea.br ^bb28(%v76 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb28(%v77 : i1):
  sea.br ^bb29
^bb29:
  %v78 = sea.ptr.null : !sea.ptr<64> loc("_60"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v79 = sea.ptr.cmp ne, %v73, %v78 : !sea.ptr<64> loc("_60"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v80 = sea.const 0 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v81 = sea.select %v79, %v63, %v80 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v82 = sea.const 0 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v83 = sea.select %v81, %v72, %v82 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v84 = sea.const 0 : i1 loc("or.cond5.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v85 = sea.select %v83, %v77, %v84 : i1 loc("or.cond5.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v86 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
  sea.cond_br %v85, ^bb30, ^bb32(%v86 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
^bb30:
  sea.br ^bb31
^bb31:
  %v87 = sea.load %v19[%v4] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_63"("aws-c-common/include/aws/common/ring_buffer.inl":41:23))
  %v88 = sea.ptr.null : !sea.ptr<64> loc("_64"("aws-c-common/include/aws/common/ring_buffer.inl":41:33))
  %v89 = sea.ptr.cmp ne, %v87, %v88 : !sea.ptr<64> loc("_64"("aws-c-common/include/aws/common/ring_buffer.inl":41:33))
  sea.br ^bb32(%v89 : i1)
^bb32(%v90 : i1):
  sea.assume %v90 loc("seahorn/jobs/ring_buffer_clean_up/aws_ring_buffer_clean_up_harness.c":21:3)
  sea.br ^bb33
^bb33:
  %v91 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("aws-c-common/source/ring_buffer.c":57:9))
  %v92 = sea.ptr.cmp eq, %v73, %v91 : !sea.ptr<64> loc(".not.i.i"("aws-c-common/source/ring_buffer.c":57:9))
  sea.cond_br %v92, ^bb37, ^bb34 loc("aws-c-common/source/ring_buffer.c":57:9)
^bb34:
  sea.br ^bb35
^bb35:
  sea.br ^bb36
^bb36:
  sea.br ^bb37 loc("aws-c-common/source/ring_buffer.c":59:5)
^bb37:
  %v93 = sea.const 0 : i8 loc("aws-c-common/source/ring_buffer.c":61:5)
  %v94 = sea.const 40 : i64 loc("aws-c-common/source/ring_buffer.c":61:5)
  %v95 = sea.memset %v50[%v4], %v93, %v94 inplace align 8 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/source/ring_buffer.c":61:5)
  sea.br ^bb38
^bb38:
  %v96 = sea.load %v95[%v42] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_71"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v97 = sea.load %v95[%v42] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_72"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v98 = sea.ptr.null : !sea.ptr<64> loc("_73"("seahorn/jobs/ring_buffer_clean_up/aws_ring_buffer_clean_up_harness.c":29:3))
  %v99 = sea.ptr.cmp eq, %v96, %v98 : !sea.ptr<64> loc("_73"("seahorn/jobs/ring_buffer_clean_up/aws_ring_buffer_clean_up_harness.c":29:3))
  sea.br ^bb39
^bb39:
  %v100 = sea.load %v95[%v42] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_75"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v101 = sea.load %v95[%v42] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_76"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v102 = sea.ptr.null : !sea.ptr<64> loc("_77"("seahorn/jobs/ring_buffer_clean_up/aws_ring_buffer_clean_up_harness.c":29:3))
  %v103 = sea.ptr.cmp eq, %v100, %v102 : !sea.ptr<64> loc("_77"("seahorn/jobs/ring_buffer_clean_up/aws_ring_buffer_clean_up_harness.c":29:3))
  sea.cond_br %v103, ^bb40, ^bb44 loc("seahorn/jobs/ring_buffer_clean_up/aws_ring_buffer_clean_up_harness.c":29:3)
^bb40:
  sea.br ^bb41
^bb41:
  %v104 = sea.load %v95[%v45] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_80"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v105 = sea.load %v95[%v45] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_81"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v106 = sea.ptr.null : !sea.ptr<64> loc("_82"("seahorn/jobs/ring_buffer_clean_up/aws_ring_buffer_clean_up_harness.c":30:3))
  %v107 = sea.ptr.cmp eq, %v104, %v106 : !sea.ptr<64> loc("_82"("seahorn/jobs/ring_buffer_clean_up/aws_ring_buffer_clean_up_harness.c":30:3))
  sea.br ^bb42
^bb42:
  %v108 = sea.load %v95[%v45] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_84"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v109 = sea.load %v95[%v45] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_85"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v110 = sea.ptr.null : !sea.ptr<64> loc("_86"("seahorn/jobs/ring_buffer_clean_up/aws_ring_buffer_clean_up_harness.c":30:3))
  %v111 = sea.ptr.cmp eq, %v108, %v110 : !sea.ptr<64> loc("_86"("seahorn/jobs/ring_buffer_clean_up/aws_ring_buffer_clean_up_harness.c":30:3))
  sea.cond_br %v111, ^bb43, ^bb44 loc("seahorn/jobs/ring_buffer_clean_up/aws_ring_buffer_clean_up_harness.c":30:3)
^bb43:
  %v112 = sea.load %v95[%v48] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_88"("seahorn/jobs/ring_buffer_clean_up/aws_ring_buffer_clean_up_harness.c":31:3))
  %v113 = sea.ptr.null : !sea.ptr<64> loc("_89"("seahorn/jobs/ring_buffer_clean_up/aws_ring_buffer_clean_up_harness.c":31:3))
  %v114 = sea.ptr.cmp eq, %v112, %v113 : !sea.ptr<64> loc("_89"("seahorn/jobs/ring_buffer_clean_up/aws_ring_buffer_clean_up_harness.c":31:3))
  %v115 = sea.const 1 : i1 loc("seahorn/jobs/ring_buffer_clean_up/aws_ring_buffer_clean_up_harness.c":31:3)
  %v116 = sea.xor %v114, %v115 : i1 loc("seahorn/jobs/ring_buffer_clean_up/aws_ring_buffer_clean_up_harness.c":31:3)
  sea.assume %v116 loc("seahorn/jobs/ring_buffer_clean_up/aws_ring_buffer_clean_up_harness.c":31:3)
  sea.br ^bb44 loc("seahorn/jobs/ring_buffer_clean_up/aws_ring_buffer_clean_up_harness.c":31:3)
^bb44:
  sea.br ^bb45
^bb45:
  %v117 = sea.const 0 : i1
  sea.assert %v117
  sea.halt
}
