// ST-PART: hand port of the stage/cluster/bin construction of
// src/herder/ParallelTxSetBuilder.cpp (stellar-core a1f4383):
// Cluster, Stage::tryAdd and its helpers (:44-447), and the phase loop of
// buildSurgePricedParallelSorobanPhaseWithStageCount (:458-565).
//
// Property: the partition the TTL commit relies on (ttl_commute.c
// PRE_PARTITION): two transactions placed in the same stage but in different
// bins (= DependentTxClusters) do not conflict. Plus the builder's own
// bookkeeping invariants (bin sums, tx-to-cluster index, limits, no empty
// clusters).
//
// Representation (no pointer aliasing; see ST-SCOPE lesson):
//   tx ids 0..N-1, BitSet -> uint32 bitmask
//   Cluster objects -> slots 0..MAXC-1 per stage, with a live flag;
//     a Cluster const* -> slot index; unordered_set<Cluster const*> -> mask
//   mClusters vector order: only observable through std::sort tie-breaking
//     (unspecified) and labelling; modelled as slots, with binPacking's sort
//     as a nondeterministic order constrained to be non-increasing.
// Conflicts: a symmetric relation (prepareBuilderTxs sets both directions,
//   :640-675) chosen symbolically; ASYM=1 drops symmetry (characterization).
//
// Every loop has a constant trip count and is fully unrolled at the source
// (FULL pragma): otherwise vcc's -O3 leaves them and SeaHorn's --bound
// unrolling makes dead copies (sea-vc's static A-INB check counts
// accesses on infeasible paths).
// TXSET_LIB: port only (used by txset_induct.c).
// Knobs: N (txs, <=5), NSTAGE (1..2), NBIN (clusters per stage, 1..3),
//        LIM (instructions per cluster), PREACH (vacuity), PMUT=n mutants:
//   1 no fast path      (should stay safe: a characterization of the fast
//                        path as an optimization only)
//   2 inPlaceBinPacking does not restore bins on failure
//   3 in-place success does not update mTxToCluster

#include "seahorn/seahorn.h"
#include <stdbool.h>
#include <stdint.h>

#ifndef N
#define N 4
#endif
#ifndef NSTAGE
#define NSTAGE 1
#endif
#ifndef NBIN
#define NBIN 2
#endif
#ifndef LIM
#define LIM 10
#endif
#define MAXC N
#ifndef PMUT
#define PMUT 0
#endif

extern uint32_t nd_u32(void);
extern bool nd_bool(void);
extern int nd_int(void);

typedef uint32_t Mask;
#define BIT(i) ((Mask)1u << (i))

// BuilderTx (:44)
static uint32_t txInsn[N];
static Mask txConf[N];

// ParallelPartitionConfig (:20)
static const uint64_t insnPerCluster = LIM;
static const uint64_t insnPerStage = (uint64_t)LIM * NBIN;

typedef struct {        // Cluster (:61)
  bool live;
  uint64_t insn;        // mInstructions
  Mask conf;            // mConflictTxs
  Mask txs;             // mTxIds
  bool hasBin;          // mBinId (optional)
  int bin;
} Cluster;

typedef struct {        // Stage (:94)
  Cluster cl[MAXC];
  uint64_t binInsn[NBIN];  // mBinInstructions
  uint64_t insn;           // mInstructions
  bool triedCompacting;    // mTriedCompactingBinPacking
  Mask allConf;            // mAllConflictTxs
  int txToCluster[N];      // mTxToCluster, -1 = nullptr
} Stage;

static Stage st[NSTAGE];

static void stage_init(Stage *s) {
  _Pragma("clang loop unroll(full)") for (int c = 0; c < MAXC; c++) {
    s->cl[c].live = false;
    s->cl[c].insn = 0;
    s->cl[c].conf = s->cl[c].txs = 0;
    s->cl[c].hasBin = false;
    s->cl[c].bin = 0;
  }
  _Pragma("clang loop unroll(full)") for (int b = 0; b < NBIN; b++)
    s->binInsn[b] = 0;
  s->insn = 0;
  s->triedCompacting = false;
  s->allConf = 0;
  _Pragma("clang loop unroll(full)") for (int t = 0; t < N; t++)
    s->txToCluster[t] = -1;
}

// getConflictingClusters (:236): fast path, then via mTxToCluster.
static Mask getConflictingClusters(Stage *s, int tx) {
#if PMUT != 1
  if (!(s->allConf & BIT(tx)))
    return 0;
#endif
  Mask set = 0;
  _Pragma("clang loop unroll(full)") for (int c = 0; c < N; c++) // while (tx.mConflictTxs.nextSet(c))
    if (txConf[tx] & BIT(c)) {
      int k = s->txToCluster[c];
      if (k >= 0)
        set |= BIT(k);
    }
  return set;
}

// Access helpers: a symbolic slot / bin index never indexes memory; loop
// over the concrete slots and compare instead.
static void binAdd(Stage *s, int bin, uint64_t v) {
  _Pragma("clang loop unroll(full)") for (int b = 0; b < NBIN; b++)
    if (b == bin)
      s->binInsn[b] += v;
}
static void binSub(Stage *s, int bin, uint64_t v) {
  _Pragma("clang loop unroll(full)") for (int b = 0; b < NBIN; b++)
    if (b == bin)
      s->binInsn[b] -= v;
}

static void updateTxToCluster(Stage *s, Mask txs, int k) { // :262
  _Pragma("clang loop unroll(full)") for (int t = 0; t < N; t++)
    if (txs & BIT(t))
      s->txToCluster[t] = k;
}

// inPlaceBinPacking (:274)
static bool inPlaceBinPacking(Stage *s, Cluster *nc, Mask removed) {
  _Pragma("clang loop unroll(full)") for (int c = 0; c < MAXC; c++)
    if (removed & BIT(c))
      binSub(s, s->cl[c].bin, s->cl[c].insn); // mBinId.value()
  _Pragma("clang loop unroll(full)") for (int b = 0; b < NBIN; b++) {
    if (s->binInsn[b] + nc->insn <= insnPerCluster) {
      s->binInsn[b] += nc->insn;
      nc->hasBin = true;
      nc->bin = b;
      return true;
    }
  }
#if PMUT != 2
  _Pragma("clang loop unroll(full)") for (int c = 0; c < MAXC; c++)
    if (removed & BIT(c))
      binAdd(s, s->cl[c].bin, s->cl[c].insn);
#endif
  return false;
}

// binPacking (:356): first-fit decreasing over all live clusters.
// std::sort with an unspecified order among equal mInstructions: pick a
// nondeterministic order of the live slots, constrained non-increasing.
static bool binPacking(Stage *s, uint64_t newBin[NBIN], int newBinId[MAXC]) {
  int ord[MAXC];
  Mask used = 0, liveM = 0;
  int n = 0;
  _Pragma("clang loop unroll(full)") for (int c = 0; c < MAXC; c++)
    if (s->cl[c].live) {
      n++;
      liveM |= BIT(c);
    }
  _Pragma("clang loop unroll(full)") for (int i = 0; i < MAXC; i++) {
    int k = nd_int();
    if (i < n) {
      assume(k >= 0 && k < MAXC && (liveM & BIT(k)) && !(used & BIT(k)));
      used |= BIT(k);
      ord[i] = k;
    } else {
      ord[i] = -1;
    }
  }
  _Pragma("clang loop unroll(full)") for (int i = 0; i + 1 < MAXC; i++)
    if (ord[i + 1] >= 0) {
      uint64_t a = 0, b = 0;
      _Pragma("clang loop unroll(full)") for (int c = 0; c < MAXC; c++) {
        if (c == ord[i]) a = s->cl[c].insn;
        if (c == ord[i + 1]) b = s->cl[c].insn;
      }
      assume(a >= b);
    }
  _Pragma("clang loop unroll(full)") for (int b = 0; b < NBIN; b++)
    newBin[b] = 0;
  _Pragma("clang loop unroll(full)") for (int i = 0; i < MAXC; i++) {
    if (ord[i] < 0)
      continue;
    uint64_t ci = 0;
    _Pragma("clang loop unroll(full)") for (int c = 0; c < MAXC; c++)
      if (c == ord[i]) ci = s->cl[c].insn;
    bool packed = false;
    _Pragma("clang loop unroll(full)") for (int b = 0; b < NBIN && !packed; b++) {
      if (newBin[b] + ci <= insnPerCluster) {
        newBin[b] += ci;
        _Pragma("clang loop unroll(full)") for (int c = 0; c < MAXC; c++)
          if (c == ord[i]) newBinId[c] = b;
        packed = true;
      }
    }
    if (!packed)
      return false;
  }
  return true;
}

// tryAdd (:108). Slots: the merged cluster takes a free slot; removed
// clusters are kept (dead) until success, so rollback restores them.
static bool tryAdd(Stage *s, int tx) {
  if (s->insn + txInsn[tx] > insnPerStage)
    return false;
  Mask conflicting = getConflictingClusters(s, tx);
  uint64_t merged = txInsn[tx];
  _Pragma("clang loop unroll(full)") for (int c = 0; c < MAXC; c++)
    if (conflicting & BIT(c))
      merged += s->cl[c].insn;
  if (merged > insnPerCluster)
    return false;

  // newCluster = Cluster(tx) merged with the conflicting clusters
  Cluster nc;
  nc.live = true;
  nc.insn = txInsn[tx];
  nc.conf = txConf[tx];
  nc.txs = BIT(tx);
  nc.hasBin = false;
  nc.bin = 0;
  _Pragma("clang loop unroll(full)") for (int c = 0; c < MAXC; c++)
    if (conflicting & BIT(c)) {
      nc.insn += s->cl[c].insn;
      nc.conf |= s->cl[c].conf;
      nc.txs |= s->cl[c].txs;
    }
  // removeConflictingClusters + push_back: removed slots go dead, the new
  // cluster takes a free slot (one exists: live clusters partition <= N-1
  // txs before this one is added)
  _Pragma("clang loop unroll(full)") for (int c = 0; c < MAXC; c++)
    if (conflicting & BIT(c))
      s->cl[c].live = false;
  int k = -1;
  _Pragma("clang loop unroll(full)") for (int c = MAXC - 1; c >= 0; c--)
    if (!s->cl[c].live && !(conflicting & BIT(c)))
      k = c;
  sassert(k >= 0); // modelling check: a free slot exists
  if (k < 0)
    return false;

  bool inPlace = inPlaceBinPacking(s, &nc, conflicting);
  _Pragma("clang loop unroll(full)") for (int c = 0; c < MAXC; c++) // mClusters.push_back(newCluster)
    if (c == k)
      s->cl[c] = nc;
  if (inPlace) {
    s->insn += txInsn[tx];
    s->allConf |= txConf[tx];
#if PMUT != 3
    updateTxToCluster(s, nc.txs, k);
#endif
    return true;
  }
  if (conflicting == 0) {
    if (s->triedCompacting) {
      _Pragma("clang loop unroll(full)") for (int c = 0; c < MAXC; c++) // rollbackClusters
        if (c == k)
          s->cl[c].live = false;
      _Pragma("clang loop unroll(full)") for (int c = 0; c < MAXC; c++)
        if (conflicting & BIT(c))
          s->cl[c].live = true;
      return false;
    }
    s->triedCompacting = true;
  }
  uint64_t newBin[NBIN];
  int newBinId[MAXC];
  if (!binPacking(s, newBin, newBinId)) {
    _Pragma("clang loop unroll(full)") for (int c = 0; c < MAXC; c++) // rollbackClusters
      if (c == k)
        s->cl[c].live = false;
    _Pragma("clang loop unroll(full)") for (int c = 0; c < MAXC; c++)
      if (conflicting & BIT(c))
        s->cl[c].live = true;
    return false;
  }
  _Pragma("clang loop unroll(full)") for (int c = 0; c < MAXC; c++)
    if (s->cl[c].live) {
      s->cl[c].hasBin = true;
      s->cl[c].bin = newBinId[c];
    }
  s->insn += txInsn[tx];
  _Pragma("clang loop unroll(full)") for (int b = 0; b < NBIN; b++)
    s->binInsn[b] = newBin[b];
  s->allConf |= txConf[tx];
  updateTxToCluster(s, nc.txs, k);
  return true;
}

static bool conflicts(int a, int b) { return (txConf[a] & BIT(b)) != 0; }

#ifndef TXSET_LIB
// Properties of one stage (called per stage, not in a loop: after mixed
// semantics a property loop's exit becomes an assume and cannot be unrolled).
static void check_stage(Stage *s, int i, int stageOf[N]) {
  Mask seen = 0;
  uint64_t sum[NBIN];
  _Pragma("clang loop unroll(full)") for (int b = 0; b < NBIN; b++)
    sum[b] = 0;
  _Pragma("clang loop unroll(full)") for (int c = 0; c < MAXC; c++) {
    if (!s->cl[c].live)
      continue;
    sassert(s->cl[c].txs != 0);              // no empty cluster
    sassert((seen & s->cl[c].txs) == 0);     // clusters are disjoint
    seen |= s->cl[c].txs;
    sassert(s->cl[c].hasBin);                // visitAll: mBinId.value()
    sassert(s->cl[c].bin >= 0 && s->cl[c].bin < NBIN);
    _Pragma("clang loop unroll(full)") for (int b = 0; b < NBIN; b++)
      if (b == s->cl[c].bin)
        sum[b] += s->cl[c].insn;
    _Pragma("clang loop unroll(full)") for (int t = 0; t < N; t++)              // tx-to-cluster index
      if (s->cl[c].txs & BIT(t))
        sassert(s->txToCluster[t] == c);
  }
  _Pragma("clang loop unroll(full)") for (int b = 0; b < NBIN; b++) {
    sassert(s->binInsn[b] == sum[b]);        // bin bookkeeping
    sassert(sum[b] <= insnPerCluster);       // per-cluster limit
  }
  _Pragma("clang loop unroll(full)") for (int t = 0; t < N; t++)                // placement agrees
    sassert(((seen & BIT(t)) != 0) == (stageOf[t] == i));
  // THE property: different bins of a stage never conflict. Accumulated
  // and asserted after the loops, so the loop exit stays reachable (else
  // mixed semantics turns the exit test into an assume and the loop
  // survives unrolling).
  bool separated = true;
  _Pragma("clang loop unroll(full)") for (int c = 0; c < MAXC; c++)
    _Pragma("clang loop unroll(full)") for (int d = 0; d < MAXC; d++)
      if (s->cl[c].live && s->cl[d].live && s->cl[c].bin != s->cl[d].bin)
        _Pragma("clang loop unroll(full)") for (int a = 0; a < N; a++)
          _Pragma("clang loop unroll(full)") for (int b = 0; b < N; b++)
            if ((s->cl[c].txs & BIT(a)) && (s->cl[d].txs & BIT(b)))
              separated = separated && !conflicts(a, b) && !conflicts(b, a);
  sassert(separated);
  }

int main(void) {
  // symbolic transactions; sortedTxOrder = 0..N-1 (the conflict relation
  // and instructions are symbolic, so a fixed order loses no generality)
  _Pragma("clang loop unroll(full)") for (int t = 0; t < N; t++) {
    txInsn[t] = nd_u32();
    assume(txInsn[t] <= LIM + 1);
    txConf[t] = 0;
  }
  _Pragma("clang loop unroll(full)") for (int a = 0; a < N; a++)
    _Pragma("clang loop unroll(full)") for (int b = 0; b < N; b++) {
      if (b <= a)
        continue;
      bool ab = nd_bool();
#ifdef ASYM
      bool ba = nd_bool();
#else
      bool ba = ab;
#endif
      if (ab) txConf[a] |= BIT(b);
      if (ba) txConf[b] |= BIT(a);
    }
  _Pragma("clang loop unroll(full)") for (int i = 0; i < NSTAGE; i++)
    stage_init(&st[i]);

  // phase loop (:478-512), lane limits abstracted to "may skip"
  int stageOf[N];
  _Pragma("clang loop unroll(full)") for (int t = 0; t < N; t++) {
    stageOf[t] = -1;
    if (nd_bool())
      continue; // anyGreater(txRes, laneLeft)
    _Pragma("clang loop unroll(full)") for (int i = 0; i < NSTAGE; i++)
      if (tryAdd(&st[i], t)) {
        stageOf[t] = i;
        break;
      }
  }

  // ---- properties ----
  check_stage(&st[0], 0, stageOf);
#if NSTAGE > 1
  check_stage(&st[1], 1, stageOf);
#endif
#ifdef PREACH // vacuity: a stage with two non-empty bins and a merged cluster
  {
    Stage *s = &st[0];
    bool b0 = false, b1 = false, mergedAny = false;
    _Pragma("clang loop unroll(full)") for (int c = 0; c < MAXC; c++)
      if (s->cl[c].live) {
        if (s->cl[c].bin == 0) b0 = true;
        if (s->cl[c].bin == 1) b1 = true;
        if (s->cl[c].txs & (s->cl[c].txs - 1)) mergedAny = true;
      }
    sassert(!(b0 && b1 && mergedAny));
  }
#endif
  return 0;
}
#endif // TXSET_LIB
