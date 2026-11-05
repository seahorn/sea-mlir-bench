# revert 5f588f335 (stream): no 31-bit limit on a stream send window
s/__builtin_uadd_overflow( stream->tx_wnd, increment, &tx_wnd_new ) || tx_wnd_new>0x7fffffffU/__builtin_uadd_overflow( stream->tx_wnd, increment, \&tx_wnd_new )/
