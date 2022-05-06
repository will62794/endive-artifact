---- MODULE majorityset_leader_election_IndAutoGen_11 ----
EXTENDS majorityset_leader_election

\* invgen.py stats
\* -----------------
\* date: 2022-01-19T11:35:18.641102
\* is_inductive: True
\* inv_size: 4
\* invcheck_duration_secs: 11.598071813583374
\* ctielimcheck_duration_secs: 16.944942235946655
\* ctigen_duration_secs: 26.755136728286743
\* total_duration_secs: 55.83921527862549
\* total_num_ctis_eliminated: 10000
\* num_invs: 15000
\* num_iters: 3
\* num_round: 4
\* num_simulate_traces: 50000
\* opt_quant_minimize: False
\* tlc_workers: 20
\* seed: 11
\* os: posix
\* system: Linux
\* processor: x86_64
\* cpu_count: 48

\* Inductive strengthening conjuncts
Inv172_1_0_def == \A VARI,VARJ,VARK \in Node : (VARI \in vote[VARJ]) \/ (~(VARJ \in voters[VARI]))
Inv396_1_1_def == \A VARI,VARJ,VARK \in Node : (voters[VARI] \in Majority) \/ (~(VARI \in leader))
Inv1537_2_2_def == \A VARI,VARJ,VARK \in Node : (VARI = VARK /\ vote = vote) \/ (~(VARI \in vote[VARJ])) \/ (~(VARK \in vote[VARJ]))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ Safety
  /\ Inv172_1_0_def
  /\ Inv396_1_1_def
  /\ Inv1537_2_2_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOKRandom,Init,Next,IndAuto,Safety,Inv172_1_0_def,Inv396_1_1_def,Inv1537_2_2_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOKRandom,Init,Next,IndAuto,Safety,Inv172_1_0_def,Inv396_1_1_def,Inv1537_2_2_def
====
