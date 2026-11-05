// Exported from SeaHorn (byte_cursor_from_buf.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm22")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm23")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm24")
  %v3 = sea.mem.nondet "region.80" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm25")
  %v4 = sea.mem.nondet "region.89" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm26")
  %v5 = sea.mem.nondet "region.105" [5] : !sea.mem<!sea.ptr<64>, i8> loc("sm27")
  %v6 = sea.const 32 : i64 loc("_0")
  %v7 = sea.alloca %v6 align 8 [6] : i64 -> !sea.ptr<64> loc("_0")
  %v8 = sea.const 32 : i64 loc("_1")
  %v9 = sea.alloca %v8 align 8 [7] : i64 -> !sea.ptr<64> loc("_1")
  %v10 = sea.const 16 : i64 loc("_2")
  %v11 = sea.alloca %v10 align 8 [8] : i64 -> !sea.ptr<64> loc("_2")
  %v12 = sea.const 16 : i64 loc("_3")
  %v13 = sea.alloca %v12 align 8 [9] : i64 -> !sea.ptr<64> loc("_3")
  %v14 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v15 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v16 = sea.store %v0[%v14], %v15 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v17 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_4")
  %v18 = sea.ptr.index %v17 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_4")
  %v19 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v20 = sea.store %v16[%v18], %v19 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v21 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_5")
  %v22 = sea.ptr.index %v21 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_5")
  %v23 = sea.const 0 : i8
  %v24 = sea.const 24 : i64
  %v25 = sea.memset %v20[%v22], %v23, %v24 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v26 = sea.nondet "nd_size_t" [10] : i64 loc("_6"("seahorn/lib/byte_buf_helper.c":19:18))
  %v27 = sea.nondet "nd_size_t" [11] : i64 loc("_7"("seahorn/lib/byte_buf_helper.c":20:18))
  %v28 = sea.icmp ule, %v26, %v27 : i64 loc("_8"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v28 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v29 = sea.const 11 : i64 loc("_9"("seahorn/lib/byte_buf_helper.c":22:16))
  %v30 = sea.icmp ult, %v27, %v29 : i64 loc("_9"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v30 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb1
^bb1:
  %v31 = sea.store %v1[%v7], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v32 = sea.ptr.index %v7 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_11"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb2
^bb2:
  %v33 = sea.store %v31[%v32], %v27 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v34 = sea.const 0 : i64 loc("_13"("seahorn/lib/proof_allocators.c":21:15))
  %v35 = sea.icmp eq, %v27, %v34 : i64 loc("_13"("seahorn/lib/proof_allocators.c":21:15))
  %v36 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v35, ^bb6(%v5, %v36 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/proof_allocators.c":21:10)
^bb3:
  %v37 = sea.nondet "nd_malloc_is_fail" [12] : i1 loc("_15"("seahorn/lib/sea_allocators.c":11:10))
  %v38 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v37, ^bb5(%v5, %v38 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/sea_allocators.c":11:10)
^bb4:
  %v39 = sea.const 1 : i64 loc("malloc.i")
  %v40 = sea.mul %v27, %v39 : i64 loc("malloc.i")
  %v41 = sea.alloca %v40 align 16 [13] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb5(%v5, %v41 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb5(%v42 : !sea.mem<!sea.ptr<64>, i8>, %v43 : !sea.ptr<64>):
  %v44 = sea.memhavoc %v42[%v43], %v27 [14] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb6(%v44, %v43 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb6(%v45 : !sea.mem<!sea.ptr<64>, i8>, %v46 : !sea.ptr<64>):
  %v47 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_19"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb7
^bb7:
  %v48 = sea.store %v33[%v47], %v46 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v49 = sea.ptr.index %v7 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_21"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb8
^bb8:
  %v50 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v51 = sea.store %v48[%v49], %v50 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  sea.br ^bb9
^bb9:
  sea.cond_br %v35, ^bb17, ^bb10 loc("aws-c-common/source/byte_buf.c":60:33)
^bb10:
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  sea.br ^bb13
^bb13:
  %v52 = sea.icmp ugt, %v26, %v27 : i64 loc(".not2.i16.i"("aws-c-common/source/byte_buf.c":61:44))
  %v53 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v52, ^bb22(%v53 : i1), ^bb14 loc("aws-c-common/source/byte_buf.c":61:61)
^bb14:
  sea.br ^bb15
^bb15:
  sea.br ^bb16
^bb16:
  %v54 = sea.ptr.null : !sea.ptr<64> loc("_35"("aws-c-common/source/byte_buf.c":61:64))
  %v55 = sea.ptr.cmp ne, %v46, %v54 : !sea.ptr<64> loc("_35"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb22(%v55 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb17:
  sea.br ^bb18
^bb18:
  %v56 = sea.const 0 : i64 loc("_25"("aws-c-common/source/byte_buf.c":60:45))
  %v57 = sea.icmp eq, %v26, %v56 : i64 loc("_25"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v57, ^bb19, ^bb21 loc("aws-c-common/source/byte_buf.c":60:50)
^bb19:
  sea.br ^bb20
^bb20:
  %v58 = sea.ptr.null : !sea.ptr<64> loc("_28"("aws-c-common/source/byte_buf.c":60:65))
  %v59 = sea.ptr.cmp eq, %v46, %v58 : !sea.ptr<64> loc("_28"("aws-c-common/source/byte_buf.c":60:65))
  %v60 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v59, ^bb22(%v60 : i1), ^bb21 loc("aws-c-common/source/byte_buf.c":60:74)
^bb21:
  %v61 = sea.const 0 : i1
  sea.br ^bb22(%v61 : i1)
^bb22(%v62 : i1):
  sea.assume %v62 loc("seahorn/jobs/byte_cursor_from_buf/aws_byte_cursor_from_buf_harness.c":17:5)
  %v63 = sea.store %v2[%v9], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_cursor_from_buf/aws_byte_cursor_from_buf_harness.c":20:31)
  %v64 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs/byte_cursor_from_buf/aws_byte_cursor_from_buf_harness.c":20:31))
  %v65 = sea.store %v63[%v64], %v46 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_cursor_from_buf/aws_byte_cursor_from_buf_harness.c":20:31)
  %v66 = sea.ptr.index %v9 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy5.i"("seahorn/jobs/byte_cursor_from_buf/aws_byte_cursor_from_buf_harness.c":20:31))
  %v67 = sea.store %v65[%v66], %v27 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_cursor_from_buf/aws_byte_cursor_from_buf_harness.c":20:31)
  %v68 = sea.ptr.index %v9 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy8.i"("seahorn/jobs/byte_cursor_from_buf/aws_byte_cursor_from_buf_harness.c":20:31))
  %v69 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/byte_cursor_from_buf/aws_byte_cursor_from_buf_harness.c":20:31)
  %v70 = sea.store %v67[%v68], %v69 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_cursor_from_buf/aws_byte_cursor_from_buf_harness.c":20:31)
  %v71 = sea.nondet "nd_size_t" [15] : i64 loc("_37"("seahorn/lib/utils.c":46:20))
  sea.br ^bb23
^bb23:
  %v72 = sea.store %v3[%v11], %v71 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v73 = sea.const 0 : i64 loc("_39"("seahorn/lib/utils.c":47:12))
  %v74 = sea.icmp ne, %v26, %v73 : i64 loc("_39"("seahorn/lib/utils.c":47:12))
  %v75 = sea.ptr.null : !sea.ptr<64> loc("_40")
  %v76 = sea.ptr.cmp ne, %v46, %v75 : !sea.ptr<64> loc("_40")
  %v77 = sea.and %v74, %v76 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v77, ^bb26, ^bb24 loc("seahorn/lib/utils.c":47:16)
^bb24:
  %v78 = sea.nondet "nd_uint8_t" [16] : i8 loc("_52"("seahorn/lib/utils.c":51:21))
  %v79 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_53"("seahorn/lib/utils.c":51:14))
  sea.br ^bb25
^bb25:
  %v80 = sea.store %v72[%v79], %v78 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb31(%v78 : i8)
^bb26:
  sea.br ^bb27
^bb27:
  %v81 = sea.icmp ult, %v71, %v26 : i64 loc("_43"("seahorn/lib/utils.c":48:27))
  sea.assume %v81 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb28
^bb28:
  %v82 = sea.ptr.index %v46 [%v71] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_45"("seahorn/lib/utils.c":49:21))
  %v83 = sea.const 1 : i64 loc("_46"("seahorn/lib/utils.c":49:21))
  %v84 = sea.ptr.dereferenceable %v82, %v83 : !sea.ptr<64>, i64 loc("_46"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v84, ^bb29, ^bb94
^bb29:
  %v85 = sea.load %v45[%v82] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_48"("seahorn/lib/utils.c":49:21))
  %v86 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_49"("seahorn/lib/utils.c":49:14))
  sea.br ^bb30
^bb30:
  %v87 = sea.store %v72[%v86], %v85 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb31(%v85 : i8) loc("seahorn/lib/utils.c":50:3)
^bb31(%v88 : i8):
  sea.br ^bb32
^bb32:
  sea.br ^bb33
^bb33:
  %v89 = sea.store %v4[%v13], %v26 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_cursor_from_buf/aws_byte_cursor_from_buf_harness.c":25:34)
  %v90 = sea.ptr.index %v13 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_57"("seahorn/jobs/byte_cursor_from_buf/aws_byte_cursor_from_buf_harness.c":25:34))
  %v91 = sea.store %v89[%v90], %v46 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_cursor_from_buf/aws_byte_cursor_from_buf_harness.c":25:34)
  sea.br ^bb34
^bb34:
  sea.cond_br %v35, ^bb41, ^bb35 loc("aws-c-common/source/byte_buf.c":60:33)
^bb35:
  sea.br ^bb36
^bb36:
  sea.br ^bb37
^bb37:
  sea.br ^bb38
^bb38:
  %v92 = sea.icmp ugt, %v26, %v27 : i64 loc(".not2.i12.i"("aws-c-common/source/byte_buf.c":61:44))
  %v93 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v92, ^bb46(%v93 : i1), ^bb39 loc("aws-c-common/source/byte_buf.c":61:61)
^bb39:
  sea.br ^bb40
^bb40:
  sea.br ^bb46(%v76 : i1)
^bb41:
  sea.br ^bb42
^bb42:
  %v94 = sea.const 0 : i64 loc("_61"("aws-c-common/source/byte_buf.c":60:45))
  %v95 = sea.icmp eq, %v26, %v94 : i64 loc("_61"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v95, ^bb43, ^bb45 loc("aws-c-common/source/byte_buf.c":60:50)
^bb43:
  sea.br ^bb44
^bb44:
  %v96 = sea.ptr.null : !sea.ptr<64> loc("_64"("aws-c-common/source/byte_buf.c":60:65))
  %v97 = sea.ptr.cmp eq, %v46, %v96 : !sea.ptr<64> loc("_64"("aws-c-common/source/byte_buf.c":60:65))
  %v98 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v97, ^bb46(%v98 : i1), ^bb45 loc("aws-c-common/source/byte_buf.c":60:74)
^bb45:
  %v99 = sea.const 0 : i1
  sea.br ^bb46(%v99 : i1)
^bb46(%v100 : i1):
  sea.br ^bb47
^bb47:
  sea.cond_br %v35, ^bb53, ^bb48 loc("aws-c-common/source/byte_buf.c":60:33)
^bb48:
  sea.br ^bb49
^bb49:
  sea.br ^bb50
^bb50:
  %v101 = sea.const 1 : i1 loc("or.cond21.not")
  %v102 = sea.const 0 : i1 loc("or.cond21.not")
  %v103 = sea.select %v101, %v28, %v102 : i1 loc("or.cond21.not")
  sea.cond_br %v103, ^bb51, ^bb94
^bb51:
  sea.br ^bb52
^bb52:
  %v104 = sea.const 1 : i1 loc("or.cond")
  %v105 = sea.and %v76, %v104 : i1 loc("or.cond")
  sea.cond_br %v105, ^bb58, ^bb94
^bb53:
  sea.br ^bb54
^bb54:
  %v106 = sea.const 0 : i64 loc("_74"("aws-c-common/source/byte_buf.c":60:45))
  %v107 = sea.icmp eq, %v26, %v106 : i64 loc("_74"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v107, ^bb55, ^bb57 loc("aws-c-common/source/byte_buf.c":60:50)
^bb55:
  sea.br ^bb56
^bb56:
  %v108 = sea.ptr.null : !sea.ptr<64> loc("_77"("aws-c-common/source/byte_buf.c":60:65))
  %v109 = sea.ptr.cmp eq, %v46, %v108 : !sea.ptr<64> loc("_77"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v109, ^bb58, ^bb57 loc("aws-c-common/source/byte_buf.c":60:74)
^bb57:
  sea.br ^bb94
^bb58:
  sea.br ^bb59
^bb59:
  %v110 = sea.const 0 : i64 loc("_84"("aws-c-common/source/byte_buf.c":66:26))
  %v111 = sea.icmp eq, %v26, %v110 : i64 loc("_84"("aws-c-common/source/byte_buf.c":66:26))
  %v112 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v111, ^bb65(%v112 : i1), ^bb60 loc("aws-c-common/source/byte_buf.c":66:32)
^bb60:
  sea.br ^bb61
^bb61:
  sea.br ^bb62
^bb62:
  %v113 = sea.ptr.null : !sea.ptr<64> loc(".not2.i23.i"("aws-c-common/source/byte_buf.c":66:55))
  %v114 = sea.ptr.cmp eq, %v46, %v113 : !sea.ptr<64> loc(".not2.i23.i"("aws-c-common/source/byte_buf.c":66:55))
  %v115 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v114, ^bb65(%v115 : i1), ^bb63 loc("aws-c-common/source/byte_buf.c":66:67)
^bb63:
  sea.br ^bb64
^bb64:
  %v116 = sea.const 1 : i1
  sea.br ^bb65(%v116 : i1)
^bb65(%v117 : i1):
  sea.br ^bb66
^bb66:
  sea.cond_br %v111, ^bb71, ^bb67 loc("aws-c-common/source/byte_buf.c":66:32)
^bb67:
  sea.br ^bb68
^bb68:
  %v118 = sea.const 1 : i1 loc("or.cond25.not")
  %v119 = sea.and %v76, %v118 : i1 loc("or.cond25.not")
  sea.cond_br %v119, ^bb69, ^bb94
^bb69:
  sea.br ^bb70
^bb70:
  sea.br ^bb71
^bb71:
  sea.br ^bb72
^bb72:
  sea.br ^bb73
^bb73:
  sea.br ^bb74
^bb74:
  sea.br ^bb75
^bb75:
  sea.br ^bb76
^bb76:
  sea.br ^bb77
^bb77:
  sea.br ^bb78
^bb78:
  sea.br ^bb79
^bb79:
  sea.br ^bb80
^bb80:
  sea.br ^bb81
^bb81:
  sea.br ^bb82
^bb82:
  sea.br ^bb83
^bb83:
  sea.br ^bb84
^bb84:
  sea.cond_br %v111, ^bb93, ^bb85 loc("seahorn/lib/utils.c":86:7)
^bb85:
  sea.br ^bb86
^bb86:
  %v120 = sea.ptr.null : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v121 = sea.ptr.cmp eq, %v46, %v120 : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  sea.cond_br %v121, ^bb93, ^bb87 loc("seahorn/lib/utils.c":39:14)
^bb87:
  sea.br ^bb88
^bb88:
  %v122 = sea.ptr.index %v46 [%v71] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_113"("seahorn/lib/utils.c":40:5))
  %v123 = sea.const 1 : i64 loc("_114"("seahorn/lib/utils.c":40:5))
  %v124 = sea.ptr.dereferenceable %v122, %v123 : !sea.ptr<64>, i64 loc("_114"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v124, ^bb89, ^bb94
^bb89:
  %v125 = sea.load %v45[%v122] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_116"("seahorn/lib/utils.c":40:5))
  sea.br ^bb90
^bb90:
  %v126 = sea.icmp eq, %v125, %v88 : i8 loc("_118"("seahorn/lib/utils.c":40:5))
  sea.br ^bb91
^bb91:
  %v127 = sea.const 1 : i64 loc("_120"("seahorn/lib/utils.c":40:5))
  %v128 = sea.ptr.dereferenceable %v122, %v127 : !sea.ptr<64>, i64 loc("_120"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v128, ^bb92, ^bb94
^bb92:
  %v129 = sea.const 1 : i1 loc("or.cond17")
  %v130 = sea.const 0 : i1 loc("or.cond17")
  %v131 = sea.select %v129, %v126, %v130 : i1 loc("or.cond17")
  sea.cond_br %v131, ^bb93, ^bb94
^bb93:
  %v132 = sea.ptr.null : !sea.ptr<64> loc(".not.i"("seahorn/jobs/byte_cursor_from_buf/aws_byte_cursor_from_buf_harness.c":32:9))
  %v133 = sea.ptr.cmp eq, %v46, %v132 : !sea.ptr<64> loc(".not.i"("seahorn/jobs/byte_cursor_from_buf/aws_byte_cursor_from_buf_harness.c":32:9))
  %v134 = sea.const 1 : i1 loc("seahorn/jobs/byte_cursor_from_buf/aws_byte_cursor_from_buf_harness.c":32:9)
  %v135 = sea.xor %v133, %v134 : i1 loc("seahorn/jobs/byte_cursor_from_buf/aws_byte_cursor_from_buf_harness.c":32:9)
  sea.assume %v135 loc("seahorn/jobs/byte_cursor_from_buf/aws_byte_cursor_from_buf_harness.c":32:9)
  sea.assume %v77 loc("seahorn/lib/utils.c":16:15)
  %v136 = sea.nondet "nd_size_t" [17] : i64 loc("_122"("seahorn/lib/utils.c":17:16))
  %v137 = sea.icmp ult, %v136, %v26 : i64 loc("_123"("seahorn/lib/utils.c":19:14))
  %v138 = sea.const 36028797018963967 : i64 loc("_124"("seahorn/lib/utils.c":19:20))
  %v139 = sea.icmp ult, %v26, %v138 : i64 loc("_124"("seahorn/lib/utils.c":19:20))
  %v140 = sea.and %v139, %v137 : i1 loc("_125"("seahorn/lib/utils.c":19:20))
  sea.assume %v140 loc("seahorn/lib/utils.c":19:5)
  %v141 = sea.const 1 : i1 loc("seahorn/lib/utils.c":20:5)
  %v142 = sea.const 1 : i1 loc("seahorn/lib/utils.c":20:5)
  %v143 = sea.xor %v141, %v142 : i1 loc("seahorn/lib/utils.c":20:5)
  sea.assume %v143 loc("seahorn/lib/utils.c":20:5)
  sea.br ^bb94 loc("seahorn/lib/utils.c":20:5)
^bb94:
  sea.br ^bb95
^bb95:
  %v144 = sea.const 0 : i1
  sea.assert %v144
  sea.halt
}
