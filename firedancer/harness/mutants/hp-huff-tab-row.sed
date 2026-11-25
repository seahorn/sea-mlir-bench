# HPACK H table control (with HP_TAB_AXIOM=0): the first entry of
# huff_decode_table (row 0, nibble 0) names row 511, which does not exist
# (T-TAB broken in one entry of the initializer)
0,/^    {0x04, 0},$/s//    {0x1ff, 0},/
