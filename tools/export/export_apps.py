#!/usr/bin/env python3
"""Re-export the application harnesses (firedancer, stellar) for the benchmark
suite with SeaHorn's sea-mlir-export profile.

Job lists come from the harness sweeps (not included in this repository:
HARNESSES=<dir> with firedancer/, stellar/ and nki/ sweep modules; imported
read-only for their CONFIGS tables; their main() is never run).
Per job: scripts/run_{frag,hpack,h2fc,scope}.sh (copies of the harness
scripts with the export step replaced by the profile) -> OUT/<family>/<job>/
prog.mlir + job.json (provenance).

  SEA=<seahorn run dir> HARNESSES=<dir> FD=<firedancer checkout> \
    STELLAR_CORE=<stellar-core checkout> export_apps.py OUT [-j N] [--only REGEX]
"""
import argparse, hashlib, json, os, re, subprocess, sys, time
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

sys.dont_write_bytecode = True  # never write __pycache__ into the read-only repo
APP = Path(os.environ.get('HARNESSES') or sys.exit('export_apps: set HARNESSES=<dir with the harness sweeps>'))
FDH, STH = APP / 'firedancer', APP / 'stellar'
FD = Path(os.environ.get('FD') or sys.exit('export_apps: set FD=<firedancer checkout>'))
STC = Path(os.environ.get('STELLAR_CORE') or sys.exit('export_apps: set STELLAR_CORE=<stellar-core checkout>'))
SCR = Path(__file__).resolve().parent
sys.path.insert(0, str(APP / 'nki'))
sys.path.insert(0, str(FDH))
import sweep as fd_frag  # noqa: E402  FD-FRAG
import step_sweep, txn_sweep, hpack_sweep, h2fc_sweep  # noqa: E402
sys.path.remove(str(FDH))
del sys.modules['sweep']
sys.path.insert(0, str(STH))
import sweep as st_sweep  # noqa: E402


def git(d, *a):
    return subprocess.run(['git', '-C', str(d)] + list(a), capture_output=True, text=True).stdout.strip()


def sha256(p):
    return hashlib.sha256(Path(p).read_bytes()).hexdigest()


def mut_tag(s):
    return bool(s) and bool(re.search(r'(^|-)(mut|[ctpv]mut|revert|tmut)', s))


def jobs():
    J = []
    # FD-FRAG: per K, as sweep.py (kmax 2), mocks no-orig, --ptr-mode=address
    for n, (defs, mut, kmin) in fd_frag.CONFIGS.items():
        top = 2 if kmin is None else kmin
        for k in range(1, top + 1):
            exp = 'sat' if kmin is not None and k >= kmin else 'unsat'
            J.append(dict(family='firedancer', job=f'frag-{n}-K{k}', group='FD-FRAG', script='run_frag.sh',
                          env=dict(MOCKS='no-orig', **({'MUT': mut} if mut else {})), defs=[f'-DK={k}'] + defs,
                          harness_expected=exp, vc_args=['--ptr-mode=address'],
                          tags=['mutant'] if mut else (['reach'] if exp == 'sat' else ['proof']),
                          origin='firedancer/sweep.py'))
    for n, (defs, mut, exp) in step_sweep.CONFIGS.items():
        J.append(dict(family='firedancer', job=f'step-{n}', group='FD-FRAG step', script='run_frag.sh',
                      env=dict(SRC='reasm_step.c', TARGET='disco/quic/fd_tpu_reasm.c', MACRO='REASM_C',
                               MOCKS='', PROOFS='', **({'MUT': mut} if mut else {})),
                      defs=defs, harness_expected=exp, vc_args=[],
                      tags=['mutant'] if mut else (['reach'] if exp == 'sat' else ['proof']),
                      origin='firedancer/step_sweep.py'))
    for tbl, pre in ((txn_sweep.CONFIGS, 'txn-'), (txn_sweep.PROOF_CONFIGS, 'txn-')):
        for n, v in tbl.items():
            defs, mut, exp = v[:3]
            proofs = v[3] if len(v) > 3 else ''
            J.append(dict(family='firedancer', job=pre + n, group='TX-PARSE', script='run_frag.sh',
                          env=dict(SRC='txn_parse.c', TARGET='ballet/txn/fd_txn_parse.c', MACRO='TXN_C',
                                   MOCKS='', PROOFS=proofs, **({'MUT': mut} if mut else {})),
                          defs=defs, harness_expected=exp, vc_args=[],
                          tags=['mutant'] if mut else (['reach'] if exp == 'sat' else ['proof']),
                          origin='firedancer/txn_sweep.py'))
    for n, ((src, patches), defs, mut, exp) in hpack_sweep.CONFIGS.items():
        J.append(dict(family='firedancer', job=f'hpack-{n}', group='HPACK', script='run_hpack.sh',
                      env=dict(SRC=src, PATCHES=patches, MUT=mut or ''), defs=defs, harness_expected=exp,
                      vc_args=[], tags=['mutant'] if mut else (['reach'] if exp == 'sat' else ['proof']),
                      origin='firedancer/hpack_sweep.py', sea_extra='--horn-sea-mlir-allow-uninit-globals'))
    for n, (defs, mut, exp) in h2fc_sweep.CONFIGS.items():
        J.append(dict(family='firedancer', job=f'h2fc-{n}', group='H2FC', script='run_h2fc.sh',
                      env=dict(SRC='h2fc_step.c', MUT=mut or ''), defs=defs, harness_expected=exp, vc_args=[],
                      tags=['mutant'] if mut else (['reach'] if exp == 'sat' else ['proof']),
                      origin='firedancer/h2fc_sweep.py'))
    # stellar: per K as sweep.py; kmax per group as its main()
    allc = {**st_sweep.CONFIGS, **st_sweep.TTL_CONFIGS, **st_sweep.COMM_CONFIGS, **st_sweep.PART_CONFIGS,
            **st_sweep.CONF_CONFIGS, **st_sweep.FEE_CONFIGS, **st_sweep.VAL_CONFIGS}
    for n, (defs, kmin) in allc.items():
        kmax = 4 if n.startswith(('part-', 'val-')) else 3
        src = next((v for p, v in st_sweep.SRC_OF.items() if n.startswith(p)), None)
        top = kmax if kmin is None else kmin
        name = n if src else f'scope-{n}'
        mut = mut_tag(n.split('-', 1)[1] if src else n) or any(re.search(r'MUT|REVERT', d) for d in defs)
        for k in range(1, top + 1):
            exp = 'sat' if kmin is not None and k >= kmin else 'unsat'
            J.append(dict(family='stellar', job=f'{name}-K{k}', group='ST-' + name.split('-')[0].upper(),
                          script='run_scope.sh', env=dict(SRC=src[0] if src else 'scope_port.c'),
                          defs=[f'-D{src[1]}={k}' if src else f'-DK={k}'] + defs, harness_expected=exp,
                          vc_args=[], tags=['mutant'] if mut else (['reach'] if exp == 'sat' else ['proof']),
                          origin='stellar/sweep.py'))
    return J


def export(j, out):
    d = out / j['family'] / j['job']
    d.mkdir(parents=True, exist_ok=True)
    env = dict(os.environ)
    for k in ('MUT', 'MOCKS', 'PROOFS', 'PATCHES', 'SRC', 'TARGET', 'MACRO', 'SEA_EXTRA'):
        env.pop(k, None)
    env.update(j['env'])
    if j.get('sea_extra'):
        env['SEA_EXTRA'] = j['sea_extra']
    prog = d / 'prog.mlir'
    prog.unlink(missing_ok=True)
    t = time.monotonic()
    r = subprocess.run([str(SCR / j['script']), str(d)] + j['defs'], capture_output=True, text=True, env=env)
    sec = round(time.monotonic() - t, 1)
    ok = r.returncode == 0 and prog.exists() and prog.stat().st_size > 0
    log = (d / 'sea.log').read_text() if (d / 'sea.log').exists() else ''
    seacmd = next((l for l in log.splitlines() if 'bin/seahorn ' in l), '')
    meta = dict(j, ok=ok, seconds=sec, rc=r.returncode,
                export_command=(' '.join(f'{k}={v!r}' for k, v in j['env'].items()) +
                                (f" SEA_EXTRA={j['sea_extra']}" if j.get('sea_extra') else '') +
                                f" {j['script']} OUT " + ' '.join(j['defs'])).strip(),
                seahorn_command=re.sub(r'/tmp/sea-\w+', '$TMP', seacmd),
                applied_diff=(d / 'applied.diff').read_text() if (d / 'applied.diff').exists() else '',
                mlir_sha256=sha256(prog) if ok else None, err=(r.stdout + r.stderr)[-800:] if not ok else '')
    (d / 'job.json').write_text(json.dumps(meta, indent=1))
    for f in d.glob('*.bc'):
        f.unlink()
    return j['job'], ok, sec


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('out')
    ap.add_argument('-j', type=int, default=8)
    ap.add_argument('--only')
    ap.add_argument('--list', action='store_true')
    a = ap.parse_args()
    out = Path(a.out).resolve()
    J = [j for j in jobs() if not a.only or re.search(a.only, j['job'])]
    if a.list:
        for j in J:
            print(j['family'], j['job'], j['harness_expected'], j['tags'], j['env'], ' '.join(j['defs']))
        print(len(J))
        return
    out.mkdir(parents=True, exist_ok=True)
    seahorn = os.environ['SEA']
    prov = dict(seahorn_run=seahorn, seahorn_commit=git(Path(seahorn).parent.parent, 'rev-parse', 'HEAD'),
                harnesses_commit=git(APP, 'rev-parse', 'HEAD'),
                harnesses_dirty=git(APP, 'status', '--porcelain', '-uno'),
                firedancer_commit=git(FD, 'rev-parse', 'HEAD'), stellar_core_commit=git(STC, 'rev-parse', 'HEAD'),
                clang=subprocess.run(['clang-18', '--version'], capture_output=True, text=True).stdout.split('\n')[0],
                scripts_sha256={f.name: sha256(f) for f in SCR.glob('run_*.sh')},
                date=time.strftime('%Y-%m-%dT%H:%M:%S'))
    (out / 'export-provenance.json').write_text(json.dumps(prov, indent=1))
    with ThreadPoolExecutor(a.j) as ex:
        for n, ok, sec in ex.map(lambda j: export(j, out), J):
            print(f'{n} {"ok" if ok else "FAILED"} {sec}s', flush=True)


if __name__ == '__main__':
    main()
