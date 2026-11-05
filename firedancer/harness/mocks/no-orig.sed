# Mock (not a mutant): fd_tpu_reasm_new does not store reasm->orig. orig is
# read only by publish / publish_fast (out of FD-FRAG scope). Its 16-bit store
# is the one access that keeps the whole reasm memory (header, slots, map) as
# bytes in sea-vc --widen-memory=4.
/^  reasm->orig     = (ushort)orig;$/d
