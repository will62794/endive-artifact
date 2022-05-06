---- MODULE consensus_wo_decide_IndAutoGen_12 ----
EXTENDS consensus_wo_decide

\* invgen.py stats
\* -----------------
\* date: 2022-01-19T10:23:06.026309
\* is_inductive: True
\* inv_size: 8
\* invcheck_duration_secs: 56.99670648574829
\* ctielimcheck_duration_secs: 36.60512447357178
\* ctigen_duration_secs: 42.17558455467224
\* total_duration_secs: 136.01490950584412
\* total_num_ctis_eliminated: 12210
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
Inv434_1_0_def == \A VARI \in Node : \A VARJ \in Node : \A VARK \in Node : (vote_request_msg[<<VARI,VARJ>>]) \/ (~(votes[<<VARI,VARJ>>]))
Inv426_1_1_def == \A VARI \in Node : \A VARJ \in Node : \A VARK \in Node : (vote_request_msg[<<VARI,VARJ>>]) \/ (~(vote_msg[<<VARJ,VARI>>]))
Inv306_1_2_def == \A VARI \in Node : \A VARJ \in Node : \A VARK \in Node : (vote_msg[<<VARI,VARJ>>]) \/ (~(votes[<<VARJ,VARI>>]))
Inv538_1_3_def == \A VARI \in Node : \A VARJ \in Node : \A VARK \in Node : (voted[VARI]) \/ (~(vote_msg[<<VARI,VARJ>>]))
Inv1539_2_4_def == \A VARI \in Node : \A VARJ \in Node : \A VARK \in Node : (VARJ=VARK) \/ (~(vote_msg[<<VARI,VARK>>])) \/ (~(votes[<<VARJ,VARI>>]))
Inv1530_2_0_def == \A VARI \in Node : \A VARJ \in Node : \A VARK \in Node : (VARJ=VARK) \/ (~(vote_msg[<<VARI,VARJ>>])) \/ (~(vote_msg[<<VARI,VARK>>]))
Inv7147_2_1_def == \A VARI \in Node : \A VARJ \in Node : \A VARK \in Node : (votes[<<VARI,VARK>>]) \/ (~(VARK \in voting_quorum)) \/ (~(leader[VARI]))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ Safety
  /\ Inv434_1_0_def
  /\ Inv426_1_1_def
  /\ Inv306_1_2_def
  /\ Inv538_1_3_def
  /\ Inv1539_2_4_def
  /\ Inv1530_2_0_def
  /\ Inv7147_2_1_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOKRandom,Init,Next,IndAuto,Safety,Inv434_1_0_def,Inv426_1_1_def,Inv306_1_2_def,Inv538_1_3_def,Inv1539_2_4_def,Inv1530_2_0_def,Inv7147_2_1_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOKRandom,Init,Next,IndAuto,Safety,Inv434_1_0_def,Inv426_1_1_def,Inv306_1_2_def,Inv538_1_3_def,Inv1539_2_4_def,Inv1530_2_0_def,Inv7147_2_1_def
====
