// Exported from SeaHorn (array_eq_ignore_case.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.1" [0] : !sea.mem<!sea.ptr<64>, i8>
  %v1 = sea.mem.nondet "region.10" [1] : !sea.mem<!sea.ptr<64>, i8>
  %v2 = sea.mem.nondet "region.0" [2] : !sea.mem<!sea.ptr<64>, i8>
  %v3 = sea.mem.nondet "region.19" [3] : !sea.mem<!sea.ptr<64>, i8>
  %v4 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v5 = sea.mem.fill %v2[%v4], dense<[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255]> : tensor<256xi8> inplace : !sea.mem<!sea.ptr<64>, i8>
  %v6 = sea.const 16 : i64
  %v7 = sea.alloca %v6 align 8 [4] : i64 -> !sea.ptr<64>
  %v8 = sea.const 16 : i64
  %v9 = sea.alloca %v8 align 8 [5] : i64 -> !sea.ptr<64>
  %v10 = sea.nondet "nd_size_t" [6] : i64 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":14:22)
  %v11 = sea.const 11 : i64 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":15:20)
  %v12 = sea.icmp ult, %v10, %v11 : i64 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":15:20)
  sea.assume %v12 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":15:5)
  %v13 = sea.const 0 : i64 loc(callsite("seahorn/lib/proof_allocators.c":17:15 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17))
  %v14 = sea.icmp eq, %v10, %v13 : i64 loc(callsite("seahorn/lib/proof_allocators.c":17:15 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17))
  %v15 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/proof_allocators.c":17:10 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17))
  sea.cond_br %v14, ^bb4(%v3, %v15 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb1 loc(callsite("seahorn/lib/proof_allocators.c":17:10 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17))
^bb1:
  %v16 = sea.nondet "nd_malloc_is_fail" [7] : i1 loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17)))))
  %v17 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17)))))
  sea.cond_br %v16, ^bb3(%v3, %v17 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb2 loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17)))))
^bb2:
  %v18 = sea.const 1 : i64 loc("malloc.i")
  %v19 = sea.mul %v10, %v18 : i64 loc("malloc.i")
  %v20 = sea.alloca %v19 align 16 [8] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb3(%v3, %v20 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17)))))
^bb3(%v21 : !sea.mem<!sea.ptr<64>, i8>, %v22 : !sea.ptr<64>):
  %v23 = sea.memhavoc %v21[%v22], %v10 [9] inplace : !sea.mem<!sea.ptr<64>, i8> loc(callsite("seahorn/lib/sea_allocators.c":33:3 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17))))
  %v24 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/sea_allocators.c":45:10 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17)))
  %v25 = sea.ptr.cmp ne, %v22, %v24 : !sea.ptr<64> loc(callsite("seahorn/lib/sea_allocators.c":45:10 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17)))
  sea.assume %v25 loc(callsite("seahorn/lib/sea_allocators.c":45:3 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17)))
  sea.br ^bb4(%v23, %v22 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc(callsite("seahorn/lib/proof_allocators.c":17:10 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17))
^bb4(%v26 : !sea.mem<!sea.ptr<64>, i8>, %v27 : !sea.ptr<64>):
  %v28 = sea.nondet "nd_size_t" [10] : i64 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":19:22)
  %v29 = sea.nondet "nd_bool" [11] : i1 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":20:9)
  sea.cond_br %v29, ^bb9(%v26, %v27, %v10 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64), ^bb5 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":20:9)
^bb5:
  %v30 = sea.const 11 : i64 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":24:24)
  %v31 = sea.icmp ult, %v28, %v30 : i64 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":24:24)
  sea.assume %v31 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":24:9)
  %v32 = sea.const 0 : i64 loc(callsite("seahorn/lib/proof_allocators.c":17:15 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15))
  %v33 = sea.icmp eq, %v28, %v32 : i64 loc(callsite("seahorn/lib/proof_allocators.c":17:15 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15))
  %v34 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/proof_allocators.c":17:10 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15))
  %v35 = sea.const 0 : i64 loc(callsite("seahorn/lib/proof_allocators.c":17:10 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15))
  sea.cond_br %v33, ^bb9(%v26, %v34, %v35 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64), ^bb6 loc(callsite("seahorn/lib/proof_allocators.c":17:10 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15))
^bb6:
  %v36 = sea.nondet "nd_malloc_is_fail" [12] : i1 loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15)))))
  %v37 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15)))))
  sea.cond_br %v36, ^bb8(%v26, %v37 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb7 loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15)))))
^bb7:
  %v38 = sea.const 1 : i64 loc("malloc12.i")
  %v39 = sea.mul %v28, %v38 : i64 loc("malloc12.i")
  %v40 = sea.alloca %v39 align 16 [13] : i64 -> !sea.ptr<64> loc("malloc12.i")
  sea.br ^bb8(%v26, %v40 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15)))))
^bb8(%v41 : !sea.mem<!sea.ptr<64>, i8>, %v42 : !sea.ptr<64>):
  %v43 = sea.memhavoc %v41[%v42], %v28 [14] inplace : !sea.mem<!sea.ptr<64>, i8> loc(callsite("seahorn/lib/sea_allocators.c":33:3 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15))))
  %v44 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/sea_allocators.c":45:10 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15)))
  %v45 = sea.ptr.cmp ne, %v42, %v44 : !sea.ptr<64> loc(callsite("seahorn/lib/sea_allocators.c":45:10 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15)))
  sea.assume %v45 loc(callsite("seahorn/lib/sea_allocators.c":45:3 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15)))
  sea.br ^bb9(%v43, %v42, %v28 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64) loc(callsite("seahorn/lib/proof_allocators.c":17:10 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15))
^bb9(%v46 : !sea.mem<!sea.ptr<64>, i8>, %v47 : !sea.ptr<64>, %v48 : i64):
  %v49 = sea.nondet "nd_size_t" [15] : i64 loc(callsite("seahorn/lib/utils.c":46:20 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  sea.br ^bb10
^bb10:
  %v50 = sea.store %v0[%v7], %v49 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc(callsite("seahorn/lib/utils.c":46:18 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  %v51 = sea.const 0 : i64 loc(callsite("seahorn/lib/utils.c":47:12 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  %v52 = sea.icmp ne, %v10, %v51 : i64 loc(callsite("seahorn/lib/utils.c":47:12 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  %v53 = sea.ptr.null : !sea.ptr<64>
  %v54 = sea.ptr.cmp ne, %v27, %v53 : !sea.ptr<64>
  %v55 = sea.and %v52, %v54 : i1 loc("or.cond.i.i"(callsite("seahorn/lib/utils.c":47:16 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5)))
  sea.cond_br %v55, ^bb13, ^bb11 loc(callsite("seahorn/lib/utils.c":47:16 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
^bb11:
  %v56 = sea.nondet "nd_uint8_t" [16] : i8 loc(callsite("seahorn/lib/utils.c":51:21 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  %v57 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("seahorn/lib/utils.c":51:14 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  sea.br ^bb12
^bb12:
  %v58 = sea.store %v50[%v57], %v56 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc(callsite("seahorn/lib/utils.c":51:19 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  sea.br ^bb18(%v56 : i8)
^bb13:
  sea.br ^bb14
^bb14:
  %v59 = sea.icmp ult, %v49, %v10 : i64 loc(callsite("seahorn/lib/utils.c":48:27 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  sea.assume %v59 loc(callsite("seahorn/lib/utils.c":48:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  sea.br ^bb15
^bb15:
  %v60 = sea.ptr.index %v27 [%v49] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  %v61 = sea.const 1 : i64 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  %v62 = sea.ptr.dereferenceable %v60, %v61 : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  sea.cond_br %v62, ^bb16, ^bb87
^bb16:
  %v63 = sea.load %v46[%v60] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  %v64 = sea.ptr.index %v7 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("seahorn/lib/utils.c":49:14 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  sea.br ^bb17
^bb17:
  %v65 = sea.store %v50[%v64], %v63 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc(callsite("seahorn/lib/utils.c":49:19 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  sea.br ^bb18(%v63 : i8) loc(callsite("seahorn/lib/utils.c":50:3 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
^bb18(%v66 : i8):
  %v67 = sea.nondet "nd_size_t" [17] : i64 loc(callsite("seahorn/lib/utils.c":46:20 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  sea.br ^bb19
^bb19:
  %v68 = sea.store %v1[%v9], %v67 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc(callsite("seahorn/lib/utils.c":46:18 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  %v69 = sea.const 0 : i64 loc(callsite("seahorn/lib/utils.c":47:12 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  %v70 = sea.icmp ne, %v48, %v69 : i64 loc(callsite("seahorn/lib/utils.c":47:12 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  %v71 = sea.ptr.null : !sea.ptr<64>
  %v72 = sea.ptr.cmp ne, %v47, %v71 : !sea.ptr<64>
  %v73 = sea.and %v72, %v70 : i1 loc("or.cond.i7.i"(callsite("seahorn/lib/utils.c":47:16 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5)))
  sea.cond_br %v73, ^bb22, ^bb20 loc(callsite("seahorn/lib/utils.c":47:16 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
^bb20:
  %v74 = sea.nondet "nd_uint8_t" [18] : i8 loc(callsite("seahorn/lib/utils.c":51:21 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  %v75 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("seahorn/lib/utils.c":51:14 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  sea.br ^bb21
^bb21:
  %v76 = sea.store %v68[%v75], %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc(callsite("seahorn/lib/utils.c":51:19 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  sea.br ^bb27(%v74 : i8)
^bb22:
  sea.br ^bb23
^bb23:
  %v77 = sea.icmp ult, %v67, %v48 : i64 loc(callsite("seahorn/lib/utils.c":48:27 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  sea.assume %v77 loc(callsite("seahorn/lib/utils.c":48:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  sea.br ^bb24
^bb24:
  %v78 = sea.ptr.index %v47 [%v67] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  %v79 = sea.const 1 : i64 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  %v80 = sea.ptr.dereferenceable %v78, %v79 : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  sea.cond_br %v80, ^bb25, ^bb87
^bb25:
  %v81 = sea.load %v46[%v78] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  %v82 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("seahorn/lib/utils.c":49:14 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  sea.br ^bb26
^bb26:
  %v83 = sea.store %v68[%v82], %v81 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc(callsite("seahorn/lib/utils.c":49:19 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  sea.br ^bb27(%v81 : i8) loc(callsite("seahorn/lib/utils.c":50:3 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
^bb27(%v84 : i8):
  %v85 = sea.or %v14, %v54 : i1 loc("spec.select.i"("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":36:27))
  sea.assume %v85 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":36:5)
  %v86 = sea.const 0 : i64 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":37:21)
  %v87 = sea.icmp eq, %v48, %v86 : i64 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":37:21)
  %v88 = sea.or %v72, %v87 : i1 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":37:27)
  sea.assume %v88 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":37:5)
  %v89 = sea.icmp eq, %v10, %v48 : i64 loc(".not.i.i"(callsite("aws-c-common/source/byte_buf.c":404:15 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v89, ^bb28, ^bb72 loc(callsite("aws-c-common/source/byte_buf.c":404:9 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb28:
  sea.cond_br %v14, ^bb71, ^bb29 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb29:
  %v90 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v91 = sea.ptr.dereferenceable %v27, %v90 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v91, ^bb30, ^bb87
^bb30:
  %v92 = sea.load %v46[%v27] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v93 = sea.zext %v92 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v94 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v95 = sea.ptr.index %v94 [%v93] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v96 = sea.load %v5[%v95] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v97 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v98 = sea.ptr.dereferenceable %v47, %v97 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v98, ^bb31, ^bb87
^bb31:
  %v99 = sea.load %v46[%v47] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v100 = sea.zext %v99 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v101 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v102 = sea.ptr.index %v101 [%v100] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v103 = sea.load %v5[%v102] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v104 = sea.icmp eq, %v96, %v103 : i8 loc(".not3.i.i"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v104, ^bb32, ^bb68 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb32:
  %v105 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v106 = sea.icmp eq, %v10, %v105 : i64 loc("exitcond.not"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v106, ^bb71, ^bb33 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb33:
  %v107 = sea.ptr.index %v27 [] strides [] offset 1 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v108 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v109 = sea.ptr.dereferenceable %v107, %v108 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v109, ^bb34, ^bb87
^bb34:
  %v110 = sea.load %v46[%v107] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v111 = sea.zext %v110 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v112 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v113 = sea.ptr.index %v112 [%v111] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v114 = sea.load %v5[%v113] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v115 = sea.ptr.index %v47 [] strides [] offset 1 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v116 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v117 = sea.ptr.dereferenceable %v115, %v116 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v117, ^bb35, ^bb87
^bb35:
  %v118 = sea.load %v46[%v115] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v119 = sea.zext %v118 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v120 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v121 = sea.ptr.index %v120 [%v119] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v122 = sea.load %v5[%v121] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v123 = sea.icmp eq, %v114, %v122 : i8 loc(".not3.i.i.1"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v123, ^bb36, ^bb68 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb36:
  %v124 = sea.const 2 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v125 = sea.icmp eq, %v10, %v124 : i64 loc("exitcond.not.1"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v125, ^bb71, ^bb37 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb37:
  %v126 = sea.ptr.index %v27 [] strides [] offset 2 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v127 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v128 = sea.ptr.dereferenceable %v126, %v127 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v128, ^bb38, ^bb87
^bb38:
  %v129 = sea.load %v46[%v126] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v130 = sea.zext %v129 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v131 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v132 = sea.ptr.index %v131 [%v130] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v133 = sea.load %v5[%v132] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v134 = sea.ptr.index %v47 [] strides [] offset 2 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v135 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v136 = sea.ptr.dereferenceable %v134, %v135 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v136, ^bb39, ^bb87
^bb39:
  %v137 = sea.load %v46[%v134] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v138 = sea.zext %v137 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v139 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v140 = sea.ptr.index %v139 [%v138] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v141 = sea.load %v5[%v140] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v142 = sea.icmp eq, %v133, %v141 : i8 loc(".not3.i.i.2"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v142, ^bb40, ^bb68 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb40:
  %v143 = sea.const 3 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v144 = sea.icmp eq, %v10, %v143 : i64 loc("exitcond.not.2"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v144, ^bb71, ^bb41 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb41:
  %v145 = sea.ptr.index %v27 [] strides [] offset 3 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v146 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v147 = sea.ptr.dereferenceable %v145, %v146 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v147, ^bb42, ^bb87
^bb42:
  %v148 = sea.load %v46[%v145] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v149 = sea.zext %v148 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v150 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v151 = sea.ptr.index %v150 [%v149] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v152 = sea.load %v5[%v151] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v153 = sea.ptr.index %v47 [] strides [] offset 3 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v154 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v155 = sea.ptr.dereferenceable %v153, %v154 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v155, ^bb43, ^bb87
^bb43:
  %v156 = sea.load %v46[%v153] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v157 = sea.zext %v156 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v158 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v159 = sea.ptr.index %v158 [%v157] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v160 = sea.load %v5[%v159] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v161 = sea.icmp eq, %v152, %v160 : i8 loc(".not3.i.i.3"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v161, ^bb44, ^bb68 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb44:
  %v162 = sea.const 4 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v163 = sea.icmp eq, %v10, %v162 : i64 loc("exitcond.not.3"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v163, ^bb71, ^bb45 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb45:
  %v164 = sea.ptr.index %v27 [] strides [] offset 4 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v165 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v166 = sea.ptr.dereferenceable %v164, %v165 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v166, ^bb46, ^bb87
^bb46:
  %v167 = sea.load %v46[%v164] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v168 = sea.zext %v167 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v169 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v170 = sea.ptr.index %v169 [%v168] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v171 = sea.load %v5[%v170] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v172 = sea.ptr.index %v47 [] strides [] offset 4 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v173 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v174 = sea.ptr.dereferenceable %v172, %v173 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v174, ^bb47, ^bb87
^bb47:
  %v175 = sea.load %v46[%v172] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v176 = sea.zext %v175 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v177 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v178 = sea.ptr.index %v177 [%v176] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v179 = sea.load %v5[%v178] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v180 = sea.icmp eq, %v171, %v179 : i8 loc(".not3.i.i.4"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v180, ^bb48, ^bb68 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb48:
  %v181 = sea.const 5 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v182 = sea.icmp eq, %v10, %v181 : i64 loc("exitcond.not.4"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v182, ^bb71, ^bb49 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb49:
  %v183 = sea.ptr.index %v27 [] strides [] offset 5 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v184 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v185 = sea.ptr.dereferenceable %v183, %v184 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v185, ^bb50, ^bb87
^bb50:
  %v186 = sea.load %v46[%v183] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v187 = sea.zext %v186 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v188 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v189 = sea.ptr.index %v188 [%v187] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v190 = sea.load %v5[%v189] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v191 = sea.ptr.index %v47 [] strides [] offset 5 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v192 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v193 = sea.ptr.dereferenceable %v191, %v192 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v193, ^bb51, ^bb87
^bb51:
  %v194 = sea.load %v46[%v191] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v195 = sea.zext %v194 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v196 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v197 = sea.ptr.index %v196 [%v195] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v198 = sea.load %v5[%v197] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v199 = sea.icmp eq, %v190, %v198 : i8 loc(".not3.i.i.5"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v199, ^bb52, ^bb68 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb52:
  %v200 = sea.const 6 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v201 = sea.icmp eq, %v10, %v200 : i64 loc("exitcond.not.5"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v201, ^bb71, ^bb53 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb53:
  %v202 = sea.ptr.index %v27 [] strides [] offset 6 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v203 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v204 = sea.ptr.dereferenceable %v202, %v203 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v204, ^bb54, ^bb87
^bb54:
  %v205 = sea.load %v46[%v202] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v206 = sea.zext %v205 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v207 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v208 = sea.ptr.index %v207 [%v206] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v209 = sea.load %v5[%v208] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v210 = sea.ptr.index %v47 [] strides [] offset 6 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v211 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v212 = sea.ptr.dereferenceable %v210, %v211 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v212, ^bb55, ^bb87
^bb55:
  %v213 = sea.load %v46[%v210] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v214 = sea.zext %v213 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v215 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v216 = sea.ptr.index %v215 [%v214] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v217 = sea.load %v5[%v216] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v218 = sea.icmp eq, %v209, %v217 : i8 loc(".not3.i.i.6"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v218, ^bb56, ^bb68 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb56:
  %v219 = sea.const 7 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v220 = sea.icmp eq, %v10, %v219 : i64 loc("exitcond.not.6"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v220, ^bb71, ^bb57 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb57:
  %v221 = sea.ptr.index %v27 [] strides [] offset 7 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v222 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v223 = sea.ptr.dereferenceable %v221, %v222 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v223, ^bb58, ^bb87
^bb58:
  %v224 = sea.load %v46[%v221] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v225 = sea.zext %v224 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v226 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v227 = sea.ptr.index %v226 [%v225] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v228 = sea.load %v5[%v227] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v229 = sea.ptr.index %v47 [] strides [] offset 7 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v230 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v231 = sea.ptr.dereferenceable %v229, %v230 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v231, ^bb59, ^bb87
^bb59:
  %v232 = sea.load %v46[%v229] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v233 = sea.zext %v232 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v234 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v235 = sea.ptr.index %v234 [%v233] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v236 = sea.load %v5[%v235] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v237 = sea.icmp eq, %v228, %v236 : i8 loc(".not3.i.i.7"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v237, ^bb60, ^bb68 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb60:
  %v238 = sea.const 8 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v239 = sea.icmp eq, %v10, %v238 : i64 loc("exitcond.not.7"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v239, ^bb71, ^bb61 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb61:
  %v240 = sea.ptr.index %v27 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v241 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v242 = sea.ptr.dereferenceable %v240, %v241 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v242, ^bb62, ^bb87
^bb62:
  %v243 = sea.load %v46[%v240] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v244 = sea.zext %v243 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v245 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v246 = sea.ptr.index %v245 [%v244] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v247 = sea.load %v5[%v246] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v248 = sea.ptr.index %v47 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v249 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v250 = sea.ptr.dereferenceable %v248, %v249 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v250, ^bb63, ^bb87
^bb63:
  %v251 = sea.load %v46[%v248] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v252 = sea.zext %v251 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v253 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v254 = sea.ptr.index %v253 [%v252] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v255 = sea.load %v5[%v254] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v256 = sea.icmp eq, %v247, %v255 : i8 loc(".not3.i.i.8"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v256, ^bb64, ^bb68 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb64:
  %v257 = sea.const 9 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v258 = sea.icmp eq, %v10, %v257 : i64 loc("exitcond.not.8"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v258, ^bb71, ^bb65 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb65:
  %v259 = sea.ptr.index %v27 [] strides [] offset 9 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v260 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v261 = sea.ptr.dereferenceable %v259, %v260 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v261, ^bb66, ^bb87
^bb66:
  %v262 = sea.load %v46[%v259] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v263 = sea.zext %v262 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v264 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v265 = sea.ptr.index %v264 [%v263] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v266 = sea.load %v5[%v265] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v267 = sea.ptr.index %v47 [] strides [] offset 9 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v268 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v269 = sea.ptr.dereferenceable %v267, %v268 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v269, ^bb67, ^bb87
^bb67:
  %v270 = sea.load %v46[%v267] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v271 = sea.zext %v270 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v272 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v273 = sea.ptr.index %v272 [%v271] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v274 = sea.load %v5[%v273] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v275 = sea.icmp eq, %v266, %v274 : i8 loc(".not3.i.i.9"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v275, ^bb69, ^bb68 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb68:
  sea.br ^bb74 loc(callsite("seahorn/lib/utils.c":39:14 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":46:9))
^bb69:
  %v276 = sea.const 10 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v277 = sea.icmp eq, %v10, %v276 : i64 loc("exitcond.not.9"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v277, ^bb71, ^bb70 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb70:
  %v278 = sea.ptr.index %v27 [] strides [] offset 10 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v279 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v280 = sea.ptr.dereferenceable %v278, %v279 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v281 = sea.const 1 : i1
  %v282 = sea.xor %v280, %v281 : i1
  sea.assume %v282
  sea.br ^bb87
^bb71:
  sea.br ^bb72
^bb72:
  sea.cond_br %v14, ^bb80, ^bb73 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":45:9)
^bb73:
  %v283 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/utils.c":39:7 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":46:9))
  %v284 = sea.ptr.cmp eq, %v27, %v283 : !sea.ptr<64> loc(".not"(callsite("seahorn/lib/utils.c":39:7 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":46:9)))
  sea.cond_br %v284, ^bb80, ^bb74 loc(callsite("seahorn/lib/utils.c":39:14 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":46:9))
^bb74:
  sea.br ^bb75
^bb75:
  %v285 = sea.ptr.index %v27 [%v49] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":46:9))
  %v286 = sea.const 1 : i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":46:9))
  %v287 = sea.ptr.dereferenceable %v285, %v286 : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":46:9))
  sea.cond_br %v287, ^bb76, ^bb87
^bb76:
  %v288 = sea.load %v46[%v285] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":46:9))
  sea.br ^bb77
^bb77:
  %v289 = sea.icmp eq, %v288, %v66 : i8 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":46:9))
  sea.br ^bb78
^bb78:
  %v290 = sea.const 1 : i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":46:9))
  %v291 = sea.ptr.dereferenceable %v285, %v290 : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":46:9))
  sea.cond_br %v291, ^bb79, ^bb87
^bb79:
  %v292 = sea.const 1 : i1
  %v293 = sea.const 0 : i1
  %v294 = sea.select %v292, %v289, %v293 : i1 loc("or.cond")
  sea.cond_br %v294, ^bb80, ^bb87
^bb80:
  %v295 = sea.const 1 : i1 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":48:9)
  %v296 = sea.xor %v87, %v295 : i1 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":48:9)
  sea.assume %v296 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":48:9)
  sea.assume %v72 loc(callsite("seahorn/lib/utils.c":39:14 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
  sea.br ^bb81
^bb81:
  %v297 = sea.ptr.index %v47 [%v67] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
  %v298 = sea.const 1 : i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
  %v299 = sea.ptr.dereferenceable %v297, %v298 : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
  sea.cond_br %v299, ^bb82, ^bb87
^bb82:
  %v300 = sea.load %v46[%v297] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
  sea.br ^bb83
^bb83:
  %v301 = sea.icmp eq, %v300, %v84 : i8 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
  sea.br ^bb84
^bb84:
  %v302 = sea.const 1 : i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
  %v303 = sea.ptr.dereferenceable %v297, %v302 : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
  sea.cond_br %v303, ^bb85, ^bb87
^bb85:
  sea.br ^bb86
^bb86:
  %v304 = sea.const 1 : i1 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
  %v305 = sea.xor %v301, %v304 : i1 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
  sea.assume %v305 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
  sea.br ^bb87 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
^bb87:
  sea.br ^bb88
^bb88:
  %v306 = sea.const 0 : i1
  sea.assert %v306
  sea.halt
}
