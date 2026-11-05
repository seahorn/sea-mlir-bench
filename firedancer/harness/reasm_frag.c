// FD-FRAG: Firedancer TPU reassembly, fragment and cancel (sequential probe).
//
// Code under test, included unchanged from the pinned source
// (firedancer 37c658197b29deada95ea95a1afb04f7baea28fa):
//   src/disco/quic/fd_tpu_reasm.c        fd_tpu_reasm_new / prepare / frag /
//                                        cancel / query (publish not called)
//   src/disco/quic/fd_tpu_reasm_private.h slot queue, map wrappers
//   src/util/tmpl/fd_map_chain.c          the slot map (template)
// Configuration: Firedancer's default scalar build (FD_HAS_* = 0: no AVX, SSE,
// x86, hosted), FD_DCHECK_STYLE=1 (debug contracts are checked, not ignored).
// Mocks (mocks/*.sed) and then mutants / reverts (mutants/*.sed) are applied to
// a copy of fd_tpu_reasm.c by run_frag.sh (REASM_C names the file to include;
// OUTDIR/applied.diff records the change). Default mock (sweep.py): no-orig,
// fd_tpu_reasm_new does not store reasm->orig (read only by publish).
//
// Summaries (not Firedancer code):
//   fd_log_private_2 (FD_LOG_ERR / FD_LOG_CRIT, hence FD_TEST and
//     FD_CHECK_CRIT / FD_DCHECK_CRIT): a property failure (sassert(0)), then
//     the path ends. Reaching one is a crash of the validator process.
//   fd_log_private_{0,1}, fd_log_wallclock: no effect.
//   FD_COMPILER_MFENCE (compiler barrier): no effect (sequential probe).
//   fd_dcache_data_sz: the size of the harness's data region. The data region
//     is an array of slot_cnt fd_tpu_msg_t; the dcache header that
//     fd_dcache_new would place in front of it is not modelled (reasm uses
//     only data_sz and the data pointer).
//
// Environment: depth DEPTH (power of 2), burst BURST (>= 3: the slot queue
// assumes more than 2 elements), reasm initialised by fd_tpu_reasm_new
// (INIT_MOCK=0) or by reasm_init_mock.h (INIT_MOCK=1, default): the same
// layout as a struct and new's body verbatim, byte-identical to the real new
// (check_init_mock.sh), without its FD_SCRATCH_ALLOC align-up, which SeaM
// cannot see through. Two
// streams (A, B) are prepared; the target is one of them (nondet). Then K
// steps; each step is, nondet, a frag of the target with a nondet offset,
// length and contents (the data buffer is valid for the length), or a cancel
// of the target.
//
// Claims (CLAIM=0):
//   C1 no FD_LOG_ERR / FD_LOG_CRIT is reached (includes FD_TEST in the queue
//      code and the debug contracts);
//   C2 return codes and size: off > sz -> ERR_SKIP, no change (071c0006);
//      off+len > MTU -> ERR_SZ and the slot is cancelled; otherwise SUCCESS
//      and sz = max(sz, off+len); on a non-BUSY slot -> ERR_STATE, no change;
//   C3 payload: at a nondet probe byte p < sz, the payload holds the model
//      (preserved prefix, appended suffix taken from the data at p - off);
//   C4 frame: a nondet byte of the data region outside the target's payload
//      is unchanged (the other stream's slot and every header). This is the
//      destination-bounds property of the copy (bb4688cd);
//   C5 after a cancel or ERR_SZ: the target is FREE, not in the map, and the
//      other stream is still found;
//   C6 verify_state (test_tpu_reasm.c) after every step, without its mcache
//      line (publish is out of scope), loops bounded by burst.
// CLAIM=1  reach: the target is BUSY with sz > 0 after K steps (sat at K=1).
// CLAIM=2  reach: an ERR_SZ cancel happened (sat at K=1).
// CLAIM=3  reach: a step trimmed an overlap (off < sz < off+len) (sat at K=2).

#include "seahorn/seahorn.h"
#include <stddef.h>
#include <stdarg.h>

#ifndef K
#define K 1
#endif
#ifndef CLAIM
#define CLAIM 0
#endif
#ifndef DEPTH
#define DEPTH 2UL
#endif
#ifndef BURST
#define BURST 3UL
#endif
/* diagnosis knobs (defaults = the full claim set) */
#ifndef VS            /* 1: verify_state after init, prepare, every step; 2: after every step only (init/prepare are deterministic: checked by a concrete run) */
#define VS 1
#endif
#ifndef VSPART        /* verify_state parts: 1 pub-slot loop, 2 queue walks,
                         4 smap_query inside the head-to-tail walk */
#define VSPART 7
#endif
#ifndef PICK          /* -1: target is A or B (nondet); 0: B; 1: A */
#define PICK -1
#endif
#ifndef PROBES        /* 1: C3 payload probe and C4 frame probe */
#define PROBES 1
#endif
#ifndef REASM_C
#define REASM_C "disco/quic/fd_tpu_reasm.c"
#endif

#define FULL _Pragma("clang loop unroll(full)")

/* FD_COMPILER_MFENCE is an empty asm with a memory clobber (a compiler
   barrier). The probe is sequential, so it has no effect; sea-mlir export
   rejects inline asm. Redefined after fd_util_base.h (include-guarded). */
#include "util/fd_util_base.h"
#undef FD_COMPILER_MFENCE
#define FD_COMPILER_MFENCE() ((void)0)

/* ---- the code under test ------------------------------------------ */
#include REASM_C

/* ---- summaries ----------------------------------------------------- */
long fd_log_wallclock(void) { return 0L; }
char const *fd_log_private_0(char const *fmt, ...) { (void)fmt; return ""; }
void fd_log_private_1(int level, long now, char const *file, int line,
                      char const *func, char const *msg) {
  (void)level; (void)now; (void)file; (void)line; (void)func; (void)msg;
}
void fd_log_private_2(int level, long now, char const *file, int line,
                      char const *func, char const *msg) {
  (void)level; (void)now; (void)file; (void)line; (void)func; (void)msg;
  sassert(0);  /* C1 */
  assume(0);
  __builtin_unreachable();
}

#define SLOT_CNT (DEPTH + BURST)
/* Buffers are extern (no initializer): SeaHorn lowers a zero initializer
   into one store per byte (8k stores for in + reasm_mem) and the contents
   would be constant zero. Extern: contents start nondet; the code does not
   rely on zero-initialization (fd_tpu_reasm_new writes what it reads). */
extern fd_tpu_msg_t dcache_mem[SLOT_CNT];
ulong fd_dcache_data_sz(uchar const *dcache) {
  (void)dcache;
  return sizeof(dcache_mem);
}

extern ulong nd_ulong(void);
extern uint nd_uint(void);
extern int nd_int(void);

#ifndef INIT_MOCK
#define INIT_MOCK 1
#endif
#if INIT_MOCK
#include "reasm_init_mock.h"
extern struct reasm_ws ws;
#else
/* footprint(2,3) is computed by the code; the harness buffer is generous */
extern uchar __attribute__((aligned(alignof(fd_tpu_reasm_t)))) reasm_mem[4096];
#endif

/* ---- verify_state, from src/disco/quic/test_tpu_reasm.c ------------ */
static uint verify_state(fd_tpu_reasm_t *reasm) {
  FD_TEST(reasm->slots_off);
  fd_tpu_reasm_slot_t *slots = fd_tpu_reasm_slots_laddr(reasm);
  uint *pub_slots = fd_tpu_reasm_pub_slots_laddr(reasm);
  uint depth = reasm->depth;
  uint burst = reasm->burst;
  uint slot_cnt = reasm->slot_cnt;
  uint free_cnt = 0U;

  FD_TEST(depth + burst == slot_cnt);
  FD_TEST(reasm->head < slot_cnt);
  FD_TEST(reasm->tail < slot_cnt);

  /* (the mcache frag->sz check is omitted: no mcache, no publish) */
  if (VSPART & 1) {
  FULL for (ulong i = 0UL; i < DEPTH; i++) {
    uint slot_idx = pub_slots[i];
    FD_TEST(slot_idx < slot_cnt);
    fd_tpu_reasm_slot_t *slot = slots + slot_idx;
    FD_TEST(slot->k.state == FD_TPU_REASM_STATE_PUB);
    slot->k.state = 3; /* mark as visited */
  }
  FULL for (ulong i = 0UL; i < DEPTH; i++) {
    slots[pub_slots[i]].k.state = FD_TPU_REASM_STATE_PUB; /* undo */
  }
  }
  if (!(VSPART & 2)) return 0U;

  /* head to tail; bounded: the original loops until UINT_MAX and fails at
     queue_head_depth > burst, so BURST iterations plus the end test is the
     same check */
  ulong queue_head_depth = 0UL;
  uint node = reasm->head;
  FULL for (ulong it = 0UL; it < BURST; it++) {
    FD_TEST(node != UINT_MAX);
    FD_TEST(node < slot_cnt);
    fd_tpu_reasm_slot_t *slot = slots + node;
    queue_head_depth++;
    FD_TEST(!((node == reasm->tail) ^ (queue_head_depth == burst)));
    node = slot->lru_next;
    free_cnt += (slot->k.state == FD_TPU_REASM_STATE_FREE);
    if (VSPART & 4) {
      fd_tpu_reasm_slot_t *slot2 =
          smap_query(reasm, slot->k.conn_uid, slot->k.stream_id);
      if (slot->k.state == FD_TPU_REASM_STATE_BUSY) {
        FD_TEST(slot == slot2); /* busy slot lookup must be correct */
      } else {
        FD_TEST(slot2 == NULL || slot == slot2); /* optionally in map */
      }
    }
  }
  FD_TEST(node == UINT_MAX);

  ulong queue_tail_depth = 0UL;
  node = reasm->tail;
  FULL for (ulong it = 0UL; it < BURST; it++) {
    FD_TEST(node != UINT_MAX);
    FD_TEST(node < slot_cnt);
    fd_tpu_reasm_slot_t *slot = slots + node;
    queue_tail_depth++;
    FD_TEST(!((node == reasm->head) ^ (queue_tail_depth == burst)));
    node = slot->lru_prev;
  }
  FD_TEST(node == UINT_MAX);
  return free_cnt;
}

/* ---- harness --------------------------------------------------------- */
#define IN_SZ (FD_TPU_MTU + sizeof(fd_txn_m_t) + 1UL)
/* one data buffer per step; contents nondet (extern, see dcache_mem) */
extern uchar in[K][IN_SZ];

#define CONN_A 1UL
#define SID_A 4UL
#define CONN_B 2UL
#define SID_B 8UL

int main(void) {
#if INIT_MOCK
  fd_tpu_reasm_t *reasm = reasm_init_mock(&ws, 0x0123456789abcdefUL, dcache_mem);
  assume(reasm != NULL);
#else
  fd_tpu_reasm_t *reasm = fd_tpu_reasm_join(fd_tpu_reasm_new(
      reasm_mem, DEPTH, BURST, 0x0123456789abcdefUL, 48UL, dcache_mem));
  assume(reasm != NULL);
  assume(fd_tpu_reasm_footprint(DEPTH, BURST) <= sizeof(reasm_mem));
#endif
  if (VS == 1) (void)verify_state(reasm);

  fd_tpu_reasm_slot_t *sa = fd_tpu_reasm_prepare(reasm, CONN_A, SID_A, 0L);
  fd_tpu_reasm_slot_t *sb = fd_tpu_reasm_prepare(reasm, CONN_B, SID_B, 0L);
  if (VS == 1) (void)verify_state(reasm);

  int pick_a = PICK < 0 ? nd_int() : PICK;
  fd_tpu_reasm_slot_t *t = pick_a ? sa : sb;
  fd_tpu_reasm_slot_t *o = pick_a ? sb : sa;
  ulong t_conn = pick_a ? CONN_A : CONN_B, t_sid = pick_a ? SID_A : SID_B;
  ulong o_conn = pick_a ? CONN_B : CONN_A, o_sid = pick_a ? SID_B : SID_A;
  uint t_idx = slot_get_idx(reasm, t);
  uchar *t_payload = dcache_mem[t_idx].payload;

  /* C3 probe and model */
  ulong p = nd_ulong();
  assume(p < FD_TPU_MTU);
  uchar mp = 0;

  /* C4 frame probe: a byte of the data region outside the target payload */
  ulong fb = nd_ulong();
  assume(fb < sizeof(dcache_mem));
  uchar *fptr = (uchar *)dcache_mem + fb;
  assume(fptr < t_payload || fptr >= t_payload + FD_TPU_MTU);
  uchar fval = *fptr;

  ulong L = 0UL;  /* model size */
  int busy = 1;   /* model state of the target */
  int reach_sz = 0, reach_trim = 0;

  FULL for (int step = 0; step < K; step++) {
    if (nd_int()) {
      fd_tpu_reasm_cancel(reasm, t);
      busy = 0;
    } else {
      ulong off = nd_ulong(), len = nd_ulong();
      assume(len <= IN_SZ);
      assume(off <= FD_TPU_MTU + 1UL);  /* any off > sz is one case */
      int rc = fd_tpu_reasm_frag(reasm, t, in[step], len, off);
      if (!busy) {
        sassert(rc == FD_TPU_REASM_ERR_STATE);  /* C2 */
      } else if (off > L) {
        sassert(rc == FD_TPU_REASM_ERR_SKIP);  /* C2, 071c0006 */
      } else if (off + len > FD_TPU_MTU) {
        sassert(rc == FD_TPU_REASM_ERR_SZ);  /* C2 */
        busy = 0;
        reach_sz = 1;
      } else {
        sassert(rc == FD_TPU_REASM_SUCCESS);  /* C2 */
        ulong n = off + len;
        if (n > L) {
          if (off < L) reach_trim = 1;
          if (L <= p && p < n) mp = in[step][p - off];
          L = n;
        }
      }
    }
    if (busy) {
      sassert(t->k.state == FD_TPU_REASM_STATE_BUSY);  /* C2 */
      sassert(t->k.sz == L);                           /* C2 */
      if (PROBES) sassert(p >= L || t_payload[p] == mp); /* C3 */
    } else {
      sassert(t->k.state == FD_TPU_REASM_STATE_FREE);           /* C5 */
      sassert(fd_tpu_reasm_query(reasm, t_conn, t_sid) == NULL); /* C5 */
    }
    sassert(fd_tpu_reasm_query(reasm, o_conn, o_sid) == o);  /* C5 */
    if (PROBES) sassert(*fptr == fval);                       /* C4 */
    if (VS) (void)verify_state(reasm);                                /* C6 */
  }

#if CLAIM == 1
  sassert(!(busy && L > 0));
#elif CLAIM == 2
  sassert(!reach_sz);
#elif CLAIM == 3
  sassert(!reach_trim);
#endif
  (void)reach_sz; (void)reach_trim;
  return 0;
}
