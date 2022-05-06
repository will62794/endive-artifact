---- MODULE firewall_IndAutoGen_10 ----
EXTENDS firewall

\* invgen.py stats
\* -----------------
\* date: 2022-01-19T11:31:26.602567
\* is_inductive: True
\* inv_size: 5
\* invcheck_duration_secs: 10.216673612594604
\* ctielimcheck_duration_secs: 20.009979248046875
\* ctigen_duration_secs: 6.1074864864349365
\* total_duration_secs: 36.39780569076538
\* total_num_ctis_eliminated: 1740
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
Inv246_1_0_def == \A VARI,VARJ \in Node : \E k \in Node : (internal[VARI]) \/ (~(VARJ \in sent[VARJ]))
Inv201_1_1_def == \A VARI,VARJ \in Node : \E k \in Node : (VARJ \in sent[k]) \/ (~(VARJ \in allowed_in))
Inv368_1_2_def == \A VARI,VARJ \in Node : \E k \in Node : ~(VARI \in allowed_in) \/ (~(internal[VARI]))
Inv2767_2_3_def == \A VARI,VARJ \in Node : \E k \in Node : (internal[VARI]) \/ ((internal[VARJ])) \/ (~(VARI \in sent[VARJ]))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ Inv
  /\ Inv246_1_0_def
  /\ Inv201_1_1_def
  /\ Inv368_1_2_def
  /\ Inv2767_2_3_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOK,Init,Next,IndAuto,Inv,Inv246_1_0_def,Inv201_1_1_def,Inv368_1_2_def,Inv2767_2_3_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOK,Init,Next,IndAuto,Inv,Inv246_1_0_def,Inv201_1_1_def,Inv368_1_2_def,Inv2767_2_3_def
====
