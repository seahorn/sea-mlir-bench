# Labelled mutation (TX-PARSE): V0 address tables do not check that
# writable_cnt bytes are left (fd_txn_parse.c:339). Expect T2 (table extent).
339s/CHECK_LEFT( writable_cnt                  );//
