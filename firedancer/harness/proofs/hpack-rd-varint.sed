# Proof overlay (not a mutant) on fd_hpack_private.h, for C1 (hpack_rd.c):
# the varint's fast-path 8-byte load and slow-path copy are checked (HP_RDOK).
s/enc = fd_ulong_load_8( rd->src );/enc = (HP_RDOK( rd->src, 8UL ), fd_ulong_load_8( rd->src ));/
s/fd_memcpy( &enc, rd->src, sz );/HP_RDOK( rd->src, sz ); fd_memcpy( \&enc, rd->src, sz );/
# M-CTZ (model): the export has no llvm.cttz (fd_ulong_find_lsb is
# __builtin_ctzl); hp_find_lsb (hpack_common.h) is a branchy model, checked
# equal to __builtin_ctzl natively (check_hpack_models.sh). sz_run != 0 here.
s/int   sz_bits = fd_ulong_find_lsb( sz_run )+1;/int   sz_bits = hp_find_lsb( sz_run )+1;/
