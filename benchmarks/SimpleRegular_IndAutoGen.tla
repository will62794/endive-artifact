---- MODULE SimpleRegular_IndAutoGen_13 ----
EXTENDS SimpleRegular

\* invgen.py stats
\* -----------------
\* date: 2022-01-19T09:37:32.243178
\* is_inductive: True
\* inv_size: 4
\* invcheck_duration_secs: 2.0142462253570557
\* ctielimcheck_duration_secs: 2.8127293586730957
\* ctigen_duration_secs: 5.354794979095459
\* total_duration_secs: 10.206130027770996
\* total_num_ctis_eliminated: 1979
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
Inv417_1_0_def == \A s,t \in ProcSet : (1 \in x[s]) \/ ((pc[s] = "a1"))
Inv921_1_1_def == \A s,t \in ProcSet : ~(0 \in x[s]) \/ (~(pc[s] = "Done"))
Inv924_1_2_def == \A s,t \in ProcSet : ~(0 \in x[s]) \/ (~(pc[s] = "b"))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ PCorrect
  /\ Inv417_1_0_def
  /\ Inv921_1_1_def
  /\ Inv924_1_2_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOK,Init,Next,IndAuto,PCorrect,Inv417_1_0_def,Inv921_1_1_def,Inv924_1_2_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOK,Init,Next,IndAuto,PCorrect,Inv417_1_0_def,Inv921_1_1_def,Inv924_1_2_def
====
