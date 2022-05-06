---- MODULE sharded_kv_no_lost_keys_IndAutoGen_10 ----
EXTENDS sharded_kv_no_lost_keys

\* invgen.py stats
\* -----------------
\* date: 2022-01-20T01:03:00.634163
\* is_inductive: True
\* inv_size: 2
\* invcheck_duration_secs: 1.627246618270874
\* ctielimcheck_duration_secs: 2.0760631561279297
\* ctigen_duration_secs: 12.777681350708008
\* total_duration_secs: 16.49916386604309
\* total_num_ctis_eliminated: 404
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
Inv45_1_0_def == \A KI \in Key : \A NI \in Node : \E NJ \in Node : \E VALI \in Value : \A VALJ \in Value : (<<NJ,KI,VALI>> \in transfer_msg) \/ ((KI \in owner[NJ]))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ Safety
  /\ Inv45_1_0_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOK,Init,Next,IndAuto,Safety,Inv45_1_0_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOK,Init,Next,IndAuto,Safety,Inv45_1_0_def
====
