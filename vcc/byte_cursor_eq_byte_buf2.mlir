// Exported from SeaHorn (byte_cursor_eq_byte_buf2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm17")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm18")
  %v2 = sea.mem.nondet "region.32" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm19")
  %v3 = sea.mem.nondet "region.64" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm20")
  %v4 = sea.mem.nondet "region.65" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm21")
  %v5 = sea.const 16 : i64 loc("_0")
  %v6 = sea.alloca %v5 align 8 [5] : i64 -> !sea.ptr<64> loc("_0")
  %v7 = sea.const 32 : i64 loc("_1")
  %v8 = sea.alloca %v7 align 8 [6] : i64 -> !sea.ptr<64> loc("_1")
  %v9 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v10 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v11 = sea.store %v0[%v9], %v10 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v12 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_2")
  %v13 = sea.ptr.index %v12 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_2")
  %v14 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v15 = sea.store %v11[%v13], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v16 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_3")
  %v17 = sea.ptr.index %v16 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_3")
  %v18 = sea.const 0 : i8
  %v19 = sea.const 24 : i64
  %v20 = sea.memset %v15[%v17], %v18, %v19 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v21 = sea.nondet "nd_size_t" [7] : i64 loc("_4"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb1
^bb1:
  %v22 = sea.store %v1[%v6], %v21 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb2
^bb2:
  %v23 = sea.const 11 : i64 loc("_7"("seahorn/lib/byte_buf_helper.c":33:24))
  %v24 = sea.icmp ult, %v21, %v23 : i64 loc("_7"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v24 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v25 = sea.nondet "nd_malloc_is_fail" [8] : i1 loc("_8"("seahorn/lib/sea_allocators.c":11:10))
  %v26 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v25, ^bb4(%v3, %v26 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/sea_allocators.c":11:10)
^bb3:
  %v27 = sea.const 10 : i64 loc("malloc.i5")
  %v28 = sea.alloca %v27 align 16 [9] : i64 -> !sea.ptr<64> loc("malloc.i5")
  sea.br ^bb4(%v3, %v28 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb4(%v29 : !sea.mem<!sea.ptr<64>, i8>, %v30 : !sea.ptr<64>):
  %v31 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v32 = sea.memhavoc %v29[%v30], %v31 [10] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v33 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_11"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb5
^bb5:
  %v34 = sea.store %v22[%v33], %v30 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  %v35 = sea.nondet "nd_size_t" [11] : i64 loc("_12"("seahorn/lib/byte_buf_helper.c":19:18))
  %v36 = sea.nondet "nd_size_t" [12] : i64 loc("_13"("seahorn/lib/byte_buf_helper.c":20:18))
  %v37 = sea.icmp ule, %v35, %v36 : i64 loc("_14"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v37 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v38 = sea.const 11 : i64 loc("_15"("seahorn/lib/byte_buf_helper.c":22:16))
  %v39 = sea.icmp ult, %v36, %v38 : i64 loc("_15"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v39 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb6
^bb6:
  %v40 = sea.store %v2[%v8], %v35 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v41 = sea.ptr.index %v8 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_17"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb7
^bb7:
  %v42 = sea.store %v40[%v41], %v36 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v43 = sea.const 0 : i64 loc("_19"("seahorn/lib/proof_allocators.c":21:15))
  %v44 = sea.icmp eq, %v36, %v43 : i64 loc("_19"("seahorn/lib/proof_allocators.c":21:15))
  %v45 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v44, ^bb11(%v4, %v45 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb8 loc("seahorn/lib/proof_allocators.c":21:10)
^bb8:
  %v46 = sea.nondet "nd_malloc_is_fail" [13] : i1 loc("_21"("seahorn/lib/sea_allocators.c":11:10))
  %v47 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v46, ^bb10(%v4, %v47 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb9 loc("seahorn/lib/sea_allocators.c":11:10)
^bb9:
  %v48 = sea.const 1 : i64 loc("malloc29.i")
  %v49 = sea.mul %v36, %v48 : i64 loc("malloc29.i")
  %v50 = sea.alloca %v49 align 16 [14] : i64 -> !sea.ptr<64> loc("malloc29.i")
  sea.br ^bb10(%v4, %v50 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb10(%v51 : !sea.mem<!sea.ptr<64>, i8>, %v52 : !sea.ptr<64>):
  %v53 = sea.memhavoc %v51[%v52], %v36 [15] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb11(%v53, %v52 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb11(%v54 : !sea.mem<!sea.ptr<64>, i8>, %v55 : !sea.ptr<64>):
  %v56 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_25"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb12
^bb12:
  %v57 = sea.store %v42[%v56], %v55 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v58 = sea.ptr.index %v8 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_27"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb13
^bb13:
  %v59 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v60 = sea.store %v57[%v58], %v59 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  sea.br ^bb14
^bb14:
  %v61 = sea.const 0 : i64 loc("_29"("aws-c-common/source/byte_buf.c":66:26))
  %v62 = sea.icmp eq, %v21, %v61 : i64 loc("_29"("aws-c-common/source/byte_buf.c":66:26))
  %v63 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v62, ^bb20(%v63 : i1), ^bb15 loc("aws-c-common/source/byte_buf.c":66:32)
^bb15:
  sea.br ^bb16
^bb16:
  sea.br ^bb17
^bb17:
  %v64 = sea.ptr.null : !sea.ptr<64> loc(".not2.i19.i"("aws-c-common/source/byte_buf.c":66:55))
  %v65 = sea.ptr.cmp eq, %v30, %v64 : !sea.ptr<64> loc(".not2.i19.i"("aws-c-common/source/byte_buf.c":66:55))
  %v66 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v65, ^bb20(%v66 : i1), ^bb18 loc("aws-c-common/source/byte_buf.c":66:67)
^bb18:
  sea.br ^bb19
^bb19:
  %v67 = sea.const 1 : i1
  sea.br ^bb20(%v67 : i1)
^bb20(%v68 : i1):
  sea.assume %v68 loc("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":18:5)
  sea.br ^bb21
^bb21:
  sea.cond_br %v44, ^bb29, ^bb22 loc("aws-c-common/source/byte_buf.c":60:33)
^bb22:
  sea.br ^bb23
^bb23:
  sea.br ^bb24
^bb24:
  sea.br ^bb25
^bb25:
  %v69 = sea.icmp ugt, %v35, %v36 : i64 loc(".not2.i8.i"("aws-c-common/source/byte_buf.c":61:44))
  %v70 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v69, ^bb34(%v70 : i1), ^bb26 loc("aws-c-common/source/byte_buf.c":61:61)
^bb26:
  sea.br ^bb27
^bb27:
  sea.br ^bb28
^bb28:
  %v71 = sea.ptr.null : !sea.ptr<64> loc("_49"("aws-c-common/source/byte_buf.c":61:64))
  %v72 = sea.ptr.cmp ne, %v55, %v71 : !sea.ptr<64> loc("_49"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb34(%v72 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb29:
  sea.br ^bb30
^bb30:
  %v73 = sea.const 0 : i64 loc("_39"("aws-c-common/source/byte_buf.c":60:45))
  %v74 = sea.icmp eq, %v35, %v73 : i64 loc("_39"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v74, ^bb31, ^bb33 loc("aws-c-common/source/byte_buf.c":60:50)
^bb31:
  sea.br ^bb32
^bb32:
  %v75 = sea.ptr.null : !sea.ptr<64> loc("_42"("aws-c-common/source/byte_buf.c":60:65))
  %v76 = sea.ptr.cmp eq, %v55, %v75 : !sea.ptr<64> loc("_42"("aws-c-common/source/byte_buf.c":60:65))
  %v77 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v76, ^bb34(%v77 : i1), ^bb33 loc("aws-c-common/source/byte_buf.c":60:74)
^bb33:
  %v78 = sea.const 0 : i1
  sea.br ^bb34(%v78 : i1)
^bb34(%v79 : i1):
  sea.assume %v79 loc("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":19:5)
  sea.tracking_on loc("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":22:5)
  %v80 = sea.mem.reset_modified %v32[%v30] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":23:5)
  %v81 = sea.mem.reset_modified %v60[%v8] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":24:5)
  %v82 = sea.load %v57[%v56] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_51"("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":25:36))
  %v83 = sea.mem.reset_modified %v54[%v82] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":25:5)
  sea.br ^bb35
^bb35:
  sea.br ^bb36
^bb36:
  sea.br ^bb37
^bb37:
  sea.br ^bb38
^bb38:
  %v84 = sea.load %v81[%v8] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_56"("aws-c-common/source/byte_buf.c":528:58))
  %v85 = sea.icmp eq, %v21, %v84 : i64 loc(".not.i.i.i"("aws-c-common/source/byte_buf.c":425:15))
  sea.cond_br %v85, ^bb39, ^bb96 loc("aws-c-common/source/byte_buf.c":425:9)
^bb39:
  sea.cond_br %v62, ^bb95, ^bb40 loc("aws-c-common/source/byte_buf.c":429:9)
^bb40:
  %v86 = sea.ptr.cmp eq, %v30, %v82 : !sea.ptr<64> loc("_59"("seahorn/lib/bcmp.c":55:10))
  sea.cond_br %v86, ^bb91, ^bb41 loc("seahorn/lib/bcmp.c":55:7)
^bb41:
  %v87 = sea.const 1 : i64 loc("_62"("seahorn/lib/bcmp.c":61:11))
  %v88 = sea.ptr.dereferenceable %v30, %v87 : !sea.ptr<64>, i64 loc("_62"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v88, ^bb42, ^bb139
^bb42:
  %v89 = sea.load %v80[%v30] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_64"("seahorn/lib/bcmp.c":61:11))
  %v90 = sea.const 1 : i64 loc("_65"("seahorn/lib/bcmp.c":61:20))
  %v91 = sea.ptr.dereferenceable %v82, %v90 : !sea.ptr<64>, i64 loc("_65"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v91, ^bb43, ^bb139
^bb43:
  %v92 = sea.load %v83[%v82] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_67"("seahorn/lib/bcmp.c":61:20))
  %v93 = sea.icmp eq, %v89, %v92 : i8 loc(".not2.i28.i"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v93, ^bb44, ^bb80(%v82, %v30 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb44:
  %v94 = sea.const 1 : i64 loc(".not8"("seahorn/lib/bcmp.c":60:11))
  %v95 = sea.icmp eq, %v21, %v94 : i64 loc(".not8"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v95, ^bb90, ^bb45 loc("seahorn/lib/bcmp.c":60:9)
^bb45:
  %v96 = sea.ptr.index %v30 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_73"("seahorn/lib/bcmp.c":61:11))
  %v97 = sea.const 1 : i64 loc("_74"("seahorn/lib/bcmp.c":61:11))
  %v98 = sea.ptr.dereferenceable %v96, %v97 : !sea.ptr<64>, i64 loc("_74"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v98, ^bb46, ^bb139
^bb46:
  %v99 = sea.load %v80[%v96] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_76"("seahorn/lib/bcmp.c":61:11))
  %v100 = sea.ptr.index %v82 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_77"("seahorn/lib/bcmp.c":61:20))
  %v101 = sea.const 1 : i64 loc("_78"("seahorn/lib/bcmp.c":61:20))
  %v102 = sea.ptr.dereferenceable %v100, %v101 : !sea.ptr<64>, i64 loc("_78"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v102, ^bb47, ^bb139
^bb47:
  %v103 = sea.load %v83[%v100] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_80"("seahorn/lib/bcmp.c":61:20))
  %v104 = sea.icmp eq, %v99, %v103 : i8 loc(".not2.i28.i.1"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v104, ^bb48, ^bb80(%v100, %v96 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb48:
  %v105 = sea.const 2 : i64 loc("_81"("seahorn/lib/bcmp.c":60:11))
  %v106 = sea.icmp ugt, %v21, %v105 : i64 loc("_81"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v106, ^bb49, ^bb90 loc("seahorn/lib/bcmp.c":60:9)
^bb49:
  %v107 = sea.ptr.index %v30 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_83"("seahorn/lib/bcmp.c":61:11))
  %v108 = sea.const 1 : i64 loc("_84"("seahorn/lib/bcmp.c":61:11))
  %v109 = sea.ptr.dereferenceable %v107, %v108 : !sea.ptr<64>, i64 loc("_84"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v109, ^bb50, ^bb139
^bb50:
  %v110 = sea.load %v80[%v107] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_86"("seahorn/lib/bcmp.c":61:11))
  %v111 = sea.ptr.index %v82 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_87"("seahorn/lib/bcmp.c":61:20))
  %v112 = sea.const 1 : i64 loc("_88"("seahorn/lib/bcmp.c":61:20))
  %v113 = sea.ptr.dereferenceable %v111, %v112 : !sea.ptr<64>, i64 loc("_88"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v113, ^bb51, ^bb139
^bb51:
  %v114 = sea.load %v83[%v111] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_90"("seahorn/lib/bcmp.c":61:20))
  %v115 = sea.icmp eq, %v110, %v114 : i8 loc(".not2.i28.i.2"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v115, ^bb52, ^bb80(%v111, %v107 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb52:
  %v116 = sea.const 3 : i64 loc(".not9"("seahorn/lib/bcmp.c":60:11))
  %v117 = sea.icmp eq, %v21, %v116 : i64 loc(".not9"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v117, ^bb90, ^bb53 loc("seahorn/lib/bcmp.c":60:9)
^bb53:
  %v118 = sea.ptr.index %v30 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_92"("seahorn/lib/bcmp.c":61:11))
  %v119 = sea.const 1 : i64 loc("_93"("seahorn/lib/bcmp.c":61:11))
  %v120 = sea.ptr.dereferenceable %v118, %v119 : !sea.ptr<64>, i64 loc("_93"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v120, ^bb54, ^bb139
^bb54:
  %v121 = sea.load %v80[%v118] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_95"("seahorn/lib/bcmp.c":61:11))
  %v122 = sea.ptr.index %v82 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_96"("seahorn/lib/bcmp.c":61:20))
  %v123 = sea.const 1 : i64 loc("_97"("seahorn/lib/bcmp.c":61:20))
  %v124 = sea.ptr.dereferenceable %v122, %v123 : !sea.ptr<64>, i64 loc("_97"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v124, ^bb55, ^bb139
^bb55:
  %v125 = sea.load %v83[%v122] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_99"("seahorn/lib/bcmp.c":61:20))
  %v126 = sea.icmp eq, %v121, %v125 : i8 loc(".not2.i28.i.3"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v126, ^bb56, ^bb80(%v122, %v118 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb56:
  %v127 = sea.const 4 : i64 loc("_100"("seahorn/lib/bcmp.c":60:11))
  %v128 = sea.icmp ugt, %v21, %v127 : i64 loc("_100"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v128, ^bb57, ^bb90 loc("seahorn/lib/bcmp.c":60:9)
^bb57:
  %v129 = sea.ptr.index %v30 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_102"("seahorn/lib/bcmp.c":61:11))
  %v130 = sea.const 1 : i64 loc("_103"("seahorn/lib/bcmp.c":61:11))
  %v131 = sea.ptr.dereferenceable %v129, %v130 : !sea.ptr<64>, i64 loc("_103"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v131, ^bb58, ^bb139
^bb58:
  %v132 = sea.load %v80[%v129] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_105"("seahorn/lib/bcmp.c":61:11))
  %v133 = sea.ptr.index %v82 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_106"("seahorn/lib/bcmp.c":61:20))
  %v134 = sea.const 1 : i64 loc("_107"("seahorn/lib/bcmp.c":61:20))
  %v135 = sea.ptr.dereferenceable %v133, %v134 : !sea.ptr<64>, i64 loc("_107"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v135, ^bb59, ^bb139
^bb59:
  %v136 = sea.load %v83[%v133] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_109"("seahorn/lib/bcmp.c":61:20))
  %v137 = sea.icmp eq, %v132, %v136 : i8 loc(".not2.i28.i.4"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v137, ^bb60, ^bb80(%v133, %v129 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb60:
  %v138 = sea.const 5 : i64 loc(".not10"("seahorn/lib/bcmp.c":60:11))
  %v139 = sea.icmp eq, %v21, %v138 : i64 loc(".not10"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v139, ^bb90, ^bb61 loc("seahorn/lib/bcmp.c":60:9)
^bb61:
  %v140 = sea.ptr.index %v30 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_111"("seahorn/lib/bcmp.c":61:11))
  %v141 = sea.const 1 : i64 loc("_112"("seahorn/lib/bcmp.c":61:11))
  %v142 = sea.ptr.dereferenceable %v140, %v141 : !sea.ptr<64>, i64 loc("_112"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v142, ^bb62, ^bb139
^bb62:
  %v143 = sea.load %v80[%v140] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_114"("seahorn/lib/bcmp.c":61:11))
  %v144 = sea.ptr.index %v82 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_115"("seahorn/lib/bcmp.c":61:20))
  %v145 = sea.const 1 : i64 loc("_116"("seahorn/lib/bcmp.c":61:20))
  %v146 = sea.ptr.dereferenceable %v144, %v145 : !sea.ptr<64>, i64 loc("_116"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v146, ^bb63, ^bb139
^bb63:
  %v147 = sea.load %v83[%v144] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_118"("seahorn/lib/bcmp.c":61:20))
  %v148 = sea.icmp eq, %v143, %v147 : i8 loc(".not2.i28.i.5"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v148, ^bb64, ^bb80(%v144, %v140 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb64:
  %v149 = sea.const 6 : i64 loc("_119"("seahorn/lib/bcmp.c":60:11))
  %v150 = sea.icmp ugt, %v21, %v149 : i64 loc("_119"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v150, ^bb65, ^bb90 loc("seahorn/lib/bcmp.c":60:9)
^bb65:
  %v151 = sea.ptr.index %v30 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_121"("seahorn/lib/bcmp.c":61:11))
  %v152 = sea.const 1 : i64 loc("_122"("seahorn/lib/bcmp.c":61:11))
  %v153 = sea.ptr.dereferenceable %v151, %v152 : !sea.ptr<64>, i64 loc("_122"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v153, ^bb66, ^bb139
^bb66:
  %v154 = sea.load %v80[%v151] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_124"("seahorn/lib/bcmp.c":61:11))
  %v155 = sea.ptr.index %v82 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_125"("seahorn/lib/bcmp.c":61:20))
  %v156 = sea.const 1 : i64 loc("_126"("seahorn/lib/bcmp.c":61:20))
  %v157 = sea.ptr.dereferenceable %v155, %v156 : !sea.ptr<64>, i64 loc("_126"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v157, ^bb67, ^bb139
^bb67:
  %v158 = sea.load %v83[%v155] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_128"("seahorn/lib/bcmp.c":61:20))
  %v159 = sea.icmp eq, %v154, %v158 : i8 loc(".not2.i28.i.6"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v159, ^bb68, ^bb80(%v155, %v151 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb68:
  %v160 = sea.const 7 : i64 loc(".not11"("seahorn/lib/bcmp.c":60:11))
  %v161 = sea.icmp eq, %v21, %v160 : i64 loc(".not11"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v161, ^bb90, ^bb69 loc("seahorn/lib/bcmp.c":60:9)
^bb69:
  %v162 = sea.ptr.index %v30 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_130"("seahorn/lib/bcmp.c":61:11))
  %v163 = sea.const 1 : i64 loc("_131"("seahorn/lib/bcmp.c":61:11))
  %v164 = sea.ptr.dereferenceable %v162, %v163 : !sea.ptr<64>, i64 loc("_131"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v164, ^bb70, ^bb139
^bb70:
  %v165 = sea.load %v80[%v162] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_133"("seahorn/lib/bcmp.c":61:11))
  %v166 = sea.ptr.index %v82 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_134"("seahorn/lib/bcmp.c":61:20))
  %v167 = sea.const 1 : i64 loc("_135"("seahorn/lib/bcmp.c":61:20))
  %v168 = sea.ptr.dereferenceable %v166, %v167 : !sea.ptr<64>, i64 loc("_135"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v168, ^bb71, ^bb139
^bb71:
  %v169 = sea.load %v83[%v166] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_137"("seahorn/lib/bcmp.c":61:20))
  %v170 = sea.icmp eq, %v165, %v169 : i8 loc(".not2.i28.i.7"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v170, ^bb72, ^bb80(%v166, %v162 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb72:
  %v171 = sea.const 8 : i64 loc("_138"("seahorn/lib/bcmp.c":60:11))
  %v172 = sea.icmp ugt, %v21, %v171 : i64 loc("_138"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v172, ^bb73, ^bb90 loc("seahorn/lib/bcmp.c":60:9)
^bb73:
  %v173 = sea.ptr.index %v30 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_140"("seahorn/lib/bcmp.c":61:11))
  %v174 = sea.const 1 : i64 loc("_141"("seahorn/lib/bcmp.c":61:11))
  %v175 = sea.ptr.dereferenceable %v173, %v174 : !sea.ptr<64>, i64 loc("_141"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v175, ^bb74, ^bb139
^bb74:
  %v176 = sea.load %v80[%v173] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_143"("seahorn/lib/bcmp.c":61:11))
  %v177 = sea.ptr.index %v82 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_144"("seahorn/lib/bcmp.c":61:20))
  %v178 = sea.const 1 : i64 loc("_145"("seahorn/lib/bcmp.c":61:20))
  %v179 = sea.ptr.dereferenceable %v177, %v178 : !sea.ptr<64>, i64 loc("_145"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v179, ^bb75, ^bb139
^bb75:
  %v180 = sea.load %v83[%v177] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_147"("seahorn/lib/bcmp.c":61:20))
  %v181 = sea.icmp eq, %v176, %v180 : i8 loc(".not2.i28.i.8"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v181, ^bb76, ^bb80(%v177, %v173 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb76:
  %v182 = sea.const 9 : i64 loc(".not12"("seahorn/lib/bcmp.c":60:11))
  %v183 = sea.icmp eq, %v21, %v182 : i64 loc(".not12"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v183, ^bb90, ^bb77 loc("seahorn/lib/bcmp.c":60:9)
^bb77:
  %v184 = sea.ptr.index %v30 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_149"("seahorn/lib/bcmp.c":61:11))
  %v185 = sea.const 1 : i64 loc("_150"("seahorn/lib/bcmp.c":61:11))
  %v186 = sea.ptr.dereferenceable %v184, %v185 : !sea.ptr<64>, i64 loc("_150"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v186, ^bb78, ^bb139
^bb78:
  %v187 = sea.load %v80[%v184] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_152"("seahorn/lib/bcmp.c":61:11))
  %v188 = sea.ptr.index %v82 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_153"("seahorn/lib/bcmp.c":61:20))
  %v189 = sea.const 1 : i64 loc("_154"("seahorn/lib/bcmp.c":61:20))
  %v190 = sea.ptr.dereferenceable %v188, %v189 : !sea.ptr<64>, i64 loc("_154"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v190, ^bb79, ^bb139
^bb79:
  %v191 = sea.load %v83[%v188] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_156"("seahorn/lib/bcmp.c":61:20))
  %v192 = sea.icmp eq, %v187, %v191 : i8 loc(".not2.i28.i.9"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v192, ^bb82, ^bb80(%v188, %v184 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb80(%v193 : !sea.ptr<64>, %v194 : !sea.ptr<64>):
  %v195 = sea.const 1 : i64 loc("_69"("seahorn/lib/bcmp.c":62:16))
  %v196 = sea.ptr.dereferenceable %v194, %v195 : !sea.ptr<64>, i64 loc("_69"("seahorn/lib/bcmp.c":62:16))
  sea.cond_br %v196, ^bb81, ^bb139
^bb81:
  %v197 = sea.const 1 : i64 loc("_71"("seahorn/lib/bcmp.c":62:24))
  %v198 = sea.ptr.dereferenceable %v193, %v197 : !sea.ptr<64>, i64 loc("_71"("seahorn/lib/bcmp.c":62:24))
  sea.cond_br %v198, ^bb96, ^bb139
^bb82:
  %v199 = sea.const 10 : i64 loc("_157"("seahorn/lib/bcmp.c":67:31))
  %v200 = sea.icmp ugt, %v21, %v199 : i64 loc("_157"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v200, ^bb83, ^bb90 loc("seahorn/lib/bcmp.c":67:3)
^bb83:
  %v201 = sea.ptr.index %v30 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_60"("seahorn/lib/bcmp.c":68:9))
  %v202 = sea.const 1 : i64 loc("_61"("seahorn/lib/bcmp.c":68:9))
  %v203 = sea.ptr.dereferenceable %v201, %v202 : !sea.ptr<64>, i64 loc("_61"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v203, ^bb84, ^bb139
^bb84:
  %v204 = sea.load %v80[%v201] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_161"("seahorn/lib/bcmp.c":68:9))
  %v205 = sea.ptr.index %v82 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_162"("seahorn/lib/bcmp.c":68:18))
  %v206 = sea.const 1 : i64 loc("_163"("seahorn/lib/bcmp.c":68:18))
  %v207 = sea.ptr.dereferenceable %v205, %v206 : !sea.ptr<64>, i64 loc("_163"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v207, ^bb85, ^bb139
^bb85:
  %v208 = sea.load %v83[%v205] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_165"("seahorn/lib/bcmp.c":68:18))
  %v209 = sea.icmp eq, %v204, %v208 : i8 loc(".not.i27.i"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v209, ^bb88, ^bb86 loc("seahorn/lib/bcmp.c":68:9)
^bb86:
  %v210 = sea.const 1 : i64 loc("_167"("seahorn/lib/bcmp.c":69:14))
  %v211 = sea.ptr.dereferenceable %v201, %v210 : !sea.ptr<64>, i64 loc("_167"("seahorn/lib/bcmp.c":69:14))
  sea.cond_br %v211, ^bb87, ^bb139
^bb87:
  %v212 = sea.const 1 : i64 loc("_169"("seahorn/lib/bcmp.c":69:22))
  %v213 = sea.ptr.dereferenceable %v205, %v212 : !sea.ptr<64>, i64 loc("_169"("seahorn/lib/bcmp.c":69:22))
  sea.cond_br %v213, ^bb96, ^bb139
^bb88:
  %v214 = sea.const 11 : i64 loc("exitcond42.not"("seahorn/lib/bcmp.c":67:31))
  %v215 = sea.icmp eq, %v21, %v214 : i64 loc("exitcond42.not"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v215, ^bb90, ^bb89 loc("seahorn/lib/bcmp.c":67:3)
^bb89:
  %v216 = sea.ptr.index %v30 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_159"("seahorn/lib/bcmp.c":68:9))
  %v217 = sea.const 1 : i64 loc("_160"("seahorn/lib/bcmp.c":68:9))
  %v218 = sea.ptr.dereferenceable %v216, %v217 : !sea.ptr<64>, i64 loc("_160"("seahorn/lib/bcmp.c":68:9))
  %v219 = sea.const 1 : i1
  %v220 = sea.xor %v218, %v219 : i1
  sea.assume %v220
  sea.br ^bb139
^bb90:
  sea.br ^bb92
^bb91:
  sea.br ^bb92 loc("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":30:13)
^bb92:
  %v221 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v222 = sea.ptr.cmp eq, %v30, %v221 : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v223 = sea.ptr.null : !sea.ptr<64> loc("_171"("seahorn/lib/utils.c":15:3))
  %v224 = sea.ptr.cmp ne, %v82, %v223 : !sea.ptr<64> loc("_171"("seahorn/lib/utils.c":15:3))
  %v225 = sea.xor %v222, %v224 : i1 loc("_172"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v225, ^bb93, ^bb139 loc("seahorn/lib/utils.c":15:3)
^bb93:
  %v226 = sea.ptr.null : !sea.ptr<64> loc("_173")
  %v227 = sea.ptr.cmp ne, %v30, %v226 : !sea.ptr<64> loc("_173")
  %v228 = sea.and %v227, %v224 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v228, ^bb94, ^bb96 loc("seahorn/lib/utils.c":16:15)
^bb94:
  %v229 = sea.nondet "nd_size_t" [16] : i64 loc("_175"("seahorn/lib/utils.c":17:16))
  %v230 = sea.icmp ult, %v229, %v21 : i64 loc("_176"("seahorn/lib/utils.c":19:14))
  %v231 = sea.const 36028797018963967 : i64 loc("_177"("seahorn/lib/utils.c":19:20))
  %v232 = sea.icmp ult, %v21, %v231 : i64 loc("_177"("seahorn/lib/utils.c":19:20))
  %v233 = sea.and %v232, %v230 : i1 loc("_178"("seahorn/lib/utils.c":19:20))
  sea.assume %v233 loc("seahorn/lib/utils.c":19:5)
  %v234 = sea.ptr.index %v30 [%v229] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_179"("seahorn/lib/utils.c":20:5))
  %v235 = sea.load %v80[%v234] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_180"("seahorn/lib/utils.c":20:5))
  %v236 = sea.ptr.index %v82 [%v229] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_181"("seahorn/lib/utils.c":20:5))
  %v237 = sea.load %v83[%v236] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_182"("seahorn/lib/utils.c":20:5))
  %v238 = sea.icmp eq, %v235, %v237 : i8 loc("_183"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v238, ^bb96, ^bb139 loc("seahorn/lib/utils.c":20:5)
^bb95:
  sea.br ^bb96 loc("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":30:13)
^bb96:
  sea.br ^bb97
^bb97:
  %v239 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v62, ^bb103(%v239 : i1), ^bb98 loc("aws-c-common/source/byte_buf.c":66:32)
^bb98:
  sea.br ^bb99
^bb99:
  sea.br ^bb100
^bb100:
  %v240 = sea.ptr.null : !sea.ptr<64> loc(".not2.i15.i"("aws-c-common/source/byte_buf.c":66:55))
  %v241 = sea.ptr.cmp eq, %v30, %v240 : !sea.ptr<64> loc(".not2.i15.i"("aws-c-common/source/byte_buf.c":66:55))
  %v242 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v241, ^bb103(%v242 : i1), ^bb101 loc("aws-c-common/source/byte_buf.c":66:67)
^bb101:
  sea.br ^bb102
^bb102:
  %v243 = sea.const 1 : i1
  sea.br ^bb103(%v243 : i1)
^bb103(%v244 : i1):
  sea.br ^bb104
^bb104:
  sea.cond_br %v62, ^bb109, ^bb105 loc("aws-c-common/source/byte_buf.c":66:32)
^bb105:
  sea.br ^bb106
^bb106:
  %v245 = sea.ptr.null : !sea.ptr<64> loc(".not2.i12.i")
  %v246 = sea.ptr.cmp ne, %v30, %v245 : !sea.ptr<64> loc(".not2.i12.i")
  %v247 = sea.const 1 : i1 loc("or.cond14.not")
  %v248 = sea.and %v246, %v247 : i1 loc("or.cond14.not")
  sea.cond_br %v248, ^bb107, ^bb139
^bb107:
  sea.br ^bb108
^bb108:
  sea.br ^bb109
^bb109:
  sea.br ^bb110
^bb110:
  %v249 = sea.load %v42[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_197"("aws-c-common/source/byte_buf.c":60:19))
  %v250 = sea.const 0 : i64 loc(".not"("aws-c-common/source/byte_buf.c":60:28))
  %v251 = sea.icmp eq, %v249, %v250 : i64 loc(".not"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v251, ^bb118, ^bb111 loc("aws-c-common/source/byte_buf.c":60:33)
^bb111:
  sea.br ^bb112
^bb112:
  sea.br ^bb113
^bb113:
  sea.br ^bb114
^bb114:
  %v252 = sea.icmp ugt, %v84, %v249 : i64 loc(".not2.i4.i"("aws-c-common/source/byte_buf.c":61:44))
  %v253 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v252, ^bb123(%v253 : i1), ^bb115 loc("aws-c-common/source/byte_buf.c":61:61)
^bb115:
  sea.br ^bb116
^bb116:
  sea.br ^bb117
^bb117:
  %v254 = sea.ptr.null : !sea.ptr<64> loc("_210"("aws-c-common/source/byte_buf.c":61:64))
  %v255 = sea.ptr.cmp ne, %v82, %v254 : !sea.ptr<64> loc("_210"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb123(%v255 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb118:
  sea.br ^bb119
^bb119:
  %v256 = sea.const 0 : i64 loc("_200"("aws-c-common/source/byte_buf.c":60:45))
  %v257 = sea.icmp eq, %v84, %v256 : i64 loc("_200"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v257, ^bb120, ^bb122 loc("aws-c-common/source/byte_buf.c":60:50)
^bb120:
  sea.br ^bb121
^bb121:
  %v258 = sea.ptr.null : !sea.ptr<64> loc("_203"("aws-c-common/source/byte_buf.c":60:65))
  %v259 = sea.ptr.cmp eq, %v82, %v258 : !sea.ptr<64> loc("_203"("aws-c-common/source/byte_buf.c":60:65))
  %v260 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v259, ^bb123(%v260 : i1), ^bb122 loc("aws-c-common/source/byte_buf.c":60:74)
^bb122:
  %v261 = sea.const 0 : i1
  sea.br ^bb123(%v261 : i1)
^bb123(%v262 : i1):
  sea.br ^bb124
^bb124:
  sea.cond_br %v251, ^bb130, ^bb125 loc("aws-c-common/source/byte_buf.c":60:33)
^bb125:
  sea.br ^bb126
^bb126:
  sea.br ^bb127
^bb127:
  %v263 = sea.icmp ule, %v84, %v249 : i64 loc(".not2.i.i")
  %v264 = sea.const 1 : i1 loc("or.cond18.not")
  %v265 = sea.const 0 : i1 loc("or.cond18.not")
  %v266 = sea.select %v264, %v263, %v265 : i1 loc("or.cond18.not")
  sea.cond_br %v266, ^bb128, ^bb139
^bb128:
  sea.br ^bb129
^bb129:
  %v267 = sea.ptr.null : !sea.ptr<64> loc("_224")
  %v268 = sea.ptr.cmp ne, %v82, %v267 : !sea.ptr<64> loc("_224")
  %v269 = sea.const 1 : i1 loc("or.cond11")
  %v270 = sea.const 0 : i1 loc("or.cond11")
  %v271 = sea.select %v269, %v268, %v270 : i1 loc("or.cond11")
  sea.cond_br %v271, ^bb135, ^bb139
^bb130:
  sea.br ^bb131
^bb131:
  %v272 = sea.const 0 : i64 loc("_215"("aws-c-common/source/byte_buf.c":60:45))
  %v273 = sea.icmp eq, %v84, %v272 : i64 loc("_215"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v273, ^bb132, ^bb134 loc("aws-c-common/source/byte_buf.c":60:50)
^bb132:
  sea.br ^bb133
^bb133:
  %v274 = sea.ptr.null : !sea.ptr<64> loc("_218"("aws-c-common/source/byte_buf.c":60:65))
  %v275 = sea.ptr.cmp eq, %v82, %v274 : !sea.ptr<64> loc("_218"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v275, ^bb135, ^bb134 loc("aws-c-common/source/byte_buf.c":60:74)
^bb134:
  sea.br ^bb139
^bb135:
  sea.cond_br %v62, ^bb137, ^bb136 loc("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":38:9)
^bb136:
  %v276 = sea.mem.is_modified %v80[%v30] : !sea.mem<!sea.ptr<64>, i8> loc("_226"("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":39:9))
  %v277 = sea.const 1 : i1 loc("_227"("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":39:9))
  %v278 = sea.xor %v276, %v277 : i1 loc("_227"("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":39:9))
  %v279 = sea.mem.is_modified %v80[%v30] : !sea.mem<!sea.ptr<64>, i8> loc("_228"("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":39:9))
  sea.cond_br %v279, ^bb139, ^bb137 loc("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":39:9)
^bb137:
  %v280 = sea.mem.is_modified %v81[%v8] : !sea.mem<!sea.ptr<64>, i8> loc("_230"("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":41:5))
  %v281 = sea.const 1 : i1 loc("_231"("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":41:5))
  %v282 = sea.xor %v280, %v281 : i1 loc("_231"("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":41:5))
  %v283 = sea.mem.is_modified %v81[%v8] : !sea.mem<!sea.ptr<64>, i8> loc("_232"("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":41:5))
  sea.cond_br %v283, ^bb139, ^bb138 loc("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":41:5)
^bb138:
  %v284 = sea.mem.is_modified %v83[%v82] : !sea.mem<!sea.ptr<64>, i8> loc("_234"("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":42:5))
  %v285 = sea.const 1 : i1 loc("_235"("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":42:5))
  %v286 = sea.xor %v284, %v285 : i1 loc("_235"("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":42:5))
  %v287 = sea.mem.is_modified %v83[%v82] : !sea.mem<!sea.ptr<64>, i8> loc("_236"("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":42:5))
  sea.assume %v287 loc("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":42:5)
  sea.br ^bb139 loc("seahorn/jobs2/byte_cursor_eq_byte_buf2/aws_byte_cursor_eq_byte_buf_harness2.c":42:5)
^bb139:
  sea.br ^bb140
^bb140:
  %v288 = sea.const 0 : i1
  sea.assert %v288
  sea.halt
}
