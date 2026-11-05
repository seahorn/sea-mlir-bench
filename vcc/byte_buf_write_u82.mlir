// Exported from SeaHorn (byte_buf_write_u82.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
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
  %v43 = sea.nondet "nd_uint8_t" [9] : i8 loc("_19"("seahorn/jobs2/byte_buf_write_u82/aws_byte_buf_write_u8_harness2.c":14:15))
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
  sea.assume %v54 loc("seahorn/jobs2/byte_buf_write_u82/aws_byte_buf_write_u8_harness2.c":17:3)
  sea.tracking_on loc("seahorn/jobs2/byte_buf_write_u82/aws_byte_buf_write_u8_harness2.c":22:3)
  sea.br ^bb23
^bb23:
  %v55 = sea.const 0 : i64 loc("_36"("aws-c-common/source/byte_buf.c":1452:18))
  %v56 = sea.icmp slt, %v17, %v55 : i64 loc("_36"("aws-c-common/source/byte_buf.c":1452:18))
  sea.cond_br %v56, ^bb34, ^bb24 loc("aws-c-common/source/byte_buf.c":1452:36)
^bb24:
  sea.br ^bb25
^bb25:
  sea.br ^bb26
^bb26:
  %v57 = sea.const 1 : i64 loc("_40"("aws-c-common/source/byte_buf.c":1452:73))
  %v58 = sea.add %v17, %v57 nuw : i64 loc("_40"("aws-c-common/source/byte_buf.c":1452:73))
  %v59 = sea.icmp ult, %v17, %v18 : i64 loc(".not11"("aws-c-common/source/byte_buf.c":1452:79))
  sea.cond_br %v59, ^bb27, ^bb34 loc("aws-c-common/source/byte_buf.c":1452:9)
^bb27:
  sea.br ^bb28
^bb28:
  sea.br ^bb29
^bb29:
  %v60 = sea.ptr.index %v37 [%v17] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_44"("aws-c-common/source/byte_buf.c":1457:24))
  %v61 = sea.const 1 : i64 loc("_45"("seahorn/lib/bcmp.c":161:3))
  %v62 = sea.ptr.dereferenceable %v60, %v61 : !sea.ptr<64>, i64 loc("_45"("seahorn/lib/bcmp.c":161:3))
  %v63 = sea.const 1 : i64 loc("_46"("seahorn/lib/bcmp.c":161:3))
  %v64 = sea.ptr.dereferenceable %v60, %v63 : !sea.ptr<64>, i64 loc("_46"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v64, ^bb30, ^bb63 loc("seahorn/lib/bcmp.c":161:3)
^bb30:
  sea.br ^bb31 loc("seahorn/lib/bcmp.c":162:3)
^bb31:
  %v65 = sea.store %v36[%v60], %v43 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb32
^bb32:
  sea.br ^bb33
^bb33:
  %v66 = sea.load %v24[%v23] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_53"("seahorn/jobs2/byte_buf_write_u82/aws_byte_buf_write_u8_harness2.c":27:5))
  %v67 = sea.icmp eq, %v66, %v18 : i64 loc("_54"("seahorn/jobs2/byte_buf_write_u82/aws_byte_buf_write_u8_harness2.c":27:5))
  sea.cond_br %v67, ^bb36(%v58 : i64), ^bb63 loc("seahorn/jobs2/byte_buf_write_u82/aws_byte_buf_write_u8_harness2.c":27:5)
^bb34:
  %v68 = sea.mem.is_modified %v22[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_49"("seahorn/jobs2/byte_buf_write_u82/aws_byte_buf_write_u8_harness2.c":29:5))
  %v69 = sea.const 1 : i1 loc("_50"("seahorn/jobs2/byte_buf_write_u82/aws_byte_buf_write_u8_harness2.c":29:5))
  %v70 = sea.xor %v68, %v69 : i1 loc("_50"("seahorn/jobs2/byte_buf_write_u82/aws_byte_buf_write_u8_harness2.c":29:5))
  %v71 = sea.mem.is_modified %v22[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_51"("seahorn/jobs2/byte_buf_write_u82/aws_byte_buf_write_u8_harness2.c":29:5))
  sea.cond_br %v71, ^bb63, ^bb35 loc("seahorn/jobs2/byte_buf_write_u82/aws_byte_buf_write_u8_harness2.c":29:5)
^bb35:
  %v72 = sea.mem.is_modified %v36[%v37] : !sea.mem<!sea.ptr<64>, i8> loc("_56"("seahorn/jobs2/byte_buf_write_u82/aws_byte_buf_write_u8_harness2.c":30:5))
  %v73 = sea.const 1 : i1 loc("_57"("seahorn/jobs2/byte_buf_write_u82/aws_byte_buf_write_u8_harness2.c":30:5))
  %v74 = sea.xor %v72, %v73 : i1 loc("_57"("seahorn/jobs2/byte_buf_write_u82/aws_byte_buf_write_u8_harness2.c":30:5))
  %v75 = sea.mem.is_modified %v36[%v37] : !sea.mem<!sea.ptr<64>, i8> loc("_58"("seahorn/jobs2/byte_buf_write_u82/aws_byte_buf_write_u8_harness2.c":30:5))
  sea.cond_br %v75, ^bb63, ^bb36(%v17 : i64) loc("seahorn/jobs2/byte_buf_write_u82/aws_byte_buf_write_u8_harness2.c":30:5)
^bb36(%v76 : i64):
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
  %v77 = sea.icmp ugt, %v76, %v18 : i64 loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":61:44))
  %v78 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v77, ^bb50(%v78 : i1), ^bb42 loc("aws-c-common/source/byte_buf.c":61:61)
^bb42:
  sea.br ^bb43
^bb43:
  sea.br ^bb44
^bb44:
  %v79 = sea.ptr.null : !sea.ptr<64> loc("_74"("aws-c-common/source/byte_buf.c":61:64))
  %v80 = sea.ptr.cmp ne, %v37, %v79 : !sea.ptr<64> loc("_74"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb50(%v80 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb45:
  sea.br ^bb46
^bb46:
  %v81 = sea.const 0 : i64 loc("_64"("aws-c-common/source/byte_buf.c":60:45))
  %v82 = sea.icmp eq, %v76, %v81 : i64 loc("_64"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v82, ^bb47, ^bb49 loc("aws-c-common/source/byte_buf.c":60:50)
^bb47:
  sea.br ^bb48
^bb48:
  %v83 = sea.ptr.null : !sea.ptr<64> loc("_67"("aws-c-common/source/byte_buf.c":60:65))
  %v84 = sea.ptr.cmp eq, %v37, %v83 : !sea.ptr<64> loc("_67"("aws-c-common/source/byte_buf.c":60:65))
  %v85 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v84, ^bb50(%v85 : i1), ^bb49 loc("aws-c-common/source/byte_buf.c":60:74)
^bb49:
  %v86 = sea.const 0 : i1
  sea.br ^bb50(%v86 : i1)
^bb50(%v87 : i1):
  sea.br ^bb51
^bb51:
  sea.cond_br %v26, ^bb57, ^bb52 loc("aws-c-common/source/byte_buf.c":60:33)
^bb52:
  sea.br ^bb53
^bb53:
  sea.br ^bb54
^bb54:
  %v88 = sea.icmp ule, %v76, %v18 : i64 loc(".not2.i.i")
  %v89 = sea.const 1 : i1 loc("or.cond6.not")
  %v90 = sea.const 0 : i1 loc("or.cond6.not")
  %v91 = sea.select %v89, %v88, %v90 : i1 loc("or.cond6.not")
  sea.cond_br %v91, ^bb55, ^bb63
^bb55:
  sea.br ^bb56
^bb56:
  %v92 = sea.load %v39[%v38] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_89")
  %v93 = sea.ptr.null : !sea.ptr<64> loc("_90")
  %v94 = sea.ptr.cmp ne, %v92, %v93 : !sea.ptr<64> loc("_90")
  %v95 = sea.const 1 : i1 loc("or.cond")
  %v96 = sea.const 0 : i1 loc("or.cond")
  %v97 = sea.select %v95, %v94, %v96 : i1 loc("or.cond")
  sea.cond_br %v97, ^bb62, ^bb63
^bb57:
  sea.br ^bb58
^bb58:
  %v98 = sea.const 0 : i64 loc("_79"("aws-c-common/source/byte_buf.c":60:45))
  %v99 = sea.icmp eq, %v76, %v98 : i64 loc("_79"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v99, ^bb59, ^bb61 loc("aws-c-common/source/byte_buf.c":60:50)
^bb59:
  sea.br ^bb60
^bb60:
  %v100 = sea.load %v39[%v38] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_82"("aws-c-common/source/byte_buf.c":60:58))
  %v101 = sea.ptr.null : !sea.ptr<64> loc("_83"("aws-c-common/source/byte_buf.c":60:65))
  %v102 = sea.ptr.cmp eq, %v100, %v101 : !sea.ptr<64> loc("_83"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v102, ^bb62, ^bb61 loc("aws-c-common/source/byte_buf.c":60:74)
^bb61:
  sea.br ^bb63
^bb62:
  %v103 = sea.load %v42[%v40] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_91"("seahorn/jobs2/byte_buf_write_u82/aws_byte_buf_write_u8_harness2.c":34:3))
  %v104 = sea.mem.is_modified %v7[%v103] : !sea.mem<!sea.ptr<64>, i8> loc("_92"("seahorn/jobs2/byte_buf_write_u82/aws_byte_buf_write_u8_harness2.c":34:3))
  %v105 = sea.const 1 : i1 loc("_93"("seahorn/jobs2/byte_buf_write_u82/aws_byte_buf_write_u8_harness2.c":34:3))
  %v106 = sea.xor %v104, %v105 : i1 loc("_93"("seahorn/jobs2/byte_buf_write_u82/aws_byte_buf_write_u8_harness2.c":34:3))
  %v107 = sea.mem.is_modified %v7[%v103] : !sea.mem<!sea.ptr<64>, i8> loc("_94"("seahorn/jobs2/byte_buf_write_u82/aws_byte_buf_write_u8_harness2.c":34:3))
  sea.assume %v107 loc("seahorn/jobs2/byte_buf_write_u82/aws_byte_buf_write_u8_harness2.c":34:3)
  sea.br ^bb63 loc("seahorn/jobs2/byte_buf_write_u82/aws_byte_buf_write_u8_harness2.c":34:3)
^bb63:
  sea.br ^bb64
^bb64:
  %v108 = sea.const 0 : i1
  sea.assert %v108
  sea.halt
}
