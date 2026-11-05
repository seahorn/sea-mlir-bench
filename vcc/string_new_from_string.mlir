// Exported from SeaHorn (string_new_from_string.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm13")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm14")
  %v2 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v3 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v4 = sea.store %v0[%v2], %v3 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v5 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_0")
  %v6 = sea.ptr.index %v5 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_0")
  %v7 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v8 = sea.store %v4[%v6], %v7 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v9 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_1")
  %v10 = sea.ptr.index %v9 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_1")
  %v11 = sea.const 0 : i8
  %v12 = sea.const 24 : i64
  %v13 = sea.memset %v8[%v10], %v11, %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v14 = sea.nondet "nd_size_t" [2] : i64 loc("_2"("seahorn/lib/string_helper.c":24:16))
  %v15 = sea.const 18446744073709551590 : i64 loc("_3"("seahorn/lib/string_helper.c":25:14))
  %v16 = sea.icmp ult, %v14, %v15 : i64 loc("_3"("seahorn/lib/string_helper.c":25:14))
  sea.assume %v16 loc("seahorn/lib/string_helper.c":25:3)
  %v17 = sea.const 25 : i64 loc("_4"("seahorn/lib/string_helper.c":11:61))
  %v18 = sea.add %v14, %v17 : i64 loc("_4"("seahorn/lib/string_helper.c":11:61))
  %v19 = sea.nondet "nd_malloc_is_fail" [3] : i1 loc("_5"("seahorn/lib/sea_allocators.c":11:10))
  %v20 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v19, ^bb2(%v1, %v20 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb1 loc("seahorn/lib/sea_allocators.c":11:10)
^bb1:
  %v21 = sea.const 1 : i64 loc("malloc.i")
  %v22 = sea.mul %v18, %v21 : i64 loc("malloc.i")
  %v23 = sea.alloca %v22 align 16 [4] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb2(%v1, %v23 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb2(%v24 : !sea.mem<!sea.ptr<64>, i8>, %v25 : !sea.ptr<64>):
  %v26 = sea.memhavoc %v24[%v25], %v18 [5] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v27 = sea.ptr.null : !sea.ptr<64> loc("_8"("seahorn/lib/sea_allocators.c":45:10))
  %v28 = sea.ptr.cmp ne, %v25, %v27 : !sea.ptr<64> loc("_8"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v28 loc("seahorn/lib/sea_allocators.c":45:3)
  %v29 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i.i.i"("seahorn/lib/string_helper.c":13:7))
  %v30 = sea.ptr.cmp eq, %v25, %v29 : !sea.ptr<64> loc(".not.i.i.i.i"("seahorn/lib/string_helper.c":13:7))
  sea.cond_br %v30, ^bb9(%v26 : !sea.mem<!sea.ptr<64>, i8>), ^bb3 loc("seahorn/lib/string_helper.c":13:7)
^bb3:
  %v31 = sea.nondet "nd_bool" [6] : i1 loc("_10"("seahorn/lib/string_helper.c":16:9))
  %v32 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.cond_br %v31, ^bb4, ^bb5(%v32 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb4:
  %v33 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.br ^bb5(%v33 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb5(%v34 : !sea.ptr<64>):
  %v35 = sea.const 8 : i64 loc("_14"("seahorn/lib/string_helper.c":15:49))
  %v36 = sea.ptr.dereferenceable %v25, %v35 : !sea.ptr<64>, i64 loc("_14"("seahorn/lib/string_helper.c":15:49))
  sea.cond_br %v36, ^bb6, ^bb54
^bb6:
  %v37 = sea.store %v26[%v25], %v34 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/string_helper.c":15:49)
  %v38 = sea.ptr.index %v25 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_16"("seahorn/lib/string_helper.c":17:23))
  %v39 = sea.const 8 : i64 loc("_17"("seahorn/lib/string_helper.c":17:28))
  %v40 = sea.ptr.dereferenceable %v38, %v39 : !sea.ptr<64>, i64 loc("_17"("seahorn/lib/string_helper.c":17:28))
  sea.cond_br %v40, ^bb7, ^bb54
^bb7:
  %v41 = sea.store %v37[%v38], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/string_helper.c":17:28)
  %v42 = sea.ptr.index %v25 [%v14] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_19"("seahorn/lib/string_helper.c":18:18))
  %v43 = sea.const 1 : i64 loc("_20"("seahorn/lib/string_helper.c":18:34))
  %v44 = sea.ptr.dereferenceable %v42, %v43 : !sea.ptr<64>, i64 loc("_20"("seahorn/lib/string_helper.c":18:34))
  sea.cond_br %v44, ^bb8, ^bb54
^bb8:
  %v45 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":18:34)
  %v46 = sea.store %v41[%v42], %v45 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":18:34)
  sea.br ^bb9(%v46 : !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/lib/string_helper.c":19:3)
^bb9(%v47 : !sea.mem<!sea.ptr<64>, i8>):
  %v48 = sea.const 8 : i64 loc("_22"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":17:22))
  %v49 = sea.ptr.dereferenceable %v25, %v48 : !sea.ptr<64>, i64 loc("_22"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":17:22))
  sea.cond_br %v49, ^bb10, ^bb54
^bb10:
  %v50 = sea.load %v47[%v25] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_24"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":17:22))
  %v51 = sea.ptr.null : !sea.ptr<64> loc(".not.i"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":17:13))
  %v52 = sea.ptr.cmp eq, %v50, %v51 : !sea.ptr<64> loc(".not.i"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":17:13))
  sea.cond_br %v52, ^bb12, ^bb11 loc("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":17:13)
^bb11:
  %v53 = sea.const 8 : i64 loc("_26"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":17:43))
  %v54 = sea.ptr.dereferenceable %v25, %v53 : !sea.ptr<64>, i64 loc("_26"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":17:43))
  sea.cond_br %v54, ^bb13(%v50 : !sea.ptr<64>), ^bb54
^bb12:
  %v55 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":17:13)
  sea.br ^bb13(%v55 : !sea.ptr<64>) loc("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":17:13)
^bb13(%v56 : !sea.ptr<64>):
  %v57 = sea.ptr.index %v25 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_30"("aws-c-common/source/string.c":213:66))
  %v58 = sea.const 8 : i64 loc("_31"("aws-c-common/source/string.c":213:66))
  %v59 = sea.ptr.dereferenceable %v57, %v58 : !sea.ptr<64>, i64 loc("_31"("aws-c-common/source/string.c":213:66))
  sea.cond_br %v59, ^bb14, ^bb54
^bb14:
  %v60 = sea.ptr.index %v25 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_33"("aws-c-common/source/string.c":213:54))
  %v61 = sea.load %v47[%v57] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_34"("aws-c-common/source/string.c":213:66))
  sea.br ^bb15
^bb15:
  %v62 = sea.const 25 : i64 loc("_36"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v63 = sea.add %v61, %v62 : i64 loc("_36"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v64 = sea.const 25 : i64 loc("_36"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v65 = sea.uaddo %v61, %v64 : i64 loc("_36"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v65, ^bb45, ^bb16 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb16:
  %v66 = sea.const 0 : i64 loc("_39"("seahorn/lib/allocator_override.c":17:3))
  %v67 = sea.icmp ne, %v63, %v66 : i64 loc("_39"("seahorn/lib/allocator_override.c":17:3))
  %v68 = sea.const 0 : i64 loc(".not.i12.i"("seahorn/lib/allocator_override.c":17:3))
  %v69 = sea.icmp eq, %v63, %v68 : i64 loc(".not.i12.i"("seahorn/lib/allocator_override.c":17:3))
  sea.cond_br %v69, ^bb54, ^bb17 loc("seahorn/lib/allocator_override.c":17:3)
^bb17:
  %v70 = sea.nondet "nd_malloc_is_fail" [7] : i1 loc("_41"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v70, ^bb44, ^bb18 loc("seahorn/lib/sea_allocators.c":11:10)
^bb18:
  %v71 = sea.const 1 : i64 loc("malloc13.i")
  %v72 = sea.mul %v63, %v71 : i64 loc("malloc13.i")
  %v73 = sea.alloca %v72 align 16 [8] : i64 -> !sea.ptr<64> loc("malloc13.i")
  %v74 = sea.memhavoc %v47[%v73], %v63 [9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v75 = sea.const 8 : i64 loc("_43"("aws-c-common/source/string.c":202:49))
  %v76 = sea.ptr.dereferenceable %v73, %v75 : !sea.ptr<64>, i64 loc("_43"("aws-c-common/source/string.c":202:49))
  sea.cond_br %v76, ^bb19, ^bb54
^bb19:
  %v77 = sea.store %v74[%v73], %v56 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/string.c":202:49)
  %v78 = sea.ptr.index %v73 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_45"("aws-c-common/source/string.c":203:23))
  %v79 = sea.const 8 : i64 loc("_46"("aws-c-common/source/string.c":203:28))
  %v80 = sea.ptr.dereferenceable %v78, %v79 : !sea.ptr<64>, i64 loc("_46"("aws-c-common/source/string.c":203:28))
  sea.cond_br %v80, ^bb20, ^bb54
^bb20:
  %v81 = sea.store %v77[%v78], %v61 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/string.c":203:28)
  %v82 = sea.const 0 : i64 loc(".not2.i.i.i"("aws-c-common/source/string.c":204:13))
  %v83 = sea.icmp eq, %v61, %v82 : i64 loc(".not2.i.i.i"("aws-c-common/source/string.c":204:13))
  sea.cond_br %v83, ^bb24(%v81 : !sea.mem<!sea.ptr<64>, i8>), ^bb21 loc("aws-c-common/source/string.c":204:9)
^bb21:
  %v84 = sea.ptr.index %v73 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_49"("aws-c-common/source/string.c":205:29))
  %v85 = sea.ptr.dereferenceable %v84, %v61 : !sea.ptr<64>, i64 loc("_50"("seahorn/lib/bcmp.c":161:3))
  %v86 = sea.ptr.dereferenceable %v84, %v61 : !sea.ptr<64>, i64 loc("_51"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v86, ^bb22, ^bb54 loc("seahorn/lib/bcmp.c":161:3)
^bb22:
  %v87 = sea.ptr.dereferenceable %v60, %v61 : !sea.ptr<64>, i64 loc("_53"("seahorn/lib/bcmp.c":162:3))
  %v88 = sea.ptr.dereferenceable %v60, %v61 : !sea.ptr<64>, i64 loc("_54"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v88, ^bb23, ^bb54 loc("seahorn/lib/bcmp.c":162:3)
^bb23:
  %v89 = sea.memmove %v81[%v84], %v74[%v60], %v61 inplace align 16 src_align 16 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb24(%v89 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/string.c":206:5)
^bb24(%v90 : !sea.mem<!sea.ptr<64>, i8>):
  %v91 = sea.ptr.index %v73 [%v61] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_56"("aws-c-common/source/string.c":207:18))
  %v92 = sea.const 1 : i64 loc("_57"("aws-c-common/source/string.c":207:34))
  %v93 = sea.ptr.dereferenceable %v91, %v92 : !sea.ptr<64>, i64 loc("_57"("aws-c-common/source/string.c":207:34))
  sea.cond_br %v93, ^bb25, ^bb54
^bb25:
  %v94 = sea.const 0 : i8 loc("aws-c-common/source/string.c":207:34)
  %v95 = sea.store %v90[%v91], %v94 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("aws-c-common/source/string.c":207:34)
  %v96 = sea.const 8 : i64 loc("_59"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":24:9))
  %v97 = sea.ptr.dereferenceable %v57, %v96 : !sea.ptr<64>, i64 loc("_59"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":24:9))
  sea.cond_br %v97, ^bb26, ^bb54
^bb26:
  %v98 = sea.load %v95[%v57] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_61"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":24:9))
  %v99 = sea.const 8 : i64 loc("_62"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":24:9))
  %v100 = sea.ptr.dereferenceable %v78, %v99 : !sea.ptr<64>, i64 loc("_62"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":24:9))
  sea.cond_br %v100, ^bb27, ^bb54
^bb27:
  %v101 = sea.load %v95[%v78] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_64"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":24:9))
  %v102 = sea.icmp eq, %v98, %v101 : i64 loc("_65"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":24:9))
  %v103 = sea.const 8 : i64 loc("_66"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":24:9))
  %v104 = sea.ptr.dereferenceable %v57, %v103 : !sea.ptr<64>, i64 loc("_66"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":24:9))
  sea.cond_br %v104, ^bb28, ^bb54
^bb28:
  %v105 = sea.const 8 : i64 loc("_68"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":24:9))
  %v106 = sea.ptr.dereferenceable %v78, %v105 : !sea.ptr<64>, i64 loc("_68"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":24:9))
  %v107 = sea.const 0 : i1 loc("_69")
  %v108 = sea.select %v106, %v102, %v107 : i1 loc("_69")
  sea.cond_br %v108, ^bb29, ^bb54
^bb29:
  %v109 = sea.const 8 : i64 loc("_71"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":25:9))
  %v110 = sea.ptr.dereferenceable %v73, %v109 : !sea.ptr<64>, i64 loc("_71"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":25:9))
  sea.cond_br %v110, ^bb30, ^bb54
^bb30:
  %v111 = sea.load %v95[%v73] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_73"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":25:9))
  %v112 = sea.ptr.cmp eq, %v111, %v56 : !sea.ptr<64> loc("_74"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":25:9))
  %v113 = sea.const 8 : i64 loc("_75"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":25:9))
  %v114 = sea.ptr.dereferenceable %v73, %v113 : !sea.ptr<64>, i64 loc("_75"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":25:9))
  %v115 = sea.const 0 : i1 loc("_76")
  %v116 = sea.select %v114, %v112, %v115 : i1 loc("_76")
  sea.cond_br %v116, ^bb31, ^bb54
^bb31:
  %v117 = sea.const 8 : i64 loc("_78"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":26:9))
  %v118 = sea.ptr.dereferenceable %v78, %v117 : !sea.ptr<64>, i64 loc("_78"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":26:9))
  sea.cond_br %v118, ^bb32, ^bb54
^bb32:
  %v119 = sea.ptr.index %v73 [%v98] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_80"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":26:9))
  %v120 = sea.const 1 : i64 loc("_81"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":26:9))
  %v121 = sea.ptr.dereferenceable %v119, %v120 : !sea.ptr<64>, i64 loc("_81"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":26:9))
  sea.cond_br %v121, ^bb33, ^bb54
^bb33:
  %v122 = sea.load %v95[%v119] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_83"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":26:9))
  %v123 = sea.const 0 : i8 loc("_84"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":26:9))
  %v124 = sea.icmp eq, %v122, %v123 : i8 loc("_84"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":26:9))
  %v125 = sea.const 8 : i64 loc("_85"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":26:9))
  %v126 = sea.ptr.dereferenceable %v78, %v125 : !sea.ptr<64>, i64 loc("_85"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":26:9))
  sea.cond_br %v126, ^bb34, ^bb54
^bb34:
  %v127 = sea.const 1 : i64 loc("_87"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":26:9))
  %v128 = sea.ptr.dereferenceable %v119, %v127 : !sea.ptr<64>, i64 loc("_87"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":26:9))
  %v129 = sea.const 0 : i1 loc("_88")
  %v130 = sea.select %v128, %v124, %v129 : i1 loc("_88")
  sea.cond_br %v130, ^bb35, ^bb54
^bb35:
  %v131 = sea.const 8 : i64 loc("_90"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":27:63))
  %v132 = sea.ptr.dereferenceable %v57, %v131 : !sea.ptr<64>, i64 loc("_90"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":27:63))
  sea.cond_br %v132, ^bb36, ^bb54
^bb36:
  %v133 = sea.const 0 : i64 loc(".not"("seahorn/lib/utils.c":16:11))
  %v134 = sea.icmp eq, %v98, %v133 : i64 loc(".not"("seahorn/lib/utils.c":16:11))
  sea.cond_br %v134, ^bb38, ^bb37 loc("seahorn/lib/utils.c":16:15)
^bb37:
  %v135 = sea.ptr.index %v73 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_92"("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":27:48))
  %v136 = sea.nondet "nd_size_t" [10] : i64 loc("_93"("seahorn/lib/utils.c":17:16))
  %v137 = sea.icmp ult, %v136, %v98 : i64 loc("_94"("seahorn/lib/utils.c":19:14))
  %v138 = sea.const 36028797018963967 : i64 loc("_95"("seahorn/lib/utils.c":19:20))
  %v139 = sea.icmp ult, %v98, %v138 : i64 loc("_95"("seahorn/lib/utils.c":19:20))
  %v140 = sea.and %v139, %v137 : i1 loc("_96"("seahorn/lib/utils.c":19:20))
  sea.assume %v140 loc("seahorn/lib/utils.c":19:5)
  %v141 = sea.ptr.index %v60 [%v136] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_97"("seahorn/lib/utils.c":20:5))
  %v142 = sea.load %v95[%v141] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_98"("seahorn/lib/utils.c":20:5))
  %v143 = sea.ptr.index %v135 [%v136] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_99"("seahorn/lib/utils.c":20:5))
  %v144 = sea.load %v95[%v143] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_100"("seahorn/lib/utils.c":20:5))
  %v145 = sea.icmp eq, %v142, %v144 : i8 loc("_101"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v145, ^bb38, ^bb54 loc("seahorn/lib/utils.c":20:5)
^bb38:
  %v146 = sea.const 8 : i64 loc("_102"("aws-c-common/include/aws/common/string.inl":35:19))
  %v147 = sea.ptr.dereferenceable %v78, %v146 : !sea.ptr<64>, i64 loc("_102"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v147, ^bb39, ^bb54
^bb39:
  %v148 = sea.const 8 : i64 loc("_104"("aws-c-common/include/aws/common/string.inl":35:88))
  %v149 = sea.ptr.dereferenceable %v78, %v148 : !sea.ptr<64>, i64 loc("_104"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v149, ^bb40, ^bb54
^bb40:
  %v150 = sea.const 1 : i64 loc("_106"("aws-c-common/include/aws/common/string.inl":35:72))
  %v151 = sea.ptr.dereferenceable %v119, %v150 : !sea.ptr<64>, i64 loc("_106"("aws-c-common/include/aws/common/string.inl":35:72))
  sea.cond_br %v151, ^bb41, ^bb54
^bb41:
  %v152 = sea.const 8 : i64 loc("_107"("aws-c-common/include/aws/common/string.inl":35:19))
  %v153 = sea.ptr.dereferenceable %v78, %v152 : !sea.ptr<64>, i64 loc("_107"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v153, ^bb42, ^bb54
^bb42:
  %v154 = sea.const 8 : i64 loc("_109"("aws-c-common/include/aws/common/string.inl":35:88))
  %v155 = sea.ptr.dereferenceable %v78, %v154 : !sea.ptr<64>, i64 loc("_109"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v155, ^bb43, ^bb54
^bb43:
  %v156 = sea.const 1 : i64 loc("_111"("aws-c-common/include/aws/common/string.inl":35:72))
  %v157 = sea.ptr.dereferenceable %v119, %v156 : !sea.ptr<64>, i64 loc("_111"("aws-c-common/include/aws/common/string.inl":35:72))
  sea.cond_br %v157, ^bb47(%v95, %v98 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb54
^bb44:
  sea.br ^bb46 loc("aws-c-common/source/string.c":197:9)
^bb45:
  sea.br ^bb46 loc("aws-c-common/source/string.c":193:9)
^bb46:
  sea.br ^bb47(%v47, %v61 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":23:9)
^bb47(%v158 : !sea.mem<!sea.ptr<64>, i8>, %v159 : i64):
  %v160 = sea.const 8 : i64 loc("_114"("aws-c-common/include/aws/common/string.inl":35:19))
  %v161 = sea.ptr.dereferenceable %v57, %v160 : !sea.ptr<64>, i64 loc("_114"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v161, ^bb48, ^bb54
^bb48:
  %v162 = sea.const 8 : i64 loc("_116"("aws-c-common/include/aws/common/string.inl":35:88))
  %v163 = sea.ptr.dereferenceable %v57, %v162 : !sea.ptr<64>, i64 loc("_116"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v163, ^bb49, ^bb54
^bb49:
  %v164 = sea.ptr.index %v25 [%v159] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_118"("aws-c-common/include/aws/common/string.inl":35:72))
  %v165 = sea.const 1 : i64 loc("_119"("aws-c-common/include/aws/common/string.inl":35:72))
  %v166 = sea.ptr.dereferenceable %v164, %v165 : !sea.ptr<64>, i64 loc("_119"("aws-c-common/include/aws/common/string.inl":35:72))
  sea.cond_br %v166, ^bb50, ^bb54
^bb50:
  %v167 = sea.load %v158[%v164] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_121"("aws-c-common/include/aws/common/string.inl":35:72))
  %v168 = sea.const 0 : i8 loc("_122"("aws-c-common/include/aws/common/string.inl":35:93))
  %v169 = sea.icmp eq, %v167, %v168 : i8 loc("_122"("aws-c-common/include/aws/common/string.inl":35:93))
  %v170 = sea.const 8 : i64 loc("_123"("aws-c-common/include/aws/common/string.inl":35:19))
  %v171 = sea.ptr.dereferenceable %v57, %v170 : !sea.ptr<64>, i64 loc("_123"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v171, ^bb51, ^bb54
^bb51:
  %v172 = sea.const 8 : i64 loc("_125"("aws-c-common/include/aws/common/string.inl":35:88))
  %v173 = sea.ptr.dereferenceable %v57, %v172 : !sea.ptr<64>, i64 loc("_125"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v173, ^bb52, ^bb54
^bb52:
  %v174 = sea.const 1 : i64 loc("_127"("aws-c-common/include/aws/common/string.inl":35:72))
  %v175 = sea.ptr.dereferenceable %v164, %v174 : !sea.ptr<64>, i64 loc("_127"("aws-c-common/include/aws/common/string.inl":35:72))
  sea.cond_br %v175, ^bb53, ^bb54
^bb53:
  %v176 = sea.const 1 : i1 loc("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":30:5)
  %v177 = sea.xor %v169, %v176 : i1 loc("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":30:5)
  sea.assume %v177 loc("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":30:5)
  sea.br ^bb54 loc("seahorn/jobs/string_new_from_string/aws_string_new_from_string_harness.c":30:5)
^bb54:
  sea.br ^bb55
^bb55:
  %v178 = sea.const 0 : i1
  sea.assert %v178
  sea.halt
}
