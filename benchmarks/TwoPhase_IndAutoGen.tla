---- MODULE TwoPhase_IndAutoGen_12 ----
EXTENDS TwoPhase

\* invgen.py stats
\* -----------------
\* date: 2022-01-20T01:13:30.979497
\* is_inductive: True
\* inv_size: 10
\* invcheck_duration_secs: 8.999915599822998
\* ctielimcheck_duration_secs: 23.57351064682007
\* ctigen_duration_secs: 13.589123487472534
\* total_duration_secs: 46.40158534049988
\* total_num_ctis_eliminated: 10000
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
Inv276_1_0_def == \A rmi \in RM : \A rmj \in RM : (tmPrepared = RM) \/ (~([type |-> "Commit"] \in msgs))
Inv45_1_1_def == \A rmi \in RM : \A rmj \in RM : ([type |-> "Commit"] \in msgs) \/ (~(rmState[rmi] = "committed"))
Inv79_1_2_def == \A rmi \in RM : \A rmj \in RM : ([type |-> "Prepared", rm |-> rmi] \in msgs) \/ (~(tmPrepared = tmPrepared \cup {rmi}))
Inv349_1_3_def == \A rmi \in RM : \A rmj \in RM : ~([type |-> "Prepared", rm |-> rmi] \in msgs) \/ (~(rmState[rmi] = "working"))
Inv318_1_4_def == \A rmi \in RM : \A rmj \in RM : ~([type |-> "Abort"] \in msgs) \/ (~([type |-> "Commit"] \in msgs))
Inv334_1_5_def == \A rmi \in RM : \A rmj \in RM : ~([type |-> "Commit"] \in msgs) \/ (~(rmState[rmi] = "aborted"))
Inv331_1_6_def == \A rmi \in RM : \A rmj \in RM : ~([type |-> "Abort"] \in msgs) \/ (~(tmState = "init"))
Inv344_1_7_def == \A rmi \in RM : \A rmj \in RM : ~([type |-> "Commit"] \in msgs) \/ (~(tmState = "init"))
Inv1883_2_8_def == \A rmi \in RM : \A rmj \in RM : (rmState[rmi] = "prepared") \/ (~([type |-> "Prepared", rm |-> rmi] \in msgs) \/ (~(tmState = "init")))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ TCConsistent
  /\ Inv276_1_0_def
  /\ Inv45_1_1_def
  /\ Inv79_1_2_def
  /\ Inv349_1_3_def
  /\ Inv318_1_4_def
  /\ Inv334_1_5_def
  /\ Inv331_1_6_def
  /\ Inv344_1_7_def
  /\ Inv1883_2_8_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOK,Init,Next,IndAuto,TCConsistent,Inv276_1_0_def,Inv45_1_1_def,Inv79_1_2_def,Inv349_1_3_def,Inv318_1_4_def,Inv334_1_5_def,Inv331_1_6_def,Inv344_1_7_def,Inv1883_2_8_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOK,Init,Next,IndAuto,TCConsistent,Inv276_1_0_def,Inv45_1_1_def,Inv79_1_2_def,Inv349_1_3_def,Inv318_1_4_def,Inv334_1_5_def,Inv331_1_6_def,Inv344_1_7_def,Inv1883_2_8_def
====
