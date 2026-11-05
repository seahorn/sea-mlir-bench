// Exported from SeaHorn (array_list_erase2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm19")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm20")
  %v2 = sea.mem.nondet "region.56" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm21")
  %v3 = sea.const 40 : i64 loc("_0")
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
  %v17 = sea.nondet "nd_size_t" [4] : i64 loc("_3"("seahorn/lib/array_list_helper.c":26:24))
  %v18 = sea.ptr.index %v4 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_4"("seahorn/lib/array_list_helper.c":26:9))
  sea.br ^bb1
^bb1:
  %v19 = sea.store %v1[%v18], %v17 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":26:22)
  %v20 = sea.nondet "nd_size_t" [5] : i64 loc("_6"("seahorn/lib/array_list_helper.c":27:21))
  %v21 = sea.ptr.index %v4 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_7"("seahorn/lib/array_list_helper.c":27:9))
  sea.br ^bb2
^bb2:
  %v22 = sea.store %v19[%v21], %v20 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":27:19)
  %v23 = sea.nondet "nd_size_t" [6] : i64 loc("_9"("seahorn/lib/array_list_helper.c":28:18))
  %v24 = sea.ptr.index %v4 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_10"("seahorn/lib/array_list_helper.c":28:9))
  sea.br ^bb3
^bb3:
  %v25 = sea.store %v22[%v24], %v23 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/array_list_helper.c":28:16)
  sea.br ^bb4
^bb4:
  %v26 = sea.const 0 : i64 loc("_13"("seahorn/lib/proof_allocators.c":21:15))
  %v27 = sea.icmp eq, %v17, %v26 : i64 loc("_13"("seahorn/lib/proof_allocators.c":21:15))
  %v28 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v27, ^bb8(%v2, %v28 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb5 loc("seahorn/lib/proof_allocators.c":21:10)
^bb5:
  %v29 = sea.nondet "nd_malloc_is_fail" [7] : i1 loc("_15"("seahorn/lib/sea_allocators.c":11:10))
  %v30 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v29, ^bb7(%v2, %v30 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb6 loc("seahorn/lib/sea_allocators.c":11:10)
^bb6:
  %v31 = sea.const 1 : i64 loc("malloc.i")
  %v32 = sea.mul %v17, %v31 : i64 loc("malloc.i")
  %v33 = sea.alloca %v32 align 16 [8] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb7(%v2, %v33 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb7(%v34 : !sea.mem<!sea.ptr<64>, i8>, %v35 : !sea.ptr<64>):
  %v36 = sea.memhavoc %v34[%v35], %v17 [9] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb8(%v36, %v35 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb8(%v37 : !sea.mem<!sea.ptr<64>, i8>, %v38 : !sea.ptr<64>):
  %v39 = sea.ptr.index %v4 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_19"("seahorn/lib/array_list_helper.c":29:9))
  sea.br ^bb9
^bb9:
  %v40 = sea.store %v25[%v39], %v38 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":29:14)
  sea.br ^bb10
^bb10:
  %v41 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  %v42 = sea.store %v40[%v4], %v41 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/array_list_helper.c":30:15)
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  %v43 = sea.const 3 : i64 loc("_22"("seahorn/lib/array_list_helper.c":38:47))
  %v44 = sea.icmp ult, %v20, %v43 : i64 loc("_22"("seahorn/lib/array_list_helper.c":38:47))
  %v45 = sea.const 9223372036854775809 : i64 loc("_23"("seahorn/lib/array_list_helper.c":39:41))
  %v46 = sea.icmp ult, %v23, %v45 : i64 loc("_23"("seahorn/lib/array_list_helper.c":39:41))
  %v47 = sea.const 0 : i1 loc("_24"("seahorn/lib/array_list_helper.c":40:31))
  %v48 = sea.select %v44, %v46, %v47 : i1 loc("_24"("seahorn/lib/array_list_helper.c":40:31))
  sea.assume %v48 loc("seahorn/lib/array_list_helper.c":31:3)
  %v49 = sea.nondet "nd_size_t" [10] : i64 loc("_25"("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":15:20))
  sea.br ^bb13
^bb13:
  sea.br ^bb14
^bb14:
  sea.br ^bb15
^bb15:
  %v50 = sea.mul %v23, %v20 : i64 loc("_29"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v51 = sea.umulo %v23, %v20 : i64 loc("_29"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v51, ^bb16, ^bb17 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb16:
  sea.br ^bb17 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb17:
  %v52 = sea.const 1 : i1 loc("_33"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v53 = sea.xor %v51, %v52 : i1 loc("_33"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb18
^bb18:
  %v54 = sea.icmp uge, %v17, %v50 : i64 loc("_35"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb19
^bb19:
  sea.cond_br %v27, ^bb24, ^bb20 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb20:
  sea.br ^bb21
^bb21:
  sea.br ^bb22
^bb22:
  sea.br ^bb23
^bb23:
  %v55 = sea.ptr.null : !sea.ptr<64> loc("_43"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v56 = sea.ptr.cmp ne, %v38, %v55 : !sea.ptr<64> loc("_43"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb27(%v56 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb24:
  sea.br ^bb25
^bb25:
  %v57 = sea.ptr.null : !sea.ptr<64> loc("_39"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v58 = sea.ptr.cmp eq, %v38, %v57 : !sea.ptr<64> loc("_39"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v59 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v58, ^bb26, ^bb27(%v59 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb26:
  %v60 = sea.const 1 : i1
  sea.br ^bb27(%v60 : i1)
^bb27(%v61 : i1):
  sea.br ^bb28
^bb28:
  %v62 = sea.const 0 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v63 = sea.select %v53, %v54, %v62 : i1 loc("or.cond.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v64 = sea.and %v63, %v61 : i1 loc("or.cond3.i.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v65 = sea.const 0 : i64 loc("_46")
  %v66 = sea.icmp ne, %v20, %v65 : i64 loc("_46")
  %v67 = sea.const 0 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v68 = sea.select %v64, %v66, %v67 : i1 loc("spec.select"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.assume %v68 loc("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":18:5)
  sea.tracking_on loc("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":21:5)
  %v69 = sea.load %v19[%v18] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_47"("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":22:36))
  %v70 = sea.load %v22[%v21] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_48"("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":23:33))
  %v71 = sea.load %v25[%v24] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_49"("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":24:30))
  sea.br ^bb29
^bb29:
  %v72 = sea.const 0 : i64 loc(".not.i13.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v73 = sea.icmp eq, %v71, %v72 : i64 loc(".not.i13.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  sea.cond_br %v73, ^bb32, ^bb30 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb30:
  sea.br ^bb31
^bb31:
  %v74 = sea.load %v40[%v39] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_53"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v75 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v76 = sea.ptr.cmp eq, %v74, %v75 : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v77 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v78 = sea.xor %v76, %v77 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v78 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb32 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb32:
  sea.br ^bb33
^bb33:
  %v79 = sea.icmp ugt, %v71, %v49 : i64 loc(".not.i.i"("aws-c-common/include/aws/common/array_list.inl":233:15))
  sea.cond_br %v79, ^bb36, ^bb34 loc("aws-c-common/include/aws/common/array_list.inl":233:9)
^bb34:
  %v80 = sea.mem.is_modified %v42[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_146"("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":33:9))
  %v81 = sea.const 1 : i1 loc("_147"("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":33:9))
  %v82 = sea.xor %v80, %v81 : i1 loc("_147"("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":33:9))
  %v83 = sea.mem.is_modified %v42[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_148"("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":33:9))
  sea.cond_br %v83, ^bb136, ^bb35 loc("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":33:9)
^bb35:
  %v84 = sea.load %v40[%v39] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_150"("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":34:9))
  %v85 = sea.mem.is_modified %v37[%v84] : !sea.mem<!sea.ptr<64>, i8> loc("_151"("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":34:9))
  %v86 = sea.const 1 : i1 loc("_152"("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":34:9))
  %v87 = sea.xor %v85, %v86 : i1 loc("_152"("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":34:9))
  %v88 = sea.mem.is_modified %v37[%v84] : !sea.mem<!sea.ptr<64>, i8> loc("_153"("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":34:9))
  sea.cond_br %v88, ^bb136, ^bb100(%v42, %v71 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":34:9)
^bb36:
  %v89 = sea.const 0 : i64 loc("_56"("aws-c-common/include/aws/common/array_list.inl":238:15))
  %v90 = sea.icmp eq, %v49, %v89 : i64 loc("_56"("aws-c-common/include/aws/common/array_list.inl":238:15))
  sea.cond_br %v90, ^bb73, ^bb37 loc("aws-c-common/include/aws/common/array_list.inl":238:9)
^bb37:
  %v91 = sea.const 18446744073709551615 : i64 loc("_83"("aws-c-common/include/aws/common/array_list.inl":241:33))
  %v92 = sea.add %v71, %v91 : i64 loc("_83"("aws-c-common/include/aws/common/array_list.inl":241:33))
  %v93 = sea.icmp eq, %v92, %v49 : i64 loc("_84"("aws-c-common/include/aws/common/array_list.inl":241:22))
  sea.cond_br %v93, ^bb60, ^bb38 loc("aws-c-common/include/aws/common/array_list.inl":241:16)
^bb38:
  sea.br ^bb39
^bb39:
  %v94 = sea.load %v40[%v39] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_101"("aws-c-common/include/aws/common/array_list.inl":246:46))
  sea.br ^bb40
^bb40:
  %v95 = sea.mul %v70, %v49 : i64 loc("_103"("aws-c-common/include/aws/common/array_list.inl":246:60))
  %v96 = sea.ptr.index %v94 [%v95] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_104"("aws-c-common/include/aws/common/array_list.inl":246:51))
  sea.br ^bb41
^bb41:
  sea.br ^bb42
^bb42:
  %v97 = sea.const 18446744073709551615 : i64 loc("_107"("aws-c-common/include/aws/common/array_list.inl":248:50))
  %v98 = sea.xor %v49, %v97 : i64 loc("_107"("aws-c-common/include/aws/common/array_list.inl":248:50))
  %v99 = sea.add %v71, %v98 : i64 loc("_108"("aws-c-common/include/aws/common/array_list.inl":248:50))
  %v100 = sea.ptr.index %v96 [%v70] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_109"("aws-c-common/include/aws/common/array_list.inl":247:43))
  %v101 = sea.mul %v99, %v70 : i64 loc("_110"("aws-c-common/include/aws/common/array_list.inl":249:48))
  %v102 = sea.ptr.dereferenceable %v96, %v101 : !sea.ptr<64>, i64 loc("_111"("seahorn/lib/bcmp.c":142:3))
  %v103 = sea.ptr.dereferenceable %v96, %v101 : !sea.ptr<64>, i64 loc("_112"("seahorn/lib/bcmp.c":142:3))
  sea.cond_br %v103, ^bb43, ^bb136 loc("seahorn/lib/bcmp.c":142:3)
^bb43:
  %v104 = sea.ptr.dereferenceable %v100, %v101 : !sea.ptr<64>, i64 loc("_114"("seahorn/lib/bcmp.c":143:3))
  %v105 = sea.ptr.dereferenceable %v100, %v101 : !sea.ptr<64>, i64 loc("_115"("seahorn/lib/bcmp.c":143:3))
  sea.cond_br %v105, ^bb44, ^bb136 loc("seahorn/lib/bcmp.c":143:3)
^bb44:
  %v106 = sea.memmove %v37[%v96], %v37[%v100], %v101 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":144:10)
  sea.br ^bb45
^bb45:
  %v107 = sea.load %v25[%v24] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_117"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v108 = sea.const 0 : i64 loc(".not.i3.i25.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v109 = sea.icmp eq, %v107, %v108 : i64 loc(".not.i3.i25.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  sea.cond_br %v109, ^bb58, ^bb46 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
^bb46:
  sea.br ^bb47
^bb47:
  %v110 = sea.load %v40[%v39] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_120"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v111 = sea.ptr.null : !sea.ptr<64> loc(".not1.i4.i26.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v112 = sea.ptr.cmp eq, %v110, %v111 : !sea.ptr<64> loc(".not1.i4.i26.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v113 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v114 = sea.xor %v112, %v113 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v114 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb48
^bb48:
  sea.br ^bb49
^bb49:
  %v115 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":282:9)
  %v116 = sea.xor %v112, %v115 : i1 loc("aws-c-common/include/aws/common/array_list.inl":282:9)
  sea.assume %v116 loc("aws-c-common/include/aws/common/array_list.inl":282:9)
  sea.br ^bb50
^bb50:
  %v117 = sea.load %v22[%v21] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_124"("aws-c-common/include/aws/common/array_list.inl":284:41))
  sea.br ^bb51
^bb51:
  sea.br ^bb52
^bb52:
  %v118 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v119 = sea.xor %v112, %v118 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v119 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb53
^bb53:
  sea.br ^bb54
^bb54:
  sea.br ^bb55
^bb55:
  %v120 = sea.const 18446744073709551615 : i64 loc("_129"("aws-c-common/include/aws/common/array_list.inl":284:82))
  %v121 = sea.add %v107, %v120 : i64 loc("_129"("aws-c-common/include/aws/common/array_list.inl":284:82))
  %v122 = sea.mul %v117, %v121 : i64 loc("_130"("aws-c-common/include/aws/common/array_list.inl":284:51))
  %v123 = sea.ptr.index %v110 [%v122] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_131"("aws-c-common/include/aws/common/array_list.inl":286:47))
  %v124 = sea.const 0 : i8 loc("aws-c-common/include/aws/common/array_list.inl":286:9)
  %v125 = sea.memset %v106[%v123], %v124, %v117 inplace : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/include/aws/common/array_list.inl":286:9)
  sea.br ^bb56
^bb56:
  sea.br ^bb57
^bb57:
  %v126 = sea.store %v42[%v24], %v121 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":287:21)
  sea.br ^bb84(%v126, %v92, %v121 : !sea.mem<!sea.ptr<64>, i8>, i64, i64)
^bb58:
  sea.br ^bb59
^bb59:
  %v127 = sea.const 0 : i64 loc("aws-c-common/include/aws/common/array_list.inl":293:5)
  sea.br ^bb84(%v42, %v92, %v127 : !sea.mem<!sea.ptr<64>, i8>, i64, i64) loc("aws-c-common/include/aws/common/array_list.inl":293:5)
^bb60:
  sea.br ^bb61
^bb61:
  sea.br ^bb62
^bb62:
  %v128 = sea.load %v40[%v39] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_88"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v129 = sea.ptr.null : !sea.ptr<64> loc(".not1.i4.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v130 = sea.ptr.cmp eq, %v128, %v129 : !sea.ptr<64> loc(".not1.i4.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v131 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v132 = sea.xor %v130, %v131 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v132 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb63
^bb63:
  sea.br ^bb64
^bb64:
  %v133 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":282:9)
  %v134 = sea.xor %v130, %v133 : i1 loc("aws-c-common/include/aws/common/array_list.inl":282:9)
  sea.assume %v134 loc("aws-c-common/include/aws/common/array_list.inl":282:9)
  sea.br ^bb65
^bb65:
  sea.br ^bb66
^bb66:
  sea.br ^bb67
^bb67:
  %v135 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v136 = sea.xor %v130, %v135 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v136 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb68
^bb68:
  sea.br ^bb69
^bb69:
  sea.br ^bb70
^bb70:
  %v137 = sea.mul %v70, %v49 : i64 loc("_95"("aws-c-common/include/aws/common/array_list.inl":284:51))
  %v138 = sea.ptr.index %v128 [%v137] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_96"("aws-c-common/include/aws/common/array_list.inl":286:47))
  %v139 = sea.const 0 : i8 loc("aws-c-common/include/aws/common/array_list.inl":286:9)
  %v140 = sea.memset %v37[%v138], %v139, %v70 inplace : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/include/aws/common/array_list.inl":286:9)
  sea.br ^bb71
^bb71:
  sea.br ^bb72
^bb72:
  %v141 = sea.store %v42[%v24], %v49 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":287:21)
  sea.br ^bb84(%v141, %v92, %v49 : !sea.mem<!sea.ptr<64>, i8>, i64, i64)
^bb73:
  sea.br ^bb74
^bb74:
  sea.br ^bb75
^bb75:
  %v142 = sea.load %v40[%v39] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_60"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v143 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v144 = sea.ptr.cmp eq, %v142, %v143 : !sea.ptr<64> loc(".not1.i.i.i"("aws-c-common/include/aws/common/array_list.inl":341:5))
  %v145 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v146 = sea.xor %v144, %v145 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v146 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb76
^bb76:
  sea.br ^bb77
^bb77:
  sea.br ^bb78
^bb78:
  %v147 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v148 = sea.xor %v144, %v147 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v148 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb79
^bb79:
  %v149 = sea.const 1 : i64 loc(".not.i41.i"("aws-c-common/include/aws/common/array_list.inl":209:11))
  %v150 = sea.icmp ugt, %v71, %v149 : i64 loc(".not.i41.i"("aws-c-common/include/aws/common/array_list.inl":209:11))
  sea.cond_br %v150, ^bb86, ^bb80 loc("aws-c-common/include/aws/common/array_list.inl":209:9)
^bb80:
  sea.br ^bb81
^bb81:
  sea.cond_br %v144, ^bb85, ^bb82 loc("aws-c-common/include/aws/common/array_list.inl":299:9)
^bb82:
  sea.br ^bb83
^bb83:
  %v151 = sea.const 0 : i64 loc("aws-c-common/include/aws/common/array_list.inl":303:22)
  %v152 = sea.store %v42[%v24], %v151 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":303:22)
  %v153 = sea.const 0 : i64 loc("aws-c-common/include/aws/common/array_list.inl":304:5)
  %v154 = sea.const 0 : i64 loc("aws-c-common/include/aws/common/array_list.inl":304:5)
  sea.br ^bb84(%v152, %v153, %v154 : !sea.mem<!sea.ptr<64>, i8>, i64, i64) loc("aws-c-common/include/aws/common/array_list.inl":304:5)
^bb84(%v155 : !sea.mem<!sea.ptr<64>, i8>, %v156 : i64, %v157 : i64):
  %v158 = sea.icmp eq, %v157, %v156 : i64 loc("_136"("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":28:9))
  sea.cond_br %v158, ^bb97(%v155, %v156 : !sea.mem<!sea.ptr<64>, i8>, i64), ^bb136 loc("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":28:9)
^bb85:
  sea.br ^bb136 loc("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":28:9)
^bb86:
  sea.br ^bb87
^bb87:
  sea.br ^bb88
^bb88:
  sea.br ^bb89
^bb89:
  %v159 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  %v160 = sea.xor %v144, %v159 : i1 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.assume %v160 loc("aws-c-common/include/aws/common/array_list.inl":341:5)
  sea.br ^bb90
^bb90:
  %v161 = sea.const 18446744073709551615 : i64 loc("_71"("aws-c-common/include/aws/common/array_list.inl":217:62))
  %v162 = sea.add %v71, %v161 : i64 loc("_71"("aws-c-common/include/aws/common/array_list.inl":217:62))
  sea.br ^bb91
^bb91:
  %v163 = sea.mul %v162, %v70 : i64 loc("_73"("aws-c-common/include/aws/common/array_list.inl":218:50))
  sea.br ^bb92
^bb92:
  sea.br ^bb93
^bb93:
  %v164 = sea.ptr.index %v142 [%v70] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_76"("aws-c-common/include/aws/common/array_list.inl":219:51))
  %v165 = sea.ptr.dereferenceable %v142, %v163 : !sea.ptr<64>, i64 loc("_77"("seahorn/lib/bcmp.c":142:3))
  %v166 = sea.ptr.dereferenceable %v142, %v163 : !sea.ptr<64>, i64 loc("_78"("seahorn/lib/bcmp.c":142:3))
  sea.cond_br %v166, ^bb94, ^bb136 loc("seahorn/lib/bcmp.c":142:3)
^bb94:
  %v167 = sea.ptr.dereferenceable %v164, %v163 : !sea.ptr<64>, i64 loc("_80"("seahorn/lib/bcmp.c":143:3))
  %v168 = sea.ptr.dereferenceable %v164, %v163 : !sea.ptr<64>, i64 loc("_81"("seahorn/lib/bcmp.c":143:3))
  sea.cond_br %v168, ^bb95, ^bb136 loc("seahorn/lib/bcmp.c":143:3)
^bb95:
  %v169 = sea.memmove %v37[%v142], %v37[%v164], %v163 inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/bcmp.c":144:10)
  sea.br ^bb96
^bb96:
  %v170 = sea.store %v42[%v24], %v162 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":220:22)
  sea.br ^bb97(%v170, %v162 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":28:9)
^bb97(%v171 : !sea.mem<!sea.ptr<64>, i8>, %v172 : i64):
  %v173 = sea.load %v171[%v18] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_139"("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":29:9))
  %v174 = sea.icmp eq, %v173, %v69 : i64 loc("_140"("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":29:9))
  sea.cond_br %v174, ^bb98, ^bb136 loc("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":29:9)
^bb98:
  %v175 = sea.load %v171[%v21] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_142"("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":30:9))
  %v176 = sea.icmp eq, %v175, %v70 : i64 loc("_143"("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":30:9))
  sea.cond_br %v176, ^bb99, ^bb136 loc("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":30:9)
^bb99:
  sea.br ^bb100(%v171, %v172 : !sea.mem<!sea.ptr<64>, i8>, i64) loc("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":31:9)
^bb100(%v177 : !sea.mem<!sea.ptr<64>, i8>, %v178 : i64):
  sea.br ^bb101
^bb101:
  sea.br ^bb102
^bb102:
  sea.br ^bb103
^bb103:
  %v179 = sea.mul %v178, %v70 : i64 loc("_159"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v180 = sea.umulo %v178, %v70 : i64 loc("_159"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v180, ^bb104, ^bb105 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb104:
  sea.br ^bb105 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb105:
  %v181 = sea.const 1 : i1 loc("_163"("aws-c-common/include/aws/common/array_list.inl":92:41))
  %v182 = sea.xor %v180, %v181 : i1 loc("_163"("aws-c-common/include/aws/common/array_list.inl":92:41))
  sea.br ^bb106
^bb106:
  %v183 = sea.icmp uge, %v69, %v179 : i64 loc("_165"("aws-c-common/include/aws/common/array_list.inl":92:54))
  sea.br ^bb107
^bb107:
  %v184 = sea.const 0 : i64 loc("_167"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v185 = sea.icmp eq, %v69, %v184 : i64 loc("_167"("aws-c-common/include/aws/common/array_list.inl":93:26))
  sea.cond_br %v185, ^bb112, ^bb108 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb108:
  sea.br ^bb109
^bb109:
  sea.br ^bb110
^bb110:
  sea.br ^bb111
^bb111:
  %v186 = sea.load %v177[%v39] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_175"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v187 = sea.ptr.null : !sea.ptr<64> loc("_176"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v188 = sea.ptr.cmp ne, %v186, %v187 : !sea.ptr<64> loc("_176"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb115(%v186, %v188 : !sea.ptr<64>, i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb112:
  sea.br ^bb113
^bb113:
  %v189 = sea.load %v177[%v39] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_170"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v190 = sea.ptr.null : !sea.ptr<64> loc("_171"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v191 = sea.ptr.cmp eq, %v189, %v190 : !sea.ptr<64> loc("_171"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v192 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v191, ^bb114, ^bb115(%v189, %v192 : !sea.ptr<64>, i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb114:
  %v193 = sea.ptr.null : !sea.ptr<64>
  %v194 = sea.const 1 : i1
  sea.br ^bb115(%v193, %v194 : !sea.ptr<64>, i1)
^bb115(%v195 : !sea.ptr<64>, %v196 : i1):
  sea.br ^bb116
^bb116:
  %v197 = sea.const 0 : i1 loc("or.cond.i3.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v198 = sea.select %v182, %v183, %v197 : i1 loc("or.cond.i3.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v199 = sea.const 0 : i1 loc("or.cond3.i4.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v200 = sea.select %v198, %v196, %v199 : i1 loc("or.cond3.i4.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v201 = sea.const 0 : i64 loc("_180")
  %v202 = sea.icmp ne, %v70, %v201 : i64 loc("_180")
  %v203 = sea.const 0 : i1 loc("spec.select9"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v204 = sea.select %v200, %v202, %v203 : i1 loc("spec.select9"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.br ^bb117
^bb117:
  sea.br ^bb118
^bb118:
  sea.br ^bb119
^bb119:
  sea.cond_br %v180, ^bb120, ^bb121 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb120:
  sea.br ^bb121 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb121:
  sea.br ^bb122
^bb122:
  sea.br ^bb123
^bb123:
  sea.cond_br %v185, ^bb128, ^bb124 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb124:
  sea.br ^bb125
^bb125:
  sea.br ^bb126
^bb126:
  sea.br ^bb127
^bb127:
  %v205 = sea.ptr.null : !sea.ptr<64> loc("_193"("aws-c-common/include/aws/common/array_list.inl":94:26))
  %v206 = sea.ptr.cmp ne, %v195, %v205 : !sea.ptr<64> loc("_193"("aws-c-common/include/aws/common/array_list.inl":94:26))
  sea.br ^bb131(%v206 : i1) loc("aws-c-common/include/aws/common/array_list.inl":94:26)
^bb128:
  sea.br ^bb129
^bb129:
  %v207 = sea.ptr.null : !sea.ptr<64> loc("_189"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v208 = sea.ptr.cmp eq, %v195, %v207 : !sea.ptr<64> loc("_189"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v209 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/array_list.inl":93:83)
  sea.cond_br %v208, ^bb130, ^bb131(%v209 : i1) loc("aws-c-common/include/aws/common/array_list.inl":93:83)
^bb130:
  %v210 = sea.const 1 : i1
  sea.br ^bb131(%v210 : i1)
^bb131(%v211 : i1):
  sea.br ^bb132
^bb132:
  %v212 = sea.const 0 : i1 loc("or.cond3.i9.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  %v213 = sea.select %v198, %v211, %v212 : i1 loc("or.cond3.i9.i"("aws-c-common/include/aws/common/array_list.inl":96:35))
  sea.cond_br %v213, ^bb134, ^bb133 loc("aws-c-common/include/aws/common/array_list.inl":96:35)
^bb133:
  sea.br ^bb136 loc("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":37:5)
^bb134:
  %v214 = sea.const 0 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v215 = sea.icmp eq, %v70, %v214 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":95:48))
  sea.cond_br %v215, ^bb136, ^bb135 loc("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":37:5)
^bb135:
  %v216 = sea.load %v177[%v4] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_198"("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":38:5))
  %v217 = sea.mem.is_modified %v7[%v216] : !sea.mem<!sea.ptr<64>, i8> loc("_199"("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":38:5))
  %v218 = sea.const 1 : i1 loc("_200"("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":38:5))
  %v219 = sea.xor %v217, %v218 : i1 loc("_200"("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":38:5))
  %v220 = sea.mem.is_modified %v7[%v216] : !sea.mem<!sea.ptr<64>, i8> loc("_201"("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":38:5))
  sea.assume %v220 loc("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":38:5)
  sea.br ^bb136 loc("seahorn/jobs2/array_list_erase2/aws_array_list_erase_harness2.c":38:5)
^bb136:
  sea.br ^bb137
^bb137:
  %v221 = sea.const 0 : i1
  sea.assert %v221
  sea.halt
}
