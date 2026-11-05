# h2fc proof overlay on fd_h2_rbuf.h: fd_h2_rbuf_push keeps its pointer and
# offset updates (and the free-space CRIT) but drops the payload copies.
# The flow-control claims read no ring bytes written by a push; the RX
# harness writes its ring bytes directly. (Symbolic-length memcpy into a
# ring at a symbolic offset made every OP 4 / OP 5 query time out.)
s/^    fd_memcpy( hi,                    chunk,         part1 );/    (void)part1;/
s/^    fd_memcpy( buf0, (void \*)( (ulong)chunk+part1 ), part2 );/    (void)chunk;/
s/^  fd_memcpy( hi, chunk, chunk_sz );/  (void)chunk;/
