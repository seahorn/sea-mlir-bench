// ST-TTL: hand port of GlobalParallelApplyLedgerState::commitChangeFromThread
// and ::maybeMergeRoTTLBumps (stellar-core a1f4383,
// src/transactions/ParallelApplyUtils.cpp:577-626) on top of the ST-SCOPE
// port of LedgerEntryScope (scope_port.c, included as a library).
//
// Historical control: fix 7e4a427f ("Fix roTTLbump merge bug introduced with
// modifyInScope lambda change"). Before the fix, `return true` sat inside the
// modifyInScope lambda, so maybeMergeRoTTLBumps always returned false and the
// caller overwrote the merged entry with the thread's entry. -DREVERT_7E4A427F
// restores that behavior.
//
// Knobs (-D):
//   NT=n              number of threads (clusters) committing, 1..3 (default 2)
//   REVERT_7E4A427F   historical bug
//   TMUT=1            mutant: merge ignores the read-write set (barrier)
//   TMUT=2            mutant: overwrite does not keep the old mIsNew
//   TTL_CLAIM=n       1 CLAIM_CONTRACT (default) | 2 CLAIM_REACH_MERGE
//   TTL_LIB           port only, no harness (used by ttl_commute.c)
//   PRE_CALLER        caller invariants for a read-only TTL key (TTL key,
//                     outside every RW footprint):
//                     every cluster starts from the same pre-state P: the
//                     global value if tracked (collectClusterFootprintEntries-
//                     FromGlobal, ParallelApplyUtils.cpp:724-737, which also
//                     copies mIsNew), else a common snapshot value; and its
//                     bump only raises the TTL (:964-973, :828-846).
//   PRE_GLOBAL_TTL_DIRTY  a global entry for a TTL key is dirty. Holds because
//                     TTL keys are rejected from footprints
//                     (TransactionFrame.cpp:873) and the global map is
//                     preloaded clean only from footprint keys
//                     (ParallelApplyUtils.cpp:396-399, :354), so a global TTL
//                     entry can only come from a dirty commit (:612).
//
// Map mock (plans/application-discovery/stellar.md): one symbolic key k*; the
// shard map is reduced to k*'s slot {has, entry}. commitChangeFromThread for
// key k touches only map[k] (try_emplace(key) / it->second), so other keys
// are a frame and are not modelled. No fixed-size map, no hashing.

#define SCOPE_PORT_LIB 1
#include "scope_port.c"

#ifndef NT
#define NT 2
#endif
#if NT < 1 || NT > 3
#error "NT must be 1..3"
#endif
#define CLAIM_CONTRACT 1
#define CLAIM_REACH_MERGE 2
#ifndef TTL_CLAIM
#define TTL_CLAIM CLAIM_CONTRACT
#endif

#define LET_TTL 9           // LedgerEntryType TTL (XDR)
#define LET_CONTRACT_DATA 6 // a non-TTL type, stands for all others

// ParallelApplyEntry<S> (ParallelApplyTypes.h:~80)
typedef struct {
  Entry mLedgerEntry; // ScopedLedgerEntryOpt<S>
  bool mIsDirty, mIsNew;
} PAEntry;

static uint32_t keyType; // key.ledgerKey().type()

// ParallelApplyEntry::rescope (ParallelApplyTypes.h:~104): move-adopt into s2.
static void rescope(PAEntry *out, PAEntry *in, Scope *s1, Scope *s2) {
  scope_adopt_from(s2, &out->mLedgerEntry, &in->mLedgerEntry, s1, true);
  CHECK_EXC;
  out->mIsDirty = in->mIsDirty;
  out->mIsNew = in->mIsNew;
}

// cpp:577 maybeMergeRoTTLBumps. `this` is the global scope G.
static bool maybeMergeRoTTLBumps(Scope *G, PAEntry *newEntry, PAEntry *oldEntry,
                                 bool inReadWriteSet) {
  OptLE newLe;
  scope_read(G, &newEntry->mLedgerEntry, &newLe); // readInScope(*this)
  if (g_exc)
    return false;
  bool merged = false;
  // oldEntry.mLedgerEntry.modifyInScope(*this, lambda): scope checks, then
  // the lambda body on the payload in place.
  OptLE *oldLe = scope_modify_ref(G, &oldEntry->mLedgerEntry);
  if (g_exc)
    return false;
  if (newLe.has && oldLe->has && keyType == LET_TTL) {
    sassert(newLe.v.type == LET_TTL); // releaseAssertOrThrow
    sassert(oldLe->v.type == LET_TTL); // releaseAssertOrThrow
#if defined(TMUT) && TMUT == 1
    if (1) {
#else
    if (!inReadWriteSet) {
#endif
      uint32_t newTTL = newLe.v.ttl;
      oldLe->v.ttl = oldLe->v.ttl > newTTL ? oldLe->v.ttl : newTTL; // std::max
      merged = true;
    }
  }
#ifdef REVERT_7E4A427F
  (void)merged; // `return true` returned from the lambda only
  return false;
#else
  return merged;
#endif
}

// k*'s slot in the global shard map
typedef struct {
  bool has;
  PAEntry e;
} MapSlot;

// cpp:~606 commitChangeFromThread
static void commitChangeFromThread(Scope *G, Scope *T, PAEntry *parEntry,
                                   bool inReadWriteSet, MapSlot *m) {
  if (!parEntry->mIsDirty)
    return;
  PAEntry rescoped;
  rescope(&rescoped, parEntry, T, G);
  CHECK_EXC;
  // auto [it, inserted] = shard.try_emplace(key, std::move(rescoped));
  // try_emplace leaves its argument intact when the key exists.
  if (!m->has) {
    entry_move_ctor(&m->e.mLedgerEntry, &rescoped.mLedgerEntry, true);
    CHECK_EXC;
    m->e.mIsDirty = rescoped.mIsDirty;
    m->e.mIsNew = rescoped.mIsNew;
    m->has = true;
    return;
  }
  bool merged = maybeMergeRoTTLBumps(G, &rescoped, &m->e, inReadWriteSet);
  CHECK_EXC;
  if (!merged) {
#if !(defined(TMUT) && TMUT == 2)
    rescoped.mIsNew = m->e.mIsNew;
#endif
    // it->second = std::move(rescoped): defaulted move-assign, memberwise
    entry_move_assign(&m->e.mLedgerEntry, &rescoped.mLedgerEntry);
    CHECK_EXC;
    m->e.mIsDirty = rescoped.mIsDirty;
    m->e.mIsNew = rescoped.mIsNew;
  }
}

#ifndef TTL_LIB
/* ---------------- harness ---------------- */
static MapSlot gmap;
#define gmHas gmap.has
#define gm gmap.e
static Scope G, T0, T1, T2;
static PAEntry e0, e1, e2;
static bool has0, has1, has2; // thread map contains k*
static bool rw0, rw1, rw2;    // k* in thread's RW-footprint TTL keys

static OptLE nd_payload(void) { // entry under key k* has k*'s type
  OptLE o;
  o.has = nd_bool();
  o.v.type = keyType;
  o.v.key = 0;
  o.v.ttl = nd_u32();
  return o;
}

static void make_thread(Scope *T, uint64_t index, uint32_t ledger, PAEntry *e,
                        bool *has, bool *rw) {
  scopeid_ctor(&T->mScopeID, S_THREAD, index, ledger);
  T->mActive = true;
  *has = nd_bool();
  *rw = nd_bool();
  e->mIsDirty = nd_bool();
  e->mIsNew = nd_bool();
  entry_init(&e->mLedgerEntry);
  if (*has)
    scope_adopt(T, &e->mLedgerEntry, true, nd_payload());
}

int main(void) {
  g_exc = E_NONE;
  keyType = nd_bool() ? LET_TTL : LET_CONTRACT_DATA;
  uint32_t ledger = nd_u32();

  scopeid_ctor(&G.mScopeID, S_GLOBAL, 0, ledger);
  G.mActive = true;
  make_thread(&T0, 0, ledger, &e0, &has0, &rw0);
#if NT > 1
  make_thread(&T1, 1, ledger, &e1, &has1, &rw1);
#endif
#if NT > 2
  make_thread(&T2, 2, ledger, &e2, &has2, &rw2);
#endif

  // global map before the commit: k* tracked or not
  entry_init(&gm.mLedgerEntry);
  gmHas = nd_bool();
  gm.mIsDirty = nd_bool();
  gm.mIsNew = nd_bool();
  if (gmHas)
    scope_adopt(&G, &gm.mLedgerEntry, true, nd_payload());
  assume(g_exc == E_NONE);
#ifdef PRE_GLOBAL_TTL_DIRTY
  assume(!(gmHas && keyType == LET_TTL) || gm.mIsDirty);
#endif
  bool anyCommit = false;

  // ---- spec state, from the ParallelApplyUtils.cpp:41-80 comment ----
  bool sHas = gmHas;
  OptLE sVal = gm.mLedgerEntry.mEntry;
  bool sIsNew = gm.mIsNew;
  bool anyMerge = false, mergeNotLast = false;

  // commitChangesFromThreads: deactivate thread scopes (cpp:681), build the
  // read-write set (cpp:640-650), commit thread by thread (cpp:652-666).
  scope_deactivate(&T0);
#if NT > 1
  scope_deactivate(&T1);
#endif
#if NT > 2
  scope_deactivate(&T2);
#endif
  bool inRW = rw0 || (NT > 1 && rw1) || (NT > 2 && rw2);
#ifdef PRE_CALLER
  if (keyType == LET_TTL && !inRW) {
    OptLE P = gmHas ? gm.mLedgerEntry.mEntry : nd_payload();
    bool Pnew = gmHas ? gm.mIsNew : nd_bool();
    PAEntry *E[3] = {&e0, &e1, &e2};
    bool H[3] = {has0, has1, has2};
    for (int t = 0; t < NT; t++)
      if (H[t]) {
        OptLE v = E[t]->mLedgerEntry.mEntry;
        assume(v.has == P.has && v.v.key == P.v.key && v.v.type == P.v.type);
        assume(v.v.ttl >= P.v.ttl); // monotone read-only bump
        assume(E[t]->mIsNew == Pnew);
      }
  }
#endif

  {
    PAEntry *E[3] = {&e0, &e1, &e2};
    Scope *TS[3] = {&T0, &T1, &T2};
    bool H[3] = {has0, has1, has2};
    for (int t = 0; t < NT; t++) { // constant trip count, unrolled at -O3
      if (!(H[t] && E[t]->mIsDirty))
        continue;
      OptLE v = E[t]->mLedgerEntry.mEntry;
      bool isNew = E[t]->mIsNew;
      anyCommit = true;
      commitChangeFromThread(&G, TS[t], E[t], inRW, &gmap);
      sassert(g_exc == E_NONE); // the caller never misuses scopes
      if (!sHas) { // creation: the first committed entry is taken as is
        sHas = true;
        sVal = v;
        sIsNew = isNew;
      } else if (v.has && sVal.has && keyType == LET_TTL && !inRW) {
        // read-only TTL bump: merge by max, keep the rest of the entry
        if (v.v.ttl > sVal.v.ttl) {
          sVal.v.ttl = v.v.ttl;
        } else if (v.v.ttl < sVal.v.ttl) {
          mergeNotLast = true; // the result is not the last thread's TTL
        }
        anyMerge = true;
      } else { // write (or creation/deletion): last writer wins
        sVal = v;   // mIsNew stays from the first tracking (cpp:622)
      }
    }
  }

#if TTL_CLAIM == CLAIM_CONTRACT
  // the global entry for k* is the spec's
  sassert(gmHas == sHas);
  if (sHas) {
    sassert(gm.mLedgerEntry.mScopeID.mMovedFrom == false);
    sassert(optle_eq(gm.mLedgerEntry.mEntry, sVal));
    sassert(gm.mIsNew == sIsNew);
  }
  // write-back: commitChangesToLedgerTxn (cpp:469) writes only dirty entries,
  // so a committed change must leave k*'s global entry dirty
  if (anyCommit)
    sassert(gm.mIsDirty);
#elif TTL_CLAIM == CLAIM_REACH_MERGE
  // vacuity: a merge whose result differs from the last thread's TTL
  sassert(!(anyMerge && mergeNotLast));
#endif
  return 0;
}
#endif // TTL_LIB
