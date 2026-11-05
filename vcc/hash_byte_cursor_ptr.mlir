// Exported from SeaHorn (hash_byte_cursor_ptr.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm10")
  %v1 = sea.mem.nondet "region.8" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm11")
  %v2 = sea.const 16 : i64 loc("_0")
  %v3 = sea.alloca %v2 align 8 [2] : i64 -> !sea.ptr<64> loc("_0")
  %v4 = sea.nondet "nd_size_t" [3] : i64 loc("_1"("seahorn/lib/byte_buf_helper.c":38:17))
  sea.br ^bb1
^bb1:
  %v5 = sea.store %v0[%v3], %v4 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/byte_buf_helper.c":38:15)
  sea.br ^bb2
^bb2:
  %v6 = sea.const 11 : i64 loc("_4"("seahorn/lib/byte_buf_helper.c":40:22))
  %v7 = sea.icmp ult, %v4, %v6 : i64 loc("_4"("seahorn/lib/byte_buf_helper.c":40:22))
  sea.assume %v7 loc("seahorn/lib/byte_buf_helper.c":40:3)
  %v8 = sea.nondet "nd_malloc_is_fail" [4] : i1 loc("_5"("seahorn/lib/sea_allocators.c":11:10))
  %v9 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v8, ^bb4(%v1, %v9 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb3 loc("seahorn/lib/sea_allocators.c":11:10)
^bb3:
  %v10 = sea.const 16 : i64 loc("malloc.i1")
  %v11 = sea.alloca %v10 align 16 [5] : i64 -> !sea.ptr<64> loc("malloc.i1")
  sea.br ^bb4(%v1, %v11 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb4(%v12 : !sea.mem<!sea.ptr<64>, i8>, %v13 : !sea.ptr<64>):
  %v14 = sea.const 10 : i64 loc("seahorn/lib/sea_allocators.c":65:3)
  %v15 = sea.memhavoc %v12[%v13], %v14 [6] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":65:3)
  sea.br ^bb5
^bb5:
  sea.br ^bb6
^bb6:
  sea.assume %v7 loc("seahorn/jobs/hash_byte_cursor_ptr/aws_hash_byte_cursor_ptr_harness.c":13:5)
  sea.br ^bb7
^bb7:
  %v16 = sea.const 0 : i64 loc("_9"("aws-c-common/source/byte_buf.c":66:26))
  %v17 = sea.icmp eq, %v4, %v16 : i64 loc("_9"("aws-c-common/source/byte_buf.c":66:26))
  %v18 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v17, ^bb13(%v18 : i1), ^bb8 loc("aws-c-common/source/byte_buf.c":66:32)
^bb8:
  sea.br ^bb9
^bb9:
  sea.br ^bb10
^bb10:
  %v19 = sea.ptr.null : !sea.ptr<64> loc(".not2.i8.i"("aws-c-common/source/byte_buf.c":66:55))
  %v20 = sea.ptr.cmp eq, %v13, %v19 : !sea.ptr<64> loc(".not2.i8.i"("aws-c-common/source/byte_buf.c":66:55))
  %v21 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v20, ^bb13(%v21 : i1), ^bb11 loc("aws-c-common/source/byte_buf.c":66:67)
^bb11:
  sea.br ^bb12
^bb12:
  %v22 = sea.const 1 : i1
  sea.br ^bb13(%v22 : i1)
^bb13(%v23 : i1):
  sea.assume %v23 loc("seahorn/jobs/hash_byte_cursor_ptr/aws_hash_byte_cursor_ptr_harness.c":14:5)
  sea.br ^bb14
^bb14:
  sea.br ^bb15
^bb15:
  sea.br ^bb16
^bb16:
  sea.br ^bb17
^bb17:
  %v24 = sea.const 12 : i64 loc("_20"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  %v25 = sea.icmp ugt, %v4, %v24 : i64 loc("_20"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  sea.cond_br %v25, ^bb18, ^bb58(%v13, %v4 : !sea.ptr<64>, i64) loc("aws-c-common/include/aws/common/private/lookup3.inl":519:5)
^bb18:
  %v26 = sea.const 4 : i64 loc("_21"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  %v27 = sea.ptr.dereferenceable %v13, %v26 : !sea.ptr<64>, i64 loc("_21"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  sea.cond_br %v27, ^bb19, ^bb114
^bb19:
  %v28 = sea.ptr.index %v13 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_23"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v29 = sea.const 4 : i64 loc("_24"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v30 = sea.ptr.dereferenceable %v28, %v29 : !sea.ptr<64>, i64 loc("_24"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  sea.cond_br %v30, ^bb20, ^bb114
^bb20:
  %v31 = sea.ptr.index %v13 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_26"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v32 = sea.const 4 : i64 loc("_27"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v33 = sea.ptr.dereferenceable %v31, %v32 : !sea.ptr<64>, i64 loc("_27"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  sea.cond_br %v33, ^bb21, ^bb114
^bb21:
  %v34 = sea.const 18446744073709551604 : i64 loc("_29"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v35 = sea.add %v4, %v34 : i64 loc("_29"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v36 = sea.ptr.index %v13 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_30"("aws-c-common/include/aws/common/private/lookup3.inl":526:9))
  %v37 = sea.const 12 : i64 loc("_31"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  %v38 = sea.icmp ugt, %v35, %v37 : i64 loc("_31"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  sea.cond_br %v38, ^bb22, ^bb58(%v36, %v35 : !sea.ptr<64>, i64) loc("aws-c-common/include/aws/common/private/lookup3.inl":519:5)
^bb22:
  %v39 = sea.const 4 : i64 loc("_32"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  %v40 = sea.ptr.dereferenceable %v36, %v39 : !sea.ptr<64>, i64 loc("_32"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  sea.cond_br %v40, ^bb23, ^bb114
^bb23:
  %v41 = sea.ptr.index %v13 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_34"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v42 = sea.const 4 : i64 loc("_35"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v43 = sea.ptr.dereferenceable %v41, %v42 : !sea.ptr<64>, i64 loc("_35"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  sea.cond_br %v43, ^bb24, ^bb114
^bb24:
  %v44 = sea.ptr.index %v13 [] strides [] offset 20 inbounds : !sea.ptr<64> loc("_37"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v45 = sea.const 4 : i64 loc("_38"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v46 = sea.ptr.dereferenceable %v44, %v45 : !sea.ptr<64>, i64 loc("_38"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  sea.cond_br %v46, ^bb25, ^bb114
^bb25:
  %v47 = sea.const 18446744073709551592 : i64 loc("_40"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v48 = sea.add %v4, %v47 : i64 loc("_40"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v49 = sea.ptr.index %v13 [] strides [] offset 24 inbounds : !sea.ptr<64> loc("_41"("aws-c-common/include/aws/common/private/lookup3.inl":526:9))
  %v50 = sea.const 12 : i64 loc("_42"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  %v51 = sea.icmp ugt, %v48, %v50 : i64 loc("_42"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  sea.cond_br %v51, ^bb26, ^bb58(%v49, %v48 : !sea.ptr<64>, i64) loc("aws-c-common/include/aws/common/private/lookup3.inl":519:5)
^bb26:
  %v52 = sea.const 4 : i64 loc("_43"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  %v53 = sea.ptr.dereferenceable %v49, %v52 : !sea.ptr<64>, i64 loc("_43"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  sea.cond_br %v53, ^bb27, ^bb114
^bb27:
  %v54 = sea.ptr.index %v13 [] strides [] offset 28 inbounds : !sea.ptr<64> loc("_45"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v55 = sea.const 4 : i64 loc("_46"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v56 = sea.ptr.dereferenceable %v54, %v55 : !sea.ptr<64>, i64 loc("_46"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  sea.cond_br %v56, ^bb28, ^bb114
^bb28:
  %v57 = sea.ptr.index %v13 [] strides [] offset 32 inbounds : !sea.ptr<64> loc("_48"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v58 = sea.const 4 : i64 loc("_49"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v59 = sea.ptr.dereferenceable %v57, %v58 : !sea.ptr<64>, i64 loc("_49"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  sea.cond_br %v59, ^bb29, ^bb114
^bb29:
  %v60 = sea.const 18446744073709551580 : i64 loc("_51"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v61 = sea.add %v4, %v60 : i64 loc("_51"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v62 = sea.ptr.index %v13 [] strides [] offset 36 inbounds : !sea.ptr<64> loc("_52"("aws-c-common/include/aws/common/private/lookup3.inl":526:9))
  %v63 = sea.const 12 : i64 loc("_53"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  %v64 = sea.icmp ugt, %v61, %v63 : i64 loc("_53"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  sea.cond_br %v64, ^bb30, ^bb58(%v62, %v61 : !sea.ptr<64>, i64) loc("aws-c-common/include/aws/common/private/lookup3.inl":519:5)
^bb30:
  %v65 = sea.const 4 : i64 loc("_54"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  %v66 = sea.ptr.dereferenceable %v62, %v65 : !sea.ptr<64>, i64 loc("_54"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  sea.cond_br %v66, ^bb31, ^bb114
^bb31:
  %v67 = sea.ptr.index %v13 [] strides [] offset 40 inbounds : !sea.ptr<64> loc("_56"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v68 = sea.const 4 : i64 loc("_57"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v69 = sea.ptr.dereferenceable %v67, %v68 : !sea.ptr<64>, i64 loc("_57"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  sea.cond_br %v69, ^bb32, ^bb114
^bb32:
  %v70 = sea.ptr.index %v13 [] strides [] offset 44 inbounds : !sea.ptr<64> loc("_59"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v71 = sea.const 4 : i64 loc("_60"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v72 = sea.ptr.dereferenceable %v70, %v71 : !sea.ptr<64>, i64 loc("_60"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  sea.cond_br %v72, ^bb33, ^bb114
^bb33:
  %v73 = sea.const 18446744073709551568 : i64 loc("_62"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v74 = sea.add %v4, %v73 : i64 loc("_62"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v75 = sea.ptr.index %v13 [] strides [] offset 48 inbounds : !sea.ptr<64> loc("_63"("aws-c-common/include/aws/common/private/lookup3.inl":526:9))
  %v76 = sea.const 12 : i64 loc("_64"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  %v77 = sea.icmp ugt, %v74, %v76 : i64 loc("_64"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  sea.cond_br %v77, ^bb34, ^bb58(%v75, %v74 : !sea.ptr<64>, i64) loc("aws-c-common/include/aws/common/private/lookup3.inl":519:5)
^bb34:
  %v78 = sea.const 4 : i64 loc("_65"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  %v79 = sea.ptr.dereferenceable %v75, %v78 : !sea.ptr<64>, i64 loc("_65"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  sea.cond_br %v79, ^bb35, ^bb114
^bb35:
  %v80 = sea.ptr.index %v13 [] strides [] offset 52 inbounds : !sea.ptr<64> loc("_67"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v81 = sea.const 4 : i64 loc("_68"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v82 = sea.ptr.dereferenceable %v80, %v81 : !sea.ptr<64>, i64 loc("_68"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  sea.cond_br %v82, ^bb36, ^bb114
^bb36:
  %v83 = sea.ptr.index %v13 [] strides [] offset 56 inbounds : !sea.ptr<64> loc("_70"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v84 = sea.const 4 : i64 loc("_71"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v85 = sea.ptr.dereferenceable %v83, %v84 : !sea.ptr<64>, i64 loc("_71"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  sea.cond_br %v85, ^bb37, ^bb114
^bb37:
  %v86 = sea.const 18446744073709551556 : i64 loc("_73"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v87 = sea.add %v4, %v86 : i64 loc("_73"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v88 = sea.ptr.index %v13 [] strides [] offset 60 inbounds : !sea.ptr<64> loc("_74"("aws-c-common/include/aws/common/private/lookup3.inl":526:9))
  %v89 = sea.const 12 : i64 loc("_75"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  %v90 = sea.icmp ugt, %v87, %v89 : i64 loc("_75"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  sea.cond_br %v90, ^bb38, ^bb58(%v88, %v87 : !sea.ptr<64>, i64) loc("aws-c-common/include/aws/common/private/lookup3.inl":519:5)
^bb38:
  %v91 = sea.const 4 : i64 loc("_76"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  %v92 = sea.ptr.dereferenceable %v88, %v91 : !sea.ptr<64>, i64 loc("_76"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  sea.cond_br %v92, ^bb39, ^bb114
^bb39:
  %v93 = sea.ptr.index %v13 [] strides [] offset 64 inbounds : !sea.ptr<64> loc("_78"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v94 = sea.const 4 : i64 loc("_79"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v95 = sea.ptr.dereferenceable %v93, %v94 : !sea.ptr<64>, i64 loc("_79"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  sea.cond_br %v95, ^bb40, ^bb114
^bb40:
  %v96 = sea.ptr.index %v13 [] strides [] offset 68 inbounds : !sea.ptr<64> loc("_81"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v97 = sea.const 4 : i64 loc("_82"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v98 = sea.ptr.dereferenceable %v96, %v97 : !sea.ptr<64>, i64 loc("_82"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  sea.cond_br %v98, ^bb41, ^bb114
^bb41:
  %v99 = sea.const 18446744073709551544 : i64 loc("_84"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v100 = sea.add %v4, %v99 : i64 loc("_84"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v101 = sea.ptr.index %v13 [] strides [] offset 72 inbounds : !sea.ptr<64> loc("_85"("aws-c-common/include/aws/common/private/lookup3.inl":526:9))
  %v102 = sea.const 12 : i64 loc("_86"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  %v103 = sea.icmp ugt, %v100, %v102 : i64 loc("_86"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  sea.cond_br %v103, ^bb42, ^bb58(%v101, %v100 : !sea.ptr<64>, i64) loc("aws-c-common/include/aws/common/private/lookup3.inl":519:5)
^bb42:
  %v104 = sea.const 4 : i64 loc("_87"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  %v105 = sea.ptr.dereferenceable %v101, %v104 : !sea.ptr<64>, i64 loc("_87"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  sea.cond_br %v105, ^bb43, ^bb114
^bb43:
  %v106 = sea.ptr.index %v13 [] strides [] offset 76 inbounds : !sea.ptr<64> loc("_89"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v107 = sea.const 4 : i64 loc("_90"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v108 = sea.ptr.dereferenceable %v106, %v107 : !sea.ptr<64>, i64 loc("_90"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  sea.cond_br %v108, ^bb44, ^bb114
^bb44:
  %v109 = sea.ptr.index %v13 [] strides [] offset 80 inbounds : !sea.ptr<64> loc("_92"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v110 = sea.const 4 : i64 loc("_93"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v111 = sea.ptr.dereferenceable %v109, %v110 : !sea.ptr<64>, i64 loc("_93"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  sea.cond_br %v111, ^bb45, ^bb114
^bb45:
  %v112 = sea.const 18446744073709551532 : i64 loc("_95"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v113 = sea.add %v4, %v112 : i64 loc("_95"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v114 = sea.ptr.index %v13 [] strides [] offset 84 inbounds : !sea.ptr<64> loc("_96"("aws-c-common/include/aws/common/private/lookup3.inl":526:9))
  %v115 = sea.const 12 : i64 loc("_97"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  %v116 = sea.icmp ugt, %v113, %v115 : i64 loc("_97"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  sea.cond_br %v116, ^bb46, ^bb58(%v114, %v113 : !sea.ptr<64>, i64) loc("aws-c-common/include/aws/common/private/lookup3.inl":519:5)
^bb46:
  %v117 = sea.const 4 : i64 loc("_98"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  %v118 = sea.ptr.dereferenceable %v114, %v117 : !sea.ptr<64>, i64 loc("_98"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  sea.cond_br %v118, ^bb47, ^bb114
^bb47:
  %v119 = sea.ptr.index %v13 [] strides [] offset 88 inbounds : !sea.ptr<64> loc("_100"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v120 = sea.const 4 : i64 loc("_101"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v121 = sea.ptr.dereferenceable %v119, %v120 : !sea.ptr<64>, i64 loc("_101"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  sea.cond_br %v121, ^bb48, ^bb114
^bb48:
  %v122 = sea.ptr.index %v13 [] strides [] offset 92 inbounds : !sea.ptr<64> loc("_103"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v123 = sea.const 4 : i64 loc("_104"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v124 = sea.ptr.dereferenceable %v122, %v123 : !sea.ptr<64>, i64 loc("_104"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  sea.cond_br %v124, ^bb49, ^bb114
^bb49:
  %v125 = sea.const 18446744073709551520 : i64 loc("_106"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v126 = sea.add %v4, %v125 : i64 loc("_106"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v127 = sea.ptr.index %v13 [] strides [] offset 96 inbounds : !sea.ptr<64> loc("_107"("aws-c-common/include/aws/common/private/lookup3.inl":526:9))
  %v128 = sea.const 12 : i64 loc("_108"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  %v129 = sea.icmp ugt, %v126, %v128 : i64 loc("_108"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  sea.cond_br %v129, ^bb50, ^bb58(%v127, %v126 : !sea.ptr<64>, i64) loc("aws-c-common/include/aws/common/private/lookup3.inl":519:5)
^bb50:
  %v130 = sea.const 4 : i64 loc("_109"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  %v131 = sea.ptr.dereferenceable %v127, %v130 : !sea.ptr<64>, i64 loc("_109"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  sea.cond_br %v131, ^bb51, ^bb114
^bb51:
  %v132 = sea.ptr.index %v13 [] strides [] offset 100 inbounds : !sea.ptr<64> loc("_111"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v133 = sea.const 4 : i64 loc("_112"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v134 = sea.ptr.dereferenceable %v132, %v133 : !sea.ptr<64>, i64 loc("_112"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  sea.cond_br %v134, ^bb52, ^bb114
^bb52:
  %v135 = sea.ptr.index %v13 [] strides [] offset 104 inbounds : !sea.ptr<64> loc("_114"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v136 = sea.const 4 : i64 loc("_115"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v137 = sea.ptr.dereferenceable %v135, %v136 : !sea.ptr<64>, i64 loc("_115"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  sea.cond_br %v137, ^bb53, ^bb114
^bb53:
  %v138 = sea.const 18446744073709551508 : i64 loc("_117"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v139 = sea.add %v4, %v138 : i64 loc("_117"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v140 = sea.ptr.index %v13 [] strides [] offset 108 inbounds : !sea.ptr<64> loc("_118"("aws-c-common/include/aws/common/private/lookup3.inl":526:9))
  %v141 = sea.const 12 : i64 loc("_119"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  %v142 = sea.icmp ugt, %v139, %v141 : i64 loc("_119"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  sea.cond_br %v142, ^bb54, ^bb58(%v140, %v139 : !sea.ptr<64>, i64) loc("aws-c-common/include/aws/common/private/lookup3.inl":519:5)
^bb54:
  %v143 = sea.const 4 : i64 loc("_120"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  %v144 = sea.ptr.dereferenceable %v140, %v143 : !sea.ptr<64>, i64 loc("_120"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  sea.cond_br %v144, ^bb55, ^bb114
^bb55:
  %v145 = sea.ptr.index %v13 [] strides [] offset 112 inbounds : !sea.ptr<64> loc("_122"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v146 = sea.const 4 : i64 loc("_123"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  %v147 = sea.ptr.dereferenceable %v145, %v146 : !sea.ptr<64>, i64 loc("_123"("aws-c-common/include/aws/common/private/lookup3.inl":522:12))
  sea.cond_br %v147, ^bb56, ^bb114
^bb56:
  %v148 = sea.ptr.index %v13 [] strides [] offset 116 inbounds : !sea.ptr<64> loc("_125"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v149 = sea.const 4 : i64 loc("_126"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  %v150 = sea.ptr.dereferenceable %v148, %v149 : !sea.ptr<64>, i64 loc("_126"("aws-c-common/include/aws/common/private/lookup3.inl":523:12))
  sea.cond_br %v150, ^bb57, ^bb114
^bb57:
  %v151 = sea.const 18446744073709551496 : i64 loc("_128"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v152 = sea.add %v4, %v151 : i64 loc("_128"("aws-c-common/include/aws/common/private/lookup3.inl":525:14))
  %v153 = sea.ptr.index %v13 [] strides [] offset 120 inbounds : !sea.ptr<64> loc("_129"("aws-c-common/include/aws/common/private/lookup3.inl":526:9))
  %v154 = sea.const 12 : i64 loc("_130"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  %v155 = sea.icmp ugt, %v152, %v154 : i64 loc("_130"("aws-c-common/include/aws/common/private/lookup3.inl":519:19))
  sea.cond_br %v155, ^bb113, ^bb58(%v153, %v152 : !sea.ptr<64>, i64) loc("aws-c-common/include/aws/common/private/lookup3.inl":519:5)
^bb58(%v156 : !sea.ptr<64>, %v157 : i64):
  %v158 = sea.const 7 : i64 loc("Pivot66.i.i.i")
  %v159 = sea.icmp ult, %v157, %v158 : i64 loc("Pivot66.i.i.i")
  sea.cond_br %v159, ^bb81, ^bb59
^bb59:
  %v160 = sea.const 10 : i64 loc("Pivot64.i.i.i")
  %v161 = sea.icmp ult, %v157, %v160 : i64 loc("Pivot64.i.i.i")
  sea.cond_br %v161, ^bb71, ^bb60
^bb60:
  %v162 = sea.ptr.index %v156 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_131"("aws-c-common/include/aws/common/private/lookup3.inl":0:0))
  %v163 = sea.const 4 : i64 loc("_132"("aws-c-common/include/aws/common/private/lookup3.inl":0:0))
  %v164 = sea.ptr.dereferenceable %v162, %v163 : !sea.ptr<64>, i64 loc("_132"("aws-c-common/include/aws/common/private/lookup3.inl":0:0))
  %v165 = sea.const 12 : i64 loc("Pivot")
  %v166 = sea.icmp ult, %v157, %v165 : i64 loc("Pivot")
  sea.cond_br %v166, ^bb64, ^bb61
^bb61:
  sea.cond_br %v164, ^bb62, ^bb114
^bb62:
  %v167 = sea.ptr.index %v156 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_136"("aws-c-common/include/aws/common/private/lookup3.inl":550:26))
  %v168 = sea.const 4 : i64 loc("_137"("aws-c-common/include/aws/common/private/lookup3.inl":550:26))
  %v169 = sea.ptr.dereferenceable %v167, %v168 : !sea.ptr<64>, i64 loc("_137"("aws-c-common/include/aws/common/private/lookup3.inl":550:26))
  sea.cond_br %v169, ^bb63, ^bb114
^bb63:
  %v170 = sea.const 4 : i64 loc("_139"("aws-c-common/include/aws/common/private/lookup3.inl":550:35))
  %v171 = sea.ptr.dereferenceable %v156, %v170 : !sea.ptr<64>, i64 loc("_139"("aws-c-common/include/aws/common/private/lookup3.inl":550:35))
  sea.cond_br %v171, ^bb96, ^bb114
^bb64:
  %v172 = sea.const 10 : i64 loc("SwitchLeaf")
  %v173 = sea.icmp eq, %v157, %v172 : i64 loc("SwitchLeaf")
  sea.cond_br %v173, ^bb68, ^bb65
^bb65:
  sea.cond_br %v164, ^bb66, ^bb114
^bb66:
  %v174 = sea.ptr.index %v156 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_142"("aws-c-common/include/aws/common/private/lookup3.inl":551:35))
  %v175 = sea.const 4 : i64 loc("_143"("aws-c-common/include/aws/common/private/lookup3.inl":551:35))
  %v176 = sea.ptr.dereferenceable %v174, %v175 : !sea.ptr<64>, i64 loc("_143"("aws-c-common/include/aws/common/private/lookup3.inl":551:35))
  sea.cond_br %v176, ^bb67, ^bb114
^bb67:
  %v177 = sea.const 4 : i64 loc("_145"("aws-c-common/include/aws/common/private/lookup3.inl":551:44))
  %v178 = sea.ptr.dereferenceable %v156, %v177 : !sea.ptr<64>, i64 loc("_145"("aws-c-common/include/aws/common/private/lookup3.inl":551:44))
  sea.cond_br %v178, ^bb96, ^bb114
^bb68:
  sea.cond_br %v164, ^bb69, ^bb114
^bb69:
  %v179 = sea.ptr.index %v156 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_148"("aws-c-common/include/aws/common/private/lookup3.inl":552:33))
  %v180 = sea.const 4 : i64 loc("_149"("aws-c-common/include/aws/common/private/lookup3.inl":552:33))
  %v181 = sea.ptr.dereferenceable %v179, %v180 : !sea.ptr<64>, i64 loc("_149"("aws-c-common/include/aws/common/private/lookup3.inl":552:33))
  sea.cond_br %v181, ^bb70, ^bb114
^bb70:
  %v182 = sea.const 4 : i64 loc("_151"("aws-c-common/include/aws/common/private/lookup3.inl":552:42))
  %v183 = sea.ptr.dereferenceable %v156, %v182 : !sea.ptr<64>, i64 loc("_151"("aws-c-common/include/aws/common/private/lookup3.inl":552:42))
  sea.cond_br %v183, ^bb96, ^bb114
^bb71:
  sea.br ^bb72
^bb72:
  %v184 = sea.const 9 : i64 loc("Pivot3")
  %v185 = sea.icmp slt, %v157, %v184 : i64 loc("Pivot3")
  sea.cond_br %v185, ^bb76, ^bb73
^bb73:
  %v186 = sea.ptr.index %v156 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_153"("aws-c-common/include/aws/common/private/lookup3.inl":553:17))
  %v187 = sea.const 4 : i64 loc("_154"("aws-c-common/include/aws/common/private/lookup3.inl":553:17))
  %v188 = sea.ptr.dereferenceable %v186, %v187 : !sea.ptr<64>, i64 loc("_154"("aws-c-common/include/aws/common/private/lookup3.inl":553:17))
  sea.cond_br %v188, ^bb74, ^bb114
^bb74:
  %v189 = sea.ptr.index %v156 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_156"("aws-c-common/include/aws/common/private/lookup3.inl":553:31))
  %v190 = sea.const 4 : i64 loc("_157"("aws-c-common/include/aws/common/private/lookup3.inl":553:31))
  %v191 = sea.ptr.dereferenceable %v189, %v190 : !sea.ptr<64>, i64 loc("_157"("aws-c-common/include/aws/common/private/lookup3.inl":553:31))
  sea.cond_br %v191, ^bb75, ^bb114
^bb75:
  %v192 = sea.const 4 : i64 loc("_159"("aws-c-common/include/aws/common/private/lookup3.inl":553:40))
  %v193 = sea.ptr.dereferenceable %v156, %v192 : !sea.ptr<64>, i64 loc("_159"("aws-c-common/include/aws/common/private/lookup3.inl":553:40))
  sea.cond_br %v193, ^bb96, ^bb114
^bb76:
  %v194 = sea.const 7 : i64 loc("SwitchLeaf2")
  %v195 = sea.icmp eq, %v157, %v194 : i64 loc("SwitchLeaf2")
  sea.cond_br %v195, ^bb79, ^bb77
^bb77:
  %v196 = sea.ptr.index %v156 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_161"("aws-c-common/include/aws/common/private/lookup3.inl":554:17))
  %v197 = sea.const 4 : i64 loc("_162"("aws-c-common/include/aws/common/private/lookup3.inl":554:17))
  %v198 = sea.ptr.dereferenceable %v196, %v197 : !sea.ptr<64>, i64 loc("_162"("aws-c-common/include/aws/common/private/lookup3.inl":554:17))
  sea.cond_br %v198, ^bb78, ^bb114
^bb78:
  %v199 = sea.const 4 : i64 loc("_164"("aws-c-common/include/aws/common/private/lookup3.inl":554:26))
  %v200 = sea.ptr.dereferenceable %v156, %v199 : !sea.ptr<64>, i64 loc("_164"("aws-c-common/include/aws/common/private/lookup3.inl":554:26))
  sea.cond_br %v200, ^bb96, ^bb114
^bb79:
  %v201 = sea.ptr.index %v156 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_166"("aws-c-common/include/aws/common/private/lookup3.inl":555:17))
  %v202 = sea.const 4 : i64 loc("_167"("aws-c-common/include/aws/common/private/lookup3.inl":555:17))
  %v203 = sea.ptr.dereferenceable %v201, %v202 : !sea.ptr<64>, i64 loc("_167"("aws-c-common/include/aws/common/private/lookup3.inl":555:17))
  sea.cond_br %v203, ^bb80, ^bb114
^bb80:
  %v204 = sea.const 4 : i64 loc("_169"("aws-c-common/include/aws/common/private/lookup3.inl":555:35))
  %v205 = sea.ptr.dereferenceable %v156, %v204 : !sea.ptr<64>, i64 loc("_169"("aws-c-common/include/aws/common/private/lookup3.inl":555:35))
  sea.cond_br %v205, ^bb96, ^bb114
^bb81:
  %v206 = sea.const 4 : i64 loc("Pivot54.i.i.i")
  %v207 = sea.icmp ult, %v157, %v206 : i64 loc("Pivot54.i.i.i")
  sea.cond_br %v207, ^bb90, ^bb82
^bb82:
  sea.br ^bb83
^bb83:
  %v208 = sea.const 6 : i64 loc("Pivot7")
  %v209 = sea.icmp slt, %v157, %v208 : i64 loc("Pivot7")
  sea.cond_br %v209, ^bb86, ^bb84
^bb84:
  %v210 = sea.ptr.index %v156 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_171"("aws-c-common/include/aws/common/private/lookup3.inl":556:17))
  %v211 = sea.const 4 : i64 loc("_172"("aws-c-common/include/aws/common/private/lookup3.inl":556:17))
  %v212 = sea.ptr.dereferenceable %v210, %v211 : !sea.ptr<64>, i64 loc("_172"("aws-c-common/include/aws/common/private/lookup3.inl":556:17))
  sea.cond_br %v212, ^bb85, ^bb114
^bb85:
  %v213 = sea.const 4 : i64 loc("_174"("aws-c-common/include/aws/common/private/lookup3.inl":556:33))
  %v214 = sea.ptr.dereferenceable %v156, %v213 : !sea.ptr<64>, i64 loc("_174"("aws-c-common/include/aws/common/private/lookup3.inl":556:33))
  sea.cond_br %v214, ^bb96, ^bb114
^bb86:
  %v215 = sea.const 4 : i64 loc("SwitchLeaf5")
  %v216 = sea.icmp eq, %v157, %v215 : i64 loc("SwitchLeaf5")
  sea.cond_br %v216, ^bb89, ^bb87
^bb87:
  %v217 = sea.ptr.index %v156 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_176"("aws-c-common/include/aws/common/private/lookup3.inl":557:17))
  %v218 = sea.const 4 : i64 loc("_177"("aws-c-common/include/aws/common/private/lookup3.inl":557:17))
  %v219 = sea.ptr.dereferenceable %v217, %v218 : !sea.ptr<64>, i64 loc("_177"("aws-c-common/include/aws/common/private/lookup3.inl":557:17))
  sea.cond_br %v219, ^bb88, ^bb114
^bb88:
  %v220 = sea.const 4 : i64 loc("_179"("aws-c-common/include/aws/common/private/lookup3.inl":557:31))
  %v221 = sea.ptr.dereferenceable %v156, %v220 : !sea.ptr<64>, i64 loc("_179"("aws-c-common/include/aws/common/private/lookup3.inl":557:31))
  sea.cond_br %v221, ^bb96, ^bb114
^bb89:
  %v222 = sea.const 4 : i64 loc("_181"("aws-c-common/include/aws/common/private/lookup3.inl":558:17))
  %v223 = sea.ptr.dereferenceable %v156, %v222 : !sea.ptr<64>, i64 loc("_181"("aws-c-common/include/aws/common/private/lookup3.inl":558:17))
  sea.cond_br %v223, ^bb96, ^bb114
^bb90:
  %v224 = sea.const 2 : i64 loc("Pivot48.i.i.i")
  %v225 = sea.icmp ult, %v157, %v224 : i64 loc("Pivot48.i.i.i")
  sea.cond_br %v225, ^bb92, ^bb91
^bb91:
  %v226 = sea.const 4 : i64 loc("_133"("aws-c-common/include/aws/common/private/lookup3.inl":0:0))
  %v227 = sea.ptr.dereferenceable %v156, %v226 : !sea.ptr<64>, i64 loc("_133"("aws-c-common/include/aws/common/private/lookup3.inl":0:0))
  sea.cond_br %v227, ^bb96, ^bb114
^bb92:
  %v228 = sea.const 1 : i64 loc("SwitchLeaf.i.i.i")
  %v229 = sea.icmp eq, %v157, %v228 : i64 loc("SwitchLeaf.i.i.i")
  sea.cond_br %v229, ^bb95, ^bb93
^bb93:
  sea.br ^bb94
^bb94:
  sea.br ^bb98
^bb95:
  %v230 = sea.const 4 : i64 loc("_183"("aws-c-common/include/aws/common/private/lookup3.inl":561:17))
  %v231 = sea.ptr.dereferenceable %v156, %v230 : !sea.ptr<64>, i64 loc("_183"("aws-c-common/include/aws/common/private/lookup3.inl":561:17))
  sea.cond_br %v231, ^bb96, ^bb114
^bb96:
  sea.br ^bb97
^bb97:
  sea.br ^bb98
^bb98:
  sea.br ^bb99
^bb99:
  %v232 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v17, ^bb105(%v232 : i1), ^bb100 loc("aws-c-common/source/byte_buf.c":66:32)
^bb100:
  sea.br ^bb101
^bb101:
  sea.br ^bb102
^bb102:
  %v233 = sea.ptr.null : !sea.ptr<64> loc(".not2.i4.i"("aws-c-common/source/byte_buf.c":66:55))
  %v234 = sea.ptr.cmp eq, %v13, %v233 : !sea.ptr<64> loc(".not2.i4.i"("aws-c-common/source/byte_buf.c":66:55))
  %v235 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v234, ^bb105(%v235 : i1), ^bb103 loc("aws-c-common/source/byte_buf.c":66:67)
^bb103:
  sea.br ^bb104
^bb104:
  %v236 = sea.const 1 : i1
  sea.br ^bb105(%v236 : i1)
^bb105(%v237 : i1):
  sea.br ^bb106
^bb106:
  %v238 = sea.const 1 : i1 loc("aws-c-common/source/byte_buf.c":66:32)
  sea.cond_br %v17, ^bb112(%v238 : i1), ^bb107 loc("aws-c-common/source/byte_buf.c":66:32)
^bb107:
  sea.br ^bb108
^bb108:
  sea.br ^bb109
^bb109:
  %v239 = sea.ptr.null : !sea.ptr<64> loc(".not2.i.i"("aws-c-common/source/byte_buf.c":66:55))
  %v240 = sea.ptr.cmp eq, %v13, %v239 : !sea.ptr<64> loc(".not2.i.i"("aws-c-common/source/byte_buf.c":66:55))
  %v241 = sea.const 0 : i1 loc("aws-c-common/source/byte_buf.c":66:67)
  sea.cond_br %v240, ^bb112(%v241 : i1), ^bb110 loc("aws-c-common/source/byte_buf.c":66:67)
^bb110:
  sea.br ^bb111
^bb111:
  %v242 = sea.const 1 : i1
  sea.br ^bb112(%v242 : i1)
^bb112(%v243 : i1):
  %v244 = sea.const 1 : i1 loc("seahorn/jobs/hash_byte_cursor_ptr/aws_hash_byte_cursor_ptr_harness.c":19:5)
  %v245 = sea.xor %v243, %v244 : i1 loc("seahorn/jobs/hash_byte_cursor_ptr/aws_hash_byte_cursor_ptr_harness.c":19:5)
  sea.assume %v245 loc("seahorn/jobs/hash_byte_cursor_ptr/aws_hash_byte_cursor_ptr_harness.c":19:5)
  sea.br ^bb114 loc("seahorn/jobs/hash_byte_cursor_ptr/aws_hash_byte_cursor_ptr_harness.c":19:5)
^bb113:
  %v246 = sea.const 4 : i64 loc("_22"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  %v247 = sea.ptr.dereferenceable %v153, %v246 : !sea.ptr<64>, i64 loc("_22"("aws-c-common/include/aws/common/private/lookup3.inl":521:12))
  %v248 = sea.const 1 : i1
  %v249 = sea.xor %v247, %v248 : i1
  sea.assume %v249
  sea.br ^bb114
^bb114:
  sea.br ^bb115
^bb115:
  %v250 = sea.const 0 : i1
  sea.assert %v250
  sea.halt
}
