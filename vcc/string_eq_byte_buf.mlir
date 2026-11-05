// Exported from SeaHorn (string_eq_byte_buf.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.16" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm14")
  %v1 = sea.mem.nondet "region.0" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm15")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm16")
  %v3 = sea.mem.nondet "region.49" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm17")
  %v4 = sea.const 32 : i64 loc("_0")
  %v5 = sea.alloca %v4 align 8 [4] : i64 -> !sea.ptr<64> loc("_0")
  %v6 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v7 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v8 = sea.store %v1[%v6], %v7 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v9 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_1")
  %v10 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_1")
  %v11 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v12 = sea.store %v8[%v10], %v11 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v13 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_2")
  %v14 = sea.ptr.index %v13 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_2")
  %v15 = sea.const 0 : i8
  %v16 = sea.const 24 : i64
  %v17 = sea.memset %v12[%v14], %v15, %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v18 = sea.nondet "nd_bool" [5] : i1 loc("_3"("seahorn/jobs/string_eq_byte_buf/aws_string_eq_byte_buf_harness.c":13:30))
  %v19 = sea.ptr.null : !sea.ptr<64> loc("seahorn/jobs/string_eq_byte_buf/aws_string_eq_byte_buf_harness.c":13:30)
  sea.cond_br %v18, ^bb1, ^bb10(%v2, %v19 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/jobs/string_eq_byte_buf/aws_string_eq_byte_buf_harness.c":13:30)
^bb1:
  %v20 = sea.nondet "nd_size_t" [6] : i64 loc("_5"("seahorn/lib/string_helper.c":24:16))
  %v21 = sea.const 16 : i64 loc("_6"("seahorn/lib/string_helper.c":25:14))
  %v22 = sea.icmp ult, %v20, %v21 : i64 loc("_6"("seahorn/lib/string_helper.c":25:14))
  sea.assume %v22 loc("seahorn/lib/string_helper.c":25:3)
  %v23 = sea.const 25 : i64 loc("_7"("seahorn/lib/string_helper.c":11:61))
  %v24 = sea.add %v20, %v23 : i64 loc("_7"("seahorn/lib/string_helper.c":11:61))
  %v25 = sea.nondet "nd_malloc_is_fail" [7] : i1 loc("_8"("seahorn/lib/sea_allocators.c":11:10))
  %v26 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v25, ^bb3(%v2, %v26 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb2 loc("seahorn/lib/sea_allocators.c":11:10)
^bb2:
  %v27 = sea.const 1 : i64 loc("malloc.i")
  %v28 = sea.mul %v24, %v27 : i64 loc("malloc.i")
  %v29 = sea.alloca %v28 align 16 [8] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb3(%v2, %v29 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb3(%v30 : !sea.mem<!sea.ptr<64>, i8>, %v31 : !sea.ptr<64>):
  %v32 = sea.memhavoc %v30[%v31], %v24 [9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v33 = sea.ptr.null : !sea.ptr<64> loc("_11"("seahorn/lib/sea_allocators.c":45:10))
  %v34 = sea.ptr.cmp ne, %v31, %v33 : !sea.ptr<64> loc("_11"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v34 loc("seahorn/lib/sea_allocators.c":45:3)
  %v35 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i16.i"("seahorn/lib/string_helper.c":13:7))
  %v36 = sea.ptr.cmp eq, %v31, %v35 : !sea.ptr<64> loc(".not.i.i16.i"("seahorn/lib/string_helper.c":13:7))
  %v37 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":13:7)
  sea.cond_br %v36, ^bb10(%v32, %v37 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/string_helper.c":13:7)
^bb4:
  %v38 = sea.nondet "nd_bool" [10] : i1 loc("_13"("seahorn/lib/string_helper.c":16:9))
  %v39 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.cond_br %v38, ^bb5, ^bb6(%v39 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb5:
  %v40 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.br ^bb6(%v40 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb6(%v41 : !sea.ptr<64>):
  %v42 = sea.const 8 : i64 loc("_17"("seahorn/lib/string_helper.c":15:49))
  %v43 = sea.ptr.dereferenceable %v31, %v42 : !sea.ptr<64>, i64 loc("_17"("seahorn/lib/string_helper.c":15:49))
  sea.cond_br %v43, ^bb7, ^bb129
^bb7:
  %v44 = sea.store %v32[%v31], %v41 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/string_helper.c":15:49)
  %v45 = sea.ptr.index %v31 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_19"("seahorn/lib/string_helper.c":17:23))
  %v46 = sea.const 8 : i64 loc("_20"("seahorn/lib/string_helper.c":17:28))
  %v47 = sea.ptr.dereferenceable %v45, %v46 : !sea.ptr<64>, i64 loc("_20"("seahorn/lib/string_helper.c":17:28))
  sea.cond_br %v47, ^bb8, ^bb129
^bb8:
  %v48 = sea.store %v44[%v45], %v20 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/string_helper.c":17:28)
  %v49 = sea.ptr.index %v31 [%v20] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_22"("seahorn/lib/string_helper.c":18:18))
  %v50 = sea.const 1 : i64 loc("_23"("seahorn/lib/string_helper.c":18:34))
  %v51 = sea.ptr.dereferenceable %v49, %v50 : !sea.ptr<64>, i64 loc("_23"("seahorn/lib/string_helper.c":18:34))
  sea.cond_br %v51, ^bb9, ^bb129
^bb9:
  %v52 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":18:34)
  %v53 = sea.store %v48[%v49], %v52 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":18:34)
  sea.br ^bb10(%v53, %v31 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/string_helper.c":19:3)
^bb10(%v54 : !sea.mem<!sea.ptr<64>, i8>, %v55 : !sea.ptr<64>):
  %v56 = sea.nondet "nd_size_t" [11] : i64 loc("_26"("seahorn/lib/byte_buf_helper.c":19:18))
  %v57 = sea.nondet "nd_size_t" [12] : i64 loc("_27"("seahorn/lib/byte_buf_helper.c":20:18))
  %v58 = sea.icmp ule, %v56, %v57 : i64 loc("_28"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v58 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v59 = sea.const 11 : i64 loc("_29"("seahorn/lib/byte_buf_helper.c":22:16))
  %v60 = sea.icmp ult, %v57, %v59 : i64 loc("_29"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v60 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb11
^bb11:
  %v61 = sea.store %v0[%v5], %v56 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v62 = sea.ptr.index %v5 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_31"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb12
^bb12:
  %v63 = sea.store %v61[%v62], %v57 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v64 = sea.const 0 : i64 loc("_33"("seahorn/lib/proof_allocators.c":21:15))
  %v65 = sea.icmp eq, %v57, %v64 : i64 loc("_33"("seahorn/lib/proof_allocators.c":21:15))
  %v66 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v65, ^bb16(%v3, %v66 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb13 loc("seahorn/lib/proof_allocators.c":21:10)
^bb13:
  %v67 = sea.nondet "nd_malloc_is_fail" [13] : i1 loc("_35"("seahorn/lib/sea_allocators.c":11:10))
  %v68 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v67, ^bb15(%v3, %v68 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb14 loc("seahorn/lib/sea_allocators.c":11:10)
^bb14:
  %v69 = sea.const 1 : i64 loc("malloc22.i")
  %v70 = sea.mul %v57, %v69 : i64 loc("malloc22.i")
  %v71 = sea.alloca %v70 align 16 [14] : i64 -> !sea.ptr<64> loc("malloc22.i")
  sea.br ^bb15(%v3, %v71 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb15(%v72 : !sea.mem<!sea.ptr<64>, i8>, %v73 : !sea.ptr<64>):
  %v74 = sea.memhavoc %v72[%v73], %v57 [15] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb16(%v74, %v73 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb16(%v75 : !sea.mem<!sea.ptr<64>, i8>, %v76 : !sea.ptr<64>):
  %v77 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_39"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb17
^bb17:
  %v78 = sea.store %v63[%v77], %v76 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v79 = sea.ptr.index %v5 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_41"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb18
^bb18:
  %v80 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v81 = sea.store %v78[%v79], %v80 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  sea.br ^bb19
^bb19:
  sea.cond_br %v65, ^bb27, ^bb20 loc("aws-c-common/source/byte_buf.c":60:33)
^bb20:
  sea.br ^bb21
^bb21:
  sea.br ^bb22
^bb22:
  sea.br ^bb23
^bb23:
  %v82 = sea.icmp ugt, %v56, %v57 : i64 loc(".not2.i8.i"("aws-c-common/source/byte_buf.c":61:44))
  %v83 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v82, ^bb32(%v83 : i1), ^bb24 loc("aws-c-common/source/byte_buf.c":61:61)
^bb24:
  sea.br ^bb25
^bb25:
  sea.br ^bb26
^bb26:
  %v84 = sea.ptr.null : !sea.ptr<64> loc("_55"("aws-c-common/source/byte_buf.c":61:64))
  %v85 = sea.ptr.cmp ne, %v76, %v84 : !sea.ptr<64> loc("_55"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb32(%v85 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb27:
  sea.br ^bb28
^bb28:
  %v86 = sea.const 0 : i64 loc("_45"("aws-c-common/source/byte_buf.c":60:45))
  %v87 = sea.icmp eq, %v56, %v86 : i64 loc("_45"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v87, ^bb29, ^bb31 loc("aws-c-common/source/byte_buf.c":60:50)
^bb29:
  sea.br ^bb30
^bb30:
  %v88 = sea.ptr.null : !sea.ptr<64> loc("_48"("aws-c-common/source/byte_buf.c":60:65))
  %v89 = sea.ptr.cmp eq, %v76, %v88 : !sea.ptr<64> loc("_48"("aws-c-common/source/byte_buf.c":60:65))
  %v90 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v89, ^bb32(%v90 : i1), ^bb31 loc("aws-c-common/source/byte_buf.c":60:74)
^bb31:
  %v91 = sea.const 0 : i1
  sea.br ^bb32(%v91 : i1)
^bb32(%v92 : i1):
  sea.assume %v92 loc("seahorn/jobs/string_eq_byte_buf/aws_string_eq_byte_buf_harness.c":19:5)
  %v93 = sea.nondet "nd_bool" [16] : i1 loc("_57"("seahorn/jobs/string_eq_byte_buf/aws_string_eq_byte_buf_harness.c":21:37))
  %v94 = sea.ptr.null : !sea.ptr<64> loc("..i"("seahorn/jobs/string_eq_byte_buf/aws_string_eq_byte_buf_harness.c":21:37))
  %v95 = sea.select %v93, %v5, %v94 : !sea.ptr<64> loc("..i"("seahorn/jobs/string_eq_byte_buf/aws_string_eq_byte_buf_harness.c":21:37))
  %v96 = sea.ptr.null : !sea.ptr<64> loc("_58"("aws-c-common/source/string.c":357:13))
  %v97 = sea.ptr.cmp ne, %v55, %v96 : !sea.ptr<64> loc("_58"("aws-c-common/source/string.c":357:13))
  %v98 = sea.and %v97, %v93 : i1 loc("or.cond3.i.i.not")
  sea.cond_br %v98, ^bb33, ^bb100 loc("aws-c-common/source/string.c":357:21)
^bb33:
  %v99 = sea.ptr.index %v55 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_60"("aws-c-common/source/string.c":363:30))
  %v100 = sea.ptr.index %v55 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_61"("aws-c-common/source/string.c":363:42))
  %v101 = sea.const 8 : i64 loc("_62"("aws-c-common/source/string.c":363:42))
  %v102 = sea.ptr.dereferenceable %v100, %v101 : !sea.ptr<64>, i64 loc("_62"("aws-c-common/source/string.c":363:42))
  sea.cond_br %v102, ^bb34, ^bb129
^bb34:
  %v103 = sea.load %v54[%v100] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_64"("aws-c-common/source/string.c":363:42))
  sea.br ^bb35
^bb35:
  %v104 = sea.const 8 : i64 loc("_66"("aws-c-common/source/string.c":363:65))
  %v105 = sea.ptr.dereferenceable %v95, %v104 : !sea.ptr<64>, i64 loc("_66"("aws-c-common/source/string.c":363:65))
  sea.cond_br %v105, ^bb36, ^bb129
^bb36:
  %v106 = sea.load %v61[%v95] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_68"("aws-c-common/source/string.c":363:65))
  %v107 = sea.icmp eq, %v103, %v106 : i64 loc(".not.i.i.i"("aws-c-common/source/byte_buf.c":425:15))
  sea.cond_br %v107, ^bb37, ^bb100 loc("aws-c-common/source/byte_buf.c":425:9)
^bb37:
  %v108 = sea.const 0 : i64 loc("_70"("aws-c-common/source/byte_buf.c":429:15))
  %v109 = sea.icmp eq, %v103, %v108 : i64 loc("_70"("aws-c-common/source/byte_buf.c":429:15))
  sea.cond_br %v109, ^bb88, ^bb38 loc("aws-c-common/source/byte_buf.c":429:9)
^bb38:
  %v110 = sea.ptr.cmp eq, %v99, %v76 : !sea.ptr<64> loc("_72"("seahorn/lib/bcmp.c":55:10))
  sea.cond_br %v110, ^bb88, ^bb39 loc("seahorn/lib/bcmp.c":55:7)
^bb39:
  %v111 = sea.const 1 : i64 loc("_75"("seahorn/lib/bcmp.c":61:11))
  %v112 = sea.ptr.dereferenceable %v99, %v111 : !sea.ptr<64>, i64 loc("_75"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v112, ^bb40, ^bb129
^bb40:
  %v113 = sea.load %v54[%v99] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_77"("seahorn/lib/bcmp.c":61:11))
  %v114 = sea.const 1 : i64 loc("_78"("seahorn/lib/bcmp.c":61:20))
  %v115 = sea.ptr.dereferenceable %v76, %v114 : !sea.ptr<64>, i64 loc("_78"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v115, ^bb41, ^bb129
^bb41:
  %v116 = sea.load %v75[%v76] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_80"("seahorn/lib/bcmp.c":61:20))
  %v117 = sea.icmp eq, %v113, %v116 : i8 loc(".not2.i21.i"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v117, ^bb42, ^bb78(%v76, %v99 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb42:
  %v118 = sea.const 1 : i64 loc(".not"("seahorn/lib/bcmp.c":60:11))
  %v119 = sea.icmp eq, %v103, %v118 : i64 loc(".not"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v119, ^bb88, ^bb43 loc("seahorn/lib/bcmp.c":60:9)
^bb43:
  %v120 = sea.ptr.index %v55 [] strides [] offset 17 inbounds : !sea.ptr<64> loc("_86"("seahorn/lib/bcmp.c":61:11))
  %v121 = sea.const 1 : i64 loc("_87"("seahorn/lib/bcmp.c":61:11))
  %v122 = sea.ptr.dereferenceable %v120, %v121 : !sea.ptr<64>, i64 loc("_87"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v122, ^bb44, ^bb129
^bb44:
  %v123 = sea.load %v54[%v120] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_89"("seahorn/lib/bcmp.c":61:11))
  %v124 = sea.ptr.index %v76 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_90"("seahorn/lib/bcmp.c":61:20))
  %v125 = sea.const 1 : i64 loc("_91"("seahorn/lib/bcmp.c":61:20))
  %v126 = sea.ptr.dereferenceable %v124, %v125 : !sea.ptr<64>, i64 loc("_91"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v126, ^bb45, ^bb129
^bb45:
  %v127 = sea.load %v75[%v124] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_93"("seahorn/lib/bcmp.c":61:20))
  %v128 = sea.icmp eq, %v123, %v127 : i8 loc(".not2.i21.i.1"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v128, ^bb46, ^bb78(%v124, %v120 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb46:
  %v129 = sea.const 2 : i64 loc("_94"("seahorn/lib/bcmp.c":60:11))
  %v130 = sea.icmp ugt, %v103, %v129 : i64 loc("_94"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v130, ^bb47, ^bb88 loc("seahorn/lib/bcmp.c":60:9)
^bb47:
  %v131 = sea.ptr.index %v55 [] strides [] offset 18 inbounds : !sea.ptr<64> loc("_96"("seahorn/lib/bcmp.c":61:11))
  %v132 = sea.const 1 : i64 loc("_97"("seahorn/lib/bcmp.c":61:11))
  %v133 = sea.ptr.dereferenceable %v131, %v132 : !sea.ptr<64>, i64 loc("_97"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v133, ^bb48, ^bb129
^bb48:
  %v134 = sea.load %v54[%v131] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_99"("seahorn/lib/bcmp.c":61:11))
  %v135 = sea.ptr.index %v76 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_100"("seahorn/lib/bcmp.c":61:20))
  %v136 = sea.const 1 : i64 loc("_101"("seahorn/lib/bcmp.c":61:20))
  %v137 = sea.ptr.dereferenceable %v135, %v136 : !sea.ptr<64>, i64 loc("_101"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v137, ^bb49, ^bb129
^bb49:
  %v138 = sea.load %v75[%v135] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_103"("seahorn/lib/bcmp.c":61:20))
  %v139 = sea.icmp eq, %v134, %v138 : i8 loc(".not2.i21.i.2"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v139, ^bb50, ^bb78(%v135, %v131 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb50:
  %v140 = sea.const 3 : i64 loc(".not8"("seahorn/lib/bcmp.c":60:11))
  %v141 = sea.icmp eq, %v103, %v140 : i64 loc(".not8"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v141, ^bb88, ^bb51 loc("seahorn/lib/bcmp.c":60:9)
^bb51:
  %v142 = sea.ptr.index %v55 [] strides [] offset 19 inbounds : !sea.ptr<64> loc("_105"("seahorn/lib/bcmp.c":61:11))
  %v143 = sea.const 1 : i64 loc("_106"("seahorn/lib/bcmp.c":61:11))
  %v144 = sea.ptr.dereferenceable %v142, %v143 : !sea.ptr<64>, i64 loc("_106"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v144, ^bb52, ^bb129
^bb52:
  %v145 = sea.load %v54[%v142] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_108"("seahorn/lib/bcmp.c":61:11))
  %v146 = sea.ptr.index %v76 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_109"("seahorn/lib/bcmp.c":61:20))
  %v147 = sea.const 1 : i64 loc("_110"("seahorn/lib/bcmp.c":61:20))
  %v148 = sea.ptr.dereferenceable %v146, %v147 : !sea.ptr<64>, i64 loc("_110"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v148, ^bb53, ^bb129
^bb53:
  %v149 = sea.load %v75[%v146] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_112"("seahorn/lib/bcmp.c":61:20))
  %v150 = sea.icmp eq, %v145, %v149 : i8 loc(".not2.i21.i.3"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v150, ^bb54, ^bb78(%v146, %v142 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb54:
  %v151 = sea.const 4 : i64 loc("_113"("seahorn/lib/bcmp.c":60:11))
  %v152 = sea.icmp ugt, %v103, %v151 : i64 loc("_113"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v152, ^bb55, ^bb88 loc("seahorn/lib/bcmp.c":60:9)
^bb55:
  %v153 = sea.ptr.index %v55 [] strides [] offset 20 inbounds : !sea.ptr<64> loc("_115"("seahorn/lib/bcmp.c":61:11))
  %v154 = sea.const 1 : i64 loc("_116"("seahorn/lib/bcmp.c":61:11))
  %v155 = sea.ptr.dereferenceable %v153, %v154 : !sea.ptr<64>, i64 loc("_116"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v155, ^bb56, ^bb129
^bb56:
  %v156 = sea.load %v54[%v153] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_118"("seahorn/lib/bcmp.c":61:11))
  %v157 = sea.ptr.index %v76 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_119"("seahorn/lib/bcmp.c":61:20))
  %v158 = sea.const 1 : i64 loc("_120"("seahorn/lib/bcmp.c":61:20))
  %v159 = sea.ptr.dereferenceable %v157, %v158 : !sea.ptr<64>, i64 loc("_120"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v159, ^bb57, ^bb129
^bb57:
  %v160 = sea.load %v75[%v157] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_122"("seahorn/lib/bcmp.c":61:20))
  %v161 = sea.icmp eq, %v156, %v160 : i8 loc(".not2.i21.i.4"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v161, ^bb58, ^bb78(%v157, %v153 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb58:
  %v162 = sea.const 5 : i64 loc(".not9"("seahorn/lib/bcmp.c":60:11))
  %v163 = sea.icmp eq, %v103, %v162 : i64 loc(".not9"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v163, ^bb88, ^bb59 loc("seahorn/lib/bcmp.c":60:9)
^bb59:
  %v164 = sea.ptr.index %v55 [] strides [] offset 21 inbounds : !sea.ptr<64> loc("_124"("seahorn/lib/bcmp.c":61:11))
  %v165 = sea.const 1 : i64 loc("_125"("seahorn/lib/bcmp.c":61:11))
  %v166 = sea.ptr.dereferenceable %v164, %v165 : !sea.ptr<64>, i64 loc("_125"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v166, ^bb60, ^bb129
^bb60:
  %v167 = sea.load %v54[%v164] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_127"("seahorn/lib/bcmp.c":61:11))
  %v168 = sea.ptr.index %v76 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_128"("seahorn/lib/bcmp.c":61:20))
  %v169 = sea.const 1 : i64 loc("_129"("seahorn/lib/bcmp.c":61:20))
  %v170 = sea.ptr.dereferenceable %v168, %v169 : !sea.ptr<64>, i64 loc("_129"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v170, ^bb61, ^bb129
^bb61:
  %v171 = sea.load %v75[%v168] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_131"("seahorn/lib/bcmp.c":61:20))
  %v172 = sea.icmp eq, %v167, %v171 : i8 loc(".not2.i21.i.5"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v172, ^bb62, ^bb78(%v168, %v164 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb62:
  %v173 = sea.const 6 : i64 loc("_132"("seahorn/lib/bcmp.c":60:11))
  %v174 = sea.icmp ugt, %v103, %v173 : i64 loc("_132"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v174, ^bb63, ^bb88 loc("seahorn/lib/bcmp.c":60:9)
^bb63:
  %v175 = sea.ptr.index %v55 [] strides [] offset 22 inbounds : !sea.ptr<64> loc("_134"("seahorn/lib/bcmp.c":61:11))
  %v176 = sea.const 1 : i64 loc("_135"("seahorn/lib/bcmp.c":61:11))
  %v177 = sea.ptr.dereferenceable %v175, %v176 : !sea.ptr<64>, i64 loc("_135"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v177, ^bb64, ^bb129
^bb64:
  %v178 = sea.load %v54[%v175] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_137"("seahorn/lib/bcmp.c":61:11))
  %v179 = sea.ptr.index %v76 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_138"("seahorn/lib/bcmp.c":61:20))
  %v180 = sea.const 1 : i64 loc("_139"("seahorn/lib/bcmp.c":61:20))
  %v181 = sea.ptr.dereferenceable %v179, %v180 : !sea.ptr<64>, i64 loc("_139"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v181, ^bb65, ^bb129
^bb65:
  %v182 = sea.load %v75[%v179] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_141"("seahorn/lib/bcmp.c":61:20))
  %v183 = sea.icmp eq, %v178, %v182 : i8 loc(".not2.i21.i.6"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v183, ^bb66, ^bb78(%v179, %v175 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb66:
  %v184 = sea.const 7 : i64 loc(".not10"("seahorn/lib/bcmp.c":60:11))
  %v185 = sea.icmp eq, %v103, %v184 : i64 loc(".not10"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v185, ^bb88, ^bb67 loc("seahorn/lib/bcmp.c":60:9)
^bb67:
  %v186 = sea.ptr.index %v55 [] strides [] offset 23 inbounds : !sea.ptr<64> loc("_143"("seahorn/lib/bcmp.c":61:11))
  %v187 = sea.const 1 : i64 loc("_144"("seahorn/lib/bcmp.c":61:11))
  %v188 = sea.ptr.dereferenceable %v186, %v187 : !sea.ptr<64>, i64 loc("_144"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v188, ^bb68, ^bb129
^bb68:
  %v189 = sea.load %v54[%v186] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_146"("seahorn/lib/bcmp.c":61:11))
  %v190 = sea.ptr.index %v76 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_147"("seahorn/lib/bcmp.c":61:20))
  %v191 = sea.const 1 : i64 loc("_148"("seahorn/lib/bcmp.c":61:20))
  %v192 = sea.ptr.dereferenceable %v190, %v191 : !sea.ptr<64>, i64 loc("_148"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v192, ^bb69, ^bb129
^bb69:
  %v193 = sea.load %v75[%v190] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_150"("seahorn/lib/bcmp.c":61:20))
  %v194 = sea.icmp eq, %v189, %v193 : i8 loc(".not2.i21.i.7"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v194, ^bb70, ^bb78(%v190, %v186 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb70:
  %v195 = sea.const 8 : i64 loc("_151"("seahorn/lib/bcmp.c":60:11))
  %v196 = sea.icmp ugt, %v103, %v195 : i64 loc("_151"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v196, ^bb71, ^bb88 loc("seahorn/lib/bcmp.c":60:9)
^bb71:
  %v197 = sea.ptr.index %v55 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_153"("seahorn/lib/bcmp.c":61:11))
  %v198 = sea.const 1 : i64 loc("_154"("seahorn/lib/bcmp.c":61:11))
  %v199 = sea.ptr.dereferenceable %v197, %v198 : !sea.ptr<64>, i64 loc("_154"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v199, ^bb72, ^bb129
^bb72:
  %v200 = sea.load %v54[%v197] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_156"("seahorn/lib/bcmp.c":61:11))
  %v201 = sea.ptr.index %v76 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_157"("seahorn/lib/bcmp.c":61:20))
  %v202 = sea.const 1 : i64 loc("_158"("seahorn/lib/bcmp.c":61:20))
  %v203 = sea.ptr.dereferenceable %v201, %v202 : !sea.ptr<64>, i64 loc("_158"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v203, ^bb73, ^bb129
^bb73:
  %v204 = sea.load %v75[%v201] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_160"("seahorn/lib/bcmp.c":61:20))
  %v205 = sea.icmp eq, %v200, %v204 : i8 loc(".not2.i21.i.8"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v205, ^bb74, ^bb78(%v201, %v197 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb74:
  %v206 = sea.const 9 : i64 loc(".not11"("seahorn/lib/bcmp.c":60:11))
  %v207 = sea.icmp eq, %v103, %v206 : i64 loc(".not11"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v207, ^bb88, ^bb75 loc("seahorn/lib/bcmp.c":60:9)
^bb75:
  %v208 = sea.ptr.index %v55 [] strides [] offset 25 inbounds : !sea.ptr<64> loc("_162"("seahorn/lib/bcmp.c":61:11))
  %v209 = sea.const 1 : i64 loc("_163"("seahorn/lib/bcmp.c":61:11))
  %v210 = sea.ptr.dereferenceable %v208, %v209 : !sea.ptr<64>, i64 loc("_163"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v210, ^bb76, ^bb129
^bb76:
  %v211 = sea.load %v54[%v208] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_165"("seahorn/lib/bcmp.c":61:11))
  %v212 = sea.ptr.index %v76 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_166"("seahorn/lib/bcmp.c":61:20))
  %v213 = sea.const 1 : i64 loc("_167"("seahorn/lib/bcmp.c":61:20))
  %v214 = sea.ptr.dereferenceable %v212, %v213 : !sea.ptr<64>, i64 loc("_167"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v214, ^bb77, ^bb129
^bb77:
  %v215 = sea.load %v75[%v212] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_169"("seahorn/lib/bcmp.c":61:20))
  %v216 = sea.icmp eq, %v211, %v215 : i8 loc(".not2.i21.i.9"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v216, ^bb80, ^bb78(%v212, %v208 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb78(%v217 : !sea.ptr<64>, %v218 : !sea.ptr<64>):
  %v219 = sea.const 1 : i64 loc("_82"("seahorn/lib/bcmp.c":62:16))
  %v220 = sea.ptr.dereferenceable %v218, %v219 : !sea.ptr<64>, i64 loc("_82"("seahorn/lib/bcmp.c":62:16))
  sea.cond_br %v220, ^bb79, ^bb129
^bb79:
  %v221 = sea.const 1 : i64 loc("_84"("seahorn/lib/bcmp.c":62:24))
  %v222 = sea.ptr.dereferenceable %v217, %v221 : !sea.ptr<64>, i64 loc("_84"("seahorn/lib/bcmp.c":62:24))
  sea.cond_br %v222, ^bb100, ^bb129
^bb80:
  %v223 = sea.const 10 : i64 loc("_170"("seahorn/lib/bcmp.c":67:31))
  %v224 = sea.icmp ugt, %v103, %v223 : i64 loc("_170"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v224, ^bb81, ^bb88 loc("seahorn/lib/bcmp.c":67:3)
^bb81:
  %v225 = sea.ptr.index %v55 [] strides [] offset 26 inbounds : !sea.ptr<64> loc("_73"("seahorn/lib/bcmp.c":68:9))
  %v226 = sea.const 1 : i64 loc("_74"("seahorn/lib/bcmp.c":68:9))
  %v227 = sea.ptr.dereferenceable %v225, %v226 : !sea.ptr<64>, i64 loc("_74"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v227, ^bb82, ^bb129
^bb82:
  %v228 = sea.load %v54[%v225] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_174"("seahorn/lib/bcmp.c":68:9))
  %v229 = sea.ptr.index %v76 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_175"("seahorn/lib/bcmp.c":68:18))
  %v230 = sea.const 1 : i64 loc("_176"("seahorn/lib/bcmp.c":68:18))
  %v231 = sea.ptr.dereferenceable %v229, %v230 : !sea.ptr<64>, i64 loc("_176"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v231, ^bb83, ^bb129
^bb83:
  %v232 = sea.load %v75[%v229] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_178"("seahorn/lib/bcmp.c":68:18))
  %v233 = sea.icmp eq, %v228, %v232 : i8 loc(".not.i20.i"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v233, ^bb86, ^bb84 loc("seahorn/lib/bcmp.c":68:9)
^bb84:
  %v234 = sea.const 1 : i64 loc("_180"("seahorn/lib/bcmp.c":69:14))
  %v235 = sea.ptr.dereferenceable %v225, %v234 : !sea.ptr<64>, i64 loc("_180"("seahorn/lib/bcmp.c":69:14))
  sea.cond_br %v235, ^bb85, ^bb129
^bb85:
  %v236 = sea.const 1 : i64 loc("_182"("seahorn/lib/bcmp.c":69:22))
  %v237 = sea.ptr.dereferenceable %v229, %v236 : !sea.ptr<64>, i64 loc("_182"("seahorn/lib/bcmp.c":69:22))
  sea.cond_br %v237, ^bb100, ^bb129
^bb86:
  %v238 = sea.const 11 : i64 loc("exitcond33.not"("seahorn/lib/bcmp.c":67:31))
  %v239 = sea.icmp eq, %v103, %v238 : i64 loc("exitcond33.not"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v239, ^bb88, ^bb87 loc("seahorn/lib/bcmp.c":67:3)
^bb87:
  %v240 = sea.ptr.index %v55 [] strides [] offset 27 inbounds : !sea.ptr<64> loc("_172"("seahorn/lib/bcmp.c":68:9))
  %v241 = sea.const 1 : i64 loc("_173"("seahorn/lib/bcmp.c":68:9))
  %v242 = sea.ptr.dereferenceable %v240, %v241 : !sea.ptr<64>, i64 loc("_173"("seahorn/lib/bcmp.c":68:9))
  %v243 = sea.const 1 : i1
  %v244 = sea.xor %v242, %v243 : i1
  sea.assume %v244
  sea.br ^bb129
^bb88:
  %v245 = sea.const 8 : i64 loc("_183"("seahorn/jobs/string_eq_byte_buf/aws_string_eq_byte_buf_harness.c":22:9))
  %v246 = sea.ptr.dereferenceable %v100, %v245 : !sea.ptr<64>, i64 loc("_183"("seahorn/jobs/string_eq_byte_buf/aws_string_eq_byte_buf_harness.c":22:9))
  sea.cond_br %v246, ^bb89, ^bb129
^bb89:
  %v247 = sea.icmp eq, %v103, %v56 : i64 loc("_185"("seahorn/jobs/string_eq_byte_buf/aws_string_eq_byte_buf_harness.c":22:9))
  %v248 = sea.const 8 : i64 loc("_186"("seahorn/jobs/string_eq_byte_buf/aws_string_eq_byte_buf_harness.c":22:9))
  %v249 = sea.ptr.dereferenceable %v100, %v248 : !sea.ptr<64>, i64 loc("_186"("seahorn/jobs/string_eq_byte_buf/aws_string_eq_byte_buf_harness.c":22:9))
  %v250 = sea.const 0 : i1 loc("_187")
  %v251 = sea.select %v249, %v247, %v250 : i1 loc("_187")
  sea.cond_br %v251, ^bb90, ^bb129
^bb90:
  %v252 = sea.const 8 : i64 loc("_189"("seahorn/jobs/string_eq_byte_buf/aws_string_eq_byte_buf_harness.c":23:57))
  %v253 = sea.ptr.dereferenceable %v100, %v252 : !sea.ptr<64>, i64 loc("_189"("seahorn/jobs/string_eq_byte_buf/aws_string_eq_byte_buf_harness.c":23:57))
  sea.cond_br %v253, ^bb91, ^bb129
^bb91:
  %v254 = sea.const 0 : i64 loc("_191"("seahorn/lib/utils.c":15:3))
  %v255 = sea.icmp eq, %v56, %v254 : i64 loc("_191"("seahorn/lib/utils.c":15:3))
  %v256 = sea.ptr.null : !sea.ptr<64> loc(".not4.i.i"("seahorn/lib/utils.c":15:3))
  %v257 = sea.ptr.cmp ne, %v76, %v256 : !sea.ptr<64> loc(".not4.i.i"("seahorn/lib/utils.c":15:3))
  %v258 = sea.or %v255, %v257 : i1 loc("_192"("seahorn/lib/utils.c":15:3))
  %v259 = sea.const 0 : i64 loc("_193"("seahorn/lib/utils.c":15:3))
  %v260 = sea.icmp ne, %v56, %v259 : i64 loc("_193"("seahorn/lib/utils.c":15:3))
  %v261 = sea.ptr.null : !sea.ptr<64> loc(".not6.i.i.not"("seahorn/lib/utils.c":15:3))
  %v262 = sea.ptr.cmp eq, %v76, %v261 : !sea.ptr<64> loc(".not6.i.i.not"("seahorn/lib/utils.c":15:3))
  %v263 = sea.and %v260, %v262 : i1 loc("or.cond"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v263, ^bb129, ^bb92 loc("seahorn/lib/utils.c":15:3)
^bb92:
  %v264 = sea.and %v260, %v257 : i1 loc("or.cond3.i17.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v264, ^bb93, ^bb94 loc("seahorn/lib/utils.c":16:15)
^bb93:
  %v265 = sea.nondet "nd_size_t" [17] : i64 loc("_195"("seahorn/lib/utils.c":17:16))
  %v266 = sea.icmp ult, %v265, %v56 : i64 loc("_196"("seahorn/lib/utils.c":19:14))
  %v267 = sea.const 36028797018963967 : i64 loc("_197"("seahorn/lib/utils.c":19:20))
  %v268 = sea.icmp ult, %v56, %v267 : i64 loc("_197"("seahorn/lib/utils.c":19:20))
  %v269 = sea.and %v268, %v266 : i1 loc("_198"("seahorn/lib/utils.c":19:20))
  sea.assume %v269 loc("seahorn/lib/utils.c":19:5)
  %v270 = sea.ptr.index %v99 [%v265] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_199"("seahorn/lib/utils.c":20:5))
  %v271 = sea.load %v54[%v270] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_200"("seahorn/lib/utils.c":20:5))
  %v272 = sea.ptr.index %v76 [%v265] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_201"("seahorn/lib/utils.c":20:5))
  %v273 = sea.load %v75[%v272] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_202"("seahorn/lib/utils.c":20:5))
  %v274 = sea.icmp eq, %v271, %v273 : i8 loc("_203"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v274, ^bb94, ^bb129 loc("seahorn/lib/utils.c":20:5)
^bb94:
  %v275 = sea.const 8 : i64 loc("_204"("aws-c-common/include/aws/common/string.inl":35:19))
  %v276 = sea.ptr.dereferenceable %v100, %v275 : !sea.ptr<64>, i64 loc("_204"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v276, ^bb95, ^bb129
^bb95:
  %v277 = sea.const 8 : i64 loc("_206"("aws-c-common/include/aws/common/string.inl":35:88))
  %v278 = sea.ptr.dereferenceable %v100, %v277 : !sea.ptr<64>, i64 loc("_206"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v278, ^bb96, ^bb129
^bb96:
  %v279 = sea.ptr.index %v55 [%v56] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_208"("aws-c-common/include/aws/common/string.inl":35:72))
  %v280 = sea.const 1 : i64 loc("_209"("aws-c-common/include/aws/common/string.inl":35:72))
  %v281 = sea.ptr.dereferenceable %v279, %v280 : !sea.ptr<64>, i64 loc("_209"("aws-c-common/include/aws/common/string.inl":35:72))
  sea.cond_br %v281, ^bb97, ^bb129
^bb97:
  %v282 = sea.load %v54[%v279] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_210"("aws-c-common/include/aws/common/string.inl":35:72))
  %v283 = sea.const 0 : i8 loc("_211"("aws-c-common/include/aws/common/string.inl":35:93))
  %v284 = sea.icmp eq, %v282, %v283 : i8 loc("_211"("aws-c-common/include/aws/common/string.inl":35:93))
  %v285 = sea.const 8 : i64 loc("_212"("aws-c-common/include/aws/common/string.inl":35:19))
  %v286 = sea.ptr.dereferenceable %v100, %v285 : !sea.ptr<64>, i64 loc("_212"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v286, ^bb98, ^bb129
^bb98:
  %v287 = sea.const 8 : i64 loc("_214"("aws-c-common/include/aws/common/string.inl":35:88))
  %v288 = sea.ptr.dereferenceable %v100, %v287 : !sea.ptr<64>, i64 loc("_214"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v288, ^bb99, ^bb129
^bb99:
  %v289 = sea.const 1 : i64 loc("_216"("aws-c-common/include/aws/common/string.inl":35:72))
  %v290 = sea.ptr.dereferenceable %v279, %v289 : !sea.ptr<64>, i64 loc("_216"("aws-c-common/include/aws/common/string.inl":35:72))
  %v291 = sea.const 0 : i1 loc("_217")
  %v292 = sea.select %v290, %v284, %v291 : i1 loc("_217")
  sea.cond_br %v292, ^bb100, ^bb129
^bb100:
  sea.br ^bb101
^bb101:
  sea.cond_br %v65, ^bb109, ^bb102 loc("aws-c-common/source/byte_buf.c":60:33)
^bb102:
  sea.br ^bb103
^bb103:
  sea.br ^bb104
^bb104:
  sea.br ^bb105
^bb105:
  %v293 = sea.icmp ugt, %v56, %v57 : i64 loc(".not2.i4.i"("aws-c-common/source/byte_buf.c":61:44))
  %v294 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v293, ^bb114(%v294 : i1), ^bb106 loc("aws-c-common/source/byte_buf.c":61:61)
^bb106:
  sea.br ^bb107
^bb107:
  sea.br ^bb108
^bb108:
  %v295 = sea.ptr.null : !sea.ptr<64> loc("_231"("aws-c-common/source/byte_buf.c":61:64))
  %v296 = sea.ptr.cmp ne, %v76, %v295 : !sea.ptr<64> loc("_231"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb114(%v296 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb109:
  sea.br ^bb110
^bb110:
  %v297 = sea.const 0 : i64 loc("_221"("aws-c-common/source/byte_buf.c":60:45))
  %v298 = sea.icmp eq, %v56, %v297 : i64 loc("_221"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v298, ^bb111, ^bb113 loc("aws-c-common/source/byte_buf.c":60:50)
^bb111:
  sea.br ^bb112
^bb112:
  %v299 = sea.ptr.null : !sea.ptr<64> loc("_224"("aws-c-common/source/byte_buf.c":60:65))
  %v300 = sea.ptr.cmp eq, %v76, %v299 : !sea.ptr<64> loc("_224"("aws-c-common/source/byte_buf.c":60:65))
  %v301 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v300, ^bb114(%v301 : i1), ^bb113 loc("aws-c-common/source/byte_buf.c":60:74)
^bb113:
  %v302 = sea.const 0 : i1
  sea.br ^bb114(%v302 : i1)
^bb114(%v303 : i1):
  sea.br ^bb115
^bb115:
  sea.cond_br %v65, ^bb123, ^bb116 loc("aws-c-common/source/byte_buf.c":60:33)
^bb116:
  sea.br ^bb117
^bb117:
  sea.br ^bb118
^bb118:
  sea.br ^bb119
^bb119:
  %v304 = sea.icmp ugt, %v56, %v57 : i64 loc(".not2.i.i"("aws-c-common/source/byte_buf.c":61:44))
  %v305 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v304, ^bb128(%v305 : i1), ^bb120 loc("aws-c-common/source/byte_buf.c":61:61)
^bb120:
  sea.br ^bb121
^bb121:
  sea.br ^bb122
^bb122:
  %v306 = sea.ptr.null : !sea.ptr<64> loc("_246"("aws-c-common/source/byte_buf.c":61:64))
  %v307 = sea.ptr.cmp ne, %v76, %v306 : !sea.ptr<64> loc("_246"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb128(%v307 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb123:
  sea.br ^bb124
^bb124:
  %v308 = sea.const 0 : i64 loc("_236"("aws-c-common/source/byte_buf.c":60:45))
  %v309 = sea.icmp eq, %v56, %v308 : i64 loc("_236"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v309, ^bb125, ^bb127 loc("aws-c-common/source/byte_buf.c":60:50)
^bb125:
  sea.br ^bb126
^bb126:
  %v310 = sea.ptr.null : !sea.ptr<64> loc("_239"("aws-c-common/source/byte_buf.c":60:65))
  %v311 = sea.ptr.cmp eq, %v76, %v310 : !sea.ptr<64> loc("_239"("aws-c-common/source/byte_buf.c":60:65))
  %v312 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v311, ^bb128(%v312 : i1), ^bb127 loc("aws-c-common/source/byte_buf.c":60:74)
^bb127:
  %v313 = sea.const 0 : i1
  sea.br ^bb128(%v313 : i1)
^bb128(%v314 : i1):
  %v315 = sea.const 1 : i1 loc("seahorn/jobs/string_eq_byte_buf/aws_string_eq_byte_buf_harness.c":27:5)
  %v316 = sea.xor %v314, %v315 : i1 loc("seahorn/jobs/string_eq_byte_buf/aws_string_eq_byte_buf_harness.c":27:5)
  sea.assume %v316 loc("seahorn/jobs/string_eq_byte_buf/aws_string_eq_byte_buf_harness.c":27:5)
  sea.br ^bb129 loc("seahorn/jobs/string_eq_byte_buf/aws_string_eq_byte_buf_harness.c":27:5)
^bb129:
  sea.br ^bb130
^bb130:
  %v317 = sea.const 0 : i1
  sea.assert %v317
  sea.halt
}
