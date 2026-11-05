# ST-SCOPE port: stellar-core LedgerEntryScope -> C

Source: stellar-core (https://github.com/stellar/stellar-core) at a1f4383,
`src/ledger/LedgerEntryScope.{h,cpp}` (457 + 642 lines). Port:
`scope_port.c`. Policy: ugly hand port to a verifiable model.
`cpp:N` = LedgerEntryScope.cpp line N.

## Correspondence

| C++ | C port | Notes |
|---|---|---|
| `throw std::runtime_error(fmt::format(...))` (all 28 sites) | `THROW(code)`: set `g_exc`, return; callers `CHECK_EXC` | message formatting dropped; codes per site class in `enum Exc` |
| `LedgerEntry` (XDR union) | `LE {type, key, ttl}` | payload only compared/copied, never interpreted |
| `std::optional<LedgerEntry>` | `OptLE {has, v}` | moved-from optional keeps `has`, value havoced |
| moved-from `LedgerEntry` | `havoc_moved`: value := nondet | "valid but unspecified" |
| template param `StaticLedgerEntryScope S` | field `stat` (3 of 6 scopes) | harness only issues calls that type-check in C++ |
| `FOR_EACH_VALID_SCOPE_ADOPTION` static_assert | `valid_adoption` as harness `assume` | compile error = call never issued |
| `LedgerEntryScopeID` (cpp:49-90) | `ScopeID`, `clamp16`, `scopeid_ctor`, `scopeid_eq`, `checkNotMovedFrom` | |
| `ScopedLedgerEntry` / `ScopedLedgerEntryOpt` | one `Entry` with `isOpt` | SLE has `has == true` |
| ctor(scopeID, entry) cpp:96/104/216/224 | `entry_ctor` | |
| copy ctors cpp:111/232/248 | `entry_copy_ctor` (incl. SLE -> Opt) | |
| move ctors cpp:118/240/256 | `entry_move_ctor` | payload moved *before* the moved-from check, as in the member-init order |
| copy / move `operator=` cpp:127/147/266/286 | `entry_copy_assign` / `entry_move_assign` | self-assignment returns early, as in C++ |
| `operator==` cpp:183/330 | `entry_eq` | `operator<` not ported (needs XDR ordering) |
| `readInScope` / `scopeRead(Optional)Entry` cpp:168/307/396/435 | `scope_read` | |
| `modifyInScope` / `scopeModify(Optional)Entry` cpp:175/314/415/455 | `scope_modify` | `std::function` callback = direct write of a caller-chosen value |
| `releaseFromScope` / `scopeReleaseOptionalEntry` cpp:323/490 | `scope_release` | |
| `scopeAdoptEntry(Opt)` cpp:476/483/511/519 | `scope_adopt` | no scope checks, as in source |
| `scopeAdoptEntryOptFromImpl` cpp:528 (const&) / 564 (&&) | `scope_adopt_from(move)` | |
| `scopeActivate` / `scopeDeactivate` cpp:370/383 | `scope_activate` / `scope_deactivate` | |
| `DeactivateScopeGuard` | ctor = deactivate; `guard_dtor` = activate | dtor is implicitly `noexcept`: a throw there is `std::terminate` (`g_terminate`) |
| C++ unwinding | harness stops issuing calls after a throw, then runs live guard dtors innermost-first | no RAII for other objects (none have side effects here) |

## Harness

K symbolic API calls (K <= 8, loop-free ladder) over 2 scopes (symbolic
static kind, 64-bit index through `clamp16`, 32-bit ledger) and 3 entry
variables. Each call picks op, scope(s), entry slot(s), move/copy and
SLE/Opt symbolically; preconditions are only the C++ typing rules and
"variable constructed / not yet constructed".

Ghost state is the spec, written from the header comment (h:13-160),
evolved independently of the port's flags: activity per scope; per entry
exists / live (not moved-from) / logical value / provenance scope ID.

Claims (`-DCLAIM`):
- `CLAIM_SPEC` (default): for every call, port throws iff the spec says
  misuse; every successful read / release returns the logical value; `==`
  agrees with logical values; leaving a guard terminates iff the scope was
  re-activated inside it.
- `CLAIM_NOTERM`: `std::terminate` is unreachable. Characterization; expected
  sat at K=2: guard on s; `scopeActivate(s)` inside it; the guard's
  destructor at scope exit throws from an implicitly `noexcept` dtor.
- `CLAIM_REACH`: vacuity. A run with no throw that reads successfully,
  move-adopts, and uses a guard exists. Expected sat.
- `SPEC_ADOPT_ACTIVE=1`: spec reading where adopting a raw entry needs an
  active destination scope. The source does not check this (cpp:476-524),
  while `scopeAdoptEntryOptFrom` does (cpp:534/570). Expected sat.

## Mutants (fidelity controls, `-DMUT=n`)

| n | change | shortest violating sequence |
|---|---|---|
| 1 | read skips moved-from check | adopt; move-ctor; read old (3) |
| 2 | modify skips inactive check | adopt; deactivate; modify (3) |
| 3 | adopt-from(&&) does not mark source moved | adopt; deactivate src; adopt-from move; copy old (4) |
| 4 | copy-assign does not reset dest moved-from | adopt e0; move-ctor e1 from e0; e0 = e1; read e0 (4) |
| 5 | adopt-from skips source-active check | adopt; adopt-from (2) |
| 6 | move-ctor does not mark source moved | adopt; move-ctor; read old (3) |
| 7 | scope-ID equality ignores ledger | adopt in s0; read via s1 (same index, other ledger) (2) |
| 8 | release does not mark moved | adopt opt; release; read (3) |

## Assumptions (trusted, not checked)

- The port matches the C++ for the sliced behavior. Checked only by the
  mutants and the line correspondence above.
- The spec is my reading of the header comment. Where the comment is
  silent (raw adopt into an inactive scope; self-assignment of a moved-from
  entry), the spec follows the code and the gap is a characterization
  query.
- Single-threaded sequences; no data races. Bounded K.
- Tools: clang 18, SeaHorn dev18 front end with verify-c-common settings,
  the SeaHorn -> sea-mlir exporter, sea-vc (SeaM assumes A-INB;
  reported as `seam.inb: assumed`).

## Run

```sh
EXPORT=1 run_scope.sh <outdir> -DK=3                     # export prog.mlir
<sea-mlir>/build/bin/sea-vc <outdir>/prog.mlir --lower --seam
python3 -I sweep.py --kmax 3                              # the gate (sweep.py: not included)
```

# ST-TTL port: commitChangeFromThread + maybeMergeRoTTLBumps

Source: `src/transactions/ParallelApplyUtils.cpp:577-626` at a1f4383
(contract comment :41-80), `ParallelApplyTypes.h` (`ParallelApplyEntry`,
`rescope`). Port: `ttl_merge_port.c`, which includes `scope_port.c` as a
library (`SCOPE_PORT_LIB`). So the scope rules (rescope = move-adopt into
the global scope, `try_emplace` insert = move ctor, overwrite = move
assign, `readInScope`, `modifyInScope`) run through the ST-SCOPE port.

| C++ | C port |
|---|---|
| `ParallelApplyEntry<S>` | `PAEntry {Entry, mIsDirty, mIsNew}` |
| `rescope(s1, s2) &&` | `rescope`: `scope_adopt_from(s2, ..., s1, move)` |
| sharded map, `try_emplace`, `it->second` | k*'s slot `{gmHas, gm}`; other keys are a frame (the function touches only `map[key]`) |
| `readWriteSet.find(key)` | `inRW` = OR of the threads' RW-footprint flags for k* (cpp:640-650) |
| `modifyInScope(*this, lambda)` | `scope_modify_ref` (checks) + lambda body in place |
| `releaseAssertOrThrow(type == TTL)` | `sassert` |
| `std::max` | inline max |
| `thread->scopeDeactivate()` (cpp:681) | before the commits |

Harness: 1..3 threads (`NT`, concrete) commit in order. Symbolic:
- key type (TTL or other);
- per thread: has an entry for k* / dirty / isNew / in-RW flag / payload
  (present, TTL);
- the global entry for k* before the commit (tracked or not, payload,
  isNew).

Payloads under k* have k*'s type (domain invariant, assumed).

Claim (`CLAIM_CONTRACT`), from the cpp:41-80 comment:
- a read-only TTL bump (TTL key, not in the RW set, both present) merges
  by max and keeps the rest of the entry;
- any other commit replaces the payload (last writer wins);
- the first committed entry creates it;
- `mIsNew` stays from the first tracking (cpp:622);
- no scope exception at any call.

Controls (all expected sat at NT=1):
- `REVERT_7E4A427F`: the function returns false although it merged (the
  pre-fix lambda `return true`). Needs only a pre-existing global entry
  and one lower bump.
- `TMUT=1`: merge ignores the RW set. `TMUT=2`: overwrite drops the old
  `mIsNew`.
- `TTL_CLAIM=2` (reach): a merge whose result is not the last committed TTL.

Not modelled: concurrency between shard workers (the sharding invariant is
assumed), the other keys, TTL creation/deletion semantics beyond
"not a merge", fees.

## ST-TTL additions (write-back, commutativity)

**Write-back.** `ttl_merge_port.c` now also checks that if any cluster
committed k*, the global entry is dirty. `commitChangesToLedgerTxn`
(cpp:469) writes back only dirty entries, and the merge path never sets
`mIsDirty`. Without `PRE_GLOBAL_TTL_DIRTY` this is sat at NT=1: a clean
global TTL entry plus one read-only bump, and the bump is lost.

The assumption holds by a chain of three facts in three places:
1. footprint validation rejects TTL keys (TransactionFrame.cpp:868-877);
2. the global map is preloaded with clean entries only from footprint keys
   (ParallelApplyUtils.cpp:396-399, :354);
3. so a global TTL entry can only come from a dirty commit (cpp:612).

**Commutativity (`ttl_commute.c`).** The same initial state, committed in
forward and in reverse cluster order on two copies, must give the same
global entry for k* (presence, payload, `mIsNew`), with no scope exception.
It holds (unsat, NT=2,3) only under four facts, each necessary
(leave-one-out sat at NT=2):

| knob | fact | source |
|---|---|---|
| `PRE_PARTITION` | a key written in a stage is in one cluster, unless it is a TTL key outside every RW footprint | ParallelTxSetBuilder contract, cpp:30-38, 57-67 |
| `PRE_SAME_ISNEW` | all copies of k* carry the same `mIsNew` | "relative to the pre-phase ledger state", cpp:620 |
| `PRE_RO_PRESENT` | read-only bumps update an existing entry; the global pre-state must be present only if some cluster commits k* (a dirty global tombstone with no RO commit is reachable) | cpp:583 comment; InvokeHostFunctionOpFrame.cpp:856-870 |
| `PRE_RO_SAME` | read-only bumps change only the TTL (the merge keeps the old entry's other fields) | merge body; thread upsert sets lastModifiedLedgerSeq (cpp:940, :1163) |

Controls:
- reverting 7e4a427f breaks commutativity (sat at NT=2);
- `COMM_REACH` (two clusters bump k* to different TTLs) is sat;
- TMUT1 and TMUT2 stay unsat here: commutativity is blind to them, while
  the ST-TTL contract catches them.

# ST-PART port: ParallelTxSetBuilder stage/cluster/bin construction

Source: `src/herder/ParallelTxSetBuilder.cpp` at a1f4383:
- `Cluster`, `Stage::tryAdd` and helpers (:44-447);
- the phase loop and output conversion of
  `buildSurgePricedParallelSorobanPhaseWithStageCount` (:458-565).

Port: `txset_port.c`.

| C++ | C port |
|---|---|
| `BitSet` (tx ids) | `uint32_t` mask |
| `std::vector<std::unique_ptr<Cluster const>> mClusters` | `MAXC = N` slots with a live flag; order only matters for sort ties |
| `Cluster const*`, `unordered_set<Cluster const*>` | slot index, slot mask |
| `mTxToCluster` (pointers) | slot index per tx, -1 = nullptr |
| `removeConflictingClusters` / `rollbackClusters` | mark dead / mark live again (objects keep their slots, as the moved `unique_ptr`s keep their objects) |
| `binPacking` `std::sort` (unspecified order among equals) | nondeterministic order of live slots, constrained non-increasing |
| lane-limit check `anyGreater(txRes, laneLeft)` | nondeterministic skip |
| `sortedTxOrder` | 0..N-1 (the conflict relation and instructions are symbolic) |
| conflict sets from `prepareBuilderTxs` (:568-698) | a symbolic symmetric relation; `ASYM` drops symmetry |

Claims, per stage:
- **separation:** live clusters in different bins contain no conflicting
  pair. This is `PRE_PARTITION` in ttl_commute.c, discharged here for the
  builder, given a symmetric conflict relation;
- clusters are non-empty and disjoint, and each has a bin;
- `mBinInstructions[b]` equals the sum of its clusters and is at most the
  per-cluster limit;
- `mTxToCluster` agrees with the cluster masks;
- a transaction is in a stage iff `tryAdd` reported it.

Modelling rule learned here: every loop must have a constant trip count
*and* stay unrollable after SeaHorn's mixed semantics. A loop whose only
continuation is program exit gets its exit test turned into an assume and
survives -O3. SeaHorn's `--bound` unrolling then makes dead copies, which
sea-vc's static A-INB check flags.
Hence the per-stage `check_stage` calls, the accumulated `separated` flag,
and square loops instead of triangular ones.

Not modelled yet:
- `prepareBuilderTxs` (footprints → conflicts, hashing with collisions);
- the XDR output conversion beyond bin membership;
- surge-pricing lanes;
- more than 2 stages.

ST-PART results (sweep, K = N transactions, 1 stage, 2 bins, LIM 10):

| config | N=1 | N=2 | N=3 | N=4 |
|---|---|---|---|---|
| contract (separation + bookkeeping) | unsat | unsat 1.2 s | unsat 3.4 s | unsat 31 s |
| reach (two non-empty bins, one merged cluster) | unsat | unsat | **sat** | |
| PMUT=1 no fast path | unsat | unsat | unsat | unsat |
| PMUT=2 bins not restored after a failed in-place pack | unsat | unsat | unsat | **sat** |
| PMUT=3 no `mTxToCluster` update | **sat** | | | |
| ASYM conflicts not symmetric | unsat | **sat** | | |

N=5 contract: unsat in 441 s (outside the sweep).
- PMUT=1 staying unsat says the `mAllConflictTxs` fast path is a pure
  optimization, given symmetric conflicts.
- ASYM sat says the fast path relies on that symmetry, which
  `prepareBuilderTxs` provides by setting both directions (:640-675).
- PMUT=3 is caught by the index invariant before separation can fail.

# ST-CONF port: prepareBuilderTxs (footprints → conflict sets)

Source: ParallelTxSetBuilder.cpp:568-698. Port: `conflicts_port.c`.

Representation:
- footprint shapes are concrete (R read-only, W read-write entries per
  transaction); keys are symbolic ids;
- `std::hash<LedgerKey>` is a symbolic, consistent hash per entry: equal
  keys hash equally, distinct keys may collide;
- `std::sort` (unstable) is a nondeterministic non-decreasing permutation;
- the data-dependent group scan uses constant-bound loops;
- `roTxs`/`rwTxs` vectors become tx masks. RW-RW visits each unordered pair
  once (as `j = i + 1`); RO-RW visits every (ro, rw) pair.

Claims:
- *contract*: no self-conflict; symmetric; **complete** (two txs that share
  a key with an RW access are marked);
- *exact* (`CLAIM_SOUND`): with an injective hash, marked iff they really
  conflict.

Sweep (K = N, R = W = 1, 3 key ids):

| config | N=1 | N=2 | N=3 |
|---|---|---|---|
| contract | unsat | unsat 1.0 s | unsat 115 s |
| exact, no collisions | unsat | unsat 1.5 s | unsat 413 s |
| CMUT=1 RW-RW marked one way | unsat | **sat** | |
| CMUT=2 no RO-RW conflicts | unsat | **sat** | |
| CMUT=3 group scan drops the last entry | unsat | **sat** | |
| CMUT=4 pairs treated as singletons | unsat | **sat** | |

**Composition with ST-PART** (paper argument, two machine-checked lemmas):
1. ST-CONF: the constructed relation is symmetric and contains every real
   footprint conflict.
2. ST-PART: for *any* symmetric relation, transactions in different bins
   of a stage are not related.

So transactions in different bins never share a key with an RW access.
This is `PRE_PARTITION` of ttl_commute.c at the builder level, within the
bounds (N ≤ 3 footprints of 1 RO + 1 RW for ST-CONF; N ≤ 5 for ST-PART,
1 stage, 2 bins).

Still open:
- the mapping of bins to the XDR output clusters (:522-544);
- that apply-time clusters are those clusters;
- larger footprints.

# ST-FEE port: fee totals (historical control bcb13715, issue #704)

Source:
- `ApplicableTxSetFrame::getTotalFees` / `getTotalInclusionFees`
  (TxSetFrame.cpp:2311-2338);
- `saturatingAdd` (numeric.h:87-112);
- the consumer `compareTxSets` (HerderSCPDriver.cpp:927-970).

Port: `fee_port.c`. Fees are symbolic non-negative int64, M per set; the
virtual accessors are mocked by their values; phases are flattened.

| config | M=1 | M=2 | M=3 |
|---|---|---|---|
| fixed: total = min(exact, INT64_MAX); the fee criterion never inverts exact order | unsat | unsat | unsat 0.8 s |
| revert: overflow obligation of the signed `total += fee` | unsat | **sat** | |
| revert + wraparound *diagnostic* (#704's inversion) | unsat | **sat** | |

The obligation run is the claim. The wraparound run is a labelled
diagnostic: signed overflow is undefined in C++, so no wrapped value is
claimed for the real binary.

# ST-VAL port: cross-cluster conflict check of the tx-set validator

Source: TxSetFrame.cpp:1981-2025. Apply runs one thread per cluster of a
validated stage (LedgerManagerImpl.cpp:2767-2779). So this check, not the
builder, is what the apply-time partition premise rests on for every tx
set validated in consensus, including sets built by other nodes.

Correction: the validator is **not** rerun by `applyLedger`.
Catchup and replay apply directly (ApplyLedgerWork.cpp:26,
ReplayDebugMetaWork.cpp:184); `prepareForApply` checks structure only.
For those paths the premise is trusted history: the set was validated
when it was externalized. This is an assurance boundary, not a
vulnerability.

The builder (ST-PART + ST-CONF) matters for this node's own proposals
being accepted.

Port: `validator_port.c`. Footprint shapes are concrete and keys symbolic;
the `UnorderedSet<LedgerKey>` stage sets become key-id bitmasks (equality
lookup, no hashing involved).

Claims: **sound** (VALID ⇒ no cross-cluster pair shares a key with an RW
access) and **complete** (no such pair ⇒ VALID).

| config (K = clusters; 2 txs × (2 RO + 2 RW), 8 key ids) | K=1 | K=2 | K=3 | K=4 |
|---|---|---|---|---|
| sound + complete | unsat | unsat | unsat | unsat 3.6 s |
| VMUT=1 RO keys not checked against stage RW | unsat | **sat** | | |
| VMUT=2 RW keys not checked against stage RO | unsat | **sat** | | |
| VMUT=3 cluster keys inserted before the cluster is done (rejects intra-cluster use) | **sat** | | | |

Also unsat outside the sweep: 4 clusters × 3 txs × (2 RO + 2 RW) keys over
16 key ids, in 41 s.

Chain to the TTL commit:
1. validated (ST-VAL);
2. → no cross-cluster RW sharing of entry keys;
3. → one thread per cluster (apply);
4. → `PRE_PARTITION` (ttl_commute.c).

Step 4 maps entry keys to TTL keys through `getTTLKey`, a hash of the key.
Two distinct entries sharing a TTL key would need a hash collision; that
is assumed not to happen.

# ST-PART-IND: inductive step for Stage::tryAdd (`txset_induct.c`)

Inv(stage, A), with A the txs added so far:
- I1 live clusters are non-empty, disjoint, and cover A;
- I2 cluster conf and insn are the union / sum over its members;
- I3 closure: no live cluster's conf meets another live cluster's txs;
- I4 every live cluster has a bin; bin sums are exact and within the limit;
  the stage total is exact;
- I5 `mTxToCluster` is exact on A and -1 elsewhere;
- I6 `mAllConflictTxs` = the union of the conflict sets of A.

The conflict relation is symmetric and irreflexive.

Check: from an *arbitrary* state with Inv, add tx N-1 ∉ A (without loss
of generality by relabelling). Inv must hold again for A + tx on success,
A on failure.

| | N=3 | N=4 |
|---|---|---|
| I1-I6 inductive | unsat 20 s | unsat 588 s |
| PMUT=3 (no index update) | | **sat** |
| PMUT=2 (bins not restored) | | **sat** 49 s |

The first attempt included I7 ("dead slots are empty") and was sat. That
conjunct does not hold of the port: merged-away clusters keep their
contents in dead slots. It is irrelevant, since nothing reads dead slots,
so it was dropped.

Scope: induction over N tx ids does not remove
the finite-id bound. It checks a stronger obligation than the BMC: it
starts from every Inv state, including unreachable ones (e.g. an empty
stage with `triedCompacting`), and it covers repeated failed offers.
Both cover the builder's once-per-id runs at fixed N. It is also costlier
here. Its value is
the explicit invariant (why the builder is correct), not a larger bound.
"For all N" needs the invariant checked over unbounded sets (an
uninterpreted set sort / Lean / CHC with arrays): the parked parametric
track.

Later additions to ttl_commute.c:
- `PRE_RO_PRESENT` is guarded by an actual commit.
- New `PRE_RO_MONO` caller fact (cpp:964-973). It is not needed for
  commutativity (`comm-full-no-mono` is unsat); it keeps the revert
  witness caller-reachable, which is sat at NT=2, not NT=1.
- With all premises, the committed TTL must also be the max of the
  pre-state and the bumps. Order independence alone would allow a
  consistently wrong result.
