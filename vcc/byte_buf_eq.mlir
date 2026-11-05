// Exported from SeaHorn (byte_buf_eq.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm38")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm39")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm40")
  %v3 = sea.mem.nondet "region.80" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm41")
  %v4 = sea.mem.nondet "region.112" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm42")
  %v5 = sea.mem.nondet "region.121" [5] : !sea.mem<!sea.ptr<64>, i8> loc("sm43")
  %v6 = sea.mem.nondet "region.153" [6] : !sea.mem<!sea.ptr<64>, i8> loc("sm44")
  %v7 = sea.mem.nondet "region.162" [7] : !sea.mem<!sea.ptr<64>, i8> loc("sm45")
  %v8 = sea.const 32 : i64 loc("_0")
  %v9 = sea.alloca %v8 align 8 [8] : i64 -> !sea.ptr<64> loc("_0")
  %v10 = sea.const 32 : i64 loc("_1")
  %v11 = sea.alloca %v10 align 8 [9] : i64 -> !sea.ptr<64> loc("_1")
  %v12 = sea.const 32 : i64 loc("_2")
  %v13 = sea.alloca %v12 align 8 [10] : i64 -> !sea.ptr<64> loc("_2")
  %v14 = sea.const 16 : i64 loc("_3")
  %v15 = sea.alloca %v14 align 8 [11] : i64 -> !sea.ptr<64> loc("_3")
  %v16 = sea.const 32 : i64 loc("_4")
  %v17 = sea.alloca %v16 align 8 [12] : i64 -> !sea.ptr<64> loc("_4")
  %v18 = sea.const 16 : i64 loc("_5")
  %v19 = sea.alloca %v18 align 8 [13] : i64 -> !sea.ptr<64> loc("_5")
  %v20 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v21 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v22 = sea.store %v0[%v20], %v21 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v23 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_6")
  %v24 = sea.ptr.index %v23 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_6")
  %v25 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v26 = sea.store %v22[%v24], %v25 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v27 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_7")
  %v28 = sea.ptr.index %v27 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_7")
  %v29 = sea.const 0 : i8
  %v30 = sea.const 24 : i64
  %v31 = sea.memset %v26[%v28], %v29, %v30 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v32 = sea.nondet "nd_size_t" [14] : i64 loc("_8"("seahorn/lib/byte_buf_helper.c":19:18))
  %v33 = sea.nondet "nd_size_t" [15] : i64 loc("_9"("seahorn/lib/byte_buf_helper.c":20:18))
  %v34 = sea.icmp ule, %v32, %v33 : i64 loc("_10"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v34 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v35 = sea.const 11 : i64 loc("_11"("seahorn/lib/byte_buf_helper.c":22:16))
  %v36 = sea.icmp ult, %v33, %v35 : i64 loc("_11"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v36 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb1
^bb1:
  %v37 = sea.store %v1[%v9], %v32 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v38 = sea.ptr.index %v9 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_13"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb2
^bb2:
  %v39 = sea.store %v37[%v38], %v33 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v40 = sea.const 0 : i64 loc("_15"("seahorn/lib/proof_allocators.c":21:15))
  %v41 = sea.icmp eq, %v33, %v40 : i64 loc("_15"("seahorn/lib/proof_allocators.c":21:15))
  %v42 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v41, ^bb6(%v7, %v42 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/proof_allocators.c":21:10)
^bb3:
  %v43 = sea.nondet "nd_malloc_is_fail" [16] : i1 loc("_17"("seahorn/lib/sea_allocators.c":11:10))
  %v44 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v43, ^bb5(%v7, %v44 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/sea_allocators.c":11:10)
^bb4:
  %v45 = sea.const 1 : i64 loc("malloc.i")
  %v46 = sea.mul %v33, %v45 : i64 loc("malloc.i")
  %v47 = sea.alloca %v46 align 16 [17] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb5(%v7, %v47 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb5(%v48 : !sea.mem<!sea.ptr<64>, i8>, %v49 : !sea.ptr<64>):
  %v50 = sea.memhavoc %v48[%v49], %v33 [18] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb6(%v50, %v49 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb6(%v51 : !sea.mem<!sea.ptr<64>, i8>, %v52 : !sea.ptr<64>):
  %v53 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_21"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb7
^bb7:
  %v54 = sea.store %v39[%v53], %v52 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v55 = sea.ptr.index %v9 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_23"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb8
^bb8:
  %v56 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v57 = sea.store %v54[%v55], %v56 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v58 = sea.nondet "nd_size_t" [19] : i64 loc("_24"("seahorn/lib/byte_buf_helper.c":19:18))
  %v59 = sea.nondet "nd_size_t" [20] : i64 loc("_25"("seahorn/lib/byte_buf_helper.c":20:18))
  %v60 = sea.icmp ule, %v58, %v59 : i64 loc("_26"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v60 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v61 = sea.const 11 : i64 loc("_27"("seahorn/lib/byte_buf_helper.c":22:16))
  %v62 = sea.icmp ult, %v59, %v61 : i64 loc("_27"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v62 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb9
^bb9:
  %v63 = sea.store %v2[%v11], %v58 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v64 = sea.ptr.index %v11 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_29"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb10
^bb10:
  %v65 = sea.store %v63[%v64], %v59 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v66 = sea.const 0 : i64 loc("_31"("seahorn/lib/proof_allocators.c":21:15))
  %v67 = sea.icmp eq, %v59, %v66 : i64 loc("_31"("seahorn/lib/proof_allocators.c":21:15))
  %v68 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v67, ^bb14(%v51, %v68 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb11 loc("seahorn/lib/proof_allocators.c":21:10)
^bb11:
  %v69 = sea.nondet "nd_malloc_is_fail" [21] : i1 loc("_33"("seahorn/lib/sea_allocators.c":11:10))
  %v70 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v69, ^bb13(%v51, %v70 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb12 loc("seahorn/lib/sea_allocators.c":11:10)
^bb12:
  %v71 = sea.const 1 : i64 loc("malloc78.i")
  %v72 = sea.mul %v59, %v71 : i64 loc("malloc78.i")
  %v73 = sea.alloca %v72 align 16 [22] : i64 -> !sea.ptr<64> loc("malloc78.i")
  sea.br ^bb13(%v51, %v73 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb13(%v74 : !sea.mem<!sea.ptr<64>, i8>, %v75 : !sea.ptr<64>):
  %v76 = sea.memhavoc %v74[%v75], %v59 [23] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb14(%v76, %v75 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb14(%v77 : !sea.mem<!sea.ptr<64>, i8>, %v78 : !sea.ptr<64>):
  %v79 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_37"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb15
^bb15:
  %v80 = sea.store %v65[%v79], %v78 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v81 = sea.ptr.index %v11 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_39"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb16
^bb16:
  %v82 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v83 = sea.store %v80[%v81], %v82 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  sea.br ^bb17
^bb17:
  sea.cond_br %v41, ^bb25, ^bb18 loc("aws-c-common/source/byte_buf.c":60:33)
^bb18:
  sea.br ^bb19
^bb19:
  sea.br ^bb20
^bb20:
  sea.br ^bb21
^bb21:
  %v84 = sea.icmp ugt, %v32, %v33 : i64 loc(".not2.i52.i"("aws-c-common/source/byte_buf.c":61:44))
  %v85 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v84, ^bb30(%v85 : i1), ^bb22 loc("aws-c-common/source/byte_buf.c":61:61)
^bb22:
  sea.br ^bb23
^bb23:
  sea.br ^bb24
^bb24:
  %v86 = sea.ptr.null : !sea.ptr<64> loc("_53"("aws-c-common/source/byte_buf.c":61:64))
  %v87 = sea.ptr.cmp ne, %v52, %v86 : !sea.ptr<64> loc("_53"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb30(%v87 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb25:
  sea.br ^bb26
^bb26:
  %v88 = sea.const 0 : i64 loc("_43"("aws-c-common/source/byte_buf.c":60:45))
  %v89 = sea.icmp eq, %v32, %v88 : i64 loc("_43"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v89, ^bb27, ^bb29 loc("aws-c-common/source/byte_buf.c":60:50)
^bb27:
  sea.br ^bb28
^bb28:
  %v90 = sea.ptr.null : !sea.ptr<64> loc("_46"("aws-c-common/source/byte_buf.c":60:65))
  %v91 = sea.ptr.cmp eq, %v52, %v90 : !sea.ptr<64> loc("_46"("aws-c-common/source/byte_buf.c":60:65))
  %v92 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v91, ^bb30(%v92 : i1), ^bb29 loc("aws-c-common/source/byte_buf.c":60:74)
^bb29:
  %v93 = sea.const 0 : i1
  sea.br ^bb30(%v93 : i1)
^bb30(%v94 : i1):
  sea.assume %v94 loc("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":18:5)
  %v95 = sea.nondet "nd_bool" [24] : i1 loc("_55"("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":19:9))
  sea.cond_br %v95, ^bb46, ^bb31 loc("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":19:9)
^bb31:
  sea.br ^bb32
^bb32:
  sea.cond_br %v67, ^bb40, ^bb33 loc("aws-c-common/source/byte_buf.c":60:33)
^bb33:
  sea.br ^bb34
^bb34:
  sea.br ^bb35
^bb35:
  sea.br ^bb36
^bb36:
  %v96 = sea.icmp ugt, %v58, %v59 : i64 loc(".not2.i48.i"("aws-c-common/source/byte_buf.c":61:44))
  %v97 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v96, ^bb45(%v97 : i1), ^bb37 loc("aws-c-common/source/byte_buf.c":61:61)
^bb37:
  sea.br ^bb38
^bb38:
  sea.br ^bb39
^bb39:
  %v98 = sea.ptr.null : !sea.ptr<64> loc("_71"("aws-c-common/source/byte_buf.c":61:64))
  %v99 = sea.ptr.cmp ne, %v78, %v98 : !sea.ptr<64> loc("_71"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb45(%v99 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb40:
  sea.br ^bb41
^bb41:
  %v100 = sea.const 0 : i64 loc("_61"("aws-c-common/source/byte_buf.c":60:45))
  %v101 = sea.icmp eq, %v58, %v100 : i64 loc("_61"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v101, ^bb42, ^bb44 loc("aws-c-common/source/byte_buf.c":60:50)
^bb42:
  sea.br ^bb43
^bb43:
  %v102 = sea.ptr.null : !sea.ptr<64> loc("_64"("aws-c-common/source/byte_buf.c":60:65))
  %v103 = sea.ptr.cmp eq, %v78, %v102 : !sea.ptr<64> loc("_64"("aws-c-common/source/byte_buf.c":60:65))
  %v104 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v103, ^bb45(%v104 : i1), ^bb44 loc("aws-c-common/source/byte_buf.c":60:74)
^bb44:
  %v105 = sea.const 0 : i1
  sea.br ^bb45(%v105 : i1)
^bb45(%v106 : i1):
  sea.assume %v106 loc("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":22:9)
  sea.br ^bb47(%v59, %v78, %v58 : i64, !sea.ptr<64>, i64)
^bb46:
  %v107 = sea.store %v83[%v11], %v32 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":20:15)
  %v108 = sea.store %v107[%v79], %v52 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":20:15)
  %v109 = sea.store %v108[%v64], %v33 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":20:15)
  %v110 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":20:15)
  %v111 = sea.store %v109[%v81], %v110 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":20:15)
  sea.br ^bb47(%v33, %v52, %v32 : i64, !sea.ptr<64>, i64) loc("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":21:5)
^bb47(%v112 : i64, %v113 : !sea.ptr<64>, %v114 : i64):
  %v115 = sea.store %v3[%v13], %v32 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":26:35)
  %v116 = sea.ptr.index %v13 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy14.i"("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":26:35))
  %v117 = sea.store %v115[%v116], %v52 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":26:35)
  %v118 = sea.ptr.index %v13 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy17.i"("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":26:35))
  %v119 = sea.store %v117[%v118], %v33 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":26:35)
  %v120 = sea.ptr.index %v13 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy20.i"("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":26:35))
  %v121 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":26:35)
  %v122 = sea.store %v119[%v120], %v121 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":26:35)
  %v123 = sea.nondet "nd_size_t" [25] : i64 loc("_77"("seahorn/lib/utils.c":46:20))
  sea.br ^bb48
^bb48:
  %v124 = sea.store %v4[%v15], %v123 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v125 = sea.const 0 : i64 loc("_79"("seahorn/lib/utils.c":47:12))
  %v126 = sea.icmp ne, %v32, %v125 : i64 loc("_79"("seahorn/lib/utils.c":47:12))
  %v127 = sea.ptr.null : !sea.ptr<64> loc("_80")
  %v128 = sea.ptr.cmp ne, %v52, %v127 : !sea.ptr<64> loc("_80")
  %v129 = sea.and %v126, %v128 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v129, ^bb51, ^bb49 loc("seahorn/lib/utils.c":47:16)
^bb49:
  %v130 = sea.nondet "nd_uint8_t" [26] : i8 loc("_92"("seahorn/lib/utils.c":51:21))
  %v131 = sea.ptr.index %v15 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_93"("seahorn/lib/utils.c":51:14))
  sea.br ^bb50
^bb50:
  %v132 = sea.store %v124[%v131], %v130 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb56(%v130 : i8)
^bb51:
  sea.br ^bb52
^bb52:
  %v133 = sea.icmp ult, %v123, %v32 : i64 loc("_83"("seahorn/lib/utils.c":48:27))
  sea.assume %v133 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb53
^bb53:
  %v134 = sea.ptr.index %v52 [%v123] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_85"("seahorn/lib/utils.c":49:21))
  %v135 = sea.const 1 : i64 loc("_86"("seahorn/lib/utils.c":49:21))
  %v136 = sea.ptr.dereferenceable %v134, %v135 : !sea.ptr<64>, i64 loc("_86"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v136, ^bb54, ^bb256
^bb54:
  %v137 = sea.load %v77[%v134] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_88"("seahorn/lib/utils.c":49:21))
  %v138 = sea.ptr.index %v15 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_89"("seahorn/lib/utils.c":49:14))
  sea.br ^bb55
^bb55:
  %v139 = sea.store %v124[%v138], %v137 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb56(%v137 : i8) loc("seahorn/lib/utils.c":50:3)
^bb56(%v140 : i8):
  %v141 = sea.store %v5[%v17], %v114 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":29:35)
  %v142 = sea.ptr.index %v17 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy26.i"("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":29:35))
  %v143 = sea.store %v141[%v142], %v113 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":29:35)
  %v144 = sea.ptr.index %v17 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy29.i"("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":29:35))
  %v145 = sea.store %v143[%v144], %v112 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":29:35)
  %v146 = sea.ptr.index %v17 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy32.i"("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":29:35))
  %v147 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":29:35)
  %v148 = sea.store %v145[%v146], %v147 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":29:35)
  %v149 = sea.nondet "nd_size_t" [27] : i64 loc("_96"("seahorn/lib/utils.c":46:20))
  sea.br ^bb57
^bb57:
  %v150 = sea.store %v6[%v19], %v149 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v151 = sea.const 0 : i64 loc("_98"("seahorn/lib/utils.c":47:12))
  %v152 = sea.icmp ne, %v114, %v151 : i64 loc("_98"("seahorn/lib/utils.c":47:12))
  %v153 = sea.ptr.null : !sea.ptr<64> loc("_99")
  %v154 = sea.ptr.cmp ne, %v113, %v153 : !sea.ptr<64> loc("_99")
  %v155 = sea.and %v154, %v152 : i1 loc("or.cond.i63.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v155, ^bb60, ^bb58 loc("seahorn/lib/utils.c":47:16)
^bb58:
  %v156 = sea.nondet "nd_uint8_t" [28] : i8 loc("_111"("seahorn/lib/utils.c":51:21))
  %v157 = sea.ptr.index %v19 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_112"("seahorn/lib/utils.c":51:14))
  sea.br ^bb59
^bb59:
  %v158 = sea.store %v150[%v157], %v156 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb65(%v156 : i8)
^bb60:
  sea.br ^bb61
^bb61:
  %v159 = sea.icmp ult, %v149, %v114 : i64 loc("_102"("seahorn/lib/utils.c":48:27))
  sea.assume %v159 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb62
^bb62:
  %v160 = sea.ptr.index %v113 [%v149] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_104"("seahorn/lib/utils.c":49:21))
  %v161 = sea.const 1 : i64 loc("_105"("seahorn/lib/utils.c":49:21))
  %v162 = sea.ptr.dereferenceable %v160, %v161 : !sea.ptr<64>, i64 loc("_105"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v162, ^bb63, ^bb256
^bb63:
  %v163 = sea.load %v77[%v160] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_107"("seahorn/lib/utils.c":49:21))
  %v164 = sea.ptr.index %v19 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_108"("seahorn/lib/utils.c":49:14))
  sea.br ^bb64
^bb64:
  %v165 = sea.store %v150[%v164], %v163 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb65(%v163 : i8) loc("seahorn/lib/utils.c":50:3)
^bb65(%v166 : i8):
  sea.br ^bb66
^bb66:
  sea.br ^bb67
^bb67:
  sea.br ^bb68
^bb68:
  sea.br ^bb69
^bb69:
  %v167 = sea.icmp eq, %v32, %v114 : i64 loc(".not.i.i"("aws-c-common/source/byte_buf.c":425:15))
  sea.cond_br %v167, ^bb70, ^bb163 loc("aws-c-common/source/byte_buf.c":425:9)
^bb70:
  %v168 = sea.const 0 : i64 loc("_119"("aws-c-common/source/byte_buf.c":429:15))
  %v169 = sea.icmp eq, %v32, %v168 : i64 loc("_119"("aws-c-common/source/byte_buf.c":429:15))
  sea.cond_br %v169, ^bb162, ^bb71 loc("aws-c-common/source/byte_buf.c":429:9)
^bb71:
  %v170 = sea.ptr.cmp eq, %v52, %v113 : !sea.ptr<64> loc("_121"("seahorn/lib/bcmp.c":55:10))
  sea.cond_br %v170, ^bb158, ^bb72 loc("seahorn/lib/bcmp.c":55:7)
^bb72:
  %v171 = sea.const 1 : i64 loc("_124"("seahorn/lib/bcmp.c":61:11))
  %v172 = sea.ptr.dereferenceable %v52, %v171 : !sea.ptr<64>, i64 loc("_124"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v172, ^bb73, ^bb256
^bb73:
  %v173 = sea.load %v77[%v52] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_126"("seahorn/lib/bcmp.c":61:11))
  %v174 = sea.const 1 : i64 loc("_127"("seahorn/lib/bcmp.c":61:20))
  %v175 = sea.ptr.dereferenceable %v113, %v174 : !sea.ptr<64>, i64 loc("_127"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v175, ^bb74, ^bb256
^bb74:
  %v176 = sea.load %v77[%v113] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_129"("seahorn/lib/bcmp.c":61:20))
  %v177 = sea.icmp eq, %v173, %v176 : i8 loc(".not2.i77.i"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v177, ^bb75, ^bb111(%v113, %v52 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb75:
  %v178 = sea.const 1 : i64 loc(".not23"("seahorn/lib/bcmp.c":60:11))
  %v179 = sea.icmp eq, %v32, %v178 : i64 loc(".not23"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v179, ^bb157, ^bb76 loc("seahorn/lib/bcmp.c":60:9)
^bb76:
  %v180 = sea.ptr.index %v52 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_135"("seahorn/lib/bcmp.c":61:11))
  %v181 = sea.const 1 : i64 loc("_136"("seahorn/lib/bcmp.c":61:11))
  %v182 = sea.ptr.dereferenceable %v180, %v181 : !sea.ptr<64>, i64 loc("_136"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v182, ^bb77, ^bb256
^bb77:
  %v183 = sea.load %v77[%v180] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_138"("seahorn/lib/bcmp.c":61:11))
  %v184 = sea.ptr.index %v113 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_139"("seahorn/lib/bcmp.c":61:20))
  %v185 = sea.const 1 : i64 loc("_140"("seahorn/lib/bcmp.c":61:20))
  %v186 = sea.ptr.dereferenceable %v184, %v185 : !sea.ptr<64>, i64 loc("_140"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v186, ^bb78, ^bb256
^bb78:
  %v187 = sea.load %v77[%v184] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_142"("seahorn/lib/bcmp.c":61:20))
  %v188 = sea.icmp eq, %v183, %v187 : i8 loc(".not2.i77.i.1"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v188, ^bb79, ^bb111(%v184, %v180 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb79:
  %v189 = sea.const 2 : i64 loc("_143"("seahorn/lib/bcmp.c":60:11))
  %v190 = sea.icmp ugt, %v32, %v189 : i64 loc("_143"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v190, ^bb80, ^bb157 loc("seahorn/lib/bcmp.c":60:9)
^bb80:
  %v191 = sea.ptr.index %v52 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_145"("seahorn/lib/bcmp.c":61:11))
  %v192 = sea.const 1 : i64 loc("_146"("seahorn/lib/bcmp.c":61:11))
  %v193 = sea.ptr.dereferenceable %v191, %v192 : !sea.ptr<64>, i64 loc("_146"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v193, ^bb81, ^bb256
^bb81:
  %v194 = sea.load %v77[%v191] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_148"("seahorn/lib/bcmp.c":61:11))
  %v195 = sea.ptr.index %v113 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_149"("seahorn/lib/bcmp.c":61:20))
  %v196 = sea.const 1 : i64 loc("_150"("seahorn/lib/bcmp.c":61:20))
  %v197 = sea.ptr.dereferenceable %v195, %v196 : !sea.ptr<64>, i64 loc("_150"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v197, ^bb82, ^bb256
^bb82:
  %v198 = sea.load %v77[%v195] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_152"("seahorn/lib/bcmp.c":61:20))
  %v199 = sea.icmp eq, %v194, %v198 : i8 loc(".not2.i77.i.2"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v199, ^bb83, ^bb111(%v195, %v191 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb83:
  %v200 = sea.const 3 : i64 loc(".not24"("seahorn/lib/bcmp.c":60:11))
  %v201 = sea.icmp eq, %v32, %v200 : i64 loc(".not24"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v201, ^bb157, ^bb84 loc("seahorn/lib/bcmp.c":60:9)
^bb84:
  %v202 = sea.ptr.index %v52 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_154"("seahorn/lib/bcmp.c":61:11))
  %v203 = sea.const 1 : i64 loc("_155"("seahorn/lib/bcmp.c":61:11))
  %v204 = sea.ptr.dereferenceable %v202, %v203 : !sea.ptr<64>, i64 loc("_155"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v204, ^bb85, ^bb256
^bb85:
  %v205 = sea.load %v77[%v202] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_157"("seahorn/lib/bcmp.c":61:11))
  %v206 = sea.ptr.index %v113 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_158"("seahorn/lib/bcmp.c":61:20))
  %v207 = sea.const 1 : i64 loc("_159"("seahorn/lib/bcmp.c":61:20))
  %v208 = sea.ptr.dereferenceable %v206, %v207 : !sea.ptr<64>, i64 loc("_159"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v208, ^bb86, ^bb256
^bb86:
  %v209 = sea.load %v77[%v206] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_161"("seahorn/lib/bcmp.c":61:20))
  %v210 = sea.icmp eq, %v205, %v209 : i8 loc(".not2.i77.i.3"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v210, ^bb87, ^bb111(%v206, %v202 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb87:
  %v211 = sea.const 4 : i64 loc("_162"("seahorn/lib/bcmp.c":60:11))
  %v212 = sea.icmp ugt, %v32, %v211 : i64 loc("_162"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v212, ^bb88, ^bb157 loc("seahorn/lib/bcmp.c":60:9)
^bb88:
  %v213 = sea.ptr.index %v52 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_164"("seahorn/lib/bcmp.c":61:11))
  %v214 = sea.const 1 : i64 loc("_165"("seahorn/lib/bcmp.c":61:11))
  %v215 = sea.ptr.dereferenceable %v213, %v214 : !sea.ptr<64>, i64 loc("_165"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v215, ^bb89, ^bb256
^bb89:
  %v216 = sea.load %v77[%v213] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_167"("seahorn/lib/bcmp.c":61:11))
  %v217 = sea.ptr.index %v113 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_168"("seahorn/lib/bcmp.c":61:20))
  %v218 = sea.const 1 : i64 loc("_169"("seahorn/lib/bcmp.c":61:20))
  %v219 = sea.ptr.dereferenceable %v217, %v218 : !sea.ptr<64>, i64 loc("_169"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v219, ^bb90, ^bb256
^bb90:
  %v220 = sea.load %v77[%v217] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_171"("seahorn/lib/bcmp.c":61:20))
  %v221 = sea.icmp eq, %v216, %v220 : i8 loc(".not2.i77.i.4"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v221, ^bb91, ^bb111(%v217, %v213 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb91:
  %v222 = sea.const 5 : i64 loc(".not25"("seahorn/lib/bcmp.c":60:11))
  %v223 = sea.icmp eq, %v32, %v222 : i64 loc(".not25"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v223, ^bb157, ^bb92 loc("seahorn/lib/bcmp.c":60:9)
^bb92:
  %v224 = sea.ptr.index %v52 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_173"("seahorn/lib/bcmp.c":61:11))
  %v225 = sea.const 1 : i64 loc("_174"("seahorn/lib/bcmp.c":61:11))
  %v226 = sea.ptr.dereferenceable %v224, %v225 : !sea.ptr<64>, i64 loc("_174"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v226, ^bb93, ^bb256
^bb93:
  %v227 = sea.load %v77[%v224] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_176"("seahorn/lib/bcmp.c":61:11))
  %v228 = sea.ptr.index %v113 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_177"("seahorn/lib/bcmp.c":61:20))
  %v229 = sea.const 1 : i64 loc("_178"("seahorn/lib/bcmp.c":61:20))
  %v230 = sea.ptr.dereferenceable %v228, %v229 : !sea.ptr<64>, i64 loc("_178"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v230, ^bb94, ^bb256
^bb94:
  %v231 = sea.load %v77[%v228] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_180"("seahorn/lib/bcmp.c":61:20))
  %v232 = sea.icmp eq, %v227, %v231 : i8 loc(".not2.i77.i.5"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v232, ^bb95, ^bb111(%v228, %v224 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb95:
  %v233 = sea.const 6 : i64 loc("_181"("seahorn/lib/bcmp.c":60:11))
  %v234 = sea.icmp ugt, %v32, %v233 : i64 loc("_181"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v234, ^bb96, ^bb157 loc("seahorn/lib/bcmp.c":60:9)
^bb96:
  %v235 = sea.ptr.index %v52 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_183"("seahorn/lib/bcmp.c":61:11))
  %v236 = sea.const 1 : i64 loc("_184"("seahorn/lib/bcmp.c":61:11))
  %v237 = sea.ptr.dereferenceable %v235, %v236 : !sea.ptr<64>, i64 loc("_184"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v237, ^bb97, ^bb256
^bb97:
  %v238 = sea.load %v77[%v235] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_186"("seahorn/lib/bcmp.c":61:11))
  %v239 = sea.ptr.index %v113 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_187"("seahorn/lib/bcmp.c":61:20))
  %v240 = sea.const 1 : i64 loc("_188"("seahorn/lib/bcmp.c":61:20))
  %v241 = sea.ptr.dereferenceable %v239, %v240 : !sea.ptr<64>, i64 loc("_188"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v241, ^bb98, ^bb256
^bb98:
  %v242 = sea.load %v77[%v239] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_190"("seahorn/lib/bcmp.c":61:20))
  %v243 = sea.icmp eq, %v238, %v242 : i8 loc(".not2.i77.i.6"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v243, ^bb99, ^bb111(%v239, %v235 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb99:
  %v244 = sea.const 7 : i64 loc(".not26"("seahorn/lib/bcmp.c":60:11))
  %v245 = sea.icmp eq, %v32, %v244 : i64 loc(".not26"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v245, ^bb157, ^bb100 loc("seahorn/lib/bcmp.c":60:9)
^bb100:
  %v246 = sea.ptr.index %v52 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_192"("seahorn/lib/bcmp.c":61:11))
  %v247 = sea.const 1 : i64 loc("_193"("seahorn/lib/bcmp.c":61:11))
  %v248 = sea.ptr.dereferenceable %v246, %v247 : !sea.ptr<64>, i64 loc("_193"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v248, ^bb101, ^bb256
^bb101:
  %v249 = sea.load %v77[%v246] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_195"("seahorn/lib/bcmp.c":61:11))
  %v250 = sea.ptr.index %v113 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_196"("seahorn/lib/bcmp.c":61:20))
  %v251 = sea.const 1 : i64 loc("_197"("seahorn/lib/bcmp.c":61:20))
  %v252 = sea.ptr.dereferenceable %v250, %v251 : !sea.ptr<64>, i64 loc("_197"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v252, ^bb102, ^bb256
^bb102:
  %v253 = sea.load %v77[%v250] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_199"("seahorn/lib/bcmp.c":61:20))
  %v254 = sea.icmp eq, %v249, %v253 : i8 loc(".not2.i77.i.7"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v254, ^bb103, ^bb111(%v250, %v246 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb103:
  %v255 = sea.const 8 : i64 loc("_200"("seahorn/lib/bcmp.c":60:11))
  %v256 = sea.icmp ugt, %v32, %v255 : i64 loc("_200"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v256, ^bb104, ^bb157 loc("seahorn/lib/bcmp.c":60:9)
^bb104:
  %v257 = sea.ptr.index %v52 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_202"("seahorn/lib/bcmp.c":61:11))
  %v258 = sea.const 1 : i64 loc("_203"("seahorn/lib/bcmp.c":61:11))
  %v259 = sea.ptr.dereferenceable %v257, %v258 : !sea.ptr<64>, i64 loc("_203"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v259, ^bb105, ^bb256
^bb105:
  %v260 = sea.load %v77[%v257] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_205"("seahorn/lib/bcmp.c":61:11))
  %v261 = sea.ptr.index %v113 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_206"("seahorn/lib/bcmp.c":61:20))
  %v262 = sea.const 1 : i64 loc("_207"("seahorn/lib/bcmp.c":61:20))
  %v263 = sea.ptr.dereferenceable %v261, %v262 : !sea.ptr<64>, i64 loc("_207"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v263, ^bb106, ^bb256
^bb106:
  %v264 = sea.load %v77[%v261] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_209"("seahorn/lib/bcmp.c":61:20))
  %v265 = sea.icmp eq, %v260, %v264 : i8 loc(".not2.i77.i.8"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v265, ^bb107, ^bb111(%v261, %v257 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb107:
  %v266 = sea.const 9 : i64 loc(".not27"("seahorn/lib/bcmp.c":60:11))
  %v267 = sea.icmp eq, %v32, %v266 : i64 loc(".not27"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v267, ^bb157, ^bb108 loc("seahorn/lib/bcmp.c":60:9)
^bb108:
  %v268 = sea.ptr.index %v52 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_211"("seahorn/lib/bcmp.c":61:11))
  %v269 = sea.const 1 : i64 loc("_212"("seahorn/lib/bcmp.c":61:11))
  %v270 = sea.ptr.dereferenceable %v268, %v269 : !sea.ptr<64>, i64 loc("_212"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v270, ^bb109, ^bb256
^bb109:
  %v271 = sea.load %v77[%v268] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_214"("seahorn/lib/bcmp.c":61:11))
  %v272 = sea.ptr.index %v113 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_215"("seahorn/lib/bcmp.c":61:20))
  %v273 = sea.const 1 : i64 loc("_216"("seahorn/lib/bcmp.c":61:20))
  %v274 = sea.ptr.dereferenceable %v272, %v273 : !sea.ptr<64>, i64 loc("_216"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v274, ^bb110, ^bb256
^bb110:
  %v275 = sea.load %v77[%v272] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_218"("seahorn/lib/bcmp.c":61:20))
  %v276 = sea.icmp eq, %v271, %v275 : i8 loc(".not2.i77.i.9"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v276, ^bb113, ^bb111(%v272, %v268 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb111(%v277 : !sea.ptr<64>, %v278 : !sea.ptr<64>):
  %v279 = sea.const 1 : i64 loc("_131"("seahorn/lib/bcmp.c":62:16))
  %v280 = sea.ptr.dereferenceable %v278, %v279 : !sea.ptr<64>, i64 loc("_131"("seahorn/lib/bcmp.c":62:16))
  sea.cond_br %v280, ^bb112, ^bb256
^bb112:
  %v281 = sea.const 1 : i64 loc("_133"("seahorn/lib/bcmp.c":62:24))
  %v282 = sea.ptr.dereferenceable %v277, %v281 : !sea.ptr<64>, i64 loc("_133"("seahorn/lib/bcmp.c":62:24))
  sea.cond_br %v282, ^bb163, ^bb256
^bb113:
  %v283 = sea.const 10 : i64 loc("_219"("seahorn/lib/bcmp.c":67:31))
  %v284 = sea.icmp ugt, %v32, %v283 : i64 loc("_219"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v284, ^bb114, ^bb157 loc("seahorn/lib/bcmp.c":67:3)
^bb114:
  %v285 = sea.ptr.index %v52 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_122"("seahorn/lib/bcmp.c":68:9))
  %v286 = sea.const 1 : i64 loc("_123"("seahorn/lib/bcmp.c":68:9))
  %v287 = sea.ptr.dereferenceable %v285, %v286 : !sea.ptr<64>, i64 loc("_123"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v287, ^bb115, ^bb256
^bb115:
  %v288 = sea.load %v77[%v285] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_304"("seahorn/lib/bcmp.c":68:9))
  %v289 = sea.ptr.index %v113 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_305"("seahorn/lib/bcmp.c":68:18))
  %v290 = sea.const 1 : i64 loc("_306"("seahorn/lib/bcmp.c":68:18))
  %v291 = sea.ptr.dereferenceable %v289, %v290 : !sea.ptr<64>, i64 loc("_306"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v291, ^bb116, ^bb256
^bb116:
  %v292 = sea.load %v77[%v289] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_308"("seahorn/lib/bcmp.c":68:18))
  %v293 = sea.icmp eq, %v288, %v292 : i8 loc(".not.i76.i"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v293, ^bb117, ^bb153(%v289, %v285 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb117:
  %v294 = sea.const 11 : i64 loc("exitcond70.not"("seahorn/lib/bcmp.c":67:31))
  %v295 = sea.icmp eq, %v32, %v294 : i64 loc("exitcond70.not"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v295, ^bb157, ^bb118 loc("seahorn/lib/bcmp.c":67:3)
^bb118:
  %v296 = sea.ptr.index %v52 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_221"("seahorn/lib/bcmp.c":68:9))
  %v297 = sea.const 1 : i64 loc("_222"("seahorn/lib/bcmp.c":68:9))
  %v298 = sea.ptr.dereferenceable %v296, %v297 : !sea.ptr<64>, i64 loc("_222"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v298, ^bb119, ^bb256
^bb119:
  %v299 = sea.load %v77[%v296] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_224"("seahorn/lib/bcmp.c":68:9))
  %v300 = sea.ptr.index %v113 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_225"("seahorn/lib/bcmp.c":68:18))
  %v301 = sea.const 1 : i64 loc("_226"("seahorn/lib/bcmp.c":68:18))
  %v302 = sea.ptr.dereferenceable %v300, %v301 : !sea.ptr<64>, i64 loc("_226"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v302, ^bb120, ^bb256
^bb120:
  %v303 = sea.load %v77[%v300] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_228"("seahorn/lib/bcmp.c":68:18))
  %v304 = sea.icmp eq, %v299, %v303 : i8 loc(".not.i76.i.1"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v304, ^bb121, ^bb153(%v300, %v296 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb121:
  %v305 = sea.const 12 : i64 loc("exitcond70.not.1"("seahorn/lib/bcmp.c":67:31))
  %v306 = sea.icmp eq, %v32, %v305 : i64 loc("exitcond70.not.1"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v306, ^bb157, ^bb122 loc("seahorn/lib/bcmp.c":67:3)
^bb122:
  %v307 = sea.ptr.index %v52 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_230"("seahorn/lib/bcmp.c":68:9))
  %v308 = sea.const 1 : i64 loc("_231"("seahorn/lib/bcmp.c":68:9))
  %v309 = sea.ptr.dereferenceable %v307, %v308 : !sea.ptr<64>, i64 loc("_231"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v309, ^bb123, ^bb256
^bb123:
  %v310 = sea.load %v77[%v307] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_233"("seahorn/lib/bcmp.c":68:9))
  %v311 = sea.ptr.index %v113 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_234"("seahorn/lib/bcmp.c":68:18))
  %v312 = sea.const 1 : i64 loc("_235"("seahorn/lib/bcmp.c":68:18))
  %v313 = sea.ptr.dereferenceable %v311, %v312 : !sea.ptr<64>, i64 loc("_235"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v313, ^bb124, ^bb256
^bb124:
  %v314 = sea.load %v77[%v311] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_237"("seahorn/lib/bcmp.c":68:18))
  %v315 = sea.icmp eq, %v310, %v314 : i8 loc(".not.i76.i.2"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v315, ^bb125, ^bb153(%v311, %v307 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb125:
  %v316 = sea.const 13 : i64 loc("exitcond70.not.2"("seahorn/lib/bcmp.c":67:31))
  %v317 = sea.icmp eq, %v32, %v316 : i64 loc("exitcond70.not.2"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v317, ^bb157, ^bb126 loc("seahorn/lib/bcmp.c":67:3)
^bb126:
  %v318 = sea.ptr.index %v52 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_239"("seahorn/lib/bcmp.c":68:9))
  %v319 = sea.const 1 : i64 loc("_240"("seahorn/lib/bcmp.c":68:9))
  %v320 = sea.ptr.dereferenceable %v318, %v319 : !sea.ptr<64>, i64 loc("_240"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v320, ^bb127, ^bb256
^bb127:
  %v321 = sea.load %v77[%v318] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_242"("seahorn/lib/bcmp.c":68:9))
  %v322 = sea.ptr.index %v113 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_243"("seahorn/lib/bcmp.c":68:18))
  %v323 = sea.const 1 : i64 loc("_244"("seahorn/lib/bcmp.c":68:18))
  %v324 = sea.ptr.dereferenceable %v322, %v323 : !sea.ptr<64>, i64 loc("_244"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v324, ^bb128, ^bb256
^bb128:
  %v325 = sea.load %v77[%v322] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_246"("seahorn/lib/bcmp.c":68:18))
  %v326 = sea.icmp eq, %v321, %v325 : i8 loc(".not.i76.i.3"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v326, ^bb129, ^bb153(%v322, %v318 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb129:
  %v327 = sea.const 14 : i64 loc("exitcond70.not.3"("seahorn/lib/bcmp.c":67:31))
  %v328 = sea.icmp eq, %v32, %v327 : i64 loc("exitcond70.not.3"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v328, ^bb157, ^bb130 loc("seahorn/lib/bcmp.c":67:3)
^bb130:
  %v329 = sea.ptr.index %v52 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_248"("seahorn/lib/bcmp.c":68:9))
  %v330 = sea.const 1 : i64 loc("_249"("seahorn/lib/bcmp.c":68:9))
  %v331 = sea.ptr.dereferenceable %v329, %v330 : !sea.ptr<64>, i64 loc("_249"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v331, ^bb131, ^bb256
^bb131:
  %v332 = sea.load %v77[%v329] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_251"("seahorn/lib/bcmp.c":68:9))
  %v333 = sea.ptr.index %v113 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_252"("seahorn/lib/bcmp.c":68:18))
  %v334 = sea.const 1 : i64 loc("_253"("seahorn/lib/bcmp.c":68:18))
  %v335 = sea.ptr.dereferenceable %v333, %v334 : !sea.ptr<64>, i64 loc("_253"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v335, ^bb132, ^bb256
^bb132:
  %v336 = sea.load %v77[%v333] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_255"("seahorn/lib/bcmp.c":68:18))
  %v337 = sea.icmp eq, %v332, %v336 : i8 loc(".not.i76.i.4"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v337, ^bb133, ^bb153(%v333, %v329 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb133:
  %v338 = sea.const 15 : i64 loc("exitcond70.not.4"("seahorn/lib/bcmp.c":67:31))
  %v339 = sea.icmp eq, %v32, %v338 : i64 loc("exitcond70.not.4"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v339, ^bb157, ^bb134 loc("seahorn/lib/bcmp.c":67:3)
^bb134:
  %v340 = sea.ptr.index %v52 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_257"("seahorn/lib/bcmp.c":68:9))
  %v341 = sea.const 1 : i64 loc("_258"("seahorn/lib/bcmp.c":68:9))
  %v342 = sea.ptr.dereferenceable %v340, %v341 : !sea.ptr<64>, i64 loc("_258"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v342, ^bb135, ^bb256
^bb135:
  %v343 = sea.load %v77[%v340] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_260"("seahorn/lib/bcmp.c":68:9))
  %v344 = sea.ptr.index %v113 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_261"("seahorn/lib/bcmp.c":68:18))
  %v345 = sea.const 1 : i64 loc("_262"("seahorn/lib/bcmp.c":68:18))
  %v346 = sea.ptr.dereferenceable %v344, %v345 : !sea.ptr<64>, i64 loc("_262"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v346, ^bb136, ^bb256
^bb136:
  %v347 = sea.load %v77[%v344] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_264"("seahorn/lib/bcmp.c":68:18))
  %v348 = sea.icmp eq, %v343, %v347 : i8 loc(".not.i76.i.5"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v348, ^bb137, ^bb153(%v344, %v340 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb137:
  %v349 = sea.const 16 : i64 loc("exitcond70.not.5"("seahorn/lib/bcmp.c":67:31))
  %v350 = sea.icmp eq, %v32, %v349 : i64 loc("exitcond70.not.5"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v350, ^bb157, ^bb138 loc("seahorn/lib/bcmp.c":67:3)
^bb138:
  %v351 = sea.ptr.index %v52 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_266"("seahorn/lib/bcmp.c":68:9))
  %v352 = sea.const 1 : i64 loc("_267"("seahorn/lib/bcmp.c":68:9))
  %v353 = sea.ptr.dereferenceable %v351, %v352 : !sea.ptr<64>, i64 loc("_267"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v353, ^bb139, ^bb256
^bb139:
  %v354 = sea.load %v77[%v351] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_269"("seahorn/lib/bcmp.c":68:9))
  %v355 = sea.ptr.index %v113 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_270"("seahorn/lib/bcmp.c":68:18))
  %v356 = sea.const 1 : i64 loc("_271"("seahorn/lib/bcmp.c":68:18))
  %v357 = sea.ptr.dereferenceable %v355, %v356 : !sea.ptr<64>, i64 loc("_271"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v357, ^bb140, ^bb256
^bb140:
  %v358 = sea.load %v77[%v355] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_273"("seahorn/lib/bcmp.c":68:18))
  %v359 = sea.icmp eq, %v354, %v358 : i8 loc(".not.i76.i.6"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v359, ^bb141, ^bb153(%v355, %v351 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb141:
  %v360 = sea.const 17 : i64 loc("exitcond70.not.6"("seahorn/lib/bcmp.c":67:31))
  %v361 = sea.icmp eq, %v32, %v360 : i64 loc("exitcond70.not.6"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v361, ^bb157, ^bb142 loc("seahorn/lib/bcmp.c":67:3)
^bb142:
  %v362 = sea.ptr.index %v52 [] strides [] offset 17 inbounds : !sea.ptr<64> loc("_275"("seahorn/lib/bcmp.c":68:9))
  %v363 = sea.const 1 : i64 loc("_276"("seahorn/lib/bcmp.c":68:9))
  %v364 = sea.ptr.dereferenceable %v362, %v363 : !sea.ptr<64>, i64 loc("_276"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v364, ^bb143, ^bb256
^bb143:
  %v365 = sea.load %v77[%v362] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_278"("seahorn/lib/bcmp.c":68:9))
  %v366 = sea.ptr.index %v113 [] strides [] offset 17 inbounds : !sea.ptr<64> loc("_279"("seahorn/lib/bcmp.c":68:18))
  %v367 = sea.const 1 : i64 loc("_280"("seahorn/lib/bcmp.c":68:18))
  %v368 = sea.ptr.dereferenceable %v366, %v367 : !sea.ptr<64>, i64 loc("_280"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v368, ^bb144, ^bb256
^bb144:
  %v369 = sea.load %v77[%v366] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_282"("seahorn/lib/bcmp.c":68:18))
  %v370 = sea.icmp eq, %v365, %v369 : i8 loc(".not.i76.i.7"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v370, ^bb145, ^bb153(%v366, %v362 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb145:
  %v371 = sea.const 18 : i64 loc("exitcond70.not.7"("seahorn/lib/bcmp.c":67:31))
  %v372 = sea.icmp eq, %v32, %v371 : i64 loc("exitcond70.not.7"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v372, ^bb157, ^bb146 loc("seahorn/lib/bcmp.c":67:3)
^bb146:
  %v373 = sea.ptr.index %v52 [] strides [] offset 18 inbounds : !sea.ptr<64> loc("_284"("seahorn/lib/bcmp.c":68:9))
  %v374 = sea.const 1 : i64 loc("_285"("seahorn/lib/bcmp.c":68:9))
  %v375 = sea.ptr.dereferenceable %v373, %v374 : !sea.ptr<64>, i64 loc("_285"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v375, ^bb147, ^bb256
^bb147:
  %v376 = sea.load %v77[%v373] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_287"("seahorn/lib/bcmp.c":68:9))
  %v377 = sea.ptr.index %v113 [] strides [] offset 18 inbounds : !sea.ptr<64> loc("_288"("seahorn/lib/bcmp.c":68:18))
  %v378 = sea.const 1 : i64 loc("_289"("seahorn/lib/bcmp.c":68:18))
  %v379 = sea.ptr.dereferenceable %v377, %v378 : !sea.ptr<64>, i64 loc("_289"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v379, ^bb148, ^bb256
^bb148:
  %v380 = sea.load %v77[%v377] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_291"("seahorn/lib/bcmp.c":68:18))
  %v381 = sea.icmp eq, %v376, %v380 : i8 loc(".not.i76.i.8"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v381, ^bb149, ^bb153(%v377, %v373 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb149:
  %v382 = sea.const 19 : i64 loc("exitcond70.not.8"("seahorn/lib/bcmp.c":67:31))
  %v383 = sea.icmp eq, %v32, %v382 : i64 loc("exitcond70.not.8"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v383, ^bb157, ^bb150 loc("seahorn/lib/bcmp.c":67:3)
^bb150:
  %v384 = sea.ptr.index %v52 [] strides [] offset 19 inbounds : !sea.ptr<64> loc("_293"("seahorn/lib/bcmp.c":68:9))
  %v385 = sea.const 1 : i64 loc("_294"("seahorn/lib/bcmp.c":68:9))
  %v386 = sea.ptr.dereferenceable %v384, %v385 : !sea.ptr<64>, i64 loc("_294"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v386, ^bb151, ^bb256
^bb151:
  %v387 = sea.load %v77[%v384] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_296"("seahorn/lib/bcmp.c":68:9))
  %v388 = sea.ptr.index %v113 [] strides [] offset 19 inbounds : !sea.ptr<64> loc("_297"("seahorn/lib/bcmp.c":68:18))
  %v389 = sea.const 1 : i64 loc("_298"("seahorn/lib/bcmp.c":68:18))
  %v390 = sea.ptr.dereferenceable %v388, %v389 : !sea.ptr<64>, i64 loc("_298"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v390, ^bb152, ^bb256
^bb152:
  %v391 = sea.load %v77[%v388] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_300"("seahorn/lib/bcmp.c":68:18))
  %v392 = sea.icmp eq, %v387, %v391 : i8 loc(".not.i76.i.9"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v392, ^bb155, ^bb153(%v388, %v384 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb153(%v393 : !sea.ptr<64>, %v394 : !sea.ptr<64>):
  %v395 = sea.const 1 : i64 loc("_310"("seahorn/lib/bcmp.c":69:14))
  %v396 = sea.ptr.dereferenceable %v394, %v395 : !sea.ptr<64>, i64 loc("_310"("seahorn/lib/bcmp.c":69:14))
  sea.cond_br %v396, ^bb154, ^bb256
^bb154:
  %v397 = sea.const 1 : i64 loc("_312"("seahorn/lib/bcmp.c":69:22))
  %v398 = sea.ptr.dereferenceable %v393, %v397 : !sea.ptr<64>, i64 loc("_312"("seahorn/lib/bcmp.c":69:22))
  sea.cond_br %v398, ^bb163, ^bb256
^bb155:
  %v399 = sea.const 20 : i64 loc("exitcond70.not.9"("seahorn/lib/bcmp.c":67:31))
  %v400 = sea.icmp eq, %v32, %v399 : i64 loc("exitcond70.not.9"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v400, ^bb157, ^bb156 loc("seahorn/lib/bcmp.c":67:3)
^bb156:
  %v401 = sea.ptr.index %v52 [] strides [] offset 20 inbounds : !sea.ptr<64> loc("_302"("seahorn/lib/bcmp.c":68:9))
  %v402 = sea.const 1 : i64 loc("_303"("seahorn/lib/bcmp.c":68:9))
  %v403 = sea.ptr.dereferenceable %v401, %v402 : !sea.ptr<64>, i64 loc("_303"("seahorn/lib/bcmp.c":68:9))
  %v404 = sea.const 1 : i1
  %v405 = sea.xor %v403, %v404 : i1
  sea.assume %v405
  sea.br ^bb256
^bb157:
  sea.br ^bb159
^bb158:
  sea.br ^bb159 loc("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":36:13)
^bb159:
  %v406 = sea.ptr.null : !sea.ptr<64> loc(".not.i65.i"("seahorn/lib/utils.c":15:3))
  %v407 = sea.ptr.cmp eq, %v52, %v406 : !sea.ptr<64> loc(".not.i65.i"("seahorn/lib/utils.c":15:3))
  %v408 = sea.xor %v407, %v154 : i1 loc("_314"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v408, ^bb160, ^bb256 loc("seahorn/lib/utils.c":15:3)
^bb160:
  %v409 = sea.and %v128, %v154 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v409, ^bb161, ^bb163 loc("seahorn/lib/utils.c":16:15)
^bb161:
  %v410 = sea.nondet "nd_size_t" [29] : i64 loc("_316"("seahorn/lib/utils.c":17:16))
  %v411 = sea.icmp ult, %v410, %v32 : i64 loc("_317"("seahorn/lib/utils.c":19:14))
  %v412 = sea.const 36028797018963967 : i64 loc("_318"("seahorn/lib/utils.c":19:20))
  %v413 = sea.icmp ult, %v32, %v412 : i64 loc("_318"("seahorn/lib/utils.c":19:20))
  %v414 = sea.and %v413, %v411 : i1 loc("_319"("seahorn/lib/utils.c":19:20))
  sea.assume %v414 loc("seahorn/lib/utils.c":19:5)
  %v415 = sea.ptr.index %v52 [%v410] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_320"("seahorn/lib/utils.c":20:5))
  %v416 = sea.load %v77[%v415] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_321"("seahorn/lib/utils.c":20:5))
  %v417 = sea.ptr.index %v113 [%v410] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_322"("seahorn/lib/utils.c":20:5))
  %v418 = sea.load %v77[%v417] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_323"("seahorn/lib/utils.c":20:5))
  %v419 = sea.icmp eq, %v416, %v418 : i8 loc("_324"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v419, ^bb163, ^bb256 loc("seahorn/lib/utils.c":20:5)
^bb162:
  sea.br ^bb163 loc("seahorn/jobs/byte_buf_eq/aws_byte_buf_eq_harness.c":36:13)
^bb163:
  sea.br ^bb164
^bb164:
  sea.cond_br %v41, ^bb171, ^bb165 loc("aws-c-common/source/byte_buf.c":60:33)
^bb165:
  sea.br ^bb166
^bb166:
  sea.br ^bb167
^bb167:
  sea.br ^bb168
^bb168:
  %v420 = sea.icmp ugt, %v32, %v33 : i64 loc(".not2.i44.i"("aws-c-common/source/byte_buf.c":61:44))
  %v421 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v420, ^bb176(%v421 : i1), ^bb169 loc("aws-c-common/source/byte_buf.c":61:61)
^bb169:
  sea.br ^bb170
^bb170:
  sea.br ^bb176(%v128 : i1)
^bb171:
  sea.br ^bb172
^bb172:
  %v422 = sea.const 0 : i64 loc("_328"("aws-c-common/source/byte_buf.c":60:45))
  %v423 = sea.icmp eq, %v32, %v422 : i64 loc("_328"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v423, ^bb173, ^bb175 loc("aws-c-common/source/byte_buf.c":60:50)
^bb173:
  sea.br ^bb174
^bb174:
  %v424 = sea.ptr.null : !sea.ptr<64> loc("_331"("aws-c-common/source/byte_buf.c":60:65))
  %v425 = sea.ptr.cmp eq, %v52, %v424 : !sea.ptr<64> loc("_331"("aws-c-common/source/byte_buf.c":60:65))
  %v426 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v425, ^bb176(%v426 : i1), ^bb175 loc("aws-c-common/source/byte_buf.c":60:74)
^bb175:
  %v427 = sea.const 0 : i1
  sea.br ^bb176(%v427 : i1)
^bb176(%v428 : i1):
  sea.br ^bb177
^bb177:
  sea.cond_br %v41, ^bb183, ^bb178 loc("aws-c-common/source/byte_buf.c":60:33)
^bb178:
  sea.br ^bb179
^bb179:
  sea.br ^bb180
^bb180:
  %v429 = sea.const 1 : i1 loc("or.cond34.not")
  %v430 = sea.const 0 : i1 loc("or.cond34.not")
  %v431 = sea.select %v429, %v34, %v430 : i1 loc("or.cond34.not")
  sea.cond_br %v431, ^bb181, ^bb256
^bb181:
  sea.br ^bb182
^bb182:
  %v432 = sea.const 1 : i1 loc("or.cond")
  %v433 = sea.and %v128, %v432 : i1 loc("or.cond")
  sea.cond_br %v433, ^bb188, ^bb256
^bb183:
  sea.br ^bb184
^bb184:
  %v434 = sea.const 0 : i64 loc("_341"("aws-c-common/source/byte_buf.c":60:45))
  %v435 = sea.icmp eq, %v32, %v434 : i64 loc("_341"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v435, ^bb185, ^bb187 loc("aws-c-common/source/byte_buf.c":60:50)
^bb185:
  sea.br ^bb186
^bb186:
  %v436 = sea.ptr.null : !sea.ptr<64> loc("_344"("aws-c-common/source/byte_buf.c":60:65))
  %v437 = sea.ptr.cmp eq, %v52, %v436 : !sea.ptr<64> loc("_344"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v437, ^bb188, ^bb187 loc("aws-c-common/source/byte_buf.c":60:74)
^bb187:
  sea.br ^bb256
^bb188:
  sea.br ^bb189
^bb189:
  %v438 = sea.const 0 : i64 loc(".not75"("aws-c-common/source/byte_buf.c":60:28))
  %v439 = sea.icmp eq, %v112, %v438 : i64 loc(".not75"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v439, ^bb196, ^bb190 loc("aws-c-common/source/byte_buf.c":60:33)
^bb190:
  sea.br ^bb191
^bb191:
  sea.br ^bb192
^bb192:
  sea.br ^bb193
^bb193:
  %v440 = sea.icmp ugt, %v114, %v112 : i64 loc(".not2.i36.i"("aws-c-common/source/byte_buf.c":61:44))
  %v441 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v440, ^bb201(%v441 : i1), ^bb194 loc("aws-c-common/source/byte_buf.c":61:61)
^bb194:
  sea.br ^bb195
^bb195:
  sea.br ^bb201(%v154 : i1)
^bb196:
  sea.br ^bb197
^bb197:
  %v442 = sea.const 0 : i64 loc("_353"("aws-c-common/source/byte_buf.c":60:45))
  %v443 = sea.icmp eq, %v114, %v442 : i64 loc("_353"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v443, ^bb198, ^bb200 loc("aws-c-common/source/byte_buf.c":60:50)
^bb198:
  sea.br ^bb199
^bb199:
  %v444 = sea.ptr.null : !sea.ptr<64> loc("_356"("aws-c-common/source/byte_buf.c":60:65))
  %v445 = sea.ptr.cmp eq, %v113, %v444 : !sea.ptr<64> loc("_356"("aws-c-common/source/byte_buf.c":60:65))
  %v446 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v445, ^bb201(%v446 : i1), ^bb200 loc("aws-c-common/source/byte_buf.c":60:74)
^bb200:
  %v447 = sea.const 0 : i1
  sea.br ^bb201(%v447 : i1)
^bb201(%v448 : i1):
  sea.br ^bb202
^bb202:
  sea.cond_br %v439, ^bb208, ^bb203 loc("aws-c-common/source/byte_buf.c":60:33)
^bb203:
  sea.br ^bb204
^bb204:
  sea.br ^bb205
^bb205:
  %v449 = sea.icmp ule, %v114, %v112 : i64 loc(".not2.i.i")
  %v450 = sea.const 1 : i1 loc("or.cond38.not")
  %v451 = sea.const 0 : i1 loc("or.cond38.not")
  %v452 = sea.select %v450, %v449, %v451 : i1 loc("or.cond38.not")
  sea.cond_br %v452, ^bb206, ^bb256
^bb206:
  sea.br ^bb207
^bb207:
  %v453 = sea.const 1 : i1 loc("or.cond16")
  %v454 = sea.and %v154, %v453 : i1 loc("or.cond16")
  sea.cond_br %v454, ^bb213, ^bb256
^bb208:
  sea.br ^bb209
^bb209:
  %v455 = sea.const 0 : i64 loc("_366"("aws-c-common/source/byte_buf.c":60:45))
  %v456 = sea.icmp eq, %v114, %v455 : i64 loc("_366"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v456, ^bb210, ^bb212 loc("aws-c-common/source/byte_buf.c":60:50)
^bb210:
  sea.br ^bb211
^bb211:
  %v457 = sea.ptr.null : !sea.ptr<64> loc("_369"("aws-c-common/source/byte_buf.c":60:65))
  %v458 = sea.ptr.cmp eq, %v113, %v457 : !sea.ptr<64> loc("_369"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v458, ^bb213, ^bb212 loc("aws-c-common/source/byte_buf.c":60:74)
^bb212:
  sea.br ^bb256
^bb213:
  sea.br ^bb214
^bb214:
  sea.br ^bb215
^bb215:
  sea.br ^bb216
^bb216:
  sea.br ^bb217
^bb217:
  sea.br ^bb218
^bb218:
  sea.br ^bb219
^bb219:
  sea.br ^bb220
^bb220:
  sea.br ^bb221
^bb221:
  sea.br ^bb222
^bb222:
  sea.br ^bb223
^bb223:
  sea.br ^bb224
^bb224:
  sea.br ^bb225
^bb225:
  sea.br ^bb226
^bb226:
  %v459 = sea.const 0 : i64 loc(".not.i68.i"("seahorn/lib/utils.c":86:16))
  %v460 = sea.icmp eq, %v32, %v459 : i64 loc(".not.i68.i"("seahorn/lib/utils.c":86:16))
  sea.cond_br %v460, ^bb235, ^bb227 loc("seahorn/lib/utils.c":86:7)
^bb227:
  sea.br ^bb228
^bb228:
  %v461 = sea.ptr.null : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v462 = sea.ptr.cmp eq, %v52, %v461 : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  sea.cond_br %v462, ^bb235, ^bb229 loc("seahorn/lib/utils.c":39:14)
^bb229:
  sea.br ^bb230
^bb230:
  %v463 = sea.ptr.index %v52 [%v123] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_392"("seahorn/lib/utils.c":40:5))
  %v464 = sea.const 1 : i64 loc("_393"("seahorn/lib/utils.c":40:5))
  %v465 = sea.ptr.dereferenceable %v463, %v464 : !sea.ptr<64>, i64 loc("_393"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v465, ^bb231, ^bb256
^bb231:
  %v466 = sea.load %v77[%v463] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_395"("seahorn/lib/utils.c":40:5))
  sea.br ^bb232
^bb232:
  %v467 = sea.icmp eq, %v466, %v140 : i8 loc("_397"("seahorn/lib/utils.c":40:5))
  sea.br ^bb233
^bb233:
  %v468 = sea.const 1 : i64 loc("_399"("seahorn/lib/utils.c":40:5))
  %v469 = sea.ptr.dereferenceable %v463, %v468 : !sea.ptr<64>, i64 loc("_399"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v469, ^bb234, ^bb256
^bb234:
  %v470 = sea.const 1 : i1 loc("or.cond24")
  %v471 = sea.const 0 : i1 loc("or.cond24")
  %v472 = sea.select %v470, %v467, %v471 : i1 loc("or.cond24")
  sea.cond_br %v472, ^bb235, ^bb256
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
  sea.br ^bb241
^bb241:
  sea.br ^bb242
^bb242:
  sea.br ^bb243
^bb243:
  sea.br ^bb244
^bb244:
  sea.br ^bb245
^bb245:
  sea.br ^bb246
^bb246:
  sea.br ^bb247
^bb247:
  sea.br ^bb248
^bb248:
  %v473 = sea.const 0 : i64 loc(".not.i70.i"("seahorn/lib/utils.c":86:16))
  %v474 = sea.icmp eq, %v114, %v473 : i64 loc(".not.i70.i"("seahorn/lib/utils.c":86:16))
  %v475 = sea.const 1 : i1 loc("seahorn/lib/utils.c":86:7)
  %v476 = sea.xor %v474, %v475 : i1 loc("seahorn/lib/utils.c":86:7)
  sea.assume %v476 loc("seahorn/lib/utils.c":86:7)
  sea.br ^bb249
^bb249:
  sea.assume %v154 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb250
^bb250:
  %v477 = sea.ptr.index %v113 [%v149] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_416"("seahorn/lib/utils.c":40:5))
  %v478 = sea.const 1 : i64 loc("_417"("seahorn/lib/utils.c":40:5))
  %v479 = sea.ptr.dereferenceable %v477, %v478 : !sea.ptr<64>, i64 loc("_417"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v479, ^bb251, ^bb256
^bb251:
  %v480 = sea.load %v77[%v477] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_419"("seahorn/lib/utils.c":40:5))
  sea.br ^bb252
^bb252:
  %v481 = sea.icmp eq, %v480, %v166 : i8 loc("_421"("seahorn/lib/utils.c":40:5))
  sea.br ^bb253
^bb253:
  %v482 = sea.const 1 : i64 loc("_423"("seahorn/lib/utils.c":40:5))
  %v483 = sea.ptr.dereferenceable %v477, %v482 : !sea.ptr<64>, i64 loc("_423"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v483, ^bb254, ^bb256
^bb254:
  sea.br ^bb255
^bb255:
  %v484 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v485 = sea.xor %v481, %v484 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v485 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb256 loc("seahorn/lib/utils.c":40:5)
^bb256:
  sea.br ^bb257
^bb257:
  %v486 = sea.const 0 : i1
  sea.assert %v486
  sea.halt
}
