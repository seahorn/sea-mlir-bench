# pre-14554f619 behaviour: a SETTINGS_INITIAL_WINDOW_SIZE change is not
# applied to open streams (the callback did not exist)
/^fd_grpc_h2_initial_window_update(/,/^}/{
s/^  for( uint i=0U; i<client->stream_cnt; i++ ) {/  for( uint i=0U; i<0U; i++ ) {/
}
