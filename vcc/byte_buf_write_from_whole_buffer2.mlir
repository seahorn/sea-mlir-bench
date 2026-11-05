// Exported from SeaHorn (byte_buf_write_from_whole_buffer2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm18")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm19")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm20")
  %v3 = sea.mem.nondet "region.80" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm21")
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
  %v46 = sea.nondet "nd_size_t" [11] : i64 loc("_20"("seahorn/lib/byte_buf_helper.c":19:18))
  %v47 = sea.nondet "nd_size_t" [12] : i64 loc("_21"("seahorn/lib/byte_buf_helper.c":20:18))
  %v48 = sea.icmp ule, %v46, %v47 : i64 loc("_22"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v48 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v49 = sea.const 11 : i64 loc("_23"("seahorn/lib/byte_buf_helper.c":22:16))
  %v50 = sea.icmp ult, %v47, %v49 : i64 loc("_23"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v50 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb9
^bb9:
  %v51 = sea.store %v2[%v7], %v46 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v52 = sea.ptr.index %v7 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_25"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb10
^bb10:
  %v53 = sea.store %v51[%v52], %v47 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v54 = sea.const 0 : i64 loc("_27"("seahorn/lib/proof_allocators.c":21:15))
  %v55 = sea.icmp eq, %v47, %v54 : i64 loc("_27"("seahorn/lib/proof_allocators.c":21:15))
  %v56 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v55, ^bb14(%v39, %v56 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb11 loc("seahorn/lib/proof_allocators.c":21:10)
^bb11:
  %v57 = sea.nondet "nd_malloc_is_fail" [13] : i1 loc("_29"("seahorn/lib/sea_allocators.c":11:10))
  %v58 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v57, ^bb13(%v39, %v58 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb12 loc("seahorn/lib/sea_allocators.c":11:10)
^bb12:
  %v59 = sea.const 1 : i64 loc("malloc28.i")
  %v60 = sea.mul %v47, %v59 : i64 loc("malloc28.i")
  %v61 = sea.alloca %v60 align 16 [14] : i64 -> !sea.ptr<64> loc("malloc28.i")
  sea.br ^bb13(%v39, %v61 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb13(%v62 : !sea.mem<!sea.ptr<64>, i8>, %v63 : !sea.ptr<64>):
  %v64 = sea.memhavoc %v62[%v63], %v47 [15] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb14(%v64, %v63 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb14(%v65 : !sea.mem<!sea.ptr<64>, i8>, %v66 : !sea.ptr<64>):
  %v67 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_33"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb15
^bb15:
  %v68 = sea.store %v53[%v67], %v66 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v69 = sea.ptr.index %v7 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_35"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb16
^bb16:
  %v70 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v71 = sea.store %v68[%v69], %v70 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  sea.br ^bb17
^bb17:
  sea.cond_br %v29, ^bb25, ^bb18 loc("aws-c-common/source/byte_buf.c":60:33)
^bb18:
  sea.br ^bb19
^bb19:
  sea.br ^bb20
^bb20:
  sea.br ^bb21
^bb21:
  %v72 = sea.icmp ugt, %v20, %v21 : i64 loc(".not2.i21.i"("aws-c-common/source/byte_buf.c":61:44))
  %v73 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v72, ^bb30(%v73 : i1), ^bb22 loc("aws-c-common/source/byte_buf.c":61:61)
^bb22:
  sea.br ^bb23
^bb23:
  sea.br ^bb24
^bb24:
  %v74 = sea.ptr.null : !sea.ptr<64> loc("_49"("aws-c-common/source/byte_buf.c":61:64))
  %v75 = sea.ptr.cmp ne, %v40, %v74 : !sea.ptr<64> loc("_49"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb30(%v75 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb25:
  sea.br ^bb26
^bb26:
  %v76 = sea.const 0 : i64 loc("_39"("aws-c-common/source/byte_buf.c":60:45))
  %v77 = sea.icmp eq, %v20, %v76 : i64 loc("_39"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v77, ^bb27, ^bb29 loc("aws-c-common/source/byte_buf.c":60:50)
^bb27:
  sea.br ^bb28
^bb28:
  %v78 = sea.ptr.null : !sea.ptr<64> loc("_42"("aws-c-common/source/byte_buf.c":60:65))
  %v79 = sea.ptr.cmp eq, %v40, %v78 : !sea.ptr<64> loc("_42"("aws-c-common/source/byte_buf.c":60:65))
  %v80 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v79, ^bb30(%v80 : i1), ^bb29 loc("aws-c-common/source/byte_buf.c":60:74)
^bb29:
  %v81 = sea.const 0 : i1
  sea.br ^bb30(%v81 : i1)
^bb30(%v82 : i1):
  sea.assume %v82 loc("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":19:5)
  sea.br ^bb31
^bb31:
  sea.cond_br %v55, ^bb39, ^bb32 loc("aws-c-common/source/byte_buf.c":60:33)
^bb32:
  sea.br ^bb33
^bb33:
  sea.br ^bb34
^bb34:
  sea.br ^bb35
^bb35:
  %v83 = sea.icmp ugt, %v46, %v47 : i64 loc(".not2.i17.i"("aws-c-common/source/byte_buf.c":61:44))
  %v84 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v83, ^bb44(%v84 : i1), ^bb36 loc("aws-c-common/source/byte_buf.c":61:61)
^bb36:
  sea.br ^bb37
^bb37:
  sea.br ^bb38
^bb38:
  %v85 = sea.ptr.null : !sea.ptr<64> loc("_64"("aws-c-common/source/byte_buf.c":61:64))
  %v86 = sea.ptr.cmp ne, %v66, %v85 : !sea.ptr<64> loc("_64"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb44(%v86 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb39:
  sea.br ^bb40
^bb40:
  %v87 = sea.const 0 : i64 loc("_54"("aws-c-common/source/byte_buf.c":60:45))
  %v88 = sea.icmp eq, %v46, %v87 : i64 loc("_54"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v88, ^bb41, ^bb43 loc("aws-c-common/source/byte_buf.c":60:50)
^bb41:
  sea.br ^bb42
^bb42:
  %v89 = sea.ptr.null : !sea.ptr<64> loc("_57"("aws-c-common/source/byte_buf.c":60:65))
  %v90 = sea.ptr.cmp eq, %v66, %v89 : !sea.ptr<64> loc("_57"("aws-c-common/source/byte_buf.c":60:65))
  %v91 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v90, ^bb44(%v91 : i1), ^bb43 loc("aws-c-common/source/byte_buf.c":60:74)
^bb43:
  %v92 = sea.const 0 : i1
  sea.br ^bb44(%v92 : i1)
^bb44(%v93 : i1):
  sea.assume %v93 loc("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":20:5)
  sea.tracking_on loc("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":25:5)
  %v94 = sea.const 0 : i64 loc("_66"("aws-c-common/source/byte_buf.c":1447:13))
  %v95 = sea.icmp eq, %v46, %v94 : i64 loc("_66"("aws-c-common/source/byte_buf.c":1447:13))
  sea.cond_br %v95, ^bb59(%v65, %v45, %v21, %v20 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64), ^bb45 loc("aws-c-common/source/byte_buf.c":1447:9)
^bb45:
  sea.br ^bb46
^bb46:
  %v96 = sea.or %v46, %v20 : i64 loc("_69"("aws-c-common/source/byte_buf.c":1452:36))
  %v97 = sea.const 18446744073709551615 : i64 loc("or.cond.i.i.i.not"("aws-c-common/source/byte_buf.c":1452:36))
  %v98 = sea.icmp sgt, %v96, %v97 : i64 loc("or.cond.i.i.i.not"("aws-c-common/source/byte_buf.c":1452:36))
  sea.cond_br %v98, ^bb47, ^bb57 loc("aws-c-common/source/byte_buf.c":1452:36)
^bb47:
  sea.br ^bb48
^bb48:
  sea.br ^bb49
^bb49:
  %v99 = sea.add %v46, %v20 : i64 loc("_73"("aws-c-common/source/byte_buf.c":1452:73))
  %v100 = sea.icmp ugt, %v99, %v21 : i64 loc("_74"("aws-c-common/source/byte_buf.c":1452:79))
  sea.cond_br %v100, ^bb57, ^bb50 loc("aws-c-common/source/byte_buf.c":1452:9)
^bb50:
  sea.br ^bb51
^bb51:
  sea.br ^bb52
^bb52:
  %v101 = sea.ptr.index %v40 [%v20] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_78"("aws-c-common/source/byte_buf.c":1457:24))
  %v102 = sea.ptr.dereferenceable %v101, %v46 : !sea.ptr<64>, i64 loc("_79"("seahorn/lib/bcmp.c":161:3))
  %v103 = sea.ptr.dereferenceable %v101, %v46 : !sea.ptr<64>, i64 loc("_80"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v103, ^bb53, ^bb120 loc("seahorn/lib/bcmp.c":161:3)
^bb53:
  %v104 = sea.ptr.dereferenceable %v66, %v46 : !sea.ptr<64>, i64 loc("_82"("seahorn/lib/bcmp.c":162:3))
  %v105 = sea.ptr.dereferenceable %v66, %v46 : !sea.ptr<64>, i64 loc("_83"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v105, ^bb54, ^bb120 loc("seahorn/lib/bcmp.c":162:3)
^bb54:
  %v106 = sea.memmove %v65[%v101], %v65[%v66], %v46 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb55
^bb55:
  sea.br ^bb56
^bb56:
  %v107 = sea.store %v45[%v5], %v99 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":1458:14)
  %v108 = sea.load %v27[%v26] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc(".pre"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":31:9))
  sea.br ^bb59(%v106, %v107, %v108, %v99 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64, i64) loc("aws-c-common/source/byte_buf.c":1461:5)
^bb57:
  %v109 = sea.mem.is_modified %v25[%v5] : !sea.mem<!sea.ptr<64>, i8> loc("_86"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":39:9))
  %v110 = sea.const 1 : i1 loc("_87"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":39:9))
  %v111 = sea.xor %v109, %v110 : i1 loc("_87"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":39:9))
  %v112 = sea.mem.is_modified %v25[%v5] : !sea.mem<!sea.ptr<64>, i8> loc("_88"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":39:9))
  sea.cond_br %v112, ^bb120, ^bb58 loc("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":39:9)
^bb58:
  %v113 = sea.mem.is_modified %v65[%v40] : !sea.mem<!sea.ptr<64>, i8> loc("_113"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":40:9))
  %v114 = sea.const 1 : i1 loc("_114"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":40:9))
  %v115 = sea.xor %v113, %v114 : i1 loc("_114"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":40:9))
  %v116 = sea.mem.is_modified %v65[%v40] : !sea.mem<!sea.ptr<64>, i8> loc("_115"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":40:9))
  sea.cond_br %v116, ^bb120, ^bb64(%v65, %v45, %v20 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64) loc("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":40:9)
^bb59(%v117 : !sea.mem<!sea.ptr<64>, i8>, %v118 : !sea.mem<!sea.ptr<64>, i8>, %v119 : i64, %v120 : i64):
  %v121 = sea.icmp eq, %v119, %v21 : i64 loc("_92"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":31:9))
  sea.cond_br %v121, ^bb60, ^bb120 loc("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":31:9)
^bb60:
  %v122 = sea.const 0 : i64 loc("_94"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":32:21))
  %v123 = sea.icmp ne, %v46, %v122 : i64 loc("_94"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":32:21))
  %v124 = sea.const 0 : i64 loc("_95")
  %v125 = sea.icmp ne, %v120, %v124 : i64 loc("_95")
  %v126 = sea.const 0 : i1 loc("or.cond.i"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":32:25))
  %v127 = sea.select %v123, %v125, %v126 : i1 loc("or.cond.i"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":32:25))
  sea.cond_br %v127, ^bb61, ^bb64(%v117, %v118, %v120 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64) loc("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":32:25)
^bb61:
  %v128 = sea.load %v118[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_97"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":34:36))
  %v129 = sea.ptr.index %v128 [%v20] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_98"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":34:43))
  %v130 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v131 = sea.ptr.cmp eq, %v128, %v130 : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v132 = sea.ptr.null : !sea.ptr<64> loc("_99"("seahorn/lib/utils.c":15:3))
  %v133 = sea.ptr.cmp ne, %v66, %v132 : !sea.ptr<64> loc("_99"("seahorn/lib/utils.c":15:3))
  %v134 = sea.xor %v133, %v131 : i1 loc("_100"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v134, ^bb62, ^bb120 loc("seahorn/lib/utils.c":15:3)
^bb62:
  %v135 = sea.ptr.null : !sea.ptr<64> loc("_101")
  %v136 = sea.ptr.cmp ne, %v128, %v135 : !sea.ptr<64> loc("_101")
  %v137 = sea.and %v133, %v136 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v137, ^bb63, ^bb64(%v117, %v118, %v120 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64) loc("seahorn/lib/utils.c":16:15)
^bb63:
  %v138 = sea.nondet "nd_size_t" [16] : i64 loc("_103"("seahorn/lib/utils.c":17:16))
  %v139 = sea.icmp ult, %v138, %v46 : i64 loc("_104"("seahorn/lib/utils.c":19:14))
  %v140 = sea.const 36028797018963967 : i64 loc("_105"("seahorn/lib/utils.c":19:20))
  %v141 = sea.icmp ult, %v46, %v140 : i64 loc("_105"("seahorn/lib/utils.c":19:20))
  %v142 = sea.and %v141, %v139 : i1 loc("_106"("seahorn/lib/utils.c":19:20))
  sea.assume %v142 loc("seahorn/lib/utils.c":19:5)
  %v143 = sea.ptr.index %v129 [%v138] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_107"("seahorn/lib/utils.c":20:5))
  %v144 = sea.load %v117[%v143] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_108"("seahorn/lib/utils.c":20:5))
  %v145 = sea.ptr.index %v66 [%v138] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_109"("seahorn/lib/utils.c":20:5))
  %v146 = sea.load %v117[%v145] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_110"("seahorn/lib/utils.c":20:5))
  %v147 = sea.icmp eq, %v144, %v146 : i8 loc("_111"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v147, ^bb64(%v117, %v118, %v120 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64), ^bb120 loc("seahorn/lib/utils.c":20:5)
^bb64(%v148 : !sea.mem<!sea.ptr<64>, i8>, %v149 : !sea.mem<!sea.ptr<64>, i8>, %v150 : i64):
  sea.br ^bb65
^bb65:
  sea.cond_br %v29, ^bb73, ^bb66 loc("aws-c-common/source/byte_buf.c":60:33)
^bb66:
  sea.br ^bb67
^bb67:
  sea.br ^bb68
^bb68:
  sea.br ^bb69
^bb69:
  %v151 = sea.icmp ugt, %v150, %v21 : i64 loc(".not2.i13.i"("aws-c-common/source/byte_buf.c":61:44))
  %v152 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v151, ^bb78(%v152 : i1), ^bb70 loc("aws-c-common/source/byte_buf.c":61:61)
^bb70:
  sea.br ^bb71
^bb71:
  sea.br ^bb72
^bb72:
  %v153 = sea.load %v149[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_131"("aws-c-common/source/byte_buf.c":61:64))
  %v154 = sea.ptr.null : !sea.ptr<64> loc("_132"("aws-c-common/source/byte_buf.c":61:64))
  %v155 = sea.ptr.cmp ne, %v153, %v154 : !sea.ptr<64> loc("_132"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb78(%v155 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb73:
  sea.br ^bb74
^bb74:
  %v156 = sea.const 0 : i64 loc("_120"("aws-c-common/source/byte_buf.c":60:45))
  %v157 = sea.icmp eq, %v150, %v156 : i64 loc("_120"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v157, ^bb75, ^bb77 loc("aws-c-common/source/byte_buf.c":60:50)
^bb75:
  sea.br ^bb76
^bb76:
  %v158 = sea.load %v149[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_123"("aws-c-common/source/byte_buf.c":60:58))
  %v159 = sea.ptr.null : !sea.ptr<64> loc("_124"("aws-c-common/source/byte_buf.c":60:65))
  %v160 = sea.ptr.cmp eq, %v158, %v159 : !sea.ptr<64> loc("_124"("aws-c-common/source/byte_buf.c":60:65))
  %v161 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v160, ^bb78(%v161 : i1), ^bb77 loc("aws-c-common/source/byte_buf.c":60:74)
^bb77:
  %v162 = sea.const 0 : i1
  sea.br ^bb78(%v162 : i1)
^bb78(%v163 : i1):
  sea.br ^bb79
^bb79:
  sea.cond_br %v29, ^bb85, ^bb80 loc("aws-c-common/source/byte_buf.c":60:33)
^bb80:
  sea.br ^bb81
^bb81:
  sea.br ^bb82
^bb82:
  %v164 = sea.icmp ule, %v150, %v21 : i64 loc(".not2.i9.i")
  %v165 = sea.const 1 : i1 loc("or.cond15.not")
  %v166 = sea.const 0 : i1 loc("or.cond15.not")
  %v167 = sea.select %v165, %v164, %v166 : i1 loc("or.cond15.not")
  sea.cond_br %v167, ^bb83, ^bb120
^bb83:
  sea.br ^bb84
^bb84:
  %v168 = sea.load %v149[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_147")
  %v169 = sea.ptr.null : !sea.ptr<64> loc("_148")
  %v170 = sea.ptr.cmp ne, %v168, %v169 : !sea.ptr<64> loc("_148")
  %v171 = sea.const 1 : i1 loc("or.cond")
  %v172 = sea.const 0 : i1 loc("or.cond")
  %v173 = sea.select %v171, %v170, %v172 : i1 loc("or.cond")
  sea.cond_br %v173, ^bb90, ^bb120
^bb85:
  sea.br ^bb86
^bb86:
  %v174 = sea.const 0 : i64 loc("_137"("aws-c-common/source/byte_buf.c":60:45))
  %v175 = sea.icmp eq, %v150, %v174 : i64 loc("_137"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v175, ^bb87, ^bb89 loc("aws-c-common/source/byte_buf.c":60:50)
^bb87:
  sea.br ^bb88
^bb88:
  %v176 = sea.load %v149[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_140"("aws-c-common/source/byte_buf.c":60:58))
  %v177 = sea.ptr.null : !sea.ptr<64> loc("_141"("aws-c-common/source/byte_buf.c":60:65))
  %v178 = sea.ptr.cmp eq, %v176, %v177 : !sea.ptr<64> loc("_141"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v178, ^bb90, ^bb89 loc("aws-c-common/source/byte_buf.c":60:74)
^bb89:
  sea.br ^bb120
^bb90:
  sea.br ^bb91
^bb91:
  %v179 = sea.load %v53[%v52] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_150"("aws-c-common/source/byte_buf.c":60:19))
  %v180 = sea.const 0 : i64 loc(".not35"("aws-c-common/source/byte_buf.c":60:28))
  %v181 = sea.icmp eq, %v179, %v180 : i64 loc(".not35"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v181, ^bb99, ^bb92 loc("aws-c-common/source/byte_buf.c":60:33)
^bb92:
  sea.br ^bb93
^bb93:
  sea.br ^bb94
^bb94:
  %v182 = sea.load %v51[%v7] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_161"("aws-c-common/source/byte_buf.c":61:40))
  sea.br ^bb95
^bb95:
  %v183 = sea.icmp ugt, %v182, %v179 : i64 loc(".not2.i5.i"("aws-c-common/source/byte_buf.c":61:44))
  %v184 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v183, ^bb104(%v182, %v184 : i64, i1), ^bb96 loc("aws-c-common/source/byte_buf.c":61:61)
^bb96:
  sea.br ^bb97
^bb97:
  sea.br ^bb98
^bb98:
  %v185 = sea.load %v68[%v67] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_166"("aws-c-common/source/byte_buf.c":61:64))
  %v186 = sea.ptr.null : !sea.ptr<64> loc("_167"("aws-c-common/source/byte_buf.c":61:64))
  %v187 = sea.ptr.cmp ne, %v185, %v186 : !sea.ptr<64> loc("_167"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb104(%v182, %v187 : i64, i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb99:
  sea.br ^bb100
^bb100:
  %v188 = sea.load %v51[%v7] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_153"("aws-c-common/source/byte_buf.c":60:41))
  %v189 = sea.const 0 : i64 loc("_154"("aws-c-common/source/byte_buf.c":60:45))
  %v190 = sea.icmp eq, %v188, %v189 : i64 loc("_154"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v190, ^bb101, ^bb103 loc("aws-c-common/source/byte_buf.c":60:50)
^bb101:
  sea.br ^bb102
^bb102:
  %v191 = sea.load %v68[%v67] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_157"("aws-c-common/source/byte_buf.c":60:58))
  %v192 = sea.ptr.null : !sea.ptr<64> loc("_158"("aws-c-common/source/byte_buf.c":60:65))
  %v193 = sea.ptr.cmp eq, %v191, %v192 : !sea.ptr<64> loc("_158"("aws-c-common/source/byte_buf.c":60:65))
  %v194 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":60:74)
  %v195 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v193, ^bb104(%v194, %v195 : i64, i1), ^bb103 loc("aws-c-common/source/byte_buf.c":60:74)
^bb103:
  %v196 = sea.const 0 : i1
  sea.br ^bb104(%v188, %v196 : i64, i1)
^bb104(%v197 : i64, %v198 : i1):
  sea.br ^bb105
^bb105:
  sea.cond_br %v181, ^bb111, ^bb106 loc("aws-c-common/source/byte_buf.c":60:33)
^bb106:
  sea.br ^bb107
^bb107:
  sea.br ^bb108
^bb108:
  %v199 = sea.icmp ule, %v197, %v179 : i64 loc(".not2.i.i")
  %v200 = sea.const 1 : i1 loc("or.cond19.not")
  %v201 = sea.const 0 : i1 loc("or.cond19.not")
  %v202 = sea.select %v200, %v199, %v201 : i1 loc("or.cond19.not")
  sea.cond_br %v202, ^bb109, ^bb120
^bb109:
  sea.br ^bb110
^bb110:
  %v203 = sea.load %v68[%v67] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_183")
  %v204 = sea.ptr.null : !sea.ptr<64> loc("_184")
  %v205 = sea.ptr.cmp ne, %v203, %v204 : !sea.ptr<64> loc("_184")
  %v206 = sea.const 1 : i1 loc("or.cond12")
  %v207 = sea.const 0 : i1 loc("or.cond12")
  %v208 = sea.select %v206, %v205, %v207 : i1 loc("or.cond12")
  sea.cond_br %v208, ^bb116(%v203 : !sea.ptr<64>), ^bb120
^bb111:
  sea.br ^bb112
^bb112:
  %v209 = sea.const 0 : i64 loc("_173"("aws-c-common/source/byte_buf.c":60:45))
  %v210 = sea.icmp eq, %v197, %v209 : i64 loc("_173"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v210, ^bb113, ^bb115 loc("aws-c-common/source/byte_buf.c":60:50)
^bb113:
  sea.br ^bb114
^bb114:
  %v211 = sea.load %v68[%v67] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_176"("aws-c-common/source/byte_buf.c":60:58))
  %v212 = sea.ptr.null : !sea.ptr<64> loc("_177"("aws-c-common/source/byte_buf.c":60:65))
  %v213 = sea.ptr.cmp eq, %v211, %v212 : !sea.ptr<64> loc("_177"("aws-c-common/source/byte_buf.c":60:65))
  %v214 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v213, ^bb116(%v214 : !sea.ptr<64>), ^bb115 loc("aws-c-common/source/byte_buf.c":60:74)
^bb115:
  sea.br ^bb120
^bb116(%v215 : !sea.ptr<64>):
  %v216 = sea.load %v149[%v43] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_186"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":46:5))
  %v217 = sea.mem.is_modified %v10[%v216] : !sea.mem<!sea.ptr<64>, i8> loc("_187"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":46:5))
  %v218 = sea.const 1 : i1 loc("_188"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":46:5))
  %v219 = sea.xor %v217, %v218 : i1 loc("_188"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":46:5))
  %v220 = sea.mem.is_modified %v10[%v216] : !sea.mem<!sea.ptr<64>, i8> loc("_189"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":46:5))
  sea.cond_br %v220, ^bb120, ^bb117 loc("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":46:5)
^bb117:
  %v221 = sea.mem.is_modified %v51[%v7] : !sea.mem<!sea.ptr<64>, i8> loc("_191"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":48:5))
  %v222 = sea.const 1 : i1 loc("_192"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":48:5))
  %v223 = sea.xor %v221, %v222 : i1 loc("_192"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":48:5))
  %v224 = sea.mem.is_modified %v51[%v7] : !sea.mem<!sea.ptr<64>, i8> loc("_193"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":48:5))
  sea.cond_br %v224, ^bb120, ^bb118 loc("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":48:5)
^bb118:
  %v225 = sea.mem.is_modified %v148[%v215] : !sea.mem<!sea.ptr<64>, i8> loc("_195"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":49:5))
  %v226 = sea.const 1 : i1 loc("_196"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":49:5))
  %v227 = sea.xor %v225, %v226 : i1 loc("_196"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":49:5))
  %v228 = sea.mem.is_modified %v148[%v215] : !sea.mem<!sea.ptr<64>, i8> loc("_197"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":49:5))
  sea.cond_br %v228, ^bb120, ^bb119 loc("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":49:5)
^bb119:
  %v229 = sea.load %v71[%v69] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_199"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":50:5))
  %v230 = sea.mem.is_modified %v10[%v229] : !sea.mem<!sea.ptr<64>, i8> loc("_200"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":50:5))
  %v231 = sea.const 1 : i1 loc("_201"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":50:5))
  %v232 = sea.xor %v230, %v231 : i1 loc("_201"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":50:5))
  %v233 = sea.mem.is_modified %v10[%v229] : !sea.mem<!sea.ptr<64>, i8> loc("_202"("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":50:5))
  sea.assume %v233 loc("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":50:5)
  sea.br ^bb120 loc("seahorn/jobs2/byte_buf_write_from_whole_buffer2/aws_byte_buf_write_from_whole_buffer_harness2.c":50:5)
^bb120:
  sea.br ^bb121
^bb121:
  %v234 = sea.const 0 : i1
  sea.assert %v234
  sea.halt
}
