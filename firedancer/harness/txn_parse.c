// TX-PARSE: Firedancer transaction parser (fd_txn_parse_core), bounded.
//
// Code under test, included unchanged from the pinned source
// (firedancer 37c658197b29deada95ea95a1afb04f7baea28fa):
//   src/ballet/txn/fd_txn_parse.c (fd_txn_parse_core; legacy, V0, V1)
//   src/ballet/txn/fd_compact_u16.h (compact-u16 decoding, header-only)
// Configuration: Firedancer's default scalar build, FD_DCHECK_STYLE=1.
// Mutants (mutants/txn-*.sed) apply to a copy (run_frag.sh, TXN_C).
// Pointer mode: opaque (no int-to-ptr in the parser).
//
// Environment: a nondet payload of sz bytes, 0 < sz <= SZMAX, held in a
// buffer of exactly SZMAX bytes (the parser's own CHECK_LEFT discipline is
// what keeps reads below sz; reads in [sz, SZMAX) are not detected by this
// harness: in-bounds reads, the parser's invariant B, are NOT a claim of this
// first cut). out_buf: FD_TXN_MAX_SZ bytes. counters NULL. STRICT=1
// (default): payload_sz_opt NULL; STRICT=0: the consumed size psz is
// returned, claim psz <= sz and T2 against psz.
//
// Bound: SeaHorn unrolls every loop BOUND (sea.yaml) times and cuts the rest.
// The claims hold for transactions whose parse loops iterate at most BOUND
// times: at most BOUND instructions, BOUND account indices per instruction
// (legacy/V0) and BOUND address tables. The reach configurations check that
// successful parses exist inside the bound.
//
// Claims (CLAIM=0): txn_claims.h (T1 footprint, T2 extents, T3 header and
// account-index probe) on every successful parse.
// CLAIM=1 reach: a successful legacy parse.      CLAIM=2 reach: successful V0
// with an address table.  CLAIM=3 reach: successful V1.
// CLAIM=4 reach: a successful parse with an instruction that has an account.

#include "seahorn/seahorn.h"
#include <stddef.h>

#ifndef CLAIM
#define CLAIM 0
#endif
#ifndef STRICT   /* 1: payload_sz_opt NULL (trailing bytes rejected); 0: the
                    consumed size is returned in psz, trailing bytes allowed */
#define STRICT 1
#endif
#ifndef SZMAX
#define SZMAX 256UL
#endif
#ifndef TXN_C
#define TXN_C "ballet/txn/fd_txn_parse.c"
#endif
#ifndef PROOF    /* 1: inductive cuts of legacy/V0 (PROOFS=txn-legacy-cut);
                    2: of V1 (PROOFS=txn-v1-cut) */
#define PROOF 0
#endif
#if PROOF
#define TXN_INSTR_BOUND FD_TXN_INSTR_MAX
#define TXN_ALT_BOUND FD_TXN_ADDR_TABLE_LOOKUP_MAX
#define TXN_PROBE_ONLY 1
#else
#define TXN_INSTR_BOUND 8UL
#define TXN_ALT_BOUND 8UL
#endif

#include "util/fd_util_base.h"
#undef FD_COMPILER_MFENCE
#define FD_COMPILER_MFENCE() ((void)0)
/* FD_LIKELY / FD_UNLIKELY are __builtin_expect hints. SeaHorn's pipeline does
   not lower llvm.expect, so a branch on a constant (counters_opt == NULL)
   survives and its dead code (a store through null + offset, value poison)
   breaks the sea-mlir export. Plain conditions: same semantics. */
#undef FD_LIKELY
#undef FD_UNLIKELY
#define FD_LIKELY(c) (c)
#define FD_UNLIKELY(c) (c)

extern ulong nd_ulong(void);

#if PROOF
/* ---- proof overlay: inductive cuts of the legacy/V0 loops ------------
   PF_FOR(J, N, INV, HAVOC) replaces `for (ulong J = 0; J < N; J++)` (all in
   the for's init, so sibling loops may reuse J):
     INV holds on entry (asserted); the loop state is havocked and INV
     assumed (an arbitrary iteration); if J < N, one body iteration runs,
     then J++, INV is asserted (preservation) and the path ends. Otherwise
     execution continues after the loop from an arbitrary state with INV and
     J >= N. Sound for the claims after the loop iff HAVOC covers everything
     the loop writes that is read later: the loop's locals and the descriptor
     fields of the probes (other entries are never read by the claims).
   Probes: pf_q (an instruction), pf_pk (an account position in it), pf_qa
   (an address table). Nondet, fixed before the call. */
static ulong pf_q, pf_pk, pf_qa;
/* PFCHK: which assertions are active (localization): per loop, bit 0 entry
   and bit 1 preservation; J: 1|2, K: 4|8, A: 16|32; claims: 64; reads
   (txn-reads overlay): 128; writes (txn-writes overlay): 256 */
#ifndef PFCHK
#define PFCHK 127
#endif
#include <stddef.h>
#define PF_ASSERT(bit, c) ((PFCHK & (bit)) ? sassert(c) : (void)0)
#define PF_FOR_(J, N, INV, HAVOC, B)                                        \
  for (ulong J = 0UL, J##_pf_i0 = i,                                        \
             _pf_go_##J = (PF_ASSERT(B, INV), (void)(HAVOC), assume(INV),   \
                           (ulong)(J < (N)));                               \
       _pf_go_##J;                                                          \
       _pf_go_##J = 0, J++, PF_ASSERT(2 * (B), INV), assume(0))
#define PF_FOR(J, N, INV, HAVOC) PF_FOR_(J, N, INV, HAVOC, PF_BIT_##INV)
/* a loop with no init that steps its state itself: for( ; C; STEP ) */
#define PF_WHILE_(C, STEP, INV, HAVOC, B)                                   \
  PF_ASSERT(B, INV); HAVOC; assume(INV);                                    \
  if (C)                                                                    \
    for (int _pf_once_w = 1; _pf_once_w;                                    \
         _pf_once_w = 0, STEP, PF_ASSERT(2 * (B), INV), assume(0))
#define PF_WHILE(C, STEP, INV, HAVOC) PF_WHILE_(C, STEP, INV, HAVOC, PF_BIT_##INV)
#define PF_BIT_PF_INV_J 1
#define PF_BIT_PF_INV_K 4
#define PF_BIT_PF_INV_A 16
#define PF_BIT_PF_INV_P1 1
#define PF_BIT_PF_INV_P2 4
#define PF_BIT_PF_INV_E 16

#define PF_Q (&parsed->instr[pf_q])
/* I1(q) and I2(q): the probe instruction, once parsed, lies below i, has a
   program id in range, and its probe account byte is <= max_acct */
#define PF_I12(DONE)                                                        \
  (!(DONE) ||                                                               \
   ((ulong)PF_Q->acct_off + PF_Q->acct_cnt <= i &&                          \
    (ulong)PF_Q->data_off + PF_Q->data_sz <= i &&                           \
    0UL < PF_Q->program_id && (ulong)PF_Q->program_id < (ulong)acct_addr_cnt && \
    (!(pf_pk < PF_Q->acct_cnt) || payload[PF_Q->acct_off + pf_pk] <= max_acct)))
/* outer instruction loop */
/* consumption: every instruction takes at least MIN_INSTR_SZ (3) bytes,
   every address table at least 35: 32 (address) + 1 + 1 (two compact-u16
   counts) + 1 (writable_cnt + readonly_cnt >= 1, checked in the body), one
   more than the parser's MIN_ADDR_LUT_SIZE (34). j_pf_i0: i at loop entry, a
   ghost. The footprint claim (ret <= FD_TXN_MAX_SZ = 854) rests on this byte
   budget, and needs 35: with 34, 64 instructions + 25 tables fit in 1232
   bytes and footprint(64, 25) = 862. */
#ifndef PF_ALT_MIN   /* bytes per address table in the invariant (35; a
                        mutant's own invariant may need less) */
#define PF_ALT_MIN 35UL
#endif
#define PF_INV_J (i <= payload_sz && j <= instr_cnt && i >= j_pf_i0 + 3UL * j && \
                  PF_I12(pf_q < j))
#define PF_HAVOC_J                                                          \
  (j = nd_ulong(), i = nd_ulong(), max_acct = (uchar)nd_ulong(),            \
   (pf_q < instr_cnt                                                        \
    ? (void)(PF_Q->program_id = (uchar)nd_ulong(), PF_Q->acct_cnt = (ushort)nd_ulong(), \
             PF_Q->data_sz = (ushort)nd_ulong(), PF_Q->acct_off = (ushort)nd_ulong(),   \
             PF_Q->data_off = (ushort)nd_ulong())                           \
    : (void)0))
/* inner account-index loop (i is the instruction's acct_off, not changed) */
#define PF_INV_K                                                            \
  (k <= acct_cnt &&                                                         \
   (!(pf_q < j) || !(pf_pk < PF_Q->acct_cnt) ||                             \
    payload[PF_Q->acct_off + pf_pk] <= max_acct) &&                         \
   (!(pf_q == j) || !(pf_pk < k) || payload[i + pf_pk] <= max_acct))
#define PF_HAVOC_K (k = nd_ulong(), max_acct = (uchar)nd_ulong())
/* address-table loop (V0) */
#define PF_A (&address_tables[pf_qa])
#define PF_INV_A                                                            \
  (i <= payload_sz && j <= addr_table_cnt && i >= j_pf_i0 + PF_ALT_MIN * j &&    \
   PF_I12(pf_q < instr_cnt) &&                                              \
   (!(pf_qa < j) ||                                                         \
    ((ulong)PF_A->addr_off + FD_TXN_ACCT_ADDR_SZ <= i &&                    \
     (ulong)PF_A->writable_off + PF_A->writable_cnt <= i &&                 \
     (ulong)PF_A->readonly_off + PF_A->readonly_cnt <= i)))
#define PF_HAVOC_A                                                          \
  (j = nd_ulong(), i = nd_ulong(),                                          \
   addr_table_adtl_writable_cnt = nd_ulong(), addr_table_adtl_cnt = nd_ulong(), \
   (pf_qa < addr_table_cnt                                                  \
    ? (void)(PF_A->addr_off = (ushort)nd_ulong(), PF_A->writable_cnt = (uchar)nd_ulong(), \
             PF_A->readonly_cnt = (uchar)nd_ulong(), PF_A->writable_off = (ushort)nd_ulong(), \
             PF_A->readonly_off = (ushort)nd_ulong())                       \
    : (void)0))

/* ---- reads (proofs/txn-reads.sed; PFCHK bit 128): invariant B ----
   every read [x, x+n) lies inside the caller's buffer of original_payload_sz
   bytes (no wrap). */
#define PF_RDOK(x, n)                                                       \
  PF_ASSERT(128, (ulong)(x) + (n) >= (ulong)(x) &&                          \
                 (ulong)(x) + (n) <= original_payload_sz)
#define PF_RD(x) (PF_RDOK((x), 1UL), payload[x])
#define PF_RD2(x) (PF_RDOK((x), 2UL), fd_ushort_load_2(payload + (x)))
#define PF_RD4(x) (PF_RDOK((x), 4UL), fd_uint_load_4(payload + (x)))
#define PF_CU16_SZ(w)                                                       \
  (PF_ASSERT(128, (w) <= payload_sz && payload_sz <= original_payload_sz),  \
   fd_cu16_dec_sz(payload + (w), payload_sz - (w)))
#define PF_CU16_FIXED(w, n) (PF_RDOK((w), (n)), fd_cu16_dec_fixed(payload + (w), (n)))

/* ---- writes (proofs/txn-writes.sed; PFCHK bit 256): contract W ----
   an instruction / address-table entry accessed in the descriptor ends
   within FD_TXN_MAX_SZ (the caller's out_buf room), also on failing parses.
   Address tables follow instr[parsed->instr_cnt] (fd_txn_get_address_tables). */
#define PF_WR_INSTR(j)                                                      \
  (*(PF_ASSERT(256, offsetof(fd_txn_t, instr) +                             \
                    ((ulong)(j) + 1UL) * sizeof(fd_txn_instr_t) <= FD_TXN_MAX_SZ), \
     &parsed->instr[j]))
#define PF_WR_ALT(j)                                                        \
  (*(PF_ASSERT(256, offsetof(fd_txn_t, instr) +                             \
                    (ulong)parsed->instr_cnt * sizeof(fd_txn_instr_t) +     \
                    ((ulong)(j) + 1UL) * sizeof(fd_txn_acct_addr_lut_t) <= FD_TXN_MAX_SZ), \
     &address_tables[j]))

/* ---- V1 (PROOF=2) ---- */
/* pass 1, instruction headers: 4 bytes each; q's program id in range */
#define PF_PID_OK (0UL < PF_Q->program_id && (ulong)PF_Q->program_id < (ulong)acct_addr_cnt)
#define PF_INV_P1 (i <= payload_sz && j <= instr_cnt && i >= j_pf_i0 + 4UL * j && \
                   (!(pf_q < j) || PF_PID_OK))
#define PF_HAVOC_P1                                                         \
  (j = nd_ulong(), i = nd_ulong(),                                          \
   (pf_q < instr_cnt                                                        \
    ? (void)(PF_Q->program_id = (uchar)nd_ulong(), PF_Q->acct_cnt = (ushort)nd_ulong(), \
             PF_Q->data_sz = (ushort)nd_ulong())                            \
    : (void)0))
/* pass 2, payloads: i only grows (i >= i0: without it the non-strict claim on
   acct_addr_off fails spuriously, since the consumed size is the final i);
   q's extents below i and its probe index byte in range */
#define PF_INV_P2                                                           \
  (i <= payload_sz && j <= instr_cnt && i >= j_pf_i0 &&                     \
   (!(pf_q < instr_cnt) || PF_PID_OK) &&                                    \
   (!(pf_q < j) ||                                                          \
    ((ulong)PF_Q->acct_off + PF_Q->acct_cnt <= i &&                         \
     (ulong)PF_Q->data_off + PF_Q->data_sz <= i &&                          \
     (!(pf_pk < PF_Q->acct_cnt) ||                                          \
      (ulong)payload[PF_Q->acct_off + pf_pk] < (ulong)acct_addr_cnt))))
#define PF_HAVOC_P2                                                         \
  (j = nd_ulong(), i = nd_ulong(),                                          \
   (pf_q < instr_cnt                                                        \
    ? (void)(PF_Q->acct_off = (ushort)nd_ulong(), PF_Q->data_off = (ushort)nd_ulong()) \
    : (void)0))
/* inner account-index loop of pass 2 (memory is not havocked: earlier facts
   persist; acct_off is the value of i before the loop) */
#define PF_INV_E                                                            \
  (acct_off <= i && i <= end && end == acct_off + acct_cnt && end <= payload_sz && \
   (!(pf_q == j) || !(pf_pk < i - acct_off) ||                              \
    (ulong)payload[acct_off + pf_pk] < (ulong)acct_addr_cnt))
#define PF_HAVOC_E (i = nd_ulong())
#endif

#include TXN_C

/* summaries: logging (unused on the parse path) */
long fd_log_wallclock(void) { return 0L; }
char const *fd_log_private_0(char const *fmt, ...) { (void)fmt; return ""; }
void fd_log_private_1(int level, long now, char const *file, int line,
                      char const *func, char const *msg) {
  (void)level; (void)now; (void)file; (void)line; (void)func; (void)msg;
}
void fd_log_private_2(int level, long now, char const *file, int line,
                      char const *func, char const *msg) {
  (void)level; (void)now; (void)file; (void)line; (void)func; (void)msg;
  sassert(0);
  assume(0);
  __builtin_unreachable();
}

#if PROOF
/* CLSEL=n: only the n-th CLAIM_CHECK in the translation unit (localization) */
#ifndef CLSEL
#define CLSEL -1
#endif
#define CLAIM_CHECK_(c, n) ((CLSEL < 0 || CLSEL == (n)) ? PF_ASSERT(64, c) : (void)0)
#define CLAIM_CHECK(c) CLAIM_CHECK_(c, __COUNTER__)
#else
#define CLAIM_CHECK(c) sassert(c)
#endif
#include "txn_claims.h"

/* extern: nondet contents (no zero-initializer lowering) */
extern uchar payload[SZMAX];
extern uchar __attribute__((aligned(alignof(fd_txn_t)))) out[FD_TXN_MAX_SZ];

int main(void) {
  ulong sz = nd_ulong();
  assume(0UL < sz && sz <= SZMAX);
  ulong pi = nd_ulong(), pk = nd_ulong(), qa = nd_ulong();
#if PROOF
  pf_q = pi; pf_pk = pk; pf_qa = qa;
#if PROOF == 1
  assume((payload[0] & 0x80) == 0); /* legacy / V0 (the V1 loops are not cut) */
#else
  assume((payload[0] & 0x80) != 0); /* V1 (the legacy / V0 loops are not cut) */
#endif
#endif
  ulong psz = 0;
  ulong ret = fd_txn_parse_core(payload, sz, out, NULL, STRICT ? NULL : &psz);
  if (!ret) return 0;
  fd_txn_t const *t = (fd_txn_t const *)out;
#if CLAIM == 0
  /* non-strict: the consumed size is within the payload, and the extents
     are within the consumed size (T2 against psz) */
  ulong lim = STRICT ? sz : psz;
  CLAIM_CHECK(lim <= sz);
  txn_claims(payload, lim, t, ret, pi, pk, qa);
#elif CLAIM == 1
  sassert(t->transaction_version != FD_TXN_VLEGACY);
#elif CLAIM == 2
  sassert(!(t->transaction_version == FD_TXN_V0 && t->addr_table_lookup_cnt > 0));
#elif CLAIM == 3
  sassert(t->transaction_version != FD_TXN_V1);
#elif CLAIM == 4
  sassert(!(t->instr_cnt > 0 && t->instr[0].acct_cnt > 0));
#endif
  (void)pi; (void)pk; (void)qa;
  return 0;
}
