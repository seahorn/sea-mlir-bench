// Exported from SeaHorn (priority_queue_init_static.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm9")
  %v1 = sea.mem.nondet "region.48" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm10")
  %v2 = sea.const 88 : i64 loc("_0")
  %v3 = sea.alloca %v2 align 8 [2] : i64 -> !sea.ptr<64> loc("_0")
  %v4 = sea.nondet "nd_size_t" [3] : i64 loc("_1"("seahorn/jobs/priority_queue_init_static/aws_priority_queue_init_static_harness.c":20:22))
  %v5 = sea.nondet "nd_size_t" [4] : i64 loc("_2"("seahorn/jobs/priority_queue_init_static/aws_priority_queue_init_static_harness.c":21:36))
  %v6 = sea.nondet "nd_size_t" [5] : i64 loc("_3"("seahorn/jobs/priority_queue_init_static/aws_priority_queue_init_static_harness.c":22:16))
  %v7 = sea.const 18446744073709551615 : i64 loc("_4"("seahorn/jobs/priority_queue_init_static/aws_priority_queue_init_static_harness.c":28:38))
  %v8 = sea.add %v5, %v7 : i64 loc("_4"("seahorn/jobs/priority_queue_init_static/aws_priority_queue_init_static_harness.c":28:38))
  %v9 = sea.const 18446744073709551615 : i64 loc("_5"("seahorn/jobs/priority_queue_init_static/aws_priority_queue_init_static_harness.c":28:38))
  %v10 = sea.icmp sgt, %v8, %v9 : i64 loc("_5"("seahorn/jobs/priority_queue_init_static/aws_priority_queue_init_static_harness.c":28:38))
  sea.assume %v10 loc("seahorn/jobs/priority_queue_init_static/aws_priority_queue_init_static_harness.c":28:3)
  %v11 = sea.const 18446744073709551615 : i64 loc("_6"("seahorn/jobs/priority_queue_init_static/aws_priority_queue_init_static_harness.c":30:24))
  %v12 = sea.add %v4, %v11 : i64 loc("_6"("seahorn/jobs/priority_queue_init_static/aws_priority_queue_init_static_harness.c":30:24))
  %v13 = sea.const 2 : i64 loc("_7"("seahorn/jobs/priority_queue_init_static/aws_priority_queue_init_static_harness.c":30:24))
  %v14 = sea.icmp ult, %v12, %v13 : i64 loc("_7"("seahorn/jobs/priority_queue_init_static/aws_priority_queue_init_static_harness.c":30:24))
  sea.assume %v14 loc("seahorn/jobs/priority_queue_init_static/aws_priority_queue_init_static_harness.c":30:3)
  sea.br ^bb1
^bb1:
  %v15 = sea.mul %v5, %v4 : i64 loc("_9"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  %v16 = sea.umulo %v5, %v4 : i64 loc("_9"("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9))
  sea.cond_br %v16, ^bb2, ^bb3 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb2:
  sea.br ^bb3 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb3:
  %v17 = sea.const 1 : i1 loc(".not.i"("seahorn/jobs/priority_queue_init_static/aws_priority_queue_init_static_harness.c":31:3))
  %v18 = sea.xor %v16, %v17 : i1 loc(".not.i"("seahorn/jobs/priority_queue_init_static/aws_priority_queue_init_static_harness.c":31:3))
  sea.assume %v18 loc("seahorn/jobs/priority_queue_init_static/aws_priority_queue_init_static_harness.c":31:3)
  %v19 = sea.const 1 : i64 loc("malloc.i")
  %v20 = sea.mul %v15, %v19 : i64 loc("malloc.i")
  %v21 = sea.alloca %v20 align 16 [6] : i64 -> !sea.ptr<64> loc("malloc.i")
  %v22 = sea.const 1 : i1 loc("seahorn/lib/sea_allocators.c":39:3)
  sea.assume %v22 loc("seahorn/lib/sea_allocators.c":39:3)
  %v23 = sea.const 0 : i64 loc(".not2.i.i"("aws-c-common/source/priority_queue.c":180:5))
  %v24 = sea.icmp eq, %v5, %v23 : i64 loc(".not2.i.i"("aws-c-common/source/priority_queue.c":180:5))
  %v25 = sea.const 1 : i1 loc("aws-c-common/source/priority_queue.c":180:5)
  %v26 = sea.xor %v24, %v25 : i1 loc("aws-c-common/source/priority_queue.c":180:5)
  sea.assume %v26 loc("aws-c-common/source/priority_queue.c":180:5)
  %v27 = sea.const 0 : i64 loc(".not3.i.i"("aws-c-common/source/priority_queue.c":181:5))
  %v28 = sea.icmp eq, %v4, %v27 : i64 loc(".not3.i.i"("aws-c-common/source/priority_queue.c":181:5))
  %v29 = sea.const 1 : i1 loc("aws-c-common/source/priority_queue.c":181:5)
  %v30 = sea.xor %v28, %v29 : i1 loc("aws-c-common/source/priority_queue.c":181:5)
  sea.assume %v30 loc("aws-c-common/source/priority_queue.c":181:5)
  sea.br ^bb4
^bb4:
  %v31 = sea.func_addr @"nondet_compare" : !sea.ptr<64> loc("aws-c-common/source/priority_queue.c":183:17)
  %v32 = sea.store %v0[%v3], %v31 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/source/priority_queue.c":183:17)
  %v33 = sea.ptr.index %v3 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_13"("aws-c-common/source/priority_queue.c":184:5))
  %v34 = sea.ptr.index %v3 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_14"("aws-c-common/source/priority_queue.c":186:40))
  %v35 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":67:5)
  %v36 = sea.xor %v24, %v35 : i1 loc("aws-c-common/include/aws/common/array_list.inl":67:5)
  sea.assume %v36 loc("aws-c-common/include/aws/common/array_list.inl":67:5)
  %v37 = sea.const 1 : i1 loc("aws-c-common/include/aws/common/array_list.inl":68:5)
  %v38 = sea.xor %v28, %v37 : i1 loc("aws-c-common/include/aws/common/array_list.inl":68:5)
  sea.assume %v38 loc("aws-c-common/include/aws/common/array_list.inl":68:5)
  %v39 = sea.const 0 : i8 loc("aws-c-common/include/aws/common/array_list.inl":70:5)
  %v40 = sea.const 40 : i64 loc("aws-c-common/include/aws/common/array_list.inl":70:5)
  %v41 = sea.memset %v32[%v33], %v39, %v40 inplace align 8 : !sea.mem<!sea.ptr<64>, i8> loc("aws-c-common/include/aws/common/array_list.inl":70:5)
  sea.br ^bb5
^bb5:
  %v42 = sea.ptr.null : !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":71:17)
  %v43 = sea.store %v41[%v34], %v42 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":71:17)
  sea.br ^bb6
^bb6:
  sea.cond_br %v16, ^bb7, ^bb8 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":35:9)
^bb7:
  sea.br ^bb8 loc("aws-c-common/include/aws/common/math.gcc_overflow.inl":36:9)
^bb8:
  sea.assume %v18 loc("aws-c-common/include/aws/common/array_list.inl":75:5)
  %v44 = sea.ptr.index %v3 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_18"("aws-c-common/include/aws/common/array_list.inl":76:11))
  sea.br ^bb9
^bb9:
  %v45 = sea.store %v43[%v44], %v15 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":76:24)
  %v46 = sea.ptr.index %v3 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_20"("aws-c-common/include/aws/common/array_list.inl":78:11))
  sea.br ^bb10
^bb10:
  %v47 = sea.store %v45[%v46], %v4 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":78:21)
  %v48 = sea.ptr.index %v3 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_22"("aws-c-common/include/aws/common/array_list.inl":79:11))
  sea.br ^bb11
^bb11:
  %v49 = sea.const 0 : i64 loc("aws-c-common/include/aws/common/array_list.inl":79:18)
  %v50 = sea.store %v47[%v48], %v49 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("aws-c-common/include/aws/common/array_list.inl":79:18)
  %v51 = sea.ptr.index %v3 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_24"("aws-c-common/include/aws/common/array_list.inl":80:11))
  sea.br ^bb12
^bb12:
  %v52 = sea.store %v50[%v51], %v21 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64> loc("aws-c-common/include/aws/common/array_list.inl":80:16)
  sea.br ^bb13
^bb13:
  sea.br ^bb14
^bb14:
  sea.br ^bb15
^bb15:
  sea.br ^bb16
^bb16:
  sea.br ^bb17
^bb17:
  sea.br ^bb18
^bb18:
  %v53 = sea.const 0 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":93:26))
  %v54 = sea.icmp ne, %v15, %v53 : i64 loc(".not"("aws-c-common/include/aws/common/array_list.inl":93:26))
  sea.cond_br %v54, ^bb21, ^bb19 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb19:
  sea.br ^bb20
^bb20:
  %v55 = sea.const 0 : i1
  sea.br ^bb26(%v55 : i1)
^bb21:
  sea.br ^bb22
^bb22:
  sea.br ^bb23
^bb23:
  sea.br ^bb24
^bb24:
  sea.br ^bb25
^bb25:
  %v56 = sea.const 0 : i64 loc("_36"("aws-c-common/include/aws/common/array_list.inl":95:48))
  %v57 = sea.icmp ne, %v4, %v56 : i64 loc("_36"("aws-c-common/include/aws/common/array_list.inl":95:48))
  sea.br ^bb26(%v57 : i1)
^bb26(%v58 : i1):
  sea.br ^bb27
^bb27:
  sea.br ^bb28
^bb28:
  sea.br ^bb29
^bb29:
  sea.br ^bb30
^bb30:
  sea.br ^bb31
^bb31:
  sea.br ^bb32
^bb32:
  sea.br ^bb33
^bb33:
  sea.br ^bb34
^bb34:
  sea.br ^bb35
^bb35:
  sea.br ^bb36
^bb36:
  sea.br ^bb37
^bb37:
  sea.br ^bb38
^bb38:
  sea.br ^bb39
^bb39:
  sea.br ^bb40
^bb40:
  sea.br ^bb41
^bb41:
  sea.br ^bb42
^bb42:
  sea.br ^bb43
^bb43:
  sea.br ^bb44
^bb44:
  sea.br ^bb45
^bb45:
  sea.br ^bb46
^bb46:
  sea.br ^bb47
^bb47:
  sea.br ^bb48
^bb48:
  sea.br ^bb49
^bb49:
  sea.br ^bb50
^bb50:
  sea.br ^bb51
^bb51:
  sea.br ^bb52
^bb52:
  sea.cond_br %v54, ^bb54, ^bb53 loc("aws-c-common/include/aws/common/array_list.inl":93:26)
^bb53:
  sea.br ^bb57
^bb54:
  sea.br ^bb55
^bb55:
  sea.br ^bb56
^bb56:
  sea.br ^bb57
^bb57:
  sea.br ^bb58
^bb58:
  sea.br ^bb59
^bb59:
  sea.br ^bb60
^bb60:
  sea.br ^bb61
^bb61:
  sea.br ^bb62
^bb62:
  sea.br ^bb63
^bb63:
  sea.br ^bb64
^bb64:
  sea.br ^bb65
^bb65:
  sea.br ^bb66
^bb66:
  sea.br ^bb67
^bb67:
  sea.br ^bb68
^bb68:
  sea.br ^bb69
^bb69:
  sea.br ^bb70
^bb70:
  sea.br ^bb71
^bb71:
  sea.br ^bb72
^bb72:
  sea.br ^bb73
^bb73:
  sea.br ^bb74
^bb74:
  sea.br ^bb75
^bb75:
  sea.br ^bb76
^bb76:
  sea.br ^bb77
^bb77:
  %v59 = sea.const 1 : i1 loc("brmerge.not")
  %v60 = sea.and %v54, %v59 : i1 loc("brmerge.not")
  sea.cond_br %v60, ^bb78, ^bb80
^bb78:
  %v61 = sea.mul %v5, %v4 : i64 loc("_83"("seahorn/jobs/priority_queue_init_static/aws_priority_queue_init_static_harness.c":48:3))
  %v62 = sea.icmp eq, %v15, %v61 : i64 loc("_84"("seahorn/jobs/priority_queue_init_static/aws_priority_queue_init_static_harness.c":48:3))
  sea.cond_br %v62, ^bb79, ^bb80 loc("seahorn/jobs/priority_queue_init_static/aws_priority_queue_init_static_harness.c":48:3)
^bb79:
  %v63 = sea.const 1 : i1 loc("seahorn/lib/utils.c":16:15)
  sea.assume %v63 loc("seahorn/lib/utils.c":16:15)
  %v64 = sea.nondet "nd_size_t" [7] : i64 loc("_85"("seahorn/lib/utils.c":17:16))
  %v65 = sea.icmp ult, %v64, %v15 : i64 loc("_86"("seahorn/lib/utils.c":19:14))
  %v66 = sea.const 36028797018963967 : i64 loc("_87"("seahorn/lib/utils.c":19:20))
  %v67 = sea.icmp ult, %v15, %v66 : i64 loc("_87"("seahorn/lib/utils.c":19:20))
  %v68 = sea.and %v67, %v65 : i1 loc("_88"("seahorn/lib/utils.c":19:20))
  sea.assume %v68 loc("seahorn/lib/utils.c":19:5)
  %v69 = sea.const 1 : i1 loc("seahorn/lib/utils.c":20:5)
  %v70 = sea.const 1 : i1 loc("seahorn/lib/utils.c":20:5)
  %v71 = sea.xor %v69, %v70 : i1 loc("seahorn/lib/utils.c":20:5)
  sea.assume %v71 loc("seahorn/lib/utils.c":20:5)
  sea.br ^bb80 loc("seahorn/lib/utils.c":20:5)
^bb80:
  sea.br ^bb81
^bb81:
  %v72 = sea.const 0 : i1
  sea.assert %v72
  sea.halt
}
