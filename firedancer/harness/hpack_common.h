// HPACK proofs: shared preamble (hpack_huff.c, hpack_skip.c, hpack_rd.c).
//
//
// Code under test is included unchanged from the pinned source (firedancer
// 37c658197), except for proof overlays (proofs/hpack-*.sed, applied to
// copies by run_hpack.sh): explicit read / write / index checks (A-INB would
// otherwise assume accesses stay in their object) and inductive loop cuts.
#ifndef HPACK_COMMON_H
#define HPACK_COMMON_H

#include "seahorn/seahorn.h"
#include <stddef.h>
#include <stdint.h>

#include "util/fd_util_base.h"
#undef FD_COMPILER_MFENCE
#define FD_COMPILER_MFENCE() ((void)0)
/* llvm.expect is not lowered by SeaHorn's pipeline (see txn_parse.c) */
#undef FD_LIKELY
#undef FD_UNLIKELY
#define FD_LIKELY(c) (c)
#define FD_UNLIKELY(c) (c)

extern ulong  nd_ulong(void);
extern uint   nd_uint(void);
extern ushort nd_ushort(void);
extern uchar  nd_uchar(void);
extern int    nd_int(void);

#ifndef CLAIM
#define CLAIM 0
#endif
/* HPCHK: which assertions are active (localization): 1 reads, 2 writes,
   4 table indices, 8 cut entry, 16 cut preservation, 32 harness claims,
   64 contract preconditions (mocks) */
#ifndef HPCHK
#define HPCHK 127
#endif
#define HP_ASSERT(bit, c) ((HPCHK & (bit)) ? sassert(c) : (void)0)
#define HP_CLAIM(c) HP_ASSERT(32, c)

/* ---- access checks (overlays route accesses through these) ----
   reads: [p, p+n) inside [hp_lo, hp_hi), the caller's input;
   writes: [p, p+n) inside [hp_wlo, hp_whi), the caller's output window. */
static uchar const * hp_lo;
static uchar const * hp_hi;
static uchar *       hp_wlo;
static uchar *       hp_whi;
#define HP_RDOK(p, n)                                                       \
  HP_ASSERT(1, (uchar const *)(p) >= hp_lo && (uchar const *)(p) <= hp_hi &&     \
          (ulong)(hp_hi - (uchar const *)(p)) >= (ulong)(n))
#define HP_WROK(p, n)                                                       \
  HP_ASSERT(2, (uchar *)(p) >= hp_wlo && (uchar *)(p) <= hp_whi &&               \
          (ulong)(hp_whi - (uchar *)(p)) >= (ulong)(n))
/* havoc a pointer to base + [0, max]: the offset is bounded before the GEP
   (an out-of-object inbounds GEP is poison, and LLVM folds pointer
   comparisons on that basis, so `p = base + nd; assume(p >= base ...)` does
   not constrain p) */
#define HP_HAVOC_PTR(p, base, max)                                          \
  do { ulong _o = nd_ulong(); assume(_o <= (ulong)(max)); (p) = (base) + _o; } while (0)
/* M-CTZ: model of fd_ulong_find_lsb (= __builtin_ctzl) for x != 0, used
   because the sea-mlir export has no llvm.cttz; equality with the builtin
   is checked natively (check_hpack_models.sh). */
static inline int hp_find_lsb( ulong x ) {
  int n = 0;
  if( !( x & 0xffffffffUL ) ) { n += 32; x >>= 32; }
  if( !( x & 0xffffUL ) )     { n += 16; x >>= 16; }
  if( !( x & 0xffUL ) )       { n +=  8; x >>=  8; }
  if( !( x & 0xfUL ) )        { n +=  4; x >>=  4; }
  if( !( x & 0x3UL ) )        { n +=  2; x >>=  2; }
  if( !( x & 0x1UL ) )        { n +=  1; }
  return n;
}
/* index into a global table of n rows */
#define HP_IDX(i, n) (HP_ASSERT(4, (ulong)(i) < (ulong)(n)), (i))

/* ---- inductive loop cut (as PF_WHILE in txn_parse.c) ----
   INV is asserted on entry; the loop state is havocked and INV assumed (an
   arbitrary iteration); if C, one body iteration runs (continue reaches the
   step), INV is asserted (preservation) and the path ends; otherwise
   execution continues after the loop with INV and !C.
   Reach checks must sit inside the body (HP_STEP_HOOK, at the preservation
   point, or in a mock): what the body does never reaches the code after a
   cut loop, only the havocked state does. */
#ifndef HP_STEP_HOOK
#define HP_STEP_HOOK ((void)0)
#endif
#define HP_WHILE(C, INV, HAVOC)                                             \
  HP_ASSERT(8, INV); HAVOC; assume(INV);                                    \
  if (C)                                                                    \
    for (int _hp_once = 1; _hp_once; _hp_once = 0, HP_STEP_HOOK, HP_ASSERT(16, INV), assume(0))

/* ---- contract H of nghttp2_hd_huff_decode (proved by hpack_huff.c) ----
   Pre: (fstate & 0x1ff) <= 256 and fstate != 0.
   Reads exactly [src, src+srclen); writes at most 2*srclen bytes from
   buf->last on (advancing it by that count); the new fstate satisfies the
   precondition again; fails (< 0) only if final; srclen == 0 leaves fstate.
   HUFF_MOCK=1: callers use this contract instead of the code. */
#define HP_FSTATE_OK(f) ((((f) & 0x1ffU) <= 256U) && (f) != 0U)
#if HUFF_MOCK
#include "nghttp2_hd_huffman.h"
static ulong hp_huff_calls;
/* copied from nghttp2_hd_huffman.c:34-36 (that file is not linked in mock
   mode; an undefined external would be a no-op in the export) */
void nghttp2_hd_huff_decode_context_init( nghttp2_hd_huff_decode_context * ctx ) {
  ctx->fstate = NGHTTP2_HUFF_ACCEPTED;
}
nghttp2_ssize nghttp2_hd_huff_decode( nghttp2_hd_huff_decode_context * ctx,
                                      nghttp2_buf * buf,
                                      uint8_t const * src,
                                      size_t srclen,
                                      int final ) {
  hp_huff_calls++;
#ifdef HP_HUFF_REACH
  sassert(!(HP_HUFF_REACH));
#endif
  HP_ASSERT( 64, HP_FSTATE_OK( ctx->fstate ) );
  if( srclen ) HP_RDOK( src, srclen );
  HP_WROK( buf->last, 2UL*srclen );
  ulong w = nd_ulong(); assume( w <= 2UL*srclen );
  buf->last += w;
  if( srclen ) {
    uint16_t f = nd_ushort(); assume( HP_FSTATE_OK( f ) );
    ctx->fstate = f;
  }
  if( final && !( ctx->fstate & NGHTTP2_HUFF_ACCEPTED ) ) return NGHTTP2_ERR_HEADER_COMP;
  return (nghttp2_ssize)srclen;
}
#endif

#endif

