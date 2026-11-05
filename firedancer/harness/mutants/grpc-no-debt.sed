# an initial-window shrink below consumed credit clamps to 0 and forgets
# the deficit (no tx_wnd_debt)
s/stream->tx_wnd_debt =       fd_long_max( -wnd, 0L );/stream->tx_wnd_debt = 0L;/
