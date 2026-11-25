// Exported from SeaHorn (array_eq_ignore_case.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %mem = seaimp.var "mem" [0] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>
  %v0 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  seaimp.mem.fill %mem[%v0], dense<[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255]> : tensor<256xi8> : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>
  %v1 = sea.const 16 : i64
  %v2 = seaimp.alloca %mem, %v1 align 8 [1] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>, i64 -> !sea.ptr<64>
  %v3 = sea.const 16 : i64
  %v4 = seaimp.alloca %mem, %v3 align 8 [2] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>, i64 -> !sea.ptr<64>
  %v5 = sea.nondet "nd_size_t" [3] : i64 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":14:22)
  %v6 = sea.const 11 : i64 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":15:20)
  %v7 = sea.icmp ult, %v5, %v6 : i64 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":15:20)
  sea.assume %v7 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":15:5)
  %v8 = sea.const 0 : i64 loc(callsite("seahorn/lib/proof_allocators.c":17:15 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17))
  %v9 = sea.icmp eq, %v5, %v8 : i64 loc(callsite("seahorn/lib/proof_allocators.c":17:15 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17))
  %v10 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/proof_allocators.c":17:10 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17))
  sea.cond_br %v9, ^bb4(%v10 : !sea.ptr<64>), ^bb1 loc(callsite("seahorn/lib/proof_allocators.c":17:10 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17))
^bb1:
  %v11 = sea.nondet "nd_malloc_is_fail" [4] : i1 loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17)))))
  %v12 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17)))))
  sea.cond_br %v11, ^bb3(%v12 : !sea.ptr<64>), ^bb2 loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17)))))
^bb2:
  %v13 = sea.const 1 : i64 loc("malloc.i")
  %v14 = sea.mul %v5, %v13 : i64 loc("malloc.i")
  %v15 = seaimp.alloca %mem, %v14 align 16 [5] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>, i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb3(%v15 : !sea.ptr<64>) loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17)))))
^bb3(%v16 : !sea.ptr<64>):
  seaimp.memhavoc %mem[%v16], %v5 [6] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> loc(callsite("seahorn/lib/sea_allocators.c":33:3 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17))))
  %v17 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/sea_allocators.c":45:10 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17)))
  %v18 = sea.ptr.cmp ne, %v16, %v17 : !sea.ptr<64> loc(callsite("seahorn/lib/sea_allocators.c":45:10 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17)))
  sea.assume %v18 loc(callsite("seahorn/lib/sea_allocators.c":45:3 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17)))
  sea.br ^bb4(%v16 : !sea.ptr<64>) loc(callsite("seahorn/lib/proof_allocators.c":17:10 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":16:17))
^bb4(%v19 : !sea.ptr<64>):
  %v20 = sea.nondet "nd_size_t" [7] : i64 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":19:22)
  %v21 = sea.nondet "nd_bool" [8] : i1 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":20:9)
  sea.cond_br %v21, ^bb9(%v19, %v5 : !sea.ptr<64>, i64), ^bb5 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":20:9)
^bb5:
  %v22 = sea.const 11 : i64 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":24:24)
  %v23 = sea.icmp ult, %v20, %v22 : i64 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":24:24)
  sea.assume %v23 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":24:9)
  %v24 = sea.const 0 : i64 loc(callsite("seahorn/lib/proof_allocators.c":17:15 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15))
  %v25 = sea.icmp eq, %v20, %v24 : i64 loc(callsite("seahorn/lib/proof_allocators.c":17:15 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15))
  %v26 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/proof_allocators.c":17:10 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15))
  %v27 = sea.const 0 : i64 loc(callsite("seahorn/lib/proof_allocators.c":17:10 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15))
  sea.cond_br %v25, ^bb9(%v26, %v27 : !sea.ptr<64>, i64), ^bb6 loc(callsite("seahorn/lib/proof_allocators.c":17:10 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15))
^bb6:
  %v28 = sea.nondet "nd_malloc_is_fail" [9] : i1 loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15)))))
  %v29 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15)))))
  sea.cond_br %v28, ^bb8(%v29 : !sea.ptr<64>), ^bb7 loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15)))))
^bb7:
  %v30 = sea.const 1 : i64 loc("malloc12.i")
  %v31 = sea.mul %v20, %v30 : i64 loc("malloc12.i")
  %v32 = seaimp.alloca %mem, %v31 align 16 [10] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>, i64 -> !sea.ptr<64> loc("malloc12.i")
  sea.br ^bb8(%v32 : !sea.ptr<64>) loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15)))))
^bb8(%v33 : !sea.ptr<64>):
  seaimp.memhavoc %mem[%v33], %v20 [11] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> loc(callsite("seahorn/lib/sea_allocators.c":33:3 at callsite("seahorn/lib/sea_allocators.c":44:16 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15))))
  %v34 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/sea_allocators.c":45:10 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15)))
  %v35 = sea.ptr.cmp ne, %v33, %v34 : !sea.ptr<64> loc(callsite("seahorn/lib/sea_allocators.c":45:10 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15)))
  sea.assume %v35 loc(callsite("seahorn/lib/sea_allocators.c":45:3 at callsite("seahorn/lib/proof_allocators.c":17:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15)))
  sea.br ^bb9(%v33, %v20 : !sea.ptr<64>, i64) loc(callsite("seahorn/lib/proof_allocators.c":17:10 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":25:15))
^bb9(%v36 : !sea.ptr<64>, %v37 : i64):
  %v38 = sea.nondet "nd_size_t" [12] : i64 loc(callsite("seahorn/lib/utils.c":46:20 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  sea.br ^bb10
^bb10:
  seaimp.store %mem[%v2], %v38 align 8 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>, i64 loc(callsite("seahorn/lib/utils.c":46:18 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  %v39 = sea.const 0 : i64 loc(callsite("seahorn/lib/utils.c":47:12 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  %v40 = sea.icmp ne, %v5, %v39 : i64 loc(callsite("seahorn/lib/utils.c":47:12 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  %v41 = sea.ptr.null : !sea.ptr<64>
  %v42 = sea.ptr.cmp ne, %v19, %v41 : !sea.ptr<64>
  %v43 = sea.and %v40, %v42 : i1 loc("or.cond.i.i"(callsite("seahorn/lib/utils.c":47:16 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5)))
  sea.cond_br %v43, ^bb13, ^bb11 loc(callsite("seahorn/lib/utils.c":47:16 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
^bb11:
  %v44 = sea.nondet "nd_uint8_t" [13] : i8 loc(callsite("seahorn/lib/utils.c":51:21 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  %v45 = sea.ptr.index %v2 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("seahorn/lib/utils.c":51:14 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  sea.br ^bb12
^bb12:
  seaimp.store %mem[%v45], %v44 align 8 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>, i8 loc(callsite("seahorn/lib/utils.c":51:19 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  sea.br ^bb18(%v44 : i8)
^bb13:
  sea.br ^bb14
^bb14:
  %v46 = sea.icmp ult, %v38, %v5 : i64 loc(callsite("seahorn/lib/utils.c":48:27 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  sea.assume %v46 loc(callsite("seahorn/lib/utils.c":48:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  sea.br ^bb15
^bb15:
  %v47 = sea.ptr.index %v19 [%v38] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  %v48 = sea.const 1 : i64 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  %v49 = sea.ptr.dereferenceable %v47, %v48 : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  sea.cond_br %v49, ^bb16, ^bb87
^bb16:
  %v50 = seaimp.load %mem[%v47] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  %v51 = sea.ptr.index %v2 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("seahorn/lib/utils.c":49:14 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  sea.br ^bb17
^bb17:
  seaimp.store %mem[%v51], %v50 align 8 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>, i8 loc(callsite("seahorn/lib/utils.c":49:19 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
  sea.br ^bb18(%v50 : i8) loc(callsite("seahorn/lib/utils.c":50:3 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":30:5))
^bb18(%v52 : i8):
  %v53 = sea.nondet "nd_size_t" [14] : i64 loc(callsite("seahorn/lib/utils.c":46:20 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  sea.br ^bb19
^bb19:
  seaimp.store %mem[%v4], %v53 align 8 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>, i64 loc(callsite("seahorn/lib/utils.c":46:18 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  %v54 = sea.const 0 : i64 loc(callsite("seahorn/lib/utils.c":47:12 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  %v55 = sea.icmp ne, %v37, %v54 : i64 loc(callsite("seahorn/lib/utils.c":47:12 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  %v56 = sea.ptr.null : !sea.ptr<64>
  %v57 = sea.ptr.cmp ne, %v36, %v56 : !sea.ptr<64>
  %v58 = sea.and %v57, %v55 : i1 loc("or.cond.i7.i"(callsite("seahorn/lib/utils.c":47:16 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5)))
  sea.cond_br %v58, ^bb22, ^bb20 loc(callsite("seahorn/lib/utils.c":47:16 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
^bb20:
  %v59 = sea.nondet "nd_uint8_t" [15] : i8 loc(callsite("seahorn/lib/utils.c":51:21 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  %v60 = sea.ptr.index %v4 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("seahorn/lib/utils.c":51:14 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  sea.br ^bb21
^bb21:
  seaimp.store %mem[%v60], %v59 align 8 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>, i8 loc(callsite("seahorn/lib/utils.c":51:19 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  sea.br ^bb27(%v59 : i8)
^bb22:
  sea.br ^bb23
^bb23:
  %v61 = sea.icmp ult, %v53, %v37 : i64 loc(callsite("seahorn/lib/utils.c":48:27 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  sea.assume %v61 loc(callsite("seahorn/lib/utils.c":48:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  sea.br ^bb24
^bb24:
  %v62 = sea.ptr.index %v36 [%v53] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  %v63 = sea.const 1 : i64 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  %v64 = sea.ptr.dereferenceable %v62, %v63 : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  sea.cond_br %v64, ^bb25, ^bb87
^bb25:
  %v65 = seaimp.load %mem[%v62] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  %v66 = sea.ptr.index %v4 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("seahorn/lib/utils.c":49:14 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  sea.br ^bb26
^bb26:
  seaimp.store %mem[%v66], %v65 align 8 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>, i8 loc(callsite("seahorn/lib/utils.c":49:19 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
  sea.br ^bb27(%v65 : i8) loc(callsite("seahorn/lib/utils.c":50:3 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":33:5))
^bb27(%v67 : i8):
  %v68 = sea.or %v9, %v42 : i1 loc("spec.select.i"("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":36:27))
  sea.assume %v68 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":36:5)
  %v69 = sea.const 0 : i64 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":37:21)
  %v70 = sea.icmp eq, %v37, %v69 : i64 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":37:21)
  %v71 = sea.or %v57, %v70 : i1 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":37:27)
  sea.assume %v71 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":37:5)
  %v72 = sea.icmp eq, %v5, %v37 : i64 loc(".not.i.i"(callsite("aws-c-common/source/byte_buf.c":404:15 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v72, ^bb28, ^bb72 loc(callsite("aws-c-common/source/byte_buf.c":404:9 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb28:
  sea.cond_br %v9, ^bb71, ^bb29 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb29:
  %v73 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v74 = sea.ptr.dereferenceable %v19, %v73 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v74, ^bb30, ^bb87
^bb30:
  %v75 = seaimp.load %mem[%v19] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v76 = sea.zext %v75 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v77 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v78 = sea.ptr.index %v77 [%v76] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v79 = seaimp.load %mem[%v78] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v80 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v81 = sea.ptr.dereferenceable %v36, %v80 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v81, ^bb31, ^bb87
^bb31:
  %v82 = seaimp.load %mem[%v36] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v83 = sea.zext %v82 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v84 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v85 = sea.ptr.index %v84 [%v83] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v86 = seaimp.load %mem[%v85] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v87 = sea.icmp eq, %v79, %v86 : i8 loc(".not3.i.i"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v87, ^bb32, ^bb68 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb32:
  %v88 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v89 = sea.icmp eq, %v5, %v88 : i64 loc("exitcond.not"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v89, ^bb71, ^bb33 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb33:
  %v90 = sea.ptr.index %v19 [] strides [] offset 1 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v91 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v92 = sea.ptr.dereferenceable %v90, %v91 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v92, ^bb34, ^bb87
^bb34:
  %v93 = seaimp.load %mem[%v90] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v94 = sea.zext %v93 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v95 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v96 = sea.ptr.index %v95 [%v94] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v97 = seaimp.load %mem[%v96] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v98 = sea.ptr.index %v36 [] strides [] offset 1 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v99 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v100 = sea.ptr.dereferenceable %v98, %v99 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v100, ^bb35, ^bb87
^bb35:
  %v101 = seaimp.load %mem[%v98] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v102 = sea.zext %v101 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v103 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v104 = sea.ptr.index %v103 [%v102] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v105 = seaimp.load %mem[%v104] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v106 = sea.icmp eq, %v97, %v105 : i8 loc(".not3.i.i.1"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v106, ^bb36, ^bb68 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb36:
  %v107 = sea.const 2 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v108 = sea.icmp eq, %v5, %v107 : i64 loc("exitcond.not.1"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v108, ^bb71, ^bb37 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb37:
  %v109 = sea.ptr.index %v19 [] strides [] offset 2 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v110 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v111 = sea.ptr.dereferenceable %v109, %v110 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v111, ^bb38, ^bb87
^bb38:
  %v112 = seaimp.load %mem[%v109] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v113 = sea.zext %v112 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v114 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v115 = sea.ptr.index %v114 [%v113] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v116 = seaimp.load %mem[%v115] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v117 = sea.ptr.index %v36 [] strides [] offset 2 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v118 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v119 = sea.ptr.dereferenceable %v117, %v118 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v119, ^bb39, ^bb87
^bb39:
  %v120 = seaimp.load %mem[%v117] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v121 = sea.zext %v120 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v122 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v123 = sea.ptr.index %v122 [%v121] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v124 = seaimp.load %mem[%v123] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v125 = sea.icmp eq, %v116, %v124 : i8 loc(".not3.i.i.2"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v125, ^bb40, ^bb68 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb40:
  %v126 = sea.const 3 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v127 = sea.icmp eq, %v5, %v126 : i64 loc("exitcond.not.2"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v127, ^bb71, ^bb41 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb41:
  %v128 = sea.ptr.index %v19 [] strides [] offset 3 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v129 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v130 = sea.ptr.dereferenceable %v128, %v129 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v130, ^bb42, ^bb87
^bb42:
  %v131 = seaimp.load %mem[%v128] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v132 = sea.zext %v131 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v133 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v134 = sea.ptr.index %v133 [%v132] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v135 = seaimp.load %mem[%v134] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v136 = sea.ptr.index %v36 [] strides [] offset 3 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v137 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v138 = sea.ptr.dereferenceable %v136, %v137 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v138, ^bb43, ^bb87
^bb43:
  %v139 = seaimp.load %mem[%v136] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v140 = sea.zext %v139 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v141 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v142 = sea.ptr.index %v141 [%v140] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v143 = seaimp.load %mem[%v142] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v144 = sea.icmp eq, %v135, %v143 : i8 loc(".not3.i.i.3"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v144, ^bb44, ^bb68 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb44:
  %v145 = sea.const 4 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v146 = sea.icmp eq, %v5, %v145 : i64 loc("exitcond.not.3"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v146, ^bb71, ^bb45 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb45:
  %v147 = sea.ptr.index %v19 [] strides [] offset 4 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v148 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v149 = sea.ptr.dereferenceable %v147, %v148 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v149, ^bb46, ^bb87
^bb46:
  %v150 = seaimp.load %mem[%v147] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v151 = sea.zext %v150 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v152 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v153 = sea.ptr.index %v152 [%v151] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v154 = seaimp.load %mem[%v153] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v155 = sea.ptr.index %v36 [] strides [] offset 4 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v156 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v157 = sea.ptr.dereferenceable %v155, %v156 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v157, ^bb47, ^bb87
^bb47:
  %v158 = seaimp.load %mem[%v155] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v159 = sea.zext %v158 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v160 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v161 = sea.ptr.index %v160 [%v159] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v162 = seaimp.load %mem[%v161] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v163 = sea.icmp eq, %v154, %v162 : i8 loc(".not3.i.i.4"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v163, ^bb48, ^bb68 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb48:
  %v164 = sea.const 5 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v165 = sea.icmp eq, %v5, %v164 : i64 loc("exitcond.not.4"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v165, ^bb71, ^bb49 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb49:
  %v166 = sea.ptr.index %v19 [] strides [] offset 5 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v167 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v168 = sea.ptr.dereferenceable %v166, %v167 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v168, ^bb50, ^bb87
^bb50:
  %v169 = seaimp.load %mem[%v166] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v170 = sea.zext %v169 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v171 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v172 = sea.ptr.index %v171 [%v170] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v173 = seaimp.load %mem[%v172] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v174 = sea.ptr.index %v36 [] strides [] offset 5 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v175 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v176 = sea.ptr.dereferenceable %v174, %v175 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v176, ^bb51, ^bb87
^bb51:
  %v177 = seaimp.load %mem[%v174] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v178 = sea.zext %v177 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v179 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v180 = sea.ptr.index %v179 [%v178] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v181 = seaimp.load %mem[%v180] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v182 = sea.icmp eq, %v173, %v181 : i8 loc(".not3.i.i.5"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v182, ^bb52, ^bb68 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb52:
  %v183 = sea.const 6 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v184 = sea.icmp eq, %v5, %v183 : i64 loc("exitcond.not.5"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v184, ^bb71, ^bb53 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb53:
  %v185 = sea.ptr.index %v19 [] strides [] offset 6 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v186 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v187 = sea.ptr.dereferenceable %v185, %v186 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v187, ^bb54, ^bb87
^bb54:
  %v188 = seaimp.load %mem[%v185] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v189 = sea.zext %v188 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v190 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v191 = sea.ptr.index %v190 [%v189] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v192 = seaimp.load %mem[%v191] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v193 = sea.ptr.index %v36 [] strides [] offset 6 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v194 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v195 = sea.ptr.dereferenceable %v193, %v194 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v195, ^bb55, ^bb87
^bb55:
  %v196 = seaimp.load %mem[%v193] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v197 = sea.zext %v196 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v198 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v199 = sea.ptr.index %v198 [%v197] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v200 = seaimp.load %mem[%v199] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v201 = sea.icmp eq, %v192, %v200 : i8 loc(".not3.i.i.6"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v201, ^bb56, ^bb68 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb56:
  %v202 = sea.const 7 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v203 = sea.icmp eq, %v5, %v202 : i64 loc("exitcond.not.6"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v203, ^bb71, ^bb57 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb57:
  %v204 = sea.ptr.index %v19 [] strides [] offset 7 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v205 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v206 = sea.ptr.dereferenceable %v204, %v205 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v206, ^bb58, ^bb87
^bb58:
  %v207 = seaimp.load %mem[%v204] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v208 = sea.zext %v207 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v209 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v210 = sea.ptr.index %v209 [%v208] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v211 = seaimp.load %mem[%v210] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v212 = sea.ptr.index %v36 [] strides [] offset 7 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v213 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v214 = sea.ptr.dereferenceable %v212, %v213 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v214, ^bb59, ^bb87
^bb59:
  %v215 = seaimp.load %mem[%v212] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v216 = sea.zext %v215 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v217 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v218 = sea.ptr.index %v217 [%v216] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v219 = seaimp.load %mem[%v218] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v220 = sea.icmp eq, %v211, %v219 : i8 loc(".not3.i.i.7"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v220, ^bb60, ^bb68 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb60:
  %v221 = sea.const 8 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v222 = sea.icmp eq, %v5, %v221 : i64 loc("exitcond.not.7"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v222, ^bb71, ^bb61 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb61:
  %v223 = sea.ptr.index %v19 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v224 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v225 = sea.ptr.dereferenceable %v223, %v224 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v225, ^bb62, ^bb87
^bb62:
  %v226 = seaimp.load %mem[%v223] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v227 = sea.zext %v226 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v228 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v229 = sea.ptr.index %v228 [%v227] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v230 = seaimp.load %mem[%v229] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v231 = sea.ptr.index %v36 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v232 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v233 = sea.ptr.dereferenceable %v231, %v232 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v233, ^bb63, ^bb87
^bb63:
  %v234 = seaimp.load %mem[%v231] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v235 = sea.zext %v234 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v236 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v237 = sea.ptr.index %v236 [%v235] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v238 = seaimp.load %mem[%v237] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v239 = sea.icmp eq, %v230, %v238 : i8 loc(".not3.i.i.8"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v239, ^bb64, ^bb68 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb64:
  %v240 = sea.const 9 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v241 = sea.icmp eq, %v5, %v240 : i64 loc("exitcond.not.8"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v241, ^bb71, ^bb65 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb65:
  %v242 = sea.ptr.index %v19 [] strides [] offset 9 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v243 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v244 = sea.ptr.dereferenceable %v242, %v243 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v244, ^bb66, ^bb87
^bb66:
  %v245 = seaimp.load %mem[%v242] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v246 = sea.zext %v245 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v247 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v248 = sea.ptr.index %v247 [%v246] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v249 = seaimp.load %mem[%v248] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v250 = sea.ptr.index %v36 [] strides [] offset 9 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v251 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v252 = sea.ptr.dereferenceable %v250, %v251 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  sea.cond_br %v252, ^bb67, ^bb87
^bb67:
  %v253 = seaimp.load %mem[%v250] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v254 = sea.zext %v253 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v255 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v256 = sea.ptr.index %v255 [%v254] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v257 = seaimp.load %mem[%v256] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v258 = sea.icmp eq, %v249, %v257 : i8 loc(".not3.i.i.9"(callsite("aws-c-common/source/byte_buf.c":411:41 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v258, ^bb69, ^bb68 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb68:
  sea.br ^bb74 loc(callsite("seahorn/lib/utils.c":39:14 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":46:9))
^bb69:
  %v259 = sea.const 10 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v260 = sea.icmp eq, %v5, %v259 : i64 loc("exitcond.not.9"(callsite("aws-c-common/source/byte_buf.c":410:26 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9)))
  sea.cond_br %v260, ^bb71, ^bb70 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
^bb70:
  %v261 = sea.ptr.index %v19 [] strides [] offset 10 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v262 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v263 = sea.ptr.dereferenceable %v261, %v262 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":40:9))
  %v264 = sea.const 1 : i1
  %v265 = sea.xor %v263, %v264 : i1
  sea.assume %v265
  sea.br ^bb87
^bb71:
  sea.br ^bb72
^bb72:
  sea.cond_br %v9, ^bb80, ^bb73 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":45:9)
^bb73:
  %v266 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/utils.c":39:7 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":46:9))
  %v267 = sea.ptr.cmp eq, %v19, %v266 : !sea.ptr<64> loc(".not"(callsite("seahorn/lib/utils.c":39:7 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":46:9)))
  sea.cond_br %v267, ^bb80, ^bb74 loc(callsite("seahorn/lib/utils.c":39:14 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":46:9))
^bb74:
  sea.br ^bb75
^bb75:
  %v268 = sea.ptr.index %v19 [%v38] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":46:9))
  %v269 = sea.const 1 : i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":46:9))
  %v270 = sea.ptr.dereferenceable %v268, %v269 : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":46:9))
  sea.cond_br %v270, ^bb76, ^bb87
^bb76:
  %v271 = seaimp.load %mem[%v268] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":46:9))
  sea.br ^bb77
^bb77:
  %v272 = sea.icmp eq, %v271, %v52 : i8 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":46:9))
  sea.br ^bb78
^bb78:
  %v273 = sea.const 1 : i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":46:9))
  %v274 = sea.ptr.dereferenceable %v268, %v273 : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":46:9))
  sea.cond_br %v274, ^bb79, ^bb87
^bb79:
  %v275 = sea.const 1 : i1
  %v276 = sea.const 0 : i1
  %v277 = sea.select %v275, %v272, %v276 : i1 loc("or.cond")
  sea.cond_br %v277, ^bb80, ^bb87
^bb80:
  %v278 = sea.const 1 : i1 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":48:9)
  %v279 = sea.xor %v70, %v278 : i1 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":48:9)
  sea.assume %v279 loc("seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":48:9)
  sea.assume %v57 loc(callsite("seahorn/lib/utils.c":39:14 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
  sea.br ^bb81
^bb81:
  %v280 = sea.ptr.index %v36 [%v53] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
  %v281 = sea.const 1 : i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
  %v282 = sea.ptr.dereferenceable %v280, %v281 : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
  sea.cond_br %v282, ^bb82, ^bb87
^bb82:
  %v283 = seaimp.load %mem[%v280] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
  sea.br ^bb83
^bb83:
  %v284 = sea.icmp eq, %v283, %v67 : i8 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
  sea.br ^bb84
^bb84:
  %v285 = sea.const 1 : i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
  %v286 = sea.ptr.dereferenceable %v280, %v285 : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
  sea.cond_br %v286, ^bb85, ^bb87
^bb85:
  sea.br ^bb86
^bb86:
  %v287 = sea.const 1 : i1 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
  %v288 = sea.xor %v284, %v287 : i1 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
  sea.assume %v288 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
  sea.br ^bb87 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/array_eq_ignore_case/aws_array_eq_ignore_case_harness.c":49:9))
^bb87:
  sea.br ^bb88
^bb88:
  %v289 = sea.const 0 : i1
  sea.assert %v289
  sea.halt
}
