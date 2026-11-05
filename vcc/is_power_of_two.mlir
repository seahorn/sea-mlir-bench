// Exported from SeaHorn (is_power_of_two.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.nondet "nd_size_t" [0] : i64 loc("_0"("seahorn/jobs/is_power_of_two/aws_is_power_of_two_harness.c":10:23))
  %v1 = sea.const 1 : i1 loc("seahorn/jobs/is_power_of_two/aws_is_power_of_two_harness.c":19:5)
  %v2 = sea.const 1 : i1 loc("seahorn/jobs/is_power_of_two/aws_is_power_of_two_harness.c":19:5)
  %v3 = sea.xor %v1, %v2 : i1 loc("seahorn/jobs/is_power_of_two/aws_is_power_of_two_harness.c":19:5)
  sea.assume %v3 loc("seahorn/jobs/is_power_of_two/aws_is_power_of_two_harness.c":19:5)
  sea.br ^bb1
^bb1:
  %v4 = sea.const 0 : i1
  sea.assert %v4
  sea.halt
}
