// Exported from SeaHorn (linked_list_push_front.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.1" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm54")
  %v1 = sea.mem.nondet "region.0" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm55")
  %v2 = sea.const 32 : i64 loc("_0")
  %v3 = sea.alloca %v2 align 8 [2] : i64 -> !sea.ptr<64> loc("_0")
  %v4 = sea.const 16 : i64 loc("_1")
  %v5 = sea.alloca %v4 align 8 [3] : i64 -> !sea.ptr<64> loc("_1")
  %v6 = sea.const 168 : i64 loc("_2")
  %v7 = sea.alloca %v6 align 8 [4] : i64 -> !sea.ptr<64> loc("_2")
  %v8 = sea.const 0 : i8 loc("seahorn/jobs/linked_list_push_front/aws_linked_list_push_front_harness.c":9:32)
  %v9 = sea.const 168 : i64 loc("seahorn/jobs/linked_list_push_front/aws_linked_list_push_front_harness.c":9:32)
  %v10 = sea.memset %v0[%v7], %v8, %v9 inplace align 8 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs/linked_list_push_front/aws_linked_list_push_front_harness.c":9:32)
  %v11 = sea.ptr.index %v3 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_3"("seahorn/lib/linked_list_helper.c":38:14))
  sea.br ^bb1
^bb1:
  %v12 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":38:19)
  %v13 = sea.store %v1[%v11], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":38:19)
  %v14 = sea.ptr.index %v3 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_5"("seahorn/lib/linked_list_helper.c":39:9))
  sea.br ^bb2
^bb2:
  %v15 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":39:19)
  %v16 = sea.store %v13[%v14], %v15 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":39:19)
  %v17 = sea.nondet "nd_size_t" [5] : i64 loc("_7"("seahorn/lib/linked_list_helper.c":41:19))
  sea.br ^bb3
^bb3:
  %v18 = sea.const 3 : i64 loc("_9"("seahorn/lib/linked_list_helper.c":43:14))
  %v19 = sea.icmp ult, %v17, %v18 : i64 loc("_9"("seahorn/lib/linked_list_helper.c":43:14))
  sea.cond_br %v19, ^bb17, ^bb4 loc("seahorn/lib/linked_list_helper.c":43:7)
^bb4:
  %v20 = sea.const 16 : i64 loc("malloc92.i42")
  %v21 = sea.alloca %v20 align 16 [6] : i64 -> !sea.ptr<64> loc("malloc92.i42")
  %v22 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.assume %v22 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.br ^bb5
^bb5:
  %v23 = sea.ptr.index %v21 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_28"("seahorn/lib/linked_list_helper.c":33:9))
  sea.br ^bb6
^bb6:
  %v24 = sea.const 16 : i64 loc("malloc93.i43")
  %v25 = sea.alloca %v24 align 16 [7] : i64 -> !sea.ptr<64> loc("malloc93.i43")
  %v26 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.assume %v26 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.br ^bb7
^bb7:
  %v27 = sea.ptr.index %v25 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_30"("seahorn/lib/linked_list_helper.c":33:9))
  sea.br ^bb8
^bb8:
  sea.br ^bb9
^bb9:
  %v28 = sea.store %v16[%v3], %v21 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  sea.br ^bb10
^bb10:
  %v29 = sea.store %v28[%v23], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb11
^bb11:
  %v30 = sea.store %v29[%v21], %v25 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  sea.br ^bb12
^bb12:
  %v31 = sea.store %v30[%v27], %v21 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  %v32 = sea.ptr.nondet "nd_linked_list_node" [8] : !sea.ptr<64> loc("_33"("seahorn/lib/linked_list_helper.c":425:19))
  sea.br ^bb13
^bb13:
  %v33 = sea.store %v31[%v25], %v32 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":425:17)
  sea.br ^bb14
^bb14:
  %v34 = sea.ptr.null : !sea.ptr<64> loc("_36"("seahorn/lib/linked_list_helper.c":426:24))
  %v35 = sea.ptr.cmp ne, %v32, %v34 : !sea.ptr<64> loc("_36"("seahorn/lib/linked_list_helper.c":426:24))
  sea.assume %v35 loc("seahorn/lib/linked_list_helper.c":426:5)
  %v36 = sea.ptr.nondet "nd_linked_list_node" [9] : !sea.ptr<64> loc("_37"("seahorn/lib/linked_list_helper.c":427:23))
  %v37 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_38"("seahorn/lib/linked_list_helper.c":427:16))
  sea.br ^bb15
^bb15:
  %v38 = sea.store %v33[%v37], %v36 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":427:21)
  sea.br ^bb16
^bb16:
  %v39 = sea.ptr.null : !sea.ptr<64> loc("_40"("seahorn/lib/linked_list_helper.c":428:28))
  %v40 = sea.ptr.cmp ne, %v36, %v39 : !sea.ptr<64> loc("_40"("seahorn/lib/linked_list_helper.c":428:28))
  sea.assume %v40 loc("seahorn/lib/linked_list_helper.c":428:5)
  sea.br ^bb37(%v38, %v25, %v36, %v21 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>)
^bb17:
  sea.br ^bb18
^bb18:
  %v41 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":12:19)
  %v42 = sea.store %v16[%v11], %v41 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":12:19)
  sea.br ^bb19
^bb19:
  %v43 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":13:19)
  %v44 = sea.store %v42[%v14], %v43 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":13:19)
  sea.br ^bb20
^bb20:
  %v45 = sea.const 2 : i64 loc("Pivot")
  %v46 = sea.icmp slt, %v17, %v45 : i64 loc("Pivot")
  sea.cond_br %v46, ^bb28, ^bb21
^bb21:
  %v47 = sea.const 16 : i64 loc("malloc90.i45")
  %v48 = sea.alloca %v47 align 16 [10] : i64 -> !sea.ptr<64> loc("malloc90.i45")
  %v49 = sea.const 16 : i64 loc("malloc91.i46")
  %v50 = sea.alloca %v49 align 16 [11] : i64 -> !sea.ptr<64> loc("malloc91.i46")
  sea.br ^bb22
^bb22:
  %v51 = sea.store %v44[%v3], %v48 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v52 = sea.ptr.index %v48 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_21"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb23
^bb23:
  %v53 = sea.store %v51[%v52], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb24
^bb24:
  %v54 = sea.store %v53[%v48], %v50 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v55 = sea.ptr.index %v50 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_23"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb25
^bb25:
  %v56 = sea.store %v54[%v55], %v48 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb26
^bb26:
  %v57 = sea.store %v56[%v50], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v58 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_25"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb27
^bb27:
  %v59 = sea.store %v57[%v58], %v50 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb37(%v59, %v50, %v50, %v48 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/linked_list_helper.c":27:3)
^bb28:
  %v60 = sea.const 0 : i64 loc("SwitchLeaf")
  %v61 = sea.icmp eq, %v17, %v60 : i64 loc("SwitchLeaf")
  sea.cond_br %v61, ^bb34, ^bb29
^bb29:
  %v62 = sea.const 16 : i64 loc("malloc.i44")
  %v63 = sea.alloca %v62 align 16 [12] : i64 -> !sea.ptr<64> loc("malloc.i44")
  sea.br ^bb30
^bb30:
  %v64 = sea.store %v44[%v3], %v63 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v65 = sea.ptr.index %v63 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_16"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb31
^bb31:
  %v66 = sea.store %v64[%v65], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb32
^bb32:
  %v67 = sea.store %v66[%v63], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v68 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_18"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb33
^bb33:
  %v69 = sea.store %v67[%v68], %v63 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb37(%v69, %v14, %v63, %v63 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/linked_list_helper.c":21:3)
^bb34:
  sea.br ^bb35
^bb35:
  %v70 = sea.store %v44[%v3], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v71 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_13"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb36
^bb36:
  %v72 = sea.store %v70[%v71], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  %v73 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":17:3)
  sea.br ^bb37(%v72, %v73, %v3, %v14 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/linked_list_helper.c":17:3)
^bb37(%v74 : !sea.mem<!sea.ptr<64>, i8>, %v75 : !sea.ptr<64>, %v76 : !sea.ptr<64>, %v77 : !sea.ptr<64>):
  %v78 = sea.ptr.index %v7 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_44"("seahorn/lib/linked_list_helper.c":272:56))
  sea.br ^bb38
^bb38:
  %v79 = sea.store %v10[%v78], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  sea.br ^bb39
^bb39:
  %v80 = sea.ptr.index %v7 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_47"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb40
^bb40:
  %v81 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v82 = sea.store %v79[%v80], %v81 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb41
^bb41:
  %v83 = sea.ptr.index %v7 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_50"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb42
^bb42:
  %v84 = sea.store %v82[%v83], %v77 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v85 = sea.ptr.index %v7 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_51"("seahorn/lib/linked_list_helper.c":273:56))
  sea.br ^bb43
^bb43:
  %v86 = sea.store %v84[%v85], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v87 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_53"("seahorn/lib/linked_list_helper.c":124:21))
  sea.br ^bb44
^bb44:
  %v88 = sea.ptr.index %v7 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_55"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb45
^bb45:
  %v89 = sea.store %v86[%v88], %v76 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb46
^bb46:
  %v90 = sea.ptr.index %v7 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_58"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb47
^bb47:
  %v91 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v92 = sea.store %v89[%v90], %v91 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v93 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_59"("seahorn/lib/linked_list_helper.c":275:12))
  sea.br ^bb48
^bb48:
  %v94 = sea.store %v92[%v93], %v77 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":275:23)
  %v95 = sea.const 1 : i64 loc("Pivot.i.i")
  %v96 = sea.icmp slt, %v17, %v95 : i64 loc("Pivot.i.i")
  sea.cond_br %v96, ^bb58, ^bb49
^bb49:
  %v97 = sea.const 1 : i64 loc("SwitchLeaf2.i.i")
  %v98 = sea.icmp eq, %v17, %v97 : i64 loc("SwitchLeaf2.i.i")
  sea.cond_br %v98, ^bb50, ^bb59
^bb50:
  sea.br ^bb51
^bb51:
  %v99 = sea.ptr.index %v7 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_64"("seahorn/lib/linked_list_helper.c":251:50))
  sea.br ^bb52
^bb52:
  %v100 = sea.store %v94[%v99], %v77 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v101 = sea.ptr.index %v77 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_66"("seahorn/lib/linked_list_helper.c":124:21))
  sea.br ^bb53
^bb53:
  %v102 = sea.load %v74[%v101] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_68"("seahorn/lib/linked_list_helper.c":124:21))
  %v103 = sea.ptr.index %v7 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_69"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb54
^bb54:
  %v104 = sea.store %v100[%v103], %v102 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb55
^bb55:
  %v105 = sea.ptr.index %v7 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_72"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb56
^bb56:
  %v106 = sea.store %v104[%v105], %v75 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb57
^bb57:
  %v107 = sea.const 1 : i64 loc("seahorn/lib/linked_list_helper.c":252:23)
  %v108 = sea.store %v106[%v7], %v107 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":252:23)
  %v109 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":291:5)
  %v110 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":291:5)
  %v111 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":291:5)
  %v112 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":291:5)
  %v113 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":291:5)
  %v114 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":291:5)
  sea.br ^bb75(%v109, %v110, %v111, %v75, %v77, %v112, %v113, %v114 : !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, i1, i1, i1) loc("seahorn/lib/linked_list_helper.c":291:5)
^bb58:
  %v115 = sea.const 0 : i64 loc("SwitchLeaf.i82.i")
  %v116 = sea.icmp eq, %v17, %v115 : i64 loc("SwitchLeaf.i82.i")
  sea.cond_br %v116, ^bb73, ^bb59
^bb59:
  sea.br ^bb60
^bb60:
  %v117 = sea.ptr.index %v7 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_75"("seahorn/lib/linked_list_helper.c":257:50))
  sea.br ^bb61
^bb61:
  %v118 = sea.store %v94[%v117], %v77 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v119 = sea.ptr.index %v77 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_77"("seahorn/lib/linked_list_helper.c":124:21))
  sea.br ^bb62
^bb62:
  %v120 = sea.load %v74[%v119] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_79"("seahorn/lib/linked_list_helper.c":124:21))
  %v121 = sea.ptr.index %v7 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_80"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb63
^bb63:
  %v122 = sea.store %v118[%v121], %v120 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb64
^bb64:
  %v123 = sea.ptr.index %v7 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_83"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb65
^bb65:
  %v124 = sea.store %v122[%v123], %v75 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb66
^bb66:
  %v125 = sea.ptr.index %v7 [] strides [] offset 96 inbounds : !sea.ptr<64> loc("_84"("seahorn/lib/linked_list_helper.c":258:50))
  sea.br ^bb67
^bb67:
  %v126 = sea.store %v124[%v125], %v75 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v127 = sea.ptr.index %v75 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_86"("seahorn/lib/linked_list_helper.c":124:21))
  %v128 = sea.const 8 : i64 loc("_87"("seahorn/lib/linked_list_helper.c":124:21))
  %v129 = sea.ptr.dereferenceable %v127, %v128 : !sea.ptr<64>, i64 loc("_87"("seahorn/lib/linked_list_helper.c":124:21))
  sea.cond_br %v129, ^bb68, ^bb207
^bb68:
  %v130 = sea.load %v74[%v127] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_89"("seahorn/lib/linked_list_helper.c":124:21))
  %v131 = sea.ptr.index %v7 [] strides [] offset 104 inbounds : !sea.ptr<64> loc("_90"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb69
^bb69:
  %v132 = sea.store %v126[%v131], %v130 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v133 = sea.const 8 : i64 loc("_92"("seahorn/lib/linked_list_helper.c":125:21))
  %v134 = sea.ptr.dereferenceable %v75, %v133 : !sea.ptr<64>, i64 loc("_92"("seahorn/lib/linked_list_helper.c":125:21))
  sea.cond_br %v134, ^bb70, ^bb207
^bb70:
  %v135 = sea.load %v74[%v75] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_94"("seahorn/lib/linked_list_helper.c":125:21))
  %v136 = sea.ptr.index %v7 [] strides [] offset 112 inbounds : !sea.ptr<64> loc("_95"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb71
^bb71:
  %v137 = sea.store %v132[%v136], %v135 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb72
^bb72:
  %v138 = sea.const 2 : i64 loc("seahorn/lib/linked_list_helper.c":259:23)
  %v139 = sea.store %v137[%v7], %v138 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":259:23)
  %v140 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":303:5)
  %v141 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":303:5)
  %v142 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":303:5)
  sea.br ^bb75(%v135, %v130, %v75, %v75, %v77, %v140, %v141, %v142 : !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, i1, i1, i1) loc("seahorn/lib/linked_list_helper.c":303:5)
^bb73:
  sea.br ^bb74
^bb74:
  %v143 = sea.const 0 : i64 loc("seahorn/lib/linked_list_helper.c":283:27)
  %v144 = sea.store %v94[%v7], %v143 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":283:27)
  %v145 = sea.ptr.null : !sea.ptr<64>
  %v146 = sea.ptr.null : !sea.ptr<64>
  %v147 = sea.ptr.null : !sea.ptr<64>
  %v148 = sea.ptr.null : !sea.ptr<64>
  %v149 = sea.ptr.null : !sea.ptr<64>
  %v150 = sea.const 1 : i1
  %v151 = sea.const 0 : i1
  %v152 = sea.const 0 : i1
  sea.br ^bb75(%v145, %v146, %v147, %v148, %v149, %v150, %v151, %v152 : !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, i1, i1, i1)
^bb75(%v153 : !sea.ptr<64>, %v154 : !sea.ptr<64>, %v155 : !sea.ptr<64>, %v156 : !sea.ptr<64>, %v157 : !sea.ptr<64>, %v158 : i1, %v159 : i1, %v160 : i1):
  sea.br ^bb76
^bb76:
  sea.br ^bb77
^bb77:
  %v161 = sea.store %v74[%v5], %v77 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":246:18)
  %v162 = sea.ptr.index %v77 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_105"("aws-c-common/include/aws/common/linked_list.inl":247:28))
  sea.br ^bb78
^bb78:
  %v163 = sea.load %v161[%v162] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_107"("aws-c-common/include/aws/common/linked_list.inl":247:28))
  %v164 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_108"("aws-c-common/include/aws/common/linked_list.inl":247:13))
  sea.br ^bb79
^bb79:
  %v165 = sea.store %v161[%v164], %v163 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":247:18)
  sea.br ^bb80
^bb80:
  %v166 = sea.const 8 : i64 loc("_111"("aws-c-common/include/aws/common/linked_list.inl":248:24))
  %v167 = sea.ptr.dereferenceable %v163, %v166 : !sea.ptr<64>, i64 loc("_111"("aws-c-common/include/aws/common/linked_list.inl":248:24))
  sea.cond_br %v167, ^bb81, ^bb207
^bb81:
  %v168 = sea.store %v165[%v163], %v5 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":248:24)
  sea.br ^bb82
^bb82:
  %v169 = sea.store %v168[%v162], %v5 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":249:18)
  %v170 = sea.load %v168[%v14] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_113"("seahorn/jobs/linked_list_push_front/aws_linked_list_push_front_harness.c":20:3))
  %v171 = sea.ptr.null : !sea.ptr<64> loc("_114"("seahorn/jobs/linked_list_push_front/aws_linked_list_push_front_harness.c":20:3))
  %v172 = sea.ptr.cmp eq, %v170, %v171 : !sea.ptr<64> loc("_114"("seahorn/jobs/linked_list_push_front/aws_linked_list_push_front_harness.c":20:3))
  sea.cond_br %v172, ^bb83, ^bb207 loc("seahorn/jobs/linked_list_push_front/aws_linked_list_push_front_harness.c":20:3)
^bb83:
  sea.br ^bb84
^bb84:
  %v173 = sea.load %v168[%v164] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_117"("aws-c-common/include/aws/common/linked_list.inl":66:26))
  %v174 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/linked_list.inl":66:20))
  %v175 = sea.ptr.cmp ne, %v173, %v174 : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/linked_list.inl":66:20))
  %v176 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/linked_list.inl":66:31)
  sea.cond_br %v175, ^bb85, ^bb88(%v176 : i1) loc("aws-c-common/include/aws/common/linked_list.inl":66:31)
^bb85:
  sea.br ^bb86
^bb86:
  %v177 = sea.const 8 : i64 loc("_120"("aws-c-common/include/aws/common/linked_list.inl":66:46))
  %v178 = sea.ptr.dereferenceable %v173, %v177 : !sea.ptr<64>, i64 loc("_120"("aws-c-common/include/aws/common/linked_list.inl":66:46))
  sea.cond_br %v178, ^bb87, ^bb207
^bb87:
  %v179 = sea.load %v168[%v173] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_122"("aws-c-common/include/aws/common/linked_list.inl":66:46))
  %v180 = sea.ptr.cmp eq, %v179, %v5 : !sea.ptr<64> loc("_123"("aws-c-common/include/aws/common/linked_list.inl":66:51))
  sea.br ^bb88(%v180 : i1)
^bb88(%v181 : i1):
  %v182 = sea.const 1 : i1 loc("or.cond61.not")
  %v183 = sea.and %v175, %v182 : i1 loc("or.cond61.not")
  sea.cond_br %v183, ^bb89, ^bb207
^bb89:
  sea.br ^bb90
^bb90:
  %v184 = sea.const 8 : i64 loc("_127"("aws-c-common/include/aws/common/linked_list.inl":66:46))
  %v185 = sea.ptr.dereferenceable %v173, %v184 : !sea.ptr<64>, i64 loc("_127"("aws-c-common/include/aws/common/linked_list.inl":66:46))
  sea.cond_br %v185, ^bb91, ^bb207
^bb91:
  %v186 = sea.load %v168[%v173] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_128"("aws-c-common/include/aws/common/linked_list.inl":66:46))
  %v187 = sea.ptr.cmp eq, %v186, %v5 : !sea.ptr<64> loc("_129"("aws-c-common/include/aws/common/linked_list.inl":66:51))
  sea.cond_br %v187, ^bb92, ^bb207 loc("seahorn/jobs/linked_list_push_front/aws_linked_list_push_front_harness.c":23:3)
^bb92:
  sea.br ^bb93
^bb93:
  %v188 = sea.load %v168[%v5] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_132"("aws-c-common/include/aws/common/linked_list.inl":57:26))
  %v189 = sea.ptr.null : !sea.ptr<64> loc(".not1.i6.i"("aws-c-common/include/aws/common/linked_list.inl":57:20))
  %v190 = sea.ptr.cmp ne, %v188, %v189 : !sea.ptr<64> loc(".not1.i6.i"("aws-c-common/include/aws/common/linked_list.inl":57:20))
  %v191 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/linked_list.inl":57:31)
  sea.cond_br %v190, ^bb94, ^bb97(%v191 : i1) loc("aws-c-common/include/aws/common/linked_list.inl":57:31)
^bb94:
  sea.br ^bb95
^bb95:
  %v192 = sea.ptr.index %v188 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_135"("aws-c-common/include/aws/common/linked_list.inl":57:46))
  %v193 = sea.const 8 : i64 loc("_136"("aws-c-common/include/aws/common/linked_list.inl":57:46))
  %v194 = sea.ptr.dereferenceable %v192, %v193 : !sea.ptr<64>, i64 loc("_136"("aws-c-common/include/aws/common/linked_list.inl":57:46))
  sea.cond_br %v194, ^bb96, ^bb207
^bb96:
  %v195 = sea.load %v169[%v192] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_138"("aws-c-common/include/aws/common/linked_list.inl":57:46))
  %v196 = sea.ptr.cmp eq, %v195, %v5 : !sea.ptr<64> loc("_139"("aws-c-common/include/aws/common/linked_list.inl":57:51))
  sea.br ^bb97(%v196 : i1)
^bb97(%v197 : i1):
  %v198 = sea.const 1 : i1 loc("or.cond63.not")
  %v199 = sea.and %v190, %v198 : i1 loc("or.cond63.not")
  sea.cond_br %v199, ^bb98, ^bb207
^bb98:
  sea.br ^bb99
^bb99:
  %v200 = sea.ptr.index %v188 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_143"("aws-c-common/include/aws/common/linked_list.inl":57:46))
  %v201 = sea.const 8 : i64 loc("_144"("aws-c-common/include/aws/common/linked_list.inl":57:46))
  %v202 = sea.ptr.dereferenceable %v200, %v201 : !sea.ptr<64>, i64 loc("_144"("aws-c-common/include/aws/common/linked_list.inl":57:46))
  sea.cond_br %v202, ^bb100, ^bb207
^bb100:
  %v203 = sea.load %v169[%v200] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_145"("aws-c-common/include/aws/common/linked_list.inl":57:46))
  %v204 = sea.ptr.cmp eq, %v203, %v5 : !sea.ptr<64> loc("_146"("aws-c-common/include/aws/common/linked_list.inl":57:51))
  sea.cond_br %v204, ^bb101, ^bb207 loc("seahorn/jobs/linked_list_push_front/aws_linked_list_push_front_harness.c":24:3)
^bb101:
  sea.br ^bb102
^bb102:
  %v205 = sea.load %v168[%v3] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_149"("seahorn/lib/linked_list_helper.c":435:17))
  %v206 = sea.ptr.cmp eq, %v205, %v5 : !sea.ptr<64> loc("_150"("seahorn/lib/linked_list_helper.c":435:22))
  %v207 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":435:35)
  sea.cond_br %v206, ^bb103, ^bb105(%v207 : i1) loc("seahorn/lib/linked_list_helper.c":435:35)
^bb103:
  sea.br ^bb104
^bb104:
  %v208 = sea.ptr.cmp eq, %v173, %v3 : !sea.ptr<64> loc("_153"("seahorn/lib/linked_list_helper.c":435:54))
  sea.br ^bb105(%v208 : i1)
^bb105(%v209 : i1):
  %v210 = sea.const 1 : i1 loc("or.cond65")
  %v211 = sea.and %v206, %v210 : i1 loc("or.cond65")
  sea.cond_br %v211, ^bb106, ^bb207
^bb106:
  %v212 = sea.ptr.cmp eq, %v173, %v3 : !sea.ptr<64> loc("_156")
  %v213 = sea.const 1 : i1 loc("or.cond")
  %v214 = sea.and %v212, %v213 : i1 loc("or.cond")
  sea.cond_br %v214, ^bb107, ^bb207
^bb107:
  sea.br ^bb108
^bb108:
  %v215 = sea.ptr.cmp eq, %v188, %v77 : !sea.ptr<64> loc("_159"("seahorn/lib/linked_list_helper.c":435:22))
  sea.cond_br %v215, ^bb109, ^bb110 loc("seahorn/lib/linked_list_helper.c":435:35)
^bb109:
  sea.br ^bb110
^bb110:
  %v216 = sea.const 1 : i1 loc("or.cond67")
  %v217 = sea.and %v215, %v216 : i1 loc("or.cond67")
  sea.cond_br %v217, ^bb111, ^bb207
^bb111:
  sea.br ^bb112
^bb112:
  sea.br ^bb113
^bb113:
  sea.cond_br %v158, ^bb156, ^bb114 loc("seahorn/lib/linked_list_helper.c":135:7)
^bb114:
  sea.br ^bb115
^bb115:
  sea.cond_br %v159, ^bb143, ^bb116 loc("seahorn/lib/linked_list_helper.c":138:14)
^bb116:
  sea.br ^bb117
^bb117:
  sea.cond_br %v160, ^bb119, ^bb118 loc("seahorn/lib/linked_list_helper.c":143:14)
^bb118:
  %v218 = sea.const 0 : i1
  sea.br ^bb159(%v218 : i1)
^bb119:
  sea.br ^bb120
^bb120:
  sea.br ^bb121
^bb121:
  %v219 = sea.ptr.cmp eq, %v157, %v77 : !sea.ptr<64> loc("_189"("seahorn/lib/linked_list_helper.c":113:15))
  %v220 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":113:30)
  sea.cond_br %v219, ^bb122, ^bb159(%v220 : i1) loc("seahorn/lib/linked_list_helper.c":113:30)
^bb122:
  sea.br ^bb123
^bb123:
  %v221 = sea.load %v168[%v77] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_192"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb124
^bb124:
  %v222 = sea.ptr.cmp eq, %v221, %v156 : !sea.ptr<64> loc("_193"("seahorn/lib/linked_list_helper.c":113:44))
  %v223 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":145:66)
  sea.cond_br %v222, ^bb125, ^bb159(%v223 : i1) loc("seahorn/lib/linked_list_helper.c":145:66)
^bb125:
  sea.br ^bb126
^bb126:
  sea.br ^bb127
^bb127:
  sea.br ^bb128
^bb128:
  %v224 = sea.ptr.cmp eq, %v155, %v156 : !sea.ptr<64> loc("_198"("seahorn/lib/linked_list_helper.c":108:15))
  %v225 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v224, ^bb129, ^bb159(%v225 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb129:
  %v226 = sea.ptr.index %v155 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_200"("seahorn/lib/linked_list_helper.c":108:39))
  %v227 = sea.const 8 : i64 loc("_201"("seahorn/lib/linked_list_helper.c":108:39))
  %v228 = sea.ptr.dereferenceable %v226, %v227 : !sea.ptr<64>, i64 loc("_201"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v228, ^bb130, ^bb207
^bb130:
  %v229 = sea.load %v169[%v226] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_203"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb131
^bb131:
  %v230 = sea.ptr.cmp eq, %v229, %v154 : !sea.ptr<64> loc("_204"("seahorn/lib/linked_list_helper.c":108:44))
  %v231 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v230, ^bb132, ^bb159(%v231 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb132:
  sea.br ^bb133
^bb133:
  %v232 = sea.const 8 : i64 loc("_207"("seahorn/lib/linked_list_helper.c":113:39))
  %v233 = sea.ptr.dereferenceable %v155, %v232 : !sea.ptr<64>, i64 loc("_207"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v233, ^bb134, ^bb207
^bb134:
  %v234 = sea.load %v168[%v155] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_209"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb135
^bb135:
  %v235 = sea.ptr.cmp eq, %v234, %v153 : !sea.ptr<64> loc("_210"("seahorn/lib/linked_list_helper.c":113:44))
  %v236 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":146:67)
  sea.cond_br %v235, ^bb136, ^bb159(%v236 : i1) loc("seahorn/lib/linked_list_helper.c":146:67)
^bb136:
  sea.br ^bb137
^bb137:
  sea.br ^bb138
^bb138:
  %v237 = sea.load %v169[%v87] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_214"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb139
^bb139:
  %v238 = sea.ptr.cmp eq, %v237, %v76 : !sea.ptr<64> loc("_215"("seahorn/lib/linked_list_helper.c":108:44))
  %v239 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v238, ^bb140, ^bb159(%v239 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb140:
  sea.br ^bb141
^bb141:
  sea.br ^bb142
^bb142:
  %v240 = sea.const 1 : i1
  sea.br ^bb159(%v240 : i1)
^bb143:
  sea.br ^bb144
^bb144:
  sea.br ^bb145
^bb145:
  %v241 = sea.ptr.cmp eq, %v157, %v77 : !sea.ptr<64> loc("_171"("seahorn/lib/linked_list_helper.c":113:15))
  %v242 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":113:30)
  sea.cond_br %v241, ^bb146, ^bb159(%v242 : i1) loc("seahorn/lib/linked_list_helper.c":113:30)
^bb146:
  sea.br ^bb147
^bb147:
  %v243 = sea.load %v168[%v77] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_174"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb148
^bb148:
  %v244 = sea.ptr.cmp eq, %v243, %v156 : !sea.ptr<64> loc("_175"("seahorn/lib/linked_list_helper.c":113:44))
  %v245 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":140:66)
  sea.cond_br %v244, ^bb149, ^bb159(%v245 : i1) loc("seahorn/lib/linked_list_helper.c":140:66)
^bb149:
  sea.br ^bb150
^bb150:
  sea.br ^bb151
^bb151:
  %v246 = sea.load %v169[%v87] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_179"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb152
^bb152:
  %v247 = sea.ptr.cmp eq, %v246, %v76 : !sea.ptr<64> loc("_180"("seahorn/lib/linked_list_helper.c":108:44))
  %v248 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v247, ^bb153, ^bb159(%v248 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb153:
  sea.br ^bb154
^bb154:
  sea.br ^bb155
^bb155:
  %v249 = sea.const 1 : i1
  sea.br ^bb159(%v249 : i1)
^bb156:
  sea.br ^bb157
^bb157:
  sea.br ^bb158
^bb158:
  %v250 = sea.const 1 : i1
  sea.br ^bb159(%v250 : i1)
^bb159(%v251 : i1):
  sea.br ^bb160
^bb160:
  sea.cond_br %v158, ^bb203, ^bb161 loc("seahorn/lib/linked_list_helper.c":135:7)
^bb161:
  sea.br ^bb162
^bb162:
  sea.cond_br %v159, ^bb190, ^bb163 loc("seahorn/lib/linked_list_helper.c":138:14)
^bb163:
  sea.br ^bb164
^bb164:
  sea.cond_br %v160, ^bb166, ^bb165 loc("seahorn/lib/linked_list_helper.c":143:14)
^bb165:
  %v252 = sea.const 0 : i1
  sea.br ^bb206(%v252 : i1)
^bb166:
  sea.br ^bb167
^bb167:
  sea.br ^bb168
^bb168:
  %v253 = sea.ptr.cmp eq, %v157, %v77 : !sea.ptr<64> loc("_247"("seahorn/lib/linked_list_helper.c":113:15))
  %v254 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":113:30)
  sea.cond_br %v253, ^bb169, ^bb206(%v254 : i1) loc("seahorn/lib/linked_list_helper.c":113:30)
^bb169:
  sea.br ^bb170
^bb170:
  %v255 = sea.load %v168[%v77] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_250"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb171
^bb171:
  %v256 = sea.ptr.cmp eq, %v255, %v156 : !sea.ptr<64> loc("_251"("seahorn/lib/linked_list_helper.c":113:44))
  %v257 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":145:66)
  sea.cond_br %v256, ^bb172, ^bb206(%v257 : i1) loc("seahorn/lib/linked_list_helper.c":145:66)
^bb172:
  sea.br ^bb173
^bb173:
  sea.br ^bb174
^bb174:
  sea.br ^bb175
^bb175:
  %v258 = sea.ptr.cmp eq, %v155, %v156 : !sea.ptr<64> loc("_256"("seahorn/lib/linked_list_helper.c":108:15))
  %v259 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v258, ^bb176, ^bb206(%v259 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb176:
  %v260 = sea.ptr.index %v155 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_258"("seahorn/lib/linked_list_helper.c":108:39))
  %v261 = sea.const 8 : i64 loc("_259"("seahorn/lib/linked_list_helper.c":108:39))
  %v262 = sea.ptr.dereferenceable %v260, %v261 : !sea.ptr<64>, i64 loc("_259"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v262, ^bb177, ^bb207
^bb177:
  %v263 = sea.load %v169[%v260] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_261"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb178
^bb178:
  %v264 = sea.ptr.cmp eq, %v263, %v154 : !sea.ptr<64> loc("_262"("seahorn/lib/linked_list_helper.c":108:44))
  %v265 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v264, ^bb179, ^bb206(%v265 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb179:
  sea.br ^bb180
^bb180:
  %v266 = sea.const 8 : i64 loc("_265"("seahorn/lib/linked_list_helper.c":113:39))
  %v267 = sea.ptr.dereferenceable %v155, %v266 : !sea.ptr<64>, i64 loc("_265"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v267, ^bb181, ^bb207
^bb181:
  %v268 = sea.load %v168[%v155] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_267"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb182
^bb182:
  %v269 = sea.ptr.cmp eq, %v268, %v153 : !sea.ptr<64> loc("_268"("seahorn/lib/linked_list_helper.c":113:44))
  %v270 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":146:67)
  sea.cond_br %v269, ^bb183, ^bb206(%v270 : i1) loc("seahorn/lib/linked_list_helper.c":146:67)
^bb183:
  sea.br ^bb184
^bb184:
  sea.br ^bb185
^bb185:
  %v271 = sea.load %v169[%v87] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_272"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb186
^bb186:
  %v272 = sea.ptr.cmp eq, %v271, %v76 : !sea.ptr<64> loc("_273"("seahorn/lib/linked_list_helper.c":108:44))
  %v273 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v272, ^bb187, ^bb206(%v273 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb187:
  sea.br ^bb188
^bb188:
  sea.br ^bb189
^bb189:
  %v274 = sea.const 1 : i1
  sea.br ^bb206(%v274 : i1)
^bb190:
  sea.br ^bb191
^bb191:
  sea.br ^bb192
^bb192:
  %v275 = sea.ptr.cmp eq, %v157, %v77 : !sea.ptr<64> loc("_229"("seahorn/lib/linked_list_helper.c":113:15))
  %v276 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":113:30)
  sea.cond_br %v275, ^bb193, ^bb206(%v276 : i1) loc("seahorn/lib/linked_list_helper.c":113:30)
^bb193:
  sea.br ^bb194
^bb194:
  %v277 = sea.load %v168[%v77] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_232"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb195
^bb195:
  %v278 = sea.ptr.cmp eq, %v277, %v156 : !sea.ptr<64> loc("_233"("seahorn/lib/linked_list_helper.c":113:44))
  %v279 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":140:66)
  sea.cond_br %v278, ^bb196, ^bb206(%v279 : i1) loc("seahorn/lib/linked_list_helper.c":140:66)
^bb196:
  sea.br ^bb197
^bb197:
  sea.br ^bb198
^bb198:
  %v280 = sea.load %v169[%v87] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_237"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb199
^bb199:
  %v281 = sea.ptr.cmp eq, %v280, %v76 : !sea.ptr<64> loc("_238"("seahorn/lib/linked_list_helper.c":108:44))
  %v282 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v281, ^bb200, ^bb206(%v282 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb200:
  sea.br ^bb201
^bb201:
  sea.br ^bb202
^bb202:
  %v283 = sea.const 1 : i1
  sea.br ^bb206(%v283 : i1)
^bb203:
  sea.br ^bb204
^bb204:
  sea.br ^bb205
^bb205:
  %v284 = sea.const 1 : i1
  sea.br ^bb206(%v284 : i1)
^bb206(%v285 : i1):
  %v286 = sea.const 1 : i1 loc("seahorn/jobs/linked_list_push_front/aws_linked_list_push_front_harness.c":27:3)
  %v287 = sea.xor %v285, %v286 : i1 loc("seahorn/jobs/linked_list_push_front/aws_linked_list_push_front_harness.c":27:3)
  sea.assume %v287 loc("seahorn/jobs/linked_list_push_front/aws_linked_list_push_front_harness.c":27:3)
  sea.br ^bb207 loc("seahorn/jobs/linked_list_push_front/aws_linked_list_push_front_harness.c":27:3)
^bb207:
  sea.br ^bb208
^bb208:
  %v288 = sea.const 0 : i1
  sea.assert %v288
  sea.halt
}
