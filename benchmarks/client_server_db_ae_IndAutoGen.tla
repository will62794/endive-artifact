---- MODULE client_server_db_ae_IndAutoGen_21 ----
EXTENDS client_server_db_ae

\* invgen.py stats
\* -----------------
\* date: 2022-02-19T22:23:05.779476
\* is_inductive: True
\* inv_size: 8
\* invcheck_duration_secs: 4835.199689149857
\* ctielimcheck_duration_secs: 44.93031311035156
\* ctigen_duration_secs: 244.86060237884521
\* total_duration_secs: 5125.212277412415
\* total_num_ctis_eliminated: 12546
\* total_num_cti_elimination_rounds: 2
\* num_invs: 15000
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
Inv248_1_0_def == \A VARJ \in Node : \A VARP \in Response : (ResponseMatched(VARJ,VARP)) \/ (~(<<VARJ,VARP>> \in response_sent))
Inv183_1_1_def == \A VARJ \in Node : \A VARP \in Response : (<<VARJ,VARP>> \in response_sent) \/ (~(<<VARJ,VARP>> \in response_received))
Inv2999_2_2_def == \A VARI \in Node : \A VARID \in DbRequestId : \A VARJ \in Node : (VARI=VARJ /\ match = match) \/ (~(<<VARID,VARI>> \in t)) \/ (~(<<VARID,VARJ>> \in t))
Inv323_1_0_def == \A VARI \in Node : \A VARID \in DbRequestId : \A VARP \in Response : ~(<<VARID,VARP>> \in db_response_sent) \/ (~(NoneWithId(VARID)))
Inv331_1_1_def == \A VARI \in Node : \A VARID \in DbRequestId : \A VARR \in Request : ~(<<VARID,VARR>> \in db_request_sent) \/ (~(NoneWithId(VARID)))
Inv2799_2_2_def == \A VARI \in Node : \A VARID \in DbRequestId : \A VARP \in Response : (ResponseMatched(VARI,VARP)) \/ (~(<<VARID,VARI>> \in t) \/ (~(<<VARID,VARP>> \in db_response_sent)))
Inv846_2_3_def == \A VARI \in Node : \A VARID \in DbRequestId : \A VARR \in Request : (<<VARI,VARR>> \in request_sent) \/ (~(<<VARID,VARI>> \in t)) \/ (~(<<VARID,VARR>> \in db_request_sent))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ Safety
  /\ Inv248_1_0_def
  /\ Inv183_1_1_def
  /\ Inv2999_2_2_def
  /\ Inv323_1_0_def
  /\ Inv331_1_1_def
  /\ Inv2799_2_2_def
  /\ Inv846_2_3_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOKRandom,Init,Next,IndAuto,Safety,Inv248_1_0_def,Inv183_1_1_def,Inv2999_2_2_def,Inv323_1_0_def,Inv331_1_1_def,Inv2799_2_2_def,Inv846_2_3_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOKRandom,Init,Next,IndAuto,Safety,Inv248_1_0_def,Inv183_1_1_def,Inv2999_2_2_def,Inv323_1_0_def,Inv331_1_1_def,Inv2799_2_2_def,Inv846_2_3_def
====
