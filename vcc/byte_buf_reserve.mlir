// Exported from SeaHorn (byte_buf_reserve.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm10")
  %v1 = sea.mem.nondet "region.16" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm11")
  %v2 = sea.mem.nondet "region.40" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm12")
  %v3 = sea.mem.nondet "region.42" [3] : !sea.mem<!sea.ptr<64>, i8> loc("sm13")
  %v4 = sea.mem.nondet "region.41" [4] : !sea.mem<!sea.ptr<64>, i8> loc("sm14")
  %v5 = sea.const 32 : i64 loc("_0")
  %v6 = sea.alloca %v5 align 8 [5] : i64 -> !sea.ptr<64> loc("_0")
  %v7 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64>
  %v8 = sea.func_addr @"s_malloc_allocator.addr" : !sea.ptr<64>
  %v9 = sea.store %v0[%v7], %v8 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v10 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_1")
  %v11 = sea.ptr.index %v10 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_1")
  %v12 = sea.func_addr @"s_free_allocator.addr" : !sea.ptr<64>
  %v13 = sea.store %v9[%v11], %v12 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>
  %v14 = sea.global @"s_allocator_static" size 40 align 8 : !sea.ptr<64> loc("_2")
  %v15 = sea.ptr.index %v14 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_2")
  %v16 = sea.const 0 : i8
  %v17 = sea.const 24 : i64
  %v18 = sea.memset %v13[%v15], %v16, %v17 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>
  %v19 = sea.nondet "nd_size_t" [6] : i64 loc("_3"("seahorn/lib/byte_buf_helper.c":19:18))
  %v20 = sea.nondet "nd_size_t" [7] : i64 loc("_4"("seahorn/lib/byte_buf_helper.c":20:18))
  %v21 = sea.icmp ule, %v19, %v20 : i64 loc("_5"("seahorn/lib/byte_buf_helper.c":21:16))
  sea.assume %v21 loc("seahorn/lib/byte_buf_helper.c":21:5)
  %v22 = sea.const 11 : i64 loc("_6"("seahorn/lib/byte_buf_helper.c":22:16))
  %v23 = sea.icmp ult, %v20, %v22 : i64 loc("_6"("seahorn/lib/byte_buf_helper.c":22:16))
  sea.assume %v23 loc("seahorn/lib/byte_buf_helper.c":22:5)
  sea.br ^bb1
^bb1:
  %v24 = sea.store %v1[%v6], %v19 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":24:14)
  %v25 = sea.ptr.index %v6 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_8"("seahorn/lib/byte_buf_helper.c":25:10))
  sea.br ^bb2
^bb2:
  %v26 = sea.store %v24[%v25], %v20 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":25:19)
  %v27 = sea.const 0 : i64 loc("_10"("seahorn/lib/proof_allocators.c":21:15))
  %v28 = sea.icmp eq, %v20, %v27 : i64 loc("_10"("seahorn/lib/proof_allocators.c":21:15))
  %v29 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v28, ^bb6(%v29 : !sea.ptr<64>), ^bb3 loc("seahorn/lib/proof_allocators.c":21:10)
^bb3:
  %v30 = sea.nondet "nd_malloc_is_fail" [8] : i1 loc("_12"("seahorn/lib/sea_allocators.c":11:10))
  %v31 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v30, ^bb5(%v2, %v31 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb4 loc("seahorn/lib/sea_allocators.c":11:10)
^bb4:
  %v32 = sea.const 1 : i64 loc("malloc.i")
  %v33 = sea.mul %v20, %v32 : i64 loc("malloc.i")
  %v34 = sea.alloca %v33 align 16 [9] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb5(%v2, %v34 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb5(%v35 : !sea.mem<!sea.ptr<64>, i8>, %v36 : !sea.ptr<64>):
  %v37 = sea.memhavoc %v35[%v36], %v20 [10] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb6(%v36 : !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb6(%v38 : !sea.ptr<64>):
  sea.br ^bb7
^bb7:
  sea.br ^bb8
^bb8:
  sea.br ^bb9
^bb9:
  sea.cond_br %v28, ^bb17, ^bb10 loc("aws-c-common/source/byte_buf.c":60:33)
^bb10:
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  sea.br ^bb13
^bb13:
  %v39 = sea.icmp ugt, %v19, %v20 : i64 loc(".not2.i.i"("aws-c-common/source/byte_buf.c":61:44))
  %v40 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v39, ^bb22(%v40 : i1), ^bb14 loc("aws-c-common/source/byte_buf.c":61:61)
^bb14:
  sea.br ^bb15
^bb15:
  sea.br ^bb16
^bb16:
  %v41 = sea.ptr.null : !sea.ptr<64> loc("_30"("aws-c-common/source/byte_buf.c":61:64))
  %v42 = sea.ptr.cmp ne, %v38, %v41 : !sea.ptr<64> loc("_30"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb22(%v42 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb17:
  sea.br ^bb18
^bb18:
  %v43 = sea.const 0 : i64 loc("_20"("aws-c-common/source/byte_buf.c":60:45))
  %v44 = sea.icmp eq, %v19, %v43 : i64 loc("_20"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v44, ^bb19, ^bb21 loc("aws-c-common/source/byte_buf.c":60:50)
^bb19:
  sea.br ^bb20
^bb20:
  %v45 = sea.ptr.null : !sea.ptr<64> loc("_23"("aws-c-common/source/byte_buf.c":60:65))
  %v46 = sea.ptr.cmp eq, %v38, %v45 : !sea.ptr<64> loc("_23"("aws-c-common/source/byte_buf.c":60:65))
  %v47 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v46, ^bb22(%v47 : i1), ^bb21 loc("aws-c-common/source/byte_buf.c":60:74)
^bb21:
  %v48 = sea.const 0 : i1
  sea.br ^bb22(%v48 : i1)
^bb22(%v49 : i1):
  sea.assume %v49 loc("seahorn/jobs/byte_buf_reserve/aws_byte_buf_reserve_harness.c":14:5)
  %v50 = sea.nondet "nd_size_t" [11] : i64 loc("_32"("seahorn/jobs/byte_buf_reserve/aws_byte_buf_reserve_harness.c":17:33))
  %v51 = sea.const 11 : i64 loc("_33"("seahorn/jobs/byte_buf_reserve/aws_byte_buf_reserve_harness.c":22:35))
  %v52 = sea.icmp ult, %v50, %v51 : i64 loc("_33"("seahorn/jobs/byte_buf_reserve/aws_byte_buf_reserve_harness.c":22:35))
  sea.assume %v52 loc("seahorn/jobs/byte_buf_reserve/aws_byte_buf_reserve_harness.c":22:9)
  %v53 = sea.const 10 : i64 loc("_34"("seahorn/jobs/byte_buf_reserve/aws_byte_buf_reserve_harness.c":23:29))
  %v54 = sea.icmp ult, %v20, %v53 : i64 loc("_34"("seahorn/jobs/byte_buf_reserve/aws_byte_buf_reserve_harness.c":23:29))
  sea.assume %v54 loc("seahorn/jobs/byte_buf_reserve/aws_byte_buf_reserve_harness.c":23:9)
  sea.br ^bb23
^bb23:
  sea.br ^bb24
^bb24:
  sea.cond_br %v28, ^bb32, ^bb25 loc("aws-c-common/source/byte_buf.c":60:33)
^bb25:
  sea.br ^bb26
^bb26:
  sea.br ^bb27
^bb27:
  sea.br ^bb28
^bb28:
  %v55 = sea.icmp ugt, %v19, %v20 : i64 loc(".not2.i.i.i"("aws-c-common/source/byte_buf.c":61:44))
  sea.cond_br %v55, ^bb37, ^bb29 loc("aws-c-common/source/byte_buf.c":61:61)
^bb29:
  sea.br ^bb30
^bb30:
  sea.br ^bb31
^bb31:
  %v56 = sea.ptr.null : !sea.ptr<64> loc(".not"("aws-c-common/source/byte_buf.c":61:64))
  %v57 = sea.ptr.cmp eq, %v38, %v56 : !sea.ptr<64> loc(".not"("aws-c-common/source/byte_buf.c":61:64))
  sea.cond_br %v57, ^bb37, ^bb38 loc("aws-c-common/source/byte_buf.c":783:5)
^bb32:
  sea.br ^bb33
^bb33:
  %v58 = sea.const 0 : i64 loc("_39"("aws-c-common/source/byte_buf.c":60:45))
  %v59 = sea.icmp eq, %v19, %v58 : i64 loc("_39"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v59, ^bb34, ^bb36 loc("aws-c-common/source/byte_buf.c":60:50)
^bb34:
  sea.br ^bb35
^bb35:
  %v60 = sea.ptr.null : !sea.ptr<64> loc("_42"("aws-c-common/source/byte_buf.c":60:65))
  %v61 = sea.ptr.cmp eq, %v38, %v60 : !sea.ptr<64> loc("_42"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v61, ^bb38, ^bb36 loc("aws-c-common/source/byte_buf.c":60:74)
^bb36:
  sea.br ^bb37
^bb37:
  %v62 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":783:5)
  sea.br ^bb65(%v20, %v62 : i64, i1) loc("aws-c-common/source/byte_buf.c":783:5)
^bb38:
  sea.br ^bb39
^bb39:
  %v63 = sea.icmp ult, %v20, %v50 : i64 loc(".not1.i2.i"("aws-c-common/source/byte_buf.c":785:28))
  %v64 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":785:9)
  sea.cond_br %v63, ^bb40, ^bb65(%v20, %v64 : i64, i1) loc("aws-c-common/source/byte_buf.c":785:9)
^bb40:
  sea.br ^bb41
^bb41:
  %v65 = sea.ptr.null : !sea.ptr<64> loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":789:10))
  %v66 = sea.ptr.cmp eq, %v38, %v65 : !sea.ptr<64> loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":789:10))
  sea.cond_br %v66, ^bb42, ^bb44 loc("aws-c-common/source/byte_buf.c":789:25)
^bb42:
  sea.br ^bb43
^bb43:
  sea.cond_br %v28, ^bb54, ^bb44 loc("aws-c-common/source/byte_buf.c":789:46)
^bb44:
  sea.br ^bb45
^bb45:
  sea.br ^bb46
^bb46:
  %v67 = sea.nondet "nd_malloc_is_fail" [12] : i1 loc("_66"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v67, ^bb53, ^bb47 loc("seahorn/lib/sea_allocators.c":11:10)
^bb47:
  %v68 = sea.const 1 : i64 loc("malloc15.i")
  %v69 = sea.mul %v50, %v68 : i64 loc("malloc15.i")
  %v70 = sea.alloca %v69 align 16 [13] : i64 -> !sea.ptr<64> loc("malloc15.i")
  %v71 = sea.memhavoc %v3[%v70], %v50 [14] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb48
^bb48:
  %v72 = sea.ptr.dereferenceable %v70, %v20 : !sea.ptr<64>, i64 loc("_69"("seahorn/lib/bcmp.c":161:3))
  %v73 = sea.ptr.dereferenceable %v70, %v20 : !sea.ptr<64>, i64 loc("_70"("seahorn/lib/bcmp.c":161:3))
  sea.cond_br %v73, ^bb49, ^bb66 loc("seahorn/lib/bcmp.c":161:3)
^bb49:
  %v74 = sea.ptr.dereferenceable %v38, %v20 : !sea.ptr<64>, i64 loc("_72"("seahorn/lib/bcmp.c":162:3))
  %v75 = sea.ptr.dereferenceable %v38, %v20 : !sea.ptr<64>, i64 loc("_73"("seahorn/lib/bcmp.c":162:3))
  sea.cond_br %v75, ^bb50, ^bb66 loc("seahorn/lib/bcmp.c":162:3)
^bb50:
  sea.br ^bb51
^bb51:
  sea.br ^bb52
^bb52:
  %v76 = sea.const 1 : i1
  sea.br ^bb65(%v50, %v76 : i64, i1)
^bb53:
  %v77 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":796:9)
  sea.br ^bb65(%v20, %v77 : i64, i1) loc("aws-c-common/source/byte_buf.c":796:9)
^bb54:
  sea.br ^bb55
^bb55:
  sea.br ^bb56
^bb56:
  %v78 = sea.nondet "nd_malloc_is_fail" [15] : i1 loc("_56"("seahorn/lib/sea_allocators.c":11:10))
  sea.cond_br %v78, ^bb58, ^bb57 loc("seahorn/lib/sea_allocators.c":11:10)
^bb57:
  %v79 = sea.const 1 : i64 loc("malloc14.i")
  %v80 = sea.mul %v50, %v79 : i64 loc("malloc14.i")
  %v81 = sea.alloca %v80 align 16 [16] : i64 -> !sea.ptr<64> loc("malloc14.i")
  %v82 = sea.memhavoc %v4[%v81], %v50 [17] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb59 loc("seahorn/lib/allocator_override.c":19:7)
^bb58:
  sea.br ^bb59 loc("seahorn/lib/allocator_override.c":21:3)
^bb59:
  sea.br ^bb60
^bb60:
  sea.br ^bb61
^bb61:
  %v83 = sea.const 0 : i64 loc("aws-c-common/source/byte_buf.c":22:9)
  %v84 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":22:9)
  sea.cond_br %v78, ^bb65(%v83, %v84 : i64, i1), ^bb62 loc("aws-c-common/source/byte_buf.c":22:9)
^bb62:
  sea.br ^bb63
^bb63:
  sea.br ^bb64
^bb64:
  %v85 = sea.const 1 : i1
  sea.br ^bb65(%v50, %v85 : i64, i1)
^bb65(%v86 : i64, %v87 : i1):
  sea.assume %v87 loc("seahorn/jobs/byte_buf_reserve/aws_byte_buf_reserve_harness.c":26:9)
  %v88 = sea.icmp uge, %v86, %v50 : i64 loc("_75"("seahorn/jobs/byte_buf_reserve/aws_byte_buf_reserve_harness.c":27:9))
  %v89 = sea.icmp ult, %v86, %v50 : i64 loc(".not.i"("seahorn/jobs/byte_buf_reserve/aws_byte_buf_reserve_harness.c":27:9))
  sea.assume %v89 loc("seahorn/jobs/byte_buf_reserve/aws_byte_buf_reserve_harness.c":27:9)
  sea.br ^bb66 loc("seahorn/jobs/byte_buf_reserve/aws_byte_buf_reserve_harness.c":27:9)
^bb66:
  sea.br ^bb67
^bb67:
  %v90 = sea.const 0 : i1
  sea.assert %v90
  sea.halt
}
