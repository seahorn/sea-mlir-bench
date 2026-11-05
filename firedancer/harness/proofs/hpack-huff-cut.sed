# Proof overlay (not a mutant) on nghttp2_hd_huffman.c, for contract H
# (hpack_huff.c): the decode loop becomes an inductive cut (HP_WHILE), the
# input read and the two output writes are checked (HP_RDOK / HP_WROK), and
# both decode-table row indices are checked against the 257 rows (HP_IDX).
s/^  for (; src != end;) {$/  HP_WHILE( src != end, HP_INV_H, HP_HAVOC_H ) {/
s/^    c = \*src++;$/    c = (HP_RDOK( src, 1UL ), *src++);/
s/^      \*buf->last++ = t->sym;$/      HP_WROK( buf->last, 1UL ); *buf->last++ = t->sym;/
s/huff_decode_table\[t->fstate & 0x1ff\]/huff_decode_table[HP_IDX( t->fstate \& 0x1ff, 257 )]/g
# T-TAB (axiom, HP_TAB_AXIOM=1): the sea-mlir export drops initializers over
# 16 KiB (SeaMlirExport.cc kMaxInitBytes) and the table is 16448 bytes, so
# the table is unconstrained memory in the VC. Each entry read is assumed to
# satisfy HP_FSTATE_OK, the fact checked natively over all 4112 entries
# (check_hpack_models.sh).
s/^\(    t = &huff_decode_table\[.*\];\)$/\1 HP_TAB(t);/
