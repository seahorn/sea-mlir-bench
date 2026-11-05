// ST-PART-IND: inductive step for Stage::tryAdd (txset_port.c).
//
// Inv(stage, A), where A is the set of txs added so far:
//   I1 live clusters are non-empty, pairwise disjoint, and cover exactly A
//   I2 each live cluster's conf is the union of its members' conflict sets,
//      and its insn the sum of their instructions
//   I3 separation (closure): no live cluster's conf meets another live
//      cluster's txs
//   I4 bins: every live cluster has a bin; binInsn[b] = sum of its clusters'
//      insn <= LIM; stage insn = sum of all
//   I5 index: txToCluster[t] = the slot holding t for t in A, else -1
//   I6 fast-path mask: allConf = union of conflict sets of A
//   I7 dead slots are empty (txs = 0): NOT part of the invariant. The port
//      keeps a merged-away cluster's contents in its dead slot (C++ destroys
//      the unique_ptr); nothing reads dead slots (I5 points only at live
//      ones, packing visits only live ones). Found by the first induction
//      attempt; checkable with -DCHK=64.
// with the conflict relation symmetric and irreflexive.
//
// Check: Inv(s, A) and tx not in A, then tryAdd(s, tx) gives
// Inv(s, A + tx) on success and Inv(s, A) on failure.
// With the trivial base case (empty stage), separation (I3, hence across
// bins) holds after any sequence of tryAdd calls over these N tx ids.
// N bounds the tx-id width, not the number of steps.

#define TXSET_LIB 1
#include "txset_port.c"

#define ALLI 0x3f // I1-I6; I7 dropped (see header)
static bool inv(Stage *s, Mask A, unsigned which) {
  bool ok = true;
  Mask cover = 0;
  uint64_t total = 0;
  uint64_t sum[NBIN];
  _Pragma("clang loop unroll(full)") for (int b = 0; b < NBIN; b++) sum[b] = 0;
  _Pragma("clang loop unroll(full)") for (int c = 0; c < MAXC; c++) {
    Cluster *k = &s->cl[c];
    if (!k->live) {
      ok = ok && (!(which & (1u << 6)) || (k->txs == 0)); // I7
      continue;
    }
    ok = ok && (!(which & (1u << 0)) || (k->txs != 0 && (cover & k->txs) == 0)); // I1
    cover |= k->txs;
    Mask conf = 0;
    uint64_t insn = 0;
    _Pragma("clang loop unroll(full)") for (int t = 0; t < N; t++)
      if (k->txs & BIT(t)) {
        conf |= txConf[t];
        insn += txInsn[t];
      }
    ok = ok && (!(which & (1u << 1)) || (k->conf == conf && k->insn == insn)); // I2
    ok = ok && (!(which & (1u << 3)) || (k->hasBin && k->bin >= 0 && k->bin < NBIN)); // I4
    _Pragma("clang loop unroll(full)") for (int b = 0; b < NBIN; b++)
      if (b == k->bin) sum[b] += k->insn;
    total += k->insn;
    _Pragma("clang loop unroll(full)") for (int d = 0; d < MAXC; d++)
      if (d != c && s->cl[d].live)
        ok = ok && (!(which & (1u << 2)) || ((k->conf & s->cl[d].txs) == 0)); // I3
  }
  ok = ok && (!(which & (1u << 0)) || (cover == A)); // I1
  _Pragma("clang loop unroll(full)") for (int b = 0; b < NBIN; b++)
    ok = ok && (!(which & (1u << 3)) || (s->binInsn[b] == sum[b] && sum[b] <= insnPerCluster)); // I4
  ok = ok && (!(which & (1u << 3)) || (s->insn == total)); // I4
  Mask all = 0;
  _Pragma("clang loop unroll(full)") for (int t = 0; t < N; t++) {
    if (A & BIT(t)) {
      all |= txConf[t];
      bool hit = false;
      _Pragma("clang loop unroll(full)") for (int c = 0; c < MAXC; c++)
        if (s->txToCluster[t] == c)
          hit = s->cl[c].live && (s->cl[c].txs & BIT(t));
      ok = ok && (!(which & (1u << 4)) || (hit)); // I5
    } else {
      ok = ok && (!(which & (1u << 4)) || (s->txToCluster[t] == -1)); // I5
    }
  }
  ok = ok && (!(which & (1u << 5)) || (s->allConf == all)); // I6
  return ok;
}

int main(void) {
  _Pragma("clang loop unroll(full)") for (int t = 0; t < N; t++) {
    txInsn[t] = nd_u32();
    assume(txInsn[t] <= LIM + 1);
    txConf[t] = 0;
  }
  _Pragma("clang loop unroll(full)") for (int a = 0; a < N; a++)
    _Pragma("clang loop unroll(full)") for (int b = 0; b < N; b++) {
      if (b <= a) continue;
      bool ab = nd_bool();
      if (ab) {
        txConf[a] |= BIT(b);
        txConf[b] |= BIT(a);
      }
    }

  // an arbitrary stage state
  Stage *s = &st[0];
  _Pragma("clang loop unroll(full)") for (int c = 0; c < MAXC; c++) {
    s->cl[c].live = nd_bool();
    s->cl[c].insn = nd_u32();
    s->cl[c].conf = nd_u32();
    s->cl[c].txs = nd_u32();
    s->cl[c].hasBin = nd_bool();
    s->cl[c].bin = nd_int();
  }
  _Pragma("clang loop unroll(full)") for (int b = 0; b < NBIN; b++)
    s->binInsn[b] = nd_u32();
  s->insn = nd_u32();
  s->triedCompacting = nd_bool();
  s->allConf = nd_u32();
  _Pragma("clang loop unroll(full)") for (int t = 0; t < N; t++)
    s->txToCluster[t] = nd_int();
  Mask A = nd_u32();
  assume((A & ~((Mask)((1u << N) - 1))) == 0);
  assume(inv(s, A, ALLI));

  // The added tx is N-1 without loss of generality: the conflict relation,
  // costs and state are symbolic, so any (state, tx) relabels to this one.
  const int tx = N - 1;
  assume(!(A & BIT(tx)));
  bool added = tryAdd(s, tx);
  #ifndef CHK
#define CHK ALLI
#endif
  sassert(inv(s, added ? (A | BIT(tx)) : A, CHK));
  return 0;
}
