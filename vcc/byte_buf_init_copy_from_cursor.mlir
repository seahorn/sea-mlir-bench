// Exported from SeaHorn (byte_buf_init_copy_from_cursor.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm25")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm26")
  %v2 = sea.mem.nondet "region.32" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm27")
  %v3 = sea.mem.nondet "region.64" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm28")
  %v4 = sea.mem.nondet "region.80" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm29")
  %v5 = sea.const 16 : i64 loc("_0")
  %v6 = sea.alloca %v5 align 8 [5] : i64 -> !sea.ptr<64> loc("_0")
  %v7 = sea.const 32 : i64 loc("_1")
  %v8 = sea.alloca %v7 align 8 [6] : i64 -> !sea.ptr<64> loc("_1")
  %v9 = sea.const 16 : i64 loc("_2")
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
  %v28 = sea.store %v2[%v8], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v29 = sea.ptr.index %v8 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_10"("seahorn/lib/byte_buf_helper.c":25:10))
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
  %v44 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_18"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb7
^bb7:
  %v45 = sea.store %v30[%v44], %v43 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v46 = sea.ptr.index %v8 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_20"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb8
^bb8:
  %v47 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v48 = sea.store %v45[%v46], %v47 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v49 = sea.nondet "nd_size_t" [13] : i64 loc("_21"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb9
^bb9:
  %v50 = sea.store %v3[%v10], %v49 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb10
^bb10:
  %v51 = sea.const 11 : i64 loc("_24"("seahorn/lib/byte_buf_helper.c":33:24))
  %v52 = sea.icmp ult, %v49, %v51 : i64 loc("_24"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v52 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v53 = sea.nondet "nd_malloc_is_fail" [14] : i1 loc("_25"("seahorn/lib/sea_allocators.c":11:10))
  %v54 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v53, ^bb12(%v42, %v54 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb11 loc("seahorn/lib/sea_allocators.c":11:10)
^bb11:
  %v55 = sea.const 10 : i64 loc("malloc28.i2")
  %v56 = sea.alloca %v55 align 16 [15] : i64 -> !sea.ptr<64> loc("malloc28.i2")
  sea.br ^bb12(%v42, %v56 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb12(%v57 : !sea.mem<!sea.ptr<64>, i8>, %v58 : !sea.ptr<64>):
  %v59 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v60 = sea.memhavoc %v57[%v58], %v59 [16] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v61 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_28"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb13
^bb13:
  %v62 = sea.store %v50[%v61], %v58 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  sea.br ^bb14
^bb14:
  %v63 = sea.const 0 : i64 loc("_30"("aws-c-common/source/byte_buf.c":66:26))
  %v64 = sea.icmp eq, %v49, %v63 : i64 loc("_30"("aws-c-common/source/byte_buf.c":66:26))
  %v65 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v64, ^bb20(%v65 : i1), ^bb15 loc("aws-c-common/source/byte_buf.c":66:32)
^bb15:
  sea.br ^bb16
^bb16:
  sea.br ^bb17
^bb17:
  %v66 = sea.ptr.null : !sea.ptr<64> loc(".not2.i14.i"("aws-c-common/source/byte_buf.c":66:55))
  %v67 = sea.ptr.cmp eq, %v58, %v66 : !sea.ptr<64> loc(".not2.i14.i"("aws-c-common/source/byte_buf.c":66:55))
  %v68 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v67, ^bb20(%v68 : i1), ^bb18 loc("aws-c-common/source/byte_buf.c":66:67)
^bb18:
  sea.br ^bb19
^bb19:
  %v69 = sea.const 1 : i1
  sea.br ^bb20(%v69 : i1)
^bb20(%v70 : i1):
  sea.assume %v70 loc("seahorn/jobs/byte_buf_init_copy_from_cursor/aws_byte_buf_init_copy_from_cursor_harness.c":22:5)
  %v71 = sea.store %v1[%v6], %v49 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64
  %v72 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_37")
  %v73 = sea.store %v71[%v72], %v58 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  sea.br ^bb21
^bb21:
  sea.cond_br %v64, ^bb34, ^bb22 loc("aws-c-common/source/byte_buf.c":66:32)
^bb22:
  sea.br ^bb23
^bb23:
  sea.br ^bb24
^bb24:
  %v74 = sea.ptr.null : !sea.ptr<64> loc(".not2.i.i.i"("aws-c-common/source/byte_buf.c":66:55))
  %v75 = sea.ptr.cmp eq, %v58, %v74 : !sea.ptr<64> loc(".not2.i.i.i"("aws-c-common/source/byte_buf.c":66:55))
  sea.cond_br %v75, ^bb33, ^bb25 loc("aws-c-common/source/byte_buf.c":66:67)
^bb25:
  sea.br ^bb26
^bb26:
  sea.br ^bb27
^bb27:
  %v76 = sea.const 0 : i8 loc("aws-c-common/source/byte_buf.c":145:5)
  %v77 = sea.const 32 : i64 loc("aws-c-common/source/byte_buf.c":145:5)
  %v78 = sea.memset %v48[%v8], %v76, %v77 inplace align 8 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/source/byte_buf.c":145:5)
  %v79 = sea.nondet "nd_malloc_is_fail" [17] : i1 loc("_45"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v79, ^bb29, ^bb28 loc("seahorn/lib/sea_allocators.c":11:10)
^bb28:
  %v80 = sea.const 1 : i64 loc("malloc29.i")
  %v81 = sea.mul %v49, %v80 : i64 loc("malloc29.i")
  %v82 = sea.alloca %v81 align 16 [18] : i64 -> !sea.ptr<64> loc("malloc29.i")
  %v83 = sea.memhavoc %v60[%v82], %v49 [19] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb30(%v83, %v82 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/allocator_override.c":19:7)
^bb29:
  %v84 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/allocator_override.c":21:3)
  sea.br ^bb30(%v60, %v84 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/allocator_override.c":21:3)
^bb30(%v85 : !sea.mem<!sea.ptr<64>, i8>, %v86 : !sea.ptr<64>):
  sea.br ^bb31
^bb31:
  %v87 = sea.store %v78[%v44], %v86 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":147:18)
  sea.br ^bb32
^bb32:
  %v88 = sea.ptr.null : !sea.ptr<64> loc("_50"("aws-c-common/source/byte_buf.c":148:38))
  %v89 = sea.ptr.cmp eq, %v86, %v88 : !sea.ptr<64> loc("_50"("aws-c-common/source/byte_buf.c":148:38))
  %v90 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":148:9)
  sea.cond_br %v89, ^bb44(%v85, %v87, %v90 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1), ^bb36(%v85, %v87, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("aws-c-common/source/byte_buf.c":148:9)
^bb33:
  %v91 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":143:5)
  sea.br ^bb44(%v60, %v48, %v91 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1) loc("aws-c-common/source/byte_buf.c":143:5)
^bb34:
  sea.br ^bb35
^bb35:
  %v92 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":147:18)
  %v93 = sea.store %v48[%v44], %v92 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":147:18)
  %v94 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":148:22)
  sea.br ^bb36(%v60, %v93, %v94 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("aws-c-common/source/byte_buf.c":148:22)
^bb36(%v95 : !sea.mem<!sea.ptr<64>, i8>, %v96 : !sea.mem<!sea.ptr<64>, i8>, %v97 : !sea.ptr<64>):
  sea.br ^bb37
^bb37:
  %v98 = sea.store %v96[%v8], %v49 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":152:15)
  sea.br ^bb38
^bb38:
  %v99 = sea.store %v98[%v29], %v49 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":153:20)
  sea.br ^bb39
^bb39:
  %v100 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":154:21)
  %v101 = sea.store %v99[%v46], %v100 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":154:21)
  %v102 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":155:9)
  sea.cond_br %v64, ^bb44(%v95, %v101, %v102 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1), ^bb40 loc("aws-c-common/source/byte_buf.c":155:9)
^bb40:
  sea.br ^bb41
^bb41:
  %v103 = sea.ptr.dereferenceable %v97, %v49 : !sea.ptr<64>, i64 loc("_58"("seahorn/lib/bcmp.c":161:3))
  %v104 = sea.ptr.dereferenceable %v97, %v49 : !sea.ptr<64>, i64 loc("_59"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v104, ^bb42, ^bb88 loc("seahorn/lib/bcmp.c":161:3)
^bb42:
  %v105 = sea.ptr.dereferenceable %v58, %v49 : !sea.ptr<64>, i64 loc("_61"("seahorn/lib/bcmp.c":162:3))
  %v106 = sea.ptr.dereferenceable %v58, %v49 : !sea.ptr<64>, i64 loc("_62"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v106, ^bb43, ^bb88 loc("seahorn/lib/bcmp.c":162:3)
^bb43:
  %v107 = sea.memmove %v95[%v97], %v95[%v58], %v49 inplace src_align 16 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  %v108 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":157:5)
  sea.br ^bb44(%v107, %v101, %v108 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i1) loc("aws-c-common/source/byte_buf.c":157:5)
^bb44(%v109 : !sea.mem<!sea.ptr<64>, i8>, %v110 : !sea.mem<!sea.ptr<64>, i8>, %v111 : i1):
  sea.assume %v111 loc("seahorn/jobs/byte_buf_init_copy_from_cursor/aws_byte_buf_init_copy_from_cursor_harness.c":24:9)
  sea.br ^bb45
^bb45:
  %v112 = sea.load %v110[%v29] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_65"("aws-c-common/source/byte_buf.c":60:19))
  %v113 = sea.const 0 : i64 loc("_66"("aws-c-common/source/byte_buf.c":60:28))
  %v114 = sea.icmp ne, %v112, %v113 : i64 loc("_66"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v114, ^bb51, ^bb46 loc("aws-c-common/source/byte_buf.c":60:33)
^bb46:
  sea.br ^bb47
^bb47:
  %v115 = sea.load %v110[%v8] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_69"("aws-c-common/source/byte_buf.c":60:41))
  %v116 = sea.const 0 : i64 loc("_70"("aws-c-common/source/byte_buf.c":60:45))
  %v117 = sea.icmp eq, %v115, %v116 : i64 loc("_70"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v117, ^bb48, ^bb50 loc("aws-c-common/source/byte_buf.c":60:50)
^bb48:
  sea.br ^bb49
^bb49:
  %v118 = sea.load %v110[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_73"("aws-c-common/source/byte_buf.c":60:58))
  %v119 = sea.ptr.null : !sea.ptr<64> loc("_74"("aws-c-common/source/byte_buf.c":60:65))
  %v120 = sea.ptr.cmp eq, %v118, %v119 : !sea.ptr<64> loc("_74"("aws-c-common/source/byte_buf.c":60:65))
  %v121 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":60:74)
  %v122 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v120, ^bb58(%v121, %v122 : i64, i1), ^bb50 loc("aws-c-common/source/byte_buf.c":60:74)
^bb50:
  %v123 = sea.const 0 : i1
  sea.br ^bb58(%v115, %v123 : i64, i1)
^bb51:
  sea.br ^bb52
^bb52:
  sea.br ^bb53
^bb53:
  %v124 = sea.load %v110[%v8] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_77"("aws-c-common/source/byte_buf.c":61:40))
  sea.br ^bb54
^bb54:
  %v125 = sea.icmp ugt, %v124, %v112 : i64 loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":61:44))
  %v126 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v125, ^bb58(%v124, %v126 : i64, i1), ^bb55 loc("aws-c-common/source/byte_buf.c":61:61)
^bb55:
  sea.br ^bb56
^bb56:
  sea.br ^bb57
^bb57:
  %v127 = sea.load %v110[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_82"("aws-c-common/source/byte_buf.c":61:64))
  %v128 = sea.ptr.null : !sea.ptr<64> loc("_83"("aws-c-common/source/byte_buf.c":61:64))
  %v129 = sea.ptr.cmp ne, %v127, %v128 : !sea.ptr<64> loc("_83"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb58(%v124, %v129 : i64, i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb58(%v130 : i64, %v131 : i1):
  sea.br ^bb59
^bb59:
  sea.cond_br %v114, ^bb65, ^bb60 loc("aws-c-common/source/byte_buf.c":60:33)
^bb60:
  sea.br ^bb61
^bb61:
  %v132 = sea.const 0 : i64 loc("_89"("aws-c-common/source/byte_buf.c":60:45))
  %v133 = sea.icmp eq, %v130, %v132 : i64 loc("_89"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v133, ^bb62, ^bb64 loc("aws-c-common/source/byte_buf.c":60:50)
^bb62:
  sea.br ^bb63
^bb63:
  %v134 = sea.load %v110[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_92"("aws-c-common/source/byte_buf.c":60:58))
  %v135 = sea.ptr.null : !sea.ptr<64> loc("_93"("aws-c-common/source/byte_buf.c":60:65))
  %v136 = sea.ptr.cmp eq, %v134, %v135 : !sea.ptr<64> loc("_93"("aws-c-common/source/byte_buf.c":60:65))
  %v137 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v136, ^bb70(%v137 : !sea.ptr<64>), ^bb64 loc("aws-c-common/source/byte_buf.c":60:74)
^bb64:
  sea.br ^bb88
^bb65:
  sea.br ^bb66
^bb66:
  sea.br ^bb67
^bb67:
  %v138 = sea.icmp ule, %v130, %v112 : i64 loc(".not2.i.i")
  %v139 = sea.const 1 : i1 loc("or.cond13.not")
  %v140 = sea.const 0 : i1 loc("or.cond13.not")
  %v141 = sea.select %v139, %v138, %v140 : i1 loc("or.cond13.not")
  sea.cond_br %v141, ^bb68, ^bb88
^bb68:
  sea.br ^bb69
^bb69:
  %v142 = sea.load %v110[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_99")
  %v143 = sea.ptr.null : !sea.ptr<64> loc("_100")
  %v144 = sea.ptr.cmp ne, %v142, %v143 : !sea.ptr<64> loc("_100")
  %v145 = sea.const 1 : i1 loc("or.cond")
  %v146 = sea.const 0 : i1 loc("or.cond")
  %v147 = sea.select %v145, %v144, %v146 : i1 loc("or.cond")
  sea.cond_br %v147, ^bb70(%v142 : !sea.ptr<64>), ^bb88
^bb70(%v148 : !sea.ptr<64>):
  sea.br ^bb71
^bb71:
  %v149 = sea.load %v50[%v10] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_103"("aws-c-common/source/byte_buf.c":66:22))
  %v150 = sea.const 0 : i64 loc("_104"("aws-c-common/source/byte_buf.c":66:26))
  %v151 = sea.icmp eq, %v149, %v150 : i64 loc("_104"("aws-c-common/source/byte_buf.c":66:26))
  %v152 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v151, ^bb77(%v152 : i1), ^bb72 loc("aws-c-common/source/byte_buf.c":66:32)
^bb72:
  sea.br ^bb73
^bb73:
  sea.br ^bb74
^bb74:
  %v153 = sea.load %v62[%v61] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_108"("aws-c-common/source/byte_buf.c":66:63))
  %v154 = sea.ptr.null : !sea.ptr<64> loc(".not2.i10.i"("aws-c-common/source/byte_buf.c":66:55))
  %v155 = sea.ptr.cmp eq, %v153, %v154 : !sea.ptr<64> loc(".not2.i10.i"("aws-c-common/source/byte_buf.c":66:55))
  %v156 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v155, ^bb77(%v156 : i1), ^bb75 loc("aws-c-common/source/byte_buf.c":66:67)
^bb75:
  sea.br ^bb76
^bb76:
  %v157 = sea.const 1 : i1
  sea.br ^bb77(%v157 : i1)
^bb77(%v158 : i1):
  sea.br ^bb78
^bb78:
  sea.cond_br %v151, ^bb83, ^bb79 loc("aws-c-common/source/byte_buf.c":66:32)
^bb79:
  sea.br ^bb80
^bb80:
  %v159 = sea.load %v62[%v61] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_115")
  %v160 = sea.ptr.null : !sea.ptr<64> loc(".not2.i7.i")
  %v161 = sea.ptr.cmp ne, %v159, %v160 : !sea.ptr<64> loc(".not2.i7.i")
  %v162 = sea.const 1 : i1 loc("or.cond17.not")
  %v163 = sea.const 0 : i1 loc("or.cond17.not")
  %v164 = sea.select %v162, %v161, %v163 : i1 loc("or.cond17.not")
  sea.cond_br %v164, ^bb81, ^bb88
^bb81:
  sea.br ^bb82
^bb82:
  sea.br ^bb83
^bb83:
  %v165 = sea.icmp eq, %v130, %v149 : i64 loc("_118"("seahorn/jobs/byte_buf_init_copy_from_cursor/aws_byte_buf_init_copy_from_cursor_harness.c":28:9))
  sea.cond_br %v165, ^bb84, ^bb88 loc("seahorn/jobs/byte_buf_init_copy_from_cursor/aws_byte_buf_init_copy_from_cursor_harness.c":28:9)
^bb84:
  %v166 = sea.icmp eq, %v112, %v130 : i64 loc("_120"("seahorn/jobs/byte_buf_init_copy_from_cursor/aws_byte_buf_init_copy_from_cursor_harness.c":29:9))
  sea.cond_br %v166, ^bb85, ^bb88 loc("seahorn/jobs/byte_buf_init_copy_from_cursor/aws_byte_buf_init_copy_from_cursor_harness.c":29:9)
^bb85:
  %v167 = sea.load %v110[%v46] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_122"("seahorn/jobs/byte_buf_init_copy_from_cursor/aws_byte_buf_init_copy_from_cursor_harness.c":30:9))
  %v168 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_123"("seahorn/jobs/byte_buf_init_copy_from_cursor/aws_byte_buf_init_copy_from_cursor_harness.c":30:9))
  %v169 = sea.ptr.cmp eq, %v167, %v168 : !sea.ptr<64> loc("_123"("seahorn/jobs/byte_buf_init_copy_from_cursor/aws_byte_buf_init_copy_from_cursor_harness.c":30:9))
  sea.cond_br %v169, ^bb86, ^bb88 loc("seahorn/jobs/byte_buf_init_copy_from_cursor/aws_byte_buf_init_copy_from_cursor_harness.c":30:9)
^bb86:
  %v170 = sea.ptr.null : !sea.ptr<64> loc(".not.i"("seahorn/jobs/byte_buf_init_copy_from_cursor/aws_byte_buf_init_copy_from_cursor_harness.c":31:13))
  %v171 = sea.ptr.cmp eq, %v148, %v170 : !sea.ptr<64> loc(".not.i"("seahorn/jobs/byte_buf_init_copy_from_cursor/aws_byte_buf_init_copy_from_cursor_harness.c":31:13))
  %v172 = sea.const 1 : i1 loc("seahorn/jobs/byte_buf_init_copy_from_cursor/aws_byte_buf_init_copy_from_cursor_harness.c":31:13)
  %v173 = sea.xor %v171, %v172 : i1 loc("seahorn/jobs/byte_buf_init_copy_from_cursor/aws_byte_buf_init_copy_from_cursor_harness.c":31:13)
  sea.assume %v173 loc("seahorn/jobs/byte_buf_init_copy_from_cursor/aws_byte_buf_init_copy_from_cursor_harness.c":31:13)
  %v174 = sea.load %v62[%v61] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_125"("seahorn/jobs/byte_buf_init_copy_from_cursor/aws_byte_buf_init_copy_from_cursor_harness.c":32:51))
  %v175 = sea.const 0 : i64 loc("_126"("seahorn/lib/utils.c":15:3))
  %v176 = sea.icmp eq, %v112, %v175 : i64 loc("_126"("seahorn/lib/utils.c":15:3))
  %v177 = sea.ptr.null : !sea.ptr<64> loc("_127"("seahorn/lib/utils.c":15:3))
  %v178 = sea.ptr.cmp ne, %v174, %v177 : !sea.ptr<64> loc("_127"("seahorn/lib/utils.c":15:3))
  %v179 = sea.xor %v171, %v178 : i1 loc("_128"("seahorn/lib/utils.c":15:3))
  %v180 = sea.or %v176, %v179 : i1 loc("_129"("seahorn/lib/utils.c":15:3))
  %v181 = sea.const 1 : i1 loc("brmerge"("seahorn/lib/utils.c":15:3))
  %v182 = sea.select %v176, %v181, %v179 : i1 loc("brmerge"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v182, ^bb87, ^bb88 loc("seahorn/lib/utils.c":15:3)
^bb87:
  %v183 = sea.ptr.null : !sea.ptr<64> loc("_130")
  %v184 = sea.ptr.cmp ne, %v148, %v183 : !sea.ptr<64> loc("_130")
  %v185 = sea.and %v114, %v184 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":16:15))
  %v186 = sea.and %v185, %v178 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.assume %v186 loc("seahorn/lib/utils.c":16:15)
  %v187 = sea.nondet "nd_size_t" [20] : i64 loc("_131"("seahorn/lib/utils.c":17:16))
  %v188 = sea.icmp ult, %v187, %v112 : i64 loc("_132"("seahorn/lib/utils.c":19:14))
  %v189 = sea.const 36028797018963967 : i64 loc("_133"("seahorn/lib/utils.c":19:20))
  %v190 = sea.icmp ult, %v112, %v189 : i64 loc("_133"("seahorn/lib/utils.c":19:20))
  %v191 = sea.and %v190, %v188 : i1 loc("_134"("seahorn/lib/utils.c":19:20))
  sea.assume %v191 loc("seahorn/lib/utils.c":19:5)
  %v192 = sea.ptr.index %v148 [%v187] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_135"("seahorn/lib/utils.c":20:5))
  %v193 = sea.load %v109[%v192] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_136"("seahorn/lib/utils.c":20:5))
  %v194 = sea.ptr.index %v174 [%v187] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_137"("seahorn/lib/utils.c":20:5))
  %v195 = sea.load %v109[%v194] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_138"("seahorn/lib/utils.c":20:5))
  %v196 = sea.icmp eq, %v193, %v195 : i8 loc("_139"("seahorn/lib/utils.c":20:5))
  %v197 = sea.const 1 : i1 loc("seahorn/lib/utils.c":20:5)
  %v198 = sea.xor %v196, %v197 : i1 loc("seahorn/lib/utils.c":20:5)
  sea.assume %v198 loc("seahorn/lib/utils.c":20:5)
  sea.br ^bb88 loc("seahorn/lib/utils.c":20:5)
^bb88:
  sea.br ^bb89
^bb89:
  %v199 = sea.const 0 : i1
  sea.assert %v199
  sea.halt
}
