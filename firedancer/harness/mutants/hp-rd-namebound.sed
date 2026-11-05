# HPACK C1/C2 control: the value-length byte may lie at end
s|if( FD_UNLIKELY( rd->src+name_len >= end ) ) return FD_H2_ERR_COMPRESSION;|if( FD_UNLIKELY( rd->src+name_len > end ) ) return FD_H2_ERR_COMPRESSION;|
