---- MODULE MongoLoglessDynamicRaft_IndAutoGen_10 ----
EXTENDS MongoLoglessDynamicRaft

\* invgen.py stats
\* -----------------
\* date: 2022-01-19T14:14:33.267429
\* is_inductive: True
\* inv_size: 8
\* invcheck_duration_secs: 1286.4527778625488
\* ctielimcheck_duration_secs: 533.7159683704376
\* ctigen_duration_secs: 111.98334193229675
\* total_duration_secs: 1932.3107957839966
\* total_num_ctis_eliminated: 7884
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
Inv6243_1_1_def == \A i,j \in Server : ~((state[i] = Primary)) \/ (((configTerm[i] = currentTerm[i])))
Inv648_1_0_def == \A i,j \in Server : ((config[i] = config[j])) \/ ((IsNewerConfig(i, j))) \/ ((IsNewerConfig(j, i)))
Inv1925_1_1_def == \A i,j \in Server : ~((configTerm[i] = configTerm[j])) \/ (~((state[i] = Primary))) \/ (~(IsNewerConfig(j, i)))
Inv716_1_1_def == \A i,j \in Server : (ConfigDisabled(i)) \/ ((ConfigDisabled(j)) \/ ((QuorumsOverlap(config[j], config[i]))))
Inv852_1_2_def == \A i,j \in Server : \A Q \in Quorums(config[j]) : \E n \in Q : ((currentTerm[n] >= configTerm[j])) \/ ((ConfigDisabled(i)))
Inv846_1_0_def == \A i,j \in Server : \A Q \in Quorums(config[j]) : \E n \in Q : ((currentTerm[n] >= configTerm[j])) \/ ((ConfigDisabled(i)))
Inv862_1_0_def == \A i,j \in Server : \A Q \in Quorums(config[j]) : \E n \in Q : ((currentTerm[n] >= configTerm[j])) \/ ((ConfigDisabled(i)))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ Safety
  /\ Inv862_1_0_def
  /\ Inv716_1_1_def
  /\ Inv648_1_0_def
  /\ Inv1925_1_1_def
  /\ Inv852_1_2_def
  /\ Inv846_1_0_def
  /\ Inv6243_1_1_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOKRandom,Init,Next,IndAuto,Safety,Inv862_1_0_def,Inv716_1_1_def,Inv648_1_0_def,Inv1925_1_1_def,Inv852_1_2_def,Inv846_1_0_def,Inv6243_1_1_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOKRandom,Init,Next,IndAuto,Safety,Inv862_1_0_def,Inv716_1_1_def,Inv648_1_0_def,Inv1925_1_1_def,Inv852_1_2_def,Inv846_1_0_def,Inv6243_1_1_def
====
