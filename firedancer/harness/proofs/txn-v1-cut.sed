# Proof overlay (not a mutant): the V1 loops of fd_txn_parse_core become
# inductive cuts (txn_parse.c, PROOF=2). One-for-one header replacements; the
# bodies are untouched. Lines 163 and 178 have the same text: addressed by
# line. The inner loop at 184 has no init and steps i itself: PF_WHILE.
163s/^    for( ulong j=0UL; j<instr_cnt; j++ ) {$/    PF_FOR( j, instr_cnt, PF_INV_P1, PF_HAVOC_P1 ) {/
178s/^    for( ulong j=0UL; j<instr_cnt; j++ ) {$/    PF_FOR( j, instr_cnt, PF_INV_P2, PF_HAVOC_P2 ) {/
184s/^      for( ; i<end; i++ ) CHECK/      PF_WHILE( i<end, i++, PF_INV_E, PF_HAVOC_E ) CHECK/
