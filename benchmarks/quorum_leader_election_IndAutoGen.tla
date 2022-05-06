---- MODULE quorum_leader_election_IndAutoGen_11 ----
EXTENDS quorum_leader_election

\* invgen.py stats
\* -----------------
\* date: 2022-01-19T09:32:15.288031
\* is_inductive: True
\* inv_size: 2
\* invcheck_duration_secs: 1.668609619140625
\* ctielimcheck_duration_secs: 1.537128210067749
\* ctigen_duration_secs: 6.438772678375244
\* total_duration_secs: 9.659419298171997
\* total_num_ctis_eliminated: 204
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
Inv55_1_0_def == \A VARS \in Node : \A VART \in Node : \A Q \in Quorums : \E VARN \in Q : (voted[VARN] = VARS) \/ (~(isleader[VARS]))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ Inv
  /\ Inv55_1_0_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOK,Init,Next,IndAuto,Inv,Inv55_1_0_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOK,Init,Next,IndAuto,Inv,Inv55_1_0_def
====
