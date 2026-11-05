// Exported from SeaHorn (mem_realloc_unsafe.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm16")
  %v1 = sea.mem.nondet "region.24" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm17")
  %v2 = sea.mem.nondet "region.32" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm18")
  %v3 = sea.mem.nondet "region.40" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm19")
  %v4 = sea.mem.nondet "region.41" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm20")
  %v5 = sea.const 8 : i64 loc("_0")
  %v6 = sea.alloca %v5 align 8 [5] : i64 -> !sea.ptr<64> loc("_0")
  %v7 = sea.const 8 : i64 loc("_1")
  %v8 = sea.alloca %v7 align 8 [6] : i64 -> !sea.ptr<64> loc("_1")
  %v9 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v10 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v11 = sea.store %v0[%v9], %v10 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v12 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_2")
  %v13 = sea.ptr.index %v12 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_2")
  %v14 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v15 = sea.store %v11[%v13], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v16 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_3")
  %v17 = sea.ptr.index %v16 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_3")
  %v18 = sea.const 0 : i8
  %v19 = sea.const 24 : i64
  %v20 = sea.memset %v15[%v17], %v18, %v19 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v21 = sea.global @"s_allocator_with_realloc_static" size 40 align 8 : !sea.ptr<64>
  %v22 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v23 = sea.store %v20[%v21], %v22 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v24 = sea.global @"s_allocator_with_realloc_static" size 40 align 8 : !sea.ptr<64> loc("_4")
  %v25 = sea.ptr.index %v24 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_4")
  %v26 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v27 = sea.store %v23[%v25], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v28 = sea.global @"s_allocator_with_realloc_static" size 40 align 8 : !sea.ptr<64> loc("_5")
  %v29 = sea.ptr.index %v28 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_5")
  %v30 = sea.func_addr @"s_realloc_allocator.addr" : !sea.ptr<64>
  %v31 = sea.store %v27[%v29], %v30 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v32 = sea.global @"s_allocator_with_realloc_static" size 40 align 8 : !sea.ptr<64> loc("_6")
  %v33 = sea.ptr.index %v32 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_6")
  %v34 = sea.const 0 : i8
  %v35 = sea.const 16 : i64
  %v36 = sea.memset %v31[%v33], %v34, %v35 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v37 = sea.nondet "nd_bool" [7] : i1 loc("_7"("seahorn/jobs_unsafe/mem_realloc_unsafe/aws_mem_realloc_unsafe_harness.c":12:39))
  %v38 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("s_allocator_static.s_allocator_with_realloc_static"("seahorn/jobs_unsafe/mem_realloc_unsafe/aws_mem_realloc_unsafe_harness.c":12:39))
  %v39 = sea.global @"s_allocator_with_realloc_static" size 40 align 8 : !sea.ptr<64> loc("s_allocator_static.s_allocator_with_realloc_static"("seahorn/jobs_unsafe/mem_realloc_unsafe/aws_mem_realloc_unsafe_harness.c":12:39))
  %v40 = sea.select %v37, %v38, %v39 : !sea.ptr<64> loc("s_allocator_static.s_allocator_with_realloc_static"("seahorn/jobs_unsafe/mem_realloc_unsafe/aws_mem_realloc_unsafe_harness.c":12:39))
  %v41 = sea.nondet "nd_size_t" [8] : i64 loc("_8"("seahorn/jobs_unsafe/mem_realloc_unsafe/aws_mem_realloc_unsafe_harness.c":16:23))
  %v42 = sea.nondet "nd_size_t" [9] : i64 loc("_9"("seahorn/jobs_unsafe/mem_realloc_unsafe/aws_mem_realloc_unsafe_harness.c":18:23))
  %v43 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_10")
  %v44 = sea.ptr.index %v43 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_10")
  %v45 = sea.global @"s_allocator_with_realloc_static" size 40 align 8 : !sea.ptr<64> loc("_11")
  %v46 = sea.ptr.index %v45 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_11")
  %v47 = sea.select %v37, %v44, %v46 : !sea.ptr<64> loc("_12"("aws-c-common/source/allocator.c":219:5))
  sea.br ^bb1
^bb1:
  %v48 = sea.load %v31[%v47] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_14"("aws-c-common/source/allocator.c":219:5))
  %v49 = sea.ptr.null : !sea.ptr<64> loc(".not4.i.i"("aws-c-common/source/allocator.c":219:5))
  %v50 = sea.ptr.cmp eq, %v48, %v49 : !sea.ptr<64> loc(".not4.i.i"("aws-c-common/source/allocator.c":219:5))
  sea.cond_br %v50, ^bb2, ^bb4 loc("aws-c-common/source/allocator.c":219:5)
^bb2:
  sea.br ^bb3
^bb3:
  %v51 = sea.load %v23[%v40] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_17"("aws-c-common/source/allocator.c":219:5))
  %v52 = sea.ptr.null : !sea.ptr<64> loc(".not5.i.i"("aws-c-common/source/allocator.c":219:5))
  %v53 = sea.ptr.cmp eq, %v51, %v52 : !sea.ptr<64> loc(".not5.i.i"("aws-c-common/source/allocator.c":219:5))
  %v54 = sea.const 1 : i1 loc("aws-c-common/source/allocator.c":219:5)
  %v55 = sea.xor %v53, %v54 : i1 loc("aws-c-common/source/allocator.c":219:5)
  sea.assume %v55 loc("aws-c-common/source/allocator.c":219:5)
  sea.br ^bb4 loc("aws-c-common/source/allocator.c":219:5)
^bb4:
  %v56 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_19")
  %v57 = sea.ptr.index %v56 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_19")
  %v58 = sea.global @"s_allocator_with_realloc_static" size 40 align 8 : !sea.ptr<64> loc("_20")
  %v59 = sea.ptr.index %v58 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_20")
  %v60 = sea.select %v37, %v57, %v59 : !sea.ptr<64> loc("_21"("aws-c-common/source/allocator.c":220:5))
  sea.br ^bb5
^bb5:
  %v61 = sea.load %v27[%v60] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_23"("aws-c-common/source/allocator.c":220:5))
  %v62 = sea.ptr.null : !sea.ptr<64> loc(".not6.i.i"("aws-c-common/source/allocator.c":220:5))
  %v63 = sea.ptr.cmp eq, %v61, %v62 : !sea.ptr<64> loc(".not6.i.i"("aws-c-common/source/allocator.c":220:5))
  %v64 = sea.const 1 : i1 loc("aws-c-common/source/allocator.c":220:5)
  %v65 = sea.xor %v63, %v64 : i1 loc("aws-c-common/source/allocator.c":220:5)
  sea.assume %v65 loc("aws-c-common/source/allocator.c":220:5)
  %v66 = sea.const 0 : i64 loc("_24"("aws-c-common/source/allocator.c":223:17))
  %v67 = sea.icmp eq, %v42, %v66 : i64 loc("_24"("aws-c-common/source/allocator.c":223:17))
  sea.cond_br %v67, ^bb33, ^bb6 loc("aws-c-common/source/allocator.c":223:9)
^bb6:
  sea.br ^bb7
^bb7:
  sea.cond_br %v50, ^bb18, ^bb8 loc("aws-c-common/source/allocator.c":229:9)
^bb8:
  sea.br ^bb9
^bb9:
  sea.br ^bb10
^bb10:
  %v68 = sea.func_addr @"s_default_realloc.addr" : !sea.ptr<64> loc("_32"("aws-c-common/source/allocator.c":230:24))
  %v69 = sea.ptr.cmp eq, %v48, %v68 : !sea.ptr<64> loc("_32"("aws-c-common/source/allocator.c":230:24))
  %v70 = sea.const 0 : i1 loc("aws-c-common/source/allocator.c":230:24)
  %v71 = sea.const 1 : i1 loc("aws-c-common/source/allocator.c":230:24)
  %v72 = sea.xor %v70, %v71 : i1 loc("aws-c-common/source/allocator.c":230:24)
  sea.assume %v72 loc("aws-c-common/source/allocator.c":230:24)
  %v73 = sea.icmp ugt, %v42, %v41 : i64 loc(".not1.i.i.i"("aws-c-common/source/allocator.c":230:24))
  sea.cond_br %v69, ^bb15, ^bb11 loc("aws-c-common/source/allocator.c":230:24)
^bb11:
  %v74 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":48:7)
  sea.cond_br %v73, ^bb12, ^bb17(%v74 : !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":48:7)
^bb12:
  %v75 = sea.nondet "nd_malloc_is_fail" [10] : i1 loc("_38"("seahorn/lib/sea_allocators.c":11:10))
  %v76 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v75, ^bb14(%v3, %v76 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb13 loc("seahorn/lib/sea_allocators.c":11:10)
^bb13:
  %v77 = sea.const 1 : i64 loc("malloc.i")
  %v78 = sea.mul %v42, %v77 : i64 loc("malloc.i")
  %v79 = sea.alloca %v78 align 16 [11] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb14(%v3, %v79 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb14(%v80 : !sea.mem<!sea.ptr<64>, i8>, %v81 : !sea.ptr<64>):
  %v82 = sea.memhavoc %v80[%v81], %v42 [12] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v83 = sea.ptr.null : !sea.ptr<64> loc("_41"("seahorn/lib/sea_allocators.c":45:10))
  %v84 = sea.ptr.cmp ne, %v81, %v83 : !sea.ptr<64> loc("_41"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v84 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb17(%v81 : !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":55:7)
^bb15:
  %v85 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/allocator.c":80:9)
  sea.cond_br %v73, ^bb16, ^bb17(%v85 : !sea.ptr<64>) loc("aws-c-common/source/allocator.c":80:9)
^bb16:
  %v86 = sea.const 4096 : i64 loc("_33"("aws-c-common/source/allocator.c":51:53))
  %v87 = sea.icmp ugt, %v42, %v86 : i64 loc("_33"("aws-c-common/source/allocator.c":51:53))
  %v88 = sea.const 64 : i64 loc("_34"("aws-c-common/source/allocator.c":51:45))
  %v89 = sea.const 16 : i64 loc("_34"("aws-c-common/source/allocator.c":51:45))
  %v90 = sea.select %v87, %v88, %v89 : i64 loc("_34"("aws-c-common/source/allocator.c":51:45))
  %v91 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/allocator.c":53:11)
  %v92 = sea.store %v1[%v6], %v91 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/allocator.c":53:11)
  %v93 = sea.load %v92[%v6] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_36"("aws-c-common/source/allocator.c":56:5))
  %v94 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i.i.i"("aws-c-common/source/allocator.c":56:5))
  %v95 = sea.ptr.cmp eq, %v93, %v94 : !sea.ptr<64> loc(".not.i.i.i.i"("aws-c-common/source/allocator.c":56:5))
  %v96 = sea.const 1 : i1 loc("aws-c-common/source/allocator.c":56:5)
  %v97 = sea.xor %v95, %v96 : i1 loc("aws-c-common/source/allocator.c":56:5)
  sea.assume %v97 loc("aws-c-common/source/allocator.c":56:5)
  %v98 = sea.const 1 : i1 loc("aws-c-common/source/allocator.c":86:5)
  %v99 = sea.xor %v95, %v98 : i1 loc("aws-c-common/source/allocator.c":86:5)
  sea.assume %v99 loc("aws-c-common/source/allocator.c":86:5)
  sea.br ^bb17(%v93 : !sea.ptr<64>) loc("aws-c-common/source/allocator.c":88:9)
^bb17(%v100 : !sea.ptr<64>):
  %v101 = sea.ptr.null : !sea.ptr<64> loc(".not10.i.i"("aws-c-common/source/allocator.c":231:9))
  %v102 = sea.ptr.cmp eq, %v100, %v101 : !sea.ptr<64> loc(".not10.i.i"("aws-c-common/source/allocator.c":231:9))
  %v103 = sea.const 1 : i1 loc("aws-c-common/source/allocator.c":231:9)
  %v104 = sea.xor %v102, %v103 : i1 loc("aws-c-common/source/allocator.c":231:9)
  sea.assume %v104 loc("aws-c-common/source/allocator.c":231:9)
  %v105 = sea.const 1 : i1
  %v106 = sea.const 1 : i1
  %v107 = sea.xor %v105, %v106 : i1
  sea.assume %v107
  sea.br ^bb36
^bb18:
  %v108 = sea.icmp ult, %v41, %v42 : i64 loc(".not8.i.i"("aws-c-common/source/allocator.c":238:17))
  sea.assume %v108 loc("aws-c-common/source/allocator.c":238:9)
  sea.br ^bb19
^bb19:
  %v109 = sea.load %v23[%v40] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_45"("aws-c-common/source/allocator.c":242:31))
  %v110 = sea.func_addr @"s_default_malloc.addr" : !sea.ptr<64> loc("_46"("aws-c-common/source/allocator.c":242:20))
  %v111 = sea.ptr.cmp eq, %v109, %v110 : !sea.ptr<64> loc("_46"("aws-c-common/source/allocator.c":242:20))
  sea.cond_br %v111, ^bb23, ^bb20 loc("aws-c-common/source/allocator.c":242:20)
^bb20:
  %v112 = sea.nondet "nd_malloc_is_fail" [13] : i1 loc("_51"("seahorn/lib/sea_allocators.c":11:10))
  %v113 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v112, ^bb22(%v4, %v113 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb21 loc("seahorn/lib/sea_allocators.c":11:10)
^bb21:
  %v114 = sea.const 1 : i64 loc("malloc4.i")
  %v115 = sea.mul %v42, %v114 : i64 loc("malloc4.i")
  %v116 = sea.alloca %v115 align 16 [14] : i64 -> !sea.ptr<64> loc("malloc4.i")
  sea.br ^bb22(%v4, %v116 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb22(%v117 : !sea.mem<!sea.ptr<64>, i8>, %v118 : !sea.ptr<64>):
  %v119 = sea.memhavoc %v117[%v118], %v42 [15] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v120 = sea.ptr.null : !sea.ptr<64> loc("_54"("seahorn/lib/sea_allocators.c":45:10))
  %v121 = sea.ptr.cmp ne, %v118, %v120 : !sea.ptr<64> loc("_54"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v121 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb24(%v119, %v118 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("aws-c-common/source/allocator.c":242:20)
^bb23:
  %v122 = sea.const 4096 : i64 loc("_47"("aws-c-common/source/allocator.c":51:53))
  %v123 = sea.icmp ugt, %v42, %v122 : i64 loc("_47"("aws-c-common/source/allocator.c":51:53))
  %v124 = sea.const 64 : i64 loc("_48"("aws-c-common/source/allocator.c":51:45))
  %v125 = sea.const 16 : i64 loc("_48"("aws-c-common/source/allocator.c":51:45))
  %v126 = sea.select %v123, %v124, %v125 : i64 loc("_48"("aws-c-common/source/allocator.c":51:45))
  %v127 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/allocator.c":53:11)
  %v128 = sea.store %v2[%v8], %v127 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/allocator.c":53:11)
  %v129 = sea.load %v128[%v8] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_50"("aws-c-common/source/allocator.c":56:5))
  %v130 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i.i"("aws-c-common/source/allocator.c":56:5))
  %v131 = sea.ptr.cmp eq, %v129, %v130 : !sea.ptr<64> loc(".not.i.i.i"("aws-c-common/source/allocator.c":56:5))
  %v132 = sea.const 1 : i1 loc("aws-c-common/source/allocator.c":56:5)
  %v133 = sea.xor %v131, %v132 : i1 loc("aws-c-common/source/allocator.c":56:5)
  sea.assume %v133 loc("aws-c-common/source/allocator.c":56:5)
  sea.br ^bb24(%v4, %v129 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("aws-c-common/source/allocator.c":242:20)
^bb24(%v134 : !sea.mem<!sea.ptr<64>, i8>, %v135 : !sea.ptr<64>):
  %v136 = sea.ptr.null : !sea.ptr<64> loc(".not9.i.i"("aws-c-common/source/allocator.c":243:5))
  %v137 = sea.ptr.cmp eq, %v135, %v136 : !sea.ptr<64> loc(".not9.i.i"("aws-c-common/source/allocator.c":243:5))
  %v138 = sea.const 1 : i1 loc("aws-c-common/source/allocator.c":243:5)
  %v139 = sea.xor %v137, %v138 : i1 loc("aws-c-common/source/allocator.c":243:5)
  sea.assume %v139 loc("aws-c-common/source/allocator.c":243:5)
  sea.br ^bb25
^bb25:
  %v140 = sea.ptr.dereferenceable %v135, %v41 : !sea.ptr<64>, i64 loc("_57"("seahorn/lib/bcmp.c":161:3))
  %v141 = sea.ptr.dereferenceable %v135, %v41 : !sea.ptr<64>, i64 loc("_58"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v141, ^bb26, ^bb36 loc("seahorn/lib/bcmp.c":161:3)
^bb26:
  %v142 = sea.ptr.null : !sea.ptr<64> loc("_60"("seahorn/lib/bcmp.c":162:3))
  %v143 = sea.ptr.dereferenceable %v142, %v41 : !sea.ptr<64>, i64 loc("_60"("seahorn/lib/bcmp.c":162:3))
  %v144 = sea.ptr.null : !sea.ptr<64> loc("_61"("seahorn/lib/bcmp.c":162:3))
  %v145 = sea.ptr.dereferenceable %v144, %v41 : !sea.ptr<64>, i64 loc("_61"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v145, ^bb27, ^bb36 loc("seahorn/lib/bcmp.c":162:3)
^bb27:
  %v146 = sea.ptr.index %v135 [%v41] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_62"("aws-c-common/source/allocator.c":246:30))
  %v147 = sea.sub %v42, %v41 : i64 loc("_63"("aws-c-common/source/allocator.c":246:52))
  %v148 = sea.const 0 : i8 loc("aws-c-common/source/allocator.c":246:5)
  %v149 = sea.memset %v134[%v146], %v148, %v147 inplace : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/source/allocator.c":246:5)
  sea.br ^bb28
^bb28:
  sea.br ^bb29
^bb29:
  %v150 = sea.load %v27[%v60] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_66"("aws-c-common/source/allocator.c":210:5))
  %v151 = sea.ptr.null : !sea.ptr<64> loc(".not1.i13.i.i"("aws-c-common/source/allocator.c":210:5))
  %v152 = sea.ptr.cmp eq, %v150, %v151 : !sea.ptr<64> loc(".not1.i13.i.i"("aws-c-common/source/allocator.c":210:5))
  %v153 = sea.const 1 : i1 loc("aws-c-common/source/allocator.c":210:5)
  %v154 = sea.xor %v152, %v153 : i1 loc("aws-c-common/source/allocator.c":210:5)
  sea.assume %v154 loc("aws-c-common/source/allocator.c":210:5)
  %v155 = sea.ptr.null : !sea.ptr<64> loc(".not2.i14.i.i"("aws-c-common/source/allocator.c":212:13))
  %v156 = sea.ptr.null : !sea.ptr<64> loc(".not2.i14.i.i"("aws-c-common/source/allocator.c":212:13))
  %v157 = sea.ptr.cmp eq, %v155, %v156 : !sea.ptr<64> loc(".not2.i14.i.i"("aws-c-common/source/allocator.c":212:13))
  sea.cond_br %v157, ^bb32, ^bb30 loc("aws-c-common/source/allocator.c":212:9)
^bb30:
  sea.br ^bb31
^bb31:
  sea.br ^bb32 loc("aws-c-common/source/allocator.c":213:9)
^bb32:
  %v158 = sea.const 1 : i1
  %v159 = sea.const 1 : i1
  %v160 = sea.xor %v158, %v159 : i1
  sea.assume %v160
  sea.br ^bb36
^bb33:
  sea.br ^bb34
^bb34:
  sea.br ^bb35
^bb35:
  %v161 = sea.const 1 : i1 loc("aws-c-common/source/allocator.c":210:5)
  %v162 = sea.xor %v63, %v161 : i1 loc("aws-c-common/source/allocator.c":210:5)
  sea.assume %v162 loc("aws-c-common/source/allocator.c":210:5)
  %v163 = sea.const 1 : i1
  %v164 = sea.const 1 : i1
  %v165 = sea.xor %v163, %v164 : i1
  sea.assume %v165
  sea.br ^bb36
^bb36:
  sea.br ^bb37
^bb37:
  %v166 = sea.const 0 : i1
  sea.assert %v166
  sea.halt
}
