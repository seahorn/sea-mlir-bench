// Exported from SeaHorn (linked_list_swap_contents.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.1" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm130")
  %v1 = sea.mem.nondet "region.161" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm131")
  %v2 = sea.mem.nondet "region.0" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm132")
  %v3 = sea.const 32 : i64 loc("_0")
  %v4 = sea.alloca %v3 align 8 [3] : i64 -> !sea.ptr<64> loc("_0")
  %v5 = sea.const 32 : i64 loc("_1")
  %v6 = sea.alloca %v5 align 8 [4] : i64 -> !sea.ptr<64> loc("_1")
  %v7 = sea.const 168 : i64 loc("_2")
  %v8 = sea.alloca %v7 align 8 [5] : i64 -> !sea.ptr<64> loc("_2")
  %v9 = sea.const 168 : i64 loc("_3")
  %v10 = sea.alloca %v9 align 8 [6] : i64 -> !sea.ptr<64> loc("_3")
  %v11 = sea.ptr.index %v4 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_4"("seahorn/lib/linked_list_helper.c":84:14))
  sea.br ^bb1
^bb1:
  %v12 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":84:19)
  %v13 = sea.store %v2[%v11], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":84:19)
  %v14 = sea.ptr.index %v4 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_6"("seahorn/lib/linked_list_helper.c":85:9))
  sea.br ^bb2
^bb2:
  %v15 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":85:19)
  %v16 = sea.store %v13[%v14], %v15 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":85:19)
  %v17 = sea.nondet "nd_size_t" [7] : i64 loc("_8"("seahorn/lib/linked_list_helper.c":87:19))
  sea.br ^bb3
^bb3:
  %v18 = sea.const 3 : i64 loc("_10"("seahorn/lib/linked_list_helper.c":89:14))
  %v19 = sea.icmp ult, %v17, %v18 : i64 loc("_10"("seahorn/lib/linked_list_helper.c":89:14))
  sea.cond_br %v19, ^bb17, ^bb4 loc("seahorn/lib/linked_list_helper.c":89:7)
^bb4:
  %v20 = sea.const 16 : i64 loc("malloc224.i74")
  %v21 = sea.alloca %v20 align 16 [8] : i64 -> !sea.ptr<64> loc("malloc224.i74")
  %v22 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.assume %v22 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.br ^bb5
^bb5:
  %v23 = sea.ptr.index %v21 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_29"("seahorn/lib/linked_list_helper.c":33:9))
  sea.br ^bb6
^bb6:
  %v24 = sea.const 16 : i64 loc("malloc225.i75")
  %v25 = sea.alloca %v24 align 16 [9] : i64 -> !sea.ptr<64> loc("malloc225.i75")
  %v26 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.assume %v26 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.br ^bb7
^bb7:
  %v27 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":32:14)
  %v28 = sea.store %v16[%v25], %v27 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":32:14)
  %v29 = sea.ptr.index %v25 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_31"("seahorn/lib/linked_list_helper.c":33:9))
  sea.br ^bb8
^bb8:
  sea.br ^bb9
^bb9:
  %v30 = sea.store %v28[%v4], %v21 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  sea.br ^bb10
^bb10:
  %v31 = sea.store %v30[%v23], %v4 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  %v32 = sea.ptr.nondet "nd_linked_list_node" [10] : !sea.ptr<64> loc("_33"("seahorn/lib/linked_list_helper.c":425:19))
  sea.br ^bb11
^bb11:
  %v33 = sea.store %v31[%v21], %v32 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":425:17)
  sea.br ^bb12
^bb12:
  %v34 = sea.ptr.null : !sea.ptr<64> loc("_36"("seahorn/lib/linked_list_helper.c":426:24))
  %v35 = sea.ptr.cmp ne, %v32, %v34 : !sea.ptr<64> loc("_36"("seahorn/lib/linked_list_helper.c":426:24))
  sea.assume %v35 loc("seahorn/lib/linked_list_helper.c":426:5)
  %v36 = sea.ptr.nondet "nd_linked_list_node" [11] : !sea.ptr<64> loc("_37"("seahorn/lib/linked_list_helper.c":427:23))
  sea.br ^bb13
^bb13:
  %v37 = sea.store %v33[%v29], %v36 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":427:21)
  sea.br ^bb14
^bb14:
  %v38 = sea.ptr.null : !sea.ptr<64> loc("_39"("seahorn/lib/linked_list_helper.c":428:28))
  %v39 = sea.ptr.cmp ne, %v36, %v38 : !sea.ptr<64> loc("_39"("seahorn/lib/linked_list_helper.c":428:28))
  sea.assume %v39 loc("seahorn/lib/linked_list_helper.c":428:5)
  sea.br ^bb15
^bb15:
  %v40 = sea.store %v37[%v25], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v41 = sea.ptr.index %v4 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_41"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb16
^bb16:
  %v42 = sea.store %v40[%v41], %v25 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb37(%v42, %v36, %v32, %v25, %v21 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>)
^bb17:
  sea.br ^bb18
^bb18:
  %v43 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":12:19)
  %v44 = sea.store %v16[%v11], %v43 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":12:19)
  sea.br ^bb19
^bb19:
  %v45 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":13:19)
  %v46 = sea.store %v44[%v14], %v45 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":13:19)
  sea.br ^bb20
^bb20:
  %v47 = sea.const 2 : i64 loc("Pivot")
  %v48 = sea.icmp slt, %v17, %v47 : i64 loc("Pivot")
  sea.cond_br %v48, ^bb28, ^bb21
^bb21:
  %v49 = sea.const 16 : i64 loc("malloc222.i77")
  %v50 = sea.alloca %v49 align 16 [12] : i64 -> !sea.ptr<64> loc("malloc222.i77")
  %v51 = sea.const 16 : i64 loc("malloc223.i78")
  %v52 = sea.alloca %v51 align 16 [13] : i64 -> !sea.ptr<64> loc("malloc223.i78")
  sea.br ^bb22
^bb22:
  %v53 = sea.store %v46[%v4], %v50 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v54 = sea.ptr.index %v50 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_22"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb23
^bb23:
  %v55 = sea.store %v53[%v54], %v4 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb24
^bb24:
  %v56 = sea.store %v55[%v50], %v52 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v57 = sea.ptr.index %v52 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_24"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb25
^bb25:
  %v58 = sea.store %v56[%v57], %v50 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb26
^bb26:
  %v59 = sea.store %v58[%v52], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v60 = sea.ptr.index %v4 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_26"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb27
^bb27:
  %v61 = sea.store %v59[%v60], %v52 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb37(%v61, %v50, %v52, %v52, %v50 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/linked_list_helper.c":27:3)
^bb28:
  %v62 = sea.const 0 : i64 loc("SwitchLeaf")
  %v63 = sea.icmp eq, %v17, %v62 : i64 loc("SwitchLeaf")
  sea.cond_br %v63, ^bb34, ^bb29
^bb29:
  %v64 = sea.const 16 : i64 loc("malloc.i76")
  %v65 = sea.alloca %v64 align 16 [14] : i64 -> !sea.ptr<64> loc("malloc.i76")
  sea.br ^bb30
^bb30:
  %v66 = sea.store %v46[%v4], %v65 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v67 = sea.ptr.index %v65 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_17"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb31
^bb31:
  %v68 = sea.store %v66[%v67], %v4 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb32
^bb32:
  %v69 = sea.store %v68[%v65], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v70 = sea.ptr.index %v4 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_19"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb33
^bb33:
  %v71 = sea.store %v69[%v70], %v65 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb37(%v71, %v4, %v14, %v65, %v65 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/linked_list_helper.c":21:3)
^bb34:
  sea.br ^bb35
^bb35:
  %v72 = sea.store %v46[%v4], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v73 = sea.ptr.index %v4 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_14"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb36
^bb36:
  %v74 = sea.store %v72[%v73], %v4 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  %v75 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":17:3)
  %v76 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":17:3)
  sea.br ^bb37(%v74, %v75, %v76, %v4, %v14 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/linked_list_helper.c":17:3)
^bb37(%v77 : !sea.mem<!sea.ptr<64>, i8>, %v78 : !sea.ptr<64>, %v79 : !sea.ptr<64>, %v80 : !sea.ptr<64>, %v81 : !sea.ptr<64>):
  %v82 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_46"("seahorn/lib/linked_list_helper.c":84:14))
  sea.br ^bb38
^bb38:
  %v83 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":84:19)
  %v84 = sea.store %v77[%v82], %v83 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":84:19)
  %v85 = sea.ptr.index %v6 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_48"("seahorn/lib/linked_list_helper.c":85:9))
  sea.br ^bb39
^bb39:
  %v86 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":85:19)
  %v87 = sea.store %v84[%v85], %v86 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":85:19)
  %v88 = sea.nondet "nd_size_t" [15] : i64 loc("_50"("seahorn/lib/linked_list_helper.c":87:19))
  sea.br ^bb40
^bb40:
  %v89 = sea.const 3 : i64 loc("_52"("seahorn/lib/linked_list_helper.c":89:14))
  %v90 = sea.icmp ult, %v88, %v89 : i64 loc("_52"("seahorn/lib/linked_list_helper.c":89:14))
  sea.cond_br %v90, ^bb54, ^bb41 loc("seahorn/lib/linked_list_helper.c":89:7)
^bb41:
  %v91 = sea.const 16 : i64 loc("malloc229.i79")
  %v92 = sea.alloca %v91 align 16 [16] : i64 -> !sea.ptr<64> loc("malloc229.i79")
  %v93 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.assume %v93 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.br ^bb42
^bb42:
  %v94 = sea.ptr.index %v92 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_71"("seahorn/lib/linked_list_helper.c":33:9))
  sea.br ^bb43
^bb43:
  %v95 = sea.const 16 : i64 loc("malloc230.i80")
  %v96 = sea.alloca %v95 align 16 [17] : i64 -> !sea.ptr<64> loc("malloc230.i80")
  %v97 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.assume %v97 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.br ^bb44
^bb44:
  %v98 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":32:14)
  %v99 = sea.store %v87[%v96], %v98 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":32:14)
  %v100 = sea.ptr.index %v96 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_73"("seahorn/lib/linked_list_helper.c":33:9))
  sea.br ^bb45
^bb45:
  sea.br ^bb46
^bb46:
  %v101 = sea.store %v99[%v6], %v92 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  sea.br ^bb47
^bb47:
  %v102 = sea.store %v101[%v94], %v6 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  %v103 = sea.ptr.nondet "nd_linked_list_node" [18] : !sea.ptr<64> loc("_75"("seahorn/lib/linked_list_helper.c":425:19))
  sea.br ^bb48
^bb48:
  %v104 = sea.store %v102[%v92], %v103 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":425:17)
  sea.br ^bb49
^bb49:
  %v105 = sea.ptr.null : !sea.ptr<64> loc("_78"("seahorn/lib/linked_list_helper.c":426:24))
  %v106 = sea.ptr.cmp ne, %v103, %v105 : !sea.ptr<64> loc("_78"("seahorn/lib/linked_list_helper.c":426:24))
  sea.assume %v106 loc("seahorn/lib/linked_list_helper.c":426:5)
  %v107 = sea.ptr.nondet "nd_linked_list_node" [19] : !sea.ptr<64> loc("_79"("seahorn/lib/linked_list_helper.c":427:23))
  sea.br ^bb50
^bb50:
  %v108 = sea.store %v104[%v100], %v107 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":427:21)
  sea.br ^bb51
^bb51:
  %v109 = sea.ptr.null : !sea.ptr<64> loc("_81"("seahorn/lib/linked_list_helper.c":428:28))
  %v110 = sea.ptr.cmp ne, %v107, %v109 : !sea.ptr<64> loc("_81"("seahorn/lib/linked_list_helper.c":428:28))
  sea.assume %v110 loc("seahorn/lib/linked_list_helper.c":428:5)
  sea.br ^bb52
^bb52:
  %v111 = sea.store %v108[%v96], %v85 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v112 = sea.ptr.index %v6 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_83"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb53
^bb53:
  %v113 = sea.store %v111[%v112], %v96 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb74(%v113, %v107, %v103, %v96, %v92 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>)
^bb54:
  sea.br ^bb55
^bb55:
  %v114 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":12:19)
  %v115 = sea.store %v87[%v82], %v114 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":12:19)
  sea.br ^bb56
^bb56:
  %v116 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":13:19)
  %v117 = sea.store %v115[%v85], %v116 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":13:19)
  sea.br ^bb57
^bb57:
  %v118 = sea.const 2 : i64 loc("Pivot4")
  %v119 = sea.icmp slt, %v88, %v118 : i64 loc("Pivot4")
  sea.cond_br %v119, ^bb65, ^bb58
^bb58:
  %v120 = sea.const 16 : i64 loc("malloc227.i82")
  %v121 = sea.alloca %v120 align 16 [20] : i64 -> !sea.ptr<64> loc("malloc227.i82")
  %v122 = sea.const 16 : i64 loc("malloc228.i83")
  %v123 = sea.alloca %v122 align 16 [21] : i64 -> !sea.ptr<64> loc("malloc228.i83")
  sea.br ^bb59
^bb59:
  %v124 = sea.store %v117[%v6], %v121 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v125 = sea.ptr.index %v121 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_64"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb60
^bb60:
  %v126 = sea.store %v124[%v125], %v6 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb61
^bb61:
  %v127 = sea.store %v126[%v121], %v123 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v128 = sea.ptr.index %v123 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_66"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb62
^bb62:
  %v129 = sea.store %v127[%v128], %v121 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb63
^bb63:
  %v130 = sea.store %v129[%v123], %v85 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v131 = sea.ptr.index %v6 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_68"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb64
^bb64:
  %v132 = sea.store %v130[%v131], %v123 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb74(%v132, %v121, %v123, %v123, %v121 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/linked_list_helper.c":27:3)
^bb65:
  %v133 = sea.const 0 : i64 loc("SwitchLeaf2")
  %v134 = sea.icmp eq, %v88, %v133 : i64 loc("SwitchLeaf2")
  sea.cond_br %v134, ^bb71, ^bb66
^bb66:
  %v135 = sea.const 16 : i64 loc("malloc226.i81")
  %v136 = sea.alloca %v135 align 16 [22] : i64 -> !sea.ptr<64> loc("malloc226.i81")
  sea.br ^bb67
^bb67:
  %v137 = sea.store %v117[%v6], %v136 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v138 = sea.ptr.index %v136 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_59"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb68
^bb68:
  %v139 = sea.store %v137[%v138], %v6 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb69
^bb69:
  %v140 = sea.store %v139[%v136], %v85 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v141 = sea.ptr.index %v6 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_61"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb70
^bb70:
  %v142 = sea.store %v140[%v141], %v136 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb74(%v142, %v6, %v85, %v136, %v136 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/linked_list_helper.c":21:3)
^bb71:
  sea.br ^bb72
^bb72:
  %v143 = sea.store %v117[%v6], %v85 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v144 = sea.ptr.index %v6 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_56"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb73
^bb73:
  %v145 = sea.store %v143[%v144], %v6 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  %v146 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":17:3)
  %v147 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":17:3)
  sea.br ^bb74(%v145, %v146, %v147, %v6, %v85 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/linked_list_helper.c":17:3)
^bb74(%v148 : !sea.mem<!sea.ptr<64>, i8>, %v149 : !sea.ptr<64>, %v150 : !sea.ptr<64>, %v151 : !sea.ptr<64>, %v152 : !sea.ptr<64>):
  %v153 = sea.const 0 : i8 loc("seahorn/jobs/linked_list_swap_contents/aws_linked_list_swap_contents_harness.c":14:32)
  %v154 = sea.const 168 : i64 loc("seahorn/jobs/linked_list_swap_contents/aws_linked_list_swap_contents_harness.c":14:32)
  %v155 = sea.memset %v0[%v8], %v153, %v154 inplace align 8 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs/linked_list_swap_contents/aws_linked_list_swap_contents_harness.c":14:32)
  %v156 = sea.const 0 : i8 loc("seahorn/jobs/linked_list_swap_contents/aws_linked_list_swap_contents_harness.c":15:32)
  %v157 = sea.const 168 : i64 loc("seahorn/jobs/linked_list_swap_contents/aws_linked_list_swap_contents_harness.c":15:32)
  %v158 = sea.memset %v1[%v10], %v156, %v157 inplace align 8 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs/linked_list_swap_contents/aws_linked_list_swap_contents_harness.c":15:32)
  %v159 = sea.ptr.index %v4 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_88"("seahorn/jobs/linked_list_swap_contents/aws_linked_list_swap_contents_harness.c":16:60))
  %v160 = sea.ptr.index %v8 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_89"("seahorn/lib/linked_list_helper.c":358:56))
  sea.br ^bb75
^bb75:
  %v161 = sea.store %v155[%v160], %v4 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  sea.br ^bb76
^bb76:
  %v162 = sea.ptr.index %v8 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_92"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb77
^bb77:
  %v163 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v164 = sea.store %v161[%v162], %v163 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb78
^bb78:
  %v165 = sea.ptr.index %v8 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_95"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb79
^bb79:
  %v166 = sea.store %v164[%v165], %v81 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v167 = sea.ptr.index %v8 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_96"("seahorn/lib/linked_list_helper.c":359:56))
  sea.br ^bb80
^bb80:
  %v168 = sea.store %v166[%v167], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  sea.br ^bb81
^bb81:
  %v169 = sea.ptr.index %v8 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_99"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb82
^bb82:
  %v170 = sea.store %v168[%v169], %v80 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb83
^bb83:
  %v171 = sea.ptr.index %v8 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_102"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb84
^bb84:
  %v172 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v173 = sea.store %v170[%v171], %v172 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v174 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_103"("seahorn/lib/linked_list_helper.c":360:12))
  sea.br ^bb85
^bb85:
  %v175 = sea.store %v173[%v174], %v81 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":360:23)
  %v176 = sea.ptr.index %v8 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_105"("seahorn/lib/linked_list_helper.c":361:12))
  sea.br ^bb86
^bb86:
  %v177 = sea.store %v175[%v176], %v80 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":361:27)
  %v178 = sea.ptr.cmp eq, %v81, %v80 : !sea.ptr<64> loc("_107"("seahorn/lib/linked_list_helper.c":362:13))
  sea.cond_br %v178, ^bb119, ^bb87 loc("seahorn/lib/linked_list_helper.c":362:7)
^bb87:
  %v179 = sea.const 1 : i64 loc("Pivot.i.i")
  %v180 = sea.icmp slt, %v17, %v179 : i64 loc("Pivot.i.i")
  sea.cond_br %v180, ^bb98, ^bb88
^bb88:
  %v181 = sea.const 1 : i64 loc("SwitchLeaf3.i.i")
  %v182 = sea.icmp eq, %v17, %v181 : i64 loc("SwitchLeaf3.i.i")
  sea.cond_br %v182, ^bb89, ^bb99
^bb89:
  sea.br ^bb90
^bb90:
  sea.br ^bb91
^bb91:
  %v183 = sea.ptr.index %v8 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_124"("seahorn/lib/linked_list_helper.c":384:64))
  sea.br ^bb92
^bb92:
  %v184 = sea.store %v177[%v183], %v81 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v185 = sea.ptr.index %v81 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_126"("seahorn/lib/linked_list_helper.c":124:21))
  sea.br ^bb93
^bb93:
  %v186 = sea.load %v148[%v185] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_128"("seahorn/lib/linked_list_helper.c":124:21))
  %v187 = sea.ptr.index %v8 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_129"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb94
^bb94:
  %v188 = sea.store %v184[%v187], %v186 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb95
^bb95:
  %v189 = sea.ptr.index %v8 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_132"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb96
^bb96:
  %v190 = sea.store %v188[%v189], %v79 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb97
^bb97:
  %v191 = sea.const 1 : i64 loc("seahorn/lib/linked_list_helper.c":0:0)
  %v192 = sea.store %v190[%v8], %v191 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":0:0)
  %v193 = sea.ptr.null : !sea.ptr<64>
  %v194 = sea.ptr.null : !sea.ptr<64>
  %v195 = sea.ptr.null : !sea.ptr<64>
  sea.br ^bb126(%v192, %v193, %v194, %v195, %v79, %v81 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>)
^bb98:
  %v196 = sea.const 0 : i64 loc("SwitchLeaf.i.i")
  %v197 = sea.icmp eq, %v17, %v196 : i64 loc("SwitchLeaf.i.i")
  sea.cond_br %v197, ^bb117, ^bb99
^bb99:
  sea.br ^bb100
^bb100:
  sea.br ^bb101
^bb101:
  %v198 = sea.ptr.index %v8 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_137"("seahorn/lib/linked_list_helper.c":403:64))
  sea.br ^bb102
^bb102:
  %v199 = sea.store %v177[%v198], %v81 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v200 = sea.ptr.index %v81 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_139"("seahorn/lib/linked_list_helper.c":124:21))
  sea.br ^bb103
^bb103:
  %v201 = sea.load %v148[%v200] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_141"("seahorn/lib/linked_list_helper.c":124:21))
  %v202 = sea.ptr.index %v8 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_142"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb104
^bb104:
  %v203 = sea.store %v199[%v202], %v201 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb105
^bb105:
  %v204 = sea.ptr.index %v8 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_145"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb106
^bb106:
  %v205 = sea.store %v203[%v204], %v79 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb107
^bb107:
  sea.br ^bb108
^bb108:
  sea.br ^bb109
^bb109:
  %v206 = sea.ptr.index %v8 [] strides [] offset 96 inbounds : !sea.ptr<64> loc("_149"("seahorn/lib/linked_list_helper.c":412:55))
  sea.br ^bb110
^bb110:
  %v207 = sea.store %v205[%v206], %v80 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v208 = sea.ptr.index %v80 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_151"("seahorn/lib/linked_list_helper.c":124:21))
  %v209 = sea.const 8 : i64 loc("_152"("seahorn/lib/linked_list_helper.c":124:21))
  %v210 = sea.ptr.dereferenceable %v208, %v209 : !sea.ptr<64>, i64 loc("_152"("seahorn/lib/linked_list_helper.c":124:21))
  sea.cond_br %v210, ^bb111, ^bb615
^bb111:
  %v211 = sea.ptr.index %v8 [] strides [] offset 104 inbounds : !sea.ptr<64> loc("_154"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb112
^bb112:
  %v212 = sea.store %v207[%v211], %v78 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v213 = sea.const 8 : i64 loc("_156"("seahorn/lib/linked_list_helper.c":125:21))
  %v214 = sea.ptr.dereferenceable %v80, %v213 : !sea.ptr<64>, i64 loc("_156"("seahorn/lib/linked_list_helper.c":125:21))
  sea.cond_br %v214, ^bb113, ^bb615
^bb113:
  %v215 = sea.ptr.index %v8 [] strides [] offset 112 inbounds : !sea.ptr<64> loc("_158"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb114
^bb114:
  %v216 = sea.store %v212[%v215], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb115
^bb115:
  sea.br ^bb116
^bb116:
  %v217 = sea.const 2 : i64 loc("seahorn/lib/linked_list_helper.c":413:27)
  %v218 = sea.store %v216[%v8], %v217 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":413:27)
  sea.br ^bb126(%v218, %v14, %v78, %v80, %v79, %v81 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/linked_list_helper.c":414:5)
^bb117:
  sea.br ^bb118
^bb118:
  %v219 = sea.const 0 : i64 loc("seahorn/lib/linked_list_helper.c":372:27)
  %v220 = sea.store %v177[%v8], %v219 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":372:27)
  %v221 = sea.ptr.null : !sea.ptr<64>
  %v222 = sea.ptr.null : !sea.ptr<64>
  %v223 = sea.ptr.null : !sea.ptr<64>
  %v224 = sea.ptr.null : !sea.ptr<64>
  %v225 = sea.ptr.null : !sea.ptr<64>
  sea.br ^bb126(%v220, %v221, %v222, %v223, %v224, %v225 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>)
^bb119:
  %v226 = sea.ptr.index %v8 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_109"("seahorn/lib/linked_list_helper.c":251:50))
  sea.br ^bb120
^bb120:
  %v227 = sea.store %v177[%v226], %v80 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v228 = sea.ptr.index %v80 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_111"("seahorn/lib/linked_list_helper.c":124:21))
  %v229 = sea.const 8 : i64 loc("_112"("seahorn/lib/linked_list_helper.c":124:21))
  %v230 = sea.ptr.dereferenceable %v228, %v229 : !sea.ptr<64>, i64 loc("_112"("seahorn/lib/linked_list_helper.c":124:21))
  sea.cond_br %v230, ^bb121, ^bb615
^bb121:
  %v231 = sea.ptr.index %v8 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_114"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb122
^bb122:
  %v232 = sea.store %v227[%v231], %v78 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v233 = sea.const 8 : i64 loc("_116"("seahorn/lib/linked_list_helper.c":125:21))
  %v234 = sea.ptr.dereferenceable %v80, %v233 : !sea.ptr<64>, i64 loc("_116"("seahorn/lib/linked_list_helper.c":125:21))
  sea.cond_br %v234, ^bb123, ^bb615
^bb123:
  %v235 = sea.ptr.index %v8 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_118"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb124
^bb124:
  %v236 = sea.store %v232[%v235], %v79 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb125
^bb125:
  %v237 = sea.const 1 : i64 loc("seahorn/lib/linked_list_helper.c":252:23)
  %v238 = sea.store %v236[%v8], %v237 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":252:23)
  %v239 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":364:5)
  %v240 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":364:5)
  %v241 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":364:5)
  sea.br ^bb126(%v238, %v239, %v240, %v241, %v79, %v80 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/linked_list_helper.c":364:5)
^bb126(%v242 : !sea.mem<!sea.ptr<64>, i8>, %v243 : !sea.ptr<64>, %v244 : !sea.ptr<64>, %v245 : !sea.ptr<64>, %v246 : !sea.ptr<64>, %v247 : !sea.ptr<64>):
  %v248 = sea.ptr.index %v6 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_166"("seahorn/jobs/linked_list_swap_contents/aws_linked_list_swap_contents_harness.c":17:60))
  %v249 = sea.ptr.index %v10 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_167"("seahorn/lib/linked_list_helper.c":358:56))
  sea.br ^bb127
^bb127:
  %v250 = sea.store %v158[%v249], %v6 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  sea.br ^bb128
^bb128:
  %v251 = sea.ptr.index %v10 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_170"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb129
^bb129:
  %v252 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v253 = sea.store %v250[%v251], %v252 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb130
^bb130:
  %v254 = sea.ptr.index %v10 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_173"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb131
^bb131:
  %v255 = sea.store %v253[%v254], %v152 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v256 = sea.ptr.index %v10 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_174"("seahorn/lib/linked_list_helper.c":359:56))
  sea.br ^bb132
^bb132:
  %v257 = sea.store %v255[%v256], %v85 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  sea.br ^bb133
^bb133:
  %v258 = sea.ptr.index %v10 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_177"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb134
^bb134:
  %v259 = sea.store %v257[%v258], %v151 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb135
^bb135:
  %v260 = sea.ptr.index %v10 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_180"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb136
^bb136:
  %v261 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v262 = sea.store %v259[%v260], %v261 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v263 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_181"("seahorn/lib/linked_list_helper.c":360:12))
  sea.br ^bb137
^bb137:
  %v264 = sea.store %v262[%v263], %v152 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":360:23)
  %v265 = sea.ptr.index %v10 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_183"("seahorn/lib/linked_list_helper.c":361:12))
  sea.br ^bb138
^bb138:
  %v266 = sea.store %v264[%v265], %v151 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":361:27)
  %v267 = sea.ptr.cmp eq, %v152, %v151 : !sea.ptr<64> loc("_185"("seahorn/lib/linked_list_helper.c":362:13))
  sea.cond_br %v267, ^bb171, ^bb139 loc("seahorn/lib/linked_list_helper.c":362:7)
^bb139:
  %v268 = sea.const 1 : i64 loc("Pivot.i182.i")
  %v269 = sea.icmp slt, %v88, %v268 : i64 loc("Pivot.i182.i")
  sea.cond_br %v269, ^bb150, ^bb140
^bb140:
  %v270 = sea.const 1 : i64 loc("SwitchLeaf3.i184.i")
  %v271 = sea.icmp eq, %v88, %v270 : i64 loc("SwitchLeaf3.i184.i")
  sea.cond_br %v271, ^bb141, ^bb151
^bb141:
  sea.br ^bb142
^bb142:
  sea.br ^bb143
^bb143:
  %v272 = sea.ptr.index %v10 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_202"("seahorn/lib/linked_list_helper.c":384:64))
  sea.br ^bb144
^bb144:
  %v273 = sea.store %v266[%v272], %v152 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v274 = sea.ptr.index %v152 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_204"("seahorn/lib/linked_list_helper.c":124:21))
  sea.br ^bb145
^bb145:
  %v275 = sea.load %v148[%v274] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_206"("seahorn/lib/linked_list_helper.c":124:21))
  %v276 = sea.ptr.index %v10 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_207"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb146
^bb146:
  %v277 = sea.store %v273[%v276], %v275 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb147
^bb147:
  %v278 = sea.ptr.index %v10 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_210"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb148
^bb148:
  %v279 = sea.store %v277[%v278], %v150 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb149
^bb149:
  %v280 = sea.const 1 : i64 loc("seahorn/lib/linked_list_helper.c":0:0)
  %v281 = sea.store %v279[%v10], %v280 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":0:0)
  sea.br ^bb178(%v281 : !sea.mem<!sea.ptr<64>, i8>)
^bb150:
  %v282 = sea.const 0 : i64 loc("SwitchLeaf.i208.i")
  %v283 = sea.icmp eq, %v88, %v282 : i64 loc("SwitchLeaf.i208.i")
  sea.cond_br %v283, ^bb169, ^bb151
^bb151:
  sea.br ^bb152
^bb152:
  sea.br ^bb153
^bb153:
  %v284 = sea.ptr.index %v10 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_215"("seahorn/lib/linked_list_helper.c":403:64))
  sea.br ^bb154
^bb154:
  %v285 = sea.store %v266[%v284], %v152 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v286 = sea.ptr.index %v152 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_217"("seahorn/lib/linked_list_helper.c":124:21))
  sea.br ^bb155
^bb155:
  %v287 = sea.load %v148[%v286] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_219"("seahorn/lib/linked_list_helper.c":124:21))
  %v288 = sea.ptr.index %v10 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_220"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb156
^bb156:
  %v289 = sea.store %v285[%v288], %v287 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb157
^bb157:
  %v290 = sea.ptr.index %v10 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_223"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb158
^bb158:
  %v291 = sea.store %v289[%v290], %v150 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb159
^bb159:
  sea.br ^bb160
^bb160:
  sea.br ^bb161
^bb161:
  %v292 = sea.ptr.index %v10 [] strides [] offset 96 inbounds : !sea.ptr<64> loc("_227"("seahorn/lib/linked_list_helper.c":412:55))
  sea.br ^bb162
^bb162:
  %v293 = sea.store %v291[%v292], %v151 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v294 = sea.ptr.index %v151 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_229"("seahorn/lib/linked_list_helper.c":124:21))
  %v295 = sea.const 8 : i64 loc("_230"("seahorn/lib/linked_list_helper.c":124:21))
  %v296 = sea.ptr.dereferenceable %v294, %v295 : !sea.ptr<64>, i64 loc("_230"("seahorn/lib/linked_list_helper.c":124:21))
  sea.cond_br %v296, ^bb163, ^bb615
^bb163:
  %v297 = sea.ptr.index %v10 [] strides [] offset 104 inbounds : !sea.ptr<64> loc("_232"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb164
^bb164:
  %v298 = sea.store %v293[%v297], %v149 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v299 = sea.const 8 : i64 loc("_234"("seahorn/lib/linked_list_helper.c":125:21))
  %v300 = sea.ptr.dereferenceable %v151, %v299 : !sea.ptr<64>, i64 loc("_234"("seahorn/lib/linked_list_helper.c":125:21))
  sea.cond_br %v300, ^bb165, ^bb615
^bb165:
  %v301 = sea.ptr.index %v10 [] strides [] offset 112 inbounds : !sea.ptr<64> loc("_236"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb166
^bb166:
  %v302 = sea.store %v298[%v301], %v85 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb167
^bb167:
  sea.br ^bb168
^bb168:
  %v303 = sea.const 2 : i64 loc("seahorn/lib/linked_list_helper.c":413:27)
  %v304 = sea.store %v302[%v10], %v303 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":413:27)
  sea.br ^bb178(%v304 : !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/lib/linked_list_helper.c":414:5)
^bb169:
  sea.br ^bb170
^bb170:
  %v305 = sea.const 0 : i64 loc("seahorn/lib/linked_list_helper.c":372:27)
  %v306 = sea.store %v266[%v10], %v305 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":372:27)
  sea.br ^bb178(%v306 : !sea.mem<!sea.ptr<64>, i8>)
^bb171:
  %v307 = sea.ptr.index %v10 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_187"("seahorn/lib/linked_list_helper.c":251:50))
  sea.br ^bb172
^bb172:
  %v308 = sea.store %v266[%v307], %v151 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v309 = sea.ptr.index %v151 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_189"("seahorn/lib/linked_list_helper.c":124:21))
  %v310 = sea.const 8 : i64 loc("_190"("seahorn/lib/linked_list_helper.c":124:21))
  %v311 = sea.ptr.dereferenceable %v309, %v310 : !sea.ptr<64>, i64 loc("_190"("seahorn/lib/linked_list_helper.c":124:21))
  sea.cond_br %v311, ^bb173, ^bb615
^bb173:
  %v312 = sea.ptr.index %v10 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_192"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb174
^bb174:
  %v313 = sea.store %v308[%v312], %v149 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v314 = sea.const 8 : i64 loc("_194"("seahorn/lib/linked_list_helper.c":125:21))
  %v315 = sea.ptr.dereferenceable %v151, %v314 : !sea.ptr<64>, i64 loc("_194"("seahorn/lib/linked_list_helper.c":125:21))
  sea.cond_br %v315, ^bb175, ^bb615
^bb175:
  %v316 = sea.ptr.index %v10 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_196"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb176
^bb176:
  %v317 = sea.store %v313[%v316], %v150 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb177
^bb177:
  %v318 = sea.const 1 : i64 loc("seahorn/lib/linked_list_helper.c":252:23)
  %v319 = sea.store %v317[%v10], %v318 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":252:23)
  sea.br ^bb178(%v319 : !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/lib/linked_list_helper.c":364:5)
^bb178(%v320 : !sea.mem<!sea.ptr<64>, i8>):
  sea.br ^bb179
^bb179:
  sea.br ^bb180
^bb180:
  sea.br ^bb181
^bb181:
  %v321 = sea.ptr.cmp eq, %v152, %v85 : !sea.ptr<64> loc("_241"("aws-c-common/include/aws/common/linked_list.inl":34:28))
  sea.cond_br %v321, ^bb191, ^bb182 loc("aws-c-common/include/aws/common/linked_list.inl":354:9)
^bb182:
  sea.br ^bb183
^bb183:
  sea.br ^bb184
^bb184:
  %v322 = sea.store %v148[%v4], %v152 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":357:22)
  sea.br ^bb185
^bb185:
  %v323 = sea.ptr.index %v152 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_250"("aws-c-common/include/aws/common/linked_list.inl":358:23))
  sea.br ^bb186
^bb186:
  %v324 = sea.store %v322[%v323], %v4 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":358:28)
  sea.br ^bb187
^bb187:
  %v325 = sea.load %v324[%v248] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_253"("aws-c-common/include/aws/common/linked_list.inl":359:32))
  sea.br ^bb188
^bb188:
  %v326 = sea.store %v324[%v159], %v325 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":359:22)
  sea.br ^bb189
^bb189:
  %v327 = sea.const 8 : i64 loc("_256"("aws-c-common/include/aws/common/linked_list.inl":360:28))
  %v328 = sea.ptr.dereferenceable %v325, %v327 : !sea.ptr<64>, i64 loc("_256"("aws-c-common/include/aws/common/linked_list.inl":360:28))
  sea.cond_br %v328, ^bb190, ^bb615
^bb190:
  %v329 = sea.store %v326[%v325], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":360:28)
  sea.br ^bb196(%v329 : !sea.mem<!sea.ptr<64>, i8>)
^bb191:
  sea.br ^bb192
^bb192:
  %v330 = sea.store %v148[%v4], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":110:21)
  sea.br ^bb193
^bb193:
  %v331 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":111:21)
  %v332 = sea.store %v330[%v11], %v331 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":111:21)
  sea.br ^bb194
^bb194:
  %v333 = sea.store %v332[%v159], %v4 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":112:21)
  sea.br ^bb195
^bb195:
  %v334 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":113:21)
  %v335 = sea.store %v333[%v14], %v334 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":113:21)
  sea.br ^bb196(%v335 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/include/aws/common/linked_list.inl":356:5)
^bb196(%v336 : !sea.mem<!sea.ptr<64>, i8>):
  %v337 = sea.ptr.cmp eq, %v81, %v14 : !sea.ptr<64> loc("_259"("aws-c-common/include/aws/common/linked_list.inl":364:17))
  sea.cond_br %v337, ^bb204, ^bb197 loc("aws-c-common/include/aws/common/linked_list.inl":364:9)
^bb197:
  sea.br ^bb198
^bb198:
  %v338 = sea.store %v336[%v6], %v81 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":367:22)
  sea.br ^bb199
^bb199:
  %v339 = sea.ptr.index %v81 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_267"("aws-c-common/include/aws/common/linked_list.inl":368:23))
  sea.br ^bb200
^bb200:
  %v340 = sea.store %v338[%v339], %v6 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":368:28)
  sea.br ^bb201
^bb201:
  %v341 = sea.store %v340[%v248], %v80 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":369:22)
  sea.br ^bb202
^bb202:
  %v342 = sea.const 8 : i64 loc("_271"("aws-c-common/include/aws/common/linked_list.inl":370:28))
  %v343 = sea.ptr.dereferenceable %v80, %v342 : !sea.ptr<64>, i64 loc("_271"("aws-c-common/include/aws/common/linked_list.inl":370:28))
  sea.cond_br %v343, ^bb203, ^bb615
^bb203:
  %v344 = sea.store %v341[%v80], %v85 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":370:28)
  sea.br ^bb209(%v344, %v80, %v81 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>)
^bb204:
  sea.br ^bb205
^bb205:
  %v345 = sea.store %v336[%v6], %v85 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":110:21)
  sea.br ^bb206
^bb206:
  %v346 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":111:21)
  %v347 = sea.store %v345[%v82], %v346 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":111:21)
  sea.br ^bb207
^bb207:
  %v348 = sea.store %v347[%v248], %v6 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":112:21)
  sea.br ^bb208
^bb208:
  %v349 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":113:21)
  %v350 = sea.store %v348[%v85], %v349 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":113:21)
  sea.br ^bb209(%v350, %v6, %v85 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>) loc("aws-c-common/include/aws/common/linked_list.inl":366:5)
^bb209(%v351 : !sea.mem<!sea.ptr<64>, i8>, %v352 : !sea.ptr<64>, %v353 : !sea.ptr<64>):
  %v354 = sea.load %v351[%v14] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_276"("seahorn/jobs/linked_list_swap_contents/aws_linked_list_swap_contents_harness.c":24:3))
  %v355 = sea.ptr.null : !sea.ptr<64> loc("_277"("seahorn/jobs/linked_list_swap_contents/aws_linked_list_swap_contents_harness.c":24:3))
  %v356 = sea.ptr.cmp eq, %v354, %v355 : !sea.ptr<64> loc("_277"("seahorn/jobs/linked_list_swap_contents/aws_linked_list_swap_contents_harness.c":24:3))
  sea.cond_br %v356, ^bb210, ^bb615 loc("seahorn/jobs/linked_list_swap_contents/aws_linked_list_swap_contents_harness.c":24:3)
^bb210:
  %v357 = sea.load %v351[%v85] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_279"("seahorn/jobs/linked_list_swap_contents/aws_linked_list_swap_contents_harness.c":26:3))
  %v358 = sea.ptr.null : !sea.ptr<64> loc("_280"("seahorn/jobs/linked_list_swap_contents/aws_linked_list_swap_contents_harness.c":26:3))
  %v359 = sea.ptr.cmp eq, %v357, %v358 : !sea.ptr<64> loc("_280"("seahorn/jobs/linked_list_swap_contents/aws_linked_list_swap_contents_harness.c":26:3))
  sea.cond_br %v359, ^bb211, ^bb615 loc("seahorn/jobs/linked_list_swap_contents/aws_linked_list_swap_contents_harness.c":26:3)
^bb211:
  sea.br ^bb212
^bb212:
  %v360 = sea.load %v351[%v4] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_283"("aws-c-common/include/aws/common/linked_list.inl":57:26))
  %v361 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/linked_list.inl":57:20))
  %v362 = sea.ptr.cmp ne, %v360, %v361 : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/linked_list.inl":57:20))
  %v363 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/linked_list.inl":57:31)
  sea.cond_br %v362, ^bb213, ^bb216(%v363 : i1) loc("aws-c-common/include/aws/common/linked_list.inl":57:31)
^bb213:
  sea.br ^bb214
^bb214:
  %v364 = sea.ptr.index %v360 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_286"("aws-c-common/include/aws/common/linked_list.inl":57:46))
  %v365 = sea.const 8 : i64 loc("_287"("aws-c-common/include/aws/common/linked_list.inl":57:46))
  %v366 = sea.ptr.dereferenceable %v364, %v365 : !sea.ptr<64>, i64 loc("_287"("aws-c-common/include/aws/common/linked_list.inl":57:46))
  sea.cond_br %v366, ^bb215, ^bb615
^bb215:
  %v367 = sea.load %v351[%v364] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_289"("aws-c-common/include/aws/common/linked_list.inl":57:46))
  %v368 = sea.ptr.cmp eq, %v367, %v4 : !sea.ptr<64> loc("_290"("aws-c-common/include/aws/common/linked_list.inl":57:51))
  sea.br ^bb216(%v368 : i1)
^bb216(%v369 : i1):
  %v370 = sea.const 1 : i1 loc("or.cond.not")
  %v371 = sea.and %v362, %v370 : i1 loc("or.cond.not")
  sea.cond_br %v371, ^bb217, ^bb615
^bb217:
  sea.br ^bb218
^bb218:
  %v372 = sea.ptr.index %v360 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_294"("aws-c-common/include/aws/common/linked_list.inl":57:46))
  %v373 = sea.const 8 : i64 loc("_295"("aws-c-common/include/aws/common/linked_list.inl":57:46))
  %v374 = sea.ptr.dereferenceable %v372, %v373 : !sea.ptr<64>, i64 loc("_295"("aws-c-common/include/aws/common/linked_list.inl":57:46))
  sea.cond_br %v374, ^bb219, ^bb615
^bb219:
  %v375 = sea.load %v351[%v372] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_296"("aws-c-common/include/aws/common/linked_list.inl":57:46))
  %v376 = sea.ptr.cmp eq, %v375, %v4 : !sea.ptr<64> loc("_297"("aws-c-common/include/aws/common/linked_list.inl":57:51))
  sea.cond_br %v376, ^bb220, ^bb615 loc("seahorn/jobs/linked_list_swap_contents/aws_linked_list_swap_contents_harness.c":28:3)
^bb220:
  sea.br ^bb221
^bb221:
  %v377 = sea.load %v351[%v159] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_300"("aws-c-common/include/aws/common/linked_list.inl":66:26))
  %v378 = sea.ptr.null : !sea.ptr<64> loc(".not1.i12.i"("aws-c-common/include/aws/common/linked_list.inl":66:20))
  %v379 = sea.ptr.cmp ne, %v377, %v378 : !sea.ptr<64> loc(".not1.i12.i"("aws-c-common/include/aws/common/linked_list.inl":66:20))
  %v380 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/linked_list.inl":66:31)
  sea.cond_br %v379, ^bb222, ^bb225(%v380 : i1) loc("aws-c-common/include/aws/common/linked_list.inl":66:31)
^bb222:
  sea.br ^bb223
^bb223:
  %v381 = sea.const 8 : i64 loc("_303"("aws-c-common/include/aws/common/linked_list.inl":66:46))
  %v382 = sea.ptr.dereferenceable %v377, %v381 : !sea.ptr<64>, i64 loc("_303"("aws-c-common/include/aws/common/linked_list.inl":66:46))
  sea.cond_br %v382, ^bb224, ^bb615
^bb224:
  %v383 = sea.load %v351[%v377] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_305"("aws-c-common/include/aws/common/linked_list.inl":66:46))
  %v384 = sea.ptr.cmp eq, %v383, %v14 : !sea.ptr<64> loc("_306"("aws-c-common/include/aws/common/linked_list.inl":66:51))
  sea.br ^bb225(%v384 : i1)
^bb225(%v385 : i1):
  %v386 = sea.const 1 : i1 loc("or.cond109.not")
  %v387 = sea.and %v379, %v386 : i1 loc("or.cond109.not")
  sea.cond_br %v387, ^bb226, ^bb615
^bb226:
  sea.br ^bb227
^bb227:
  %v388 = sea.const 8 : i64 loc("_310"("aws-c-common/include/aws/common/linked_list.inl":66:46))
  %v389 = sea.ptr.dereferenceable %v377, %v388 : !sea.ptr<64>, i64 loc("_310"("aws-c-common/include/aws/common/linked_list.inl":66:46))
  sea.cond_br %v389, ^bb228, ^bb615
^bb228:
  %v390 = sea.load %v351[%v377] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_311"("aws-c-common/include/aws/common/linked_list.inl":66:46))
  %v391 = sea.ptr.cmp eq, %v390, %v14 : !sea.ptr<64> loc("_312"("aws-c-common/include/aws/common/linked_list.inl":66:51))
  sea.cond_br %v391, ^bb229, ^bb615 loc("seahorn/jobs/linked_list_swap_contents/aws_linked_list_swap_contents_harness.c":29:3)
^bb229:
  sea.br ^bb230
^bb230:
  sea.br ^bb231
^bb231:
  %v392 = sea.ptr.index %v353 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_316"("aws-c-common/include/aws/common/linked_list.inl":57:46))
  sea.br ^bb232
^bb232:
  %v393 = sea.load %v351[%v392] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_317"("aws-c-common/include/aws/common/linked_list.inl":57:46))
  %v394 = sea.ptr.cmp eq, %v393, %v6 : !sea.ptr<64> loc("_318"("aws-c-common/include/aws/common/linked_list.inl":57:51))
  sea.br ^bb233
^bb233:
  sea.br ^bb234
^bb234:
  %v395 = sea.ptr.index %v353 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_321"("aws-c-common/include/aws/common/linked_list.inl":57:46))
  sea.br ^bb235
^bb235:
  %v396 = sea.load %v351[%v395] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_322"("aws-c-common/include/aws/common/linked_list.inl":57:46))
  %v397 = sea.ptr.cmp eq, %v396, %v6 : !sea.ptr<64> loc("_323"("aws-c-common/include/aws/common/linked_list.inl":57:51))
  sea.cond_br %v397, ^bb236, ^bb615 loc("seahorn/jobs/linked_list_swap_contents/aws_linked_list_swap_contents_harness.c":31:3)
^bb236:
  sea.br ^bb237
^bb237:
  sea.br ^bb238
^bb238:
  %v398 = sea.const 8 : i64 loc("_327"("aws-c-common/include/aws/common/linked_list.inl":66:46))
  %v399 = sea.ptr.dereferenceable %v352, %v398 : !sea.ptr<64>, i64 loc("_327"("aws-c-common/include/aws/common/linked_list.inl":66:46))
  sea.cond_br %v399, ^bb239, ^bb615
^bb239:
  sea.br ^bb240
^bb240:
  sea.br ^bb241
^bb241:
  %v400 = sea.const 8 : i64 loc("_330"("aws-c-common/include/aws/common/linked_list.inl":66:46))
  %v401 = sea.ptr.dereferenceable %v352, %v400 : !sea.ptr<64>, i64 loc("_330"("aws-c-common/include/aws/common/linked_list.inl":66:46))
  sea.cond_br %v401, ^bb242, ^bb615
^bb242:
  sea.br ^bb243
^bb243:
  %v402 = sea.load %v242[%v8] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_332"("seahorn/lib/linked_list_helper.c":193:14))
  %v403 = sea.const 0 : i64 loc("_333"("seahorn/lib/linked_list_helper.c":193:25))
  %v404 = sea.icmp eq, %v402, %v403 : i64 loc("_333"("seahorn/lib/linked_list_helper.c":193:25))
  sea.cond_br %v404, ^bb312, ^bb244 loc("seahorn/lib/linked_list_helper.c":193:7)
^bb244:
  sea.br ^bb245
^bb245:
  %v405 = sea.const 1 : i64 loc("_343"("seahorn/lib/linked_list_helper.c":198:30))
  %v406 = sea.icmp eq, %v402, %v405 : i64 loc("_343"("seahorn/lib/linked_list_helper.c":198:30))
  sea.cond_br %v406, ^bb306, ^bb246 loc("seahorn/lib/linked_list_helper.c":198:12)
^bb246:
  sea.br ^bb247
^bb247:
  %v407 = sea.const 2 : i64 loc("_353"("seahorn/lib/linked_list_helper.c":204:30))
  %v408 = sea.icmp eq, %v402, %v407 : i64 loc("_353"("seahorn/lib/linked_list_helper.c":204:30))
  sea.cond_br %v408, ^bb294, ^bb248 loc("seahorn/lib/linked_list_helper.c":204:12)
^bb248:
  sea.br ^bb249
^bb249:
  %v409 = sea.const 3 : i64 loc("_375"("seahorn/lib/linked_list_helper.c":209:30))
  %v410 = sea.icmp eq, %v402, %v409 : i64 loc("_375"("seahorn/lib/linked_list_helper.c":209:30))
  sea.cond_br %v410, ^bb286, ^bb250 loc("seahorn/lib/linked_list_helper.c":209:12)
^bb250:
  sea.br ^bb251
^bb251:
  %v411 = sea.const 4 : i64 loc("_388"("seahorn/lib/linked_list_helper.c":228:30))
  %v412 = sea.icmp eq, %v402, %v411 : i64 loc("_388"("seahorn/lib/linked_list_helper.c":228:30))
  %v413 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":228:12)
  sea.cond_br %v412, ^bb252, ^bb318(%v413 : i1) loc("seahorn/lib/linked_list_helper.c":228:12)
^bb252:
  sea.br ^bb253
^bb253:
  sea.br ^bb254
^bb254:
  %v414 = sea.ptr.cmp eq, %v247, %v81 : !sea.ptr<64> loc("_392"("seahorn/lib/linked_list_helper.c":113:15))
  %v415 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":113:30)
  sea.cond_br %v414, ^bb255, ^bb318(%v415 : i1) loc("seahorn/lib/linked_list_helper.c":113:30)
^bb255:
  sea.br ^bb256
^bb256:
  %v416 = sea.load %v351[%v81] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_395"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb257
^bb257:
  %v417 = sea.ptr.cmp eq, %v416, %v246 : !sea.ptr<64> loc("_396"("seahorn/lib/linked_list_helper.c":113:44))
  %v418 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":230:66)
  sea.cond_br %v417, ^bb258, ^bb318(%v418 : i1) loc("seahorn/lib/linked_list_helper.c":230:66)
^bb258:
  sea.br ^bb259
^bb259:
  sea.br ^bb260
^bb260:
  sea.br ^bb261
^bb261:
  %v419 = sea.ptr.cmp eq, %v245, %v246 : !sea.ptr<64> loc("_401"("seahorn/lib/linked_list_helper.c":108:15))
  %v420 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v419, ^bb262, ^bb318(%v420 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb262:
  %v421 = sea.ptr.index %v245 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_403"("seahorn/lib/linked_list_helper.c":108:39))
  %v422 = sea.const 8 : i64 loc("_404"("seahorn/lib/linked_list_helper.c":108:39))
  %v423 = sea.ptr.dereferenceable %v421, %v422 : !sea.ptr<64>, i64 loc("_404"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v423, ^bb263, ^bb615
^bb263:
  %v424 = sea.load %v351[%v421] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_406"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb264
^bb264:
  %v425 = sea.ptr.cmp eq, %v424, %v244 : !sea.ptr<64> loc("_407"("seahorn/lib/linked_list_helper.c":108:44))
  %v426 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v425, ^bb265, ^bb318(%v426 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb265:
  sea.br ^bb266
^bb266:
  %v427 = sea.const 8 : i64 loc("_410"("seahorn/lib/linked_list_helper.c":113:39))
  %v428 = sea.ptr.dereferenceable %v245, %v427 : !sea.ptr<64>, i64 loc("_410"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v428, ^bb267, ^bb615
^bb267:
  %v429 = sea.load %v351[%v245] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_412"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb268
^bb268:
  %v430 = sea.ptr.cmp eq, %v429, %v243 : !sea.ptr<64> loc("_413"("seahorn/lib/linked_list_helper.c":113:44))
  %v431 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":231:67)
  sea.cond_br %v430, ^bb269, ^bb318(%v431 : i1) loc("seahorn/lib/linked_list_helper.c":231:67)
^bb269:
  sea.br ^bb270
^bb270:
  %v432 = sea.ptr.index %v80 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_416"("seahorn/lib/linked_list_helper.c":232:47))
  %v433 = sea.const 8 : i64 loc("_417"("seahorn/lib/linked_list_helper.c":232:47))
  %v434 = sea.ptr.dereferenceable %v432, %v433 : !sea.ptr<64>, i64 loc("_417"("seahorn/lib/linked_list_helper.c":232:47))
  sea.cond_br %v434, ^bb271, ^bb615
^bb271:
  %v435 = sea.load %v351[%v432] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_419"("seahorn/lib/linked_list_helper.c":232:47))
  %v436 = sea.ptr.index %v8 [] strides [] offset 120 inbounds : !sea.ptr<64> loc("_420"("seahorn/lib/linked_list_helper.c":232:54))
  sea.br ^bb272
^bb272:
  %v437 = sea.load %v242[%v436] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_422"("seahorn/lib/linked_list_helper.c":108:25))
  %v438 = sea.ptr.cmp eq, %v437, %v435 : !sea.ptr<64> loc("_423"("seahorn/lib/linked_list_helper.c":108:15))
  %v439 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v438, ^bb273, ^bb318(%v439 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb273:
  %v440 = sea.ptr.index %v435 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_425"("seahorn/lib/linked_list_helper.c":108:39))
  %v441 = sea.const 8 : i64 loc("_426"("seahorn/lib/linked_list_helper.c":108:39))
  %v442 = sea.ptr.dereferenceable %v440, %v441 : !sea.ptr<64>, i64 loc("_426"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v442, ^bb274, ^bb615
^bb274:
  %v443 = sea.load %v351[%v440] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_428"("seahorn/lib/linked_list_helper.c":108:39))
  %v444 = sea.ptr.index %v8 [] strides [] offset 128 inbounds : !sea.ptr<64> loc("_429"("seahorn/lib/linked_list_helper.c":108:54))
  sea.br ^bb275
^bb275:
  %v445 = sea.load %v242[%v444] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_430"("seahorn/lib/linked_list_helper.c":108:54))
  %v446 = sea.ptr.cmp eq, %v443, %v445 : !sea.ptr<64> loc("_431"("seahorn/lib/linked_list_helper.c":108:44))
  %v447 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v446, ^bb276, ^bb318(%v447 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb276:
  sea.br ^bb277
^bb277:
  %v448 = sea.const 8 : i64 loc("_434"("seahorn/lib/linked_list_helper.c":113:39))
  %v449 = sea.ptr.dereferenceable %v435, %v448 : !sea.ptr<64>, i64 loc("_434"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v449, ^bb278, ^bb615
^bb278:
  %v450 = sea.load %v351[%v435] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_436"("seahorn/lib/linked_list_helper.c":113:39))
  %v451 = sea.ptr.index %v8 [] strides [] offset 136 inbounds : !sea.ptr<64> loc("_437"("seahorn/lib/linked_list_helper.c":113:54))
  sea.br ^bb279
^bb279:
  %v452 = sea.load %v242[%v451] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_438"("seahorn/lib/linked_list_helper.c":113:54))
  %v453 = sea.ptr.cmp eq, %v450, %v452 : !sea.ptr<64> loc("_439"("seahorn/lib/linked_list_helper.c":113:44))
  %v454 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":232:71)
  sea.cond_br %v453, ^bb280, ^bb318(%v454 : i1) loc("seahorn/lib/linked_list_helper.c":232:71)
^bb280:
  sea.br ^bb281
^bb281:
  %v455 = sea.ptr.index %v8 [] strides [] offset 144 inbounds : !sea.ptr<64> loc("_442"("seahorn/lib/linked_list_helper.c":233:53))
  sea.br ^bb282
^bb282:
  %v456 = sea.load %v242[%v455] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_444"("seahorn/lib/linked_list_helper.c":108:25))
  %v457 = sea.ptr.cmp eq, %v456, %v80 : !sea.ptr<64> loc("_445"("seahorn/lib/linked_list_helper.c":108:15))
  %v458 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v457, ^bb283, ^bb318(%v458 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb283:
  %v459 = sea.const 8 : i64 loc("_447"("seahorn/lib/linked_list_helper.c":108:39))
  %v460 = sea.ptr.dereferenceable %v432, %v459 : !sea.ptr<64>, i64 loc("_447"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v460, ^bb284, ^bb615
^bb284:
  %v461 = sea.ptr.index %v8 [] strides [] offset 152 inbounds : !sea.ptr<64> loc("_449"("seahorn/lib/linked_list_helper.c":108:54))
  sea.br ^bb285
^bb285:
  %v462 = sea.load %v242[%v461] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_451"("seahorn/lib/linked_list_helper.c":108:54))
  %v463 = sea.ptr.cmp eq, %v435, %v462 : !sea.ptr<64> loc("_452"("seahorn/lib/linked_list_helper.c":108:44))
  sea.br ^bb318(%v463 : i1)
^bb286:
  sea.br ^bb287
^bb287:
  sea.br ^bb288
^bb288:
  %v464 = sea.ptr.cmp eq, %v247, %v81 : !sea.ptr<64> loc("_379"("seahorn/lib/linked_list_helper.c":113:15))
  %v465 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":113:30)
  sea.cond_br %v464, ^bb289, ^bb318(%v465 : i1) loc("seahorn/lib/linked_list_helper.c":113:30)
^bb289:
  sea.br ^bb290
^bb290:
  %v466 = sea.load %v351[%v81] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_382"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb291
^bb291:
  %v467 = sea.ptr.cmp eq, %v466, %v246 : !sea.ptr<64> loc("_383"("seahorn/lib/linked_list_helper.c":113:44))
  %v468 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":211:63)
  sea.cond_br %v467, ^bb292, ^bb318(%v468 : i1) loc("seahorn/lib/linked_list_helper.c":211:63)
^bb292:
  sea.br ^bb293
^bb293:
  %v469 = sea.const 0 : i1
  sea.br ^bb318(%v469 : i1)
^bb294:
  sea.br ^bb295
^bb295:
  sea.br ^bb296
^bb296:
  %v470 = sea.ptr.cmp eq, %v247, %v81 : !sea.ptr<64> loc("_357"("seahorn/lib/linked_list_helper.c":113:15))
  %v471 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":113:30)
  sea.cond_br %v470, ^bb297, ^bb318(%v471 : i1) loc("seahorn/lib/linked_list_helper.c":113:30)
^bb297:
  sea.br ^bb298
^bb298:
  %v472 = sea.load %v351[%v81] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_360"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb299
^bb299:
  %v473 = sea.ptr.cmp eq, %v472, %v246 : !sea.ptr<64> loc("_361"("seahorn/lib/linked_list_helper.c":113:44))
  %v474 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":206:66)
  sea.cond_br %v473, ^bb300, ^bb318(%v474 : i1) loc("seahorn/lib/linked_list_helper.c":206:66)
^bb300:
  sea.br ^bb301
^bb301:
  sea.br ^bb302
^bb302:
  %v475 = sea.ptr.cmp eq, %v245, %v80 : !sea.ptr<64> loc("_365"("seahorn/lib/linked_list_helper.c":108:15))
  %v476 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v475, ^bb303, ^bb318(%v476 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb303:
  %v477 = sea.ptr.index %v80 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_367"("seahorn/lib/linked_list_helper.c":108:39))
  %v478 = sea.const 8 : i64 loc("_368"("seahorn/lib/linked_list_helper.c":108:39))
  %v479 = sea.ptr.dereferenceable %v477, %v478 : !sea.ptr<64>, i64 loc("_368"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v479, ^bb304, ^bb615
^bb304:
  %v480 = sea.load %v351[%v477] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_370"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb305
^bb305:
  %v481 = sea.ptr.cmp eq, %v480, %v244 : !sea.ptr<64> loc("_372"("seahorn/lib/linked_list_helper.c":108:44))
  sea.br ^bb318(%v481 : i1)
^bb306:
  sea.br ^bb307
^bb307:
  sea.br ^bb308
^bb308:
  %v482 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":201:55)
  sea.cond_br %v178, ^bb309, ^bb318(%v482 : i1) loc("seahorn/lib/linked_list_helper.c":201:55)
^bb309:
  sea.br ^bb310
^bb310:
  sea.br ^bb311
^bb311:
  %v483 = sea.ptr.cmp eq, %v80, %v247 : !sea.ptr<64> loc("_350"("seahorn/lib/linked_list_helper.c":202:30))
  sea.br ^bb318(%v483 : i1)
^bb312:
  sea.br ^bb313
^bb313:
  sea.br ^bb314
^bb314:
  %v484 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":195:54)
  sea.cond_br %v337, ^bb315, ^bb318(%v484 : i1) loc("seahorn/lib/linked_list_helper.c":195:54)
^bb315:
  sea.br ^bb316
^bb316:
  sea.br ^bb317
^bb317:
  %v485 = sea.ptr.cmp eq, %v80, %v4 : !sea.ptr<64> loc("_340"("seahorn/lib/linked_list_helper.c":196:34))
  sea.br ^bb318(%v485 : i1)
^bb318(%v486 : i1):
  sea.br ^bb319
^bb319:
  sea.cond_br %v404, ^bb394, ^bb320 loc("seahorn/lib/linked_list_helper.c":193:7)
^bb320:
  sea.br ^bb321
^bb321:
  %v487 = sea.const 1 : i64 loc("_466"("seahorn/lib/linked_list_helper.c":198:30))
  %v488 = sea.icmp eq, %v402, %v487 : i64 loc("_466"("seahorn/lib/linked_list_helper.c":198:30))
  sea.cond_br %v488, ^bb390, ^bb322 loc("seahorn/lib/linked_list_helper.c":198:12)
^bb322:
  sea.br ^bb323
^bb323:
  %v489 = sea.const 2 : i64 loc("_479"("seahorn/lib/linked_list_helper.c":204:30))
  %v490 = sea.icmp eq, %v402, %v489 : i64 loc("_479"("seahorn/lib/linked_list_helper.c":204:30))
  sea.cond_br %v490, ^bb382, ^bb324 loc("seahorn/lib/linked_list_helper.c":204:12)
^bb324:
  sea.br ^bb325
^bb325:
  %v491 = sea.const 3 : i64 loc("_509"("seahorn/lib/linked_list_helper.c":209:30))
  %v492 = sea.icmp eq, %v402, %v491 : i64 loc("_509"("seahorn/lib/linked_list_helper.c":209:30))
  sea.cond_br %v492, ^bb351, ^bb326 loc("seahorn/lib/linked_list_helper.c":209:12)
^bb326:
  %v493 = sea.const 4 : i64 loc("_591")
  %v494 = sea.icmp eq, %v402, %v493 : i64 loc("_591")
  %v495 = sea.const 1 : i1 loc("or.cond145")
  %v496 = sea.and %v494, %v495 : i1 loc("or.cond145")
  sea.cond_br %v496, ^bb327, ^bb615
^bb327:
  sea.br ^bb328
^bb328:
  %v497 = sea.load %v242[%v174] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_594"("seahorn/lib/linked_list_helper.c":230:36))
  %v498 = sea.ptr.index %v8 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_595"("seahorn/lib/linked_list_helper.c":230:56))
  %v499 = sea.load %v242[%v498] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_596")
  %v500 = sea.ptr.cmp eq, %v499, %v497 : !sea.ptr<64> loc("_597")
  %v501 = sea.const 1 : i1 loc("or.cond147")
  %v502 = sea.const 0 : i1 loc("or.cond147")
  %v503 = sea.select %v501, %v500, %v502 : i1 loc("or.cond147")
  sea.cond_br %v503, ^bb329, ^bb615
^bb329:
  %v504 = sea.const 8 : i64 loc("_599"("seahorn/lib/linked_list_helper.c":113:39))
  %v505 = sea.ptr.dereferenceable %v497, %v504 : !sea.ptr<64>, i64 loc("_599"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v505, ^bb330, ^bb615
^bb330:
  %v506 = sea.load %v351[%v497] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_601"("seahorn/lib/linked_list_helper.c":113:39))
  %v507 = sea.ptr.index %v8 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_602"("seahorn/lib/linked_list_helper.c":113:54))
  %v508 = sea.load %v242[%v507] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_603")
  %v509 = sea.ptr.cmp eq, %v506, %v508 : !sea.ptr<64> loc("_604")
  %v510 = sea.const 1 : i1 loc("or.cond149")
  %v511 = sea.const 0 : i1 loc("or.cond149")
  %v512 = sea.select %v510, %v509, %v511 : i1 loc("or.cond149")
  sea.cond_br %v512, ^bb331, ^bb615
^bb331:
  sea.br ^bb332
^bb332:
  %v513 = sea.const 8 : i64 loc("_607"("seahorn/lib/linked_list_helper.c":231:43))
  %v514 = sea.ptr.dereferenceable %v497, %v513 : !sea.ptr<64>, i64 loc("_607"("seahorn/lib/linked_list_helper.c":231:43))
  sea.cond_br %v514, ^bb333, ^bb615
^bb333:
  %v515 = sea.ptr.index %v8 [] strides [] offset 96 inbounds : !sea.ptr<64> loc("_609"("seahorn/lib/linked_list_helper.c":231:50))
  %v516 = sea.load %v242[%v515] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_610")
  %v517 = sea.ptr.cmp eq, %v516, %v506 : !sea.ptr<64> loc("_611")
  %v518 = sea.const 1 : i1 loc("or.cond151")
  %v519 = sea.const 0 : i1 loc("or.cond151")
  %v520 = sea.select %v518, %v517, %v519 : i1 loc("or.cond151")
  sea.cond_br %v520, ^bb334, ^bb615
^bb334:
  %v521 = sea.ptr.index %v506 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_613"("seahorn/lib/linked_list_helper.c":108:39))
  %v522 = sea.const 8 : i64 loc("_614"("seahorn/lib/linked_list_helper.c":108:39))
  %v523 = sea.ptr.dereferenceable %v521, %v522 : !sea.ptr<64>, i64 loc("_614"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v523, ^bb335, ^bb615
^bb335:
  %v524 = sea.load %v351[%v521] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_616"("seahorn/lib/linked_list_helper.c":108:39))
  %v525 = sea.ptr.index %v8 [] strides [] offset 104 inbounds : !sea.ptr<64> loc("_617"("seahorn/lib/linked_list_helper.c":108:54))
  %v526 = sea.load %v242[%v525] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_618")
  %v527 = sea.ptr.cmp eq, %v524, %v526 : !sea.ptr<64> loc("_619")
  %v528 = sea.const 1 : i1 loc("or.cond153")
  %v529 = sea.const 0 : i1 loc("or.cond153")
  %v530 = sea.select %v528, %v527, %v529 : i1 loc("or.cond153")
  sea.cond_br %v530, ^bb336, ^bb615
^bb336:
  sea.br ^bb337
^bb337:
  %v531 = sea.const 8 : i64 loc("_622"("seahorn/lib/linked_list_helper.c":113:39))
  %v532 = sea.ptr.dereferenceable %v506, %v531 : !sea.ptr<64>, i64 loc("_622"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v532, ^bb338, ^bb615
^bb338:
  %v533 = sea.load %v351[%v506] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_624"("seahorn/lib/linked_list_helper.c":113:39))
  %v534 = sea.ptr.index %v8 [] strides [] offset 112 inbounds : !sea.ptr<64> loc("_625"("seahorn/lib/linked_list_helper.c":113:54))
  %v535 = sea.load %v242[%v534] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_626")
  %v536 = sea.ptr.cmp eq, %v533, %v535 : !sea.ptr<64> loc("_627")
  %v537 = sea.const 1 : i1 loc("or.cond157")
  %v538 = sea.const 0 : i1 loc("or.cond157")
  %v539 = sea.select %v537, %v536, %v538 : i1 loc("or.cond157")
  sea.cond_br %v539, ^bb339, ^bb615
^bb339:
  sea.br ^bb340
^bb340:
  %v540 = sea.load %v242[%v176] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_630"("seahorn/lib/linked_list_helper.c":232:31))
  %v541 = sea.ptr.index %v540 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_631"("seahorn/lib/linked_list_helper.c":232:47))
  %v542 = sea.const 8 : i64 loc("_632"("seahorn/lib/linked_list_helper.c":232:47))
  %v543 = sea.ptr.dereferenceable %v541, %v542 : !sea.ptr<64>, i64 loc("_632"("seahorn/lib/linked_list_helper.c":232:47))
  sea.cond_br %v543, ^bb341, ^bb615
^bb341:
  %v544 = sea.load %v351[%v541] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_634"("seahorn/lib/linked_list_helper.c":232:47))
  %v545 = sea.ptr.index %v8 [] strides [] offset 120 inbounds : !sea.ptr<64> loc("_635"("seahorn/lib/linked_list_helper.c":232:54))
  %v546 = sea.load %v242[%v545] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_636")
  %v547 = sea.ptr.cmp eq, %v546, %v544 : !sea.ptr<64> loc("_637")
  %v548 = sea.const 1 : i1 loc("or.cond159")
  %v549 = sea.const 0 : i1 loc("or.cond159")
  %v550 = sea.select %v548, %v547, %v549 : i1 loc("or.cond159")
  sea.cond_br %v550, ^bb342, ^bb615
^bb342:
  %v551 = sea.ptr.index %v544 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_639"("seahorn/lib/linked_list_helper.c":108:39))
  %v552 = sea.const 8 : i64 loc("_640"("seahorn/lib/linked_list_helper.c":108:39))
  %v553 = sea.ptr.dereferenceable %v551, %v552 : !sea.ptr<64>, i64 loc("_640"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v553, ^bb343, ^bb615
^bb343:
  %v554 = sea.load %v351[%v551] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_642"("seahorn/lib/linked_list_helper.c":108:39))
  %v555 = sea.ptr.index %v8 [] strides [] offset 128 inbounds : !sea.ptr<64> loc("_643"("seahorn/lib/linked_list_helper.c":108:54))
  %v556 = sea.load %v242[%v555] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_644")
  %v557 = sea.ptr.cmp eq, %v554, %v556 : !sea.ptr<64> loc("_645")
  %v558 = sea.const 1 : i1 loc("or.cond161")
  %v559 = sea.const 0 : i1 loc("or.cond161")
  %v560 = sea.select %v558, %v557, %v559 : i1 loc("or.cond161")
  sea.cond_br %v560, ^bb344, ^bb615
^bb344:
  sea.br ^bb345
^bb345:
  %v561 = sea.const 8 : i64 loc("_648"("seahorn/lib/linked_list_helper.c":113:39))
  %v562 = sea.ptr.dereferenceable %v544, %v561 : !sea.ptr<64>, i64 loc("_648"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v562, ^bb346, ^bb615
^bb346:
  %v563 = sea.load %v351[%v544] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_650"("seahorn/lib/linked_list_helper.c":113:39))
  %v564 = sea.ptr.index %v8 [] strides [] offset 136 inbounds : !sea.ptr<64> loc("_651"("seahorn/lib/linked_list_helper.c":113:54))
  %v565 = sea.load %v242[%v564] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_652")
  %v566 = sea.ptr.cmp eq, %v563, %v565 : !sea.ptr<64> loc("_653")
  %v567 = sea.const 1 : i1 loc("or.cond165")
  %v568 = sea.const 0 : i1 loc("or.cond165")
  %v569 = sea.select %v567, %v566, %v568 : i1 loc("or.cond165")
  sea.cond_br %v569, ^bb347, ^bb615
^bb347:
  sea.br ^bb348
^bb348:
  %v570 = sea.ptr.index %v8 [] strides [] offset 144 inbounds : !sea.ptr<64> loc("_656"("seahorn/lib/linked_list_helper.c":233:53))
  %v571 = sea.load %v242[%v570] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_657")
  %v572 = sea.ptr.cmp eq, %v571, %v540 : !sea.ptr<64> loc("_658")
  %v573 = sea.const 1 : i1 loc("or.cond167")
  %v574 = sea.const 0 : i1 loc("or.cond167")
  %v575 = sea.select %v573, %v572, %v574 : i1 loc("or.cond167")
  sea.cond_br %v575, ^bb349, ^bb615
^bb349:
  %v576 = sea.const 8 : i64 loc("_660"("seahorn/lib/linked_list_helper.c":108:39))
  %v577 = sea.ptr.dereferenceable %v541, %v576 : !sea.ptr<64>, i64 loc("_660"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v577, ^bb350, ^bb615
^bb350:
  %v578 = sea.ptr.index %v8 [] strides [] offset 152 inbounds : !sea.ptr<64> loc("_662"("seahorn/lib/linked_list_helper.c":108:54))
  %v579 = sea.load %v242[%v578] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_663")
  %v580 = sea.ptr.cmp eq, %v544, %v579 : !sea.ptr<64> loc("_664")
  %v581 = sea.const 1 : i1 loc("or.cond180")
  %v582 = sea.const 0 : i1 loc("or.cond180")
  %v583 = sea.select %v581, %v580, %v582 : i1 loc("or.cond180")
  sea.cond_br %v583, ^bb398, ^bb615
^bb351:
  sea.br ^bb352
^bb352:
  %v584 = sea.load %v242[%v174] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_512"("seahorn/lib/linked_list_helper.c":211:33))
  %v585 = sea.ptr.index %v8 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_513"("seahorn/lib/linked_list_helper.c":211:53))
  %v586 = sea.load %v242[%v585] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_514")
  %v587 = sea.ptr.cmp eq, %v586, %v584 : !sea.ptr<64> loc("_515")
  %v588 = sea.const 1 : i1 loc("or.cond125")
  %v589 = sea.const 0 : i1 loc("or.cond125")
  %v590 = sea.select %v588, %v587, %v589 : i1 loc("or.cond125")
  sea.cond_br %v590, ^bb353, ^bb615
^bb353:
  %v591 = sea.const 8 : i64 loc("_517"("seahorn/lib/linked_list_helper.c":113:39))
  %v592 = sea.ptr.dereferenceable %v584, %v591 : !sea.ptr<64>, i64 loc("_517"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v592, ^bb354, ^bb615
^bb354:
  %v593 = sea.load %v351[%v584] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_519"("seahorn/lib/linked_list_helper.c":113:39))
  %v594 = sea.ptr.index %v8 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_520"("seahorn/lib/linked_list_helper.c":113:54))
  %v595 = sea.load %v242[%v594] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_521")
  %v596 = sea.ptr.cmp eq, %v593, %v595 : !sea.ptr<64> loc("_522")
  %v597 = sea.const 1 : i1 loc("or.cond127")
  %v598 = sea.const 0 : i1 loc("or.cond127")
  %v599 = sea.select %v597, %v596, %v598 : i1 loc("or.cond127")
  sea.cond_br %v599, ^bb355, ^bb615
^bb355:
  sea.br ^bb356
^bb356:
  %v600 = sea.load %v242[%v176] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_525"("seahorn/lib/linked_list_helper.c":212:33))
  %v601 = sea.ptr.index %v8 [] strides [] offset 120 inbounds : !sea.ptr<64> loc("_526"("seahorn/lib/linked_list_helper.c":212:50))
  %v602 = sea.load %v242[%v601] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_527")
  %v603 = sea.ptr.cmp eq, %v602, %v600 : !sea.ptr<64> loc("_528")
  %v604 = sea.const 1 : i1 loc("or.cond129")
  %v605 = sea.const 0 : i1 loc("or.cond129")
  %v606 = sea.select %v604, %v603, %v605 : i1 loc("or.cond129")
  sea.cond_br %v606, ^bb357, ^bb615
^bb357:
  %v607 = sea.ptr.index %v600 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_530"("seahorn/lib/linked_list_helper.c":108:39))
  %v608 = sea.const 8 : i64 loc("_531"("seahorn/lib/linked_list_helper.c":108:39))
  %v609 = sea.ptr.dereferenceable %v607, %v608 : !sea.ptr<64>, i64 loc("_531"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v609, ^bb358, ^bb615
^bb358:
  %v610 = sea.load %v351[%v607] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_533"("seahorn/lib/linked_list_helper.c":108:39))
  %v611 = sea.ptr.index %v8 [] strides [] offset 128 inbounds : !sea.ptr<64> loc("_534"("seahorn/lib/linked_list_helper.c":108:54))
  %v612 = sea.load %v242[%v611] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_535")
  %v613 = sea.ptr.cmp eq, %v610, %v612 : !sea.ptr<64> loc("_536")
  %v614 = sea.const 1 : i1 loc("or.cond131")
  %v615 = sea.const 0 : i1 loc("or.cond131")
  %v616 = sea.select %v614, %v613, %v615 : i1 loc("or.cond131")
  sea.cond_br %v616, ^bb359, ^bb615
^bb359:
  %v617 = sea.ptr.index %v8 [] strides [] offset 96 inbounds : !sea.ptr<64> loc("_538"("seahorn/lib/linked_list_helper.c":214:11))
  sea.br ^bb360
^bb360:
  %v618 = sea.load %v242[%v617] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_540"("seahorn/lib/linked_list_helper.c":214:27))
  sea.br ^bb361
^bb361:
  %v619 = sea.const 8 : i64 loc("_542"("seahorn/lib/linked_list_helper.c":214:54))
  %v620 = sea.ptr.dereferenceable %v584, %v619 : !sea.ptr<64>, i64 loc("_542"("seahorn/lib/linked_list_helper.c":214:54))
  sea.cond_br %v620, ^bb362, ^bb615
^bb362:
  %v621 = sea.ptr.cmp eq, %v618, %v593 : !sea.ptr<64> loc("_544"("seahorn/lib/linked_list_helper.c":214:32))
  sea.cond_br %v621, ^bb374, ^bb363 loc("seahorn/lib/linked_list_helper.c":214:11)
^bb363:
  sea.br ^bb364
^bb364:
  sea.br ^bb365
^bb365:
  %v622 = sea.const 8 : i64 loc("_568"("seahorn/lib/linked_list_helper.c":218:63))
  %v623 = sea.ptr.dereferenceable %v607, %v622 : !sea.ptr<64>, i64 loc("_568"("seahorn/lib/linked_list_helper.c":218:63))
  %v624 = sea.ptr.cmp eq, %v618, %v610 : !sea.ptr<64> loc("_569")
  %v625 = sea.const 0 : i1 loc("or.cond176")
  %v626 = sea.select %v623, %v624, %v625 : i1 loc("or.cond176")
  sea.cond_br %v626, ^bb366, ^bb615
^bb366:
  sea.br ^bb367
^bb367:
  %v627 = sea.const 8 : i64 loc("_572"("seahorn/lib/linked_list_helper.c":220:51))
  %v628 = sea.ptr.dereferenceable %v607, %v627 : !sea.ptr<64>, i64 loc("_572"("seahorn/lib/linked_list_helper.c":220:51))
  sea.cond_br %v628, ^bb368, ^bb615
^bb368:
  sea.br ^bb369
^bb369:
  %v629 = sea.ptr.index %v610 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_575"("seahorn/lib/linked_list_helper.c":108:39))
  %v630 = sea.const 8 : i64 loc("_576"("seahorn/lib/linked_list_helper.c":108:39))
  %v631 = sea.ptr.dereferenceable %v629, %v630 : !sea.ptr<64>, i64 loc("_576"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v631, ^bb370, ^bb615
^bb370:
  %v632 = sea.load %v351[%v629] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_578"("seahorn/lib/linked_list_helper.c":108:39))
  %v633 = sea.ptr.index %v8 [] strides [] offset 104 inbounds : !sea.ptr<64> loc("_579"("seahorn/lib/linked_list_helper.c":108:54))
  %v634 = sea.load %v242[%v633] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_580")
  %v635 = sea.ptr.cmp eq, %v632, %v634 : !sea.ptr<64> loc("_581")
  %v636 = sea.const 1 : i1 loc("or.cond141")
  %v637 = sea.const 0 : i1 loc("or.cond141")
  %v638 = sea.select %v636, %v635, %v637 : i1 loc("or.cond141")
  sea.cond_br %v638, ^bb371, ^bb615
^bb371:
  sea.br ^bb372
^bb372:
  %v639 = sea.const 8 : i64 loc("_584"("seahorn/lib/linked_list_helper.c":113:39))
  %v640 = sea.ptr.dereferenceable %v610, %v639 : !sea.ptr<64>, i64 loc("_584"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v640, ^bb373, ^bb615
^bb373:
  %v641 = sea.load %v351[%v610] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_586"("seahorn/lib/linked_list_helper.c":113:39))
  %v642 = sea.ptr.index %v8 [] strides [] offset 112 inbounds : !sea.ptr<64> loc("_587"("seahorn/lib/linked_list_helper.c":113:54))
  %v643 = sea.load %v242[%v642] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_588")
  %v644 = sea.ptr.cmp eq, %v641, %v643 : !sea.ptr<64> loc("_589")
  %v645 = sea.const 1 : i1 loc("or.cond178")
  %v646 = sea.const 0 : i1 loc("or.cond178")
  %v647 = sea.select %v645, %v644, %v646 : i1 loc("or.cond178")
  sea.cond_br %v647, ^bb398, ^bb615
^bb374:
  sea.br ^bb375
^bb375:
  %v648 = sea.const 8 : i64 loc("_547"("seahorn/lib/linked_list_helper.c":216:47))
  %v649 = sea.ptr.dereferenceable %v584, %v648 : !sea.ptr<64>, i64 loc("_547"("seahorn/lib/linked_list_helper.c":216:47))
  sea.cond_br %v649, ^bb376, ^bb615
^bb376:
  sea.br ^bb377
^bb377:
  %v650 = sea.ptr.index %v593 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_550"("seahorn/lib/linked_list_helper.c":108:39))
  %v651 = sea.const 8 : i64 loc("_551"("seahorn/lib/linked_list_helper.c":108:39))
  %v652 = sea.ptr.dereferenceable %v650, %v651 : !sea.ptr<64>, i64 loc("_551"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v652, ^bb378, ^bb615
^bb378:
  %v653 = sea.load %v351[%v650] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_553"("seahorn/lib/linked_list_helper.c":108:39))
  %v654 = sea.ptr.index %v8 [] strides [] offset 104 inbounds : !sea.ptr<64> loc("_554"("seahorn/lib/linked_list_helper.c":108:54))
  %v655 = sea.load %v242[%v654] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_555")
  %v656 = sea.ptr.cmp eq, %v653, %v655 : !sea.ptr<64> loc("_556")
  %v657 = sea.const 1 : i1 loc("or.cond135")
  %v658 = sea.const 0 : i1 loc("or.cond135")
  %v659 = sea.select %v657, %v656, %v658 : i1 loc("or.cond135")
  sea.cond_br %v659, ^bb379, ^bb615
^bb379:
  sea.br ^bb380
^bb380:
  %v660 = sea.const 8 : i64 loc("_559"("seahorn/lib/linked_list_helper.c":113:39))
  %v661 = sea.ptr.dereferenceable %v593, %v660 : !sea.ptr<64>, i64 loc("_559"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v661, ^bb381, ^bb615
^bb381:
  %v662 = sea.load %v351[%v593] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_561"("seahorn/lib/linked_list_helper.c":113:39))
  %v663 = sea.ptr.index %v8 [] strides [] offset 112 inbounds : !sea.ptr<64> loc("_562"("seahorn/lib/linked_list_helper.c":113:54))
  %v664 = sea.load %v242[%v663] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_563")
  %v665 = sea.ptr.cmp eq, %v662, %v664 : !sea.ptr<64> loc("_564")
  %v666 = sea.const 1 : i1 loc("or.cond175")
  %v667 = sea.const 0 : i1 loc("or.cond175")
  %v668 = sea.select %v666, %v665, %v667 : i1 loc("or.cond175")
  sea.cond_br %v668, ^bb398, ^bb615
^bb382:
  sea.br ^bb383
^bb383:
  %v669 = sea.load %v242[%v174] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_482"("seahorn/lib/linked_list_helper.c":206:36))
  %v670 = sea.ptr.index %v8 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_483"("seahorn/lib/linked_list_helper.c":206:56))
  %v671 = sea.load %v242[%v670] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_484")
  %v672 = sea.ptr.cmp eq, %v671, %v669 : !sea.ptr<64> loc("_485")
  %v673 = sea.const 1 : i1 loc("or.cond119")
  %v674 = sea.const 0 : i1 loc("or.cond119")
  %v675 = sea.select %v673, %v672, %v674 : i1 loc("or.cond119")
  sea.cond_br %v675, ^bb384, ^bb615
^bb384:
  %v676 = sea.const 8 : i64 loc("_487"("seahorn/lib/linked_list_helper.c":113:39))
  %v677 = sea.ptr.dereferenceable %v669, %v676 : !sea.ptr<64>, i64 loc("_487"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v677, ^bb385, ^bb615
^bb385:
  %v678 = sea.load %v351[%v669] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_489"("seahorn/lib/linked_list_helper.c":113:39))
  %v679 = sea.ptr.index %v8 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_490"("seahorn/lib/linked_list_helper.c":113:54))
  %v680 = sea.load %v242[%v679] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_491")
  %v681 = sea.ptr.cmp eq, %v678, %v680 : !sea.ptr<64> loc("_492")
  %v682 = sea.const 1 : i1 loc("or.cond121")
  %v683 = sea.const 0 : i1 loc("or.cond121")
  %v684 = sea.select %v682, %v681, %v683 : i1 loc("or.cond121")
  sea.cond_br %v684, ^bb386, ^bb615
^bb386:
  sea.br ^bb387
^bb387:
  %v685 = sea.load %v242[%v176] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_495"("seahorn/lib/linked_list_helper.c":207:36))
  %v686 = sea.ptr.index %v8 [] strides [] offset 96 inbounds : !sea.ptr<64> loc("_496"("seahorn/lib/linked_list_helper.c":207:53))
  %v687 = sea.load %v242[%v686] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_497")
  %v688 = sea.ptr.cmp eq, %v687, %v685 : !sea.ptr<64> loc("_498")
  %v689 = sea.const 1 : i1 loc("or.cond123")
  %v690 = sea.const 0 : i1 loc("or.cond123")
  %v691 = sea.select %v689, %v688, %v690 : i1 loc("or.cond123")
  sea.cond_br %v691, ^bb388, ^bb615
^bb388:
  %v692 = sea.ptr.index %v685 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_500"("seahorn/lib/linked_list_helper.c":108:39))
  %v693 = sea.const 8 : i64 loc("_501"("seahorn/lib/linked_list_helper.c":108:39))
  %v694 = sea.ptr.dereferenceable %v692, %v693 : !sea.ptr<64>, i64 loc("_501"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v694, ^bb389, ^bb615
^bb389:
  %v695 = sea.load %v351[%v692] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_503"("seahorn/lib/linked_list_helper.c":108:39))
  %v696 = sea.ptr.index %v8 [] strides [] offset 104 inbounds : !sea.ptr<64> loc("_504"("seahorn/lib/linked_list_helper.c":108:54))
  %v697 = sea.load %v242[%v696] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_505")
  %v698 = sea.ptr.cmp eq, %v695, %v697 : !sea.ptr<64> loc("_506")
  %v699 = sea.const 1 : i1 loc("or.cond173")
  %v700 = sea.const 0 : i1 loc("or.cond173")
  %v701 = sea.select %v699, %v698, %v700 : i1 loc("or.cond173")
  sea.cond_br %v701, ^bb398, ^bb615
^bb390:
  sea.br ^bb391
^bb391:
  %v702 = sea.load %v242[%v174] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_469"("seahorn/lib/linked_list_helper.c":201:19))
  %v703 = sea.load %v242[%v176] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_470")
  %v704 = sea.ptr.cmp eq, %v702, %v703 : !sea.ptr<64> loc("_471")
  %v705 = sea.const 1 : i1 loc("or.cond117")
  %v706 = sea.const 0 : i1 loc("or.cond117")
  %v707 = sea.select %v705, %v704, %v706 : i1 loc("or.cond117")
  sea.cond_br %v707, ^bb392, ^bb615
^bb392:
  sea.br ^bb393
^bb393:
  %v708 = sea.ptr.index %v8 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_474"("seahorn/lib/linked_list_helper.c":202:40))
  %v709 = sea.load %v242[%v708] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_475")
  %v710 = sea.ptr.cmp eq, %v702, %v709 : !sea.ptr<64> loc("_476")
  %v711 = sea.const 1 : i1 loc("or.cond171")
  %v712 = sea.const 0 : i1 loc("or.cond171")
  %v713 = sea.select %v711, %v710, %v712 : i1 loc("or.cond171")
  sea.cond_br %v713, ^bb398, ^bb615
^bb394:
  sea.br ^bb395
^bb395:
  %v714 = sea.load %v242[%v165] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_456"("seahorn/lib/linked_list_helper.c":195:24))
  %v715 = sea.load %v242[%v167] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_457")
  %v716 = sea.ptr.cmp eq, %v714, %v715 : !sea.ptr<64> loc("_458")
  %v717 = sea.const 1 : i1 loc("or.cond115")
  %v718 = sea.const 0 : i1 loc("or.cond115")
  %v719 = sea.select %v717, %v716, %v718 : i1 loc("or.cond115")
  sea.cond_br %v719, ^bb396, ^bb615
^bb396:
  sea.br ^bb397
^bb397:
  %v720 = sea.load %v242[%v169] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_461"("seahorn/lib/linked_list_helper.c":196:24))
  %v721 = sea.load %v242[%v160] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_462")
  %v722 = sea.ptr.cmp eq, %v720, %v721 : !sea.ptr<64> loc("_463")
  %v723 = sea.const 1 : i1 loc("or.cond169")
  %v724 = sea.const 0 : i1 loc("or.cond169")
  %v725 = sea.select %v723, %v722, %v724 : i1 loc("or.cond169")
  sea.cond_br %v725, ^bb398, ^bb615
^bb398:
  sea.br ^bb399
^bb399:
  %v726 = sea.load %v320[%v10] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_667"("seahorn/lib/linked_list_helper.c":193:14))
  %v727 = sea.const 0 : i64 loc("_668"("seahorn/lib/linked_list_helper.c":193:25))
  %v728 = sea.icmp eq, %v726, %v727 : i64 loc("_668"("seahorn/lib/linked_list_helper.c":193:25))
  sea.cond_br %v728, ^bb500, ^bb400 loc("seahorn/lib/linked_list_helper.c":193:7)
^bb400:
  sea.br ^bb401
^bb401:
  %v729 = sea.const 1 : i64 loc("_683"("seahorn/lib/linked_list_helper.c":198:30))
  %v730 = sea.icmp eq, %v726, %v729 : i64 loc("_683"("seahorn/lib/linked_list_helper.c":198:30))
  sea.cond_br %v730, ^bb494, ^bb402 loc("seahorn/lib/linked_list_helper.c":198:12)
^bb402:
  sea.br ^bb403
^bb403:
  %v731 = sea.const 2 : i64 loc("_698"("seahorn/lib/linked_list_helper.c":204:30))
  %v732 = sea.icmp eq, %v726, %v731 : i64 loc("_698"("seahorn/lib/linked_list_helper.c":204:30))
  sea.cond_br %v732, ^bb482, ^bb404 loc("seahorn/lib/linked_list_helper.c":204:12)
^bb404:
  sea.br ^bb405
^bb405:
  %v733 = sea.const 3 : i64 loc("_731"("seahorn/lib/linked_list_helper.c":209:30))
  %v734 = sea.icmp eq, %v726, %v733 : i64 loc("_731"("seahorn/lib/linked_list_helper.c":209:30))
  sea.cond_br %v734, ^bb442, ^bb406 loc("seahorn/lib/linked_list_helper.c":209:12)
^bb406:
  sea.br ^bb407
^bb407:
  %v735 = sea.const 4 : i64 loc("_819"("seahorn/lib/linked_list_helper.c":228:30))
  %v736 = sea.icmp eq, %v726, %v735 : i64 loc("_819"("seahorn/lib/linked_list_helper.c":228:30))
  %v737 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":228:12)
  sea.cond_br %v736, ^bb408, ^bb506(%v737 : i1) loc("seahorn/lib/linked_list_helper.c":228:12)
^bb408:
  sea.br ^bb409
^bb409:
  %v738 = sea.load %v320[%v263] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_822"("seahorn/lib/linked_list_helper.c":230:36))
  %v739 = sea.ptr.index %v10 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_823"("seahorn/lib/linked_list_helper.c":230:56))
  sea.br ^bb410
^bb410:
  %v740 = sea.load %v320[%v739] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_825"("seahorn/lib/linked_list_helper.c":113:25))
  %v741 = sea.ptr.cmp eq, %v740, %v738 : !sea.ptr<64> loc("_826"("seahorn/lib/linked_list_helper.c":113:15))
  %v742 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":113:30)
  sea.cond_br %v741, ^bb411, ^bb506(%v742 : i1) loc("seahorn/lib/linked_list_helper.c":113:30)
^bb411:
  %v743 = sea.const 8 : i64 loc("_828"("seahorn/lib/linked_list_helper.c":113:39))
  %v744 = sea.ptr.dereferenceable %v738, %v743 : !sea.ptr<64>, i64 loc("_828"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v744, ^bb412, ^bb615
^bb412:
  %v745 = sea.load %v351[%v738] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_830"("seahorn/lib/linked_list_helper.c":113:39))
  %v746 = sea.ptr.index %v10 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_831"("seahorn/lib/linked_list_helper.c":113:54))
  sea.br ^bb413
^bb413:
  %v747 = sea.load %v320[%v746] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_832"("seahorn/lib/linked_list_helper.c":113:54))
  %v748 = sea.ptr.cmp eq, %v745, %v747 : !sea.ptr<64> loc("_833"("seahorn/lib/linked_list_helper.c":113:44))
  %v749 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":230:66)
  sea.cond_br %v748, ^bb414, ^bb506(%v749 : i1) loc("seahorn/lib/linked_list_helper.c":230:66)
^bb414:
  sea.br ^bb415
^bb415:
  %v750 = sea.const 8 : i64 loc("_836"("seahorn/lib/linked_list_helper.c":231:43))
  %v751 = sea.ptr.dereferenceable %v738, %v750 : !sea.ptr<64>, i64 loc("_836"("seahorn/lib/linked_list_helper.c":231:43))
  sea.cond_br %v751, ^bb416, ^bb615
^bb416:
  %v752 = sea.ptr.index %v10 [] strides [] offset 96 inbounds : !sea.ptr<64> loc("_838"("seahorn/lib/linked_list_helper.c":231:50))
  sea.br ^bb417
^bb417:
  %v753 = sea.load %v320[%v752] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_840"("seahorn/lib/linked_list_helper.c":108:25))
  %v754 = sea.ptr.cmp eq, %v753, %v745 : !sea.ptr<64> loc("_841"("seahorn/lib/linked_list_helper.c":108:15))
  %v755 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v754, ^bb418, ^bb506(%v755 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb418:
  %v756 = sea.ptr.index %v745 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_843"("seahorn/lib/linked_list_helper.c":108:39))
  %v757 = sea.const 8 : i64 loc("_844"("seahorn/lib/linked_list_helper.c":108:39))
  %v758 = sea.ptr.dereferenceable %v756, %v757 : !sea.ptr<64>, i64 loc("_844"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v758, ^bb419, ^bb615
^bb419:
  %v759 = sea.load %v351[%v756] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_846"("seahorn/lib/linked_list_helper.c":108:39))
  %v760 = sea.ptr.index %v10 [] strides [] offset 104 inbounds : !sea.ptr<64> loc("_847"("seahorn/lib/linked_list_helper.c":108:54))
  sea.br ^bb420
^bb420:
  %v761 = sea.load %v320[%v760] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_848"("seahorn/lib/linked_list_helper.c":108:54))
  %v762 = sea.ptr.cmp eq, %v759, %v761 : !sea.ptr<64> loc("_849"("seahorn/lib/linked_list_helper.c":108:44))
  %v763 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v762, ^bb421, ^bb506(%v763 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb421:
  sea.br ^bb422
^bb422:
  %v764 = sea.const 8 : i64 loc("_852"("seahorn/lib/linked_list_helper.c":113:39))
  %v765 = sea.ptr.dereferenceable %v745, %v764 : !sea.ptr<64>, i64 loc("_852"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v765, ^bb423, ^bb615
^bb423:
  %v766 = sea.load %v351[%v745] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_854"("seahorn/lib/linked_list_helper.c":113:39))
  %v767 = sea.ptr.index %v10 [] strides [] offset 112 inbounds : !sea.ptr<64> loc("_855"("seahorn/lib/linked_list_helper.c":113:54))
  sea.br ^bb424
^bb424:
  %v768 = sea.load %v320[%v767] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_856"("seahorn/lib/linked_list_helper.c":113:54))
  %v769 = sea.ptr.cmp eq, %v766, %v768 : !sea.ptr<64> loc("_857"("seahorn/lib/linked_list_helper.c":113:44))
  %v770 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":231:67)
  sea.cond_br %v769, ^bb425, ^bb506(%v770 : i1) loc("seahorn/lib/linked_list_helper.c":231:67)
^bb425:
  sea.br ^bb426
^bb426:
  %v771 = sea.load %v320[%v265] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_860"("seahorn/lib/linked_list_helper.c":232:31))
  %v772 = sea.ptr.index %v771 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_861"("seahorn/lib/linked_list_helper.c":232:47))
  %v773 = sea.const 8 : i64 loc("_862"("seahorn/lib/linked_list_helper.c":232:47))
  %v774 = sea.ptr.dereferenceable %v772, %v773 : !sea.ptr<64>, i64 loc("_862"("seahorn/lib/linked_list_helper.c":232:47))
  sea.cond_br %v774, ^bb427, ^bb615
^bb427:
  %v775 = sea.load %v351[%v772] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_864"("seahorn/lib/linked_list_helper.c":232:47))
  %v776 = sea.ptr.index %v10 [] strides [] offset 120 inbounds : !sea.ptr<64> loc("_865"("seahorn/lib/linked_list_helper.c":232:54))
  sea.br ^bb428
^bb428:
  %v777 = sea.load %v320[%v776] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_867"("seahorn/lib/linked_list_helper.c":108:25))
  %v778 = sea.ptr.cmp eq, %v777, %v775 : !sea.ptr<64> loc("_868"("seahorn/lib/linked_list_helper.c":108:15))
  %v779 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v778, ^bb429, ^bb506(%v779 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb429:
  %v780 = sea.ptr.index %v775 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_870"("seahorn/lib/linked_list_helper.c":108:39))
  %v781 = sea.const 8 : i64 loc("_871"("seahorn/lib/linked_list_helper.c":108:39))
  %v782 = sea.ptr.dereferenceable %v780, %v781 : !sea.ptr<64>, i64 loc("_871"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v782, ^bb430, ^bb615
^bb430:
  %v783 = sea.load %v351[%v780] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_873"("seahorn/lib/linked_list_helper.c":108:39))
  %v784 = sea.ptr.index %v10 [] strides [] offset 128 inbounds : !sea.ptr<64> loc("_874"("seahorn/lib/linked_list_helper.c":108:54))
  sea.br ^bb431
^bb431:
  %v785 = sea.load %v320[%v784] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_875"("seahorn/lib/linked_list_helper.c":108:54))
  %v786 = sea.ptr.cmp eq, %v783, %v785 : !sea.ptr<64> loc("_876"("seahorn/lib/linked_list_helper.c":108:44))
  %v787 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v786, ^bb432, ^bb506(%v787 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb432:
  sea.br ^bb433
^bb433:
  %v788 = sea.const 8 : i64 loc("_879"("seahorn/lib/linked_list_helper.c":113:39))
  %v789 = sea.ptr.dereferenceable %v775, %v788 : !sea.ptr<64>, i64 loc("_879"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v789, ^bb434, ^bb615
^bb434:
  %v790 = sea.load %v351[%v775] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_881"("seahorn/lib/linked_list_helper.c":113:39))
  %v791 = sea.ptr.index %v10 [] strides [] offset 136 inbounds : !sea.ptr<64> loc("_882"("seahorn/lib/linked_list_helper.c":113:54))
  sea.br ^bb435
^bb435:
  %v792 = sea.load %v320[%v791] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_883"("seahorn/lib/linked_list_helper.c":113:54))
  %v793 = sea.ptr.cmp eq, %v790, %v792 : !sea.ptr<64> loc("_884"("seahorn/lib/linked_list_helper.c":113:44))
  %v794 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":232:71)
  sea.cond_br %v793, ^bb436, ^bb506(%v794 : i1) loc("seahorn/lib/linked_list_helper.c":232:71)
^bb436:
  sea.br ^bb437
^bb437:
  %v795 = sea.ptr.index %v10 [] strides [] offset 144 inbounds : !sea.ptr<64> loc("_887"("seahorn/lib/linked_list_helper.c":233:53))
  sea.br ^bb438
^bb438:
  %v796 = sea.load %v320[%v795] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_889"("seahorn/lib/linked_list_helper.c":108:25))
  %v797 = sea.ptr.cmp eq, %v796, %v771 : !sea.ptr<64> loc("_890"("seahorn/lib/linked_list_helper.c":108:15))
  %v798 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v797, ^bb439, ^bb506(%v798 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb439:
  %v799 = sea.const 8 : i64 loc("_892"("seahorn/lib/linked_list_helper.c":108:39))
  %v800 = sea.ptr.dereferenceable %v772, %v799 : !sea.ptr<64>, i64 loc("_892"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v800, ^bb440, ^bb615
^bb440:
  %v801 = sea.ptr.index %v10 [] strides [] offset 152 inbounds : !sea.ptr<64> loc("_894"("seahorn/lib/linked_list_helper.c":108:54))
  sea.br ^bb441
^bb441:
  %v802 = sea.load %v320[%v801] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_896"("seahorn/lib/linked_list_helper.c":108:54))
  %v803 = sea.ptr.cmp eq, %v775, %v802 : !sea.ptr<64> loc("_897"("seahorn/lib/linked_list_helper.c":108:44))
  sea.br ^bb506(%v803 : i1)
^bb442:
  sea.br ^bb443
^bb443:
  %v804 = sea.load %v320[%v263] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_734"("seahorn/lib/linked_list_helper.c":211:33))
  %v805 = sea.ptr.index %v10 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_735"("seahorn/lib/linked_list_helper.c":211:53))
  sea.br ^bb444
^bb444:
  %v806 = sea.load %v320[%v805] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_737"("seahorn/lib/linked_list_helper.c":113:25))
  %v807 = sea.ptr.cmp eq, %v806, %v804 : !sea.ptr<64> loc("_738"("seahorn/lib/linked_list_helper.c":113:15))
  %v808 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":113:30)
  sea.cond_br %v807, ^bb445, ^bb506(%v808 : i1) loc("seahorn/lib/linked_list_helper.c":113:30)
^bb445:
  %v809 = sea.const 8 : i64 loc("_740"("seahorn/lib/linked_list_helper.c":113:39))
  %v810 = sea.ptr.dereferenceable %v804, %v809 : !sea.ptr<64>, i64 loc("_740"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v810, ^bb446, ^bb615
^bb446:
  %v811 = sea.load %v351[%v804] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_742"("seahorn/lib/linked_list_helper.c":113:39))
  %v812 = sea.ptr.index %v10 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_743"("seahorn/lib/linked_list_helper.c":113:54))
  sea.br ^bb447
^bb447:
  %v813 = sea.load %v320[%v812] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_744"("seahorn/lib/linked_list_helper.c":113:54))
  %v814 = sea.ptr.cmp eq, %v811, %v813 : !sea.ptr<64> loc("_745"("seahorn/lib/linked_list_helper.c":113:44))
  %v815 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":211:63)
  sea.cond_br %v814, ^bb448, ^bb506(%v815 : i1) loc("seahorn/lib/linked_list_helper.c":211:63)
^bb448:
  sea.br ^bb449
^bb449:
  %v816 = sea.load %v320[%v265] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_748"("seahorn/lib/linked_list_helper.c":212:33))
  %v817 = sea.ptr.index %v10 [] strides [] offset 120 inbounds : !sea.ptr<64> loc("_749"("seahorn/lib/linked_list_helper.c":212:50))
  sea.br ^bb450
^bb450:
  %v818 = sea.load %v320[%v817] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_751"("seahorn/lib/linked_list_helper.c":108:25))
  %v819 = sea.ptr.cmp eq, %v818, %v816 : !sea.ptr<64> loc("_752"("seahorn/lib/linked_list_helper.c":108:15))
  %v820 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v819, ^bb451, ^bb506(%v820 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb451:
  %v821 = sea.ptr.index %v816 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_754"("seahorn/lib/linked_list_helper.c":108:39))
  %v822 = sea.const 8 : i64 loc("_755"("seahorn/lib/linked_list_helper.c":108:39))
  %v823 = sea.ptr.dereferenceable %v821, %v822 : !sea.ptr<64>, i64 loc("_755"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v823, ^bb452, ^bb615
^bb452:
  %v824 = sea.load %v351[%v821] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_757"("seahorn/lib/linked_list_helper.c":108:39))
  %v825 = sea.ptr.index %v10 [] strides [] offset 128 inbounds : !sea.ptr<64> loc("_758"("seahorn/lib/linked_list_helper.c":108:54))
  sea.br ^bb453
^bb453:
  %v826 = sea.load %v320[%v825] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_759"("seahorn/lib/linked_list_helper.c":108:54))
  %v827 = sea.ptr.cmp eq, %v824, %v826 : !sea.ptr<64> loc("_760"("seahorn/lib/linked_list_helper.c":108:44))
  %v828 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":211:9)
  sea.cond_br %v827, ^bb454, ^bb506(%v828 : i1) loc("seahorn/lib/linked_list_helper.c":211:9)
^bb454:
  %v829 = sea.ptr.index %v10 [] strides [] offset 96 inbounds : !sea.ptr<64> loc("_762"("seahorn/lib/linked_list_helper.c":214:11))
  sea.br ^bb455
^bb455:
  %v830 = sea.load %v320[%v829] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_764"("seahorn/lib/linked_list_helper.c":214:27))
  sea.br ^bb456
^bb456:
  %v831 = sea.const 8 : i64 loc("_766"("seahorn/lib/linked_list_helper.c":214:54))
  %v832 = sea.ptr.dereferenceable %v804, %v831 : !sea.ptr<64>, i64 loc("_766"("seahorn/lib/linked_list_helper.c":214:54))
  sea.cond_br %v832, ^bb457, ^bb615
^bb457:
  %v833 = sea.ptr.cmp eq, %v830, %v811 : !sea.ptr<64> loc("_768"("seahorn/lib/linked_list_helper.c":214:32))
  sea.cond_br %v833, ^bb472, ^bb458 loc("seahorn/lib/linked_list_helper.c":214:11)
^bb458:
  sea.br ^bb459
^bb459:
  sea.br ^bb460
^bb460:
  %v834 = sea.const 8 : i64 loc("_793"("seahorn/lib/linked_list_helper.c":218:63))
  %v835 = sea.ptr.dereferenceable %v821, %v834 : !sea.ptr<64>, i64 loc("_793"("seahorn/lib/linked_list_helper.c":218:63))
  sea.cond_br %v835, ^bb461, ^bb615
^bb461:
  %v836 = sea.ptr.cmp eq, %v830, %v824 : !sea.ptr<64> loc("_795"("seahorn/lib/linked_list_helper.c":218:37))
  %v837 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":218:16)
  sea.cond_br %v836, ^bb462, ^bb506(%v837 : i1) loc("seahorn/lib/linked_list_helper.c":218:16)
^bb462:
  sea.br ^bb463
^bb463:
  %v838 = sea.const 8 : i64 loc("_798"("seahorn/lib/linked_list_helper.c":220:51))
  %v839 = sea.ptr.dereferenceable %v821, %v838 : !sea.ptr<64>, i64 loc("_798"("seahorn/lib/linked_list_helper.c":220:51))
  sea.cond_br %v839, ^bb464, ^bb615
^bb464:
  sea.br ^bb465
^bb465:
  %v840 = sea.ptr.index %v824 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_801"("seahorn/lib/linked_list_helper.c":108:39))
  %v841 = sea.const 8 : i64 loc("_802"("seahorn/lib/linked_list_helper.c":108:39))
  %v842 = sea.ptr.dereferenceable %v840, %v841 : !sea.ptr<64>, i64 loc("_802"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v842, ^bb466, ^bb615
^bb466:
  %v843 = sea.load %v351[%v840] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_804"("seahorn/lib/linked_list_helper.c":108:39))
  %v844 = sea.ptr.index %v10 [] strides [] offset 104 inbounds : !sea.ptr<64> loc("_805"("seahorn/lib/linked_list_helper.c":108:54))
  sea.br ^bb467
^bb467:
  %v845 = sea.load %v320[%v844] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_806"("seahorn/lib/linked_list_helper.c":108:54))
  %v846 = sea.ptr.cmp eq, %v843, %v845 : !sea.ptr<64> loc("_807"("seahorn/lib/linked_list_helper.c":108:44))
  %v847 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v846, ^bb468, ^bb506(%v847 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb468:
  sea.br ^bb469
^bb469:
  %v848 = sea.const 8 : i64 loc("_810"("seahorn/lib/linked_list_helper.c":113:39))
  %v849 = sea.ptr.dereferenceable %v824, %v848 : !sea.ptr<64>, i64 loc("_810"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v849, ^bb470, ^bb615
^bb470:
  %v850 = sea.load %v351[%v824] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_812"("seahorn/lib/linked_list_helper.c":113:39))
  %v851 = sea.ptr.index %v10 [] strides [] offset 112 inbounds : !sea.ptr<64> loc("_813"("seahorn/lib/linked_list_helper.c":113:54))
  sea.br ^bb471
^bb471:
  %v852 = sea.load %v320[%v851] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_815"("seahorn/lib/linked_list_helper.c":113:54))
  %v853 = sea.ptr.cmp eq, %v850, %v852 : !sea.ptr<64> loc("_816"("seahorn/lib/linked_list_helper.c":113:44))
  sea.br ^bb506(%v853 : i1)
^bb472:
  sea.br ^bb473
^bb473:
  %v854 = sea.const 8 : i64 loc("_771"("seahorn/lib/linked_list_helper.c":216:47))
  %v855 = sea.ptr.dereferenceable %v804, %v854 : !sea.ptr<64>, i64 loc("_771"("seahorn/lib/linked_list_helper.c":216:47))
  sea.cond_br %v855, ^bb474, ^bb615
^bb474:
  sea.br ^bb475
^bb475:
  %v856 = sea.ptr.index %v811 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_774"("seahorn/lib/linked_list_helper.c":108:39))
  %v857 = sea.const 8 : i64 loc("_775"("seahorn/lib/linked_list_helper.c":108:39))
  %v858 = sea.ptr.dereferenceable %v856, %v857 : !sea.ptr<64>, i64 loc("_775"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v858, ^bb476, ^bb615
^bb476:
  %v859 = sea.load %v351[%v856] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_777"("seahorn/lib/linked_list_helper.c":108:39))
  %v860 = sea.ptr.index %v10 [] strides [] offset 104 inbounds : !sea.ptr<64> loc("_778"("seahorn/lib/linked_list_helper.c":108:54))
  sea.br ^bb477
^bb477:
  %v861 = sea.load %v320[%v860] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_779"("seahorn/lib/linked_list_helper.c":108:54))
  %v862 = sea.ptr.cmp eq, %v859, %v861 : !sea.ptr<64> loc("_780"("seahorn/lib/linked_list_helper.c":108:44))
  %v863 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v862, ^bb478, ^bb506(%v863 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb478:
  sea.br ^bb479
^bb479:
  %v864 = sea.const 8 : i64 loc("_783"("seahorn/lib/linked_list_helper.c":113:39))
  %v865 = sea.ptr.dereferenceable %v811, %v864 : !sea.ptr<64>, i64 loc("_783"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v865, ^bb480, ^bb615
^bb480:
  %v866 = sea.load %v351[%v811] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_785"("seahorn/lib/linked_list_helper.c":113:39))
  %v867 = sea.ptr.index %v10 [] strides [] offset 112 inbounds : !sea.ptr<64> loc("_786"("seahorn/lib/linked_list_helper.c":113:54))
  sea.br ^bb481
^bb481:
  %v868 = sea.load %v320[%v867] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_788"("seahorn/lib/linked_list_helper.c":113:54))
  %v869 = sea.ptr.cmp eq, %v866, %v868 : !sea.ptr<64> loc("_789"("seahorn/lib/linked_list_helper.c":113:44))
  sea.br ^bb506(%v869 : i1)
^bb482:
  sea.br ^bb483
^bb483:
  %v870 = sea.load %v320[%v263] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_701"("seahorn/lib/linked_list_helper.c":206:36))
  %v871 = sea.ptr.index %v10 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_702"("seahorn/lib/linked_list_helper.c":206:56))
  sea.br ^bb484
^bb484:
  %v872 = sea.load %v320[%v871] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_704"("seahorn/lib/linked_list_helper.c":113:25))
  %v873 = sea.ptr.cmp eq, %v872, %v870 : !sea.ptr<64> loc("_705"("seahorn/lib/linked_list_helper.c":113:15))
  %v874 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":113:30)
  sea.cond_br %v873, ^bb485, ^bb506(%v874 : i1) loc("seahorn/lib/linked_list_helper.c":113:30)
^bb485:
  %v875 = sea.const 8 : i64 loc("_707"("seahorn/lib/linked_list_helper.c":113:39))
  %v876 = sea.ptr.dereferenceable %v870, %v875 : !sea.ptr<64>, i64 loc("_707"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v876, ^bb486, ^bb615
^bb486:
  %v877 = sea.load %v351[%v870] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_709"("seahorn/lib/linked_list_helper.c":113:39))
  %v878 = sea.ptr.index %v10 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_710"("seahorn/lib/linked_list_helper.c":113:54))
  sea.br ^bb487
^bb487:
  %v879 = sea.load %v320[%v878] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_711"("seahorn/lib/linked_list_helper.c":113:54))
  %v880 = sea.ptr.cmp eq, %v877, %v879 : !sea.ptr<64> loc("_712"("seahorn/lib/linked_list_helper.c":113:44))
  %v881 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":206:66)
  sea.cond_br %v880, ^bb488, ^bb506(%v881 : i1) loc("seahorn/lib/linked_list_helper.c":206:66)
^bb488:
  sea.br ^bb489
^bb489:
  %v882 = sea.load %v320[%v265] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_715"("seahorn/lib/linked_list_helper.c":207:36))
  %v883 = sea.ptr.index %v10 [] strides [] offset 96 inbounds : !sea.ptr<64> loc("_716"("seahorn/lib/linked_list_helper.c":207:53))
  sea.br ^bb490
^bb490:
  %v884 = sea.load %v320[%v883] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_718"("seahorn/lib/linked_list_helper.c":108:25))
  %v885 = sea.ptr.cmp eq, %v884, %v882 : !sea.ptr<64> loc("_719"("seahorn/lib/linked_list_helper.c":108:15))
  %v886 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v885, ^bb491, ^bb506(%v886 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb491:
  %v887 = sea.ptr.index %v882 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_721"("seahorn/lib/linked_list_helper.c":108:39))
  %v888 = sea.const 8 : i64 loc("_722"("seahorn/lib/linked_list_helper.c":108:39))
  %v889 = sea.ptr.dereferenceable %v887, %v888 : !sea.ptr<64>, i64 loc("_722"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v889, ^bb492, ^bb615
^bb492:
  %v890 = sea.load %v351[%v887] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_724"("seahorn/lib/linked_list_helper.c":108:39))
  %v891 = sea.ptr.index %v10 [] strides [] offset 104 inbounds : !sea.ptr<64> loc("_725"("seahorn/lib/linked_list_helper.c":108:54))
  sea.br ^bb493
^bb493:
  %v892 = sea.load %v320[%v891] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_727"("seahorn/lib/linked_list_helper.c":108:54))
  %v893 = sea.ptr.cmp eq, %v890, %v892 : !sea.ptr<64> loc("_728"("seahorn/lib/linked_list_helper.c":108:44))
  sea.br ^bb506(%v893 : i1)
^bb494:
  sea.br ^bb495
^bb495:
  %v894 = sea.load %v320[%v263] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_686"("seahorn/lib/linked_list_helper.c":201:19))
  sea.br ^bb496
^bb496:
  %v895 = sea.load %v320[%v265] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_688"("seahorn/lib/linked_list_helper.c":201:40))
  %v896 = sea.ptr.cmp eq, %v894, %v895 : !sea.ptr<64> loc("_689"("seahorn/lib/linked_list_helper.c":201:30))
  %v897 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":201:55)
  sea.cond_br %v896, ^bb497, ^bb506(%v897 : i1) loc("seahorn/lib/linked_list_helper.c":201:55)
^bb497:
  sea.br ^bb498
^bb498:
  %v898 = sea.ptr.index %v10 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_692"("seahorn/lib/linked_list_helper.c":202:40))
  sea.br ^bb499
^bb499:
  %v899 = sea.load %v320[%v898] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_694"("seahorn/lib/linked_list_helper.c":202:49))
  %v900 = sea.ptr.cmp eq, %v894, %v899 : !sea.ptr<64> loc("_695"("seahorn/lib/linked_list_helper.c":202:30))
  sea.br ^bb506(%v900 : i1)
^bb500:
  sea.br ^bb501
^bb501:
  %v901 = sea.load %v320[%v254] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_671"("seahorn/lib/linked_list_helper.c":195:24))
  sea.br ^bb502
^bb502:
  %v902 = sea.load %v320[%v256] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_673"("seahorn/lib/linked_list_helper.c":195:49))
  %v903 = sea.ptr.cmp eq, %v901, %v902 : !sea.ptr<64> loc("_674"("seahorn/lib/linked_list_helper.c":195:34))
  %v904 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":195:54)
  sea.cond_br %v903, ^bb503, ^bb506(%v904 : i1) loc("seahorn/lib/linked_list_helper.c":195:54)
^bb503:
  sea.br ^bb504
^bb504:
  %v905 = sea.load %v320[%v258] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_677"("seahorn/lib/linked_list_helper.c":196:24))
  sea.br ^bb505
^bb505:
  %v906 = sea.load %v320[%v249] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_679"("seahorn/lib/linked_list_helper.c":196:49))
  %v907 = sea.ptr.cmp eq, %v905, %v906 : !sea.ptr<64> loc("_680"("seahorn/lib/linked_list_helper.c":196:34))
  sea.br ^bb506(%v907 : i1)
^bb506(%v908 : i1):
  sea.br ^bb507
^bb507:
  sea.cond_br %v728, ^bb608, ^bb508 loc("seahorn/lib/linked_list_helper.c":193:7)
^bb508:
  sea.br ^bb509
^bb509:
  %v909 = sea.const 1 : i64 loc("_913"("seahorn/lib/linked_list_helper.c":198:30))
  %v910 = sea.icmp eq, %v726, %v909 : i64 loc("_913"("seahorn/lib/linked_list_helper.c":198:30))
  sea.cond_br %v910, ^bb602, ^bb510 loc("seahorn/lib/linked_list_helper.c":198:12)
^bb510:
  sea.br ^bb511
^bb511:
  %v911 = sea.const 2 : i64 loc("_928"("seahorn/lib/linked_list_helper.c":204:30))
  %v912 = sea.icmp eq, %v726, %v911 : i64 loc("_928"("seahorn/lib/linked_list_helper.c":204:30))
  sea.cond_br %v912, ^bb590, ^bb512 loc("seahorn/lib/linked_list_helper.c":204:12)
^bb512:
  sea.br ^bb513
^bb513:
  %v913 = sea.const 3 : i64 loc("_961"("seahorn/lib/linked_list_helper.c":209:30))
  %v914 = sea.icmp eq, %v726, %v913 : i64 loc("_961"("seahorn/lib/linked_list_helper.c":209:30))
  sea.cond_br %v914, ^bb550, ^bb514 loc("seahorn/lib/linked_list_helper.c":209:12)
^bb514:
  sea.br ^bb515
^bb515:
  %v915 = sea.const 4 : i64 loc("_1049"("seahorn/lib/linked_list_helper.c":228:30))
  %v916 = sea.icmp eq, %v726, %v915 : i64 loc("_1049"("seahorn/lib/linked_list_helper.c":228:30))
  %v917 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":228:12)
  sea.cond_br %v916, ^bb516, ^bb614(%v917 : i1) loc("seahorn/lib/linked_list_helper.c":228:12)
^bb516:
  sea.br ^bb517
^bb517:
  %v918 = sea.load %v320[%v263] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1052"("seahorn/lib/linked_list_helper.c":230:36))
  %v919 = sea.ptr.index %v10 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_1053"("seahorn/lib/linked_list_helper.c":230:56))
  sea.br ^bb518
^bb518:
  %v920 = sea.load %v320[%v919] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1055"("seahorn/lib/linked_list_helper.c":113:25))
  %v921 = sea.ptr.cmp eq, %v920, %v918 : !sea.ptr<64> loc("_1056"("seahorn/lib/linked_list_helper.c":113:15))
  %v922 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":113:30)
  sea.cond_br %v921, ^bb519, ^bb614(%v922 : i1) loc("seahorn/lib/linked_list_helper.c":113:30)
^bb519:
  %v923 = sea.const 8 : i64 loc("_1058"("seahorn/lib/linked_list_helper.c":113:39))
  %v924 = sea.ptr.dereferenceable %v918, %v923 : !sea.ptr<64>, i64 loc("_1058"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v924, ^bb520, ^bb615
^bb520:
  %v925 = sea.load %v351[%v918] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1060"("seahorn/lib/linked_list_helper.c":113:39))
  %v926 = sea.ptr.index %v10 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_1061"("seahorn/lib/linked_list_helper.c":113:54))
  sea.br ^bb521
^bb521:
  %v927 = sea.load %v320[%v926] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1062"("seahorn/lib/linked_list_helper.c":113:54))
  %v928 = sea.ptr.cmp eq, %v925, %v927 : !sea.ptr<64> loc("_1063"("seahorn/lib/linked_list_helper.c":113:44))
  %v929 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":230:66)
  sea.cond_br %v928, ^bb522, ^bb614(%v929 : i1) loc("seahorn/lib/linked_list_helper.c":230:66)
^bb522:
  sea.br ^bb523
^bb523:
  %v930 = sea.const 8 : i64 loc("_1066"("seahorn/lib/linked_list_helper.c":231:43))
  %v931 = sea.ptr.dereferenceable %v918, %v930 : !sea.ptr<64>, i64 loc("_1066"("seahorn/lib/linked_list_helper.c":231:43))
  sea.cond_br %v931, ^bb524, ^bb615
^bb524:
  %v932 = sea.ptr.index %v10 [] strides [] offset 96 inbounds : !sea.ptr<64> loc("_1068"("seahorn/lib/linked_list_helper.c":231:50))
  sea.br ^bb525
^bb525:
  %v933 = sea.load %v320[%v932] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1070"("seahorn/lib/linked_list_helper.c":108:25))
  %v934 = sea.ptr.cmp eq, %v933, %v925 : !sea.ptr<64> loc("_1071"("seahorn/lib/linked_list_helper.c":108:15))
  %v935 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v934, ^bb526, ^bb614(%v935 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb526:
  %v936 = sea.ptr.index %v925 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_1073"("seahorn/lib/linked_list_helper.c":108:39))
  %v937 = sea.const 8 : i64 loc("_1074"("seahorn/lib/linked_list_helper.c":108:39))
  %v938 = sea.ptr.dereferenceable %v936, %v937 : !sea.ptr<64>, i64 loc("_1074"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v938, ^bb527, ^bb615
^bb527:
  %v939 = sea.load %v351[%v936] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1076"("seahorn/lib/linked_list_helper.c":108:39))
  %v940 = sea.ptr.index %v10 [] strides [] offset 104 inbounds : !sea.ptr<64> loc("_1077"("seahorn/lib/linked_list_helper.c":108:54))
  sea.br ^bb528
^bb528:
  %v941 = sea.load %v320[%v940] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1078"("seahorn/lib/linked_list_helper.c":108:54))
  %v942 = sea.ptr.cmp eq, %v939, %v941 : !sea.ptr<64> loc("_1079"("seahorn/lib/linked_list_helper.c":108:44))
  %v943 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v942, ^bb529, ^bb614(%v943 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb529:
  sea.br ^bb530
^bb530:
  %v944 = sea.const 8 : i64 loc("_1082"("seahorn/lib/linked_list_helper.c":113:39))
  %v945 = sea.ptr.dereferenceable %v925, %v944 : !sea.ptr<64>, i64 loc("_1082"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v945, ^bb531, ^bb615
^bb531:
  %v946 = sea.load %v351[%v925] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1084"("seahorn/lib/linked_list_helper.c":113:39))
  %v947 = sea.ptr.index %v10 [] strides [] offset 112 inbounds : !sea.ptr<64> loc("_1085"("seahorn/lib/linked_list_helper.c":113:54))
  sea.br ^bb532
^bb532:
  %v948 = sea.load %v320[%v947] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1086"("seahorn/lib/linked_list_helper.c":113:54))
  %v949 = sea.ptr.cmp eq, %v946, %v948 : !sea.ptr<64> loc("_1087"("seahorn/lib/linked_list_helper.c":113:44))
  %v950 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":231:67)
  sea.cond_br %v949, ^bb533, ^bb614(%v950 : i1) loc("seahorn/lib/linked_list_helper.c":231:67)
^bb533:
  sea.br ^bb534
^bb534:
  %v951 = sea.load %v320[%v265] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1090"("seahorn/lib/linked_list_helper.c":232:31))
  %v952 = sea.ptr.index %v951 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_1091"("seahorn/lib/linked_list_helper.c":232:47))
  %v953 = sea.const 8 : i64 loc("_1092"("seahorn/lib/linked_list_helper.c":232:47))
  %v954 = sea.ptr.dereferenceable %v952, %v953 : !sea.ptr<64>, i64 loc("_1092"("seahorn/lib/linked_list_helper.c":232:47))
  sea.cond_br %v954, ^bb535, ^bb615
^bb535:
  %v955 = sea.load %v351[%v952] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1094"("seahorn/lib/linked_list_helper.c":232:47))
  %v956 = sea.ptr.index %v10 [] strides [] offset 120 inbounds : !sea.ptr<64> loc("_1095"("seahorn/lib/linked_list_helper.c":232:54))
  sea.br ^bb536
^bb536:
  %v957 = sea.load %v320[%v956] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1097"("seahorn/lib/linked_list_helper.c":108:25))
  %v958 = sea.ptr.cmp eq, %v957, %v955 : !sea.ptr<64> loc("_1098"("seahorn/lib/linked_list_helper.c":108:15))
  %v959 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v958, ^bb537, ^bb614(%v959 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb537:
  %v960 = sea.ptr.index %v955 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_1100"("seahorn/lib/linked_list_helper.c":108:39))
  %v961 = sea.const 8 : i64 loc("_1101"("seahorn/lib/linked_list_helper.c":108:39))
  %v962 = sea.ptr.dereferenceable %v960, %v961 : !sea.ptr<64>, i64 loc("_1101"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v962, ^bb538, ^bb615
^bb538:
  %v963 = sea.load %v351[%v960] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1103"("seahorn/lib/linked_list_helper.c":108:39))
  %v964 = sea.ptr.index %v10 [] strides [] offset 128 inbounds : !sea.ptr<64> loc("_1104"("seahorn/lib/linked_list_helper.c":108:54))
  sea.br ^bb539
^bb539:
  %v965 = sea.load %v320[%v964] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1105"("seahorn/lib/linked_list_helper.c":108:54))
  %v966 = sea.ptr.cmp eq, %v963, %v965 : !sea.ptr<64> loc("_1106"("seahorn/lib/linked_list_helper.c":108:44))
  %v967 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v966, ^bb540, ^bb614(%v967 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb540:
  sea.br ^bb541
^bb541:
  %v968 = sea.const 8 : i64 loc("_1109"("seahorn/lib/linked_list_helper.c":113:39))
  %v969 = sea.ptr.dereferenceable %v955, %v968 : !sea.ptr<64>, i64 loc("_1109"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v969, ^bb542, ^bb615
^bb542:
  %v970 = sea.load %v351[%v955] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1111"("seahorn/lib/linked_list_helper.c":113:39))
  %v971 = sea.ptr.index %v10 [] strides [] offset 136 inbounds : !sea.ptr<64> loc("_1112"("seahorn/lib/linked_list_helper.c":113:54))
  sea.br ^bb543
^bb543:
  %v972 = sea.load %v320[%v971] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1113"("seahorn/lib/linked_list_helper.c":113:54))
  %v973 = sea.ptr.cmp eq, %v970, %v972 : !sea.ptr<64> loc("_1114"("seahorn/lib/linked_list_helper.c":113:44))
  %v974 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":232:71)
  sea.cond_br %v973, ^bb544, ^bb614(%v974 : i1) loc("seahorn/lib/linked_list_helper.c":232:71)
^bb544:
  sea.br ^bb545
^bb545:
  %v975 = sea.ptr.index %v10 [] strides [] offset 144 inbounds : !sea.ptr<64> loc("_1117"("seahorn/lib/linked_list_helper.c":233:53))
  sea.br ^bb546
^bb546:
  %v976 = sea.load %v320[%v975] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1119"("seahorn/lib/linked_list_helper.c":108:25))
  %v977 = sea.ptr.cmp eq, %v976, %v951 : !sea.ptr<64> loc("_1120"("seahorn/lib/linked_list_helper.c":108:15))
  %v978 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v977, ^bb547, ^bb614(%v978 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb547:
  %v979 = sea.const 8 : i64 loc("_1122"("seahorn/lib/linked_list_helper.c":108:39))
  %v980 = sea.ptr.dereferenceable %v952, %v979 : !sea.ptr<64>, i64 loc("_1122"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v980, ^bb548, ^bb615
^bb548:
  %v981 = sea.ptr.index %v10 [] strides [] offset 152 inbounds : !sea.ptr<64> loc("_1124"("seahorn/lib/linked_list_helper.c":108:54))
  sea.br ^bb549
^bb549:
  %v982 = sea.load %v320[%v981] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1126"("seahorn/lib/linked_list_helper.c":108:54))
  %v983 = sea.ptr.cmp eq, %v955, %v982 : !sea.ptr<64> loc("_1127"("seahorn/lib/linked_list_helper.c":108:44))
  sea.br ^bb614(%v983 : i1)
^bb550:
  sea.br ^bb551
^bb551:
  %v984 = sea.load %v320[%v263] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_964"("seahorn/lib/linked_list_helper.c":211:33))
  %v985 = sea.ptr.index %v10 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_965"("seahorn/lib/linked_list_helper.c":211:53))
  sea.br ^bb552
^bb552:
  %v986 = sea.load %v320[%v985] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_967"("seahorn/lib/linked_list_helper.c":113:25))
  %v987 = sea.ptr.cmp eq, %v986, %v984 : !sea.ptr<64> loc("_968"("seahorn/lib/linked_list_helper.c":113:15))
  %v988 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":113:30)
  sea.cond_br %v987, ^bb553, ^bb614(%v988 : i1) loc("seahorn/lib/linked_list_helper.c":113:30)
^bb553:
  %v989 = sea.const 8 : i64 loc("_970"("seahorn/lib/linked_list_helper.c":113:39))
  %v990 = sea.ptr.dereferenceable %v984, %v989 : !sea.ptr<64>, i64 loc("_970"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v990, ^bb554, ^bb615
^bb554:
  %v991 = sea.load %v351[%v984] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_972"("seahorn/lib/linked_list_helper.c":113:39))
  %v992 = sea.ptr.index %v10 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_973"("seahorn/lib/linked_list_helper.c":113:54))
  sea.br ^bb555
^bb555:
  %v993 = sea.load %v320[%v992] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_974"("seahorn/lib/linked_list_helper.c":113:54))
  %v994 = sea.ptr.cmp eq, %v991, %v993 : !sea.ptr<64> loc("_975"("seahorn/lib/linked_list_helper.c":113:44))
  %v995 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":211:63)
  sea.cond_br %v994, ^bb556, ^bb614(%v995 : i1) loc("seahorn/lib/linked_list_helper.c":211:63)
^bb556:
  sea.br ^bb557
^bb557:
  %v996 = sea.load %v320[%v265] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_978"("seahorn/lib/linked_list_helper.c":212:33))
  %v997 = sea.ptr.index %v10 [] strides [] offset 120 inbounds : !sea.ptr<64> loc("_979"("seahorn/lib/linked_list_helper.c":212:50))
  sea.br ^bb558
^bb558:
  %v998 = sea.load %v320[%v997] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_981"("seahorn/lib/linked_list_helper.c":108:25))
  %v999 = sea.ptr.cmp eq, %v998, %v996 : !sea.ptr<64> loc("_982"("seahorn/lib/linked_list_helper.c":108:15))
  %v1000 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v999, ^bb559, ^bb614(%v1000 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb559:
  %v1001 = sea.ptr.index %v996 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_984"("seahorn/lib/linked_list_helper.c":108:39))
  %v1002 = sea.const 8 : i64 loc("_985"("seahorn/lib/linked_list_helper.c":108:39))
  %v1003 = sea.ptr.dereferenceable %v1001, %v1002 : !sea.ptr<64>, i64 loc("_985"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v1003, ^bb560, ^bb615
^bb560:
  %v1004 = sea.load %v351[%v1001] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_987"("seahorn/lib/linked_list_helper.c":108:39))
  %v1005 = sea.ptr.index %v10 [] strides [] offset 128 inbounds : !sea.ptr<64> loc("_988"("seahorn/lib/linked_list_helper.c":108:54))
  sea.br ^bb561
^bb561:
  %v1006 = sea.load %v320[%v1005] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_989"("seahorn/lib/linked_list_helper.c":108:54))
  %v1007 = sea.ptr.cmp eq, %v1004, %v1006 : !sea.ptr<64> loc("_990"("seahorn/lib/linked_list_helper.c":108:44))
  %v1008 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":211:9)
  sea.cond_br %v1007, ^bb562, ^bb614(%v1008 : i1) loc("seahorn/lib/linked_list_helper.c":211:9)
^bb562:
  %v1009 = sea.ptr.index %v10 [] strides [] offset 96 inbounds : !sea.ptr<64> loc("_992"("seahorn/lib/linked_list_helper.c":214:11))
  sea.br ^bb563
^bb563:
  %v1010 = sea.load %v320[%v1009] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_994"("seahorn/lib/linked_list_helper.c":214:27))
  sea.br ^bb564
^bb564:
  %v1011 = sea.const 8 : i64 loc("_996"("seahorn/lib/linked_list_helper.c":214:54))
  %v1012 = sea.ptr.dereferenceable %v984, %v1011 : !sea.ptr<64>, i64 loc("_996"("seahorn/lib/linked_list_helper.c":214:54))
  sea.cond_br %v1012, ^bb565, ^bb615
^bb565:
  %v1013 = sea.ptr.cmp eq, %v1010, %v991 : !sea.ptr<64> loc("_998"("seahorn/lib/linked_list_helper.c":214:32))
  sea.cond_br %v1013, ^bb580, ^bb566 loc("seahorn/lib/linked_list_helper.c":214:11)
^bb566:
  sea.br ^bb567
^bb567:
  sea.br ^bb568
^bb568:
  %v1014 = sea.const 8 : i64 loc("_1023"("seahorn/lib/linked_list_helper.c":218:63))
  %v1015 = sea.ptr.dereferenceable %v1001, %v1014 : !sea.ptr<64>, i64 loc("_1023"("seahorn/lib/linked_list_helper.c":218:63))
  sea.cond_br %v1015, ^bb569, ^bb615
^bb569:
  %v1016 = sea.ptr.cmp eq, %v1010, %v1004 : !sea.ptr<64> loc("_1025"("seahorn/lib/linked_list_helper.c":218:37))
  %v1017 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":218:16)
  sea.cond_br %v1016, ^bb570, ^bb614(%v1017 : i1) loc("seahorn/lib/linked_list_helper.c":218:16)
^bb570:
  sea.br ^bb571
^bb571:
  %v1018 = sea.const 8 : i64 loc("_1028"("seahorn/lib/linked_list_helper.c":220:51))
  %v1019 = sea.ptr.dereferenceable %v1001, %v1018 : !sea.ptr<64>, i64 loc("_1028"("seahorn/lib/linked_list_helper.c":220:51))
  sea.cond_br %v1019, ^bb572, ^bb615
^bb572:
  sea.br ^bb573
^bb573:
  %v1020 = sea.ptr.index %v1004 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_1031"("seahorn/lib/linked_list_helper.c":108:39))
  %v1021 = sea.const 8 : i64 loc("_1032"("seahorn/lib/linked_list_helper.c":108:39))
  %v1022 = sea.ptr.dereferenceable %v1020, %v1021 : !sea.ptr<64>, i64 loc("_1032"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v1022, ^bb574, ^bb615
^bb574:
  %v1023 = sea.load %v351[%v1020] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1034"("seahorn/lib/linked_list_helper.c":108:39))
  %v1024 = sea.ptr.index %v10 [] strides [] offset 104 inbounds : !sea.ptr<64> loc("_1035"("seahorn/lib/linked_list_helper.c":108:54))
  sea.br ^bb575
^bb575:
  %v1025 = sea.load %v320[%v1024] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1036"("seahorn/lib/linked_list_helper.c":108:54))
  %v1026 = sea.ptr.cmp eq, %v1023, %v1025 : !sea.ptr<64> loc("_1037"("seahorn/lib/linked_list_helper.c":108:44))
  %v1027 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v1026, ^bb576, ^bb614(%v1027 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb576:
  sea.br ^bb577
^bb577:
  %v1028 = sea.const 8 : i64 loc("_1040"("seahorn/lib/linked_list_helper.c":113:39))
  %v1029 = sea.ptr.dereferenceable %v1004, %v1028 : !sea.ptr<64>, i64 loc("_1040"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v1029, ^bb578, ^bb615
^bb578:
  %v1030 = sea.load %v351[%v1004] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1042"("seahorn/lib/linked_list_helper.c":113:39))
  %v1031 = sea.ptr.index %v10 [] strides [] offset 112 inbounds : !sea.ptr<64> loc("_1043"("seahorn/lib/linked_list_helper.c":113:54))
  sea.br ^bb579
^bb579:
  %v1032 = sea.load %v320[%v1031] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1045"("seahorn/lib/linked_list_helper.c":113:54))
  %v1033 = sea.ptr.cmp eq, %v1030, %v1032 : !sea.ptr<64> loc("_1046"("seahorn/lib/linked_list_helper.c":113:44))
  sea.br ^bb614(%v1033 : i1)
^bb580:
  sea.br ^bb581
^bb581:
  %v1034 = sea.const 8 : i64 loc("_1001"("seahorn/lib/linked_list_helper.c":216:47))
  %v1035 = sea.ptr.dereferenceable %v984, %v1034 : !sea.ptr<64>, i64 loc("_1001"("seahorn/lib/linked_list_helper.c":216:47))
  sea.cond_br %v1035, ^bb582, ^bb615
^bb582:
  sea.br ^bb583
^bb583:
  %v1036 = sea.ptr.index %v991 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_1004"("seahorn/lib/linked_list_helper.c":108:39))
  %v1037 = sea.const 8 : i64 loc("_1005"("seahorn/lib/linked_list_helper.c":108:39))
  %v1038 = sea.ptr.dereferenceable %v1036, %v1037 : !sea.ptr<64>, i64 loc("_1005"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v1038, ^bb584, ^bb615
^bb584:
  %v1039 = sea.load %v351[%v1036] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1007"("seahorn/lib/linked_list_helper.c":108:39))
  %v1040 = sea.ptr.index %v10 [] strides [] offset 104 inbounds : !sea.ptr<64> loc("_1008"("seahorn/lib/linked_list_helper.c":108:54))
  sea.br ^bb585
^bb585:
  %v1041 = sea.load %v320[%v1040] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1009"("seahorn/lib/linked_list_helper.c":108:54))
  %v1042 = sea.ptr.cmp eq, %v1039, %v1041 : !sea.ptr<64> loc("_1010"("seahorn/lib/linked_list_helper.c":108:44))
  %v1043 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v1042, ^bb586, ^bb614(%v1043 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb586:
  sea.br ^bb587
^bb587:
  %v1044 = sea.const 8 : i64 loc("_1013"("seahorn/lib/linked_list_helper.c":113:39))
  %v1045 = sea.ptr.dereferenceable %v991, %v1044 : !sea.ptr<64>, i64 loc("_1013"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v1045, ^bb588, ^bb615
^bb588:
  %v1046 = sea.load %v351[%v991] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1015"("seahorn/lib/linked_list_helper.c":113:39))
  %v1047 = sea.ptr.index %v10 [] strides [] offset 112 inbounds : !sea.ptr<64> loc("_1016"("seahorn/lib/linked_list_helper.c":113:54))
  sea.br ^bb589
^bb589:
  %v1048 = sea.load %v320[%v1047] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_1018"("seahorn/lib/linked_list_helper.c":113:54))
  %v1049 = sea.ptr.cmp eq, %v1046, %v1048 : !sea.ptr<64> loc("_1019"("seahorn/lib/linked_list_helper.c":113:44))
  sea.br ^bb614(%v1049 : i1)
^bb590:
  sea.br ^bb591
^bb591:
  %v1050 = sea.load %v320[%v263] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_931"("seahorn/lib/linked_list_helper.c":206:36))
  %v1051 = sea.ptr.index %v10 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_932"("seahorn/lib/linked_list_helper.c":206:56))
  sea.br ^bb592
^bb592:
  %v1052 = sea.load %v320[%v1051] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_934"("seahorn/lib/linked_list_helper.c":113:25))
  %v1053 = sea.ptr.cmp eq, %v1052, %v1050 : !sea.ptr<64> loc("_935"("seahorn/lib/linked_list_helper.c":113:15))
  %v1054 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":113:30)
  sea.cond_br %v1053, ^bb593, ^bb614(%v1054 : i1) loc("seahorn/lib/linked_list_helper.c":113:30)
^bb593:
  %v1055 = sea.const 8 : i64 loc("_937"("seahorn/lib/linked_list_helper.c":113:39))
  %v1056 = sea.ptr.dereferenceable %v1050, %v1055 : !sea.ptr<64>, i64 loc("_937"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v1056, ^bb594, ^bb615
^bb594:
  %v1057 = sea.load %v351[%v1050] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_939"("seahorn/lib/linked_list_helper.c":113:39))
  %v1058 = sea.ptr.index %v10 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_940"("seahorn/lib/linked_list_helper.c":113:54))
  sea.br ^bb595
^bb595:
  %v1059 = sea.load %v320[%v1058] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_941"("seahorn/lib/linked_list_helper.c":113:54))
  %v1060 = sea.ptr.cmp eq, %v1057, %v1059 : !sea.ptr<64> loc("_942"("seahorn/lib/linked_list_helper.c":113:44))
  %v1061 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":206:66)
  sea.cond_br %v1060, ^bb596, ^bb614(%v1061 : i1) loc("seahorn/lib/linked_list_helper.c":206:66)
^bb596:
  sea.br ^bb597
^bb597:
  %v1062 = sea.load %v320[%v265] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_945"("seahorn/lib/linked_list_helper.c":207:36))
  %v1063 = sea.ptr.index %v10 [] strides [] offset 96 inbounds : !sea.ptr<64> loc("_946"("seahorn/lib/linked_list_helper.c":207:53))
  sea.br ^bb598
^bb598:
  %v1064 = sea.load %v320[%v1063] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_948"("seahorn/lib/linked_list_helper.c":108:25))
  %v1065 = sea.ptr.cmp eq, %v1064, %v1062 : !sea.ptr<64> loc("_949"("seahorn/lib/linked_list_helper.c":108:15))
  %v1066 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v1065, ^bb599, ^bb614(%v1066 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb599:
  %v1067 = sea.ptr.index %v1062 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_951"("seahorn/lib/linked_list_helper.c":108:39))
  %v1068 = sea.const 8 : i64 loc("_952"("seahorn/lib/linked_list_helper.c":108:39))
  %v1069 = sea.ptr.dereferenceable %v1067, %v1068 : !sea.ptr<64>, i64 loc("_952"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v1069, ^bb600, ^bb615
^bb600:
  %v1070 = sea.load %v351[%v1067] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_954"("seahorn/lib/linked_list_helper.c":108:39))
  %v1071 = sea.ptr.index %v10 [] strides [] offset 104 inbounds : !sea.ptr<64> loc("_955"("seahorn/lib/linked_list_helper.c":108:54))
  sea.br ^bb601
^bb601:
  %v1072 = sea.load %v320[%v1071] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_957"("seahorn/lib/linked_list_helper.c":108:54))
  %v1073 = sea.ptr.cmp eq, %v1070, %v1072 : !sea.ptr<64> loc("_958"("seahorn/lib/linked_list_helper.c":108:44))
  sea.br ^bb614(%v1073 : i1)
^bb602:
  sea.br ^bb603
^bb603:
  %v1074 = sea.load %v320[%v263] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_916"("seahorn/lib/linked_list_helper.c":201:19))
  sea.br ^bb604
^bb604:
  %v1075 = sea.load %v320[%v265] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_918"("seahorn/lib/linked_list_helper.c":201:40))
  %v1076 = sea.ptr.cmp eq, %v1074, %v1075 : !sea.ptr<64> loc("_919"("seahorn/lib/linked_list_helper.c":201:30))
  %v1077 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":201:55)
  sea.cond_br %v1076, ^bb605, ^bb614(%v1077 : i1) loc("seahorn/lib/linked_list_helper.c":201:55)
^bb605:
  sea.br ^bb606
^bb606:
  %v1078 = sea.ptr.index %v10 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_922"("seahorn/lib/linked_list_helper.c":202:40))
  sea.br ^bb607
^bb607:
  %v1079 = sea.load %v320[%v1078] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_924"("seahorn/lib/linked_list_helper.c":202:49))
  %v1080 = sea.ptr.cmp eq, %v1074, %v1079 : !sea.ptr<64> loc("_925"("seahorn/lib/linked_list_helper.c":202:30))
  sea.br ^bb614(%v1080 : i1)
^bb608:
  sea.br ^bb609
^bb609:
  %v1081 = sea.load %v320[%v254] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_901"("seahorn/lib/linked_list_helper.c":195:24))
  sea.br ^bb610
^bb610:
  %v1082 = sea.load %v320[%v256] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_903"("seahorn/lib/linked_list_helper.c":195:49))
  %v1083 = sea.ptr.cmp eq, %v1081, %v1082 : !sea.ptr<64> loc("_904"("seahorn/lib/linked_list_helper.c":195:34))
  %v1084 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":195:54)
  sea.cond_br %v1083, ^bb611, ^bb614(%v1084 : i1) loc("seahorn/lib/linked_list_helper.c":195:54)
^bb611:
  sea.br ^bb612
^bb612:
  %v1085 = sea.load %v320[%v258] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_907"("seahorn/lib/linked_list_helper.c":196:24))
  sea.br ^bb613
^bb613:
  %v1086 = sea.load %v320[%v249] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_909"("seahorn/lib/linked_list_helper.c":196:49))
  %v1087 = sea.ptr.cmp eq, %v1085, %v1086 : !sea.ptr<64> loc("_910"("seahorn/lib/linked_list_helper.c":196:34))
  sea.br ^bb614(%v1087 : i1)
^bb614(%v1088 : i1):
  %v1089 = sea.const 1 : i1 loc("seahorn/jobs/linked_list_swap_contents/aws_linked_list_swap_contents_harness.c":36:3)
  %v1090 = sea.xor %v1088, %v1089 : i1 loc("seahorn/jobs/linked_list_swap_contents/aws_linked_list_swap_contents_harness.c":36:3)
  sea.assume %v1090 loc("seahorn/jobs/linked_list_swap_contents/aws_linked_list_swap_contents_harness.c":36:3)
  sea.br ^bb615 loc("seahorn/jobs/linked_list_swap_contents/aws_linked_list_swap_contents_harness.c":36:3)
^bb615:
  sea.br ^bb616
^bb616:
  %v1091 = sea.const 0 : i1
  sea.assert %v1091
  sea.halt
}
