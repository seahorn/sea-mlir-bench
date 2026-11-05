// Exported from SeaHorn (linked_list_init.ir.fat.pp.ms.o.ul.cut.o.bc, function main).
sea.program @"main" {
^bb0:
  sea.br ^bb1
^bb1:
  sea.br ^bb2
^bb2:
  sea.br ^bb3
^bb3:
  sea.br ^bb4
^bb4:
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
  %v0 = sea.const 1 : i1 loc("seahorn/jobs/linked_list_init/aws_linked_list_init_harness.c":15:3)
  %v1 = sea.const 1 : i1 loc("seahorn/jobs/linked_list_init/aws_linked_list_init_harness.c":15:3)
  %v2 = sea.xor %v0, %v1 : i1 loc("seahorn/jobs/linked_list_init/aws_linked_list_init_harness.c":15:3)
  sea.assume %v2 loc("seahorn/jobs/linked_list_init/aws_linked_list_init_harness.c":15:3)
  sea.br ^bb13 loc("seahorn/jobs/linked_list_init/aws_linked_list_init_harness.c":15:3)
^bb13:
  sea.br ^bb14
^bb14:
  %v3 = sea.const 0 : i1
  sea.assert %v3
  sea.halt
}
