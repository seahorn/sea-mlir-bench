# Labelled mutation, the bb4688cd fault class (copy runs past the slot's
# payload into the next slot's header): the size check admits
# sizeof(fd_txn_m_t) extra bytes.
s/(sz1>FD_TPU_MTU)/(sz1>FD_TPU_MTU+sizeof(fd_txn_m_t))/
