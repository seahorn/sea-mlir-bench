// Exported from SeaHorn (scope_port.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.nondet "nd_u64" [0] : i64 loc("_tail1"("stellar/harness/fee_port.c":75:21))
  %v1 = sea.const 18446744073709551615 : i64 loc("_tail2"("stellar/harness/fee_port.c":76:17))
  %v2 = sea.icmp sgt, %v0, %v1 : i64 loc("_tail2"("stellar/harness/fee_port.c":76:17))
  sea.assume %v2 loc("stellar/harness/fee_port.c":76:5)
  %v3 = sea.nondet "nd_u64" [1] : i64 loc("_tail3"("stellar/harness/fee_port.c":77:22))
  %v4 = sea.const 18446744073709551615 : i64 loc("_tail4"("stellar/harness/fee_port.c":78:18))
  %v5 = sea.icmp sgt, %v3, %v4 : i64 loc("_tail4"("stellar/harness/fee_port.c":78:18))
  sea.assume %v5 loc("stellar/harness/fee_port.c":78:5)
  %v6 = sea.nondet "nd_u64" [2] : i64 loc("_tail5"("stellar/harness/fee_port.c":75:21))
  %v7 = sea.const 18446744073709551615 : i64 loc("_tail6"("stellar/harness/fee_port.c":76:17))
  %v8 = sea.icmp sgt, %v6, %v7 : i64 loc("_tail6"("stellar/harness/fee_port.c":76:17))
  sea.assume %v8 loc("stellar/harness/fee_port.c":76:5)
  %v9 = sea.nondet "nd_u64" [3] : i64 loc("_tail7"("stellar/harness/fee_port.c":77:22))
  %v10 = sea.const 18446744073709551615 : i64 loc("_tail8"("stellar/harness/fee_port.c":78:18))
  %v11 = sea.icmp sgt, %v9, %v10 : i64 loc("_tail8"("stellar/harness/fee_port.c":78:18))
  sea.assume %v11 loc("stellar/harness/fee_port.c":78:5)
  %v12 = sea.const 0 : i64 loc("_10"("stellar/harness/fee_port.c":56:5))
  %v13 = sea.icmp sgt, %v6, %v12 : i64 loc("_10"("stellar/harness/fee_port.c":56:5))
  %v14 = sea.const 9223372036854775807 : i64 loc("_11"("stellar/harness/fee_port.c":56:5))
  %v15 = sea.sub %v14, %v6 nsw nuw : i64 loc("_11"("stellar/harness/fee_port.c":56:5))
  %v16 = sea.icmp sgt, %v0, %v15 : i64 loc("_or.cond.1"("stellar/harness/fee_port.c":56:5))
  %v17 = sea.const 0 : i1 loc("or.cond.1"("stellar/harness/fee_port.c":56:5))
  %v18 = sea.select %v13, %v16, %v17 : i1 loc("or.cond.1"("stellar/harness/fee_port.c":56:5))
  sea.cond_br %v18, ^bb3, ^bb1 loc("stellar/harness/fee_port.c":56:5)
^bb1:
  %v19 = sea.const 1 : i1 loc("stellar/harness/fee_port.c":52:8)
  sea.assume %v19 loc("stellar/harness/fee_port.c":52:8)
  %v20 = sea.const 1 : i1 loc("stellar/harness/fee_port.c":52:8)
  sea.assume %v20 loc("stellar/harness/fee_port.c":52:8)
  %v21 = sea.const 0 : i64 loc("_13"("stellar/harness/fee_port.c":56:5))
  %v22 = sea.icmp sgt, %v9, %v21 : i64 loc("_13"("stellar/harness/fee_port.c":56:5))
  %v23 = sea.const 9223372036854775807 : i64 loc("_14"("stellar/harness/fee_port.c":56:5))
  %v24 = sea.sub %v23, %v9 nsw nuw : i64 loc("_14"("stellar/harness/fee_port.c":56:5))
  %v25 = sea.icmp sgt, %v3, %v24 : i64 loc("_or.cond31"("stellar/harness/fee_port.c":56:5))
  %v26 = sea.const 0 : i1 loc("or.cond31"("stellar/harness/fee_port.c":56:5))
  %v27 = sea.select %v22, %v25, %v26 : i1 loc("or.cond31"("stellar/harness/fee_port.c":56:5))
  sea.cond_br %v27, ^bb3, ^bb2 loc("stellar/harness/fee_port.c":56:5)
^bb2:
  %v28 = sea.const 0 : i1 loc("stellar/harness/fee_port.c":52:8)
  sea.assume %v28 loc("stellar/harness/fee_port.c":52:8)
  %v29 = sea.const 0 : i1 loc("stellar/harness/fee_port.c":52:8)
  sea.assume %v29 loc("stellar/harness/fee_port.c":52:8)
  %v30 = sea.const 0 : i1 loc("stellar/harness/fee_port.c":52:8)
  sea.assume %v30 loc("stellar/harness/fee_port.c":52:8)
  %v31 = sea.const 0 : i1 loc("stellar/harness/fee_port.c":52:8)
  sea.assume %v31 loc("stellar/harness/fee_port.c":52:8)
  %v32 = sea.const 0 : i1 loc("stellar/harness/fee_port.c":52:8)
  sea.assume %v32 loc("stellar/harness/fee_port.c":52:8)
  %v33 = sea.const 0 : i1 loc("stellar/harness/fee_port.c":52:8)
  sea.assume %v33 loc("stellar/harness/fee_port.c":52:8)
  %v34 = sea.const 0 : i1 loc("stellar/harness/fee_port.c":52:8)
  sea.assume %v34 loc("stellar/harness/fee_port.c":52:8)
  %v35 = sea.const 0 : i1 loc("stellar/harness/fee_port.c":52:8)
  sea.assume %v35 loc("stellar/harness/fee_port.c":52:8)
  %v36 = sea.nondet "undef" [4] : i1
  sea.assume %v36
  sea.br ^bb3 loc("stellar/harness/fee_port.c":56:5)
^bb3:
  sea.br ^bb4
^bb4:
  %v37 = sea.const 0 : i1
  sea.assert %v37
  sea.halt
}
