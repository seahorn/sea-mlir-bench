// Exported from SeaHorn (byte_buf_eq2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm20")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm21")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm22")
  %v3 = sea.mem.nondet "region.80" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm23")
  %v4 = sea.const 32 : i64 loc("_0")
  %v5 = sea.alloca %v4 align 8 [4] : i64 -> !sea.ptr<64> loc("_0")
  %v6 = sea.const 32 : i64 loc("_1")
  %v7 = sea.alloca %v6 align 8 [5] : i64 -> !sea.ptr<64> loc("_1")
  %v8 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v9 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v10 = sea.store %v0[%v8], %v9 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v11 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_2")
  %v12 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_2")
  %v13 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v14 = sea.store %v10[%v12], %v13 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v15 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_3")
  %v16 = sea.ptr.index %v15 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_3")
  %v17 = sea.const 0 : i8
  %v18 = sea.const 24 : i64
  %v19 = sea.memset %v14[%v16], %v17, %v18 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v20 = sea.nondet "nd_size_t" [6] : i64 loc("_4"("seahorn/lib/byte_buf_helper.c":19:18))
  %v21 = sea.nondet "nd_size_t" [7] : i64 loc("_5"("seahorn/lib/byte_buf_helper.c":20:18))
  %v22 = sea.icmp ule, %v20, %v21 : i64 loc("_6"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v22 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v23 = sea.const 11 : i64 loc("_7"("seahorn/lib/byte_buf_helper.c":22:16))
  %v24 = sea.icmp ult, %v21, %v23 : i64 loc("_7"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v24 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb1
^bb1:
  %v25 = sea.store %v1[%v5], %v20 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v26 = sea.ptr.index %v5 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_9"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb2
^bb2:
  %v27 = sea.store %v25[%v26], %v21 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v28 = sea.const 0 : i64 loc("_11"("seahorn/lib/proof_allocators.c":21:15))
  %v29 = sea.icmp eq, %v21, %v28 : i64 loc("_11"("seahorn/lib/proof_allocators.c":21:15))
  %v30 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v29, ^bb6(%v3, %v30 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/proof_allocators.c":21:10)
^bb3:
  %v31 = sea.nondet "nd_malloc_is_fail" [8] : i1 loc("_13"("seahorn/lib/sea_allocators.c":11:10))
  %v32 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v31, ^bb5(%v3, %v32 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/sea_allocators.c":11:10)
^bb4:
  %v33 = sea.const 1 : i64 loc("malloc.i")
  %v34 = sea.mul %v21, %v33 : i64 loc("malloc.i")
  %v35 = sea.alloca %v34 align 16 [9] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb5(%v3, %v35 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb5(%v36 : !sea.mem<!sea.ptr<64>, i8>, %v37 : !sea.ptr<64>):
  %v38 = sea.memhavoc %v36[%v37], %v21 [10] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb6(%v38, %v37 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb6(%v39 : !sea.mem<!sea.ptr<64>, i8>, %v40 : !sea.ptr<64>):
  %v41 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_17"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb7
^bb7:
  %v42 = sea.store %v27[%v41], %v40 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v43 = sea.ptr.index %v5 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_19"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb8
^bb8:
  %v44 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v45 = sea.store %v42[%v43], %v44 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v46 = sea.nondet "nd_size_t" [11] : i64 loc("_20"("seahorn/lib/byte_buf_helper.c":19:18))
  %v47 = sea.nondet "nd_size_t" [12] : i64 loc("_21"("seahorn/lib/byte_buf_helper.c":20:18))
  %v48 = sea.icmp ule, %v46, %v47 : i64 loc("_22"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v48 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v49 = sea.const 11 : i64 loc("_23"("seahorn/lib/byte_buf_helper.c":22:16))
  %v50 = sea.icmp ult, %v47, %v49 : i64 loc("_23"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v50 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb9
^bb9:
  %v51 = sea.store %v2[%v7], %v46 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v52 = sea.ptr.index %v7 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_25"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb10
^bb10:
  %v53 = sea.store %v51[%v52], %v47 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v54 = sea.const 0 : i64 loc("_27"("seahorn/lib/proof_allocators.c":21:15))
  %v55 = sea.icmp eq, %v47, %v54 : i64 loc("_27"("seahorn/lib/proof_allocators.c":21:15))
  %v56 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v55, ^bb14(%v39, %v56 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb11 loc("seahorn/lib/proof_allocators.c":21:10)
^bb11:
  %v57 = sea.nondet "nd_malloc_is_fail" [13] : i1 loc("_29"("seahorn/lib/sea_allocators.c":11:10))
  %v58 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v57, ^bb13(%v39, %v58 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb12 loc("seahorn/lib/sea_allocators.c":11:10)
^bb12:
  %v59 = sea.const 1 : i64 loc("malloc42.i")
  %v60 = sea.mul %v47, %v59 : i64 loc("malloc42.i")
  %v61 = sea.alloca %v60 align 16 [14] : i64 -> !sea.ptr<64> loc("malloc42.i")
  sea.br ^bb13(%v39, %v61 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb13(%v62 : !sea.mem<!sea.ptr<64>, i8>, %v63 : !sea.ptr<64>):
  %v64 = sea.memhavoc %v62[%v63], %v47 [15] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb14(%v64, %v63 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb14(%v65 : !sea.mem<!sea.ptr<64>, i8>, %v66 : !sea.ptr<64>):
  %v67 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_33"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb15
^bb15:
  %v68 = sea.store %v53[%v67], %v66 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v69 = sea.ptr.index %v7 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_35"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb16
^bb16:
  %v70 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v71 = sea.store %v68[%v69], %v70 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  sea.br ^bb17
^bb17:
  sea.cond_br %v29, ^bb25, ^bb18 loc("aws-c-common/source/byte_buf.c":60:33)
^bb18:
  sea.br ^bb19
^bb19:
  sea.br ^bb20
^bb20:
  sea.br ^bb21
^bb21:
  %v72 = sea.icmp ugt, %v20, %v21 : i64 loc(".not2.i28.i"("aws-c-common/source/byte_buf.c":61:44))
  %v73 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v72, ^bb30(%v73 : i1), ^bb22 loc("aws-c-common/source/byte_buf.c":61:61)
^bb22:
  sea.br ^bb23
^bb23:
  sea.br ^bb24
^bb24:
  %v74 = sea.ptr.null : !sea.ptr<64> loc("_49"("aws-c-common/source/byte_buf.c":61:64))
  %v75 = sea.ptr.cmp ne, %v40, %v74 : !sea.ptr<64> loc("_49"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb30(%v75 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb25:
  sea.br ^bb26
^bb26:
  %v76 = sea.const 0 : i64 loc("_39"("aws-c-common/source/byte_buf.c":60:45))
  %v77 = sea.icmp eq, %v20, %v76 : i64 loc("_39"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v77, ^bb27, ^bb29 loc("aws-c-common/source/byte_buf.c":60:50)
^bb27:
  sea.br ^bb28
^bb28:
  %v78 = sea.ptr.null : !sea.ptr<64> loc("_42"("aws-c-common/source/byte_buf.c":60:65))
  %v79 = sea.ptr.cmp eq, %v40, %v78 : !sea.ptr<64> loc("_42"("aws-c-common/source/byte_buf.c":60:65))
  %v80 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v79, ^bb30(%v80 : i1), ^bb29 loc("aws-c-common/source/byte_buf.c":60:74)
^bb29:
  %v81 = sea.const 0 : i1
  sea.br ^bb30(%v81 : i1)
^bb30(%v82 : i1):
  sea.assume %v82 loc("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":18:3)
  %v83 = sea.nondet "nd_bool" [16] : i1 loc("_51"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":19:7))
  sea.cond_br %v83, ^bb46, ^bb31 loc("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":19:7)
^bb31:
  sea.br ^bb32
^bb32:
  sea.cond_br %v55, ^bb40, ^bb33 loc("aws-c-common/source/byte_buf.c":60:33)
^bb33:
  sea.br ^bb34
^bb34:
  sea.br ^bb35
^bb35:
  sea.br ^bb36
^bb36:
  %v84 = sea.icmp ugt, %v46, %v47 : i64 loc(".not2.i24.i"("aws-c-common/source/byte_buf.c":61:44))
  %v85 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v84, ^bb45(%v85 : i1), ^bb37 loc("aws-c-common/source/byte_buf.c":61:61)
^bb37:
  sea.br ^bb38
^bb38:
  sea.br ^bb39
^bb39:
  %v86 = sea.ptr.null : !sea.ptr<64> loc("_67"("aws-c-common/source/byte_buf.c":61:64))
  %v87 = sea.ptr.cmp ne, %v66, %v86 : !sea.ptr<64> loc("_67"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb45(%v87 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb40:
  sea.br ^bb41
^bb41:
  %v88 = sea.const 0 : i64 loc("_57"("aws-c-common/source/byte_buf.c":60:45))
  %v89 = sea.icmp eq, %v46, %v88 : i64 loc("_57"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v89, ^bb42, ^bb44 loc("aws-c-common/source/byte_buf.c":60:50)
^bb42:
  sea.br ^bb43
^bb43:
  %v90 = sea.ptr.null : !sea.ptr<64> loc("_60"("aws-c-common/source/byte_buf.c":60:65))
  %v91 = sea.ptr.cmp eq, %v66, %v90 : !sea.ptr<64> loc("_60"("aws-c-common/source/byte_buf.c":60:65))
  %v92 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v91, ^bb45(%v92 : i1), ^bb44 loc("aws-c-common/source/byte_buf.c":60:74)
^bb44:
  %v93 = sea.const 0 : i1
  sea.br ^bb45(%v93 : i1)
^bb45(%v94 : i1):
  sea.assume %v94 loc("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":22:5)
  sea.br ^bb47(%v71, %v47, %v46, %v66 : !sea.mem<!sea.ptr<64>, i8>, i64, i64, !sea.ptr<64>)
^bb46:
  %v95 = sea.store %v71[%v7], %v20 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":20:11)
  %v96 = sea.store %v95[%v67], %v40 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":20:11)
  %v97 = sea.store %v96[%v52], %v21 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":20:11)
  %v98 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":20:11)
  %v99 = sea.store %v97[%v69], %v98 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":20:11)
  sea.br ^bb47(%v99, %v21, %v20, %v40 : !sea.mem<!sea.ptr<64>, i8>, i64, i64, !sea.ptr<64>) loc("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":21:3)
^bb47(%v100 : !sea.mem<!sea.ptr<64>, i8>, %v101 : i64, %v102 : i64, %v103 : !sea.ptr<64>):
  sea.tracking_on loc("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":25:3)
  sea.br ^bb48
^bb48:
  sea.br ^bb49
^bb49:
  sea.br ^bb50
^bb50:
  sea.br ^bb51
^bb51:
  %v104 = sea.icmp eq, %v20, %v102 : i64 loc(".not.i.i"("aws-c-common/source/byte_buf.c":425:15))
  sea.cond_br %v104, ^bb52, ^bb145 loc("aws-c-common/source/byte_buf.c":425:9)
^bb52:
  %v105 = sea.const 0 : i64 loc("_77"("aws-c-common/source/byte_buf.c":429:15))
  %v106 = sea.icmp eq, %v20, %v105 : i64 loc("_77"("aws-c-common/source/byte_buf.c":429:15))
  sea.cond_br %v106, ^bb144, ^bb53 loc("aws-c-common/source/byte_buf.c":429:9)
^bb53:
  %v107 = sea.ptr.cmp eq, %v40, %v103 : !sea.ptr<64> loc("_79"("seahorn/lib/bcmp.c":55:10))
  sea.cond_br %v107, ^bb140, ^bb54 loc("seahorn/lib/bcmp.c":55:7)
^bb54:
  %v108 = sea.const 1 : i64 loc("_82"("seahorn/lib/bcmp.c":61:11))
  %v109 = sea.ptr.dereferenceable %v40, %v108 : !sea.ptr<64>, i64 loc("_82"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v109, ^bb55, ^bb203
^bb55:
  %v110 = sea.load %v65[%v40] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_84"("seahorn/lib/bcmp.c":61:11))
  %v111 = sea.const 1 : i64 loc("_85"("seahorn/lib/bcmp.c":61:20))
  %v112 = sea.ptr.dereferenceable %v103, %v111 : !sea.ptr<64>, i64 loc("_85"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v112, ^bb56, ^bb203
^bb56:
  %v113 = sea.load %v65[%v103] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_87"("seahorn/lib/bcmp.c":61:20))
  %v114 = sea.icmp eq, %v110, %v113 : i8 loc(".not2.i41.i"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v114, ^bb57, ^bb93(%v103, %v40 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb57:
  %v115 = sea.const 1 : i64 loc(".not19"("seahorn/lib/bcmp.c":60:11))
  %v116 = sea.icmp eq, %v20, %v115 : i64 loc(".not19"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v116, ^bb139, ^bb58 loc("seahorn/lib/bcmp.c":60:9)
^bb58:
  %v117 = sea.ptr.index %v40 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_93"("seahorn/lib/bcmp.c":61:11))
  %v118 = sea.const 1 : i64 loc("_94"("seahorn/lib/bcmp.c":61:11))
  %v119 = sea.ptr.dereferenceable %v117, %v118 : !sea.ptr<64>, i64 loc("_94"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v119, ^bb59, ^bb203
^bb59:
  %v120 = sea.load %v65[%v117] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_96"("seahorn/lib/bcmp.c":61:11))
  %v121 = sea.ptr.index %v103 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_97"("seahorn/lib/bcmp.c":61:20))
  %v122 = sea.const 1 : i64 loc("_98"("seahorn/lib/bcmp.c":61:20))
  %v123 = sea.ptr.dereferenceable %v121, %v122 : !sea.ptr<64>, i64 loc("_98"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v123, ^bb60, ^bb203
^bb60:
  %v124 = sea.load %v65[%v121] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_100"("seahorn/lib/bcmp.c":61:20))
  %v125 = sea.icmp eq, %v120, %v124 : i8 loc(".not2.i41.i.1"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v125, ^bb61, ^bb93(%v121, %v117 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb61:
  %v126 = sea.const 2 : i64 loc("_101"("seahorn/lib/bcmp.c":60:11))
  %v127 = sea.icmp ugt, %v20, %v126 : i64 loc("_101"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v127, ^bb62, ^bb139 loc("seahorn/lib/bcmp.c":60:9)
^bb62:
  %v128 = sea.ptr.index %v40 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_103"("seahorn/lib/bcmp.c":61:11))
  %v129 = sea.const 1 : i64 loc("_104"("seahorn/lib/bcmp.c":61:11))
  %v130 = sea.ptr.dereferenceable %v128, %v129 : !sea.ptr<64>, i64 loc("_104"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v130, ^bb63, ^bb203
^bb63:
  %v131 = sea.load %v65[%v128] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_106"("seahorn/lib/bcmp.c":61:11))
  %v132 = sea.ptr.index %v103 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_107"("seahorn/lib/bcmp.c":61:20))
  %v133 = sea.const 1 : i64 loc("_108"("seahorn/lib/bcmp.c":61:20))
  %v134 = sea.ptr.dereferenceable %v132, %v133 : !sea.ptr<64>, i64 loc("_108"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v134, ^bb64, ^bb203
^bb64:
  %v135 = sea.load %v65[%v132] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_110"("seahorn/lib/bcmp.c":61:20))
  %v136 = sea.icmp eq, %v131, %v135 : i8 loc(".not2.i41.i.2"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v136, ^bb65, ^bb93(%v132, %v128 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb65:
  %v137 = sea.const 3 : i64 loc(".not"("seahorn/lib/bcmp.c":60:11))
  %v138 = sea.icmp eq, %v20, %v137 : i64 loc(".not"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v138, ^bb139, ^bb66 loc("seahorn/lib/bcmp.c":60:9)
^bb66:
  %v139 = sea.ptr.index %v40 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_112"("seahorn/lib/bcmp.c":61:11))
  %v140 = sea.const 1 : i64 loc("_113"("seahorn/lib/bcmp.c":61:11))
  %v141 = sea.ptr.dereferenceable %v139, %v140 : !sea.ptr<64>, i64 loc("_113"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v141, ^bb67, ^bb203
^bb67:
  %v142 = sea.load %v65[%v139] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_115"("seahorn/lib/bcmp.c":61:11))
  %v143 = sea.ptr.index %v103 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_116"("seahorn/lib/bcmp.c":61:20))
  %v144 = sea.const 1 : i64 loc("_117"("seahorn/lib/bcmp.c":61:20))
  %v145 = sea.ptr.dereferenceable %v143, %v144 : !sea.ptr<64>, i64 loc("_117"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v145, ^bb68, ^bb203
^bb68:
  %v146 = sea.load %v65[%v143] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_119"("seahorn/lib/bcmp.c":61:20))
  %v147 = sea.icmp eq, %v142, %v146 : i8 loc(".not2.i41.i.3"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v147, ^bb69, ^bb93(%v143, %v139 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb69:
  %v148 = sea.const 4 : i64 loc("_120"("seahorn/lib/bcmp.c":60:11))
  %v149 = sea.icmp ugt, %v20, %v148 : i64 loc("_120"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v149, ^bb70, ^bb139 loc("seahorn/lib/bcmp.c":60:9)
^bb70:
  %v150 = sea.ptr.index %v40 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_122"("seahorn/lib/bcmp.c":61:11))
  %v151 = sea.const 1 : i64 loc("_123"("seahorn/lib/bcmp.c":61:11))
  %v152 = sea.ptr.dereferenceable %v150, %v151 : !sea.ptr<64>, i64 loc("_123"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v152, ^bb71, ^bb203
^bb71:
  %v153 = sea.load %v65[%v150] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_125"("seahorn/lib/bcmp.c":61:11))
  %v154 = sea.ptr.index %v103 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_126"("seahorn/lib/bcmp.c":61:20))
  %v155 = sea.const 1 : i64 loc("_127"("seahorn/lib/bcmp.c":61:20))
  %v156 = sea.ptr.dereferenceable %v154, %v155 : !sea.ptr<64>, i64 loc("_127"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v156, ^bb72, ^bb203
^bb72:
  %v157 = sea.load %v65[%v154] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_129"("seahorn/lib/bcmp.c":61:20))
  %v158 = sea.icmp eq, %v153, %v157 : i8 loc(".not2.i41.i.4"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v158, ^bb73, ^bb93(%v154, %v150 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb73:
  %v159 = sea.const 5 : i64 loc(".not20"("seahorn/lib/bcmp.c":60:11))
  %v160 = sea.icmp eq, %v20, %v159 : i64 loc(".not20"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v160, ^bb139, ^bb74 loc("seahorn/lib/bcmp.c":60:9)
^bb74:
  %v161 = sea.ptr.index %v40 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_131"("seahorn/lib/bcmp.c":61:11))
  %v162 = sea.const 1 : i64 loc("_132"("seahorn/lib/bcmp.c":61:11))
  %v163 = sea.ptr.dereferenceable %v161, %v162 : !sea.ptr<64>, i64 loc("_132"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v163, ^bb75, ^bb203
^bb75:
  %v164 = sea.load %v65[%v161] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_134"("seahorn/lib/bcmp.c":61:11))
  %v165 = sea.ptr.index %v103 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_135"("seahorn/lib/bcmp.c":61:20))
  %v166 = sea.const 1 : i64 loc("_136"("seahorn/lib/bcmp.c":61:20))
  %v167 = sea.ptr.dereferenceable %v165, %v166 : !sea.ptr<64>, i64 loc("_136"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v167, ^bb76, ^bb203
^bb76:
  %v168 = sea.load %v65[%v165] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_138"("seahorn/lib/bcmp.c":61:20))
  %v169 = sea.icmp eq, %v164, %v168 : i8 loc(".not2.i41.i.5"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v169, ^bb77, ^bb93(%v165, %v161 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb77:
  %v170 = sea.const 6 : i64 loc("_139"("seahorn/lib/bcmp.c":60:11))
  %v171 = sea.icmp ugt, %v20, %v170 : i64 loc("_139"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v171, ^bb78, ^bb139 loc("seahorn/lib/bcmp.c":60:9)
^bb78:
  %v172 = sea.ptr.index %v40 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_141"("seahorn/lib/bcmp.c":61:11))
  %v173 = sea.const 1 : i64 loc("_142"("seahorn/lib/bcmp.c":61:11))
  %v174 = sea.ptr.dereferenceable %v172, %v173 : !sea.ptr<64>, i64 loc("_142"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v174, ^bb79, ^bb203
^bb79:
  %v175 = sea.load %v65[%v172] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_144"("seahorn/lib/bcmp.c":61:11))
  %v176 = sea.ptr.index %v103 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_145"("seahorn/lib/bcmp.c":61:20))
  %v177 = sea.const 1 : i64 loc("_146"("seahorn/lib/bcmp.c":61:20))
  %v178 = sea.ptr.dereferenceable %v176, %v177 : !sea.ptr<64>, i64 loc("_146"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v178, ^bb80, ^bb203
^bb80:
  %v179 = sea.load %v65[%v176] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_148"("seahorn/lib/bcmp.c":61:20))
  %v180 = sea.icmp eq, %v175, %v179 : i8 loc(".not2.i41.i.6"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v180, ^bb81, ^bb93(%v176, %v172 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb81:
  %v181 = sea.const 7 : i64 loc(".not21"("seahorn/lib/bcmp.c":60:11))
  %v182 = sea.icmp eq, %v20, %v181 : i64 loc(".not21"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v182, ^bb139, ^bb82 loc("seahorn/lib/bcmp.c":60:9)
^bb82:
  %v183 = sea.ptr.index %v40 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_150"("seahorn/lib/bcmp.c":61:11))
  %v184 = sea.const 1 : i64 loc("_151"("seahorn/lib/bcmp.c":61:11))
  %v185 = sea.ptr.dereferenceable %v183, %v184 : !sea.ptr<64>, i64 loc("_151"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v185, ^bb83, ^bb203
^bb83:
  %v186 = sea.load %v65[%v183] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_153"("seahorn/lib/bcmp.c":61:11))
  %v187 = sea.ptr.index %v103 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_154"("seahorn/lib/bcmp.c":61:20))
  %v188 = sea.const 1 : i64 loc("_155"("seahorn/lib/bcmp.c":61:20))
  %v189 = sea.ptr.dereferenceable %v187, %v188 : !sea.ptr<64>, i64 loc("_155"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v189, ^bb84, ^bb203
^bb84:
  %v190 = sea.load %v65[%v187] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_157"("seahorn/lib/bcmp.c":61:20))
  %v191 = sea.icmp eq, %v186, %v190 : i8 loc(".not2.i41.i.7"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v191, ^bb85, ^bb93(%v187, %v183 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb85:
  %v192 = sea.const 8 : i64 loc("_158"("seahorn/lib/bcmp.c":60:11))
  %v193 = sea.icmp ugt, %v20, %v192 : i64 loc("_158"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v193, ^bb86, ^bb139 loc("seahorn/lib/bcmp.c":60:9)
^bb86:
  %v194 = sea.ptr.index %v40 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_160"("seahorn/lib/bcmp.c":61:11))
  %v195 = sea.const 1 : i64 loc("_161"("seahorn/lib/bcmp.c":61:11))
  %v196 = sea.ptr.dereferenceable %v194, %v195 : !sea.ptr<64>, i64 loc("_161"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v196, ^bb87, ^bb203
^bb87:
  %v197 = sea.load %v65[%v194] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_163"("seahorn/lib/bcmp.c":61:11))
  %v198 = sea.ptr.index %v103 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_164"("seahorn/lib/bcmp.c":61:20))
  %v199 = sea.const 1 : i64 loc("_165"("seahorn/lib/bcmp.c":61:20))
  %v200 = sea.ptr.dereferenceable %v198, %v199 : !sea.ptr<64>, i64 loc("_165"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v200, ^bb88, ^bb203
^bb88:
  %v201 = sea.load %v65[%v198] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_167"("seahorn/lib/bcmp.c":61:20))
  %v202 = sea.icmp eq, %v197, %v201 : i8 loc(".not2.i41.i.8"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v202, ^bb89, ^bb93(%v198, %v194 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb89:
  %v203 = sea.const 9 : i64 loc(".not22"("seahorn/lib/bcmp.c":60:11))
  %v204 = sea.icmp eq, %v20, %v203 : i64 loc(".not22"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v204, ^bb139, ^bb90 loc("seahorn/lib/bcmp.c":60:9)
^bb90:
  %v205 = sea.ptr.index %v40 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_169"("seahorn/lib/bcmp.c":61:11))
  %v206 = sea.const 1 : i64 loc("_170"("seahorn/lib/bcmp.c":61:11))
  %v207 = sea.ptr.dereferenceable %v205, %v206 : !sea.ptr<64>, i64 loc("_170"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v207, ^bb91, ^bb203
^bb91:
  %v208 = sea.load %v65[%v205] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_172"("seahorn/lib/bcmp.c":61:11))
  %v209 = sea.ptr.index %v103 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_173"("seahorn/lib/bcmp.c":61:20))
  %v210 = sea.const 1 : i64 loc("_174"("seahorn/lib/bcmp.c":61:20))
  %v211 = sea.ptr.dereferenceable %v209, %v210 : !sea.ptr<64>, i64 loc("_174"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v211, ^bb92, ^bb203
^bb92:
  %v212 = sea.load %v65[%v209] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_176"("seahorn/lib/bcmp.c":61:20))
  %v213 = sea.icmp eq, %v208, %v212 : i8 loc(".not2.i41.i.9"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v213, ^bb95, ^bb93(%v209, %v205 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb93(%v214 : !sea.ptr<64>, %v215 : !sea.ptr<64>):
  %v216 = sea.const 1 : i64 loc("_89"("seahorn/lib/bcmp.c":62:16))
  %v217 = sea.ptr.dereferenceable %v215, %v216 : !sea.ptr<64>, i64 loc("_89"("seahorn/lib/bcmp.c":62:16))
  sea.cond_br %v217, ^bb94, ^bb203
^bb94:
  %v218 = sea.const 1 : i64 loc("_91"("seahorn/lib/bcmp.c":62:24))
  %v219 = sea.ptr.dereferenceable %v214, %v218 : !sea.ptr<64>, i64 loc("_91"("seahorn/lib/bcmp.c":62:24))
  sea.cond_br %v219, ^bb145, ^bb203
^bb95:
  %v220 = sea.const 10 : i64 loc("_177"("seahorn/lib/bcmp.c":67:31))
  %v221 = sea.icmp ugt, %v20, %v220 : i64 loc("_177"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v221, ^bb96, ^bb139 loc("seahorn/lib/bcmp.c":67:3)
^bb96:
  %v222 = sea.ptr.index %v40 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_80"("seahorn/lib/bcmp.c":68:9))
  %v223 = sea.const 1 : i64 loc("_81"("seahorn/lib/bcmp.c":68:9))
  %v224 = sea.ptr.dereferenceable %v222, %v223 : !sea.ptr<64>, i64 loc("_81"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v224, ^bb97, ^bb203
^bb97:
  %v225 = sea.load %v65[%v222] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_262"("seahorn/lib/bcmp.c":68:9))
  %v226 = sea.ptr.index %v103 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_263"("seahorn/lib/bcmp.c":68:18))
  %v227 = sea.const 1 : i64 loc("_264"("seahorn/lib/bcmp.c":68:18))
  %v228 = sea.ptr.dereferenceable %v226, %v227 : !sea.ptr<64>, i64 loc("_264"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v228, ^bb98, ^bb203
^bb98:
  %v229 = sea.load %v65[%v226] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_266"("seahorn/lib/bcmp.c":68:18))
  %v230 = sea.icmp eq, %v225, %v229 : i8 loc(".not.i40.i"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v230, ^bb99, ^bb135(%v226, %v222 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb99:
  %v231 = sea.const 11 : i64 loc("exitcond51.not"("seahorn/lib/bcmp.c":67:31))
  %v232 = sea.icmp eq, %v20, %v231 : i64 loc("exitcond51.not"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v232, ^bb139, ^bb100 loc("seahorn/lib/bcmp.c":67:3)
^bb100:
  %v233 = sea.ptr.index %v40 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_179"("seahorn/lib/bcmp.c":68:9))
  %v234 = sea.const 1 : i64 loc("_180"("seahorn/lib/bcmp.c":68:9))
  %v235 = sea.ptr.dereferenceable %v233, %v234 : !sea.ptr<64>, i64 loc("_180"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v235, ^bb101, ^bb203
^bb101:
  %v236 = sea.load %v65[%v233] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_182"("seahorn/lib/bcmp.c":68:9))
  %v237 = sea.ptr.index %v103 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_183"("seahorn/lib/bcmp.c":68:18))
  %v238 = sea.const 1 : i64 loc("_184"("seahorn/lib/bcmp.c":68:18))
  %v239 = sea.ptr.dereferenceable %v237, %v238 : !sea.ptr<64>, i64 loc("_184"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v239, ^bb102, ^bb203
^bb102:
  %v240 = sea.load %v65[%v237] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_186"("seahorn/lib/bcmp.c":68:18))
  %v241 = sea.icmp eq, %v236, %v240 : i8 loc(".not.i40.i.1"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v241, ^bb103, ^bb135(%v237, %v233 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb103:
  %v242 = sea.const 12 : i64 loc("exitcond51.not.1"("seahorn/lib/bcmp.c":67:31))
  %v243 = sea.icmp eq, %v20, %v242 : i64 loc("exitcond51.not.1"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v243, ^bb139, ^bb104 loc("seahorn/lib/bcmp.c":67:3)
^bb104:
  %v244 = sea.ptr.index %v40 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_188"("seahorn/lib/bcmp.c":68:9))
  %v245 = sea.const 1 : i64 loc("_189"("seahorn/lib/bcmp.c":68:9))
  %v246 = sea.ptr.dereferenceable %v244, %v245 : !sea.ptr<64>, i64 loc("_189"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v246, ^bb105, ^bb203
^bb105:
  %v247 = sea.load %v65[%v244] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_191"("seahorn/lib/bcmp.c":68:9))
  %v248 = sea.ptr.index %v103 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_192"("seahorn/lib/bcmp.c":68:18))
  %v249 = sea.const 1 : i64 loc("_193"("seahorn/lib/bcmp.c":68:18))
  %v250 = sea.ptr.dereferenceable %v248, %v249 : !sea.ptr<64>, i64 loc("_193"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v250, ^bb106, ^bb203
^bb106:
  %v251 = sea.load %v65[%v248] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_195"("seahorn/lib/bcmp.c":68:18))
  %v252 = sea.icmp eq, %v247, %v251 : i8 loc(".not.i40.i.2"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v252, ^bb107, ^bb135(%v248, %v244 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb107:
  %v253 = sea.const 13 : i64 loc("exitcond51.not.2"("seahorn/lib/bcmp.c":67:31))
  %v254 = sea.icmp eq, %v20, %v253 : i64 loc("exitcond51.not.2"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v254, ^bb139, ^bb108 loc("seahorn/lib/bcmp.c":67:3)
^bb108:
  %v255 = sea.ptr.index %v40 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_197"("seahorn/lib/bcmp.c":68:9))
  %v256 = sea.const 1 : i64 loc("_198"("seahorn/lib/bcmp.c":68:9))
  %v257 = sea.ptr.dereferenceable %v255, %v256 : !sea.ptr<64>, i64 loc("_198"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v257, ^bb109, ^bb203
^bb109:
  %v258 = sea.load %v65[%v255] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_200"("seahorn/lib/bcmp.c":68:9))
  %v259 = sea.ptr.index %v103 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_201"("seahorn/lib/bcmp.c":68:18))
  %v260 = sea.const 1 : i64 loc("_202"("seahorn/lib/bcmp.c":68:18))
  %v261 = sea.ptr.dereferenceable %v259, %v260 : !sea.ptr<64>, i64 loc("_202"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v261, ^bb110, ^bb203
^bb110:
  %v262 = sea.load %v65[%v259] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_204"("seahorn/lib/bcmp.c":68:18))
  %v263 = sea.icmp eq, %v258, %v262 : i8 loc(".not.i40.i.3"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v263, ^bb111, ^bb135(%v259, %v255 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb111:
  %v264 = sea.const 14 : i64 loc("exitcond51.not.3"("seahorn/lib/bcmp.c":67:31))
  %v265 = sea.icmp eq, %v20, %v264 : i64 loc("exitcond51.not.3"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v265, ^bb139, ^bb112 loc("seahorn/lib/bcmp.c":67:3)
^bb112:
  %v266 = sea.ptr.index %v40 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_206"("seahorn/lib/bcmp.c":68:9))
  %v267 = sea.const 1 : i64 loc("_207"("seahorn/lib/bcmp.c":68:9))
  %v268 = sea.ptr.dereferenceable %v266, %v267 : !sea.ptr<64>, i64 loc("_207"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v268, ^bb113, ^bb203
^bb113:
  %v269 = sea.load %v65[%v266] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_209"("seahorn/lib/bcmp.c":68:9))
  %v270 = sea.ptr.index %v103 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_210"("seahorn/lib/bcmp.c":68:18))
  %v271 = sea.const 1 : i64 loc("_211"("seahorn/lib/bcmp.c":68:18))
  %v272 = sea.ptr.dereferenceable %v270, %v271 : !sea.ptr<64>, i64 loc("_211"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v272, ^bb114, ^bb203
^bb114:
  %v273 = sea.load %v65[%v270] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_213"("seahorn/lib/bcmp.c":68:18))
  %v274 = sea.icmp eq, %v269, %v273 : i8 loc(".not.i40.i.4"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v274, ^bb115, ^bb135(%v270, %v266 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb115:
  %v275 = sea.const 15 : i64 loc("exitcond51.not.4"("seahorn/lib/bcmp.c":67:31))
  %v276 = sea.icmp eq, %v20, %v275 : i64 loc("exitcond51.not.4"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v276, ^bb139, ^bb116 loc("seahorn/lib/bcmp.c":67:3)
^bb116:
  %v277 = sea.ptr.index %v40 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_215"("seahorn/lib/bcmp.c":68:9))
  %v278 = sea.const 1 : i64 loc("_216"("seahorn/lib/bcmp.c":68:9))
  %v279 = sea.ptr.dereferenceable %v277, %v278 : !sea.ptr<64>, i64 loc("_216"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v279, ^bb117, ^bb203
^bb117:
  %v280 = sea.load %v65[%v277] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_218"("seahorn/lib/bcmp.c":68:9))
  %v281 = sea.ptr.index %v103 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_219"("seahorn/lib/bcmp.c":68:18))
  %v282 = sea.const 1 : i64 loc("_220"("seahorn/lib/bcmp.c":68:18))
  %v283 = sea.ptr.dereferenceable %v281, %v282 : !sea.ptr<64>, i64 loc("_220"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v283, ^bb118, ^bb203
^bb118:
  %v284 = sea.load %v65[%v281] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_222"("seahorn/lib/bcmp.c":68:18))
  %v285 = sea.icmp eq, %v280, %v284 : i8 loc(".not.i40.i.5"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v285, ^bb119, ^bb135(%v281, %v277 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb119:
  %v286 = sea.const 16 : i64 loc("exitcond51.not.5"("seahorn/lib/bcmp.c":67:31))
  %v287 = sea.icmp eq, %v20, %v286 : i64 loc("exitcond51.not.5"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v287, ^bb139, ^bb120 loc("seahorn/lib/bcmp.c":67:3)
^bb120:
  %v288 = sea.ptr.index %v40 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_224"("seahorn/lib/bcmp.c":68:9))
  %v289 = sea.const 1 : i64 loc("_225"("seahorn/lib/bcmp.c":68:9))
  %v290 = sea.ptr.dereferenceable %v288, %v289 : !sea.ptr<64>, i64 loc("_225"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v290, ^bb121, ^bb203
^bb121:
  %v291 = sea.load %v65[%v288] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_227"("seahorn/lib/bcmp.c":68:9))
  %v292 = sea.ptr.index %v103 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_228"("seahorn/lib/bcmp.c":68:18))
  %v293 = sea.const 1 : i64 loc("_229"("seahorn/lib/bcmp.c":68:18))
  %v294 = sea.ptr.dereferenceable %v292, %v293 : !sea.ptr<64>, i64 loc("_229"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v294, ^bb122, ^bb203
^bb122:
  %v295 = sea.load %v65[%v292] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_231"("seahorn/lib/bcmp.c":68:18))
  %v296 = sea.icmp eq, %v291, %v295 : i8 loc(".not.i40.i.6"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v296, ^bb123, ^bb135(%v292, %v288 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb123:
  %v297 = sea.const 17 : i64 loc("exitcond51.not.6"("seahorn/lib/bcmp.c":67:31))
  %v298 = sea.icmp eq, %v20, %v297 : i64 loc("exitcond51.not.6"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v298, ^bb139, ^bb124 loc("seahorn/lib/bcmp.c":67:3)
^bb124:
  %v299 = sea.ptr.index %v40 [] strides [] offset 17 inbounds : !sea.ptr<64> loc("_233"("seahorn/lib/bcmp.c":68:9))
  %v300 = sea.const 1 : i64 loc("_234"("seahorn/lib/bcmp.c":68:9))
  %v301 = sea.ptr.dereferenceable %v299, %v300 : !sea.ptr<64>, i64 loc("_234"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v301, ^bb125, ^bb203
^bb125:
  %v302 = sea.load %v65[%v299] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_236"("seahorn/lib/bcmp.c":68:9))
  %v303 = sea.ptr.index %v103 [] strides [] offset 17 inbounds : !sea.ptr<64> loc("_237"("seahorn/lib/bcmp.c":68:18))
  %v304 = sea.const 1 : i64 loc("_238"("seahorn/lib/bcmp.c":68:18))
  %v305 = sea.ptr.dereferenceable %v303, %v304 : !sea.ptr<64>, i64 loc("_238"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v305, ^bb126, ^bb203
^bb126:
  %v306 = sea.load %v65[%v303] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_240"("seahorn/lib/bcmp.c":68:18))
  %v307 = sea.icmp eq, %v302, %v306 : i8 loc(".not.i40.i.7"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v307, ^bb127, ^bb135(%v303, %v299 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb127:
  %v308 = sea.const 18 : i64 loc("exitcond51.not.7"("seahorn/lib/bcmp.c":67:31))
  %v309 = sea.icmp eq, %v20, %v308 : i64 loc("exitcond51.not.7"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v309, ^bb139, ^bb128 loc("seahorn/lib/bcmp.c":67:3)
^bb128:
  %v310 = sea.ptr.index %v40 [] strides [] offset 18 inbounds : !sea.ptr<64> loc("_242"("seahorn/lib/bcmp.c":68:9))
  %v311 = sea.const 1 : i64 loc("_243"("seahorn/lib/bcmp.c":68:9))
  %v312 = sea.ptr.dereferenceable %v310, %v311 : !sea.ptr<64>, i64 loc("_243"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v312, ^bb129, ^bb203
^bb129:
  %v313 = sea.load %v65[%v310] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_245"("seahorn/lib/bcmp.c":68:9))
  %v314 = sea.ptr.index %v103 [] strides [] offset 18 inbounds : !sea.ptr<64> loc("_246"("seahorn/lib/bcmp.c":68:18))
  %v315 = sea.const 1 : i64 loc("_247"("seahorn/lib/bcmp.c":68:18))
  %v316 = sea.ptr.dereferenceable %v314, %v315 : !sea.ptr<64>, i64 loc("_247"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v316, ^bb130, ^bb203
^bb130:
  %v317 = sea.load %v65[%v314] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_249"("seahorn/lib/bcmp.c":68:18))
  %v318 = sea.icmp eq, %v313, %v317 : i8 loc(".not.i40.i.8"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v318, ^bb131, ^bb135(%v314, %v310 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb131:
  %v319 = sea.const 19 : i64 loc("exitcond51.not.8"("seahorn/lib/bcmp.c":67:31))
  %v320 = sea.icmp eq, %v20, %v319 : i64 loc("exitcond51.not.8"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v320, ^bb139, ^bb132 loc("seahorn/lib/bcmp.c":67:3)
^bb132:
  %v321 = sea.ptr.index %v40 [] strides [] offset 19 inbounds : !sea.ptr<64> loc("_251"("seahorn/lib/bcmp.c":68:9))
  %v322 = sea.const 1 : i64 loc("_252"("seahorn/lib/bcmp.c":68:9))
  %v323 = sea.ptr.dereferenceable %v321, %v322 : !sea.ptr<64>, i64 loc("_252"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v323, ^bb133, ^bb203
^bb133:
  %v324 = sea.load %v65[%v321] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_254"("seahorn/lib/bcmp.c":68:9))
  %v325 = sea.ptr.index %v103 [] strides [] offset 19 inbounds : !sea.ptr<64> loc("_255"("seahorn/lib/bcmp.c":68:18))
  %v326 = sea.const 1 : i64 loc("_256"("seahorn/lib/bcmp.c":68:18))
  %v327 = sea.ptr.dereferenceable %v325, %v326 : !sea.ptr<64>, i64 loc("_256"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v327, ^bb134, ^bb203
^bb134:
  %v328 = sea.load %v65[%v325] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_258"("seahorn/lib/bcmp.c":68:18))
  %v329 = sea.icmp eq, %v324, %v328 : i8 loc(".not.i40.i.9"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v329, ^bb137, ^bb135(%v325, %v321 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb135(%v330 : !sea.ptr<64>, %v331 : !sea.ptr<64>):
  %v332 = sea.const 1 : i64 loc("_268"("seahorn/lib/bcmp.c":69:14))
  %v333 = sea.ptr.dereferenceable %v331, %v332 : !sea.ptr<64>, i64 loc("_268"("seahorn/lib/bcmp.c":69:14))
  sea.cond_br %v333, ^bb136, ^bb203
^bb136:
  %v334 = sea.const 1 : i64 loc("_270"("seahorn/lib/bcmp.c":69:22))
  %v335 = sea.ptr.dereferenceable %v330, %v334 : !sea.ptr<64>, i64 loc("_270"("seahorn/lib/bcmp.c":69:22))
  sea.cond_br %v335, ^bb145, ^bb203
^bb137:
  %v336 = sea.const 20 : i64 loc("exitcond51.not.9"("seahorn/lib/bcmp.c":67:31))
  %v337 = sea.icmp eq, %v20, %v336 : i64 loc("exitcond51.not.9"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v337, ^bb139, ^bb138 loc("seahorn/lib/bcmp.c":67:3)
^bb138:
  %v338 = sea.ptr.index %v40 [] strides [] offset 20 inbounds : !sea.ptr<64> loc("_260"("seahorn/lib/bcmp.c":68:9))
  %v339 = sea.const 1 : i64 loc("_261"("seahorn/lib/bcmp.c":68:9))
  %v340 = sea.ptr.dereferenceable %v338, %v339 : !sea.ptr<64>, i64 loc("_261"("seahorn/lib/bcmp.c":68:9))
  %v341 = sea.const 1 : i1
  %v342 = sea.xor %v340, %v341 : i1
  sea.assume %v342
  sea.br ^bb203
^bb139:
  sea.br ^bb141
^bb140:
  sea.br ^bb141 loc("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":30:9)
^bb141:
  %v343 = sea.ptr.null : !sea.ptr<64> loc(".not.i37.i"("seahorn/lib/utils.c":15:3))
  %v344 = sea.ptr.cmp eq, %v40, %v343 : !sea.ptr<64> loc(".not.i37.i"("seahorn/lib/utils.c":15:3))
  %v345 = sea.ptr.null : !sea.ptr<64> loc("_272"("seahorn/lib/utils.c":15:3))
  %v346 = sea.ptr.cmp ne, %v103, %v345 : !sea.ptr<64> loc("_272"("seahorn/lib/utils.c":15:3))
  %v347 = sea.xor %v344, %v346 : i1 loc("_273"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v347, ^bb142, ^bb203 loc("seahorn/lib/utils.c":15:3)
^bb142:
  %v348 = sea.ptr.null : !sea.ptr<64> loc("_274")
  %v349 = sea.ptr.cmp ne, %v40, %v348 : !sea.ptr<64> loc("_274")
  %v350 = sea.and %v349, %v346 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v350, ^bb143, ^bb145 loc("seahorn/lib/utils.c":16:15)
^bb143:
  %v351 = sea.nondet "nd_size_t" [17] : i64 loc("_276"("seahorn/lib/utils.c":17:16))
  %v352 = sea.icmp ult, %v351, %v20 : i64 loc("_277"("seahorn/lib/utils.c":19:14))
  %v353 = sea.const 36028797018963967 : i64 loc("_278"("seahorn/lib/utils.c":19:20))
  %v354 = sea.icmp ult, %v20, %v353 : i64 loc("_278"("seahorn/lib/utils.c":19:20))
  %v355 = sea.and %v354, %v352 : i1 loc("_279"("seahorn/lib/utils.c":19:20))
  sea.assume %v355 loc("seahorn/lib/utils.c":19:5)
  %v356 = sea.ptr.index %v40 [%v351] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_280"("seahorn/lib/utils.c":20:5))
  %v357 = sea.load %v65[%v356] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_281"("seahorn/lib/utils.c":20:5))
  %v358 = sea.ptr.index %v103 [%v351] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_282"("seahorn/lib/utils.c":20:5))
  %v359 = sea.load %v65[%v358] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_283"("seahorn/lib/utils.c":20:5))
  %v360 = sea.icmp eq, %v357, %v359 : i8 loc("_284"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v360, ^bb145, ^bb203 loc("seahorn/lib/utils.c":20:5)
^bb144:
  sea.br ^bb145 loc("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":30:9)
^bb145:
  sea.br ^bb146
^bb146:
  sea.cond_br %v29, ^bb154, ^bb147 loc("aws-c-common/source/byte_buf.c":60:33)
^bb147:
  sea.br ^bb148
^bb148:
  sea.br ^bb149
^bb149:
  sea.br ^bb150
^bb150:
  %v361 = sea.icmp ugt, %v20, %v21 : i64 loc(".not2.i20.i"("aws-c-common/source/byte_buf.c":61:44))
  %v362 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v361, ^bb159(%v362 : i1), ^bb151 loc("aws-c-common/source/byte_buf.c":61:61)
^bb151:
  sea.br ^bb152
^bb152:
  sea.br ^bb153
^bb153:
  %v363 = sea.ptr.null : !sea.ptr<64> loc("_298"("aws-c-common/source/byte_buf.c":61:64))
  %v364 = sea.ptr.cmp ne, %v40, %v363 : !sea.ptr<64> loc("_298"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb159(%v364 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb154:
  sea.br ^bb155
^bb155:
  %v365 = sea.const 0 : i64 loc("_288"("aws-c-common/source/byte_buf.c":60:45))
  %v366 = sea.icmp eq, %v20, %v365 : i64 loc("_288"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v366, ^bb156, ^bb158 loc("aws-c-common/source/byte_buf.c":60:50)
^bb156:
  sea.br ^bb157
^bb157:
  %v367 = sea.ptr.null : !sea.ptr<64> loc("_291"("aws-c-common/source/byte_buf.c":60:65))
  %v368 = sea.ptr.cmp eq, %v40, %v367 : !sea.ptr<64> loc("_291"("aws-c-common/source/byte_buf.c":60:65))
  %v369 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v368, ^bb159(%v369 : i1), ^bb158 loc("aws-c-common/source/byte_buf.c":60:74)
^bb158:
  %v370 = sea.const 0 : i1
  sea.br ^bb159(%v370 : i1)
^bb159(%v371 : i1):
  sea.br ^bb160
^bb160:
  sea.cond_br %v29, ^bb166, ^bb161 loc("aws-c-common/source/byte_buf.c":60:33)
^bb161:
  sea.br ^bb162
^bb162:
  sea.br ^bb163
^bb163:
  %v372 = sea.const 1 : i1 loc("or.cond14.not")
  %v373 = sea.const 0 : i1 loc("or.cond14.not")
  %v374 = sea.select %v372, %v22, %v373 : i1 loc("or.cond14.not")
  sea.cond_br %v374, ^bb164, ^bb203
^bb164:
  sea.br ^bb165
^bb165:
  %v375 = sea.ptr.null : !sea.ptr<64> loc("_312")
  %v376 = sea.ptr.cmp ne, %v40, %v375 : !sea.ptr<64> loc("_312")
  %v377 = sea.const 1 : i1 loc("or.cond")
  %v378 = sea.and %v376, %v377 : i1 loc("or.cond")
  sea.cond_br %v378, ^bb171, ^bb203
^bb166:
  sea.br ^bb167
^bb167:
  %v379 = sea.const 0 : i64 loc("_303"("aws-c-common/source/byte_buf.c":60:45))
  %v380 = sea.icmp eq, %v20, %v379 : i64 loc("_303"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v380, ^bb168, ^bb170 loc("aws-c-common/source/byte_buf.c":60:50)
^bb168:
  sea.br ^bb169
^bb169:
  %v381 = sea.ptr.null : !sea.ptr<64> loc("_306"("aws-c-common/source/byte_buf.c":60:65))
  %v382 = sea.ptr.cmp eq, %v40, %v381 : !sea.ptr<64> loc("_306"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v382, ^bb171, ^bb170 loc("aws-c-common/source/byte_buf.c":60:74)
^bb170:
  sea.br ^bb203
^bb171:
  sea.br ^bb172
^bb172:
  %v383 = sea.const 0 : i64 loc(".not52"("aws-c-common/source/byte_buf.c":60:28))
  %v384 = sea.icmp eq, %v101, %v383 : i64 loc(".not52"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v384, ^bb180, ^bb173 loc("aws-c-common/source/byte_buf.c":60:33)
^bb173:
  sea.br ^bb174
^bb174:
  sea.br ^bb175
^bb175:
  sea.br ^bb176
^bb176:
  %v385 = sea.icmp ugt, %v102, %v101 : i64 loc(".not2.i12.i"("aws-c-common/source/byte_buf.c":61:44))
  %v386 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v385, ^bb185(%v386 : i1), ^bb177 loc("aws-c-common/source/byte_buf.c":61:61)
^bb177:
  sea.br ^bb178
^bb178:
  sea.br ^bb179
^bb179:
  %v387 = sea.ptr.null : !sea.ptr<64> loc("_326"("aws-c-common/source/byte_buf.c":61:64))
  %v388 = sea.ptr.cmp ne, %v103, %v387 : !sea.ptr<64> loc("_326"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb185(%v388 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb180:
  sea.br ^bb181
^bb181:
  %v389 = sea.const 0 : i64 loc("_316"("aws-c-common/source/byte_buf.c":60:45))
  %v390 = sea.icmp eq, %v102, %v389 : i64 loc("_316"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v390, ^bb182, ^bb184 loc("aws-c-common/source/byte_buf.c":60:50)
^bb182:
  sea.br ^bb183
^bb183:
  %v391 = sea.ptr.null : !sea.ptr<64> loc("_319"("aws-c-common/source/byte_buf.c":60:65))
  %v392 = sea.ptr.cmp eq, %v103, %v391 : !sea.ptr<64> loc("_319"("aws-c-common/source/byte_buf.c":60:65))
  %v393 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v392, ^bb185(%v393 : i1), ^bb184 loc("aws-c-common/source/byte_buf.c":60:74)
^bb184:
  %v394 = sea.const 0 : i1
  sea.br ^bb185(%v394 : i1)
^bb185(%v395 : i1):
  sea.br ^bb186
^bb186:
  sea.cond_br %v384, ^bb192, ^bb187 loc("aws-c-common/source/byte_buf.c":60:33)
^bb187:
  sea.br ^bb188
^bb188:
  sea.br ^bb189
^bb189:
  %v396 = sea.icmp ule, %v102, %v101 : i64 loc(".not2.i.i")
  %v397 = sea.const 1 : i1 loc("or.cond18.not")
  %v398 = sea.const 0 : i1 loc("or.cond18.not")
  %v399 = sea.select %v397, %v396, %v398 : i1 loc("or.cond18.not")
  sea.cond_br %v399, ^bb190, ^bb203
^bb190:
  sea.br ^bb191
^bb191:
  %v400 = sea.ptr.null : !sea.ptr<64> loc("_340")
  %v401 = sea.ptr.cmp ne, %v103, %v400 : !sea.ptr<64> loc("_340")
  %v402 = sea.const 1 : i1 loc("or.cond11")
  %v403 = sea.and %v401, %v402 : i1 loc("or.cond11")
  sea.cond_br %v403, ^bb197, ^bb203
^bb192:
  sea.br ^bb193
^bb193:
  %v404 = sea.const 0 : i64 loc("_331"("aws-c-common/source/byte_buf.c":60:45))
  %v405 = sea.icmp eq, %v102, %v404 : i64 loc("_331"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v405, ^bb194, ^bb196 loc("aws-c-common/source/byte_buf.c":60:50)
^bb194:
  sea.br ^bb195
^bb195:
  %v406 = sea.ptr.null : !sea.ptr<64> loc("_334"("aws-c-common/source/byte_buf.c":60:65))
  %v407 = sea.ptr.cmp eq, %v103, %v406 : !sea.ptr<64> loc("_334"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v407, ^bb197, ^bb196 loc("aws-c-common/source/byte_buf.c":60:74)
^bb196:
  sea.br ^bb203
^bb197:
  %v408 = sea.mem.is_modified %v25[%v5] : !sea.mem<!sea.ptr<64>, i8> loc("_341"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":39:3))
  %v409 = sea.const 1 : i1 loc("_342"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":39:3))
  %v410 = sea.xor %v408, %v409 : i1 loc("_342"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":39:3))
  %v411 = sea.mem.is_modified %v25[%v5] : !sea.mem<!sea.ptr<64>, i8> loc("_343"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":39:3))
  sea.cond_br %v411, ^bb203, ^bb198 loc("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":39:3)
^bb198:
  %v412 = sea.mem.is_modified %v65[%v40] : !sea.mem<!sea.ptr<64>, i8> loc("_345"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":40:3))
  %v413 = sea.const 1 : i1 loc("_346"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":40:3))
  %v414 = sea.xor %v412, %v413 : i1 loc("_346"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":40:3))
  %v415 = sea.mem.is_modified %v65[%v40] : !sea.mem<!sea.ptr<64>, i8> loc("_347"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":40:3))
  sea.cond_br %v415, ^bb203, ^bb199 loc("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":40:3)
^bb199:
  %v416 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_349"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":41:3))
  %v417 = sea.mem.is_modified %v10[%v416] : !sea.mem<!sea.ptr<64>, i8> loc("_349"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":41:3))
  %v418 = sea.const 1 : i1 loc("_350"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":41:3))
  %v419 = sea.xor %v417, %v418 : i1 loc("_350"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":41:3))
  %v420 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_351"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":41:3))
  %v421 = sea.mem.is_modified %v10[%v420] : !sea.mem<!sea.ptr<64>, i8> loc("_351"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":41:3))
  sea.cond_br %v421, ^bb203, ^bb200 loc("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":41:3)
^bb200:
  %v422 = sea.mem.is_modified %v100[%v7] : !sea.mem<!sea.ptr<64>, i8> loc("_353"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":43:3))
  %v423 = sea.const 1 : i1 loc("_354"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":43:3))
  %v424 = sea.xor %v422, %v423 : i1 loc("_354"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":43:3))
  %v425 = sea.mem.is_modified %v100[%v7] : !sea.mem<!sea.ptr<64>, i8> loc("_355"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":43:3))
  sea.cond_br %v425, ^bb203, ^bb201 loc("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":43:3)
^bb201:
  %v426 = sea.mem.is_modified %v65[%v103] : !sea.mem<!sea.ptr<64>, i8> loc("_357"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":44:3))
  %v427 = sea.const 1 : i1 loc("_358"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":44:3))
  %v428 = sea.xor %v426, %v427 : i1 loc("_358"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":44:3))
  %v429 = sea.mem.is_modified %v65[%v103] : !sea.mem<!sea.ptr<64>, i8> loc("_359"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":44:3))
  sea.cond_br %v429, ^bb203, ^bb202 loc("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":44:3)
^bb202:
  %v430 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_361"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":45:3))
  %v431 = sea.mem.is_modified %v10[%v430] : !sea.mem<!sea.ptr<64>, i8> loc("_361"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":45:3))
  %v432 = sea.const 1 : i1 loc("_362"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":45:3))
  %v433 = sea.xor %v431, %v432 : i1 loc("_362"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":45:3))
  %v434 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_363"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":45:3))
  %v435 = sea.mem.is_modified %v10[%v434] : !sea.mem<!sea.ptr<64>, i8> loc("_363"("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":45:3))
  sea.assume %v435 loc("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":45:3)
  sea.br ^bb203 loc("seahorn/jobs2/byte_buf_eq2/aws_byte_buf_eq_harness2.c":45:3)
^bb203:
  sea.br ^bb204
^bb204:
  %v436 = sea.const 0 : i1
  sea.assert %v436
  sea.halt
}
