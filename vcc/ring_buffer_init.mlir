// Exported from SeaHorn (ring_buffer_init.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
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
  %v17 = sea.nondet "nd_size_t" [4] : i64 loc("_3"("seahorn/jobs/ring_buffer_init/aws_ring_buffer_init_harness.c":15:10))
  %v18 = sea.const 0 : i64 loc("_4"("seahorn/jobs/ring_buffer_init/aws_ring_buffer_init_harness.c":16:15))
  %v19 = sea.icmp ne, %v17, %v18 : i64 loc("_4"("seahorn/jobs/ring_buffer_init/aws_ring_buffer_init_harness.c":16:15))
  sea.assume %v19 loc("seahorn/jobs/ring_buffer_init/aws_ring_buffer_init_harness.c":16:3)
  %v20 = sea.const 0 : i8 loc("aws-c-common/source/ring_buffer.c":38:5)
  %v21 = sea.const 40 : i64 loc("aws-c-common/source/ring_buffer.c":38:5)
  %v22 = sea.memset %v1[%v4], %v20, %v21 inplace align 8 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/source/ring_buffer.c":38:5)
  %v23 = sea.const 0 : i64 loc(".not.i59.i"("seahorn/lib/allocator_override.c":17:3))
  %v24 = sea.icmp eq, %v17, %v23 : i64 loc(".not.i59.i"("seahorn/lib/allocator_override.c":17:3))
  sea.cond_br %v24, ^bb56, ^bb1 loc("seahorn/lib/allocator_override.c":17:3)
^bb1:
  %v25 = sea.nondet "nd_malloc_is_fail" [5] : i1 loc("_6"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v25, ^bb3, ^bb2 loc("seahorn/lib/sea_allocators.c":11:10)
^bb2:
  %v26 = sea.const 1 : i64 loc("malloc.i")
  %v27 = sea.mul %v17, %v26 : i64 loc("malloc.i")
  %v28 = sea.alloca %v27 align 16 [6] : i64 -> !sea.ptr<64> loc("malloc.i")
  %v29 = sea.memhavoc %v2[%v28], %v17 [7] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb4(%v28 : !sea.ptr<64>) loc("seahorn/lib/allocator_override.c":19:7)
^bb3:
  %v30 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/allocator_override.c":21:3)
  sea.br ^bb4(%v30 : !sea.ptr<64>) loc("seahorn/lib/allocator_override.c":21:3)
^bb4(%v31 : !sea.ptr<64>):
  %v32 = sea.ptr.index %v4 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_9"("aws-c-common/source/ring_buffer.c":40:15))
  sea.br ^bb5
^bb5:
  %v33 = sea.store %v22[%v32], %v31 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":40:26)
  sea.br ^bb6
^bb6:
  %v34 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("aws-c-common/source/ring_buffer.c":42:10))
  %v35 = sea.ptr.cmp ne, %v31, %v34 : !sea.ptr<64> loc(".not.i.i"("aws-c-common/source/ring_buffer.c":42:10))
  sea.cond_br %v35, ^bb7, ^bb15(%v33 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/ring_buffer.c":42:9)
^bb7:
  sea.br ^bb8
^bb8:
  %v36 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":46:25)
  %v37 = sea.store %v33[%v4], %v36 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":46:25)
  sea.br ^bb9
^bb9:
  %v38 = sea.ptr.index %v4 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_15"("aws-c-common/source/ring_buffer.c":47:36))
  sea.br ^bb10
^bb10:
  %v39 = sea.store %v37[%v38], %v31 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/atomics_gnu.inl":60:32)
  sea.br ^bb11
^bb11:
  %v40 = sea.ptr.index %v4 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_17"("aws-c-common/source/ring_buffer.c":48:36))
  sea.br ^bb12
^bb12:
  %v41 = sea.store %v39[%v40], %v31 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/atomics_gnu.inl":60:32)
  sea.br ^bb13
^bb13:
  %v42 = sea.ptr.index %v4 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_19"("aws-c-common/source/ring_buffer.c":49:15))
  sea.br ^bb14
^bb14:
  %v43 = sea.ptr.index %v31 [%v17] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_21"("aws-c-common/source/ring_buffer.c":49:53))
  %v44 = sea.store %v41[%v42], %v43 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/ring_buffer.c":49:30)
  sea.br ^bb15(%v44 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/ring_buffer.c":52:5)
^bb15(%v45 : !sea.mem<!sea.ptr<64>, i8>):
  sea.assume %v35 loc("seahorn/jobs/ring_buffer_init/aws_ring_buffer_init_harness.c":19:7)
  %v46 = sea.ptr.index %v4 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_22"("aws-c-common/include/aws/common/ring_buffer.inl":34:63))
  sea.br ^bb16
^bb16:
  %v47 = sea.load %v45[%v46] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_24"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v48 = sea.load %v45[%v46] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_25"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v49 = sea.ptr.index %v4 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_26"("aws-c-common/include/aws/common/ring_buffer.inl":35:63))
  sea.br ^bb17
^bb17:
  %v50 = sea.load %v45[%v49] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_28"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v51 = sea.load %v45[%v49] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_29"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v52 = sea.ptr.null : !sea.ptr<64> loc(".not.i22.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v53 = sea.ptr.cmp eq, %v47, %v52 : !sea.ptr<64> loc(".not.i22.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v54 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v53, ^bb22(%v54 : i1), ^bb18 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb18:
  sea.br ^bb19
^bb19:
  %v55 = sea.load %v45[%v32] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_32"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v56 = sea.ptr.cmp ugt, %v55, %v47 : !sea.ptr<64> loc(".not1.i24.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v57 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v56, ^bb22(%v57 : i1), ^bb20 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb20:
  %v58 = sea.ptr.index %v4 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_34"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  sea.br ^bb21
^bb21:
  %v59 = sea.load %v45[%v58] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_36"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v60 = sea.ptr.cmp uge, %v59, %v47 : !sea.ptr<64> loc("_37"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb22(%v60 : i1)
^bb22(%v61 : i1):
  %v62 = sea.ptr.null : !sea.ptr<64> loc(".not.i18.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v63 = sea.ptr.cmp eq, %v50, %v62 : !sea.ptr<64> loc(".not.i18.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v64 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v63, ^bb27(%v64 : i1), ^bb23 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb23:
  sea.br ^bb24
^bb24:
  %v65 = sea.load %v45[%v32] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_41"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v66 = sea.ptr.cmp ugt, %v65, %v50 : !sea.ptr<64> loc(".not1.i20.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v67 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v66, ^bb27(%v67 : i1), ^bb25 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb25:
  %v68 = sea.ptr.index %v4 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_43"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  sea.br ^bb26
^bb26:
  %v69 = sea.load %v45[%v68] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_45"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v70 = sea.ptr.cmp uge, %v69, %v50 : !sea.ptr<64> loc("_46"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb27(%v70 : i1)
^bb27(%v71 : i1):
  sea.br ^bb28
^bb28:
  %v72 = sea.load %v45[%v32] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_49"("aws-c-common/include/aws/common/ring_buffer.inl":39:47))
  %v73 = sea.ptr.cmp eq, %v47, %v72 : !sea.ptr<64> loc(".not.i5.i"("aws-c-common/include/aws/common/ring_buffer.inl":39:34))
  %v74 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
  sea.cond_br %v73, ^bb29, ^bb31(%v74 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb29:
  sea.br ^bb30
^bb30:
  %v75 = sea.ptr.cmp eq, %v50, %v47 : !sea.ptr<64> loc("_52"("aws-c-common/include/aws/common/ring_buffer.inl":39:68))
  sea.br ^bb31(%v75 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb31(%v76 : i1):
  sea.br ^bb32
^bb32:
  %v77 = sea.ptr.null : !sea.ptr<64> loc("_56"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v78 = sea.ptr.cmp ne, %v72, %v77 : !sea.ptr<64> loc("_56"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v79 = sea.const 0 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v80 = sea.select %v78, %v61, %v79 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v81 = sea.const 0 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v82 = sea.select %v80, %v71, %v81 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v83 = sea.const 0 : i1 loc("or.cond5.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v84 = sea.select %v82, %v76, %v83 : i1 loc("or.cond5.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v85 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
  sea.cond_br %v84, ^bb33, ^bb35(%v85 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
^bb33:
  sea.br ^bb34
^bb34:
  %v86 = sea.load %v45[%v4] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_59"("aws-c-common/include/aws/common/ring_buffer.inl":41:23))
  %v87 = sea.ptr.null : !sea.ptr<64> loc("_60"("aws-c-common/include/aws/common/ring_buffer.inl":41:33))
  %v88 = sea.ptr.cmp ne, %v86, %v87 : !sea.ptr<64> loc("_60"("aws-c-common/include/aws/common/ring_buffer.inl":41:33))
  sea.br ^bb35(%v88 : i1)
^bb35(%v89 : i1):
  sea.br ^bb36
^bb36:
  %v90 = sea.load %v45[%v46] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_63"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v91 = sea.load %v45[%v46] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_64"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  sea.br ^bb37
^bb37:
  %v92 = sea.load %v45[%v49] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_66"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v93 = sea.load %v45[%v49] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_67"("aws-c-common/include/aws/common/atomics_gnu.inl":76:12))
  %v94 = sea.ptr.null : !sea.ptr<64> loc(".not.i14.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v95 = sea.ptr.cmp eq, %v90, %v94 : !sea.ptr<64> loc(".not.i14.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v96 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v95, ^bb42(%v96 : i1), ^bb38 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb38:
  sea.br ^bb39
^bb39:
  %v97 = sea.load %v45[%v32] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_70"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v98 = sea.ptr.cmp ugt, %v97, %v90 : !sea.ptr<64> loc(".not1.i16.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v99 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v98, ^bb42(%v99 : i1), ^bb40 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb40:
  %v100 = sea.ptr.index %v4 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_72"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  sea.br ^bb41
^bb41:
  %v101 = sea.load %v45[%v100] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_74"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v102 = sea.ptr.cmp uge, %v101, %v90 : !sea.ptr<64> loc("_75"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb42(%v102 : i1)
^bb42(%v103 : i1):
  %v104 = sea.ptr.null : !sea.ptr<64> loc(".not.i12.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v105 = sea.ptr.cmp eq, %v92, %v104 : !sea.ptr<64> loc(".not.i12.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:25))
  %v106 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
  sea.cond_br %v105, ^bb47(%v106 : i1), ^bb43 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:34)
^bb43:
  sea.br ^bb44
^bb44:
  %v107 = sea.load %v45[%v32] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_79"("aws-c-common/include/aws/common/ring_buffer.inl":17:62))
  %v108 = sea.ptr.cmp ugt, %v107, %v92 : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/ring_buffer.inl":17:49))
  %v109 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
  sea.cond_br %v108, ^bb47(%v109 : i1), ^bb45 loc("aws-c-common/include/aws/common/ring_buffer.inl":17:73)
^bb45:
  %v110 = sea.ptr.index %v4 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_81"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  sea.br ^bb46
^bb46:
  %v111 = sea.load %v45[%v110] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_83"("aws-c-common/include/aws/common/ring_buffer.inl":17:100))
  %v112 = sea.ptr.cmp uge, %v111, %v92 : !sea.ptr<64> loc("_84"("aws-c-common/include/aws/common/ring_buffer.inl":17:87))
  sea.br ^bb47(%v112 : i1)
^bb47(%v113 : i1):
  sea.br ^bb48
^bb48:
  %v114 = sea.load %v45[%v32] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_87"("aws-c-common/include/aws/common/ring_buffer.inl":39:47))
  %v115 = sea.ptr.cmp eq, %v90, %v114 : !sea.ptr<64> loc(".not.i7.i"("aws-c-common/include/aws/common/ring_buffer.inl":39:34))
  %v116 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
  sea.cond_br %v115, ^bb49, ^bb51(%v116 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb49:
  sea.br ^bb50
^bb50:
  %v117 = sea.ptr.cmp eq, %v92, %v90 : !sea.ptr<64> loc("_90"("aws-c-common/include/aws/common/ring_buffer.inl":39:68))
  sea.br ^bb51(%v117 : i1) loc("aws-c-common/include/aws/common/ring_buffer.inl":39:59)
^bb51(%v118 : i1):
  sea.br ^bb52
^bb52:
  %v119 = sea.ptr.null : !sea.ptr<64> loc("_94"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v120 = sea.ptr.cmp ne, %v114, %v119 : !sea.ptr<64> loc("_94"("aws-c-common/include/aws/common/ring_buffer.inl":40:46))
  %v121 = sea.const 0 : i1 loc("or.cond.i8.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v122 = sea.select %v120, %v103, %v121 : i1 loc("or.cond.i8.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v123 = sea.const 0 : i1 loc("or.cond3.i9.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v124 = sea.select %v122, %v113, %v123 : i1 loc("or.cond3.i9.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v125 = sea.const 0 : i1 loc("or.cond5.i10.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  %v126 = sea.select %v124, %v118, %v125 : i1 loc("or.cond5.i10.i"("aws-c-common/include/aws/common/ring_buffer.inl":40:55))
  sea.cond_br %v126, ^bb53, ^bb56 loc("aws-c-common/include/aws/common/ring_buffer.inl":40:55)
^bb53:
  %v127 = sea.load %v45[%v4] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_96")
  %v128 = sea.ptr.null : !sea.ptr<64> loc("_97")
  %v129 = sea.ptr.cmp ne, %v127, %v128 : !sea.ptr<64> loc("_97")
  %v130 = sea.const 1 : i1 loc("or.cond")
  %v131 = sea.const 0 : i1 loc("or.cond")
  %v132 = sea.select %v130, %v129, %v131 : i1 loc("or.cond")
  sea.cond_br %v132, ^bb54, ^bb56
^bb54:
  %v133 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_99"("seahorn/jobs/ring_buffer_init/aws_ring_buffer_init_harness.c":22:5))
  %v134 = sea.ptr.cmp eq, %v127, %v133 : !sea.ptr<64> loc("_99"("seahorn/jobs/ring_buffer_init/aws_ring_buffer_init_harness.c":22:5))
  sea.cond_br %v134, ^bb55, ^bb56 loc("seahorn/jobs/ring_buffer_init/aws_ring_buffer_init_harness.c":22:5)
^bb55:
  %v135 = sea.ptr.index %v4 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_101"("seahorn/jobs/ring_buffer_init/aws_ring_buffer_init_harness.c":23:5))
  %v136 = sea.load %v45[%v135] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_102"("seahorn/jobs/ring_buffer_init/aws_ring_buffer_init_harness.c":23:5))
  %v137 = sea.ptr.to_int %v136 : !sea.ptr<64> to i64 loc("_103"("seahorn/jobs/ring_buffer_init/aws_ring_buffer_init_harness.c":23:5))
  %v138 = sea.ptr.to_int %v114 : !sea.ptr<64> to i64 loc("_104"("seahorn/jobs/ring_buffer_init/aws_ring_buffer_init_harness.c":23:5))
  %v139 = sea.sub %v137, %v138 : i64 loc("_105"("seahorn/jobs/ring_buffer_init/aws_ring_buffer_init_harness.c":23:5))
  %v140 = sea.icmp eq, %v139, %v17 : i64 loc("_106"("seahorn/jobs/ring_buffer_init/aws_ring_buffer_init_harness.c":23:5))
  %v141 = sea.const 1 : i1 loc("seahorn/jobs/ring_buffer_init/aws_ring_buffer_init_harness.c":23:5)
  %v142 = sea.xor %v140, %v141 : i1 loc("seahorn/jobs/ring_buffer_init/aws_ring_buffer_init_harness.c":23:5)
  sea.assume %v142 loc("seahorn/jobs/ring_buffer_init/aws_ring_buffer_init_harness.c":23:5)
  sea.br ^bb56 loc("seahorn/jobs/ring_buffer_init/aws_ring_buffer_init_harness.c":23:5)
^bb56:
  sea.br ^bb57
^bb57:
  %v143 = sea.const 0 : i1
  sea.assert %v143
  sea.halt
}
