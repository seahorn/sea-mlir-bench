// Exported from SeaHorn (string_bytes.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm8")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm9")
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
  sea.cond_br %v30, ^bb12, ^bb3 loc("seahorn/lib/string_helper.c":13:7)
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
  sea.cond_br %v36, ^bb6, ^bb19
^bb6:
  %v37 = sea.store %v26[%v25], %v34 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/string_helper.c":15:49)
  %v38 = sea.ptr.index %v25 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_16"("seahorn/lib/string_helper.c":17:23))
  %v39 = sea.const 8 : i64 loc("_17"("seahorn/lib/string_helper.c":17:28))
  %v40 = sea.ptr.dereferenceable %v38, %v39 : !sea.ptr<64>, i64 loc("_17"("seahorn/lib/string_helper.c":17:28))
  sea.cond_br %v40, ^bb7, ^bb19
^bb7:
  %v41 = sea.store %v37[%v38], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/string_helper.c":17:28)
  %v42 = sea.ptr.index %v25 [%v14] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_19"("seahorn/lib/string_helper.c":18:18))
  %v43 = sea.const 1 : i64 loc("_20"("seahorn/lib/string_helper.c":18:34))
  %v44 = sea.ptr.dereferenceable %v42, %v43 : !sea.ptr<64>, i64 loc("_20"("seahorn/lib/string_helper.c":18:34))
  sea.cond_br %v44, ^bb8, ^bb19
^bb8:
  %v45 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":18:34)
  %v46 = sea.store %v41[%v42], %v45 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":18:34)
  %v47 = sea.const 8 : i64 loc("_22"("aws-c-common/include/aws/common/string.inl":35:19))
  %v48 = sea.ptr.dereferenceable %v38, %v47 : !sea.ptr<64>, i64 loc("_22"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v48, ^bb9, ^bb19
^bb9:
  %v49 = sea.const 8 : i64 loc("_24"("aws-c-common/include/aws/common/string.inl":35:88))
  %v50 = sea.ptr.dereferenceable %v38, %v49 : !sea.ptr<64>, i64 loc("_24"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v50, ^bb10, ^bb19
^bb10:
  %v51 = sea.load %v46[%v38] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_26"("aws-c-common/include/aws/common/string.inl":35:88))
  %v52 = sea.ptr.index %v25 [%v51] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_27"("aws-c-common/include/aws/common/string.inl":35:72))
  %v53 = sea.const 1 : i64 loc("_28"("aws-c-common/include/aws/common/string.inl":35:72))
  %v54 = sea.ptr.dereferenceable %v52, %v53 : !sea.ptr<64>, i64 loc("_28"("aws-c-common/include/aws/common/string.inl":35:72))
  sea.cond_br %v54, ^bb11, ^bb19
^bb11:
  %v55 = sea.load %v46[%v52] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_30"("aws-c-common/include/aws/common/string.inl":35:72))
  %v56 = sea.const 0 : i8 loc("_31"("aws-c-common/include/aws/common/string.inl":35:93))
  %v57 = sea.icmp eq, %v55, %v56 : i8 loc("_31"("aws-c-common/include/aws/common/string.inl":35:93))
  sea.br ^bb13(%v46, %v57 : !sea.mem<!sea.ptr<64>, i8>, i1)
^bb12:
  %v58 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/string.inl":35:16)
  sea.br ^bb13(%v26, %v58 : !sea.mem<!sea.ptr<64>, i8>, i1) loc("aws-c-common/include/aws/common/string.inl":35:16)
^bb13(%v59 : !sea.mem<!sea.ptr<64>, i8>, %v60 : i1):
  %v61 = sea.const 0 : i1 loc("aws-c-common/include/aws/common/string.inl":35:16)
  sea.cond_br %v30, ^bb18(%v61 : i1), ^bb14 loc("aws-c-common/include/aws/common/string.inl":35:16)
^bb14:
  %v62 = sea.ptr.index %v25 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_34"("aws-c-common/include/aws/common/string.inl":35:19))
  %v63 = sea.const 8 : i64 loc("_35"("aws-c-common/include/aws/common/string.inl":35:19))
  %v64 = sea.ptr.dereferenceable %v62, %v63 : !sea.ptr<64>, i64 loc("_35"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v64, ^bb15, ^bb19
^bb15:
  %v65 = sea.const 8 : i64 loc("_37"("aws-c-common/include/aws/common/string.inl":35:88))
  %v66 = sea.ptr.dereferenceable %v62, %v65 : !sea.ptr<64>, i64 loc("_37"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v66, ^bb16, ^bb19
^bb16:
  %v67 = sea.load %v59[%v62] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_39"("aws-c-common/include/aws/common/string.inl":35:88))
  %v68 = sea.ptr.index %v25 [%v67] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_40"("aws-c-common/include/aws/common/string.inl":35:72))
  %v69 = sea.const 1 : i64 loc("_41"("aws-c-common/include/aws/common/string.inl":35:72))
  %v70 = sea.ptr.dereferenceable %v68, %v69 : !sea.ptr<64>, i64 loc("_41"("aws-c-common/include/aws/common/string.inl":35:72))
  sea.cond_br %v70, ^bb17, ^bb19
^bb17:
  %v71 = sea.load %v59[%v68] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_43"("aws-c-common/include/aws/common/string.inl":35:72))
  %v72 = sea.const 0 : i8 loc("_44"("aws-c-common/include/aws/common/string.inl":35:93))
  %v73 = sea.icmp eq, %v71, %v72 : i8 loc("_44"("aws-c-common/include/aws/common/string.inl":35:93))
  sea.br ^bb18(%v73 : i1)
^bb18(%v74 : i1):
  %v75 = sea.const 1 : i1 loc("seahorn/jobs/string_bytes/aws_string_bytes_harness.c":16:5)
  %v76 = sea.xor %v74, %v75 : i1 loc("seahorn/jobs/string_bytes/aws_string_bytes_harness.c":16:5)
  sea.assume %v76 loc("seahorn/jobs/string_bytes/aws_string_bytes_harness.c":16:5)
  sea.br ^bb19 loc("seahorn/jobs/string_bytes/aws_string_bytes_harness.c":16:5)
^bb19:
  sea.br ^bb20
^bb20:
  %v77 = sea.const 0 : i1
  sea.assert %v77
  sea.halt
}
