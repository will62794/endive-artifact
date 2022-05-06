---- MODULE lockserv_IndAutoGen_13 ----
EXTENDS lockserv

\* invgen.py stats
\* -----------------
\* date: 2022-01-19T10:02:51.452365
\* is_inductive: True
\* inv_size: 9
\* invcheck_duration_secs: 10.396031856536865
\* ctielimcheck_duration_secs: 10.636752128601074
\* ctigen_duration_secs: 12.809917688369751
\* total_duration_secs: 33.942742347717285
\* total_num_ctis_eliminated: 3636
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
Inv151_1_0_def == \A VARI \in Node : \A VARJ \in Node : ~(grant_msg[VARI]) \/ (~(unlock_msg[VARJ]))
Inv162_1_1_def == \A VARI \in Node : \A VARJ \in Node : ~(holds_lock[VARI]) \/ (~(server_holds_lock))
Inv146_1_2_def == \A VARI \in Node : \A VARJ \in Node : ~(grant_msg[VARI]) \/ (~(holds_lock[VARJ]))
Inv164_1_3_def == \A VARI \in Node : \A VARJ \in Node : ~(holds_lock[VARI]) \/ (~(unlock_msg[VARJ]))
Inv149_1_4_def == \A VARI \in Node : \A VARJ \in Node : ~(grant_msg[VARI]) \/ (~(server_holds_lock))
Inv177_1_5_def == \A VARI \in Node : \A VARJ \in Node : ~(server_holds_lock) \/ (~(unlock_msg[VARI]))
Inv88_2_6_def == \A VARI \in Node : \A VARJ \in Node : (VARI=VARJ) \/ (~(grant_msg[VARI])) \/ (~(grant_msg[VARJ]))
Inv143_2_0_def == \A VARI \in Node : \A VARJ \in Node : (VARI=VARJ) \/ (~(unlock_msg[VARJ])) \/ (~(unlock_msg[VARI]))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ Mutex
  /\ Inv151_1_0_def
  /\ Inv162_1_1_def
  /\ Inv146_1_2_def
  /\ Inv164_1_3_def
  /\ Inv149_1_4_def
  /\ Inv177_1_5_def
  /\ Inv88_2_6_def
  /\ Inv143_2_0_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOK,Init,Next,IndAuto,Mutex,Inv151_1_0_def,Inv162_1_1_def,Inv146_1_2_def,Inv164_1_3_def,Inv149_1_4_def,Inv177_1_5_def,Inv88_2_6_def,Inv143_2_0_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOK,Init,Next,IndAuto,Mutex,Inv151_1_0_def,Inv162_1_1_def,Inv146_1_2_def,Inv164_1_3_def,Inv149_1_4_def,Inv177_1_5_def,Inv88_2_6_def,Inv143_2_0_def
====
