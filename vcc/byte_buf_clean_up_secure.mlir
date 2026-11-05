// Exported from SeaHorn (byte_buf_clean_up_secure.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm10")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm11")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm12")
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
  sea.cond_br %v26, ^bb6(%v27 : !sea.ptr<64>), ^bb3 loc("seahorn/lib/proof_allocators.c":21:10)
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
  sea.br ^bb6(%v34 : !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb6(%v36 : !sea.ptr<64>):
  %v37 = sea.ptr.index %v4 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_16"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb7
^bb7:
  %v38 = sea.store %v24[%v37], %v36 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v39 = sea.ptr.index %v4 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_18"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb8
^bb8:
  %v40 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v41 = sea.store %v38[%v39], %v40 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
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
  %v42 = sea.icmp ugt, %v17, %v18 : i64 loc(".not2.i.i"("aws-c-common/source/byte_buf.c":61:44))
  %v43 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v42, ^bb22(%v43 : i1), ^bb14 loc("aws-c-common/source/byte_buf.c":61:61)
^bb14:
  sea.br ^bb15
^bb15:
  sea.br ^bb16
^bb16:
  %v44 = sea.ptr.null : !sea.ptr<64> loc("_32"("aws-c-common/source/byte_buf.c":61:64))
  %v45 = sea.ptr.cmp ne, %v36, %v44 : !sea.ptr<64> loc("_32"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb22(%v45 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb17:
  sea.br ^bb18
^bb18:
  %v46 = sea.const 0 : i64 loc("_22"("aws-c-common/source/byte_buf.c":60:45))
  %v47 = sea.icmp eq, %v17, %v46 : i64 loc("_22"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v47, ^bb19, ^bb21 loc("aws-c-common/source/byte_buf.c":60:50)
^bb19:
  sea.br ^bb20
^bb20:
  %v48 = sea.ptr.null : !sea.ptr<64> loc("_25"("aws-c-common/source/byte_buf.c":60:65))
  %v49 = sea.ptr.cmp eq, %v36, %v48 : !sea.ptr<64> loc("_25"("aws-c-common/source/byte_buf.c":60:65))
  %v50 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v49, ^bb22(%v50 : i1), ^bb21 loc("aws-c-common/source/byte_buf.c":60:74)
^bb21:
  %v51 = sea.const 0 : i1
  sea.br ^bb22(%v51 : i1)
^bb22(%v52 : i1):
  sea.assume %v52 loc("seahorn/jobs/byte_buf_clean_up_secure/aws_byte_buf_clean_up_secure_harness.c":16:5)
  sea.br ^bb23
^bb23:
  %v53 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i.i"("aws-c-common/source/byte_buf.c":89:9))
  %v54 = sea.ptr.cmp eq, %v36, %v53 : !sea.ptr<64> loc(".not.i.i.i"("aws-c-common/source/byte_buf.c":89:9))
  sea.cond_br %v54, ^bb27, ^bb24 loc("aws-c-common/source/byte_buf.c":89:9)
^bb24:
  sea.br ^bb25
^bb25:
  sea.br ^bb26
^bb26:
  sea.br ^bb27 loc("aws-c-common/source/byte_buf.c":91:5)
^bb27:
  sea.br ^bb28
^bb28:
  sea.br ^bb29
^bb29:
  sea.br ^bb30
^bb30:
  sea.cond_br %v54, ^bb34, ^bb31 loc("aws-c-common/source/byte_buf.c":78:9)
^bb31:
  sea.br ^bb32
^bb32:
  sea.br ^bb33
^bb33:
  sea.br ^bb34 loc("aws-c-common/source/byte_buf.c":80:5)
^bb34:
  sea.br ^bb35
^bb35:
  sea.br ^bb36
^bb36:
  sea.br ^bb37
^bb37:
  sea.br ^bb38
^bb38:
  %v55 = sea.const 1 : i1 loc("seahorn/jobs/byte_buf_clean_up_secure/aws_byte_buf_clean_up_secure_harness.c":25:5)
  %v56 = sea.const 1 : i1 loc("seahorn/jobs/byte_buf_clean_up_secure/aws_byte_buf_clean_up_secure_harness.c":25:5)
  %v57 = sea.xor %v55, %v56 : i1 loc("seahorn/jobs/byte_buf_clean_up_secure/aws_byte_buf_clean_up_secure_harness.c":25:5)
  sea.assume %v57 loc("seahorn/jobs/byte_buf_clean_up_secure/aws_byte_buf_clean_up_secure_harness.c":25:5)
  sea.br ^bb39 loc("seahorn/jobs/byte_buf_clean_up_secure/aws_byte_buf_clean_up_secure_harness.c":25:5)
^bb39:
  sea.br ^bb40
^bb40:
  %v58 = sea.const 0 : i1
  sea.assert %v58
  sea.halt
}
