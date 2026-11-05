// Mock of fd_tpu_reasm_new's layout (FD-FRAG, INIT_MOCK=1).
//
// Why: fd_tpu_reasm_new places header, pub_slots, slots and map with
// FD_SCRATCH_ALLOC (fd_ulong_align_up on the integer address of shmem). SeaM
// does not cancel that align-up against the object's alignment, so no address
// derived from it can be compared and the verifier's queries blow up
// (SeaM limitation: align-up of an
// aligned object base).
//
// What: the same layout as a C struct (each member aligned to its own
// alignment, which is what FD_SCRATCH_ALLOC_APPEND computes; checked by
// test_init_mock.c), and the rest of fd_tpu_reasm_new's body copied verbatim
// from 37c658197 src/disco/quic/fd_tpu_reasm.c:65-120, except:
//   - no `reasm->orig` store (read only by publish; see mocks/no-orig.sed);
//   - the parameter checks are the harness's static configuration.
// The map: MOCK_MAP_NEW=0 uses the real fd_tpu_reasm_map_new / join;
// MOCK_MAP_NEW=1 (default) writes the same header and chains directly (their
// parameter checks include an is_aligned branch SeaM cannot decide).
//
// Checked summary, not trusted: test_init_mock.c (native) runs the real
// fd_tpu_reasm_new and this mock on equal pre-filled memory and compares
// every byte of the workspace except `orig`.

#ifndef REASM_INIT_MOCK_H
#define REASM_INIT_MOCK_H

#ifndef MOCK_MAP_NEW   /* 1: also map_new / join without their checks */
#define MOCK_MAP_NEW 1
#endif
#define MOCK_CHAIN_CNT 4UL  /* fd_tpu_reasm_map_chain_cnt_est(5): checked */
#define MOCK_MAP_SZ 64UL    /* >= fd_tpu_reasm_map_footprint(4): checked */

struct reasm_ws {
  fd_tpu_reasm_t hdr;
  uint pub_slots[DEPTH];
  fd_tpu_reasm_slot_t slots[DEPTH + BURST];
  uchar __attribute__((aligned(8))) map_mem[MOCK_MAP_SZ];
};

static fd_tpu_reasm_t *reasm_init_mock(struct reasm_ws *ws, ulong seed,
                                       fd_tpu_msg_t *dcache) {
  ulong depth = DEPTH, burst = BURST;
  ulong slot_cnt = depth + burst;
  ulong chain_cnt = fd_tpu_reasm_map_chain_cnt_est(slot_cnt);
  if (chain_cnt != MOCK_CHAIN_CNT) return NULL;
  if (fd_tpu_reasm_map_footprint(chain_cnt) > MOCK_MAP_SZ) return NULL;
  if (fd_tpu_reasm_map_align() > 8UL) return NULL;
  if (sizeof(fd_tpu_reasm_map_private_t) + chain_cnt * sizeof(uint) > MOCK_MAP_SZ) return NULL;

  fd_tpu_reasm_t *reasm = &ws->hdr;
  uint *pub_slots = ws->pub_slots;
  fd_tpu_reasm_slot_t *slots = ws->slots;
  void *map_mem = ws->map_mem;

  /* ---- verbatim from fd_tpu_reasm_new (fd_tpu_reasm.c:65-120) ---- */
  fd_memset( reasm, 0, sizeof(fd_tpu_reasm_t) );
  fd_memset( slots, 0, burst*sizeof(fd_tpu_reasm_slot_t) );

#if MOCK_MAP_NEW
  /* (mock) fd_tpu_reasm_map_new + join without their parameter checks (NULL,
     is_aligned, footprint, magic): the body of fd_map_chain.c MAP_(new)
     lines 729-743 (MAP_COUNT is 0), then join returns the same pointer. The
     is_aligned test on the object's integer address is a branch SeaM cannot
     decide (it does not know the object's alignment), and its infeasible
     failure path leaves the init stores out of a merged memory. */
  fd_tpu_reasm_map_private_t * mp = (fd_tpu_reasm_map_private_t *)map_mem;
  mp->seed      = seed;
  mp->chain_cnt = chain_cnt;
  { uint * chain = fd_tpu_reasm_map_private_chain( mp );
    for( ulong chain_idx=0UL; chain_idx<chain_cnt; chain_idx++ ) chain[ chain_idx ] = fd_tpu_reasm_map_private_box( fd_tpu_reasm_map_private_idx_null() ); }
  FD_COMPILER_MFENCE();
  FD_VOLATILE( mp->magic ) = 0xf17eda2c37c3a900UL; /* MAP_MAGIC, fd_map_chain.c:344 */
  FD_COMPILER_MFENCE();
  fd_tpu_reasm_map_t * map = (fd_tpu_reasm_map_t *)mp;
#else
  fd_tpu_reasm_map_t * map = fd_tpu_reasm_map_join( fd_tpu_reasm_map_new( map_mem, chain_cnt, seed ) );
  if( FD_UNLIKELY( !map ) ) {
    FD_LOG_WARNING(( "fd_tpu_reasm_map_new failed" ));
    return NULL;
  }
#endif

  /* Initialize reasm object */

  reasm->slots_off     = (ulong)( (uchar *)slots     - (uchar *)reasm );
  reasm->pub_slots_off = (ulong)( (uchar *)pub_slots - (uchar *)reasm );
  reasm->map_off       = (ulong)( (uchar *)map       - (uchar *)reasm );
  reasm->dcache        = dcache;

  reasm->depth    = (uint)depth;
  reasm->burst    = (uint)burst;
  reasm->head     = (uint)slot_cnt-1U;
  reasm->tail     = (uint)depth;
  reasm->slot_cnt = (uint)slot_cnt;
  /* (mock) reasm->orig not stored */

  for( uint j=0U; j<depth; j++ ) {
    fd_tpu_reasm_slot_t * slot = slots + j;
    slot->k.state     = FD_TPU_REASM_STATE_PUB;
    slot->k.conn_uid  = ULONG_MAX;
    slot->k.stream_id = 0xffffffffffff;
    slot->k.sz        = 0;
    slot->chain_next = UINT_MAX;
    pub_slots[ j ]   = j;
  }
  for( uint j=(uint)depth; j<slot_cnt; j++ ) {
    fd_tpu_reasm_slot_t * slot = slots + j;
    slot->k.state     = FD_TPU_REASM_STATE_FREE;
    slot->k.conn_uid  = ULONG_MAX;
    slot->k.stream_id = 0xffffffffffff;
    slot->k.sz        = 0;
    slot->lru_prev    = fd_uint_if( j<slot_cnt-1U, j+1U, UINT_MAX );
    slot->lru_next    = fd_uint_if( j>depth,       j-1U, UINT_MAX );
    slot->chain_next  = UINT_MAX;
  }

  uint * chains    = fd_tpu_reasm_map_private_chain( map );
  for( uint j=0U; j<chain_cnt; j++ ) {
    chains[ j ] = UINT_MAX;
  }

  FD_COMPILER_MFENCE();
  reasm->magic = FD_TPU_REASM_MAGIC;
  FD_COMPILER_MFENCE();
  /* ---- end verbatim ---- */

  return reasm;
}

#endif
