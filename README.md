# TLA+ benchmarks for endive invariant inference tool

This repository contains TLA+ protocol benchmarks for the *endive* inductive invariant inference tool. Each TLA+ protocol specification can be found in a `benchmarks/<spec>.tla` file, and its corresponding configuration file for running with endive found at `benchmarks/<spec>.config.json`. The full mapping between the benchmark names presented in Table 1 of the paper and the TLA+ protocol files is shown in the table below. Also, the Ivy models used for benchmarking other invariant inference tools can be found in the [`benchmarks/ivy`](benchmarks/ivy) subdirectory.

Each configuration file is a JSON file that includes
various parameters for running a benchmark. In particular, the `preds` entry contains the list of seed predicates that are used in the grammar for generating invariant candidates. The `constants` entry also shows the finite instance size used for checking and inferring invariants, and `quant_inv` shows the quantifier template used.

In addition, the inductive invariant discovered by endive for each benchmark can be found in a  `benchmarks/<spec>_IndAutoGen.tla` file, defined as `IndAuto` at the top of the file.

| no. | benchmark name | TLA+ file |
| --- | --- | --- |
| 1 | tla-consensus | [benchmarks/Consensus.tla](benchmarks/Consensus.tla) |
| 2 | tla-tcommit | [benchmarks/TCommit.tla](benchmarks/TCommit.tla) |
| 3 | i4-lock-server | [benchmarks/lockserver.tla](benchmarks/lockserver.tla) |
| 4 | ex-quorum-leader-election | [benchmarks/quorum_leader_election.tla](benchmarks/quorum_leader_election.tla) |
| 5 | pyv-toy-consensus-forall | [benchmarks/toy_consensus_forall.tla](benchmarks/toy_consensus_forall.tla) |
| 6 | tla-simple | [benchmarks/Simple.tla](benchmarks/Simple.tla) |
| 7 | ex-lockserv-automaton | [benchmarks/lockserv_automaton.tla](benchmarks/lockserv_automaton.tla) |
| 8 | tla-simpleregular | [benchmarks/SimpleRegular.tla](benchmarks/SimpleRegular.tla) |
| 9 | pyv-sharded-kv | [benchmarks/sharded_kv.tla](benchmarks/sharded_kv.tla) |
| 10 | pyv-lockserv | [benchmarks/lockserv.tla](benchmarks/lockserv.tla) |
| 11 | tla-twophase | [benchmarks/TwoPhase.tla](benchmarks/TwoPhase.tla) |
| 12 | i4-learning-switch | [benchmarks/learning_switch_i4.tla](benchmarks/learning_switch_i4.tla) |
| 13 | ex-simple-decentralized-lock | [benchmarks/simple_decentralized_lock.tla](benchmarks/simple_decentralized_lock.tla) |
| 14 | i4-two-phase-commit | [benchmarks/two_phase_commit.tla](benchmarks/two_phase_commit.tla) |
| 15 | pyv-consensus-wo-decide | [benchmarks/consensus_wo_decide.tla](benchmarks/consensus_wo_decide.tla) |
| 16 | pyv-consensus-forall | [benchmarks/consensus_forall.tla](benchmarks/consensus_forall.tla) |
| 17 | pyv-learning-switch | [benchmarks/learning_switch.tla](benchmarks/learning_switch.tla) |
| 18 | i4-chord-ring-maintenance | n/a |
| 19 | pyv-sharded-kv-no-lost-keys | [benchmarks/sharded_kv_no_lost_keys.tla](benchmarks/sharded_kv_no_lost_keys.tla) |
| 20 | ex-naive-consensus | [benchmarks/naive_consensus.tla](benchmarks/naive_consensus.tla) |
| 21 | pyv-client-server-ae | [benchmarks/client_server_ae.tla](benchmarks/client_server_ae.tla) |
| 22 | ex-simple-election | [benchmarks/simple_election.tla](benchmarks/simple_election.tla) |
| 23 | pyv-toy-consensus-epr | [benchmarks/toy_consensus_epr.tla](benchmarks/toy_consensus_epr.tla) |
| 24 | ex-toy-consensus | [benchmarks/toy_consensus.tla](benchmarks/toy_consensus.tla) |
| 25 | pyv-client-server-db-ae | [benchmarks/client_server_db_ae.tla](benchmarks/client_server_db_ae.tla) |
| 26 | pyv-hybrid-reliable-broadcast | n/a |
| 27 | pyv-firewall | [benchmarks/firewall.tla](benchmarks/firewall.tla) |
| 28 | ex-majorityset-leader-election | [benchmarks/majorityset_leader_election.tla](benchmarks/majorityset_leader_election.tla) |
| 29 | pyv-consensus-epr | [benchmarks/consensus_epr.tla](benchmarks/consensus_epr.tla) |
| 30 | mldr | [benchmarks/MongoLoglessDynamicRaft.tla](benchmarks/MongoLoglessDynamicRaft.tla) |