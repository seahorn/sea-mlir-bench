// Exported from SeaHorn (byte_buf_write_from_whole_cursor2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm15")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm16")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm17")
  %v3 = sea.mem.nondet "region.64" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm18")
  %v4 = sea.const 32 : i64 loc("_0")
  %v5 = sea.alloca %v4 align 8 [4] : i64 -> !sea.ptr<64> loc("_0")
  %v6 = sea.const 16 : i64 loc("_1")
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
  %v46 = sea.nondet "nd_size_t" [11] : i64 loc("_20"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb9
^bb9:
  %v47 = sea.store %v2[%v7], %v46 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb10
^bb10:
  %v48 = sea.const 11 : i64 loc("_23"("seahorn/lib/byte_buf_helper.c":33:24))
  %v49 = sea.icmp ult, %v46, %v48 : i64 loc("_23"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v49 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v50 = sea.nondet "nd_malloc_is_fail" [12] : i1 loc("_24"("seahorn/lib/sea_allocators.c":11:10))
  %v51 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v50, ^bb12(%v39, %v51 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb11 loc("seahorn/lib/sea_allocators.c":11:10)
^bb11:
  %v52 = sea.const 10 : i64 loc("malloc26.i5")
  %v53 = sea.alloca %v52 align 16 [13] : i64 -> !sea.ptr<64> loc("malloc26.i5")
  sea.br ^bb12(%v39, %v53 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb12(%v54 : !sea.mem<!sea.ptr<64>, i8>, %v55 : !sea.ptr<64>):
  %v56 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v57 = sea.memhavoc %v54[%v55], %v56 [14] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v58 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_27"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb13
^bb13:
  %v59 = sea.store %v47[%v58], %v55 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  sea.br ^bb14
^bb14:
  sea.cond_br %v29, ^bb22, ^bb15 loc("aws-c-common/source/byte_buf.c":60:33)
^bb15:
  sea.br ^bb16
^bb16:
  sea.br ^bb17
^bb17:
  sea.br ^bb18
^bb18:
  %v60 = sea.icmp ugt, %v20, %v21 : i64 loc(".not2.i9.i"("aws-c-common/source/byte_buf.c":61:44))
  %v61 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v60, ^bb27(%v61 : i1), ^bb19 loc("aws-c-common/source/byte_buf.c":61:61)
^bb19:
  sea.br ^bb20
^bb20:
  sea.br ^bb21
^bb21:
  %v62 = sea.ptr.null : !sea.ptr<64> loc("_41"("aws-c-common/source/byte_buf.c":61:64))
  %v63 = sea.ptr.cmp ne, %v40, %v62 : !sea.ptr<64> loc("_41"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb27(%v63 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb22:
  sea.br ^bb23
^bb23:
  %v64 = sea.const 0 : i64 loc("_31"("aws-c-common/source/byte_buf.c":60:45))
  %v65 = sea.icmp eq, %v20, %v64 : i64 loc("_31"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v65, ^bb24, ^bb26 loc("aws-c-common/source/byte_buf.c":60:50)
^bb24:
  sea.br ^bb25
^bb25:
  %v66 = sea.ptr.null : !sea.ptr<64> loc("_34"("aws-c-common/source/byte_buf.c":60:65))
  %v67 = sea.ptr.cmp eq, %v40, %v66 : !sea.ptr<64> loc("_34"("aws-c-common/source/byte_buf.c":60:65))
  %v68 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v67, ^bb27(%v68 : i1), ^bb26 loc("aws-c-common/source/byte_buf.c":60:74)
^bb26:
  %v69 = sea.const 0 : i1
  sea.br ^bb27(%v69 : i1)
^bb27(%v70 : i1):
  sea.assume %v70 loc("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":18:5)
  sea.br ^bb28
^bb28:
  %v71 = sea.const 0 : i64 loc("_44"("aws-c-common/source/byte_buf.c":66:26))
  %v72 = sea.icmp eq, %v46, %v71 : i64 loc("_44"("aws-c-common/source/byte_buf.c":66:26))
  sea.cond_br %v72, ^bb48, ^bb29 loc("aws-c-common/source/byte_buf.c":66:32)
^bb29:
  sea.br ^bb30
^bb30:
  sea.br ^bb31
^bb31:
  %v73 = sea.ptr.null : !sea.ptr<64> loc(".not2.i20.i"("aws-c-common/source/byte_buf.c":66:55))
  %v74 = sea.ptr.cmp ne, %v55, %v73 : !sea.ptr<64> loc(".not2.i20.i"("aws-c-common/source/byte_buf.c":66:55))
  sea.cond_br %v74, ^bb32, ^bb34 loc("aws-c-common/source/byte_buf.c":66:67)
^bb32:
  sea.br ^bb33
^bb33:
  sea.br ^bb34
^bb34:
  sea.assume %v74 loc("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":19:5)
  sea.tracking_on loc("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":24:5)
  sea.br ^bb35
^bb35:
  %v75 = sea.or %v46, %v20 : i64 loc("_51"("aws-c-common/source/byte_buf.c":1452:36))
  %v76 = sea.const 18446744073709551615 : i64 loc("or.cond.i.i.i.not"("aws-c-common/source/byte_buf.c":1452:36))
  %v77 = sea.icmp sgt, %v75, %v76 : i64 loc("or.cond.i.i.i.not"("aws-c-common/source/byte_buf.c":1452:36))
  sea.cond_br %v77, ^bb36, ^bb46 loc("aws-c-common/source/byte_buf.c":1452:36)
^bb36:
  sea.br ^bb37
^bb37:
  sea.br ^bb38
^bb38:
  %v78 = sea.add %v46, %v20 : i64 loc("_55"("aws-c-common/source/byte_buf.c":1452:73))
  %v79 = sea.icmp ugt, %v78, %v21 : i64 loc("_56"("aws-c-common/source/byte_buf.c":1452:79))
  sea.cond_br %v79, ^bb46, ^bb39 loc("aws-c-common/source/byte_buf.c":1452:9)
^bb39:
  sea.br ^bb40
^bb40:
  sea.br ^bb41
^bb41:
  %v80 = sea.ptr.index %v40 [%v20] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_60"("aws-c-common/source/byte_buf.c":1457:24))
  %v81 = sea.ptr.dereferenceable %v80, %v46 : !sea.ptr<64>, i64 loc("_61"("seahorn/lib/bcmp.c":161:3))
  %v82 = sea.ptr.dereferenceable %v80, %v46 : !sea.ptr<64>, i64 loc("_62"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v82, ^bb42, ^bb97 loc("seahorn/lib/bcmp.c":161:3)
^bb42:
  %v83 = sea.ptr.dereferenceable %v55, %v46 : !sea.ptr<64>, i64 loc("_64"("seahorn/lib/bcmp.c":162:3))
  %v84 = sea.ptr.dereferenceable %v55, %v46 : !sea.ptr<64>, i64 loc("_65"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v84, ^bb43, ^bb97 loc("seahorn/lib/bcmp.c":162:3)
^bb43:
  %v85 = sea.memmove %v57[%v80], %v57[%v55], %v46 inplace src_align 16 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb44
^bb44:
  sea.br ^bb45
^bb45:
  %v86 = sea.load %v47[%v7] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc(".pre"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":28:9))
  sea.br ^bb49(%v85, %v86, %v78 : !sea.mem<!sea.ptr<64>, i8>, i64, i64) loc("aws-c-common/source/byte_buf.c":1461:5)
^bb46:
  %v87 = sea.mem.is_modified %v25[%v5] : !sea.mem<!sea.ptr<64>, i8> loc("_94"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":34:9))
  %v88 = sea.const 1 : i1 loc("_95"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":34:9))
  %v89 = sea.xor %v87, %v88 : i1 loc("_95"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":34:9))
  %v90 = sea.mem.is_modified %v25[%v5] : !sea.mem<!sea.ptr<64>, i8> loc("_96"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":34:9))
  sea.cond_br %v90, ^bb97, ^bb47 loc("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":34:9)
^bb47:
  %v91 = sea.mem.is_modified %v57[%v40] : !sea.mem<!sea.ptr<64>, i8> loc("_98"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":35:9))
  %v92 = sea.const 1 : i1 loc("_99"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":35:9))
  %v93 = sea.xor %v91, %v92 : i1 loc("_99"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":35:9))
  %v94 = sea.mem.is_modified %v57[%v40] : !sea.mem<!sea.ptr<64>, i8> loc("_100"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":35:9))
  %v95 = sea.const 1 : i64 loc("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":35:9)
  sea.cond_br %v94, ^bb97, ^bb55(%v57, %v95, %v20 : !sea.mem<!sea.ptr<64>, i8>, i64, i64) loc("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":35:9)
^bb48:
  %v96 = sea.const 1 : i1 loc("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":19:5)
  sea.assume %v96 loc("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":19:5)
  sea.tracking_on loc("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":24:5)
  %v97 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":1447:9)
  sea.br ^bb49(%v57, %v97, %v20 : !sea.mem<!sea.ptr<64>, i8>, i64, i64) loc("aws-c-common/source/byte_buf.c":1447:9)
^bb49(%v98 : !sea.mem<!sea.ptr<64>, i8>, %v99 : i64, %v100 : i64):
  %v101 = sea.add %v99, %v20 : i64 loc("_70"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":28:9))
  %v102 = sea.icmp eq, %v100, %v101 : i64 loc("_71"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":28:9))
  sea.cond_br %v102, ^bb50, ^bb97 loc("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":28:9)
^bb50:
  %v103 = sea.load %v27[%v26] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_73"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":29:9))
  %v104 = sea.icmp eq, %v103, %v21 : i64 loc("_74"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":29:9))
  sea.cond_br %v104, ^bb51, ^bb97 loc("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":29:9)
^bb51:
  %v105 = sea.const 0 : i64 loc("_76"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":30:21))
  %v106 = sea.icmp ne, %v99, %v105 : i64 loc("_76"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":30:21))
  %v107 = sea.const 0 : i64 loc("_77")
  %v108 = sea.icmp ne, %v100, %v107 : i64 loc("_77")
  %v109 = sea.const 0 : i1 loc("or.cond.i"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":30:25))
  %v110 = sea.select %v106, %v108, %v109 : i1 loc("or.cond.i"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":30:25))
  sea.cond_br %v110, ^bb52, ^bb55(%v98, %v99, %v100 : !sea.mem<!sea.ptr<64>, i8>, i64, i64) loc("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":30:25)
^bb52:
  %v111 = sea.load %v42[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_79"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":31:36))
  %v112 = sea.ptr.index %v111 [%v20] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_80"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":31:43))
  %v113 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v114 = sea.ptr.cmp eq, %v111, %v113 : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v115 = sea.ptr.null : !sea.ptr<64> loc("_81"("seahorn/lib/utils.c":15:3))
  %v116 = sea.ptr.cmp ne, %v55, %v115 : !sea.ptr<64> loc("_81"("seahorn/lib/utils.c":15:3))
  %v117 = sea.xor %v116, %v114 : i1 loc("_82"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v117, ^bb53, ^bb97 loc("seahorn/lib/utils.c":15:3)
^bb53:
  %v118 = sea.ptr.null : !sea.ptr<64> loc("_83")
  %v119 = sea.ptr.cmp ne, %v111, %v118 : !sea.ptr<64> loc("_83")
  %v120 = sea.and %v116, %v119 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  %v121 = sea.const 1 : i64 loc("seahorn/lib/utils.c":16:15)
  sea.cond_br %v120, ^bb54, ^bb55(%v98, %v121, %v100 : !sea.mem<!sea.ptr<64>, i8>, i64, i64) loc("seahorn/lib/utils.c":16:15)
^bb54:
  %v122 = sea.nondet "nd_size_t" [15] : i64 loc("_85"("seahorn/lib/utils.c":17:16))
  %v123 = sea.icmp ult, %v122, %v99 : i64 loc("_86"("seahorn/lib/utils.c":19:14))
  %v124 = sea.const 36028797018963967 : i64 loc("_87"("seahorn/lib/utils.c":19:20))
  %v125 = sea.icmp ult, %v99, %v124 : i64 loc("_87"("seahorn/lib/utils.c":19:20))
  %v126 = sea.and %v125, %v123 : i1 loc("_88"("seahorn/lib/utils.c":19:20))
  sea.assume %v126 loc("seahorn/lib/utils.c":19:5)
  %v127 = sea.ptr.index %v112 [%v122] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_89"("seahorn/lib/utils.c":20:5))
  %v128 = sea.load %v98[%v127] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_90"("seahorn/lib/utils.c":20:5))
  %v129 = sea.ptr.index %v55 [%v122] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_91"("seahorn/lib/utils.c":20:5))
  %v130 = sea.load %v98[%v129] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_92"("seahorn/lib/utils.c":20:5))
  %v131 = sea.icmp eq, %v128, %v130 : i8 loc("_93"("seahorn/lib/utils.c":20:5))
  %v132 = sea.const 1 : i64 loc("seahorn/lib/utils.c":20:5)
  sea.cond_br %v131, ^bb55(%v98, %v132, %v100 : !sea.mem<!sea.ptr<64>, i8>, i64, i64), ^bb97 loc("seahorn/lib/utils.c":20:5)
^bb55(%v133 : !sea.mem<!sea.ptr<64>, i8>, %v134 : i64, %v135 : i64):
  sea.br ^bb56
^bb56:
  sea.cond_br %v29, ^bb64, ^bb57 loc("aws-c-common/source/byte_buf.c":60:33)
^bb57:
  sea.br ^bb58
^bb58:
  sea.br ^bb59
^bb59:
  sea.br ^bb60
^bb60:
  %v136 = sea.icmp ugt, %v135, %v21 : i64 loc(".not2.i5.i"("aws-c-common/source/byte_buf.c":61:44))
  %v137 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v136, ^bb69(%v137 : i1), ^bb61 loc("aws-c-common/source/byte_buf.c":61:61)
^bb61:
  sea.br ^bb62
^bb62:
  sea.br ^bb63
^bb63:
  %v138 = sea.load %v42[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_117"("aws-c-common/source/byte_buf.c":61:64))
  %v139 = sea.ptr.null : !sea.ptr<64> loc("_118"("aws-c-common/source/byte_buf.c":61:64))
  %v140 = sea.ptr.cmp ne, %v138, %v139 : !sea.ptr<64> loc("_118"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb69(%v140 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb64:
  sea.br ^bb65
^bb65:
  %v141 = sea.const 0 : i64 loc("_106"("aws-c-common/source/byte_buf.c":60:45))
  %v142 = sea.icmp eq, %v135, %v141 : i64 loc("_106"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v142, ^bb66, ^bb68 loc("aws-c-common/source/byte_buf.c":60:50)
^bb66:
  sea.br ^bb67
^bb67:
  %v143 = sea.load %v42[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_109"("aws-c-common/source/byte_buf.c":60:58))
  %v144 = sea.ptr.null : !sea.ptr<64> loc("_110"("aws-c-common/source/byte_buf.c":60:65))
  %v145 = sea.ptr.cmp eq, %v143, %v144 : !sea.ptr<64> loc("_110"("aws-c-common/source/byte_buf.c":60:65))
  %v146 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v145, ^bb69(%v146 : i1), ^bb68 loc("aws-c-common/source/byte_buf.c":60:74)
^bb68:
  %v147 = sea.const 0 : i1
  sea.br ^bb69(%v147 : i1)
^bb69(%v148 : i1):
  sea.br ^bb70
^bb70:
  sea.cond_br %v29, ^bb76, ^bb71 loc("aws-c-common/source/byte_buf.c":60:33)
^bb71:
  sea.br ^bb72
^bb72:
  sea.br ^bb73
^bb73:
  %v149 = sea.icmp ule, %v135, %v21 : i64 loc(".not2.i.i")
  %v150 = sea.const 1 : i1 loc("or.cond15.not")
  %v151 = sea.const 0 : i1 loc("or.cond15.not")
  %v152 = sea.select %v150, %v149, %v151 : i1 loc("or.cond15.not")
  sea.cond_br %v152, ^bb74, ^bb97
^bb74:
  sea.br ^bb75
^bb75:
  %v153 = sea.load %v42[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_133")
  %v154 = sea.ptr.null : !sea.ptr<64> loc("_134")
  %v155 = sea.ptr.cmp ne, %v153, %v154 : !sea.ptr<64> loc("_134")
  %v156 = sea.const 1 : i1 loc("or.cond")
  %v157 = sea.const 0 : i1 loc("or.cond")
  %v158 = sea.select %v156, %v155, %v157 : i1 loc("or.cond")
  sea.cond_br %v158, ^bb81, ^bb97
^bb76:
  sea.br ^bb77
^bb77:
  %v159 = sea.const 0 : i64 loc("_123"("aws-c-common/source/byte_buf.c":60:45))
  %v160 = sea.icmp eq, %v135, %v159 : i64 loc("_123"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v160, ^bb78, ^bb80 loc("aws-c-common/source/byte_buf.c":60:50)
^bb78:
  sea.br ^bb79
^bb79:
  %v161 = sea.load %v42[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_126"("aws-c-common/source/byte_buf.c":60:58))
  %v162 = sea.ptr.null : !sea.ptr<64> loc("_127"("aws-c-common/source/byte_buf.c":60:65))
  %v163 = sea.ptr.cmp eq, %v161, %v162 : !sea.ptr<64> loc("_127"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v163, ^bb81, ^bb80 loc("aws-c-common/source/byte_buf.c":60:74)
^bb80:
  sea.br ^bb97
^bb81:
  sea.br ^bb82
^bb82:
  %v164 = sea.const 0 : i64 loc("_136"("aws-c-common/source/byte_buf.c":66:26))
  %v165 = sea.icmp eq, %v134, %v164 : i64 loc("_136"("aws-c-common/source/byte_buf.c":66:26))
  %v166 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v165, ^bb88(%v166 : i1), ^bb83 loc("aws-c-common/source/byte_buf.c":66:32)
^bb83:
  sea.br ^bb84
^bb84:
  sea.br ^bb85
^bb85:
  %v167 = sea.load %v59[%v58] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_140"("aws-c-common/source/byte_buf.c":66:63))
  %v168 = sea.ptr.null : !sea.ptr<64> loc(".not2.i16.i"("aws-c-common/source/byte_buf.c":66:55))
  %v169 = sea.ptr.cmp eq, %v167, %v168 : !sea.ptr<64> loc(".not2.i16.i"("aws-c-common/source/byte_buf.c":66:55))
  %v170 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v169, ^bb88(%v170 : i1), ^bb86 loc("aws-c-common/source/byte_buf.c":66:67)
^bb86:
  sea.br ^bb87
^bb87:
  %v171 = sea.const 1 : i1
  sea.br ^bb88(%v171 : i1)
^bb88(%v172 : i1):
  sea.br ^bb89
^bb89:
  sea.cond_br %v165, ^bb94, ^bb90 loc("aws-c-common/source/byte_buf.c":66:32)
^bb90:
  sea.br ^bb91
^bb91:
  %v173 = sea.load %v59[%v58] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_147")
  %v174 = sea.ptr.null : !sea.ptr<64> loc(".not2.i13.i")
  %v175 = sea.ptr.cmp ne, %v173, %v174 : !sea.ptr<64> loc(".not2.i13.i")
  %v176 = sea.const 1 : i1 loc("or.cond19.not")
  %v177 = sea.const 0 : i1 loc("or.cond19.not")
  %v178 = sea.select %v176, %v175, %v177 : i1 loc("or.cond19.not")
  sea.cond_br %v178, ^bb92, ^bb97
^bb92:
  sea.br ^bb93
^bb93:
  sea.br ^bb94
^bb94:
  %v179 = sea.load %v45[%v43] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_150"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":41:5))
  %v180 = sea.mem.is_modified %v10[%v179] : !sea.mem<!sea.ptr<64>, i8> loc("_151"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":41:5))
  %v181 = sea.const 1 : i1 loc("_152"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":41:5))
  %v182 = sea.xor %v180, %v181 : i1 loc("_152"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":41:5))
  %v183 = sea.mem.is_modified %v10[%v179] : !sea.mem<!sea.ptr<64>, i8> loc("_153"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":41:5))
  sea.cond_br %v183, ^bb97, ^bb95 loc("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":41:5)
^bb95:
  %v184 = sea.mem.is_modified %v47[%v7] : !sea.mem<!sea.ptr<64>, i8> loc("_155"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":43:5))
  %v185 = sea.const 1 : i1 loc("_156"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":43:5))
  %v186 = sea.xor %v184, %v185 : i1 loc("_156"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":43:5))
  %v187 = sea.mem.is_modified %v47[%v7] : !sea.mem<!sea.ptr<64>, i8> loc("_157"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":43:5))
  sea.cond_br %v187, ^bb97, ^bb96 loc("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":43:5)
^bb96:
  %v188 = sea.load %v59[%v58] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_159"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":44:5))
  %v189 = sea.mem.is_modified %v133[%v188] : !sea.mem<!sea.ptr<64>, i8> loc("_160"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":44:5))
  %v190 = sea.const 1 : i1 loc("_161"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":44:5))
  %v191 = sea.xor %v189, %v190 : i1 loc("_161"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":44:5))
  %v192 = sea.mem.is_modified %v133[%v188] : !sea.mem<!sea.ptr<64>, i8> loc("_162"("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":44:5))
  sea.assume %v192 loc("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":44:5)
  sea.br ^bb97 loc("seahorn/jobs2/byte_buf_write_from_whole_cursor2/aws_byte_buf_write_from_whole_cursor_harness2.c":44:5)
^bb97:
  sea.br ^bb98
^bb98:
  %v193 = sea.const 0 : i1
  sea.assert %v193
  sea.halt
}
