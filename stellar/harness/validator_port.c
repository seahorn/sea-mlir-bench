// ST-VAL: hand port of the cross-cluster conflict check of the parallel
// Soroban phase validator (src/herder/TxSetFrame.cpp:1981-2025, stellar-core
// a1f4383). Apply runs one thread per cluster of a validated stage
// (src/ledger/LedgerManagerImpl.cpp:2767-2779), so this check is what the
// partition premise of the TTL commit (ttl_commute.c PRE_PARTITION) rests on
// for every tx set validated in consensus, including sets built by other
// nodes. Catchup/replay call applyLedger without rerunning it: there the
// premise is trusted history.
//
// Representation:
// - one stage of C clusters, each of T txs, each with R read-only and W
//   read-write footprint keys (shapes concrete, keys symbolic ids < KEYS)
// - UnorderedSet<LedgerKey> stageReadOnlyKeys / stageReadWriteKeys: lookup
//   by key equality -> bitmask over key ids (a symbolic shift, no memory
//   indexing)
// - per-cluster key vectors -> masks (insertion of the vectors into the
//   stage sets after the cluster is unordered and idempotent)
//
// Claims:
//   SOUND    VALID => no two txs in different clusters share a key with an RW
//            access (the safety the parallel apply relies on)
//   COMPLETE no such pair => VALID (a correct set is not rejected)
// Knobs: C, T, R, W, KEYS; VMUT=n mutants.

#include "seahorn/seahorn.h"
#include <stdbool.h>
#include <stdint.h>

#ifndef C
#define C 2
#endif
#ifndef T
#define T 1
#endif
#ifndef R
#define R 1
#endif
#ifndef W
#define W 1
#endif
#ifndef KEYS
#define KEYS 4
#endif
#ifndef VMUT
#define VMUT 0
#endif
#define FULL _Pragma("clang loop unroll(full)")

extern uint32_t nd_u32(void);

typedef uint32_t Mask;
#define KB(k) ((Mask)1u << (k))

static uint32_t ro[C][T][R], rw[C][T][W];

// TxSetFrame.cpp:1983-2024; returns true for VALID (this part only)
static bool validateStage(void) {
  Mask stageRO = 0, stageRW = 0;
  FULL for (int c = 0; c < C; c++) {
    Mask clusterRO = 0, clusterRW = 0;
    FULL for (int t = 0; t < T; t++) {
      FULL for (int i = 0; i < R; i++) {
        uint32_t k = ro[c][t][i];
#if VMUT != 1
        if (stageRW & KB(k)) // :1997
          return false;      // TX_ORDERING_INVALID
#endif
        clusterRO |= KB(k);
#if VMUT == 3
        stageRO |= KB(k); // mutant: inserted before the cluster is done
#endif
      }
      FULL for (int i = 0; i < W; i++) {
        uint32_t k = rw[c][t][i];
#if VMUT == 2
        if (stageRW & KB(k)) // mutant: RW not checked against stage RO
#else
        if ((stageRO & KB(k)) || (stageRW & KB(k))) // :2009
#endif
          return false;
        clusterRW |= KB(k);
      }
    }
    stageRO |= clusterRO; // :2020-2023
    stageRW |= clusterRW;
  }
  return true;
}

int main(void) {
  FULL for (int c = 0; c < C; c++) FULL for (int t = 0; t < T; t++) {
    FULL for (int i = 0; i < R; i++) {
      ro[c][t][i] = nd_u32();
      assume(ro[c][t][i] < KEYS);
    }
    FULL for (int i = 0; i < W; i++) {
      rw[c][t][i] = nd_u32();
      assume(rw[c][t][i] < KEYS);
    }
  }
  bool valid = validateStage();

  // ground truth: a cross-cluster pair sharing a key with an RW access
  bool conflict = false;
  FULL for (int c = 0; c < C; c++) FULL for (int d = 0; d < C; d++) {
    if (c == d)
      continue;
    FULL for (int t = 0; t < T; t++) FULL for (int u = 0; u < T; u++) {
      FULL for (int i = 0; i < W; i++) {
        FULL for (int j = 0; j < W; j++)
          if (rw[c][t][i] == rw[d][u][j]) conflict = true;
        FULL for (int j = 0; j < R; j++)
          if (rw[c][t][i] == ro[d][u][j]) conflict = true;
      }
    }
  }
  sassert(!(valid && conflict)); // SOUND
#ifndef NO_COMPLETE
  sassert(valid || conflict);    // COMPLETE
#endif
  return 0;
}
