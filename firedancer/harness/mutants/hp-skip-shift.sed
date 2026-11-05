# HPACK C3 control: allow a ninth continuation octet (shift 56)
s|if( FD_UNLIKELY( skip->int_shift==56U ) ) goto fail;|if( FD_UNLIKELY( skip->int_shift==63U ) ) goto fail;|
