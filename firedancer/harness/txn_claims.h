// TX-PARSE claims on a successful fd_txn_parse_core (strict: payload_sz_opt
// NULL). Shared by txn_parse.c (verification) and test_txn_claims.c (native
// run on Firedancer's fixtures). CLAIM_CHECK(cond) is sassert in the harness
// and a counted check natively.
//
// T1 footprint: ret == fd_txn_footprint(instr_cnt, addr_table_lookup_cnt) and
//    ret <= FD_TXN_MAX_SZ (the out-buffer contract).
// T2 extents: every offset/count pair of the descriptor is inside the
//    payload [0, sz): signatures, message start, account addresses, recent
//    blockhash, each instruction's account-index and data ranges, each
//    address table's address, writable and readonly ranges.
// T3 header and indices: 1 <= signature_cnt <= FD_TXN_SIG_MAX; readonly_signed
//    < signature_cnt; signature_cnt + readonly_unsigned <= acct_addr_cnt <=
//    FD_TXN_ACCT_ADDR_MAX; each program_id in (0, acct_addr_cnt); the account
//    index byte at a probe position (instruction pi, index pk) is below
//    acct_addr_cnt + addr_table_adtl_cnt.

#ifndef TXN_CLAIMS_H
#define TXN_CLAIMS_H

// TXN_PROBE_ONLY (proof mode): the per-instruction and per-table checks are
// made for the probe instruction pi and probe table qa only (pi, qa nondet:
// together they cover every index).
static void txn_claims(uchar const *payload, ulong sz, fd_txn_t const *t,
                       ulong ret, ulong pi, ulong pk, ulong qa) {
  ulong instr_cnt = t->instr_cnt;
  ulong alt_cnt = t->addr_table_lookup_cnt;
  /* T1 */
  CLAIM_CHECK(ret == fd_txn_footprint(instr_cnt, alt_cnt));
  CLAIM_CHECK(ret <= FD_TXN_MAX_SZ);
  /* T3 header */
  CLAIM_CHECK(1UL <= t->signature_cnt && t->signature_cnt <= FD_TXN_SIG_MAX);
  CLAIM_CHECK(t->readonly_signed_cnt < t->signature_cnt);
  CLAIM_CHECK((ulong)t->signature_cnt + t->readonly_unsigned_cnt <= t->acct_addr_cnt);
  CLAIM_CHECK(t->acct_addr_cnt <= FD_TXN_ACCT_ADDR_MAX);
  /* T2 header extents */
  CLAIM_CHECK((ulong)t->signature_off + FD_TXN_SIGNATURE_SZ * t->signature_cnt <= sz);
  CLAIM_CHECK((ulong)t->message_off < sz);
  CLAIM_CHECK((ulong)t->acct_addr_off + FD_TXN_ACCT_ADDR_SZ * t->acct_addr_cnt <= sz);
  CLAIM_CHECK((ulong)t->recent_blockhash_off + FD_TXN_BLOCKHASH_SZ <= sz);
  /* per instruction (unrolled to the harness's instruction bound) */
#ifdef TXN_PROBE_ONLY
  if (pi < instr_cnt) {   /* no loop: the probe stands for every index */
    fd_txn_instr_t const *in = &t->instr[pi];
#else
  for (ulong j = 0; j < TXN_INSTR_BOUND; j++) {
    if (j >= instr_cnt) break;
    fd_txn_instr_t const *in = &t->instr[j];
#endif
    CLAIM_CHECK(0UL < in->program_id && in->program_id < t->acct_addr_cnt);
    CLAIM_CHECK((ulong)in->acct_off + in->acct_cnt <= sz);
    CLAIM_CHECK((ulong)in->data_off + in->data_sz <= sz);
  }
  /* account-index probe */
  if (pi < instr_cnt) {
    fd_txn_instr_t const *in = &t->instr[pi];
    if (pk < in->acct_cnt)
      CLAIM_CHECK((ulong)payload[in->acct_off + pk] <
                  (ulong)t->acct_addr_cnt + t->addr_table_adtl_cnt);
  }
  /* address tables */
  fd_txn_acct_addr_lut_t const *alt = fd_txn_get_address_tables_const(t);
#ifdef TXN_PROBE_ONLY
  if (qa < alt_cnt) {
    ulong j = qa;
#else
  for (ulong j = 0; j < TXN_ALT_BOUND; j++) {
    if (j >= alt_cnt) break;
#endif
    CLAIM_CHECK((ulong)alt[j].addr_off + FD_TXN_ACCT_ADDR_SZ <= sz);
    CLAIM_CHECK((ulong)alt[j].writable_off + alt[j].writable_cnt <= sz);
    CLAIM_CHECK((ulong)alt[j].readonly_off + alt[j].readonly_cnt <= sz);
  }
}

#endif
