// Exported from SeaHorn (round_up_to_power_of_two.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.nondet "nd_size_t" [0] : i64 loc("_0"("seahorn/jobs/round_up_to_power_of_two/aws_round_up_to_power_of_two_harness.c":9:23))
  %v1 = sea.const 0 : i64 loc("_1"("aws-c-common/include/aws/common/math.inl":169:11))
  %v2 = sea.icmp eq, %v0, %v1 : i64 loc("_1"("aws-c-common/include/aws/common/math.inl":169:11))
  sea.cond_br %v2, ^bb5, ^bb1 loc("aws-c-common/include/aws/common/math.inl":169:9)
^bb1:
  %v3 = sea.const 9223372036854775808 : i64 loc("_4"("aws-c-common/include/aws/common/math.inl":173:11))
  %v4 = sea.icmp ugt, %v0, %v3 : i64 loc("_4"("aws-c-common/include/aws/common/math.inl":173:11))
  sea.cond_br %v4, ^bb4, ^bb2 loc("aws-c-common/include/aws/common/math.inl":173:9)
^bb2:
  sea.br ^bb3
^bb3:
  %v5 = sea.const 18446744073709551615 : i64 loc("_7"("aws-c-common/include/aws/common/math.inl":177:6))
  %v6 = sea.add %v0, %v5 : i64 loc("_7"("aws-c-common/include/aws/common/math.inl":177:6))
  %v7 = sea.const 1 : i64 loc("_8"("aws-c-common/include/aws/common/math.inl":178:12))
  %v8 = sea.lshr %v6, %v7 : i64 loc("_8"("aws-c-common/include/aws/common/math.inl":178:12))
  %v9 = sea.or %v8, %v6 : i64 loc("_9"("aws-c-common/include/aws/common/math.inl":178:7))
  %v10 = sea.const 2 : i64 loc("_10"("aws-c-common/include/aws/common/math.inl":179:12))
  %v11 = sea.lshr %v9, %v10 : i64 loc("_10"("aws-c-common/include/aws/common/math.inl":179:12))
  %v12 = sea.or %v11, %v9 : i64 loc("_11"("aws-c-common/include/aws/common/math.inl":179:7))
  %v13 = sea.const 4 : i64 loc("_12"("aws-c-common/include/aws/common/math.inl":180:12))
  %v14 = sea.lshr %v12, %v13 : i64 loc("_12"("aws-c-common/include/aws/common/math.inl":180:12))
  %v15 = sea.or %v14, %v12 : i64 loc("_13"("aws-c-common/include/aws/common/math.inl":180:7))
  %v16 = sea.const 8 : i64 loc("_14"("aws-c-common/include/aws/common/math.inl":181:12))
  %v17 = sea.lshr %v15, %v16 : i64 loc("_14"("aws-c-common/include/aws/common/math.inl":181:12))
  %v18 = sea.or %v17, %v15 : i64 loc("_15"("aws-c-common/include/aws/common/math.inl":181:7))
  %v19 = sea.const 16 : i64 loc("_16"("aws-c-common/include/aws/common/math.inl":182:12))
  %v20 = sea.lshr %v18, %v19 : i64 loc("_16"("aws-c-common/include/aws/common/math.inl":182:12))
  %v21 = sea.or %v20, %v18 : i64 loc("_17"("aws-c-common/include/aws/common/math.inl":182:7))
  %v22 = sea.const 32 : i64 loc("_18"("aws-c-common/include/aws/common/math.inl":184:12))
  %v23 = sea.lshr %v21, %v22 : i64 loc("_18"("aws-c-common/include/aws/common/math.inl":184:12))
  %v24 = sea.or %v23, %v21 : i64 loc("_19"("aws-c-common/include/aws/common/math.inl":184:7))
  %v25 = sea.const 1 : i64 loc("_20"("aws-c-common/include/aws/common/math.inl":186:6))
  %v26 = sea.add %v24, %v25 nuw : i64 loc("_20"("aws-c-common/include/aws/common/math.inl":186:6))
  sea.br ^bb6(%v26 : i64) loc("aws-c-common/include/aws/common/math.inl":188:5)
^bb4:
  %v27 = sea.const 1 : i1 loc("seahorn/jobs/round_up_to_power_of_two/aws_round_up_to_power_of_two_harness.c":26:9)
  %v28 = sea.const 1 : i1 loc("seahorn/jobs/round_up_to_power_of_two/aws_round_up_to_power_of_two_harness.c":26:9)
  %v29 = sea.xor %v27, %v28 : i1 loc("seahorn/jobs/round_up_to_power_of_two/aws_round_up_to_power_of_two_harness.c":26:9)
  sea.assume %v29 loc("seahorn/jobs/round_up_to_power_of_two/aws_round_up_to_power_of_two_harness.c":26:9)
  sea.br ^bb9 loc("seahorn/jobs/round_up_to_power_of_two/aws_round_up_to_power_of_two_harness.c":26:9)
^bb5:
  %v30 = sea.const 1 : i64
  sea.br ^bb6(%v30 : i64)
^bb6(%v31 : i64):
  %v32 = sea.ctpop %v31 : i64 loc("_21"("seahorn/jobs/round_up_to_power_of_two/aws_round_up_to_power_of_two_harness.c":14:20))
  %v33 = sea.const 1 : i64 loc("_22"("seahorn/jobs/round_up_to_power_of_two/aws_round_up_to_power_of_two_harness.c":21:9))
  %v34 = sea.icmp eq, %v32, %v33 : i64 loc("_22"("seahorn/jobs/round_up_to_power_of_two/aws_round_up_to_power_of_two_harness.c":21:9))
  sea.cond_br %v34, ^bb7, ^bb9 loc("seahorn/jobs/round_up_to_power_of_two/aws_round_up_to_power_of_two_harness.c":21:9)
^bb7:
  %v35 = sea.icmp ule, %v0, %v31 : i64 loc("_24"("seahorn/jobs/round_up_to_power_of_two/aws_round_up_to_power_of_two_harness.c":22:9))
  %v36 = sea.icmp ugt, %v0, %v31 : i64 loc(".not.i"("seahorn/jobs/round_up_to_power_of_two/aws_round_up_to_power_of_two_harness.c":22:9))
  sea.cond_br %v36, ^bb9, ^bb8 loc("seahorn/jobs/round_up_to_power_of_two/aws_round_up_to_power_of_two_harness.c":22:9)
^bb8:
  %v37 = sea.const 1 : i64 loc("_26"("seahorn/jobs/round_up_to_power_of_two/aws_round_up_to_power_of_two_harness.c":23:9))
  %v38 = sea.lshr %v31, %v37 : i64 loc("_26"("seahorn/jobs/round_up_to_power_of_two/aws_round_up_to_power_of_two_harness.c":23:9))
  %v39 = sea.icmp uge, %v0, %v38 : i64 loc("_27"("seahorn/jobs/round_up_to_power_of_two/aws_round_up_to_power_of_two_harness.c":23:9))
  %v40 = sea.icmp ult, %v0, %v38 : i64 loc(".not1.i"("seahorn/jobs/round_up_to_power_of_two/aws_round_up_to_power_of_two_harness.c":23:9))
  sea.assume %v40 loc("seahorn/jobs/round_up_to_power_of_two/aws_round_up_to_power_of_two_harness.c":23:9)
  sea.br ^bb9 loc("seahorn/jobs/round_up_to_power_of_two/aws_round_up_to_power_of_two_harness.c":23:9)
^bb9:
  sea.br ^bb10
^bb10:
  %v41 = sea.const 0 : i1
  sea.assert %v41
  sea.halt
}
