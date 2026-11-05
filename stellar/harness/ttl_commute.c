// ST-TTL-COMM: order independence of committing clusters for one key k*.
//
// Claim (ParallelApplyUtils.cpp:41-56): RoTTLBump(LE)s "are treated as a
// pseudo-write that can potentially commute with all other RoTTLBump(LE)"; the
// clusters' bumps are merged "using std::max() when committing it back to the
// global state". Checked here as: the same initial state, committed in
// forward and in reverse cluster order, gives the same global entry for k*
// (presence, payload, mIsNew), and no scope exception either way.
//
// The claim is expected to hold only under facts the rest of the system
// provides. Each is a knob, so a counterexample shows which one is needed:
//   PRE_PARTITION  ParallelTxSetBuilder (cpp:30-38, 57-67): a key written in
//                  a stage (non-TTL key dirty, or TTL key in some RW
//                  footprint) is in exactly one cluster; so at most one
//                  cluster commits k* unless k* is a TTL key outside every
//                  RW footprint.
//   PRE_SAME_ISNEW mIsNew is "relative to the pre-phase ledger state"
//                  (cpp:620): every cluster's entry for k* carries the same
//                  mIsNew, equal to the global one if k* is tracked.
//   PRE_RO_PRESENT a read-only bump updates a pre-existing value (cpp:583):
//                  for a TTL key outside every RW footprint, a dirty cluster
//                  entry is present, and so is the global one if tracked.
//   PRE_RO_SAME    a read-only bump changes only the TTL: the clusters'
//                  entries for k* agree on everything but liveUntilLedgerSeq.
//   PRE_RO_MONO    a read-only bump never lowers the TTL below a tracked
//                  pre-state (ParallelApplyUtils.cpp:964-973, :828-846). Not
//                  needed for commutativity (max commutes); it keeps the
//                  historical-control witness caller-reachable.
// Knobs: NT=2|3 (clusters), TMUT/REVERT_7E4A427F as in ttl_merge_port.c,
// COMM_REACH (vacuity: two clusters bump k* to different TTLs).

#define TTL_LIB 1
#include "ttl_merge_port.c"

#ifndef NT
#define NT 2
#endif

static Scope G, T[3];
static PAEntry e[3], eA[3], eB[3];
static bool has[3], rw[3];
static MapSlot init, mA, mB;

static OptLE nd_payload2(void) {
  OptLE o;
  o.has = nd_bool();
  o.v.type = keyType;
  o.v.key = nd_u32(); // stands for every non-TTL field of the entry
  o.v.ttl = nd_u32();
  return o;
}

static void make_thread(int t, uint32_t ledger) {
  scopeid_ctor(&T[t].mScopeID, S_THREAD, (uint64_t)t, ledger);
  T[t].mActive = true;
  has[t] = nd_bool();
  rw[t] = nd_bool();
  e[t].mIsDirty = nd_bool();
  e[t].mIsNew = nd_bool();
  entry_init(&e[t].mLedgerEntry);
  if (has[t])
    scope_adopt(&T[t], &e[t].mLedgerEntry, true, nd_payload2());
}

static bool commits(int t) { return t < NT && has[t] && e[t].mIsDirty; }

int main(void) {
  g_exc = E_NONE;
  keyType = nd_bool() ? LET_TTL : LET_CONTRACT_DATA;
  uint32_t ledger = nd_u32();
  scopeid_ctor(&G.mScopeID, S_GLOBAL, 0, ledger);
  G.mActive = true;
  for (int t = 0; t < NT; t++) // constant trip count
    make_thread(t, ledger);
  entry_init(&init.e.mLedgerEntry);
  init.has = nd_bool();
  init.e.mIsDirty = nd_bool();
  init.e.mIsNew = nd_bool();
  if (init.has)
    scope_adopt(&G, &init.e.mLedgerEntry, true, nd_payload2());
  assume(g_exc == E_NONE);

  bool inRW = rw[0] || (NT > 1 && rw[1]) || (NT > 2 && rw[2]);
  int ncommit = commits(0) + commits(1) + commits(2);
  bool roKey = keyType == LET_TTL && !inRW;

#ifdef PRE_PARTITION
  assume(roKey || ncommit <= 1);
#endif
#ifdef PRE_SAME_ISNEW
  {
    bool ref = nd_bool();
    if (init.has)
      assume(init.e.mIsNew == ref);
    for (int t = 0; t < NT; t++)
      if (has[t])
        assume(e[t].mIsNew == ref);
  }
#endif
#ifdef PRE_RO_PRESENT
  if (roKey) {
    for (int t = 0; t < NT; t++)
      if (commits(t))
        assume(e[t].mLedgerEntry.mEntry.has);
    // Only when some cluster commits k*. A dirty global
    // tombstone with no RO commit this stage is reachable
    // (InvokeHostFunctionOpFrame.cpp:856-870) and trivially commutes.
    if (init.has && ncommit > 0)
      assume(init.e.mLedgerEntry.mEntry.has);
  }
#endif
#ifdef PRE_RO_MONO
  if (roKey && init.has)
    for (int t = 0; t < NT; t++)
      if (commits(t))
        assume(e[t].mLedgerEntry.mEntry.v.ttl >= init.e.mLedgerEntry.mEntry.v.ttl);
#endif
#ifdef PRE_RO_SAME
  if (roKey) {
    for (int t = 0; t < NT; t++) {
      if (!has[t])
        continue;
      if (init.has)
        assume(e[t].mLedgerEntry.mEntry.v.key == init.e.mLedgerEntry.mEntry.v.key);
      for (int u = 0; u < t; u++)
        if (has[u])
          assume(e[t].mLedgerEntry.mEntry.v.key == e[u].mLedgerEntry.mEntry.v.key);
    }
  }
#endif

  // two independent copies of the stage
  mA = init;
  mB = init;
  for (int t = 0; t < NT; t++) {
    eA[t] = e[t];
    eB[t] = e[t];
  }
  for (int t = 0; t < NT; t++) // commitChangesFromThreads deactivates first
    scope_deactivate(&T[t]);
  assume(g_exc == E_NONE);

  for (int t = 0; t < NT; t++) { // forward order
    if (has[t])
      commitChangeFromThread(&G, &T[t], &eA[t], inRW, &mA);
    sassert(g_exc == E_NONE);
  }
  for (int t = NT - 1; t >= 0; t--) { // reverse order
    if (has[t])
      commitChangeFromThread(&G, &T[t], &eB[t], inRW, &mB);
    sassert(g_exc == E_NONE);
  }

#ifdef COMM_REACH // vacuity: two clusters bump the same read-only key
  sassert(!(roKey && ncommit >= 2 &&
            e[0].mLedgerEntry.mEntry.v.ttl != e[1].mLedgerEntry.mEntry.v.ttl));
#endif
#if defined(PRE_PARTITION) && defined(PRE_SAME_ISNEW) && \
    defined(PRE_RO_PRESENT) && defined(PRE_RO_SAME)
  // Order independence alone allows a consistently wrong
  // result; also require the max of the pre-state and the committed bumps
  // for a read-only key with at least one commit.
  if (roKey && ncommit > 0) {
    uint32_t mx = init.has ? init.e.mLedgerEntry.mEntry.v.ttl : 0;
    bool first = !init.has;
    for (int t = 0; t < NT; t++)
      if (commits(t)) {
        uint32_t v = e[t].mLedgerEntry.mEntry.v.ttl;
        if (first || v > mx) mx = v;
        first = false;
      }
    sassert(mA.has && mA.e.mLedgerEntry.mEntry.v.ttl == mx);
  }
#endif
  sassert(mA.has == mB.has);
  if (mA.has) {
    sassert(optle_eq(mA.e.mLedgerEntry.mEntry, mB.e.mLedgerEntry.mEntry));
    sassert(mA.e.mIsNew == mB.e.mIsNew);
  }
  return 0;
}
