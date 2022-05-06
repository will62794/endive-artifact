---- MODULE naive_consensus_IndAutoGen_13 ----
EXTENDS naive_consensus

\* invgen.py stats
\* -----------------
\* date: 2022-01-19T11:11:43.773023
\* is_inductive: True
\* inv_size: 4
\* invcheck_duration_secs: 9.716843128204346
\* ctielimcheck_duration_secs: 28.29154348373413
\* ctigen_duration_secs: 35.64209461212158
\* total_duration_secs: 73.78989958763123
\* total_num_ctis_eliminated: 10000
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
Inv196_1_0_def == \A s,t \in Node : \A va,vb \in Value : \A Qa \in Quorum : (VotedFor(va)) \/ (~(va \in decision))
Inv1229_2_1_def == \A s,t \in Node : \A va,vb \in Value : \A Qa \in Quorum : (<<s,va>> \in vote) \/ (~(<<Qa,va>> \in decide) \/ (~(s \in Qa /\ vote = vote)))
Inv504_2_2_def == \A s,t \in Node : \A va,vb \in Value : \A Qa \in Quorum : ((va=vb) /\ vote = vote) \/ (~(<<s,va>> \in vote) \/ (~(<<s,vb>> \in vote)))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ Safety
  /\ Inv196_1_0_def
  /\ Inv1229_2_1_def
  /\ Inv504_2_2_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOK,Init,Next,IndAuto,Safety,Inv196_1_0_def,Inv1229_2_1_def,Inv504_2_2_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOK,Init,Next,IndAuto,Safety,Inv196_1_0_def,Inv1229_2_1_def,Inv504_2_2_def
====
