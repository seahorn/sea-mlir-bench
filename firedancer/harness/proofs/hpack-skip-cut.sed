# Proof overlay (not a mutant) on fd_hpack.c, for C3 (hpack_skip.c): the
# byte loop of fd_hpack_skip_feed becomes an inductive cut (HP_WHILE); the
# input read is checked (HP_RDOK); the Huffman sink becomes the write window
# of contract H (HP_WROK in the mock); the continuation shift (<= 49) and the
# fd_hpack_skip_next row (< 3) are checked (HP_IDX, class 4).
s/^  while( srcsz ) {$/  HP_WHILE( srcsz, HP_INV_S, HP_HAVOC_S ) {/
s/^\(        nghttp2_buf buf = { .last = sink };\)$/\1 hp_wlo = sink; hp_whi = sink + sizeof(sink);/
s/^    uint byte = \*src++;$/    uint byte = (HP_RDOK( src, 1UL ), *src++);/
s/<< (skip->int_shift-7U);/<< HP_IDX( skip->int_shift-7U, 50U );/
s/fd_hpack_skip_next\[ skip->phase \]/fd_hpack_skip_next[ HP_IDX( skip->phase, 3U ) ]/
