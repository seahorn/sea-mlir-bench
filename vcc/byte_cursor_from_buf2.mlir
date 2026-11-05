// Exported from SeaHorn (byte_cursor_from_buf2.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
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
  %v43 = sea.icmp ugt, %v17, %v18 : i64 loc(".not2.i7.i"("aws-c-common/source/byte_buf.c":61:44))
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
  sea.assume %v53 loc("seahorn/jobs2/byte_cursor_from_buf2/aws_byte_cursor_from_buf_harness2.c":17:5)
  sea.tracking_on loc("seahorn/jobs2/byte_cursor_from_buf2/aws_byte_cursor_from_buf_harness2.c":20:5)
  %v54 = sea.mem.reset_modified %v42[%v4] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_from_buf2/aws_byte_cursor_from_buf_harness2.c":21:5)
  %v55 = sea.load %v39[%v38] align 8 : !sea.mem<!sea.ptr<64>, i8> -> !sea.ptr<64> loc("_34"("seahorn/jobs2/byte_cursor_from_buf2/aws_byte_cursor_from_buf_harness2.c":22:36))
  %v56 = sea.mem.reset_modified %v36[%v55] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/jobs2/byte_cursor_from_buf2/aws_byte_cursor_from_buf_harness2.c":22:5)
  sea.br ^bb23
^bb23:
  sea.br ^bb24
^bb24:
  %v57 = sea.load %v54[%v4] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_36"("aws-c-common/source/byte_buf.c":986:20))
  sea.br ^bb25
^bb25:
  %v58 = sea.load %v24[%v23] align 8 : !sea.mem<!sea.ptr<64>, i8> -> i64 loc("_38"("aws-c-common/source/byte_buf.c":60:19))
  %v59 = sea.const 0 : i64 loc(".not"("aws-c-common/source/byte_buf.c":60:28))
  %v60 = sea.icmp eq, %v58, %v59 : i64 loc(".not"("aws-c-common/source/byte_buf.c":60:28))
  sea.cond_br %v60, ^bb33, ^bb26 loc("aws-c-common/source/byte_buf.c":60:33)
^bb26:
  sea.br ^bb27
^bb27:
  sea.br ^bb28
^bb28:
  sea.br ^bb29
^bb29:
  %v61 = sea.icmp ugt, %v57, %v58 : i64 loc(".not2.i3.i"("aws-c-common/source/byte_buf.c":61:44))
  %v62 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":61:61)
  sea.cond_br %v61, ^bb38(%v62 : i1), ^bb30 loc("aws-c-common/source/byte_buf.c":61:61)
^bb30:
  sea.br ^bb31
^bb31:
  sea.br ^bb32
^bb32:
  %v63 = sea.ptr.null : !sea.ptr<64> loc("_51"("aws-c-common/source/byte_buf.c":61:64))
  %v64 = sea.ptr.cmp ne, %v55, %v63 : !sea.ptr<64> loc("_51"("aws-c-common/source/byte_buf.c":61:64))
  sea.br ^bb38(%v64 : i1) loc("aws-c-common/source/byte_buf.c":61:64)
^bb33:
  sea.br ^bb34
^bb34:
  %v65 = sea.const 0 : i64 loc("_41"("aws-c-common/source/byte_buf.c":60:45))
  %v66 = sea.icmp eq, %v57, %v65 : i64 loc("_41"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v66, ^bb35, ^bb37 loc("aws-c-common/source/byte_buf.c":60:50)
^bb35:
  sea.br ^bb36
^bb36:
  %v67 = sea.ptr.null : !sea.ptr<64> loc("_44"("aws-c-common/source/byte_buf.c":60:65))
  %v68 = sea.ptr.cmp eq, %v55, %v67 : !sea.ptr<64> loc("_44"("aws-c-common/source/byte_buf.c":60:65))
  %v69 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":60:74)
  sea.cond_br %v68, ^bb38(%v69 : i1), ^bb37 loc("aws-c-common/source/byte_buf.c":60:74)
^bb37:
  %v70 = sea.const 0 : i1
  sea.br ^bb38(%v70 : i1)
^bb38(%v71 : i1):
  sea.br ^bb39
^bb39:
  sea.cond_br %v60, ^bb45, ^bb40 loc("aws-c-common/source/byte_buf.c":60:33)
^bb40:
  sea.br ^bb41
^bb41:
  sea.br ^bb42
^bb42:
  %v72 = sea.icmp ule, %v57, %v58 : i64 loc(".not2.i.i")
  %v73 = sea.const 1 : i1 loc("or.cond12.not")
  %v74 = sea.const 0 : i1 loc("or.cond12.not")
  %v75 = sea.select %v73, %v72, %v74 : i1 loc("or.cond12.not")
  sea.cond_br %v75, ^bb43, ^bb69
^bb43:
  sea.br ^bb44
^bb44:
  %v76 = sea.ptr.null : !sea.ptr<64> loc("_65")
  %v77 = sea.ptr.cmp ne, %v55, %v76 : !sea.ptr<64> loc("_65")
  %v78 = sea.const 1 : i1 loc("or.cond")
  %v79 = sea.const 0 : i1 loc("or.cond")
  %v80 = sea.select %v78, %v77, %v79 : i1 loc("or.cond")
  sea.cond_br %v80, ^bb50, ^bb69
^bb45:
  sea.br ^bb46
^bb46:
  %v81 = sea.const 0 : i64 loc("_56"("aws-c-common/source/byte_buf.c":60:45))
  %v82 = sea.icmp eq, %v57, %v81 : i64 loc("_56"("aws-c-common/source/byte_buf.c":60:45))
  sea.cond_br %v82, ^bb47, ^bb49 loc("aws-c-common/source/byte_buf.c":60:50)
^bb47:
  sea.br ^bb48
^bb48:
  %v83 = sea.ptr.null : !sea.ptr<64> loc("_59"("aws-c-common/source/byte_buf.c":60:65))
  %v84 = sea.ptr.cmp eq, %v55, %v83 : !sea.ptr<64> loc("_59"("aws-c-common/source/byte_buf.c":60:65))
  sea.cond_br %v84, ^bb50, ^bb49 loc("aws-c-common/source/byte_buf.c":60:74)
^bb49:
  sea.br ^bb69
^bb50:
  sea.br ^bb51
^bb51:
  %v85 = sea.const 0 : i64 loc("_67"("aws-c-common/source/byte_buf.c":66:26))
  %v86 = sea.icmp eq, %v57, %v85 : i64 loc("_67"("aws-c-common/source/byte_buf.c":66:26))
  %v87 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v86, ^bb57(%v87 : i1), ^bb52 loc("aws-c-common/source/byte_buf.c":66:32)
^bb52:
  sea.br ^bb53
^bb53:
  sea.br ^bb54
^bb54:
  %v88 = sea.ptr.null : !sea.ptr<64> loc(".not2.i14.i"("aws-c-common/source/byte_buf.c":66:55))
  %v89 = sea.ptr.cmp eq, %v55, %v88 : !sea.ptr<64> loc(".not2.i14.i"("aws-c-common/source/byte_buf.c":66:55))
  %v90 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v89, ^bb57(%v90 : i1), ^bb55 loc("aws-c-common/source/byte_buf.c":66:67)
^bb55:
  sea.br ^bb56
^bb56:
  %v91 = sea.const 1 : i1
  sea.br ^bb57(%v91 : i1)
^bb57(%v92 : i1):
  sea.br ^bb58
^bb58:
  sea.cond_br %v86, ^bb64, ^bb59 loc("aws-c-common/source/byte_buf.c":66:32)
^bb59:
  sea.br ^bb60
^bb60:
  %v93 = sea.ptr.null : !sea.ptr<64> loc(".not2.i11.i")
  %v94 = sea.ptr.cmp ne, %v55, %v93 : !sea.ptr<64> loc(".not2.i11.i")
  %v95 = sea.const 1 : i1 loc("or.cond16.not")
  %v96 = sea.const 0 : i1 loc("or.cond16.not")
  %v97 = sea.select %v95, %v94, %v96 : i1 loc("or.cond16.not")
  sea.cond_br %v97, ^bb61, ^bb69
^bb61:
  sea.br ^bb62
^bb62:
  sea.br ^bb63
^bb63:
  sea.br ^bb65 loc("seahorn/jobs2/byte_cursor_from_buf2/aws_byte_cursor_from_buf_harness2.c":31:9)
^bb64:
  %v98 = sea.ptr.null : !sea.ptr<64> loc(".not.i"("seahorn/jobs2/byte_cursor_from_buf2/aws_byte_cursor_from_buf_harness2.c":31:9))
  %v99 = sea.ptr.cmp eq, %v55, %v98 : !sea.ptr<64> loc(".not.i"("seahorn/jobs2/byte_cursor_from_buf2/aws_byte_cursor_from_buf_harness2.c":31:9))
  sea.cond_br %v99, ^bb67, ^bb65 loc("seahorn/jobs2/byte_cursor_from_buf2/aws_byte_cursor_from_buf_harness2.c":31:9)
^bb65:
  sea.cond_br %v86, ^bb67, ^bb66 loc("seahorn/lib/utils.c":15:3)
^bb66:
  %v100 = sea.nondet "nd_size_t" [9] : i64 loc("_81"("seahorn/lib/utils.c":17:16))
  %v101 = sea.icmp ult, %v100, %v57 : i64 loc("_82"("seahorn/lib/utils.c":19:14))
  %v102 = sea.const 36028797018963967 : i64 loc("_83"("seahorn/lib/utils.c":19:20))
  %v103 = sea.icmp ult, %v57, %v102 : i64 loc("_83"("seahorn/lib/utils.c":19:20))
  %v104 = sea.and %v103, %v101 : i1 loc("_84"("seahorn/lib/utils.c":19:20))
  sea.assume %v104 loc("seahorn/lib/utils.c":19:5)
  sea.br ^bb67
^bb67:
  %v105 = sea.mem.is_modified %v54[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_85"("seahorn/jobs2/byte_cursor_from_buf2/aws_byte_cursor_from_buf_harness2.c":34:5))
  %v106 = sea.const 1 : i1 loc("_86"("seahorn/jobs2/byte_cursor_from_buf2/aws_byte_cursor_from_buf_harness2.c":34:5))
  %v107 = sea.xor %v105, %v106 : i1 loc("_86"("seahorn/jobs2/byte_cursor_from_buf2/aws_byte_cursor_from_buf_harness2.c":34:5))
  %v108 = sea.mem.is_modified %v54[%v4] : !sea.mem<!sea.ptr<64>, i8> loc("_87"("seahorn/jobs2/byte_cursor_from_buf2/aws_byte_cursor_from_buf_harness2.c":34:5))
  sea.cond_br %v108, ^bb69, ^bb68 loc("seahorn/jobs2/byte_cursor_from_buf2/aws_byte_cursor_from_buf_harness2.c":34:5)
^bb68:
  %v109 = sea.mem.is_modified %v56[%v55] : !sea.mem<!sea.ptr<64>, i8> loc("_89"("seahorn/jobs2/byte_cursor_from_buf2/aws_byte_cursor_from_buf_harness2.c":35:5))
  %v110 = sea.const 1 : i1 loc("_90"("seahorn/jobs2/byte_cursor_from_buf2/aws_byte_cursor_from_buf_harness2.c":35:5))
  %v111 = sea.xor %v109, %v110 : i1 loc("_90"("seahorn/jobs2/byte_cursor_from_buf2/aws_byte_cursor_from_buf_harness2.c":35:5))
  %v112 = sea.mem.is_modified %v56[%v55] : !sea.mem<!sea.ptr<64>, i8> loc("_91"("seahorn/jobs2/byte_cursor_from_buf2/aws_byte_cursor_from_buf_harness2.c":35:5))
  sea.assume %v112 loc("seahorn/jobs2/byte_cursor_from_buf2/aws_byte_cursor_from_buf_harness2.c":35:5)
  sea.br ^bb69 loc("seahorn/jobs2/byte_cursor_from_buf2/aws_byte_cursor_from_buf_harness2.c":35:5)
^bb69:
  sea.br ^bb70
^bb70:
  %v113 = sea.const 0 : i1
  sea.assert %v113
  sea.halt
}
