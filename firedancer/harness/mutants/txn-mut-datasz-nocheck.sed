# Labelled mutation (TX-PARSE): the legacy/V0 instruction loop does not check
# that data_sz bytes are left (fd_txn_parse.c:300). Expect T2 (data extent).
300s/CHECK_LEFT( data_sz                         );//
