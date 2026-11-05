// Exported from SeaHorn (byte_buf_reset.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm12")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm13")
  %v2 = sea.mem.nondet "region.48" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm14")
  %v3 = sea.const 32 : i64 loc("_0")
  %v4 = sea.alloca %v3 align 8 [3] : i64 -> !sea.ptr<64> loc("_0")
  %v5 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v6 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v7 = sea.store %v0[%v5], %v6 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v8 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_1")
  %v9 = sea.ptr.index %v8 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_1")
  %v10 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v11 = sea.store %v7[%v9], %v10 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v12 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_2")
  %v13 = sea.ptr.index %v12 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_2")
  %v14 = sea.const 0 : i8
  %v15 = sea.const 24 : i64
  %v16 = sea.memset %v11[%v13], %v14, %v15 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v17 = sea.nondet "nd_size_t" [4] : i64 loc("_3"("seahorn/lib/byte_buf_helper.c":19:18))
  %v18 = sea.nondet "nd_size_t" [5] : i64 loc("_4"("seahorn/lib/byte_buf_helper.c":20:18))
  %v19 = sea.icmp ule, %v17, %v18 : i64 loc("_5"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v19 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v20 = sea.const 11 : i64 loc("_6"("seahorn/lib/byte_buf_helper.c":22:16))
  %v21 = sea.icmp ult, %v18, %v20 : i64 loc("_6"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v21 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb1
^bb1:
  %v22 = sea.store %v1[%v4], %v17 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v23 = sea.ptr.index %v4 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_8"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb2
^bb2:
  %v24 = sea.store %v22[%v23], %v18 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v25 = sea.const 0 : i64 loc("_10"("seahorn/lib/proof_allocators.c":21:15))
  %v26 = sea.icmp eq, %v18, %v25 : i64 loc("_10"("seahorn/lib/proof_allocators.c":21:15))
  %v27 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v26, ^bb6(%v2, %v27 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/proof_allocators.c":21:10)
^bb3:
  %v28 = sea.nondet "nd_malloc_is_fail" [6] : i1 loc("_12"("seahorn/lib/sea_allocators.c":11:10))
  %v29 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v28, ^bb5(%v2, %v29 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/sea_allocators.c":11:10)
^bb4:
  %v30 = sea.const 1 : i64 loc("malloc.i")
  %v31 = sea.mul %v18, %v30 : i64 loc("malloc.i")
  %v32 = sea.alloca %v31 align 16 [7] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb5(%v2, %v32 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb5(%v33 : !sea.mem<!sea.ptr<64>, i8>, %v34 : !sea.ptr<64>):
  %v35 = sea.memhavoc %v33[%v34], %v18 [8] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb6(%v35, %v34 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb6(%v36 : !sea.mem<!sea.ptr<64>, i8>, %v37 : !sea.ptr<64>):
  %v38 = sea.ptr.index %v4 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_16"("seahorn/lib/byte_buf_helper.c":26:10))
  sea.br ^bb7
^bb7:
  %v39 = sea.store %v24[%v38], %v37 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":26:17)
  %v40 = sea.ptr.index %v4 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_18"("seahorn/lib/byte_buf_helper.c":27:10))
  sea.br ^bb8
^bb8:
  %v41 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  %v42 = sea.store %v39[%v40], %v41 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("seahorn/lib/byte_buf_helper.c":27:20)
  sea.br ^bb9
^bb9:
  sea.cond_br %v26, ^bb17, ^bb10 loc("aws-c-common/source/byte_buf.c":60:33)
^bb10:
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  sea.br ^bb13
^bb13:
  %v43 = sea.icmp ugt, %v17, %v18 : i64 loc(".not2.i.i"("aws-c-common/source/byte_buf.c":61:44))
  %v44 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v43, ^bb22(%v44 : i1), ^bb14 loc("aws-c-common/source/byte_buf.c":61:61)
^bb14:
  sea.br ^bb15
^bb15:
  sea.br ^bb16
^bb16:
  %v45 = sea.ptr.null : !sea.ptr<64> loc("_32"("aws-c-common/source/byte_buf.c":61:64))
  %v46 = sea.ptr.cmp ne, %v37, %v45 : !sea.ptr<64> loc("_32"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb22(%v46 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb17:
  sea.br ^bb18
^bb18:
  %v47 = sea.const 0 : i64 loc("_22"("aws-c-common/source/byte_buf.c":60:45))
  %v48 = sea.icmp eq, %v17, %v47 : i64 loc("_22"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v48, ^bb19, ^bb21 loc("aws-c-common/source/byte_buf.c":60:50)
^bb19:
  sea.br ^bb20
^bb20:
  %v49 = sea.ptr.null : !sea.ptr<64> loc("_25"("aws-c-common/source/byte_buf.c":60:65))
  %v50 = sea.ptr.cmp eq, %v37, %v49 : !sea.ptr<64> loc("_25"("aws-c-common/source/byte_buf.c":60:65))
  %v51 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v50, ^bb22(%v51 : i1), ^bb21 loc("aws-c-common/source/byte_buf.c":60:74)
^bb21:
  %v52 = sea.const 0 : i1
  sea.br ^bb22(%v52 : i1)
^bb22(%v53 : i1):
  sea.assume %v53 loc("seahorn/jobs/byte_buf_reset/aws_byte_buf_reset_harness.c":14:5)
  %v54 = sea.nondet "nd_bool" [9] : i1 loc("_34"("seahorn/jobs/byte_buf_reset/aws_byte_buf_reset_harness.c":17:26))
  sea.cond_br %v54, ^bb23, ^bb30(%v36 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/byte_buf.c":70:9)
^bb23:
  sea.br ^bb24
^bb24:
  %v55 = sea.ptr.null : !sea.ptr<64> loc(".not.i.i"("aws-c-common/source/byte_buf.c":89:9))
  %v56 = sea.ptr.cmp eq, %v37, %v55 : !sea.ptr<64> loc(".not.i.i"("aws-c-common/source/byte_buf.c":89:9))
  sea.cond_br %v56, ^bb29(%v36 : !sea.mem<!sea.ptr<64>, i8>), ^bb25 loc("aws-c-common/source/byte_buf.c":89:9)
^bb25:
  sea.br ^bb26
^bb26:
  sea.br ^bb27
^bb27:
  sea.cond_br %v26, ^bb29(%v36 : !sea.mem<!sea.ptr<64>, i8>), ^bb28 loc("aws-c-common/source/common.c":42:22)
^bb28:
  %v57 = sea.const 0 : i8 loc("aws-c-common/source/common.c":57:5)
  %v58 = sea.memset %v36[%v37], %v57, %v18 inplace : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/source/common.c":57:5)
  sea.br ^bb29(%v58 : !sea.mem<!sea.ptr<64>, i8>) loc("aws-c-common/source/common.c":81:1)
^bb29(%v59 : !sea.mem<!sea.ptr<64>, i8>):
  sea.br ^bb30(%v59 : !sea.mem<!sea.ptr<64>, i8>)
^bb30(%v60 : !sea.mem<!sea.ptr<64>, i8>):
  sea.br ^bb31
^bb31:
  %v61 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":73:14)
  %v62 = sea.store %v42[%v4], %v61 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/source/byte_buf.c":73:14)
  %v63 = sea.load %v42[%v40] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_41"("seahorn/jobs/byte_buf_reset/aws_byte_buf_reset_harness.c":20:5))
  %v64 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_42"("seahorn/jobs/byte_buf_reset/aws_byte_buf_reset_harness.c":20:5))
  %v65 = sea.ptr.cmp eq, %v63, %v64 : !sea.ptr<64> loc("_42"("seahorn/jobs/byte_buf_reset/aws_byte_buf_reset_harness.c":20:5))
  sea.cond_br %v65, ^bb32, ^bb37 loc("seahorn/jobs/byte_buf_reset/aws_byte_buf_reset_harness.c":20:5)
^bb32:
  %v66 = sea.load %v39[%v38] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_44"("seahorn/jobs/byte_buf_reset/aws_byte_buf_reset_harness.c":21:5))
  %v67 = sea.ptr.cmp eq, %v66, %v37 : !sea.ptr<64> loc("_45"("seahorn/jobs/byte_buf_reset/aws_byte_buf_reset_harness.c":21:5))
  sea.cond_br %v67, ^bb33, ^bb37 loc("seahorn/jobs/byte_buf_reset/aws_byte_buf_reset_harness.c":21:5)
^bb33:
  %v68 = sea.load %v24[%v23] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_47"("seahorn/jobs/byte_buf_reset/aws_byte_buf_reset_harness.c":22:5))
  %v69 = sea.icmp eq, %v68, %v18 : i64 loc("_48"("seahorn/jobs/byte_buf_reset/aws_byte_buf_reset_harness.c":22:5))
  sea.cond_br %v69, ^bb34, ^bb37 loc("seahorn/jobs/byte_buf_reset/aws_byte_buf_reset_harness.c":22:5)
^bb34:
  sea.assume %v54 loc("seahorn/jobs/byte_buf_reset/aws_byte_buf_reset_harness.c":23:9)
  %v70 = sea.const 0 : i64 loc("_50"("seahorn/lib/utils.c":26:11))
  %v71 = sea.icmp ne, %v18, %v70 : i64 loc("_50"("seahorn/lib/utils.c":26:11))
  %v72 = sea.ptr.null : !sea.ptr<64> loc("_51")
  %v73 = sea.ptr.cmp ne, %v37, %v72 : !sea.ptr<64> loc("_51")
  %v74 = sea.and %v71, %v73 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":26:15))
  sea.assume %v74 loc("seahorn/lib/utils.c":26:15)
  %v75 = sea.nondet "nd_size_t" [10] : i64 loc("_52"("seahorn/lib/utils.c":27:16))
  %v76 = sea.icmp ult, %v75, %v18 : i64 loc("_53"("seahorn/lib/utils.c":28:14))
  sea.assume %v76 loc("seahorn/lib/utils.c":28:5)
  %v77 = sea.ptr.index %v37 [%v75] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_54"("seahorn/lib/utils.c":29:5))
  %v78 = sea.const 1 : i64 loc("_55"("seahorn/lib/utils.c":29:5))
  %v79 = sea.ptr.dereferenceable %v77, %v78 : !sea.ptr<64>, i64 loc("_55"("seahorn/lib/utils.c":29:5))
  sea.cond_br %v79, ^bb35, ^bb37
^bb35:
  %v80 = sea.load %v60[%v77] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_57"("seahorn/lib/utils.c":29:5))
  %v81 = sea.const 0 : i8 loc("_58"("seahorn/lib/utils.c":29:5))
  %v82 = sea.icmp eq, %v80, %v81 : i8 loc("_58"("seahorn/lib/utils.c":29:5))
  %v83 = sea.const 1 : i64 loc("_59"("seahorn/lib/utils.c":29:5))
  %v84 = sea.ptr.dereferenceable %v77, %v83 : !sea.ptr<64>, i64 loc("_59"("seahorn/lib/utils.c":29:5))
  sea.cond_br %v84, ^bb36, ^bb37
^bb36:
  %v85 = sea.const 1 : i1 loc("seahorn/lib/utils.c":29:5)
  %v86 = sea.xor %v82, %v85 : i1 loc("seahorn/lib/utils.c":29:5)
  sea.assume %v86 loc("seahorn/lib/utils.c":29:5)
  sea.br ^bb37 loc("seahorn/lib/utils.c":29:5)
^bb37:
  sea.br ^bb38
^bb38:
  %v87 = sea.const 0 : i1
  sea.assert %v87
  sea.halt
}
