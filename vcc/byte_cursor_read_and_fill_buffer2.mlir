// Exported from SeaHorn (byte_cursor_read_and_fill_buffer2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm19")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm20")
  %v2 = sea.mem.nondet "region.32" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm21")
  %v3 = sea.mem.nondet "region.64" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm22")
  %v4 = sea.const 16 : i64 loc("_0")
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
  %v20 = sea.nondet "nd_size_t" [6] : i64 loc("_4"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb1
^bb1:
  %v21 = sea.store %v1[%v5], %v20 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":31:17)
  sea.br ^bb2
^bb2:
  %v22 = sea.const 11 : i64 loc("_7"("seahorn/lib/byte_buf_helper.c":33:24))
  %v23 = sea.icmp ult, %v20, %v22 : i64 loc("_7"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v23 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v24 = sea.nondet "nd_malloc_is_fail" [7] : i1 loc("_8"("seahorn/lib/sea_allocators.c":11:10))
  %v25 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v24, ^bb4(%v3, %v25 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/sea_allocators.c":11:10)
^bb3:
  %v26 = sea.const 10 : i64 loc("malloc.i4")
  %v27 = sea.alloca %v26 align 16 [8] : i64 -> !sea.ptr<64> loc("malloc.i4")
  sea.br ^bb4(%v3, %v27 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb4(%v28 : !sea.mem<!sea.ptr<64>, i8>, %v29 : !sea.ptr<64>):
  %v30 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v31 = sea.memhavoc %v28[%v29], %v30 [9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v32 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_10"("seahorn/lib/byte_buf_helper.c":34:13))
  sea.br ^bb5
^bb5:
  %v33 = sea.store %v21[%v32], %v29 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":34:17)
  %v34 = sea.nondet "nd_size_t" [10] : i64 loc("_11"("seahorn/lib/byte_buf_helper.c":19:18))
  %v35 = sea.nondet "nd_size_t" [11] : i64 loc("_12"("seahorn/lib/byte_buf_helper.c":20:18))
  %v36 = sea.icmp ule, %v34, %v35 : i64 loc("_13"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v36 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v37 = sea.const 11 : i64 loc("_14"("seahorn/lib/byte_buf_helper.c":22:16))
  %v38 = sea.icmp ult, %v35, %v37 : i64 loc("_14"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v38 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb6
^bb6:
  %v39 = sea.store %v2[%v7], %v34 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v40 = sea.ptr.index %v7 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_16"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb7
^bb7:
  %v41 = sea.store %v39[%v40], %v35 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v42 = sea.const 0 : i64 loc("_18"("seahorn/lib/proof_allocators.c":21:15))
  %v43 = sea.icmp eq, %v35, %v42 : i64 loc("_18"("seahorn/lib/proof_allocators.c":21:15))
  %v44 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v43, ^bb11(%v31, %v44 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb8 loc("seahorn/lib/proof_allocators.c":21:10)
^bb8:
  %v45 = sea.nondet "nd_malloc_is_fail" [12] : i1 loc("_20"("seahorn/lib/sea_allocators.c":11:10))
  %v46 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v45, ^bb10(%v31, %v46 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb9 loc("seahorn/lib/sea_allocators.c":11:10)
^bb9:
  %v47 = sea.const 1 : i64 loc("malloc56.i")
  %v48 = sea.mul %v35, %v47 : i64 loc("malloc56.i")
  %v49 = sea.alloca %v48 align 16 [13] : i64 -> !sea.ptr<64> loc("malloc56.i")
  sea.br ^bb10(%v31, %v49 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb10(%v50 : !sea.mem<!sea.ptr<64>, i8>, %v51 : !sea.ptr<64>):
  %v52 = sea.memhavoc %v50[%v51], %v35 [14] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb11(%v52, %v51 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb11(%v53 : !sea.mem<!sea.ptr<64>, i8>, %v54 : !sea.ptr<64>):
  %v55 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_24"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb12
^bb12:
  %v56 = sea.store %v41[%v55], %v54 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v57 = sea.ptr.index %v7 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_26"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb13
^bb13:
  %v58 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v59 = sea.store %v56[%v57], %v58 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  sea.br ^bb14
^bb14:
  %v60 = sea.const 0 : i64 loc("_28"("aws-c-common/source/byte_buf.c":66:26))
  %v61 = sea.icmp eq, %v20, %v60 : i64 loc("_28"("aws-c-common/source/byte_buf.c":66:26))
  %v62 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v61, ^bb20(%v62 : i1), ^bb15 loc("aws-c-common/source/byte_buf.c":66:32)
^bb15:
  sea.br ^bb16
^bb16:
  sea.br ^bb17
^bb17:
  %v63 = sea.ptr.null : !sea.ptr<64> loc(".not2.i46.i"("aws-c-common/source/byte_buf.c":66:55))
  %v64 = sea.ptr.cmp eq, %v29, %v63 : !sea.ptr<64> loc(".not2.i46.i"("aws-c-common/source/byte_buf.c":66:55))
  %v65 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v64, ^bb20(%v65 : i1), ^bb18 loc("aws-c-common/source/byte_buf.c":66:67)
^bb18:
  sea.br ^bb19
^bb19:
  %v66 = sea.const 1 : i1
  sea.br ^bb20(%v66 : i1)
^bb20(%v67 : i1):
  sea.assume %v67 loc("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":19:5)
  sea.br ^bb21
^bb21:
  sea.cond_br %v43, ^bb29, ^bb22 loc("aws-c-common/source/byte_buf.c":60:33)
^bb22:
  sea.br ^bb23
^bb23:
  sea.br ^bb24
^bb24:
  sea.br ^bb25
^bb25:
  %v68 = sea.icmp ugt, %v34, %v35 : i64 loc(".not2.i35.i"("aws-c-common/source/byte_buf.c":61:44))
  %v69 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v68, ^bb34(%v69 : i1), ^bb26 loc("aws-c-common/source/byte_buf.c":61:61)
^bb26:
  sea.br ^bb27
^bb27:
  sea.br ^bb28
^bb28:
  %v70 = sea.ptr.null : !sea.ptr<64> loc("_48"("aws-c-common/source/byte_buf.c":61:64))
  %v71 = sea.ptr.cmp ne, %v54, %v70 : !sea.ptr<64> loc("_48"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb34(%v71 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb29:
  sea.br ^bb30
^bb30:
  %v72 = sea.const 0 : i64 loc("_38"("aws-c-common/source/byte_buf.c":60:45))
  %v73 = sea.icmp eq, %v34, %v72 : i64 loc("_38"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v73, ^bb31, ^bb33 loc("aws-c-common/source/byte_buf.c":60:50)
^bb31:
  sea.br ^bb32
^bb32:
  %v74 = sea.ptr.null : !sea.ptr<64> loc("_41"("aws-c-common/source/byte_buf.c":60:65))
  %v75 = sea.ptr.cmp eq, %v54, %v74 : !sea.ptr<64> loc("_41"("aws-c-common/source/byte_buf.c":60:65))
  %v76 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v75, ^bb34(%v76 : i1), ^bb33 loc("aws-c-common/source/byte_buf.c":60:74)
^bb33:
  %v77 = sea.const 0 : i1
  sea.br ^bb34(%v77 : i1)
^bb34(%v78 : i1):
  sea.assume %v78 loc("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":20:5)
  sea.tracking_on loc("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":26:5)
  %v79 = sea.mem.reset_modified %v53[%v29] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":27:5)
  %v80 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":28:5)
  %v81 = sea.mem.reset_modified %v19[%v80] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":28:5)
  sea.br ^bb35
^bb35:
  sea.br ^bb36
^bb36:
  sea.cond_br %v43, ^bb56(%v79, %v33 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>), ^bb37 loc("aws-c-common/source/byte_buf.c":1163:9)
^bb37:
  sea.br ^bb38
^bb38:
  %v82 = sea.icmp uge, %v20, %v35 : i64 loc("_54"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:13))
  %v83 = sea.const 18446744073709551615 : i64 loc("_55")
  %v84 = sea.icmp sgt, %v35, %v83 : i64 loc("_55")
  %v85 = sea.and %v84, %v82 : i1 loc("or.cond.i54.i"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:28))
  sea.cond_br %v85, ^bb39, ^bb62(%v79, %v33, %v54, %v34, %v35 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64, i64) loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:28)
^bb39:
  sea.br ^bb40
^bb40:
  %v86 = sea.const 18446744073709551615 : i64 loc("_58"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:69))
  %v87 = sea.icmp sgt, %v20, %v86 : i64 loc("_58"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:69))
  sea.cond_br %v87, ^bb41, ^bb62(%v79, %v33, %v54, %v34, %v35 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64, i64) loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":20:9)
^bb41:
  sea.br ^bb42
^bb42:
  %v88 = sea.const 1 : i64 loc("_61"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":26:59))
  %v89 = sea.add %v20, %v88 nuw : i64 loc("_61"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":26:59))
  %v90 = sea.sub %v20, %v35 : i64 loc("_63"("aws-c-common/source/byte_buf.c":1050:40))
  %v91 = sea.or %v89, %v90 : i64 loc("_64"("aws-c-common/source/byte_buf.c":1051:42))
  %v92 = sea.or %v91, %v35 : i64 loc("_65"("aws-c-common/source/byte_buf.c":1051:42))
  %v93 = sea.const 18446744073709551615 : i64 loc("_66"("aws-c-common/source/byte_buf.c":1064:38))
  %v94 = sea.icmp sgt, %v92, %v93 : i64 loc("_66"("aws-c-common/source/byte_buf.c":1064:38))
  %v95 = sea.sext %v94 : i1 to i64 loc(".neg.i.i.i"("aws-c-common/source/byte_buf.c":1064:38))
  %v96 = sea.and %v35, %v95 : i64 loc("_67"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":29:19))
  %v97 = sea.ptr.null : !sea.ptr<64> loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":33:23)
  sea.cond_br %v94, ^bb43, ^bb44(%v97 : !sea.ptr<64>) loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":33:23)
^bb43:
  sea.br ^bb44(%v29 : !sea.ptr<64>)
^bb44(%v98 : !sea.ptr<64>):
  sea.br ^bb45
^bb45:
  sea.br ^bb46
^bb46:
  sea.br ^bb47
^bb47:
  %v99 = sea.and %v20, %v95 : i64 loc("_74"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":35:35))
  sea.br ^bb48
^bb48:
  sea.br ^bb49
^bb49:
  sea.br ^bb50
^bb50:
  %v100 = sea.ptr.index %v98 [%v96] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_78"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":41:21))
  %v101 = sea.store %v33[%v32], %v100 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":41:21)
  sea.br ^bb51
^bb51:
  sea.br ^bb52
^bb52:
  %v102 = sea.sub %v99, %v96 nsw : i64 loc("_80"("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":42:21))
  %v103 = sea.store %v101[%v5], %v102 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/aws-c-common-stubs/byte_cursor_advance_nospec_override.c":42:21)
  %v104 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i.i.not"("aws-c-common/source/byte_buf.c":1169:9))
  %v105 = sea.ptr.cmp eq, %v98, %v104 : !sea.ptr<64> loc(".not.i.i.i.not"("aws-c-common/source/byte_buf.c":1169:9))
  sea.cond_br %v105, ^bb62(%v79, %v103, %v54, %v34, %v35 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64, i64), ^bb53 loc("aws-c-common/source/byte_buf.c":1169:9)
^bb53:
  %v106 = sea.ptr.dereferenceable %v54, %v35 : !sea.ptr<64>, i64 loc("_82"("seahorn/lib/bcmp.c":161:3))
  %v107 = sea.ptr.dereferenceable %v54, %v35 : !sea.ptr<64>, i64 loc("_83"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v107, ^bb54, ^bb106 loc("seahorn/lib/bcmp.c":161:3)
^bb54:
  %v108 = sea.ptr.dereferenceable %v98, %v35 : !sea.ptr<64>, i64 loc("_85"("seahorn/lib/bcmp.c":162:3))
  %v109 = sea.ptr.dereferenceable %v98, %v35 : !sea.ptr<64>, i64 loc("_86"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v109, ^bb55, ^bb106 loc("seahorn/lib/bcmp.c":162:3)
^bb55:
  %v110 = sea.memmove %v79[%v54], %v79[%v98], %v35 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb56(%v110, %v103 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":1173:9)
^bb56(%v111 : !sea.mem<!sea.ptr<64>, i8>, %v112 : !sea.mem<!sea.ptr<64>, i8>):
  sea.br ^bb57
^bb57:
  %v113 = sea.load %v41[%v40] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_89"("aws-c-common/source/byte_buf.c":1192:27))
  sea.br ^bb58
^bb58:
  %v114 = sea.load %v56[%v55] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_91"("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":33:45))
  %v115 = sea.const 0 : i64 loc("_92"("seahorn/lib/utils.c":15:3))
  %v116 = sea.icmp eq, %v113, %v115 : i64 loc("_92"("seahorn/lib/utils.c":15:3))
  %v117 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v118 = sea.ptr.cmp eq, %v29, %v117 : !sea.ptr<64> loc(".not.i.i"("seahorn/lib/utils.c":15:3))
  %v119 = sea.ptr.null : !sea.ptr<64> loc("_93"("seahorn/lib/utils.c":15:3))
  %v120 = sea.ptr.cmp ne, %v114, %v119 : !sea.ptr<64> loc("_93"("seahorn/lib/utils.c":15:3))
  %v121 = sea.xor %v118, %v120 : i1 loc("_94"("seahorn/lib/utils.c":15:3))
  %v122 = sea.or %v116, %v121 : i1 loc("_95"("seahorn/lib/utils.c":15:3))
  %v123 = sea.const 0 : i64 loc("seahorn/lib/utils.c":15:3)
  %v124 = sea.const 0 : i64 loc("seahorn/lib/utils.c":15:3)
  sea.cond_br %v116, ^bb62(%v111, %v112, %v114, %v123, %v124 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64, i64), ^bb59 loc("seahorn/lib/utils.c":15:3)
^bb59:
  sea.cond_br %v121, ^bb60, ^bb106 loc("seahorn/lib/utils.c":15:3)
^bb60:
  %v125 = sea.ptr.null : !sea.ptr<64> loc("_97")
  %v126 = sea.ptr.cmp ne, %v29, %v125 : !sea.ptr<64> loc("_97")
  %v127 = sea.and %v126, %v120 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v127, ^bb61, ^bb62(%v111, %v112, %v114, %v113, %v113 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64, i64) loc("seahorn/lib/utils.c":16:15)
^bb61:
  %v128 = sea.nondet "nd_size_t" [15] : i64 loc("_99"("seahorn/lib/utils.c":17:16))
  %v129 = sea.icmp ult, %v128, %v113 : i64 loc("_100"("seahorn/lib/utils.c":19:14))
  %v130 = sea.const 36028797018963967 : i64 loc("_101"("seahorn/lib/utils.c":19:20))
  %v131 = sea.icmp ult, %v113, %v130 : i64 loc("_101"("seahorn/lib/utils.c":19:20))
  %v132 = sea.and %v131, %v129 : i1 loc("_102"("seahorn/lib/utils.c":19:20))
  sea.assume %v132 loc("seahorn/lib/utils.c":19:5)
  %v133 = sea.ptr.index %v29 [%v128] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_103"("seahorn/lib/utils.c":20:5))
  %v134 = sea.load %v111[%v133] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_104"("seahorn/lib/utils.c":20:5))
  %v135 = sea.ptr.index %v114 [%v128] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_105"("seahorn/lib/utils.c":20:5))
  %v136 = sea.load %v111[%v135] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_106"("seahorn/lib/utils.c":20:5))
  %v137 = sea.icmp eq, %v134, %v136 : i8 loc("_107"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v137, ^bb62(%v111, %v112, %v114, %v113, %v113 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64, i64), ^bb106 loc("seahorn/lib/utils.c":20:5)
^bb62(%v138 : !sea.mem<!sea.ptr<64>, i8>, %v139 : !sea.mem<!sea.ptr<64>, i8>, %v140 : !sea.ptr<64>, %v141 : i64, %v142 : i64):
  sea.br ^bb63
^bb63:
  %v143 = sea.load %v139[%v5] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_112"("aws-c-common/source/byte_buf.c":66:22))
  %v144 = sea.const 0 : i64 loc("_113"("aws-c-common/source/byte_buf.c":66:26))
  %v145 = sea.icmp eq, %v143, %v144 : i64 loc("_113"("aws-c-common/source/byte_buf.c":66:26))
  %v146 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v145, ^bb69(%v146 : i1), ^bb64 loc("aws-c-common/source/byte_buf.c":66:32)
^bb64:
  sea.br ^bb65
^bb65:
  sea.br ^bb66
^bb66:
  %v147 = sea.load %v139[%v32] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_117"("aws-c-common/source/byte_buf.c":66:63))
  %v148 = sea.ptr.null : !sea.ptr<64> loc(".not2.i42.i"("aws-c-common/source/byte_buf.c":66:55))
  %v149 = sea.ptr.cmp eq, %v147, %v148 : !sea.ptr<64> loc(".not2.i42.i"("aws-c-common/source/byte_buf.c":66:55))
  %v150 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v149, ^bb69(%v150 : i1), ^bb67 loc("aws-c-common/source/byte_buf.c":66:67)
^bb67:
  sea.br ^bb68
^bb68:
  %v151 = sea.const 1 : i1
  sea.br ^bb69(%v151 : i1)
^bb69(%v152 : i1):
  sea.br ^bb70
^bb70:
  sea.cond_br %v145, ^bb75, ^bb71 loc("aws-c-common/source/byte_buf.c":66:32)
^bb71:
  sea.br ^bb72
^bb72:
  %v153 = sea.load %v139[%v32] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_124")
  %v154 = sea.ptr.null : !sea.ptr<64> loc(".not2.i39.i")
  %v155 = sea.ptr.cmp ne, %v153, %v154 : !sea.ptr<64> loc(".not2.i39.i")
  %v156 = sea.const 1 : i1 loc("or.cond13.not")
  %v157 = sea.const 0 : i1 loc("or.cond13.not")
  %v158 = sea.select %v156, %v155, %v157 : i1 loc("or.cond13.not")
  sea.cond_br %v158, ^bb73, ^bb106
^bb73:
  sea.br ^bb74
^bb74:
  sea.br ^bb75
^bb75:
  sea.br ^bb76
^bb76:
  %v159 = sea.const 0 : i64 loc(".not"("aws-c-common/source/byte_buf.c":60:28))
  %v160 = sea.icmp eq, %v142, %v159 : i64 loc(".not"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v160, ^bb84, ^bb77 loc("aws-c-common/source/byte_buf.c":60:33)
^bb77:
  sea.br ^bb78
^bb78:
  sea.br ^bb79
^bb79:
  sea.br ^bb80
^bb80:
  %v161 = sea.icmp ugt, %v141, %v142 : i64 loc(".not2.i31.i"("aws-c-common/source/byte_buf.c":61:44))
  %v162 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v161, ^bb89(%v162 : i1), ^bb81 loc("aws-c-common/source/byte_buf.c":61:61)
^bb81:
  sea.br ^bb82
^bb82:
  sea.br ^bb83
^bb83:
  %v163 = sea.ptr.null : !sea.ptr<64> loc("_140"("aws-c-common/source/byte_buf.c":61:64))
  %v164 = sea.ptr.cmp ne, %v140, %v163 : !sea.ptr<64> loc("_140"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb89(%v164 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb84:
  sea.br ^bb85
^bb85:
  %v165 = sea.const 0 : i64 loc("_130"("aws-c-common/source/byte_buf.c":60:45))
  %v166 = sea.icmp eq, %v141, %v165 : i64 loc("_130"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v166, ^bb86, ^bb88 loc("aws-c-common/source/byte_buf.c":60:50)
^bb86:
  sea.br ^bb87
^bb87:
  %v167 = sea.ptr.null : !sea.ptr<64> loc("_133"("aws-c-common/source/byte_buf.c":60:65))
  %v168 = sea.ptr.cmp eq, %v140, %v167 : !sea.ptr<64> loc("_133"("aws-c-common/source/byte_buf.c":60:65))
  %v169 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v168, ^bb89(%v169 : i1), ^bb88 loc("aws-c-common/source/byte_buf.c":60:74)
^bb88:
  %v170 = sea.const 0 : i1
  sea.br ^bb89(%v170 : i1)
^bb89(%v171 : i1):
  sea.br ^bb90
^bb90:
  sea.cond_br %v160, ^bb96, ^bb91 loc("aws-c-common/source/byte_buf.c":60:33)
^bb91:
  sea.br ^bb92
^bb92:
  sea.br ^bb93
^bb93:
  %v172 = sea.icmp ule, %v141, %v142 : i64 loc(".not2.i.i")
  %v173 = sea.const 1 : i1 loc("or.cond17.not")
  %v174 = sea.const 0 : i1 loc("or.cond17.not")
  %v175 = sea.select %v173, %v172, %v174 : i1 loc("or.cond17.not")
  sea.cond_br %v175, ^bb94, ^bb106
^bb94:
  sea.br ^bb95
^bb95:
  %v176 = sea.ptr.null : !sea.ptr<64> loc("_154")
  %v177 = sea.ptr.cmp ne, %v140, %v176 : !sea.ptr<64> loc("_154")
  %v178 = sea.const 1 : i1 loc("or.cond10")
  %v179 = sea.const 0 : i1 loc("or.cond10")
  %v180 = sea.select %v178, %v177, %v179 : i1 loc("or.cond10")
  sea.cond_br %v180, ^bb101, ^bb106
^bb96:
  sea.br ^bb97
^bb97:
  %v181 = sea.const 0 : i64 loc("_145"("aws-c-common/source/byte_buf.c":60:45))
  %v182 = sea.icmp eq, %v141, %v181 : i64 loc("_145"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v182, ^bb98, ^bb100 loc("aws-c-common/source/byte_buf.c":60:50)
^bb98:
  sea.br ^bb99
^bb99:
  %v183 = sea.ptr.null : !sea.ptr<64> loc("_148"("aws-c-common/source/byte_buf.c":60:65))
  %v184 = sea.ptr.cmp eq, %v140, %v183 : !sea.ptr<64> loc("_148"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v184, ^bb101, ^bb100 loc("aws-c-common/source/byte_buf.c":60:74)
^bb100:
  sea.br ^bb106
^bb101:
  %v185 = sea.load %v59[%v57] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_155"("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":39:5))
  %v186 = sea.mem.is_modified %v81[%v185] : !sea.mem<!sea.ptr<64>, i8> loc("_156"("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":39:5))
  %v187 = sea.const 1 : i1 loc("_157"("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":39:5))
  %v188 = sea.xor %v186, %v187 : i1 loc("_157"("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":39:5))
  %v189 = sea.mem.is_modified %v81[%v185] : !sea.mem<!sea.ptr<64>, i8> loc("_158"("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":39:5))
  sea.cond_br %v189, ^bb106, ^bb102 loc("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":39:5)
^bb102:
  %v190 = sea.const 0 : i64 loc("_160"("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":43:21))
  %v191 = sea.icmp slt, %v20, %v190 : i64 loc("_160"("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":43:21))
  %v192 = sea.const 0 : i64 loc("_161")
  %v193 = sea.icmp slt, %v35, %v192 : i64 loc("_161")
  %v194 = sea.const 1 : i1 loc("or.cond.i"("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":43:39))
  %v195 = sea.select %v191, %v194, %v193 : i1 loc("or.cond.i"("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":43:39))
  %v196 = sea.icmp ugt, %v35, %v20 : i64 loc("_162")
  %v197 = sea.const 1 : i1 loc("or.cond28.i"("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":43:39))
  %v198 = sea.select %v195, %v197, %v196 : i1 loc("or.cond28.i"("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":43:39))
  sea.cond_br %v198, ^bb105, ^bb103 loc("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":43:39)
^bb103:
  %v199 = sea.load %v139[%v32] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_169"("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":48:9))
  %v200 = sea.ptr.index %v29 [%v35] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_170"("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":48:9))
  %v201 = sea.ptr.cmp eq, %v199, %v200 : !sea.ptr<64> loc("_171"("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":48:9))
  sea.cond_br %v201, ^bb104, ^bb106 loc("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":48:9)
^bb104:
  %v202 = sea.sub %v20, %v35 nsw : i64 loc("_173"("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":49:9))
  %v203 = sea.icmp eq, %v143, %v202 : i64 loc("_174"("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":49:9))
  %v204 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":49:9)
  %v205 = sea.xor %v203, %v204 : i1 loc("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":49:9)
  sea.assume %v205 loc("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":49:9)
  sea.br ^bb106 loc("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":49:9)
^bb105:
  %v206 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":44:13)
  %v207 = sea.xor %v61, %v206 : i1 loc("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":44:13)
  sea.assume %v207 loc("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":44:13)
  %v208 = sea.load %v139[%v32] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_164"("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":45:13))
  %v209 = sea.mem.is_modified %v138[%v208] : !sea.mem<!sea.ptr<64>, i8> loc("_165"("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":45:13))
  %v210 = sea.const 1 : i1 loc("_166"("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":45:13))
  %v211 = sea.xor %v209, %v210 : i1 loc("_166"("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":45:13))
  %v212 = sea.mem.is_modified %v138[%v208] : !sea.mem<!sea.ptr<64>, i8> loc("_167"("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":45:13))
  sea.assume %v212 loc("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":45:13)
  sea.br ^bb106 loc("seahorn/jobs2/byte_cursor_read_and_fill_buffer2/aws_byte_cursor_read_and_fill_buffer_harness2.c":45:13)
^bb106:
  sea.br ^bb107
^bb107:
  %v213 = sea.const 0 : i1
  sea.assert %v213
  sea.halt
}
