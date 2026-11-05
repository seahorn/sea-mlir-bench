# Historical control: revert 071c0006 ("tpu_reasm: don't cancel reasm if
# stream reordered"): an out-of-order fragment (data_off > sz) cancels the slot.
/if( FD_UNLIKELY( data_off>sz0 ) ) {/a\    fd_tpu_reasm_cancel( reasm, slot );
