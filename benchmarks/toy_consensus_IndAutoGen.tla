---- MODULE toy_consensus_IndAutoGen_13 ----
EXTENDS toy_consensus

\* invgen.py stats
\* -----------------
\* date: 2022-01-19T11:21:37.816712
\* is_inductive: True
\* inv_size: 2
\* invcheck_duration_secs: 1.7079291343688965
\* ctielimcheck_duration_secs: 1.2621352672576904
\* ctigen_duration_secs: 3.7756507396698
\* total_duration_secs: 6.76781439781189
\* total_num_ctis_eliminated: 14
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
Inv78_1_0_def == \A i,j \in Node : \A v \in Value : \A Q \in Quorums : \E t \in Q :(vote[t] = v) \/ (~(v \in decision))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ Inv
  /\ Inv78_1_0_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOK,Init,Next,IndAuto,Inv,Inv78_1_0_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOK,Init,Next,IndAuto,Inv,Inv78_1_0_def
====
