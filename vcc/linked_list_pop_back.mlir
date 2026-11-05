// Exported from SeaHorn (linked_list_pop_back.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.1" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm59")
  %v1 = sea.mem.nondet "region.0" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm60")
  %v2 = sea.const 32 : i64 loc("_0")
  %v3 = sea.alloca %v2 align 8 [2] : i64 -> !sea.ptr<64> loc("_0")
  %v4 = sea.const 168 : i64 loc("_1")
  %v5 = sea.alloca %v4 align 8 [3] : i64 -> !sea.ptr<64> loc("_1")
  %v6 = sea.ptr.index %v3 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_2"("seahorn/lib/linked_list_helper.c":61:14))
  sea.br ^bb1
^bb1:
  %v7 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":61:19)
  %v8 = sea.store %v1[%v6], %v7 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":61:19)
  %v9 = sea.ptr.index %v3 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_4"("seahorn/lib/linked_list_helper.c":62:9))
  sea.br ^bb2
^bb2:
  %v10 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":62:19)
  %v11 = sea.store %v8[%v9], %v10 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":62:19)
  %v12 = sea.nondet "nd_size_t" [4] : i64 loc("_6"("seahorn/lib/linked_list_helper.c":64:19))
  sea.br ^bb3
^bb3:
  %v13 = sea.const 3 : i64 loc("_8"("seahorn/lib/linked_list_helper.c":66:14))
  %v14 = sea.icmp ult, %v12, %v13 : i64 loc("_8"("seahorn/lib/linked_list_helper.c":66:14))
  sea.cond_br %v14, ^bb17, ^bb4 loc("seahorn/lib/linked_list_helper.c":66:7)
^bb4:
  %v15 = sea.const 16 : i64 loc("malloc61.i30")
  %v16 = sea.alloca %v15 align 16 [5] : i64 -> !sea.ptr<64> loc("malloc61.i30")
  %v17 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.assume %v17 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.br ^bb5
^bb5:
  %v18 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":32:14)
  %v19 = sea.store %v11[%v16], %v18 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":32:14)
  %v20 = sea.ptr.index %v16 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_27"("seahorn/lib/linked_list_helper.c":33:9))
  sea.br ^bb6
^bb6:
  %v21 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":33:14)
  %v22 = sea.store %v19[%v20], %v21 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":33:14)
  %v23 = sea.const 16 : i64 loc("malloc62.i31")
  %v24 = sea.alloca %v23 align 16 [6] : i64 -> !sea.ptr<64> loc("malloc62.i31")
  %v25 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.assume %v25 loc("seahorn/lib/linked_list_helper.c":31:3)
  sea.br ^bb7
^bb7:
  %v26 = sea.ptr.index %v24 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_29"("seahorn/lib/linked_list_helper.c":33:9))
  sea.br ^bb8
^bb8:
  %v27 = sea.ptr.nondet "nd_linked_list_node" [7] : !sea.ptr<64> loc("_30"("seahorn/lib/linked_list_helper.c":425:19))
  sea.br ^bb9
^bb9:
  %v28 = sea.store %v22[%v3], %v27 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":425:17)
  sea.br ^bb10
^bb10:
  %v29 = sea.ptr.null : !sea.ptr<64> loc("_33"("seahorn/lib/linked_list_helper.c":426:24))
  %v30 = sea.ptr.cmp ne, %v27, %v29 : !sea.ptr<64> loc("_33"("seahorn/lib/linked_list_helper.c":426:24))
  sea.assume %v30 loc("seahorn/lib/linked_list_helper.c":426:5)
  %v31 = sea.ptr.nondet "nd_linked_list_node" [8] : !sea.ptr<64> loc("_34"("seahorn/lib/linked_list_helper.c":427:23))
  sea.br ^bb11
^bb11:
  %v32 = sea.store %v28[%v26], %v31 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":427:21)
  sea.br ^bb12
^bb12:
  %v33 = sea.ptr.null : !sea.ptr<64> loc("_36"("seahorn/lib/linked_list_helper.c":428:28))
  %v34 = sea.ptr.cmp ne, %v31, %v33 : !sea.ptr<64> loc("_36"("seahorn/lib/linked_list_helper.c":428:28))
  sea.assume %v34 loc("seahorn/lib/linked_list_helper.c":428:5)
  sea.br ^bb13
^bb13:
  %v35 = sea.store %v32[%v24], %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  sea.br ^bb14
^bb14:
  %v36 = sea.store %v35[%v20], %v24 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb15
^bb15:
  %v37 = sea.store %v36[%v16], %v9 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v38 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_39"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb16
^bb16:
  %v39 = sea.store %v37[%v38], %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb37(%v39, %v24, %v16, %v27 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>)
^bb17:
  sea.br ^bb18
^bb18:
  %v40 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":12:19)
  %v41 = sea.store %v11[%v6], %v40 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":12:19)
  sea.br ^bb19
^bb19:
  %v42 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":13:19)
  %v43 = sea.store %v41[%v9], %v42 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":13:19)
  sea.br ^bb20
^bb20:
  %v44 = sea.const 2 : i64 loc("Pivot")
  %v45 = sea.icmp slt, %v12, %v44 : i64 loc("Pivot")
  sea.cond_br %v45, ^bb28, ^bb21
^bb21:
  %v46 = sea.const 16 : i64 loc("malloc59.i33")
  %v47 = sea.alloca %v46 align 16 [9] : i64 -> !sea.ptr<64> loc("malloc59.i33")
  %v48 = sea.const 16 : i64 loc("malloc60.i34")
  %v49 = sea.alloca %v48 align 16 [10] : i64 -> !sea.ptr<64> loc("malloc60.i34")
  sea.br ^bb22
^bb22:
  %v50 = sea.store %v43[%v3], %v47 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v51 = sea.ptr.index %v47 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_20"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb23
^bb23:
  %v52 = sea.store %v50[%v51], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb24
^bb24:
  %v53 = sea.store %v52[%v47], %v49 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v54 = sea.ptr.index %v49 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_22"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb25
^bb25:
  %v55 = sea.store %v53[%v54], %v47 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb26
^bb26:
  %v56 = sea.store %v55[%v49], %v9 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v57 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_24"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb27
^bb27:
  %v58 = sea.store %v56[%v57], %v49 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb37(%v58, %v47, %v49, %v47 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/linked_list_helper.c":27:3)
^bb28:
  %v59 = sea.const 0 : i64 loc("SwitchLeaf")
  %v60 = sea.icmp eq, %v12, %v59 : i64 loc("SwitchLeaf")
  sea.cond_br %v60, ^bb34, ^bb29
^bb29:
  %v61 = sea.const 16 : i64 loc("malloc.i32")
  %v62 = sea.alloca %v61 align 16 [11] : i64 -> !sea.ptr<64> loc("malloc.i32")
  sea.br ^bb30
^bb30:
  %v63 = sea.store %v43[%v3], %v62 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v64 = sea.ptr.index %v62 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_15"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb31
^bb31:
  %v65 = sea.store %v63[%v64], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb32
^bb32:
  %v66 = sea.store %v65[%v62], %v9 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v67 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_17"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb33
^bb33:
  %v68 = sea.store %v66[%v67], %v62 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  sea.br ^bb37(%v68, %v3, %v62, %v62 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/linked_list_helper.c":21:3)
^bb34:
  sea.br ^bb35
^bb35:
  %v69 = sea.store %v43[%v3], %v9 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":422:17)
  %v70 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_12"("seahorn/lib/linked_list_helper.c":423:16))
  sea.br ^bb36
^bb36:
  %v71 = sea.store %v69[%v70], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":423:21)
  %v72 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":17:3)
  sea.br ^bb37(%v71, %v72, %v3, %v9 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/linked_list_helper.c":17:3)
^bb37(%v73 : !sea.mem<!sea.ptr<64>, i8>, %v74 : !sea.ptr<64>, %v75 : !sea.ptr<64>, %v76 : !sea.ptr<64>):
  %v77 = sea.const 0 : i8 loc("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":11:32)
  %v78 = sea.const 168 : i64 loc("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":11:32)
  %v79 = sea.memset %v0[%v5], %v77, %v78 inplace align 8 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":11:32)
  sea.br ^bb38
^bb38:
  %v80 = sea.ptr.cmp ne, %v76, %v9 : !sea.ptr<64> loc("_43"("aws-c-common/include/aws/common/linked_list.inl":34:28))
  sea.assume %v80 loc("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":16:3)
  %v81 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_44"("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":20:51))
  %v82 = sea.ptr.index %v75 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_45"("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":21:54))
  %v83 = sea.const 8 : i64 loc("_46"("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":21:54))
  %v84 = sea.ptr.dereferenceable %v82, %v83 : !sea.ptr<64>, i64 loc("_46"("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":21:54))
  sea.cond_br %v84, ^bb39, ^bb201
^bb39:
  %v85 = sea.ptr.index %v5 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_48"("seahorn/lib/linked_list_helper.c":314:56))
  sea.br ^bb40
^bb40:
  %v86 = sea.store %v79[%v85], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  sea.br ^bb41
^bb41:
  %v87 = sea.ptr.index %v5 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_51"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb42
^bb42:
  %v88 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v89 = sea.store %v86[%v87], %v88 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb43
^bb43:
  %v90 = sea.ptr.index %v5 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_54"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb44
^bb44:
  %v91 = sea.store %v89[%v90], %v76 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v92 = sea.ptr.index %v5 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_55"("seahorn/lib/linked_list_helper.c":315:56))
  sea.br ^bb45
^bb45:
  %v93 = sea.store %v91[%v92], %v9 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  sea.br ^bb46
^bb46:
  %v94 = sea.ptr.index %v5 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_58"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb47
^bb47:
  %v95 = sea.store %v93[%v94], %v75 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  sea.br ^bb48
^bb48:
  %v96 = sea.ptr.index %v5 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_61"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb49
^bb49:
  %v97 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v98 = sea.store %v95[%v96], %v97 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v99 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_62"("seahorn/lib/linked_list_helper.c":317:12))
  sea.br ^bb50
^bb50:
  %v100 = sea.store %v98[%v99], %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":317:23)
  %v101 = sea.const 1 : i64 loc("Pivot.i.i")
  %v102 = sea.icmp slt, %v12, %v101 : i64 loc("Pivot.i.i")
  sea.cond_br %v102, ^bb63, ^bb51
^bb51:
  %v103 = sea.const 1 : i64 loc("SwitchLeaf2.i.i")
  %v104 = sea.icmp eq, %v12, %v103 : i64 loc("SwitchLeaf2.i.i")
  sea.cond_br %v104, ^bb52, ^bb64
^bb52:
  sea.br ^bb53
^bb53:
  %v105 = sea.ptr.cmp eq, %v75, %v74 : !sea.ptr<64> loc("_67"("seahorn/lib/linked_list_helper.c":331:32))
  sea.cond_br %v105, ^bb56, ^bb54 loc("seahorn/lib/linked_list_helper.c":331:16)
^bb54:
  sea.br ^bb55
^bb55:
  %v106 = sea.const 0 : i64 loc("seahorn/lib/linked_list_helper.c":334:27)
  %v107 = sea.store %v100[%v5], %v106 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":334:27)
  %v108 = sea.ptr.null : !sea.ptr<64>
  %v109 = sea.ptr.null : !sea.ptr<64>
  %v110 = sea.ptr.null : !sea.ptr<64>
  %v111 = sea.ptr.null : !sea.ptr<64>
  %v112 = sea.ptr.null : !sea.ptr<64>
  %v113 = sea.const 1 : i1
  %v114 = sea.const 0 : i1
  %v115 = sea.const 0 : i1
  sea.br ^bb90(%v108, %v109, %v110, %v111, %v112, %v113, %v114, %v115 : !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, i1, i1, i1)
^bb56:
  %v116 = sea.ptr.index %v5 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_69"("seahorn/lib/linked_list_helper.c":251:50))
  sea.br ^bb57
^bb57:
  %v117 = sea.store %v100[%v116], %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v118 = sea.const 8 : i64 loc("_71"("seahorn/lib/linked_list_helper.c":124:21))
  %v119 = sea.ptr.dereferenceable %v82, %v118 : !sea.ptr<64>, i64 loc("_71"("seahorn/lib/linked_list_helper.c":124:21))
  sea.cond_br %v119, ^bb58, ^bb201
^bb58:
  %v120 = sea.ptr.index %v5 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_73"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb59
^bb59:
  %v121 = sea.store %v117[%v120], %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v122 = sea.const 8 : i64 loc("_75"("seahorn/lib/linked_list_helper.c":125:21))
  %v123 = sea.ptr.dereferenceable %v74, %v122 : !sea.ptr<64>, i64 loc("_75"("seahorn/lib/linked_list_helper.c":125:21))
  sea.cond_br %v123, ^bb60, ^bb201
^bb60:
  %v124 = sea.ptr.index %v5 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_77"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb61
^bb61:
  %v125 = sea.store %v121[%v124], %v9 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb62
^bb62:
  %v126 = sea.const 1 : i64 loc("seahorn/lib/linked_list_helper.c":252:23)
  %v127 = sea.store %v125[%v5], %v126 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":252:23)
  %v128 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":333:5)
  %v129 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":333:5)
  %v130 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":333:5)
  %v131 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":333:5)
  %v132 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":333:5)
  %v133 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":333:5)
  sea.br ^bb90(%v128, %v129, %v130, %v74, %v74, %v131, %v132, %v133 : !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, i1, i1, i1) loc("seahorn/lib/linked_list_helper.c":333:5)
^bb63:
  %v134 = sea.const 0 : i64 loc("SwitchLeaf.i.i")
  %v135 = sea.icmp eq, %v12, %v134 : i64 loc("SwitchLeaf.i.i")
  sea.cond_br %v135, ^bb88, ^bb64
^bb64:
  sea.br ^bb65
^bb65:
  %v136 = sea.ptr.cmp eq, %v75, %v74 : !sea.ptr<64> loc("_82"("seahorn/lib/linked_list_helper.c":343:32))
  sea.cond_br %v136, ^bb75, ^bb66 loc("seahorn/lib/linked_list_helper.c":343:16)
^bb66:
  sea.br ^bb67
^bb67:
  %v137 = sea.const 8 : i64 loc("_108"("seahorn/lib/linked_list_helper.c":345:33))
  %v138 = sea.ptr.dereferenceable %v82, %v137 : !sea.ptr<64>, i64 loc("_108"("seahorn/lib/linked_list_helper.c":345:33))
  sea.cond_br %v138, ^bb68, ^bb201
^bb68:
  %v139 = sea.ptr.index %v5 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_110"("seahorn/lib/linked_list_helper.c":251:50))
  sea.br ^bb69
^bb69:
  %v140 = sea.store %v100[%v139], %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v141 = sea.ptr.index %v74 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_112"("seahorn/lib/linked_list_helper.c":124:21))
  %v142 = sea.const 8 : i64 loc("_113"("seahorn/lib/linked_list_helper.c":124:21))
  %v143 = sea.ptr.dereferenceable %v141, %v142 : !sea.ptr<64>, i64 loc("_113"("seahorn/lib/linked_list_helper.c":124:21))
  sea.cond_br %v143, ^bb70, ^bb201
^bb70:
  %v144 = sea.load %v73[%v141] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_115"("seahorn/lib/linked_list_helper.c":124:21))
  %v145 = sea.ptr.index %v5 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_116"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb71
^bb71:
  %v146 = sea.store %v140[%v145], %v144 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v147 = sea.const 8 : i64 loc("_118"("seahorn/lib/linked_list_helper.c":125:21))
  %v148 = sea.ptr.dereferenceable %v74, %v147 : !sea.ptr<64>, i64 loc("_118"("seahorn/lib/linked_list_helper.c":125:21))
  sea.cond_br %v148, ^bb72, ^bb201
^bb72:
  %v149 = sea.load %v73[%v74] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_120"("seahorn/lib/linked_list_helper.c":125:21))
  %v150 = sea.ptr.index %v5 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_121"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb73
^bb73:
  %v151 = sea.store %v146[%v150], %v149 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb74
^bb74:
  %v152 = sea.const 1 : i64 loc("seahorn/lib/linked_list_helper.c":252:23)
  %v153 = sea.store %v151[%v5], %v152 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":252:23)
  %v154 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":347:5)
  %v155 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":347:5)
  %v156 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":347:5)
  %v157 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":347:5)
  %v158 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":347:5)
  %v159 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":347:5)
  sea.br ^bb90(%v154, %v155, %v156, %v144, %v74, %v157, %v158, %v159 : !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, i1, i1, i1) loc("seahorn/lib/linked_list_helper.c":347:5)
^bb75:
  %v160 = sea.ptr.index %v5 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_84"("seahorn/lib/linked_list_helper.c":257:50))
  sea.br ^bb76
^bb76:
  %v161 = sea.store %v100[%v160], %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v162 = sea.const 8 : i64 loc("_86"("seahorn/lib/linked_list_helper.c":124:21))
  %v163 = sea.ptr.dereferenceable %v82, %v162 : !sea.ptr<64>, i64 loc("_86"("seahorn/lib/linked_list_helper.c":124:21))
  sea.cond_br %v163, ^bb77, ^bb201
^bb77:
  %v164 = sea.ptr.index %v5 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_88"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb78
^bb78:
  %v165 = sea.store %v161[%v164], %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v166 = sea.const 8 : i64 loc("_90"("seahorn/lib/linked_list_helper.c":125:21))
  %v167 = sea.ptr.dereferenceable %v74, %v166 : !sea.ptr<64>, i64 loc("_90"("seahorn/lib/linked_list_helper.c":125:21))
  sea.cond_br %v167, ^bb79, ^bb201
^bb79:
  %v168 = sea.ptr.index %v5 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_92"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb80
^bb80:
  %v169 = sea.store %v165[%v168], %v9 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  %v170 = sea.const 8 : i64 loc("_93"("seahorn/lib/linked_list_helper.c":246:16))
  %v171 = sea.ptr.dereferenceable %v82, %v170 : !sea.ptr<64>, i64 loc("_93"("seahorn/lib/linked_list_helper.c":246:16))
  sea.cond_br %v171, ^bb81, ^bb201
^bb81:
  %v172 = sea.ptr.index %v5 [] strides [] offset 96 inbounds : !sea.ptr<64> loc("_94"("seahorn/lib/linked_list_helper.c":258:50))
  sea.br ^bb82
^bb82:
  %v173 = sea.store %v169[%v172], %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":123:11)
  %v174 = sea.ptr.index %v74 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_96"("seahorn/lib/linked_list_helper.c":124:21))
  %v175 = sea.const 8 : i64 loc("_97"("seahorn/lib/linked_list_helper.c":124:21))
  %v176 = sea.ptr.dereferenceable %v174, %v175 : !sea.ptr<64>, i64 loc("_97"("seahorn/lib/linked_list_helper.c":124:21))
  sea.cond_br %v176, ^bb83, ^bb201
^bb83:
  %v177 = sea.load %v73[%v174] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_99"("seahorn/lib/linked_list_helper.c":124:21))
  %v178 = sea.ptr.index %v5 [] strides [] offset 104 inbounds : !sea.ptr<64> loc("_100"("seahorn/lib/linked_list_helper.c":124:6))
  sea.br ^bb84
^bb84:
  %v179 = sea.store %v173[%v178], %v177 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":124:16)
  %v180 = sea.const 8 : i64 loc("_102"("seahorn/lib/linked_list_helper.c":125:21))
  %v181 = sea.ptr.dereferenceable %v74, %v180 : !sea.ptr<64>, i64 loc("_102"("seahorn/lib/linked_list_helper.c":125:21))
  sea.cond_br %v181, ^bb85, ^bb201
^bb85:
  %v182 = sea.load %v73[%v74] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_104"("seahorn/lib/linked_list_helper.c":125:21))
  %v183 = sea.ptr.index %v5 [] strides [] offset 112 inbounds : !sea.ptr<64> loc("_105"("seahorn/lib/linked_list_helper.c":125:6))
  sea.br ^bb86
^bb86:
  %v184 = sea.store %v179[%v183], %v182 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/linked_list_helper.c":125:16)
  sea.br ^bb87
^bb87:
  %v185 = sea.const 2 : i64 loc("seahorn/lib/linked_list_helper.c":259:23)
  %v186 = sea.store %v184[%v5], %v185 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":259:23)
  %v187 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":345:5)
  %v188 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":345:5)
  %v189 = sea.const 1 : i1 loc("seahorn/lib/linked_list_helper.c":345:5)
  sea.br ^bb90(%v182, %v177, %v74, %v74, %v74, %v187, %v188, %v189 : !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, i1, i1, i1) loc("seahorn/lib/linked_list_helper.c":345:5)
^bb88:
  sea.br ^bb89
^bb89:
  %v190 = sea.const 0 : i64 loc("seahorn/lib/linked_list_helper.c":325:27)
  %v191 = sea.store %v100[%v5], %v190 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/linked_list_helper.c":325:27)
  %v192 = sea.ptr.null : !sea.ptr<64>
  %v193 = sea.ptr.null : !sea.ptr<64>
  %v194 = sea.ptr.null : !sea.ptr<64>
  %v195 = sea.ptr.null : !sea.ptr<64>
  %v196 = sea.ptr.null : !sea.ptr<64>
  %v197 = sea.const 1 : i1
  %v198 = sea.const 0 : i1
  %v199 = sea.const 0 : i1
  sea.br ^bb90(%v192, %v193, %v194, %v195, %v196, %v197, %v198, %v199 : !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, !sea.ptr<64>, i1, i1, i1)
^bb90(%v200 : !sea.ptr<64>, %v201 : !sea.ptr<64>, %v202 : !sea.ptr<64>, %v203 : !sea.ptr<64>, %v204 : !sea.ptr<64>, %v205 : i1, %v206 : i1, %v207 : i1):
  sea.br ^bb91
^bb91:
  %v208 = sea.const 8 : i64 loc("_130"("aws-c-common/include/aws/common/linked_list.inl":263:30))
  %v209 = sea.ptr.dereferenceable %v75, %v208 : !sea.ptr<64>, i64 loc("_130"("aws-c-common/include/aws/common/linked_list.inl":263:30))
  sea.cond_br %v209, ^bb92, ^bb201
^bb92:
  %v210 = sea.const 8 : i64 loc("_132"("aws-c-common/include/aws/common/linked_list.inl":263:11))
  %v211 = sea.ptr.dereferenceable %v82, %v210 : !sea.ptr<64>, i64 loc("_132"("aws-c-common/include/aws/common/linked_list.inl":263:11))
  sea.cond_br %v211, ^bb93, ^bb201
^bb93:
  %v212 = sea.const 8 : i64 loc("_134"("aws-c-common/include/aws/common/linked_list.inl":263:22))
  %v213 = sea.ptr.dereferenceable %v74, %v212 : !sea.ptr<64>, i64 loc("_134"("aws-c-common/include/aws/common/linked_list.inl":263:22))
  sea.cond_br %v213, ^bb94, ^bb201
^bb94:
  %v214 = sea.store %v73[%v74], %v9 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":263:22)
  %v215 = sea.const 8 : i64 loc("_136"("aws-c-common/include/aws/common/linked_list.inl":264:30))
  %v216 = sea.ptr.dereferenceable %v82, %v215 : !sea.ptr<64>, i64 loc("_136"("aws-c-common/include/aws/common/linked_list.inl":264:30))
  sea.cond_br %v216, ^bb95, ^bb201
^bb95:
  %v217 = sea.const 8 : i64 loc("_138"("aws-c-common/include/aws/common/linked_list.inl":264:11))
  %v218 = sea.ptr.dereferenceable %v75, %v217 : !sea.ptr<64>, i64 loc("_138"("aws-c-common/include/aws/common/linked_list.inl":264:11))
  sea.cond_br %v218, ^bb96, ^bb201
^bb96:
  sea.br ^bb97
^bb97:
  %v219 = sea.store %v214[%v81], %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/linked_list.inl":264:22)
  %v220 = sea.const 0 : i8 loc("aws-c-common/include/aws/common/linked_list.inl":20:5)
  %v221 = sea.const 16 : i64 loc("aws-c-common/include/aws/common/linked_list.inl":20:5)
  %v222 = sea.memset %v219[%v75], %v220, %v221 inplace align 8 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/include/aws/common/linked_list.inl":20:5)
  %v223 = sea.const 8 : i64 loc("_140"("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":29:3))
  %v224 = sea.ptr.dereferenceable %v75, %v223 : !sea.ptr<64>, i64 loc("_140"("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":29:3))
  sea.cond_br %v224, ^bb98, ^bb201
^bb98:
  %v225 = sea.const 8 : i64 loc("_142"("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":29:3))
  %v226 = sea.ptr.dereferenceable %v82, %v225 : !sea.ptr<64>, i64 loc("_142"("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":29:3))
  sea.cond_br %v226, ^bb99, ^bb201
^bb99:
  %v227 = sea.const 8 : i64 loc("_144"("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":29:3))
  %v228 = sea.ptr.dereferenceable %v75, %v227 : !sea.ptr<64>, i64 loc("_144"("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":29:3))
  sea.cond_br %v228, ^bb100, ^bb201
^bb100:
  %v229 = sea.const 8 : i64 loc("_146"("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":29:3))
  %v230 = sea.ptr.dereferenceable %v82, %v229 : !sea.ptr<64>, i64 loc("_146"("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":29:3))
  sea.cond_br %v230, ^bb101, ^bb201
^bb101:
  %v231 = sea.const 8 : i64 loc("_148"("seahorn/lib/linked_list_helper.c":435:17))
  %v232 = sea.ptr.dereferenceable %v74, %v231 : !sea.ptr<64>, i64 loc("_148"("seahorn/lib/linked_list_helper.c":435:17))
  sea.cond_br %v232, ^bb102, ^bb201
^bb102:
  sea.br ^bb103
^bb103:
  %v233 = sea.const 8 : i64 loc("_150"("seahorn/lib/linked_list_helper.c":435:17))
  %v234 = sea.ptr.dereferenceable %v74, %v233 : !sea.ptr<64>, i64 loc("_150"("seahorn/lib/linked_list_helper.c":435:17))
  sea.cond_br %v234, ^bb104, ^bb201
^bb104:
  sea.br ^bb105
^bb105:
  %v235 = sea.load %v222[%v6] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_153"("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":34:3))
  %v236 = sea.ptr.null : !sea.ptr<64> loc("_154"("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":34:3))
  %v237 = sea.ptr.cmp eq, %v235, %v236 : !sea.ptr<64> loc("_154"("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":34:3))
  sea.cond_br %v237, ^bb106, ^bb201 loc("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":34:3)
^bb106:
  sea.br ^bb107
^bb107:
  sea.cond_br %v205, ^bb150, ^bb108 loc("seahorn/lib/linked_list_helper.c":164:7)
^bb108:
  sea.br ^bb109
^bb109:
  sea.cond_br %v206, ^bb137, ^bb110 loc("seahorn/lib/linked_list_helper.c":167:14)
^bb110:
  sea.br ^bb111
^bb111:
  sea.cond_br %v207, ^bb113, ^bb112 loc("seahorn/lib/linked_list_helper.c":172:14)
^bb112:
  %v238 = sea.const 0 : i1
  sea.br ^bb153(%v238 : i1)
^bb113:
  sea.br ^bb114
^bb114:
  sea.br ^bb115
^bb115:
  %v239 = sea.ptr.cmp eq, %v204, %v74 : !sea.ptr<64> loc("_185"("seahorn/lib/linked_list_helper.c":108:15))
  %v240 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v239, ^bb116, ^bb153(%v240 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb116:
  %v241 = sea.ptr.index %v74 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_187"("seahorn/lib/linked_list_helper.c":108:39))
  %v242 = sea.const 8 : i64 loc("_188"("seahorn/lib/linked_list_helper.c":108:39))
  %v243 = sea.ptr.dereferenceable %v241, %v242 : !sea.ptr<64>, i64 loc("_188"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v243, ^bb117, ^bb201
^bb117:
  %v244 = sea.load %v219[%v241] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_190"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb118
^bb118:
  %v245 = sea.ptr.cmp eq, %v244, %v203 : !sea.ptr<64> loc("_191"("seahorn/lib/linked_list_helper.c":108:44))
  %v246 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":174:66)
  sea.cond_br %v245, ^bb119, ^bb153(%v246 : i1) loc("seahorn/lib/linked_list_helper.c":174:66)
^bb119:
  sea.br ^bb120
^bb120:
  %v247 = sea.const 8 : i64 loc("_194"("seahorn/lib/linked_list_helper.c":175:43))
  %v248 = sea.ptr.dereferenceable %v241, %v247 : !sea.ptr<64>, i64 loc("_194"("seahorn/lib/linked_list_helper.c":175:43))
  sea.cond_br %v248, ^bb121, ^bb201
^bb121:
  sea.br ^bb122
^bb122:
  %v249 = sea.ptr.cmp eq, %v202, %v203 : !sea.ptr<64> loc("_197"("seahorn/lib/linked_list_helper.c":108:15))
  %v250 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v249, ^bb123, ^bb153(%v250 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb123:
  %v251 = sea.ptr.index %v202 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_199"("seahorn/lib/linked_list_helper.c":108:39))
  %v252 = sea.const 8 : i64 loc("_200"("seahorn/lib/linked_list_helper.c":108:39))
  %v253 = sea.ptr.dereferenceable %v251, %v252 : !sea.ptr<64>, i64 loc("_200"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v253, ^bb124, ^bb201
^bb124:
  %v254 = sea.load %v222[%v251] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_202"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb125
^bb125:
  %v255 = sea.ptr.cmp eq, %v254, %v201 : !sea.ptr<64> loc("_203"("seahorn/lib/linked_list_helper.c":108:44))
  %v256 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v255, ^bb126, ^bb153(%v256 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb126:
  sea.br ^bb127
^bb127:
  %v257 = sea.const 8 : i64 loc("_206"("seahorn/lib/linked_list_helper.c":113:39))
  %v258 = sea.ptr.dereferenceable %v202, %v257 : !sea.ptr<64>, i64 loc("_206"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v258, ^bb128, ^bb201
^bb128:
  %v259 = sea.load %v222[%v202] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_208"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb129
^bb129:
  %v260 = sea.ptr.cmp eq, %v259, %v200 : !sea.ptr<64> loc("_209"("seahorn/lib/linked_list_helper.c":113:44))
  %v261 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":175:67)
  sea.cond_br %v260, ^bb130, ^bb153(%v261 : i1) loc("seahorn/lib/linked_list_helper.c":175:67)
^bb130:
  sea.br ^bb131
^bb131:
  sea.br ^bb132
^bb132:
  sea.br ^bb133
^bb133:
  sea.br ^bb134
^bb134:
  sea.br ^bb135
^bb135:
  %v262 = sea.load %v222[%v3] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_215"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb136
^bb136:
  %v263 = sea.ptr.cmp eq, %v262, %v76 : !sea.ptr<64> loc("_217"("seahorn/lib/linked_list_helper.c":113:44))
  sea.br ^bb153(%v263 : i1)
^bb137:
  sea.br ^bb138
^bb138:
  sea.br ^bb139
^bb139:
  %v264 = sea.ptr.cmp eq, %v204, %v74 : !sea.ptr<64> loc("_165"("seahorn/lib/linked_list_helper.c":108:15))
  %v265 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v264, ^bb140, ^bb153(%v265 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb140:
  %v266 = sea.ptr.index %v74 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_167"("seahorn/lib/linked_list_helper.c":108:39))
  %v267 = sea.const 8 : i64 loc("_168"("seahorn/lib/linked_list_helper.c":108:39))
  %v268 = sea.ptr.dereferenceable %v266, %v267 : !sea.ptr<64>, i64 loc("_168"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v268, ^bb141, ^bb201
^bb141:
  %v269 = sea.load %v219[%v266] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_170"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb142
^bb142:
  %v270 = sea.ptr.cmp eq, %v269, %v203 : !sea.ptr<64> loc("_171"("seahorn/lib/linked_list_helper.c":108:44))
  %v271 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":169:66)
  sea.cond_br %v270, ^bb143, ^bb153(%v271 : i1) loc("seahorn/lib/linked_list_helper.c":169:66)
^bb143:
  sea.br ^bb144
^bb144:
  sea.br ^bb145
^bb145:
  sea.br ^bb146
^bb146:
  sea.br ^bb147
^bb147:
  sea.br ^bb148
^bb148:
  %v272 = sea.load %v222[%v3] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_177"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb149
^bb149:
  %v273 = sea.ptr.cmp eq, %v272, %v76 : !sea.ptr<64> loc("_179"("seahorn/lib/linked_list_helper.c":113:44))
  sea.br ^bb153(%v273 : i1)
^bb150:
  sea.br ^bb151
^bb151:
  sea.br ^bb152
^bb152:
  %v274 = sea.const 1 : i1
  sea.br ^bb153(%v274 : i1)
^bb153(%v275 : i1):
  sea.br ^bb154
^bb154:
  sea.cond_br %v205, ^bb197, ^bb155 loc("seahorn/lib/linked_list_helper.c":164:7)
^bb155:
  sea.br ^bb156
^bb156:
  sea.cond_br %v206, ^bb184, ^bb157 loc("seahorn/lib/linked_list_helper.c":167:14)
^bb157:
  sea.br ^bb158
^bb158:
  sea.cond_br %v207, ^bb160, ^bb159 loc("seahorn/lib/linked_list_helper.c":172:14)
^bb159:
  %v276 = sea.const 0 : i1
  sea.br ^bb200(%v276 : i1)
^bb160:
  sea.br ^bb161
^bb161:
  sea.br ^bb162
^bb162:
  %v277 = sea.ptr.cmp eq, %v204, %v74 : !sea.ptr<64> loc("_248"("seahorn/lib/linked_list_helper.c":108:15))
  %v278 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v277, ^bb163, ^bb200(%v278 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb163:
  %v279 = sea.ptr.index %v74 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_250"("seahorn/lib/linked_list_helper.c":108:39))
  %v280 = sea.const 8 : i64 loc("_251"("seahorn/lib/linked_list_helper.c":108:39))
  %v281 = sea.ptr.dereferenceable %v279, %v280 : !sea.ptr<64>, i64 loc("_251"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v281, ^bb164, ^bb201
^bb164:
  %v282 = sea.load %v219[%v279] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_253"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb165
^bb165:
  %v283 = sea.ptr.cmp eq, %v282, %v203 : !sea.ptr<64> loc("_254"("seahorn/lib/linked_list_helper.c":108:44))
  %v284 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":174:66)
  sea.cond_br %v283, ^bb166, ^bb200(%v284 : i1) loc("seahorn/lib/linked_list_helper.c":174:66)
^bb166:
  sea.br ^bb167
^bb167:
  %v285 = sea.const 8 : i64 loc("_257"("seahorn/lib/linked_list_helper.c":175:43))
  %v286 = sea.ptr.dereferenceable %v279, %v285 : !sea.ptr<64>, i64 loc("_257"("seahorn/lib/linked_list_helper.c":175:43))
  sea.cond_br %v286, ^bb168, ^bb201
^bb168:
  sea.br ^bb169
^bb169:
  %v287 = sea.ptr.cmp eq, %v202, %v203 : !sea.ptr<64> loc("_260"("seahorn/lib/linked_list_helper.c":108:15))
  %v288 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v287, ^bb170, ^bb200(%v288 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb170:
  %v289 = sea.ptr.index %v202 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_262"("seahorn/lib/linked_list_helper.c":108:39))
  %v290 = sea.const 8 : i64 loc("_263"("seahorn/lib/linked_list_helper.c":108:39))
  %v291 = sea.ptr.dereferenceable %v289, %v290 : !sea.ptr<64>, i64 loc("_263"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v291, ^bb171, ^bb201
^bb171:
  %v292 = sea.load %v222[%v289] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_265"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb172
^bb172:
  %v293 = sea.ptr.cmp eq, %v292, %v201 : !sea.ptr<64> loc("_266"("seahorn/lib/linked_list_helper.c":108:44))
  %v294 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":118:40)
  sea.cond_br %v293, ^bb173, ^bb200(%v294 : i1) loc("seahorn/lib/linked_list_helper.c":118:40)
^bb173:
  sea.br ^bb174
^bb174:
  %v295 = sea.const 8 : i64 loc("_269"("seahorn/lib/linked_list_helper.c":113:39))
  %v296 = sea.ptr.dereferenceable %v202, %v295 : !sea.ptr<64>, i64 loc("_269"("seahorn/lib/linked_list_helper.c":113:39))
  sea.cond_br %v296, ^bb175, ^bb201
^bb175:
  %v297 = sea.load %v222[%v202] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_271"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb176
^bb176:
  %v298 = sea.ptr.cmp eq, %v297, %v200 : !sea.ptr<64> loc("_272"("seahorn/lib/linked_list_helper.c":113:44))
  %v299 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":175:67)
  sea.cond_br %v298, ^bb177, ^bb200(%v299 : i1) loc("seahorn/lib/linked_list_helper.c":175:67)
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
  %v300 = sea.load %v222[%v3] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_278"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb183
^bb183:
  %v301 = sea.ptr.cmp eq, %v300, %v76 : !sea.ptr<64> loc("_280"("seahorn/lib/linked_list_helper.c":113:44))
  sea.br ^bb200(%v301 : i1)
^bb184:
  sea.br ^bb185
^bb185:
  sea.br ^bb186
^bb186:
  %v302 = sea.ptr.cmp eq, %v204, %v74 : !sea.ptr<64> loc("_228"("seahorn/lib/linked_list_helper.c":108:15))
  %v303 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":108:30)
  sea.cond_br %v302, ^bb187, ^bb200(%v303 : i1) loc("seahorn/lib/linked_list_helper.c":108:30)
^bb187:
  %v304 = sea.ptr.index %v74 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_230"("seahorn/lib/linked_list_helper.c":108:39))
  %v305 = sea.const 8 : i64 loc("_231"("seahorn/lib/linked_list_helper.c":108:39))
  %v306 = sea.ptr.dereferenceable %v304, %v305 : !sea.ptr<64>, i64 loc("_231"("seahorn/lib/linked_list_helper.c":108:39))
  sea.cond_br %v306, ^bb188, ^bb201
^bb188:
  %v307 = sea.load %v219[%v304] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_233"("seahorn/lib/linked_list_helper.c":108:39))
  sea.br ^bb189
^bb189:
  %v308 = sea.ptr.cmp eq, %v307, %v203 : !sea.ptr<64> loc("_234"("seahorn/lib/linked_list_helper.c":108:44))
  %v309 = sea.const 0 : i1 loc("seahorn/lib/linked_list_helper.c":169:66)
  sea.cond_br %v308, ^bb190, ^bb200(%v309 : i1) loc("seahorn/lib/linked_list_helper.c":169:66)
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
  %v310 = sea.load %v222[%v3] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_240"("seahorn/lib/linked_list_helper.c":113:39))
  sea.br ^bb196
^bb196:
  %v311 = sea.ptr.cmp eq, %v310, %v76 : !sea.ptr<64> loc("_242"("seahorn/lib/linked_list_helper.c":113:44))
  sea.br ^bb200(%v311 : i1)
^bb197:
  sea.br ^bb198
^bb198:
  sea.br ^bb199
^bb199:
  %v312 = sea.const 1 : i1
  sea.br ^bb200(%v312 : i1)
^bb200(%v313 : i1):
  %v314 = sea.const 1 : i1 loc("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":37:3)
  %v315 = sea.xor %v313, %v314 : i1 loc("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":37:3)
  sea.assume %v315 loc("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":37:3)
  sea.br ^bb201 loc("seahorn/jobs/linked_list_pop_back/aws_linked_list_pop_back_harness.c":37:3)
^bb201:
  sea.br ^bb202
^bb202:
  %v316 = sea.const 0 : i1
  sea.assert %v316
  sea.halt
}
