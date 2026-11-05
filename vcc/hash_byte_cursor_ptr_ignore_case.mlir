// Exported from SeaHorn (hash_byte_cursor_ptr_ignore_case.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm1")
  %v1 = sea.nondet "nd_size_t" [1] : i64 loc("_0"("seahorn/lib/byte_buf_helper.c":31:19))
  sea.br ^bb1
^bb1:
  sea.br ^bb2
^bb2:
  %v2 = sea.const 11 : i64 loc("_3"("seahorn/lib/byte_buf_helper.c":33:24))
  %v3 = sea.icmp ult, %v1, %v2 : i64 loc("_3"("seahorn/lib/byte_buf_helper.c":33:24))
  sea.assume %v3 loc("seahorn/lib/byte_buf_helper.c":33:5)
  %v4 = sea.nondet "nd_malloc_is_fail" [2] : i1 loc("_4"("seahorn/lib/sea_allocators.c":11:10))
  %v5 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v4, ^bb4(%v0, %v5 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/sea_allocators.c":11:10)
^bb3:
  %v6 = sea.const 10 : i64 loc("malloc.i1")
  %v7 = sea.alloca %v6 align 16 [3] : i64 -> !sea.ptr<64> loc("malloc.i1")
  sea.br ^bb4(%v0, %v7 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb4(%v8 : !sea.mem<!sea.ptr<64>, i8>, %v9 : !sea.ptr<64>):
  %v10 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":33:3)
  %v11 = sea.memhavoc %v8[%v9], %v10 [4] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb5
^bb5:
  sea.br ^bb6
^bb6:
  sea.assume %v3 loc("seahorn/jobs/hash_byte_cursor_ptr_ignore_case/aws_hash_byte_cursor_ptr_ignore_case_harness.c":17:3)
  sea.br ^bb7
^bb7:
  %v12 = sea.const 0 : i64 loc("_8"("aws-c-common/source/byte_buf.c":66:26))
  %v13 = sea.icmp eq, %v1, %v12 : i64 loc("_8"("aws-c-common/source/byte_buf.c":66:26))
  %v14 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v13, ^bb13(%v14 : i1), ^bb8 loc("aws-c-common/source/byte_buf.c":66:32)
^bb8:
  sea.br ^bb9
^bb9:
  sea.br ^bb10
^bb10:
  %v15 = sea.ptr.null : !sea.ptr<64> loc(".not2.i7.i"("aws-c-common/source/byte_buf.c":66:55))
  %v16 = sea.ptr.cmp eq, %v9, %v15 : !sea.ptr<64> loc(".not2.i7.i"("aws-c-common/source/byte_buf.c":66:55))
  %v17 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v16, ^bb13(%v17 : i1), ^bb11 loc("aws-c-common/source/byte_buf.c":66:67)
^bb11:
  sea.br ^bb12
^bb12:
  %v18 = sea.const 1 : i1
  sea.br ^bb13(%v18 : i1)
^bb13(%v19 : i1):
  sea.assume %v19 loc("seahorn/jobs/hash_byte_cursor_ptr_ignore_case/aws_hash_byte_cursor_ptr_ignore_case_harness.c":18:3)
  %v20 = sea.ptr.null : !sea.ptr<64> loc("_15"("seahorn/jobs/hash_byte_cursor_ptr_ignore_case/aws_hash_byte_cursor_ptr_ignore_case_harness.c":19:10))
  %v21 = sea.ptr.cmp ne, %v9, %v20 : !sea.ptr<64> loc("_15"("seahorn/jobs/hash_byte_cursor_ptr_ignore_case/aws_hash_byte_cursor_ptr_ignore_case_harness.c":19:10))
  %v22 = sea.or %v13, %v21 : i1 loc("_16"("seahorn/jobs/hash_byte_cursor_ptr_ignore_case/aws_hash_byte_cursor_ptr_ignore_case_harness.c":19:10))
  sea.assume %v22 loc("seahorn/jobs/hash_byte_cursor_ptr_ignore_case/aws_hash_byte_cursor_ptr_ignore_case_harness.c":19:3)
  sea.br ^bb14
^bb14:
  sea.br ^bb15
^bb15:
  %v23 = sea.ptr.null : !sea.ptr<64> loc("_19"("aws-c-common/source/byte_buf.c":499:29))
  %v24 = sea.ptr.cmp eq, %v9, %v23 : !sea.ptr<64> loc("_19"("aws-c-common/source/byte_buf.c":499:29))
  %v25 = sea.or %v13, %v24 : i1 loc(".not.i.i.i2"("aws-c-common/source/byte_buf.c":502:14))
  sea.cond_br %v25, ^bb37, ^bb16 loc("aws-c-common/source/byte_buf.c":502:5)
^bb16:
  %v26 = sea.const 1 : i64 loc("_20"("aws-c-common/source/byte_buf.c":503:47))
  %v27 = sea.ptr.dereferenceable %v9, %v26 : !sea.ptr<64>, i64 loc("_20"("aws-c-common/source/byte_buf.c":503:47))
  sea.cond_br %v27, ^bb17, ^bb52
^bb17:
  %v28 = sea.const 1 : i64 loc(".not.i.i.i"("aws-c-common/source/byte_buf.c":502:14))
  %v29 = sea.icmp eq, %v1, %v28 : i64 loc(".not.i.i.i"("aws-c-common/source/byte_buf.c":502:14))
  sea.cond_br %v29, ^bb37, ^bb18 loc("aws-c-common/source/byte_buf.c":502:5)
^bb18:
  %v30 = sea.ptr.index %v9 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_23"("aws-c-common/source/byte_buf.c":503:49))
  %v31 = sea.const 1 : i64 loc("_24"("aws-c-common/source/byte_buf.c":503:47))
  %v32 = sea.ptr.dereferenceable %v30, %v31 : !sea.ptr<64>, i64 loc("_24"("aws-c-common/source/byte_buf.c":503:47))
  sea.cond_br %v32, ^bb19, ^bb52
^bb19:
  %v33 = sea.const 2 : i64 loc(".not.i.i.i.1"("aws-c-common/source/byte_buf.c":502:14))
  %v34 = sea.icmp eq, %v1, %v33 : i64 loc(".not.i.i.i.1"("aws-c-common/source/byte_buf.c":502:14))
  sea.cond_br %v34, ^bb37, ^bb20 loc("aws-c-common/source/byte_buf.c":502:5)
^bb20:
  %v35 = sea.ptr.index %v9 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_26"("aws-c-common/source/byte_buf.c":503:49))
  %v36 = sea.const 1 : i64 loc("_27"("aws-c-common/source/byte_buf.c":503:47))
  %v37 = sea.ptr.dereferenceable %v35, %v36 : !sea.ptr<64>, i64 loc("_27"("aws-c-common/source/byte_buf.c":503:47))
  sea.cond_br %v37, ^bb21, ^bb52
^bb21:
  %v38 = sea.const 3 : i64 loc(".not.i.i.i.2"("aws-c-common/source/byte_buf.c":502:14))
  %v39 = sea.icmp eq, %v1, %v38 : i64 loc(".not.i.i.i.2"("aws-c-common/source/byte_buf.c":502:14))
  sea.cond_br %v39, ^bb37, ^bb22 loc("aws-c-common/source/byte_buf.c":502:5)
^bb22:
  %v40 = sea.ptr.index %v9 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_29"("aws-c-common/source/byte_buf.c":503:49))
  %v41 = sea.const 1 : i64 loc("_30"("aws-c-common/source/byte_buf.c":503:47))
  %v42 = sea.ptr.dereferenceable %v40, %v41 : !sea.ptr<64>, i64 loc("_30"("aws-c-common/source/byte_buf.c":503:47))
  sea.cond_br %v42, ^bb23, ^bb52
^bb23:
  %v43 = sea.const 4 : i64 loc(".not.i.i.i.3"("aws-c-common/source/byte_buf.c":502:14))
  %v44 = sea.icmp eq, %v1, %v43 : i64 loc(".not.i.i.i.3"("aws-c-common/source/byte_buf.c":502:14))
  sea.cond_br %v44, ^bb37, ^bb24 loc("aws-c-common/source/byte_buf.c":502:5)
^bb24:
  %v45 = sea.ptr.index %v9 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_32"("aws-c-common/source/byte_buf.c":503:49))
  %v46 = sea.const 1 : i64 loc("_33"("aws-c-common/source/byte_buf.c":503:47))
  %v47 = sea.ptr.dereferenceable %v45, %v46 : !sea.ptr<64>, i64 loc("_33"("aws-c-common/source/byte_buf.c":503:47))
  sea.cond_br %v47, ^bb25, ^bb52
^bb25:
  %v48 = sea.const 5 : i64 loc(".not.i.i.i.4"("aws-c-common/source/byte_buf.c":502:14))
  %v49 = sea.icmp eq, %v1, %v48 : i64 loc(".not.i.i.i.4"("aws-c-common/source/byte_buf.c":502:14))
  sea.cond_br %v49, ^bb37, ^bb26 loc("aws-c-common/source/byte_buf.c":502:5)
^bb26:
  %v50 = sea.ptr.index %v9 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_35"("aws-c-common/source/byte_buf.c":503:49))
  %v51 = sea.const 1 : i64 loc("_36"("aws-c-common/source/byte_buf.c":503:47))
  %v52 = sea.ptr.dereferenceable %v50, %v51 : !sea.ptr<64>, i64 loc("_36"("aws-c-common/source/byte_buf.c":503:47))
  sea.cond_br %v52, ^bb27, ^bb52
^bb27:
  %v53 = sea.const 6 : i64 loc(".not.i.i.i.5"("aws-c-common/source/byte_buf.c":502:14))
  %v54 = sea.icmp eq, %v1, %v53 : i64 loc(".not.i.i.i.5"("aws-c-common/source/byte_buf.c":502:14))
  sea.cond_br %v54, ^bb37, ^bb28 loc("aws-c-common/source/byte_buf.c":502:5)
^bb28:
  %v55 = sea.ptr.index %v9 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_38"("aws-c-common/source/byte_buf.c":503:49))
  %v56 = sea.const 1 : i64 loc("_39"("aws-c-common/source/byte_buf.c":503:47))
  %v57 = sea.ptr.dereferenceable %v55, %v56 : !sea.ptr<64>, i64 loc("_39"("aws-c-common/source/byte_buf.c":503:47))
  sea.cond_br %v57, ^bb29, ^bb52
^bb29:
  %v58 = sea.const 7 : i64 loc(".not.i.i.i.6"("aws-c-common/source/byte_buf.c":502:14))
  %v59 = sea.icmp eq, %v1, %v58 : i64 loc(".not.i.i.i.6"("aws-c-common/source/byte_buf.c":502:14))
  sea.cond_br %v59, ^bb37, ^bb30 loc("aws-c-common/source/byte_buf.c":502:5)
^bb30:
  %v60 = sea.ptr.index %v9 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_41"("aws-c-common/source/byte_buf.c":503:49))
  %v61 = sea.const 1 : i64 loc("_42"("aws-c-common/source/byte_buf.c":503:47))
  %v62 = sea.ptr.dereferenceable %v60, %v61 : !sea.ptr<64>, i64 loc("_42"("aws-c-common/source/byte_buf.c":503:47))
  sea.cond_br %v62, ^bb31, ^bb52
^bb31:
  %v63 = sea.const 8 : i64 loc(".not.i.i.i.7"("aws-c-common/source/byte_buf.c":502:14))
  %v64 = sea.icmp eq, %v1, %v63 : i64 loc(".not.i.i.i.7"("aws-c-common/source/byte_buf.c":502:14))
  sea.cond_br %v64, ^bb37, ^bb32 loc("aws-c-common/source/byte_buf.c":502:5)
^bb32:
  %v65 = sea.ptr.index %v9 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_44"("aws-c-common/source/byte_buf.c":503:49))
  %v66 = sea.const 1 : i64 loc("_45"("aws-c-common/source/byte_buf.c":503:47))
  %v67 = sea.ptr.dereferenceable %v65, %v66 : !sea.ptr<64>, i64 loc("_45"("aws-c-common/source/byte_buf.c":503:47))
  sea.cond_br %v67, ^bb33, ^bb52
^bb33:
  %v68 = sea.const 9 : i64 loc(".not.i.i.i.8"("aws-c-common/source/byte_buf.c":502:14))
  %v69 = sea.icmp eq, %v1, %v68 : i64 loc(".not.i.i.i.8"("aws-c-common/source/byte_buf.c":502:14))
  sea.cond_br %v69, ^bb37, ^bb34 loc("aws-c-common/source/byte_buf.c":502:5)
^bb34:
  %v70 = sea.ptr.index %v9 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_47"("aws-c-common/source/byte_buf.c":503:49))
  %v71 = sea.const 1 : i64 loc("_48"("aws-c-common/source/byte_buf.c":503:47))
  %v72 = sea.ptr.dereferenceable %v70, %v71 : !sea.ptr<64>, i64 loc("_48"("aws-c-common/source/byte_buf.c":503:47))
  sea.cond_br %v72, ^bb35, ^bb52
^bb35:
  %v73 = sea.const 10 : i64 loc(".not.i.i.i.9"("aws-c-common/source/byte_buf.c":502:14))
  %v74 = sea.icmp eq, %v1, %v73 : i64 loc(".not.i.i.i.9"("aws-c-common/source/byte_buf.c":502:14))
  sea.cond_br %v74, ^bb37, ^bb36 loc("aws-c-common/source/byte_buf.c":502:5)
^bb36:
  %v75 = sea.ptr.index %v9 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_21"("aws-c-common/source/byte_buf.c":503:49))
  %v76 = sea.const 1 : i64 loc("_22"("aws-c-common/source/byte_buf.c":503:47))
  %v77 = sea.ptr.dereferenceable %v75, %v76 : !sea.ptr<64>, i64 loc("_22"("aws-c-common/source/byte_buf.c":503:47))
  %v78 = sea.const 1 : i1
  %v79 = sea.xor %v77, %v78 : i1
  sea.assume %v79
  sea.br ^bb52
^bb37:
  sea.br ^bb38
^bb38:
  %v80 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v13, ^bb44(%v80 : i1), ^bb39 loc("aws-c-common/source/byte_buf.c":66:32)
^bb39:
  sea.br ^bb40
^bb40:
  sea.br ^bb41
^bb41:
  %v81 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v24, ^bb44(%v81 : i1), ^bb42 loc("aws-c-common/source/byte_buf.c":66:67)
^bb42:
  sea.br ^bb43
^bb43:
  %v82 = sea.const 1 : i1
  sea.br ^bb44(%v82 : i1)
^bb44(%v83 : i1):
  sea.br ^bb45
^bb45:
  %v84 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v13, ^bb51(%v84 : i1), ^bb46 loc("aws-c-common/source/byte_buf.c":66:32)
^bb46:
  sea.br ^bb47
^bb47:
  sea.br ^bb48
^bb48:
  %v85 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v24, ^bb51(%v85 : i1), ^bb49 loc("aws-c-common/source/byte_buf.c":66:67)
^bb49:
  sea.br ^bb50
^bb50:
  %v86 = sea.const 1 : i1
  sea.br ^bb51(%v86 : i1)
^bb51(%v87 : i1):
  %v88 = sea.const 1 : i1 loc("seahorn/jobs/hash_byte_cursor_ptr_ignore_case/aws_hash_byte_cursor_ptr_ignore_case_harness.c":25:3)
  %v89 = sea.xor %v87, %v88 : i1 loc("seahorn/jobs/hash_byte_cursor_ptr_ignore_case/aws_hash_byte_cursor_ptr_ignore_case_harness.c":25:3)
  sea.assume %v89 loc("seahorn/jobs/hash_byte_cursor_ptr_ignore_case/aws_hash_byte_cursor_ptr_ignore_case_harness.c":25:3)
  sea.br ^bb52 loc("seahorn/jobs/hash_byte_cursor_ptr_ignore_case/aws_hash_byte_cursor_ptr_ignore_case_harness.c":25:3)
^bb52:
  sea.br ^bb53
^bb53:
  %v90 = sea.const 0 : i1
  sea.assert %v90
  sea.halt
}
