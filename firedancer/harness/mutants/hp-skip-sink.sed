# HPACK C3 control: Huffman chunks up to the full sink (256 bytes, up to 512 decoded)
s|chunk_sz = fd_ulong_min( chunk_sz, sizeof(sink)/2UL );|chunk_sz = fd_ulong_min( chunk_sz, sizeof(sink) );|
