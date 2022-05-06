---- MODULE simple_election_IndAutoGen_10 ----
EXTENDS simple_election

\* invgen.py stats
\* -----------------
\* date: 2022-01-19T11:17:55.490384
\* is_inductive: True
\* inv_size: 4
\* invcheck_duration_secs: 9.530550718307495
\* ctielimcheck_duration_secs: 7.4270994663238525
\* ctigen_duration_secs: 14.663150310516357
\* total_duration_secs: 31.675432205200195
\* total_num_ctis_eliminated: 552
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
Inv219_1_0_def == \A VARS \in Acceptor : \A VART \in Acceptor : \A VARPA \in Proposer : \A VARPB \in Proposer : \E Q \in Quorum : (VARPA \in start) \/ (~(<<VARS,VARPA>> \in promise))
Inv136_1_1_def == \A VARS \in Acceptor : \A VART \in Acceptor : \A VARPA \in Proposer : \A VARPB \in Proposer : \E Q \in Quorum : (ChosenAt(Q,VARPA)) \/ (~(VARPA \in leader))
Inv176_2_2_def == \A VARS \in Acceptor : \A VART \in Acceptor : \A VARPA \in Proposer : \A VARPB \in Proposer : \E Q \in Quorum : ((VARPA=VARPB) /\ promise = promise) \/ (~(<<VARS,VARPA>> \in promise) \/ (~(<<VARS,VARPB>> \in promise)))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ Safety
  /\ Inv219_1_0_def
  /\ Inv136_1_1_def
  /\ Inv176_2_2_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOK,Init,Next,IndAuto,Safety,Inv219_1_0_def,Inv136_1_1_def,Inv176_2_2_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOK,Init,Next,IndAuto,Safety,Inv219_1_0_def,Inv136_1_1_def,Inv176_2_2_def
====
