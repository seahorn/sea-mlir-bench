// Exported from SeaHorn (linked_list_rend.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.1" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm58")
  %v1 = sea.mem.nondet "region.0" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm59")
  %v2 = sea.const 32 : i64 loc("_0")
  %v3 = sea.alloca %v2 align 8 [2] : i64 -> !sea.ptr<64> loc("_0")
  %v4 = sea.const 168 : i64 loc("_1")
  %v5 = sea.alloca %v4 align 8 [3] : i64 -> !sea.ptr<64> loc("_1")
  %v6 = sea.const 0 : i8 loc("seahorn/jobs/linked_list_rend/aws_linked_list_rend_harness.c":9:32)
  %v7 = sea.const 168 : i64 loc("seahorn/jobs/linked_list_rend/aws_linked_list_rend_harness.c":9:32)
  %v8 = sea.memset %v0[%v5], %v6, %v7 inplace align 8 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs/linked_list_rend/aws_linked_list_rend_harness.c":9:32)
  %v9 = sea.ptr.index %v3 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_2"("seahorn/lib/linked_list_helper.c":38:14))
  sea.br ^bb1
^bb1:
  %v10 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":38:19)
  %v11 = sea.store %v1[%v9], %v10 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":38:19)
  %v12 = sea.ptr.index %v3 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_4"("seahorn/lib/linked_list_helper.c":39:9))
  sea.br ^bb2
^bb2:
  %v13 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":39:19)
  %v14 = sea.store %v11[%v12], %v13 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":39:19)
  %v15 = sea.nondet "nd_size_t" [4] : i64 loc("_6"("seahorn/lib/linked_list_helper.c":41:19))
  sea.br ^bb3
^bb3:
  %v16 = sea.const 3 : i64 loc("_8"("seahorn/lib/linked_list_helper.c":43:14))
  %v17 = sea.icmp ult, %v15, %v16 : i64 loc("_8"("seahorn/lib/linked_list_helper.c":43:14))
  sea.cond_br %v17, ^bb17, ^bb4 loc("seahorn/lib/linked_list_helper.c":43:7)
^bb4:
  %v18 = sea.const 16 : i64 loc("malloc75.i34")
  %v19 = sea.alloca %v18 align 16 [5] : i64 -> !sea.ptr<64> loc("malloc75.i34")
  %v20 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.assume %v20 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.br ^bb5
^bb5:
  %v21 = sea.ptr.index %v19 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_27"("seahorn/lib/linked_list_helper.c":33:9))
  sea.br ^bb6
^bb6:
  %v22 = sea.const 16 : i64 loc("malloc76.i35")
  %v23 = sea.alloca %v22 align 16 [6] : i64 -> !sea.ptr<64> loc("malloc76.i35")
  %v24 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.assume %v24 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.br ^bb7
^bb7:
  %v25 = sea.ptr.index %v23 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_29"("seahorn/lib/linked_list_helper.c":33:9))
  sea.br ^bb8
^bb8:
  sea.br ^bb9
^bb9:
  %v26 = sea.store %v14[%v3], %v19 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  sea.br ^bb10
^bb10:
  %v27 = sea.store %v26[%v21], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb11
^bb11:
  %v28 = sea.store %v27[%v19], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  sea.br ^bb12
^bb12:
  %v29 = sea.store %v28[%v25], %v19 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  %v30 = sea.ptr.nondet "nd_linked_list_node" [7] : !sea.ptr<64> loc("_32"("seahorn/lib/linked_list_helper.c":425:19))
  sea.br ^bb13
^bb13:
  %v31 = sea.store %v29[%v23], %v30 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":425:17)
  sea.br ^bb14
^bb14:
  %v32 = sea.ptr.null : !sea.ptr<64> loc("_35"("seahorn/lib/linked_list_helper.c":426:24))
  %v33 = sea.ptr.cmp ne, %v30, %v32 : !sea.ptr<64> loc("_35"("seahorn/lib/linked_list_helper.c":426:24))
  sea.assume %v33 loc("seahorn/lib/linked_list_helper.c":426:5)
  %v34 = sea.ptr.nondet "nd_linked_list_node" [8] : !sea.ptr<64> loc("_36"("seahorn/lib/linked_list_helper.c":427:23))
  %v35 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_37"("seahorn/lib/linked_list_helper.c":427:16))
  sea.br ^bb15
^bb15:
  %v36 = sea.store %v31[%v35], %v34 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":427:21)
  sea.br ^bb16
^bb16:
  %v37 = sea.ptr.null : !sea.ptr<64> loc("_39"("seahorn/lib/linked_list_helper.c":428:28))
  %v38 = sea.ptr.cmp ne, %v34, %v37 : !sea.ptr<64> loc("_39"("seahorn/lib/linked_list_helper.c":428:28))
  sea.assume %v38 loc("seahorn/lib/linked_list_helper.c":428:5)
  sea.br ^bb37(%v36, %v23, %v34, %v19 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>)
^bb17:
  sea.br ^bb18
^bb18:
  %v39 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":12:19)
  %v40 = sea.store %v14[%v9], %v39 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":12:19)
  sea.br ^bb19
^bb19:
  %v41 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":13:19)
  %v42 = sea.store %v40[%v12], %v41 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":13:19)
  sea.br ^bb20
^bb20:
  %v43 = sea.const 2 : i64 loc("Pivot")
  %v44 = sea.icmp slt, %v15, %v43 : i64 loc("Pivot")
  sea.cond_br %v44, ^bb28, ^bb21
^bb21:
  %v45 = sea.const 16 : i64 loc("malloc73.i37")
  %v46 = sea.alloca %v45 align 16 [9] : i64 -> !sea.ptr<64> loc("malloc73.i37")
  %v47 = sea.const 16 : i64 loc("malloc74.i38")
  %v48 = sea.alloca %v47 align 16 [10] : i64 -> !sea.ptr<64> loc("malloc74.i38")
  sea.br ^bb22
^bb22:
  %v49 = sea.store %v42[%v3], %v46 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v50 = sea.ptr.index %v46 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_20"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb23
^bb23:
  %v51 = sea.store %v49[%v50], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb24
^bb24:
  %v52 = sea.store %v51[%v46], %v48 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v53 = sea.ptr.index %v48 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_22"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb25
^bb25:
  %v54 = sea.store %v52[%v53], %v46 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb26
^bb26:
  %v55 = sea.store %v54[%v48], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v56 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_24"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb27
^bb27:
  %v57 = sea.store %v55[%v56], %v48 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb37(%v57, %v48, %v48, %v46 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/linked_list_helper.c":27:3)
^bb28:
  %v58 = sea.const 0 : i64 loc("SwitchLeaf")
  %v59 = sea.icmp eq, %v15, %v58 : i64 loc("SwitchLeaf")
  sea.cond_br %v59, ^bb34, ^bb29
^bb29:
  %v60 = sea.const 16 : i64 loc("malloc.i36")
  %v61 = sea.alloca %v60 align 16 [11] : i64 -> !sea.ptr<64> loc("malloc.i36")
  sea.br ^bb30
^bb30:
  %v62 = sea.store %v42[%v3], %v61 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v63 = sea.ptr.index %v61 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_15"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb31
^bb31:
  %v64 = sea.store %v62[%v63], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb32
^bb32:
  %v65 = sea.store %v64[%v61], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v66 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_17"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb33
^bb33:
  %v67 = sea.store %v65[%v66], %v61 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb37(%v67, %v12, %v61, %v61 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/linked_list_helper.c":21:3)
^bb34:
  sea.br ^bb35
^bb35:
  %v68 = sea.store %v42[%v3], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v69 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_12"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb36
^bb36:
  %v70 = sea.store %v68[%v69], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  %v71 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":17:3)
  sea.br ^bb37(%v70, %v71, %v3, %v12 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/linked_list_helper.c":17:3)
^bb37(%v72 : !sea.mem<!sea.ptr<64>, i8>, %v73 : !sea.ptr<64>, %v74 : !sea.ptr<64>, %v75 : !sea.ptr<64>):
  %v76 = sea.ptr.index %v5 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_43"("seahorn/lib/linked_list_helper.c":272:56))
  sea.br ^bb38
^bb38:
  %v77 = sea.store %v8[%v76], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  sea.br ^bb39
^bb39:
  %v78 = sea.ptr.index %v5 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_46"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb40
^bb40:
  %v79 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v80 = sea.store %v77[%v78], %v79 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb41
^bb41:
  %v81 = sea.ptr.index %v5 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_49"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb42
^bb42:
  %v82 = sea.store %v80[%v81], %v75 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v83 = sea.ptr.index %v5 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_50"("seahorn/lib/linked_list_helper.c":273:56))
  sea.br ^bb43
^bb43:
  %v84 = sea.store %v82[%v83], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  sea.br ^bb44
^bb44:
  %v85 = sea.ptr.index %v5 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_53"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb45
^bb45:
  %v86 = sea.store %v84[%v85], %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb46
^bb46:
  %v87 = sea.ptr.index %v5 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_56"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb47
^bb47:
  %v88 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v89 = sea.store %v86[%v87], %v88 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v90 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_57"("seahorn/lib/linked_list_helper.c":275:12))
  sea.br ^bb48
^bb48:
  %v91 = sea.store %v89[%v90], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":275:23)
  %v92 = sea.const 1 : i64 loc("Pivot.i.i")
  %v93 = sea.icmp slt, %v15, %v92 : i64 loc("Pivot.i.i")
  sea.cond_br %v93, ^bb63, ^bb49
^bb49:
  %v94 = sea.const 1 : i64 loc("SwitchLeaf2.i.i")
  %v95 = sea.icmp eq, %v15, %v94 : i64 loc("SwitchLeaf2.i.i")
  sea.cond_br %v95, ^bb50, ^bb64
^bb50:
  %v96 = sea.ptr.index %v5 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_67"("seahorn/lib/linked_list_helper.c":257:50))
  sea.br ^bb51
^bb51:
  %v97 = sea.store %v91[%v96], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  sea.br ^bb52
^bb52:
  %v98 = sea.ptr.index %v5 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_70"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb53
^bb53:
  %v99 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v100 = sea.store %v97[%v98], %v99 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb54
^bb54:
  %v101 = sea.ptr.index %v5 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_73"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb55
^bb55:
  %v102 = sea.store %v100[%v101], %v75 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb56
^bb56:
  %v103 = sea.ptr.index %v5 [] strides [] offset 96 inbounds : !sea.ptr<64> loc("_74"("seahorn/lib/linked_list_helper.c":258:50))
  sea.br ^bb57
^bb57:
  %v104 = sea.store %v102[%v103], %v75 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v105 = sea.ptr.index %v75 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_76"("seahorn/lib/linked_list_helper.c":124:21))
  sea.br ^bb58
^bb58:
  %v106 = sea.load %v72[%v105] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_78"("seahorn/lib/linked_list_helper.c":124:21))
  %v107 = sea.ptr.index %v5 [] strides [] offset 104 inbounds : !sea.ptr<64> loc("_79"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb59
^bb59:
  %v108 = sea.store %v104[%v107], %v106 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb60
^bb60:
  %v109 = sea.ptr.index %v5 [] strides [] offset 112 inbounds : !sea.ptr<64> loc("_82"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb61
^bb61:
  %v110 = sea.store %v108[%v109], %v73 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb62
^bb62:
  %v111 = sea.const 2 : i64 loc("seahorn/lib/linked_list_helper.c":259:23)
  %v112 = sea.store %v110[%v5], %v111 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":259:23)
  %v113 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":289:5)
  %v114 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":289:5)
  %v115 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":289:5)
  %v116 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":289:5)
  %v117 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":289:5)
  %v118 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":289:5)
  sea.br ^bb91(%v113, %v114, %v115, %v73, %v106, %v75, %v116, %v117, %v118 : !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, i1, i1, i1) loc("seahorn/lib/linked_list_helper.c":289:5)
^bb63:
  %v119 = sea.const 0 : i64 loc("SwitchLeaf.i72.i")
  %v120 = sea.icmp eq, %v15, %v119 : i64 loc("SwitchLeaf.i72.i")
  sea.cond_br %v120, ^bb84, ^bb64
^bb64:
  %v121 = sea.ptr.index %v5 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_84"("seahorn/lib/linked_list_helper.c":264:50))
  sea.br ^bb65
^bb65:
  %v122 = sea.store %v91[%v121], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  sea.br ^bb66
^bb66:
  %v123 = sea.ptr.index %v5 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_87"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb67
^bb67:
  %v124 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v125 = sea.store %v122[%v123], %v124 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb68
^bb68:
  %v126 = sea.ptr.index %v5 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_90"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb69
^bb69:
  %v127 = sea.store %v125[%v126], %v75 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb70
^bb70:
  %v128 = sea.ptr.index %v5 [] strides [] offset 96 inbounds : !sea.ptr<64> loc("_91"("seahorn/lib/linked_list_helper.c":265:50))
  sea.br ^bb71
^bb71:
  %v129 = sea.store %v127[%v128], %v75 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v130 = sea.ptr.index %v75 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_93"("seahorn/lib/linked_list_helper.c":124:21))
  sea.br ^bb72
^bb72:
  %v131 = sea.load %v72[%v130] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_95"("seahorn/lib/linked_list_helper.c":124:21))
  %v132 = sea.ptr.index %v5 [] strides [] offset 104 inbounds : !sea.ptr<64> loc("_96"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb73
^bb73:
  %v133 = sea.store %v129[%v132], %v131 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb74
^bb74:
  %v134 = sea.ptr.index %v5 [] strides [] offset 112 inbounds : !sea.ptr<64> loc("_99"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb75
^bb75:
  %v135 = sea.store %v133[%v134], %v73 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb76
^bb76:
  sea.br ^bb77
^bb77:
  %v136 = sea.ptr.index %v5 [] strides [] offset 120 inbounds : !sea.ptr<64> loc("_100"("seahorn/lib/linked_list_helper.c":266:59))
  sea.br ^bb78
^bb78:
  %v137 = sea.store %v135[%v136], %v73 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v138 = sea.ptr.index %v73 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_102"("seahorn/lib/linked_list_helper.c":124:21))
  %v139 = sea.const 8 : i64 loc("_103"("seahorn/lib/linked_list_helper.c":124:21))
  %v140 = sea.ptr.dereferenceable %v138, %v139 : !sea.ptr<64>, i64 loc("_103"("seahorn/lib/linked_list_helper.c":124:21))
  sea.cond_br %v140, ^bb79, ^bb243
^bb79:
  %v141 = sea.load %v72[%v138] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_105"("seahorn/lib/linked_list_helper.c":124:21))
  %v142 = sea.ptr.index %v5 [] strides [] offset 128 inbounds : !sea.ptr<64> loc("_106"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb80
^bb80:
  %v143 = sea.store %v137[%v142], %v141 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v144 = sea.const 8 : i64 loc("_108"("seahorn/lib/linked_list_helper.c":125:21))
  %v145 = sea.ptr.dereferenceable %v73, %v144 : !sea.ptr<64>, i64 loc("_108"("seahorn/lib/linked_list_helper.c":125:21))
  sea.cond_br %v145, ^bb81, ^bb243
^bb81:
  %v146 = sea.load %v72[%v73] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_110"("seahorn/lib/linked_list_helper.c":125:21))
  %v147 = sea.ptr.index %v5 [] strides [] offset 136 inbounds : !sea.ptr<64> loc("_111"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb82
^bb82:
  %v148 = sea.store %v143[%v147], %v146 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb83
^bb83:
  %v149 = sea.const 3 : i64 loc("seahorn/lib/linked_list_helper.c":267:23)
  %v150 = sea.store %v148[%v5], %v149 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":267:23)
  %v151 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":301:5)
  %v152 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":301:5)
  %v153 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":301:5)
  sea.br ^bb91(%v146, %v141, %v73, %v73, %v131, %v75, %v151, %v152, %v153 : !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, i1, i1, i1) loc("seahorn/lib/linked_list_helper.c":301:5)
^bb84:
  %v154 = sea.ptr.index %v5 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_59"("seahorn/lib/linked_list_helper.c":251:50))
  sea.br ^bb85
^bb85:
  %v155 = sea.store %v91[%v154], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  sea.br ^bb86
^bb86:
  %v156 = sea.ptr.index %v5 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_62"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb87
^bb87:
  %v157 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v158 = sea.store %v155[%v156], %v157 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb88
^bb88:
  %v159 = sea.ptr.index %v5 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_65"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb89
^bb89:
  %v160 = sea.store %v158[%v159], %v75 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb90
^bb90:
  %v161 = sea.const 1 : i64 loc("seahorn/lib/linked_list_helper.c":252:23)
  %v162 = sea.store %v160[%v5], %v161 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":252:23)
  %v163 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":282:5)
  %v164 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":282:5)
  %v165 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":282:5)
  %v166 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":282:5)
  %v167 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":282:5)
  %v168 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":282:5)
  %v169 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":282:5)
  %v170 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":282:5)
  %v171 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":282:5)
  sea.br ^bb91(%v163, %v164, %v165, %v166, %v167, %v168, %v169, %v170, %v171 : !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, i1, i1, i1) loc("seahorn/lib/linked_list_helper.c":282:5)
^bb91(%v172 : !sea.ptr<64>, %v173 : !sea.ptr<64>, %v174 : !sea.ptr<64>, %v175 : !sea.ptr<64>, %v176 : !sea.ptr<64>, %v177 : !sea.ptr<64>, %v178 : i1, %v179 : i1, %v180 : i1):
  sea.br ^bb92
^bb92:
  sea.br ^bb93
^bb93:
  %v181 = sea.ptr.index %v75 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_123"("aws-c-common/include/aws/common/linked_list.inl":57:46))
  sea.br ^bb94
^bb94:
  %v182 = sea.load %v72[%v181] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_124"("aws-c-common/include/aws/common/linked_list.inl":57:46))
  %v183 = sea.ptr.cmp eq, %v182, %v3 : !sea.ptr<64> loc("_125"("aws-c-common/include/aws/common/linked_list.inl":57:51))
  sea.br ^bb95
^bb95:
  sea.br ^bb96
^bb96:
  %v184 = sea.const 1 : i1 loc("_128")
  %v185 = sea.const 0 : i1 loc("_128")
  %v186 = sea.select %v184, %v183, %v185 : i1 loc("_128")
  sea.cond_br %v186, ^bb97, ^bb243
^bb97:
  sea.br ^bb98
^bb98:
  sea.br ^bb99
^bb99:
  sea.cond_br %v178, ^bb158, ^bb100 loc("seahorn/lib/linked_list_helper.c":138:14)
^bb100:
  sea.br ^bb101
^bb101:
  sea.cond_br %v179, ^bb137, ^bb102 loc("seahorn/lib/linked_list_helper.c":143:14)
^bb102:
  sea.br ^bb103
^bb103:
  %v187 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":149:14)
  sea.cond_br %v180, ^bb104, ^bb168(%v187 : i1) loc("seahorn/lib/linked_list_helper.c":149:14)
^bb104:
  sea.br ^bb105
^bb105:
  sea.br ^bb106
^bb106:
  sea.br ^bb107
^bb107:
  sea.br ^bb108
^bb108:
  sea.br ^bb109
^bb109:
  sea.br ^bb110
^bb110:
  sea.br ^bb111
^bb111:
  %v188 = sea.ptr.cmp eq, %v177, %v75 : !sea.ptr<64> loc("_171"("seahorn/lib/linked_list_helper.c":108:15))
  %v189 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v188, ^bb112, ^bb168(%v189 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb112:
  sea.br ^bb113
^bb113:
  sea.br ^bb114
^bb114:
  %v190 = sea.ptr.cmp eq, %v3, %v176 : !sea.ptr<64> loc("_174"("seahorn/lib/linked_list_helper.c":108:44))
  %v191 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v190, ^bb115, ^bb168(%v191 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb115:
  sea.br ^bb116
^bb116:
  sea.br ^bb117
^bb117:
  sea.br ^bb118
^bb118:
  %v192 = sea.ptr.cmp eq, %v73, %v175 : !sea.ptr<64> loc("_178"("seahorn/lib/linked_list_helper.c":113:44))
  %v193 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":153:67)
  sea.cond_br %v192, ^bb119, ^bb168(%v193 : i1) loc("seahorn/lib/linked_list_helper.c":153:67)
^bb119:
  sea.br ^bb120
^bb120:
  sea.br ^bb121
^bb121:
  sea.br ^bb122
^bb122:
  sea.br ^bb123
^bb123:
  %v194 = sea.ptr.cmp eq, %v174, %v73 : !sea.ptr<64> loc("_184"("seahorn/lib/linked_list_helper.c":108:15))
  %v195 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v194, ^bb124, ^bb168(%v195 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb124:
  %v196 = sea.ptr.index %v73 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_186"("seahorn/lib/linked_list_helper.c":108:39))
  %v197 = sea.const 8 : i64 loc("_187"("seahorn/lib/linked_list_helper.c":108:39))
  %v198 = sea.ptr.dereferenceable %v196, %v197 : !sea.ptr<64>, i64 loc("_187"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v198, ^bb125, ^bb243
^bb125:
  %v199 = sea.load %v72[%v196] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_189"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb126
^bb126:
  %v200 = sea.ptr.cmp eq, %v199, %v173 : !sea.ptr<64> loc("_190"("seahorn/lib/linked_list_helper.c":108:44))
  %v201 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v200, ^bb127, ^bb168(%v201 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb127:
  sea.br ^bb128
^bb128:
  %v202 = sea.const 8 : i64 loc("_193"("seahorn/lib/linked_list_helper.c":113:39))
  %v203 = sea.ptr.dereferenceable %v73, %v202 : !sea.ptr<64>, i64 loc("_193"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v203, ^bb129, ^bb243
^bb129:
  %v204 = sea.load %v72[%v73] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_195"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb130
^bb130:
  %v205 = sea.ptr.cmp eq, %v204, %v172 : !sea.ptr<64> loc("_196"("seahorn/lib/linked_list_helper.c":113:44))
  %v206 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":154:73)
  sea.cond_br %v205, ^bb131, ^bb168(%v206 : i1) loc("seahorn/lib/linked_list_helper.c":154:73)
^bb131:
  sea.br ^bb132
^bb132:
  sea.br ^bb133
^bb133:
  sea.br ^bb134
^bb134:
  sea.br ^bb135
^bb135:
  sea.br ^bb136
^bb136:
  %v207 = sea.const 1 : i1
  sea.br ^bb168(%v207 : i1)
^bb137:
  sea.br ^bb138
^bb138:
  sea.br ^bb139
^bb139:
  sea.br ^bb140
^bb140:
  sea.br ^bb141
^bb141:
  sea.br ^bb142
^bb142:
  sea.br ^bb143
^bb143:
  sea.br ^bb144
^bb144:
  %v208 = sea.ptr.cmp eq, %v177, %v75 : !sea.ptr<64> loc("_149"("seahorn/lib/linked_list_helper.c":108:15))
  %v209 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v208, ^bb145, ^bb168(%v209 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb145:
  sea.br ^bb146
^bb146:
  sea.br ^bb147
^bb147:
  %v210 = sea.ptr.cmp eq, %v3, %v176 : !sea.ptr<64> loc("_152"("seahorn/lib/linked_list_helper.c":108:44))
  %v211 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v210, ^bb148, ^bb168(%v211 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb148:
  sea.br ^bb149
^bb149:
  sea.br ^bb150
^bb150:
  sea.br ^bb151
^bb151:
  %v212 = sea.ptr.cmp eq, %v73, %v175 : !sea.ptr<64> loc("_156"("seahorn/lib/linked_list_helper.c":113:44))
  %v213 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":146:67)
  sea.cond_br %v212, ^bb152, ^bb168(%v213 : i1) loc("seahorn/lib/linked_list_helper.c":146:67)
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
  %v214 = sea.const 1 : i1
  sea.br ^bb168(%v214 : i1)
^bb158:
  sea.br ^bb159
^bb159:
  sea.br ^bb160
^bb160:
  sea.br ^bb161
^bb161:
  sea.br ^bb162
^bb162:
  sea.br ^bb163
^bb163:
  sea.br ^bb164
^bb164:
  sea.br ^bb165
^bb165:
  sea.br ^bb166
^bb166:
  sea.br ^bb167
^bb167:
  %v215 = sea.const 1 : i1
  sea.br ^bb168(%v215 : i1)
^bb168(%v216 : i1):
  sea.br ^bb169
^bb169:
  sea.br ^bb170
^bb170:
  sea.cond_br %v178, ^bb231, ^bb171 loc("seahorn/lib/linked_list_helper.c":138:14)
^bb171:
  sea.br ^bb172
^bb172:
  sea.cond_br %v179, ^bb209, ^bb173 loc("seahorn/lib/linked_list_helper.c":143:14)
^bb173:
  sea.br ^bb174
^bb174:
  %v217 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":149:14)
  sea.cond_br %v180, ^bb175, ^bb242(%v217 : i1) loc("seahorn/lib/linked_list_helper.c":149:14)
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
  sea.br ^bb181
^bb181:
  sea.br ^bb182
^bb182:
  %v218 = sea.ptr.cmp eq, %v177, %v75 : !sea.ptr<64> loc("_249"("seahorn/lib/linked_list_helper.c":108:15))
  %v219 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v218, ^bb183, ^bb242(%v219 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb183:
  sea.br ^bb184
^bb184:
  sea.br ^bb185
^bb185:
  %v220 = sea.ptr.cmp eq, %v3, %v176 : !sea.ptr<64> loc("_252"("seahorn/lib/linked_list_helper.c":108:44))
  %v221 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v220, ^bb186, ^bb242(%v221 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb186:
  sea.br ^bb187
^bb187:
  sea.br ^bb188
^bb188:
  sea.br ^bb189
^bb189:
  %v222 = sea.ptr.cmp eq, %v73, %v175 : !sea.ptr<64> loc("_256"("seahorn/lib/linked_list_helper.c":113:44))
  %v223 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":153:67)
  sea.cond_br %v222, ^bb190, ^bb242(%v223 : i1) loc("seahorn/lib/linked_list_helper.c":153:67)
^bb190:
  sea.br ^bb191
^bb191:
  sea.br ^bb192
^bb192:
  sea.br ^bb193
^bb193:
  sea.br ^bb194
^bb194:
  %v224 = sea.ptr.cmp eq, %v174, %v73 : !sea.ptr<64> loc("_262"("seahorn/lib/linked_list_helper.c":108:15))
  %v225 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v224, ^bb195, ^bb242(%v225 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb195:
  %v226 = sea.ptr.index %v73 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_264"("seahorn/lib/linked_list_helper.c":108:39))
  %v227 = sea.const 8 : i64 loc("_265"("seahorn/lib/linked_list_helper.c":108:39))
  %v228 = sea.ptr.dereferenceable %v226, %v227 : !sea.ptr<64>, i64 loc("_265"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v228, ^bb196, ^bb243
^bb196:
  %v229 = sea.load %v72[%v226] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_267"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb197
^bb197:
  %v230 = sea.ptr.cmp eq, %v229, %v173 : !sea.ptr<64> loc("_268"("seahorn/lib/linked_list_helper.c":108:44))
  %v231 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v230, ^bb198, ^bb242(%v231 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb198:
  sea.br ^bb199
^bb199:
  %v232 = sea.const 8 : i64 loc("_271"("seahorn/lib/linked_list_helper.c":113:39))
  %v233 = sea.ptr.dereferenceable %v73, %v232 : !sea.ptr<64>, i64 loc("_271"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v233, ^bb200, ^bb243
^bb200:
  %v234 = sea.load %v72[%v73] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_273"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb201
^bb201:
  %v235 = sea.ptr.cmp eq, %v234, %v172 : !sea.ptr<64> loc("_274"("seahorn/lib/linked_list_helper.c":113:44))
  %v236 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":154:73)
  sea.cond_br %v235, ^bb202, ^bb242(%v236 : i1) loc("seahorn/lib/linked_list_helper.c":154:73)
^bb202:
  sea.br ^bb203
^bb203:
  sea.br ^bb204
^bb204:
  sea.br ^bb205
^bb205:
  sea.br ^bb206
^bb206:
  sea.br ^bb207
^bb207:
  %v237 = sea.load %v72[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_280"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb208
^bb208:
  %v238 = sea.ptr.null : !sea.ptr<64> loc("_282"("seahorn/lib/linked_list_helper.c":113:44))
  %v239 = sea.ptr.cmp eq, %v237, %v238 : !sea.ptr<64> loc("_282"("seahorn/lib/linked_list_helper.c":113:44))
  sea.br ^bb242(%v239 : i1)
^bb209:
  sea.br ^bb210
^bb210:
  sea.br ^bb211
^bb211:
  sea.br ^bb212
^bb212:
  sea.br ^bb213
^bb213:
  sea.br ^bb214
^bb214:
  sea.br ^bb215
^bb215:
  sea.br ^bb216
^bb216:
  %v240 = sea.ptr.cmp eq, %v177, %v75 : !sea.ptr<64> loc("_224"("seahorn/lib/linked_list_helper.c":108:15))
  %v241 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v240, ^bb217, ^bb242(%v241 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb217:
  sea.br ^bb218
^bb218:
  sea.br ^bb219
^bb219:
  %v242 = sea.ptr.cmp eq, %v3, %v176 : !sea.ptr<64> loc("_227"("seahorn/lib/linked_list_helper.c":108:44))
  %v243 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v242, ^bb220, ^bb242(%v243 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb220:
  sea.br ^bb221
^bb221:
  sea.br ^bb222
^bb222:
  sea.br ^bb223
^bb223:
  %v244 = sea.ptr.cmp eq, %v73, %v175 : !sea.ptr<64> loc("_231"("seahorn/lib/linked_list_helper.c":113:44))
  %v245 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":146:67)
  sea.cond_br %v244, ^bb224, ^bb242(%v245 : i1) loc("seahorn/lib/linked_list_helper.c":146:67)
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
  %v246 = sea.load %v72[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_237"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb230
^bb230:
  %v247 = sea.ptr.null : !sea.ptr<64> loc("_239"("seahorn/lib/linked_list_helper.c":113:44))
  %v248 = sea.ptr.cmp eq, %v246, %v247 : !sea.ptr<64> loc("_239"("seahorn/lib/linked_list_helper.c":113:44))
  sea.br ^bb242(%v248 : i1)
^bb231:
  sea.br ^bb232
^bb232:
  sea.br ^bb233
^bb233:
  sea.br ^bb234
^bb234:
  sea.br ^bb235
^bb235:
  sea.br ^bb236
^bb236:
  sea.br ^bb237
^bb237:
  sea.br ^bb238
^bb238:
  sea.br ^bb239
^bb239:
  sea.br ^bb240
^bb240:
  %v249 = sea.load %v72[%v12] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_212"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb241
^bb241:
  %v250 = sea.ptr.null : !sea.ptr<64> loc("_214"("seahorn/lib/linked_list_helper.c":113:44))
  %v251 = sea.ptr.cmp eq, %v249, %v250 : !sea.ptr<64> loc("_214"("seahorn/lib/linked_list_helper.c":113:44))
  sea.br ^bb242(%v251 : i1)
^bb242(%v252 : i1):
  %v253 = sea.const 1 : i1 loc("seahorn/jobs/linked_list_rend/aws_linked_list_rend_harness.c":19:3)
  %v254 = sea.xor %v252, %v253 : i1 loc("seahorn/jobs/linked_list_rend/aws_linked_list_rend_harness.c":19:3)
  sea.assume %v254 loc("seahorn/jobs/linked_list_rend/aws_linked_list_rend_harness.c":19:3)
  sea.br ^bb243 loc("seahorn/jobs/linked_list_rend/aws_linked_list_rend_harness.c":19:3)
^bb243:
  sea.br ^bb244
^bb244:
  %v255 = sea.const 0 : i1
  sea.assert %v255
  sea.halt
}
