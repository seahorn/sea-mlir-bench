# revert the 791176436 DATA-window change: check each chunk, not the rest
# of the frame, against the receive windows
s/^  else wnd_sz = frame_wnd_sz;/  else if( FD_UNLIKELY( conn->rx_frame_flags \& FD_H2_FLAG_PADDED ) ) wnd_sz += 1U + conn->rx_pad_rem;/
s/if( FD_UNLIKELY( frame_wnd_sz > conn->rx_wnd ) )/if( FD_UNLIKELY( wnd_sz > conn->rx_wnd ) )/
s/if( FD_UNLIKELY( frame_wnd_sz > stream->rx_wnd ) )/if( FD_UNLIKELY( wnd_sz > stream->rx_wnd ) )/
