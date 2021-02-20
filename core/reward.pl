:- ensure_loaded(core/clause_stats).
:- ensure_loaded(core/embedding).
:- load_foreign_library('foreign/xgb.so').

:- dynamic mc_param/2.
:- dynamic xgb_handle/2.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%        

%% let reward st tree =
%% match tree.kind with
%% | Won -> 1. | Lost -> 0.
%% | _ ->
%% let logistic v =  1. /. (1. +. exp (0. -. v)) in
%% if !predict_value then ((logistic (Xgb.predict value (state_features st))) ** !value_factor)  ** (float (goals_length st) ** !length_factor)
%% else logistic (3.7 *. exp (-0.05 *. (float (goals_size st))) -. 2.5);;

%% length_factor = 1, value_base = 0.5, value_factor = 0.5

%% guidance_get_value(+State,-Value).
% value is just 1/number of open literals if no guidance is provided
guidance_get_value(State,FHash,Value):-
    State=state(_Goal,_Path,_Lem,_Actions,_Todos,_Proof,Result),
    (  Result == 1 -> Value = 1
     ; Result == -1 -> Value = 0
     ; mc_param(guided,1) ->
       logic_embed(State, FHash, state_only, _EmbStateP, EmbStateV,_),
       python_value(EmbStateV,Value2),
       Value is Value2 / 1e10
    ; mc_param(guided,2) ->
       logic_embed(State, FHash, state_only, _EmbStateP, EmbStateV,_),
       xgb_handle(value,Handle), !,
       xgb:xpredict(Handle,EmbStateV,V),
       % Value is V
       Value0 is 1 / (1 + exp(-V)),
       goals_length(State, GoalsLength),
       Value is (Value0 ** 0.5) ** GoalsLength       
    ; guidance_default_value(State,Value)
    ).

% taken from RLCoP paper
guidance_default_value(State,Value):-
    goals_size(State, S),
    %% Value is 0.95 ** S.
    V is 3.7 * exp(-0.05 * S) - 2.5,
    Value is 1 / (1 + exp(-V)).