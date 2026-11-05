// Exported from SeaHorn (linked_list_rbegin.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.1" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm60")
  %v1 = sea.mem.nondet "region.0" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm61")
  %v2 = sea.const 32 : i64 loc("_0")
  %v3 = sea.alloca %v2 align 8 [2] : i64 -> !sea.ptr<64> loc("_0")
  %v4 = sea.const 168 : i64 loc("_1")
  %v5 = sea.alloca %v4 align 8 [3] : i64 -> !sea.ptr<64> loc("_1")
  %v6 = sea.const 0 : i8 loc("seahorn/jobs/linked_list_rbegin/aws_linked_list_rbegin_harness.c":9:32)
  %v7 = sea.const 168 : i64 loc("seahorn/jobs/linked_list_rbegin/aws_linked_list_rbegin_harness.c":9:32)
  %v8 = sea.memset %v0[%v5], %v6, %v7 inplace align 8 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs/linked_list_rbegin/aws_linked_list_rbegin_harness.c":9:32)
  %v9 = sea.ptr.index %v3 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_2"("seahorn/lib/linked_list_helper.c":61:14))
  sea.br ^bb1
^bb1:
  %v10 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":61:19)
  %v11 = sea.store %v1[%v9], %v10 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":61:19)
  %v12 = sea.ptr.index %v3 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_4"("seahorn/lib/linked_list_helper.c":62:9))
  sea.br ^bb2
^bb2:
  %v13 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":62:19)
  %v14 = sea.store %v11[%v12], %v13 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":62:19)
  %v15 = sea.nondet "nd_size_t" [4] : i64 loc("_6"("seahorn/lib/linked_list_helper.c":64:19))
  sea.br ^bb3
^bb3:
  %v16 = sea.const 3 : i64 loc("_8"("seahorn/lib/linked_list_helper.c":66:14))
  %v17 = sea.icmp ult, %v15, %v16 : i64 loc("_8"("seahorn/lib/linked_list_helper.c":66:14))
  sea.cond_br %v17, ^bb17, ^bb4 loc("seahorn/lib/linked_list_helper.c":66:7)
^bb4:
  %v18 = sea.const 16 : i64 loc("malloc65.i23")
  %v19 = sea.alloca %v18 align 16 [5] : i64 -> !sea.ptr<64> loc("malloc65.i23")
  %v20 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.assume %v20 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.br ^bb5
^bb5:
  %v21 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":32:14)
  %v22 = sea.store %v14[%v19], %v21 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":32:14)
  %v23 = sea.ptr.index %v19 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_27"("seahorn/lib/linked_list_helper.c":33:9))
  sea.br ^bb6
^bb6:
  %v24 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":33:14)
  %v25 = sea.store %v22[%v23], %v24 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":33:14)
  %v26 = sea.const 16 : i64 loc("malloc66.i24")
  %v27 = sea.alloca %v26 align 16 [6] : i64 -> !sea.ptr<64> loc("malloc66.i24")
  %v28 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.assume %v28 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.br ^bb7
^bb7:
  %v29 = sea.ptr.index %v27 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_29"("seahorn/lib/linked_list_helper.c":33:9))
  sea.br ^bb8
^bb8:
  %v30 = sea.ptr.nondet "nd_linked_list_node" [7] : !sea.ptr<64> loc("_30"("seahorn/lib/linked_list_helper.c":425:19))
  sea.br ^bb9
^bb9:
  %v31 = sea.store %v25[%v3], %v30 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":425:17)
  sea.br ^bb10
^bb10:
  %v32 = sea.ptr.null : !sea.ptr<64> loc("_33"("seahorn/lib/linked_list_helper.c":426:24))
  %v33 = sea.ptr.cmp ne, %v30, %v32 : !sea.ptr<64> loc("_33"("seahorn/lib/linked_list_helper.c":426:24))
  sea.assume %v33 loc("seahorn/lib/linked_list_helper.c":426:5)
  %v34 = sea.ptr.nondet "nd_linked_list_node" [8] : !sea.ptr<64> loc("_34"("seahorn/lib/linked_list_helper.c":427:23))
  sea.br ^bb11
^bb11:
  %v35 = sea.store %v31[%v29], %v34 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":427:21)
  sea.br ^bb12
^bb12:
  %v36 = sea.ptr.null : !sea.ptr<64> loc("_36"("seahorn/lib/linked_list_helper.c":428:28))
  %v37 = sea.ptr.cmp ne, %v34, %v36 : !sea.ptr<64> loc("_36"("seahorn/lib/linked_list_helper.c":428:28))
  sea.assume %v37 loc("seahorn/lib/linked_list_helper.c":428:5)
  sea.br ^bb13
^bb13:
  %v38 = sea.store %v35[%v27], %v19 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  sea.br ^bb14
^bb14:
  %v39 = sea.store %v38[%v23], %v27 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb15
^bb15:
  %v40 = sea.store %v39[%v19], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v41 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_39"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb16
^bb16:
  %v42 = sea.store %v40[%v41], %v19 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb37(%v42, %v27, %v19, %v30 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>)
^bb17:
  sea.br ^bb18
^bb18:
  %v43 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":12:19)
  %v44 = sea.store %v14[%v9], %v43 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":12:19)
  sea.br ^bb19
^bb19:
  %v45 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":13:19)
  %v46 = sea.store %v44[%v12], %v45 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":13:19)
  sea.br ^bb20
^bb20:
  %v47 = sea.const 2 : i64 loc("Pivot")
  %v48 = sea.icmp slt, %v15, %v47 : i64 loc("Pivot")
  sea.cond_br %v48, ^bb28, ^bb21
^bb21:
  %v49 = sea.const 16 : i64 loc("malloc63.i26")
  %v50 = sea.alloca %v49 align 16 [9] : i64 -> !sea.ptr<64> loc("malloc63.i26")
  %v51 = sea.const 16 : i64 loc("malloc64.i27")
  %v52 = sea.alloca %v51 align 16 [10] : i64 -> !sea.ptr<64> loc("malloc64.i27")
  sea.br ^bb22
^bb22:
  %v53 = sea.store %v46[%v3], %v50 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v54 = sea.ptr.index %v50 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_20"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb23
^bb23:
  %v55 = sea.store %v53[%v54], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb24
^bb24:
  %v56 = sea.store %v55[%v50], %v52 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v57 = sea.ptr.index %v52 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_22"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb25
^bb25:
  %v58 = sea.store %v56[%v57], %v50 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb26
^bb26:
  %v59 = sea.store %v58[%v52], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v60 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_24"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb27
^bb27:
  %v61 = sea.store %v59[%v60], %v52 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb37(%v61, %v50, %v52, %v50 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/linked_list_helper.c":27:3)
^bb28:
  %v62 = sea.const 0 : i64 loc("SwitchLeaf")
  %v63 = sea.icmp eq, %v15, %v62 : i64 loc("SwitchLeaf")
  sea.cond_br %v63, ^bb34, ^bb29
^bb29:
  %v64 = sea.const 16 : i64 loc("malloc.i25")
  %v65 = sea.alloca %v64 align 16 [11] : i64 -> !sea.ptr<64> loc("malloc.i25")
  sea.br ^bb30
^bb30:
  %v66 = sea.store %v46[%v3], %v65 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v67 = sea.ptr.index %v65 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_15"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb31
^bb31:
  %v68 = sea.store %v66[%v67], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb32
^bb32:
  %v69 = sea.store %v68[%v65], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v70 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_17"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb33
^bb33:
  %v71 = sea.store %v69[%v70], %v65 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb37(%v71, %v3, %v65, %v65 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/linked_list_helper.c":21:3)
^bb34:
  sea.br ^bb35
^bb35:
  %v72 = sea.store %v46[%v3], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v73 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_12"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb36
^bb36:
  %v74 = sea.store %v72[%v73], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  %v75 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":17:3)
  sea.br ^bb37(%v74, %v75, %v3, %v12 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/linked_list_helper.c":17:3)
^bb37(%v76 : !sea.mem<!sea.ptr<64>, i8>, %v77 : !sea.ptr<64>, %v78 : !sea.ptr<64>, %v79 : !sea.ptr<64>):
  %v80 = sea.ptr.index %v5 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_43"("seahorn/lib/linked_list_helper.c":314:56))
  sea.br ^bb38
^bb38:
  %v81 = sea.store %v8[%v80], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  sea.br ^bb39
^bb39:
  %v82 = sea.ptr.index %v5 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_46"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb40
^bb40:
  %v83 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v84 = sea.store %v81[%v82], %v83 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb41
^bb41:
  %v85 = sea.ptr.index %v5 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_49"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb42
^bb42:
  %v86 = sea.store %v84[%v85], %v79 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v87 = sea.ptr.index %v5 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_50"("seahorn/lib/linked_list_helper.c":315:56))
  sea.br ^bb43
^bb43:
  %v88 = sea.store %v86[%v87], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  sea.br ^bb44
^bb44:
  %v89 = sea.ptr.index %v5 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_53"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb45
^bb45:
  %v90 = sea.store %v88[%v89], %v78 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb46
^bb46:
  %v91 = sea.ptr.index %v5 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_56"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb47
^bb47:
  %v92 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v93 = sea.store %v90[%v91], %v92 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v94 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_57"("seahorn/lib/linked_list_helper.c":317:12))
  sea.br ^bb48
^bb48:
  %v95 = sea.store %v93[%v94], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":317:23)
  %v96 = sea.const 1 : i64 loc("Pivot.i.i")
  %v97 = sea.icmp slt, %v15, %v96 : i64 loc("Pivot.i.i")
  sea.cond_br %v97, ^bb63, ^bb49
^bb49:
  %v98 = sea.const 1 : i64 loc("SwitchLeaf2.i.i")
  %v99 = sea.icmp eq, %v15, %v98 : i64 loc("SwitchLeaf2.i.i")
  sea.cond_br %v99, ^bb50, ^bb64
^bb50:
  %v100 = sea.ptr.index %v5 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_67"("seahorn/lib/linked_list_helper.c":257:50))
  sea.br ^bb51
^bb51:
  %v101 = sea.store %v95[%v100], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  sea.br ^bb52
^bb52:
  %v102 = sea.ptr.index %v5 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_70"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb53
^bb53:
  %v103 = sea.store %v101[%v102], %v78 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb54
^bb54:
  %v104 = sea.ptr.index %v5 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_73"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb55
^bb55:
  %v105 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v106 = sea.store %v103[%v104], %v105 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb56
^bb56:
  %v107 = sea.ptr.index %v5 [] strides [] offset 96 inbounds : !sea.ptr<64> loc("_74"("seahorn/lib/linked_list_helper.c":258:50))
  sea.br ^bb57
^bb57:
  %v108 = sea.store %v106[%v107], %v78 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v109 = sea.ptr.index %v78 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_76"("seahorn/lib/linked_list_helper.c":124:21))
  %v110 = sea.const 8 : i64 loc("_77"("seahorn/lib/linked_list_helper.c":124:21))
  %v111 = sea.ptr.dereferenceable %v109, %v110 : !sea.ptr<64>, i64 loc("_77"("seahorn/lib/linked_list_helper.c":124:21))
  sea.cond_br %v111, ^bb58, ^bb257
^bb58:
  %v112 = sea.ptr.index %v5 [] strides [] offset 104 inbounds : !sea.ptr<64> loc("_79"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb59
^bb59:
  %v113 = sea.store %v108[%v112], %v77 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v114 = sea.const 8 : i64 loc("_81"("seahorn/lib/linked_list_helper.c":125:21))
  %v115 = sea.ptr.dereferenceable %v78, %v114 : !sea.ptr<64>, i64 loc("_81"("seahorn/lib/linked_list_helper.c":125:21))
  sea.cond_br %v115, ^bb60, ^bb257
^bb60:
  %v116 = sea.ptr.index %v5 [] strides [] offset 112 inbounds : !sea.ptr<64> loc("_83"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb61
^bb61:
  %v117 = sea.store %v113[%v116], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb62
^bb62:
  %v118 = sea.const 2 : i64 loc("seahorn/lib/linked_list_helper.c":259:23)
  %v119 = sea.store %v117[%v5], %v118 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":259:23)
  %v120 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":331:5)
  %v121 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":331:5)
  %v122 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":331:5)
  %v123 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":331:5)
  %v124 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":331:5)
  %v125 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":331:5)
  sea.br ^bb91(%v120, %v121, %v122, %v12, %v77, %v78, %v123, %v124, %v125 : !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, i1, i1, i1) loc("seahorn/lib/linked_list_helper.c":331:5)
^bb63:
  %v126 = sea.const 0 : i64 loc("SwitchLeaf.i.i")
  %v127 = sea.icmp eq, %v15, %v126 : i64 loc("SwitchLeaf.i.i")
  sea.cond_br %v127, ^bb84, ^bb64
^bb64:
  %v128 = sea.ptr.index %v5 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_85"("seahorn/lib/linked_list_helper.c":264:50))
  sea.br ^bb65
^bb65:
  %v129 = sea.store %v95[%v128], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  sea.br ^bb66
^bb66:
  %v130 = sea.ptr.index %v5 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_88"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb67
^bb67:
  %v131 = sea.store %v129[%v130], %v78 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb68
^bb68:
  %v132 = sea.ptr.index %v5 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_91"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb69
^bb69:
  %v133 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v134 = sea.store %v131[%v132], %v133 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb70
^bb70:
  %v135 = sea.ptr.index %v5 [] strides [] offset 96 inbounds : !sea.ptr<64> loc("_92"("seahorn/lib/linked_list_helper.c":265:50))
  sea.br ^bb71
^bb71:
  %v136 = sea.store %v134[%v135], %v78 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v137 = sea.ptr.index %v78 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_94"("seahorn/lib/linked_list_helper.c":124:21))
  %v138 = sea.const 8 : i64 loc("_95"("seahorn/lib/linked_list_helper.c":124:21))
  %v139 = sea.ptr.dereferenceable %v137, %v138 : !sea.ptr<64>, i64 loc("_95"("seahorn/lib/linked_list_helper.c":124:21))
  sea.cond_br %v139, ^bb72, ^bb257
^bb72:
  %v140 = sea.ptr.index %v5 [] strides [] offset 104 inbounds : !sea.ptr<64> loc("_97"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb73
^bb73:
  %v141 = sea.store %v136[%v140], %v77 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v142 = sea.const 8 : i64 loc("_99"("seahorn/lib/linked_list_helper.c":125:21))
  %v143 = sea.ptr.dereferenceable %v78, %v142 : !sea.ptr<64>, i64 loc("_99"("seahorn/lib/linked_list_helper.c":125:21))
  sea.cond_br %v143, ^bb74, ^bb257
^bb74:
  %v144 = sea.ptr.index %v5 [] strides [] offset 112 inbounds : !sea.ptr<64> loc("_101"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb75
^bb75:
  %v145 = sea.store %v141[%v144], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb76
^bb76:
  %v146 = sea.const 8 : i64 loc("_102"("seahorn/lib/linked_list_helper.c":246:16))
  %v147 = sea.ptr.dereferenceable %v137, %v146 : !sea.ptr<64>, i64 loc("_102"("seahorn/lib/linked_list_helper.c":246:16))
  sea.cond_br %v147, ^bb77, ^bb257
^bb77:
  %v148 = sea.ptr.index %v5 [] strides [] offset 120 inbounds : !sea.ptr<64> loc("_103"("seahorn/lib/linked_list_helper.c":266:59))
  sea.br ^bb78
^bb78:
  %v149 = sea.store %v145[%v148], %v77 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v150 = sea.ptr.index %v77 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_105"("seahorn/lib/linked_list_helper.c":124:21))
  %v151 = sea.const 8 : i64 loc("_106"("seahorn/lib/linked_list_helper.c":124:21))
  %v152 = sea.ptr.dereferenceable %v150, %v151 : !sea.ptr<64>, i64 loc("_106"("seahorn/lib/linked_list_helper.c":124:21))
  sea.cond_br %v152, ^bb79, ^bb257
^bb79:
  %v153 = sea.load %v76[%v150] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_108"("seahorn/lib/linked_list_helper.c":124:21))
  %v154 = sea.ptr.index %v5 [] strides [] offset 128 inbounds : !sea.ptr<64> loc("_109"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb80
^bb80:
  %v155 = sea.store %v149[%v154], %v153 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v156 = sea.const 8 : i64 loc("_111"("seahorn/lib/linked_list_helper.c":125:21))
  %v157 = sea.ptr.dereferenceable %v77, %v156 : !sea.ptr<64>, i64 loc("_111"("seahorn/lib/linked_list_helper.c":125:21))
  sea.cond_br %v157, ^bb81, ^bb257
^bb81:
  %v158 = sea.load %v76[%v77] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_113"("seahorn/lib/linked_list_helper.c":125:21))
  %v159 = sea.ptr.index %v5 [] strides [] offset 136 inbounds : !sea.ptr<64> loc("_114"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb82
^bb82:
  %v160 = sea.store %v155[%v159], %v158 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb83
^bb83:
  %v161 = sea.const 3 : i64 loc("seahorn/lib/linked_list_helper.c":267:23)
  %v162 = sea.store %v160[%v5], %v161 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":267:23)
  %v163 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":343:5)
  %v164 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":343:5)
  %v165 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":343:5)
  sea.br ^bb91(%v158, %v153, %v77, %v12, %v77, %v78, %v163, %v164, %v165 : !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, i1, i1, i1) loc("seahorn/lib/linked_list_helper.c":343:5)
^bb84:
  %v166 = sea.ptr.index %v5 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_59"("seahorn/lib/linked_list_helper.c":251:50))
  sea.br ^bb85
^bb85:
  %v167 = sea.store %v95[%v166], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  sea.br ^bb86
^bb86:
  %v168 = sea.ptr.index %v5 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_62"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb87
^bb87:
  %v169 = sea.store %v167[%v168], %v78 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb88
^bb88:
  %v170 = sea.ptr.index %v5 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_65"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb89
^bb89:
  %v171 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v172 = sea.store %v169[%v170], %v171 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb90
^bb90:
  %v173 = sea.const 1 : i64 loc("seahorn/lib/linked_list_helper.c":252:23)
  %v174 = sea.store %v172[%v5], %v173 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":252:23)
  %v175 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":324:5)
  %v176 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":324:5)
  %v177 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":324:5)
  %v178 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":324:5)
  %v179 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":324:5)
  %v180 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":324:5)
  %v181 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":324:5)
  %v182 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":324:5)
  %v183 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":324:5)
  sea.br ^bb91(%v175, %v176, %v177, %v178, %v179, %v180, %v181, %v182, %v183 : !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, i1, i1, i1) loc("seahorn/lib/linked_list_helper.c":324:5)
^bb91(%v184 : !sea.ptr<64>, %v185 : !sea.ptr<64>, %v186 : !sea.ptr<64>, %v187 : !sea.ptr<64>, %v188 : !sea.ptr<64>, %v189 : !sea.ptr<64>, %v190 : i1, %v191 : i1, %v192 : i1):
  sea.br ^bb92
^bb92:
  %v193 = sea.const 8 : i64 loc("_125"("aws-c-common/include/aws/common/linked_list.inl":57:26))
  %v194 = sea.ptr.dereferenceable %v78, %v193 : !sea.ptr<64>, i64 loc("_125"("aws-c-common/include/aws/common/linked_list.inl":57:26))
  sea.cond_br %v194, ^bb93, ^bb257
^bb93:
  %v195 = sea.const 8 : i64 loc("_127"("aws-c-common/include/aws/common/linked_list.inl":57:40))
  %v196 = sea.ptr.dereferenceable %v78, %v195 : !sea.ptr<64>, i64 loc("_127"("aws-c-common/include/aws/common/linked_list.inl":57:40))
  sea.cond_br %v196, ^bb94, ^bb257
^bb94:
  sea.br ^bb95
^bb95:
  %v197 = sea.const 8 : i64 loc("_130"("aws-c-common/include/aws/common/linked_list.inl":57:26))
  %v198 = sea.ptr.dereferenceable %v78, %v197 : !sea.ptr<64>, i64 loc("_130"("aws-c-common/include/aws/common/linked_list.inl":57:26))
  sea.cond_br %v198, ^bb96, ^bb257
^bb96:
  %v199 = sea.const 8 : i64 loc("_132"("aws-c-common/include/aws/common/linked_list.inl":57:40))
  %v200 = sea.ptr.dereferenceable %v78, %v199 : !sea.ptr<64>, i64 loc("_132"("aws-c-common/include/aws/common/linked_list.inl":57:40))
  sea.cond_br %v200, ^bb97, ^bb257
^bb97:
  sea.br ^bb98
^bb98:
  %v201 = sea.const 0 : i64 loc("_134"("seahorn/jobs/linked_list_rbegin/aws_linked_list_rbegin_harness.c":19:3))
  %v202 = sea.icmp ne, %v15, %v201 : i64 loc("_134"("seahorn/jobs/linked_list_rbegin/aws_linked_list_rbegin_harness.c":19:3))
  %v203 = sea.ptr.cmp eq, %v78, %v3 : !sea.ptr<64> loc("_135"("seahorn/jobs/linked_list_rbegin/aws_linked_list_rbegin_harness.c":19:3))
  %v204 = sea.or %v202, %v203 : i1 loc("_136"("seahorn/jobs/linked_list_rbegin/aws_linked_list_rbegin_harness.c":19:3))
  sea.cond_br %v204, ^bb99, ^bb257 loc("seahorn/jobs/linked_list_rbegin/aws_linked_list_rbegin_harness.c":19:3)
^bb99:
  sea.cond_br %v203, ^bb109, ^bb100 loc("seahorn/jobs/linked_list_rbegin/aws_linked_list_rbegin_harness.c":20:3)
^bb100:
  %v205 = sea.ptr.index %v78 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_139"("aws-c-common/include/aws/common/linked_list.inl":66:26))
  %v206 = sea.const 8 : i64 loc("_140"("aws-c-common/include/aws/common/linked_list.inl":66:26))
  %v207 = sea.ptr.dereferenceable %v205, %v206 : !sea.ptr<64>, i64 loc("_140"("aws-c-common/include/aws/common/linked_list.inl":66:26))
  sea.cond_br %v207, ^bb101, ^bb257
^bb101:
  %v208 = sea.ptr.null : !sea.ptr<64> loc(".not1.i8.i"("aws-c-common/include/aws/common/linked_list.inl":66:20))
  %v209 = sea.ptr.cmp ne, %v77, %v208 : !sea.ptr<64> loc(".not1.i8.i"("aws-c-common/include/aws/common/linked_list.inl":66:20))
  %v210 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/linked_list.inl":66:31)
  sea.cond_br %v209, ^bb102, ^bb105(%v210 : i1) loc("aws-c-common/include/aws/common/linked_list.inl":66:31)
^bb102:
  %v211 = sea.const 8 : i64 loc("_143"("aws-c-common/include/aws/common/linked_list.inl":66:40))
  %v212 = sea.ptr.dereferenceable %v205, %v211 : !sea.ptr<64>, i64 loc("_143"("aws-c-common/include/aws/common/linked_list.inl":66:40))
  sea.cond_br %v212, ^bb103, ^bb257
^bb103:
  %v213 = sea.const 8 : i64 loc("_145"("aws-c-common/include/aws/common/linked_list.inl":66:46))
  %v214 = sea.ptr.dereferenceable %v77, %v213 : !sea.ptr<64>, i64 loc("_145"("aws-c-common/include/aws/common/linked_list.inl":66:46))
  sea.cond_br %v214, ^bb104, ^bb257
^bb104:
  %v215 = sea.load %v76[%v77] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_147"("aws-c-common/include/aws/common/linked_list.inl":66:46))
  %v216 = sea.ptr.cmp eq, %v215, %v78 : !sea.ptr<64> loc("_148"("aws-c-common/include/aws/common/linked_list.inl":66:51))
  sea.br ^bb105(%v216 : i1)
^bb105(%v217 : i1):
  %v218 = sea.const 8 : i64 loc("_150"("aws-c-common/include/aws/common/linked_list.inl":66:26))
  %v219 = sea.ptr.dereferenceable %v205, %v218 : !sea.ptr<64>, i64 loc("_150"("aws-c-common/include/aws/common/linked_list.inl":66:26))
  %v220 = sea.and %v209, %v219 : i1 loc("brmerge.not")
  sea.cond_br %v220, ^bb106, ^bb257
^bb106:
  %v221 = sea.const 8 : i64 loc("_152"("aws-c-common/include/aws/common/linked_list.inl":66:40))
  %v222 = sea.ptr.dereferenceable %v205, %v221 : !sea.ptr<64>, i64 loc("_152"("aws-c-common/include/aws/common/linked_list.inl":66:40))
  sea.cond_br %v222, ^bb107, ^bb257
^bb107:
  %v223 = sea.const 8 : i64 loc("_154"("aws-c-common/include/aws/common/linked_list.inl":66:46))
  %v224 = sea.ptr.dereferenceable %v77, %v223 : !sea.ptr<64>, i64 loc("_154"("aws-c-common/include/aws/common/linked_list.inl":66:46))
  sea.cond_br %v224, ^bb108, ^bb257
^bb108:
  %v225 = sea.load %v76[%v77] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_155"("aws-c-common/include/aws/common/linked_list.inl":66:46))
  %v226 = sea.ptr.cmp eq, %v225, %v78 : !sea.ptr<64> loc("_156"("aws-c-common/include/aws/common/linked_list.inl":66:51))
  sea.cond_br %v226, ^bb110, ^bb257 loc("seahorn/jobs/linked_list_rbegin/aws_linked_list_rbegin_harness.c":20:3)
^bb109:
  sea.br ^bb110
^bb110:
  sea.br ^bb111
^bb111:
  sea.br ^bb112
^bb112:
  sea.cond_br %v190, ^bb171, ^bb113 loc("seahorn/lib/linked_list_helper.c":167:14)
^bb113:
  sea.br ^bb114
^bb114:
  sea.cond_br %v191, ^bb150, ^bb115 loc("seahorn/lib/linked_list_helper.c":172:14)
^bb115:
  sea.br ^bb116
^bb116:
  %v227 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":178:14)
  sea.cond_br %v192, ^bb117, ^bb181(%v227 : i1) loc("seahorn/lib/linked_list_helper.c":178:14)
^bb117:
  sea.br ^bb118
^bb118:
  sea.br ^bb119
^bb119:
  sea.br ^bb120
^bb120:
  sea.br ^bb121
^bb121:
  sea.br ^bb122
^bb122:
  sea.br ^bb123
^bb123:
  sea.br ^bb124
^bb124:
  %v228 = sea.ptr.cmp eq, %v189, %v78 : !sea.ptr<64> loc("_201"("seahorn/lib/linked_list_helper.c":108:15))
  %v229 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v228, ^bb125, ^bb181(%v229 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb125:
  %v230 = sea.ptr.index %v78 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_203"("seahorn/lib/linked_list_helper.c":108:39))
  %v231 = sea.const 8 : i64 loc("_204"("seahorn/lib/linked_list_helper.c":108:39))
  %v232 = sea.ptr.dereferenceable %v230, %v231 : !sea.ptr<64>, i64 loc("_204"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v232, ^bb126, ^bb257
^bb126:
  sea.br ^bb127
^bb127:
  %v233 = sea.ptr.cmp eq, %v77, %v188 : !sea.ptr<64> loc("_206"("seahorn/lib/linked_list_helper.c":108:44))
  %v234 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v233, ^bb128, ^bb181(%v234 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb128:
  sea.br ^bb129
^bb129:
  %v235 = sea.const 8 : i64 loc("_209"("seahorn/lib/linked_list_helper.c":113:39))
  %v236 = sea.ptr.dereferenceable %v78, %v235 : !sea.ptr<64>, i64 loc("_209"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v236, ^bb130, ^bb257
^bb130:
  sea.br ^bb131
^bb131:
  %v237 = sea.ptr.cmp eq, %v12, %v187 : !sea.ptr<64> loc("_211"("seahorn/lib/linked_list_helper.c":113:44))
  %v238 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":182:67)
  sea.cond_br %v237, ^bb132, ^bb181(%v238 : i1) loc("seahorn/lib/linked_list_helper.c":182:67)
^bb132:
  sea.br ^bb133
^bb133:
  sea.br ^bb134
^bb134:
  %v239 = sea.const 8 : i64 loc("_215"("seahorn/lib/linked_list_helper.c":183:49))
  %v240 = sea.ptr.dereferenceable %v230, %v239 : !sea.ptr<64>, i64 loc("_215"("seahorn/lib/linked_list_helper.c":183:49))
  sea.cond_br %v240, ^bb135, ^bb257
^bb135:
  sea.br ^bb136
^bb136:
  %v241 = sea.ptr.cmp eq, %v186, %v77 : !sea.ptr<64> loc("_218"("seahorn/lib/linked_list_helper.c":108:15))
  %v242 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v241, ^bb137, ^bb181(%v242 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb137:
  %v243 = sea.ptr.index %v77 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_220"("seahorn/lib/linked_list_helper.c":108:39))
  %v244 = sea.const 8 : i64 loc("_221"("seahorn/lib/linked_list_helper.c":108:39))
  %v245 = sea.ptr.dereferenceable %v243, %v244 : !sea.ptr<64>, i64 loc("_221"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v245, ^bb138, ^bb257
^bb138:
  %v246 = sea.load %v76[%v243] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_223"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb139
^bb139:
  %v247 = sea.ptr.cmp eq, %v246, %v185 : !sea.ptr<64> loc("_224"("seahorn/lib/linked_list_helper.c":108:44))
  %v248 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v247, ^bb140, ^bb181(%v248 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb140:
  sea.br ^bb141
^bb141:
  %v249 = sea.const 8 : i64 loc("_227"("seahorn/lib/linked_list_helper.c":113:39))
  %v250 = sea.ptr.dereferenceable %v77, %v249 : !sea.ptr<64>, i64 loc("_227"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v250, ^bb142, ^bb257
^bb142:
  %v251 = sea.load %v76[%v77] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_229"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb143
^bb143:
  %v252 = sea.ptr.cmp eq, %v251, %v184 : !sea.ptr<64> loc("_230"("seahorn/lib/linked_list_helper.c":113:44))
  %v253 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":183:73)
  sea.cond_br %v252, ^bb144, ^bb181(%v253 : i1) loc("seahorn/lib/linked_list_helper.c":183:73)
^bb144:
  sea.br ^bb145
^bb145:
  sea.br ^bb146
^bb146:
  sea.br ^bb147
^bb147:
  sea.br ^bb148
^bb148:
  sea.br ^bb149
^bb149:
  %v254 = sea.const 1 : i1
  sea.br ^bb181(%v254 : i1)
^bb150:
  sea.br ^bb151
^bb151:
  sea.br ^bb152
^bb152:
  sea.br ^bb153
^bb153:
  sea.br ^bb154
^bb154:
  sea.br ^bb155
^bb155:
  sea.br ^bb156
^bb156:
  sea.br ^bb157
^bb157:
  %v255 = sea.ptr.cmp eq, %v189, %v78 : !sea.ptr<64> loc("_176"("seahorn/lib/linked_list_helper.c":108:15))
  %v256 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v255, ^bb158, ^bb181(%v256 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb158:
  %v257 = sea.ptr.index %v78 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_178"("seahorn/lib/linked_list_helper.c":108:39))
  %v258 = sea.const 8 : i64 loc("_179"("seahorn/lib/linked_list_helper.c":108:39))
  %v259 = sea.ptr.dereferenceable %v257, %v258 : !sea.ptr<64>, i64 loc("_179"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v259, ^bb159, ^bb257
^bb159:
  sea.br ^bb160
^bb160:
  %v260 = sea.ptr.cmp eq, %v77, %v188 : !sea.ptr<64> loc("_181"("seahorn/lib/linked_list_helper.c":108:44))
  %v261 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v260, ^bb161, ^bb181(%v261 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb161:
  sea.br ^bb162
^bb162:
  %v262 = sea.const 8 : i64 loc("_184"("seahorn/lib/linked_list_helper.c":113:39))
  %v263 = sea.ptr.dereferenceable %v78, %v262 : !sea.ptr<64>, i64 loc("_184"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v263, ^bb163, ^bb257
^bb163:
  sea.br ^bb164
^bb164:
  %v264 = sea.ptr.cmp eq, %v12, %v187 : !sea.ptr<64> loc("_186"("seahorn/lib/linked_list_helper.c":113:44))
  %v265 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":175:67)
  sea.cond_br %v264, ^bb165, ^bb181(%v265 : i1) loc("seahorn/lib/linked_list_helper.c":175:67)
^bb165:
  sea.br ^bb166
^bb166:
  sea.br ^bb167
^bb167:
  sea.br ^bb168
^bb168:
  sea.br ^bb169
^bb169:
  sea.br ^bb170
^bb170:
  %v266 = sea.const 1 : i1
  sea.br ^bb181(%v266 : i1)
^bb171:
  sea.br ^bb172
^bb172:
  sea.br ^bb173
^bb173:
  sea.br ^bb174
^bb174:
  sea.br ^bb175
^bb175:
  sea.br ^bb176
^bb176:
  sea.br ^bb177
^bb177:
  sea.br ^bb178
^bb178:
  sea.br ^bb179
^bb179:
  sea.br ^bb180
^bb180:
  %v267 = sea.const 1 : i1
  sea.br ^bb181(%v267 : i1)
^bb181(%v268 : i1):
  sea.br ^bb182
^bb182:
  sea.br ^bb183
^bb183:
  sea.cond_br %v190, ^bb245, ^bb184 loc("seahorn/lib/linked_list_helper.c":167:14)
^bb184:
  sea.br ^bb185
^bb185:
  sea.cond_br %v191, ^bb223, ^bb186 loc("seahorn/lib/linked_list_helper.c":172:14)
^bb186:
  sea.br ^bb187
^bb187:
  %v269 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":178:14)
  sea.cond_br %v192, ^bb188, ^bb256(%v269 : i1) loc("seahorn/lib/linked_list_helper.c":178:14)
^bb188:
  sea.br ^bb189
^bb189:
  sea.br ^bb190
^bb190:
  sea.br ^bb191
^bb191:
  sea.br ^bb192
^bb192:
  sea.br ^bb193
^bb193:
  sea.br ^bb194
^bb194:
  sea.br ^bb195
^bb195:
  %v270 = sea.ptr.cmp eq, %v189, %v78 : !sea.ptr<64> loc("_286"("seahorn/lib/linked_list_helper.c":108:15))
  %v271 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v270, ^bb196, ^bb256(%v271 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb196:
  %v272 = sea.ptr.index %v78 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_288"("seahorn/lib/linked_list_helper.c":108:39))
  %v273 = sea.const 8 : i64 loc("_289"("seahorn/lib/linked_list_helper.c":108:39))
  %v274 = sea.ptr.dereferenceable %v272, %v273 : !sea.ptr<64>, i64 loc("_289"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v274, ^bb197, ^bb257
^bb197:
  sea.br ^bb198
^bb198:
  %v275 = sea.ptr.cmp eq, %v77, %v188 : !sea.ptr<64> loc("_291"("seahorn/lib/linked_list_helper.c":108:44))
  %v276 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v275, ^bb199, ^bb256(%v276 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb199:
  sea.br ^bb200
^bb200:
  %v277 = sea.const 8 : i64 loc("_294"("seahorn/lib/linked_list_helper.c":113:39))
  %v278 = sea.ptr.dereferenceable %v78, %v277 : !sea.ptr<64>, i64 loc("_294"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v278, ^bb201, ^bb257
^bb201:
  sea.br ^bb202
^bb202:
  %v279 = sea.ptr.cmp eq, %v12, %v187 : !sea.ptr<64> loc("_296"("seahorn/lib/linked_list_helper.c":113:44))
  %v280 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":182:67)
  sea.cond_br %v279, ^bb203, ^bb256(%v280 : i1) loc("seahorn/lib/linked_list_helper.c":182:67)
^bb203:
  sea.br ^bb204
^bb204:
  sea.br ^bb205
^bb205:
  %v281 = sea.const 8 : i64 loc("_300"("seahorn/lib/linked_list_helper.c":183:49))
  %v282 = sea.ptr.dereferenceable %v272, %v281 : !sea.ptr<64>, i64 loc("_300"("seahorn/lib/linked_list_helper.c":183:49))
  sea.cond_br %v282, ^bb206, ^bb257
^bb206:
  sea.br ^bb207
^bb207:
  %v283 = sea.ptr.cmp eq, %v186, %v77 : !sea.ptr<64> loc("_303"("seahorn/lib/linked_list_helper.c":108:15))
  %v284 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v283, ^bb208, ^bb256(%v284 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb208:
  %v285 = sea.ptr.index %v77 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_305"("seahorn/lib/linked_list_helper.c":108:39))
  %v286 = sea.const 8 : i64 loc("_306"("seahorn/lib/linked_list_helper.c":108:39))
  %v287 = sea.ptr.dereferenceable %v285, %v286 : !sea.ptr<64>, i64 loc("_306"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v287, ^bb209, ^bb257
^bb209:
  %v288 = sea.load %v76[%v285] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_308"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb210
^bb210:
  %v289 = sea.ptr.cmp eq, %v288, %v185 : !sea.ptr<64> loc("_309"("seahorn/lib/linked_list_helper.c":108:44))
  %v290 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v289, ^bb211, ^bb256(%v290 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb211:
  sea.br ^bb212
^bb212:
  %v291 = sea.const 8 : i64 loc("_312"("seahorn/lib/linked_list_helper.c":113:39))
  %v292 = sea.ptr.dereferenceable %v77, %v291 : !sea.ptr<64>, i64 loc("_312"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v292, ^bb213, ^bb257
^bb213:
  %v293 = sea.load %v76[%v77] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_314"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb214
^bb214:
  %v294 = sea.ptr.cmp eq, %v293, %v184 : !sea.ptr<64> loc("_315"("seahorn/lib/linked_list_helper.c":113:44))
  %v295 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":183:73)
  sea.cond_br %v294, ^bb215, ^bb256(%v295 : i1) loc("seahorn/lib/linked_list_helper.c":183:73)
^bb215:
  sea.br ^bb216
^bb216:
  sea.br ^bb217
^bb217:
  %v296 = sea.load %v76[%v9] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_319"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb218
^bb218:
  %v297 = sea.ptr.null : !sea.ptr<64> loc("_320"("seahorn/lib/linked_list_helper.c":108:44))
  %v298 = sea.ptr.cmp eq, %v296, %v297 : !sea.ptr<64> loc("_320"("seahorn/lib/linked_list_helper.c":108:44))
  %v299 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v298, ^bb219, ^bb256(%v299 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb219:
  sea.br ^bb220
^bb220:
  sea.br ^bb221
^bb221:
  %v300 = sea.load %v76[%v3] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_324"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb222
^bb222:
  %v301 = sea.ptr.cmp eq, %v300, %v79 : !sea.ptr<64> loc("_326"("seahorn/lib/linked_list_helper.c":113:44))
  sea.br ^bb256(%v301 : i1)
^bb223:
  sea.br ^bb224
^bb224:
  sea.br ^bb225
^bb225:
  sea.br ^bb226
^bb226:
  sea.br ^bb227
^bb227:
  sea.br ^bb228
^bb228:
  sea.br ^bb229
^bb229:
  sea.br ^bb230
^bb230:
  %v302 = sea.ptr.cmp eq, %v189, %v78 : !sea.ptr<64> loc("_258"("seahorn/lib/linked_list_helper.c":108:15))
  %v303 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v302, ^bb231, ^bb256(%v303 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb231:
  %v304 = sea.ptr.index %v78 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_260"("seahorn/lib/linked_list_helper.c":108:39))
  %v305 = sea.const 8 : i64 loc("_261"("seahorn/lib/linked_list_helper.c":108:39))
  %v306 = sea.ptr.dereferenceable %v304, %v305 : !sea.ptr<64>, i64 loc("_261"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v306, ^bb232, ^bb257
^bb232:
  sea.br ^bb233
^bb233:
  %v307 = sea.ptr.cmp eq, %v77, %v188 : !sea.ptr<64> loc("_263"("seahorn/lib/linked_list_helper.c":108:44))
  %v308 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v307, ^bb234, ^bb256(%v308 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb234:
  sea.br ^bb235
^bb235:
  %v309 = sea.const 8 : i64 loc("_266"("seahorn/lib/linked_list_helper.c":113:39))
  %v310 = sea.ptr.dereferenceable %v78, %v309 : !sea.ptr<64>, i64 loc("_266"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v310, ^bb236, ^bb257
^bb236:
  sea.br ^bb237
^bb237:
  %v311 = sea.ptr.cmp eq, %v12, %v187 : !sea.ptr<64> loc("_268"("seahorn/lib/linked_list_helper.c":113:44))
  %v312 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":175:67)
  sea.cond_br %v311, ^bb238, ^bb256(%v312 : i1) loc("seahorn/lib/linked_list_helper.c":175:67)
^bb238:
  sea.br ^bb239
^bb239:
  sea.br ^bb240
^bb240:
  %v313 = sea.load %v76[%v9] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_272"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb241
^bb241:
  %v314 = sea.ptr.null : !sea.ptr<64> loc("_273"("seahorn/lib/linked_list_helper.c":108:44))
  %v315 = sea.ptr.cmp eq, %v313, %v314 : !sea.ptr<64> loc("_273"("seahorn/lib/linked_list_helper.c":108:44))
  %v316 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v315, ^bb242, ^bb256(%v316 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb242:
  sea.br ^bb243
^bb243:
  sea.br ^bb244
^bb244:
  %v317 = sea.const 1 : i1
  sea.br ^bb256(%v317 : i1)
^bb245:
  sea.br ^bb246
^bb246:
  sea.br ^bb247
^bb247:
  sea.br ^bb248
^bb248:
  sea.br ^bb249
^bb249:
  sea.br ^bb250
^bb250:
  sea.br ^bb251
^bb251:
  %v318 = sea.load %v76[%v9] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_244"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb252
^bb252:
  %v319 = sea.ptr.null : !sea.ptr<64> loc("_245"("seahorn/lib/linked_list_helper.c":108:44))
  %v320 = sea.ptr.cmp eq, %v318, %v319 : !sea.ptr<64> loc("_245"("seahorn/lib/linked_list_helper.c":108:44))
  %v321 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v320, ^bb253, ^bb256(%v321 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb253:
  sea.br ^bb254
^bb254:
  sea.br ^bb255
^bb255:
  %v322 = sea.const 1 : i1
  sea.br ^bb256(%v322 : i1)
^bb256(%v323 : i1):
  %v324 = sea.const 1 : i1 loc("seahorn/jobs/linked_list_rbegin/aws_linked_list_rbegin_harness.c":21:3)
  %v325 = sea.xor %v323, %v324 : i1 loc("seahorn/jobs/linked_list_rbegin/aws_linked_list_rbegin_harness.c":21:3)
  sea.assume %v325 loc("seahorn/jobs/linked_list_rbegin/aws_linked_list_rbegin_harness.c":21:3)
  sea.br ^bb257 loc("seahorn/jobs/linked_list_rbegin/aws_linked_list_rbegin_harness.c":21:3)
^bb257:
  sea.br ^bb258
^bb258:
  %v326 = sea.const 0 : i1
  sea.assert %v326
  sea.halt
}
