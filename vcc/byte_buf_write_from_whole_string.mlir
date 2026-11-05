// Exported from SeaHorn (byte_buf_write_from_whole_string.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.16" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm25")
  %v1 = sea.mem.nondet "region.48" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm26")
  %v2 = sea.mem.nondet "region.80" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm27")
  %v3 = sea.mem.nondet "region.0" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm28")
  %v4 = sea.mem.nondet "region.89" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm29")
  %v5 = sea.const 32 : i64 loc("_0")
  %v6 = sea.alloca %v5 align 8 [5] : i64 -> !sea.ptr<64> loc("_0")
  %v7 = sea.const 32 : i64 loc("_1")
  %v8 = sea.alloca %v7 align 8 [6] : i64 -> !sea.ptr<64> loc("_1")
  %v9 = sea.const 16 : i64 loc("_2")
  %v10 = sea.alloca %v9 align 8 [7] : i64 -> !sea.ptr<64> loc("_2")
  %v11 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v12 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v13 = sea.store %v3[%v11], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v14 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_3")
  %v15 = sea.ptr.index %v14 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_3")
  %v16 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v17 = sea.store %v13[%v15], %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v18 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_4")
  %v19 = sea.ptr.index %v18 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_4")
  %v20 = sea.const 0 : i8
  %v21 = sea.const 24 : i64
  %v22 = sea.memset %v17[%v19], %v20, %v21 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v23 = sea.nondet "nd_bool" [8] : i1 loc("_5"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":15:7))
  %v24 = sea.ptr.null : !sea.ptr<64> loc("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":15:7)
  sea.cond_br %v23, ^bb1, ^bb10(%v4, %v24 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":15:7)
^bb1:
  %v25 = sea.nondet "nd_size_t" [9] : i64 loc("_7"("seahorn/lib/string_helper.c":24:16))
  %v26 = sea.const 16 : i64 loc("_8"("seahorn/lib/string_helper.c":25:14))
  %v27 = sea.icmp ult, %v25, %v26 : i64 loc("_8"("seahorn/lib/string_helper.c":25:14))
  sea.assume %v27 loc("seahorn/lib/string_helper.c":25:3)
  %v28 = sea.const 25 : i64 loc("_9"("seahorn/lib/string_helper.c":11:61))
  %v29 = sea.add %v25, %v28 : i64 loc("_9"("seahorn/lib/string_helper.c":11:61))
  %v30 = sea.nondet "nd_malloc_is_fail" [10] : i1 loc("_10"("seahorn/lib/sea_allocators.c":11:10))
  %v31 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v30, ^bb3(%v4, %v31 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb2 loc("seahorn/lib/sea_allocators.c":11:10)
^bb2:
  %v32 = sea.const 1 : i64 loc("malloc.i")
  %v33 = sea.mul %v29, %v32 : i64 loc("malloc.i")
  %v34 = sea.alloca %v33 align 16 [11] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb3(%v4, %v34 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb3(%v35 : !sea.mem<!sea.ptr<64>, i8>, %v36 : !sea.ptr<64>):
  %v37 = sea.memhavoc %v35[%v36], %v29 [12] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v38 = sea.ptr.null : !sea.ptr<64> loc("_13"("seahorn/lib/sea_allocators.c":45:10))
  %v39 = sea.ptr.cmp ne, %v36, %v38 : !sea.ptr<64> loc("_13"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v39 loc("seahorn/lib/sea_allocators.c":45:3)
  %v40 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i.i"("seahorn/lib/string_helper.c":13:7))
  %v41 = sea.ptr.cmp eq, %v36, %v40 : !sea.ptr<64> loc(".not.i.i.i"("seahorn/lib/string_helper.c":13:7))
  %v42 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":13:7)
  sea.cond_br %v41, ^bb10(%v37, %v42 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/string_helper.c":13:7)
^bb4:
  %v43 = sea.nondet "nd_bool" [13] : i1 loc("_15"("seahorn/lib/string_helper.c":16:9))
  %v44 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.cond_br %v43, ^bb5, ^bb6(%v44 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb5:
  %v45 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.br ^bb6(%v45 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb6(%v46 : !sea.ptr<64>):
  %v47 = sea.const 8 : i64 loc("_19"("seahorn/lib/string_helper.c":15:49))
  %v48 = sea.ptr.dereferenceable %v36, %v47 : !sea.ptr<64>, i64 loc("_19"("seahorn/lib/string_helper.c":15:49))
  sea.cond_br %v48, ^bb7, ^bb124
^bb7:
  %v49 = sea.store %v37[%v36], %v46 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/string_helper.c":15:49)
  %v50 = sea.ptr.index %v36 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_21"("seahorn/lib/string_helper.c":17:23))
  %v51 = sea.const 8 : i64 loc("_22"("seahorn/lib/string_helper.c":17:28))
  %v52 = sea.ptr.dereferenceable %v50, %v51 : !sea.ptr<64>, i64 loc("_22"("seahorn/lib/string_helper.c":17:28))
  sea.cond_br %v52, ^bb8, ^bb124
^bb8:
  %v53 = sea.store %v49[%v50], %v25 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/string_helper.c":17:28)
  %v54 = sea.ptr.index %v36 [%v25] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_24"("seahorn/lib/string_helper.c":18:18))
  %v55 = sea.const 1 : i64 loc("_25"("seahorn/lib/string_helper.c":18:34))
  %v56 = sea.ptr.dereferenceable %v54, %v55 : !sea.ptr<64>, i64 loc("_25"("seahorn/lib/string_helper.c":18:34))
  sea.cond_br %v56, ^bb9, ^bb124
^bb9:
  %v57 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":18:34)
  %v58 = sea.store %v53[%v54], %v57 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":18:34)
  sea.br ^bb10(%v58, %v36 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/string_helper.c":19:3)
^bb10(%v59 : !sea.mem<!sea.ptr<64>, i8>, %v60 : !sea.ptr<64>):
  %v61 = sea.nondet "nd_size_t" [14] : i64 loc("_28"("seahorn/lib/byte_buf_helper.c":19:18))
  %v62 = sea.nondet "nd_size_t" [15] : i64 loc("_29"("seahorn/lib/byte_buf_helper.c":20:18))
  %v63 = sea.icmp ule, %v61, %v62 : i64 loc("_30"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v63 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v64 = sea.const 11 : i64 loc("_31"("seahorn/lib/byte_buf_helper.c":22:16))
  %v65 = sea.icmp ult, %v62, %v64 : i64 loc("_31"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v65 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb11
^bb11:
  %v66 = sea.store %v0[%v6], %v61 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v67 = sea.ptr.index %v6 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_33"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb12
^bb12:
  %v68 = sea.store %v66[%v67], %v62 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v69 = sea.const 0 : i64 loc("_35"("seahorn/lib/proof_allocators.c":21:15))
  %v70 = sea.icmp eq, %v62, %v69 : i64 loc("_35"("seahorn/lib/proof_allocators.c":21:15))
  %v71 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v70, ^bb16(%v59, %v71 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb13 loc("seahorn/lib/proof_allocators.c":21:10)
^bb13:
  %v72 = sea.nondet "nd_malloc_is_fail" [16] : i1 loc("_37"("seahorn/lib/sea_allocators.c":11:10))
  %v73 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v72, ^bb15(%v59, %v73 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb14 loc("seahorn/lib/sea_allocators.c":11:10)
^bb14:
  %v74 = sea.const 1 : i64 loc("malloc38.i")
  %v75 = sea.mul %v62, %v74 : i64 loc("malloc38.i")
  %v76 = sea.alloca %v75 align 16 [17] : i64 -> !sea.ptr<64> loc("malloc38.i")
  sea.br ^bb15(%v59, %v76 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb15(%v77 : !sea.mem<!sea.ptr<64>, i8>, %v78 : !sea.ptr<64>):
  %v79 = sea.memhavoc %v77[%v78], %v62 [18] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb16(%v79, %v78 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb16(%v80 : !sea.mem<!sea.ptr<64>, i8>, %v81 : !sea.ptr<64>):
  %v82 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_41"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb17
^bb17:
  %v83 = sea.store %v68[%v82], %v81 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v84 = sea.ptr.index %v6 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_43"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb18
^bb18:
  %v85 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v86 = sea.store %v83[%v84], %v85 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  sea.br ^bb19
^bb19:
  sea.cond_br %v70, ^bb27, ^bb20 loc("aws-c-common/source/byte_buf.c":60:33)
^bb20:
  sea.br ^bb21
^bb21:
  sea.br ^bb22
^bb22:
  sea.br ^bb23
^bb23:
  %v87 = sea.icmp ugt, %v61, %v62 : i64 loc(".not2.i21.i"("aws-c-common/source/byte_buf.c":61:44))
  %v88 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v87, ^bb32(%v88 : i1), ^bb24 loc("aws-c-common/source/byte_buf.c":61:61)
^bb24:
  sea.br ^bb25
^bb25:
  sea.br ^bb26
^bb26:
  %v89 = sea.ptr.null : !sea.ptr<64> loc("_57"("aws-c-common/source/byte_buf.c":61:64))
  %v90 = sea.ptr.cmp ne, %v81, %v89 : !sea.ptr<64> loc("_57"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb32(%v90 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb27:
  sea.br ^bb28
^bb28:
  %v91 = sea.const 0 : i64 loc("_47"("aws-c-common/source/byte_buf.c":60:45))
  %v92 = sea.icmp eq, %v61, %v91 : i64 loc("_47"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v92, ^bb29, ^bb31 loc("aws-c-common/source/byte_buf.c":60:50)
^bb29:
  sea.br ^bb30
^bb30:
  %v93 = sea.ptr.null : !sea.ptr<64> loc("_50"("aws-c-common/source/byte_buf.c":60:65))
  %v94 = sea.ptr.cmp eq, %v81, %v93 : !sea.ptr<64> loc("_50"("aws-c-common/source/byte_buf.c":60:65))
  %v95 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v94, ^bb32(%v95 : i1), ^bb31 loc("aws-c-common/source/byte_buf.c":60:74)
^bb31:
  %v96 = sea.const 0 : i1
  sea.br ^bb32(%v96 : i1)
^bb32(%v97 : i1):
  sea.assume %v97 loc("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":20:3)
  %v98 = sea.store %v1[%v8], %v61 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":23:33)
  %v99 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy6.i"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":23:33))
  %v100 = sea.store %v98[%v99], %v81 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":23:33)
  %v101 = sea.ptr.index %v8 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy9.i"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":23:33))
  %v102 = sea.store %v100[%v101], %v62 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":23:33)
  %v103 = sea.ptr.index %v8 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy12.i"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":23:33))
  %v104 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":23:33)
  %v105 = sea.store %v102[%v103], %v104 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":23:33)
  %v106 = sea.nondet "nd_size_t" [19] : i64 loc("_59"("seahorn/lib/utils.c":46:20))
  sea.br ^bb33
^bb33:
  %v107 = sea.store %v2[%v10], %v106 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v108 = sea.const 0 : i64 loc("_61"("seahorn/lib/utils.c":47:12))
  %v109 = sea.icmp ne, %v61, %v108 : i64 loc("_61"("seahorn/lib/utils.c":47:12))
  %v110 = sea.ptr.null : !sea.ptr<64> loc("_62")
  %v111 = sea.ptr.cmp ne, %v81, %v110 : !sea.ptr<64> loc("_62")
  %v112 = sea.and %v109, %v111 : i1 loc("or.cond.i32.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v112, ^bb36, ^bb34 loc("seahorn/lib/utils.c":47:16)
^bb34:
  %v113 = sea.nondet "nd_uint8_t" [20] : i8 loc("_74"("seahorn/lib/utils.c":51:21))
  %v114 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_75"("seahorn/lib/utils.c":51:14))
  sea.br ^bb35
^bb35:
  %v115 = sea.store %v107[%v114], %v113 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb41(%v113 : i8)
^bb36:
  sea.br ^bb37
^bb37:
  %v116 = sea.icmp ult, %v106, %v61 : i64 loc("_65"("seahorn/lib/utils.c":48:27))
  sea.assume %v116 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb38
^bb38:
  %v117 = sea.ptr.index %v81 [%v106] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_67"("seahorn/lib/utils.c":49:21))
  %v118 = sea.const 1 : i64 loc("_68"("seahorn/lib/utils.c":49:21))
  %v119 = sea.ptr.dereferenceable %v117, %v118 : !sea.ptr<64>, i64 loc("_68"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v119, ^bb39, ^bb124
^bb39:
  %v120 = sea.load %v80[%v117] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_70"("seahorn/lib/utils.c":49:21))
  %v121 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_71"("seahorn/lib/utils.c":49:14))
  sea.br ^bb40
^bb40:
  %v122 = sea.store %v107[%v121], %v120 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb41(%v120 : i8) loc("seahorn/lib/utils.c":50:3)
^bb41(%v123 : i8):
  %v124 = sea.sub %v62, %v61 : i64 loc("_78"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":27:39))
  %v125 = sea.nondet "nd_bool" [21] : i1 loc("_79"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":28:27))
  %v126 = sea.ptr.null : !sea.ptr<64> loc("..i"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":30:44))
  %v127 = sea.select %v125, %v6, %v126 : !sea.ptr<64> loc("..i"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":30:44))
  %v128 = sea.ptr.null : !sea.ptr<64> loc("_80")
  %v129 = sea.ptr.cmp ne, %v60, %v128 : !sea.ptr<64> loc("_80")
  %v130 = sea.and %v129, %v125 : i1 loc("or.cond.i.i.not"("aws-c-common/source/string.c":412:21))
  sea.cond_br %v130, ^bb42, ^bb56 loc("aws-c-common/source/string.c":412:21)
^bb42:
  %v131 = sea.ptr.index %v60 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_82"("aws-c-common/include/aws/common/string.inl":17:17))
  %v132 = sea.ptr.index %v60 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_83"("aws-c-common/source/string.c":415:64))
  %v133 = sea.const 8 : i64 loc("_84"("aws-c-common/source/string.c":415:64))
  %v134 = sea.ptr.dereferenceable %v132, %v133 : !sea.ptr<64>, i64 loc("_84"("aws-c-common/source/string.c":415:64))
  sea.cond_br %v134, ^bb43, ^bb124
^bb43:
  %v135 = sea.load %v80[%v132] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_86"("aws-c-common/source/string.c":415:64))
  %v136 = sea.const 0 : i64 loc("_87"("aws-c-common/source/byte_buf.c":1447:13))
  %v137 = sea.icmp eq, %v135, %v136 : i64 loc("_87"("aws-c-common/source/byte_buf.c":1447:13))
  sea.cond_br %v137, ^bb78(%v80, %v86 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>), ^bb44 loc("aws-c-common/source/byte_buf.c":1447:9)
^bb44:
  %v138 = sea.const 8 : i64 loc("_89"("aws-c-common/source/byte_buf.c":1452:14))
  %v139 = sea.ptr.dereferenceable %v127, %v138 : !sea.ptr<64>, i64 loc("_89"("aws-c-common/source/byte_buf.c":1452:14))
  sea.cond_br %v139, ^bb45, ^bb124
^bb45:
  %v140 = sea.load %v66[%v127] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_91"("aws-c-common/source/byte_buf.c":1452:14))
  %v141 = sea.or %v140, %v135 : i64 loc("_92"("aws-c-common/source/byte_buf.c":1452:36))
  %v142 = sea.const 18446744073709551615 : i64 loc("or.cond.i24.i.not"("aws-c-common/source/byte_buf.c":1452:36))
  %v143 = sea.icmp sgt, %v141, %v142 : i64 loc("or.cond.i24.i.not"("aws-c-common/source/byte_buf.c":1452:36))
  sea.cond_br %v143, ^bb46, ^bb56 loc("aws-c-common/source/byte_buf.c":1452:36)
^bb46:
  %v144 = sea.const 8 : i64 loc("_94"("aws-c-common/source/byte_buf.c":1452:69))
  %v145 = sea.ptr.dereferenceable %v127, %v144 : !sea.ptr<64>, i64 loc("_94"("aws-c-common/source/byte_buf.c":1452:69))
  sea.cond_br %v145, ^bb47, ^bb124
^bb47:
  sea.br ^bb48
^bb48:
  %v146 = sea.add %v140, %v135 : i64 loc("_97"("aws-c-common/source/byte_buf.c":1452:73))
  %v147 = sea.icmp ugt, %v146, %v62 : i64 loc("_98"("aws-c-common/source/byte_buf.c":1452:79))
  sea.cond_br %v147, ^bb56, ^bb49 loc("aws-c-common/source/byte_buf.c":1452:9)
^bb49:
  sea.br ^bb50
^bb50:
  %v148 = sea.const 8 : i64 loc("_101"("aws-c-common/source/byte_buf.c":1457:31))
  %v149 = sea.ptr.dereferenceable %v127, %v148 : !sea.ptr<64>, i64 loc("_101"("aws-c-common/source/byte_buf.c":1457:31))
  sea.cond_br %v149, ^bb51, ^bb124
^bb51:
  %v150 = sea.ptr.index %v81 [%v140] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_103"("aws-c-common/source/byte_buf.c":1457:24))
  %v151 = sea.ptr.dereferenceable %v150, %v135 : !sea.ptr<64>, i64 loc("_104"("seahorn/lib/bcmp.c":161:3))
  %v152 = sea.ptr.dereferenceable %v150, %v135 : !sea.ptr<64>, i64 loc("_105"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v152, ^bb52, ^bb124 loc("seahorn/lib/bcmp.c":161:3)
^bb52:
  %v153 = sea.ptr.dereferenceable %v131, %v135 : !sea.ptr<64>, i64 loc("_107"("seahorn/lib/bcmp.c":162:3))
  %v154 = sea.ptr.dereferenceable %v131, %v135 : !sea.ptr<64>, i64 loc("_108"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v154, ^bb53, ^bb124 loc("seahorn/lib/bcmp.c":162:3)
^bb53:
  %v155 = sea.memmove %v80[%v150], %v80[%v131], %v135 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  %v156 = sea.const 8 : i64 loc("_109"("aws-c-common/source/byte_buf.c":1458:14))
  %v157 = sea.ptr.dereferenceable %v127, %v156 : !sea.ptr<64>, i64 loc("_109"("aws-c-common/source/byte_buf.c":1458:14))
  sea.cond_br %v157, ^bb54, ^bb124
^bb54:
  %v158 = sea.const 8 : i64 loc("_111"("aws-c-common/source/byte_buf.c":1458:14))
  %v159 = sea.ptr.dereferenceable %v127, %v158 : !sea.ptr<64>, i64 loc("_111"("aws-c-common/source/byte_buf.c":1458:14))
  sea.cond_br %v159, ^bb55, ^bb124
^bb55:
  %v160 = sea.store %v86[%v127], %v146 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":1458:14)
  sea.br ^bb78(%v155, %v160 : !sea.mem<!sea.ptr<64>, i8>, !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":1461:5)
^bb56:
  sea.br ^bb57
^bb57:
  sea.br ^bb58
^bb58:
  sea.br ^bb59
^bb59:
  sea.br ^bb60
^bb60:
  sea.br ^bb61
^bb61:
  sea.br ^bb62
^bb62:
  sea.br ^bb63
^bb63:
  sea.br ^bb64
^bb64:
  sea.br ^bb65
^bb65:
  sea.br ^bb66
^bb66:
  sea.br ^bb67
^bb67:
  sea.br ^bb68
^bb68:
  sea.br ^bb69
^bb69:
  %v161 = sea.const 0 : i64 loc(".not.i36.i"("seahorn/lib/utils.c":86:16))
  %v162 = sea.icmp eq, %v61, %v161 : i64 loc(".not.i36.i"("seahorn/lib/utils.c":86:16))
  %v163 = sea.const 0 : i64 loc("seahorn/lib/utils.c":86:7)
  sea.cond_br %v162, ^bb95(%v86, %v163 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb70 loc("seahorn/lib/utils.c":86:7)
^bb70:
  sea.br ^bb71
^bb71:
  %v164 = sea.ptr.null : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  %v165 = sea.ptr.cmp eq, %v81, %v164 : !sea.ptr<64> loc(".not"("seahorn/lib/utils.c":39:7))
  sea.cond_br %v165, ^bb95(%v86, %v61 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb72 loc("seahorn/lib/utils.c":39:14)
^bb72:
  sea.br ^bb73
^bb73:
  %v166 = sea.ptr.index %v81 [%v106] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_183"("seahorn/lib/utils.c":40:5))
  %v167 = sea.const 1 : i64 loc("_184"("seahorn/lib/utils.c":40:5))
  %v168 = sea.ptr.dereferenceable %v166, %v167 : !sea.ptr<64>, i64 loc("_184"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v168, ^bb74, ^bb124
^bb74:
  %v169 = sea.load %v80[%v166] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_186"("seahorn/lib/utils.c":40:5))
  sea.br ^bb75
^bb75:
  %v170 = sea.icmp eq, %v169, %v123 : i8 loc("_188"("seahorn/lib/utils.c":40:5))
  sea.br ^bb76
^bb76:
  %v171 = sea.const 1 : i64 loc("_190"("seahorn/lib/utils.c":40:5))
  %v172 = sea.ptr.dereferenceable %v166, %v171 : !sea.ptr<64>, i64 loc("_190"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v172, ^bb77, ^bb124
^bb77:
  %v173 = sea.const 1 : i1 loc("or.cond16")
  %v174 = sea.const 0 : i1 loc("or.cond16")
  %v175 = sea.select %v173, %v170, %v174 : i1 loc("or.cond16")
  sea.cond_br %v175, ^bb95(%v86, %v61 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb124
^bb78(%v176 : !sea.mem<!sea.ptr<64>, i8>, %v177 : !sea.mem<!sea.ptr<64>, i8>):
  %v178 = sea.const 8 : i64 loc("_113"("aws-c-common/include/aws/common/string.inl":35:19))
  %v179 = sea.ptr.dereferenceable %v132, %v178 : !sea.ptr<64>, i64 loc("_113"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v179, ^bb79, ^bb124
^bb79:
  %v180 = sea.const 8 : i64 loc("_115"("aws-c-common/include/aws/common/string.inl":35:88))
  %v181 = sea.ptr.dereferenceable %v132, %v180 : !sea.ptr<64>, i64 loc("_115"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v181, ^bb80, ^bb124
^bb80:
  %v182 = sea.load %v176[%v132] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_117"("aws-c-common/include/aws/common/string.inl":35:88))
  %v183 = sea.ptr.index %v60 [%v182] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_118"("aws-c-common/include/aws/common/string.inl":35:72))
  %v184 = sea.const 1 : i64 loc("_119"("aws-c-common/include/aws/common/string.inl":35:72))
  %v185 = sea.ptr.dereferenceable %v183, %v184 : !sea.ptr<64>, i64 loc("_119"("aws-c-common/include/aws/common/string.inl":35:72))
  sea.cond_br %v185, ^bb81, ^bb124
^bb81:
  %v186 = sea.load %v176[%v183] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_120"("aws-c-common/include/aws/common/string.inl":35:72))
  %v187 = sea.const 0 : i8 loc("_121"("aws-c-common/include/aws/common/string.inl":35:93))
  %v188 = sea.icmp eq, %v186, %v187 : i8 loc("_121"("aws-c-common/include/aws/common/string.inl":35:93))
  %v189 = sea.const 8 : i64 loc("_122"("aws-c-common/include/aws/common/string.inl":35:19))
  %v190 = sea.ptr.dereferenceable %v132, %v189 : !sea.ptr<64>, i64 loc("_122"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v190, ^bb82, ^bb124
^bb82:
  %v191 = sea.const 8 : i64 loc("_124"("aws-c-common/include/aws/common/string.inl":35:88))
  %v192 = sea.ptr.dereferenceable %v132, %v191 : !sea.ptr<64>, i64 loc("_124"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v192, ^bb83, ^bb124
^bb83:
  %v193 = sea.const 1 : i64 loc("_126"("aws-c-common/include/aws/common/string.inl":35:72))
  %v194 = sea.ptr.dereferenceable %v183, %v193 : !sea.ptr<64>, i64 loc("_126"("aws-c-common/include/aws/common/string.inl":35:72))
  %v195 = sea.const 0 : i1 loc("_127")
  %v196 = sea.select %v194, %v188, %v195 : i1 loc("_127")
  sea.cond_br %v196, ^bb84, ^bb124
^bb84:
  %v197 = sea.const 8 : i64 loc("_129"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":34:5))
  %v198 = sea.ptr.dereferenceable %v132, %v197 : !sea.ptr<64>, i64 loc("_129"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":34:5))
  sea.cond_br %v198, ^bb85, ^bb124
^bb85:
  %v199 = sea.icmp uge, %v124, %v182 : i64 loc("_131"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":34:5))
  %v200 = sea.const 8 : i64 loc("_132"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":34:5))
  %v201 = sea.ptr.dereferenceable %v132, %v200 : !sea.ptr<64>, i64 loc("_132"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":34:5))
  %v202 = sea.const 0 : i1 loc("or.cond.not")
  %v203 = sea.select %v201, %v199, %v202 : i1 loc("or.cond.not")
  sea.cond_br %v203, ^bb86, ^bb124
^bb86:
  %v204 = sea.load %v177[%v6] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_134"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":36:7))
  %v205 = sea.const 8 : i64 loc("_135"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":36:7))
  %v206 = sea.ptr.dereferenceable %v132, %v205 : !sea.ptr<64>, i64 loc("_135"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":36:7))
  sea.cond_br %v206, ^bb87, ^bb124
^bb87:
  %v207 = sea.add %v182, %v61 : i64 loc("_137"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":36:7))
  %v208 = sea.icmp eq, %v204, %v207 : i64 loc("_138"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":36:7))
  %v209 = sea.const 8 : i64 loc("_139"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":36:7))
  %v210 = sea.ptr.dereferenceable %v132, %v209 : !sea.ptr<64>, i64 loc("_139"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":36:7))
  %v211 = sea.const 0 : i1 loc("_140")
  %v212 = sea.select %v210, %v208, %v211 : i1 loc("_140")
  sea.cond_br %v212, ^bb88, ^bb124
^bb88:
  %v213 = sea.load %v177[%v67] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_142"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":37:7))
  %v214 = sea.icmp eq, %v62, %v213 : i64 loc("_143"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":37:7))
  sea.cond_br %v214, ^bb89, ^bb124 loc("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":37:7)
^bb89:
  %v215 = sea.load %v177[%v84] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_145"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":38:7))
  %v216 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_146"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":38:7))
  %v217 = sea.ptr.cmp eq, %v215, %v216 : !sea.ptr<64> loc("_146"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":38:7))
  sea.cond_br %v217, ^bb90, ^bb124 loc("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":38:7)
^bb90:
  %v218 = sea.const 8 : i64 loc("_148"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":39:16))
  %v219 = sea.ptr.dereferenceable %v132, %v218 : !sea.ptr<64>, i64 loc("_148"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":39:16))
  sea.cond_br %v219, ^bb91, ^bb124
^bb91:
  %v220 = sea.const 0 : i64 loc("_150"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":39:20))
  %v221 = sea.icmp ne, %v182, %v220 : i64 loc("_150"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":39:20))
  %v222 = sea.const 0 : i64 loc("_151")
  %v223 = sea.icmp ne, %v204, %v222 : i64 loc("_151")
  %v224 = sea.const 0 : i1 loc("or.cond4.i"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":39:24))
  %v225 = sea.select %v221, %v223, %v224 : i1 loc("or.cond4.i"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":39:24))
  sea.cond_br %v225, ^bb92, ^bb95(%v177, %v204 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":39:24)
^bb92:
  %v226 = sea.load %v177[%v82] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_153"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":40:32))
  %v227 = sea.const 8 : i64 loc("_154"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":40:71))
  %v228 = sea.ptr.dereferenceable %v132, %v227 : !sea.ptr<64>, i64 loc("_154"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":40:71))
  sea.cond_br %v228, ^bb93, ^bb124
^bb93:
  %v229 = sea.ptr.null : !sea.ptr<64> loc(".not.i33.i"("seahorn/lib/utils.c":15:3))
  %v230 = sea.ptr.cmp ne, %v226, %v229 : !sea.ptr<64> loc(".not.i33.i"("seahorn/lib/utils.c":15:3))
  %v231 = sea.ptr.null : !sea.ptr<64> loc(".not5.i.i.not"("seahorn/lib/utils.c":15:3))
  %v232 = sea.ptr.cmp eq, %v226, %v231 : !sea.ptr<64> loc(".not5.i.i.not"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v232, ^bb124, ^bb94 loc("seahorn/lib/utils.c":15:3)
^bb94:
  %v233 = sea.ptr.index %v226 [%v61] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_156"("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":40:39))
  %v234 = sea.nondet "nd_size_t" [22] : i64 loc("_157"("seahorn/lib/utils.c":17:16))
  %v235 = sea.icmp ult, %v234, %v182 : i64 loc("_158"("seahorn/lib/utils.c":19:14))
  %v236 = sea.const 36028797018963967 : i64 loc("_159"("seahorn/lib/utils.c":19:20))
  %v237 = sea.icmp ult, %v182, %v236 : i64 loc("_159"("seahorn/lib/utils.c":19:20))
  %v238 = sea.and %v237, %v235 : i1 loc("_160"("seahorn/lib/utils.c":19:20))
  sea.assume %v238 loc("seahorn/lib/utils.c":19:5)
  %v239 = sea.ptr.index %v233 [%v234] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_161"("seahorn/lib/utils.c":20:5))
  %v240 = sea.load %v176[%v239] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_162"("seahorn/lib/utils.c":20:5))
  %v241 = sea.ptr.index %v131 [%v234] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_163"("seahorn/lib/utils.c":20:5))
  %v242 = sea.load %v176[%v241] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_164"("seahorn/lib/utils.c":20:5))
  %v243 = sea.icmp eq, %v240, %v242 : i8 loc("_165"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v243, ^bb95(%v177, %v204 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb124 loc("seahorn/lib/utils.c":20:5)
^bb95(%v244 : !sea.mem<!sea.ptr<64>, i8>, %v245 : i64):
  sea.br ^bb96
^bb96:
  sea.cond_br %v70, ^bb104, ^bb97 loc("aws-c-common/source/byte_buf.c":60:33)
^bb97:
  sea.br ^bb98
^bb98:
  sea.br ^bb99
^bb99:
  sea.br ^bb100
^bb100:
  %v246 = sea.icmp ugt, %v245, %v62 : i64 loc(".not2.i17.i"("aws-c-common/source/byte_buf.c":61:44))
  %v247 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v246, ^bb109(%v245, %v247 : i64, i1), ^bb101 loc("aws-c-common/source/byte_buf.c":61:61)
^bb101:
  sea.br ^bb102
^bb102:
  sea.br ^bb103
^bb103:
  %v248 = sea.load %v244[%v82] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_207"("aws-c-common/source/byte_buf.c":61:64))
  %v249 = sea.ptr.null : !sea.ptr<64> loc("_208"("aws-c-common/source/byte_buf.c":61:64))
  %v250 = sea.ptr.cmp ne, %v248, %v249 : !sea.ptr<64> loc("_208"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb109(%v245, %v250 : i64, i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb104:
  sea.br ^bb105
^bb105:
  %v251 = sea.const 0 : i64 loc("_196"("aws-c-common/source/byte_buf.c":60:45))
  %v252 = sea.icmp eq, %v245, %v251 : i64 loc("_196"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v252, ^bb106, ^bb108 loc("aws-c-common/source/byte_buf.c":60:50)
^bb106:
  sea.br ^bb107
^bb107:
  %v253 = sea.load %v244[%v82] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_199"("aws-c-common/source/byte_buf.c":60:58))
  %v254 = sea.ptr.null : !sea.ptr<64> loc("_200"("aws-c-common/source/byte_buf.c":60:65))
  %v255 = sea.ptr.cmp eq, %v253, %v254 : !sea.ptr<64> loc("_200"("aws-c-common/source/byte_buf.c":60:65))
  %v256 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":60:74)
  %v257 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v255, ^bb109(%v256, %v257 : i64, i1), ^bb108 loc("aws-c-common/source/byte_buf.c":60:74)
^bb108:
  %v258 = sea.const 0 : i1
  sea.br ^bb109(%v245, %v258 : i64, i1)
^bb109(%v259 : i64, %v260 : i1):
  sea.br ^bb110
^bb110:
  sea.cond_br %v70, ^bb118, ^bb111 loc("aws-c-common/source/byte_buf.c":60:33)
^bb111:
  sea.br ^bb112
^bb112:
  sea.br ^bb113
^bb113:
  sea.br ^bb114
^bb114:
  %v261 = sea.icmp ugt, %v259, %v62 : i64 loc(".not2.i.i"("aws-c-common/source/byte_buf.c":61:44))
  %v262 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v261, ^bb123(%v262 : i1), ^bb115 loc("aws-c-common/source/byte_buf.c":61:61)
^bb115:
  sea.br ^bb116
^bb116:
  sea.br ^bb117
^bb117:
  %v263 = sea.load %v244[%v82] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_225"("aws-c-common/source/byte_buf.c":61:64))
  %v264 = sea.ptr.null : !sea.ptr<64> loc("_226"("aws-c-common/source/byte_buf.c":61:64))
  %v265 = sea.ptr.cmp ne, %v263, %v264 : !sea.ptr<64> loc("_226"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb123(%v265 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb118:
  sea.br ^bb119
^bb119:
  %v266 = sea.const 0 : i64 loc("_214"("aws-c-common/source/byte_buf.c":60:45))
  %v267 = sea.icmp eq, %v259, %v266 : i64 loc("_214"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v267, ^bb120, ^bb122 loc("aws-c-common/source/byte_buf.c":60:50)
^bb120:
  sea.br ^bb121
^bb121:
  %v268 = sea.load %v244[%v82] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_217"("aws-c-common/source/byte_buf.c":60:58))
  %v269 = sea.ptr.null : !sea.ptr<64> loc("_218"("aws-c-common/source/byte_buf.c":60:65))
  %v270 = sea.ptr.cmp eq, %v268, %v269 : !sea.ptr<64> loc("_218"("aws-c-common/source/byte_buf.c":60:65))
  %v271 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v270, ^bb123(%v271 : i1), ^bb122 loc("aws-c-common/source/byte_buf.c":60:74)
^bb122:
  %v272 = sea.const 0 : i1
  sea.br ^bb123(%v272 : i1)
^bb123(%v273 : i1):
  %v274 = sea.const 1 : i1 loc("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":47:3)
  %v275 = sea.xor %v273, %v274 : i1 loc("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":47:3)
  sea.assume %v275 loc("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":47:3)
  sea.br ^bb124 loc("seahorn/jobs/byte_buf_write_from_whole_string/aws_byte_buf_write_from_whole_string_harness.c":47:3)
^bb124:
  sea.br ^bb125
^bb125:
  %v276 = sea.const 0 : i1
  sea.assert %v276
  sea.halt
}
