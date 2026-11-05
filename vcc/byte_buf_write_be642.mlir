// Exported from SeaHorn (byte_buf_write_be642.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm15")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm16")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm17")
  %v3 = sea.mem.nondet "region.57" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm18")
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
  %v46 = sea.nondet "nd_uint64_t" [11] : i64 loc("_20"("seahorn/jobs2/byte_buf_write_be642/aws_byte_buf_write_be64_harness2.c":14:18))
  sea.br ^bb9
^bb9:
  sea.cond_br %v29, ^bb17, ^bb10 loc("aws-c-common/source/byte_buf.c":60:33)
^bb10:
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  sea.br ^bb13
^bb13:
  %v47 = sea.icmp ugt, %v20, %v21 : i64 loc(".not2.i16.i"("aws-c-common/source/byte_buf.c":61:44))
  %v48 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v47, ^bb22(%v48 : i1), ^bb14 loc("aws-c-common/source/byte_buf.c":61:61)
^bb14:
  sea.br ^bb15
^bb15:
  sea.br ^bb16
^bb16:
  %v49 = sea.ptr.null : !sea.ptr<64> loc("_34"("aws-c-common/source/byte_buf.c":61:64))
  %v50 = sea.ptr.cmp ne, %v40, %v49 : !sea.ptr<64> loc("_34"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb22(%v50 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb17:
  sea.br ^bb18
^bb18:
  %v51 = sea.const 0 : i64 loc("_24"("aws-c-common/source/byte_buf.c":60:45))
  %v52 = sea.icmp eq, %v20, %v51 : i64 loc("_24"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v52, ^bb19, ^bb21 loc("aws-c-common/source/byte_buf.c":60:50)
^bb19:
  sea.br ^bb20
^bb20:
  %v53 = sea.ptr.null : !sea.ptr<64> loc("_27"("aws-c-common/source/byte_buf.c":60:65))
  %v54 = sea.ptr.cmp eq, %v40, %v53 : !sea.ptr<64> loc("_27"("aws-c-common/source/byte_buf.c":60:65))
  %v55 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v54, ^bb22(%v55 : i1), ^bb21 loc("aws-c-common/source/byte_buf.c":60:74)
^bb21:
  %v56 = sea.const 0 : i1
  sea.br ^bb22(%v56 : i1)
^bb22(%v57 : i1):
  sea.assume %v57 loc("seahorn/jobs2/byte_buf_write_be642/aws_byte_buf_write_be64_harness2.c":17:5)
  %v58 = sea.nondet "nd_size_t" [12] : i64 loc("_36"("seahorn/lib/utils.c":46:20))
  sea.br ^bb23
^bb23:
  %v59 = sea.store %v2[%v7], %v58 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v60 = sea.const 0 : i64 loc("_38"("seahorn/lib/utils.c":47:12))
  %v61 = sea.icmp ne, %v20, %v60 : i64 loc("_38"("seahorn/lib/utils.c":47:12))
  %v62 = sea.ptr.null : !sea.ptr<64> loc("_39")
  %v63 = sea.ptr.cmp ne, %v40, %v62 : !sea.ptr<64> loc("_39")
  %v64 = sea.and %v61, %v63 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v64, ^bb26, ^bb24 loc("seahorn/lib/utils.c":47:16)
^bb24:
  %v65 = sea.nondet "nd_uint8_t" [13] : i8 loc("_51"("seahorn/lib/utils.c":51:21))
  %v66 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_52"("seahorn/lib/utils.c":51:14))
  sea.br ^bb25
^bb25:
  %v67 = sea.store %v59[%v66], %v65 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb31
^bb26:
  sea.br ^bb27
^bb27:
  %v68 = sea.icmp ult, %v58, %v20 : i64 loc("_42"("seahorn/lib/utils.c":48:27))
  sea.assume %v68 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb28
^bb28:
  %v69 = sea.ptr.index %v40 [%v58] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_44"("seahorn/lib/utils.c":49:21))
  %v70 = sea.const 1 : i64 loc("_45"("seahorn/lib/utils.c":49:21))
  %v71 = sea.ptr.dereferenceable %v69, %v70 : !sea.ptr<64>, i64 loc("_45"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v71, ^bb29, ^bb72
^bb29:
  %v72 = sea.load %v39[%v69] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_47"("seahorn/lib/utils.c":49:21))
  %v73 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_48"("seahorn/lib/utils.c":49:14))
  sea.br ^bb30
^bb30:
  %v74 = sea.store %v59[%v73], %v72 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb31 loc("seahorn/lib/utils.c":50:3)
^bb31:
  sea.tracking_on loc("seahorn/jobs2/byte_buf_write_be642/aws_byte_buf_write_be64_harness2.c":26:5)
  %v75 = sea.bswap %v46 : i64 loc("_54"("aws-c-common/include/aws/common/byte_order.inl":40:5))
  sea.br ^bb32
^bb32:
  %v76 = sea.const 0 : i64 loc("_56"("aws-c-common/source/byte_buf.c":1452:18))
  %v77 = sea.icmp slt, %v20, %v76 : i64 loc("_56"("aws-c-common/source/byte_buf.c":1452:18))
  sea.cond_br %v77, ^bb43, ^bb33 loc("aws-c-common/source/byte_buf.c":1452:36)
^bb33:
  sea.br ^bb34
^bb34:
  sea.br ^bb35
^bb35:
  %v78 = sea.const 8 : i64 loc("_60"("aws-c-common/source/byte_buf.c":1452:73))
  %v79 = sea.add %v20, %v78 nuw : i64 loc("_60"("aws-c-common/source/byte_buf.c":1452:73))
  %v80 = sea.icmp ugt, %v79, %v21 : i64 loc("_61"("aws-c-common/source/byte_buf.c":1452:79))
  sea.cond_br %v80, ^bb43, ^bb36 loc("aws-c-common/source/byte_buf.c":1452:9)
^bb36:
  sea.br ^bb37
^bb37:
  sea.br ^bb38
^bb38:
  %v81 = sea.ptr.index %v40 [%v20] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_65"("aws-c-common/source/byte_buf.c":1457:24))
  %v82 = sea.const 8 : i64 loc("_66"("seahorn/lib/bcmp.c":161:3))
  %v83 = sea.ptr.dereferenceable %v81, %v82 : !sea.ptr<64>, i64 loc("_66"("seahorn/lib/bcmp.c":161:3))
  %v84 = sea.const 8 : i64 loc("_67"("seahorn/lib/bcmp.c":161:3))
  %v85 = sea.ptr.dereferenceable %v81, %v84 : !sea.ptr<64>, i64 loc("_67"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v85, ^bb39, ^bb72 loc("seahorn/lib/bcmp.c":161:3)
^bb39:
  sea.br ^bb40 loc("seahorn/lib/bcmp.c":162:3)
^bb40:
  %v86 = sea.store %v39[%v81], %v75 inplace : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb41
^bb41:
  sea.br ^bb42
^bb42:
  %v87 = sea.load %v27[%v26] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_74"("seahorn/jobs2/byte_buf_write_be642/aws_byte_buf_write_be64_harness2.c":31:9))
  %v88 = sea.icmp eq, %v21, %v87 : i64 loc("_75"("seahorn/jobs2/byte_buf_write_be642/aws_byte_buf_write_be64_harness2.c":31:9))
  sea.cond_br %v88, ^bb45(%v79 : i64), ^bb72 loc("seahorn/jobs2/byte_buf_write_be642/aws_byte_buf_write_be64_harness2.c":31:9)
^bb43:
  %v89 = sea.mem.is_modified %v25[%v5] : !sea.mem<!sea.ptr<64>, i8> loc("_70"("seahorn/jobs2/byte_buf_write_be642/aws_byte_buf_write_be64_harness2.c":33:9))
  %v90 = sea.const 1 : i1 loc("_71"("seahorn/jobs2/byte_buf_write_be642/aws_byte_buf_write_be64_harness2.c":33:9))
  %v91 = sea.xor %v89, %v90 : i1 loc("_71"("seahorn/jobs2/byte_buf_write_be642/aws_byte_buf_write_be64_harness2.c":33:9))
  %v92 = sea.mem.is_modified %v25[%v5] : !sea.mem<!sea.ptr<64>, i8> loc("_72"("seahorn/jobs2/byte_buf_write_be642/aws_byte_buf_write_be64_harness2.c":33:9))
  sea.cond_br %v92, ^bb72, ^bb44 loc("seahorn/jobs2/byte_buf_write_be642/aws_byte_buf_write_be64_harness2.c":33:9)
^bb44:
  %v93 = sea.mem.is_modified %v39[%v40] : !sea.mem<!sea.ptr<64>, i8> loc("_77"("seahorn/jobs2/byte_buf_write_be642/aws_byte_buf_write_be64_harness2.c":34:9))
  %v94 = sea.const 1 : i1 loc("_78"("seahorn/jobs2/byte_buf_write_be642/aws_byte_buf_write_be64_harness2.c":34:9))
  %v95 = sea.xor %v93, %v94 : i1 loc("_78"("seahorn/jobs2/byte_buf_write_be642/aws_byte_buf_write_be64_harness2.c":34:9))
  %v96 = sea.mem.is_modified %v39[%v40] : !sea.mem<!sea.ptr<64>, i8> loc("_79"("seahorn/jobs2/byte_buf_write_be642/aws_byte_buf_write_be64_harness2.c":34:9))
  sea.cond_br %v96, ^bb72, ^bb45(%v20 : i64) loc("seahorn/jobs2/byte_buf_write_be642/aws_byte_buf_write_be64_harness2.c":34:9)
^bb45(%v97 : i64):
  sea.br ^bb46
^bb46:
  sea.cond_br %v29, ^bb54, ^bb47 loc("aws-c-common/source/byte_buf.c":60:33)
^bb47:
  sea.br ^bb48
^bb48:
  sea.br ^bb49
^bb49:
  sea.br ^bb50
^bb50:
  %v98 = sea.icmp ugt, %v97, %v21 : i64 loc(".not2.i12.i"("aws-c-common/source/byte_buf.c":61:44))
  %v99 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v98, ^bb59(%v99 : i1), ^bb51 loc("aws-c-common/source/byte_buf.c":61:61)
^bb51:
  sea.br ^bb52
^bb52:
  sea.br ^bb53
^bb53:
  %v100 = sea.load %v42[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_96"("aws-c-common/source/byte_buf.c":61:64))
  %v101 = sea.ptr.null : !sea.ptr<64> loc("_97"("aws-c-common/source/byte_buf.c":61:64))
  %v102 = sea.ptr.cmp ne, %v100, %v101 : !sea.ptr<64> loc("_97"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb59(%v102 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb54:
  sea.br ^bb55
^bb55:
  %v103 = sea.const 0 : i64 loc("_85"("aws-c-common/source/byte_buf.c":60:45))
  %v104 = sea.icmp eq, %v97, %v103 : i64 loc("_85"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v104, ^bb56, ^bb58 loc("aws-c-common/source/byte_buf.c":60:50)
^bb56:
  sea.br ^bb57
^bb57:
  %v105 = sea.load %v42[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_88"("aws-c-common/source/byte_buf.c":60:58))
  %v106 = sea.ptr.null : !sea.ptr<64> loc("_89"("aws-c-common/source/byte_buf.c":60:65))
  %v107 = sea.ptr.cmp eq, %v105, %v106 : !sea.ptr<64> loc("_89"("aws-c-common/source/byte_buf.c":60:65))
  %v108 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v107, ^bb59(%v108 : i1), ^bb58 loc("aws-c-common/source/byte_buf.c":60:74)
^bb58:
  %v109 = sea.const 0 : i1
  sea.br ^bb59(%v109 : i1)
^bb59(%v110 : i1):
  sea.br ^bb60
^bb60:
  sea.cond_br %v29, ^bb66, ^bb61 loc("aws-c-common/source/byte_buf.c":60:33)
^bb61:
  sea.br ^bb62
^bb62:
  sea.br ^bb63
^bb63:
  %v111 = sea.icmp ule, %v97, %v21 : i64 loc(".not2.i.i")
  %v112 = sea.const 1 : i1 loc("or.cond8.not")
  %v113 = sea.const 0 : i1 loc("or.cond8.not")
  %v114 = sea.select %v112, %v111, %v113 : i1 loc("or.cond8.not")
  sea.cond_br %v114, ^bb64, ^bb72
^bb64:
  sea.br ^bb65
^bb65:
  %v115 = sea.load %v42[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_112")
  %v116 = sea.ptr.null : !sea.ptr<64> loc("_113")
  %v117 = sea.ptr.cmp ne, %v115, %v116 : !sea.ptr<64> loc("_113")
  %v118 = sea.const 1 : i1 loc("or.cond")
  %v119 = sea.const 0 : i1 loc("or.cond")
  %v120 = sea.select %v118, %v117, %v119 : i1 loc("or.cond")
  sea.cond_br %v120, ^bb71, ^bb72
^bb66:
  sea.br ^bb67
^bb67:
  %v121 = sea.const 0 : i64 loc("_102"("aws-c-common/source/byte_buf.c":60:45))
  %v122 = sea.icmp eq, %v97, %v121 : i64 loc("_102"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v122, ^bb68, ^bb70 loc("aws-c-common/source/byte_buf.c":60:50)
^bb68:
  sea.br ^bb69
^bb69:
  %v123 = sea.load %v42[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_105"("aws-c-common/source/byte_buf.c":60:58))
  %v124 = sea.ptr.null : !sea.ptr<64> loc("_106"("aws-c-common/source/byte_buf.c":60:65))
  %v125 = sea.ptr.cmp eq, %v123, %v124 : !sea.ptr<64> loc("_106"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v125, ^bb71, ^bb70 loc("aws-c-common/source/byte_buf.c":60:74)
^bb70:
  sea.br ^bb72
^bb71:
  %v126 = sea.load %v45[%v43] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_114"("seahorn/jobs2/byte_buf_write_be642/aws_byte_buf_write_be64_harness2.c":38:5))
  %v127 = sea.mem.is_modified %v10[%v126] : !sea.mem<!sea.ptr<64>, i8> loc("_115"("seahorn/jobs2/byte_buf_write_be642/aws_byte_buf_write_be64_harness2.c":38:5))
  %v128 = sea.const 1 : i1 loc("_116"("seahorn/jobs2/byte_buf_write_be642/aws_byte_buf_write_be64_harness2.c":38:5))
  %v129 = sea.xor %v127, %v128 : i1 loc("_116"("seahorn/jobs2/byte_buf_write_be642/aws_byte_buf_write_be64_harness2.c":38:5))
  %v130 = sea.mem.is_modified %v10[%v126] : !sea.mem<!sea.ptr<64>, i8> loc("_117"("seahorn/jobs2/byte_buf_write_be642/aws_byte_buf_write_be64_harness2.c":38:5))
  sea.assume %v130 loc("seahorn/jobs2/byte_buf_write_be642/aws_byte_buf_write_be64_harness2.c":38:5)
  sea.br ^bb72 loc("seahorn/jobs2/byte_buf_write_be642/aws_byte_buf_write_be64_harness2.c":38:5)
^bb72:
  sea.br ^bb73
^bb73:
  %v131 = sea.const 0 : i1
  sea.assert %v131
  sea.halt
}
