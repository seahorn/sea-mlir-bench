# Proof overlay (not a mutant) on fd_hpack.c, for C1/C2 (hpack_rd.c): every
# input byte read of fd_hpack_rd_next_raw is checked (HP_RDOK), the static
# table index is checked (HP_IDX, 62 entries), and the table-size-update
# skip loop becomes an inductive cut (HP_WHILE; it always ends in an error).
s/\*(rd->src++)/(HP_RDOK( rd->src, 1UL ), *(rd->src++))/g
s/b0 = rd->src\[0\];/b0 = (HP_RDOK( rd->src, 1UL ), rd->src[0]);/
s/^  while( FD_LIKELY( rd->src < end ) ) {$/  HP_WHILE( rd->src < end, HP_INV_R, HP_HAVOC_R ) {/
s/&fd_hpack_static_table\[ idx \]/\&fd_hpack_static_table[ HP_IDX( idx, 62UL ) ]/
