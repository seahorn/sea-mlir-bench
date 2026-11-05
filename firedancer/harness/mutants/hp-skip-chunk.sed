# HPACK C3 control: a string chunk ignores the bytes left in the fragment
s|ulong chunk_sz = fd_ulong_min( srcsz, skip->integer );|ulong chunk_sz = skip->integer;|
