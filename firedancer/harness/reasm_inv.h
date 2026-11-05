// FD-FRAG by proof: the invariant Inv (shared by the inductive step,
// reasm_step.c, and the native base check, test_reasm_base.c).
// The includer defines INV(c) (assume / sassert / count a failure); `chk` is
// in scope for it. Needs fd_tpu_reasm.c's types and struct reasm_ws
// (reasm_init_mock.h), DEPTH, BURST and FULL.
// in_map is the ghost set of slots in the map (M-MAP).

#ifndef REASM_INV_H
#define REASM_INV_H

#include <stddef.h>

#define INV_SLOT_CNT (DEPTH + BURST)
#ifndef SLOT_CNT
#define SLOT_CNT INV_SLOT_CNT
#endif

static inline int inv_key_is(fd_tpu_reasm_slot_t const *s, ulong conn, ulong sid) {
  return (s->k.conn_uid == conn) & (s->k.stream_id == sid);
}

/* harness model: target slot ti with key (tc, ts), other stream oi with key
   (oc, os), model size L, busy */
struct model { uint ti, oi; ulong tc, ts, oc, os, L; int busy; };


static void inv(struct reasm_ws *w, uchar const *in_map, fd_tpu_msg_t *dcache,
                struct model const *m, int chk) {
  fd_tpu_reasm_t *reasm = &w->hdr;
  fd_tpu_reasm_slot_t *slots = w->slots;
  /* H: the header holds what init wrote */
  INV(reasm->slots_off == offsetof(struct reasm_ws, slots));
  INV(reasm->pub_slots_off == offsetof(struct reasm_ws, pub_slots));
  INV(reasm->map_off == offsetof(struct reasm_ws, map_mem));
  INV(reasm->dcache == dcache);
  INV(reasm->depth == DEPTH);
  INV(reasm->burst == BURST);
  INV(reasm->slot_cnt == SLOT_CNT);
  /* states are FREE, BUSY or PUB */
  FULL for (ulong i = 0UL; i < SLOT_CNT; i++) INV(slots[i].k.state != 3);
  /* P: the published slots */
  uint p0 = w->pub_slots[0], p1 = w->pub_slots[1];
  INV(p0 < SLOT_CNT);
  INV(p1 < SLOT_CNT);
  INV(p0 != p1);
  INV(slots[p0].k.state == FD_TPU_REASM_STATE_PUB);
  INV(slots[p1].k.state == FD_TPU_REASM_STATE_PUB);
  /* Q: head n0 <-> n1 <-> n2 tail, the three other slots */
  uint n0 = reasm->head;
  INV(n0 < SLOT_CNT);
  uint n1 = slots[n0].lru_next;
  INV(n1 < SLOT_CNT);
  uint n2 = slots[n1].lru_next;
  INV(n2 < SLOT_CNT);
  INV(n2 == reasm->tail);
  INV(slots[n2].lru_next == UINT_MAX);
  INV(slots[n0].lru_prev == UINT_MAX);
  INV(slots[n1].lru_prev == n0);
  INV(slots[n2].lru_prev == n1);
  INV(n0 != n1);
  INV(n0 != n2);
  INV(n1 != n2);
  INV(slots[n0].k.state != FD_TPU_REASM_STATE_PUB);
  INV(slots[n1].k.state != FD_TPU_REASM_STATE_PUB);
  INV(slots[n2].k.state != FD_TPU_REASM_STATE_PUB);
  /* M: BUSY slots are in the map; a slot is in the map iff its conn_uid is
     valid (init and cancel write ULONG_MAX and remove; prepare inserts a
     valid key: assumption E-KEY); keys in the map are unique */
  FULL for (ulong i = 0UL; i < SLOT_CNT; i++) {
    INV((in_map[i] != 0) == (slots[i].k.conn_uid != ULONG_MAX));
    INV(slots[i].k.state != FD_TPU_REASM_STATE_BUSY || in_map[i]);
    FULL for (ulong j = i + 1UL; j < SLOT_CNT; j++)
      INV(!(in_map[i] && in_map[j]) ||
          !inv_key_is(slots + i, slots[j].k.conn_uid, slots[j].k.stream_id));
  }
  /* harness model */
  INV(m->ti < SLOT_CNT);
  INV(m->oi < SLOT_CNT);
  INV(m->ti != m->oi);
  fd_tpu_reasm_slot_t *t = slots + m->ti, *o = slots + m->oi;
  INV(o->k.state == FD_TPU_REASM_STATE_BUSY);
  INV(inv_key_is(o, m->oc, m->os));
  INV(m->L <= FD_TPU_MTU);
  if (m->busy) {
    INV(t->k.state == FD_TPU_REASM_STATE_BUSY);
    INV(inv_key_is(t, m->tc, m->ts));
    INV(t->k.sz == m->L);
  } else {
    INV(t->k.state == FD_TPU_REASM_STATE_FREE);
    /* t's stream is gone from the map */
    FULL for (ulong i = 0UL; i < SLOT_CNT; i++)
      INV(!in_map[i] || !inv_key_is(slots + i, m->tc, m->ts));
  }
}

#endif
