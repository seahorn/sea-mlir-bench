// Exported from SeaHorn (array_eq_ignore_case2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.1" [0] : !sea.mem<!sea.ptr<64>, i8>
  %v1 = sea.mem.nondet "region.0" [1] : !sea.mem<!sea.ptr<64>, i8>
  %v2 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v3 = sea.mem.fill %v1[%v2], dense<[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255]> : tensor<256xi8> inplace : !sea.mem<!sea.ptr<64>, i8>
  %v4 = sea.nondet "nd_size_t" [2] : i64 loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":14:22)
  %v5 = sea.const 11 : i64 loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":15:20)
  %v6 = sea.icmp ult, %v4, %v5 : i64 loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":15:20)
  sea.assume %v6 loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":15:5)
  %v7 = sea.const 0 : i64 loc(callsite("seahorn/lib/proof_allocators.c":17:15 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":16:17))
  %v8 = sea.icmp eq, %v4, %v7 : i64 loc(callsite("seahorn/lib/proof_allocators.c":17:15 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":16:17))
  %v9 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/proof_allocators.c":17:10 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":16:17))
  sea.cond_br %v8, ^bb4(%v0, %v9 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb1 loc(callsite("seahorn/lib/proof_allocators.c":17:10 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":16:17))
^bb1:
  %v10 = sea.nondet "nd_malloc_is_fail" [3] : i1 loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":16:17)))))
  %v11 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":16:17)))))
  sea.cond_br %v10, ^bb3(%v0, %v11 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb2 loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":16:17)))))
^bb2:
  %v12 = sea.const 1 : i64 loc("malloc.i")
  %v13 = sea.mul %v4, %v12 : i64 loc("malloc.i")
  %v14 = sea.alloca %v13 align 16 [4] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb3(%v0, %v14 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":16:17)))))
^bb3(%v15 : !sea.mem<!sea.ptr<64>, i8>, %v16 : !sea.ptr<64>):
  %v17 = sea.memhavoc %v15[%v16], %v4 [5] inplace : !sea.mem<!sea.ptr<64>, i8> loc(callsite("seahorn/lib/sea_allocators.c":33:3 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":16:17))))
  %v18 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/sea_allocators.c":45:10 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":16:17)))
  %v19 = sea.ptr.cmp ne, %v16, %v18 : !sea.ptr<64> loc(callsite("seahorn/lib/sea_allocators.c":45:10 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":16:17)))
  sea.assume %v19 loc(callsite("seahorn/lib/sea_allocators.c":45:3 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":16:17)))
  sea.br ^bb4(%v17, %v16 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc(callsite("seahorn/lib/proof_allocators.c":17:10 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":16:17))
^bb4(%v20 : !sea.mem<!sea.ptr<64>, i8>, %v21 : !sea.ptr<64>):
  %v22 = sea.nondet "nd_size_t" [6] : i64 loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":19:22)
  %v23 = sea.nondet "nd_bool" [7] : i1 loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":20:9)
  sea.cond_br %v23, ^bb9(%v20, %v21, %v4 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64), ^bb5 loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":20:9)
^bb5:
  %v24 = sea.const 11 : i64 loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":24:24)
  %v25 = sea.icmp ult, %v22, %v24 : i64 loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":24:24)
  sea.assume %v25 loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":24:9)
  %v26 = sea.const 0 : i64 loc(callsite("seahorn/lib/proof_allocators.c":17:15 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":25:15))
  %v27 = sea.icmp eq, %v22, %v26 : i64 loc(callsite("seahorn/lib/proof_allocators.c":17:15 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":25:15))
  %v28 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/proof_allocators.c":17:10 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":25:15))
  %v29 = sea.const 0 : i64 loc(callsite("seahorn/lib/proof_allocators.c":17:10 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":25:15))
  sea.cond_br %v27, ^bb9(%v20, %v28, %v29 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64), ^bb6 loc(callsite("seahorn/lib/proof_allocators.c":17:10 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":25:15))
^bb6:
  %v30 = sea.nondet "nd_malloc_is_fail" [8] : i1 loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":25:15)))))
  %v31 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":25:15)))))
  sea.cond_br %v30, ^bb8(%v20, %v31 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb7 loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":25:15)))))
^bb7:
  %v32 = sea.const 1 : i64 loc("malloc4.i")
  %v33 = sea.mul %v22, %v32 : i64 loc("malloc4.i")
  %v34 = sea.alloca %v33 align 16 [9] : i64 -> !sea.ptr<64> loc("malloc4.i")
  sea.br ^bb8(%v20, %v34 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":25:15)))))
^bb8(%v35 : !sea.mem<!sea.ptr<64>, i8>, %v36 : !sea.ptr<64>):
  %v37 = sea.memhavoc %v35[%v36], %v22 [10] inplace : !sea.mem<!sea.ptr<64>, i8> loc(callsite("seahorn/lib/sea_allocators.c":33:3 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":25:15))))
  %v38 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/sea_allocators.c":45:10 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":25:15)))
  %v39 = sea.ptr.cmp ne, %v36, %v38 : !sea.ptr<64> loc(callsite("seahorn/lib/sea_allocators.c":45:10 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":25:15)))
  sea.assume %v39 loc(callsite("seahorn/lib/sea_allocators.c":45:3 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":25:15)))
  sea.br ^bb9(%v37, %v36, %v22 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64) loc(callsite("seahorn/lib/proof_allocators.c":17:10 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":25:15))
^bb9(%v40 : !sea.mem<!sea.ptr<64>, i8>, %v41 : !sea.ptr<64>, %v42 : i64):
  %v43 = sea.ptr.null : !sea.ptr<64>
  %v44 = sea.ptr.cmp ne, %v21, %v43 : !sea.ptr<64>
  %v45 = sea.or %v8, %v44 : i1 loc("spec.select.i"("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":29:27))
  sea.assume %v45 loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":29:5)
  %v46 = sea.const 0 : i64 loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":30:21)
  %v47 = sea.icmp eq, %v42, %v46 : i64 loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":30:21)
  %v48 = sea.ptr.null : !sea.ptr<64> loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":30:27)
  %v49 = sea.ptr.cmp ne, %v41, %v48 : !sea.ptr<64> loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":30:27)
  %v50 = sea.or %v49, %v47 : i1 loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":30:27)
  sea.assume %v50 loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":30:5)
  sea.tracking_on loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":33:5)
  %v51 = sea.icmp eq, %v4, %v42 : i64 loc(".not.i.i"(callsite("aws-c-common/source/byte_buf.c":404:15 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9)))
  sea.cond_br %v51, ^bb10, ^bb53 loc(callsite("aws-c-common/source/byte_buf.c":404:9 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
^bb10:
  sea.cond_br %v8, ^bb52, ^bb11 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
^bb11:
  %v52 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v53 = sea.ptr.dereferenceable %v21, %v52 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  sea.cond_br %v53, ^bb12, ^bb55
^bb12:
  %v54 = sea.load %v40[%v21] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v55 = sea.zext %v54 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v56 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v57 = sea.ptr.index %v56 [%v55] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v58 = sea.load %v3[%v57] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v59 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v60 = sea.ptr.dereferenceable %v41, %v59 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  sea.cond_br %v60, ^bb13, ^bb55
^bb13:
  %v61 = sea.load %v40[%v41] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v62 = sea.zext %v61 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v63 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v64 = sea.ptr.index %v63 [%v62] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v65 = sea.load %v3[%v64] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v66 = sea.icmp eq, %v58, %v65 : i8 loc(".not3.i.i"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9)))
  sea.cond_br %v66, ^bb14, ^bb53 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
^bb14:
  %v67 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v68 = sea.icmp eq, %v4, %v67 : i64 loc("exitcond.not"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9)))
  sea.cond_br %v68, ^bb52, ^bb15 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
^bb15:
  %v69 = sea.ptr.index %v21 [] strides [] offset 1 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v70 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v71 = sea.ptr.dereferenceable %v69, %v70 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  sea.cond_br %v71, ^bb16, ^bb55
^bb16:
  %v72 = sea.load %v40[%v69] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v73 = sea.zext %v72 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v74 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v75 = sea.ptr.index %v74 [%v73] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v76 = sea.load %v3[%v75] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v77 = sea.ptr.index %v41 [] strides [] offset 1 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v78 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v79 = sea.ptr.dereferenceable %v77, %v78 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  sea.cond_br %v79, ^bb17, ^bb55
^bb17:
  %v80 = sea.load %v40[%v77] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v81 = sea.zext %v80 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v82 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v83 = sea.ptr.index %v82 [%v81] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v84 = sea.load %v3[%v83] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v85 = sea.icmp eq, %v76, %v84 : i8 loc(".not3.i.i.1"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9)))
  sea.cond_br %v85, ^bb18, ^bb53 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
^bb18:
  %v86 = sea.const 2 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v87 = sea.icmp eq, %v4, %v86 : i64 loc("exitcond.not.1"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9)))
  sea.cond_br %v87, ^bb52, ^bb19 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
^bb19:
  %v88 = sea.ptr.index %v21 [] strides [] offset 2 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v89 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v90 = sea.ptr.dereferenceable %v88, %v89 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  sea.cond_br %v90, ^bb20, ^bb55
^bb20:
  %v91 = sea.load %v40[%v88] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v92 = sea.zext %v91 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v93 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v94 = sea.ptr.index %v93 [%v92] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v95 = sea.load %v3[%v94] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v96 = sea.ptr.index %v41 [] strides [] offset 2 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v97 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v98 = sea.ptr.dereferenceable %v96, %v97 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  sea.cond_br %v98, ^bb21, ^bb55
^bb21:
  %v99 = sea.load %v40[%v96] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v100 = sea.zext %v99 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v101 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v102 = sea.ptr.index %v101 [%v100] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v103 = sea.load %v3[%v102] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v104 = sea.icmp eq, %v95, %v103 : i8 loc(".not3.i.i.2"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9)))
  sea.cond_br %v104, ^bb22, ^bb53 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
^bb22:
  %v105 = sea.const 3 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v106 = sea.icmp eq, %v4, %v105 : i64 loc("exitcond.not.2"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9)))
  sea.cond_br %v106, ^bb52, ^bb23 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
^bb23:
  %v107 = sea.ptr.index %v21 [] strides [] offset 3 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v108 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v109 = sea.ptr.dereferenceable %v107, %v108 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  sea.cond_br %v109, ^bb24, ^bb55
^bb24:
  %v110 = sea.load %v40[%v107] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v111 = sea.zext %v110 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v112 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v113 = sea.ptr.index %v112 [%v111] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v114 = sea.load %v3[%v113] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v115 = sea.ptr.index %v41 [] strides [] offset 3 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v116 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v117 = sea.ptr.dereferenceable %v115, %v116 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  sea.cond_br %v117, ^bb25, ^bb55
^bb25:
  %v118 = sea.load %v40[%v115] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v119 = sea.zext %v118 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v120 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v121 = sea.ptr.index %v120 [%v119] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v122 = sea.load %v3[%v121] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v123 = sea.icmp eq, %v114, %v122 : i8 loc(".not3.i.i.3"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9)))
  sea.cond_br %v123, ^bb26, ^bb53 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
^bb26:
  %v124 = sea.const 4 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v125 = sea.icmp eq, %v4, %v124 : i64 loc("exitcond.not.3"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9)))
  sea.cond_br %v125, ^bb52, ^bb27 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
^bb27:
  %v126 = sea.ptr.index %v21 [] strides [] offset 4 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v127 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v128 = sea.ptr.dereferenceable %v126, %v127 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  sea.cond_br %v128, ^bb28, ^bb55
^bb28:
  %v129 = sea.load %v40[%v126] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v130 = sea.zext %v129 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v131 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v132 = sea.ptr.index %v131 [%v130] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v133 = sea.load %v3[%v132] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v134 = sea.ptr.index %v41 [] strides [] offset 4 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v135 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v136 = sea.ptr.dereferenceable %v134, %v135 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  sea.cond_br %v136, ^bb29, ^bb55
^bb29:
  %v137 = sea.load %v40[%v134] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v138 = sea.zext %v137 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v139 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v140 = sea.ptr.index %v139 [%v138] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v141 = sea.load %v3[%v140] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v142 = sea.icmp eq, %v133, %v141 : i8 loc(".not3.i.i.4"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9)))
  sea.cond_br %v142, ^bb30, ^bb53 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
^bb30:
  %v143 = sea.const 5 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v144 = sea.icmp eq, %v4, %v143 : i64 loc("exitcond.not.4"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9)))
  sea.cond_br %v144, ^bb52, ^bb31 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
^bb31:
  %v145 = sea.ptr.index %v21 [] strides [] offset 5 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v146 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v147 = sea.ptr.dereferenceable %v145, %v146 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  sea.cond_br %v147, ^bb32, ^bb55
^bb32:
  %v148 = sea.load %v40[%v145] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v149 = sea.zext %v148 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v150 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v151 = sea.ptr.index %v150 [%v149] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v152 = sea.load %v3[%v151] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v153 = sea.ptr.index %v41 [] strides [] offset 5 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v154 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v155 = sea.ptr.dereferenceable %v153, %v154 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  sea.cond_br %v155, ^bb33, ^bb55
^bb33:
  %v156 = sea.load %v40[%v153] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v157 = sea.zext %v156 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v158 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v159 = sea.ptr.index %v158 [%v157] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v160 = sea.load %v3[%v159] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v161 = sea.icmp eq, %v152, %v160 : i8 loc(".not3.i.i.5"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9)))
  sea.cond_br %v161, ^bb34, ^bb53 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
^bb34:
  %v162 = sea.const 6 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v163 = sea.icmp eq, %v4, %v162 : i64 loc("exitcond.not.5"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9)))
  sea.cond_br %v163, ^bb52, ^bb35 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
^bb35:
  %v164 = sea.ptr.index %v21 [] strides [] offset 6 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v165 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v166 = sea.ptr.dereferenceable %v164, %v165 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  sea.cond_br %v166, ^bb36, ^bb55
^bb36:
  %v167 = sea.load %v40[%v164] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v168 = sea.zext %v167 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v169 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v170 = sea.ptr.index %v169 [%v168] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v171 = sea.load %v3[%v170] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v172 = sea.ptr.index %v41 [] strides [] offset 6 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v173 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v174 = sea.ptr.dereferenceable %v172, %v173 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  sea.cond_br %v174, ^bb37, ^bb55
^bb37:
  %v175 = sea.load %v40[%v172] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v176 = sea.zext %v175 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v177 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v178 = sea.ptr.index %v177 [%v176] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v179 = sea.load %v3[%v178] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v180 = sea.icmp eq, %v171, %v179 : i8 loc(".not3.i.i.6"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9)))
  sea.cond_br %v180, ^bb38, ^bb53 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
^bb38:
  %v181 = sea.const 7 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v182 = sea.icmp eq, %v4, %v181 : i64 loc("exitcond.not.6"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9)))
  sea.cond_br %v182, ^bb52, ^bb39 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
^bb39:
  %v183 = sea.ptr.index %v21 [] strides [] offset 7 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v184 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v185 = sea.ptr.dereferenceable %v183, %v184 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  sea.cond_br %v185, ^bb40, ^bb55
^bb40:
  %v186 = sea.load %v40[%v183] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v187 = sea.zext %v186 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v188 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v189 = sea.ptr.index %v188 [%v187] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v190 = sea.load %v3[%v189] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v191 = sea.ptr.index %v41 [] strides [] offset 7 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v192 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v193 = sea.ptr.dereferenceable %v191, %v192 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  sea.cond_br %v193, ^bb41, ^bb55
^bb41:
  %v194 = sea.load %v40[%v191] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v195 = sea.zext %v194 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v196 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v197 = sea.ptr.index %v196 [%v195] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v198 = sea.load %v3[%v197] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v199 = sea.icmp eq, %v190, %v198 : i8 loc(".not3.i.i.7"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9)))
  sea.cond_br %v199, ^bb42, ^bb53 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
^bb42:
  %v200 = sea.const 8 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v201 = sea.icmp eq, %v4, %v200 : i64 loc("exitcond.not.7"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9)))
  sea.cond_br %v201, ^bb52, ^bb43 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
^bb43:
  %v202 = sea.ptr.index %v21 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v203 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v204 = sea.ptr.dereferenceable %v202, %v203 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  sea.cond_br %v204, ^bb44, ^bb55
^bb44:
  %v205 = sea.load %v40[%v202] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v206 = sea.zext %v205 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v207 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v208 = sea.ptr.index %v207 [%v206] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v209 = sea.load %v3[%v208] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v210 = sea.ptr.index %v41 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v211 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v212 = sea.ptr.dereferenceable %v210, %v211 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  sea.cond_br %v212, ^bb45, ^bb55
^bb45:
  %v213 = sea.load %v40[%v210] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v214 = sea.zext %v213 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v215 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v216 = sea.ptr.index %v215 [%v214] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v217 = sea.load %v3[%v216] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v218 = sea.icmp eq, %v209, %v217 : i8 loc(".not3.i.i.8"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9)))
  sea.cond_br %v218, ^bb46, ^bb53 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
^bb46:
  %v219 = sea.const 9 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v220 = sea.icmp eq, %v4, %v219 : i64 loc("exitcond.not.8"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9)))
  sea.cond_br %v220, ^bb52, ^bb47 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
^bb47:
  %v221 = sea.ptr.index %v21 [] strides [] offset 9 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v222 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v223 = sea.ptr.dereferenceable %v221, %v222 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  sea.cond_br %v223, ^bb48, ^bb55
^bb48:
  %v224 = sea.load %v40[%v221] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v225 = sea.zext %v224 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v226 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v227 = sea.ptr.index %v226 [%v225] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v228 = sea.load %v3[%v227] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v229 = sea.ptr.index %v41 [] strides [] offset 9 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v230 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v231 = sea.ptr.dereferenceable %v229, %v230 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  sea.cond_br %v231, ^bb49, ^bb55
^bb49:
  %v232 = sea.load %v40[%v229] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v233 = sea.zext %v232 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v234 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v235 = sea.ptr.index %v234 [%v233] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v236 = sea.load %v3[%v235] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v237 = sea.icmp eq, %v228, %v236 : i8 loc(".not3.i.i.9"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9)))
  sea.cond_br %v237, ^bb50, ^bb53 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
^bb50:
  %v238 = sea.const 10 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v239 = sea.icmp eq, %v4, %v238 : i64 loc("exitcond.not.9"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9)))
  sea.cond_br %v239, ^bb52, ^bb51 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
^bb51:
  %v240 = sea.ptr.index %v21 [] strides [] offset 10 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v241 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v242 = sea.ptr.dereferenceable %v240, %v241 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":36:9))
  %v243 = sea.const 1 : i1
  %v244 = sea.xor %v242, %v243 : i1
  sea.assume %v244
  sea.br ^bb55
^bb52:
  sea.br ^bb53
^bb53:
  %v245 = sea.mem.is_modified %v40[%v21] : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":41:5)
  %v246 = sea.const 1 : i1 loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":41:5)
  %v247 = sea.xor %v245, %v246 : i1 loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":41:5)
  %v248 = sea.mem.is_modified %v40[%v21] : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":41:5)
  sea.cond_br %v248, ^bb55, ^bb54 loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":41:5)
^bb54:
  %v249 = sea.mem.is_modified %v40[%v41] : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":42:5)
  %v250 = sea.const 1 : i1 loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":42:5)
  %v251 = sea.xor %v249, %v250 : i1 loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":42:5)
  %v252 = sea.mem.is_modified %v40[%v41] : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":42:5)
  sea.assume %v252 loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":42:5)
  sea.br ^bb55 loc("seahorn/jobs2/array_eq_ignore_case2/aws_array_eq_ignore_case_harness2.c":42:5)
^bb55:
  sea.br ^bb56
^bb56:
  %v253 = sea.const 0 : i1
  sea.assert %v253
  sea.halt
}
