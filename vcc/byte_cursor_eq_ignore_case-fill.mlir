// Exported from SeaHorn (byte_cursor_eq_ignore_case.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.1" [0] : !sea.mem<!sea.ptr<64>, i8>
  %v1 = sea.mem.nondet "region.17" [1] : !sea.mem<!sea.ptr<64>, i8>
  %v2 = sea.mem.nondet "region.33" [2] : !sea.mem<!sea.ptr<64>, i8>
  %v3 = sea.mem.nondet "region.42" [3] : !sea.mem<!sea.ptr<64>, i8>
  %v4 = sea.mem.nondet "region.0" [4] : !sea.mem<!sea.ptr<64>, i8>
  %v5 = sea.mem.nondet "region.51" [5] : !sea.mem<!sea.ptr<64>, i8>
  %v6 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v7 = sea.mem.fill %v4[%v6], dense<[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255]> : tensor<256xi8> inplace : !sea.mem<!sea.ptr<64>, i8>
  %v8 = sea.const 16 : i64
  %v9 = sea.alloca %v8 align 8 [6] : i64 -> !sea.ptr<64>
  %v10 = sea.const 16 : i64
  %v11 = sea.alloca %v10 align 8 [7] : i64 -> !sea.ptr<64>
  %v12 = sea.const 16 : i64
  %v13 = sea.alloca %v12 align 8 [8] : i64 -> !sea.ptr<64>
  %v14 = sea.const 16 : i64
  %v15 = sea.alloca %v14 align 8 [9] : i64 -> !sea.ptr<64>
  %v16 = sea.nondet "nd_size_t" [10] : i64 loc(callsite("seahorn/lib/byte_buf_helper.c":31:19 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":13:5))
  sea.br ^bb1
^bb1:
  %v17 = sea.store %v0[%v9], %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc(callsite("seahorn/lib/byte_buf_helper.c":31:17 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":13:5))
  sea.br ^bb2
^bb2:
  %v18 = sea.const 11 : i64 loc(callsite("seahorn/lib/byte_buf_helper.c":33:24 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":13:5))
  %v19 = sea.icmp ult, %v16, %v18 : i64 loc(callsite("seahorn/lib/byte_buf_helper.c":33:24 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":13:5))
  sea.assume %v19 loc(callsite("seahorn/lib/byte_buf_helper.c":33:5 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":13:5))
  %v20 = sea.nondet "nd_malloc_is_fail" [11] : i1 loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":13:5)))))
  %v21 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":13:5)))))
  sea.cond_br %v20, ^bb4(%v5, %v21 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":13:5)))))
^bb3:
  %v22 = sea.const 10 : i64 loc("malloc.i5")
  %v23 = sea.alloca %v22 align 16 [12] : i64 -> !sea.ptr<64> loc("malloc.i5")
  sea.br ^bb4(%v5, %v23 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":13:5)))))
^bb4(%v24 : !sea.mem<!sea.ptr<64>, i8>, %v25 : !sea.ptr<64>):
  %v26 = sea.const 10 : i64 loc(callsite("seahorn/lib/sea_allocators.c":33:3 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":13:5))))
  %v27 = sea.memhavoc %v24[%v25], %v26 [13] inplace : !sea.mem<!sea.ptr<64>, i8> loc(callsite("seahorn/lib/sea_allocators.c":33:3 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":13:5))))
  %v28 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("seahorn/lib/byte_buf_helper.c":34:13 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":13:5))
  sea.br ^bb5
^bb5:
  %v29 = sea.store %v17[%v28], %v25 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc(callsite("seahorn/lib/byte_buf_helper.c":34:17 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":13:5))
  sea.br ^bb6
^bb6:
  %v30 = sea.const 0 : i64 loc(callsite("aws-c-common/source/byte_buf.c":66:26 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":17:12))
  %v31 = sea.icmp eq, %v16, %v30 : i64 loc(callsite("aws-c-common/source/byte_buf.c":66:26 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":17:12))
  %v32 = sea.const 1 : i1 loc(callsite("aws-c-common/source/byte_buf.c":66:32 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":17:12))
  sea.cond_br %v31, ^bb12(%v32 : i1), ^bb7 loc(callsite("aws-c-common/source/byte_buf.c":66:32 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":17:12))
^bb7:
  sea.br ^bb8
^bb8:
  sea.br ^bb9
^bb9:
  %v33 = sea.ptr.null : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":66:55 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":17:12))
  %v34 = sea.ptr.cmp eq, %v25, %v33 : !sea.ptr<64> loc(".not2.i35.i"(callsite("aws-c-common/source/byte_buf.c":66:55 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":17:12)))
  %v35 = sea.const 0 : i1 loc(callsite("aws-c-common/source/byte_buf.c":66:67 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":17:12))
  sea.cond_br %v34, ^bb12(%v35 : i1), ^bb10 loc(callsite("aws-c-common/source/byte_buf.c":66:67 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":17:12))
^bb10:
  sea.br ^bb11
^bb11:
  %v36 = sea.const 1 : i1
  sea.br ^bb12(%v36 : i1)
^bb12(%v37 : i1):
  sea.assume %v37 loc("seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":17:5)
  %v38 = sea.nondet "nd_bool" [14] : i1 loc("seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":18:9)
  sea.cond_br %v38, ^bb26, ^bb13 loc("seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":18:9)
^bb13:
  %v39 = sea.nondet "nd_size_t" [15] : i64 loc(callsite("seahorn/lib/byte_buf_helper.c":31:19 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":21:9))
  sea.br ^bb14
^bb14:
  %v40 = sea.store %v1[%v11], %v39 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc(callsite("seahorn/lib/byte_buf_helper.c":31:17 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":21:9))
  sea.br ^bb15
^bb15:
  %v41 = sea.const 11 : i64 loc(callsite("seahorn/lib/byte_buf_helper.c":33:24 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":21:9))
  %v42 = sea.icmp ult, %v39, %v41 : i64 loc(callsite("seahorn/lib/byte_buf_helper.c":33:24 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":21:9))
  sea.assume %v42 loc(callsite("seahorn/lib/byte_buf_helper.c":33:5 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":21:9))
  %v43 = sea.nondet "nd_malloc_is_fail" [16] : i1 loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":21:9)))))
  %v44 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":21:9)))))
  sea.cond_br %v43, ^bb17(%v27, %v44 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb16 loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":21:9)))))
^bb16:
  %v45 = sea.const 10 : i64 loc("malloc50.i6")
  %v46 = sea.alloca %v45 align 16 [17] : i64 -> !sea.ptr<64> loc("malloc50.i6")
  sea.br ^bb17(%v27, %v46 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":21:9)))))
^bb17(%v47 : !sea.mem<!sea.ptr<64>, i8>, %v48 : !sea.ptr<64>):
  %v49 = sea.const 10 : i64 loc(callsite("seahorn/lib/sea_allocators.c":33:3 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":21:9))))
  %v50 = sea.memhavoc %v47[%v48], %v49 [18] inplace : !sea.mem<!sea.ptr<64>, i8> loc(callsite("seahorn/lib/sea_allocators.c":33:3 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":21:9))))
  %v51 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("seahorn/lib/byte_buf_helper.c":34:13 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":21:9))
  sea.br ^bb18
^bb18:
  %v52 = sea.store %v40[%v51], %v48 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc(callsite("seahorn/lib/byte_buf_helper.c":34:17 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":21:9))
  sea.br ^bb19
^bb19:
  %v53 = sea.const 0 : i64 loc(callsite("aws-c-common/source/byte_buf.c":66:26 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":22:16))
  %v54 = sea.icmp eq, %v39, %v53 : i64 loc(callsite("aws-c-common/source/byte_buf.c":66:26 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":22:16))
  %v55 = sea.const 1 : i1 loc(callsite("aws-c-common/source/byte_buf.c":66:32 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":22:16))
  sea.cond_br %v54, ^bb25(%v55 : i1), ^bb20 loc(callsite("aws-c-common/source/byte_buf.c":66:32 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":22:16))
^bb20:
  sea.br ^bb21
^bb21:
  sea.br ^bb22
^bb22:
  %v56 = sea.ptr.null : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":66:55 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":22:16))
  %v57 = sea.ptr.cmp eq, %v48, %v56 : !sea.ptr<64> loc(".not2.i31.i"(callsite("aws-c-common/source/byte_buf.c":66:55 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":22:16)))
  %v58 = sea.const 0 : i1 loc(callsite("aws-c-common/source/byte_buf.c":66:67 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":22:16))
  sea.cond_br %v57, ^bb25(%v58 : i1), ^bb23 loc(callsite("aws-c-common/source/byte_buf.c":66:67 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":22:16))
^bb23:
  sea.br ^bb24
^bb24:
  %v59 = sea.const 1 : i1
  sea.br ^bb25(%v59 : i1)
^bb25(%v60 : i1):
  sea.assume %v60 loc("seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":22:9)
  sea.br ^bb27(%v50, %v39, %v48 : !sea.mem<!sea.ptr<64>, i8>, i64, !sea.ptr<64>)
^bb26:
  %v61 = sea.store %v1[%v11], %v16 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":19:15)
  %v62 = sea.ptr.index %v11 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":19:15))
  %v63 = sea.store %v61[%v62], %v25 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":19:15)
  sea.br ^bb27(%v27, %v16, %v25 : !sea.mem<!sea.ptr<64>, i8>, i64, !sea.ptr<64>) loc("seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":20:5)
^bb27(%v64 : !sea.mem<!sea.ptr<64>, i8>, %v65 : i64, %v66 : !sea.ptr<64>):
  %v67 = sea.nondet "nd_size_t" [19] : i64 loc(callsite("seahorn/lib/utils.c":46:20 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":28:5))
  sea.br ^bb28
^bb28:
  %v68 = sea.store %v2[%v13], %v67 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc(callsite("seahorn/lib/utils.c":46:18 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":28:5))
  %v69 = sea.const 0 : i64 loc(callsite("seahorn/lib/utils.c":47:12 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":28:5))
  %v70 = sea.icmp ne, %v16, %v69 : i64 loc(callsite("seahorn/lib/utils.c":47:12 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":28:5))
  %v71 = sea.ptr.null : !sea.ptr<64>
  %v72 = sea.ptr.cmp ne, %v25, %v71 : !sea.ptr<64>
  %v73 = sea.and %v70, %v72 : i1 loc("or.cond.i.i"(callsite("seahorn/lib/utils.c":47:16 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":28:5)))
  sea.cond_br %v73, ^bb31, ^bb29 loc(callsite("seahorn/lib/utils.c":47:16 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":28:5))
^bb29:
  %v74 = sea.nondet "nd_uint8_t" [20] : i8 loc(callsite("seahorn/lib/utils.c":51:21 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":28:5))
  %v75 = sea.ptr.index %v13 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("seahorn/lib/utils.c":51:14 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":28:5))
  sea.br ^bb30
^bb30:
  %v76 = sea.store %v68[%v75], %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc(callsite("seahorn/lib/utils.c":51:19 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":28:5))
  sea.br ^bb36(%v74 : i8)
^bb31:
  sea.br ^bb32
^bb32:
  %v77 = sea.icmp ult, %v67, %v16 : i64 loc(callsite("seahorn/lib/utils.c":48:27 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":28:5))
  sea.assume %v77 loc(callsite("seahorn/lib/utils.c":48:5 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":28:5))
  sea.br ^bb33
^bb33:
  %v78 = sea.ptr.index %v25 [%v67] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":28:5))
  %v79 = sea.const 1 : i64 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":28:5))
  %v80 = sea.ptr.dereferenceable %v78, %v79 : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":28:5))
  sea.cond_br %v80, ^bb34, ^bb134
^bb34:
  %v81 = sea.load %v64[%v78] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":28:5))
  %v82 = sea.ptr.index %v13 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("seahorn/lib/utils.c":49:14 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":28:5))
  sea.br ^bb35
^bb35:
  %v83 = sea.store %v68[%v82], %v81 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc(callsite("seahorn/lib/utils.c":49:19 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":28:5))
  sea.br ^bb36(%v81 : i8) loc(callsite("seahorn/lib/utils.c":50:3 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":28:5))
^bb36(%v84 : i8):
  %v85 = sea.nondet "nd_size_t" [21] : i64 loc(callsite("seahorn/lib/utils.c":46:20 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":31:5))
  sea.br ^bb37
^bb37:
  %v86 = sea.store %v3[%v15], %v85 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc(callsite("seahorn/lib/utils.c":46:18 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":31:5))
  %v87 = sea.const 0 : i64 loc(callsite("seahorn/lib/utils.c":47:12 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":31:5))
  %v88 = sea.icmp ne, %v65, %v87 : i64 loc(callsite("seahorn/lib/utils.c":47:12 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":31:5))
  %v89 = sea.ptr.null : !sea.ptr<64>
  %v90 = sea.ptr.cmp ne, %v66, %v89 : !sea.ptr<64>
  %v91 = sea.and %v88, %v90 : i1 loc("or.cond.i45.i"(callsite("seahorn/lib/utils.c":47:16 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":31:5)))
  sea.cond_br %v91, ^bb40, ^bb38 loc(callsite("seahorn/lib/utils.c":47:16 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":31:5))
^bb38:
  %v92 = sea.nondet "nd_uint8_t" [22] : i8 loc(callsite("seahorn/lib/utils.c":51:21 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":31:5))
  %v93 = sea.ptr.index %v15 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("seahorn/lib/utils.c":51:14 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":31:5))
  sea.br ^bb39
^bb39:
  %v94 = sea.store %v86[%v93], %v92 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc(callsite("seahorn/lib/utils.c":51:19 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":31:5))
  sea.br ^bb45(%v92 : i8)
^bb40:
  sea.br ^bb41
^bb41:
  %v95 = sea.icmp ult, %v85, %v65 : i64 loc(callsite("seahorn/lib/utils.c":48:27 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":31:5))
  sea.assume %v95 loc(callsite("seahorn/lib/utils.c":48:5 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":31:5))
  sea.br ^bb42
^bb42:
  %v96 = sea.ptr.index %v66 [%v85] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":31:5))
  %v97 = sea.const 1 : i64 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":31:5))
  %v98 = sea.ptr.dereferenceable %v96, %v97 : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":31:5))
  sea.cond_br %v98, ^bb43, ^bb134
^bb43:
  %v99 = sea.load %v64[%v96] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("seahorn/lib/utils.c":49:21 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":31:5))
  %v100 = sea.ptr.index %v15 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("seahorn/lib/utils.c":49:14 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":31:5))
  sea.br ^bb44
^bb44:
  %v101 = sea.store %v86[%v100], %v99 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc(callsite("seahorn/lib/utils.c":49:19 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":31:5))
  sea.br ^bb45(%v99 : i8) loc(callsite("seahorn/lib/utils.c":50:3 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":31:5))
^bb45(%v102 : i8):
  sea.br ^bb46
^bb46:
  sea.br ^bb47
^bb47:
  sea.br ^bb48
^bb48:
  sea.br ^bb49
^bb49:
  %v103 = sea.icmp eq, %v16, %v65 : i64 loc(".not.i.i.i"(callsite("aws-c-common/source/byte_buf.c":404:15 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9))))
  sea.cond_br %v103, ^bb50, ^bb93 loc(callsite("aws-c-common/source/byte_buf.c":404:9 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
^bb50:
  sea.cond_br %v31, ^bb92, ^bb51 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
^bb51:
  %v104 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v105 = sea.ptr.dereferenceable %v25, %v104 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  sea.cond_br %v105, ^bb52, ^bb134
^bb52:
  %v106 = sea.load %v64[%v25] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v107 = sea.zext %v106 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v108 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v109 = sea.ptr.index %v108 [%v107] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v110 = sea.load %v7[%v109] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v111 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v112 = sea.ptr.dereferenceable %v66, %v111 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  sea.cond_br %v112, ^bb53, ^bb134
^bb53:
  %v113 = sea.load %v64[%v66] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v114 = sea.zext %v113 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v115 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v116 = sea.ptr.index %v115 [%v114] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v117 = sea.load %v7[%v116] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v118 = sea.icmp eq, %v110, %v117 : i8 loc(".not3.i.i.i"(callsite("aws-c-common/source/byte_buf.c":411:41 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9))))
  sea.cond_br %v118, ^bb54, ^bb93 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
^bb54:
  %v119 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v120 = sea.icmp eq, %v16, %v119 : i64 loc("exitcond.not"(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9))))
  sea.cond_br %v120, ^bb92, ^bb55 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
^bb55:
  %v121 = sea.ptr.index %v25 [] strides [] offset 1 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v122 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v123 = sea.ptr.dereferenceable %v121, %v122 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  sea.cond_br %v123, ^bb56, ^bb134
^bb56:
  %v124 = sea.load %v64[%v121] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v125 = sea.zext %v124 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v126 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v127 = sea.ptr.index %v126 [%v125] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v128 = sea.load %v7[%v127] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v129 = sea.ptr.index %v66 [] strides [] offset 1 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v130 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v131 = sea.ptr.dereferenceable %v129, %v130 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  sea.cond_br %v131, ^bb57, ^bb134
^bb57:
  %v132 = sea.load %v64[%v129] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v133 = sea.zext %v132 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v134 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v135 = sea.ptr.index %v134 [%v133] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v136 = sea.load %v7[%v135] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v137 = sea.icmp eq, %v128, %v136 : i8 loc(".not3.i.i.i.1"(callsite("aws-c-common/source/byte_buf.c":411:41 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9))))
  sea.cond_br %v137, ^bb58, ^bb93 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
^bb58:
  %v138 = sea.const 2 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v139 = sea.icmp eq, %v16, %v138 : i64 loc("exitcond.not.1"(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9))))
  sea.cond_br %v139, ^bb92, ^bb59 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
^bb59:
  %v140 = sea.ptr.index %v25 [] strides [] offset 2 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v141 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v142 = sea.ptr.dereferenceable %v140, %v141 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  sea.cond_br %v142, ^bb60, ^bb134
^bb60:
  %v143 = sea.load %v64[%v140] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v144 = sea.zext %v143 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v145 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v146 = sea.ptr.index %v145 [%v144] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v147 = sea.load %v7[%v146] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v148 = sea.ptr.index %v66 [] strides [] offset 2 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v149 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v150 = sea.ptr.dereferenceable %v148, %v149 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  sea.cond_br %v150, ^bb61, ^bb134
^bb61:
  %v151 = sea.load %v64[%v148] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v152 = sea.zext %v151 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v153 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v154 = sea.ptr.index %v153 [%v152] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v155 = sea.load %v7[%v154] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v156 = sea.icmp eq, %v147, %v155 : i8 loc(".not3.i.i.i.2"(callsite("aws-c-common/source/byte_buf.c":411:41 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9))))
  sea.cond_br %v156, ^bb62, ^bb93 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
^bb62:
  %v157 = sea.const 3 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v158 = sea.icmp eq, %v16, %v157 : i64 loc("exitcond.not.2"(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9))))
  sea.cond_br %v158, ^bb92, ^bb63 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
^bb63:
  %v159 = sea.ptr.index %v25 [] strides [] offset 3 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v160 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v161 = sea.ptr.dereferenceable %v159, %v160 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  sea.cond_br %v161, ^bb64, ^bb134
^bb64:
  %v162 = sea.load %v64[%v159] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v163 = sea.zext %v162 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v164 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v165 = sea.ptr.index %v164 [%v163] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v166 = sea.load %v7[%v165] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v167 = sea.ptr.index %v66 [] strides [] offset 3 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v168 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v169 = sea.ptr.dereferenceable %v167, %v168 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  sea.cond_br %v169, ^bb65, ^bb134
^bb65:
  %v170 = sea.load %v64[%v167] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v171 = sea.zext %v170 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v172 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v173 = sea.ptr.index %v172 [%v171] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v174 = sea.load %v7[%v173] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v175 = sea.icmp eq, %v166, %v174 : i8 loc(".not3.i.i.i.3"(callsite("aws-c-common/source/byte_buf.c":411:41 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9))))
  sea.cond_br %v175, ^bb66, ^bb93 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
^bb66:
  %v176 = sea.const 4 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v177 = sea.icmp eq, %v16, %v176 : i64 loc("exitcond.not.3"(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9))))
  sea.cond_br %v177, ^bb92, ^bb67 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
^bb67:
  %v178 = sea.ptr.index %v25 [] strides [] offset 4 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v179 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v180 = sea.ptr.dereferenceable %v178, %v179 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  sea.cond_br %v180, ^bb68, ^bb134
^bb68:
  %v181 = sea.load %v64[%v178] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v182 = sea.zext %v181 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v183 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v184 = sea.ptr.index %v183 [%v182] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v185 = sea.load %v7[%v184] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v186 = sea.ptr.index %v66 [] strides [] offset 4 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v187 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v188 = sea.ptr.dereferenceable %v186, %v187 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  sea.cond_br %v188, ^bb69, ^bb134
^bb69:
  %v189 = sea.load %v64[%v186] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v190 = sea.zext %v189 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v191 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v192 = sea.ptr.index %v191 [%v190] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v193 = sea.load %v7[%v192] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v194 = sea.icmp eq, %v185, %v193 : i8 loc(".not3.i.i.i.4"(callsite("aws-c-common/source/byte_buf.c":411:41 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9))))
  sea.cond_br %v194, ^bb70, ^bb93 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
^bb70:
  %v195 = sea.const 5 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v196 = sea.icmp eq, %v16, %v195 : i64 loc("exitcond.not.4"(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9))))
  sea.cond_br %v196, ^bb92, ^bb71 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
^bb71:
  %v197 = sea.ptr.index %v25 [] strides [] offset 5 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v198 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v199 = sea.ptr.dereferenceable %v197, %v198 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  sea.cond_br %v199, ^bb72, ^bb134
^bb72:
  %v200 = sea.load %v64[%v197] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v201 = sea.zext %v200 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v202 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v203 = sea.ptr.index %v202 [%v201] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v204 = sea.load %v7[%v203] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v205 = sea.ptr.index %v66 [] strides [] offset 5 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v206 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v207 = sea.ptr.dereferenceable %v205, %v206 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  sea.cond_br %v207, ^bb73, ^bb134
^bb73:
  %v208 = sea.load %v64[%v205] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v209 = sea.zext %v208 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v210 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v211 = sea.ptr.index %v210 [%v209] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v212 = sea.load %v7[%v211] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v213 = sea.icmp eq, %v204, %v212 : i8 loc(".not3.i.i.i.5"(callsite("aws-c-common/source/byte_buf.c":411:41 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9))))
  sea.cond_br %v213, ^bb74, ^bb93 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
^bb74:
  %v214 = sea.const 6 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v215 = sea.icmp eq, %v16, %v214 : i64 loc("exitcond.not.5"(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9))))
  sea.cond_br %v215, ^bb92, ^bb75 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
^bb75:
  %v216 = sea.ptr.index %v25 [] strides [] offset 6 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v217 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v218 = sea.ptr.dereferenceable %v216, %v217 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  sea.cond_br %v218, ^bb76, ^bb134
^bb76:
  %v219 = sea.load %v64[%v216] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v220 = sea.zext %v219 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v221 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v222 = sea.ptr.index %v221 [%v220] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v223 = sea.load %v7[%v222] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v224 = sea.ptr.index %v66 [] strides [] offset 6 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v225 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v226 = sea.ptr.dereferenceable %v224, %v225 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  sea.cond_br %v226, ^bb77, ^bb134
^bb77:
  %v227 = sea.load %v64[%v224] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v228 = sea.zext %v227 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v229 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v230 = sea.ptr.index %v229 [%v228] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v231 = sea.load %v7[%v230] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v232 = sea.icmp eq, %v223, %v231 : i8 loc(".not3.i.i.i.6"(callsite("aws-c-common/source/byte_buf.c":411:41 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9))))
  sea.cond_br %v232, ^bb78, ^bb93 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
^bb78:
  %v233 = sea.const 7 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v234 = sea.icmp eq, %v16, %v233 : i64 loc("exitcond.not.6"(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9))))
  sea.cond_br %v234, ^bb92, ^bb79 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
^bb79:
  %v235 = sea.ptr.index %v25 [] strides [] offset 7 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v236 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v237 = sea.ptr.dereferenceable %v235, %v236 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  sea.cond_br %v237, ^bb80, ^bb134
^bb80:
  %v238 = sea.load %v64[%v235] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v239 = sea.zext %v238 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v240 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v241 = sea.ptr.index %v240 [%v239] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v242 = sea.load %v7[%v241] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v243 = sea.ptr.index %v66 [] strides [] offset 7 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v244 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v245 = sea.ptr.dereferenceable %v243, %v244 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  sea.cond_br %v245, ^bb81, ^bb134
^bb81:
  %v246 = sea.load %v64[%v243] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v247 = sea.zext %v246 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v248 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v249 = sea.ptr.index %v248 [%v247] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v250 = sea.load %v7[%v249] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v251 = sea.icmp eq, %v242, %v250 : i8 loc(".not3.i.i.i.7"(callsite("aws-c-common/source/byte_buf.c":411:41 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9))))
  sea.cond_br %v251, ^bb82, ^bb93 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
^bb82:
  %v252 = sea.const 8 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v253 = sea.icmp eq, %v16, %v252 : i64 loc("exitcond.not.7"(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9))))
  sea.cond_br %v253, ^bb92, ^bb83 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
^bb83:
  %v254 = sea.ptr.index %v25 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v255 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v256 = sea.ptr.dereferenceable %v254, %v255 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  sea.cond_br %v256, ^bb84, ^bb134
^bb84:
  %v257 = sea.load %v64[%v254] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v258 = sea.zext %v257 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v259 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v260 = sea.ptr.index %v259 [%v258] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v261 = sea.load %v7[%v260] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v262 = sea.ptr.index %v66 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v263 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v264 = sea.ptr.dereferenceable %v262, %v263 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  sea.cond_br %v264, ^bb85, ^bb134
^bb85:
  %v265 = sea.load %v64[%v262] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v266 = sea.zext %v265 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v267 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v268 = sea.ptr.index %v267 [%v266] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v269 = sea.load %v7[%v268] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v270 = sea.icmp eq, %v261, %v269 : i8 loc(".not3.i.i.i.8"(callsite("aws-c-common/source/byte_buf.c":411:41 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9))))
  sea.cond_br %v270, ^bb86, ^bb93 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
^bb86:
  %v271 = sea.const 9 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v272 = sea.icmp eq, %v16, %v271 : i64 loc("exitcond.not.8"(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9))))
  sea.cond_br %v272, ^bb92, ^bb87 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
^bb87:
  %v273 = sea.ptr.index %v25 [] strides [] offset 9 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v274 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v275 = sea.ptr.dereferenceable %v273, %v274 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  sea.cond_br %v275, ^bb88, ^bb134
^bb88:
  %v276 = sea.load %v64[%v273] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v277 = sea.zext %v276 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v278 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v279 = sea.ptr.index %v278 [%v277] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v280 = sea.load %v7[%v279] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v281 = sea.ptr.index %v66 [] strides [] offset 9 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v282 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v283 = sea.ptr.dereferenceable %v281, %v282 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  sea.cond_br %v283, ^bb89, ^bb134
^bb89:
  %v284 = sea.load %v64[%v281] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v285 = sea.zext %v284 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v286 = sea.global @"s_tolower_table" size 256 align 16 : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v287 = sea.ptr.index %v286 [%v285] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v288 = sea.load %v7[%v287] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v289 = sea.icmp eq, %v280, %v288 : i8 loc(".not3.i.i.i.9"(callsite("aws-c-common/source/byte_buf.c":411:41 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9))))
  sea.cond_br %v289, ^bb90, ^bb93 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
^bb90:
  %v290 = sea.const 10 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v291 = sea.icmp eq, %v16, %v290 : i64 loc("exitcond.not.9"(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9))))
  sea.cond_br %v291, ^bb92, ^bb91 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
^bb91:
  %v292 = sea.ptr.index %v25 [] strides [] offset 10 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v293 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v294 = sea.ptr.dereferenceable %v292, %v293 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":34:9)))
  %v295 = sea.const 1 : i1
  %v296 = sea.xor %v294, %v295 : i1
  sea.assume %v296
  sea.br ^bb134
^bb92:
  sea.br ^bb93
^bb93:
  sea.br ^bb94
^bb94:
  %v297 = sea.const 1 : i1 loc(callsite("aws-c-common/source/byte_buf.c":66:32 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":39:5))
  sea.cond_br %v31, ^bb100(%v297 : i1), ^bb95 loc(callsite("aws-c-common/source/byte_buf.c":66:32 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":39:5))
^bb95:
  sea.br ^bb96
^bb96:
  sea.br ^bb97
^bb97:
  %v298 = sea.ptr.null : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":66:55 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":39:5))
  %v299 = sea.ptr.cmp eq, %v25, %v298 : !sea.ptr<64> loc(".not2.i27.i"(callsite("aws-c-common/source/byte_buf.c":66:55 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":39:5)))
  %v300 = sea.const 0 : i1 loc(callsite("aws-c-common/source/byte_buf.c":66:67 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":39:5))
  sea.cond_br %v299, ^bb100(%v300 : i1), ^bb98 loc(callsite("aws-c-common/source/byte_buf.c":66:67 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":39:5))
^bb98:
  sea.br ^bb99
^bb99:
  %v301 = sea.const 1 : i1
  sea.br ^bb100(%v301 : i1)
^bb100(%v302 : i1):
  sea.br ^bb101
^bb101:
  sea.cond_br %v31, ^bb106, ^bb102 loc(callsite("aws-c-common/source/byte_buf.c":66:32 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":39:5))
^bb102:
  sea.br ^bb103
^bb103:
  %v303 = sea.const 1 : i1
  %v304 = sea.and %v72, %v303 : i1 loc("or.cond19.not")
  sea.cond_br %v304, ^bb104, ^bb134
^bb104:
  sea.br ^bb105
^bb105:
  sea.br ^bb106
^bb106:
  sea.br ^bb107
^bb107:
  %v305 = sea.const 0 : i64 loc(callsite("aws-c-common/source/byte_buf.c":66:26 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":40:5))
  %v306 = sea.icmp eq, %v65, %v305 : i64 loc(callsite("aws-c-common/source/byte_buf.c":66:26 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":40:5))
  %v307 = sea.const 1 : i1 loc(callsite("aws-c-common/source/byte_buf.c":66:32 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":40:5))
  sea.cond_br %v306, ^bb113(%v307 : i1), ^bb108 loc(callsite("aws-c-common/source/byte_buf.c":66:32 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":40:5))
^bb108:
  sea.br ^bb109
^bb109:
  sea.br ^bb110
^bb110:
  %v308 = sea.ptr.null : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":66:55 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":40:5))
  %v309 = sea.ptr.cmp eq, %v66, %v308 : !sea.ptr<64> loc(".not2.i19.i"(callsite("aws-c-common/source/byte_buf.c":66:55 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":40:5)))
  %v310 = sea.const 0 : i1 loc(callsite("aws-c-common/source/byte_buf.c":66:67 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":40:5))
  sea.cond_br %v309, ^bb113(%v310 : i1), ^bb111 loc(callsite("aws-c-common/source/byte_buf.c":66:67 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":40:5))
^bb111:
  sea.br ^bb112
^bb112:
  %v311 = sea.const 1 : i1
  sea.br ^bb113(%v311 : i1)
^bb113(%v312 : i1):
  sea.br ^bb114
^bb114:
  sea.cond_br %v306, ^bb119, ^bb115 loc(callsite("aws-c-common/source/byte_buf.c":66:32 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":40:5))
^bb115:
  sea.br ^bb116
^bb116:
  %v313 = sea.const 1 : i1
  %v314 = sea.and %v90, %v313 : i1 loc("or.cond23.not")
  sea.cond_br %v314, ^bb117, ^bb134
^bb117:
  sea.br ^bb118
^bb118:
  sea.br ^bb119
^bb119:
  sea.cond_br %v31, ^bb127, ^bb120 loc("seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":41:9)
^bb120:
  %v315 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/utils.c":39:7 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":42:9))
  %v316 = sea.ptr.cmp eq, %v25, %v315 : !sea.ptr<64> loc(".not"(callsite("seahorn/lib/utils.c":39:7 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":42:9)))
  sea.cond_br %v316, ^bb127, ^bb121 loc(callsite("seahorn/lib/utils.c":39:14 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":42:9))
^bb121:
  sea.br ^bb122
^bb122:
  %v317 = sea.ptr.index %v25 [%v67] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":42:9))
  %v318 = sea.const 1 : i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":42:9))
  %v319 = sea.ptr.dereferenceable %v317, %v318 : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":42:9))
  sea.cond_br %v319, ^bb123, ^bb134
^bb123:
  %v320 = sea.load %v64[%v317] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":42:9))
  sea.br ^bb124
^bb124:
  %v321 = sea.icmp eq, %v320, %v84 : i8 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":42:9))
  sea.br ^bb125
^bb125:
  %v322 = sea.const 1 : i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":42:9))
  %v323 = sea.ptr.dereferenceable %v317, %v322 : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":42:9))
  sea.cond_br %v323, ^bb126, ^bb134
^bb126:
  %v324 = sea.const 1 : i1
  %v325 = sea.const 0 : i1
  %v326 = sea.select %v324, %v321, %v325 : i1 loc("or.cond15")
  sea.cond_br %v326, ^bb127, ^bb134
^bb127:
  %v327 = sea.const 1 : i1 loc("seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":44:9)
  %v328 = sea.xor %v306, %v327 : i1 loc("seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":44:9)
  sea.assume %v328 loc("seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":44:9)
  sea.assume %v90 loc(callsite("seahorn/lib/utils.c":39:14 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":45:9))
  sea.br ^bb128
^bb128:
  %v329 = sea.ptr.index %v66 [%v85] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":45:9))
  %v330 = sea.const 1 : i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":45:9))
  %v331 = sea.ptr.dereferenceable %v329, %v330 : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":45:9))
  sea.cond_br %v331, ^bb129, ^bb134
^bb129:
  %v332 = sea.load %v64[%v329] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":45:9))
  sea.br ^bb130
^bb130:
  %v333 = sea.icmp eq, %v332, %v102 : i8 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":45:9))
  sea.br ^bb131
^bb131:
  %v334 = sea.const 1 : i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":45:9))
  %v335 = sea.ptr.dereferenceable %v329, %v334 : !sea.ptr<64>, i64 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":45:9))
  sea.cond_br %v335, ^bb132, ^bb134
^bb132:
  sea.br ^bb133
^bb133:
  %v336 = sea.const 1 : i1 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":45:9))
  %v337 = sea.xor %v333, %v336 : i1 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":45:9))
  sea.assume %v337 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":45:9))
  sea.br ^bb134 loc(callsite("seahorn/lib/utils.c":40:5 at "seahorn/jobs/byte_cursor_eq_ignore_case/aws_byte_cursor_eq_ignore_case_harness.c":45:9))
^bb134:
  sea.br ^bb135
^bb135:
  %v338 = sea.const 0 : i1
  sea.assert %v338
  sea.halt
}
