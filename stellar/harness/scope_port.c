// ST-SCOPE: hand port of stellar-core LedgerEntryScope (a1f4383) to plain C,
// plus a bounded symbolic-sequence harness. Ugly-port policy:
// this is a model; every simplification is listed in PORT.md.
//
// Source: stellar-core (https://github.com/stellar/stellar-core)
//   src/ledger/LedgerEntryScope.h   (457 lines)
//   src/ledger/LedgerEntryScope.cpp (642 lines)
// "cpp:N" below = LedgerEntryScope.cpp line N.
//
// Knobs (-D):
//   K=n                  number of symbolic API calls (default 5)
//   SCOPE_PORT_LIB       port only, no harness (used by ttl_merge_port.c)
//   MUT=n                port mutant, see MUT_* below (0 = faithful)
//   CLAIM=name           which property to check (see bottom of file)
//   SPEC_ADOPT_ACTIVE=1  doc-reading where adopting a raw LE needs an active
//                        destination (characterization query)

#include "seahorn/seahorn.h"
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#ifndef K
#define K 5
#endif
#ifndef MUT
#define MUT 0
#endif
#ifndef SPEC_ADOPT_ACTIVE
#define SPEC_ADOPT_ACTIVE 0
#endif

#define CLAIM_SPEC 1      // port agrees with doc spec: misuse <=> throw; payload/provenance
#define CLAIM_NOTERM 2    // std::terminate is never reached (characterization)
#define CLAIM_REACH 3     // vacuity: a rich successful run exists (expect SAT)
#ifndef CLAIM
#define CLAIM CLAIM_SPEC
#endif

#ifdef REPLAY
#include <stdio.h>
#define TRACE(...) printf(__VA_ARGS__)
#elif defined(SEA_PRINTF)
// symbolic printing in the cex log (sea ... --log=cex); BmcImpl.hh:239
extern void sea_printf(const char *format, ...);
#define TRACE(...) sea_printf(__VA_ARGS__)
#else
#define TRACE(...)
#endif

extern int nd_int(void);
extern uint32_t nd_u32(void);
extern uint64_t nd_u64(void);
extern bool nd_bool(void);

/* ------------------------------------------------------------------ */
/* Error sink. A C++ `throw std::runtime_error(...)` becomes THROW(code): */
/* record the event and return; callers propagate with CHECK_EXC.       */
/* The fmt::format message arguments are dropped.                       */
/* ------------------------------------------------------------------ */
enum Exc {
  E_NONE = 0,
  E_CLAMP16,        // cpp:53
  E_MOVED_FROM,     // cpp:85 checkNotMovedFrom
  E_ID_MISMATCH,    // cpp:136,156,189,275,295,336,406,426,446,467,501,553,589
  E_INACTIVE,       // cpp:400,420,440,461,495,534,570
  E_ALREADY_ACTIVE, // cpp:374
  E_ALREADY_INACT,  // cpp:387
  E_SRC_ACTIVE,     // cpp:544,580
};
static int g_exc = E_NONE;
static bool g_terminate = false; // std::terminate (throw from noexcept dtor)
#define THROW(c)                                                               \
  do {                                                                         \
    g_exc = (c);                                                               \
    return;                                                                    \
  } while (0)
#define CHECK_EXC                                                              \
  do {                                                                         \
    if (g_exc)                                                                 \
      return;                                                                  \
  } while (0)

/* ------------------------------------------------------------------ */
/* Data. LedgerEntry (XDR union) reduced to {type,key,ttl}.            */
/* std::optional<LedgerEntry> -> {has, v}.                             */
/* StaticLedgerEntryScope (a template parameter) -> field `stat`;      */
/* the harness only issues calls that would type-check in C++.         */
/* ------------------------------------------------------------------ */
typedef struct { uint32_t type, key, ttl; } LE;
typedef struct { bool has; LE v; } OptLE;
enum Stat { S_GLOBAL = 0, S_THREAD = 1, S_TX = 2 }; // h:FOREACH (3 of 6 used)

typedef struct {       // LedgerEntryScopeID<S>, h:~196
  uint8_t stat;        // static part (template arg)
  uint16_t mIndex;
  bool mMovedFrom;     // `mutable` in C++
  uint32_t mLedger;
} ScopeID;

typedef struct {       // LedgerEntryScope<S>, h:~330
  ScopeID mScopeID;
  bool mActive;        // `mutable bool mActive{true}`
} Scope;

typedef struct {       // ScopedLedgerEntry<S> (isOpt=0, has==1)
  bool isOpt;          //  / ScopedLedgerEntryOpt<S> (isOpt=1)
  OptLE mEntry;
  ScopeID mScopeID;
} Entry;

static LE nd_le(void) {
  LE e;
  e.type = nd_u32();
  e.key = nd_u32();
  e.ttl = nd_u32();
  return e;
}
// Moved-from LedgerEntry: valid but unspecified. std::optional keeps has_value.
static void havoc_moved(Entry *e) { e->mEntry.v = nd_le(); }

static bool optle_eq(OptLE a, OptLE b) {
  if (a.has != b.has)
    return false;
  if (!a.has)
    return true;
  return a.v.type == b.v.type && a.v.key == b.v.key && a.v.ttl == b.v.ttl;
}

/* ---------------- LedgerEntryScopeID ---------------- */
static void clamp16(uint64_t v, uint16_t *out) { // cpp:49
  if (v > 0xFFFF)
    THROW(E_CLAMP16);
  *out = (uint16_t)v;
}
static void scopeid_ctor(ScopeID *id, uint8_t stat, uint64_t index,
                         uint32_t ledger) { // cpp:60
  uint16_t ix;
  clamp16(index, &ix);
  CHECK_EXC;
  id->stat = stat;
  id->mIndex = ix;
  id->mMovedFrom = false;
  id->mLedger = ledger;
}
static bool scopeid_eq(const ScopeID *a, const ScopeID *b) { // cpp:67
#if MUT == 7
  return a->mIndex == b->mIndex; // MUT 7: ledger component ignored (ledger skew)
#else
  return a->mLedger == b->mLedger && a->mIndex == b->mIndex;
#endif
}
static void checkNotMovedFrom(const ScopeID *id) { // cpp:81
  if (id->mMovedFrom)
    THROW(E_MOVED_FROM);
}

/* ---------------- ScopedLedgerEntry / Opt ---------------- */
// cpp:96/104 and 216/224: construct from (scopeID, entry). Constructed into a
// temporary; the harness commits it only if no exception escaped.
static void entry_ctor(Entry *w, bool isOpt, ScopeID id, OptLE e) {
  w->isOpt = isOpt;
  w->mEntry = e;
  w->mScopeID = id;
  checkNotMovedFrom(&id);
}
// cpp:111 / 232 / 248 copy ctors (incl. Opt-from-SLE).
static void entry_copy_ctor(Entry *w, Entry *o, bool toOpt) {
  w->isOpt = toOpt;
  w->mEntry = o->mEntry;
  w->mScopeID = o->mScopeID;
  checkNotMovedFrom(&o->mScopeID);
}
// cpp:118 / 240 / 256 move ctors. Member init moves the payload *before*
// the moved-from check runs.
static void entry_move_ctor(Entry *w, Entry *o, bool toOpt) {
  w->isOpt = toOpt;
  w->mEntry = o->mEntry;
  havoc_moved(o);
  w->mScopeID = o->mScopeID;
  checkNotMovedFrom(&o->mScopeID);
  CHECK_EXC;
#if MUT != 6
  o->mScopeID.mMovedFrom = true;
#endif
}
// cpp:127 / 266 copy assignment.
static void entry_copy_assign(Entry *w, Entry *o) {
  if (w == o)
    return;
  checkNotMovedFrom(&o->mScopeID);
  CHECK_EXC;
  if (!scopeid_eq(&o->mScopeID, &w->mScopeID))
    THROW(E_ID_MISMATCH);
  w->mEntry = o->mEntry;
#if MUT != 4
  w->mScopeID.mMovedFrom = false;
#endif
}
// cpp:147 / 286 move assignment.
static void entry_move_assign(Entry *w, Entry *o) {
  if (w == o)
    return;
  checkNotMovedFrom(&o->mScopeID);
  CHECK_EXC;
  if (!scopeid_eq(&o->mScopeID, &w->mScopeID))
    THROW(E_ID_MISMATCH);
  w->mEntry = o->mEntry;
  havoc_moved(o);
  w->mScopeID.mMovedFrom = false;
  o->mScopeID.mMovedFrom = true;
}
// cpp:183 / 330 operator==.
static void entry_eq(Entry *a, Entry *b, bool *out) {
  checkNotMovedFrom(&a->mScopeID);
  CHECK_EXC;
  checkNotMovedFrom(&b->mScopeID);
  CHECK_EXC;
  if (!scopeid_eq(&a->mScopeID, &b->mScopeID))
    THROW(E_ID_MISMATCH);
  *out = optle_eq(a->mEntry, b->mEntry);
}

/* ---------------- LedgerEntryScope ---------------- */
static void scope_activate(Scope *s) { // cpp:370
  if (s->mActive)
    THROW(E_ALREADY_ACTIVE);
  s->mActive = true;
}
static void scope_deactivate(Scope *s) { // cpp:383
  if (!s->mActive)
    THROW(E_ALREADY_INACT);
  s->mActive = false;
}
// cpp:396 scopeReadEntry / cpp:435 scopeReadOptionalEntry (also the
// readInScope forwarders cpp:168/307).
static void scope_read(Scope *s, Entry *w, OptLE *out) {
  if (!s->mActive)
    THROW(E_INACTIVE);
#if MUT != 1
  checkNotMovedFrom(&w->mScopeID);
  CHECK_EXC;
#endif
  if (!scopeid_eq(&w->mScopeID, &s->mScopeID))
    THROW(E_ID_MISMATCH);
  *out = w->mEntry;
}
// cpp:415 / 455 scopeModify(Optional)Entry. std::function callback -> a
// direct write of a caller-chosen new value (`func(w.mEntry)`).
// scope_modify_ref: the checks of scopeModify(Optional)Entry; returns the
// payload `func` is applied to, or NULL if a check threw.
static OptLE *scope_modify_ref(Scope *s, Entry *w) {
#if MUT != 2
  if (!s->mActive) {
    g_exc = E_INACTIVE;
    return NULL;
  }
#endif
  checkNotMovedFrom(&w->mScopeID);
  if (g_exc)
    return NULL;
  if (!scopeid_eq(&w->mScopeID, &s->mScopeID)) {
    g_exc = E_ID_MISMATCH;
    return NULL;
  }
  return &w->mEntry;
}
static void scope_modify(Scope *s, Entry *w, OptLE newval) {
  OptLE *p = scope_modify_ref(s, w);
  CHECK_EXC;
  *p = newval; // func(w.mEntry)
}
// cpp:490 scopeReleaseOptionalEntry (via releaseFromScope cpp:323).
static void scope_release(Scope *s, Entry *w, OptLE *out) {
  if (!s->mActive)
    THROW(E_INACTIVE);
  checkNotMovedFrom(&w->mScopeID);
  CHECK_EXC;
  if (!scopeid_eq(&w->mScopeID, &s->mScopeID))
    THROW(E_ID_MISMATCH);
#if MUT != 8
  w->mScopeID.mMovedFrom = true;
#endif
  *out = w->mEntry;
  havoc_moved(w);
}
// cpp:476/483/511/519 scopeAdoptEntry(Opt): no checks on the scope.
static void scope_adopt(Scope *s, Entry *w, bool isOpt, OptLE e) {
  entry_ctor(w, isOpt, s->mScopeID, e);
}
// cpp:528 (const&) and cpp:564 (&&) scopeAdoptEntryOptFromImpl.
static void scope_adopt_from(Scope *dst, Entry *w, Entry *src, Scope *srcScope,
                             bool move) {
  if (!dst->mActive)
    THROW(E_INACTIVE);
#if MUT != 5
  if (srcScope->mActive)
    THROW(E_SRC_ACTIVE);
#endif
  checkNotMovedFrom(&src->mScopeID);
  CHECK_EXC;
  if (!scopeid_eq(&src->mScopeID, &srcScope->mScopeID))
    THROW(E_ID_MISMATCH);
  OptLE payload = src->mEntry;
  if (move) {
#if MUT != 3
    src->mScopeID.mMovedFrom = true;
#endif
    havoc_moved(src);
  }
  entry_ctor(w, true, dst->mScopeID, payload);
}

/* ---------------- DeactivateScopeGuard (cpp:~600) ---------------- */
// ctor: scopeDeactivate(); dtor: scopeActivate(). The dtor is implicitly
// noexcept, so a throw from it is std::terminate.
static void guard_dtor(Scope *s) {
  int saved = g_exc;
  g_exc = E_NONE;
  scope_activate(s);
  if (g_exc)
    g_terminate = true;
  g_exc = saved;
}

static void entry_init(Entry *e) {
  e->isOpt = false;
  e->mEntry.has = false;
  e->mEntry.v.type = e->mEntry.v.key = e->mEntry.v.ttl = 0;
  e->mScopeID.stat = 0;
  e->mScopeID.mIndex = 0;
  e->mScopeID.mMovedFrom = false;
  e->mScopeID.mLedger = 0;
}

#ifndef SCOPE_PORT_LIB
/* ================================================================== */
/* Harness: K symbolic API calls on 2 scopes and 3 entry variables.    */
/* Ghost state is the doc-level spec (h:13-160), evolved independently */
/* of the port's own flags.                                            */
/* Each scope / entry / ghost is its own global, chosen by a pointer   */
/* ite (SC/EN/GH): no symbolic array index, so every access has a      */
/* numeral offset in one of a few objects (SeaM resolves these).       */
/* ================================================================== */
typedef struct {
  bool exists, live;   // C++ object constructed / not moved-from (spec)
  OptLE val;           // logical payload
  uint16_t provIx;     // scope ID the entry belongs to (spec)
  uint32_t provLedger;
#ifdef PAD32
  uint32_t pad_;       // re-indexing experiment: stride 28 -> 32
#endif
} Ghost;

#ifdef ARRAY_SLOTS
// Re-indexing experiment (parked SeaM entry, 2026-11-03): the same slots as
// real arrays indexed by the symbolic selector, so addresses are
// sea.ptr.index with a symbolic index (the "lookup by selector" form)
// instead of pointer ites over separate globals.
static Scope sc_[2];
static bool gAct_[2];
static Entry en_[3];
static Ghost gh_[3];
#define sc0 sc_[0]
#define sc1 sc_[1]
#define gAct0 gAct_[0]
#define gAct1 gAct_[1]
#define en0 en_[0]
#define en1 en_[1]
#define en2 en_[2]
#define gh0 gh_[0]
#define gh1 gh_[1]
#define gh2 gh_[2]
#else
static Scope sc0, sc1;
static bool gAct0, gAct1;
static Entry en0, en1, en2;
static Ghost gh0, gh1, gh2;
#endif
static int gGuard0, gGuard1; // scope numbers of live guards, innermost last
static int gDepth;
// coverage, for CLAIM_REACH
static bool cov_read_ok, cov_adopt_move_ok, cov_guard;

#ifdef ARRAY_SLOTS
#define SC(i) (&sc_[(i)])
#define GACT(i) (gAct_[(i)])
#define EN(i) (&en_[(i)])
#define GH(i) (&gh_[(i)])
#else
#define SC(i) ((i) == 0 ? &sc0 : &sc1)
#define GACT(i) (*((i) == 0 ? &gAct0 : &gAct1))
#define EN(i) ((i) == 0 ? &en0 : (i) == 1 ? &en1 : &en2)
#define GH(i) ((i) == 0 ? &gh0 : (i) == 1 ? &gh1 : &gh2)
#endif

static bool valid_adoption(uint8_t d, uint8_t s) { // h:FOR_EACH_VALID_SCOPE_ADOPTION
  return (d == S_GLOBAL && s == S_THREAD) || (d == S_THREAD && s == S_GLOBAL) ||
         (d == S_THREAD && s == S_TX) || (d == S_TX && s == S_THREAD);
}
static bool prov_is(const Ghost *g, const Scope *s) {
  return g->provIx == s->mScopeID.mIndex && g->provLedger == s->mScopeID.mLedger;
}
static bool prov_same(const Ghost *a, const Ghost *b) {
  return a->provIx == b->provIx && a->provLedger == b->provLedger;
}
static void prov_set(Ghost *g, const Scope *s) {
  g->provIx = s->mScopeID.mIndex;
  g->provLedger = s->mScopeID.mLedger;
}
static OptLE nd_optle(bool isOpt) {
  OptLE o;
  o.has = isOpt ? nd_bool() : true;
  o.v = nd_le();
  return o;
}

#define SPEC_CHECK(misuse)                                                     \
  do {                                                                         \
    TRACE("  spec_misuse=%d exc=%d\n", (int)(misuse), g_exc);                  \
    if (CLAIM == CLAIM_SPEC)                                                   \
      sassert((g_exc != E_NONE) == (misuse));                                  \
  } while (0)

enum Op {
  OP_ACTIVATE, OP_DEACTIVATE, OP_GUARD_PUSH, OP_GUARD_POP, OP_READ, OP_MODIFY,
  OP_RELEASE, OP_ADOPT, OP_ADOPT_FROM, OP_COPY_CTOR, OP_ASSIGN, OP_EQ, N_OPS
};

static void step(void) {
  int op = nd_int();
  int s = nd_int(), s2 = nd_int(), a = nd_int(), b = nd_int();
  bool mv = nd_bool(), flag = nd_bool();
  assume(op >= 0 && op < N_OPS);
#ifdef ONLY_OP
  assume(op == ONLY_OP);
#endif
  assume(s >= 0 && s < 2 && s2 >= 0 && s2 < 2);
  assume(a >= 0 && a < 3 && b >= 0 && b < 3);
  Scope *S = SC(s), *S2 = SC(s2);
  Entry *A = EN(a), *B = EN(b);
  Ghost *GA = GH(a), *GB = GH(b);
  TRACE("op=%d s=%d s2=%d a=%d b=%d mv=%d flag=%d\n", op, s, s2, a, b, mv,
        flag);

  switch (op) {
  case OP_ACTIVATE: {
    bool misuse = GACT(s);
    scope_activate(S);
    SPEC_CHECK(misuse);
    if (!g_exc) GACT(s) = true;
    break;
  }
  case OP_DEACTIVATE: {
    bool misuse = !GACT(s);
    scope_deactivate(S);
    SPEC_CHECK(misuse);
    if (!g_exc) GACT(s) = false;
    break;
  }
  case OP_GUARD_PUSH: {
    assume(gDepth < 2);
    bool misuse = !GACT(s);
    scope_deactivate(S); // guard ctor; on throw, guard never constructed
    SPEC_CHECK(misuse);
    if (!g_exc) {
      GACT(s) = false;
      if (gDepth == 0) gGuard0 = s; else gGuard1 = s;
      gDepth++;
      cov_guard = true;
    }
    break;
  }
  case OP_GUARD_POP: { // end of the guard's C++ block
    assume(gDepth > 0);
    int gs = gDepth == 2 ? gGuard1 : gGuard0;
    gDepth--;
    bool misuse = GACT(gs); // re-activated inside the guard
    guard_dtor(SC(gs));
    if (CLAIM == CLAIM_SPEC) sassert(g_terminate == misuse);
    GACT(gs) = true;
    break;
  }
  case OP_READ: { // readInScope (SLE or Opt)
    assume(GA->exists && A->mScopeID.stat == S->mScopeID.stat);
    bool misuse = !GACT(s) || !GA->live || !prov_is(GA, S);
    OptLE out;
    scope_read(S, A, &out);
    SPEC_CHECK(misuse);
    if (!g_exc) {
      if (CLAIM == CLAIM_SPEC) sassert(optle_eq(out, GA->val));
      cov_read_ok = true;
    }
    break;
  }
  case OP_MODIFY: {
    assume(GA->exists && A->mScopeID.stat == S->mScopeID.stat);
    bool misuse = !GACT(s) || !GA->live || !prov_is(GA, S);
    OptLE nv = nd_optle(A->isOpt);
    scope_modify(S, A, nv);
    SPEC_CHECK(misuse);
    if (!g_exc) GA->val = nv;
    break;
  }
  case OP_RELEASE: { // std::move(opt).releaseFromScope(scope)
    assume(GA->exists && A->isOpt && A->mScopeID.stat == S->mScopeID.stat);
    bool misuse = !GACT(s) || !GA->live || !prov_is(GA, S);
    OptLE out;
    scope_release(S, A, &out);
    SPEC_CHECK(misuse);
    if (!g_exc) {
      if (CLAIM == CLAIM_SPEC) sassert(optle_eq(out, GA->val));
      GA->live = false;
    }
    break;
  }
  case OP_ADOPT: { // auto x = scope.scopeAdoptEntry(Opt)(le)
    assume(!GA->exists);
    bool misuse = SPEC_ADOPT_ACTIVE ? !GACT(s) : false;
    OptLE v = nd_optle(flag);
    Entry tmp;
    scope_adopt(S, &tmp, flag, v);
    SPEC_CHECK(misuse);
    if (!g_exc) {
      *A = tmp;
      GA->exists = GA->live = true;
      GA->val = v;
      prov_set(GA, S);
    }
    break;
  }
  case OP_ADOPT_FROM: { // auto x = dst.scopeAdoptEntryOptFrom([move] src, srcScope)
    assume(!GA->exists && GB->exists && B->isOpt);
    assume(valid_adoption(S->mScopeID.stat, S2->mScopeID.stat));
    assume(B->mScopeID.stat == S2->mScopeID.stat);
    bool misuse = !GACT(s) || GACT(s2) || !GB->live || !prov_is(GB, S2);
    Entry tmp;
    scope_adopt_from(S, &tmp, B, S2, mv);
    SPEC_CHECK(misuse);
    if (!g_exc) {
      *A = tmp;
      GA->exists = GA->live = true;
      GA->val = GB->val;
      prov_set(GA, S);
      if (mv) {
        GB->live = false;
        cov_adopt_move_ok = true;
      }
    }
    break;
  }
  case OP_COPY_CTOR: { // auto x = y; / auto x = std::move(y); (incl. SLE->Opt)
    assume(!GA->exists && GB->exists);
    bool toOpt = B->isOpt ? true : flag;
    bool misuse = !GB->live;
    Entry tmp;
    if (mv)
      entry_move_ctor(&tmp, B, toOpt);
    else
      entry_copy_ctor(&tmp, B, toOpt);
    SPEC_CHECK(misuse);
    if (!g_exc) {
      *A = tmp;
      *GA = *GB;
      GA->exists = GA->live = true;
      if (mv) GB->live = false;
    }
    break;
  }
  case OP_ASSIGN: { // x = y; / x = std::move(y);
    assume(GA->exists && GB->exists && A->isOpt == B->isOpt &&
           A->mScopeID.stat == B->mScopeID.stat);
    bool misuse = (a != b) && (!GB->live || !prov_same(GA, GB));
    if (mv)
      entry_move_assign(A, B);
    else
      entry_copy_assign(A, B);
    SPEC_CHECK(misuse);
    if (!g_exc && a != b) {
      GA->val = GB->val;
      GA->live = true;
      if (mv) GB->live = false;
    }
    break;
  }
  case OP_EQ: {
    assume(GA->exists && GB->exists && A->isOpt == B->isOpt &&
           A->mScopeID.stat == B->mScopeID.stat);
    bool misuse = !GA->live || !GB->live || !prov_same(GA, GB);
    bool r = false;
    entry_eq(A, B, &r);
    SPEC_CHECK(misuse);
    if (!g_exc && CLAIM == CLAIM_SPEC) sassert(r == optle_eq(GA->val, GB->val));
    break;
  }
  }
}

// Prologue: write every global explicitly. SeaHorn's legacy semantics
// (--bmc=mono, sea pf) leave zero-initialized arrays nondet, because
// LowerGvInitializers lowers only scalar/struct initializers
// (lib/Transforms/Scalar/LowerGvInitializers.cc:185-217). Found here as a
// spurious K=1 cex with gExists[2]=1 in the initial memory. vcc settings
// (--bmc=opsem) respect initializers; the prologue keeps the harness
// independent of that.
static void ghost_init(Ghost *g) {
  g->exists = g->live = false;
  g->val.has = false;
  g->provIx = 0;
  g->provLedger = 0;
}
static void prologue(void) {
  g_exc = E_NONE;
  g_terminate = false;
  gDepth = 0;
  gGuard0 = gGuard1 = 0;
  cov_read_ok = cov_adopt_move_ok = cov_guard = false;
  gAct0 = gAct1 = false;
  ghost_init(&gh0);
  ghost_init(&gh1);
  ghost_init(&gh2);
  entry_init(&en0);
  entry_init(&en1);
  entry_init(&en2);
}

static bool make_scope(Scope *s, bool *gact) {
  uint8_t st = (uint8_t)nd_int();
  assume(st <= S_TX);
  scopeid_ctor(&s->mScopeID, st, nd_u64(), nd_u32());
  if (g_exc) return false; // scope never constructed (clamp16 threw)
  s->mActive = true;
  *gact = true;
  TRACE("scope stat=%d ix=%u ledger=%u\n", s->mScopeID.stat,
        s->mScopeID.mIndex, s->mScopeID.mLedger);
  return true;
}

int main(void) {
  prologue();
  if (!make_scope(&sc0, &gAct0) || !make_scope(&sc1, &gAct1))
    return 0;
  // Loop-free: K explicit steps (no unrolling needed by the verifier).
#define STEP_IF(n)                                                             \
  if (K > (n) && !g_exc && !g_terminate)                                       \
    step();
  STEP_IF(0) STEP_IF(1) STEP_IF(2) STEP_IF(3)
  STEP_IF(4) STEP_IF(5) STEP_IF(6) STEP_IF(7)
#if K > 8
#error "K > 8 not supported"
#endif
  // Normal exit or unwinding: destroy live guards innermost-first.
  // Check automatic destruction against the spec too.
  if (gDepth == 2 && !g_terminate) {
    gDepth = 1;
    bool misuse = GACT(gGuard1);
    guard_dtor(SC(gGuard1));
    if (CLAIM == CLAIM_SPEC) sassert(g_terminate == misuse);
    GACT(gGuard1) = true;
  }
  if (gDepth == 1 && !g_terminate) {
    gDepth = 0;
    bool misuse = GACT(gGuard0);
    guard_dtor(SC(gGuard0));
    if (CLAIM == CLAIM_SPEC) sassert(g_terminate == misuse);
    GACT(gGuard0) = true;
  }
#if CLAIM == CLAIM_SPEC
  if (!g_terminate) { // after all guards: port and spec agree on activity
    sassert(sc0.mActive == gAct0);
    sassert(sc1.mActive == gAct1);
  }
#endif

#if CLAIM == CLAIM_NOTERM
  sassert(!g_terminate);
#elif CLAIM == CLAIM_REACH
  sassert(!(g_exc == E_NONE && !g_terminate && cov_read_ok &&
            cov_adopt_move_ok && cov_guard));
#endif
  return 0;
}
#endif // SCOPE_PORT_LIB
