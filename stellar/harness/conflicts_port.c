// ST-CONF: hand port of prepareBuilderTxs (src/herder/ParallelTxSetBuilder.cpp
// :568-698, stellar-core a1f4383): footprints -> per-transaction conflict sets.
//
// Composition with ST-PART (txset_port.c): the builder separates any symmetric
// conflict relation. Here: the constructed relation is symmetric and contains
// every footprint conflict (two transactions share a key and at least one
// access is RW). Together: different bins never share a key with an RW
// access, which is the cluster-separation premise the parallel apply relies on.
//
// Representation:
// - footprint shapes are concrete (R read-only and W read-write entries per
//   transaction); keys are symbolic (a key id)
// - std::hash<LedgerKey>: a symbolic hash per footprint entry, consistent
//   (equal keys -> equal hashes); distinct keys may collide
// - std::sort by hash (unstable; unspecified order among equal hashes): a
//   nondeterministic permutation constrained non-decreasing
// - the group scan's roTxs / rwTxs vectors -> tx-id masks. RW-RW visits each
//   unordered pair once (a < b, like j = i + 1); RO-RW visits every (ro, rw)
//   pair. Duplicates (a hash collision inside one tx) only repeat a pair, so
//   a set gives the same result.
// Every loop has a constant trip count (see txset_port.c on surviving loops).
//
// Knobs: N (txs), R, W (entries per tx), KEYS (key-id domain),
//        CMUT=n mutants, CLAIM_SOUND (no conflict without a shared key, under
//        an injective hash).

#include "seahorn/seahorn.h"
#include <stdbool.h>
#include <stdint.h>

#ifndef N
#define N 3
#endif
#ifndef R
#define R 1
#endif
#ifndef W
#define W 1
#endif
#ifndef KEYS
#define KEYS 3
#endif
#ifndef CMUT
#define CMUT 0
#endif
#define E (N * (R + W))
#define FULL _Pragma("clang loop unroll(full)")

extern uint32_t nd_u32(void);
extern int nd_int(void);

typedef uint32_t Mask;
#define BIT(i) ((Mask)1u << (i))

typedef struct { // FpEntry (:592)
  uint32_t keyHash;
  uint32_t txId;
  bool isRW;
} FpEntry;

static uint32_t key[E]; // ground truth: the LedgerKey of each entry (by id)
static FpEntry fp[E];   // in collection order (:611-626)
static FpEntry srt[E];  // after std::sort (:629)
static Mask conf[N];    // BuilderTx::mConflictTxs

static FpEntry pick(int k) { // srt-free read of fp[k] for a symbolic k
  FpEntry r = fp[0];
  FULL for (int c = 0; c < E; c++) if (c == k) r = fp[c];
  return r;
}

static void prepareBuilderTxs(void) {
  FULL for (int t = 0; t < N; t++) conf[t] = 0;

  // sort by hash: a nondeterministic permutation, non-decreasing
  Mask used = 0;
  FULL for (int i = 0; i < E; i++) {
    int k = nd_int();
    assume(k >= 0 && k < E && !(used & BIT(k)));
    used |= BIT(k);
    srt[i] = pick(k);
  }
  FULL for (int i = 0; i + 1 < E; i++)
    assume(srt[i].keyHash <= srt[i + 1].keyHash);

  // scan groups of equal hash (:633-695); groupStart advances to groupEnd
  int groupStart = 0;
  FULL for (int step = 0; step < E; step++) {
    if (groupStart >= E)
      continue;
    int groupEnd = groupStart + 1;
    FULL for (int x = 1; x < E; x++) // while (groupEnd < E && same hash)
      if (x == groupEnd && groupEnd < E) {
        uint32_t hEnd = 0, hStart = 0;
        FULL for (int c = 0; c < E; c++) {
          if (c == groupEnd) hEnd = srt[c].keyHash;
          if (c == groupStart) hStart = srt[c].keyHash;
        }
#if CMUT == 3
        if (hEnd == hStart && groupEnd < E - 1) // mutant: last entry dropped
#else
        if (hEnd == hStart)
#endif
          groupEnd++;
      }
#if CMUT == 4
    if (groupEnd - groupStart < 3) { // mutant: pairs treated as singletons
#else
    if (groupEnd - groupStart < 2) { // singleton groups: no conflicts
#endif
      groupStart = groupEnd;
      continue;
    }
    Mask ro = 0, rw = 0;
    FULL for (int c = 0; c < E; c++)
      if (c >= groupStart && c < groupEnd) {
        if (srt[c].isRW) rw |= BIT(srt[c].txId);
        else ro |= BIT(srt[c].txId);
      }
    FULL for (int a = 0; a < N; a++) FULL for (int b = 0; b < N; b++) {
      if (a == b) continue; // same tx appears twice: skipped (:660, :678)
      // RW-RW (:656-668): each unordered pair once (j = i + 1), as in C++
      if (a < b && (rw & BIT(a)) && (rw & BIT(b))) {
        conf[a] |= BIT(b);
#if CMUT != 1
        conf[b] |= BIT(a);
#endif
      }
#if CMUT != 2
      // RO-RW (:670-684)
      if ((ro & BIT(a)) && (rw & BIT(b))) {
        conf[a] |= BIT(b);
        conf[b] |= BIT(a);
      }
#endif
    }
    groupStart = groupEnd;
  }
}

int main(void) {
  // footprints: concrete shape, symbolic keys and hashes (:611-626)
  int e = 0;
  FULL for (int t = 0; t < N; t++) {
    FULL for (int i = 0; i < R + W; i++) {
      uint32_t k = nd_u32();
      assume(k < KEYS);
      key[e] = k;
      fp[e].keyHash = nd_u32();
      fp[e].txId = (uint32_t)t;
      fp[e].isRW = i >= R;
      e++;
    }
  }
  // a hash function: equal keys hash equally
  FULL for (int i = 0; i < E; i++) FULL for (int j = 0; j < E; j++)
    if (i < j && key[i] == key[j])
      assume(fp[i].keyHash == fp[j].keyHash);
#ifdef CLAIM_SOUND
  FULL for (int i = 0; i < E; i++) FULL for (int j = 0; j < E; j++)
    if (i < j && key[i] != key[j])
      assume(fp[i].keyHash != fp[j].keyHash); // no collisions
#endif

  prepareBuilderTxs();

  bool ok = true;
  FULL for (int a = 0; a < N; a++) FULL for (int b = 0; b < N; b++) {
    bool c_ab = (conf[a] & BIT(b)) != 0, c_ba = (conf[b] & BIT(a)) != 0;
    // ground truth: a and b share a key and at least one access is RW
    bool truth = false;
    FULL for (int i = 0; i < E; i++) FULL for (int j = 0; j < E; j++)
      if ((int)fp[i].txId == a && (int)fp[j].txId == b && key[i] == key[j] &&
          (fp[i].isRW || fp[j].isRW))
        truth = true;
    if (a == b) {
      ok = ok && !c_ab; // no self-conflict
      continue;
    }
    ok = ok && (c_ab == c_ba); // symmetric
#ifdef CLAIM_SOUND
    ok = ok && (c_ab == truth); // exact when no collisions
#else
    ok = ok && (!truth || c_ab); // complete: every real conflict is marked
#endif
  }
  sassert(ok);
  return 0;
}
