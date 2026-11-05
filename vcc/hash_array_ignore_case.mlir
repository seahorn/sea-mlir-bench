// Exported from SeaHorn (hash_array_ignore_case.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm1")
  %v1 = sea.nondet "nd_size_t" [1] : i64 loc("_0"("seahorn/jobs/hash_array_ignore_case/aws_hash_array_ignore_case_harness.c":8:21))
  %v2 = sea.const 10 : i64 loc("_1"("seahorn/jobs/hash_array_ignore_case/aws_hash_array_ignore_case_harness.c":9:19))
  %v3 = sea.icmp ult, %v1, %v2 : i64 loc("_1"("seahorn/jobs/hash_array_ignore_case/aws_hash_array_ignore_case_harness.c":9:19))
  sea.assume %v3 loc("seahorn/jobs/hash_array_ignore_case/aws_hash_array_ignore_case_harness.c":9:5)
  %v4 = sea.const 0 : i64 loc("_2"("seahorn/lib/proof_allocators.c":21:15))
  %v5 = sea.icmp eq, %v1, %v4 : i64 loc("_2"("seahorn/lib/proof_allocators.c":21:15))
  %v6 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v5, ^bb4(%v6 : !sea.ptr<64>), ^bb1 loc("seahorn/lib/proof_allocators.c":21:10)
^bb1:
  %v7 = sea.nondet "nd_malloc_is_fail" [2] : i1 loc("_4"("seahorn/lib/sea_allocators.c":11:10))
  %v8 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v7, ^bb3(%v0, %v8 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb2 loc("seahorn/lib/sea_allocators.c":11:10)
^bb2:
  %v9 = sea.const 1 : i64 loc("malloc.i")
  %v10 = sea.mul %v1, %v9 : i64 loc("malloc.i")
  %v11 = sea.alloca %v10 align 16 [3] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb3(%v0, %v11 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb3(%v12 : !sea.mem<!sea.ptr<64>, i8>, %v13 : !sea.ptr<64>):
  %v14 = sea.memhavoc %v12[%v13], %v1 [4] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb4(%v13 : !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb4(%v15 : !sea.ptr<64>):
  %v16 = sea.ptr.null : !sea.ptr<64> loc("_8"("seahorn/jobs/hash_array_ignore_case/aws_hash_array_ignore_case_harness.c":11:12))
  %v17 = sea.ptr.cmp ne, %v15, %v16 : !sea.ptr<64> loc("_8"("seahorn/jobs/hash_array_ignore_case/aws_hash_array_ignore_case_harness.c":11:12))
  %v18 = sea.or %v5, %v17 : i1 loc("_9"("seahorn/jobs/hash_array_ignore_case/aws_hash_array_ignore_case_harness.c":11:12))
  sea.assume %v18 loc("seahorn/jobs/hash_array_ignore_case/aws_hash_array_ignore_case_harness.c":11:5)
  %v19 = sea.ptr.null : !sea.ptr<64> loc("_10"("aws-c-common/source/byte_buf.c":499:29))
  %v20 = sea.ptr.cmp eq, %v15, %v19 : !sea.ptr<64> loc("_10"("aws-c-common/source/byte_buf.c":499:29))
  %v21 = sea.or %v5, %v20 : i1 loc(".not.i.i1"("aws-c-common/source/byte_buf.c":502:14))
  sea.cond_br %v21, ^bb26, ^bb5 loc("aws-c-common/source/byte_buf.c":502:5)
^bb5:
  %v22 = sea.const 1 : i64 loc("_11"("aws-c-common/source/byte_buf.c":503:47))
  %v23 = sea.ptr.dereferenceable %v15, %v22 : !sea.ptr<64>, i64 loc("_11"("aws-c-common/source/byte_buf.c":503:47))
  sea.cond_br %v23, ^bb6, ^bb27
^bb6:
  %v24 = sea.const 1 : i64 loc(".not.i.i"("aws-c-common/source/byte_buf.c":502:14))
  %v25 = sea.icmp eq, %v1, %v24 : i64 loc(".not.i.i"("aws-c-common/source/byte_buf.c":502:14))
  sea.cond_br %v25, ^bb26, ^bb7 loc("aws-c-common/source/byte_buf.c":502:5)
^bb7:
  %v26 = sea.ptr.index %v15 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_14"("aws-c-common/source/byte_buf.c":503:49))
  %v27 = sea.const 1 : i64 loc("_15"("aws-c-common/source/byte_buf.c":503:47))
  %v28 = sea.ptr.dereferenceable %v26, %v27 : !sea.ptr<64>, i64 loc("_15"("aws-c-common/source/byte_buf.c":503:47))
  sea.cond_br %v28, ^bb8, ^bb27
^bb8:
  %v29 = sea.const 2 : i64 loc(".not.i.i.1"("aws-c-common/source/byte_buf.c":502:14))
  %v30 = sea.icmp eq, %v1, %v29 : i64 loc(".not.i.i.1"("aws-c-common/source/byte_buf.c":502:14))
  sea.cond_br %v30, ^bb26, ^bb9 loc("aws-c-common/source/byte_buf.c":502:5)
^bb9:
  %v31 = sea.ptr.index %v15 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_17"("aws-c-common/source/byte_buf.c":503:49))
  %v32 = sea.const 1 : i64 loc("_18"("aws-c-common/source/byte_buf.c":503:47))
  %v33 = sea.ptr.dereferenceable %v31, %v32 : !sea.ptr<64>, i64 loc("_18"("aws-c-common/source/byte_buf.c":503:47))
  sea.cond_br %v33, ^bb10, ^bb27
^bb10:
  %v34 = sea.const 3 : i64 loc(".not.i.i.2"("aws-c-common/source/byte_buf.c":502:14))
  %v35 = sea.icmp eq, %v1, %v34 : i64 loc(".not.i.i.2"("aws-c-common/source/byte_buf.c":502:14))
  sea.cond_br %v35, ^bb26, ^bb11 loc("aws-c-common/source/byte_buf.c":502:5)
^bb11:
  %v36 = sea.ptr.index %v15 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_20"("aws-c-common/source/byte_buf.c":503:49))
  %v37 = sea.const 1 : i64 loc("_21"("aws-c-common/source/byte_buf.c":503:47))
  %v38 = sea.ptr.dereferenceable %v36, %v37 : !sea.ptr<64>, i64 loc("_21"("aws-c-common/source/byte_buf.c":503:47))
  sea.cond_br %v38, ^bb12, ^bb27
^bb12:
  %v39 = sea.const 4 : i64 loc(".not.i.i.3"("aws-c-common/source/byte_buf.c":502:14))
  %v40 = sea.icmp eq, %v1, %v39 : i64 loc(".not.i.i.3"("aws-c-common/source/byte_buf.c":502:14))
  sea.cond_br %v40, ^bb26, ^bb13 loc("aws-c-common/source/byte_buf.c":502:5)
^bb13:
  %v41 = sea.ptr.index %v15 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_23"("aws-c-common/source/byte_buf.c":503:49))
  %v42 = sea.const 1 : i64 loc("_24"("aws-c-common/source/byte_buf.c":503:47))
  %v43 = sea.ptr.dereferenceable %v41, %v42 : !sea.ptr<64>, i64 loc("_24"("aws-c-common/source/byte_buf.c":503:47))
  sea.cond_br %v43, ^bb14, ^bb27
^bb14:
  %v44 = sea.const 5 : i64 loc(".not.i.i.4"("aws-c-common/source/byte_buf.c":502:14))
  %v45 = sea.icmp eq, %v1, %v44 : i64 loc(".not.i.i.4"("aws-c-common/source/byte_buf.c":502:14))
  sea.cond_br %v45, ^bb26, ^bb15 loc("aws-c-common/source/byte_buf.c":502:5)
^bb15:
  %v46 = sea.ptr.index %v15 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_26"("aws-c-common/source/byte_buf.c":503:49))
  %v47 = sea.const 1 : i64 loc("_27"("aws-c-common/source/byte_buf.c":503:47))
  %v48 = sea.ptr.dereferenceable %v46, %v47 : !sea.ptr<64>, i64 loc("_27"("aws-c-common/source/byte_buf.c":503:47))
  sea.cond_br %v48, ^bb16, ^bb27
^bb16:
  %v49 = sea.const 6 : i64 loc(".not.i.i.5"("aws-c-common/source/byte_buf.c":502:14))
  %v50 = sea.icmp eq, %v1, %v49 : i64 loc(".not.i.i.5"("aws-c-common/source/byte_buf.c":502:14))
  sea.cond_br %v50, ^bb26, ^bb17 loc("aws-c-common/source/byte_buf.c":502:5)
^bb17:
  %v51 = sea.ptr.index %v15 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_29"("aws-c-common/source/byte_buf.c":503:49))
  %v52 = sea.const 1 : i64 loc("_30"("aws-c-common/source/byte_buf.c":503:47))
  %v53 = sea.ptr.dereferenceable %v51, %v52 : !sea.ptr<64>, i64 loc("_30"("aws-c-common/source/byte_buf.c":503:47))
  sea.cond_br %v53, ^bb18, ^bb27
^bb18:
  %v54 = sea.const 7 : i64 loc(".not.i.i.6"("aws-c-common/source/byte_buf.c":502:14))
  %v55 = sea.icmp eq, %v1, %v54 : i64 loc(".not.i.i.6"("aws-c-common/source/byte_buf.c":502:14))
  sea.cond_br %v55, ^bb26, ^bb19 loc("aws-c-common/source/byte_buf.c":502:5)
^bb19:
  %v56 = sea.ptr.index %v15 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_32"("aws-c-common/source/byte_buf.c":503:49))
  %v57 = sea.const 1 : i64 loc("_33"("aws-c-common/source/byte_buf.c":503:47))
  %v58 = sea.ptr.dereferenceable %v56, %v57 : !sea.ptr<64>, i64 loc("_33"("aws-c-common/source/byte_buf.c":503:47))
  sea.cond_br %v58, ^bb20, ^bb27
^bb20:
  %v59 = sea.const 8 : i64 loc(".not.i.i.7"("aws-c-common/source/byte_buf.c":502:14))
  %v60 = sea.icmp eq, %v1, %v59 : i64 loc(".not.i.i.7"("aws-c-common/source/byte_buf.c":502:14))
  sea.cond_br %v60, ^bb26, ^bb21 loc("aws-c-common/source/byte_buf.c":502:5)
^bb21:
  %v61 = sea.ptr.index %v15 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_35"("aws-c-common/source/byte_buf.c":503:49))
  %v62 = sea.const 1 : i64 loc("_36"("aws-c-common/source/byte_buf.c":503:47))
  %v63 = sea.ptr.dereferenceable %v61, %v62 : !sea.ptr<64>, i64 loc("_36"("aws-c-common/source/byte_buf.c":503:47))
  sea.cond_br %v63, ^bb22, ^bb27
^bb22:
  %v64 = sea.const 9 : i64 loc(".not.i.i.8"("aws-c-common/source/byte_buf.c":502:14))
  %v65 = sea.icmp eq, %v1, %v64 : i64 loc(".not.i.i.8"("aws-c-common/source/byte_buf.c":502:14))
  sea.cond_br %v65, ^bb26, ^bb23 loc("aws-c-common/source/byte_buf.c":502:5)
^bb23:
  %v66 = sea.ptr.index %v15 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_38"("aws-c-common/source/byte_buf.c":503:49))
  %v67 = sea.const 1 : i64 loc("_39"("aws-c-common/source/byte_buf.c":503:47))
  %v68 = sea.ptr.dereferenceable %v66, %v67 : !sea.ptr<64>, i64 loc("_39"("aws-c-common/source/byte_buf.c":503:47))
  sea.cond_br %v68, ^bb24, ^bb27
^bb24:
  %v69 = sea.const 10 : i64 loc(".not.i.i.9"("aws-c-common/source/byte_buf.c":502:14))
  %v70 = sea.icmp eq, %v1, %v69 : i64 loc(".not.i.i.9"("aws-c-common/source/byte_buf.c":502:14))
  sea.cond_br %v70, ^bb26, ^bb25 loc("aws-c-common/source/byte_buf.c":502:5)
^bb25:
  %v71 = sea.ptr.index %v15 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_12"("aws-c-common/source/byte_buf.c":503:49))
  %v72 = sea.const 1 : i64 loc("_13"("aws-c-common/source/byte_buf.c":503:47))
  %v73 = sea.ptr.dereferenceable %v71, %v72 : !sea.ptr<64>, i64 loc("_13"("aws-c-common/source/byte_buf.c":503:47))
  %v74 = sea.const 1 : i1
  %v75 = sea.xor %v73, %v74 : i1
  sea.assume %v75
  sea.br ^bb27
^bb26:
  %v76 = sea.const 1 : i1 loc("seahorn/jobs/hash_array_ignore_case/aws_hash_array_ignore_case_harness.c":17:5)
  %v77 = sea.xor %v18, %v76 : i1 loc("seahorn/jobs/hash_array_ignore_case/aws_hash_array_ignore_case_harness.c":17:5)
  sea.assume %v77 loc("seahorn/jobs/hash_array_ignore_case/aws_hash_array_ignore_case_harness.c":17:5)
  sea.br ^bb27 loc("seahorn/jobs/hash_array_ignore_case/aws_hash_array_ignore_case_harness.c":17:5)
^bb27:
  sea.br ^bb28
^bb28:
  %v78 = sea.const 0 : i1
  sea.assert %v78
  sea.halt
}
