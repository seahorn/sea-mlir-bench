# revert 5f588f335 (connection): no 31-bit limit on the conn send window
s/__builtin_uadd_overflow( tx_wnd, increment, &tx_wnd_new ) || tx_wnd_new>0x7fffffffU/__builtin_uadd_overflow( tx_wnd, increment, \&tx_wnd_new )/
