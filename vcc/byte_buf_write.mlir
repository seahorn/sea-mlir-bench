// Exported from SeaHorn (byte_buf_write.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm21")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm22")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm23")
  %v3 = sea.mem.nondet "region.80" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm24")
  %v4 = sea.mem.nondet "region.89" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm25")
  %v5 = sea.const 32 : i64 loc("_0")
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
  %v49 = sea.nondet "nd_size_t" [13] : i64 loc("_21"("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":15:18))
  %v50 = sea.const 11 : i64 loc("_22"("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":16:17))
  %v51 = sea.icmp ult, %v49, %v50 : i64 loc("_22"("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":16:17))
  sea.assume %v51 loc("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":16:5)
  %v52 = sea.nondet "nd_malloc_is_fail" [14] : i1 loc("_23"("seahorn/lib/sea_allocators.c":11:10))
  %v53 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v52, ^bb10(%v42, %v53 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb9 loc("seahorn/lib/sea_allocators.c":11:10)
^bb9:
  %v54 = sea.const 10 : i64 loc("malloc27.i7")
  %v55 = sea.alloca %v54 align 16 [15] : i64 -> !sea.ptr<64> loc("malloc27.i7")
  sea.br ^bb10(%v42, %v55 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb10(%v56 : !sea.mem<!sea.ptr<64>, i8>, %v57 : !sea.ptr<64>):
  %v58 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v59 = sea.memhavoc %v56[%v57], %v58 [16] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v60 = sea.ptr.null : !sea.ptr<64> loc("_26"("seahorn/lib/sea_allocators.c":45:10))
  %v61 = sea.ptr.cmp ne, %v57, %v60 : !sea.ptr<64> loc("_26"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v61 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb11
^bb11:
  sea.cond_br %v32, ^bb19, ^bb12 loc("aws-c-common/source/byte_buf.c":60:33)
^bb12:
  sea.br ^bb13
^bb13:
  sea.br ^bb14
^bb14:
  sea.br ^bb15
^bb15:
  %v62 = sea.icmp ugt, %v23, %v24 : i64 loc(".not2.i18.i"("aws-c-common/source/byte_buf.c":61:44))
  %v63 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v62, ^bb24(%v63 : i1), ^bb16 loc("aws-c-common/source/byte_buf.c":61:61)
^bb16:
  sea.br ^bb17
^bb17:
  sea.br ^bb18
^bb18:
  %v64 = sea.ptr.null : !sea.ptr<64> loc("_40"("aws-c-common/source/byte_buf.c":61:64))
  %v65 = sea.ptr.cmp ne, %v43, %v64 : !sea.ptr<64> loc("_40"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb24(%v65 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb19:
  sea.br ^bb20
^bb20:
  %v66 = sea.const 0 : i64 loc("_30"("aws-c-common/source/byte_buf.c":60:45))
  %v67 = sea.icmp eq, %v23, %v66 : i64 loc("_30"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v67, ^bb21, ^bb23 loc("aws-c-common/source/byte_buf.c":60:50)
^bb21:
  sea.br ^bb22
^bb22:
  %v68 = sea.ptr.null : !sea.ptr<64> loc("_33"("aws-c-common/source/byte_buf.c":60:65))
  %v69 = sea.ptr.cmp eq, %v43, %v68 : !sea.ptr<64> loc("_33"("aws-c-common/source/byte_buf.c":60:65))
  %v70 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v69, ^bb24(%v70 : i1), ^bb23 loc("aws-c-common/source/byte_buf.c":60:74)
^bb23:
  %v71 = sea.const 0 : i1
  sea.br ^bb24(%v71 : i1)
^bb24(%v72 : i1):
  sea.assume %v72 loc("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":20:5)
  %v73 = sea.store %v2[%v8], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":23:31)
  %v74 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy4.i"("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":23:31))
  %v75 = sea.store %v73[%v74], %v43 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":23:31)
  %v76 = sea.ptr.index %v8 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy7.i"("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":23:31))
  %v77 = sea.store %v75[%v76], %v24 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":23:31)
  %v78 = sea.ptr.index %v8 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy10.i"("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":23:31))
  %v79 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":23:31)
  %v80 = sea.store %v77[%v78], %v79 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":23:31)
  %v81 = sea.nondet "nd_size_t" [17] : i64 loc("_42"("seahorn/lib/utils.c":46:20))
  sea.br ^bb25
^bb25:
  %v82 = sea.store %v3[%v10], %v81 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v83 = sea.const 0 : i64 loc("_44"("seahorn/lib/utils.c":47:12))
  %v84 = sea.icmp ne, %v23, %v83 : i64 loc("_44"("seahorn/lib/utils.c":47:12))
  %v85 = sea.ptr.null : !sea.ptr<64> loc("_45")
  %v86 = sea.ptr.cmp ne, %v43, %v85 : !sea.ptr<64> loc("_45")
  %v87 = sea.and %v84, %v86 : i1 loc("or.cond.i23.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v87, ^bb28, ^bb26 loc("seahorn/lib/utils.c":47:16)
^bb26:
  %v88 = sea.nondet "nd_uint8_t" [18] : i8 loc("_57"("seahorn/lib/utils.c":51:21))
  %v89 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_58"("seahorn/lib/utils.c":51:14))
  sea.br ^bb27
^bb27:
  %v90 = sea.store %v82[%v89], %v88 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb33(%v88 : i8)
^bb28:
  sea.br ^bb29
^bb29:
  %v91 = sea.icmp ult, %v81, %v23 : i64 loc("_48"("seahorn/lib/utils.c":48:27))
  sea.assume %v91 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb30
^bb30:
  %v92 = sea.ptr.index %v43 [%v81] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_50"("seahorn/lib/utils.c":49:21))
  %v93 = sea.const 1 : i64 loc("_51"("seahorn/lib/utils.c":49:21))
  %v94 = sea.ptr.dereferenceable %v92, %v93 : !sea.ptr<64>, i64 loc("_51"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v94, ^bb31, ^bb103
^bb31:
  %v95 = sea.load %v59[%v92] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_53"("seahorn/lib/utils.c":49:21))
  %v96 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_54"("seahorn/lib/utils.c":49:14))
  sea.br ^bb32
^bb32:
  %v97 = sea.store %v82[%v96], %v95 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb33(%v95 : i8) loc("seahorn/lib/utils.c":50:3)
^bb33(%v98 : i8):
  %v99 = sea.const 0 : i64 loc("_61"("aws-c-common/source/byte_buf.c":1447:13))
  %v100 = sea.icmp eq, %v49, %v99 : i64 loc("_61"("aws-c-common/source/byte_buf.c":1447:13))
  sea.cond_br %v100, ^bb68(%v59, %v24, %v23 : !sea.mem<!sea.ptr<64>, i8>, i64, i64), ^bb34 loc("aws-c-common/source/byte_buf.c":1447:9)
^bb34:
  sea.br ^bb35
^bb35:
  %v101 = sea.or %v49, %v23 : i64 loc("_64"("aws-c-common/source/byte_buf.c":1452:36))
  %v102 = sea.const 18446744073709551615 : i64 loc("or.cond.i.i.not"("aws-c-common/source/byte_buf.c":1452:36))
  %v103 = sea.icmp sgt, %v101, %v102 : i64 loc("or.cond.i.i.not"("aws-c-common/source/byte_buf.c":1452:36))
  sea.cond_br %v103, ^bb36, ^bb46 loc("aws-c-common/source/byte_buf.c":1452:36)
^bb36:
  sea.br ^bb37
^bb37:
  sea.br ^bb38
^bb38:
  %v104 = sea.add %v49, %v23 : i64 loc("_68"("aws-c-common/source/byte_buf.c":1452:73))
  %v105 = sea.icmp ugt, %v104, %v24 : i64 loc("_69"("aws-c-common/source/byte_buf.c":1452:79))
  sea.cond_br %v105, ^bb46, ^bb39 loc("aws-c-common/source/byte_buf.c":1452:9)
^bb39:
  sea.br ^bb40
^bb40:
  sea.br ^bb41
^bb41:
  %v106 = sea.ptr.index %v43 [%v23] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_73"("aws-c-common/source/byte_buf.c":1457:24))
  %v107 = sea.ptr.dereferenceable %v106, %v49 : !sea.ptr<64>, i64 loc("_74"("seahorn/lib/bcmp.c":161:3))
  %v108 = sea.ptr.dereferenceable %v106, %v49 : !sea.ptr<64>, i64 loc("_75"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v108, ^bb42, ^bb103 loc("seahorn/lib/bcmp.c":161:3)
^bb42:
  %v109 = sea.ptr.dereferenceable %v57, %v49 : !sea.ptr<64>, i64 loc("_77"("seahorn/lib/bcmp.c":162:3))
  %v110 = sea.ptr.dereferenceable %v57, %v49 : !sea.ptr<64>, i64 loc("_78"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v110, ^bb43, ^bb103 loc("seahorn/lib/bcmp.c":162:3)
^bb43:
  %v111 = sea.memmove %v59[%v106], %v59[%v57], %v49 inplace src_align 16 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb44
^bb44:
  sea.br ^bb45
^bb45:
  %v112 = sea.load %v30[%v29] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc(".pre"("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":29:9))
  sea.br ^bb68(%v111, %v112, %v104 : !sea.mem<!sea.ptr<64>, i8>, i64, i64)
^bb46:
  sea.br ^bb47
^bb47:
  sea.br ^bb48
^bb48:
  sea.br ^bb49
^bb49:
  sea.br ^bb50
^bb50:
  sea.br ^bb51
^bb51:
  sea.br ^bb52
^bb52:
  sea.br ^bb53
^bb53:
  sea.br ^bb54
^bb54:
  sea.br ^bb55
^bb55:
  sea.br ^bb56
^bb56:
  sea.br ^bb57
^bb57:
  sea.br ^bb58
^bb58:
  sea.br ^bb59
^bb59:
  %v113 = sea.const 0 : i64 loc(".not.i26.i"("seahorn/lib/utils.c":86:16))
  %v114 = sea.icmp eq, %v23, %v113 : i64 loc(".not.i26.i"("seahorn/lib/utils.c":86:16))
  %v115 = sea.const 0 : i64 loc("seahorn/lib/utils.c":86:7)
  sea.cond_br %v114, ^bb74(%v115 : i64), ^bb60 loc("seahorn/lib/utils.c":86:7)
^bb60:
  sea.br ^bb61
^bb61:
  %v116 = sea.ptr.null : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v117 = sea.ptr.cmp eq, %v43, %v116 : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  sea.cond_br %v117, ^bb74(%v23 : i64), ^bb62 loc("seahorn/lib/utils.c":39:14)
^bb62:
  sea.br ^bb63
^bb63:
  %v118 = sea.ptr.index %v43 [%v81] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_122"("seahorn/lib/utils.c":40:5))
  %v119 = sea.const 1 : i64 loc("_123"("seahorn/lib/utils.c":40:5))
  %v120 = sea.ptr.dereferenceable %v118, %v119 : !sea.ptr<64>, i64 loc("_123"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v120, ^bb64, ^bb103
^bb64:
  %v121 = sea.load %v59[%v118] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_125"("seahorn/lib/utils.c":40:5))
  sea.br ^bb65
^bb65:
  %v122 = sea.icmp eq, %v121, %v98 : i8 loc("_127"("seahorn/lib/utils.c":40:5))
  sea.br ^bb66
^bb66:
  %v123 = sea.const 1 : i64 loc("_129"("seahorn/lib/utils.c":40:5))
  %v124 = sea.ptr.dereferenceable %v118, %v123 : !sea.ptr<64>, i64 loc("_129"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v124, ^bb67, ^bb103
^bb67:
  %v125 = sea.const 1 : i1 loc("or.cond14")
  %v126 = sea.const 0 : i1 loc("or.cond14")
  %v127 = sea.select %v125, %v122, %v126 : i1 loc("or.cond14")
  sea.cond_br %v127, ^bb74(%v23 : i64), ^bb103
^bb68(%v128 : !sea.mem<!sea.ptr<64>, i8>, %v129 : i64, %v130 : i64):
  %v131 = sea.icmp eq, %v24, %v129 : i64 loc("_83"("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":29:9))
  sea.cond_br %v131, ^bb69, ^bb103 loc("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":29:9)
^bb69:
  %v132 = sea.load %v48[%v46] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_85"("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":30:9))
  %v133 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_86"("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":30:9))
  %v134 = sea.ptr.cmp eq, %v132, %v133 : !sea.ptr<64> loc("_86"("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":30:9))
  sea.cond_br %v134, ^bb70, ^bb103 loc("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":30:9)
^bb70:
  %v135 = sea.const 0 : i64 loc("_88"("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":31:17))
  %v136 = sea.icmp ne, %v49, %v135 : i64 loc("_88"("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":31:17))
  %v137 = sea.const 0 : i64 loc("_89")
  %v138 = sea.icmp ne, %v130, %v137 : i64 loc("_89")
  %v139 = sea.const 0 : i1 loc("or.cond.i"("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":31:21))
  %v140 = sea.select %v136, %v138, %v139 : i1 loc("or.cond.i"("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":31:21))
  sea.cond_br %v140, ^bb71, ^bb74(%v130 : i64) loc("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":31:21)
^bb71:
  %v141 = sea.load %v45[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_91"("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":32:36))
  %v142 = sea.ptr.index %v141 [%v23] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_92"("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":32:43))
  %v143 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v144 = sea.ptr.cmp eq, %v141, %v143 : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v145 = sea.xor %v61, %v144 : i1 loc("_93"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v145, ^bb72, ^bb103 loc("seahorn/lib/utils.c":15:3)
^bb72:
  %v146 = sea.ptr.null : !sea.ptr<64> loc("_94")
  %v147 = sea.ptr.cmp ne, %v141, %v146 : !sea.ptr<64> loc("_94")
  %v148 = sea.and %v61, %v147 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v148, ^bb73, ^bb74(%v130 : i64) loc("seahorn/lib/utils.c":16:15)
^bb73:
  %v149 = sea.nondet "nd_size_t" [19] : i64 loc("_96"("seahorn/lib/utils.c":17:16))
  %v150 = sea.icmp ult, %v149, %v49 : i64 loc("_97"("seahorn/lib/utils.c":19:14))
  %v151 = sea.const 36028797018963967 : i64 loc("_98"("seahorn/lib/utils.c":19:20))
  %v152 = sea.icmp ult, %v49, %v151 : i64 loc("_98"("seahorn/lib/utils.c":19:20))
  %v153 = sea.and %v152, %v150 : i1 loc("_99"("seahorn/lib/utils.c":19:20))
  sea.assume %v153 loc("seahorn/lib/utils.c":19:5)
  %v154 = sea.ptr.index %v142 [%v149] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_100"("seahorn/lib/utils.c":20:5))
  %v155 = sea.load %v128[%v154] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_101"("seahorn/lib/utils.c":20:5))
  %v156 = sea.ptr.index %v57 [%v149] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_102"("seahorn/lib/utils.c":20:5))
  %v157 = sea.load %v128[%v156] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_103"("seahorn/lib/utils.c":20:5))
  %v158 = sea.icmp eq, %v155, %v157 : i8 loc("_104"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v158, ^bb74(%v130 : i64), ^bb103 loc("seahorn/lib/utils.c":20:5)
^bb74(%v159 : i64):
  sea.br ^bb75
^bb75:
  sea.cond_br %v32, ^bb83, ^bb76 loc("aws-c-common/source/byte_buf.c":60:33)
^bb76:
  sea.br ^bb77
^bb77:
  sea.br ^bb78
^bb78:
  sea.br ^bb79
^bb79:
  %v160 = sea.icmp ugt, %v159, %v24 : i64 loc(".not2.i14.i"("aws-c-common/source/byte_buf.c":61:44))
  %v161 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v160, ^bb88(%v161 : i1), ^bb80 loc("aws-c-common/source/byte_buf.c":61:61)
^bb80:
  sea.br ^bb81
^bb81:
  sea.br ^bb82
^bb82:
  %v162 = sea.load %v45[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_146"("aws-c-common/source/byte_buf.c":61:64))
  %v163 = sea.ptr.null : !sea.ptr<64> loc("_147"("aws-c-common/source/byte_buf.c":61:64))
  %v164 = sea.ptr.cmp ne, %v162, %v163 : !sea.ptr<64> loc("_147"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb88(%v164 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb83:
  sea.br ^bb84
^bb84:
  %v165 = sea.const 0 : i64 loc("_135"("aws-c-common/source/byte_buf.c":60:45))
  %v166 = sea.icmp eq, %v159, %v165 : i64 loc("_135"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v166, ^bb85, ^bb87 loc("aws-c-common/source/byte_buf.c":60:50)
^bb85:
  sea.br ^bb86
^bb86:
  %v167 = sea.load %v45[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_138"("aws-c-common/source/byte_buf.c":60:58))
  %v168 = sea.ptr.null : !sea.ptr<64> loc("_139"("aws-c-common/source/byte_buf.c":60:65))
  %v169 = sea.ptr.cmp eq, %v167, %v168 : !sea.ptr<64> loc("_139"("aws-c-common/source/byte_buf.c":60:65))
  %v170 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v169, ^bb88(%v170 : i1), ^bb87 loc("aws-c-common/source/byte_buf.c":60:74)
^bb87:
  %v171 = sea.const 0 : i1
  sea.br ^bb88(%v171 : i1)
^bb88(%v172 : i1):
  sea.br ^bb89
^bb89:
  sea.cond_br %v32, ^bb97, ^bb90 loc("aws-c-common/source/byte_buf.c":60:33)
^bb90:
  sea.br ^bb91
^bb91:
  sea.br ^bb92
^bb92:
  sea.br ^bb93
^bb93:
  %v173 = sea.icmp ugt, %v159, %v24 : i64 loc(".not2.i.i"("aws-c-common/source/byte_buf.c":61:44))
  %v174 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v173, ^bb102(%v174 : i1), ^bb94 loc("aws-c-common/source/byte_buf.c":61:61)
^bb94:
  sea.br ^bb95
^bb95:
  sea.br ^bb96
^bb96:
  %v175 = sea.load %v45[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_163"("aws-c-common/source/byte_buf.c":61:64))
  %v176 = sea.ptr.null : !sea.ptr<64> loc("_164"("aws-c-common/source/byte_buf.c":61:64))
  %v177 = sea.ptr.cmp ne, %v175, %v176 : !sea.ptr<64> loc("_164"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb102(%v177 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb97:
  sea.br ^bb98
^bb98:
  %v178 = sea.const 0 : i64 loc("_152"("aws-c-common/source/byte_buf.c":60:45))
  %v179 = sea.icmp eq, %v159, %v178 : i64 loc("_152"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v179, ^bb99, ^bb101 loc("aws-c-common/source/byte_buf.c":60:50)
^bb99:
  sea.br ^bb100
^bb100:
  %v180 = sea.load %v45[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_155"("aws-c-common/source/byte_buf.c":60:58))
  %v181 = sea.ptr.null : !sea.ptr<64> loc("_156"("aws-c-common/source/byte_buf.c":60:65))
  %v182 = sea.ptr.cmp eq, %v180, %v181 : !sea.ptr<64> loc("_156"("aws-c-common/source/byte_buf.c":60:65))
  %v183 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v182, ^bb102(%v183 : i1), ^bb101 loc("aws-c-common/source/byte_buf.c":60:74)
^bb101:
  %v184 = sea.const 0 : i1
  sea.br ^bb102(%v184 : i1)
^bb102(%v185 : i1):
  %v186 = sea.const 1 : i1 loc("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":38:5)
  %v187 = sea.xor %v185, %v186 : i1 loc("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":38:5)
  sea.assume %v187 loc("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":38:5)
  sea.br ^bb103 loc("seahorn/jobs/byte_buf_write/aws_byte_buf_write_harness.c":38:5)
^bb103:
  sea.br ^bb104
^bb104:
  %v188 = sea.const 0 : i1
  sea.assert %v188
  sea.halt
}
