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
  %v6 = sea.nondet "nd_u64" [2] : i64 loc("_4"("stellar/harness/fee_port.c":75:21))
  %v7 = sea.const 18446744073709551615 : i64 loc("_5"("stellar/harness/fee_port.c":76:17))
  %v8 = sea.icmp sgt, %v6, %v7 : i64 loc("_5"("stellar/harness/fee_port.c":76:17))
  sea.assume %v8 loc("stellar/harness/fee_port.c":76:5)
  %v9 = sea.nondet "nd_u64" [3] : i64 loc("_6"("stellar/harness/fee_port.c":77:22))
  %v10 = sea.const 18446744073709551615 : i64 loc("_7"("stellar/harness/fee_port.c":78:18))
  %v11 = sea.icmp sgt, %v9, %v10 : i64 loc("_7"("stellar/harness/fee_port.c":78:18))
  sea.assume %v11 loc("stellar/harness/fee_port.c":78:5)
  %v12 = sea.add %v6, %v0 : i64 loc("_8"("stellar/harness/fee_port.c":58:39))
  %v13 = sea.add %v9, %v3 : i64 loc("_9"("stellar/harness/fee_port.c":58:39))
  %v14 = sea.sext %v0 : i64 to i128 loc("_10"("stellar/harness/fee_port.c":68:41))
  %v15 = sea.sext %v6 : i64 to i128 loc("_11"("stellar/harness/fee_port.c":68:41))
  %v16 = sea.add %v15, %v14 nsw : i128 loc("_12"("stellar/harness/fee_port.c":68:38))
  %v17 = sea.sext %v3 : i64 to i128 loc("_13"("stellar/harness/fee_port.c":68:41))
  %v18 = sea.sext %v9 : i64 to i128 loc("_14"("stellar/harness/fee_port.c":68:41))
  %v19 = sea.add %v18, %v17 nsw : i128 loc("_15"("stellar/harness/fee_port.c":68:38))
  %v20 = sea.icmp slt, %v16, %v19 : i128 loc("_16"("stellar/harness/fee_port.c":92:10))
  %v21 = sea.icmp slt, %v13, %v12 : i64 loc(".not.i")
  %v22 = sea.const 0 : i1 loc("spec.select.i"("stellar/harness/fee_port.c":92:7))
  %v23 = sea.select %v20, %v21, %v22 : i1 loc("spec.select.i"("stellar/harness/fee_port.c":92:7))
  sea.assume %v23 loc("stellar/harness/fee_port.c":95:3)
  sea.br ^bb1
^bb1:
  %v24 = sea.const 0 : i1
  sea.assert %v24
  sea.halt
}
