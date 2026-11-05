// HPACK C3: fd_hpack_skip_feed (src/waltz/h2/fd_hpack.c), the incremental
// field-block validator fd_h2_conn runs on every HEADERS / CONTINUATION
// fragment (added in fdc917ff7). Code unchanged but for the overlay
// proofs/hpack-skip-cut.sed; nghttp2_hd_huff_decode is replaced by contract
// H (HUFF_MOCK=1, proved by hpack_huff.c).
//
// State invariant S = HP_SKIP_OK (below), over the decoder state alone:
//   phase <= 4 (ERROR = 5 only via fail); field_seen <= 1;
//   in an integer (int_shift != 0): phase <= 2, int_shift in {7, 14, .., 56},
//     integer < 2^(int_shift-7) + 128;
//   in a string (phase >= 3): integer > 0, int_shift == 0;
//   in every phase, huff_state is 0 (raw) or has DFA row < 256 (EOS row 256
//     is rejected); it is set when a string length starts, and is stale
//     but still valid in FIELD;
//   integer < 2^57.
// Proof: one call from any state with S (or ERROR), any input of n <= NMAX
// bytes, any fin. The byte loop is cut with S plus the input position.
// fd_hpack_skip_init gives the zero state, which satisfies S; on success the
// state after the call satisfies S again, so by induction over calls the
// claims hold for every sequence of fragments.
// Claims:
//   C3.1 reads in [src, src+srcsz) (HP_RDOK); C3.2 Huffman sink writes in
//   sink[0, 256) (HP_WROK, via H); C3.3 continuation shift <= 49 and
//   fd_hpack_skip_next row < 3 (HP_IDX); H's precondition holds at each call;
//   C3.4 after the call: success => S, and fin => phase FIELD with no
//   integer pending; failure => phase ERROR (sticky).
// Reach (inside the cut body; see HP_WHILE): CLAIM=1 a non-final Huffman
// chunk is decoded (a string crossing a fragment or a sink chunk);
// CLAIM=2 a body step leaves a multi-octet integer pending (int_shift >= 14);
// CLAIM=3 a body step completes a string (phase back to VALUE_LEN or FIELD
// with integer 0); CLAIM=4 the call succeeds on a final fragment of n > 0.
#define HUFF_MOCK 1
#if CLAIM == 1
#define HP_HUFF_REACH (srclen != 0 && !final)
#elif CLAIM == 2
#define HP_STEP_HOOK sassert(!(skip->int_shift >= 14))
#elif CLAIM == 3
#define HP_STEP_HOOK sassert(!(skip->integer == 0 && (skip->phase == 2 || skip->phase == 0) && hp_huff_calls > 0))
#endif
#include "hpack_common.h"
#include "fd_hpack.h"

#define HP_SKIP_OK(k)                                                       \
  ((k)->phase <= 4 && (k)->field_seen <= 1 && (k)->integer < (1UL << 57) && \
   ((k)->int_shift == 0 ||                                                  \
    ((k)->phase <= 2 && (k)->int_shift >= 7 && (k)->int_shift <= 56 &&      \
     (k)->int_shift % 7 == 0 &&                                             \
     (k)->integer < (1UL << ((k)->int_shift - 7)) + 128UL)) &&              \
   ((k)->huff_state == 0 || ((k)->huff_state & 0x1ffU) < 256U) &&          \
   ((k)->phase < 3 || ((k)->integer > 0 && (k)->int_shift == 0)))
#define HP_INV_S                                                            \
  (src >= hp_lo && src <= hp_hi && (ulong)(hp_hi - src) == srcsz &&         \
   HP_SKIP_OK(skip))
#define HP_HAVOC_S                                                          \
  HP_HAVOC_PTR(src, hp_lo, hp_hi - hp_lo);                                  \
  srcsz = (ulong)(hp_hi - src);                                             \
  skip->integer = nd_ulong(); skip->huff_state = nd_ushort();               \
  skip->phase = nd_uchar(); skip->int_shift = nd_uchar();                   \
  skip->field_seen = nd_uchar()

#include "fd_hpack.c"

#ifndef NMAX
#define NMAX 4096UL
#endif
extern uchar hp_in[NMAX];

/* The export drops this global's initializer ("globals start
   uninitialized"): its region gets no global-init. Its C initial value is
   assumed instead (fd_hpack.c:253-257). */
#define HP_SKIP_NEXT_INIT                                                   \
  (fd_hpack_skip_next[0][0] == FD_HPACK_SKIP_VALUE_LEN &&                    \
   fd_hpack_skip_next[0][1] == FD_HPACK_SKIP_NAME_LEN &&                     \
   fd_hpack_skip_next[1][0] == FD_HPACK_SKIP_NAME &&                         \
   fd_hpack_skip_next[1][1] == FD_HPACK_SKIP_VALUE_LEN &&                    \
   fd_hpack_skip_next[2][0] == FD_HPACK_SKIP_VALUE &&                        \
   fd_hpack_skip_next[2][1] == FD_HPACK_SKIP_FIELD)

int main(void) {
  assume(HP_SKIP_NEXT_INIT);
  ulong n = nd_ulong();
  assume(n <= NMAX);
  int fin = nd_int();
  fd_hpack_skip_t k = {.integer = nd_ulong(), .huff_state = nd_ushort(),
                       .phase = nd_uchar(), .int_shift = nd_uchar(),
                       .field_seen = nd_uchar()};
  assume(k.phase == FD_HPACK_SKIP_ERROR || HP_SKIP_OK(&k));
  hp_lo = hp_in; hp_hi = hp_in + n;
  uint r = fd_hpack_skip_feed(&k, hp_in, n, fin);
#if CLAIM == 0
  HP_CLAIM(r ? k.phase == FD_HPACK_SKIP_ERROR : HP_SKIP_OK(&k));
  HP_CLAIM(r || !fin || (k.phase == FD_HPACK_SKIP_FIELD && k.int_shift == 0));
#elif CLAIM == 4
  sassert(!(r == 0 && fin && n > 0));
#endif
  return 0;
}
