// HPACK C1/C2: fd_hpack_rd_next (src/waltz/h2/fd_hpack.c, with the varint of
// fd_hpack_private.h), the whole-buffer decoder fd_grpc_codec uses on each
// HEADERS / CONTINUATION payload. Code unchanged but for the overlays
// proofs/hpack-rd.sed and proofs/hpack-rd-varint.sed; nghttp2_hd_huff_decode
// is replaced by contract H (HUFF_MOCK=1, proved by hpack_huff.c).
//
// Environment: one call from any position. The input is sz in [1, SZMAX]
// nondet bytes (fd_hpack_rd_done is false); the scratch window is
// [scratch0, scratch_end) of any size up to SCRMAX. Input and scratch are two
// disjoint ranges of one object, hp_mem, so that the claims can compare
// pointers into either (pointer order across objects is not defined in C).
// One record per call; the caller's loop repeats from rd.src, any position.
//
// Claims:
//   C1.1 reads: every input read, including the varint's 8-byte fast path
//        and the slow-path copy, lies in [src, src_end) (HP_RDOK);
//   C1.2 the static-table index is < 62 (HP_IDX);
//   C1.3 writes: decoded Huffman output lies in the scratch window (HP_WROK
//        in the mock; H's precondition holds at each call);
//   C2 on success: rd.src advanced and within the input; *scratch within the
//        window; no Huffman hint left; the name and the value are each the
//        static entry (indexed) or lie inside the input consumed or the
//        scratch used, and their lengths are exact:
//        - a raw value ends where rd.src ends;
//        - a raw name is followed, after a 1..9 byte length integer, by a
//          raw value;
//        - a Huffman name starts the scratch used and ends where the
//          Huffman value or *scratch begins;
//        - a Huffman value ends at *scratch;
//   C2e on failure: *scratch is unchanged (fd_hpack.h API contract).
// Mutant controls: mutants/hp-rd-*.sed (two are the reverts of 791176436).
// Reach: CLAIM=1 a Huffman name and a Huffman value; CLAIM=2 a raw name and
// raw value with a multi-octet value length; CLAIM=3 a fully indexed field
// with index >= 32; CLAIM=4 the table-size-update loop body runs.
#define HUFF_MOCK 1
#if CLAIM == 4
#define HP_STEP_HOOK sassert(0)
#endif
#include "hpack_common.h"
#include "fd_hpack.h"

#define HP_INV_R (rd->src >= hp_lo && rd->src <= hp_hi && end == hp_hi)
#define HP_HAVOC_R HP_HAVOC_PTR(rd->src, hp_lo, hp_hi - hp_lo)

#include "fd_hpack.c"

#ifndef SZMAX
#define SZMAX ((1UL << 17) + 16UL)
#endif
#ifndef SCRMAX
#define SCRMAX (1UL << 18)
#endif
extern uchar hp_mem[SZMAX + SCRMAX];

int main(void) {
  ulong sz = nd_ulong(), soff = nd_ulong();
  assume(0UL < sz && sz <= SZMAX && soff <= SCRMAX);
  uchar const * in = hp_mem;
  uchar * scratch0 = hp_mem + SZMAX + soff;
  uchar * scratch_end = hp_mem + SZMAX + SCRMAX;
  hp_lo = in; hp_hi = in + sz;
  hp_wlo = scratch0; hp_whi = scratch_end;
  fd_hpack_rd_t rd = {.src = in, .src_end = in + sz};
  fd_h2_hdr_t hdr;
  uchar * scratch = scratch0;
  uint r = fd_hpack_rd_next(&rd, &hdr, &scratch, scratch_end);
  if (r) {
    HP_CLAIM(scratch == scratch0);
    return 0;
  }
  uchar const * scr_lo = hp_mem + SZMAX; /* input / scratch boundary */
  HP_CLAIM(rd.src > in && rd.src <= in + sz);
  HP_CLAIM(scratch >= scratch0 && scratch <= scratch_end);
  HP_CLAIM((hdr.hint & FD_H2_HDR_HINT_HUFFMAN) == 0);
  int ni = !!(hdr.hint & FD_H2_HDR_HINT_NAME_INDEXED);
  int vi = !!(hdr.hint & FD_H2_HDR_HINT_VALUE_INDEXED);
  uchar const * nm = (uchar const *)hdr.name;
  uchar const * vl = (uchar const *)hdr.value;
  ulong idx = FD_H2_HDR_HINT_GET_INDEX(hdr.hint);
  int nh = !ni && nm >= scr_lo; /* Huffman name: in the scratch */
  int vh = !vi && vl >= scr_lo; /* Huffman value */
#if CLAIM == 0
  if (ni) {
    HP_CLAIM(1UL <= idx && idx <= 61UL);
    HP_CLAIM(hdr.name == fd_hpack_static_table[idx].entry &&
             hdr.name_len == fd_hpack_static_table[idx].name_len);
  } else if (nh) {
    HP_CLAIM(nm == scratch0 && nm + hdr.name_len == (vh ? vl : (uchar const *)scratch));
  } else {
    HP_CLAIM(nm >= in && nm + hdr.name_len <= rd.src);
  }
  if (vi) {
    HP_CLAIM(ni && hdr.value == fd_hpack_static_table[idx].entry + fd_hpack_static_table[idx].name_len &&
             hdr.value_len == fd_hpack_static_table[idx].value_len);
  } else if (vh) {
    HP_CLAIM(vl >= scratch0 && vl + hdr.value_len == (uchar const *)scratch);
  } else {
    HP_CLAIM(vl >= in && vl + hdr.value_len == rd.src);
    if (!ni && !nh)
      HP_CLAIM(nm + hdr.name_len < vl && (ulong)(vl - (nm + hdr.name_len)) <= 9UL);
  }
#elif CLAIM == 1
  sassert(!(nh && vh));
#elif CLAIM == 2
  sassert(!(!ni && !nh && !vi && !vh && hdr.value_len >= 127));
#elif CLAIM == 3
  sassert(!(ni && vi && idx >= 32));
#endif
  return 0;
}
