// Exported from SeaHorn (add_size_saturating.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.nondet "nd_bool" [0] : i1 loc("_0"("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":8:9))
  sea.cond_br %v0, ^bb4, ^bb1 loc("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":8:9)
^bb1:
  %v1 = sea.nondet "nd_uint32_t" [1] : i32 loc("_12"("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":18:22))
  %v2 = sea.nondet "nd_uint32_t" [2] : i32 loc("_13"("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":19:22))
  %v3 = sea.add %v1, %v2 : i32 loc("spec.store.select.i5.i"("aws-c-common/include/aws/common/math.gcc_overflow.inl":106:9))
  %v4 = sea.uaddo %v1, %v2 : i32 loc("spec.store.select.i5.i"("aws-c-common/include/aws/common/math.gcc_overflow.inl":106:9))
  %v5 = sea.const 4294967295 : i32 loc("spec.store.select.i5.i"("aws-c-common/include/aws/common/math.gcc_overflow.inl":106:9))
  %v6 = sea.select %v4, %v5, %v3 : i32 loc("spec.store.select.i5.i"("aws-c-common/include/aws/common/math.gcc_overflow.inl":106:9))
  %v7 = sea.const 0 : i32 loc(".not.i"("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":21:16))
  %v8 = sea.icmp ne, %v2, %v7 : i32 loc(".not.i"("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":21:16))
  %v9 = sea.const 4294967295 : i32 loc("_14")
  %v10 = sea.xor %v2, %v9 : i32 loc("_14")
  %v11 = sea.icmp ugt, %v1, %v10 : i32 loc("_15")
  %v12 = sea.const 0 : i1 loc("or.cond4.i"("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":21:21))
  %v13 = sea.select %v8, %v11, %v12 : i1 loc("or.cond4.i"("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":21:21))
  sea.cond_br %v13, ^bb3, ^bb2 loc("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":21:21)
^bb2:
  %v14 = sea.add %v2, %v1 : i32 loc("_19"("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":24:13))
  %v15 = sea.icmp eq, %v6, %v14 : i32 loc("_20"("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":24:13))
  %v16 = sea.const 1 : i1 loc("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":24:13)
  %v17 = sea.xor %v15, %v16 : i1 loc("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":24:13)
  sea.assume %v17 loc("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":24:13)
  sea.br ^bb7 loc("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":24:13)
^bb3:
  %v18 = sea.const 4294967295 : i32 loc("_17"("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":22:13))
  %v19 = sea.icmp eq, %v6, %v18 : i32 loc("_17"("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":22:13))
  %v20 = sea.const 1 : i1 loc("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":22:13)
  %v21 = sea.xor %v19, %v20 : i1 loc("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":22:13)
  sea.assume %v21 loc("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":22:13)
  sea.br ^bb7 loc("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":22:13)
^bb4:
  %v22 = sea.nondet "nd_uint64_t" [3] : i64 loc("_2"("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":9:22))
  %v23 = sea.nondet "nd_uint64_t" [4] : i64 loc("_3"("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":10:22))
  %v24 = sea.add %v22, %v23 : i64 loc("spec.store.select.i.i"("aws-c-common/include/aws/common/math.gcc_overflow.inl":82:9))
  %v25 = sea.uaddo %v22, %v23 : i64 loc("spec.store.select.i.i"("aws-c-common/include/aws/common/math.gcc_overflow.inl":82:9))
  %v26 = sea.const 18446744073709551615 : i64 loc("spec.store.select.i.i"("aws-c-common/include/aws/common/math.gcc_overflow.inl":82:9))
  %v27 = sea.select %v25, %v26, %v24 : i64 loc("spec.store.select.i.i"("aws-c-common/include/aws/common/math.gcc_overflow.inl":82:9))
  %v28 = sea.const 0 : i64 loc(".not1.i"("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":12:16))
  %v29 = sea.icmp ne, %v23, %v28 : i64 loc(".not1.i"("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":12:16))
  %v30 = sea.const 18446744073709551615 : i64 loc("_4")
  %v31 = sea.xor %v23, %v30 : i64 loc("_4")
  %v32 = sea.icmp ugt, %v22, %v31 : i64 loc("_5")
  %v33 = sea.const 0 : i1 loc("or.cond.i"("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":12:21))
  %v34 = sea.select %v29, %v32, %v33 : i1 loc("or.cond.i"("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":12:21))
  sea.cond_br %v34, ^bb6, ^bb5 loc("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":12:21)
^bb5:
  %v35 = sea.add %v23, %v22 : i64 loc("_9"("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":15:13))
  %v36 = sea.icmp eq, %v27, %v35 : i64 loc("_10"("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":15:13))
  %v37 = sea.const 1 : i1 loc("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":15:13)
  %v38 = sea.xor %v36, %v37 : i1 loc("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":15:13)
  sea.assume %v38 loc("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":15:13)
  sea.br ^bb7 loc("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":15:13)
^bb6:
  %v39 = sea.const 18446744073709551615 : i64 loc("_7"("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":13:13))
  %v40 = sea.icmp eq, %v27, %v39 : i64 loc("_7"("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":13:13))
  %v41 = sea.const 1 : i1 loc("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":13:13)
  %v42 = sea.xor %v40, %v41 : i1 loc("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":13:13)
  sea.assume %v42 loc("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":13:13)
  sea.br ^bb7 loc("seahorn/jobs/add_size_saturating/aws_add_size_saturating_harness.c":13:13)
^bb7:
  sea.br ^bb8
^bb8:
  %v43 = sea.const 0 : i1
  sea.assert %v43
  sea.halt
}
