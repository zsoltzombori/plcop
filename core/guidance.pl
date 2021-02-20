% Functions for guiding the MCTS

:- ensure_loaded(core/embedding).
:- ensure_loaded(core/ucb_score).

:- load_foreign_library('foreign/xgb.so').

:- dynamic mc_param/2.
:- dynamic xgb_handle/2.

guidance_action_probs(State,_FHash,Probs):-
    mc_param(guided,0), !, % no guidance
    action_count(State,AC),
    ( AC = 0 ->  Probs = []
    ; Prob is 1/AC,
      findall(Prob, between(1,AC,_), Probs)
    ).


guidance_action_probs(State,FHash,Probs):-
    mc_param(guided,2), !,      % c guidance
    xgb_handle(policy,Handle), !,

    logic_embed(State, FHash, both, EmbStateP, _EmbStateV, EmbActions),
    mc_param(temperature,Temp),
    findall(ExpScore, (
                       member(Action,EmbActions),
                       append(EmbStateP,Action,GuidanceInput),
                       xgb:xpredict(Handle,GuidanceInput,Score),
                       ExpScore is exp(Score/Temp)
                      ), ExpScores
           ),
    sum_list(ExpScores,ExpScoresSum),
    findall(Prob, (
                   member(E,ExpScores),
                   Prob is E / ExpScoresSum
                  ), Probs
           ).