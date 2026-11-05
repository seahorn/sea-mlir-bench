// Exported from SeaHorn (array_eq.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.mem.nondet "region.0" [0] : !sea.mem<!sea.ptr<64>, i8> loc("sm10")
  %v1 = sea.mem.nondet "region.9" [1] : !sea.mem<!sea.ptr<64>, i8> loc("sm11")
  %v2 = sea.mem.nondet "region.18" [2] : !sea.mem<!sea.ptr<64>, i8> loc("sm12")
  %v3 = sea.const 16 : i64 loc("_0")
  %v4 = sea.alloca %v3 align 8 [3] : i64 -> !sea.ptr<64> loc("_0")
  %v5 = sea.const 16 : i64 loc("_1")
  %v6 = sea.alloca %v5 align 8 [4] : i64 -> !sea.ptr<64> loc("_1")
  %v7 = sea.nondet "nd_size_t" [5] : i64 loc("_2"("seahorn/jobs/array_eq/aws_array_eq_harness.c":12:22))
  %v8 = sea.const 11 : i64 loc("_3"("seahorn/jobs/array_eq/aws_array_eq_harness.c":13:20))
  %v9 = sea.icmp ult, %v7, %v8 : i64 loc("_3"("seahorn/jobs/array_eq/aws_array_eq_harness.c":13:20))
  sea.assume %v9 loc("seahorn/jobs/array_eq/aws_array_eq_harness.c":13:5)
  %v10 = sea.const 0 : i64 loc("_4"("seahorn/lib/proof_allocators.c":21:15))
  %v11 = sea.icmp eq, %v7, %v10 : i64 loc("_4"("seahorn/lib/proof_allocators.c":21:15))
  %v12 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v11, ^bb4(%v2, %v12 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb1 loc("seahorn/lib/proof_allocators.c":21:10)
^bb1:
  %v13 = sea.nondet "nd_malloc_is_fail" [6] : i1 loc("_6"("seahorn/lib/sea_allocators.c":11:10))
  %v14 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v13, ^bb3(%v2, %v14 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb2 loc("seahorn/lib/sea_allocators.c":11:10)
^bb2:
  %v15 = sea.const 1 : i64 loc("malloc.i")
  %v16 = sea.mul %v7, %v15 : i64 loc("malloc.i")
  %v17 = sea.alloca %v16 align 16 [7] : i64 -> !sea.ptr<64> loc("malloc.i")
  sea.br ^bb3(%v2, %v17 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb3(%v18 : !sea.mem<!sea.ptr<64>, i8>, %v19 : !sea.ptr<64>):
  %v20 = sea.memhavoc %v18[%v19], %v7 [8] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb4(%v20, %v19 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/proof_allocators.c":21:10)
^bb4(%v21 : !sea.mem<!sea.ptr<64>, i8>, %v22 : !sea.ptr<64>):
  %v23 = sea.nondet "nd_size_t" [9] : i64 loc("_10"("seahorn/jobs/array_eq/aws_array_eq_harness.c":23:22))
  %v24 = sea.nondet "nd_bool" [10] : i1 loc("_11"("seahorn/jobs/array_eq/aws_array_eq_harness.c":24:9))
  sea.cond_br %v24, ^bb9(%v21, %v22, %v7 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64), ^bb5 loc("seahorn/jobs/array_eq/aws_array_eq_harness.c":24:9)
^bb5:
  %v25 = sea.const 11 : i64 loc("_13"("seahorn/jobs/array_eq/aws_array_eq_harness.c":28:24))
  %v26 = sea.icmp ult, %v23, %v25 : i64 loc("_13"("seahorn/jobs/array_eq/aws_array_eq_harness.c":28:24))
  sea.assume %v26 loc("seahorn/jobs/array_eq/aws_array_eq_harness.c":28:9)
  %v27 = sea.const 0 : i64 loc("_14"("seahorn/lib/proof_allocators.c":21:15))
  %v28 = sea.icmp eq, %v23, %v27 : i64 loc("_14"("seahorn/lib/proof_allocators.c":21:15))
  %v29 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/proof_allocators.c":21:10)
  %v30 = sea.const 0 : i64 loc("seahorn/lib/proof_allocators.c":21:10)
  sea.cond_br %v28, ^bb9(%v21, %v29, %v30 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64), ^bb6 loc("seahorn/lib/proof_allocators.c":21:10)
^bb6:
  %v31 = sea.nondet "nd_malloc_is_fail" [11] : i1 loc("_16"("seahorn/lib/sea_allocators.c":11:10))
  %v32 = sea.ptr.null : !sea.ptr<64> loc("seahorn/lib/sea_allocators.c":11:10)
  sea.cond_br %v31, ^bb8(%v21, %v32 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>), ^bb7 loc("seahorn/lib/sea_allocators.c":11:10)
^bb7:
  %v33 = sea.const 1 : i64 loc("malloc20.i")
  %v34 = sea.mul %v23, %v33 : i64 loc("malloc20.i")
  %v35 = sea.alloca %v34 align 16 [12] : i64 -> !sea.ptr<64> loc("malloc20.i")
  sea.br ^bb8(%v21, %v35 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>) loc("seahorn/lib/sea_allocators.c":11:10)
^bb8(%v36 : !sea.mem<!sea.ptr<64>, i8>, %v37 : !sea.ptr<64>):
  %v38 = sea.memhavoc %v36[%v37], %v23 [13] inplace : !sea.mem<!sea.ptr<64>, i8> loc("seahorn/lib/sea_allocators.c":33:3)
  sea.br ^bb9(%v38, %v37, %v23 : !sea.mem<!sea.ptr<64>, i8>, !sea.ptr<64>, i64) loc("seahorn/lib/proof_allocators.c":21:10)
^bb9(%v39 : !sea.mem<!sea.ptr<64>, i8>, %v40 : !sea.ptr<64>, %v41 : i64):
  %v42 = sea.nondet "nd_size_t" [14] : i64 loc("_19"("seahorn/lib/utils.c":46:20))
  sea.br ^bb10
^bb10:
  %v43 = sea.store %v0[%v4], %v42 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v44 = sea.const 0 : i64 loc("_21"("seahorn/lib/utils.c":47:12))
  %v45 = sea.icmp ne, %v7, %v44 : i64 loc("_21"("seahorn/lib/utils.c":47:12))
  %v46 = sea.ptr.null : !sea.ptr<64> loc("_22")
  %v47 = sea.ptr.cmp ne, %v22, %v46 : !sea.ptr<64> loc("_22")
  %v48 = sea.and %v45, %v47 : i1 loc("or.cond.i.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v48, ^bb13, ^bb11 loc("seahorn/lib/utils.c":47:16)
^bb11:
  %v49 = sea.nondet "nd_uint8_t" [15] : i8 loc("_34"("seahorn/lib/utils.c":51:21))
  %v50 = sea.ptr.index %v4 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_35"("seahorn/lib/utils.c":51:14))
  sea.br ^bb12
^bb12:
  %v51 = sea.store %v43[%v50], %v49 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb18(%v49 : i8)
^bb13:
  sea.br ^bb14
^bb14:
  %v52 = sea.icmp ult, %v42, %v7 : i64 loc("_25"("seahorn/lib/utils.c":48:27))
  sea.assume %v52 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb15
^bb15:
  %v53 = sea.ptr.index %v22 [%v42] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_27"("seahorn/lib/utils.c":49:21))
  %v54 = sea.const 1 : i64 loc("_28"("seahorn/lib/utils.c":49:21))
  %v55 = sea.ptr.dereferenceable %v53, %v54 : !sea.ptr<64>, i64 loc("_28"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v55, ^bb16, ^bb132
^bb16:
  %v56 = sea.load %v39[%v53] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_30"("seahorn/lib/utils.c":49:21))
  %v57 = sea.ptr.index %v4 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_31"("seahorn/lib/utils.c":49:14))
  sea.br ^bb17
^bb17:
  %v58 = sea.store %v43[%v57], %v56 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb18(%v56 : i8) loc("seahorn/lib/utils.c":50:3)
^bb18(%v59 : i8):
  %v60 = sea.nondet "nd_size_t" [16] : i64 loc("_38"("seahorn/lib/utils.c":46:20))
  sea.br ^bb19
^bb19:
  %v61 = sea.store %v1[%v6], %v60 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i64 loc("seahorn/lib/utils.c":46:18)
  %v62 = sea.const 0 : i64 loc("_40"("seahorn/lib/utils.c":47:12))
  %v63 = sea.icmp ne, %v41, %v62 : i64 loc("_40"("seahorn/lib/utils.c":47:12))
  %v64 = sea.ptr.null : !sea.ptr<64> loc("_41")
  %v65 = sea.ptr.cmp ne, %v40, %v64 : !sea.ptr<64> loc("_41")
  %v66 = sea.and %v65, %v63 : i1 loc("or.cond.i10.i"("seahorn/lib/utils.c":47:16))
  sea.cond_br %v66, ^bb22, ^bb20 loc("seahorn/lib/utils.c":47:16)
^bb20:
  %v67 = sea.nondet "nd_uint8_t" [17] : i8 loc("_53"("seahorn/lib/utils.c":51:21))
  %v68 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_54"("seahorn/lib/utils.c":51:14))
  sea.br ^bb21
^bb21:
  %v69 = sea.store %v61[%v68], %v67 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":51:19)
  sea.br ^bb27(%v67 : i8)
^bb22:
  sea.br ^bb23
^bb23:
  %v70 = sea.icmp ult, %v60, %v41 : i64 loc("_44"("seahorn/lib/utils.c":48:27))
  sea.assume %v70 loc("seahorn/lib/utils.c":48:5)
  sea.br ^bb24
^bb24:
  %v71 = sea.ptr.index %v40 [%v60] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_46"("seahorn/lib/utils.c":49:21))
  %v72 = sea.const 1 : i64 loc("_47"("seahorn/lib/utils.c":49:21))
  %v73 = sea.ptr.dereferenceable %v71, %v72 : !sea.ptr<64>, i64 loc("_47"("seahorn/lib/utils.c":49:21))
  sea.cond_br %v73, ^bb25, ^bb132
^bb25:
  %v74 = sea.load %v39[%v71] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_49"("seahorn/lib/utils.c":49:21))
  %v75 = sea.ptr.index %v6 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_50"("seahorn/lib/utils.c":49:14))
  sea.br ^bb26
^bb26:
  %v76 = sea.store %v61[%v75], %v74 inplace align 8 : !sea.mem<!sea.ptr<64>, i8>, i8 loc("seahorn/lib/utils.c":49:19)
  sea.br ^bb27(%v74 : i8) loc("seahorn/lib/utils.c":50:3)
^bb27(%v77 : i8):
  %v78 = sea.or %v11, %v47 : i1 loc("spec.select.i"("seahorn/jobs/array_eq/aws_array_eq_harness.c":45:27))
  sea.assume %v78 loc("seahorn/jobs/array_eq/aws_array_eq_harness.c":45:5)
  %v79 = sea.const 0 : i64 loc("_57"("seahorn/jobs/array_eq/aws_array_eq_harness.c":46:21))
  %v80 = sea.icmp eq, %v41, %v79 : i64 loc("_57"("seahorn/jobs/array_eq/aws_array_eq_harness.c":46:21))
  %v81 = sea.or %v65, %v80 : i1 loc("_58"("seahorn/jobs/array_eq/aws_array_eq_harness.c":46:27))
  sea.assume %v81 loc("seahorn/jobs/array_eq/aws_array_eq_harness.c":46:5)
  %v82 = sea.icmp eq, %v7, %v41 : i64 loc(".not.i.i"("aws-c-common/source/byte_buf.c":425:15))
  sea.cond_br %v82, ^bb28, ^bb113 loc("aws-c-common/source/byte_buf.c":425:9)
^bb28:
  sea.cond_br %v11, ^bb116, ^bb29 loc("aws-c-common/source/byte_buf.c":429:9)
^bb29:
  %v83 = sea.ptr.cmp eq, %v22, %v40 : !sea.ptr<64> loc("_61"("seahorn/lib/bcmp.c":55:10))
  sea.cond_br %v83, ^bb116, ^bb30 loc("seahorn/lib/bcmp.c":55:7)
^bb30:
  %v84 = sea.const 1 : i64 loc("_64"("seahorn/lib/bcmp.c":61:11))
  %v85 = sea.ptr.dereferenceable %v22, %v84 : !sea.ptr<64>, i64 loc("_64"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v85, ^bb31, ^bb132
^bb31:
  %v86 = sea.load %v39[%v22] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_66"("seahorn/lib/bcmp.c":61:11))
  %v87 = sea.const 1 : i64 loc("_67"("seahorn/lib/bcmp.c":61:20))
  %v88 = sea.ptr.dereferenceable %v40, %v87 : !sea.ptr<64>, i64 loc("_67"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v88, ^bb32, ^bb132
^bb32:
  %v89 = sea.load %v39[%v40] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_69"("seahorn/lib/bcmp.c":61:20))
  %v90 = sea.icmp eq, %v86, %v89 : i8 loc(".not2.i.i"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v90, ^bb33, ^bb69(%v40, %v22 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb33:
  %v91 = sea.const 1 : i64 loc(".not"("seahorn/lib/bcmp.c":60:11))
  %v92 = sea.icmp eq, %v7, %v91 : i64 loc(".not"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v92, ^bb116, ^bb34 loc("seahorn/lib/bcmp.c":60:9)
^bb34:
  %v93 = sea.ptr.index %v22 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_75"("seahorn/lib/bcmp.c":61:11))
  %v94 = sea.const 1 : i64 loc("_76"("seahorn/lib/bcmp.c":61:11))
  %v95 = sea.ptr.dereferenceable %v93, %v94 : !sea.ptr<64>, i64 loc("_76"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v95, ^bb35, ^bb132
^bb35:
  %v96 = sea.load %v39[%v93] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_78"("seahorn/lib/bcmp.c":61:11))
  %v97 = sea.ptr.index %v40 [] strides [] offset 1 inbounds : !sea.ptr<64> loc("_79"("seahorn/lib/bcmp.c":61:20))
  %v98 = sea.const 1 : i64 loc("_80"("seahorn/lib/bcmp.c":61:20))
  %v99 = sea.ptr.dereferenceable %v97, %v98 : !sea.ptr<64>, i64 loc("_80"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v99, ^bb36, ^bb132
^bb36:
  %v100 = sea.load %v39[%v97] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_82"("seahorn/lib/bcmp.c":61:20))
  %v101 = sea.icmp eq, %v96, %v100 : i8 loc(".not2.i.i.1"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v101, ^bb37, ^bb69(%v97, %v93 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb37:
  %v102 = sea.const 2 : i64 loc("_83"("seahorn/lib/bcmp.c":60:11))
  %v103 = sea.icmp ugt, %v7, %v102 : i64 loc("_83"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v103, ^bb38, ^bb116 loc("seahorn/lib/bcmp.c":60:9)
^bb38:
  %v104 = sea.ptr.index %v22 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_85"("seahorn/lib/bcmp.c":61:11))
  %v105 = sea.const 1 : i64 loc("_86"("seahorn/lib/bcmp.c":61:11))
  %v106 = sea.ptr.dereferenceable %v104, %v105 : !sea.ptr<64>, i64 loc("_86"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v106, ^bb39, ^bb132
^bb39:
  %v107 = sea.load %v39[%v104] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_88"("seahorn/lib/bcmp.c":61:11))
  %v108 = sea.ptr.index %v40 [] strides [] offset 2 inbounds : !sea.ptr<64> loc("_89"("seahorn/lib/bcmp.c":61:20))
  %v109 = sea.const 1 : i64 loc("_90"("seahorn/lib/bcmp.c":61:20))
  %v110 = sea.ptr.dereferenceable %v108, %v109 : !sea.ptr<64>, i64 loc("_90"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v110, ^bb40, ^bb132
^bb40:
  %v111 = sea.load %v39[%v108] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_92"("seahorn/lib/bcmp.c":61:20))
  %v112 = sea.icmp eq, %v107, %v111 : i8 loc(".not2.i.i.2"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v112, ^bb41, ^bb69(%v108, %v104 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb41:
  %v113 = sea.const 3 : i64 loc(".not13"("seahorn/lib/bcmp.c":60:11))
  %v114 = sea.icmp eq, %v7, %v113 : i64 loc(".not13"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v114, ^bb116, ^bb42 loc("seahorn/lib/bcmp.c":60:9)
^bb42:
  %v115 = sea.ptr.index %v22 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_94"("seahorn/lib/bcmp.c":61:11))
  %v116 = sea.const 1 : i64 loc("_95"("seahorn/lib/bcmp.c":61:11))
  %v117 = sea.ptr.dereferenceable %v115, %v116 : !sea.ptr<64>, i64 loc("_95"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v117, ^bb43, ^bb132
^bb43:
  %v118 = sea.load %v39[%v115] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_97"("seahorn/lib/bcmp.c":61:11))
  %v119 = sea.ptr.index %v40 [] strides [] offset 3 inbounds : !sea.ptr<64> loc("_98"("seahorn/lib/bcmp.c":61:20))
  %v120 = sea.const 1 : i64 loc("_99"("seahorn/lib/bcmp.c":61:20))
  %v121 = sea.ptr.dereferenceable %v119, %v120 : !sea.ptr<64>, i64 loc("_99"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v121, ^bb44, ^bb132
^bb44:
  %v122 = sea.load %v39[%v119] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_101"("seahorn/lib/bcmp.c":61:20))
  %v123 = sea.icmp eq, %v118, %v122 : i8 loc(".not2.i.i.3"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v123, ^bb45, ^bb69(%v119, %v115 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb45:
  %v124 = sea.const 4 : i64 loc("_102"("seahorn/lib/bcmp.c":60:11))
  %v125 = sea.icmp ugt, %v7, %v124 : i64 loc("_102"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v125, ^bb46, ^bb116 loc("seahorn/lib/bcmp.c":60:9)
^bb46:
  %v126 = sea.ptr.index %v22 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_104"("seahorn/lib/bcmp.c":61:11))
  %v127 = sea.const 1 : i64 loc("_105"("seahorn/lib/bcmp.c":61:11))
  %v128 = sea.ptr.dereferenceable %v126, %v127 : !sea.ptr<64>, i64 loc("_105"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v128, ^bb47, ^bb132
^bb47:
  %v129 = sea.load %v39[%v126] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_107"("seahorn/lib/bcmp.c":61:11))
  %v130 = sea.ptr.index %v40 [] strides [] offset 4 inbounds : !sea.ptr<64> loc("_108"("seahorn/lib/bcmp.c":61:20))
  %v131 = sea.const 1 : i64 loc("_109"("seahorn/lib/bcmp.c":61:20))
  %v132 = sea.ptr.dereferenceable %v130, %v131 : !sea.ptr<64>, i64 loc("_109"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v132, ^bb48, ^bb132
^bb48:
  %v133 = sea.load %v39[%v130] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_111"("seahorn/lib/bcmp.c":61:20))
  %v134 = sea.icmp eq, %v129, %v133 : i8 loc(".not2.i.i.4"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v134, ^bb49, ^bb69(%v130, %v126 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb49:
  %v135 = sea.const 5 : i64 loc(".not14"("seahorn/lib/bcmp.c":60:11))
  %v136 = sea.icmp eq, %v7, %v135 : i64 loc(".not14"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v136, ^bb116, ^bb50 loc("seahorn/lib/bcmp.c":60:9)
^bb50:
  %v137 = sea.ptr.index %v22 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_113"("seahorn/lib/bcmp.c":61:11))
  %v138 = sea.const 1 : i64 loc("_114"("seahorn/lib/bcmp.c":61:11))
  %v139 = sea.ptr.dereferenceable %v137, %v138 : !sea.ptr<64>, i64 loc("_114"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v139, ^bb51, ^bb132
^bb51:
  %v140 = sea.load %v39[%v137] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_116"("seahorn/lib/bcmp.c":61:11))
  %v141 = sea.ptr.index %v40 [] strides [] offset 5 inbounds : !sea.ptr<64> loc("_117"("seahorn/lib/bcmp.c":61:20))
  %v142 = sea.const 1 : i64 loc("_118"("seahorn/lib/bcmp.c":61:20))
  %v143 = sea.ptr.dereferenceable %v141, %v142 : !sea.ptr<64>, i64 loc("_118"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v143, ^bb52, ^bb132
^bb52:
  %v144 = sea.load %v39[%v141] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_120"("seahorn/lib/bcmp.c":61:20))
  %v145 = sea.icmp eq, %v140, %v144 : i8 loc(".not2.i.i.5"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v145, ^bb53, ^bb69(%v141, %v137 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb53:
  %v146 = sea.const 6 : i64 loc("_121"("seahorn/lib/bcmp.c":60:11))
  %v147 = sea.icmp ugt, %v7, %v146 : i64 loc("_121"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v147, ^bb54, ^bb116 loc("seahorn/lib/bcmp.c":60:9)
^bb54:
  %v148 = sea.ptr.index %v22 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_123"("seahorn/lib/bcmp.c":61:11))
  %v149 = sea.const 1 : i64 loc("_124"("seahorn/lib/bcmp.c":61:11))
  %v150 = sea.ptr.dereferenceable %v148, %v149 : !sea.ptr<64>, i64 loc("_124"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v150, ^bb55, ^bb132
^bb55:
  %v151 = sea.load %v39[%v148] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_126"("seahorn/lib/bcmp.c":61:11))
  %v152 = sea.ptr.index %v40 [] strides [] offset 6 inbounds : !sea.ptr<64> loc("_127"("seahorn/lib/bcmp.c":61:20))
  %v153 = sea.const 1 : i64 loc("_128"("seahorn/lib/bcmp.c":61:20))
  %v154 = sea.ptr.dereferenceable %v152, %v153 : !sea.ptr<64>, i64 loc("_128"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v154, ^bb56, ^bb132
^bb56:
  %v155 = sea.load %v39[%v152] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_130"("seahorn/lib/bcmp.c":61:20))
  %v156 = sea.icmp eq, %v151, %v155 : i8 loc(".not2.i.i.6"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v156, ^bb57, ^bb69(%v152, %v148 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb57:
  %v157 = sea.const 7 : i64 loc(".not15"("seahorn/lib/bcmp.c":60:11))
  %v158 = sea.icmp eq, %v7, %v157 : i64 loc(".not15"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v158, ^bb116, ^bb58 loc("seahorn/lib/bcmp.c":60:9)
^bb58:
  %v159 = sea.ptr.index %v22 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_132"("seahorn/lib/bcmp.c":61:11))
  %v160 = sea.const 1 : i64 loc("_133"("seahorn/lib/bcmp.c":61:11))
  %v161 = sea.ptr.dereferenceable %v159, %v160 : !sea.ptr<64>, i64 loc("_133"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v161, ^bb59, ^bb132
^bb59:
  %v162 = sea.load %v39[%v159] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_135"("seahorn/lib/bcmp.c":61:11))
  %v163 = sea.ptr.index %v40 [] strides [] offset 7 inbounds : !sea.ptr<64> loc("_136"("seahorn/lib/bcmp.c":61:20))
  %v164 = sea.const 1 : i64 loc("_137"("seahorn/lib/bcmp.c":61:20))
  %v165 = sea.ptr.dereferenceable %v163, %v164 : !sea.ptr<64>, i64 loc("_137"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v165, ^bb60, ^bb132
^bb60:
  %v166 = sea.load %v39[%v163] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_139"("seahorn/lib/bcmp.c":61:20))
  %v167 = sea.icmp eq, %v162, %v166 : i8 loc(".not2.i.i.7"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v167, ^bb61, ^bb69(%v163, %v159 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb61:
  %v168 = sea.const 8 : i64 loc("_140"("seahorn/lib/bcmp.c":60:11))
  %v169 = sea.icmp ugt, %v7, %v168 : i64 loc("_140"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v169, ^bb62, ^bb116 loc("seahorn/lib/bcmp.c":60:9)
^bb62:
  %v170 = sea.ptr.index %v22 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_142"("seahorn/lib/bcmp.c":61:11))
  %v171 = sea.const 1 : i64 loc("_143"("seahorn/lib/bcmp.c":61:11))
  %v172 = sea.ptr.dereferenceable %v170, %v171 : !sea.ptr<64>, i64 loc("_143"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v172, ^bb63, ^bb132
^bb63:
  %v173 = sea.load %v39[%v170] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_145"("seahorn/lib/bcmp.c":61:11))
  %v174 = sea.ptr.index %v40 [] strides [] offset 8 inbounds : !sea.ptr<64> loc("_146"("seahorn/lib/bcmp.c":61:20))
  %v175 = sea.const 1 : i64 loc("_147"("seahorn/lib/bcmp.c":61:20))
  %v176 = sea.ptr.dereferenceable %v174, %v175 : !sea.ptr<64>, i64 loc("_147"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v176, ^bb64, ^bb132
^bb64:
  %v177 = sea.load %v39[%v174] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_149"("seahorn/lib/bcmp.c":61:20))
  %v178 = sea.icmp eq, %v173, %v177 : i8 loc(".not2.i.i.8"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v178, ^bb65, ^bb69(%v174, %v170 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb65:
  %v179 = sea.const 9 : i64 loc(".not16"("seahorn/lib/bcmp.c":60:11))
  %v180 = sea.icmp eq, %v7, %v179 : i64 loc(".not16"("seahorn/lib/bcmp.c":60:11))
  sea.cond_br %v180, ^bb116, ^bb66 loc("seahorn/lib/bcmp.c":60:9)
^bb66:
  %v181 = sea.ptr.index %v22 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_151"("seahorn/lib/bcmp.c":61:11))
  %v182 = sea.const 1 : i64 loc("_152"("seahorn/lib/bcmp.c":61:11))
  %v183 = sea.ptr.dereferenceable %v181, %v182 : !sea.ptr<64>, i64 loc("_152"("seahorn/lib/bcmp.c":61:11))
  sea.cond_br %v183, ^bb67, ^bb132
^bb67:
  %v184 = sea.load %v39[%v181] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_154"("seahorn/lib/bcmp.c":61:11))
  %v185 = sea.ptr.index %v40 [] strides [] offset 9 inbounds : !sea.ptr<64> loc("_155"("seahorn/lib/bcmp.c":61:20))
  %v186 = sea.const 1 : i64 loc("_156"("seahorn/lib/bcmp.c":61:20))
  %v187 = sea.ptr.dereferenceable %v185, %v186 : !sea.ptr<64>, i64 loc("_156"("seahorn/lib/bcmp.c":61:20))
  sea.cond_br %v187, ^bb68, ^bb132
^bb68:
  %v188 = sea.load %v39[%v185] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_158"("seahorn/lib/bcmp.c":61:20))
  %v189 = sea.icmp eq, %v184, %v188 : i8 loc(".not2.i.i.9"("seahorn/lib/bcmp.c":61:17))
  sea.cond_br %v189, ^bb71, ^bb69(%v185, %v181 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":61:11)
^bb69(%v190 : !sea.ptr<64>, %v191 : !sea.ptr<64>):
  %v192 = sea.const 1 : i64 loc("_71"("seahorn/lib/bcmp.c":62:16))
  %v193 = sea.ptr.dereferenceable %v191, %v192 : !sea.ptr<64>, i64 loc("_71"("seahorn/lib/bcmp.c":62:16))
  sea.cond_br %v193, ^bb70, ^bb132
^bb70:
  %v194 = sea.const 1 : i64 loc("_73"("seahorn/lib/bcmp.c":62:24))
  %v195 = sea.ptr.dereferenceable %v190, %v194 : !sea.ptr<64>, i64 loc("_73"("seahorn/lib/bcmp.c":62:24))
  sea.cond_br %v195, ^bb113, ^bb132
^bb71:
  %v196 = sea.const 10 : i64 loc("_159"("seahorn/lib/bcmp.c":67:31))
  %v197 = sea.icmp ugt, %v7, %v196 : i64 loc("_159"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v197, ^bb72, ^bb116 loc("seahorn/lib/bcmp.c":67:3)
^bb72:
  %v198 = sea.ptr.index %v22 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_62"("seahorn/lib/bcmp.c":68:9))
  %v199 = sea.const 1 : i64 loc("_63"("seahorn/lib/bcmp.c":68:9))
  %v200 = sea.ptr.dereferenceable %v198, %v199 : !sea.ptr<64>, i64 loc("_63"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v200, ^bb73, ^bb132
^bb73:
  %v201 = sea.load %v39[%v198] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_244"("seahorn/lib/bcmp.c":68:9))
  %v202 = sea.ptr.index %v40 [] strides [] offset 10 inbounds : !sea.ptr<64> loc("_245"("seahorn/lib/bcmp.c":68:18))
  %v203 = sea.const 1 : i64 loc("_246"("seahorn/lib/bcmp.c":68:18))
  %v204 = sea.ptr.dereferenceable %v202, %v203 : !sea.ptr<64>, i64 loc("_246"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v204, ^bb74, ^bb132
^bb74:
  %v205 = sea.load %v39[%v202] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_248"("seahorn/lib/bcmp.c":68:18))
  %v206 = sea.icmp eq, %v201, %v205 : i8 loc(".not.i19.i"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v206, ^bb75, ^bb111(%v202, %v198 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb75:
  %v207 = sea.const 11 : i64 loc("exitcond22.not"("seahorn/lib/bcmp.c":67:31))
  %v208 = sea.icmp eq, %v7, %v207 : i64 loc("exitcond22.not"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v208, ^bb116, ^bb76 loc("seahorn/lib/bcmp.c":67:3)
^bb76:
  %v209 = sea.ptr.index %v22 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_161"("seahorn/lib/bcmp.c":68:9))
  %v210 = sea.const 1 : i64 loc("_162"("seahorn/lib/bcmp.c":68:9))
  %v211 = sea.ptr.dereferenceable %v209, %v210 : !sea.ptr<64>, i64 loc("_162"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v211, ^bb77, ^bb132
^bb77:
  %v212 = sea.load %v39[%v209] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_164"("seahorn/lib/bcmp.c":68:9))
  %v213 = sea.ptr.index %v40 [] strides [] offset 11 inbounds : !sea.ptr<64> loc("_165"("seahorn/lib/bcmp.c":68:18))
  %v214 = sea.const 1 : i64 loc("_166"("seahorn/lib/bcmp.c":68:18))
  %v215 = sea.ptr.dereferenceable %v213, %v214 : !sea.ptr<64>, i64 loc("_166"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v215, ^bb78, ^bb132
^bb78:
  %v216 = sea.load %v39[%v213] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_168"("seahorn/lib/bcmp.c":68:18))
  %v217 = sea.icmp eq, %v212, %v216 : i8 loc(".not.i19.i.1"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v217, ^bb79, ^bb111(%v213, %v209 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb79:
  %v218 = sea.const 12 : i64 loc("exitcond22.not.1"("seahorn/lib/bcmp.c":67:31))
  %v219 = sea.icmp eq, %v7, %v218 : i64 loc("exitcond22.not.1"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v219, ^bb116, ^bb80 loc("seahorn/lib/bcmp.c":67:3)
^bb80:
  %v220 = sea.ptr.index %v22 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_170"("seahorn/lib/bcmp.c":68:9))
  %v221 = sea.const 1 : i64 loc("_171"("seahorn/lib/bcmp.c":68:9))
  %v222 = sea.ptr.dereferenceable %v220, %v221 : !sea.ptr<64>, i64 loc("_171"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v222, ^bb81, ^bb132
^bb81:
  %v223 = sea.load %v39[%v220] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_173"("seahorn/lib/bcmp.c":68:9))
  %v224 = sea.ptr.index %v40 [] strides [] offset 12 inbounds : !sea.ptr<64> loc("_174"("seahorn/lib/bcmp.c":68:18))
  %v225 = sea.const 1 : i64 loc("_175"("seahorn/lib/bcmp.c":68:18))
  %v226 = sea.ptr.dereferenceable %v224, %v225 : !sea.ptr<64>, i64 loc("_175"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v226, ^bb82, ^bb132
^bb82:
  %v227 = sea.load %v39[%v224] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_177"("seahorn/lib/bcmp.c":68:18))
  %v228 = sea.icmp eq, %v223, %v227 : i8 loc(".not.i19.i.2"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v228, ^bb83, ^bb111(%v224, %v220 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb83:
  %v229 = sea.const 13 : i64 loc("exitcond22.not.2"("seahorn/lib/bcmp.c":67:31))
  %v230 = sea.icmp eq, %v7, %v229 : i64 loc("exitcond22.not.2"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v230, ^bb116, ^bb84 loc("seahorn/lib/bcmp.c":67:3)
^bb84:
  %v231 = sea.ptr.index %v22 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_179"("seahorn/lib/bcmp.c":68:9))
  %v232 = sea.const 1 : i64 loc("_180"("seahorn/lib/bcmp.c":68:9))
  %v233 = sea.ptr.dereferenceable %v231, %v232 : !sea.ptr<64>, i64 loc("_180"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v233, ^bb85, ^bb132
^bb85:
  %v234 = sea.load %v39[%v231] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_182"("seahorn/lib/bcmp.c":68:9))
  %v235 = sea.ptr.index %v40 [] strides [] offset 13 inbounds : !sea.ptr<64> loc("_183"("seahorn/lib/bcmp.c":68:18))
  %v236 = sea.const 1 : i64 loc("_184"("seahorn/lib/bcmp.c":68:18))
  %v237 = sea.ptr.dereferenceable %v235, %v236 : !sea.ptr<64>, i64 loc("_184"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v237, ^bb86, ^bb132
^bb86:
  %v238 = sea.load %v39[%v235] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_186"("seahorn/lib/bcmp.c":68:18))
  %v239 = sea.icmp eq, %v234, %v238 : i8 loc(".not.i19.i.3"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v239, ^bb87, ^bb111(%v235, %v231 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb87:
  %v240 = sea.const 14 : i64 loc("exitcond22.not.3"("seahorn/lib/bcmp.c":67:31))
  %v241 = sea.icmp eq, %v7, %v240 : i64 loc("exitcond22.not.3"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v241, ^bb116, ^bb88 loc("seahorn/lib/bcmp.c":67:3)
^bb88:
  %v242 = sea.ptr.index %v22 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_188"("seahorn/lib/bcmp.c":68:9))
  %v243 = sea.const 1 : i64 loc("_189"("seahorn/lib/bcmp.c":68:9))
  %v244 = sea.ptr.dereferenceable %v242, %v243 : !sea.ptr<64>, i64 loc("_189"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v244, ^bb89, ^bb132
^bb89:
  %v245 = sea.load %v39[%v242] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_191"("seahorn/lib/bcmp.c":68:9))
  %v246 = sea.ptr.index %v40 [] strides [] offset 14 inbounds : !sea.ptr<64> loc("_192"("seahorn/lib/bcmp.c":68:18))
  %v247 = sea.const 1 : i64 loc("_193"("seahorn/lib/bcmp.c":68:18))
  %v248 = sea.ptr.dereferenceable %v246, %v247 : !sea.ptr<64>, i64 loc("_193"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v248, ^bb90, ^bb132
^bb90:
  %v249 = sea.load %v39[%v246] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_195"("seahorn/lib/bcmp.c":68:18))
  %v250 = sea.icmp eq, %v245, %v249 : i8 loc(".not.i19.i.4"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v250, ^bb91, ^bb111(%v246, %v242 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb91:
  %v251 = sea.const 15 : i64 loc("exitcond22.not.4"("seahorn/lib/bcmp.c":67:31))
  %v252 = sea.icmp eq, %v7, %v251 : i64 loc("exitcond22.not.4"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v252, ^bb116, ^bb92 loc("seahorn/lib/bcmp.c":67:3)
^bb92:
  %v253 = sea.ptr.index %v22 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_197"("seahorn/lib/bcmp.c":68:9))
  %v254 = sea.const 1 : i64 loc("_198"("seahorn/lib/bcmp.c":68:9))
  %v255 = sea.ptr.dereferenceable %v253, %v254 : !sea.ptr<64>, i64 loc("_198"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v255, ^bb93, ^bb132
^bb93:
  %v256 = sea.load %v39[%v253] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_200"("seahorn/lib/bcmp.c":68:9))
  %v257 = sea.ptr.index %v40 [] strides [] offset 15 inbounds : !sea.ptr<64> loc("_201"("seahorn/lib/bcmp.c":68:18))
  %v258 = sea.const 1 : i64 loc("_202"("seahorn/lib/bcmp.c":68:18))
  %v259 = sea.ptr.dereferenceable %v257, %v258 : !sea.ptr<64>, i64 loc("_202"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v259, ^bb94, ^bb132
^bb94:
  %v260 = sea.load %v39[%v257] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_204"("seahorn/lib/bcmp.c":68:18))
  %v261 = sea.icmp eq, %v256, %v260 : i8 loc(".not.i19.i.5"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v261, ^bb95, ^bb111(%v257, %v253 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb95:
  %v262 = sea.const 16 : i64 loc("exitcond22.not.5"("seahorn/lib/bcmp.c":67:31))
  %v263 = sea.icmp eq, %v7, %v262 : i64 loc("exitcond22.not.5"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v263, ^bb116, ^bb96 loc("seahorn/lib/bcmp.c":67:3)
^bb96:
  %v264 = sea.ptr.index %v22 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_206"("seahorn/lib/bcmp.c":68:9))
  %v265 = sea.const 1 : i64 loc("_207"("seahorn/lib/bcmp.c":68:9))
  %v266 = sea.ptr.dereferenceable %v264, %v265 : !sea.ptr<64>, i64 loc("_207"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v266, ^bb97, ^bb132
^bb97:
  %v267 = sea.load %v39[%v264] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_209"("seahorn/lib/bcmp.c":68:9))
  %v268 = sea.ptr.index %v40 [] strides [] offset 16 inbounds : !sea.ptr<64> loc("_210"("seahorn/lib/bcmp.c":68:18))
  %v269 = sea.const 1 : i64 loc("_211"("seahorn/lib/bcmp.c":68:18))
  %v270 = sea.ptr.dereferenceable %v268, %v269 : !sea.ptr<64>, i64 loc("_211"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v270, ^bb98, ^bb132
^bb98:
  %v271 = sea.load %v39[%v268] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_213"("seahorn/lib/bcmp.c":68:18))
  %v272 = sea.icmp eq, %v267, %v271 : i8 loc(".not.i19.i.6"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v272, ^bb99, ^bb111(%v268, %v264 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb99:
  %v273 = sea.const 17 : i64 loc("exitcond22.not.6"("seahorn/lib/bcmp.c":67:31))
  %v274 = sea.icmp eq, %v7, %v273 : i64 loc("exitcond22.not.6"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v274, ^bb116, ^bb100 loc("seahorn/lib/bcmp.c":67:3)
^bb100:
  %v275 = sea.ptr.index %v22 [] strides [] offset 17 inbounds : !sea.ptr<64> loc("_215"("seahorn/lib/bcmp.c":68:9))
  %v276 = sea.const 1 : i64 loc("_216"("seahorn/lib/bcmp.c":68:9))
  %v277 = sea.ptr.dereferenceable %v275, %v276 : !sea.ptr<64>, i64 loc("_216"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v277, ^bb101, ^bb132
^bb101:
  %v278 = sea.load %v39[%v275] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_218"("seahorn/lib/bcmp.c":68:9))
  %v279 = sea.ptr.index %v40 [] strides [] offset 17 inbounds : !sea.ptr<64> loc("_219"("seahorn/lib/bcmp.c":68:18))
  %v280 = sea.const 1 : i64 loc("_220"("seahorn/lib/bcmp.c":68:18))
  %v281 = sea.ptr.dereferenceable %v279, %v280 : !sea.ptr<64>, i64 loc("_220"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v281, ^bb102, ^bb132
^bb102:
  %v282 = sea.load %v39[%v279] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_222"("seahorn/lib/bcmp.c":68:18))
  %v283 = sea.icmp eq, %v278, %v282 : i8 loc(".not.i19.i.7"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v283, ^bb103, ^bb111(%v279, %v275 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb103:
  %v284 = sea.const 18 : i64 loc("exitcond22.not.7"("seahorn/lib/bcmp.c":67:31))
  %v285 = sea.icmp eq, %v7, %v284 : i64 loc("exitcond22.not.7"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v285, ^bb116, ^bb104 loc("seahorn/lib/bcmp.c":67:3)
^bb104:
  %v286 = sea.ptr.index %v22 [] strides [] offset 18 inbounds : !sea.ptr<64> loc("_224"("seahorn/lib/bcmp.c":68:9))
  %v287 = sea.const 1 : i64 loc("_225"("seahorn/lib/bcmp.c":68:9))
  %v288 = sea.ptr.dereferenceable %v286, %v287 : !sea.ptr<64>, i64 loc("_225"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v288, ^bb105, ^bb132
^bb105:
  %v289 = sea.load %v39[%v286] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_227"("seahorn/lib/bcmp.c":68:9))
  %v290 = sea.ptr.index %v40 [] strides [] offset 18 inbounds : !sea.ptr<64> loc("_228"("seahorn/lib/bcmp.c":68:18))
  %v291 = sea.const 1 : i64 loc("_229"("seahorn/lib/bcmp.c":68:18))
  %v292 = sea.ptr.dereferenceable %v290, %v291 : !sea.ptr<64>, i64 loc("_229"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v292, ^bb106, ^bb132
^bb106:
  %v293 = sea.load %v39[%v290] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_231"("seahorn/lib/bcmp.c":68:18))
  %v294 = sea.icmp eq, %v289, %v293 : i8 loc(".not.i19.i.8"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v294, ^bb107, ^bb111(%v290, %v286 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb107:
  %v295 = sea.const 19 : i64 loc("exitcond22.not.8"("seahorn/lib/bcmp.c":67:31))
  %v296 = sea.icmp eq, %v7, %v295 : i64 loc("exitcond22.not.8"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v296, ^bb116, ^bb108 loc("seahorn/lib/bcmp.c":67:3)
^bb108:
  %v297 = sea.ptr.index %v22 [] strides [] offset 19 inbounds : !sea.ptr<64> loc("_233"("seahorn/lib/bcmp.c":68:9))
  %v298 = sea.const 1 : i64 loc("_234"("seahorn/lib/bcmp.c":68:9))
  %v299 = sea.ptr.dereferenceable %v297, %v298 : !sea.ptr<64>, i64 loc("_234"("seahorn/lib/bcmp.c":68:9))
  sea.cond_br %v299, ^bb109, ^bb132
^bb109:
  %v300 = sea.load %v39[%v297] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_236"("seahorn/lib/bcmp.c":68:9))
  %v301 = sea.ptr.index %v40 [] strides [] offset 19 inbounds : !sea.ptr<64> loc("_237"("seahorn/lib/bcmp.c":68:18))
  %v302 = sea.const 1 : i64 loc("_238"("seahorn/lib/bcmp.c":68:18))
  %v303 = sea.ptr.dereferenceable %v301, %v302 : !sea.ptr<64>, i64 loc("_238"("seahorn/lib/bcmp.c":68:18))
  sea.cond_br %v303, ^bb110, ^bb132
^bb110:
  %v304 = sea.load %v39[%v301] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_240"("seahorn/lib/bcmp.c":68:18))
  %v305 = sea.icmp eq, %v300, %v304 : i8 loc(".not.i19.i.9"("seahorn/lib/bcmp.c":68:15))
  sea.cond_br %v305, ^bb114, ^bb111(%v301, %v297 : !sea.ptr<64>, !sea.ptr<64>) loc("seahorn/lib/bcmp.c":68:9)
^bb111(%v306 : !sea.ptr<64>, %v307 : !sea.ptr<64>):
  %v308 = sea.const 1 : i64 loc("_250"("seahorn/lib/bcmp.c":69:14))
  %v309 = sea.ptr.dereferenceable %v307, %v308 : !sea.ptr<64>, i64 loc("_250"("seahorn/lib/bcmp.c":69:14))
  sea.cond_br %v309, ^bb112, ^bb132
^bb112:
  %v310 = sea.const 1 : i64 loc("_252"("seahorn/lib/bcmp.c":69:22))
  %v311 = sea.ptr.dereferenceable %v306, %v310 : !sea.ptr<64>, i64 loc("_252"("seahorn/lib/bcmp.c":69:22))
  sea.cond_br %v311, ^bb113, ^bb132
^bb113:
  sea.cond_br %v48, ^bb119, ^bb125 loc("seahorn/jobs/array_eq/aws_array_eq_harness.c":58:21)
^bb114:
  %v312 = sea.const 20 : i64 loc("exitcond22.not.9"("seahorn/lib/bcmp.c":67:31))
  %v313 = sea.icmp eq, %v7, %v312 : i64 loc("exitcond22.not.9"("seahorn/lib/bcmp.c":67:31))
  sea.cond_br %v313, ^bb116, ^bb115 loc("seahorn/lib/bcmp.c":67:3)
^bb115:
  %v314 = sea.ptr.index %v22 [] strides [] offset 20 inbounds : !sea.ptr<64> loc("_242"("seahorn/lib/bcmp.c":68:9))
  %v315 = sea.const 1 : i64 loc("_243"("seahorn/lib/bcmp.c":68:9))
  %v316 = sea.ptr.dereferenceable %v314, %v315 : !sea.ptr<64>, i64 loc("_243"("seahorn/lib/bcmp.c":68:9))
  %v317 = sea.const 1 : i1
  %v318 = sea.xor %v316, %v317 : i1
  sea.assume %v318
  sea.br ^bb132
^bb116:
  sea.cond_br %v48, ^bb117, ^bb125 loc("seahorn/jobs/array_eq/aws_array_eq_harness.c":52:25)
^bb117:
  %v319 = sea.ptr.null : !sea.ptr<64> loc(".not6.i.i.not"("seahorn/lib/utils.c":15:3))
  %v320 = sea.ptr.cmp eq, %v40, %v319 : !sea.ptr<64> loc(".not6.i.i.not"("seahorn/lib/utils.c":15:3))
  sea.cond_br %v320, ^bb132, ^bb118 loc("seahorn/lib/utils.c":15:3)
^bb118:
  %v321 = sea.nondet "nd_size_t" [18] : i64 loc("_254"("seahorn/lib/utils.c":17:16))
  %v322 = sea.icmp ult, %v321, %v7 : i64 loc("_255"("seahorn/lib/utils.c":19:14))
  %v323 = sea.const 36028797018963967 : i64 loc("_256"("seahorn/lib/utils.c":19:20))
  %v324 = sea.icmp ult, %v7, %v323 : i64 loc("_256"("seahorn/lib/utils.c":19:20))
  %v325 = sea.and %v324, %v322 : i1 loc("_257"("seahorn/lib/utils.c":19:20))
  sea.assume %v325 loc("seahorn/lib/utils.c":19:5)
  %v326 = sea.ptr.index %v22 [%v321] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_258"("seahorn/lib/utils.c":20:5))
  %v327 = sea.load %v39[%v326] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_259"("seahorn/lib/utils.c":20:5))
  %v328 = sea.ptr.index %v40 [%v321] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_260"("seahorn/lib/utils.c":20:5))
  %v329 = sea.load %v39[%v328] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_261"("seahorn/lib/utils.c":20:5))
  %v330 = sea.icmp eq, %v327, %v329 : i8 loc("_262"("seahorn/lib/utils.c":20:5))
  sea.cond_br %v330, ^bb119, ^bb132 loc("seahorn/lib/utils.c":20:5)
^bb119:
  sea.br ^bb120
^bb120:
  %v331 = sea.ptr.index %v22 [%v42] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_264"("seahorn/lib/utils.c":40:5))
  %v332 = sea.const 1 : i64 loc("_265"("seahorn/lib/utils.c":40:5))
  %v333 = sea.ptr.dereferenceable %v331, %v332 : !sea.ptr<64>, i64 loc("_265"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v333, ^bb121, ^bb132
^bb121:
  %v334 = sea.load %v39[%v331] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_267"("seahorn/lib/utils.c":40:5))
  sea.br ^bb122
^bb122:
  %v335 = sea.icmp eq, %v334, %v59 : i8 loc("_269"("seahorn/lib/utils.c":40:5))
  sea.br ^bb123
^bb123:
  %v336 = sea.const 1 : i64 loc("_271"("seahorn/lib/utils.c":40:5))
  %v337 = sea.ptr.dereferenceable %v331, %v336 : !sea.ptr<64>, i64 loc("_271"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v337, ^bb124, ^bb132
^bb124:
  %v338 = sea.const 1 : i1 loc("or.cond")
  %v339 = sea.const 0 : i1 loc("or.cond")
  %v340 = sea.select %v338, %v335, %v339 : i1 loc("or.cond")
  sea.cond_br %v340, ^bb125, ^bb132
^bb125:
  sea.assume %v66 loc("seahorn/jobs/array_eq/aws_array_eq_harness.c":61:21)
  sea.assume %v65 loc("seahorn/lib/utils.c":39:14)
  sea.br ^bb126
^bb126:
  %v341 = sea.ptr.index %v40 [%v60] strides [1] offset 0 inbounds : !sea.ptr<64>, i64 loc("_274"("seahorn/lib/utils.c":40:5))
  %v342 = sea.const 1 : i64 loc("_275"("seahorn/lib/utils.c":40:5))
  %v343 = sea.ptr.dereferenceable %v341, %v342 : !sea.ptr<64>, i64 loc("_275"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v343, ^bb127, ^bb132
^bb127:
  %v344 = sea.load %v39[%v341] : !sea.mem<!sea.ptr<64>, i8> -> i8 loc("_277"("seahorn/lib/utils.c":40:5))
  sea.br ^bb128
^bb128:
  %v345 = sea.icmp eq, %v344, %v77 : i8 loc("_279"("seahorn/lib/utils.c":40:5))
  sea.br ^bb129
^bb129:
  %v346 = sea.const 1 : i64 loc("_281"("seahorn/lib/utils.c":40:5))
  %v347 = sea.ptr.dereferenceable %v341, %v346 : !sea.ptr<64>, i64 loc("_281"("seahorn/lib/utils.c":40:5))
  sea.cond_br %v347, ^bb130, ^bb132
^bb130:
  sea.br ^bb131
^bb131:
  %v348 = sea.const 1 : i1 loc("seahorn/lib/utils.c":40:5)
  %v349 = sea.xor %v345, %v348 : i1 loc("seahorn/lib/utils.c":40:5)
  sea.assume %v349 loc("seahorn/lib/utils.c":40:5)
  sea.br ^bb132 loc("seahorn/lib/utils.c":40:5)
^bb132:
  sea.br ^bb133
^bb133:
  %v350 = sea.const 0 : i1
  sea.assert %v350
  sea.halt
}
