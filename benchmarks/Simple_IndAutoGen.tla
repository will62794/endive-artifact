---- MODULE Simple_IndAutoGen_12 ----
EXTENDS Simple

\* invgen.py stats
\* -----------------
\* date: 2022-01-19T09:34:24.957882
\* is_inductive: True
\* inv_size: 2
\* invcheck_duration_secs: 1.4604756832122803
\* ctielimcheck_duration_secs: 1.2426867485046387
\* ctigen_duration_secs: 4.570458650588989
\* total_duration_secs: 7.290364503860474
\* total_num_ctis_eliminated: 15
\* num_invs: 15000
\* num_iters: 3
\* num_round: 4
\* num_simulate_traces: 50000
\* opt_quant_minimize: False
\* tlc_workers: 20
\* seed: 12
\* os: posix
\* system: Linux
\* processor: x86_64
\* cpu_count: 48

\* Inductive strengthening conjuncts
Inv31_1_0_def == \A s,t \in ProcSet : (pc[s] = "a") \/ (~(x[s] = 0))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ PCorrect
  /\ Inv31_1_0_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOK,Init,Next,IndAuto,PCorrect,Inv31_1_0_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOK,Init,Next,IndAuto,PCorrect,Inv31_1_0_def
====
