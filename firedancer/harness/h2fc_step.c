// h2 + gRPC flow control (firedancer 37c658197, src/waltz/h2 + grpc):
// one inductive step against RFC 9113 6.9 ghost windows.
//
//
// Code under test, unchanged: fd_h2_conn.c, fd_h2_tx.c (copies, for
// mutants) and the gRPC flow-control callbacks extracted verbatim from
// fd_grpc_client.c by run_h2fc.sh (grpc_fc_cb.c). The only copied logic is
// the stream-refill condition of fd_grpc_client_service_streams (OP 7).
//
// State: one client conn, up to NS gRPC streams (client->streams), all
// fields havocked under Inv. Ghosts (RFC 9113 6.9, signed):
//   E_c, E_s[k]: peer-granted send windows (conn, stream): initial +
//     SETTINGS deltas + WINDOW_UPDATEs - bytes sent;
//   R_c, R_s[k]: our receive windows as the peer sees them: advertised -
//     whole DATA frames sent by the peer (frame length incl. padding).
// Inv:
//   T: conn.tx_wnd == E_c <= 2^31-1; per stream: tx_wnd, debt in
//      [0, 2^31-1], tx_wnd==0 || debt==0, tx_wnd - debt == E_s[k],
//      E_s[k] >= P - (2^31-1) (P = peer initial window);
//   R: rx_wnd <= rx_wnd_max <= 2^31-1; Frem = rest of the current DATA
//      frame (data + pad length + padding); rx_wnd - Frem == R_c >= 0;
//      per OPEN / CLOSING_TX stream: rx_wnd <= S (our initial window),
//      rx_wnd - Frem_k == R_s[k] >= 0.
// Step: one of OP 1..8 (below), then: the error decisions match the RFC,
// and on a live conn Inv holds with the RFC-updated ghosts.
#include "seahorn/seahorn.h"
#include <stddef.h>
#include <stdint.h>
#include "util/fd_util_base.h"
#include "util/log/fd_log.h"
#undef FD_COMPILER_MFENCE
#define FD_COMPILER_MFENCE() ((void)0)
#undef FD_LIKELY
#undef FD_UNLIKELY
#define FD_LIKELY(c) (c)
#define FD_UNLIKELY(c) (c)
/* a CRIT is a checked claim (corrupt state / API misuse) */
#undef FD_LOG_CRIT
#define FD_LOG_CRIT(a) sassert(0)
#undef FD_LOG_WARNING
#define FD_LOG_WARNING(a) ((void)0)

/* the copied, overlaid fd_h2_rbuf.h (run_h2fc.sh, proofs/h2fc-rbuf-nodata)
   first: its include guard keeps the original out */
#include "fd_h2_rbuf.h"
#include "fd_h2_conn.c"
#include "fd_h2_tx.c"
#include "fd_grpc_client_private.h"
#include "grpc_fc_cb.c"

extern ulong  nd_ulong(void);
extern uint   nd_uint(void);
extern ushort nd_ushort(void);
extern uchar  nd_uchar(void);
extern int    nd_int(void);
extern long   nd_long(void);

/* ndr: a nondet value in [lo, hi]. Under SeaHorn: nd + assume. The native
   runner (h2fc_native.c, -DH2FC_NATIVE) draws it in range, biased to the
   ends, so its random trials pass the pre-state assumes. */
#ifdef H2FC_NATIVE
extern ulong ndr( ulong lo, ulong hi );
#else
static ulong ndr( ulong lo, ulong hi ) {
  ulong v = nd_ulong(); assume( v>=lo && v<=hi ); return v;
}
#endif

#ifndef OP
#define OP 1
#endif
#ifndef CLAIM
#define CLAIM 0
#endif
#define REACH(k, c) do { if (CLAIM == (k)) sassert(!(c)); } while (0)

#define MAXW 0x7fffffffL
#ifndef NS
#define NS 2   /* -DNS=1: ablation */
#endif

static fd_grpc_client_t   client;
static fd_grpc_h2_stream_t st[NS];
static long E_c, E_s[NS], R_c, R_s[NS];
static uint rst_code;
static int  rst_calls;

/* ---- callbacks: gRPC's flow-control ones (verbatim), stubs elsewhere ---- */
static fd_h2_stream_t * h_query( fd_h2_conn_t * conn, uint id ) {
  (void)conn;
  for( ulong k=0; k<NS; k++ )
    if( k<client.stream_cnt && st[k].s.stream_id==id ) return &st[k].s;
  return NULL;
}
static void h_rst( fd_h2_conn_t * conn, fd_h2_stream_t * s, uint code, int by ) {
  (void)conn; (void)s; (void)by; rst_code = code; rst_calls++;
}
static void h_data( fd_h2_conn_t * conn, fd_h2_stream_t * s, void const * d, ulong sz, ulong fl ) {
  (void)conn; (void)s; (void)d; (void)sz; (void)fl;
}
static void h_conn_est( fd_h2_conn_t * conn ) { (void)conn; }
static void h_conn_final( fd_h2_conn_t * conn, uint e, int by ) { (void)conn; (void)e; (void)by; }

static fd_h2_callbacks_t const cb = {
  .stream_query          = h_query,
  .conn_established      = h_conn_est,
  .conn_final            = h_conn_final,
  .data                  = h_data,
  .rst_stream            = h_rst,
  .window_update         = fd_grpc_h2_window_update,
  .stream_window_update  = fd_grpc_h2_stream_window_update,
  .initial_window_update = fd_grpc_h2_initial_window_update,
};

/* ---- Inv ---- */
static int live( ulong k ) { return k<client.stream_cnt; }
static int rx_tracked( ulong k ) {
  return live(k) && ( st[k].s.state==FD_H2_STREAM_STATE_OPEN ||
                      st[k].s.state==FD_H2_STREAM_STATE_CLOSING_TX );
}
static long frem( void ) {
  fd_h2_conn_t const * c = client.conn;
  if( !c->rx_data_cnt_rem ) return 0;
  return (long)c->rx_data_cnt_rem +
         ( ( c->rx_frame_flags & FD_H2_FLAG_PADDED ) ? 1L + (long)c->rx_pad_rem : 0L );
}
static long frem_k( ulong k ) {
  return client.conn->rx_stream_id==st[k].s.stream_id ? frem() : 0L;
}
static int inv_t( void ) {
  fd_h2_conn_t const * c = client.conn;
  long P = (long)c->peer_settings.initial_window_size;
  if( !( P<=MAXW && (long)c->tx_wnd<=MAXW && (long)c->tx_wnd==E_c ) ) return 0;
  for( ulong k=0; k<NS; k++ ) {
    if( !live(k) ) continue;
    long w = (long)st[k].s.tx_wnd, d = st[k].tx_wnd_debt;
    if( !( w<=MAXW && d>=0 && d<=MAXW && ( w==0 || d==0 ) &&
           w-d==E_s[k] && E_s[k]>=P-MAXW ) ) return 0;
  }
  return 1;
}
static int inv_r( void ) {
  fd_h2_conn_t const * c = client.conn;
  long S = (long)c->self_settings.initial_window_size;
  long F = frem();
  if( !( (long)c->rx_wnd_max<=MAXW && c->rx_wnd<=c->rx_wnd_max && S<=MAXW ) ) return 0;
  if( !( (long)c->rx_wnd>=F && (long)c->rx_wnd-F==R_c ) ) return 0;
  for( ulong k=0; k<NS; k++ ) {
    if( !rx_tracked(k) ) continue;
    long w = (long)st[k].s.rx_wnd, Fk = frem_k(k);
    if( !( w<=S && w>=Fk && w-Fk==R_s[k] ) ) return 0;
  }
  return 1;
}
static int dead( void ) {
  return !!( client.conn->flags & (FD_H2_CONN_FLAGS_SEND_GOAWAY|FD_H2_CONN_FLAGS_DEAD) );
}

/* rbuf over buf[sz], with read / write positions at an arbitrary offset
   (exercises the wrap-around paths) */
static void rbuf_havoc( fd_h2_rbuf_t * r, uchar * buf, ulong sz ) {
  fd_h2_rbuf_init( r, buf, sz );
#ifdef H2FC_RBUF_OFF0   /* ablation: no wrap-around */
  ulong off = 0;
#else
  ulong off = ndr( 0, sz-1 );
#endif
  r->lo = r->hi = buf+off;
  r->lo_off = r->hi_off = ndr( 0, (1UL<<40) );
}

static uchar tx_buf[ 160 ];
static uchar rx_buf[ 48 ];
static uchar src[ 48 ];
static uchar chunk[ 32 ];

int main( void ) {
  fd_h2_conn_t * c = client.conn;
  c->ctx = &client;

  /* ---- havoc the pre-state (ranges by construction; Inv assumed below) ---- */
  c->tx_frame_p = NULL;
  c->flags = ndr( 0, 1 ) ? FD_H2_CONN_FLAGS_WINDOW_UPDATE : 0;
  c->conn_error = 0;
  c->self_settings.initial_window_size = (uint)ndr( 0, MAXW );
  c->self_settings.max_frame_size      = 16384U;  /* fd_h2 / gRPC never change it */
  c->peer_settings.initial_window_size = (uint)ndr( 0, MAXW );
  c->peer_settings.max_frame_size      = (uint)ndr( 0x4000U, 0xffffffU );
  c->tx_stream_next = 2U*(uint)ndr( 2, 0x3ffffffeU )+1U;  /* client: odd */
  c->rx_stream_next = 2U*(uint)ndr( 1, 0x3ffffffeU );
  c->stream_active_cnt[0] = (uint)ndr( NS, 0xffffff00U );
  c->stream_active_cnt[1] = (uint)ndr( NS, 0xffffff00U );
  c->rx_frame_flags  = (uchar)ndr( 0, 255 );
  c->rx_pad_rem      = (uchar)ndr( 0, 255 );
  c->setting_tx      = (uchar)ndr( 0, 255 );
  c->rx_data_cnt_rem = (uint)ndr( 0, 16384U );
  /* a frame in progress is on a used stream ID (rx1 errors otherwise) */
  c->rx_stream_id    = (uint)ndr( 1, 0x7fffffffU );
  assume( !c->rx_data_cnt_rem || fd_h2_rx_stream_used( c, c->rx_stream_id ) );

  client.stream_cnt = ndr( 0, NS );
  long P = (long)c->peer_settings.initial_window_size;
  long S = (long)c->self_settings.initial_window_size;
  for( ulong k=0; k<NS; k++ ) {
    client.streams[k] = &st[k];
    client.stream_ids[k] = st[k].s.stream_id = 2U*(uint)ndr( 0, ( c->tx_stream_next-3U )/2U )+1U;
    st[k].s.state = (uchar)ndr( FD_H2_STREAM_STATE_OPEN, FD_H2_STREAM_STATE_CLOSED );
    st[k].s.rx_aborted = 0;
    st[k].s.tx_wnd = (uint)ndr( 0, MAXW );
    st[k].tx_wnd_debt = st[k].s.tx_wnd ? 0L : (long)ndr( 0, (ulong)( MAXW-P ) );
  }
  assume( NS<2 || st[0].s.stream_id!=st[NS-1].s.stream_id );
  long F0 = frem();
  c->rx_wnd_max = (uint)ndr( 0, MAXW );
  c->rx_wnd     = (uint)ndr( (ulong)F0, c->rx_wnd_max );
  c->rx_wnd_wmark = (uint)ndr( 0, 0xffffffffU );
  c->tx_wnd     = (uint)ndr( 0, MAXW );
  for( ulong k=0; k<NS; k++ ) st[k].s.rx_wnd = (uint)ndr( (ulong)frem_k(k), (ulong)S );
  /* ghosts defined by Inv's equalities (same as havoc + assume); R_s of an
     untracked stream is unconstrained */
  E_c = (long)c->tx_wnd;
  R_c = (long)c->rx_wnd - F0;
  for( ulong k=0; k<NS; k++ ) {
    E_s[k] = (long)st[k].s.tx_wnd - st[k].tx_wnd_debt;
    R_s[k] = rx_tracked(k) ? (long)st[k].s.rx_wnd - frem_k(k) : nd_long();
  }
  assume( inv_t() && inv_r() );

  fd_h2_rbuf_t tx[1];
  rbuf_havoc( tx, tx_buf, sizeof(tx_buf) );
  ulong fill = ndr( 0, sizeof(tx_buf) );
  tx->hi_off += fill; tx->hi = tx->buf0 + ( (ulong)(tx->hi-tx->buf0)+fill ) % sizeof(tx_buf);
  rst_calls = 0;

  long P0 = (long)c->peer_settings.initial_window_size;

#if OP==1
  /* SETTINGS (one setting; as rx1 dispatches it, TX space reserved) */
  assume( fd_h2_rbuf_free_sz( tx )>=sizeof(fd_h2_ping_t) );
  uchar pl[6]; ushort id = nd_ushort(); uint v = nd_uint();
  FD_STORE( ushort, pl,   fd_ushort_bswap( id ) );
  FD_STORE( uint,   pl+2, fd_uint_bswap  ( v  ) );
  int rfc_err = 0; long delta = 0;
  if( id==FD_H2_SETTINGS_INITIAL_WINDOW_SIZE ) {
    if( (long)v>MAXW ) rfc_err = 1;
    else {
      delta = (long)v-P0;
      for( ulong k=0; k<NS; k++ ) if( live(k) && E_s[k]+delta>MAXW ) rfc_err = 1;
    }
  }
  fd_h2_rx_settings( c, tx, pl, 6UL, &cb, 0U, 0U );
  if( rfc_err ) sassert( dead() && c->conn_error==FD_H2_ERR_FLOW_CONTROL );
  else {
    sassert( !( dead() && c->conn_error==FD_H2_ERR_FLOW_CONTROL ) );
    for( ulong k=0; k<NS; k++ ) if( live(k) ) E_s[k] += delta;
  }
  REACH( 1, !dead() && delta<0 && st[0].tx_wnd_debt>0 && live(0) );
  REACH( 2, rfc_err && (long)v<=MAXW );

#elif OP==2
  /* WINDOW_UPDATE, connection */
  assume( fd_h2_rbuf_free_sz( tx )>=sizeof(fd_h2_ping_t) );
  uint raw = nd_uint(); uchar pl[4];
  FD_STORE( uint, pl, fd_uint_bswap( raw ) );
  long inc = (long)( raw & 0x7fffffffU );
  int rfc_proto = inc==0, rfc_fc = !rfc_proto && E_c+inc>MAXW;
  fd_h2_rx_window_update( c, tx, &cb, pl, 4UL, 0U );
  if( rfc_proto ) sassert( dead() && c->conn_error==FD_H2_ERR_PROTOCOL );
  else if( rfc_fc ) sassert( dead() && c->conn_error==FD_H2_ERR_FLOW_CONTROL );
  else { sassert( !dead() ); E_c += inc; }
  REACH( 1, rfc_fc && E_c<MAXW );

#elif OP==3
  /* WINDOW_UPDATE, stream k */
  assume( fd_h2_rbuf_free_sz( tx )>=sizeof(fd_h2_ping_t) );
  assume( client.stream_cnt>0 ); ulong k = ndr( 0, client.stream_cnt-1 );
  uint raw = nd_uint(); uchar pl[4];
  FD_STORE( uint, pl, fd_uint_bswap( raw ) );
  long inc = (long)( raw & 0x7fffffffU );
  int closed = st[k].s.state==FD_H2_STREAM_STATE_CLOSED;
  int rfc_proto = !closed && inc==0, rfc_fc = !closed && !rfc_proto && E_s[k]+inc>MAXW;
  long d0 = st[k].tx_wnd_debt;
  fd_h2_rx_window_update( c, tx, &cb, pl, 4UL, st[k].s.stream_id );
  sassert( !dead() );
  if( rfc_proto )   sassert( st[k].s.state==FD_H2_STREAM_STATE_CLOSED && rst_calls==1 && rst_code==FD_H2_ERR_PROTOCOL );
  else if( rfc_fc ) sassert( st[k].s.state==FD_H2_STREAM_STATE_CLOSED && rst_calls==1 && rst_code==FD_H2_ERR_FLOW_CONTROL );
  else { sassert( rst_calls==0 ); if( !closed ) E_s[k] += inc; }
  REACH( 1, rfc_fc );   /* (tx_wnd==0 here is impossible: inc <= 2^31-1) */
  REACH( 2, d0>0 && st[k].tx_wnd_debt<d0 );          /* debt repaid */
  REACH( 3, d0>0 && st[k].tx_wnd_debt==0 && st[k].s.tx_wnd>0 );

#elif OP==4
  /* DATA transmit on stream k (fd_h2_tx_op_copy, as gRPC's request op) */
  assume( client.stream_cnt>0 ); ulong k = ndr( 0, client.stream_cnt-1 );
  fd_h2_tx_op_t op = { .chunk = chunk, .chunk_sz = ndr( 1, sizeof(chunk) ) };
  assume( op.chunk_sz>0 && op.chunk_sz<=sizeof(chunk) );
  op.fin = (ulong)( nd_int()&1 );
  ulong before = op.chunk_sz;
  fd_h2_tx_op_copy( c, &st[k].s, tx, &op );
  long n = (long)( before-op.chunk_sz );
  sassert( n==0 || ( n<=E_c && n<=E_s[k] ) );   /* never beyond the RFC windows (E_s may be < 0: debt) */
  E_c -= n; E_s[k] -= n;
  REACH( 1, n>0 );
  REACH( 2, n>0 && n<(long)before );   /* window- or buffer-limited */

#elif OP==5
  /* one fd_h2_rx1 call that hits the DATA path: the next chunk of the frame
     in progress, or a new DATA frame header (+ payload bytes) */
  REACH( 11, 1 );
  fd_h2_rbuf_t rx[1];
  rbuf_havoc( rx, rx_buf, sizeof(rx_buf) );
  REACH( 12, 1 );
  ulong n = ndr( 0, sizeof(rx_buf) );
  /* n received bytes, written straight into the ring (push's copy is
     overlaid away); hdr(i) is the i-th unread byte */
  /* straight-line, not a loop: sea.yaml's bound 8 would block every path
     through a 48-iteration loop (this made OP 5 vacuous; probes 10-15) */
#define HV(i) rx_buf[i] = nd_uchar()
#define HV8(b) HV(b); HV(b+1); HV(b+2); HV(b+3); HV(b+4); HV(b+5); HV(b+6); HV(b+7)
  HV8(0); HV8(8); HV8(16); HV8(24); HV8(32); HV8(40);
  _Static_assert( sizeof(rx_buf)==48, "HV8 count" );
  REACH( 13, 1 );
  ulong off = (ulong)( rx->lo - rx->buf0 );
  rx->hi = rx->buf0 + ( off+n ) % sizeof(rx_buf);
  rx->hi_off += n;
  REACH( 14, 1 );
#define HDR(i) ( (uint)rx_buf[ ( off+(i) ) % sizeof(rx_buf) ] )
  int fresh = !c->rx_data_cnt_rem && !c->rx_pad_rem;
  assume( !fresh || n<9 || HDR(3)==FD_H2_FRAME_TYPE_DATA );
  REACH( 15, 1 );
  long F   = ( (long)HDR(0)<<16 ) | ( (long)HDR(1)<<8 ) | (long)HDR(2);
  uint sid = ( ( HDR(5)<<24 ) | ( HDR(6)<<16 ) | ( HDR(7)<<8 ) | HDR(8) ) & 0x7fffffffU;
  long Rc0 = R_c, Rs0[NS]; int trk0[NS];
  for( ulong k=0; k<NS; k++ ) { Rs0[k] = R_s[k]; trk0[k] = rx_tracked(k); }
  ulong lo0 = rx->lo_off;
  REACH( 10, 1 );
  fd_h2_rx1( c, rx, tx, (uchar *)src, sizeof(src), &cb );
  int started = fresh && rx->lo_off!=lo0;   /* header consumed */
  if( dead() && c->conn_error==FD_H2_ERR_FLOW_CONTROL ) sassert( started && F>Rc0 );
  if( !dead() ) {
    if( started ) { sassert( F<=Rc0 ); R_c -= F; }
    for( ulong k=0; k<NS; k++ ) {
      if( !( started && trk0[k] && sid==st[k].s.stream_id ) ) continue;
      if( F>Rs0[k] ) sassert( st[k].s.state==FD_H2_STREAM_STATE_CLOSED && rst_code==FD_H2_ERR_FLOW_CONTROL );
      else R_s[k] -= F;
    }
  }
  REACH( 1, started && !dead() && c->rx_data_cnt_rem>0 );         /* multi-chunk */
  REACH( 2, !fresh && !dead() && c->rx_data_cnt_rem==0 );          /* frame end */
  REACH( 3, dead() && c->conn_error==FD_H2_ERR_FLOW_CONTROL );
  REACH( 4, started && !dead() && rst_code==FD_H2_ERR_FLOW_CONTROL && rst_calls==1 );
  REACH( 5, started && !dead() && (c->rx_frame_flags & FD_H2_FLAG_PADDED) && c->rx_data_cnt_rem==0 );
  REACH( 6, 1 );                                /* (localization probes) */
  REACH( 7, fresh && n>=9 );
  REACH( 8, started );
  REACH( 9, fresh && n>=9 && !dead() );

#elif OP==6
  /* connection WINDOW_UPDATE we send (fd_h2_tx_control) */
  c->flags = FD_H2_CONN_FLAGS_WINDOW_UPDATE;
  uint w0 = c->rx_wnd;
  fd_h2_tx_control( c, tx, &cb );
  sassert( !dead() );
  long inc = (long)c->rx_wnd-(long)w0;
  sassert( inc>=0 && inc<=MAXW );
  R_c += inc;
  sassert( R_c<=MAXW );        /* the peer accepts it (RFC 9113 6.9.1) */
  REACH( 1, inc>0 );

#elif OP==7
  /* stream WINDOW_UPDATE we send: the refill condition of
     fd_grpc_client_service_streams (fd_grpc_client.c:328-353, copied),
     then fd_grpc_client_send_stream_quota (verbatim) */
  assume( client.stream_cnt>0 ); ulong k = ndr( 0, client.stream_cnt-1 );
  ulong const meta_frame_max = fd_ulong_max( sizeof(fd_h2_window_update_t), sizeof(fd_h2_rst_stream_t) );
  uint  const wnd_max   = c->self_settings.initial_window_size;
  uint  const wnd_thres = wnd_max / 2;
  fd_grpc_h2_stream_t * stream = &st[k];
  int trk = rx_tracked(k);
  uint w0 = stream->s.rx_wnd;
  if( stream->s.rx_wnd < wnd_thres && stream->s.state!=FD_H2_STREAM_STATE_CLOSED && fd_h2_rbuf_free_sz( tx )>=meta_frame_max ) {
    uint const bump = wnd_max - stream->s.rx_wnd;
    sassert( bump>0U && bump<=(uint)MAXW );   /* a valid 31-bit increment */
    fd_grpc_client_send_stream_quota( tx, stream, bump );
  }
  long inc = (long)stream->s.rx_wnd-(long)w0;
  if( trk ) { R_s[k] += inc; sassert( R_s[k]<=MAXW ); }
  REACH( 1, inc>0 && frem_k(k)>0 );

#elif OP==8
  /* gRPC opens a stream (fd_grpc_client_stream_acquire's state effects) */
  assume( client.stream_cnt<NS );
  ulong k = client.stream_cnt;
  uint id = c->tx_stream_next;
  c->tx_stream_next += 2U;
  fd_grpc_h2_stream_reset( &st[k] );
  fd_h2_stream_open( fd_h2_stream_init( &st[k].s ), c, id );
  client.stream_ids[k] = id;
  client.stream_cnt++;
  E_s[k] = P0;
  R_s[k] = (long)c->self_settings.initial_window_size;
  /* (our SETTINGS precede our HEADERS, so the peer applies S first) */
  assume( k==0 || st[0].s.stream_id!=id );
#endif

  if( !dead() ) sassert( inv_t() && inv_r() );
  return 0;
}
