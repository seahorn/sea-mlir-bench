// Exported from SeaHorn (byte_buf_write_be162.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm11")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm12")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm13")
  %v3 = sea.const 32 : i64 loc("_0")
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
  %v17 = sea.nondet "nd_size_t" [4] : i64 loc("_3"("seahorn/lib/byte_buf_helper.c":19:18))
  %v18 = sea.nondet "nd_size_t" [5] : i64 loc("_4"("seahorn/lib/byte_buf_helper.c":20:18))
  %v19 = sea.icmp ule, %v17, %v18 : i64 loc("_5"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v19 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v20 = sea.const 11 : i64 loc("_6"("seahorn/lib/byte_buf_helper.c":22:16))
  %v21 = sea.icmp ult, %v18, %v20 : i64 loc("_6"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v21 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb1
^bb1:
  %v22 = sea.store %v1[%v4], %v17 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v23 = sea.ptr.index %v4 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_8"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb2
^bb2:
  %v24 = sea.store %v22[%v23], %v18 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v25 = sea.const 0 : i64 loc("_10"("seahorn/lib/proof_allocators.c":21:15))
  %v26 = sea.icmp eq, %v18, %v25 : i64 loc("_10"("seahorn/lib/proof_allocators.c":21:15))
  %v27 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v26, ^bb6(%v2, %v27 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/proof_allocators.c":21:10)
^bb3:
  %v28 = sea.nondet "nd_malloc_is_fail" [6] : i1 loc("_12"("seahorn/lib/sea_allocators.c":11:10))
  %v29 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v28, ^bb5(%v2, %v29 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/sea_allocators.c":11:10)
^bb4:
  %v30 = sea.const 1 : i64 loc("malloc.i")
  %v31 = sea.mul %v18, %v30 : i64 loc("malloc.i")
  %v32 = sea.alloca %v31 align 16 [7] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb5(%v2, %v32 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb5(%v33 : !sea.mem<!sea.ptr<64>, i8>, %v34 : !sea.ptr<64>):
  %v35 = sea.memhavoc %v33[%v34], %v18 [8] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb6(%v35, %v34 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb6(%v36 : !sea.mem<!sea.ptr<64>, i8>, %v37 : !sea.ptr<64>):
  %v38 = sea.ptr.index %v4 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_16"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb7
^bb7:
  %v39 = sea.store %v24[%v38], %v37 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v40 = sea.ptr.index %v4 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_18"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb8
^bb8:
  %v41 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v42 = sea.store %v39[%v40], %v41 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v43 = sea.nondet "nd_uint16_t" [9] : i16 loc("_19"("seahorn/jobs2/byte_buf_write_be162/aws_byte_buf_write_be16_harness2.c":14:18))
  sea.br ^bb9
^bb9:
  sea.cond_br %v26, ^bb17, ^bb10 loc("aws-c-common/source/byte_buf.c":60:33)
^bb10:
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  sea.br ^bb13
^bb13:
  %v44 = sea.icmp ugt, %v17, %v18 : i64 loc(".not2.i7.i"("aws-c-common/source/byte_buf.c":61:44))
  %v45 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v44, ^bb22(%v45 : i1), ^bb14 loc("aws-c-common/source/byte_buf.c":61:61)
^bb14:
  sea.br ^bb15
^bb15:
  sea.br ^bb16
^bb16:
  %v46 = sea.ptr.null : !sea.ptr<64> loc("_33"("aws-c-common/source/byte_buf.c":61:64))
  %v47 = sea.ptr.cmp ne, %v37, %v46 : !sea.ptr<64> loc("_33"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb22(%v47 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb17:
  sea.br ^bb18
^bb18:
  %v48 = sea.const 0 : i64 loc("_23"("aws-c-common/source/byte_buf.c":60:45))
  %v49 = sea.icmp eq, %v17, %v48 : i64 loc("_23"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v49, ^bb19, ^bb21 loc("aws-c-common/source/byte_buf.c":60:50)
^bb19:
  sea.br ^bb20
^bb20:
  %v50 = sea.ptr.null : !sea.ptr<64> loc("_26"("aws-c-common/source/byte_buf.c":60:65))
  %v51 = sea.ptr.cmp eq, %v37, %v50 : !sea.ptr<64> loc("_26"("aws-c-common/source/byte_buf.c":60:65))
  %v52 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v51, ^bb22(%v52 : i1), ^bb21 loc("aws-c-common/source/byte_buf.c":60:74)
^bb21:
  %v53 = sea.const 0 : i1
  sea.br ^bb22(%v53 : i1)
^bb22(%v54 : i1):
  sea.assume %v54 loc("seahorn/jobs2/byte_buf_write_be162/aws_byte_buf_write_be16_harness2.c":17:5)
  sea.tracking_on loc("seahorn/jobs2/byte_buf_write_be162/aws_byte_buf_write_be16_harness2.c":22:5)
  %v55 = sea.bswap %v43 : i16 loc("_35"("aws-c-common/include/aws/common/byte_order.inl":147:12))
  sea.br ^bb23
^bb23:
  %v56 = sea.const 0 : i64 loc("_37"("aws-c-common/source/byte_buf.c":1452:18))
  %v57 = sea.icmp slt, %v17, %v56 : i64 loc("_37"("aws-c-common/source/byte_buf.c":1452:18))
  sea.cond_br %v57, ^bb34, ^bb24 loc("aws-c-common/source/byte_buf.c":1452:36)
^bb24:
  sea.br ^bb25
^bb25:
  sea.br ^bb26
^bb26:
  %v58 = sea.const 2 : i64 loc("_41"("aws-c-common/source/byte_buf.c":1452:73))
  %v59 = sea.add %v17, %v58 nuw : i64 loc("_41"("aws-c-common/source/byte_buf.c":1452:73))
  %v60 = sea.icmp ugt, %v59, %v18 : i64 loc("_42"("aws-c-common/source/byte_buf.c":1452:79))
  sea.cond_br %v60, ^bb34, ^bb27 loc("aws-c-common/source/byte_buf.c":1452:9)
^bb27:
  sea.br ^bb28
^bb28:
  sea.br ^bb29
^bb29:
  %v61 = sea.ptr.index %v37 [%v17] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_46"("aws-c-common/source/byte_buf.c":1457:24))
  %v62 = sea.const 2 : i64 loc("_47"("seahorn/lib/bcmp.c":161:3))
  %v63 = sea.ptr.dereferenceable %v61, %v62 : !sea.ptr<64>, i64 loc("_47"("seahorn/lib/bcmp.c":161:3))
  %v64 = sea.const 2 : i64 loc("_48"("seahorn/lib/bcmp.c":161:3))
  %v65 = sea.ptr.dereferenceable %v61, %v64 : !sea.ptr<64>, i64 loc("_48"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v65, ^bb30, ^bb63 loc("seahorn/lib/bcmp.c":161:3)
^bb30:
  sea.br ^bb31 loc("seahorn/lib/bcmp.c":162:3)
^bb31:
  %v66 = sea.store %v36[%v61], %v55 inplace : !sea.mem<!sea.ptr<64>, i8>, i16 loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb32
^bb32:
  sea.br ^bb33
^bb33:
  %v67 = sea.load %v24[%v23] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_55"("seahorn/jobs2/byte_buf_write_be162/aws_byte_buf_write_be16_harness2.c":27:9))
  %v68 = sea.icmp eq, %v67, %v18 : i64 loc("_56"("seahorn/jobs2/byte_buf_write_be162/aws_byte_buf_write_be16_harness2.c":27:9))
  sea.cond_br %v68, ^bb36(%v59 : i64), ^bb63 loc("seahorn/jobs2/byte_buf_write_be162/aws_byte_buf_write_be16_harness2.c":27:9)
^bb34:
  %v69 = sea.mem.is_modified %v22[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_51"("seahorn/jobs2/byte_buf_write_be162/aws_byte_buf_write_be16_harness2.c":29:9))
  %v70 = sea.const 1 : i1 loc("_52"("seahorn/jobs2/byte_buf_write_be162/aws_byte_buf_write_be16_harness2.c":29:9))
  %v71 = sea.xor %v69, %v70 : i1 loc("_52"("seahorn/jobs2/byte_buf_write_be162/aws_byte_buf_write_be16_harness2.c":29:9))
  %v72 = sea.mem.is_modified %v22[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_53"("seahorn/jobs2/byte_buf_write_be162/aws_byte_buf_write_be16_harness2.c":29:9))
  sea.cond_br %v72, ^bb63, ^bb35 loc("seahorn/jobs2/byte_buf_write_be162/aws_byte_buf_write_be16_harness2.c":29:9)
^bb35:
  %v73 = sea.mem.is_modified %v36[%v37] : !sea.mem<!sea.ptr<64>, i8> loc("_58"("seahorn/jobs2/byte_buf_write_be162/aws_byte_buf_write_be16_harness2.c":30:9))
  %v74 = sea.const 1 : i1 loc("_59"("seahorn/jobs2/byte_buf_write_be162/aws_byte_buf_write_be16_harness2.c":30:9))
  %v75 = sea.xor %v73, %v74 : i1 loc("_59"("seahorn/jobs2/byte_buf_write_be162/aws_byte_buf_write_be16_harness2.c":30:9))
  %v76 = sea.mem.is_modified %v36[%v37] : !sea.mem<!sea.ptr<64>, i8> loc("_60"("seahorn/jobs2/byte_buf_write_be162/aws_byte_buf_write_be16_harness2.c":30:9))
  sea.cond_br %v76, ^bb63, ^bb36(%v17 : i64) loc("seahorn/jobs2/byte_buf_write_be162/aws_byte_buf_write_be16_harness2.c":30:9)
^bb36(%v77 : i64):
  sea.br ^bb37
^bb37:
  sea.cond_br %v26, ^bb45, ^bb38 loc("aws-c-common/source/byte_buf.c":60:33)
^bb38:
  sea.br ^bb39
^bb39:
  sea.br ^bb40
^bb40:
  sea.br ^bb41
^bb41:
  %v78 = sea.icmp ugt, %v77, %v18 : i64 loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":61:44))
  %v79 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v78, ^bb50(%v79 : i1), ^bb42 loc("aws-c-common/source/byte_buf.c":61:61)
^bb42:
  sea.br ^bb43
^bb43:
  sea.br ^bb44
^bb44:
  %v80 = sea.load %v39[%v38] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_76"("aws-c-common/source/byte_buf.c":61:64))
  %v81 = sea.ptr.null : !sea.ptr<64> loc("_77"("aws-c-common/source/byte_buf.c":61:64))
  %v82 = sea.ptr.cmp ne, %v80, %v81 : !sea.ptr<64> loc("_77"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb50(%v82 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb45:
  sea.br ^bb46
^bb46:
  %v83 = sea.const 0 : i64 loc("_66"("aws-c-common/source/byte_buf.c":60:45))
  %v84 = sea.icmp eq, %v77, %v83 : i64 loc("_66"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v84, ^bb47, ^bb49 loc("aws-c-common/source/byte_buf.c":60:50)
^bb47:
  sea.br ^bb48
^bb48:
  %v85 = sea.ptr.null : !sea.ptr<64> loc("_69"("aws-c-common/source/byte_buf.c":60:65))
  %v86 = sea.ptr.cmp eq, %v37, %v85 : !sea.ptr<64> loc("_69"("aws-c-common/source/byte_buf.c":60:65))
  %v87 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v86, ^bb50(%v87 : i1), ^bb49 loc("aws-c-common/source/byte_buf.c":60:74)
^bb49:
  %v88 = sea.const 0 : i1
  sea.br ^bb50(%v88 : i1)
^bb50(%v89 : i1):
  sea.br ^bb51
^bb51:
  sea.cond_br %v26, ^bb57, ^bb52 loc("aws-c-common/source/byte_buf.c":60:33)
^bb52:
  sea.br ^bb53
^bb53:
  sea.br ^bb54
^bb54:
  %v90 = sea.icmp ule, %v77, %v18 : i64 loc(".not2.i.i")
  %v91 = sea.const 1 : i1 loc("or.cond6.not")
  %v92 = sea.const 0 : i1 loc("or.cond6.not")
  %v93 = sea.select %v91, %v90, %v92 : i1 loc("or.cond6.not")
  sea.cond_br %v93, ^bb55, ^bb63
^bb55:
  sea.br ^bb56
^bb56:
  %v94 = sea.load %v39[%v38] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_92")
  %v95 = sea.ptr.null : !sea.ptr<64> loc("_93")
  %v96 = sea.ptr.cmp ne, %v94, %v95 : !sea.ptr<64> loc("_93")
  %v97 = sea.const 1 : i1 loc("or.cond")
  %v98 = sea.const 0 : i1 loc("or.cond")
  %v99 = sea.select %v97, %v96, %v98 : i1 loc("or.cond")
  sea.cond_br %v99, ^bb62, ^bb63
^bb57:
  sea.br ^bb58
^bb58:
  %v100 = sea.const 0 : i64 loc("_82"("aws-c-common/source/byte_buf.c":60:45))
  %v101 = sea.icmp eq, %v77, %v100 : i64 loc("_82"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v101, ^bb59, ^bb61 loc("aws-c-common/source/byte_buf.c":60:50)
^bb59:
  sea.br ^bb60
^bb60:
  %v102 = sea.load %v39[%v38] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_85"("aws-c-common/source/byte_buf.c":60:58))
  %v103 = sea.ptr.null : !sea.ptr<64> loc("_86"("aws-c-common/source/byte_buf.c":60:65))
  %v104 = sea.ptr.cmp eq, %v102, %v103 : !sea.ptr<64> loc("_86"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v104, ^bb62, ^bb61 loc("aws-c-common/source/byte_buf.c":60:74)
^bb61:
  sea.br ^bb63
^bb62:
  %v105 = sea.load %v42[%v40] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_94"("seahorn/jobs2/byte_buf_write_be162/aws_byte_buf_write_be16_harness2.c":34:5))
  %v106 = sea.mem.is_modified %v7[%v105] : !sea.mem<!sea.ptr<64>, i8> loc("_95"("seahorn/jobs2/byte_buf_write_be162/aws_byte_buf_write_be16_harness2.c":34:5))
  %v107 = sea.const 1 : i1 loc("_96"("seahorn/jobs2/byte_buf_write_be162/aws_byte_buf_write_be16_harness2.c":34:5))
  %v108 = sea.xor %v106, %v107 : i1 loc("_96"("seahorn/jobs2/byte_buf_write_be162/aws_byte_buf_write_be16_harness2.c":34:5))
  %v109 = sea.mem.is_modified %v7[%v105] : !sea.mem<!sea.ptr<64>, i8> loc("_97"("seahorn/jobs2/byte_buf_write_be162/aws_byte_buf_write_be16_harness2.c":34:5))
  sea.assume %v109 loc("seahorn/jobs2/byte_buf_write_be162/aws_byte_buf_write_be16_harness2.c":34:5)
  sea.br ^bb63 loc("seahorn/jobs2/byte_buf_write_be162/aws_byte_buf_write_be16_harness2.c":34:5)
^bb63:
  sea.br ^bb64
^bb64:
  %v110 = sea.const 0 : i1
  sea.assert %v110
  sea.halt
}
