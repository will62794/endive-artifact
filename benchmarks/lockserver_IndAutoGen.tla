---- MODULE lockserver_IndAutoGen_10 ----
EXTENDS lockserver

\* invgen.py stats
\* -----------------
\* date: 2022-01-19T09:31:30.182347
\* is_inductive: True
\* inv_size: 2
\* invcheck_duration_secs: 1.2582473754882812
\* ctielimcheck_duration_secs: 1.1357009410858154
\* ctigen_duration_secs: 3.512091875076294
\* total_duration_secs: 5.922990798950195
\* total_num_ctis_eliminated: 12
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
Inv11_1_0_def == \A s \in Server : \A c \in Client : ~(s \in clientlocks[c]) \/ (~(semaphore[s]))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ Inv
  /\ Inv11_1_0_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOK,Init,Next,IndAuto,Inv,Inv11_1_0_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOK,Init,Next,IndAuto,Inv,Inv11_1_0_def
====
