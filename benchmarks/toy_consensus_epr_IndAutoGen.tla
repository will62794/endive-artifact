---- MODULE toy_consensus_epr_IndAutoGen_13 ----
EXTENDS toy_consensus_epr

\* invgen.py stats
\* -----------------
\* date: 2022-01-19T11:21:04.154903
\* is_inductive: True
\* inv_size: 4
\* invcheck_duration_secs: 8.35658073425293
\* ctielimcheck_duration_secs: 6.257107973098755
\* ctigen_duration_secs: 5.273165941238403
\* total_duration_secs: 19.936957120895386
\* total_num_ctis_eliminated: 384
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
Inv204_1_0_def == \A s,t \in Node : \E Q \in Quorum : \A va,vb \in Value : (s \in voted) \/ (~(<<s,va>> \in vote))
Inv158_1_1_def == \A s,t \in Node : \E Q \in Quorum : \A va,vb \in Value : (ChosenAt(Q, va)) \/ (~(va \in decided))
Inv490_2_2_def == \A s,t \in Node : \E Q \in Quorum : \A va,vb \in Value : ((va = vb) /\ vote = vote) \/ (~(<<s,va>> \in vote) \/ (~(<<s,vb>> \in vote)))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ Safety
  /\ Inv204_1_0_def
  /\ Inv158_1_1_def
  /\ Inv490_2_2_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOK,Init,Next,IndAuto,Safety,Inv204_1_0_def,Inv158_1_1_def,Inv490_2_2_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOK,Init,Next,IndAuto,Safety,Inv204_1_0_def,Inv158_1_1_def,Inv490_2_2_def
====
