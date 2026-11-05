# HPACK C2 control: revert of 791176436 (decoded Huffman name bound)
/if( FD_UNLIKELY( buf.last-scratch_>USHORT_MAX ) ) return FD_H2_ERR_COMPRESSION;/d
