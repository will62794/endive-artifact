---- MODULE Consensus_IndAutoGen_13 ----
EXTENDS Consensus

\* invgen.py stats
\* -----------------
\* date: 2022-01-19T09:31:11.801302
\* is_inductive: True
\* inv_size: 1
\* invcheck_duration_secs: 0
\* ctielimcheck_duration_secs: 0
\* ctigen_duration_secs: 0.6963706016540527
\* total_duration_secs: 0.6985282897949219
\* total_num_ctis_eliminated: 0
\* num_invs: 15000
\* num_iters: 3
\* num_round: 4
\* num_simulate_traces: 50000
\* opt_quant_minimize: False
\* tlc_workers: 20
\* seed: 13
\* os: posix
\* system: Linux
\* processor: x86_64
\* cpu_count: 48

\* Inductive strengthening conjuncts

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ Inv

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOK,Init,Next,IndAuto,Inv
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOK,Init,Next,IndAuto,Inv
====
