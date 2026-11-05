# ABLATION ONLY, not a proof overlay: drop the
# split-copy memcpys of fd_h2_rbuf_pop / fd_h2_rbuf_pop_copy (symbolic
# part0 / part1 lengths). Wrapped header bytes become stale.
s/^    fd_memcpy( scratch,       lo,   part0 );/    (void)0;/
s/^    fd_memcpy( scratch+part0, buf0, part1 );/    (void)0;/
s/^    fd_memcpy(                  out,         lo,   part0 );/    (void)0;/
s/^    fd_memcpy( (void \*)( (ulong)out+part0 ), buf0, part1 );/    (void)0;/
