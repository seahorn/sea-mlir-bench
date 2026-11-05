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
  %v6 = sea.const 9223372036854775807 : i64 loc("_4")
  %v7 = sea.sub %v6, %v3 nsw nuw : i64 loc("_4")
  %v8 = sea.const 1 : i1 loc("stellar/harness/fee_port.c":52:8)
  sea.assume %v8 loc("stellar/harness/fee_port.c":52:8)
  %v9 = sea.const 0 : i64 loc("_5")
  %v10 = sea.icmp sgt, %v3, %v9 : i64 loc("_5")
  sea.assume %v10
  %v11 = sea.const 0 : i1 loc("stellar/harness/fee_port.c":52:8)
  sea.assume %v11 loc("stellar/harness/fee_port.c":52:8)
  %v12 = sea.icmp sgt, %v3, %v7 : i64 loc("_6"("stellar/harness/fee_port.c":56:5))
  sea.cond_br %v12, ^bb9, ^bb1 loc("stellar/harness/fee_port.c":56:5)
^bb1:
  %v13 = sea.const 1 : i64 loc("_9"("stellar/harness/fee_port.c":58:39))
  %v14 = sea.shl %v3, %v13 : i64 loc("_9"("stellar/harness/fee_port.c":58:39))
  %v15 = sea.const 0 : i1 loc("stellar/harness/fee_port.c":52:8)
  sea.assume %v15 loc("stellar/harness/fee_port.c":52:8)
  %v16 = sea.icmp sgt, %v14, %v7 : i64 loc("_10"("stellar/harness/fee_port.c":56:5))
  sea.cond_br %v16, ^bb9, ^bb2 loc("stellar/harness/fee_port.c":56:5)
^bb2:
  %v17 = sea.const 3 : i64 loc("_11"("stellar/harness/fee_port.c":58:39))
  %v18 = sea.mul %v3, %v17 : i64 loc("_11"("stellar/harness/fee_port.c":58:39))
  %v19 = sea.const 0 : i1 loc("stellar/harness/fee_port.c":52:8)
  sea.assume %v19 loc("stellar/harness/fee_port.c":52:8)
  %v20 = sea.icmp sgt, %v18, %v7 : i64 loc("_12"("stellar/harness/fee_port.c":56:5))
  sea.cond_br %v20, ^bb9, ^bb3 loc("stellar/harness/fee_port.c":56:5)
^bb3:
  %v21 = sea.const 2 : i64 loc("_13"("stellar/harness/fee_port.c":58:39))
  %v22 = sea.shl %v3, %v21 : i64 loc("_13"("stellar/harness/fee_port.c":58:39))
  %v23 = sea.const 0 : i1 loc("stellar/harness/fee_port.c":52:8)
  sea.assume %v23 loc("stellar/harness/fee_port.c":52:8)
  %v24 = sea.icmp sgt, %v22, %v7 : i64 loc("_14"("stellar/harness/fee_port.c":56:5))
  sea.cond_br %v24, ^bb9, ^bb4 loc("stellar/harness/fee_port.c":56:5)
^bb4:
  %v25 = sea.const 5 : i64 loc("_15"("stellar/harness/fee_port.c":58:39))
  %v26 = sea.mul %v3, %v25 : i64 loc("_15"("stellar/harness/fee_port.c":58:39))
  %v27 = sea.const 0 : i1 loc("stellar/harness/fee_port.c":52:8)
  sea.assume %v27 loc("stellar/harness/fee_port.c":52:8)
  %v28 = sea.icmp sgt, %v26, %v7 : i64 loc("_16"("stellar/harness/fee_port.c":56:5))
  sea.cond_br %v28, ^bb9, ^bb5 loc("stellar/harness/fee_port.c":56:5)
^bb5:
  %v29 = sea.const 6 : i64 loc("_17"("stellar/harness/fee_port.c":58:39))
  %v30 = sea.mul %v3, %v29 : i64 loc("_17"("stellar/harness/fee_port.c":58:39))
  %v31 = sea.const 0 : i1 loc("stellar/harness/fee_port.c":52:8)
  sea.assume %v31 loc("stellar/harness/fee_port.c":52:8)
  %v32 = sea.icmp sgt, %v30, %v7 : i64 loc("_18"("stellar/harness/fee_port.c":56:5))
  sea.cond_br %v32, ^bb9, ^bb6 loc("stellar/harness/fee_port.c":56:5)
^bb6:
  %v33 = sea.const 7 : i64 loc("_19"("stellar/harness/fee_port.c":58:39))
  %v34 = sea.mul %v3, %v33 : i64 loc("_19"("stellar/harness/fee_port.c":58:39))
  %v35 = sea.const 0 : i1 loc("stellar/harness/fee_port.c":52:8)
  sea.assume %v35 loc("stellar/harness/fee_port.c":52:8)
  %v36 = sea.icmp sgt, %v34, %v7 : i64 loc("_20"("stellar/harness/fee_port.c":56:5))
  sea.cond_br %v36, ^bb9, ^bb7 loc("stellar/harness/fee_port.c":56:5)
^bb7:
  %v37 = sea.const 3 : i64 loc("_21"("stellar/harness/fee_port.c":58:39))
  %v38 = sea.shl %v3, %v37 : i64 loc("_21"("stellar/harness/fee_port.c":58:39))
  %v39 = sea.const 0 : i1 loc("stellar/harness/fee_port.c":52:8)
  sea.assume %v39 loc("stellar/harness/fee_port.c":52:8)
  %v40 = sea.icmp sgt, %v38, %v7 : i64 loc("_22"("stellar/harness/fee_port.c":56:5))
  sea.cond_br %v40, ^bb9, ^bb8 loc("stellar/harness/fee_port.c":56:5)
^bb8:
  %v41 = sea.const 9 : i64 loc("_7"("stellar/harness/fee_port.c":58:39))
  %v42 = sea.mul %v3, %v41 : i64 loc("_7"("stellar/harness/fee_port.c":58:39))
  %v43 = sea.const 0 : i1 loc("stellar/harness/fee_port.c":52:8)
  sea.assume %v43 loc("stellar/harness/fee_port.c":52:8)
  %v44 = sea.icmp sgt, %v42, %v7 : i64 loc("_8"("stellar/harness/fee_port.c":56:5))
  sea.assume %v44
  sea.br ^bb9 loc("stellar/harness/fee_port.c":56:5)
^bb9:
  sea.br ^bb10
^bb10:
  %v45 = sea.const 0 : i1
  sea.assert %v45
  sea.halt
}
