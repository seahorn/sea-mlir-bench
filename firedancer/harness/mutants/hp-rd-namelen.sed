# HPACK C1/C2 control: revert of 791176436 (encoded name bound before the ushort narrowing)
s|if( FD_UNLIKELY( name_len>USHORT_MAX     ) ) return FD_H2_ERR_COMPRESSION;|if( FD_UNLIKELY( name_len==ULONG_MAX     ) ) return FD_H2_ERR_COMPRESSION;|
