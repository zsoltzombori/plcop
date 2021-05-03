:- [montecarlo].

eager_eval:-
    eager_eval("theorems/pelletier21.p",[guided(0),cp(1),sim_depth(0),playout_count(200000),min_visit_count(1),n_dim(10000),playout_time(300), output_format(svmlight), leancop_settings([conj,def,comp(1000),eager_reduction(1),paramodulation(0),extra_axioms(nofile)]),return_to_root(0),save_all_proofs(0),temperature(2),save_all_policy(0),save_all_value(1),lemma_features(0),subst_features(0),inference_limit(200000),collapse_vars(0),bigstep_frequency(2000)]).

eager_eval(File, Params):-
    retractall(mc_param(_,_)),
    findall(P,(
                member(P,Params),
                P=..[Name,Val],
                asserta(mc_param(Name,Val))
            ), _
           ),

    ( mc_param(guided,2) ->     % load c interface to xgboost
      mc_param(n_features, N_features),
      xgb:set_max_fea(N_features),
      mc_param(policy_modelfile,PolicyModelFile),
      xgb:predictor(PolicyModelFile,PolicyHandle),
      assert(xgb_handle(policy,PolicyHandle)),
      mc_param(value_modelfile,ValueModelFile),
      xgb:predictor(ValueModelFile,ValueHandle),
      assert(xgb_handle(value,ValueHandle))
    ; true
    ),

    empty_nb_hashtbl(FHash),

    mc_param(leancop_settings,Settings),
    logic_init(File,Settings,StartState),

    mc_param(inference_limit, IL),
    eager_steps(0, IL, StartState, FHash).

eager_steps(InfLimit, InfLimit, State, _):-
    !,
    format("Inference limit reached\n~w\n\n", [State]).
eager_steps(Step, InfLimit, State, FHash):-
    State=state(Tableau,_,Result),
    ( Result ==  1 ->
      writeln("SUCCESS"),
      tab_comp(proof, Tableau, Proof),
      reverse(Proof,ProofRev),
      print_my_proof(ProofRev, orig)
    ; Result == -1 ->
      writeln("FAILURE")
    ; ( mc_param(eager_type, value)  -> probs_from_value(State, FHash, ChildProbs)
      ; guidance_action_probs(State, FHash, ChildProbs) 
      ),
      findall(X, nth0(X, ChildProbs, _), Indices),
      get_largest_index(Indices, ChildProbs, ActionIndex),
      format("Step ~w: ~w - ~w\n", [Step,ActionIndex, ChildProbs]),
      logic_step(State, ActionIndex, State2),
      Step2 is Step+1,
      eager_steps(Step2, InfLimit, State2, FHash)
    ).
      
probs_from_value(State, FHash, ChildProbs):-
    action_count(State, AC),
    AC1 is AC - 1,
    findall(Value, (
                between(0, AC1, ActionIndex),
                logic_step(State, ActionIndex, NextState),
                guidance_get_value(NextState, FHash, Value)
            ), ChildValues
           ),
    sum_list(ChildValues, ValueSum),
    findall(Prob, (
                member(V, ChildValues),
                Prob is V / ValueSum
            ), ChildProbs
           ).
