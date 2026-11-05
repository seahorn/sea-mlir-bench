# HPACK C1/C2 control: the scratch bound assumes one decoded byte per encoded byte
s|return enc_sz\*2UL;|return enc_sz;|
