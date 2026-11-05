// Exported from SeaHorn (byte_buf_write_u8.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm20")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm21")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm22")
  %v3 = sea.mem.nondet "region.80" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm23")
  %v4 = sea.mem.nondet "region.89" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm24")
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
  %v49 = sea.nondet "nd_uint8_t" [13] : i8 loc("_21"("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":14:15))
  sea.br ^bb9
^bb9:
  sea.cond_br %v32, ^bb17, ^bb10 loc("aws-c-common/source/byte_buf.c":60:33)
^bb10:
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  sea.br ^bb13
^bb13:
  %v50 = sea.icmp ugt, %v23, %v24 : i64 loc(".not2.i16.i"("aws-c-common/source/byte_buf.c":61:44))
  %v51 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v50, ^bb22(%v51 : i1), ^bb14 loc("aws-c-common/source/byte_buf.c":61:61)
^bb14:
  sea.br ^bb15
^bb15:
  sea.br ^bb16
^bb16:
  %v52 = sea.ptr.null : !sea.ptr<64> loc("_35"("aws-c-common/source/byte_buf.c":61:64))
  %v53 = sea.ptr.cmp ne, %v43, %v52 : !sea.ptr<64> loc("_35"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb22(%v53 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb17:
  sea.br ^bb18
^bb18:
  %v54 = sea.const 0 : i64 loc("_25"("aws-c-common/source/byte_buf.c":60:45))
  %v55 = sea.icmp eq, %v23, %v54 : i64 loc("_25"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v55, ^bb19, ^bb21 loc("aws-c-common/source/byte_buf.c":60:50)
^bb19:
  sea.br ^bb20
^bb20:
  %v56 = sea.ptr.null : !sea.ptr<64> loc("_28"("aws-c-common/source/byte_buf.c":60:65))
  %v57 = sea.ptr.cmp eq, %v43, %v56 : !sea.ptr<64> loc("_28"("aws-c-common/source/byte_buf.c":60:65))
  %v58 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v57, ^bb22(%v58 : i1), ^bb21 loc("aws-c-common/source/byte_buf.c":60:74)
^bb21:
  %v59 = sea.const 0 : i1
  sea.br ^bb22(%v59 : i1)
^bb22(%v60 : i1):
  sea.assume %v60 loc("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":17:3)
  %v61 = sea.store %v2[%v8], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":20:29)
  %v62 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":20:29))
  %v63 = sea.store %v61[%v62], %v43 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":20:29)
  %v64 = sea.ptr.index %v8 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy5.i"("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":20:29))
  %v65 = sea.store %v63[%v64], %v24 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":20:29)
  %v66 = sea.ptr.index %v8 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i"("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":20:29))
  %v67 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":20:29)
  %v68 = sea.store %v65[%v66], %v67 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":20:29)
  %v69 = sea.nondet "nd_size_t" [14] : i64 loc("_37"("seahorn/lib/utils.c":46:20))
  sea.br ^bb23
^bb23:
  %v70 = sea.store %v3[%v10], %v69 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v71 = sea.const 0 : i64 loc("_39"("seahorn/lib/utils.c":47:12))
  %v72 = sea.icmp ne, %v23, %v71 : i64 loc("_39"("seahorn/lib/utils.c":47:12))
  %v73 = sea.ptr.null : !sea.ptr<64> loc("_40")
  %v74 = sea.ptr.cmp ne, %v43, %v73 : !sea.ptr<64> loc("_40")
  %v75 = sea.and %v72, %v74 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v75, ^bb26, ^bb24 loc("seahorn/lib/utils.c":47:16)
^bb24:
  %v76 = sea.nondet "nd_uint8_t" [15] : i8 loc("_52"("seahorn/lib/utils.c":51:21))
  %v77 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_53"("seahorn/lib/utils.c":51:14))
  sea.br ^bb25
^bb25:
  %v78 = sea.store %v70[%v77], %v76 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb31(%v76 : i8)
^bb26:
  sea.br ^bb27
^bb27:
  %v79 = sea.icmp ult, %v69, %v23 : i64 loc("_43"("seahorn/lib/utils.c":48:27))
  sea.assume %v79 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb28
^bb28:
  %v80 = sea.ptr.index %v43 [%v69] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_45"("seahorn/lib/utils.c":49:21))
  %v81 = sea.const 1 : i64 loc("_46"("seahorn/lib/utils.c":49:21))
  %v82 = sea.ptr.dereferenceable %v80, %v81 : !sea.ptr<64>, i64 loc("_46"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v82, ^bb29, ^bb96
^bb29:
  %v83 = sea.load %v42[%v80] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_48"("seahorn/lib/utils.c":49:21))
  %v84 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_49"("seahorn/lib/utils.c":49:14))
  sea.br ^bb30
^bb30:
  %v85 = sea.store %v70[%v84], %v83 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb31(%v83 : i8) loc("seahorn/lib/utils.c":50:3)
^bb31(%v86 : i8):
  sea.br ^bb32
^bb32:
  %v87 = sea.const 0 : i64 loc("_57"("aws-c-common/source/byte_buf.c":1452:18))
  %v88 = sea.icmp slt, %v23, %v87 : i64 loc("_57"("aws-c-common/source/byte_buf.c":1452:18))
  sea.cond_br %v88, ^bb45, ^bb33 loc("aws-c-common/source/byte_buf.c":1452:36)
^bb33:
  sea.br ^bb34
^bb34:
  sea.br ^bb35
^bb35:
  %v89 = sea.icmp ult, %v23, %v24 : i64 loc(".not16"("aws-c-common/source/byte_buf.c":1452:79))
  sea.cond_br %v89, ^bb36, ^bb45 loc("aws-c-common/source/byte_buf.c":1452:9)
^bb36:
  sea.br ^bb37
^bb37:
  sea.br ^bb38
^bb38:
  %v90 = sea.ptr.index %v43 [%v23] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_64"("aws-c-common/source/byte_buf.c":1457:24))
  %v91 = sea.const 1 : i64 loc("_65"("seahorn/lib/bcmp.c":161:3))
  %v92 = sea.ptr.dereferenceable %v90, %v91 : !sea.ptr<64>, i64 loc("_65"("seahorn/lib/bcmp.c":161:3))
  %v93 = sea.const 1 : i64 loc("_66"("seahorn/lib/bcmp.c":161:3))
  %v94 = sea.ptr.dereferenceable %v90, %v93 : !sea.ptr<64>, i64 loc("_66"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v94, ^bb39, ^bb96 loc("seahorn/lib/bcmp.c":161:3)
^bb39:
  sea.br ^bb40 loc("seahorn/lib/bcmp.c":162:3)
^bb40:
  %v95 = sea.store %v42[%v90], %v49 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb41
^bb41:
  sea.br ^bb42
^bb42:
  %v96 = sea.const 1 : i64 loc("_69"("aws-c-common/source/byte_buf.c":1458:14))
  %v97 = sea.add %v23, %v96 nuw : i64 loc("_69"("aws-c-common/source/byte_buf.c":1458:14))
  %v98 = sea.load %v61[%v8] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_70"("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":26:5))
  %v99 = sea.icmp eq, %v23, %v98 : i64 loc("_71"("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":26:5))
  sea.cond_br %v99, ^bb43, ^bb96 loc("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":26:5)
^bb43:
  %v100 = sea.load %v65[%v64] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_73"("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":27:5))
  %v101 = sea.load %v30[%v29] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_74"("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":27:5))
  %v102 = sea.icmp eq, %v100, %v101 : i64 loc("_75"("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":27:5))
  sea.cond_br %v102, ^bb44, ^bb96 loc("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":27:5)
^bb44:
  %v103 = sea.load %v68[%v66] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_77"("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":28:5))
  %v104 = sea.load %v48[%v46] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_78"("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":28:5))
  %v105 = sea.ptr.cmp eq, %v103, %v104 : !sea.ptr<64> loc("_79"("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":28:5))
  sea.cond_br %v105, ^bb67(%v97, %v100 : i64, i64), ^bb96 loc("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":28:5)
^bb45:
  sea.br ^bb46
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
  %v106 = sea.const 0 : i64 loc(".not.i.i"("seahorn/lib/utils.c":86:16))
  %v107 = sea.icmp eq, %v23, %v106 : i64 loc(".not.i.i"("seahorn/lib/utils.c":86:16))
  %v108 = sea.const 0 : i64 loc("seahorn/lib/utils.c":86:7)
  sea.cond_br %v107, ^bb67(%v108, %v24 : i64, i64), ^bb59 loc("seahorn/lib/utils.c":86:7)
^bb59:
  sea.br ^bb60
^bb60:
  %v109 = sea.ptr.null : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v110 = sea.ptr.cmp eq, %v43, %v109 : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  sea.cond_br %v110, ^bb67(%v23, %v24 : i64, i64), ^bb61 loc("seahorn/lib/utils.c":39:14)
^bb61:
  sea.br ^bb62
^bb62:
  %v111 = sea.ptr.index %v43 [%v69] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_97"("seahorn/lib/utils.c":40:5))
  %v112 = sea.const 1 : i64 loc("_98"("seahorn/lib/utils.c":40:5))
  %v113 = sea.ptr.dereferenceable %v111, %v112 : !sea.ptr<64>, i64 loc("_98"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v113, ^bb63, ^bb96
^bb63:
  %v114 = sea.load %v42[%v111] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_100"("seahorn/lib/utils.c":40:5))
  sea.br ^bb64
^bb64:
  %v115 = sea.icmp eq, %v114, %v86 : i8 loc("_102"("seahorn/lib/utils.c":40:5))
  sea.br ^bb65
^bb65:
  %v116 = sea.const 1 : i64 loc("_104"("seahorn/lib/utils.c":40:5))
  %v117 = sea.ptr.dereferenceable %v111, %v116 : !sea.ptr<64>, i64 loc("_104"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v117, ^bb66, ^bb96
^bb66:
  %v118 = sea.const 1 : i1 loc("or.cond10")
  %v119 = sea.const 0 : i1 loc("or.cond10")
  %v120 = sea.select %v118, %v115, %v119 : i1 loc("or.cond10")
  sea.cond_br %v120, ^bb67(%v23, %v24 : i64, i64), ^bb96
^bb67(%v121 : i64, %v122 : i64):
  sea.br ^bb68
^bb68:
  %v123 = sea.const 0 : i64 loc("_109"("aws-c-common/source/byte_buf.c":60:28))
  %v124 = sea.icmp eq, %v122, %v123 : i64 loc("_109"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v124, ^bb76, ^bb69 loc("aws-c-common/source/byte_buf.c":60:33)
^bb69:
  sea.br ^bb70
^bb70:
  sea.br ^bb71
^bb71:
  sea.br ^bb72
^bb72:
  %v125 = sea.icmp ugt, %v121, %v122 : i64 loc(".not2.i12.i"("aws-c-common/source/byte_buf.c":61:44))
  %v126 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v125, ^bb81(%v126 : i1), ^bb73 loc("aws-c-common/source/byte_buf.c":61:61)
^bb73:
  sea.br ^bb74
^bb74:
  sea.br ^bb75
^bb75:
  %v127 = sea.load %v45[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_123"("aws-c-common/source/byte_buf.c":61:64))
  %v128 = sea.ptr.null : !sea.ptr<64> loc("_124"("aws-c-common/source/byte_buf.c":61:64))
  %v129 = sea.ptr.cmp ne, %v127, %v128 : !sea.ptr<64> loc("_124"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb81(%v129 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb76:
  sea.br ^bb77
^bb77:
  %v130 = sea.const 0 : i64 loc("_112"("aws-c-common/source/byte_buf.c":60:45))
  %v131 = sea.icmp eq, %v121, %v130 : i64 loc("_112"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v131, ^bb78, ^bb80 loc("aws-c-common/source/byte_buf.c":60:50)
^bb78:
  sea.br ^bb79
^bb79:
  %v132 = sea.load %v45[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_115"("aws-c-common/source/byte_buf.c":60:58))
  %v133 = sea.ptr.null : !sea.ptr<64> loc("_116"("aws-c-common/source/byte_buf.c":60:65))
  %v134 = sea.ptr.cmp eq, %v132, %v133 : !sea.ptr<64> loc("_116"("aws-c-common/source/byte_buf.c":60:65))
  %v135 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v134, ^bb81(%v135 : i1), ^bb80 loc("aws-c-common/source/byte_buf.c":60:74)
^bb80:
  %v136 = sea.const 0 : i1
  sea.br ^bb81(%v136 : i1)
^bb81(%v137 : i1):
  sea.br ^bb82
^bb82:
  sea.cond_br %v124, ^bb90, ^bb83 loc("aws-c-common/source/byte_buf.c":60:33)
^bb83:
  sea.br ^bb84
^bb84:
  sea.br ^bb85
^bb85:
  sea.br ^bb86
^bb86:
  %v138 = sea.icmp ugt, %v121, %v122 : i64 loc(".not2.i.i"("aws-c-common/source/byte_buf.c":61:44))
  %v139 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v138, ^bb95(%v139 : i1), ^bb87 loc("aws-c-common/source/byte_buf.c":61:61)
^bb87:
  sea.br ^bb88
^bb88:
  sea.br ^bb89
^bb89:
  %v140 = sea.load %v45[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_140"("aws-c-common/source/byte_buf.c":61:64))
  %v141 = sea.ptr.null : !sea.ptr<64> loc("_141"("aws-c-common/source/byte_buf.c":61:64))
  %v142 = sea.ptr.cmp ne, %v140, %v141 : !sea.ptr<64> loc("_141"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb95(%v142 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb90:
  sea.br ^bb91
^bb91:
  %v143 = sea.const 0 : i64 loc("_129"("aws-c-common/source/byte_buf.c":60:45))
  %v144 = sea.icmp eq, %v121, %v143 : i64 loc("_129"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v144, ^bb92, ^bb94 loc("aws-c-common/source/byte_buf.c":60:50)
^bb92:
  sea.br ^bb93
^bb93:
  %v145 = sea.load %v45[%v44] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_132"("aws-c-common/source/byte_buf.c":60:58))
  %v146 = sea.ptr.null : !sea.ptr<64> loc("_133"("aws-c-common/source/byte_buf.c":60:65))
  %v147 = sea.ptr.cmp eq, %v145, %v146 : !sea.ptr<64> loc("_133"("aws-c-common/source/byte_buf.c":60:65))
  %v148 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v147, ^bb95(%v148 : i1), ^bb94 loc("aws-c-common/source/byte_buf.c":60:74)
^bb94:
  %v149 = sea.const 0 : i1
  sea.br ^bb95(%v149 : i1)
^bb95(%v150 : i1):
  %v151 = sea.const 1 : i1 loc("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":33:3)
  %v152 = sea.xor %v150, %v151 : i1 loc("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":33:3)
  sea.assume %v152 loc("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":33:3)
  sea.br ^bb96 loc("seahorn/jobs/byte_buf_write_u8/aws_byte_buf_write_u8_harness.c":33:3)
^bb96:
  sea.br ^bb97
^bb97:
  %v153 = sea.const 0 : i1
  sea.assert %v153
  sea.halt
}
