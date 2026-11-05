// Exported from SeaHorn (mul_size_saturating.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.nondet "nd_bool" [0] : i1 loc("_0"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":8:9))
  sea.cond_br %v0, ^bb4, ^bb1 loc("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":8:9)
^bb1:
  %v1 = sea.nondet "nd_bool" [1] : i1 loc("_15"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":28:23))
  %v2 = sea.const 1 : i1 loc("not..i"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":28:22))
  %v3 = sea.xor %v1, %v2 : i1 loc("not..i"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":28:22))
  %v4 = sea.sext %v3 : i1 to i32 loc("_16"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":28:22))
  %v5 = sea.nondet "nd_uint32_t" [2] : i32 loc("_17"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":29:22))
  %v6 = sea.mul %v4, %v5 : i32 loc("_18"("aws-c-common/include/aws/common/math.gcc_overflow.inl":47:9))
  %v7 = sea.umulo %v4, %v5 : i32 loc("_18"("aws-c-common/include/aws/common/math.gcc_overflow.inl":47:9))
  %v8 = sea.const 0 : i32 loc("_20")
  %v9 = sea.icmp eq, %v5, %v8 : i32 loc("_20")
  %v10 = sea.or %v1, %v9 : i1 loc("or.cond3.not.i"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":31:19))
  %v11 = sea.const 1 : i1 loc(".not2"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":31:19))
  %v12 = sea.xor %v7, %v11 : i1 loc(".not2"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":31:19))
  %v13 = sea.const 1 : i1 loc("brmerge3"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":31:19))
  %v14 = sea.select %v10, %v13, %v12 : i1 loc("brmerge3"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":31:19))
  sea.cond_br %v14, ^bb3, ^bb2 loc("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":31:19)
^bb2:
  %v15 = sea.const 1 : i1 loc("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":32:13)
  %v16 = sea.const 1 : i1 loc("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":32:13)
  %v17 = sea.xor %v15, %v16 : i1 loc("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":32:13)
  sea.assume %v17 loc("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":32:13)
  sea.br ^bb7 loc("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":32:13)
^bb3:
  %v18 = sea.const 4294967295 : i32 loc("_24"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":34:13))
  %v19 = sea.icmp eq, %v6, %v18 : i32 loc("_24"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":34:13))
  %v20 = sea.or %v19, %v12 : i1 loc("_25"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":34:13))
  %v21 = sea.const 1 : i1 loc("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":34:13)
  %v22 = sea.xor %v20, %v21 : i1 loc("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":34:13)
  sea.assume %v22 loc("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":34:13)
  sea.br ^bb7 loc("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":34:13)
^bb4:
  %v23 = sea.nondet "nd_int" [3] : i32 loc("_2"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":15:23))
  %v24 = sea.const 0 : i32 loc(".not.i"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":15:22))
  %v25 = sea.icmp eq, %v23, %v24 : i32 loc(".not.i"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":15:22))
  %v26 = sea.sext %v25 : i1 to i64 loc("_3"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":15:22))
  %v27 = sea.nondet "nd_uint64_t" [4] : i64 loc("_4"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":16:22))
  %v28 = sea.mul %v26, %v27 : i64 loc("_5"("aws-c-common/include/aws/common/math.gcc_overflow.inl":23:9))
  %v29 = sea.umulo %v26, %v27 : i64 loc("_5"("aws-c-common/include/aws/common/math.gcc_overflow.inl":23:9))
  %v30 = sea.const 0 : i64 loc("_7")
  %v31 = sea.icmp ne, %v27, %v30 : i64 loc("_7")
  %v32 = sea.and %v25, %v31 : i1 loc("or.cond.i"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":18:19))
  %v33 = sea.const 0 : i1 loc("_8"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":18:19))
  %v34 = sea.select %v32, %v29, %v33 : i1 loc("_8"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":18:19))
  sea.cond_br %v34, ^bb6, ^bb5 loc("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":18:19)
^bb5:
  %v35 = sea.const 18446744073709551615 : i64 loc("_12"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":21:13))
  %v36 = sea.icmp eq, %v28, %v35 : i64 loc("_12"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":21:13))
  %v37 = sea.const 1 : i1 loc("not.4"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":21:13))
  %v38 = sea.xor %v29, %v37 : i1 loc("not.4"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":21:13))
  %v39 = sea.or %v36, %v38 : i1 loc("_13"("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":21:13))
  %v40 = sea.const 1 : i1 loc("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":21:13)
  %v41 = sea.xor %v39, %v40 : i1 loc("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":21:13)
  sea.assume %v41 loc("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":21:13)
  sea.br ^bb7 loc("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":21:13)
^bb6:
  %v42 = sea.const 1 : i1 loc("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":19:13)
  %v43 = sea.const 1 : i1 loc("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":19:13)
  %v44 = sea.xor %v42, %v43 : i1 loc("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":19:13)
  sea.assume %v44 loc("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":19:13)
  sea.br ^bb7 loc("seahorn/jobs/mul_size_saturating/aws_mul_size_saturating_harness.c":19:13)
^bb7:
  sea.br ^bb8
^bb8:
  %v45 = sea.const 0 : i1
  sea.assert %v45
  sea.halt
}
