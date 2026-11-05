// Exported from SeaHorn (byte_buf_from_array.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm1")
  %v1 = sea.nondet "nd_size_t" [1] : i64 loc("_0"("seahorn/jobs/byte_buf_from_array/aws_byte_buf_from_array_harness.c":13:21))
  %v2 = sea.const 0 : i64 loc(".not"("seahorn/lib/proof_allocators.c":17:15))
  %v3 = sea.icmp eq, %v1, %v2 : i64 loc(".not"("seahorn/lib/proof_allocators.c":17:15))
  %v4 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v3, ^bb4(%v4 : !sea.ptr<64>), ^bb1 loc("seahorn/lib/proof_allocators.c":17:10)
^bb1:
  %v5 = sea.nondet "nd_malloc_is_fail" [2] : i1 loc("_2"("seahorn/lib/sea_allocators.c":11:10))
  %v6 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v5, ^bb3(%v0, %v6 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb2 loc("seahorn/lib/sea_allocators.c":11:10)
^bb2:
  %v7 = sea.const 1 : i64 loc("malloc.i")
  %v8 = sea.mul %v1, %v7 : i64 loc("malloc.i")
  %v9 = sea.alloca %v8 align 16 [3] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb3(%v0, %v9 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb3(%v10 : !sea.mem<!sea.ptr<64>, i8>, %v11 : !sea.ptr<64>):
  %v12 = sea.memhavoc %v10[%v11], %v1 [4] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v13 = sea.ptr.null : !sea.ptr<64> loc("_5"("seahorn/lib/sea_allocators.c":45:10))
  %v14 = sea.ptr.cmp ne, %v11, %v13 : !sea.ptr<64> loc("_5"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v14 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb4(%v11 : !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb4(%v15 : !sea.ptr<64>):
  sea.br ^bb5
^bb5:
  sea.cond_br %v3, ^bb12, ^bb6 loc("aws-c-common/source/byte_buf.c":60:33)
^bb6:
  sea.br ^bb7
^bb7:
  sea.br ^bb8
^bb8:
  sea.br ^bb9
^bb9:
  sea.br ^bb10
^bb10:
  sea.br ^bb11
^bb11:
  %v16 = sea.ptr.null : !sea.ptr<64> loc("_14"("aws-c-common/source/byte_buf.c":61:64))
  %v17 = sea.ptr.cmp ne, %v15, %v16 : !sea.ptr<64> loc("_14"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb14(%v17 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb12:
  sea.br ^bb13
^bb13:
  %v18 = sea.const 1 : i1
  sea.br ^bb14(%v18 : i1)
^bb14(%v19 : i1):
  sea.br ^bb15
^bb15:
  sea.cond_br %v3, ^bb21, ^bb16 loc("aws-c-common/source/byte_buf.c":60:33)
^bb16:
  sea.br ^bb17
^bb17:
  sea.br ^bb18
^bb18:
  sea.br ^bb19
^bb19:
  sea.br ^bb20
^bb20:
  %v20 = sea.ptr.null : !sea.ptr<64> loc("_24")
  %v21 = sea.ptr.cmp ne, %v15, %v20 : !sea.ptr<64> loc("_24")
  %v22 = sea.const 1 : i1 loc("or.cond")
  %v23 = sea.and %v21, %v22 : i1 loc("or.cond")
  sea.cond_br %v23, ^bb23, ^bb24
^bb21:
  sea.br ^bb22
^bb22:
  sea.br ^bb23
^bb23:
  %v24 = sea.ptr.null : !sea.ptr<64> loc(".not.i"("seahorn/jobs/byte_buf_from_array/aws_byte_buf_from_array_harness.c":25:9))
  %v25 = sea.ptr.cmp eq, %v15, %v24 : !sea.ptr<64> loc(".not.i"("seahorn/jobs/byte_buf_from_array/aws_byte_buf_from_array_harness.c":25:9))
  %v26 = sea.const 1 : i1 loc("seahorn/jobs/byte_buf_from_array/aws_byte_buf_from_array_harness.c":25:9)
  %v27 = sea.xor %v25, %v26 : i1 loc("seahorn/jobs/byte_buf_from_array/aws_byte_buf_from_array_harness.c":25:9)
  sea.assume %v27 loc("seahorn/jobs/byte_buf_from_array/aws_byte_buf_from_array_harness.c":25:9)
  %v28 = sea.ptr.null : !sea.ptr<64> loc("_25")
  %v29 = sea.ptr.cmp ne, %v15, %v28 : !sea.ptr<64> loc("_25")
  sea.assume %v29 loc("seahorn/lib/utils.c":16:15)
  %v30 = sea.nondet "nd_size_t" [5] : i64 loc("_26"("seahorn/lib/utils.c":17:16))
  %v31 = sea.icmp ult, %v30, %v1 : i64 loc("_27"("seahorn/lib/utils.c":19:14))
  %v32 = sea.const 36028797018963967 : i64 loc("_28"("seahorn/lib/utils.c":19:20))
  %v33 = sea.icmp ult, %v1, %v32 : i64 loc("_28"("seahorn/lib/utils.c":19:20))
  %v34 = sea.and %v33, %v31 : i1 loc("_29"("seahorn/lib/utils.c":19:20))
  sea.assume %v34 loc("seahorn/lib/utils.c":19:5)
  %v35 = sea.const 1 : i1 loc("seahorn/lib/utils.c":20:5)
  %v36 = sea.const 1 : i1 loc("seahorn/lib/utils.c":20:5)
  %v37 = sea.xor %v35, %v36 : i1 loc("seahorn/lib/utils.c":20:5)
  sea.assume %v37 loc("seahorn/lib/utils.c":20:5)
  sea.br ^bb24 loc("seahorn/lib/utils.c":20:5)
^bb24:
  sea.br ^bb25
^bb25:
  %v38 = sea.const 0 : i1
  sea.assert %v38
  sea.halt
}
