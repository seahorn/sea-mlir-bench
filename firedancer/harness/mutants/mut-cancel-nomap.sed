# Labelled mutation: cancel leaves the slot in the map.
/^void$/,/^}$/{/fd_tpu_reasm_cancel( fd_tpu_reasm_t/,/^}$/{/smap_remove( reasm, slot );/d}}
