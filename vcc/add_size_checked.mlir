// Exported from SeaHorn (add_size_checked.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.nondet "nd_bool" [0] : i1 loc("_0"("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":8:9))
  sea.cond_br %v0, ^bb5, ^bb1 loc("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":8:9)
^bb1:
  %v1 = sea.nondet "nd_uint32_t" [1] : i32 loc("_13"("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":19:22))
  %v2 = sea.nondet "nd_uint32_t" [2] : i32 loc("_14"("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":20:22))
  %v3 = sea.nondet "nd_uint32_t" [3] : i32 loc("_15"("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":21:22))
  sea.br ^bb2
^bb2:
  %v4 = sea.add %v1, %v2 : i32 loc("_17"("aws-c-common/include/aws/common/math.gcc_overflow.inl":94:9))
  %v5 = sea.uaddo %v1, %v2 : i32 loc("_17"("aws-c-common/include/aws/common/math.gcc_overflow.inl":94:9))
  sea.cond_br %v5, ^bb4, ^bb3 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":94:9)
^bb3:
  %v6 = sea.const 1 : i1 loc("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":23:13)
  %v7 = sea.const 1 : i1 loc("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":23:13)
  %v8 = sea.xor %v6, %v7 : i1 loc("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":23:13)
  sea.assume %v8 loc("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":23:13)
  sea.br ^bb9 loc("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":23:13)
^bb4:
  %v9 = sea.const 0 : i32 loc("_19"("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":25:13))
  %v10 = sea.icmp ne, %v2, %v9 : i32 loc("_19"("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":25:13))
  %v11 = sea.const 4294967295 : i32 loc("_20"("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":25:13))
  %v12 = sea.xor %v2, %v11 : i32 loc("_20"("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":25:13))
  %v13 = sea.icmp ugt, %v1, %v12 : i32 loc("_21"("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":25:13))
  %v14 = sea.const 0 : i1 loc("_22"("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":25:13))
  %v15 = sea.select %v10, %v13, %v14 : i1 loc("_22"("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":25:13))
  %v16 = sea.const 1 : i1 loc("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":25:13)
  %v17 = sea.xor %v15, %v16 : i1 loc("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":25:13)
  sea.assume %v17 loc("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":25:13)
  sea.br ^bb9 loc("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":25:13)
^bb5:
  %v18 = sea.nondet "nd_uint64_t" [4] : i64 loc("_2"("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":9:22))
  %v19 = sea.nondet "nd_uint64_t" [5] : i64 loc("_3"("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":10:22))
  %v20 = sea.nondet "nd_uint64_t" [6] : i64 loc("_4"("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":11:22))
  sea.br ^bb6
^bb6:
  %v21 = sea.add %v18, %v19 : i64 loc("_6"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v22 = sea.uaddo %v18, %v19 : i64 loc("_6"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v22, ^bb8, ^bb7 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb7:
  %v23 = sea.const 1 : i1 loc("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":14:13)
  %v24 = sea.const 1 : i1 loc("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":14:13)
  %v25 = sea.xor %v23, %v24 : i1 loc("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":14:13)
  sea.assume %v25 loc("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":14:13)
  sea.br ^bb9 loc("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":14:13)
^bb8:
  %v26 = sea.const 0 : i64 loc("_8"("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":16:13))
  %v27 = sea.icmp ne, %v19, %v26 : i64 loc("_8"("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":16:13))
  %v28 = sea.const 18446744073709551615 : i64 loc("_9"("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":16:13))
  %v29 = sea.xor %v19, %v28 : i64 loc("_9"("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":16:13))
  %v30 = sea.icmp ugt, %v18, %v29 : i64 loc("_10"("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":16:13))
  %v31 = sea.const 0 : i1 loc("_11"("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":16:13))
  %v32 = sea.select %v27, %v30, %v31 : i1 loc("_11"("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":16:13))
  %v33 = sea.const 1 : i1 loc("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":16:13)
  %v34 = sea.xor %v32, %v33 : i1 loc("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":16:13)
  sea.assume %v34 loc("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":16:13)
  sea.br ^bb9 loc("seahorn/jobs/add_size_checked/aws_add_size_checked_harness.c":16:13)
^bb9:
  sea.br ^bb10
^bb10:
  %v35 = sea.const 0 : i1
  sea.assert %v35
  sea.halt
}
