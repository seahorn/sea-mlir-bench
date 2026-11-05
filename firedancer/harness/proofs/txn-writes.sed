# Proof overlay (not a mutant): descriptor entry accesses of fd_txn_parse_core
# go through checked lvalues (txn_parse.c PF_WR_*; PFCHK bit 256): the
# documented contract (fd_txn.h, fd_txn_parse_core) "nothing will be written
# beyond FD_TXN_MAX_SZ bytes", also on failure. Header fields are fixed
# offsets inside sizeof(fd_txn_t). Line-agnostic text substitutions.
s/parsed->instr\[ j \]\./PF_WR_INSTR( j )./g
s/address_tables\[ j \]\./PF_WR_ALT( j )./g
