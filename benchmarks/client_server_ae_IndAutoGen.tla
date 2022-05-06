---- MODULE client_server_ae_IndAutoGen_12 ----
EXTENDS client_server_ae

\* invgen.py stats
\* -----------------
\* date: 2022-01-19T11:15:57.555029
\* is_inductive: True
\* inv_size: 2
\* invcheck_duration_secs: 1.9548957347869873
\* ctielimcheck_duration_secs: 3.862872838973999
\* ctigen_duration_secs: 76.86594748497009
\* total_duration_secs: 82.80823612213135
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
Inv93_1_0_def == \A i,j \in Node : \A r \in Request : \A p \in Response : (ResponseMatched(i,p)) \/ (~(<<i,p>> \in response_sent))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ Safety
  /\ Inv93_1_0_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOK,Init,Next,IndAuto,Safety,Inv93_1_0_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOK,Init,Next,IndAuto,Safety,Inv93_1_0_def
====
