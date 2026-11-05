# HPACK C1 control (fd_hpack_private.h): the 8-byte fast path one byte early
s|if( FD_LIKELY( rd->src+8 <= rd->src_end ) ) {|if( FD_LIKELY( rd->src+7 <= rd->src_end ) ) {|
