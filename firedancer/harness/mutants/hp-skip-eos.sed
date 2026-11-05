# HPACK C3 control: no early EOS rejection (not a safety check: H still
# accepts row 256; only S's "row < 256" is lost)
/if( FD_UNLIKELY( (ctx.fstate&0x1ffU)==256U ) ) goto fail;/d
