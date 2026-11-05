// ST-FEE: historical control bcb13715 ("Clamp additions in tx set fee summing
// functions", issue #704). stellar-core a1f4383:
//   ApplicableTxSetFrame::getTotalFees / getTotalInclusionFees
//     (src/herder/TxSetFrame.cpp:2311-2338)
//   saturatingAdd (src/util/numeric.h:87-112)
//   consumer compareTxSets (src/herder/HerderSCPDriver.cpp:927-970): a larger
//     total ranks the tx set higher.
//
// Fees: M transactions per set (concrete), each a symbolic non-negative
// int64 (admitted fees; getFee / getInclusionFee are virtual accessors,
// mocked by their values). Phases are flattened: the loops sum every tx of
// every phase in order.
//
// Claims:
//   (default)  the saturating total equals min(exact sum, INT64_MAX), the
//              exact sum computed in 128 bits; and comparing two sets'
//              totals never inverts the order of their exact sums. This is
//              the fee criterion of compareTxSets only: size, inclusion
//              fees and tie-breakers come first or after, and two different
//              sums can both saturate. Not a full-ranking claim.
//   REVERT_BCB13715  the pre-fix `total += fee`: checks the overflow
//              obligation of the signed addition (signed overflow is UB in
//              C++; no wrapped value is claimed).
//   WRAP_DIAG  with REVERT: a two's-complement wraparound *diagnostic* of
//              what #704 observed: a set with larger exact fees ranks lower.
//              Labelled a diagnostic, not C++ semantics.

#include "seahorn/seahorn.h"
#include <stdbool.h>
#include <stdint.h>

#ifndef M
#define M 2
#endif
#define FULL _Pragma("clang loop unroll(full)")
#define I64MAX ((int64_t)0x7fffffffffffffffLL)
#define I64MIN ((int64_t)(-0x7fffffffffffffffLL - 1))

extern uint64_t nd_u64(void);

// numeric.h:87 saturatingAdd<int64_t>, the signed branch
static int64_t saturatingAdd(int64_t a, int64_t b) {
  if (b > 0 && a > I64MAX - b)
    return I64MAX;
  if (b < 0 && a < I64MIN - b)
    return I64MIN;
  return a + b;
}

static int64_t total_of(const int64_t fee[M]) {
  int64_t total = 0;
  FULL for (int i = 0; i < M; i++) {
#ifdef REVERT_BCB13715
#ifndef WRAP_DIAG
    // obligation of `total += fee` (signed): no overflow
    sassert(!(fee[i] > 0 && total > I64MAX - fee[i]));
#endif
    total = (int64_t)((uint64_t)total + (uint64_t)fee[i]); // wrap (diag)
#else
    total = saturatingAdd(total, fee[i]);
#endif
  }
  return total;
}

static __int128 exact_of(const int64_t fee[M]) {
  __int128 s = 0;
  FULL for (int i = 0; i < M; i++) s += fee[i];
  return s;
}

int main(void) {
  int64_t L[M], Rr[M];
  FULL for (int i = 0; i < M; i++) {
    L[i] = (int64_t)nd_u64();
    assume(L[i] >= 0);
    Rr[i] = (int64_t)nd_u64();
    assume(Rr[i] >= 0);
  }
  int64_t lt = total_of(L), rt = total_of(Rr);
  __int128 le = exact_of(L), re = exact_of(Rr);

  bool ok = true;
#ifndef REVERT_BCB13715
  __int128 cap = (__int128)I64MAX;
  ok = ok && (__int128)lt == (le < cap ? le : cap);
  ok = ok && (__int128)rt == (re < cap ? re : cap);
#endif
#if !defined(REVERT_BCB13715) || defined(WRAP_DIAG)
  // compareTxSets: `return lFee < rFee` ranks r higher. Never rank the set
  // with the strictly smaller exact total strictly higher.
  if (le < re)
    ok = ok && !(rt < lt);
#endif
  sassert(ok);
  return 0;
}
