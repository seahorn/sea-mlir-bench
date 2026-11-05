// Exported from SeaHorn (string_new_from_array.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm10")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm11")
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
  %v14 = sea.nondet "nd_size_t" [2] : i64 loc("_2"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":15:25))
  %v15 = sea.const 0 : i64 loc("_3"("seahorn/lib/proof_allocators.c":17:15))
  %v16 = sea.icmp eq, %v14, %v15 : i64 loc("_3"("seahorn/lib/proof_allocators.c":17:15))
  %v17 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":17:10)
  sea.cond_br %v16, ^bb4(%v1, %v17 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb1 loc("seahorn/lib/proof_allocators.c":17:10)
^bb1:
  %v18 = sea.nondet "nd_malloc_is_fail" [3] : i1 loc("_5"("seahorn/lib/sea_allocators.c":11:10))
  %v19 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v18, ^bb3(%v1, %v19 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb2 loc("seahorn/lib/sea_allocators.c":11:10)
^bb2:
  %v20 = sea.const 1 : i64 loc("malloc.i")
  %v21 = sea.mul %v14, %v20 : i64 loc("malloc.i")
  %v22 = sea.alloca %v21 align 16 [4] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb3(%v1, %v22 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb3(%v23 : !sea.mem<!sea.ptr<64>, i8>, %v24 : !sea.ptr<64>):
  %v25 = sea.memhavoc %v23[%v24], %v14 [5] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v26 = sea.ptr.null : !sea.ptr<64> loc("_8"("seahorn/lib/sea_allocators.c":45:10))
  %v27 = sea.ptr.cmp ne, %v24, %v26 : !sea.ptr<64> loc("_8"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v27 loc("seahorn/lib/sea_allocators.c":45:3)
  sea.br ^bb4(%v25, %v24 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":17:10)
^bb4(%v28 : !sea.mem<!sea.ptr<64>, i8>, %v29 : !sea.ptr<64>):
  %v30 = sea.nondet "nd_size_t" [6] : i64 loc("_10"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":19:28))
  %v31 = sea.icmp ule, %v30, %v14 : i64 loc("_11"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":22:26))
  sea.assume %v31 loc("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":22:5)
  sea.br ^bb5
^bb5:
  %v32 = sea.const 25 : i64 loc("_13"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v33 = sea.add %v30, %v32 : i64 loc("_13"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v34 = sea.const 25 : i64 loc("_13"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  %v35 = sea.uaddo %v30, %v34 : i64 loc("_13"("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9))
  sea.cond_br %v35, ^bb17, ^bb6 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":70:9)
^bb6:
  %v36 = sea.const 0 : i64 loc("_16"("seahorn/lib/allocator_override.c":17:3))
  %v37 = sea.icmp ne, %v33, %v36 : i64 loc("_16"("seahorn/lib/allocator_override.c":17:3))
  %v38 = sea.const 0 : i64 loc(".not.i7.i"("seahorn/lib/allocator_override.c":17:3))
  %v39 = sea.icmp eq, %v33, %v38 : i64 loc(".not.i7.i"("seahorn/lib/allocator_override.c":17:3))
  sea.cond_br %v39, ^bb35, ^bb7 loc("seahorn/lib/allocator_override.c":17:3)
^bb7:
  %v40 = sea.nondet "nd_malloc_is_fail" [7] : i1 loc("_18"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v40, ^bb16, ^bb8 loc("seahorn/lib/sea_allocators.c":11:10)
^bb8:
  %v41 = sea.const 1 : i64 loc("malloc9.i")
  %v42 = sea.mul %v33, %v41 : i64 loc("malloc9.i")
  %v43 = sea.alloca %v42 align 16 [8] : i64 -> !sea.ptr<64> loc("malloc9.i")
  %v44 = sea.memhavoc %v28[%v43], %v33 [9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v45 = sea.const 8 : i64 loc("_20"("aws-c-common/source/string.c":202:49))
  %v46 = sea.ptr.dereferenceable %v43, %v45 : !sea.ptr<64>, i64 loc("_20"("aws-c-common/source/string.c":202:49))
  sea.cond_br %v46, ^bb9, ^bb35
^bb9:
  %v47 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("aws-c-common/source/string.c":202:49)
  %v48 = sea.store %v44[%v43], %v47 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/string.c":202:49)
  %v49 = sea.ptr.index %v43 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_22"("aws-c-common/source/string.c":203:23))
  %v50 = sea.const 8 : i64 loc("_23"("aws-c-common/source/string.c":203:28))
  %v51 = sea.ptr.dereferenceable %v49, %v50 : !sea.ptr<64>, i64 loc("_23"("aws-c-common/source/string.c":203:28))
  sea.cond_br %v51, ^bb10, ^bb35
^bb10:
  %v52 = sea.store %v48[%v49], %v30 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/string.c":203:28)
  %v53 = sea.const 0 : i64 loc(".not2.i.i"("aws-c-common/source/string.c":204:13))
  %v54 = sea.icmp eq, %v30, %v53 : i64 loc(".not2.i.i"("aws-c-common/source/string.c":204:13))
  sea.cond_br %v54, ^bb14(%v52 : !sea.mem<!sea.ptr<64>, i8>), ^bb11 loc("aws-c-common/source/string.c":204:9)
^bb11:
  %v55 = sea.ptr.index %v43 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_26"("aws-c-common/source/string.c":205:29))
  %v56 = sea.ptr.dereferenceable %v55, %v30 : !sea.ptr<64>, i64 loc("_27"("seahorn/lib/bcmp.c":161:3))
  %v57 = sea.ptr.dereferenceable %v55, %v30 : !sea.ptr<64>, i64 loc("_28"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v57, ^bb12, ^bb35 loc("seahorn/lib/bcmp.c":161:3)
^bb12:
  %v58 = sea.ptr.dereferenceable %v29, %v30 : !sea.ptr<64>, i64 loc("_30"("seahorn/lib/bcmp.c":162:3))
  %v59 = sea.ptr.dereferenceable %v29, %v30 : !sea.ptr<64>, i64 loc("_31"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v59, ^bb13, ^bb35 loc("seahorn/lib/bcmp.c":162:3)
^bb13:
  %v60 = sea.memmove %v52[%v55], %v52[%v29], %v30 inplace align 16 : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":163:10)
  sea.br ^bb14(%v60 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/string.c":206:5)
^bb14(%v61 : !sea.mem<!sea.ptr<64>, i8>):
  %v62 = sea.ptr.index %v43 [%v30] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_33"("aws-c-common/source/string.c":207:18))
  %v63 = sea.const 1 : i64 loc("_34"("aws-c-common/source/string.c":207:34))
  %v64 = sea.ptr.dereferenceable %v62, %v63 : !sea.ptr<64>, i64 loc("_34"("aws-c-common/source/string.c":207:34))
  sea.cond_br %v64, ^bb15, ^bb35
^bb15:
  %v65 = sea.const 0 : i8 loc("aws-c-common/source/string.c":207:34)
  %v66 = sea.store %v61[%v62], %v65 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("aws-c-common/source/string.c":207:34)
  sea.br ^bb18(%v66, %v43 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("aws-c-common/source/string.c":208:5)
^bb16:
  %v67 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/string.c":197:9)
  sea.br ^bb18(%v28, %v67 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("aws-c-common/source/string.c":197:9)
^bb17:
  %v68 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/string.c":193:9)
  sea.br ^bb18(%v28, %v68 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("aws-c-common/source/string.c":193:9)
^bb18(%v69 : !sea.mem<!sea.ptr<64>, i8>, %v70 : !sea.ptr<64>):
  %v71 = sea.ptr.null : !sea.ptr<64> loc(".not.i"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":28:9))
  %v72 = sea.ptr.cmp eq, %v70, %v71 : !sea.ptr<64> loc(".not.i"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":28:9))
  %v73 = sea.const 1 : i1 loc("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":28:9)
  %v74 = sea.xor %v72, %v73 : i1 loc("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":28:9)
  sea.assume %v74 loc("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":28:9)
  %v75 = sea.ptr.index %v70 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_36"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":29:9))
  %v76 = sea.const 8 : i64 loc("_37"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":29:9))
  %v77 = sea.ptr.dereferenceable %v75, %v76 : !sea.ptr<64>, i64 loc("_37"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":29:9))
  sea.cond_br %v77, ^bb19, ^bb35
^bb19:
  %v78 = sea.load %v69[%v75] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_39"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":29:9))
  %v79 = sea.icmp eq, %v78, %v30 : i64 loc("_40"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":29:9))
  %v80 = sea.const 8 : i64 loc("_41"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":29:9))
  %v81 = sea.ptr.dereferenceable %v75, %v80 : !sea.ptr<64>, i64 loc("_41"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":29:9))
  %v82 = sea.const 0 : i1 loc("_42")
  %v83 = sea.select %v81, %v79, %v82 : i1 loc("_42")
  sea.cond_br %v83, ^bb20, ^bb35
^bb20:
  %v84 = sea.const 8 : i64 loc("_44"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":30:9))
  %v85 = sea.ptr.dereferenceable %v75, %v84 : !sea.ptr<64>, i64 loc("_44"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":30:9))
  sea.cond_br %v85, ^bb21, ^bb35
^bb21:
  %v86 = sea.ptr.index %v70 [%v30] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_46"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":30:9))
  %v87 = sea.const 1 : i64 loc("_47"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":30:9))
  %v88 = sea.ptr.dereferenceable %v86, %v87 : !sea.ptr<64>, i64 loc("_47"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":30:9))
  sea.cond_br %v88, ^bb22, ^bb35
^bb22:
  %v89 = sea.load %v69[%v86] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_49"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":30:9))
  %v90 = sea.const 0 : i8 loc("_50"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":30:9))
  %v91 = sea.icmp eq, %v89, %v90 : i8 loc("_50"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":30:9))
  %v92 = sea.const 8 : i64 loc("_51"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":30:9))
  %v93 = sea.ptr.dereferenceable %v75, %v92 : !sea.ptr<64>, i64 loc("_51"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":30:9))
  sea.cond_br %v93, ^bb23, ^bb35
^bb23:
  %v94 = sea.const 1 : i64 loc("_53"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":30:9))
  %v95 = sea.ptr.dereferenceable %v86, %v94 : !sea.ptr<64>, i64 loc("_53"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":30:9))
  %v96 = sea.const 0 : i1 loc("_54")
  %v97 = sea.select %v95, %v91, %v96 : i1 loc("_54")
  sea.cond_br %v97, ^bb24, ^bb35
^bb24:
  %v98 = sea.const 8 : i64 loc("_56"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":31:52))
  %v99 = sea.ptr.dereferenceable %v75, %v98 : !sea.ptr<64>, i64 loc("_56"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":31:52))
  sea.cond_br %v99, ^bb25, ^bb35
^bb25:
  %v100 = sea.ptr.index %v70 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_58"("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":31:33))
  %v101 = sea.const 0 : i64 loc("_59"("seahorn/lib/utils.c":15:3))
  %v102 = sea.icmp eq, %v30, %v101 : i64 loc("_59"("seahorn/lib/utils.c":15:3))
  %v103 = sea.ptr.null : !sea.ptr<64> loc(".not4.i.i"("seahorn/lib/utils.c":15:3))
  %v104 = sea.ptr.cmp ne, %v29, %v103 : !sea.ptr<64> loc(".not4.i.i"("seahorn/lib/utils.c":15:3))
  %v105 = sea.or %v104, %v102 : i1 loc("_60"("seahorn/lib/utils.c":15:3))
  %v106 = sea.const 0 : i64 loc("_61"("seahorn/lib/utils.c":15:3))
  %v107 = sea.icmp ne, %v30, %v106 : i64 loc("_61"("seahorn/lib/utils.c":15:3))
  %v108 = sea.ptr.null : !sea.ptr<64> loc(".not6.i.i.not"("seahorn/lib/utils.c":15:3))
  %v109 = sea.ptr.cmp eq, %v29, %v108 : !sea.ptr<64> loc(".not6.i.i.not"("seahorn/lib/utils.c":15:3))
  %v110 = sea.and %v109, %v107 : i1 loc("or.cond"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v110, ^bb35, ^bb26 loc("seahorn/lib/utils.c":15:3)
^bb26:
  %v111 = sea.and %v104, %v107 : i1 loc("or.cond3.i.i"("seahorn/lib/utils.c":16:15))
  sea.cond_br %v111, ^bb27, ^bb28 loc("seahorn/lib/utils.c":16:15)
^bb27:
  %v112 = sea.nondet "nd_size_t" [10] : i64 loc("_63"("seahorn/lib/utils.c":17:16))
  %v113 = sea.icmp ult, %v112, %v30 : i64 loc("_64"("seahorn/lib/utils.c":19:14))
  %v114 = sea.const 36028797018963967 : i64 loc("_65"("seahorn/lib/utils.c":19:20))
  %v115 = sea.icmp ult, %v30, %v114 : i64 loc("_65"("seahorn/lib/utils.c":19:20))
  %v116 = sea.and %v115, %v113 : i1 loc("_66"("seahorn/lib/utils.c":19:20))
  sea.assume %v116 loc("seahorn/lib/utils.c":19:5)
  %v117 = sea.ptr.index %v100 [%v112] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_67"("seahorn/lib/utils.c":20:5))
  %v118 = sea.load %v69[%v117] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_68"("seahorn/lib/utils.c":20:5))
  %v119 = sea.ptr.index %v29 [%v112] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_69"("seahorn/lib/utils.c":20:5))
  %v120 = sea.load %v69[%v119] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_70"("seahorn/lib/utils.c":20:5))
  %v121 = sea.icmp eq, %v118, %v120 : i8 loc("_71"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v121, ^bb28, ^bb35 loc("seahorn/lib/utils.c":20:5)
^bb28:
  %v122 = sea.const 8 : i64 loc("_73"("aws-c-common/include/aws/common/string.inl":35:19))
  %v123 = sea.ptr.dereferenceable %v75, %v122 : !sea.ptr<64>, i64 loc("_73"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v123, ^bb29, ^bb35
^bb29:
  %v124 = sea.const 8 : i64 loc("_75"("aws-c-common/include/aws/common/string.inl":35:88))
  %v125 = sea.ptr.dereferenceable %v75, %v124 : !sea.ptr<64>, i64 loc("_75"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v125, ^bb30, ^bb35
^bb30:
  %v126 = sea.const 1 : i64 loc("_77"("aws-c-common/include/aws/common/string.inl":35:72))
  %v127 = sea.ptr.dereferenceable %v86, %v126 : !sea.ptr<64>, i64 loc("_77"("aws-c-common/include/aws/common/string.inl":35:72))
  sea.cond_br %v127, ^bb31, ^bb35
^bb31:
  %v128 = sea.const 8 : i64 loc("_79"("aws-c-common/include/aws/common/string.inl":35:19))
  %v129 = sea.ptr.dereferenceable %v75, %v128 : !sea.ptr<64>, i64 loc("_79"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v129, ^bb32, ^bb35
^bb32:
  %v130 = sea.const 8 : i64 loc("_81"("aws-c-common/include/aws/common/string.inl":35:88))
  %v131 = sea.ptr.dereferenceable %v75, %v130 : !sea.ptr<64>, i64 loc("_81"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v131, ^bb33, ^bb35
^bb33:
  %v132 = sea.const 1 : i64 loc("_83"("aws-c-common/include/aws/common/string.inl":35:72))
  %v133 = sea.ptr.dereferenceable %v86, %v132 : !sea.ptr<64>, i64 loc("_83"("aws-c-common/include/aws/common/string.inl":35:72))
  sea.cond_br %v133, ^bb34, ^bb35
^bb34:
  %v134 = sea.const 1 : i1 loc("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":32:9)
  %v135 = sea.const 1 : i1 loc("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":32:9)
  %v136 = sea.xor %v134, %v135 : i1 loc("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":32:9)
  sea.assume %v136 loc("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":32:9)
  sea.br ^bb35 loc("seahorn/jobs/string_new_from_array/aws_string_new_from_array_harness.c":32:9)
^bb35:
  sea.br ^bb36
^bb36:
  %v137 = sea.const 0 : i1
  sea.assert %v137
  sea.halt
}
