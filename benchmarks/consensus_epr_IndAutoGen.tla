---- MODULE consensus_epr_IndAutoGen_21 ----
EXTENDS consensus_epr

\* invgen.py stats
\* -----------------
\* date: 2022-02-19T16:37:41.019092
\* is_inductive: True
\* inv_size: 9
\* invcheck_duration_secs: 138.74325394630432
\* ctielimcheck_duration_secs: 83.68380403518677
\* ctigen_duration_secs: 128.44494247436523
\* total_duration_secs: 351.2560622692108
\* total_num_ctis_eliminated: 17743
\* total_num_cti_elimination_rounds: 3
\* num_invs: 25000
\* num_iters: 3
\* num_round: 4
\* num_simulate_traces: 50000
\* opt_quant_minimize: True
\* tlc_workers: 24
\* seed: 21
\* os: posix
\* system: Linux
\* processor: x86_64
\* cpu_count: 48

\* Inductive strengthening conjuncts
Inv17_1_0_def == \A VARI \in Node : \A VARJ \in Node : (<<VARI,VARJ>> \in vote_msg) \/ (~(VARI \in votes[VARJ]))
Inv124_1_1_def == \A VARJ \in Node : \E QJ \in Quorum : \A VALI \in Value : (QJ \subseteq votes[VARJ]) \/ (~(VALI \in decided[VARJ]))
Inv419_1_2_def == \A VARI \in Node : \A VARJ \in Node : (voted[VARI]) \/ (~(<<VARI,VARJ>> \in vote_msg))
Inv131_1_3_def == \A VARJ \in Node : \E QJ \in Quorum : (QJ \subseteq votes[VARJ]) \/ (~(leader[VARJ]))
Inv390_1_4_def == \A VARJ \in Node : \A VALI \in Value : (leader[VARJ]) \/ (~(VALI \in decided[VARJ]))
Inv4735_2_5_def == \A VARI \in Node : \A VARJ \in Node : (VARI = VARJ /\ votes = votes) \/ (~(leader[VARJ])) \/ (~(leader[VARI]))
Inv5144_2_0_def == \A VARI \in Node : \A VARJ \in Node : \A VARK \in Node : (VARI = VARK /\ votes = votes) \/ (~(VARJ \in votes[VARK])) \/ (~(<<VARJ,VARI>> \in vote_msg))
Inv6141_2_0_def == \A VARI \in Node : \A VARJ \in Node : \A VARK \in Node : (VARJ = VARK /\ votes = votes) \/ (~(<<VARI,VARJ>> \in vote_msg)) \/ (~(<<VARI,VARK>> \in vote_msg))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ Safety
  /\ Inv17_1_0_def
  /\ Inv124_1_1_def
  /\ Inv419_1_2_def
  /\ Inv131_1_3_def
  /\ Inv390_1_4_def
  /\ Inv4735_2_5_def
  /\ Inv5144_2_0_def
  /\ Inv6141_2_0_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOKRandom,Init,Next,IndAuto,Safety,Inv17_1_0_def,Inv124_1_1_def,Inv419_1_2_def,Inv131_1_3_def,Inv390_1_4_def,Inv4735_2_5_def,Inv5144_2_0_def,Inv6141_2_0_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOKRandom,Init,Next,IndAuto,Safety,Inv17_1_0_def,Inv124_1_1_def,Inv419_1_2_def,Inv131_1_3_def,Inv390_1_4_def,Inv4735_2_5_def,Inv5144_2_0_def,Inv6141_2_0_def
====
