// Exported from SeaHorn (linked_list_remove.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  %v0 = sea.ptr.nondet "nd_linked_list_node" [0] : !sea.ptr<64> loc("_0"("seahorn/jobs/linked_list_remove/aws_linked_list_remove_harness.c":16:23))
  sea.br ^bb1
^bb1:
  sea.br ^bb2
^bb2:
  sea.br ^bb3
^bb3:
  sea.br ^bb4
^bb4:
  %v1 = sea.ptr.nondet "nd_linked_list_node" [1] : !sea.ptr<64> loc("_3"("seahorn/jobs/linked_list_remove/aws_linked_list_remove_harness.c":23:23))
  sea.br ^bb5
^bb5:
  sea.br ^bb6
^bb6:
  sea.br ^bb7
^bb7:
  sea.br ^bb8
^bb8:
  sea.br ^bb9
^bb9:
  sea.br ^bb10
^bb10:
  sea.br ^bb11
^bb11:
  sea.br ^bb12
^bb12:
  sea.br ^bb13
^bb13:
  sea.br ^bb14
^bb14:
  %v2 = sea.const 1 : i1 loc("seahorn/jobs/linked_list_remove/aws_linked_list_remove_harness.c":40:5)
  %v3 = sea.const 1 : i1 loc("seahorn/jobs/linked_list_remove/aws_linked_list_remove_harness.c":40:5)
  %v4 = sea.xor %v2, %v3 : i1 loc("seahorn/jobs/linked_list_remove/aws_linked_list_remove_harness.c":40:5)
  sea.assume %v4 loc("seahorn/jobs/linked_list_remove/aws_linked_list_remove_harness.c":40:5)
  sea.br ^bb15 loc("seahorn/jobs/linked_list_remove/aws_linked_list_remove_harness.c":40:5)
^bb15:
  sea.br ^bb16
^bb16:
  %v5 = sea.const 0 : i1
  sea.assert %v5
  sea.halt
}
