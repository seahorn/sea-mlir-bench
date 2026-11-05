# Labelled mutation (TX-PARSE V0): an address table may have no entries (the
# check 1 <= writable_cnt + readonly_cnt, fd_txn_parse.c:345, is gone). A table
# then costs 34 bytes, 64 instructions + 25 tables fit in 1232, and table 25
# is written at footprint(64, 25) = 862 > FD_TXN_MAX_SZ. Expect PFCHK 256.
345s/CHECK( (ushort)1   <=writable_cnt+readonly_cnt          );//
