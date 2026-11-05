// Exported from SeaHorn (scope_port.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.nondet "nd_u64" [0] : i64 loc("_0"("stellar/harness/fee_port.c":75:21))
  %v1 = sea.const 18446744073709551615 : i64 loc("_1"("stellar/harness/fee_port.c":76:17))
  %v2 = sea.icmp sgt, %v0, %v1 : i64 loc("_1"("stellar/harness/fee_port.c":76:17))
  sea.assume %v2 loc("stellar/harness/fee_port.c":76:5)
  %v3 = sea.nondet "nd_u64" [1] : i64 loc("_2"("stellar/harness/fee_port.c":77:22))
  %v4 = sea.const 18446744073709551615 : i64 loc("_3"("stellar/harness/fee_port.c":78:18))
  %v5 = sea.icmp sgt, %v3, %v4 : i64 loc("_3"("stellar/harness/fee_port.c":78:18))
  sea.assume %v5 loc("stellar/harness/fee_port.c":78:5)
  %v6 = sea.const 0 : i1 loc("stellar/harness/fee_port.c":95:3)
  sea.assume %v6 loc("stellar/harness/fee_port.c":95:3)
  sea.br ^bb1
^bb1:
  %v7 = sea.const 0 : i1
  sea.assert %v7
  sea.halt
}
