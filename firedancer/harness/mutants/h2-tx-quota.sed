# tx quota ignores the stream window
s/long quota = fd_long_min( conn->tx_wnd, stream->tx_wnd );/long quota = (long)conn->tx_wnd;/
