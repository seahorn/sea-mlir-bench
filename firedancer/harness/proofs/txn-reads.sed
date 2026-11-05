# Proof overlay (not a mutant): every payload read of fd_txn_parse_core goes
# through a checked accessor (txn_parse.c PF_RD*, PF_CU16_*; PFCHK bit 128):
# the discharge of the parser's invariant B (reads stay inside the caller's
# buffer, original_payload_sz bytes). Text substitutions, line-agnostic; apply
# after a cut overlay. fd_cu16_dec_sz is not instrumented inside: it reads
# buf[k] only when bytes_avail >= k+1 (fd_compact_u16.h:61-71), so its
# contract needs where <= payload_sz (bytes_avail does not underflow).
s/payload\[ \([^]]*\) \]/PF_RD( \1 )/g
s/fd_uint_load_4( payload+i )/PF_RD4( i )/
s/fd_uint_load_4( payload + config_values_off + 4UL\*(num_config_values-1UL) )/PF_RD4( config_values_off + 4UL*(num_config_values-1UL) )/
s/fd_ushort_load_2( payload+i )/PF_RD2( i )/
s/fd_cu16_dec_sz( payload+_where, payload_sz-_where )/PF_CU16_SZ( _where )/
s/fd_cu16_dec_fixed( payload+_where, _out_sz )/PF_CU16_FIXED( _where, _out_sz )/
