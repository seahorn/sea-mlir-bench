// Exported from SeaHorn (mul_size_checked.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.nondet "nd_bool" [0] : i1 loc("_0"("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":8:9))
  sea.cond_br %v0, ^bb5, ^bb1 loc("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":8:9)
^bb1:
  %v1 = sea.nondet "nd_uint32_t" [1] : i32 loc("_10"("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":28:22))
  %v2 = sea.nondet "nd_uint32_t" [2] : i32 loc("_11"("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":29:22))
  %v3 = sea.nondet "nd_uint32_t" [3] : i32 loc("_12"("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":30:22))
  sea.br ^bb2
^bb2:
  %v4 = sea.mul %v1, %v2 : i32 loc("_14"("aws-c-common/include/aws/common/math.gcc_overflow.inl":59:9))
  %v5 = sea.umulo %v1, %v2 : i32 loc("_14"("aws-c-common/include/aws/common/math.gcc_overflow.inl":59:9))
  sea.cond_br %v5, ^bb4, ^bb3 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":59:9)
^bb3:
  %v6 = sea.const 1 : i1 loc("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":32:13)
  %v7 = sea.const 1 : i1 loc("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":32:13)
  %v8 = sea.xor %v6, %v7 : i1 loc("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":32:13)
  sea.assume %v8 loc("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":32:13)
  sea.br ^bb9 loc("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":32:13)
^bb4:
  %v9 = sea.const 0 : i32 loc("_16"("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":36:13))
  %v10 = sea.icmp ne, %v2, %v9 : i32 loc("_16"("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":36:13))
  %v11 = sea.const 0 : i32 loc(".not1.i"("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":36:13))
  %v12 = sea.icmp eq, %v2, %v11 : i32 loc(".not1.i"("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":36:13))
  sea.assume %v12 loc("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":36:13)
  sea.br ^bb9 loc("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":36:13)
^bb5:
  %v13 = sea.nondet "nd_uint64_t" [4] : i64 loc("_2"("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":13:22))
  %v14 = sea.nondet "nd_uint64_t" [5] : i64 loc("_3"("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":14:22))
  %v15 = sea.nondet "nd_uint64_t" [6] : i64 loc("_4"("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":15:22))
  sea.br ^bb6
^bb6:
  %v16 = sea.mul %v13, %v14 : i64 loc("_6"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v17 = sea.umulo %v13, %v14 : i64 loc("_6"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v17, ^bb8, ^bb7 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb7:
  %v18 = sea.const 1 : i1 loc("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":17:13)
  %v19 = sea.const 1 : i1 loc("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":17:13)
  %v20 = sea.xor %v18, %v19 : i1 loc("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":17:13)
  sea.assume %v20 loc("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":17:13)
  sea.br ^bb9 loc("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":17:13)
^bb8:
  %v21 = sea.const 0 : i64 loc("_8"("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":21:13))
  %v22 = sea.icmp ne, %v14, %v21 : i64 loc("_8"("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":21:13))
  %v23 = sea.const 0 : i64 loc(".not3.i"("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":21:13))
  %v24 = sea.icmp eq, %v14, %v23 : i64 loc(".not3.i"("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":21:13))
  sea.assume %v24 loc("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":21:13)
  sea.br ^bb9 loc("seahorn/jobs/mul_size_checked/aws_mul_size_checked_harness.c":21:13)
^bb9:
  sea.br ^bb10
^bb10:
  %v25 = sea.const 0 : i1
  sea.assert %v25
  sea.halt
}
