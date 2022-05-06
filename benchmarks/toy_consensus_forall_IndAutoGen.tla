---- MODULE toy_consensus_forall_IndAutoGen_13 ----
EXTENDS toy_consensus_forall

\* invgen.py stats
\* -----------------
\* date: 2022-01-19T09:33:58.348118
\* is_inductive: True
\* inv_size: 3
\* invcheck_duration_secs: 1.9675912857055664
\* ctielimcheck_duration_secs: 1.6526856422424316
\* ctigen_duration_secs: 14.54945421218872
\* total_duration_secs: 18.189526796340942
\* total_num_ctis_eliminated: 412
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
Inv150_1_0_def == \A s,t \in Node : \A Q \in Quorums : \A v \in Value : \E n \in Q : (voted[s]) \/ (~(vote[s] = v))
Inv65_1_1_def == \A s,t \in Node : \A Q \in Quorums : \A v \in Value : \E n \in Q : (vote[n] = v) \/ (~(v \in decided))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ Inv
  /\ Inv150_1_0_def
  /\ Inv65_1_1_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOK,Init,Next,IndAuto,Inv,Inv150_1_0_def,Inv65_1_1_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOK,Init,Next,IndAuto,Inv,Inv150_1_0_def,Inv65_1_1_def
====
