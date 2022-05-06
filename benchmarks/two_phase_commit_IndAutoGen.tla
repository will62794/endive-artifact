---- MODULE two_phase_commit_IndAutoGen_11 ----
EXTENDS two_phase_commit

\* invgen.py stats
\* -----------------
\* date: 2022-01-19T10:12:19.247860
\* is_inductive: True
\* inv_size: 11
\* invcheck_duration_secs: 18.893146276474
\* ctielimcheck_duration_secs: 19.535178661346436
\* ctigen_duration_secs: 35.34469127655029
\* total_duration_secs: 74.04010128974915
\* total_num_ctis_eliminated: 10408
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
Inv703_1_0_def == \A VARI \in Node : \A VARJ \in Node : (go_abort = {}) \/ ((go_commit = {}))
Inv1049_1_1_def == \A VARI \in Node : \A VARJ \in Node : ~(VARJ \in vote_no) \/ (~(VARJ \in vote_yes))
Inv648_1_2_def == \A VARI \in Node : \A VARJ \in Node : (decide_abort = {}) \/ ((go_commit = {}))
Inv699_1_3_def == \A VARI \in Node : \A VARJ \in Node : (decide_commit = {}) \/ (~(go_commit = {}))
Inv346_1_4_def == \A VARI \in Node : \A VARJ \in Node : (VARJ \in alive) \/ ((abort_flag))
Inv313_1_5_def == \A VARI \in Node : \A VARJ \in Node : (VARI \in vote_yes) \/ ((go_commit = {}))
Inv588_1_0_def == \A VARI \in Node : \A VARJ \in Node : (abort_flag) \/ ((go_abort = {}))
Inv591_1_1_def == \A VARI \in Node : \A VARJ \in Node : (abort_flag) \/ ((vote_no = {}))
Inv2455_2_2_def == \A VARI \in Node : \A VARJ \in Node : (VARI \in go_abort) \/ ((decide_abort = {})) \/ (~(vote_no = {}))
Inv192_1_0_def == \A VARI \in Node : \A VARJ \in Node : (VARI \in go_abort) \/ ((go_abort = {}))

\* The inductive invariant candidate.
IndAuto ==
  /\ TypeOK
  /\ Safety
  /\ Inv703_1_0_def
  /\ Inv1049_1_1_def
  /\ Inv648_1_2_def
  /\ Inv699_1_3_def
  /\ Inv346_1_4_def
  /\ Inv313_1_5_def
  /\ Inv588_1_0_def
  /\ Inv591_1_1_def
  /\ Inv2455_2_2_def
  /\ Inv192_1_0_def

\* .
\* THEOREM Init => IndAuto 
\*  BY DEF TypeOK,Init,Next,IndAuto,Safety,Inv703_1_0_def,Inv1049_1_1_def,Inv648_1_2_def,Inv699_1_3_def,Inv346_1_4_def,Inv313_1_5_def,Inv588_1_0_def,Inv591_1_1_def,Inv2455_2_2_def,Inv192_1_0_def
\* THEOREM IndAuto /\ Next => IndAuto'
\*  BY DEF TypeOK,Init,Next,IndAuto,Safety,Inv703_1_0_def,Inv1049_1_1_def,Inv648_1_2_def,Inv699_1_3_def,Inv346_1_4_def,Inv313_1_5_def,Inv588_1_0_def,Inv591_1_1_def,Inv2455_2_2_def,Inv192_1_0_def
====
