// Exported from SeaHorn (byte_buf_write_from_whole_string2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.16" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm16")
  %v1 = sea.mem.nondet "region.0" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm17")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm18")
  %v3 = sea.const 32 : i64 loc("_0")
  %v4 = sea.alloca %v3 align 8 [3] : i64 -> !sea.ptr<64> loc("_0")
  %v5 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v6 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v7 = sea.store %v1[%v5], %v6 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v8 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_1")
  %v9 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_1")
  %v10 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v11 = sea.store %v7[%v9], %v10 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v12 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_2")
  %v13 = sea.ptr.index %v12 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_2")
  %v14 = sea.const 0 : i8
  %v15 = sea.const 24 : i64
  %v16 = sea.memset %v11[%v13], %v14, %v15 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v17 = sea.nondet "nd_bool" [4] : i1 loc("_3"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":15:7))
  %v18 = sea.ptr.null : !sea.ptr<64> loc("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":15:7)
  sea.cond_br %v17, ^bb1, ^bb10(%v2, %v18 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":15:7)
^bb1:
  %v19 = sea.nondet "nd_size_t" [5] : i64 loc("_5"("seahorn/lib/string_helper.c":24:16))
  %v20 = sea.const 16 : i64 loc("_6"("seahorn/lib/string_helper.c":25:14))
  %v21 = sea.icmp ult, %v19, %v20 : i64 loc("_6"("seahorn/lib/string_helper.c":25:14))
  sea.assume %v21 loc("seahorn/lib/string_helper.c":25:3)
  %v22 = sea.const 25 : i64 loc("_7"("seahorn/lib/string_helper.c":11:61))
  %v23 = sea.add %v19, %v22 : i64 loc("_7"("seahorn/lib/string_helper.c":11:61))
  %v24 = sea.nondet "nd_malloc_is_fail" [6] : i1 loc("_8"("seahorn/lib/sea_allocators.c":11:10))
  %v25 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v24, ^bb3(%v2, %v25 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb2 loc("seahorn/lib/sea_allocators.c":11:10)
^bb2:
  %v26 = sea.const 1 : i64 loc("malloc.i")
  %v27 = sea.mul %v23, %v26 : i64 loc("malloc.i")
  %v28 = sea.alloca %v27 align 16 [7] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb3(%v2, %v28 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb3(%v29 : !sea.mem<!sea.ptr<64>, i8>, %v30 : !sea.ptr<64>):
  %v31 = sea.memhavoc %v29[%v30], %v23 [8] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v32 = sea.ptr.null : !sea.ptr<64> loc("_11"("seahorn/lib/sea_allocators.c":45:10))
  %v33 = sea.ptr.cmp ne, %v30, %v32 : !sea.ptr<64> loc("_11"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v33 loc("seahorn/lib/sea_allocators.c":45:3)
  %v34 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i.i"("seahorn/lib/string_helper.c":13:7))
  %v35 = sea.ptr.cmp eq, %v30, %v34 : !sea.ptr<64> loc(".not.i.i.i"("seahorn/lib/string_helper.c":13:7))
  %v36 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":13:7)
  sea.cond_br %v35, ^bb10(%v31, %v36 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/string_helper.c":13:7)
^bb4:
  %v37 = sea.nondet "nd_bool" [9] : i1 loc("_13"("seahorn/lib/string_helper.c":16:9))
  %v38 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.cond_br %v37, ^bb5, ^bb6(%v38 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb5:
  %v39 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.br ^bb6(%v39 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb6(%v40 : !sea.ptr<64>):
  %v41 = sea.const 8 : i64 loc("_17"("seahorn/lib/string_helper.c":15:49))
  %v42 = sea.ptr.dereferenceable %v30, %v41 : !sea.ptr<64>, i64 loc("_17"("seahorn/lib/string_helper.c":15:49))
  sea.cond_br %v42, ^bb7, ^bb91
^bb7:
  %v43 = sea.store %v31[%v30], %v40 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/string_helper.c":15:49)
  %v44 = sea.ptr.index %v30 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_19"("seahorn/lib/string_helper.c":17:23))
  %v45 = sea.const 8 : i64 loc("_20"("seahorn/lib/string_helper.c":17:28))
  %v46 = sea.ptr.dereferenceable %v44, %v45 : !sea.ptr<64>, i64 loc("_20"("seahorn/lib/string_helper.c":17:28))
  sea.cond_br %v46, ^bb8, ^bb91
^bb8:
  %v47 = sea.store %v43[%v44], %v19 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/string_helper.c":17:28)
  %v48 = sea.ptr.index %v30 [%v19] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_22"("seahorn/lib/string_helper.c":18:18))
  %v49 = sea.const 1 : i64 loc("_23"("seahorn/lib/string_helper.c":18:34))
  %v50 = sea.ptr.dereferenceable %v48, %v49 : !sea.ptr<64>, i64 loc("_23"("seahorn/lib/string_helper.c":18:34))
  sea.cond_br %v50, ^bb9, ^bb91
^bb9:
  %v51 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":18:34)
  %v52 = sea.store %v47[%v48], %v51 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":18:34)
  sea.br ^bb10(%v52, %v30 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/string_helper.c":19:3)
^bb10(%v53 : !sea.mem<!sea.ptr<64>, i8>, %v54 : !sea.ptr<64>):
  %v55 = sea.nondet "nd_size_t" [10] : i64 loc("_26"("seahorn/lib/byte_buf_helper.c":19:18))
  %v56 = sea.nondet "nd_size_t" [11] : i64 loc("_27"("seahorn/lib/byte_buf_helper.c":20:18))
  %v57 = sea.icmp ule, %v55, %v56 : i64 loc("_28"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v57 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v58 = sea.const 11 : i64 loc("_29"("seahorn/lib/byte_buf_helper.c":22:16))
  %v59 = sea.icmp ult, %v56, %v58 : i64 loc("_29"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v59 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb11
^bb11:
  %v60 = sea.store %v0[%v4], %v55 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v61 = sea.ptr.index %v4 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_31"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb12
^bb12:
  %v62 = sea.store %v60[%v61], %v56 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v63 = sea.const 0 : i64 loc("_33"("seahorn/lib/proof_allocators.c":21:15))
  %v64 = sea.icmp eq, %v56, %v63 : i64 loc("_33"("seahorn/lib/proof_allocators.c":21:15))
  %v65 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v64, ^bb16(%v53, %v65 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb13 loc("seahorn/lib/proof_allocators.c":21:10)
^bb13:
  %v66 = sea.nondet "nd_malloc_is_fail" [12] : i1 loc("_35"("seahorn/lib/sea_allocators.c":11:10))
  %v67 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v66, ^bb15(%v53, %v67 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb14 loc("seahorn/lib/sea_allocators.c":11:10)
^bb14:
  %v68 = sea.const 1 : i64 loc("malloc24.i")
  %v69 = sea.mul %v56, %v68 : i64 loc("malloc24.i")
  %v70 = sea.alloca %v69 align 16 [13] : i64 -> !sea.ptr<64> loc("malloc24.i")
  sea.br ^bb15(%v53, %v70 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb15(%v71 : !sea.mem<!sea.ptr<64>, i8>, %v72 : !sea.ptr<64>):
  %v73 = sea.memhavoc %v71[%v72], %v56 [14] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb16(%v73, %v72 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb16(%v74 : !sea.mem<!sea.ptr<64>, i8>, %v75 : !sea.ptr<64>):
  %v76 = sea.ptr.index %v4 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_39"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb17
^bb17:
  %v77 = sea.store %v62[%v76], %v75 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v78 = sea.ptr.index %v4 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_41"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb18
^bb18:
  %v79 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v80 = sea.store %v77[%v78], %v79 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  sea.br ^bb19
^bb19:
  sea.cond_br %v64, ^bb27, ^bb20 loc("aws-c-common/source/byte_buf.c":60:33)
^bb20:
  sea.br ^bb21
^bb21:
  sea.br ^bb22
^bb22:
  sea.br ^bb23
^bb23:
  %v81 = sea.icmp ugt, %v55, %v56 : i64 loc(".not2.i12.i"("aws-c-common/source/byte_buf.c":61:44))
  %v82 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v81, ^bb32(%v82 : i1), ^bb24 loc("aws-c-common/source/byte_buf.c":61:61)
^bb24:
  sea.br ^bb25
^bb25:
  sea.br ^bb26
^bb26:
  %v83 = sea.ptr.null : !sea.ptr<64> loc("_55"("aws-c-common/source/byte_buf.c":61:64))
  %v84 = sea.ptr.cmp ne, %v75, %v83 : !sea.ptr<64> loc("_55"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb32(%v84 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb27:
  sea.br ^bb28
^bb28:
  %v85 = sea.const 0 : i64 loc("_45"("aws-c-common/source/byte_buf.c":60:45))
  %v86 = sea.icmp eq, %v55, %v85 : i64 loc("_45"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v86, ^bb29, ^bb31 loc("aws-c-common/source/byte_buf.c":60:50)
^bb29:
  sea.br ^bb30
^bb30:
  %v87 = sea.ptr.null : !sea.ptr<64> loc("_48"("aws-c-common/source/byte_buf.c":60:65))
  %v88 = sea.ptr.cmp eq, %v75, %v87 : !sea.ptr<64> loc("_48"("aws-c-common/source/byte_buf.c":60:65))
  %v89 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v88, ^bb32(%v89 : i1), ^bb31 loc("aws-c-common/source/byte_buf.c":60:74)
^bb31:
  %v90 = sea.const 0 : i1
  sea.br ^bb32(%v90 : i1)
^bb32(%v91 : i1):
  sea.assume %v91 loc("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":20:3)
  sea.tracking_on loc("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":25:3)
  %v92 = sea.sub %v56, %v55 : i64 loc("_57"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":27:39))
  %v93 = sea.nondet "nd_bool" [15] : i1 loc("_58"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":28:27))
  %v94 = sea.ptr.null : !sea.ptr<64> loc("..i"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":31:44))
  %v95 = sea.select %v93, %v4, %v94 : !sea.ptr<64> loc("..i"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":31:44))
  %v96 = sea.ptr.null : !sea.ptr<64> loc("_59")
  %v97 = sea.ptr.cmp ne, %v54, %v96 : !sea.ptr<64> loc("_59")
  %v98 = sea.and %v97, %v93 : i1 loc("or.cond.i.i.not"("aws-c-common/source/string.c":412:21))
  sea.cond_br %v98, ^bb33, ^bb47 loc("aws-c-common/source/string.c":412:21)
^bb33:
  %v99 = sea.ptr.index %v54 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_61"("aws-c-common/include/aws/common/string.inl":17:17))
  %v100 = sea.ptr.index %v54 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_62"("aws-c-common/source/string.c":415:64))
  %v101 = sea.const 8 : i64 loc("_63"("aws-c-common/source/string.c":415:64))
  %v102 = sea.ptr.dereferenceable %v100, %v101 : !sea.ptr<64>, i64 loc("_63"("aws-c-common/source/string.c":415:64))
  sea.cond_br %v102, ^bb34, ^bb91
^bb34:
  %v103 = sea.load %v74[%v100] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_65"("aws-c-common/source/string.c":415:64))
  %v104 = sea.const 0 : i64 loc("_66"("aws-c-common/source/byte_buf.c":1447:13))
  %v105 = sea.icmp eq, %v103, %v104 : i64 loc("_66"("aws-c-common/source/byte_buf.c":1447:13))
  sea.cond_br %v105, ^bb49(%v74, %v80 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>), ^bb35 loc("aws-c-common/source/byte_buf.c":1447:9)
^bb35:
  %v106 = sea.const 8 : i64 loc("_68"("aws-c-common/source/byte_buf.c":1452:14))
  %v107 = sea.ptr.dereferenceable %v95, %v106 : !sea.ptr<64>, i64 loc("_68"("aws-c-common/source/byte_buf.c":1452:14))
  sea.cond_br %v107, ^bb36, ^bb91
^bb36:
  %v108 = sea.load %v60[%v95] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_70"("aws-c-common/source/byte_buf.c":1452:14))
  %v109 = sea.or %v108, %v103 : i64 loc("_71"("aws-c-common/source/byte_buf.c":1452:36))
  %v110 = sea.const 18446744073709551615 : i64 loc("or.cond.i15.i.not"("aws-c-common/source/byte_buf.c":1452:36))
  %v111 = sea.icmp sgt, %v109, %v110 : i64 loc("or.cond.i15.i.not"("aws-c-common/source/byte_buf.c":1452:36))
  sea.cond_br %v111, ^bb37, ^bb47 loc("aws-c-common/source/byte_buf.c":1452:36)
^bb37:
  %v112 = sea.const 8 : i64 loc("_73"("aws-c-common/source/byte_buf.c":1452:69))
  %v113 = sea.ptr.dereferenceable %v95, %v112 : !sea.ptr<64>, i64 loc("_73"("aws-c-common/source/byte_buf.c":1452:69))
  sea.cond_br %v113, ^bb38, ^bb91
^bb38:
  sea.br ^bb39
^bb39:
  %v114 = sea.add %v108, %v103 : i64 loc("_76"("aws-c-common/source/byte_buf.c":1452:73))
  %v115 = sea.icmp ugt, %v114, %v56 : i64 loc("_77"("aws-c-common/source/byte_buf.c":1452:79))
  sea.cond_br %v115, ^bb47, ^bb40 loc("aws-c-common/source/byte_buf.c":1452:9)
^bb40:
  sea.br ^bb41
^bb41:
  %v116 = sea.const 8 : i64 loc("_80"("aws-c-common/source/byte_buf.c":1457:31))
  %v117 = sea.ptr.dereferenceable %v95, %v116 : !sea.ptr<64>, i64 loc("_80"("aws-c-common/source/byte_buf.c":1457:31))
  sea.cond_br %v117, ^bb42, ^bb91
^bb42:
  %v118 = sea.ptr.index %v75 [%v108] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_82"("aws-c-common/source/byte_buf.c":1457:24))
  %v119 = sea.ptr.dereferenceable %v118, %v103 : !sea.ptr<64>, i64 loc("_83"("seahorn/lib/bcmp.c":161:3))
  %v120 = sea.ptr.dereferenceable %v118, %v103 : !sea.ptr<64>, i64 loc("_84"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v120, ^bb43, ^bb91 loc("seahorn/lib/bcmp.c":161:3)
^bb43:
  %v121 = sea.ptr.dereferenceable %v99, %v103 : !sea.ptr<64>, i64 loc("_86"("seahorn/lib/bcmp.c":162:3))
  %v122 = sea.ptr.dereferenceable %v99, %v103 : !sea.ptr<64>, i64 loc("_87"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v122, ^bb44, ^bb91 loc("seahorn/lib/bcmp.c":162:3)
^bb44:
  %v123 = sea.memmove %v74[%v118], %v74[%v99], %v103 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  %v124 = sea.const 8 : i64 loc("_88"("aws-c-common/source/byte_buf.c":1458:14))
  %v125 = sea.ptr.dereferenceable %v95, %v124 : !sea.ptr<64>, i64 loc("_88"("aws-c-common/source/byte_buf.c":1458:14))
  sea.cond_br %v125, ^bb45, ^bb91
^bb45:
  %v126 = sea.const 8 : i64 loc("_90"("aws-c-common/source/byte_buf.c":1458:14))
  %v127 = sea.ptr.dereferenceable %v95, %v126 : !sea.ptr<64>, i64 loc("_90"("aws-c-common/source/byte_buf.c":1458:14))
  sea.cond_br %v127, ^bb46, ^bb91
^bb46:
  %v128 = sea.store %v80[%v95], %v114 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":1458:14)
  sea.br ^bb49(%v123, %v128 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":1461:5)
^bb47:
  %v129 = sea.mem.is_modified %v60[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_139"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":44:5))
  %v130 = sea.const 1 : i1 loc("_140"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":44:5))
  %v131 = sea.xor %v129, %v130 : i1 loc("_140"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":44:5))
  %v132 = sea.mem.is_modified %v60[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_141"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":44:5))
  sea.cond_br %v132, ^bb91, ^bb48 loc("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":44:5)
^bb48:
  %v133 = sea.mem.is_modified %v74[%v75] : !sea.mem<!sea.ptr<64>, i8> loc("_143"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":45:5))
  %v134 = sea.const 1 : i1 loc("_144"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":45:5))
  %v135 = sea.xor %v133, %v134 : i1 loc("_144"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":45:5))
  %v136 = sea.mem.is_modified %v74[%v75] : !sea.mem<!sea.ptr<64>, i8> loc("_145"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":45:5))
  sea.cond_br %v136, ^bb91, ^bb64(%v80, %v55 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":45:5)
^bb49(%v137 : !sea.mem<!sea.ptr<64>, i8>, %v138 : !sea.mem<!sea.ptr<64>, i8>):
  %v139 = sea.const 8 : i64 loc("_92"("aws-c-common/include/aws/common/string.inl":35:19))
  %v140 = sea.ptr.dereferenceable %v100, %v139 : !sea.ptr<64>, i64 loc("_92"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v140, ^bb50, ^bb91
^bb50:
  %v141 = sea.const 8 : i64 loc("_94"("aws-c-common/include/aws/common/string.inl":35:88))
  %v142 = sea.ptr.dereferenceable %v100, %v141 : !sea.ptr<64>, i64 loc("_94"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v142, ^bb51, ^bb91
^bb51:
  %v143 = sea.load %v137[%v100] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_96"("aws-c-common/include/aws/common/string.inl":35:88))
  %v144 = sea.ptr.index %v54 [%v143] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_97"("aws-c-common/include/aws/common/string.inl":35:72))
  %v145 = sea.const 1 : i64 loc("_98"("aws-c-common/include/aws/common/string.inl":35:72))
  %v146 = sea.ptr.dereferenceable %v144, %v145 : !sea.ptr<64>, i64 loc("_98"("aws-c-common/include/aws/common/string.inl":35:72))
  sea.cond_br %v146, ^bb52, ^bb91
^bb52:
  %v147 = sea.load %v137[%v144] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_99"("aws-c-common/include/aws/common/string.inl":35:72))
  %v148 = sea.const 0 : i8 loc("_100"("aws-c-common/include/aws/common/string.inl":35:93))
  %v149 = sea.icmp eq, %v147, %v148 : i8 loc("_100"("aws-c-common/include/aws/common/string.inl":35:93))
  %v150 = sea.const 8 : i64 loc("_101"("aws-c-common/include/aws/common/string.inl":35:19))
  %v151 = sea.ptr.dereferenceable %v100, %v150 : !sea.ptr<64>, i64 loc("_101"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v151, ^bb53, ^bb91
^bb53:
  %v152 = sea.const 8 : i64 loc("_103"("aws-c-common/include/aws/common/string.inl":35:88))
  %v153 = sea.ptr.dereferenceable %v100, %v152 : !sea.ptr<64>, i64 loc("_103"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v153, ^bb54, ^bb91
^bb54:
  %v154 = sea.const 1 : i64 loc("_105"("aws-c-common/include/aws/common/string.inl":35:72))
  %v155 = sea.ptr.dereferenceable %v144, %v154 : !sea.ptr<64>, i64 loc("_105"("aws-c-common/include/aws/common/string.inl":35:72))
  %v156 = sea.const 0 : i1 loc("_106")
  %v157 = sea.select %v155, %v149, %v156 : i1 loc("_106")
  sea.cond_br %v157, ^bb55, ^bb91
^bb55:
  %v158 = sea.const 8 : i64 loc("_108"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":35:5))
  %v159 = sea.ptr.dereferenceable %v100, %v158 : !sea.ptr<64>, i64 loc("_108"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":35:5))
  sea.cond_br %v159, ^bb56, ^bb91
^bb56:
  %v160 = sea.icmp uge, %v92, %v143 : i64 loc("_110"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":35:5))
  %v161 = sea.const 8 : i64 loc("_111"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":35:5))
  %v162 = sea.ptr.dereferenceable %v100, %v161 : !sea.ptr<64>, i64 loc("_111"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":35:5))
  %v163 = sea.const 0 : i1 loc("or.cond.not")
  %v164 = sea.select %v162, %v160, %v163 : i1 loc("or.cond.not")
  sea.cond_br %v164, ^bb57, ^bb91
^bb57:
  %v165 = sea.load %v138[%v4] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_113"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":37:7))
  %v166 = sea.const 8 : i64 loc("_114"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":37:7))
  %v167 = sea.ptr.dereferenceable %v100, %v166 : !sea.ptr<64>, i64 loc("_114"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":37:7))
  sea.cond_br %v167, ^bb58, ^bb91
^bb58:
  %v168 = sea.add %v143, %v55 : i64 loc("_116"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":37:7))
  %v169 = sea.icmp eq, %v165, %v168 : i64 loc("_117"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":37:7))
  %v170 = sea.const 8 : i64 loc("_118"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":37:7))
  %v171 = sea.ptr.dereferenceable %v100, %v170 : !sea.ptr<64>, i64 loc("_118"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":37:7))
  %v172 = sea.const 0 : i1 loc("_119")
  %v173 = sea.select %v171, %v169, %v172 : i1 loc("_119")
  sea.cond_br %v173, ^bb59, ^bb91
^bb59:
  %v174 = sea.const 8 : i64 loc("_121"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":39:16))
  %v175 = sea.ptr.dereferenceable %v100, %v174 : !sea.ptr<64>, i64 loc("_121"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":39:16))
  sea.cond_br %v175, ^bb60, ^bb91
^bb60:
  %v176 = sea.const 0 : i64 loc("_123"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":39:20))
  %v177 = sea.icmp ne, %v143, %v176 : i64 loc("_123"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":39:20))
  %v178 = sea.const 0 : i64 loc("_124")
  %v179 = sea.icmp ne, %v165, %v178 : i64 loc("_124")
  %v180 = sea.const 0 : i1 loc("or.cond4.i"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":39:24))
  %v181 = sea.select %v177, %v179, %v180 : i1 loc("or.cond4.i"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":39:24))
  sea.cond_br %v181, ^bb61, ^bb64(%v138, %v165 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":39:24)
^bb61:
  %v182 = sea.load %v138[%v76] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_126"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":40:32))
  %v183 = sea.const 8 : i64 loc("_127"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":40:71))
  %v184 = sea.ptr.dereferenceable %v100, %v183 : !sea.ptr<64>, i64 loc("_127"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":40:71))
  sea.cond_br %v184, ^bb62, ^bb91
^bb62:
  %v185 = sea.ptr.null : !sea.ptr<64> loc(".not.i22.i"("seahorn/lib/utils.c":15:3))
  %v186 = sea.ptr.cmp ne, %v182, %v185 : !sea.ptr<64> loc(".not.i22.i"("seahorn/lib/utils.c":15:3))
  %v187 = sea.ptr.null : !sea.ptr<64> loc(".not5.i.i.not"("seahorn/lib/utils.c":15:3))
  %v188 = sea.ptr.cmp eq, %v182, %v187 : !sea.ptr<64> loc(".not5.i.i.not"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v188, ^bb91, ^bb63 loc("seahorn/lib/utils.c":15:3)
^bb63:
  %v189 = sea.ptr.index %v182 [%v55] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_129"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":40:39))
  %v190 = sea.nondet "nd_size_t" [16] : i64 loc("_130"("seahorn/lib/utils.c":17:16))
  %v191 = sea.icmp ult, %v190, %v143 : i64 loc("_131"("seahorn/lib/utils.c":19:14))
  %v192 = sea.const 36028797018963967 : i64 loc("_132"("seahorn/lib/utils.c":19:20))
  %v193 = sea.icmp ult, %v143, %v192 : i64 loc("_132"("seahorn/lib/utils.c":19:20))
  %v194 = sea.and %v193, %v191 : i1 loc("_133"("seahorn/lib/utils.c":19:20))
  sea.assume %v194 loc("seahorn/lib/utils.c":19:5)
  %v195 = sea.ptr.index %v189 [%v190] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_134"("seahorn/lib/utils.c":20:5))
  %v196 = sea.load %v137[%v195] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_135"("seahorn/lib/utils.c":20:5))
  %v197 = sea.ptr.index %v99 [%v190] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_136"("seahorn/lib/utils.c":20:5))
  %v198 = sea.load %v137[%v197] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_137"("seahorn/lib/utils.c":20:5))
  %v199 = sea.icmp eq, %v196, %v198 : i8 loc("_138"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v199, ^bb64(%v138, %v165 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb91 loc("seahorn/lib/utils.c":20:5)
^bb64(%v200 : !sea.mem<!sea.ptr<64>, i8>, %v201 : i64):
  sea.br ^bb65
^bb65:
  %v202 = sea.load %v200[%v61] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_148"("aws-c-common/source/byte_buf.c":60:19))
  %v203 = sea.const 0 : i64 loc(".not"("aws-c-common/source/byte_buf.c":60:28))
  %v204 = sea.icmp eq, %v202, %v203 : i64 loc(".not"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v204, ^bb73, ^bb66 loc("aws-c-common/source/byte_buf.c":60:33)
^bb66:
  sea.br ^bb67
^bb67:
  sea.br ^bb68
^bb68:
  sea.br ^bb69
^bb69:
  %v205 = sea.icmp ugt, %v201, %v202 : i64 loc(".not2.i8.i"("aws-c-common/source/byte_buf.c":61:44))
  %v206 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v205, ^bb78(%v201, %v206 : i64, i1), ^bb70 loc("aws-c-common/source/byte_buf.c":61:61)
^bb70:
  sea.br ^bb71
^bb71:
  sea.br ^bb72
^bb72:
  %v207 = sea.load %v200[%v76] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_162"("aws-c-common/source/byte_buf.c":61:64))
  %v208 = sea.ptr.null : !sea.ptr<64> loc("_163"("aws-c-common/source/byte_buf.c":61:64))
  %v209 = sea.ptr.cmp ne, %v207, %v208 : !sea.ptr<64> loc("_163"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb78(%v201, %v209 : i64, i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb73:
  sea.br ^bb74
^bb74:
  %v210 = sea.const 0 : i64 loc("_151"("aws-c-common/source/byte_buf.c":60:45))
  %v211 = sea.icmp eq, %v201, %v210 : i64 loc("_151"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v211, ^bb75, ^bb77 loc("aws-c-common/source/byte_buf.c":60:50)
^bb75:
  sea.br ^bb76
^bb76:
  %v212 = sea.load %v200[%v76] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_154"("aws-c-common/source/byte_buf.c":60:58))
  %v213 = sea.ptr.null : !sea.ptr<64> loc("_155"("aws-c-common/source/byte_buf.c":60:65))
  %v214 = sea.ptr.cmp eq, %v212, %v213 : !sea.ptr<64> loc("_155"("aws-c-common/source/byte_buf.c":60:65))
  %v215 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":60:74)
  %v216 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v214, ^bb78(%v215, %v216 : i64, i1), ^bb77 loc("aws-c-common/source/byte_buf.c":60:74)
^bb77:
  %v217 = sea.const 0 : i1
  sea.br ^bb78(%v201, %v217 : i64, i1)
^bb78(%v218 : i64, %v219 : i1):
  sea.br ^bb79
^bb79:
  sea.cond_br %v204, ^bb85, ^bb80 loc("aws-c-common/source/byte_buf.c":60:33)
^bb80:
  sea.br ^bb81
^bb81:
  sea.br ^bb82
^bb82:
  %v220 = sea.icmp ule, %v218, %v202 : i64 loc(".not2.i.i")
  %v221 = sea.const 1 : i1 loc("or.cond11.not")
  %v222 = sea.const 0 : i1 loc("or.cond11.not")
  %v223 = sea.select %v221, %v220, %v222 : i1 loc("or.cond11.not")
  sea.cond_br %v223, ^bb83, ^bb91
^bb83:
  sea.br ^bb84
^bb84:
  %v224 = sea.load %v200[%v76] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_179")
  %v225 = sea.ptr.null : !sea.ptr<64> loc("_180")
  %v226 = sea.ptr.cmp ne, %v224, %v225 : !sea.ptr<64> loc("_180")
  %v227 = sea.const 1 : i1 loc("or.cond8")
  %v228 = sea.const 0 : i1 loc("or.cond8")
  %v229 = sea.select %v227, %v226, %v228 : i1 loc("or.cond8")
  sea.cond_br %v229, ^bb90, ^bb91
^bb85:
  sea.br ^bb86
^bb86:
  %v230 = sea.const 0 : i64 loc("_169"("aws-c-common/source/byte_buf.c":60:45))
  %v231 = sea.icmp eq, %v218, %v230 : i64 loc("_169"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v231, ^bb87, ^bb89 loc("aws-c-common/source/byte_buf.c":60:50)
^bb87:
  sea.br ^bb88
^bb88:
  %v232 = sea.load %v200[%v76] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_172"("aws-c-common/source/byte_buf.c":60:58))
  %v233 = sea.ptr.null : !sea.ptr<64> loc("_173"("aws-c-common/source/byte_buf.c":60:65))
  %v234 = sea.ptr.cmp eq, %v232, %v233 : !sea.ptr<64> loc("_173"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v234, ^bb90, ^bb89 loc("aws-c-common/source/byte_buf.c":60:74)
^bb89:
  sea.br ^bb91
^bb90:
  %v235 = sea.load %v200[%v78] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_181"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":50:3))
  %v236 = sea.mem.is_modified %v7[%v235] : !sea.mem<!sea.ptr<64>, i8> loc("_182"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":50:3))
  %v237 = sea.const 1 : i1 loc("_183"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":50:3))
  %v238 = sea.xor %v236, %v237 : i1 loc("_183"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":50:3))
  %v239 = sea.mem.is_modified %v7[%v235] : !sea.mem<!sea.ptr<64>, i8> loc("_184"("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":50:3))
  sea.assume %v239 loc("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":50:3)
  sea.br ^bb91 loc("seahorn/jobs2/byte_buf_write_from_whole_string2/aws_byte_buf_write_from_whole_string_harness2.c":50:3)
^bb91:
  sea.br ^bb92
^bb92:
  %v240 = sea.const 0 : i1
  sea.assert %v240
  sea.halt
}
