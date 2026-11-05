// Exported from SeaHorn (nospec_mask.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.nondet "nd_size_t" [0] : i64 loc("_0"("seahorn/jobs/nospec_mask/aws_nospec_mask_harness.c":12:20))
  %v1 = sea.nondet "nd_size_t" [1] : i64 loc("_1"("seahorn/jobs/nospec_mask/aws_nospec_mask_harness.c":13:20))
  %v2 = sea.const 18446744073709551615 : i64 loc("_3"("aws-c-common/source/byte_buf.c":1050:40))
  %v3 = sea.xor %v0, %v2 : i64 loc("_3"("aws-c-common/source/byte_buf.c":1050:40))
  %v4 = sea.add %v1, %v3 : i64 loc("_4"("aws-c-common/source/byte_buf.c":1050:40))
  %v5 = sea.or %v1, %v4 : i64 loc("_5"("aws-c-common/source/byte_buf.c":1051:42))
  %v6 = sea.or %v5, %v0 : i64 loc("_6"("aws-c-common/source/byte_buf.c":1051:42))
  %v7 = sea.const 18446744073709551615 : i64 loc("_7"("aws-c-common/source/byte_buf.c":1064:38))
  %v8 = sea.icmp sgt, %v6, %v7 : i64 loc("_7"("aws-c-common/source/byte_buf.c":1064:38))
  sea.cond_br %v8, ^bb2, ^bb1 loc("seahorn/jobs/nospec_mask/aws_nospec_mask_harness.c":19:9)
^bb1:
  %v9 = sea.icmp uge, %v0, %v1 : i64 loc("_9"("seahorn/jobs/nospec_mask/aws_nospec_mask_harness.c":20:9))
  %v10 = sea.or %v1, %v0 : i64 loc("_10"("seahorn/jobs/nospec_mask/aws_nospec_mask_harness.c":20:9))
  %v11 = sea.const 0 : i64 loc("_11"("seahorn/jobs/nospec_mask/aws_nospec_mask_harness.c":20:9))
  %v12 = sea.icmp slt, %v10, %v11 : i64 loc("_11"("seahorn/jobs/nospec_mask/aws_nospec_mask_harness.c":20:9))
  %v13 = sea.or %v9, %v12 : i1 loc("spec.select.i"("seahorn/jobs/nospec_mask/aws_nospec_mask_harness.c":20:9))
  %v14 = sea.const 1 : i1 loc("seahorn/jobs/nospec_mask/aws_nospec_mask_harness.c":20:9)
  %v15 = sea.xor %v13, %v14 : i1 loc("seahorn/jobs/nospec_mask/aws_nospec_mask_harness.c":20:9)
  sea.assume %v15 loc("seahorn/jobs/nospec_mask/aws_nospec_mask_harness.c":20:9)
  sea.br ^bb3 loc("seahorn/jobs/nospec_mask/aws_nospec_mask_harness.c":20:9)
^bb2:
  %v16 = sea.icmp ult, %v0, %v1 : i64 loc("_12"("seahorn/jobs/nospec_mask/aws_nospec_mask_harness.c":23:9))
  %v17 = sea.or %v1, %v0 : i64 loc("_13"("seahorn/jobs/nospec_mask/aws_nospec_mask_harness.c":23:9))
  %v18 = sea.const 18446744073709551615 : i64 loc("_14"("seahorn/jobs/nospec_mask/aws_nospec_mask_harness.c":23:9))
  %v19 = sea.icmp sgt, %v17, %v18 : i64 loc("_14"("seahorn/jobs/nospec_mask/aws_nospec_mask_harness.c":23:9))
  %v20 = sea.and %v16, %v19 : i1 loc("spec.select10.i"("seahorn/jobs/nospec_mask/aws_nospec_mask_harness.c":23:9))
  %v21 = sea.const 1 : i1 loc("seahorn/jobs/nospec_mask/aws_nospec_mask_harness.c":23:9)
  %v22 = sea.xor %v20, %v21 : i1 loc("seahorn/jobs/nospec_mask/aws_nospec_mask_harness.c":23:9)
  sea.assume %v22 loc("seahorn/jobs/nospec_mask/aws_nospec_mask_harness.c":23:9)
  sea.br ^bb3 loc("seahorn/jobs/nospec_mask/aws_nospec_mask_harness.c":23:9)
^bb3:
  sea.br ^bb4
^bb4:
  %v23 = sea.const 0 : i1
  sea.assert %v23
  sea.halt
}
