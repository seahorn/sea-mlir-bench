// Exported from SeaHorn (byte_buf_clean_up.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm1")
  %v1 = sea.nondet "nd_size_t" [1] : i64 loc("_0"("seahorn/lib/byte_buf_helper.c":19:18))
  %v2 = sea.nondet "nd_size_t" [2] : i64 loc("_1"("seahorn/lib/byte_buf_helper.c":20:18))
  %v3 = sea.icmp ule, %v1, %v2 : i64 loc("_2"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v3 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v4 = sea.const 11 : i64 loc("_3"("seahorn/lib/byte_buf_helper.c":22:16))
  %v5 = sea.icmp ult, %v2, %v4 : i64 loc("_3"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v5 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb1
^bb1:
  sea.br ^bb2
^bb2:
  %v6 = sea.const 0 : i64 loc("_6"("seahorn/lib/proof_allocators.c":21:15))
  %v7 = sea.icmp eq, %v2, %v6 : i64 loc("_6"("seahorn/lib/proof_allocators.c":21:15))
  %v8 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v7, ^bb6(%v8 : !sea.ptr<64>), ^bb3 loc("seahorn/lib/proof_allocators.c":21:10)
^bb3:
  %v9 = sea.nondet "nd_malloc_is_fail" [3] : i1 loc("_8"("seahorn/lib/sea_allocators.c":11:10))
  %v10 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v9, ^bb5(%v0, %v10 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/sea_allocators.c":11:10)
^bb4:
  %v11 = sea.const 1 : i64 loc("malloc.i")
  %v12 = sea.mul %v2, %v11 : i64 loc("malloc.i")
  %v13 = sea.alloca %v12 align 16 [4] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb5(%v0, %v13 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb5(%v14 : !sea.mem<!sea.ptr<64>, i8>, %v15 : !sea.ptr<64>):
  %v16 = sea.memhavoc %v14[%v15], %v2 [5] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb6(%v15 : !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb6(%v17 : !sea.ptr<64>):
  sea.br ^bb7
^bb7:
  sea.br ^bb8
^bb8:
  sea.br ^bb9
^bb9:
  sea.cond_br %v7, ^bb17, ^bb10 loc("aws-c-common/source/byte_buf.c":60:33)
^bb10:
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  sea.br ^bb13
^bb13:
  %v18 = sea.icmp ugt, %v1, %v2 : i64 loc(".not2.i.i"("aws-c-common/source/byte_buf.c":61:44))
  %v19 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v18, ^bb22(%v19 : i1), ^bb14 loc("aws-c-common/source/byte_buf.c":61:61)
^bb14:
  sea.br ^bb15
^bb15:
  sea.br ^bb16
^bb16:
  %v20 = sea.ptr.null : !sea.ptr<64> loc("_26"("aws-c-common/source/byte_buf.c":61:64))
  %v21 = sea.ptr.cmp ne, %v17, %v20 : !sea.ptr<64> loc("_26"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb22(%v21 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb17:
  sea.br ^bb18
^bb18:
  %v22 = sea.const 0 : i64 loc("_16"("aws-c-common/source/byte_buf.c":60:45))
  %v23 = sea.icmp eq, %v1, %v22 : i64 loc("_16"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v23, ^bb19, ^bb21 loc("aws-c-common/source/byte_buf.c":60:50)
^bb19:
  sea.br ^bb20
^bb20:
  %v24 = sea.ptr.null : !sea.ptr<64> loc("_19"("aws-c-common/source/byte_buf.c":60:65))
  %v25 = sea.ptr.cmp eq, %v17, %v24 : !sea.ptr<64> loc("_19"("aws-c-common/source/byte_buf.c":60:65))
  %v26 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v25, ^bb22(%v26 : i1), ^bb21 loc("aws-c-common/source/byte_buf.c":60:74)
^bb21:
  %v27 = sea.const 0 : i1
  sea.br ^bb22(%v27 : i1)
^bb22(%v28 : i1):
  sea.assume %v28 loc("seahorn/jobs/byte_buf_clean_up/aws_byte_buf_clean_up_harness.c":14:5)
  sea.br ^bb23
^bb23:
  sea.br ^bb24
^bb24:
  %v29 = sea.ptr.null : !sea.ptr<64> loc(".not1.i2.i"("aws-c-common/source/byte_buf.c":78:27))
  %v30 = sea.ptr.cmp eq, %v17, %v29 : !sea.ptr<64> loc(".not1.i2.i"("aws-c-common/source/byte_buf.c":78:27))
  sea.cond_br %v30, ^bb28, ^bb25 loc("aws-c-common/source/byte_buf.c":78:9)
^bb25:
  sea.br ^bb26
^bb26:
  sea.br ^bb27
^bb27:
  sea.br ^bb28 loc("aws-c-common/source/byte_buf.c":80:5)
^bb28:
  sea.br ^bb29
^bb29:
  sea.br ^bb30
^bb30:
  sea.br ^bb31
^bb31:
  sea.br ^bb32
^bb32:
  %v31 = sea.const 1 : i1 loc("seahorn/jobs/byte_buf_clean_up/aws_byte_buf_clean_up_harness.c":20:5)
  %v32 = sea.const 1 : i1 loc("seahorn/jobs/byte_buf_clean_up/aws_byte_buf_clean_up_harness.c":20:5)
  %v33 = sea.xor %v31, %v32 : i1 loc("seahorn/jobs/byte_buf_clean_up/aws_byte_buf_clean_up_harness.c":20:5)
  sea.assume %v33 loc("seahorn/jobs/byte_buf_clean_up/aws_byte_buf_clean_up_harness.c":20:5)
  sea.br ^bb33 loc("seahorn/jobs/byte_buf_clean_up/aws_byte_buf_clean_up_harness.c":20:5)
^bb33:
  sea.br ^bb34
^bb34:
  %v34 = sea.const 0 : i1
  sea.assert %v34
  sea.halt
}
