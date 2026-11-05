// Exported from SeaHorn (byte_buf_append2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm15")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm16")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm17")
  %v3 = sea.mem.nondet "region.64" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm18")
  %v4 = sea.const 32 : i64 loc("_0")
  %v5 = sea.alloca %v4 align 8 [4] : i64 -> !sea.ptr<64> loc("_0")
  %v6 = sea.const 16 : i64 loc("_1")
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
  sea.br ^bb9
^bb9:
  sea.cond_br %v29, ^bb17, ^bb10 loc("aws-c-common/source/byte_buf.c":60:33)
^bb10:
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  sea.br ^bb13
^bb13:
  %v46 = sea.icmp ugt, %v20, %v21 : i64 loc(".not2.i7.i"("aws-c-common/source/byte_buf.c":61:44))
  %v47 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v46, ^bb22(%v47 : i1), ^bb14 loc("aws-c-common/source/byte_buf.c":61:61)
^bb14:
  sea.br ^bb15
^bb15:
  sea.br ^bb16
^bb16:
  %v48 = sea.ptr.null : !sea.ptr<64> loc("_33"("aws-c-common/source/byte_buf.c":61:64))
  %v49 = sea.ptr.cmp ne, %v40, %v48 : !sea.ptr<64> loc("_33"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb22(%v49 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb17:
  sea.br ^bb18
^bb18:
  %v50 = sea.const 0 : i64 loc("_23"("aws-c-common/source/byte_buf.c":60:45))
  %v51 = sea.icmp eq, %v20, %v50 : i64 loc("_23"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v51, ^bb19, ^bb21 loc("aws-c-common/source/byte_buf.c":60:50)
^bb19:
  sea.br ^bb20
^bb20:
  %v52 = sea.ptr.null : !sea.ptr<64> loc("_26"("aws-c-common/source/byte_buf.c":60:65))
  %v53 = sea.ptr.cmp eq, %v40, %v52 : !sea.ptr<64> loc("_26"("aws-c-common/source/byte_buf.c":60:65))
  %v54 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v53, ^bb22(%v54 : i1), ^bb21 loc("aws-c-common/source/byte_buf.c":60:74)
^bb21:
  %v55 = sea.const 0 : i1
  sea.br ^bb22(%v55 : i1)
^bb22(%v56 : i1):
  sea.assume %v56 loc("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":13:5)
  %v57 = sea.nondet "nd_size_t" [11] : i64 loc("_35"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb23
^bb23:
  %v58 = sea.store %v2[%v7], %v57 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb24
^bb24:
  %v59 = sea.const 11 : i64 loc("_38"("seahorn/lib/byte_buf_helper.c":33:24))
  %v60 = sea.icmp ult, %v57, %v59 : i64 loc("_38"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v60 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v61 = sea.nondet "nd_malloc_is_fail" [12] : i1 loc("_39"("seahorn/lib/sea_allocators.c":11:10))
  %v62 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v61, ^bb26(%v39, %v62 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb25 loc("seahorn/lib/sea_allocators.c":11:10)
^bb25:
  %v63 = sea.const 10 : i64 loc("malloc25.i1")
  %v64 = sea.alloca %v63 align 16 [13] : i64 -> !sea.ptr<64> loc("malloc25.i1")
  sea.br ^bb26(%v39, %v64 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb26(%v65 : !sea.mem<!sea.ptr<64>, i8>, %v66 : !sea.ptr<64>):
  %v67 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v68 = sea.memhavoc %v65[%v66], %v67 [14] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v69 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_42"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb27
^bb27:
  %v70 = sea.store %v58[%v69], %v66 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  sea.br ^bb28
^bb28:
  %v71 = sea.const 0 : i64 loc("_44"("aws-c-common/source/byte_buf.c":66:26))
  %v72 = sea.icmp eq, %v57, %v71 : i64 loc("_44"("aws-c-common/source/byte_buf.c":66:26))
  %v73 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v72, ^bb34(%v73 : i1), ^bb29 loc("aws-c-common/source/byte_buf.c":66:32)
^bb29:
  sea.br ^bb30
^bb30:
  sea.br ^bb31
^bb31:
  %v74 = sea.ptr.null : !sea.ptr<64> loc(".not2.i18.i"("aws-c-common/source/byte_buf.c":66:55))
  %v75 = sea.ptr.cmp eq, %v66, %v74 : !sea.ptr<64> loc(".not2.i18.i"("aws-c-common/source/byte_buf.c":66:55))
  %v76 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v75, ^bb34(%v76 : i1), ^bb32 loc("aws-c-common/source/byte_buf.c":66:67)
^bb32:
  sea.br ^bb33
^bb33:
  %v77 = sea.const 1 : i1
  sea.br ^bb34(%v77 : i1)
^bb34(%v78 : i1):
  sea.assume %v78 loc("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":17:5)
  sea.tracking_on loc("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":20:5)
  sea.br ^bb35
^bb35:
  sea.br ^bb36
^bb36:
  sea.br ^bb37
^bb37:
  %v79 = sea.sub %v21, %v20 : i64 loc("_54"("aws-c-common/source/byte_buf.c":601:22))
  %v80 = sea.icmp ult, %v79, %v57 : i64 loc(".not"("aws-c-common/source/byte_buf.c":601:32))
  sea.cond_br %v80, ^bb51, ^bb38 loc("aws-c-common/source/byte_buf.c":601:9)
^bb38:
  sea.br ^bb39
^bb39:
  %v81 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":607:9)
  sea.cond_br %v72, ^bb50(%v68, %v81, %v20 : !sea.mem<!sea.ptr<64>, i8>, i64, i64), ^bb40 loc("aws-c-common/source/byte_buf.c":607:9)
^bb40:
  sea.br ^bb41
^bb41:
  sea.br ^bb42
^bb42:
  %v82 = sea.ptr.index %v40 [%v20] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_60"("aws-c-common/source/byte_buf.c":611:27))
  sea.br ^bb43
^bb43:
  sea.br ^bb44
^bb44:
  %v83 = sea.ptr.dereferenceable %v82, %v57 : !sea.ptr<64>, i64 loc("_63"("seahorn/lib/bcmp.c":161:3))
  %v84 = sea.ptr.dereferenceable %v82, %v57 : !sea.ptr<64>, i64 loc("_64"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v84, ^bb45, ^bb96 loc("seahorn/lib/bcmp.c":161:3)
^bb45:
  %v85 = sea.ptr.dereferenceable %v66, %v57 : !sea.ptr<64>, i64 loc("_66"("seahorn/lib/bcmp.c":162:3))
  %v86 = sea.ptr.dereferenceable %v66, %v57 : !sea.ptr<64>, i64 loc("_67"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v86, ^bb46, ^bb96 loc("seahorn/lib/bcmp.c":162:3)
^bb46:
  %v87 = sea.memmove %v68[%v82], %v68[%v66], %v57 inplace src_align 16 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb47
^bb47:
  sea.br ^bb48
^bb48:
  sea.br ^bb49
^bb49:
  %v88 = sea.add %v57, %v20 : i64 loc("_71"("aws-c-common/source/byte_buf.c":612:17))
  %v89 = sea.load %v58[%v7] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc(".pre"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":25:9))
  sea.br ^bb50(%v87, %v89, %v88 : !sea.mem<!sea.ptr<64>, i8>, i64, i64) loc("aws-c-common/source/byte_buf.c":613:5)
^bb50(%v90 : !sea.mem<!sea.ptr<64>, i8>, %v91 : i64, %v92 : i64):
  %v93 = sea.add %v91, %v20 : i64 loc("_75"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":25:9))
  %v94 = sea.icmp eq, %v92, %v93 : i64 loc("_76"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":25:9))
  sea.cond_br %v94, ^bb53(%v90, %v91, %v92 : !sea.mem<!sea.ptr<64>, i8>, i64, i64), ^bb96 loc("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":25:9)
^bb51:
  %v95 = sea.mem.is_modified %v25[%v5] : !sea.mem<!sea.ptr<64>, i8> loc("_78"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":28:9))
  %v96 = sea.const 1 : i1 loc("_79"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":28:9))
  %v97 = sea.xor %v95, %v96 : i1 loc("_79"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":28:9))
  %v98 = sea.mem.is_modified %v25[%v5] : !sea.mem<!sea.ptr<64>, i8> loc("_80"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":28:9))
  sea.cond_br %v98, ^bb96, ^bb52 loc("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":28:9)
^bb52:
  %v99 = sea.mem.is_modified %v68[%v40] : !sea.mem<!sea.ptr<64>, i8> loc("_82"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":29:9))
  %v100 = sea.const 1 : i1 loc("_83"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":29:9))
  %v101 = sea.xor %v99, %v100 : i1 loc("_83"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":29:9))
  %v102 = sea.mem.is_modified %v68[%v40] : !sea.mem<!sea.ptr<64>, i8> loc("_84"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":29:9))
  %v103 = sea.const 1 : i64 loc("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":29:9)
  sea.cond_br %v102, ^bb96, ^bb53(%v68, %v103, %v20 : !sea.mem<!sea.ptr<64>, i8>, i64, i64) loc("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":29:9)
^bb53(%v104 : !sea.mem<!sea.ptr<64>, i8>, %v105 : i64, %v106 : i64):
  sea.br ^bb54
^bb54:
  sea.cond_br %v29, ^bb62, ^bb55 loc("aws-c-common/source/byte_buf.c":60:33)
^bb55:
  sea.br ^bb56
^bb56:
  sea.br ^bb57
^bb57:
  sea.br ^bb58
^bb58:
  %v107 = sea.icmp ugt, %v106, %v21 : i64 loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":61:44))
  %v108 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v107, ^bb67(%v108 : i1), ^bb59 loc("aws-c-common/source/byte_buf.c":61:61)
^bb59:
  sea.br ^bb60
^bb60:
  sea.br ^bb61
^bb61:
  %v109 = sea.load %v42[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_102"("aws-c-common/source/byte_buf.c":61:64))
  %v110 = sea.ptr.null : !sea.ptr<64> loc("_103"("aws-c-common/source/byte_buf.c":61:64))
  %v111 = sea.ptr.cmp ne, %v109, %v110 : !sea.ptr<64> loc("_103"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb67(%v111 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb62:
  sea.br ^bb63
^bb63:
  %v112 = sea.const 0 : i64 loc("_91"("aws-c-common/source/byte_buf.c":60:45))
  %v113 = sea.icmp eq, %v106, %v112 : i64 loc("_91"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v113, ^bb64, ^bb66 loc("aws-c-common/source/byte_buf.c":60:50)
^bb64:
  sea.br ^bb65
^bb65:
  %v114 = sea.load %v42[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_94"("aws-c-common/source/byte_buf.c":60:58))
  %v115 = sea.ptr.null : !sea.ptr<64> loc("_95"("aws-c-common/source/byte_buf.c":60:65))
  %v116 = sea.ptr.cmp eq, %v114, %v115 : !sea.ptr<64> loc("_95"("aws-c-common/source/byte_buf.c":60:65))
  %v117 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v116, ^bb67(%v117 : i1), ^bb66 loc("aws-c-common/source/byte_buf.c":60:74)
^bb66:
  %v118 = sea.const 0 : i1
  sea.br ^bb67(%v118 : i1)
^bb67(%v119 : i1):
  sea.br ^bb68
^bb68:
  sea.cond_br %v29, ^bb74, ^bb69 loc("aws-c-common/source/byte_buf.c":60:33)
^bb69:
  sea.br ^bb70
^bb70:
  sea.br ^bb71
^bb71:
  %v120 = sea.icmp ule, %v106, %v21 : i64 loc(".not2.i.i")
  %v121 = sea.const 1 : i1 loc("or.cond11.not")
  %v122 = sea.const 0 : i1 loc("or.cond11.not")
  %v123 = sea.select %v121, %v120, %v122 : i1 loc("or.cond11.not")
  sea.cond_br %v123, ^bb72, ^bb96
^bb72:
  sea.br ^bb73
^bb73:
  %v124 = sea.load %v42[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_118")
  %v125 = sea.ptr.null : !sea.ptr<64> loc("_119")
  %v126 = sea.ptr.cmp ne, %v124, %v125 : !sea.ptr<64> loc("_119")
  %v127 = sea.const 1 : i1 loc("or.cond")
  %v128 = sea.const 0 : i1 loc("or.cond")
  %v129 = sea.select %v127, %v126, %v128 : i1 loc("or.cond")
  sea.cond_br %v129, ^bb79, ^bb96
^bb74:
  sea.br ^bb75
^bb75:
  %v130 = sea.const 0 : i64 loc("_108"("aws-c-common/source/byte_buf.c":60:45))
  %v131 = sea.icmp eq, %v106, %v130 : i64 loc("_108"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v131, ^bb76, ^bb78 loc("aws-c-common/source/byte_buf.c":60:50)
^bb76:
  sea.br ^bb77
^bb77:
  %v132 = sea.load %v42[%v41] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_111"("aws-c-common/source/byte_buf.c":60:58))
  %v133 = sea.ptr.null : !sea.ptr<64> loc("_112"("aws-c-common/source/byte_buf.c":60:65))
  %v134 = sea.ptr.cmp eq, %v132, %v133 : !sea.ptr<64> loc("_112"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v134, ^bb79, ^bb78 loc("aws-c-common/source/byte_buf.c":60:74)
^bb78:
  sea.br ^bb96
^bb79:
  sea.br ^bb80
^bb80:
  %v135 = sea.const 0 : i64 loc("_121"("aws-c-common/source/byte_buf.c":66:26))
  %v136 = sea.icmp eq, %v105, %v135 : i64 loc("_121"("aws-c-common/source/byte_buf.c":66:26))
  %v137 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v136, ^bb86(%v137 : i1), ^bb81 loc("aws-c-common/source/byte_buf.c":66:32)
^bb81:
  sea.br ^bb82
^bb82:
  sea.br ^bb83
^bb83:
  %v138 = sea.load %v70[%v69] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_125"("aws-c-common/source/byte_buf.c":66:63))
  %v139 = sea.ptr.null : !sea.ptr<64> loc(".not2.i14.i"("aws-c-common/source/byte_buf.c":66:55))
  %v140 = sea.ptr.cmp eq, %v138, %v139 : !sea.ptr<64> loc(".not2.i14.i"("aws-c-common/source/byte_buf.c":66:55))
  %v141 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v140, ^bb86(%v141 : i1), ^bb84 loc("aws-c-common/source/byte_buf.c":66:67)
^bb84:
  sea.br ^bb85
^bb85:
  %v142 = sea.const 1 : i1
  sea.br ^bb86(%v142 : i1)
^bb86(%v143 : i1):
  sea.br ^bb87
^bb87:
  sea.cond_br %v136, ^bb92, ^bb88 loc("aws-c-common/source/byte_buf.c":66:32)
^bb88:
  sea.br ^bb89
^bb89:
  %v144 = sea.load %v70[%v69] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_132")
  %v145 = sea.ptr.null : !sea.ptr<64> loc(".not2.i11.i")
  %v146 = sea.ptr.cmp ne, %v144, %v145 : !sea.ptr<64> loc(".not2.i11.i")
  %v147 = sea.const 1 : i1 loc("or.cond15.not")
  %v148 = sea.const 0 : i1 loc("or.cond15.not")
  %v149 = sea.select %v147, %v146, %v148 : i1 loc("or.cond15.not")
  sea.cond_br %v149, ^bb90, ^bb96
^bb90:
  sea.br ^bb91
^bb91:
  sea.br ^bb92
^bb92:
  %v150 = sea.load %v45[%v43] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_135"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":34:5))
  %v151 = sea.mem.is_modified %v10[%v150] : !sea.mem<!sea.ptr<64>, i8> loc("_136"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":34:5))
  %v152 = sea.const 1 : i1 loc("_137"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":34:5))
  %v153 = sea.xor %v151, %v152 : i1 loc("_137"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":34:5))
  %v154 = sea.mem.is_modified %v10[%v150] : !sea.mem<!sea.ptr<64>, i8> loc("_138"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":34:5))
  sea.cond_br %v154, ^bb96, ^bb93 loc("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":34:5)
^bb93:
  %v155 = sea.load %v27[%v26] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_140"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":35:5))
  %v156 = sea.icmp eq, %v155, %v21 : i64 loc("_141"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":35:5))
  sea.cond_br %v156, ^bb94, ^bb96 loc("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":35:5)
^bb94:
  %v157 = sea.mem.is_modified %v58[%v7] : !sea.mem<!sea.ptr<64>, i8> loc("_143"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":36:5))
  %v158 = sea.const 1 : i1 loc("_144"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":36:5))
  %v159 = sea.xor %v157, %v158 : i1 loc("_144"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":36:5))
  %v160 = sea.mem.is_modified %v58[%v7] : !sea.mem<!sea.ptr<64>, i8> loc("_145"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":36:5))
  sea.cond_br %v160, ^bb96, ^bb95 loc("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":36:5)
^bb95:
  %v161 = sea.load %v70[%v69] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_147"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":37:5))
  %v162 = sea.mem.is_modified %v104[%v161] : !sea.mem<!sea.ptr<64>, i8> loc("_148"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":37:5))
  %v163 = sea.const 1 : i1 loc("_149"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":37:5))
  %v164 = sea.xor %v162, %v163 : i1 loc("_149"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":37:5))
  %v165 = sea.mem.is_modified %v104[%v161] : !sea.mem<!sea.ptr<64>, i8> loc("_150"("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":37:5))
  sea.assume %v165 loc("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":37:5)
  sea.br ^bb96 loc("seahorn/jobs2/byte_buf_append2/aws_byte_buf_append_harness2.c":37:5)
^bb96:
  sea.br ^bb97
^bb97:
  %v166 = sea.const 0 : i1
  sea.assert %v166
  sea.halt
}
