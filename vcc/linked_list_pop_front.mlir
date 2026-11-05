// Exported from SeaHorn (linked_list_pop_front.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.1" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm57")
  %v1 = sea.mem.nondet "region.0" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm58")
  %v2 = sea.const 32 : i64 loc("_0")
  %v3 = sea.alloca %v2 align 8 [2] : i64 -> !sea.ptr<64> loc("_0")
  %v4 = sea.const 168 : i64 loc("_1")
  %v5 = sea.alloca %v4 align 8 [3] : i64 -> !sea.ptr<64> loc("_1")
  %v6 = sea.ptr.index %v3 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_2"("seahorn/lib/linked_list_helper.c":38:14))
  sea.br ^bb1
^bb1:
  %v7 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":38:19)
  %v8 = sea.store %v1[%v6], %v7 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":38:19)
  %v9 = sea.ptr.index %v3 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_4"("seahorn/lib/linked_list_helper.c":39:9))
  sea.br ^bb2
^bb2:
  %v10 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":39:19)
  %v11 = sea.store %v8[%v9], %v10 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":39:19)
  %v12 = sea.nondet "nd_size_t" [4] : i64 loc("_6"("seahorn/lib/linked_list_helper.c":41:19))
  sea.br ^bb3
^bb3:
  %v13 = sea.const 3 : i64 loc("_8"("seahorn/lib/linked_list_helper.c":43:14))
  %v14 = sea.icmp ult, %v12, %v13 : i64 loc("_8"("seahorn/lib/linked_list_helper.c":43:14))
  sea.cond_br %v14, ^bb17, ^bb4 loc("seahorn/lib/linked_list_helper.c":43:7)
^bb4:
  %v15 = sea.const 16 : i64 loc("malloc80.i40")
  %v16 = sea.alloca %v15 align 16 [5] : i64 -> !sea.ptr<64> loc("malloc80.i40")
  %v17 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.assume %v17 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.br ^bb5
^bb5:
  %v18 = sea.ptr.index %v16 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_27"("seahorn/lib/linked_list_helper.c":33:9))
  sea.br ^bb6
^bb6:
  %v19 = sea.const 16 : i64 loc("malloc81.i41")
  %v20 = sea.alloca %v19 align 16 [6] : i64 -> !sea.ptr<64> loc("malloc81.i41")
  %v21 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.assume %v21 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.br ^bb7
^bb7:
  %v22 = sea.ptr.index %v20 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_29"("seahorn/lib/linked_list_helper.c":33:9))
  sea.br ^bb8
^bb8:
  sea.br ^bb9
^bb9:
  %v23 = sea.store %v11[%v3], %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  sea.br ^bb10
^bb10:
  %v24 = sea.store %v23[%v18], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb11
^bb11:
  %v25 = sea.store %v24[%v16], %v20 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  sea.br ^bb12
^bb12:
  %v26 = sea.store %v25[%v22], %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  %v27 = sea.ptr.nondet "nd_linked_list_node" [7] : !sea.ptr<64> loc("_32"("seahorn/lib/linked_list_helper.c":425:19))
  sea.br ^bb13
^bb13:
  %v28 = sea.store %v26[%v20], %v27 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":425:17)
  sea.br ^bb14
^bb14:
  %v29 = sea.ptr.null : !sea.ptr<64> loc("_35"("seahorn/lib/linked_list_helper.c":426:24))
  %v30 = sea.ptr.cmp ne, %v27, %v29 : !sea.ptr<64> loc("_35"("seahorn/lib/linked_list_helper.c":426:24))
  sea.assume %v30 loc("seahorn/lib/linked_list_helper.c":426:5)
  %v31 = sea.ptr.nondet "nd_linked_list_node" [8] : !sea.ptr<64> loc("_36"("seahorn/lib/linked_list_helper.c":427:23))
  %v32 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_37"("seahorn/lib/linked_list_helper.c":427:16))
  sea.br ^bb15
^bb15:
  %v33 = sea.store %v28[%v32], %v31 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":427:21)
  sea.br ^bb16
^bb16:
  %v34 = sea.ptr.null : !sea.ptr<64> loc("_39"("seahorn/lib/linked_list_helper.c":428:28))
  %v35 = sea.ptr.cmp ne, %v31, %v34 : !sea.ptr<64> loc("_39"("seahorn/lib/linked_list_helper.c":428:28))
  sea.assume %v35 loc("seahorn/lib/linked_list_helper.c":428:5)
  sea.br ^bb37(%v33, %v31, %v20, %v16 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>)
^bb17:
  sea.br ^bb18
^bb18:
  %v36 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":12:19)
  %v37 = sea.store %v11[%v6], %v36 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":12:19)
  sea.br ^bb19
^bb19:
  %v38 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":13:19)
  %v39 = sea.store %v37[%v9], %v38 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":13:19)
  sea.br ^bb20
^bb20:
  %v40 = sea.const 2 : i64 loc("Pivot")
  %v41 = sea.icmp slt, %v12, %v40 : i64 loc("Pivot")
  sea.cond_br %v41, ^bb28, ^bb21
^bb21:
  %v42 = sea.const 16 : i64 loc("malloc78.i43")
  %v43 = sea.alloca %v42 align 16 [9] : i64 -> !sea.ptr<64> loc("malloc78.i43")
  %v44 = sea.const 16 : i64 loc("malloc79.i44")
  %v45 = sea.alloca %v44 align 16 [10] : i64 -> !sea.ptr<64> loc("malloc79.i44")
  sea.br ^bb22
^bb22:
  %v46 = sea.store %v39[%v3], %v43 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v47 = sea.ptr.index %v43 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_20"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb23
^bb23:
  %v48 = sea.store %v46[%v47], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb24
^bb24:
  %v49 = sea.store %v48[%v43], %v45 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v50 = sea.ptr.index %v45 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_22"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb25
^bb25:
  %v51 = sea.store %v49[%v50], %v43 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb26
^bb26:
  %v52 = sea.store %v51[%v45], %v9 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v53 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_24"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb27
^bb27:
  %v54 = sea.store %v52[%v53], %v45 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb37(%v54, %v45, %v45, %v43 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/linked_list_helper.c":27:3)
^bb28:
  %v55 = sea.const 0 : i64 loc("SwitchLeaf")
  %v56 = sea.icmp eq, %v12, %v55 : i64 loc("SwitchLeaf")
  sea.cond_br %v56, ^bb34, ^bb29
^bb29:
  %v57 = sea.const 16 : i64 loc("malloc.i42")
  %v58 = sea.alloca %v57 align 16 [11] : i64 -> !sea.ptr<64> loc("malloc.i42")
  sea.br ^bb30
^bb30:
  %v59 = sea.store %v39[%v3], %v58 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v60 = sea.ptr.index %v58 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_15"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb31
^bb31:
  %v61 = sea.store %v59[%v60], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb32
^bb32:
  %v62 = sea.store %v61[%v58], %v9 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v63 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_17"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb33
^bb33:
  %v64 = sea.store %v62[%v63], %v58 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb37(%v64, %v58, %v9, %v58 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/linked_list_helper.c":21:3)
^bb34:
  sea.br ^bb35
^bb35:
  %v65 = sea.store %v39[%v3], %v9 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v66 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_12"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb36
^bb36:
  %v67 = sea.store %v65[%v66], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  %v68 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":17:3)
  sea.br ^bb37(%v67, %v3, %v68, %v9 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/linked_list_helper.c":17:3)
^bb37(%v69 : !sea.mem<!sea.ptr<64>, i8>, %v70 : !sea.ptr<64>, %v71 : !sea.ptr<64>, %v72 : !sea.ptr<64>):
  %v73 = sea.const 0 : i8 loc("seahorn/jobs/linked_list_pop_front/aws_linked_list_pop_front_harness.c":11:32)
  %v74 = sea.const 168 : i64 loc("seahorn/jobs/linked_list_pop_front/aws_linked_list_pop_front_harness.c":11:32)
  %v75 = sea.memset %v0[%v5], %v73, %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs/linked_list_pop_front/aws_linked_list_pop_front_harness.c":11:32)
  sea.br ^bb38
^bb38:
  %v76 = sea.ptr.cmp ne, %v72, %v9 : !sea.ptr<64> loc("_43"("aws-c-common/include/aws/common/linked_list.inl":34:28))
  sea.assume %v76 loc("seahorn/jobs/linked_list_pop_front/aws_linked_list_pop_front_harness.c":14:3)
  sea.br ^bb39
^bb39:
  %v77 = sea.ptr.index %v5 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_45"("seahorn/lib/linked_list_helper.c":272:56))
  sea.br ^bb40
^bb40:
  %v78 = sea.store %v75[%v77], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  sea.br ^bb41
^bb41:
  %v79 = sea.ptr.index %v5 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_48"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb42
^bb42:
  %v80 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v81 = sea.store %v78[%v79], %v80 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb43
^bb43:
  %v82 = sea.ptr.index %v5 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_51"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb44
^bb44:
  %v83 = sea.store %v81[%v82], %v72 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v84 = sea.ptr.index %v5 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_52"("seahorn/lib/linked_list_helper.c":273:56))
  sea.br ^bb45
^bb45:
  %v85 = sea.store %v83[%v84], %v9 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v86 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_54"("seahorn/lib/linked_list_helper.c":124:21))
  sea.br ^bb46
^bb46:
  %v87 = sea.ptr.index %v5 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_56"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb47
^bb47:
  %v88 = sea.store %v85[%v87], %v70 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb48
^bb48:
  %v89 = sea.ptr.index %v5 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_59"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb49
^bb49:
  %v90 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v91 = sea.store %v88[%v89], %v90 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v92 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_60"("seahorn/lib/linked_list_helper.c":275:12))
  sea.br ^bb50
^bb50:
  %v93 = sea.store %v91[%v92], %v71 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":275:23)
  %v94 = sea.const 1 : i64 loc("Pivot.i.i")
  %v95 = sea.icmp slt, %v12, %v94 : i64 loc("Pivot.i.i")
  sea.cond_br %v95, ^bb63, ^bb51
^bb51:
  %v96 = sea.const 1 : i64 loc("SwitchLeaf2.i.i")
  %v97 = sea.icmp eq, %v12, %v96 : i64 loc("SwitchLeaf2.i.i")
  sea.cond_br %v97, ^bb52, ^bb64
^bb52:
  sea.br ^bb53
^bb53:
  %v98 = sea.ptr.cmp eq, %v72, %v71 : !sea.ptr<64> loc("_65"("seahorn/lib/linked_list_helper.c":289:32))
  sea.cond_br %v98, ^bb56, ^bb54 loc("seahorn/lib/linked_list_helper.c":289:16)
^bb54:
  sea.br ^bb55
^bb55:
  %v99 = sea.const 0 : i64 loc("seahorn/lib/linked_list_helper.c":292:27)
  %v100 = sea.store %v93[%v5], %v99 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":292:27)
  %v101 = sea.ptr.null : !sea.ptr<64>
  %v102 = sea.ptr.null : !sea.ptr<64>
  %v103 = sea.ptr.null : !sea.ptr<64>
  %v104 = sea.ptr.null : !sea.ptr<64>
  %v105 = sea.ptr.null : !sea.ptr<64>
  %v106 = sea.const 1 : i1
  %v107 = sea.const 0 : i1
  %v108 = sea.const 0 : i1
  sea.br ^bb90(%v101, %v102, %v103, %v104, %v105, %v106, %v107, %v108 : !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, i1, i1, i1)
^bb56:
  %v109 = sea.ptr.index %v5 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_67"("seahorn/lib/linked_list_helper.c":251:50))
  sea.br ^bb57
^bb57:
  %v110 = sea.store %v93[%v109], %v71 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v111 = sea.ptr.index %v71 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_69"("seahorn/lib/linked_list_helper.c":124:21))
  %v112 = sea.const 8 : i64 loc("_70"("seahorn/lib/linked_list_helper.c":124:21))
  %v113 = sea.ptr.dereferenceable %v111, %v112 : !sea.ptr<64>, i64 loc("_70"("seahorn/lib/linked_list_helper.c":124:21))
  sea.cond_br %v113, ^bb58, ^bb205
^bb58:
  %v114 = sea.load %v69[%v111] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_72"("seahorn/lib/linked_list_helper.c":124:21))
  %v115 = sea.ptr.index %v5 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_73"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb59
^bb59:
  %v116 = sea.store %v110[%v115], %v114 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v117 = sea.const 8 : i64 loc("_75"("seahorn/lib/linked_list_helper.c":125:21))
  %v118 = sea.ptr.dereferenceable %v71, %v117 : !sea.ptr<64>, i64 loc("_75"("seahorn/lib/linked_list_helper.c":125:21))
  sea.cond_br %v118, ^bb60, ^bb205
^bb60:
  %v119 = sea.ptr.index %v5 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_77"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb61
^bb61:
  %v120 = sea.store %v116[%v119], %v71 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb62
^bb62:
  %v121 = sea.const 1 : i64 loc("seahorn/lib/linked_list_helper.c":252:23)
  %v122 = sea.store %v120[%v5], %v121 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":252:23)
  %v123 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":291:5)
  %v124 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":291:5)
  %v125 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":291:5)
  %v126 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":291:5)
  %v127 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":291:5)
  %v128 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":291:5)
  sea.br ^bb90(%v123, %v124, %v125, %v71, %v71, %v126, %v127, %v128 : !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, i1, i1, i1) loc("seahorn/lib/linked_list_helper.c":291:5)
^bb63:
  %v129 = sea.const 0 : i64 loc("SwitchLeaf.i74.i")
  %v130 = sea.icmp eq, %v12, %v129 : i64 loc("SwitchLeaf.i74.i")
  sea.cond_br %v130, ^bb88, ^bb64
^bb64:
  sea.br ^bb65
^bb65:
  %v131 = sea.ptr.cmp eq, %v72, %v71 : !sea.ptr<64> loc("_82"("seahorn/lib/linked_list_helper.c":301:32))
  sea.cond_br %v131, ^bb75, ^bb66 loc("seahorn/lib/linked_list_helper.c":301:16)
^bb66:
  sea.br ^bb67
^bb67:
  sea.br ^bb68
^bb68:
  %v132 = sea.ptr.index %v5 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_109"("seahorn/lib/linked_list_helper.c":251:50))
  sea.br ^bb69
^bb69:
  %v133 = sea.store %v93[%v132], %v71 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v134 = sea.ptr.index %v71 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_111"("seahorn/lib/linked_list_helper.c":124:21))
  %v135 = sea.const 8 : i64 loc("_112"("seahorn/lib/linked_list_helper.c":124:21))
  %v136 = sea.ptr.dereferenceable %v134, %v135 : !sea.ptr<64>, i64 loc("_112"("seahorn/lib/linked_list_helper.c":124:21))
  sea.cond_br %v136, ^bb70, ^bb205
^bb70:
  %v137 = sea.load %v69[%v134] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_114"("seahorn/lib/linked_list_helper.c":124:21))
  %v138 = sea.ptr.index %v5 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_115"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb71
^bb71:
  %v139 = sea.store %v133[%v138], %v137 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v140 = sea.const 8 : i64 loc("_117"("seahorn/lib/linked_list_helper.c":125:21))
  %v141 = sea.ptr.dereferenceable %v71, %v140 : !sea.ptr<64>, i64 loc("_117"("seahorn/lib/linked_list_helper.c":125:21))
  sea.cond_br %v141, ^bb72, ^bb205
^bb72:
  %v142 = sea.load %v69[%v71] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_119"("seahorn/lib/linked_list_helper.c":125:21))
  %v143 = sea.ptr.index %v5 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_120"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb73
^bb73:
  %v144 = sea.store %v139[%v143], %v142 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb74
^bb74:
  %v145 = sea.const 1 : i64 loc("seahorn/lib/linked_list_helper.c":252:23)
  %v146 = sea.store %v144[%v5], %v145 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":252:23)
  %v147 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":305:5)
  %v148 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":305:5)
  %v149 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":305:5)
  %v150 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":305:5)
  %v151 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":305:5)
  %v152 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":305:5)
  sea.br ^bb90(%v147, %v148, %v149, %v142, %v71, %v150, %v151, %v152 : !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, i1, i1, i1) loc("seahorn/lib/linked_list_helper.c":305:5)
^bb75:
  %v153 = sea.ptr.index %v5 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_84"("seahorn/lib/linked_list_helper.c":257:50))
  sea.br ^bb76
^bb76:
  %v154 = sea.store %v93[%v153], %v71 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v155 = sea.ptr.index %v71 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_86"("seahorn/lib/linked_list_helper.c":124:21))
  %v156 = sea.const 8 : i64 loc("_87"("seahorn/lib/linked_list_helper.c":124:21))
  %v157 = sea.ptr.dereferenceable %v155, %v156 : !sea.ptr<64>, i64 loc("_87"("seahorn/lib/linked_list_helper.c":124:21))
  sea.cond_br %v157, ^bb77, ^bb205
^bb77:
  %v158 = sea.load %v69[%v155] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_89"("seahorn/lib/linked_list_helper.c":124:21))
  %v159 = sea.ptr.index %v5 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_90"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb78
^bb78:
  %v160 = sea.store %v154[%v159], %v158 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v161 = sea.const 8 : i64 loc("_92"("seahorn/lib/linked_list_helper.c":125:21))
  %v162 = sea.ptr.dereferenceable %v71, %v161 : !sea.ptr<64>, i64 loc("_92"("seahorn/lib/linked_list_helper.c":125:21))
  sea.cond_br %v162, ^bb79, ^bb205
^bb79:
  %v163 = sea.ptr.index %v5 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_94"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb80
^bb80:
  %v164 = sea.store %v160[%v163], %v71 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v165 = sea.const 8 : i64 loc("_95"("seahorn/lib/linked_list_helper.c":241:16))
  %v166 = sea.ptr.dereferenceable %v71, %v165 : !sea.ptr<64>, i64 loc("_95"("seahorn/lib/linked_list_helper.c":241:16))
  sea.cond_br %v166, ^bb81, ^bb205
^bb81:
  %v167 = sea.ptr.index %v5 [] strides [] offset 96 inbounds : !sea.ptr<64> loc("_96"("seahorn/lib/linked_list_helper.c":258:50))
  sea.br ^bb82
^bb82:
  %v168 = sea.store %v164[%v167], %v71 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v169 = sea.const 8 : i64 loc("_98"("seahorn/lib/linked_list_helper.c":124:21))
  %v170 = sea.ptr.dereferenceable %v155, %v169 : !sea.ptr<64>, i64 loc("_98"("seahorn/lib/linked_list_helper.c":124:21))
  sea.cond_br %v170, ^bb83, ^bb205
^bb83:
  %v171 = sea.ptr.index %v5 [] strides [] offset 104 inbounds : !sea.ptr<64> loc("_100"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb84
^bb84:
  %v172 = sea.store %v168[%v171], %v158 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v173 = sea.const 8 : i64 loc("_102"("seahorn/lib/linked_list_helper.c":125:21))
  %v174 = sea.ptr.dereferenceable %v71, %v173 : !sea.ptr<64>, i64 loc("_102"("seahorn/lib/linked_list_helper.c":125:21))
  sea.cond_br %v174, ^bb85, ^bb205
^bb85:
  %v175 = sea.load %v69[%v71] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_104"("seahorn/lib/linked_list_helper.c":125:21))
  %v176 = sea.ptr.index %v5 [] strides [] offset 112 inbounds : !sea.ptr<64> loc("_105"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb86
^bb86:
  %v177 = sea.store %v172[%v176], %v175 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb87
^bb87:
  %v178 = sea.const 2 : i64 loc("seahorn/lib/linked_list_helper.c":259:23)
  %v179 = sea.store %v177[%v5], %v178 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":259:23)
  %v180 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":303:5)
  %v181 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":303:5)
  %v182 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":303:5)
  sea.br ^bb90(%v175, %v158, %v71, %v71, %v71, %v180, %v181, %v182 : !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, i1, i1, i1) loc("seahorn/lib/linked_list_helper.c":303:5)
^bb88:
  sea.br ^bb89
^bb89:
  %v183 = sea.const 0 : i64 loc("seahorn/lib/linked_list_helper.c":283:27)
  %v184 = sea.store %v93[%v5], %v183 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":283:27)
  %v185 = sea.ptr.null : !sea.ptr<64>
  %v186 = sea.ptr.null : !sea.ptr<64>
  %v187 = sea.ptr.null : !sea.ptr<64>
  %v188 = sea.ptr.null : !sea.ptr<64>
  %v189 = sea.ptr.null : !sea.ptr<64>
  %v190 = sea.const 1 : i1
  %v191 = sea.const 0 : i1
  %v192 = sea.const 0 : i1
  sea.br ^bb90(%v185, %v186, %v187, %v188, %v189, %v190, %v191, %v192 : !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, i1, i1, i1)
^bb90(%v193 : !sea.ptr<64>, %v194 : !sea.ptr<64>, %v195 : !sea.ptr<64>, %v196 : !sea.ptr<64>, %v197 : !sea.ptr<64>, %v198 : i1, %v199 : i1, %v200 : i1):
  sea.br ^bb91
^bb91:
  sea.br ^bb92
^bb92:
  %v201 = sea.ptr.index %v72 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_130"("aws-c-common/include/aws/common/linked_list.inl":263:11))
  sea.br ^bb93
^bb93:
  %v202 = sea.load %v69[%v201] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_132"("aws-c-common/include/aws/common/linked_list.inl":263:11))
  %v203 = sea.const 8 : i64 loc("_133"("aws-c-common/include/aws/common/linked_list.inl":263:22))
  %v204 = sea.ptr.dereferenceable %v202, %v203 : !sea.ptr<64>, i64 loc("_133"("aws-c-common/include/aws/common/linked_list.inl":263:22))
  sea.cond_br %v204, ^bb94, ^bb205
^bb94:
  %v205 = sea.store %v69[%v202], %v71 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":263:22)
  sea.br ^bb95
^bb95:
  sea.br ^bb96
^bb96:
  %v206 = sea.load %v205[%v72] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_137"("aws-c-common/include/aws/common/linked_list.inl":264:11))
  %v207 = sea.ptr.index %v206 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_138"("aws-c-common/include/aws/common/linked_list.inl":264:17))
  %v208 = sea.const 8 : i64 loc("_139"("aws-c-common/include/aws/common/linked_list.inl":264:22))
  %v209 = sea.ptr.dereferenceable %v207, %v208 : !sea.ptr<64>, i64 loc("_139"("aws-c-common/include/aws/common/linked_list.inl":264:22))
  sea.cond_br %v209, ^bb97, ^bb205
^bb97:
  %v210 = sea.store %v205[%v207], %v202 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":264:22)
  %v211 = sea.const 0 : i8 loc("aws-c-common/include/aws/common/linked_list.inl":20:5)
  %v212 = sea.const 16 : i64 loc("aws-c-common/include/aws/common/linked_list.inl":20:5)
  %v213 = sea.memset %v210[%v72], %v211, %v212 inplace align 8 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/include/aws/common/linked_list.inl":20:5)
  sea.br ^bb98
^bb98:
  sea.br ^bb99
^bb99:
  sea.br ^bb100
^bb100:
  sea.br ^bb101
^bb101:
  sea.br ^bb102
^bb102:
  %v214 = sea.load %v205[%v3] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_145"("seahorn/lib/linked_list_helper.c":435:17))
  %v215 = sea.ptr.cmp eq, %v214, %v71 : !sea.ptr<64> loc("_146"("seahorn/lib/linked_list_helper.c":435:22))
  %v216 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":435:35)
  sea.cond_br %v215, ^bb103, ^bb105(%v216 : i1) loc("seahorn/lib/linked_list_helper.c":435:35)
^bb103:
  %v217 = sea.ptr.index %v71 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_148"("seahorn/lib/linked_list_helper.c":435:49))
  %v218 = sea.const 8 : i64 loc("_149"("seahorn/lib/linked_list_helper.c":435:49))
  %v219 = sea.ptr.dereferenceable %v217, %v218 : !sea.ptr<64>, i64 loc("_149"("seahorn/lib/linked_list_helper.c":435:49))
  sea.cond_br %v219, ^bb104, ^bb205
^bb104:
  %v220 = sea.load %v210[%v217] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_151"("seahorn/lib/linked_list_helper.c":435:49))
  %v221 = sea.ptr.cmp eq, %v220, %v3 : !sea.ptr<64> loc("_152"("seahorn/lib/linked_list_helper.c":435:54))
  sea.br ^bb105(%v221 : i1)
^bb105(%v222 : i1):
  %v223 = sea.const 1 : i1 loc("or.cond")
  %v224 = sea.and %v215, %v223 : i1 loc("or.cond")
  sea.cond_br %v224, ^bb106, ^bb205
^bb106:
  %v225 = sea.ptr.index %v71 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_155"("seahorn/lib/linked_list_helper.c":435:49))
  %v226 = sea.const 8 : i64 loc("_156"("seahorn/lib/linked_list_helper.c":435:49))
  %v227 = sea.ptr.dereferenceable %v225, %v226 : !sea.ptr<64>, i64 loc("_156"("seahorn/lib/linked_list_helper.c":435:49))
  sea.cond_br %v227, ^bb107, ^bb205
^bb107:
  %v228 = sea.load %v210[%v225] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_157"("seahorn/lib/linked_list_helper.c":435:49))
  %v229 = sea.ptr.cmp eq, %v228, %v3 : !sea.ptr<64> loc("_158"("seahorn/lib/linked_list_helper.c":435:54))
  sea.cond_br %v229, ^bb108, ^bb205 loc("seahorn/jobs/linked_list_pop_front/aws_linked_list_pop_front_harness.c":32:3)
^bb108:
  %v230 = sea.load %v210[%v6] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_160"("seahorn/jobs/linked_list_pop_front/aws_linked_list_pop_front_harness.c":35:3))
  %v231 = sea.ptr.null : !sea.ptr<64> loc("_161"("seahorn/jobs/linked_list_pop_front/aws_linked_list_pop_front_harness.c":35:3))
  %v232 = sea.ptr.cmp eq, %v230, %v231 : !sea.ptr<64> loc("_161"("seahorn/jobs/linked_list_pop_front/aws_linked_list_pop_front_harness.c":35:3))
  sea.cond_br %v232, ^bb109, ^bb205 loc("seahorn/jobs/linked_list_pop_front/aws_linked_list_pop_front_harness.c":35:3)
^bb109:
  %v233 = sea.load %v213[%v9] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_163"("seahorn/jobs/linked_list_pop_front/aws_linked_list_pop_front_harness.c":36:3))
  %v234 = sea.ptr.null : !sea.ptr<64> loc("_164"("seahorn/jobs/linked_list_pop_front/aws_linked_list_pop_front_harness.c":36:3))
  %v235 = sea.ptr.cmp eq, %v233, %v234 : !sea.ptr<64> loc("_164"("seahorn/jobs/linked_list_pop_front/aws_linked_list_pop_front_harness.c":36:3))
  sea.cond_br %v235, ^bb110, ^bb205 loc("seahorn/jobs/linked_list_pop_front/aws_linked_list_pop_front_harness.c":36:3)
^bb110:
  sea.br ^bb111
^bb111:
  sea.cond_br %v198, ^bb154, ^bb112 loc("seahorn/lib/linked_list_helper.c":135:7)
^bb112:
  sea.br ^bb113
^bb113:
  sea.cond_br %v199, ^bb141, ^bb114 loc("seahorn/lib/linked_list_helper.c":138:14)
^bb114:
  sea.br ^bb115
^bb115:
  sea.cond_br %v200, ^bb117, ^bb116 loc("seahorn/lib/linked_list_helper.c":143:14)
^bb116:
  %v236 = sea.const 0 : i1
  sea.br ^bb157(%v236 : i1)
^bb117:
  sea.br ^bb118
^bb118:
  sea.br ^bb119
^bb119:
  %v237 = sea.ptr.cmp eq, %v197, %v71 : !sea.ptr<64> loc("_194"("seahorn/lib/linked_list_helper.c":113:15))
  %v238 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":113:30)
  sea.cond_br %v237, ^bb120, ^bb157(%v238 : i1) loc("seahorn/lib/linked_list_helper.c":113:30)
^bb120:
  %v239 = sea.const 8 : i64 loc("_196"("seahorn/lib/linked_list_helper.c":113:39))
  %v240 = sea.ptr.dereferenceable %v71, %v239 : !sea.ptr<64>, i64 loc("_196"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v240, ^bb121, ^bb205
^bb121:
  %v241 = sea.load %v205[%v71] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_198"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb122
^bb122:
  %v242 = sea.ptr.cmp eq, %v241, %v196 : !sea.ptr<64> loc("_199"("seahorn/lib/linked_list_helper.c":113:44))
  %v243 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":145:66)
  sea.cond_br %v242, ^bb123, ^bb157(%v243 : i1) loc("seahorn/lib/linked_list_helper.c":145:66)
^bb123:
  sea.br ^bb124
^bb124:
  %v244 = sea.const 8 : i64 loc("_202"("seahorn/lib/linked_list_helper.c":146:43))
  %v245 = sea.ptr.dereferenceable %v71, %v244 : !sea.ptr<64>, i64 loc("_202"("seahorn/lib/linked_list_helper.c":146:43))
  sea.cond_br %v245, ^bb125, ^bb205
^bb125:
  sea.br ^bb126
^bb126:
  %v246 = sea.ptr.cmp eq, %v195, %v196 : !sea.ptr<64> loc("_205"("seahorn/lib/linked_list_helper.c":108:15))
  %v247 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v246, ^bb127, ^bb157(%v247 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb127:
  %v248 = sea.ptr.index %v195 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_207"("seahorn/lib/linked_list_helper.c":108:39))
  %v249 = sea.const 8 : i64 loc("_208"("seahorn/lib/linked_list_helper.c":108:39))
  %v250 = sea.ptr.dereferenceable %v248, %v249 : !sea.ptr<64>, i64 loc("_208"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v250, ^bb128, ^bb205
^bb128:
  %v251 = sea.load %v213[%v248] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_210"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb129
^bb129:
  %v252 = sea.ptr.cmp eq, %v251, %v194 : !sea.ptr<64> loc("_211"("seahorn/lib/linked_list_helper.c":108:44))
  %v253 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v252, ^bb130, ^bb157(%v253 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb130:
  sea.br ^bb131
^bb131:
  %v254 = sea.const 8 : i64 loc("_214"("seahorn/lib/linked_list_helper.c":113:39))
  %v255 = sea.ptr.dereferenceable %v195, %v254 : !sea.ptr<64>, i64 loc("_214"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v255, ^bb132, ^bb205
^bb132:
  %v256 = sea.load %v213[%v195] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_216"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb133
^bb133:
  %v257 = sea.ptr.cmp eq, %v256, %v193 : !sea.ptr<64> loc("_217"("seahorn/lib/linked_list_helper.c":113:44))
  %v258 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":146:67)
  sea.cond_br %v257, ^bb134, ^bb157(%v258 : i1) loc("seahorn/lib/linked_list_helper.c":146:67)
^bb134:
  sea.br ^bb135
^bb135:
  sea.br ^bb136
^bb136:
  %v259 = sea.load %v213[%v86] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_221"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb137
^bb137:
  %v260 = sea.ptr.cmp eq, %v259, %v70 : !sea.ptr<64> loc("_222"("seahorn/lib/linked_list_helper.c":108:44))
  %v261 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v260, ^bb138, ^bb157(%v261 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb138:
  sea.br ^bb139
^bb139:
  sea.br ^bb140
^bb140:
  %v262 = sea.const 1 : i1
  sea.br ^bb157(%v262 : i1)
^bb141:
  sea.br ^bb142
^bb142:
  sea.br ^bb143
^bb143:
  %v263 = sea.ptr.cmp eq, %v197, %v71 : !sea.ptr<64> loc("_175"("seahorn/lib/linked_list_helper.c":113:15))
  %v264 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":113:30)
  sea.cond_br %v263, ^bb144, ^bb157(%v264 : i1) loc("seahorn/lib/linked_list_helper.c":113:30)
^bb144:
  %v265 = sea.const 8 : i64 loc("_177"("seahorn/lib/linked_list_helper.c":113:39))
  %v266 = sea.ptr.dereferenceable %v71, %v265 : !sea.ptr<64>, i64 loc("_177"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v266, ^bb145, ^bb205
^bb145:
  %v267 = sea.load %v205[%v71] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_179"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb146
^bb146:
  %v268 = sea.ptr.cmp eq, %v267, %v196 : !sea.ptr<64> loc("_180"("seahorn/lib/linked_list_helper.c":113:44))
  %v269 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":140:66)
  sea.cond_br %v268, ^bb147, ^bb157(%v269 : i1) loc("seahorn/lib/linked_list_helper.c":140:66)
^bb147:
  sea.br ^bb148
^bb148:
  sea.br ^bb149
^bb149:
  %v270 = sea.load %v213[%v86] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_184"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb150
^bb150:
  %v271 = sea.ptr.cmp eq, %v270, %v70 : !sea.ptr<64> loc("_185"("seahorn/lib/linked_list_helper.c":108:44))
  %v272 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v271, ^bb151, ^bb157(%v272 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb151:
  sea.br ^bb152
^bb152:
  sea.br ^bb153
^bb153:
  %v273 = sea.const 1 : i1
  sea.br ^bb157(%v273 : i1)
^bb154:
  sea.br ^bb155
^bb155:
  sea.br ^bb156
^bb156:
  %v274 = sea.const 1 : i1
  sea.br ^bb157(%v274 : i1)
^bb157(%v275 : i1):
  sea.br ^bb158
^bb158:
  sea.cond_br %v198, ^bb201, ^bb159 loc("seahorn/lib/linked_list_helper.c":135:7)
^bb159:
  sea.br ^bb160
^bb160:
  sea.cond_br %v199, ^bb188, ^bb161 loc("seahorn/lib/linked_list_helper.c":138:14)
^bb161:
  sea.br ^bb162
^bb162:
  sea.cond_br %v200, ^bb164, ^bb163 loc("seahorn/lib/linked_list_helper.c":143:14)
^bb163:
  %v276 = sea.const 0 : i1
  sea.br ^bb204(%v276 : i1)
^bb164:
  sea.br ^bb165
^bb165:
  sea.br ^bb166
^bb166:
  %v277 = sea.ptr.cmp eq, %v197, %v71 : !sea.ptr<64> loc("_255"("seahorn/lib/linked_list_helper.c":113:15))
  %v278 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":113:30)
  sea.cond_br %v277, ^bb167, ^bb204(%v278 : i1) loc("seahorn/lib/linked_list_helper.c":113:30)
^bb167:
  %v279 = sea.const 8 : i64 loc("_257"("seahorn/lib/linked_list_helper.c":113:39))
  %v280 = sea.ptr.dereferenceable %v71, %v279 : !sea.ptr<64>, i64 loc("_257"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v280, ^bb168, ^bb205
^bb168:
  %v281 = sea.load %v205[%v71] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_259"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb169
^bb169:
  %v282 = sea.ptr.cmp eq, %v281, %v196 : !sea.ptr<64> loc("_260"("seahorn/lib/linked_list_helper.c":113:44))
  %v283 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":145:66)
  sea.cond_br %v282, ^bb170, ^bb204(%v283 : i1) loc("seahorn/lib/linked_list_helper.c":145:66)
^bb170:
  sea.br ^bb171
^bb171:
  %v284 = sea.const 8 : i64 loc("_263"("seahorn/lib/linked_list_helper.c":146:43))
  %v285 = sea.ptr.dereferenceable %v71, %v284 : !sea.ptr<64>, i64 loc("_263"("seahorn/lib/linked_list_helper.c":146:43))
  sea.cond_br %v285, ^bb172, ^bb205
^bb172:
  sea.br ^bb173
^bb173:
  %v286 = sea.ptr.cmp eq, %v195, %v196 : !sea.ptr<64> loc("_266"("seahorn/lib/linked_list_helper.c":108:15))
  %v287 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v286, ^bb174, ^bb204(%v287 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb174:
  %v288 = sea.ptr.index %v195 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_268"("seahorn/lib/linked_list_helper.c":108:39))
  %v289 = sea.const 8 : i64 loc("_269"("seahorn/lib/linked_list_helper.c":108:39))
  %v290 = sea.ptr.dereferenceable %v288, %v289 : !sea.ptr<64>, i64 loc("_269"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v290, ^bb175, ^bb205
^bb175:
  %v291 = sea.load %v213[%v288] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_271"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb176
^bb176:
  %v292 = sea.ptr.cmp eq, %v291, %v194 : !sea.ptr<64> loc("_272"("seahorn/lib/linked_list_helper.c":108:44))
  %v293 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v292, ^bb177, ^bb204(%v293 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb177:
  sea.br ^bb178
^bb178:
  %v294 = sea.const 8 : i64 loc("_275"("seahorn/lib/linked_list_helper.c":113:39))
  %v295 = sea.ptr.dereferenceable %v195, %v294 : !sea.ptr<64>, i64 loc("_275"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v295, ^bb179, ^bb205
^bb179:
  %v296 = sea.load %v213[%v195] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_277"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb180
^bb180:
  %v297 = sea.ptr.cmp eq, %v296, %v193 : !sea.ptr<64> loc("_278"("seahorn/lib/linked_list_helper.c":113:44))
  %v298 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":146:67)
  sea.cond_br %v297, ^bb181, ^bb204(%v298 : i1) loc("seahorn/lib/linked_list_helper.c":146:67)
^bb181:
  sea.br ^bb182
^bb182:
  sea.br ^bb183
^bb183:
  %v299 = sea.load %v213[%v86] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_282"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb184
^bb184:
  %v300 = sea.ptr.cmp eq, %v299, %v70 : !sea.ptr<64> loc("_283"("seahorn/lib/linked_list_helper.c":108:44))
  %v301 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v300, ^bb185, ^bb204(%v301 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb185:
  sea.br ^bb186
^bb186:
  sea.br ^bb187
^bb187:
  %v302 = sea.const 1 : i1
  sea.br ^bb204(%v302 : i1)
^bb188:
  sea.br ^bb189
^bb189:
  sea.br ^bb190
^bb190:
  %v303 = sea.ptr.cmp eq, %v197, %v71 : !sea.ptr<64> loc("_236"("seahorn/lib/linked_list_helper.c":113:15))
  %v304 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":113:30)
  sea.cond_br %v303, ^bb191, ^bb204(%v304 : i1) loc("seahorn/lib/linked_list_helper.c":113:30)
^bb191:
  %v305 = sea.const 8 : i64 loc("_238"("seahorn/lib/linked_list_helper.c":113:39))
  %v306 = sea.ptr.dereferenceable %v71, %v305 : !sea.ptr<64>, i64 loc("_238"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v306, ^bb192, ^bb205
^bb192:
  %v307 = sea.load %v205[%v71] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_240"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb193
^bb193:
  %v308 = sea.ptr.cmp eq, %v307, %v196 : !sea.ptr<64> loc("_241"("seahorn/lib/linked_list_helper.c":113:44))
  %v309 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":140:66)
  sea.cond_br %v308, ^bb194, ^bb204(%v309 : i1) loc("seahorn/lib/linked_list_helper.c":140:66)
^bb194:
  sea.br ^bb195
^bb195:
  sea.br ^bb196
^bb196:
  %v310 = sea.load %v213[%v86] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_245"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb197
^bb197:
  %v311 = sea.ptr.cmp eq, %v310, %v70 : !sea.ptr<64> loc("_246"("seahorn/lib/linked_list_helper.c":108:44))
  %v312 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v311, ^bb198, ^bb204(%v312 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb198:
  sea.br ^bb199
^bb199:
  sea.br ^bb200
^bb200:
  %v313 = sea.const 1 : i1
  sea.br ^bb204(%v313 : i1)
^bb201:
  sea.br ^bb202
^bb202:
  sea.br ^bb203
^bb203:
  %v314 = sea.const 1 : i1
  sea.br ^bb204(%v314 : i1)
^bb204(%v315 : i1):
  %v316 = sea.const 1 : i1 loc("seahorn/jobs/linked_list_pop_front/aws_linked_list_pop_front_harness.c":38:3)
  %v317 = sea.xor %v315, %v316 : i1 loc("seahorn/jobs/linked_list_pop_front/aws_linked_list_pop_front_harness.c":38:3)
  sea.assume %v317 loc("seahorn/jobs/linked_list_pop_front/aws_linked_list_pop_front_harness.c":38:3)
  sea.br ^bb205 loc("seahorn/jobs/linked_list_pop_front/aws_linked_list_pop_front_harness.c":38:3)
^bb205:
  sea.br ^bb206
^bb206:
  %v318 = sea.const 0 : i1
  sea.assert %v318
  sea.halt
}
