// Exported from SeaHorn (byte_cursor_from_array.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm1")
  %v1 = sea.nondet "nd_size_t" [1] : i64 loc("_0"("seahorn/jobs/byte_cursor_from_array/aws_byte_cursor_from_array_harness.c":13:21))
  %v2 = sea.const 0 : i64 loc("_1"("seahorn/lib/proof_allocators.c":17:15))
  %v3 = sea.icmp eq, %v1, %v2 : i64 loc("_1"("seahorn/lib/proof_allocators.c":17:15))
  %v4 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v3, ^bb4(%v4 : !sea.ptr<64>), ^bb1 loc("seahorn/lib/proof_allocators.c":17:10)
^bb1:
  %v5 = sea.nondet "nd_malloc_is_fail" [2] : i1 loc("_3"("seahorn/lib/sea_allocators.c":11:10))
  %v6 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v5, ^bb3(%v0, %v6 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb2 loc("seahorn/lib/sea_allocators.c":11:10)
^bb2:
  %v7 = sea.const 1 : i64 loc("malloc.i")
  %v8 = sea.mul %v1, %v7 : i64 loc("malloc.i")
  %v9 = sea.alloca %v8 align 16 [3] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb3(%v0, %v9 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb3(%v10 : !sea.mem<!sea.ptr<64>, i8>, %v11 : !sea.ptr<64>):
  %v12 = sea.memhavoc %v10[%v11], %v1 [4] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v13 = sea.ptr.null : !sea.ptr<64> loc("_6"("seahorn/lib/sea_allocators.c":45:10))
  %v14 = sea.ptr.cmp ne, %v11, %v13 : !sea.ptr<64> loc("_6"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v14 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb4(%v11 : !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb4(%v15 : !sea.ptr<64>):
  sea.br ^bb5
^bb5:
  %v16 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v3, ^bb11(%v16 : i1), ^bb6 loc("aws-c-common/source/byte_buf.c":66:32)
^bb6:
  sea.br ^bb7
^bb7:
  sea.br ^bb8
^bb8:
  %v17 = sea.ptr.null : !sea.ptr<64> loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":66:55))
  %v18 = sea.ptr.cmp eq, %v15, %v17 : !sea.ptr<64> loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":66:55))
  %v19 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v18, ^bb11(%v19 : i1), ^bb9 loc("aws-c-common/source/byte_buf.c":66:67)
^bb9:
  sea.br ^bb10
^bb10:
  %v20 = sea.const 1 : i1
  sea.br ^bb11(%v20 : i1)
^bb11(%v21 : i1):
  sea.br ^bb12
^bb12:
  sea.cond_br %v3, ^bb17, ^bb13 loc("aws-c-common/source/byte_buf.c":66:32)
^bb13:
  sea.br ^bb14
^bb14:
  %v22 = sea.ptr.null : !sea.ptr<64> loc(".not2.i.i")
  %v23 = sea.ptr.cmp ne, %v15, %v22 : !sea.ptr<64> loc(".not2.i.i")
  %v24 = sea.const 1 : i1 loc("or.cond5.not")
  %v25 = sea.and %v23, %v24 : i1 loc("or.cond5.not")
  sea.cond_br %v25, ^bb15, ^bb18
^bb15:
  sea.br ^bb16
^bb16:
  sea.br ^bb17
^bb17:
  %v26 = sea.ptr.null : !sea.ptr<64> loc(".not.i"("seahorn/jobs/byte_cursor_from_array/aws_byte_cursor_from_array_harness.c":23:9))
  %v27 = sea.ptr.cmp eq, %v15, %v26 : !sea.ptr<64> loc(".not.i"("seahorn/jobs/byte_cursor_from_array/aws_byte_cursor_from_array_harness.c":23:9))
  %v28 = sea.const 1 : i1 loc("seahorn/jobs/byte_cursor_from_array/aws_byte_cursor_from_array_harness.c":23:9)
  %v29 = sea.xor %v27, %v28 : i1 loc("seahorn/jobs/byte_cursor_from_array/aws_byte_cursor_from_array_harness.c":23:9)
  sea.assume %v29 loc("seahorn/jobs/byte_cursor_from_array/aws_byte_cursor_from_array_harness.c":23:9)
  %v30 = sea.ptr.null : !sea.ptr<64> loc("_20"("seahorn/lib/utils.c":15:3))
  %v31 = sea.ptr.cmp ne, %v15, %v30 : !sea.ptr<64> loc("_20"("seahorn/lib/utils.c":15:3))
  %v32 = sea.const 0 : i64 loc("_21"("seahorn/lib/utils.c":16:11))
  %v33 = sea.icmp ne, %v1, %v32 : i64 loc("_21"("seahorn/lib/utils.c":16:11))
  %v34 = sea.and %v33, %v31 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":16:15))
  sea.assume %v34 loc("seahorn/lib/utils.c":16:15)
  %v35 = sea.nondet "nd_size_t" [5] : i64 loc("_22"("seahorn/lib/utils.c":17:16))
  %v36 = sea.icmp ult, %v35, %v1 : i64 loc("_23"("seahorn/lib/utils.c":19:14))
  %v37 = sea.const 36028797018963967 : i64 loc("_24"("seahorn/lib/utils.c":19:20))
  %v38 = sea.icmp ult, %v1, %v37 : i64 loc("_24"("seahorn/lib/utils.c":19:20))
  %v39 = sea.and %v38, %v36 : i1 loc("_25"("seahorn/lib/utils.c":19:20))
  sea.assume %v39 loc("seahorn/lib/utils.c":19:5)
  %v40 = sea.const 1 : i1 loc("seahorn/lib/utils.c":20:5)
  %v41 = sea.const 1 : i1 loc("seahorn/lib/utils.c":20:5)
  %v42 = sea.xor %v40, %v41 : i1 loc("seahorn/lib/utils.c":20:5)
  sea.assume %v42 loc("seahorn/lib/utils.c":20:5)
  sea.br ^bb18 loc("seahorn/lib/utils.c":20:5)
^bb18:
  sea.br ^bb19
^bb19:
  %v43 = sea.const 0 : i1
  sea.assert %v43
  sea.halt
}
