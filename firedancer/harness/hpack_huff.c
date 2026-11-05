// HPACK contract H: nghttp2_hd_huff_decode (src/waltz/h2/nghttp2_hd_huffman.c,
// with its generated table nghttp2_hd_huffman_data.c, both unchanged but for
// the overlay proofs/hpack-huff-cut.sed). Used as a mock (HUFF_MOCK=1, see
// hpack_common.h) by hpack_skip.c and hpack_rd.c.
//
// Pre: (fstate & 0x1ff) <= 256, fstate != 0 (HP_FSTATE_OK); srclen <= NMAX.
// Claims:
//   H1 reads: only [src, src+srclen) (overlay HP_RDOK);
//   H2 writes: inside [last0, last0 + 2*srclen) (overlay HP_WROK), and at the
//      end buf.last - last0 <= 2*srclen;
//   H3 table rows: every row index < 257 (overlay HP_IDX);
//   H4 state: the final fstate satisfies HP_FSTATE_OK (0 is never a state:
//      fd_hpack_skip uses 0 for raw strings);
//   H5 result: < 0 only if final, else srclen; srclen == 0 keeps fstate.
// Loop cut invariant: src in [src0, end], out <= 2 * in so far, fstate ok,
// and fstate is the entry state while nothing has been read.
// Preservation needs the table fact T-TAB: every entry's fstate is
// HP_FSTATE_OK. HP_TAB_AXIOM=1 (default) assumes it per read, because the
// export drops the 16448-byte initializer (limit 16 KiB); T-TAB itself is
// checked natively (check_hpack_models.sh).
// CLAIM=1 reach: a successful final decode of >= 2 bytes that wrote 3 symbols.
#define HUFF_MOCK 0
#include "hpack_common.h"

static uint16_t hp_f0; /* ghost: fstate at entry */
#define HP_INV_H                                                            \
  (src >= hp_lo && src <= end && buf->last >= hp_wlo &&                     \
   (ulong)(buf->last - hp_wlo) <= 2UL * (ulong)(src - hp_lo) &&             \
   HP_FSTATE_OK(t->fstate) && (src != hp_lo || t->fstate == hp_f0))
#define HP_HAVOC_H                                                          \
  HP_HAVOC_PTR(src, hp_lo, hp_hi - hp_lo);                                  \
  HP_HAVOC_PTR(buf->last, hp_wlo, hp_whi - hp_wlo);                         \
  node.fstate = nd_ushort(); t = &node

#ifndef HP_TAB_AXIOM
#define HP_TAB_AXIOM 1
#endif
#if HP_TAB_AXIOM
#define HP_TAB(t) assume(HP_FSTATE_OK((t)->fstate))
#else
#define HP_TAB(t) ((void)0)
#endif

#include "nghttp2_hd_huffman.c"
#include "nghttp2_hd_huffman_data.c"

#ifndef NMAX
#define NMAX 4096UL
#endif
extern uchar hp_in[NMAX];
extern uchar hp_out[2 * NMAX];

int main(void) {
  ulong n = nd_ulong();
  assume(n <= NMAX);
  int final = nd_int();
  nghttp2_hd_huff_decode_context ctx = {.fstate = nd_ushort()};
  assume(HP_FSTATE_OK(ctx.fstate));
  uint16_t f0 = ctx.fstate;
  hp_f0 = f0;
  hp_lo = hp_in; hp_hi = hp_in + n;
  hp_wlo = hp_out; hp_whi = hp_out + 2UL * n;
  nghttp2_buf buf = {.last = hp_out};
  nghttp2_ssize r = nghttp2_hd_huff_decode(&ctx, &buf, hp_in, n, final);
#if CLAIM == 0
  HP_CLAIM(buf.last >= hp_out && (ulong)(buf.last - hp_out) <= 2UL * n);
  HP_CLAIM(HP_FSTATE_OK(ctx.fstate));
  HP_CLAIM(r < 0 ? final != 0 : r == (nghttp2_ssize)n);
  HP_CLAIM(n != 0 || ctx.fstate == f0);
#elif CLAIM == 1
  sassert(!(r >= 0 && final && n >= 2 && buf.last - hp_out == 3));
#endif
  return 0;
}
