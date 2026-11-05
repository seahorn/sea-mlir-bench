// Exported from SeaHorn (string_destroy.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
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
  %v14 = sea.nondet "nd_bool" [2] : i1 loc("_2"("seahorn/jobs/string_destroy/aws_string_destroy_harness.c":14:7))
  %v15 = sea.ptr.null : !sea.ptr<64> loc("seahorn/jobs/string_destroy/aws_string_destroy_harness.c":14:7)
  sea.cond_br %v14, ^bb1, ^bb10(%v1, %v15 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/jobs/string_destroy/aws_string_destroy_harness.c":14:7)
^bb1:
  %v16 = sea.nondet "nd_size_t" [3] : i64 loc("_4"("seahorn/lib/string_helper.c":24:16))
  %v17 = sea.const 18446744073709551590 : i64 loc("_5"("seahorn/lib/string_helper.c":25:14))
  %v18 = sea.icmp ult, %v16, %v17 : i64 loc("_5"("seahorn/lib/string_helper.c":25:14))
  sea.assume %v18 loc("seahorn/lib/string_helper.c":25:3)
  %v19 = sea.const 25 : i64 loc("_6"("seahorn/lib/string_helper.c":11:61))
  %v20 = sea.add %v16, %v19 : i64 loc("_6"("seahorn/lib/string_helper.c":11:61))
  %v21 = sea.nondet "nd_malloc_is_fail" [4] : i1 loc("_7"("seahorn/lib/sea_allocators.c":11:10))
  %v22 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v21, ^bb3(%v1, %v22 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb2 loc("seahorn/lib/sea_allocators.c":11:10)
^bb2:
  %v23 = sea.const 1 : i64 loc("malloc.i")
  %v24 = sea.mul %v20, %v23 : i64 loc("malloc.i")
  %v25 = sea.alloca %v24 align 16 [5] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb3(%v1, %v25 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb3(%v26 : !sea.mem<!sea.ptr<64>, i8>, %v27 : !sea.ptr<64>):
  %v28 = sea.memhavoc %v26[%v27], %v20 [6] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  %v29 = sea.ptr.null : !sea.ptr<64> loc("_10"("seahorn/lib/sea_allocators.c":45:10))
  %v30 = sea.ptr.cmp ne, %v27, %v29 : !sea.ptr<64> loc("_10"("seahorn/lib/sea_allocators.c":45:10))
  sea.assume %v30 loc("seahorn/lib/sea_allocators.c":45:3)
  %v31 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i.i.i"("seahorn/lib/string_helper.c":13:7))
  %v32 = sea.ptr.cmp eq, %v27, %v31 : !sea.ptr<64> loc(".not.i.i.i.i"("seahorn/lib/string_helper.c":13:7))
  %v33 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":13:7)
  sea.cond_br %v32, ^bb10(%v28, %v33 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/string_helper.c":13:7)
^bb4:
  %v34 = sea.nondet "nd_bool" [7] : i1 loc("_12"("seahorn/lib/string_helper.c":16:9))
  %v35 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.cond_br %v34, ^bb5, ^bb6(%v35 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb5:
  %v36 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/string_helper.c":16:9)
  sea.br ^bb6(%v36 : !sea.ptr<64>) loc("seahorn/lib/string_helper.c":16:9)
^bb6(%v37 : !sea.ptr<64>):
  %v38 = sea.const 8 : i64 loc("_16"("seahorn/lib/string_helper.c":15:49))
  %v39 = sea.ptr.dereferenceable %v27, %v38 : !sea.ptr<64>, i64 loc("_16"("seahorn/lib/string_helper.c":15:49))
  sea.cond_br %v39, ^bb7, ^bb12
^bb7:
  %v40 = sea.store %v28[%v27], %v37 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/string_helper.c":15:49)
  %v41 = sea.ptr.index %v27 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_18"("seahorn/lib/string_helper.c":17:23))
  %v42 = sea.const 8 : i64 loc("_19"("seahorn/lib/string_helper.c":17:28))
  %v43 = sea.ptr.dereferenceable %v41, %v42 : !sea.ptr<64>, i64 loc("_19"("seahorn/lib/string_helper.c":17:28))
  sea.cond_br %v43, ^bb8, ^bb12
^bb8:
  %v44 = sea.store %v40[%v41], %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/string_helper.c":17:28)
  %v45 = sea.ptr.index %v27 [%v16] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_21"("seahorn/lib/string_helper.c":18:18))
  %v46 = sea.const 1 : i64 loc("_22"("seahorn/lib/string_helper.c":18:34))
  %v47 = sea.ptr.dereferenceable %v45, %v46 : !sea.ptr<64>, i64 loc("_22"("seahorn/lib/string_helper.c":18:34))
  sea.cond_br %v47, ^bb9, ^bb12
^bb9:
  %v48 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":18:34)
  %v49 = sea.store %v44[%v45], %v48 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":18:34)
  sea.br ^bb10(%v49, %v27 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/string_helper.c":19:3)
^bb10(%v50 : !sea.mem<!sea.ptr<64>, i8>, %v51 : !sea.ptr<64>):
  %v52 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("aws-c-common/source/string.c":228:9))
  %v53 = sea.ptr.cmp eq, %v51, %v52 : !sea.ptr<64> loc(".not.i.i"("aws-c-common/source/string.c":228:9))
  %v54 = sea.const 1 : i1 loc("aws-c-common/source/string.c":228:13)
  %v55 = sea.xor %v53, %v54 : i1 loc("aws-c-common/source/string.c":228:13)
  sea.assume %v55 loc("aws-c-common/source/string.c":228:13)
  %v56 = sea.const 8 : i64 loc("_25"("aws-c-common/source/string.c":228:21))
  %v57 = sea.ptr.dereferenceable %v51, %v56 : !sea.ptr<64>, i64 loc("_25"("aws-c-common/source/string.c":228:21))
  sea.cond_br %v57, ^bb11, ^bb12
^bb11:
  %v58 = sea.load %v50[%v51] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_27"("aws-c-common/source/string.c":228:21))
  %v59 = sea.ptr.null : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/source/string.c":228:16))
  %v60 = sea.ptr.cmp eq, %v58, %v59 : !sea.ptr<64> loc(".not1.i.i"("aws-c-common/source/string.c":228:16))
  %v61 = sea.const 1 : i1 loc("aws-c-common/source/string.c":228:9)
  %v62 = sea.xor %v60, %v61 : i1 loc("aws-c-common/source/string.c":228:9)
  sea.assume %v62 loc("aws-c-common/source/string.c":228:9)
  %v63 = sea.const 8 : i64 loc("_28"("aws-c-common/source/string.c":229:30))
  %v64 = sea.ptr.dereferenceable %v51, %v63 : !sea.ptr<64>, i64 loc("_28"("aws-c-common/source/string.c":229:30))
  %v65 = sea.const 1 : i1
  %v66 = sea.xor %v64, %v65 : i1
  sea.assume %v66
  sea.br ^bb12
^bb12:
  sea.br ^bb13
^bb13:
  %v67 = sea.const 0 : i1
  sea.assert %v67
  sea.halt
}
