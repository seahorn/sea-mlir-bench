# HPACK H control: the high nibble emits an extra byte (3 per input byte)
0,/^    if (t->fstate & NGHTTP2_HUFF_SYM) {$/s//    *buf->last++ = 0; if (t->fstate \& NGHTTP2_HUFF_SYM) {/
