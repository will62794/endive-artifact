---- MODULE TCommit_IndAutoGen_10 ----
EXTENDS TCommit

\* invgen.py stats
\* -----------------
\* date: 2022-01-19T09:31:14.492341
\* is_inductive: True
\* inv_size: 1
\* invcheck_duration_secs: 0
\* ctielimcheck_duration_secs: 0
\* ctigen_duration_secs: 1.1334152221679688
\* total_duration_secs: 1.1357359886169434
\* total_num_ctis_eliminated: 0
\* num_invs: 15000
\* num_iters: 3
\* num_round: 4
\* num_simulate_traces: 50000
\* opt_quant_minimize: False
\* tlc_workers: 20
\* seed: 10
\* os: posix
\* system: Linux
\* processor: x86_64
\* cpu_count: 48

\* Inductive strengthening conjuncts

\* The inductive invariant candidate.
IndAuto ==
  /\ TCTypeOK
  /\ TCConsistent

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TCTypeOK,Init,Next,IndAuto,TCConsistent
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TCTypeOK,Init,Next,IndAuto,TCConsistent
====
