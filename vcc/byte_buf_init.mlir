// Exported from SeaHorn (byte_buf_init.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm2")
  %v1 = sea.mem.nondet "region.1" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm3")
  %v2 = sea.nondet "nd_size_t" [2] : i64 loc("_0"("seahorn/lib/byte_buf_helper.c":19:18))
  %v3 = sea.nondet "nd_size_t" [3] : i64 loc("_1"("seahorn/lib/byte_buf_helper.c":20:18))
  %v4 = sea.icmp ule, %v2, %v3 : i64 loc("_2"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v4 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v5 = sea.const 11 : i64 loc("_3"("seahorn/lib/byte_buf_helper.c":22:16))
  %v6 = sea.icmp ult, %v3, %v5 : i64 loc("_3"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v6 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb1
^bb1:
  sea.br ^bb2
^bb2:
  %v7 = sea.const 0 : i64 loc("_6"("seahorn/lib/proof_allocators.c":21:15))
  %v8 = sea.icmp eq, %v3, %v7 : i64 loc("_6"("seahorn/lib/proof_allocators.c":21:15))
  sea.cond_br %v8, ^bb6, ^bb3 loc("seahorn/lib/proof_allocators.c":21:10)
^bb3:
  %v9 = sea.nondet "nd_malloc_is_fail" [4] : i1 loc("_8"("seahorn/lib/sea_allocators.c":11:10))
  %v10 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v9, ^bb5(%v0, %v10 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/sea_allocators.c":11:10)
^bb4:
  %v11 = sea.const 1 : i64 loc("malloc.i")
  %v12 = sea.mul %v3, %v11 : i64 loc("malloc.i")
  %v13 = sea.alloca %v12 align 16 [5] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb5(%v0, %v13 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb5(%v14 : !sea.mem<!sea.ptr<64>, i8>, %v15 : !sea.ptr<64>):
  %v16 = sea.memhavoc %v14[%v15], %v3 [6] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb6 loc("seahorn/lib/proof_allocators.c":21:10)
^bb6:
  sea.br ^bb7
^bb7:
  sea.br ^bb8
^bb8:
  %v17 = sea.nondet "nd_size_t" [7] : i64 loc("_12"("seahorn/jobs/byte_buf_init/aws_byte_buf_init_harness.c":18:23))
  %v18 = sea.const 0 : i64 loc("_13"("aws-c-common/source/byte_buf.c":21:29))
  %v19 = sea.icmp eq, %v17, %v18 : i64 loc("_13"("aws-c-common/source/byte_buf.c":21:29))
  sea.cond_br %v19, ^bb15, ^bb9 loc("aws-c-common/source/byte_buf.c":21:19)
^bb9:
  %v20 = sea.nondet "nd_malloc_is_fail" [8] : i1 loc("_15"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v20, ^bb11, ^bb10 loc("seahorn/lib/sea_allocators.c":11:10)
^bb10:
  %v21 = sea.const 1 : i64 loc("malloc11.i")
  %v22 = sea.mul %v17, %v21 : i64 loc("malloc11.i")
  %v23 = sea.alloca %v22 align 16 [9] : i64 -> !sea.ptr<64> loc("malloc11.i")
  %v24 = sea.memhavoc %v1[%v23], %v17 [10] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb12(%v23 : !sea.ptr<64>) loc("seahorn/lib/allocator_override.c":19:7)
^bb11:
  %v25 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/allocator_override.c":21:3)
  sea.br ^bb12(%v25 : !sea.ptr<64>) loc("seahorn/lib/allocator_override.c":21:3)
^bb12(%v26 : !sea.ptr<64>):
  sea.br ^bb13
^bb13:
  sea.br ^bb14
^bb14:
  %v27 = sea.ptr.null : !sea.ptr<64> loc("_20"("aws-c-common/source/byte_buf.c":22:38))
  %v28 = sea.ptr.cmp eq, %v26, %v27 : !sea.ptr<64> loc("_20"("aws-c-common/source/byte_buf.c":22:38))
  %v29 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/source/byte_buf.c":22:9)
  %v30 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":22:9)
  %v31 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":22:9)
  sea.cond_br %v28, ^bb19(%v29, %v30, %v31 : !sea.ptr<64>, i64, i1), ^bb16(%v26 : !sea.ptr<64>) loc("aws-c-common/source/byte_buf.c":22:9)
^bb15:
  %v32 = sea.ptr.null : !sea.ptr<64>
  sea.br ^bb16(%v32 : !sea.ptr<64>)
^bb16(%v33 : !sea.ptr<64>):
  sea.br ^bb17
^bb17:
  sea.br ^bb18
^bb18:
  %v34 = sea.const 1 : i1
  sea.br ^bb19(%v33, %v17, %v34 : !sea.ptr<64>, i64, i1)
^bb19(%v35 : !sea.ptr<64>, %v36 : i64, %v37 : i1):
  sea.assume %v37 loc("seahorn/jobs/byte_buf_init/aws_byte_buf_init_harness.c":21:9)
  sea.br ^bb20
^bb20:
  %v38 = sea.const 0 : i64 loc(".not"("aws-c-common/source/byte_buf.c":60:28))
  %v39 = sea.icmp eq, %v36, %v38 : i64 loc(".not"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v39, ^bb27, ^bb21 loc("aws-c-common/source/byte_buf.c":60:33)
^bb21:
  sea.br ^bb22
^bb22:
  sea.br ^bb23
^bb23:
  sea.br ^bb24
^bb24:
  sea.br ^bb25
^bb25:
  sea.br ^bb26
^bb26:
  %v40 = sea.ptr.null : !sea.ptr<64> loc("_37"("aws-c-common/source/byte_buf.c":61:64))
  %v41 = sea.ptr.cmp ne, %v35, %v40 : !sea.ptr<64> loc("_37"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb31(%v41 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb27:
  sea.br ^bb28
^bb28:
  sea.br ^bb29
^bb29:
  %v42 = sea.ptr.null : !sea.ptr<64> loc("_31"("aws-c-common/source/byte_buf.c":60:65))
  %v43 = sea.ptr.cmp eq, %v35, %v42 : !sea.ptr<64> loc("_31"("aws-c-common/source/byte_buf.c":60:65))
  %v44 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v43, ^bb31(%v44 : i1), ^bb30 loc("aws-c-common/source/byte_buf.c":60:74)
^bb30:
  %v45 = sea.const 0 : i1
  sea.br ^bb31(%v45 : i1)
^bb31(%v46 : i1):
  sea.br ^bb32
^bb32:
  sea.cond_br %v39, ^bb38, ^bb33 loc("aws-c-common/source/byte_buf.c":60:33)
^bb33:
  sea.br ^bb34
^bb34:
  sea.br ^bb35
^bb35:
  sea.br ^bb36
^bb36:
  sea.br ^bb37
^bb37:
  %v47 = sea.ptr.null : !sea.ptr<64> loc("_49")
  %v48 = sea.ptr.cmp ne, %v35, %v47 : !sea.ptr<64> loc("_49")
  %v49 = sea.const 1 : i1 loc("or.cond")
  %v50 = sea.and %v48, %v49 : i1 loc("or.cond")
  sea.cond_br %v50, ^bb42, ^bb44
^bb38:
  sea.br ^bb39
^bb39:
  sea.br ^bb40
^bb40:
  %v51 = sea.ptr.null : !sea.ptr<64> loc("_43"("aws-c-common/source/byte_buf.c":60:65))
  %v52 = sea.ptr.cmp eq, %v35, %v51 : !sea.ptr<64> loc("_43"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v52, ^bb42, ^bb41 loc("aws-c-common/source/byte_buf.c":60:74)
^bb41:
  sea.br ^bb44
^bb42:
  sea.cond_br %v37, ^bb43, ^bb44 loc("seahorn/jobs/byte_buf_init/aws_byte_buf_init_harness.c":24:9)
^bb43:
  %v53 = sea.icmp eq, %v36, %v17 : i64 loc("_51"("seahorn/jobs/byte_buf_init/aws_byte_buf_init_harness.c":26:9))
  %v54 = sea.const 1 : i1 loc("seahorn/jobs/byte_buf_init/aws_byte_buf_init_harness.c":26:9)
  %v55 = sea.xor %v53, %v54 : i1 loc("seahorn/jobs/byte_buf_init/aws_byte_buf_init_harness.c":26:9)
  sea.assume %v55 loc("seahorn/jobs/byte_buf_init/aws_byte_buf_init_harness.c":26:9)
  sea.br ^bb44 loc("seahorn/jobs/byte_buf_init/aws_byte_buf_init_harness.c":26:9)
^bb44:
  sea.br ^bb45
^bb45:
  %v56 = sea.const 0 : i1
  sea.assert %v56
  sea.halt
}
