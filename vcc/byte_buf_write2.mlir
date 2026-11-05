// Exported from SeaHorn (byte_buf_write2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm16")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm17")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm18")
  %v3 = sea.mem.nondet "region.57" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm19")
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
  %v46 = sea.nondet "nd_size_t" [11] : i64 loc("_20"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":15:18))
  %v47 = sea.const 11 : i64 loc("_21"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":16:17))
  %v48 = sea.icmp ult, %v46, %v47 : i64 loc("_21"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":16:17))
  sea.assume %v48 loc("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":16:5)
  %v49 = sea.nondet "nd_malloc_is_fail" [12] : i1 loc("_22"("seahorn/lib/sea_allocators.c":11:10))
  %v50 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v49, ^bb10(%v39, %v50 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb9 loc("seahorn/lib/sea_allocators.c":11:10)
^bb9:
  %v51 = sea.const 10 : i64 loc("malloc25.i6")
  %v52 = sea.alloca %v51 align 16 [13] : i64 -> !sea.ptr<64> loc("malloc25.i6")
  sea.br ^bb10(%v39, %v52 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb10(%v53 : !sea.mem<!sea.ptr<64>, i8>, %v54 : !sea.ptr<64>):
  %v55 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v56 = sea.memhavoc %v53[%v54], %v55 [14] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v57 = sea.ptr.null : !sea.ptr<64> loc("_25"("seahorn/lib/sea_allocators.c":45:10))
  %v58 = sea.ptr.cmp ne, %v54, %v57 : !sea.ptr<64> loc("_25"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v58 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb11
^bb11:
  sea.cond_br %v29, ^bb19, ^bb12 loc("aws-c-common/source/byte_buf.c":60:33)
^bb12:
  sea.br ^bb13
^bb13:
  sea.br ^bb14
^bb14:
  sea.br ^bb15
^bb15:
  %v59 = sea.icmp ugt, %v20, %v21 : i64 loc(".not2.i18.i"("aws-c-common/source/byte_buf.c":61:44))
  %v60 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v59, ^bb24(%v60 : i1), ^bb16 loc("aws-c-common/source/byte_buf.c":61:61)
^bb16:
  sea.br ^bb17
^bb17:
  sea.br ^bb18
^bb18:
  %v61 = sea.ptr.null : !sea.ptr<64> loc("_39"("aws-c-common/source/byte_buf.c":61:64))
  %v62 = sea.ptr.cmp ne, %v40, %v61 : !sea.ptr<64> loc("_39"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb24(%v62 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb19:
  sea.br ^bb20
^bb20:
  %v63 = sea.const 0 : i64 loc("_29"("aws-c-common/source/byte_buf.c":60:45))
  %v64 = sea.icmp eq, %v20, %v63 : i64 loc("_29"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v64, ^bb21, ^bb23 loc("aws-c-common/source/byte_buf.c":60:50)
^bb21:
  sea.br ^bb22
^bb22:
  %v65 = sea.ptr.null : !sea.ptr<64> loc("_32"("aws-c-common/source/byte_buf.c":60:65))
  %v66 = sea.ptr.cmp eq, %v40, %v65 : !sea.ptr<64> loc("_32"("aws-c-common/source/byte_buf.c":60:65))
  %v67 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v66, ^bb24(%v67 : i1), ^bb23 loc("aws-c-common/source/byte_buf.c":60:74)
^bb23:
  %v68 = sea.const 0 : i1
  sea.br ^bb24(%v68 : i1)
^bb24(%v69 : i1):
  sea.assume %v69 loc("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":20:5)
  %v70 = sea.nondet "nd_size_t" [15] : i64 loc("_41"("seahorn/lib/utils.c":46:20))
  sea.br ^bb25
^bb25:
  %v71 = sea.store %v2[%v7], %v70 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v72 = sea.const 0 : i64 loc("_43"("seahorn/lib/utils.c":47:12))
  %v73 = sea.icmp ne, %v20, %v72 : i64 loc("_43"("seahorn/lib/utils.c":47:12))
  %v74 = sea.ptr.null : !sea.ptr<64> loc("_44")
  %v75 = sea.ptr.cmp ne, %v40, %v74 : !sea.ptr<64> loc("_44")
  %v76 = sea.and %v73, %v75 : i1 loc("or.cond.i23.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v76, ^bb28, ^bb26 loc("seahorn/lib/utils.c":47:16)
^bb26:
  %v77 = sea.nondet "nd_uint8_t" [16] : i8 loc("_56"("seahorn/lib/utils.c":51:21))
  %v78 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_57"("seahorn/lib/utils.c":51:14))
  sea.br ^bb27
^bb27:
  %v79 = sea.store %v71[%v78], %v77 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb33
^bb28:
  sea.br ^bb29
^bb29:
  %v80 = sea.icmp ult, %v70, %v20 : i64 loc("_47"("seahorn/lib/utils.c":48:27))
  sea.assume %v80 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb30
^bb30:
  %v81 = sea.ptr.index %v40 [%v70] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_49"("seahorn/lib/utils.c":49:21))
  %v82 = sea.const 1 : i64 loc("_50"("seahorn/lib/utils.c":49:21))
  %v83 = sea.ptr.dereferenceable %v81, %v82 : !sea.ptr<64>, i64 loc("_50"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v83, ^bb31, ^bb80
^bb31:
  %v84 = sea.load %v56[%v81] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_52"("seahorn/lib/utils.c":49:21))
  %v85 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_53"("seahorn/lib/utils.c":49:14))
  sea.br ^bb32
^bb32:
  %v86 = sea.store %v71[%v85], %v84 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb33 loc("seahorn/lib/utils.c":50:3)
^bb33:
  sea.tracking_on loc("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":29:5)
  %v87 = sea.const 0 : i64 loc("_59"("aws-c-common/source/byte_buf.c":1447:13))
  %v88 = sea.icmp eq, %v46, %v87 : i64 loc("_59"("aws-c-common/source/byte_buf.c":1447:13))
  sea.cond_br %v88, ^bb48(%v56, %v21, %v20 : !sea.mem<!sea.ptr<64>, i8>, i64, i64), ^bb34 loc("aws-c-common/source/byte_buf.c":1447:9)
^bb34:
  sea.br ^bb35
^bb35:
  %v89 = sea.or %v46, %v20 : i64 loc("_62"("aws-c-common/source/byte_buf.c":1452:36))
  %v90 = sea.const 18446744073709551615 : i64 loc("or.cond.i.i.not"("aws-c-common/source/byte_buf.c":1452:36))
  %v91 = sea.icmp sgt, %v89, %v90 : i64 loc("or.cond.i.i.not"("aws-c-common/source/byte_buf.c":1452:36))
  sea.cond_br %v91, ^bb36, ^bb46 loc("aws-c-common/source/byte_buf.c":1452:36)
^bb36:
  sea.br ^bb37
^bb37:
  sea.br ^bb38
^bb38:
  %v92 = sea.add %v46, %v20 : i64 loc("_66"("aws-c-common/source/byte_buf.c":1452:73))
  %v93 = sea.icmp ugt, %v92, %v21 : i64 loc("_67"("aws-c-common/source/byte_buf.c":1452:79))
  sea.cond_br %v93, ^bb46, ^bb39 loc("aws-c-common/source/byte_buf.c":1452:9)
^bb39:
  sea.br ^bb40
^bb40:
  sea.br ^bb41
^bb41:
  %v94 = sea.ptr.index %v40 [%v20] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_71"("aws-c-common/source/byte_buf.c":1457:24))
  %v95 = sea.ptr.dereferenceable %v94, %v46 : !sea.ptr<64>, i64 loc("_72"("seahorn/lib/bcmp.c":161:3))
  %v96 = sea.ptr.dereferenceable %v94, %v46 : !sea.ptr<64>, i64 loc("_73"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v96, ^bb42, ^bb80 loc("seahorn/lib/bcmp.c":161:3)
^bb42:
  %v97 = sea.ptr.dereferenceable %v54, %v46 : !sea.ptr<64>, i64 loc("_75"("seahorn/lib/bcmp.c":162:3))
  %v98 = sea.ptr.dereferenceable %v54, %v46 : !sea.ptr<64>, i64 loc("_76"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v98, ^bb43, ^bb80 loc("seahorn/lib/bcmp.c":162:3)
^bb43:
  %v99 = sea.memmove %v56[%v94], %v56[%v54], %v46 inplace src_align 16 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb44
^bb44:
  sea.br ^bb45
^bb45:
  %v100 = sea.load %v27[%v26] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc(".pre"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":34:9))
  sea.br ^bb48(%v99, %v100, %v92 : !sea.mem<!sea.ptr<64>, i8>, i64, i64)
^bb46:
  %v101 = sea.mem.is_modified %v25[%v5] : !sea.mem<!sea.ptr<64>, i8> loc("_100"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":39:9))
  %v102 = sea.const 1 : i1 loc("_101"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":39:9))
  %v103 = sea.xor %v101, %v102 : i1 loc("_101"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":39:9))
  %v104 = sea.mem.is_modified %v25[%v5] : !sea.mem<!sea.ptr<64>, i8> loc("_102"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":39:9))
  sea.cond_br %v104, ^bb80, ^bb47 loc("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":39:9)
^bb47:
  %v105 = sea.mem.is_modified %v56[%v40] : !sea.mem<!sea.ptr<64>, i8> loc("_104"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":40:9))
  %v106 = sea.const 1 : i1 loc("_105"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":40:9))
  %v107 = sea.xor %v105, %v106 : i1 loc("_105"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":40:9))
  %v108 = sea.mem.is_modified %v56[%v40] : !sea.mem<!sea.ptr<64>, i8> loc("_106"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":40:9))
  sea.cond_br %v108, ^bb80, ^bb53(%v20 : i64) loc("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":40:9)
^bb48(%v109 : !sea.mem<!sea.ptr<64>, i8>, %v110 : i64, %v111 : i64):
  %v112 = sea.icmp eq, %v110, %v21 : i64 loc("_81"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":34:9))
  sea.cond_br %v112, ^bb49, ^bb80 loc("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":34:9)
^bb49:
  %v113 = sea.const 0 : i64 loc("_83"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":35:17))
  %v114 = sea.icmp ne, %v46, %v113 : i64 loc("_83"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":35:17))
  %v115 = sea.const 0 : i64 loc("_84")
  %v116 = sea.icmp ne, %v111, %v115 : i64 loc("_84")
  %v117 = sea.const 0 : i1 loc("or.cond.i"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":35:21))
  %v118 = sea.select %v114, %v116, %v117 : i1 loc("or.cond.i"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":35:21))
  sea.cond_br %v118, ^bb50, ^bb53(%v111 : i64) loc("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":35:21)
^bb50:
  %v119 = sea.load %v42[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_86"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":36:36))
  %v120 = sea.ptr.index %v119 [%v20] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_87"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":36:43))
  %v121 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v122 = sea.ptr.cmp eq, %v119, %v121 : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v123 = sea.xor %v58, %v122 : i1 loc("_88"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v123, ^bb51, ^bb80 loc("seahorn/lib/utils.c":15:3)
^bb51:
  %v124 = sea.ptr.null : !sea.ptr<64> loc("_89")
  %v125 = sea.ptr.cmp ne, %v119, %v124 : !sea.ptr<64> loc("_89")
  %v126 = sea.and %v58, %v125 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v126, ^bb52, ^bb53(%v111 : i64) loc("seahorn/lib/utils.c":16:15)
^bb52:
  %v127 = sea.nondet "nd_size_t" [17] : i64 loc("_91"("seahorn/lib/utils.c":17:16))
  %v128 = sea.icmp ult, %v127, %v46 : i64 loc("_92"("seahorn/lib/utils.c":19:14))
  %v129 = sea.const 36028797018963967 : i64 loc("_93"("seahorn/lib/utils.c":19:20))
  %v130 = sea.icmp ult, %v46, %v129 : i64 loc("_93"("seahorn/lib/utils.c":19:20))
  %v131 = sea.and %v130, %v128 : i1 loc("_94"("seahorn/lib/utils.c":19:20))
  sea.assume %v131 loc("seahorn/lib/utils.c":19:5)
  %v132 = sea.ptr.index %v120 [%v127] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_95"("seahorn/lib/utils.c":20:5))
  %v133 = sea.load %v109[%v132] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_96"("seahorn/lib/utils.c":20:5))
  %v134 = sea.ptr.index %v54 [%v127] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_97"("seahorn/lib/utils.c":20:5))
  %v135 = sea.load %v109[%v134] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_98"("seahorn/lib/utils.c":20:5))
  %v136 = sea.icmp eq, %v133, %v135 : i8 loc("_99"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v136, ^bb53(%v111 : i64), ^bb80 loc("seahorn/lib/utils.c":20:5)
^bb53(%v137 : i64):
  sea.br ^bb54
^bb54:
  sea.cond_br %v29, ^bb62, ^bb55 loc("aws-c-common/source/byte_buf.c":60:33)
^bb55:
  sea.br ^bb56
^bb56:
  sea.br ^bb57
^bb57:
  sea.br ^bb58
^bb58:
  %v138 = sea.icmp ugt, %v137, %v21 : i64 loc(".not2.i14.i"("aws-c-common/source/byte_buf.c":61:44))
  %v139 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v138, ^bb67(%v139 : i1), ^bb59 loc("aws-c-common/source/byte_buf.c":61:61)
^bb59:
  sea.br ^bb60
^bb60:
  sea.br ^bb61
^bb61:
  %v140 = sea.load %v42[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_122"("aws-c-common/source/byte_buf.c":61:64))
  %v141 = sea.ptr.null : !sea.ptr<64> loc("_123"("aws-c-common/source/byte_buf.c":61:64))
  %v142 = sea.ptr.cmp ne, %v140, %v141 : !sea.ptr<64> loc("_123"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb67(%v142 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb62:
  sea.br ^bb63
^bb63:
  %v143 = sea.const 0 : i64 loc("_111"("aws-c-common/source/byte_buf.c":60:45))
  %v144 = sea.icmp eq, %v137, %v143 : i64 loc("_111"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v144, ^bb64, ^bb66 loc("aws-c-common/source/byte_buf.c":60:50)
^bb64:
  sea.br ^bb65
^bb65:
  %v145 = sea.load %v42[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_114"("aws-c-common/source/byte_buf.c":60:58))
  %v146 = sea.ptr.null : !sea.ptr<64> loc("_115"("aws-c-common/source/byte_buf.c":60:65))
  %v147 = sea.ptr.cmp eq, %v145, %v146 : !sea.ptr<64> loc("_115"("aws-c-common/source/byte_buf.c":60:65))
  %v148 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v147, ^bb67(%v148 : i1), ^bb66 loc("aws-c-common/source/byte_buf.c":60:74)
^bb66:
  %v149 = sea.const 0 : i1
  sea.br ^bb67(%v149 : i1)
^bb67(%v150 : i1):
  sea.br ^bb68
^bb68:
  sea.cond_br %v29, ^bb74, ^bb69 loc("aws-c-common/source/byte_buf.c":60:33)
^bb69:
  sea.br ^bb70
^bb70:
  sea.br ^bb71
^bb71:
  %v151 = sea.icmp ule, %v137, %v21 : i64 loc(".not2.i.i")
  %v152 = sea.const 1 : i1 loc("or.cond12.not")
  %v153 = sea.const 0 : i1 loc("or.cond12.not")
  %v154 = sea.select %v152, %v151, %v153 : i1 loc("or.cond12.not")
  sea.cond_br %v154, ^bb72, ^bb80
^bb72:
  sea.br ^bb73
^bb73:
  %v155 = sea.load %v42[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_138")
  %v156 = sea.ptr.null : !sea.ptr<64> loc("_139")
  %v157 = sea.ptr.cmp ne, %v155, %v156 : !sea.ptr<64> loc("_139")
  %v158 = sea.const 1 : i1 loc("or.cond")
  %v159 = sea.const 0 : i1 loc("or.cond")
  %v160 = sea.select %v158, %v157, %v159 : i1 loc("or.cond")
  sea.cond_br %v160, ^bb79, ^bb80
^bb74:
  sea.br ^bb75
^bb75:
  %v161 = sea.const 0 : i64 loc("_128"("aws-c-common/source/byte_buf.c":60:45))
  %v162 = sea.icmp eq, %v137, %v161 : i64 loc("_128"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v162, ^bb76, ^bb78 loc("aws-c-common/source/byte_buf.c":60:50)
^bb76:
  sea.br ^bb77
^bb77:
  %v163 = sea.load %v42[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_131"("aws-c-common/source/byte_buf.c":60:58))
  %v164 = sea.ptr.null : !sea.ptr<64> loc("_132"("aws-c-common/source/byte_buf.c":60:65))
  %v165 = sea.ptr.cmp eq, %v163, %v164 : !sea.ptr<64> loc("_132"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v165, ^bb79, ^bb78 loc("aws-c-common/source/byte_buf.c":60:74)
^bb78:
  sea.br ^bb80
^bb79:
  %v166 = sea.load %v45[%v43] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_140"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":44:5))
  %v167 = sea.mem.is_modified %v10[%v166] : !sea.mem<!sea.ptr<64>, i8> loc("_141"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":44:5))
  %v168 = sea.const 1 : i1 loc("_142"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":44:5))
  %v169 = sea.xor %v167, %v168 : i1 loc("_142"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":44:5))
  %v170 = sea.mem.is_modified %v10[%v166] : !sea.mem<!sea.ptr<64>, i8> loc("_143"("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":44:5))
  sea.assume %v170 loc("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":44:5)
  sea.br ^bb80 loc("seahorn/jobs2/byte_buf_write2/aws_byte_buf_write_harness2.c":44:5)
^bb80:
  sea.br ^bb81
^bb81:
  %v171 = sea.const 0 : i1
  sea.assert %v171
  sea.halt
}
