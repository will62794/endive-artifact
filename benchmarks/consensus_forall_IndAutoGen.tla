---- MODULE consensus_forall_IndAutoGen_13 ----
EXTENDS consensus_forall

\* invgen.py stats
\* -----------------
\* date: 2022-01-19T10:49:17.551264
\* is_inductive: True
\* inv_size: 8
\* invcheck_duration_secs: 90.55391526222229
\* ctielimcheck_duration_secs: 34.04720377922058
\* ctigen_duration_secs: 105.87529826164246
\* total_duration_secs: 230.6822702884674
\* total_num_ctis_eliminated: 10609
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
Inv358_1_0_def == \A VARI \in Node : \A VARJ \in Node : \A VARK \in Node : \A VALI \in Value :(<<VARJ,VARI>> \in vote_msg) \/ (~(<<VARI,VARJ>> \in votes))
Inv119_1_1_def == \A VARI \in Node : \A VARJ \in Node : \A VARK \in Node : \A VALI \in Value :(<<VARI,VARJ>> \in vote_request_msg) \/ (~(<<VARJ,VARI>> \in vote_msg))
Inv759_1_2_def == \A VARI \in Node : \A VARJ \in Node : \A VARK \in Node : \A VALI \in Value :(voted[VARI]) \/ (~(<<VARI,VARJ>> \in vote_msg))
Inv680_1_3_def == \A VARI \in Node : \A VARJ \in Node : \A VARK \in Node : \A VALI \in Value :(leader[VARI]) \/ (~(<<VARI,VALI>> \in decided))
Inv7155_2_4_def == \A VARI \in Node : \A VARJ \in Node : \A VARK \in Node : \A VALI \in Value :(VARJ=VARK) \/ (~(leader[VARJ]) \/ (~(leader[VARK])))
Inv7039_2_0_def == \A VARI \in Node : \A VARJ \in Node : \A VARK \in Node : \A VALI \in Value :(VARJ=VARK) \/ (~(<<VARI,VARJ>> \in vote_msg) \/ (~(<<VARI,VARK>> \in vote_msg)))
Inv2245_2_1_def == \A VARI \in Node : \A VARJ \in Node : \A VARK \in Node : \A VALI \in Value :(<<VARI,VARJ>> \in votes) \/ (~(leader[VARI])) \/ (~(VARJ \in voting_quorum))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ Safety
  /\ Inv358_1_0_def
  /\ Inv119_1_1_def
  /\ Inv759_1_2_def
  /\ Inv680_1_3_def
  /\ Inv7155_2_4_def
  /\ Inv7039_2_0_def
  /\ Inv2245_2_1_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOKRandom,Init,Next,IndAuto,Safety,Inv358_1_0_def,Inv119_1_1_def,Inv759_1_2_def,Inv680_1_3_def,Inv7155_2_4_def,Inv7039_2_0_def,Inv2245_2_1_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOKRandom,Init,Next,IndAuto,Safety,Inv358_1_0_def,Inv119_1_1_def,Inv759_1_2_def,Inv680_1_3_def,Inv7155_2_4_def,Inv7039_2_0_def,Inv2245_2_1_def
====
