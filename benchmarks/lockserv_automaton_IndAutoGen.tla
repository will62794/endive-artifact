---- MODULE lockserv_automaton_IndAutoGen_10 ----
EXTENDS lockserv_automaton

\* invgen.py stats
\* -----------------
\* date: 2022-01-19T09:34:57.764948
\* is_inductive: True
\* inv_size: 9
\* invcheck_duration_secs: 5.570721626281738
\* ctielimcheck_duration_secs: 7.6592185497283936
\* ctigen_duration_secs: 8.996064901351929
\* total_duration_secs: 22.30017328262329
\* total_num_ctis_eliminated: 3624
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
Inv151_1_0_def == \A VARI \in Node : \A VARJ \in Node : ~(grant_msg[VARI]) \/ (~(unlock_msg[VARJ]))
Inv60_1_1_def == \A VARI \in Node : \A VARJ \in Node : (held) \/ (~(holds_lock[VARI]))
Inv147_1_2_def == \A VARI \in Node : \A VARJ \in Node : ~(grant_msg[VARI]) \/ (~(holds_lock[VARJ]))
Inv169_1_3_def == \A VARI \in Node : \A VARJ \in Node : ~(holds_lock[VARI]) \/ (~(unlock_msg[VARJ]))
Inv58_1_4_def == \A VARI \in Node : \A VARJ \in Node : (held) \/ (~(grant_msg[VARI]))
Inv64_1_5_def == \A VARI \in Node : \A VARJ \in Node : (held) \/ (~(unlock_msg[VARI]))
Inv96_2_6_def == \A VARI \in Node : \A VARJ \in Node : (VARI=VARJ) \/ (~(grant_msg[VARJ])) \/ (~(grant_msg[VARI]))
Inv134_2_7_def == \A VARI \in Node : \A VARJ \in Node : (VARI=VARJ) \/ (~(unlock_msg[VARI]) \/ (~(unlock_msg[VARJ])))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ Mutex
  /\ Inv151_1_0_def
  /\ Inv60_1_1_def
  /\ Inv147_1_2_def
  /\ Inv169_1_3_def
  /\ Inv58_1_4_def
  /\ Inv64_1_5_def
  /\ Inv96_2_6_def
  /\ Inv134_2_7_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOK,Init,Next,IndAuto,Mutex,Inv151_1_0_def,Inv60_1_1_def,Inv147_1_2_def,Inv169_1_3_def,Inv58_1_4_def,Inv64_1_5_def,Inv96_2_6_def,Inv134_2_7_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOK,Init,Next,IndAuto,Mutex,Inv151_1_0_def,Inv60_1_1_def,Inv147_1_2_def,Inv169_1_3_def,Inv58_1_4_def,Inv64_1_5_def,Inv96_2_6_def,Inv134_2_7_def
====
