---- MODULE sharded_kv_IndAutoGen_11 ----
EXTENDS sharded_kv

\* invgen.py stats
\* -----------------
\* date: 2022-01-19T09:49:00.646794
\* is_inductive: True
\* inv_size: 6
\* invcheck_duration_secs: 17.53907060623169
\* ctielimcheck_duration_secs: 60.2028272151947
\* ctigen_duration_secs: 261.9012441635132
\* total_duration_secs: 340.46118426322937
\* total_num_ctis_eliminated: 11715
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
Inv238_1_0_def == \A NI \in Node : \A NJ \in Node : \A KI \in Key : \A VALI \in Value : \A VALJ \in Value : ~(<<NI,KI,VALI>> \in transfer_msg) \/ (~(KI \in owner[NJ]))
Inv114_1_1_def == \A NI \in Node : \A NJ \in Node : \A KI \in Key : \A VALI \in Value : \A VALJ \in Value : (KI \in owner[NJ]) \/ ((table[NJ][KI] = Nil))
Inv1376_2_2_def == \A NI \in Node : \A NJ \in Node : \A KI \in Key : \A VALI \in Value : \A VALJ \in Value : (NI = NJ /\ owner = owner) \/ (~(KI \in owner[NI])) \/ (~(KI \in owner[NJ]))
Inv1336_2_0_def == \A NI \in Node : \A NJ \in Node : \A KI \in Key : \A VALI \in Value : \A VALJ \in Value : (NI = NJ /\ owner = owner) \/ (~(<<NI,KI,VALJ>> \in transfer_msg) \/ (~(<<NJ,KI,VALI>> \in transfer_msg)))
Inv1461_2_1_def == \A NI \in Node : \A NJ \in Node : \A KI \in Key : \A VALI \in Value : \A VALJ \in Value : (VALI = VALJ /\ owner = owner) \/ (~(<<NI,KI,VALI>> \in transfer_msg) \/ (~(<<NJ,KI,VALJ>> \in transfer_msg)))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ Safety
  /\ Inv238_1_0_def
  /\ Inv114_1_1_def
  /\ Inv1376_2_2_def
  /\ Inv1336_2_0_def
  /\ Inv1461_2_1_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOKRandom,Init,Next,IndAuto,Safety,Inv238_1_0_def,Inv114_1_1_def,Inv1376_2_2_def,Inv1336_2_0_def,Inv1461_2_1_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOKRandom,Init,Next,IndAuto,Safety,Inv238_1_0_def,Inv114_1_1_def,Inv1376_2_2_def,Inv1336_2_0_def,Inv1461_2_1_def
====
