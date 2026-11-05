// Exported from SeaHorn (byte_cursor_from_string.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
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
  sea.cond_br %v36, ^bb6, ^bb32
^bb6:
  %v37 = sea.store %v26[%v25], %v34 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/string_helper.c":15:49)
  %v38 = sea.ptr.index %v25 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_16"("seahorn/lib/string_helper.c":17:23))
  %v39 = sea.const 8 : i64 loc("_17"("seahorn/lib/string_helper.c":17:28))
  %v40 = sea.ptr.dereferenceable %v38, %v39 : !sea.ptr<64>, i64 loc("_17"("seahorn/lib/string_helper.c":17:28))
  sea.cond_br %v40, ^bb7, ^bb32
^bb7:
  %v41 = sea.store %v37[%v38], %v14 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/string_helper.c":17:28)
  %v42 = sea.ptr.index %v25 [%v14] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_19"("seahorn/lib/string_helper.c":18:18))
  %v43 = sea.const 1 : i64 loc("_20"("seahorn/lib/string_helper.c":18:34))
  %v44 = sea.ptr.dereferenceable %v42, %v43 : !sea.ptr<64>, i64 loc("_20"("seahorn/lib/string_helper.c":18:34))
  sea.cond_br %v44, ^bb8, ^bb32
^bb8:
  %v45 = sea.const 0 : i8 loc("seahorn/lib/string_helper.c":18:34)
  %v46 = sea.store %v41[%v42], %v45 inplace : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/string_helper.c":18:34)
  sea.br ^bb9(%v46 : !sea.mem<!sea.ptr<64>, i8>) loc("seahorn/lib/string_helper.c":19:3)
^bb9(%v47 : !sea.mem<!sea.ptr<64>, i8>):
  %v48 = sea.ptr.index %v25 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_22"("aws-c-common/source/string.c":423:67))
  %v49 = sea.const 8 : i64 loc("_23"("aws-c-common/source/string.c":423:67))
  %v50 = sea.ptr.dereferenceable %v48, %v49 : !sea.ptr<64>, i64 loc("_23"("aws-c-common/source/string.c":423:67))
  sea.cond_br %v50, ^bb10, ^bb32
^bb10:
  %v51 = sea.load %v47[%v48] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_25"("aws-c-common/source/string.c":423:67))
  %v52 = sea.const 8 : i64 loc("_26"("aws-c-common/include/aws/common/string.inl":35:19))
  %v53 = sea.ptr.dereferenceable %v48, %v52 : !sea.ptr<64>, i64 loc("_26"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v53, ^bb11, ^bb32
^bb11:
  %v54 = sea.const 8 : i64 loc("_28"("aws-c-common/include/aws/common/string.inl":35:88))
  %v55 = sea.ptr.dereferenceable %v48, %v54 : !sea.ptr<64>, i64 loc("_28"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v55, ^bb12, ^bb32
^bb12:
  %v56 = sea.load %v47[%v48] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_30"("aws-c-common/include/aws/common/string.inl":35:88))
  %v57 = sea.ptr.index %v25 [%v56] strides [1] offset 16 inbounds : !sea.ptr<64>, i64 loc("_31"("aws-c-common/include/aws/common/string.inl":35:72))
  %v58 = sea.const 1 : i64 loc("_32"("aws-c-common/include/aws/common/string.inl":35:72))
  %v59 = sea.ptr.dereferenceable %v57, %v58 : !sea.ptr<64>, i64 loc("_32"("aws-c-common/include/aws/common/string.inl":35:72))
  sea.cond_br %v59, ^bb13, ^bb32
^bb13:
  %v60 = sea.load %v47[%v57] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_34"("aws-c-common/include/aws/common/string.inl":35:72))
  %v61 = sea.const 0 : i8 loc("_35"("aws-c-common/include/aws/common/string.inl":35:93))
  %v62 = sea.icmp eq, %v60, %v61 : i8 loc("_35"("aws-c-common/include/aws/common/string.inl":35:93))
  %v63 = sea.const 8 : i64 loc("_36"("aws-c-common/include/aws/common/string.inl":35:19))
  %v64 = sea.ptr.dereferenceable %v48, %v63 : !sea.ptr<64>, i64 loc("_36"("aws-c-common/include/aws/common/string.inl":35:19))
  sea.cond_br %v64, ^bb14, ^bb32
^bb14:
  %v65 = sea.const 8 : i64 loc("_38"("aws-c-common/include/aws/common/string.inl":35:88))
  %v66 = sea.ptr.dereferenceable %v48, %v65 : !sea.ptr<64>, i64 loc("_38"("aws-c-common/include/aws/common/string.inl":35:88))
  sea.cond_br %v66, ^bb15, ^bb32
^bb15:
  %v67 = sea.const 1 : i64 loc("_40"("aws-c-common/include/aws/common/string.inl":35:72))
  %v68 = sea.ptr.dereferenceable %v57, %v67 : !sea.ptr<64>, i64 loc("_40"("aws-c-common/include/aws/common/string.inl":35:72))
  %v69 = sea.const 0 : i1 loc("_41")
  %v70 = sea.select %v68, %v62, %v69 : i1 loc("_41")
  sea.cond_br %v70, ^bb16, ^bb32
^bb16:
  sea.br ^bb17
^bb17:
  %v71 = sea.const 0 : i64 loc("_44"("aws-c-common/source/byte_buf.c":66:26))
  %v72 = sea.icmp eq, %v51, %v71 : i64 loc("_44"("aws-c-common/source/byte_buf.c":66:26))
  sea.cond_br %v72, ^bb22, ^bb18 loc("aws-c-common/source/byte_buf.c":66:32)
^bb18:
  sea.br ^bb19
^bb19:
  sea.br ^bb20
^bb20:
  sea.br ^bb21
^bb21:
  sea.br ^bb22
^bb22:
  sea.br ^bb23
^bb23:
  sea.cond_br %v72, ^bb28, ^bb24 loc("aws-c-common/source/byte_buf.c":66:32)
^bb24:
  sea.br ^bb25
^bb25:
  sea.br ^bb26
^bb26:
  sea.br ^bb27
^bb27:
  sea.br ^bb28
^bb28:
  %v73 = sea.const 8 : i64 loc("_54"("seahorn/jobs/byte_cursor_from_string/aws_byte_cursor_from_string_harness.c":16:5))
  %v74 = sea.ptr.dereferenceable %v48, %v73 : !sea.ptr<64>, i64 loc("_54"("seahorn/jobs/byte_cursor_from_string/aws_byte_cursor_from_string_harness.c":16:5))
  sea.cond_br %v74, ^bb29, ^bb32
^bb29:
  %v75 = sea.icmp eq, %v51, %v56 : i64 loc("_56"("seahorn/jobs/byte_cursor_from_string/aws_byte_cursor_from_string_harness.c":16:5))
  %v76 = sea.const 8 : i64 loc("_57"("seahorn/jobs/byte_cursor_from_string/aws_byte_cursor_from_string_harness.c":16:5))
  %v77 = sea.ptr.dereferenceable %v48, %v76 : !sea.ptr<64>, i64 loc("_57"("seahorn/jobs/byte_cursor_from_string/aws_byte_cursor_from_string_harness.c":16:5))
  %v78 = sea.const 0 : i1 loc("_58")
  %v79 = sea.select %v77, %v75, %v78 : i1 loc("_58")
  sea.cond_br %v79, ^bb30, ^bb32
^bb30:
  %v80 = sea.const 8 : i64 loc("_60"("seahorn/jobs/byte_cursor_from_string/aws_byte_cursor_from_string_harness.c":18:53))
  %v81 = sea.ptr.dereferenceable %v48, %v80 : !sea.ptr<64>, i64 loc("_60"("seahorn/jobs/byte_cursor_from_string/aws_byte_cursor_from_string_harness.c":18:53))
  sea.cond_br %v81, ^bb31, ^bb32
^bb31:
  %v82 = sea.const 0 : i64 loc("_61"("seahorn/lib/utils.c":15:3))
  %v83 = sea.icmp ne, %v51, %v82 : i64 loc("_61"("seahorn/lib/utils.c":15:3))
  sea.assume %v83 loc("seahorn/lib/utils.c":16:15)
  %v84 = sea.nondet "nd_size_t" [7] : i64 loc("_62"("seahorn/lib/utils.c":17:16))
  %v85 = sea.icmp ult, %v84, %v51 : i64 loc("_63"("seahorn/lib/utils.c":19:14))
  %v86 = sea.const 36028797018963967 : i64 loc("_64"("seahorn/lib/utils.c":19:20))
  %v87 = sea.icmp ult, %v51, %v86 : i64 loc("_64"("seahorn/lib/utils.c":19:20))
  %v88 = sea.and %v87, %v85 : i1 loc("_65"("seahorn/lib/utils.c":19:20))
  sea.assume %v88 loc("seahorn/lib/utils.c":19:5)
  %v89 = sea.const 1 : i1 loc("seahorn/lib/utils.c":20:5)
  %v90 = sea.const 1 : i1 loc("seahorn/lib/utils.c":20:5)
  %v91 = sea.xor %v89, %v90 : i1 loc("seahorn/lib/utils.c":20:5)
  sea.assume %v91 loc("seahorn/lib/utils.c":20:5)
  sea.br ^bb32 loc("seahorn/lib/utils.c":20:5)
^bb32:
  sea.br ^bb33
^bb33:
  %v92 = sea.const 0 : i1
  sea.assert %v92
  sea.halt
}
