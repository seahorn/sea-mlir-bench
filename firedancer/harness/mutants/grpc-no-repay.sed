# a stream WINDOW_UPDATE does not repay the initial-window debt
s/if( FD_UNLIKELY( repay>0L ) ) {/if( 0 ) {/
