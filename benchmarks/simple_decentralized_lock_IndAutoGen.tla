---- MODULE simple_decentralized_lock_IndAutoGen_13 ----
EXTENDS simple_decentralized_lock

\* invgen.py stats
\* -----------------
\* date: 2022-01-19T10:09:38.848834
\* is_inductive: True
\* inv_size: 4
\* invcheck_duration_secs: 11.97365427017212
\* ctielimcheck_duration_secs: 22.746365308761597
\* ctigen_duration_secs: 16.13463282585144
\* total_duration_secs: 50.90951061248779
\* total_num_ctis_eliminated: 2035
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
Inv306_1_0_def == \A s,t,u,v \in Node : (has_lock = {}) \/ ((message = {}))
Inv4979_2_1_def == \A s,t,u,v \in Node : (s=t /\ message=message) \/ (~(<<s,v>> \in message) \/ (~(<<t,u>> \in message)))
Inv5435_2_2_def == \A s,t,u,v \in Node : (s=v /\ message=message) \/ (~(<<t,s>> \in message)) \/ (~(<<u,v>> \in message))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ Inv
  /\ Inv306_1_0_def
  /\ Inv4979_2_1_def
  /\ Inv5435_2_2_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOK,Init,Next,IndAuto,Inv,Inv306_1_0_def,Inv4979_2_1_def,Inv5435_2_2_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOK,Init,Next,IndAuto,Inv,Inv306_1_0_def,Inv4979_2_1_def,Inv5435_2_2_def
====
