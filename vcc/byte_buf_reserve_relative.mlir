// Exported from SeaHorn (byte_buf_reserve_relative.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm12")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm13")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm14")
  %v3 = sea.const 32 : i64 loc("_0")
  %v4 = sea.alloca %v3 align 8 [3] : i64 -> !sea.ptr<64> loc("_0")
  %v5 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v6 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v7 = sea.store %v0[%v5], %v6 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v8 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_1")
  %v9 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_1")
  %v10 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v11 = sea.store %v7[%v9], %v10 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v12 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_2")
  %v13 = sea.ptr.index %v12 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_2")
  %v14 = sea.const 0 : i8
  %v15 = sea.const 24 : i64
  %v16 = sea.memset %v11[%v13], %v14, %v15 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v17 = sea.nondet "nd_size_t" [4] : i64 loc("_3"("seahorn/lib/byte_buf_helper.c":19:18))
  %v18 = sea.nondet "nd_size_t" [5] : i64 loc("_4"("seahorn/lib/byte_buf_helper.c":20:18))
  %v19 = sea.icmp ule, %v17, %v18 : i64 loc("_5"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v19 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v20 = sea.const 11 : i64 loc("_6"("seahorn/lib/byte_buf_helper.c":22:16))
  %v21 = sea.icmp ult, %v18, %v20 : i64 loc("_6"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v21 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb1
^bb1:
  %v22 = sea.store %v1[%v4], %v17 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v23 = sea.ptr.index %v4 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_8"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb2
^bb2:
  %v24 = sea.store %v22[%v23], %v18 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v25 = sea.const 0 : i64 loc("_10"("seahorn/lib/proof_allocators.c":21:15))
  %v26 = sea.icmp eq, %v18, %v25 : i64 loc("_10"("seahorn/lib/proof_allocators.c":21:15))
  %v27 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v26, ^bb6(%v2, %v27 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/proof_allocators.c":21:10)
^bb3:
  %v28 = sea.nondet "nd_malloc_is_fail" [6] : i1 loc("_12"("seahorn/lib/sea_allocators.c":11:10))
  %v29 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v28, ^bb5(%v2, %v29 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/sea_allocators.c":11:10)
^bb4:
  %v30 = sea.const 1 : i64 loc("malloc.i")
  %v31 = sea.mul %v18, %v30 : i64 loc("malloc.i")
  %v32 = sea.alloca %v31 align 16 [7] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb5(%v2, %v32 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb5(%v33 : !sea.mem<!sea.ptr<64>, i8>, %v34 : !sea.ptr<64>):
  %v35 = sea.memhavoc %v33[%v34], %v18 [8] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb6(%v35, %v34 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb6(%v36 : !sea.mem<!sea.ptr<64>, i8>, %v37 : !sea.ptr<64>):
  %v38 = sea.ptr.index %v4 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_16"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb7
^bb7:
  %v39 = sea.store %v24[%v38], %v37 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v40 = sea.ptr.index %v4 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_18"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb8
^bb8:
  %v41 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v42 = sea.store %v39[%v40], %v41 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  sea.br ^bb9
^bb9:
  sea.cond_br %v26, ^bb17, ^bb10 loc("aws-c-common/source/byte_buf.c":60:33)
^bb10:
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  sea.br ^bb13
^bb13:
  %v43 = sea.icmp ugt, %v17, %v18 : i64 loc(".not2.i16.i"("aws-c-common/source/byte_buf.c":61:44))
  %v44 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v43, ^bb22(%v44 : i1), ^bb14 loc("aws-c-common/source/byte_buf.c":61:61)
^bb14:
  sea.br ^bb15
^bb15:
  sea.br ^bb16
^bb16:
  %v45 = sea.ptr.null : !sea.ptr<64> loc("_32"("aws-c-common/source/byte_buf.c":61:64))
  %v46 = sea.ptr.cmp ne, %v37, %v45 : !sea.ptr<64> loc("_32"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb22(%v46 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb17:
  sea.br ^bb18
^bb18:
  %v47 = sea.const 0 : i64 loc("_22"("aws-c-common/source/byte_buf.c":60:45))
  %v48 = sea.icmp eq, %v17, %v47 : i64 loc("_22"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v48, ^bb19, ^bb21 loc("aws-c-common/source/byte_buf.c":60:50)
^bb19:
  sea.br ^bb20
^bb20:
  %v49 = sea.ptr.null : !sea.ptr<64> loc("_25"("aws-c-common/source/byte_buf.c":60:65))
  %v50 = sea.ptr.cmp eq, %v37, %v49 : !sea.ptr<64> loc("_25"("aws-c-common/source/byte_buf.c":60:65))
  %v51 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v50, ^bb22(%v51 : i1), ^bb21 loc("aws-c-common/source/byte_buf.c":60:74)
^bb21:
  %v52 = sea.const 0 : i1
  sea.br ^bb22(%v52 : i1)
^bb22(%v53 : i1):
  sea.assume %v53 loc("seahorn/jobs/byte_buf_reserve_relative/aws_byte_buf_reserve_relative_harness.c":13:5)
  %v54 = sea.const 10 : i64 loc("_34"("seahorn/jobs/byte_buf_reserve_relative/aws_byte_buf_reserve_relative_harness.c":20:29))
  %v55 = sea.icmp ult, %v18, %v54 : i64 loc("_34"("seahorn/jobs/byte_buf_reserve_relative/aws_byte_buf_reserve_relative_harness.c":20:29))
  sea.assume %v55 loc("seahorn/jobs/byte_buf_reserve_relative/aws_byte_buf_reserve_relative_harness.c":20:9)
  sea.br ^bb23
^bb23:
  sea.br ^bb24
^bb24:
  sea.cond_br %v26, ^bb32, ^bb25 loc("aws-c-common/source/byte_buf.c":60:33)
^bb25:
  sea.br ^bb26
^bb26:
  sea.br ^bb27
^bb27:
  sea.br ^bb28
^bb28:
  %v56 = sea.icmp ugt, %v17, %v18 : i64 loc(".not2.i.i.i"("aws-c-common/source/byte_buf.c":61:44))
  sea.cond_br %v56, ^bb37, ^bb29 loc("aws-c-common/source/byte_buf.c":61:61)
^bb29:
  sea.br ^bb30
^bb30:
  sea.br ^bb31
^bb31:
  %v57 = sea.ptr.null : !sea.ptr<64> loc(".not"("aws-c-common/source/byte_buf.c":61:64))
  %v58 = sea.ptr.cmp eq, %v37, %v57 : !sea.ptr<64> loc(".not"("aws-c-common/source/byte_buf.c":61:64))
  sea.cond_br %v58, ^bb37, ^bb38 loc("aws-c-common/source/byte_buf.c":808:5)
^bb32:
  sea.br ^bb33
^bb33:
  %v59 = sea.const 0 : i64 loc("_39"("aws-c-common/source/byte_buf.c":60:45))
  %v60 = sea.icmp eq, %v17, %v59 : i64 loc("_39"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v60, ^bb34, ^bb36 loc("aws-c-common/source/byte_buf.c":60:50)
^bb34:
  sea.br ^bb35
^bb35:
  %v61 = sea.ptr.null : !sea.ptr<64> loc("_42"("aws-c-common/source/byte_buf.c":60:65))
  %v62 = sea.ptr.cmp eq, %v37, %v61 : !sea.ptr<64> loc("_42"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v62, ^bb38, ^bb36 loc("aws-c-common/source/byte_buf.c":60:74)
^bb36:
  sea.br ^bb37
^bb37:
  sea.br ^bb92(%v37, %v17, %v18 : !sea.ptr<64>, i64, i64) loc("seahorn/jobs/byte_buf_reserve_relative/aws_byte_buf_reserve_relative_harness.c":24:9)
^bb38:
  sea.br ^bb39
^bb39:
  sea.br ^bb40
^bb40:
  %v63 = sea.const 10 : i64 loc("_50"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v64 = sea.add %v17, %v63 : i64 loc("_50"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v65 = sea.const 10 : i64 loc("_50"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v66 = sea.uaddo %v17, %v65 : i64 loc("_50"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v66, ^bb41, ^bb42 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb41:
  sea.br ^bb42 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":71:9)
^bb42:
  %v67 = sea.zext %v66 : i1 to i64 loc("_54"("aws-c-common/source/byte_buf.c":811:9))
  %v68 = sea.const 0 : i64 loc(".not2.i20.i"("aws-c-common/source/byte_buf.c":811:9))
  %v69 = sea.icmp eq, %v67, %v68 : i64 loc(".not2.i20.i"("aws-c-common/source/byte_buf.c":811:9))
  sea.cond_br %v69, ^bb43, ^bb91(%v17 : i64) loc("aws-c-common/source/byte_buf.c":811:9)
^bb43:
  sea.br ^bb44
^bb44:
  sea.br ^bb45
^bb45:
  sea.cond_br %v26, ^bb53, ^bb46 loc("aws-c-common/source/byte_buf.c":60:33)
^bb46:
  sea.br ^bb47
^bb47:
  sea.br ^bb48
^bb48:
  sea.br ^bb49
^bb49:
  %v70 = sea.icmp ugt, %v17, %v18 : i64 loc(".not2.i.i.i.i"("aws-c-common/source/byte_buf.c":61:44))
  sea.cond_br %v70, ^bb58, ^bb50 loc("aws-c-common/source/byte_buf.c":61:61)
^bb50:
  sea.br ^bb51
^bb51:
  sea.br ^bb52
^bb52:
  %v71 = sea.ptr.null : !sea.ptr<64> loc(".not21"("aws-c-common/source/byte_buf.c":61:64))
  %v72 = sea.ptr.cmp eq, %v37, %v71 : !sea.ptr<64> loc(".not21"("aws-c-common/source/byte_buf.c":61:64))
  sea.cond_br %v72, ^bb58, ^bb59 loc("aws-c-common/source/byte_buf.c":783:5)
^bb53:
  sea.br ^bb54
^bb54:
  %v73 = sea.const 0 : i64 loc("_61"("aws-c-common/source/byte_buf.c":60:45))
  %v74 = sea.icmp eq, %v17, %v73 : i64 loc("_61"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v74, ^bb55, ^bb57 loc("aws-c-common/source/byte_buf.c":60:50)
^bb55:
  sea.br ^bb56
^bb56:
  %v75 = sea.ptr.null : !sea.ptr<64> loc("_64"("aws-c-common/source/byte_buf.c":60:65))
  %v76 = sea.ptr.cmp eq, %v37, %v75 : !sea.ptr<64> loc("_64"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v76, ^bb59, ^bb57 loc("aws-c-common/source/byte_buf.c":60:74)
^bb57:
  sea.br ^bb58
^bb58:
  sea.br ^bb91(%v17 : i64) loc("aws-c-common/source/byte_buf.c":783:5)
^bb59:
  sea.br ^bb60
^bb60:
  %v77 = sea.icmp ult, %v18, %v64 : i64 loc(".not1.i7.i.i"("aws-c-common/source/byte_buf.c":785:28))
  sea.cond_br %v77, ^bb62, ^bb61 loc("aws-c-common/source/byte_buf.c":785:9)
^bb61:
  sea.br ^bb88(%v18, %v17, %v37 : i64, i64, !sea.ptr<64>) loc("seahorn/jobs/byte_buf_reserve_relative/aws_byte_buf_reserve_relative_harness.c":25:9)
^bb62:
  sea.br ^bb63
^bb63:
  %v78 = sea.ptr.null : !sea.ptr<64> loc(".not2.i8.i.i"("aws-c-common/source/byte_buf.c":789:10))
  %v79 = sea.ptr.cmp eq, %v37, %v78 : !sea.ptr<64> loc(".not2.i8.i.i"("aws-c-common/source/byte_buf.c":789:10))
  sea.cond_br %v79, ^bb64, ^bb66 loc("aws-c-common/source/byte_buf.c":789:25)
^bb64:
  sea.br ^bb65
^bb65:
  sea.cond_br %v26, ^bb76, ^bb66 loc("aws-c-common/source/byte_buf.c":789:46)
^bb66:
  sea.br ^bb67
^bb67:
  sea.br ^bb68
^bb68:
  %v80 = sea.nondet "nd_malloc_is_fail" [9] : i1 loc("_89"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v80, ^bb75, ^bb69 loc("seahorn/lib/sea_allocators.c":11:10)
^bb69:
  %v81 = sea.const 1 : i64 loc("malloc35.i")
  %v82 = sea.mul %v64, %v81 : i64 loc("malloc35.i")
  %v83 = sea.alloca %v82 align 16 [10] : i64 -> !sea.ptr<64> loc("malloc35.i")
  %v84 = sea.memhavoc %v36[%v83], %v64 [11] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb70
^bb70:
  %v85 = sea.ptr.dereferenceable %v83, %v18 : !sea.ptr<64>, i64 loc("_92"("seahorn/lib/bcmp.c":161:3))
  %v86 = sea.ptr.dereferenceable %v83, %v18 : !sea.ptr<64>, i64 loc("_93"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v86, ^bb71, ^bb121 loc("seahorn/lib/bcmp.c":161:3)
^bb71:
  %v87 = sea.ptr.dereferenceable %v37, %v18 : !sea.ptr<64>, i64 loc("_95"("seahorn/lib/bcmp.c":162:3))
  %v88 = sea.ptr.dereferenceable %v37, %v18 : !sea.ptr<64>, i64 loc("_96"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v88, ^bb72, ^bb121 loc("seahorn/lib/bcmp.c":162:3)
^bb72:
  sea.br ^bb73
^bb73:
  sea.br ^bb74
^bb74:
  sea.br ^bb87(%v83, %v17 : !sea.ptr<64>, i64)
^bb75:
  sea.br ^bb91(%v17 : i64) loc("aws-c-common/source/byte_buf.c":796:9)
^bb76:
  sea.br ^bb77
^bb77:
  sea.br ^bb78
^bb78:
  %v89 = sea.nondet "nd_malloc_is_fail" [12] : i1 loc("_78"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v89, ^bb80, ^bb79 loc("seahorn/lib/sea_allocators.c":11:10)
^bb79:
  %v90 = sea.const 1 : i64 loc("malloc34.i")
  %v91 = sea.mul %v64, %v90 : i64 loc("malloc34.i")
  %v92 = sea.alloca %v91 align 16 [13] : i64 -> !sea.ptr<64> loc("malloc34.i")
  %v93 = sea.memhavoc %v36[%v92], %v64 [14] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb81(%v92 : !sea.ptr<64>) loc("seahorn/lib/allocator_override.c":19:7)
^bb80:
  %v94 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/allocator_override.c":21:3)
  sea.br ^bb81(%v94 : !sea.ptr<64>) loc("seahorn/lib/allocator_override.c":21:3)
^bb81(%v95 : !sea.ptr<64>):
  sea.br ^bb82
^bb82:
  sea.br ^bb83
^bb83:
  %v96 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":22:9)
  sea.cond_br %v89, ^bb91(%v96 : i64), ^bb84 loc("aws-c-common/source/byte_buf.c":22:9)
^bb84:
  sea.br ^bb85
^bb85:
  sea.br ^bb86
^bb86:
  %v97 = sea.const 0 : i64
  sea.br ^bb87(%v95, %v97 : !sea.ptr<64>, i64)
^bb87(%v98 : !sea.ptr<64>, %v99 : i64):
  sea.br ^bb88(%v64, %v99, %v98 : i64, i64, !sea.ptr<64>) loc("seahorn/jobs/byte_buf_reserve_relative/aws_byte_buf_reserve_relative_harness.c":25:9)
^bb88(%v100 : i64, %v101 : i64, %v102 : !sea.ptr<64>):
  sea.br ^bb89
^bb89:
  sea.br ^bb90
^bb90:
  sea.br ^bb92(%v102, %v101, %v100 : !sea.ptr<64>, i64, i64)
^bb91(%v103 : i64):
  sea.br ^bb92(%v37, %v103, %v18 : !sea.ptr<64>, i64, i64) loc("seahorn/jobs/byte_buf_reserve_relative/aws_byte_buf_reserve_relative_harness.c":24:9)
^bb92(%v104 : !sea.ptr<64>, %v105 : i64, %v106 : i64):
  sea.br ^bb93
^bb93:
  %v107 = sea.const 0 : i64 loc("_108"("aws-c-common/source/byte_buf.c":60:28))
  %v108 = sea.icmp eq, %v106, %v107 : i64 loc("_108"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v108, ^bb101, ^bb94 loc("aws-c-common/source/byte_buf.c":60:33)
^bb94:
  sea.br ^bb95
^bb95:
  sea.br ^bb96
^bb96:
  sea.br ^bb97
^bb97:
  %v109 = sea.icmp ugt, %v105, %v106 : i64 loc(".not2.i12.i"("aws-c-common/source/byte_buf.c":61:44))
  %v110 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v109, ^bb106(%v110 : i1), ^bb98 loc("aws-c-common/source/byte_buf.c":61:61)
^bb98:
  sea.br ^bb99
^bb99:
  sea.br ^bb100
^bb100:
  %v111 = sea.ptr.null : !sea.ptr<64> loc("_121"("aws-c-common/source/byte_buf.c":61:64))
  %v112 = sea.ptr.cmp ne, %v104, %v111 : !sea.ptr<64> loc("_121"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb106(%v112 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb101:
  sea.br ^bb102
^bb102:
  %v113 = sea.const 0 : i64 loc("_111"("aws-c-common/source/byte_buf.c":60:45))
  %v114 = sea.icmp eq, %v105, %v113 : i64 loc("_111"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v114, ^bb103, ^bb105 loc("aws-c-common/source/byte_buf.c":60:50)
^bb103:
  sea.br ^bb104
^bb104:
  %v115 = sea.ptr.null : !sea.ptr<64> loc("_114"("aws-c-common/source/byte_buf.c":60:65))
  %v116 = sea.ptr.cmp eq, %v104, %v115 : !sea.ptr<64> loc("_114"("aws-c-common/source/byte_buf.c":60:65))
  %v117 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v116, ^bb106(%v117 : i1), ^bb105 loc("aws-c-common/source/byte_buf.c":60:74)
^bb105:
  %v118 = sea.const 0 : i1
  sea.br ^bb106(%v118 : i1)
^bb106(%v119 : i1):
  sea.br ^bb107
^bb107:
  sea.cond_br %v108, ^bb115, ^bb108 loc("aws-c-common/source/byte_buf.c":60:33)
^bb108:
  sea.br ^bb109
^bb109:
  sea.br ^bb110
^bb110:
  sea.br ^bb111
^bb111:
  %v120 = sea.icmp ugt, %v105, %v106 : i64 loc(".not2.i.i"("aws-c-common/source/byte_buf.c":61:44))
  %v121 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v120, ^bb120(%v121 : i1), ^bb112 loc("aws-c-common/source/byte_buf.c":61:61)
^bb112:
  sea.br ^bb113
^bb113:
  sea.br ^bb114
^bb114:
  %v122 = sea.ptr.null : !sea.ptr<64> loc("_136"("aws-c-common/source/byte_buf.c":61:64))
  %v123 = sea.ptr.cmp ne, %v104, %v122 : !sea.ptr<64> loc("_136"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb120(%v123 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb115:
  sea.br ^bb116
^bb116:
  %v124 = sea.const 0 : i64 loc("_126"("aws-c-common/source/byte_buf.c":60:45))
  %v125 = sea.icmp eq, %v105, %v124 : i64 loc("_126"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v125, ^bb117, ^bb119 loc("aws-c-common/source/byte_buf.c":60:50)
^bb117:
  sea.br ^bb118
^bb118:
  %v126 = sea.ptr.null : !sea.ptr<64> loc("_129"("aws-c-common/source/byte_buf.c":60:65))
  %v127 = sea.ptr.cmp eq, %v104, %v126 : !sea.ptr<64> loc("_129"("aws-c-common/source/byte_buf.c":60:65))
  %v128 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v127, ^bb120(%v128 : i1), ^bb119 loc("aws-c-common/source/byte_buf.c":60:74)
^bb119:
  %v129 = sea.const 0 : i1
  sea.br ^bb120(%v129 : i1)
^bb120(%v130 : i1):
  %v131 = sea.const 1 : i1 loc("seahorn/jobs/byte_buf_reserve_relative/aws_byte_buf_reserve_relative_harness.c":28:5)
  %v132 = sea.xor %v130, %v131 : i1 loc("seahorn/jobs/byte_buf_reserve_relative/aws_byte_buf_reserve_relative_harness.c":28:5)
  sea.assume %v132 loc("seahorn/jobs/byte_buf_reserve_relative/aws_byte_buf_reserve_relative_harness.c":28:5)
  sea.br ^bb121 loc("seahorn/jobs/byte_buf_reserve_relative/aws_byte_buf_reserve_relative_harness.c":28:5)
^bb121:
  sea.br ^bb122
^bb122:
  %v133 = sea.const 0 : i1
  sea.assert %v133
  sea.halt
}
