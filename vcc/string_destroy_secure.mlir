// Exported from SeaHorn (string_destroy_secure.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm9")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm10")
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
  %v15 = sea.const 16 : i64 loc("_3"("seahorn/lib/string_helper.c":25:14))
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
  %v29 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i.i"("seahorn/lib/string_helper.c":13:7))
  %v30 = sea.ptr.cmp eq, %v25, %v29 : !sea.ptr<64> loc(".not.i.i.i"("seahorn/lib/string_helper.c":13:7))
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
  sea.cond_br %v36, ^bb6, ^bb21
^bb6:
  %v37 = sea.store %v26[%v25], %v34 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/string_helper.c":15:49)
  %v38 = sea.ptr.index %v25 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_16"("seahorn/lib/string_helper.c":17:23))
  %v39 = sea.const 8 : i64 loc("_17"("seahorn/lib/string_helper.c":17:28))
  %v40 = sea.ptr.dereferenceable %v38, %v39 : !sea.ptr<64>, i64 loc("_17"("seahorn/lib/string_helper.c":17:28))
  sea.cond_br %v40, ^bb7, ^bb21
^bb7:
  %v41 = sea.store %v37[%v38], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/string_helper.c":17:28)
  %v42 = sea.ptr.index %v25 [%v14] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_19"("seahorn/lib/string_helper.c":18:18))
  %v43 = sea.const 1 : i64 loc("_20"("seahorn/lib/string_helper.c":18:34))
  %v44 = sea.ptr.dereferenceable %v42, %v43 : !sea.ptr<64>, i64 loc("_20"("seahorn/lib/string_helper.c":18:34))
  sea.cond_br %v44, ^bb8, ^bb21
^bb8:
  %v45 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":18:34)
  %v46 = sea.store %v41[%v42], %v45 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":18:34)
  sea.br ^bb9(%v46 : !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/lib/string_helper.c":19:3)
^bb9(%v47 : !sea.mem<!sea.ptr<64>, i8>):
  %v48 = sea.ptr.index %v25 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_22"("seahorn/jobs/string_destroy_secure/aws_string_destroy_secure_harness.c":15:37))
  %v49 = sea.ptr.index %v25 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_23"("seahorn/jobs/string_destroy_secure/aws_string_destroy_secure_harness.c":16:21))
  %v50 = sea.const 8 : i64 loc("_24"("seahorn/jobs/string_destroy_secure/aws_string_destroy_secure_harness.c":16:21))
  %v51 = sea.ptr.dereferenceable %v49, %v50 : !sea.ptr<64>, i64 loc("_24"("seahorn/jobs/string_destroy_secure/aws_string_destroy_secure_harness.c":16:21))
  sea.cond_br %v51, ^bb10, ^bb21
^bb10:
  %v52 = sea.load %v47[%v49] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_26"("seahorn/jobs/string_destroy_secure/aws_string_destroy_secure_harness.c":16:21))
  %v53 = sea.nondet "nd_bool" [7] : i1 loc("_27"("seahorn/jobs/string_destroy_secure/aws_string_destroy_secure_harness.c":19:27))
  %v54 = sea.and %v28, %v53 : i1 loc(".not.i.i.not"("aws-c-common/source/string.c":235:9))
  sea.cond_br %v54, ^bb11, ^bb18(%v47 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/string.c":235:9)
^bb11:
  %v55 = sea.const 8 : i64 loc("_29"("aws-c-common/source/string.c":236:61))
  %v56 = sea.ptr.dereferenceable %v49, %v55 : !sea.ptr<64>, i64 loc("_29"("aws-c-common/source/string.c":236:61))
  sea.cond_br %v56, ^bb12, ^bb21
^bb12:
  %v57 = sea.const 0 : i64 loc("_31")
  %v58 = sea.icmp eq, %v52, %v57 : i64 loc("_31")
  sea.cond_br %v58, ^bb14(%v47 : !sea.mem<!sea.ptr<64>, i8>), ^bb13 loc("aws-c-common/source/common.c":42:22)
^bb13:
  %v59 = sea.const 0 : i8 loc("aws-c-common/source/common.c":57:5)
  %v60 = sea.memset %v47[%v48], %v59, %v52 inplace align 16 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/source/common.c":57:5)
  sea.br ^bb14(%v60 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/common.c":81:1)
^bb14(%v61 : !sea.mem<!sea.ptr<64>, i8>):
  %v62 = sea.const 8 : i64 loc("_33"("aws-c-common/source/string.c":237:18))
  %v63 = sea.ptr.dereferenceable %v25, %v62 : !sea.ptr<64>, i64 loc("_33"("aws-c-common/source/string.c":237:18))
  sea.cond_br %v63, ^bb15, ^bb21
^bb15:
  %v64 = sea.load %v61[%v25] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_35"("aws-c-common/source/string.c":237:18))
  %v65 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/source/string.c":237:13))
  %v66 = sea.ptr.cmp eq, %v64, %v65 : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/source/string.c":237:13))
  sea.cond_br %v66, ^bb18(%v61 : !sea.mem<!sea.ptr<64>, i8>), ^bb16 loc("aws-c-common/source/string.c":237:13)
^bb16:
  %v67 = sea.const 8 : i64 loc("_37"("aws-c-common/source/string.c":238:34))
  %v68 = sea.ptr.dereferenceable %v25, %v67 : !sea.ptr<64>, i64 loc("_37"("aws-c-common/source/string.c":238:34))
  sea.cond_br %v68, ^bb17, ^bb21
^bb17:
  sea.br ^bb18(%v61 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/string.c":239:9)
^bb18(%v69 : !sea.mem<!sea.ptr<64>, i8>):
  sea.assume %v53 loc("seahorn/jobs/string_destroy_secure/aws_string_destroy_secure_harness.c":21:7)
  %v70 = sea.const 0 : i64 loc("_38"("seahorn/lib/utils.c":26:11))
  %v71 = sea.icmp ne, %v52, %v70 : i64 loc("_38"("seahorn/lib/utils.c":26:11))
  sea.assume %v71 loc("seahorn/lib/utils.c":26:15)
  %v72 = sea.nondet "nd_size_t" [8] : i64 loc("_39"("seahorn/lib/utils.c":27:16))
  %v73 = sea.icmp ult, %v72, %v52 : i64 loc("_40"("seahorn/lib/utils.c":28:14))
  sea.assume %v73 loc("seahorn/lib/utils.c":28:5)
  %v74 = sea.ptr.index %v48 [%v72] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_41"("seahorn/lib/utils.c":29:5))
  %v75 = sea.const 1 : i64 loc("_42"("seahorn/lib/utils.c":29:5))
  %v76 = sea.ptr.dereferenceable %v74, %v75 : !sea.ptr<64>, i64 loc("_42"("seahorn/lib/utils.c":29:5))
  sea.cond_br %v76, ^bb19, ^bb21
^bb19:
  %v77 = sea.load %v69[%v74] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_44"("seahorn/lib/utils.c":29:5))
  %v78 = sea.const 0 : i8 loc("_45"("seahorn/lib/utils.c":29:5))
  %v79 = sea.icmp eq, %v77, %v78 : i8 loc("_45"("seahorn/lib/utils.c":29:5))
  %v80 = sea.const 1 : i64 loc("_46"("seahorn/lib/utils.c":29:5))
  %v81 = sea.ptr.dereferenceable %v74, %v80 : !sea.ptr<64>, i64 loc("_46"("seahorn/lib/utils.c":29:5))
  sea.cond_br %v81, ^bb20, ^bb21
^bb20:
  %v82 = sea.const 1 : i1 loc("seahorn/lib/utils.c":29:5)
  %v83 = sea.xor %v79, %v82 : i1 loc("seahorn/lib/utils.c":29:5)
  sea.assume %v83 loc("seahorn/lib/utils.c":29:5)
  sea.br ^bb21 loc("seahorn/lib/utils.c":29:5)
^bb21:
  sea.br ^bb22
^bb22:
  %v84 = sea.const 0 : i1
  sea.assert %v84
  sea.halt
}
