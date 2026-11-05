// FD-FRAG by proof: the inductive step (Firedancer TPU reassembly, frag and
// cancel). Companion of reasm_frag.c (same claims C1-C6, same code under
// test, included unchanged); there the state was built by init + prepare and
// the verifier had to rediscover slot identities through the map's hash.
//
// Proof structure:
//   Inv(state, ghost) below: the header holds the init constants; the two
//     pub_slots are distinct and PUB; the queue is a doubly linked list of
//     the three other slots, head to tail (witness: the walk n0, n1, n2);
//     the map, as the ghost set in_map, holds every BUSY slot and its keys
//     are unique; the harness model (target t, other stream o, size L,
//     busy) agrees with the slots.
//   Base: Inv holds after fd_tpu_reasm_new and the two prepares. That state is
//     deterministic: checked natively on the real code with the real map
//     (test_reasm_base.c), with in_map read off the real chains.
//   Step (this file): from any state satisfying Inv, one frag (nondet offset,
//     length, contents) or cancel of t keeps Inv and satisfies C1-C5; C6
//     (verify_state) is also checked after the step.
//   Hence C1-C6 hold after any number of steps (no bound K).
//
// Assumption M-MAP (the map's contract; discharged separately):
// fd_tpu_reasm_map (fd_map_chain.c) implements a finite set of
// slots with unique keys: query returns the member with the key or NULL,
// remove removes the member with the key (if any), insert adds a slot whose
// key is not present. The harness replaces smap_insert / smap_query /
// smap_remove (fd_tpu_reasm_private.h) by this contract over the ghost
// in_map, and checks the contract's preconditions where they are called.
// chain_next and the chain heads belong to the map's representation and are
// not part of Inv.
//
// Knobs: STEPOP 0 frag or cancel (nondet), 1 frag, 2 cancel. VS 1: also run
// verify_state after the step. CLAIM 1/2/3: reach (busy with sz > 0 after the
// step / an ERR_SZ cancel / a trimmed overlap); INVCHK 0: assume Inv after
// the step instead of checking it (localization).

#include "seahorn/seahorn.h"
#include "seadsa/sea_dsa.h"
#include <stddef.h>
#include <stdarg.h>

#ifndef CLAIM
#define CLAIM 0
#endif
#ifndef DEPTH
#define DEPTH 2UL
#endif
#ifndef BURST
#define BURST 3UL
#endif
#ifndef STEPOP
#define STEPOP 0
#endif
#ifndef VS
#define VS 1
#endif
#ifndef INVCHK
#define INVCHK 1
#endif
#ifndef DCACHE_FIX
#define DCACHE_FIX 1
#endif
#ifndef REASM_C
#define REASM_C "disco/quic/fd_tpu_reasm.c"
#endif

#define FULL _Pragma("clang loop unroll(full)")
#define SLOT_CNT (DEPTH + BURST)

#include "util/fd_util_base.h"
#undef FD_COMPILER_MFENCE
#define FD_COMPILER_MFENCE() ((void)0)

/* ---- the map's contract (M-MAP) over the ghost set in_map ------------ */
/* The private header is included here with its smap_* renamed (unused);
   fd_tpu_reasm.c's own include of it is then a no-op (include guard) and its
   calls bind to the contract below. */
#define smap_insert smap_insert_impl
#define smap_query  smap_query_impl
#define smap_remove smap_remove_impl
#include "fd_tpu_reasm_private.h"
#undef smap_insert
#undef smap_query
#undef smap_remove

extern uchar in_map[SLOT_CNT];  /* ghost; nondet, constrained by Inv */

static inline int key_is(fd_tpu_reasm_slot_t const *s, ulong conn, ulong sid) {
  return (s->k.conn_uid == conn) & (s->k.stream_id == sid);
}

static fd_tpu_reasm_slot_t *smap_query(fd_tpu_reasm_t *reasm, ulong conn_uid,
                                       ulong stream_id) {
  ulong sid = stream_id & FD_TPU_REASM_SID_MASK;
  fd_tpu_reasm_slot_t *slots = fd_tpu_reasm_slots_laddr(reasm);
  fd_tpu_reasm_slot_t *r = NULL;
  FULL for (ulong i = 0UL; i < SLOT_CNT; i++)
    if (in_map[i] && key_is(slots + i, conn_uid, sid)) r = slots + i;
  return r;  /* unique by Inv (keys unique in the map) */
}

static void smap_remove(fd_tpu_reasm_t *reasm, fd_tpu_reasm_slot_t *slot) {
  fd_tpu_reasm_slot_t *slots = fd_tpu_reasm_slots_laddr(reasm);
  ulong conn = slot->k.conn_uid, sid = slot->k.stream_id;
  FULL for (ulong i = 0UL; i < SLOT_CNT; i++)
    if (in_map[i] && key_is(slots + i, conn, sid)) in_map[i] = 0;
}

static void smap_insert(fd_tpu_reasm_t *reasm, fd_tpu_reasm_slot_t *slot) {
  fd_tpu_reasm_slot_t *slots = fd_tpu_reasm_slots_laddr(reasm);
  /* precondition: the key is not present */
  sassert(smap_query(reasm, slot->k.conn_uid, slot->k.stream_id) == NULL);
  in_map[slot - slots] = 1;
}

/* ---- the code under test ------------------------------------------ */
#include REASM_C

/* ---- summaries (as reasm_frag.c) ------------------------------------ */
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

extern fd_tpu_msg_t dcache_mem[SLOT_CNT];
ulong fd_dcache_data_sz(uchar const *dcache) {
  (void)dcache;
  return sizeof(dcache_mem);
}

extern ulong nd_ulong(void);
extern uint nd_uint(void);
extern int nd_int(void);

#include "reasm_init_mock.h"  /* struct reasm_ws: the layout (checked) */
extern struct reasm_ws ws;

/* ---- verify_state (test_tpu_reasm.c), as in reasm_frag.c ------------- */
static uint verify_state(fd_tpu_reasm_t *reasm) {
  FD_TEST(reasm->slots_off);
  fd_tpu_reasm_slot_t *slots = fd_tpu_reasm_slots_laddr(reasm);
  uint *pub_slots = fd_tpu_reasm_pub_slots_laddr(reasm);
  uint depth = reasm->depth, burst = reasm->burst, slot_cnt = reasm->slot_cnt;
  uint free_cnt = 0U;
  FD_TEST(depth + burst == slot_cnt);
  FD_TEST(reasm->head < slot_cnt);
  FD_TEST(reasm->tail < slot_cnt);
  FULL for (ulong i = 0UL; i < DEPTH; i++) {
    uint slot_idx = pub_slots[i];
    FD_TEST(slot_idx < slot_cnt);
    fd_tpu_reasm_slot_t *slot = slots + slot_idx;
    FD_TEST(slot->k.state == FD_TPU_REASM_STATE_PUB);
    slot->k.state = 3;
  }
  FULL for (ulong i = 0UL; i < DEPTH; i++)
    slots[pub_slots[i]].k.state = FD_TPU_REASM_STATE_PUB;
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
    fd_tpu_reasm_slot_t *slot2 = smap_query(reasm, slot->k.conn_uid, slot->k.stream_id);
    if (slot->k.state == FD_TPU_REASM_STATE_BUSY) {
      FD_TEST(slot == slot2);
    } else {
      FD_TEST(slot2 == NULL || slot == slot2);
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

/* ---- the invariant -------------------------------------------------- */
#ifndef SEL  /* localization: 0 all claims, n: only CK(n, .) */
#define SEL 0
#endif
#define CK(id, c) do { if (SEL == 0 || SEL == (id)) sassert(c); } while (0)

#define INV(c) do { if (chk) sassert(c); else assume(c); } while (0)

#include "reasm_inv.h"

/* ---- the step -------------------------------------------------------- */
#define IN_SZ (FD_TPU_MTU + sizeof(fd_txn_m_t) + 1UL)
extern uchar in[IN_SZ];

int main(void) {
  fd_tpu_reasm_t *reasm = &ws.hdr;
  fd_tpu_reasm_slot_t *slots = ws.slots;
  struct model m;
  m.ti = nd_uint(); m.oi = nd_uint();
  m.tc = nd_ulong(); m.ts = nd_ulong() & FD_TPU_REASM_SID_MASK;
  m.oc = nd_ulong(); m.os = nd_ulong() & FD_TPU_REASM_SID_MASK;
  m.L = nd_ulong(); m.busy = nd_int() != 0;
  inv(&ws, in_map, dcache_mem, &m, 0);
  /* Inv says reasm->dcache == dcache_mem, but an assume constrains values
     only: sea-dsa takes a pointer loaded from havocked memory to alias no
     known object, puts frag's copy destination in a region apart from
     dcache_mem, and the C3 check reads a stale region
     ("havocked pointers"). sea_dsa_alias tells
     the pointer analysis (DCACHE_FIX 1, default); DCACHE_FIX 2 stores the
     value again instead (a no-op on Inv states); 0 reproduces the hazard. */
#if DCACHE_FIX == 1
  sea_dsa_alias(ws.hdr.dcache, dcache_mem);
#elif DCACHE_FIX == 2
  ws.hdr.dcache = dcache_mem;
#endif

  fd_tpu_reasm_slot_t *t = slots + m.ti, *o = slots + m.oi;
  uchar *t_payload = dcache_mem[m.ti].payload;

  /* C3 probe: the model byte at p (the payload, by the inductive claim) */
  ulong p = nd_ulong();
  assume(p < FD_TPU_MTU);
  uchar mp = t_payload[p];
  /* C4 frame probe: a byte of the data region outside the target payload */
  ulong fb = nd_ulong();
  assume(fb < sizeof(dcache_mem));
  uchar *fptr = (uchar *)dcache_mem + fb;
  assume(fptr < t_payload || fptr >= t_payload + FD_TPU_MTU);
  uchar fval = *fptr;

  int reach_sz = 0, reach_trim = 0;
  int op = STEPOP ? STEPOP - 1 : (nd_int() != 0);  /* 0 frag, 1 cancel */
  if (op) {
    fd_tpu_reasm_cancel(reasm, t);
    m.busy = 0;
  } else {
    ulong off = nd_ulong(), len = nd_ulong();
    assume(len <= IN_SZ);
    assume(off <= FD_TPU_MTU + 1UL);
    int rc = fd_tpu_reasm_frag(reasm, t, in, len, off);
    if (!m.busy) {
      CK(1, rc == FD_TPU_REASM_ERR_STATE);  /* C2 */
    } else if (off > m.L) {
      CK(2, rc == FD_TPU_REASM_ERR_SKIP);   /* C2, 071c0006 */
    } else if (off + len > FD_TPU_MTU) {
      CK(3, rc == FD_TPU_REASM_ERR_SZ);     /* C2 */
      m.busy = 0;
      reach_sz = 1;
    } else {
      CK(4, rc == FD_TPU_REASM_SUCCESS);    /* C2 */
      ulong n = off + len;
      if (n > m.L) {
        if (off < m.L) reach_trim = 1;
        if (m.L <= p && p < n) mp = in[p - off];
        m.L = n;
      }
    }
  }
  if (m.busy) {
    CK(5, t->k.state == FD_TPU_REASM_STATE_BUSY);  /* C2 */
    CK(6, t->k.sz == m.L);                         /* C2 */
    CK(7, p >= m.L || t_payload[p] == mp);         /* C3 */
  } else {
    CK(8, t->k.state == FD_TPU_REASM_STATE_FREE);              /* C5 */
    CK(9, fd_tpu_reasm_query(reasm, m.tc, m.ts) == NULL);      /* C5 */
  }
  CK(10, fd_tpu_reasm_query(reasm, m.oc, m.os) == o);           /* C5 */
  CK(11, *fptr == fval);                                        /* C4 */
  if (INVCHK) inv(&ws, in_map, dcache_mem, &m, 1);
  if (VS) (void)verify_state(reasm);                             /* C6 */

#if CLAIM == 1
  sassert(!(m.busy && m.L > 0));
#elif CLAIM == 2
  sassert(!reach_sz);
#elif CLAIM == 3
  sassert(!reach_trim);
#endif
  (void)reach_sz; (void)reach_trim;
  return 0;
}
