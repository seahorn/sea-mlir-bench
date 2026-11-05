# Labelled mutation (TX-PARSE): the final account-index range check is gone
# (fd_txn_parse.c:363). Expect T3 (account-index probe).
363s/CHECK( max_acct < acct_addr_cnt + addr_table_adtl_cnt );//
