// Exported from SeaHorn (scope_port.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.nondet "nd_u32" [0] : i32 loc("_0"("stellar/harness/validator_port.c":93:21))
  %v1 = sea.const 8 : i32 loc("_1"("stellar/harness/validator_port.c":94:26))
  %v2 = sea.icmp ult, %v0, %v1 : i32 loc("_1"("stellar/harness/validator_port.c":94:26))
  sea.assume %v2 loc("stellar/harness/validator_port.c":94:7)
  %v3 = sea.nondet "nd_u32" [1] : i32 loc("_2"("stellar/harness/validator_port.c":93:21))
  %v4 = sea.const 8 : i32 loc("_3"("stellar/harness/validator_port.c":94:26))
  %v5 = sea.icmp ult, %v3, %v4 : i32 loc("_3"("stellar/harness/validator_port.c":94:26))
  sea.assume %v5 loc("stellar/harness/validator_port.c":94:7)
  %v6 = sea.nondet "nd_u32" [2] : i32 loc("_4"("stellar/harness/validator_port.c":97:21))
  %v7 = sea.const 8 : i32 loc("_5"("stellar/harness/validator_port.c":98:26))
  %v8 = sea.icmp ult, %v6, %v7 : i32 loc("_5"("stellar/harness/validator_port.c":98:26))
  sea.assume %v8 loc("stellar/harness/validator_port.c":98:7)
  %v9 = sea.nondet "nd_u32" [3] : i32 loc("_6"("stellar/harness/validator_port.c":97:21))
  %v10 = sea.const 8 : i32 loc("_7"("stellar/harness/validator_port.c":98:26))
  %v11 = sea.icmp ult, %v9, %v10 : i32 loc("_7"("stellar/harness/validator_port.c":98:26))
  sea.assume %v11 loc("stellar/harness/validator_port.c":98:7)
  %v12 = sea.nondet "nd_u32" [4] : i32 loc("_8"("stellar/harness/validator_port.c":93:21))
  %v13 = sea.const 8 : i32 loc("_9"("stellar/harness/validator_port.c":94:26))
  %v14 = sea.icmp ult, %v12, %v13 : i32 loc("_9"("stellar/harness/validator_port.c":94:26))
  sea.assume %v14 loc("stellar/harness/validator_port.c":94:7)
  %v15 = sea.nondet "nd_u32" [5] : i32 loc("_10"("stellar/harness/validator_port.c":93:21))
  %v16 = sea.const 8 : i32 loc("_11"("stellar/harness/validator_port.c":94:26))
  %v17 = sea.icmp ult, %v15, %v16 : i32 loc("_11"("stellar/harness/validator_port.c":94:26))
  sea.assume %v17 loc("stellar/harness/validator_port.c":94:7)
  %v18 = sea.nondet "nd_u32" [6] : i32 loc("_12"("stellar/harness/validator_port.c":97:21))
  %v19 = sea.const 8 : i32 loc("_13"("stellar/harness/validator_port.c":98:26))
  %v20 = sea.icmp ult, %v18, %v19 : i32 loc("_13"("stellar/harness/validator_port.c":98:26))
  sea.assume %v20 loc("stellar/harness/validator_port.c":98:7)
  %v21 = sea.nondet "nd_u32" [7] : i32 loc("_14"("stellar/harness/validator_port.c":97:21))
  %v22 = sea.const 8 : i32 loc("_15"("stellar/harness/validator_port.c":98:26))
  %v23 = sea.icmp ult, %v21, %v22 : i32 loc("_15"("stellar/harness/validator_port.c":98:26))
  sea.assume %v23 loc("stellar/harness/validator_port.c":98:7)
  %v24 = sea.const 1 : i1 loc("stellar/harness/validator_port.c":119:3)
  %v25 = sea.const 1 : i1 loc("stellar/harness/validator_port.c":119:3)
  %v26 = sea.xor %v24, %v25 : i1 loc("stellar/harness/validator_port.c":119:3)
  sea.assume %v26 loc("stellar/harness/validator_port.c":119:3)
  sea.br ^bb1
^bb1:
  %v27 = sea.const 0 : i1
  sea.assert %v27
  sea.halt
}
