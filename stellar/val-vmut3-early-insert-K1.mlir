// Exported from SeaHorn (scope_port.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm24")
  %v1 = sea.mem.nondet "region.4" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm25")
  %v2 = sea.mem.nondet "region.8" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm26")
  %v3 = sea.mem.nondet "region.12" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm27")
  %v4 = sea.mem.nondet "region.16" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm28")
  %v5 = sea.mem.nondet "region.20" [5] : !sea.mem<!sea.ptr<64>, i8> loc("sm29")
  %v6 = sea.mem.nondet "region.24" [6] : !sea.mem<!sea.ptr<64>, i8> loc("sm30")
  %v7 = sea.mem.nondet "region.28" [7] : !sea.mem<!sea.ptr<64>, i8> loc("sm31")
  %v8 = sea.const 4 : i64 loc("ro.0")
  %v9 = sea.alloca %v8 align 16 [8] : i64 -> !sea.ptr<64> loc("ro.0")
  %v10 = sea.const 0 : i32
  %v11 = sea.store %v0[%v9], %v10 inplace align 4 : !sea.mem<!sea.ptr<64>, i8>, i32
  %v12 = sea.const 4 : i64 loc("ro.1")
  %v13 = sea.alloca %v12 align 16 [9] : i64 -> !sea.ptr<64> loc("ro.1")
  %v14 = sea.const 0 : i32
  %v15 = sea.store %v1[%v13], %v14 inplace align 4 : !sea.mem<!sea.ptr<64>, i8>, i32
  %v16 = sea.const 4 : i64 loc("ro.2")
  %v17 = sea.alloca %v16 align 8 [10] : i64 -> !sea.ptr<64> loc("ro.2")
  %v18 = sea.const 0 : i32
  %v19 = sea.store %v2[%v17], %v18 inplace align 4 : !sea.mem<!sea.ptr<64>, i8>, i32
  %v20 = sea.const 4 : i64 loc("ro.3")
  %v21 = sea.alloca %v20 align 16 [11] : i64 -> !sea.ptr<64> loc("ro.3")
  %v22 = sea.const 0 : i32
  %v23 = sea.store %v3[%v21], %v22 inplace align 4 : !sea.mem<!sea.ptr<64>, i8>, i32
  %v24 = sea.const 4 : i64 loc("rw.0")
  %v25 = sea.alloca %v24 align 16 [12] : i64 -> !sea.ptr<64> loc("rw.0")
  %v26 = sea.const 0 : i32
  %v27 = sea.store %v4[%v25], %v26 inplace align 4 : !sea.mem<!sea.ptr<64>, i8>, i32
  %v28 = sea.const 4 : i64 loc("rw.1")
  %v29 = sea.alloca %v28 align 16 [13] : i64 -> !sea.ptr<64> loc("rw.1")
  %v30 = sea.const 0 : i32
  %v31 = sea.store %v5[%v29], %v30 inplace align 4 : !sea.mem<!sea.ptr<64>, i8>, i32
  %v32 = sea.const 4 : i64 loc("rw.2")
  %v33 = sea.alloca %v32 align 8 [14] : i64 -> !sea.ptr<64> loc("rw.2")
  %v34 = sea.const 0 : i32
  %v35 = sea.store %v6[%v33], %v34 inplace align 4 : !sea.mem<!sea.ptr<64>, i8>, i32
  %v36 = sea.const 4 : i64 loc("rw.3")
  %v37 = sea.alloca %v36 align 16 [15] : i64 -> !sea.ptr<64> loc("rw.3")
  %v38 = sea.const 0 : i32
  %v39 = sea.store %v7[%v37], %v38 inplace align 4 : !sea.mem<!sea.ptr<64>, i8>, i32
  %v40 = sea.nondet "nd_u32" [16] : i32 loc("_0"("stellar/harness/validator_port.c":93:21))
  %v41 = sea.store %v11[%v9], %v40 inplace align 16 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("stellar/harness/validator_port.c":93:19)
  %v42 = sea.const 8 : i32 loc("_1"("stellar/harness/validator_port.c":94:26))
  %v43 = sea.icmp ult, %v40, %v42 : i32 loc("_1"("stellar/harness/validator_port.c":94:26))
  sea.assume %v43 loc("stellar/harness/validator_port.c":94:7)
  %v44 = sea.nondet "nd_u32" [17] : i32 loc("_2"("stellar/harness/validator_port.c":93:21))
  %v45 = sea.store %v15[%v13], %v44 inplace align 16 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("stellar/harness/validator_port.c":93:19)
  %v46 = sea.const 8 : i32 loc("_3"("stellar/harness/validator_port.c":94:26))
  %v47 = sea.icmp ult, %v44, %v46 : i32 loc("_3"("stellar/harness/validator_port.c":94:26))
  sea.assume %v47 loc("stellar/harness/validator_port.c":94:7)
  %v48 = sea.nondet "nd_u32" [18] : i32 loc("_4"("stellar/harness/validator_port.c":97:21))
  %v49 = sea.store %v27[%v25], %v48 inplace align 16 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("stellar/harness/validator_port.c":97:19)
  %v50 = sea.const 8 : i32 loc("_5"("stellar/harness/validator_port.c":98:26))
  %v51 = sea.icmp ult, %v48, %v50 : i32 loc("_5"("stellar/harness/validator_port.c":98:26))
  sea.assume %v51 loc("stellar/harness/validator_port.c":98:7)
  %v52 = sea.nondet "nd_u32" [19] : i32 loc("_6"("stellar/harness/validator_port.c":97:21))
  %v53 = sea.store %v31[%v29], %v52 inplace align 16 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("stellar/harness/validator_port.c":97:19)
  %v54 = sea.const 8 : i32 loc("_7"("stellar/harness/validator_port.c":98:26))
  %v55 = sea.icmp ult, %v52, %v54 : i32 loc("_7"("stellar/harness/validator_port.c":98:26))
  sea.assume %v55 loc("stellar/harness/validator_port.c":98:7)
  %v56 = sea.nondet "nd_u32" [20] : i32 loc("_8"("stellar/harness/validator_port.c":93:21))
  %v57 = sea.store %v19[%v17], %v56 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("stellar/harness/validator_port.c":93:19)
  %v58 = sea.const 8 : i32 loc("_9"("stellar/harness/validator_port.c":94:26))
  %v59 = sea.icmp ult, %v56, %v58 : i32 loc("_9"("stellar/harness/validator_port.c":94:26))
  sea.assume %v59 loc("stellar/harness/validator_port.c":94:7)
  %v60 = sea.nondet "nd_u32" [21] : i32 loc("_10"("stellar/harness/validator_port.c":93:21))
  %v61 = sea.store %v23[%v21], %v60 inplace align 16 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("stellar/harness/validator_port.c":93:19)
  %v62 = sea.const 8 : i32 loc("_11"("stellar/harness/validator_port.c":94:26))
  %v63 = sea.icmp ult, %v60, %v62 : i32 loc("_11"("stellar/harness/validator_port.c":94:26))
  sea.assume %v63 loc("stellar/harness/validator_port.c":94:7)
  %v64 = sea.nondet "nd_u32" [22] : i32 loc("_12"("stellar/harness/validator_port.c":97:21))
  %v65 = sea.store %v35[%v33], %v64 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("stellar/harness/validator_port.c":97:19)
  %v66 = sea.const 8 : i32 loc("_13"("stellar/harness/validator_port.c":98:26))
  %v67 = sea.icmp ult, %v64, %v66 : i32 loc("_13"("stellar/harness/validator_port.c":98:26))
  sea.assume %v67 loc("stellar/harness/validator_port.c":98:7)
  %v68 = sea.nondet "nd_u32" [23] : i32 loc("_14"("stellar/harness/validator_port.c":97:21))
  %v69 = sea.store %v39[%v37], %v68 inplace align 16 : !sea.mem<!sea.ptr<64>, i8>, i32 loc("stellar/harness/validator_port.c":97:19)
  %v70 = sea.const 8 : i32 loc("_15"("stellar/harness/validator_port.c":98:26))
  %v71 = sea.icmp ult, %v68, %v70 : i32 loc("_15"("stellar/harness/validator_port.c":98:26))
  sea.assume %v71 loc("stellar/harness/validator_port.c":98:7)
  %v72 = sea.load %v41[%v9] align 16 : !sea.mem<!sea.ptr<64>, i8> -> i32 loc("_16"("stellar/harness/validator_port.c":63:22))
  %v73 = sea.const 1 : i32 loc("_17"("stellar/harness/validator_port.c":65:23))
  %v74 = sea.shl %v73, %v72 nuw : i32 loc("_17"("stellar/harness/validator_port.c":65:23))
  %v75 = sea.load %v45[%v13] align 16 : !sea.mem<!sea.ptr<64>, i8> -> i32 loc("_18"("stellar/harness/validator_port.c":63:22))
  %v76 = sea.const 1 : i32 loc("_19"("stellar/harness/validator_port.c":65:23))
  %v77 = sea.shl %v76, %v75 nuw : i32 loc("_19"("stellar/harness/validator_port.c":65:23))
  %v78 = sea.or %v77, %v74 : i32 loc("_20"("stellar/harness/validator_port.c":70:17))
  %v79 = sea.load %v49[%v25] align 16 : !sea.mem<!sea.ptr<64>, i8> -> i32 loc("_21"("stellar/harness/validator_port.c":74:22))
  %v80 = sea.const 1 : i32 loc("_22"("stellar/harness/validator_port.c":78:24))
  %v81 = sea.shl %v80, %v79 nuw : i32 loc("_22"("stellar/harness/validator_port.c":78:24))
  %v82 = sea.and %v81, %v78 : i32 loc("_23"("stellar/harness/validator_port.c":78:22))
  %v83 = sea.const 0 : i32 loc(".not37.i.i"("stellar/harness/validator_port.c":78:22))
  %v84 = sea.icmp eq, %v82, %v83 : i32 loc(".not37.i.i"("stellar/harness/validator_port.c":78:22))
  sea.cond_br %v84, ^bb1, ^bb4 loc("stellar/harness/validator_port.c":78:31)
^bb1:
  %v85 = sea.load %v53[%v29] align 16 : !sea.mem<!sea.ptr<64>, i8> -> i32 loc("_25"("stellar/harness/validator_port.c":74:22))
  %v86 = sea.const 1 : i32 loc("_26"("stellar/harness/validator_port.c":78:24))
  %v87 = sea.shl %v86, %v85 nuw : i32 loc("_26"("stellar/harness/validator_port.c":78:24))
  %v88 = sea.and %v87, %v78 : i32 loc("_27"("stellar/harness/validator_port.c":78:22))
  %v89 = sea.const 0 : i32 loc(".not37.i.i.1"("stellar/harness/validator_port.c":78:22))
  %v90 = sea.icmp eq, %v88, %v89 : i32 loc(".not37.i.i.1"("stellar/harness/validator_port.c":78:22))
  sea.cond_br %v90, ^bb2, ^bb4 loc("stellar/harness/validator_port.c":78:31)
^bb2:
  %v91 = sea.load %v57[%v17] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i32 loc("_28"("stellar/harness/validator_port.c":63:22))
  %v92 = sea.const 1 : i32 loc("_29"("stellar/harness/validator_port.c":65:23))
  %v93 = sea.shl %v92, %v91 nuw : i32 loc("_29"("stellar/harness/validator_port.c":65:23))
  %v94 = sea.load %v61[%v21] align 16 : !sea.mem<!sea.ptr<64>, i8> -> i32 loc("_30"("stellar/harness/validator_port.c":63:22))
  %v95 = sea.const 1 : i32 loc("_31"("stellar/harness/validator_port.c":65:23))
  %v96 = sea.shl %v95, %v94 nuw : i32 loc("_31"("stellar/harness/validator_port.c":65:23))
  %v97 = sea.or %v93, %v96 : i32 loc("_32"("stellar/harness/validator_port.c":70:17))
  %v98 = sea.or %v97, %v78 : i32 loc("_33"("stellar/harness/validator_port.c":70:17))
  %v99 = sea.load %v65[%v33] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i32 loc("_34"("stellar/harness/validator_port.c":74:22))
  %v100 = sea.const 1 : i32 loc("_35"("stellar/harness/validator_port.c":78:24))
  %v101 = sea.shl %v100, %v99 nuw : i32 loc("_35"("stellar/harness/validator_port.c":78:24))
  %v102 = sea.and %v98, %v101 : i32 loc("_36"("stellar/harness/validator_port.c":78:22))
  %v103 = sea.const 0 : i32 loc(".not37.i.i.1118"("stellar/harness/validator_port.c":78:22))
  %v104 = sea.icmp eq, %v102, %v103 : i32 loc(".not37.i.i.1118"("stellar/harness/validator_port.c":78:22))
  sea.cond_br %v104, ^bb3, ^bb4 loc("stellar/harness/validator_port.c":78:31)
^bb3:
  %v105 = sea.load %v69[%v37] align 16 : !sea.mem<!sea.ptr<64>, i8> -> i32 loc("_38"("stellar/harness/validator_port.c":74:22))
  %v106 = sea.const 1 : i32 loc("_39"("stellar/harness/validator_port.c":78:24))
  %v107 = sea.shl %v106, %v105 nuw : i32 loc("_39"("stellar/harness/validator_port.c":78:24))
  %v108 = sea.and %v107, %v98 : i32 loc("_40"("stellar/harness/validator_port.c":78:22))
  %v109 = sea.const 0 : i32 loc(".not37.i.i.1.1"("stellar/harness/validator_port.c":78:22))
  %v110 = sea.icmp eq, %v108, %v109 : i32 loc(".not37.i.i.1.1"("stellar/harness/validator_port.c":78:22))
  %v111 = sea.const 1 : i1 loc("stellar/harness/validator_port.c":78:31)
  sea.cond_br %v110, ^bb5(%v111 : i1), ^bb4 loc("stellar/harness/validator_port.c":78:31)
^bb4:
  %v112 = sea.const 0 : i1 loc("stellar/harness/validator_port.c":117:3)
  sea.br ^bb5(%v112 : i1) loc("stellar/harness/validator_port.c":117:3)
^bb5(%v113 : i1):
  %v114 = sea.const 1 : i1 loc("stellar/harness/validator_port.c":119:3)
  %v115 = sea.xor %v113, %v114 : i1 loc("stellar/harness/validator_port.c":119:3)
  sea.assume %v115 loc("stellar/harness/validator_port.c":119:3)
  sea.br ^bb6
^bb6:
  %v116 = sea.const 0 : i1
  sea.assert %v116
  sea.halt
}
