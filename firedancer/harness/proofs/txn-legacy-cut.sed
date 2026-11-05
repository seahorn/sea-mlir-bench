# Proof overlay (not a mutant): the legacy/V0 loops of fd_txn_parse_core become
# inductive cuts, PF_FOR(var, bound, INV, HAVOC) defined by txn_parse.c
# (PROOF=1). Only the loop header lines change (one-for-one, so line-addressed
# mutants still apply); the loop bodies are untouched. The V1 loops (163, 178)
# are not cut: PROOF=1 restricts the payload to legacy/V0.
289s/^  for( ulong j=0UL; j<instr_cnt; j++ ) {$/  PF_FOR( j, instr_cnt, PF_INV_J, PF_HAVOC_J ) {/
298s/^    for( ulong k=0; k<acct_cnt; k++ ) {/    PF_FOR( k, acct_cnt, PF_INV_K, PF_HAVOC_K ) {/
333s/^    for( ulong j=0; j<addr_table_cnt; j++ ) {$/    PF_FOR( j, addr_table_cnt, PF_INV_A, PF_HAVOC_A ) {/
