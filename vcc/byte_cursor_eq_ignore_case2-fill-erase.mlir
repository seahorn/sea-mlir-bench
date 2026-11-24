// Exported from SeaHorn (byte_cursor_eq_ignore_case2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %mem = seaimp.var "mem" [0] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>
  %v0 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  seaimp.mem.fill %mem[%v0], dense<[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255]> : tensor<256xi8> : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>
  %v1 = sea.const 16 : i64
  %v2 = seaimp.alloca %mem, %v1 align 8 [1] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>, i64 -> !sea.ptr<64>
  %v3 = sea.const 16 : i64
  %v4 = seaimp.alloca %mem, %v3 align 8 [2] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>, i64 -> !sea.ptr<64>
  %v5 = sea.nondet "nd_size_t" [3] : i64 loc(callsite("seahorn/lib/byte_buf_helper.c":31:19 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":13:5))
  sea.br ^bb1
^bb1:
  seaimp.store %mem[%v2], %v5 align 8 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>, i64 loc(callsite("seahorn/lib/byte_buf_helper.c":31:17 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":13:5))
  sea.br ^bb2
^bb2:
  %v6 = sea.const 11 : i64 loc(callsite("seahorn/lib/byte_buf_helper.c":33:24 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":13:5))
  %v7 = sea.icmp ult, %v5, %v6 : i64 loc(callsite("seahorn/lib/byte_buf_helper.c":33:24 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":13:5))
  sea.assume %v7 loc(callsite("seahorn/lib/byte_buf_helper.c":33:5 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":13:5))
  %v8 = sea.nondet "nd_malloc_is_fail" [4] : i1 loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":13:5)))))
  %v9 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":13:5)))))
  sea.cond_br %v8, ^bb4(%v9 : !sea.ptr<64>), ^bb3 loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":13:5)))))
^bb3:
  %v10 = sea.const 10 : i64 loc("malloc.i1")
  %v11 = seaimp.alloca %mem, %v10 align 16 [5] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>, i64 -> !sea.ptr<64> loc("malloc.i1")
  sea.br ^bb4(%v11 : !sea.ptr<64>) loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":13:5)))))
^bb4(%v12 : !sea.ptr<64>):
  %v13 = sea.const 10 : i64 loc(callsite("seahorn/lib/sea_allocators.c":33:3 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":13:5))))
  seaimp.memhavoc %mem[%v12], %v13 [6] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> loc(callsite("seahorn/lib/sea_allocators.c":33:3 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":13:5))))
  %v14 = sea.ptr.index %v2 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("seahorn/lib/byte_buf_helper.c":34:13 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":13:5))
  sea.br ^bb5
^bb5:
  seaimp.store %mem[%v14], %v12 align 8 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>, !sea.ptr<64> loc(callsite("seahorn/lib/byte_buf_helper.c":34:17 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":13:5))
  sea.br ^bb6
^bb6:
  %v15 = sea.const 0 : i64 loc(callsite("aws-c-common/source/byte_buf.c":66:26 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":17:12))
  %v16 = sea.icmp eq, %v5, %v15 : i64 loc(callsite("aws-c-common/source/byte_buf.c":66:26 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":17:12))
  %v17 = sea.const 1 : i1 loc(callsite("aws-c-common/source/byte_buf.c":66:32 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":17:12))
  sea.cond_br %v16, ^bb12(%v17 : i1), ^bb7 loc(callsite("aws-c-common/source/byte_buf.c":66:32 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":17:12))
^bb7:
  sea.br ^bb8
^bb8:
  sea.br ^bb9
^bb9:
  %v18 = sea.ptr.null : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":66:55 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":17:12))
  %v19 = sea.ptr.cmp eq, %v12, %v18 : !sea.ptr<64> loc(".not2.i23.i"(callsite("aws-c-common/source/byte_buf.c":66:55 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":17:12)))
  %v20 = sea.const 0 : i1 loc(callsite("aws-c-common/source/byte_buf.c":66:67 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":17:12))
  sea.cond_br %v19, ^bb12(%v20 : i1), ^bb10 loc(callsite("aws-c-common/source/byte_buf.c":66:67 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":17:12))
^bb10:
  sea.br ^bb11
^bb11:
  %v21 = sea.const 1 : i1
  sea.br ^bb12(%v21 : i1)
^bb12(%v22 : i1):
  sea.assume %v22 loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":17:5)
  %v23 = sea.nondet "nd_bool" [7] : i1 loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":18:9)
  sea.cond_br %v23, ^bb26, ^bb13 loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":18:9)
^bb13:
  %v24 = sea.nondet "nd_size_t" [8] : i64 loc(callsite("seahorn/lib/byte_buf_helper.c":31:19 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":21:9))
  sea.br ^bb14
^bb14:
  seaimp.store %mem[%v4], %v24 align 8 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>, i64 loc(callsite("seahorn/lib/byte_buf_helper.c":31:17 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":21:9))
  sea.br ^bb15
^bb15:
  %v25 = sea.const 11 : i64 loc(callsite("seahorn/lib/byte_buf_helper.c":33:24 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":21:9))
  %v26 = sea.icmp ult, %v24, %v25 : i64 loc(callsite("seahorn/lib/byte_buf_helper.c":33:24 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":21:9))
  sea.assume %v26 loc(callsite("seahorn/lib/byte_buf_helper.c":33:5 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":21:9))
  %v27 = sea.nondet "nd_malloc_is_fail" [9] : i1 loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":21:9)))))
  %v28 = sea.ptr.null : !sea.ptr<64> loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":21:9)))))
  sea.cond_br %v27, ^bb17(%v28 : !sea.ptr<64>), ^bb16 loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":21:9)))))
^bb16:
  %v29 = sea.const 10 : i64 loc("malloc31.i2")
  %v30 = seaimp.alloca %mem, %v29 align 16 [10] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>, i64 -> !sea.ptr<64> loc("malloc31.i2")
  sea.br ^bb17(%v30 : !sea.ptr<64>) loc(callsite("seahorn/lib/sea_allocators.c":11:10 at callsite("seahorn/lib/sea_allocators.c":32:16 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":21:9)))))
^bb17(%v31 : !sea.ptr<64>):
  %v32 = sea.const 10 : i64 loc(callsite("seahorn/lib/sea_allocators.c":33:3 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":21:9))))
  seaimp.memhavoc %mem[%v31], %v32 [11] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> loc(callsite("seahorn/lib/sea_allocators.c":33:3 at callsite("seahorn/lib/proof_allocators.c":21:29 at callsite("seahorn/lib/byte_buf_helper.c":34:19 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":21:9))))
  %v33 = sea.ptr.index %v4 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("seahorn/lib/byte_buf_helper.c":34:13 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":21:9))
  sea.br ^bb18
^bb18:
  seaimp.store %mem[%v33], %v31 align 8 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>, !sea.ptr<64> loc(callsite("seahorn/lib/byte_buf_helper.c":34:17 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":21:9))
  sea.br ^bb19
^bb19:
  %v34 = sea.const 0 : i64 loc(callsite("aws-c-common/source/byte_buf.c":66:26 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":22:16))
  %v35 = sea.icmp eq, %v24, %v34 : i64 loc(callsite("aws-c-common/source/byte_buf.c":66:26 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":22:16))
  %v36 = sea.const 1 : i1 loc(callsite("aws-c-common/source/byte_buf.c":66:32 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":22:16))
  sea.cond_br %v35, ^bb25(%v36 : i1), ^bb20 loc(callsite("aws-c-common/source/byte_buf.c":66:32 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":22:16))
^bb20:
  sea.br ^bb21
^bb21:
  sea.br ^bb22
^bb22:
  %v37 = sea.ptr.null : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":66:55 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":22:16))
  %v38 = sea.ptr.cmp eq, %v31, %v37 : !sea.ptr<64> loc(".not2.i19.i"(callsite("aws-c-common/source/byte_buf.c":66:55 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":22:16)))
  %v39 = sea.const 0 : i1 loc(callsite("aws-c-common/source/byte_buf.c":66:67 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":22:16))
  sea.cond_br %v38, ^bb25(%v39 : i1), ^bb23 loc(callsite("aws-c-common/source/byte_buf.c":66:67 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":22:16))
^bb23:
  sea.br ^bb24
^bb24:
  %v40 = sea.const 1 : i1
  sea.br ^bb25(%v40 : i1)
^bb25(%v41 : i1):
  sea.assume %v41 loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":22:9)
  sea.br ^bb27(%v31 : !sea.ptr<64>)
^bb26:
  seaimp.store %mem[%v4], %v5 align 8 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>, i64 loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":19:15)
  %v42 = sea.ptr.index %v4 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("buffer.gep.pmcpy2.i"("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":19:15))
  seaimp.store %mem[%v42], %v12 align 8 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>>, !sea.ptr<64> loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":19:15)
  sea.br ^bb27(%v12 : !sea.ptr<64>) loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":20:5)
^bb27(%v43 : !sea.ptr<64>):
  sea.tracking_on loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":26:5)
  seaimp.reset_modified %mem[%v12] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":27:5)
  seaimp.reset_modified %mem[%v43] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":28:5)
  sea.br ^bb28
^bb28:
  sea.br ^bb29
^bb29:
  %v44 = seaimp.load %mem[%v2] align 8 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i64 loc(callsite("aws-c-common/source/byte_buf.c":368:51 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))
  sea.br ^bb30
^bb30:
  sea.br ^bb31
^bb31:
  %v45 = seaimp.load %mem[%v4] align 8 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i64 loc(callsite("aws-c-common/source/byte_buf.c":368:67 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))
  %v46 = sea.icmp eq, %v44, %v45 : i64 loc(".not.i.i.i"(callsite("aws-c-common/source/byte_buf.c":404:15 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))))
  sea.cond_br %v46, ^bb32, ^bb75 loc(callsite("aws-c-common/source/byte_buf.c":404:9 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
^bb32:
  %v47 = sea.const 0 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v48 = sea.icmp eq, %v44, %v47 : i64 loc(".not4.i.i.i.not17.not"(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))))
  sea.cond_br %v48, ^bb74, ^bb33 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
^bb33:
  %v49 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v50 = sea.ptr.dereferenceable %v12, %v49 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  sea.cond_br %v50, ^bb34, ^bb104
^bb34:
  %v51 = seaimp.load %mem[%v12] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v52 = sea.zext %v51 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v53 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v54 = sea.ptr.index %v53 [%v52] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v55 = seaimp.load %mem[%v54] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v56 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v57 = sea.ptr.dereferenceable %v43, %v56 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  sea.cond_br %v57, ^bb35, ^bb104
^bb35:
  %v58 = seaimp.load %mem[%v43] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v59 = sea.zext %v58 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v60 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v61 = sea.ptr.index %v60 [%v59] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v62 = seaimp.load %mem[%v61] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v63 = sea.icmp eq, %v55, %v62 : i8 loc(".not3.i.i.i"(callsite("aws-c-common/source/byte_buf.c":411:41 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))))
  sea.cond_br %v63, ^bb36, ^bb75 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
^bb36:
  %v64 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v65 = sea.icmp eq, %v44, %v64 : i64 loc("exitcond.not"(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))))
  sea.cond_br %v65, ^bb74, ^bb37 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
^bb37:
  %v66 = sea.ptr.index %v12 [] strides [] offset 1 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v67 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v68 = sea.ptr.dereferenceable %v66, %v67 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  sea.cond_br %v68, ^bb38, ^bb104
^bb38:
  %v69 = seaimp.load %mem[%v66] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v70 = sea.zext %v69 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v71 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v72 = sea.ptr.index %v71 [%v70] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v73 = seaimp.load %mem[%v72] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v74 = sea.ptr.index %v43 [] strides [] offset 1 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v75 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v76 = sea.ptr.dereferenceable %v74, %v75 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  sea.cond_br %v76, ^bb39, ^bb104
^bb39:
  %v77 = seaimp.load %mem[%v74] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v78 = sea.zext %v77 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v79 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v80 = sea.ptr.index %v79 [%v78] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v81 = seaimp.load %mem[%v80] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v82 = sea.icmp eq, %v73, %v81 : i8 loc(".not3.i.i.i.1"(callsite("aws-c-common/source/byte_buf.c":411:41 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))))
  sea.cond_br %v82, ^bb40, ^bb75 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
^bb40:
  %v83 = sea.const 2 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v84 = sea.icmp eq, %v44, %v83 : i64 loc("exitcond.not.1"(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))))
  sea.cond_br %v84, ^bb74, ^bb41 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
^bb41:
  %v85 = sea.ptr.index %v12 [] strides [] offset 2 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v86 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v87 = sea.ptr.dereferenceable %v85, %v86 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  sea.cond_br %v87, ^bb42, ^bb104
^bb42:
  %v88 = seaimp.load %mem[%v85] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v89 = sea.zext %v88 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v90 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v91 = sea.ptr.index %v90 [%v89] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v92 = seaimp.load %mem[%v91] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v93 = sea.ptr.index %v43 [] strides [] offset 2 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v94 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v95 = sea.ptr.dereferenceable %v93, %v94 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  sea.cond_br %v95, ^bb43, ^bb104
^bb43:
  %v96 = seaimp.load %mem[%v93] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v97 = sea.zext %v96 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v98 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v99 = sea.ptr.index %v98 [%v97] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v100 = seaimp.load %mem[%v99] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v101 = sea.icmp eq, %v92, %v100 : i8 loc(".not3.i.i.i.2"(callsite("aws-c-common/source/byte_buf.c":411:41 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))))
  sea.cond_br %v101, ^bb44, ^bb75 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
^bb44:
  %v102 = sea.const 3 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v103 = sea.icmp eq, %v44, %v102 : i64 loc("exitcond.not.2"(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))))
  sea.cond_br %v103, ^bb74, ^bb45 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
^bb45:
  %v104 = sea.ptr.index %v12 [] strides [] offset 3 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v105 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v106 = sea.ptr.dereferenceable %v104, %v105 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  sea.cond_br %v106, ^bb46, ^bb104
^bb46:
  %v107 = seaimp.load %mem[%v104] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v108 = sea.zext %v107 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v109 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v110 = sea.ptr.index %v109 [%v108] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v111 = seaimp.load %mem[%v110] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v112 = sea.ptr.index %v43 [] strides [] offset 3 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v113 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v114 = sea.ptr.dereferenceable %v112, %v113 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  sea.cond_br %v114, ^bb47, ^bb104
^bb47:
  %v115 = seaimp.load %mem[%v112] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v116 = sea.zext %v115 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v117 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v118 = sea.ptr.index %v117 [%v116] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v119 = seaimp.load %mem[%v118] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v120 = sea.icmp eq, %v111, %v119 : i8 loc(".not3.i.i.i.3"(callsite("aws-c-common/source/byte_buf.c":411:41 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))))
  sea.cond_br %v120, ^bb48, ^bb75 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
^bb48:
  %v121 = sea.const 4 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v122 = sea.icmp eq, %v44, %v121 : i64 loc("exitcond.not.3"(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))))
  sea.cond_br %v122, ^bb74, ^bb49 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
^bb49:
  %v123 = sea.ptr.index %v12 [] strides [] offset 4 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v124 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v125 = sea.ptr.dereferenceable %v123, %v124 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  sea.cond_br %v125, ^bb50, ^bb104
^bb50:
  %v126 = seaimp.load %mem[%v123] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v127 = sea.zext %v126 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v128 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v129 = sea.ptr.index %v128 [%v127] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v130 = seaimp.load %mem[%v129] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v131 = sea.ptr.index %v43 [] strides [] offset 4 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v132 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v133 = sea.ptr.dereferenceable %v131, %v132 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  sea.cond_br %v133, ^bb51, ^bb104
^bb51:
  %v134 = seaimp.load %mem[%v131] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v135 = sea.zext %v134 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v136 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v137 = sea.ptr.index %v136 [%v135] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v138 = seaimp.load %mem[%v137] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v139 = sea.icmp eq, %v130, %v138 : i8 loc(".not3.i.i.i.4"(callsite("aws-c-common/source/byte_buf.c":411:41 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))))
  sea.cond_br %v139, ^bb52, ^bb75 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
^bb52:
  %v140 = sea.const 5 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v141 = sea.icmp eq, %v44, %v140 : i64 loc("exitcond.not.4"(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))))
  sea.cond_br %v141, ^bb74, ^bb53 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
^bb53:
  %v142 = sea.ptr.index %v12 [] strides [] offset 5 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v143 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v144 = sea.ptr.dereferenceable %v142, %v143 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  sea.cond_br %v144, ^bb54, ^bb104
^bb54:
  %v145 = seaimp.load %mem[%v142] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v146 = sea.zext %v145 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v147 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v148 = sea.ptr.index %v147 [%v146] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v149 = seaimp.load %mem[%v148] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v150 = sea.ptr.index %v43 [] strides [] offset 5 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v151 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v152 = sea.ptr.dereferenceable %v150, %v151 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  sea.cond_br %v152, ^bb55, ^bb104
^bb55:
  %v153 = seaimp.load %mem[%v150] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v154 = sea.zext %v153 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v155 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v156 = sea.ptr.index %v155 [%v154] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v157 = seaimp.load %mem[%v156] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v158 = sea.icmp eq, %v149, %v157 : i8 loc(".not3.i.i.i.5"(callsite("aws-c-common/source/byte_buf.c":411:41 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))))
  sea.cond_br %v158, ^bb56, ^bb75 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
^bb56:
  %v159 = sea.const 6 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v160 = sea.icmp eq, %v44, %v159 : i64 loc("exitcond.not.5"(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))))
  sea.cond_br %v160, ^bb74, ^bb57 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
^bb57:
  %v161 = sea.ptr.index %v12 [] strides [] offset 6 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v162 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v163 = sea.ptr.dereferenceable %v161, %v162 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  sea.cond_br %v163, ^bb58, ^bb104
^bb58:
  %v164 = seaimp.load %mem[%v161] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v165 = sea.zext %v164 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v166 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v167 = sea.ptr.index %v166 [%v165] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v168 = seaimp.load %mem[%v167] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v169 = sea.ptr.index %v43 [] strides [] offset 6 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v170 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v171 = sea.ptr.dereferenceable %v169, %v170 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  sea.cond_br %v171, ^bb59, ^bb104
^bb59:
  %v172 = seaimp.load %mem[%v169] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v173 = sea.zext %v172 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v174 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v175 = sea.ptr.index %v174 [%v173] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v176 = seaimp.load %mem[%v175] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v177 = sea.icmp eq, %v168, %v176 : i8 loc(".not3.i.i.i.6"(callsite("aws-c-common/source/byte_buf.c":411:41 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))))
  sea.cond_br %v177, ^bb60, ^bb75 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
^bb60:
  %v178 = sea.const 7 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v179 = sea.icmp eq, %v44, %v178 : i64 loc("exitcond.not.6"(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))))
  sea.cond_br %v179, ^bb74, ^bb61 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
^bb61:
  %v180 = sea.ptr.index %v12 [] strides [] offset 7 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v181 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v182 = sea.ptr.dereferenceable %v180, %v181 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  sea.cond_br %v182, ^bb62, ^bb104
^bb62:
  %v183 = seaimp.load %mem[%v180] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v184 = sea.zext %v183 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v185 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v186 = sea.ptr.index %v185 [%v184] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v187 = seaimp.load %mem[%v186] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v188 = sea.ptr.index %v43 [] strides [] offset 7 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v189 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v190 = sea.ptr.dereferenceable %v188, %v189 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  sea.cond_br %v190, ^bb63, ^bb104
^bb63:
  %v191 = seaimp.load %mem[%v188] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v192 = sea.zext %v191 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v193 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v194 = sea.ptr.index %v193 [%v192] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v195 = seaimp.load %mem[%v194] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v196 = sea.icmp eq, %v187, %v195 : i8 loc(".not3.i.i.i.7"(callsite("aws-c-common/source/byte_buf.c":411:41 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))))
  sea.cond_br %v196, ^bb64, ^bb75 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
^bb64:
  %v197 = sea.const 8 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v198 = sea.icmp eq, %v44, %v197 : i64 loc("exitcond.not.7"(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))))
  sea.cond_br %v198, ^bb74, ^bb65 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
^bb65:
  %v199 = sea.ptr.index %v12 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v200 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v201 = sea.ptr.dereferenceable %v199, %v200 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  sea.cond_br %v201, ^bb66, ^bb104
^bb66:
  %v202 = seaimp.load %mem[%v199] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v203 = sea.zext %v202 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v204 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v205 = sea.ptr.index %v204 [%v203] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v206 = seaimp.load %mem[%v205] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v207 = sea.ptr.index %v43 [] strides [] offset 8 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v208 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v209 = sea.ptr.dereferenceable %v207, %v208 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  sea.cond_br %v209, ^bb67, ^bb104
^bb67:
  %v210 = seaimp.load %mem[%v207] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v211 = sea.zext %v210 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v212 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v213 = sea.ptr.index %v212 [%v211] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v214 = seaimp.load %mem[%v213] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v215 = sea.icmp eq, %v206, %v214 : i8 loc(".not3.i.i.i.8"(callsite("aws-c-common/source/byte_buf.c":411:41 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))))
  sea.cond_br %v215, ^bb68, ^bb75 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
^bb68:
  %v216 = sea.const 9 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v217 = sea.icmp eq, %v44, %v216 : i64 loc("exitcond.not.8"(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))))
  sea.cond_br %v217, ^bb74, ^bb69 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
^bb69:
  %v218 = sea.ptr.index %v12 [] strides [] offset 9 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v219 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v220 = sea.ptr.dereferenceable %v218, %v219 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  sea.cond_br %v220, ^bb70, ^bb104
^bb70:
  %v221 = seaimp.load %mem[%v218] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v222 = sea.zext %v221 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v223 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v224 = sea.ptr.index %v223 [%v222] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v225 = seaimp.load %mem[%v224] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v226 = sea.ptr.index %v43 [] strides [] offset 9 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v227 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v228 = sea.ptr.dereferenceable %v226, %v227 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  sea.cond_br %v228, ^bb71, ^bb104
^bb71:
  %v229 = seaimp.load %mem[%v226] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:60 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v230 = sea.zext %v229 : i8 to i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v231 = seaimp.global %mem @"s_tolower_table" size 256 align 16 : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":375:0)
  %v232 = sea.ptr.index %v231 [%v230] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v233 = seaimp.load %mem[%v232] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> -> i8 loc(callsite("aws-c-common/source/byte_buf.c":411:44 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v234 = sea.icmp eq, %v225, %v233 : i8 loc(".not3.i.i.i.9"(callsite("aws-c-common/source/byte_buf.c":411:41 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))))
  sea.cond_br %v234, ^bb72, ^bb75 loc(callsite("aws-c-common/source/byte_buf.c":411:13 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
^bb72:
  %v235 = sea.const 10 : i64 loc(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v236 = sea.icmp eq, %v44, %v235 : i64 loc("exitcond.not.9"(callsite("aws-c-common/source/byte_buf.c":410:26 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9))))
  sea.cond_br %v236, ^bb74, ^bb73 loc(callsite("aws-c-common/source/byte_buf.c":410:5 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
^bb73:
  %v237 = sea.ptr.index %v12 [] strides [] offset 10 inbounds : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v238 = sea.const 1 : i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v239 = sea.ptr.dereferenceable %v237, %v238 : !sea.ptr<64>, i64 loc(callsite("aws-c-common/source/byte_buf.c":411:29 at callsite("aws-c-common/source/byte_buf.c":368:15 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":31:9)))
  %v240 = sea.const 1 : i1
  %v241 = sea.xor %v239, %v240 : i1
  sea.assume %v241
  sea.br ^bb104
^bb74:
  sea.br ^bb75
^bb75:
  sea.br ^bb76
^bb76:
  %v242 = sea.const 0 : i64 loc(callsite("aws-c-common/source/byte_buf.c":66:26 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":36:5))
  %v243 = sea.icmp eq, %v44, %v242 : i64 loc(callsite("aws-c-common/source/byte_buf.c":66:26 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":36:5))
  %v244 = sea.const 1 : i1 loc(callsite("aws-c-common/source/byte_buf.c":66:32 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":36:5))
  sea.cond_br %v243, ^bb82(%v244 : i1), ^bb77 loc(callsite("aws-c-common/source/byte_buf.c":66:32 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":36:5))
^bb77:
  sea.br ^bb78
^bb78:
  sea.br ^bb79
^bb79:
  %v245 = sea.ptr.null : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":66:55 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":36:5))
  %v246 = sea.ptr.cmp eq, %v12, %v245 : !sea.ptr<64> loc(".not2.i15.i"(callsite("aws-c-common/source/byte_buf.c":66:55 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":36:5)))
  %v247 = sea.const 0 : i1 loc(callsite("aws-c-common/source/byte_buf.c":66:67 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":36:5))
  sea.cond_br %v246, ^bb82(%v247 : i1), ^bb80 loc(callsite("aws-c-common/source/byte_buf.c":66:67 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":36:5))
^bb80:
  sea.br ^bb81
^bb81:
  %v248 = sea.const 1 : i1
  sea.br ^bb82(%v248 : i1)
^bb82(%v249 : i1):
  sea.br ^bb83
^bb83:
  sea.cond_br %v243, ^bb88, ^bb84 loc(callsite("aws-c-common/source/byte_buf.c":66:32 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":36:5))
^bb84:
  sea.br ^bb85
^bb85:
  %v250 = sea.ptr.null : !sea.ptr<64>
  %v251 = sea.ptr.cmp ne, %v12, %v250 : !sea.ptr<64> loc(".not2.i11.i")
  %v252 = sea.const 1 : i1
  %v253 = sea.and %v251, %v252 : i1 loc("or.cond12.not")
  sea.cond_br %v253, ^bb86, ^bb104
^bb86:
  sea.br ^bb87
^bb87:
  sea.br ^bb88
^bb88:
  sea.br ^bb89
^bb89:
  %v254 = sea.const 0 : i64 loc(callsite("aws-c-common/source/byte_buf.c":66:26 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":37:5))
  %v255 = sea.icmp eq, %v45, %v254 : i64 loc(callsite("aws-c-common/source/byte_buf.c":66:26 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":37:5))
  %v256 = sea.const 1 : i1 loc(callsite("aws-c-common/source/byte_buf.c":66:32 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":37:5))
  sea.cond_br %v255, ^bb95(%v256 : i1), ^bb90 loc(callsite("aws-c-common/source/byte_buf.c":66:32 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":37:5))
^bb90:
  sea.br ^bb91
^bb91:
  sea.br ^bb92
^bb92:
  %v257 = sea.ptr.null : !sea.ptr<64> loc(callsite("aws-c-common/source/byte_buf.c":66:55 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":37:5))
  %v258 = sea.ptr.cmp eq, %v43, %v257 : !sea.ptr<64> loc(".not2.i7.i"(callsite("aws-c-common/source/byte_buf.c":66:55 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":37:5)))
  %v259 = sea.const 0 : i1 loc(callsite("aws-c-common/source/byte_buf.c":66:67 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":37:5))
  sea.cond_br %v258, ^bb95(%v259 : i1), ^bb93 loc(callsite("aws-c-common/source/byte_buf.c":66:67 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":37:5))
^bb93:
  sea.br ^bb94
^bb94:
  %v260 = sea.const 1 : i1
  sea.br ^bb95(%v260 : i1)
^bb95(%v261 : i1):
  sea.br ^bb96
^bb96:
  sea.cond_br %v255, ^bb101, ^bb97 loc(callsite("aws-c-common/source/byte_buf.c":66:32 at "seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":37:5))
^bb97:
  sea.br ^bb98
^bb98:
  %v262 = sea.ptr.null : !sea.ptr<64>
  %v263 = sea.ptr.cmp ne, %v43, %v262 : !sea.ptr<64> loc(".not2.i.i")
  %v264 = sea.const 1 : i1
  %v265 = sea.and %v263, %v264 : i1 loc("or.cond16.not")
  sea.cond_br %v265, ^bb99, ^bb104
^bb99:
  sea.br ^bb100
^bb100:
  sea.br ^bb101
^bb101:
  sea.cond_br %v243, ^bb103, ^bb102 loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":38:9)
^bb102:
  %v266 = seaimp.is_modified %mem[%v12] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":39:9)
  %v267 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":39:9)
  %v268 = sea.xor %v266, %v267 : i1 loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":39:9)
  %v269 = seaimp.is_modified %mem[%v12] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":39:9)
  sea.cond_br %v269, ^bb104, ^bb103 loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":39:9)
^bb103:
  %v270 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":41:9)
  %v271 = sea.xor %v255, %v270 : i1 loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":41:9)
  sea.assume %v271 loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":41:9)
  %v272 = seaimp.is_modified %mem[%v43] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":42:9)
  %v273 = sea.const 1 : i1 loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":42:9)
  %v274 = sea.xor %v272, %v273 : i1 loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":42:9)
  %v275 = seaimp.is_modified %mem[%v43] : !seaimp.var<!sea.mem<!sea.ptr<64>, i8>> loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":42:9)
  sea.assume %v275 loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":42:9)
  sea.br ^bb104 loc("seahorn/jobs2/byte_cursor_eq_ignore_case2/aws_byte_cursor_eq_ignore_case_harness2.c":42:9)
^bb104:
  sea.br ^bb105
^bb105:
  %v276 = sea.const 0 : i1
  sea.assert %v276
  sea.halt
}
