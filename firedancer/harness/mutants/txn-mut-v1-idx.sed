# Labelled mutation (TX-PARSE V1): pass 2 does not range-check account index
# bytes (fd_txn_parse.c:184). Expect T3 (account-index probe).
184s/CHECK( payload\[ i \]<acct_addr_cnt );/;/
