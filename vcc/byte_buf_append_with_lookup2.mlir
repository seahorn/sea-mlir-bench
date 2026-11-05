// Exported from SeaHorn (byte_buf_append_with_lookup2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm26")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm27")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm28")
  %v3 = sea.mem.nondet "region.66" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm29")
  %v4 = sea.mem.nondet "region.65" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm30")
  %v5 = sea.mem.nondet "region.64" [5] : !sea.mem<!sea.ptr<64>, i8> loc("sm31")
  %v6 = sea.const 32 : i64 loc("_0")
  %v7 = sea.alloca %v6 align 8 [6] : i64 -> !sea.ptr<64> loc("_0")
  %v8 = sea.const 16 : i64 loc("_1")
  %v9 = sea.alloca %v8 align 8 [7] : i64 -> !sea.ptr<64> loc("_1")
  %v10 = sea.const 256 : i64 loc("_2")
  %v11 = sea.alloca %v10 align 16 [8] : i64 -> !sea.ptr<64> loc("_2")
  %v12 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v13 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v14 = sea.store %v0[%v12], %v13 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v15 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_3")
  %v16 = sea.ptr.index %v15 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_3")
  %v17 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v18 = sea.store %v14[%v16], %v17 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v19 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_4")
  %v20 = sea.ptr.index %v19 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_4")
  %v21 = sea.const 0 : i8
  %v22 = sea.const 24 : i64
  %v23 = sea.memset %v18[%v20], %v21, %v22 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v24 = sea.nondet "nd_size_t" [9] : i64 loc("_5"("seahorn/lib/byte_buf_helper.c":19:18))
  %v25 = sea.nondet "nd_size_t" [10] : i64 loc("_6"("seahorn/lib/byte_buf_helper.c":20:18))
  %v26 = sea.icmp ule, %v24, %v25 : i64 loc("_7"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v26 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v27 = sea.const 11 : i64 loc("_8"("seahorn/lib/byte_buf_helper.c":22:16))
  %v28 = sea.icmp ult, %v25, %v27 : i64 loc("_8"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v28 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb1
^bb1:
  %v29 = sea.store %v1[%v7], %v24 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v30 = sea.ptr.index %v7 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_10"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb2
^bb2:
  %v31 = sea.store %v29[%v30], %v25 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v32 = sea.const 0 : i64 loc("_12"("seahorn/lib/proof_allocators.c":21:15))
  %v33 = sea.icmp eq, %v25, %v32 : i64 loc("_12"("seahorn/lib/proof_allocators.c":21:15))
  %v34 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v33, ^bb6(%v4, %v34 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/proof_allocators.c":21:10)
^bb3:
  %v35 = sea.nondet "nd_malloc_is_fail" [11] : i1 loc("_14"("seahorn/lib/sea_allocators.c":11:10))
  %v36 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v35, ^bb5(%v4, %v36 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/sea_allocators.c":11:10)
^bb4:
  %v37 = sea.const 1 : i64 loc("malloc.i")
  %v38 = sea.mul %v25, %v37 : i64 loc("malloc.i")
  %v39 = sea.alloca %v38 align 16 [12] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb5(%v4, %v39 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb5(%v40 : !sea.mem<!sea.ptr<64>, i8>, %v41 : !sea.ptr<64>):
  %v42 = sea.memhavoc %v40[%v41], %v25 [13] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb6(%v42, %v41 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb6(%v43 : !sea.mem<!sea.ptr<64>, i8>, %v44 : !sea.ptr<64>):
  %v45 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_18"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb7
^bb7:
  %v46 = sea.store %v31[%v45], %v44 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v47 = sea.ptr.index %v7 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_20"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb8
^bb8:
  %v48 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v49 = sea.store %v46[%v47], %v48 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  sea.br ^bb9
^bb9:
  sea.assume %v28 loc("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":13:5)
  sea.br ^bb10
^bb10:
  sea.cond_br %v33, ^bb18, ^bb11 loc("aws-c-common/source/byte_buf.c":60:33)
^bb11:
  sea.br ^bb12
^bb12:
  sea.br ^bb13
^bb13:
  sea.br ^bb14
^bb14:
  %v50 = sea.icmp ugt, %v24, %v25 : i64 loc(".not2.i10.i"("aws-c-common/source/byte_buf.c":61:44))
  %v51 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v50, ^bb23(%v51 : i1), ^bb15 loc("aws-c-common/source/byte_buf.c":61:61)
^bb15:
  sea.br ^bb16
^bb16:
  sea.br ^bb17
^bb17:
  %v52 = sea.ptr.null : !sea.ptr<64> loc("_34"("aws-c-common/source/byte_buf.c":61:64))
  %v53 = sea.ptr.cmp ne, %v44, %v52 : !sea.ptr<64> loc("_34"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb23(%v53 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb18:
  sea.br ^bb19
^bb19:
  %v54 = sea.const 0 : i64 loc("_24"("aws-c-common/source/byte_buf.c":60:45))
  %v55 = sea.icmp eq, %v24, %v54 : i64 loc("_24"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v55, ^bb20, ^bb22 loc("aws-c-common/source/byte_buf.c":60:50)
^bb20:
  sea.br ^bb21
^bb21:
  %v56 = sea.ptr.null : !sea.ptr<64> loc("_27"("aws-c-common/source/byte_buf.c":60:65))
  %v57 = sea.ptr.cmp eq, %v44, %v56 : !sea.ptr<64> loc("_27"("aws-c-common/source/byte_buf.c":60:65))
  %v58 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v57, ^bb23(%v58 : i1), ^bb22 loc("aws-c-common/source/byte_buf.c":60:74)
^bb22:
  %v59 = sea.const 0 : i1
  sea.br ^bb23(%v59 : i1)
^bb23(%v60 : i1):
  sea.assume %v60 loc("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":14:5)
  %v61 = sea.nondet "nd_size_t" [14] : i64 loc("_36"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb24
^bb24:
  %v62 = sea.store %v2[%v9], %v61 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb25
^bb25:
  %v63 = sea.const 11 : i64 loc("_39"("seahorn/lib/byte_buf_helper.c":33:24))
  %v64 = sea.icmp ult, %v61, %v63 : i64 loc("_39"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v64 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v65 = sea.nondet "nd_malloc_is_fail" [15] : i1 loc("_40"("seahorn/lib/sea_allocators.c":11:10))
  %v66 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v65, ^bb27(%v3, %v66 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb26 loc("seahorn/lib/sea_allocators.c":11:10)
^bb26:
  %v67 = sea.const 10 : i64 loc("malloc30.i1")
  %v68 = sea.alloca %v67 align 16 [16] : i64 -> !sea.ptr<64> loc("malloc30.i1")
  sea.br ^bb27(%v3, %v68 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb27(%v69 : !sea.mem<!sea.ptr<64>, i8>, %v70 : !sea.ptr<64>):
  %v71 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v72 = sea.memhavoc %v69[%v70], %v71 [17] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v73 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_43"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb28
^bb28:
  %v74 = sea.store %v62[%v73], %v70 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  sea.br ^bb29
^bb29:
  sea.assume %v64 loc("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":18:5)
  sea.br ^bb30
^bb30:
  %v75 = sea.const 0 : i64 loc("_45"("aws-c-common/source/byte_buf.c":66:26))
  %v76 = sea.icmp eq, %v61, %v75 : i64 loc("_45"("aws-c-common/source/byte_buf.c":66:26))
  %v77 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v76, ^bb36(%v77 : i1), ^bb31 loc("aws-c-common/source/byte_buf.c":66:32)
^bb31:
  sea.br ^bb32
^bb32:
  sea.br ^bb33
^bb33:
  %v78 = sea.ptr.null : !sea.ptr<64> loc(".not2.i21.i"("aws-c-common/source/byte_buf.c":66:55))
  %v79 = sea.ptr.cmp eq, %v70, %v78 : !sea.ptr<64> loc(".not2.i21.i"("aws-c-common/source/byte_buf.c":66:55))
  %v80 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v79, ^bb36(%v80 : i1), ^bb34 loc("aws-c-common/source/byte_buf.c":66:67)
^bb34:
  sea.br ^bb35
^bb35:
  %v81 = sea.const 1 : i1
  sea.br ^bb36(%v81 : i1)
^bb36(%v82 : i1):
  sea.assume %v82 loc("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":19:5)
  sea.tracking_on loc("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":22:5)
  %v83 = sea.const 256 : i64 loc("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":33:5)
  %v84 = sea.memhavoc %v5[%v11], %v83 [18] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":33:5)
  sea.br ^bb37
^bb37:
  sea.br ^bb38
^bb38:
  sea.br ^bb39
^bb39:
  %v85 = sea.sub %v25, %v24 : i64 loc("_55"("aws-c-common/source/byte_buf.c":629:22))
  %v86 = sea.icmp ult, %v85, %v61 : i64 loc("_56"("aws-c-common/source/byte_buf.c":629:32))
  sea.cond_br %v86, ^bb128, ^bb40 loc("aws-c-common/source/byte_buf.c":629:9)
^bb40:
  %v87 = sea.ptr.index %v44 [%v24] strides [1] offset 0 : !sea.ptr<64>, i64 loc("_57")
  sea.br ^bb41
^bb41:
  sea.cond_br %v76, ^bb122(%v43 : !sea.mem<!sea.ptr<64>, i8>), ^bb42 loc("aws-c-common/source/byte_buf.c":635:5)
^bb42:
  sea.br ^bb43
^bb43:
  %v88 = sea.const 1 : i64 loc("_59"("aws-c-common/source/byte_buf.c":636:48))
  %v89 = sea.ptr.dereferenceable %v70, %v88 : !sea.ptr<64>, i64 loc("_59"("aws-c-common/source/byte_buf.c":636:48))
  sea.cond_br %v89, ^bb44, ^bb174
^bb44:
  %v90 = sea.load %v72[%v70] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_61"("aws-c-common/source/byte_buf.c":636:48))
  %v91 = sea.zext %v90 : i8 to i64 loc("_62"("aws-c-common/source/byte_buf.c":636:35))
  %v92 = sea.ptr.index %v11 [%v91] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_63"("aws-c-common/source/byte_buf.c":636:35))
  %v93 = sea.const 1 : i64 loc("_64"("aws-c-common/source/byte_buf.c":636:35))
  %v94 = sea.ptr.dereferenceable %v92, %v93 : !sea.ptr<64>, i64 loc("_64"("aws-c-common/source/byte_buf.c":636:35))
  sea.cond_br %v94, ^bb45, ^bb174
^bb45:
  %v95 = sea.load %v84[%v92] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_66"("aws-c-common/source/byte_buf.c":636:35))
  sea.br ^bb46
^bb46:
  sea.br ^bb47
^bb47:
  %v96 = sea.const 1 : i64 loc("_69"("aws-c-common/source/byte_buf.c":636:33))
  %v97 = sea.ptr.dereferenceable %v87, %v96 : !sea.ptr<64>, i64 loc("_69"("aws-c-common/source/byte_buf.c":636:33))
  sea.cond_br %v97, ^bb48, ^bb174
^bb48:
  %v98 = sea.store %v43[%v87], %v95 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("aws-c-common/source/byte_buf.c":636:33)
  sea.br ^bb49
^bb49:
  %v99 = sea.const 1 : i64 loc("exitcond.not.1"("aws-c-common/source/byte_buf.c":635:26))
  %v100 = sea.icmp eq, %v61, %v99 : i64 loc("exitcond.not.1"("aws-c-common/source/byte_buf.c":635:26))
  sea.cond_br %v100, ^bb122(%v98 : !sea.mem<!sea.ptr<64>, i8>), ^bb50 loc("aws-c-common/source/byte_buf.c":635:5)
^bb50:
  sea.br ^bb51
^bb51:
  %v101 = sea.ptr.index %v70 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_73"("aws-c-common/source/byte_buf.c":636:48))
  %v102 = sea.const 1 : i64 loc("_74"("aws-c-common/source/byte_buf.c":636:48))
  %v103 = sea.ptr.dereferenceable %v101, %v102 : !sea.ptr<64>, i64 loc("_74"("aws-c-common/source/byte_buf.c":636:48))
  sea.cond_br %v103, ^bb52, ^bb174
^bb52:
  %v104 = sea.load %v72[%v101] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_76"("aws-c-common/source/byte_buf.c":636:48))
  %v105 = sea.zext %v104 : i8 to i64 loc("_77"("aws-c-common/source/byte_buf.c":636:35))
  %v106 = sea.ptr.index %v11 [%v105] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_78"("aws-c-common/source/byte_buf.c":636:35))
  %v107 = sea.const 1 : i64 loc("_79"("aws-c-common/source/byte_buf.c":636:35))
  %v108 = sea.ptr.dereferenceable %v106, %v107 : !sea.ptr<64>, i64 loc("_79"("aws-c-common/source/byte_buf.c":636:35))
  sea.cond_br %v108, ^bb53, ^bb174
^bb53:
  %v109 = sea.load %v84[%v106] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_81"("aws-c-common/source/byte_buf.c":636:35))
  sea.br ^bb54
^bb54:
  sea.br ^bb55
^bb55:
  %v110 = sea.const 1 : i64 loc("_84"("aws-c-common/source/byte_buf.c":636:9))
  %v111 = sea.ptr.add %v87, %v110 : !sea.ptr<64>, i64 loc("_84"("aws-c-common/source/byte_buf.c":636:9))
  %v112 = sea.const 1 : i64 loc("_85"("aws-c-common/source/byte_buf.c":636:33))
  %v113 = sea.ptr.dereferenceable %v111, %v112 : !sea.ptr<64>, i64 loc("_85"("aws-c-common/source/byte_buf.c":636:33))
  sea.cond_br %v113, ^bb56, ^bb174
^bb56:
  %v114 = sea.store %v98[%v111], %v109 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("aws-c-common/source/byte_buf.c":636:33)
  sea.br ^bb57
^bb57:
  %v115 = sea.const 2 : i64 loc("exitcond.not.2"("aws-c-common/source/byte_buf.c":635:26))
  %v116 = sea.icmp eq, %v61, %v115 : i64 loc("exitcond.not.2"("aws-c-common/source/byte_buf.c":635:26))
  sea.cond_br %v116, ^bb122(%v114 : !sea.mem<!sea.ptr<64>, i8>), ^bb58 loc("aws-c-common/source/byte_buf.c":635:5)
^bb58:
  sea.br ^bb59
^bb59:
  %v117 = sea.ptr.index %v70 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_89"("aws-c-common/source/byte_buf.c":636:48))
  %v118 = sea.const 1 : i64 loc("_90"("aws-c-common/source/byte_buf.c":636:48))
  %v119 = sea.ptr.dereferenceable %v117, %v118 : !sea.ptr<64>, i64 loc("_90"("aws-c-common/source/byte_buf.c":636:48))
  sea.cond_br %v119, ^bb60, ^bb174
^bb60:
  %v120 = sea.load %v72[%v117] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_92"("aws-c-common/source/byte_buf.c":636:48))
  %v121 = sea.zext %v120 : i8 to i64 loc("_93"("aws-c-common/source/byte_buf.c":636:35))
  %v122 = sea.ptr.index %v11 [%v121] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_94"("aws-c-common/source/byte_buf.c":636:35))
  %v123 = sea.const 1 : i64 loc("_95"("aws-c-common/source/byte_buf.c":636:35))
  %v124 = sea.ptr.dereferenceable %v122, %v123 : !sea.ptr<64>, i64 loc("_95"("aws-c-common/source/byte_buf.c":636:35))
  sea.cond_br %v124, ^bb61, ^bb174
^bb61:
  %v125 = sea.load %v84[%v122] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_97"("aws-c-common/source/byte_buf.c":636:35))
  sea.br ^bb62
^bb62:
  sea.br ^bb63
^bb63:
  %v126 = sea.const 2 : i64 loc("_100"("aws-c-common/source/byte_buf.c":636:9))
  %v127 = sea.ptr.add %v87, %v126 : !sea.ptr<64>, i64 loc("_100"("aws-c-common/source/byte_buf.c":636:9))
  %v128 = sea.const 1 : i64 loc("_101"("aws-c-common/source/byte_buf.c":636:33))
  %v129 = sea.ptr.dereferenceable %v127, %v128 : !sea.ptr<64>, i64 loc("_101"("aws-c-common/source/byte_buf.c":636:33))
  sea.cond_br %v129, ^bb64, ^bb174
^bb64:
  %v130 = sea.store %v114[%v127], %v125 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("aws-c-common/source/byte_buf.c":636:33)
  sea.br ^bb65
^bb65:
  %v131 = sea.const 3 : i64 loc("exitcond.not.3"("aws-c-common/source/byte_buf.c":635:26))
  %v132 = sea.icmp eq, %v61, %v131 : i64 loc("exitcond.not.3"("aws-c-common/source/byte_buf.c":635:26))
  sea.cond_br %v132, ^bb122(%v130 : !sea.mem<!sea.ptr<64>, i8>), ^bb66 loc("aws-c-common/source/byte_buf.c":635:5)
^bb66:
  sea.br ^bb67
^bb67:
  %v133 = sea.ptr.index %v70 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_105"("aws-c-common/source/byte_buf.c":636:48))
  %v134 = sea.const 1 : i64 loc("_106"("aws-c-common/source/byte_buf.c":636:48))
  %v135 = sea.ptr.dereferenceable %v133, %v134 : !sea.ptr<64>, i64 loc("_106"("aws-c-common/source/byte_buf.c":636:48))
  sea.cond_br %v135, ^bb68, ^bb174
^bb68:
  %v136 = sea.load %v72[%v133] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_108"("aws-c-common/source/byte_buf.c":636:48))
  %v137 = sea.zext %v136 : i8 to i64 loc("_109"("aws-c-common/source/byte_buf.c":636:35))
  %v138 = sea.ptr.index %v11 [%v137] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_110"("aws-c-common/source/byte_buf.c":636:35))
  %v139 = sea.const 1 : i64 loc("_111"("aws-c-common/source/byte_buf.c":636:35))
  %v140 = sea.ptr.dereferenceable %v138, %v139 : !sea.ptr<64>, i64 loc("_111"("aws-c-common/source/byte_buf.c":636:35))
  sea.cond_br %v140, ^bb69, ^bb174
^bb69:
  %v141 = sea.load %v84[%v138] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_113"("aws-c-common/source/byte_buf.c":636:35))
  sea.br ^bb70
^bb70:
  sea.br ^bb71
^bb71:
  %v142 = sea.const 3 : i64 loc("_116"("aws-c-common/source/byte_buf.c":636:9))
  %v143 = sea.ptr.add %v87, %v142 : !sea.ptr<64>, i64 loc("_116"("aws-c-common/source/byte_buf.c":636:9))
  %v144 = sea.const 1 : i64 loc("_117"("aws-c-common/source/byte_buf.c":636:33))
  %v145 = sea.ptr.dereferenceable %v143, %v144 : !sea.ptr<64>, i64 loc("_117"("aws-c-common/source/byte_buf.c":636:33))
  sea.cond_br %v145, ^bb72, ^bb174
^bb72:
  %v146 = sea.store %v130[%v143], %v141 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("aws-c-common/source/byte_buf.c":636:33)
  sea.br ^bb73
^bb73:
  %v147 = sea.const 4 : i64 loc("exitcond.not.4"("aws-c-common/source/byte_buf.c":635:26))
  %v148 = sea.icmp eq, %v61, %v147 : i64 loc("exitcond.not.4"("aws-c-common/source/byte_buf.c":635:26))
  sea.cond_br %v148, ^bb122(%v146 : !sea.mem<!sea.ptr<64>, i8>), ^bb74 loc("aws-c-common/source/byte_buf.c":635:5)
^bb74:
  sea.br ^bb75
^bb75:
  %v149 = sea.ptr.index %v70 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_121"("aws-c-common/source/byte_buf.c":636:48))
  %v150 = sea.const 1 : i64 loc("_122"("aws-c-common/source/byte_buf.c":636:48))
  %v151 = sea.ptr.dereferenceable %v149, %v150 : !sea.ptr<64>, i64 loc("_122"("aws-c-common/source/byte_buf.c":636:48))
  sea.cond_br %v151, ^bb76, ^bb174
^bb76:
  %v152 = sea.load %v72[%v149] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_124"("aws-c-common/source/byte_buf.c":636:48))
  %v153 = sea.zext %v152 : i8 to i64 loc("_125"("aws-c-common/source/byte_buf.c":636:35))
  %v154 = sea.ptr.index %v11 [%v153] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_126"("aws-c-common/source/byte_buf.c":636:35))
  %v155 = sea.const 1 : i64 loc("_127"("aws-c-common/source/byte_buf.c":636:35))
  %v156 = sea.ptr.dereferenceable %v154, %v155 : !sea.ptr<64>, i64 loc("_127"("aws-c-common/source/byte_buf.c":636:35))
  sea.cond_br %v156, ^bb77, ^bb174
^bb77:
  %v157 = sea.load %v84[%v154] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_129"("aws-c-common/source/byte_buf.c":636:35))
  sea.br ^bb78
^bb78:
  sea.br ^bb79
^bb79:
  %v158 = sea.const 4 : i64 loc("_132"("aws-c-common/source/byte_buf.c":636:9))
  %v159 = sea.ptr.add %v87, %v158 : !sea.ptr<64>, i64 loc("_132"("aws-c-common/source/byte_buf.c":636:9))
  %v160 = sea.const 1 : i64 loc("_133"("aws-c-common/source/byte_buf.c":636:33))
  %v161 = sea.ptr.dereferenceable %v159, %v160 : !sea.ptr<64>, i64 loc("_133"("aws-c-common/source/byte_buf.c":636:33))
  sea.cond_br %v161, ^bb80, ^bb174
^bb80:
  %v162 = sea.store %v146[%v159], %v157 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("aws-c-common/source/byte_buf.c":636:33)
  sea.br ^bb81
^bb81:
  %v163 = sea.const 5 : i64 loc("exitcond.not.5"("aws-c-common/source/byte_buf.c":635:26))
  %v164 = sea.icmp eq, %v61, %v163 : i64 loc("exitcond.not.5"("aws-c-common/source/byte_buf.c":635:26))
  sea.cond_br %v164, ^bb122(%v162 : !sea.mem<!sea.ptr<64>, i8>), ^bb82 loc("aws-c-common/source/byte_buf.c":635:5)
^bb82:
  sea.br ^bb83
^bb83:
  %v165 = sea.ptr.index %v70 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_137"("aws-c-common/source/byte_buf.c":636:48))
  %v166 = sea.const 1 : i64 loc("_138"("aws-c-common/source/byte_buf.c":636:48))
  %v167 = sea.ptr.dereferenceable %v165, %v166 : !sea.ptr<64>, i64 loc("_138"("aws-c-common/source/byte_buf.c":636:48))
  sea.cond_br %v167, ^bb84, ^bb174
^bb84:
  %v168 = sea.load %v72[%v165] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_140"("aws-c-common/source/byte_buf.c":636:48))
  %v169 = sea.zext %v168 : i8 to i64 loc("_141"("aws-c-common/source/byte_buf.c":636:35))
  %v170 = sea.ptr.index %v11 [%v169] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_142"("aws-c-common/source/byte_buf.c":636:35))
  %v171 = sea.const 1 : i64 loc("_143"("aws-c-common/source/byte_buf.c":636:35))
  %v172 = sea.ptr.dereferenceable %v170, %v171 : !sea.ptr<64>, i64 loc("_143"("aws-c-common/source/byte_buf.c":636:35))
  sea.cond_br %v172, ^bb85, ^bb174
^bb85:
  %v173 = sea.load %v84[%v170] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_145"("aws-c-common/source/byte_buf.c":636:35))
  sea.br ^bb86
^bb86:
  sea.br ^bb87
^bb87:
  %v174 = sea.const 5 : i64 loc("_148"("aws-c-common/source/byte_buf.c":636:9))
  %v175 = sea.ptr.add %v87, %v174 : !sea.ptr<64>, i64 loc("_148"("aws-c-common/source/byte_buf.c":636:9))
  %v176 = sea.const 1 : i64 loc("_149"("aws-c-common/source/byte_buf.c":636:33))
  %v177 = sea.ptr.dereferenceable %v175, %v176 : !sea.ptr<64>, i64 loc("_149"("aws-c-common/source/byte_buf.c":636:33))
  sea.cond_br %v177, ^bb88, ^bb174
^bb88:
  %v178 = sea.store %v162[%v175], %v173 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("aws-c-common/source/byte_buf.c":636:33)
  sea.br ^bb89
^bb89:
  %v179 = sea.const 6 : i64 loc("exitcond.not.6"("aws-c-common/source/byte_buf.c":635:26))
  %v180 = sea.icmp eq, %v61, %v179 : i64 loc("exitcond.not.6"("aws-c-common/source/byte_buf.c":635:26))
  sea.cond_br %v180, ^bb122(%v178 : !sea.mem<!sea.ptr<64>, i8>), ^bb90 loc("aws-c-common/source/byte_buf.c":635:5)
^bb90:
  sea.br ^bb91
^bb91:
  %v181 = sea.ptr.index %v70 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_153"("aws-c-common/source/byte_buf.c":636:48))
  %v182 = sea.const 1 : i64 loc("_154"("aws-c-common/source/byte_buf.c":636:48))
  %v183 = sea.ptr.dereferenceable %v181, %v182 : !sea.ptr<64>, i64 loc("_154"("aws-c-common/source/byte_buf.c":636:48))
  sea.cond_br %v183, ^bb92, ^bb174
^bb92:
  %v184 = sea.load %v72[%v181] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_156"("aws-c-common/source/byte_buf.c":636:48))
  %v185 = sea.zext %v184 : i8 to i64 loc("_157"("aws-c-common/source/byte_buf.c":636:35))
  %v186 = sea.ptr.index %v11 [%v185] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_158"("aws-c-common/source/byte_buf.c":636:35))
  %v187 = sea.const 1 : i64 loc("_159"("aws-c-common/source/byte_buf.c":636:35))
  %v188 = sea.ptr.dereferenceable %v186, %v187 : !sea.ptr<64>, i64 loc("_159"("aws-c-common/source/byte_buf.c":636:35))
  sea.cond_br %v188, ^bb93, ^bb174
^bb93:
  %v189 = sea.load %v84[%v186] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_161"("aws-c-common/source/byte_buf.c":636:35))
  sea.br ^bb94
^bb94:
  sea.br ^bb95
^bb95:
  %v190 = sea.const 6 : i64 loc("_164"("aws-c-common/source/byte_buf.c":636:9))
  %v191 = sea.ptr.add %v87, %v190 : !sea.ptr<64>, i64 loc("_164"("aws-c-common/source/byte_buf.c":636:9))
  %v192 = sea.const 1 : i64 loc("_165"("aws-c-common/source/byte_buf.c":636:33))
  %v193 = sea.ptr.dereferenceable %v191, %v192 : !sea.ptr<64>, i64 loc("_165"("aws-c-common/source/byte_buf.c":636:33))
  sea.cond_br %v193, ^bb96, ^bb174
^bb96:
  %v194 = sea.store %v178[%v191], %v189 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("aws-c-common/source/byte_buf.c":636:33)
  sea.br ^bb97
^bb97:
  %v195 = sea.const 7 : i64 loc("exitcond.not.7"("aws-c-common/source/byte_buf.c":635:26))
  %v196 = sea.icmp eq, %v61, %v195 : i64 loc("exitcond.not.7"("aws-c-common/source/byte_buf.c":635:26))
  sea.cond_br %v196, ^bb122(%v194 : !sea.mem<!sea.ptr<64>, i8>), ^bb98 loc("aws-c-common/source/byte_buf.c":635:5)
^bb98:
  sea.br ^bb99
^bb99:
  %v197 = sea.ptr.index %v70 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_169"("aws-c-common/source/byte_buf.c":636:48))
  %v198 = sea.const 1 : i64 loc("_170"("aws-c-common/source/byte_buf.c":636:48))
  %v199 = sea.ptr.dereferenceable %v197, %v198 : !sea.ptr<64>, i64 loc("_170"("aws-c-common/source/byte_buf.c":636:48))
  sea.cond_br %v199, ^bb100, ^bb174
^bb100:
  %v200 = sea.load %v72[%v197] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_172"("aws-c-common/source/byte_buf.c":636:48))
  %v201 = sea.zext %v200 : i8 to i64 loc("_173"("aws-c-common/source/byte_buf.c":636:35))
  %v202 = sea.ptr.index %v11 [%v201] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_174"("aws-c-common/source/byte_buf.c":636:35))
  %v203 = sea.const 1 : i64 loc("_175"("aws-c-common/source/byte_buf.c":636:35))
  %v204 = sea.ptr.dereferenceable %v202, %v203 : !sea.ptr<64>, i64 loc("_175"("aws-c-common/source/byte_buf.c":636:35))
  sea.cond_br %v204, ^bb101, ^bb174
^bb101:
  %v205 = sea.load %v84[%v202] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_177"("aws-c-common/source/byte_buf.c":636:35))
  sea.br ^bb102
^bb102:
  sea.br ^bb103
^bb103:
  %v206 = sea.const 7 : i64 loc("_180"("aws-c-common/source/byte_buf.c":636:9))
  %v207 = sea.ptr.add %v87, %v206 : !sea.ptr<64>, i64 loc("_180"("aws-c-common/source/byte_buf.c":636:9))
  %v208 = sea.const 1 : i64 loc("_181"("aws-c-common/source/byte_buf.c":636:33))
  %v209 = sea.ptr.dereferenceable %v207, %v208 : !sea.ptr<64>, i64 loc("_181"("aws-c-common/source/byte_buf.c":636:33))
  sea.cond_br %v209, ^bb104, ^bb174
^bb104:
  %v210 = sea.store %v194[%v207], %v205 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("aws-c-common/source/byte_buf.c":636:33)
  sea.br ^bb105
^bb105:
  %v211 = sea.const 8 : i64 loc("exitcond.not.8"("aws-c-common/source/byte_buf.c":635:26))
  %v212 = sea.icmp eq, %v61, %v211 : i64 loc("exitcond.not.8"("aws-c-common/source/byte_buf.c":635:26))
  sea.cond_br %v212, ^bb122(%v210 : !sea.mem<!sea.ptr<64>, i8>), ^bb106 loc("aws-c-common/source/byte_buf.c":635:5)
^bb106:
  sea.br ^bb107
^bb107:
  %v213 = sea.ptr.index %v70 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_185"("aws-c-common/source/byte_buf.c":636:48))
  %v214 = sea.const 1 : i64 loc("_186"("aws-c-common/source/byte_buf.c":636:48))
  %v215 = sea.ptr.dereferenceable %v213, %v214 : !sea.ptr<64>, i64 loc("_186"("aws-c-common/source/byte_buf.c":636:48))
  sea.cond_br %v215, ^bb108, ^bb174
^bb108:
  %v216 = sea.load %v72[%v213] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_188"("aws-c-common/source/byte_buf.c":636:48))
  %v217 = sea.zext %v216 : i8 to i64 loc("_189"("aws-c-common/source/byte_buf.c":636:35))
  %v218 = sea.ptr.index %v11 [%v217] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_190"("aws-c-common/source/byte_buf.c":636:35))
  %v219 = sea.const 1 : i64 loc("_191"("aws-c-common/source/byte_buf.c":636:35))
  %v220 = sea.ptr.dereferenceable %v218, %v219 : !sea.ptr<64>, i64 loc("_191"("aws-c-common/source/byte_buf.c":636:35))
  sea.cond_br %v220, ^bb109, ^bb174
^bb109:
  %v221 = sea.load %v84[%v218] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_193"("aws-c-common/source/byte_buf.c":636:35))
  sea.br ^bb110
^bb110:
  sea.br ^bb111
^bb111:
  %v222 = sea.const 8 : i64 loc("_196"("aws-c-common/source/byte_buf.c":636:9))
  %v223 = sea.ptr.add %v87, %v222 : !sea.ptr<64>, i64 loc("_196"("aws-c-common/source/byte_buf.c":636:9))
  %v224 = sea.const 1 : i64 loc("_197"("aws-c-common/source/byte_buf.c":636:33))
  %v225 = sea.ptr.dereferenceable %v223, %v224 : !sea.ptr<64>, i64 loc("_197"("aws-c-common/source/byte_buf.c":636:33))
  sea.cond_br %v225, ^bb112, ^bb174
^bb112:
  %v226 = sea.store %v210[%v223], %v221 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("aws-c-common/source/byte_buf.c":636:33)
  sea.br ^bb113
^bb113:
  %v227 = sea.const 9 : i64 loc("exitcond.not.9"("aws-c-common/source/byte_buf.c":635:26))
  %v228 = sea.icmp eq, %v61, %v227 : i64 loc("exitcond.not.9"("aws-c-common/source/byte_buf.c":635:26))
  sea.cond_br %v228, ^bb122(%v226 : !sea.mem<!sea.ptr<64>, i8>), ^bb114 loc("aws-c-common/source/byte_buf.c":635:5)
^bb114:
  sea.br ^bb115
^bb115:
  %v229 = sea.ptr.index %v70 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_201"("aws-c-common/source/byte_buf.c":636:48))
  %v230 = sea.const 1 : i64 loc("_202"("aws-c-common/source/byte_buf.c":636:48))
  %v231 = sea.ptr.dereferenceable %v229, %v230 : !sea.ptr<64>, i64 loc("_202"("aws-c-common/source/byte_buf.c":636:48))
  sea.cond_br %v231, ^bb116, ^bb174
^bb116:
  %v232 = sea.load %v72[%v229] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_204"("aws-c-common/source/byte_buf.c":636:48))
  %v233 = sea.zext %v232 : i8 to i64 loc("_205"("aws-c-common/source/byte_buf.c":636:35))
  %v234 = sea.ptr.index %v11 [%v233] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_206"("aws-c-common/source/byte_buf.c":636:35))
  %v235 = sea.const 1 : i64 loc("_207"("aws-c-common/source/byte_buf.c":636:35))
  %v236 = sea.ptr.dereferenceable %v234, %v235 : !sea.ptr<64>, i64 loc("_207"("aws-c-common/source/byte_buf.c":636:35))
  sea.cond_br %v236, ^bb117, ^bb174
^bb117:
  %v237 = sea.load %v84[%v234] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_209"("aws-c-common/source/byte_buf.c":636:35))
  sea.br ^bb118
^bb118:
  sea.br ^bb119
^bb119:
  %v238 = sea.const 9 : i64 loc("_212"("aws-c-common/source/byte_buf.c":636:9))
  %v239 = sea.ptr.add %v87, %v238 : !sea.ptr<64>, i64 loc("_212"("aws-c-common/source/byte_buf.c":636:9))
  %v240 = sea.const 1 : i64 loc("_213"("aws-c-common/source/byte_buf.c":636:33))
  %v241 = sea.ptr.dereferenceable %v239, %v240 : !sea.ptr<64>, i64 loc("_213"("aws-c-common/source/byte_buf.c":636:33))
  sea.cond_br %v241, ^bb120, ^bb174
^bb120:
  %v242 = sea.store %v226[%v239], %v237 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("aws-c-common/source/byte_buf.c":636:33)
  sea.br ^bb121
^bb121:
  %v243 = sea.const 10 : i64 loc("exitcond.not"("aws-c-common/source/byte_buf.c":635:26))
  %v244 = sea.icmp eq, %v61, %v243 : i64 loc("exitcond.not"("aws-c-common/source/byte_buf.c":635:26))
  sea.assume %v244
  sea.br ^bb122(%v242 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":635:5)
^bb122(%v245 : !sea.mem<!sea.ptr<64>, i8>):
  sea.br ^bb123
^bb123:
  sea.br ^bb124
^bb124:
  sea.br ^bb125
^bb125:
  %v246 = sea.add %v24, %v61 : i64 loc("_218"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v247 = sea.uaddo %v24, %v61 : i64 loc("_218"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v248 = sea.store %v49[%v7], %v246 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
  sea.cond_br %v247, ^bb127, ^bb126 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb126:
  %v249 = sea.load %v62[%v9] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_222"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":36:9))
  %v250 = sea.add %v249, %v24 : i64 loc("_223"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":36:9))
  %v251 = sea.icmp eq, %v246, %v250 : i64 loc("_224"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":36:9))
  sea.cond_br %v251, ^bb131(%v248, %v246 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb174 loc("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":36:9)
^bb127:
  sea.br ^bb129(%v245, %v248, %v246 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64)
^bb128:
  sea.br ^bb129(%v43, %v49, %v24 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, i64) loc("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":35:9)
^bb129(%v252 : !sea.mem<!sea.ptr<64>, i8>, %v253 : !sea.mem<!sea.ptr<64>, i8>, %v254 : i64):
  %v255 = sea.mem.is_modified %v253[%v7] : !sea.mem<!sea.ptr<64>, i8> loc("_227"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":39:9))
  %v256 = sea.const 1 : i1 loc("_228"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":39:9))
  %v257 = sea.xor %v255, %v256 : i1 loc("_228"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":39:9))
  %v258 = sea.mem.is_modified %v253[%v7] : !sea.mem<!sea.ptr<64>, i8> loc("_229"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":39:9))
  sea.cond_br %v258, ^bb174, ^bb130 loc("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":39:9)
^bb130:
  %v259 = sea.load %v253[%v45] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_231"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":40:9))
  %v260 = sea.mem.is_modified %v252[%v259] : !sea.mem<!sea.ptr<64>, i8> loc("_232"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":40:9))
  %v261 = sea.const 1 : i1 loc("_233"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":40:9))
  %v262 = sea.xor %v260, %v261 : i1 loc("_233"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":40:9))
  %v263 = sea.mem.is_modified %v252[%v259] : !sea.mem<!sea.ptr<64>, i8> loc("_234"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":40:9))
  sea.cond_br %v263, ^bb174, ^bb131(%v253, %v254 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":40:9)
^bb131(%v264 : !sea.mem<!sea.ptr<64>, i8>, %v265 : i64):
  sea.br ^bb132
^bb132:
  sea.cond_br %v33, ^bb140, ^bb133 loc("aws-c-common/source/byte_buf.c":60:33)
^bb133:
  sea.br ^bb134
^bb134:
  sea.br ^bb135
^bb135:
  sea.br ^bb136
^bb136:
  %v266 = sea.icmp ugt, %v265, %v25 : i64 loc(".not2.i6.i"("aws-c-common/source/byte_buf.c":61:44))
  %v267 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v266, ^bb145(%v267 : i1), ^bb137 loc("aws-c-common/source/byte_buf.c":61:61)
^bb137:
  sea.br ^bb138
^bb138:
  sea.br ^bb139
^bb139:
  %v268 = sea.load %v264[%v45] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_251"("aws-c-common/source/byte_buf.c":61:64))
  %v269 = sea.ptr.null : !sea.ptr<64> loc("_252"("aws-c-common/source/byte_buf.c":61:64))
  %v270 = sea.ptr.cmp ne, %v268, %v269 : !sea.ptr<64> loc("_252"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb145(%v270 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb140:
  sea.br ^bb141
^bb141:
  %v271 = sea.const 0 : i64 loc("_240"("aws-c-common/source/byte_buf.c":60:45))
  %v272 = sea.icmp eq, %v265, %v271 : i64 loc("_240"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v272, ^bb142, ^bb144 loc("aws-c-common/source/byte_buf.c":60:50)
^bb142:
  sea.br ^bb143
^bb143:
  %v273 = sea.load %v264[%v45] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_243"("aws-c-common/source/byte_buf.c":60:58))
  %v274 = sea.ptr.null : !sea.ptr<64> loc("_244"("aws-c-common/source/byte_buf.c":60:65))
  %v275 = sea.ptr.cmp eq, %v273, %v274 : !sea.ptr<64> loc("_244"("aws-c-common/source/byte_buf.c":60:65))
  %v276 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v275, ^bb145(%v276 : i1), ^bb144 loc("aws-c-common/source/byte_buf.c":60:74)
^bb144:
  %v277 = sea.const 0 : i1
  sea.br ^bb145(%v277 : i1)
^bb145(%v278 : i1):
  sea.br ^bb146
^bb146:
  sea.cond_br %v33, ^bb152, ^bb147 loc("aws-c-common/source/byte_buf.c":60:33)
^bb147:
  sea.br ^bb148
^bb148:
  sea.br ^bb149
^bb149:
  %v279 = sea.icmp ule, %v265, %v25 : i64 loc(".not2.i.i")
  %v280 = sea.const 1 : i1 loc("or.cond10.not")
  %v281 = sea.const 0 : i1 loc("or.cond10.not")
  %v282 = sea.select %v280, %v279, %v281 : i1 loc("or.cond10.not")
  sea.cond_br %v282, ^bb150, ^bb174
^bb150:
  sea.br ^bb151
^bb151:
  %v283 = sea.load %v264[%v45] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_267")
  %v284 = sea.ptr.null : !sea.ptr<64> loc("_268")
  %v285 = sea.ptr.cmp ne, %v283, %v284 : !sea.ptr<64> loc("_268")
  %v286 = sea.const 1 : i1 loc("or.cond")
  %v287 = sea.const 0 : i1 loc("or.cond")
  %v288 = sea.select %v286, %v285, %v287 : i1 loc("or.cond")
  sea.cond_br %v288, ^bb157, ^bb174
^bb152:
  sea.br ^bb153
^bb153:
  %v289 = sea.const 0 : i64 loc("_257"("aws-c-common/source/byte_buf.c":60:45))
  %v290 = sea.icmp eq, %v265, %v289 : i64 loc("_257"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v290, ^bb154, ^bb156 loc("aws-c-common/source/byte_buf.c":60:50)
^bb154:
  sea.br ^bb155
^bb155:
  %v291 = sea.load %v264[%v45] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_260"("aws-c-common/source/byte_buf.c":60:58))
  %v292 = sea.ptr.null : !sea.ptr<64> loc("_261"("aws-c-common/source/byte_buf.c":60:65))
  %v293 = sea.ptr.cmp eq, %v291, %v292 : !sea.ptr<64> loc("_261"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v293, ^bb157, ^bb156 loc("aws-c-common/source/byte_buf.c":60:74)
^bb156:
  sea.br ^bb174
^bb157:
  sea.br ^bb158
^bb158:
  %v294 = sea.load %v62[%v9] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_270"("aws-c-common/source/byte_buf.c":66:22))
  %v295 = sea.const 0 : i64 loc("_271"("aws-c-common/source/byte_buf.c":66:26))
  %v296 = sea.icmp eq, %v294, %v295 : i64 loc("_271"("aws-c-common/source/byte_buf.c":66:26))
  %v297 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v296, ^bb164(%v297 : i1), ^bb159 loc("aws-c-common/source/byte_buf.c":66:32)
^bb159:
  sea.br ^bb160
^bb160:
  sea.br ^bb161
^bb161:
  %v298 = sea.load %v74[%v73] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_275"("aws-c-common/source/byte_buf.c":66:63))
  %v299 = sea.ptr.null : !sea.ptr<64> loc(".not2.i17.i"("aws-c-common/source/byte_buf.c":66:55))
  %v300 = sea.ptr.cmp eq, %v298, %v299 : !sea.ptr<64> loc(".not2.i17.i"("aws-c-common/source/byte_buf.c":66:55))
  %v301 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v300, ^bb164(%v301 : i1), ^bb162 loc("aws-c-common/source/byte_buf.c":66:67)
^bb162:
  sea.br ^bb163
^bb163:
  %v302 = sea.const 1 : i1
  sea.br ^bb164(%v302 : i1)
^bb164(%v303 : i1):
  sea.br ^bb165
^bb165:
  sea.cond_br %v296, ^bb170, ^bb166 loc("aws-c-common/source/byte_buf.c":66:32)
^bb166:
  sea.br ^bb167
^bb167:
  %v304 = sea.load %v74[%v73] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_282")
  %v305 = sea.ptr.null : !sea.ptr<64> loc(".not2.i14.i")
  %v306 = sea.ptr.cmp ne, %v304, %v305 : !sea.ptr<64> loc(".not2.i14.i")
  %v307 = sea.const 1 : i1 loc("or.cond14.not")
  %v308 = sea.const 0 : i1 loc("or.cond14.not")
  %v309 = sea.select %v307, %v306, %v308 : i1 loc("or.cond14.not")
  sea.cond_br %v309, ^bb168, ^bb174
^bb168:
  sea.br ^bb169
^bb169:
  sea.br ^bb170
^bb170:
  %v310 = sea.load %v264[%v47] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_285"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":45:5))
  %v311 = sea.mem.is_modified %v14[%v310] : !sea.mem<!sea.ptr<64>, i8> loc("_286"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":45:5))
  %v312 = sea.const 1 : i1 loc("_287"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":45:5))
  %v313 = sea.xor %v311, %v312 : i1 loc("_287"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":45:5))
  %v314 = sea.mem.is_modified %v14[%v310] : !sea.mem<!sea.ptr<64>, i8> loc("_288"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":45:5))
  sea.cond_br %v314, ^bb174, ^bb171 loc("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":45:5)
^bb171:
  %v315 = sea.load %v264[%v30] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_290"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":46:5))
  %v316 = sea.icmp eq, %v25, %v315 : i64 loc("_291"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":46:5))
  sea.cond_br %v316, ^bb172, ^bb174 loc("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":46:5)
^bb172:
  %v317 = sea.mem.is_modified %v62[%v9] : !sea.mem<!sea.ptr<64>, i8> loc("_293"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":47:5))
  %v318 = sea.const 1 : i1 loc("_294"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":47:5))
  %v319 = sea.xor %v317, %v318 : i1 loc("_294"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":47:5))
  %v320 = sea.mem.is_modified %v62[%v9] : !sea.mem<!sea.ptr<64>, i8> loc("_295"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":47:5))
  sea.cond_br %v320, ^bb174, ^bb173 loc("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":47:5)
^bb173:
  %v321 = sea.load %v74[%v73] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_297"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":48:5))
  %v322 = sea.mem.is_modified %v72[%v321] : !sea.mem<!sea.ptr<64>, i8> loc("_298"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":48:5))
  %v323 = sea.const 1 : i1 loc("_299"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":48:5))
  %v324 = sea.xor %v322, %v323 : i1 loc("_299"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":48:5))
  %v325 = sea.mem.is_modified %v72[%v321] : !sea.mem<!sea.ptr<64>, i8> loc("_300"("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":48:5))
  sea.assume %v325 loc("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":48:5)
  sea.br ^bb174 loc("seahorn/jobs2/byte_buf_append_with_lookup2/aws_byte_buf_append_with_lookup_harness2.c":48:5)
^bb174:
  sea.br ^bb175
^bb175:
  %v326 = sea.const 0 : i1
  sea.assert %v326
  sea.halt
}
