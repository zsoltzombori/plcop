
:- ensure_loaded(core/ucb_score).
:- ensure_loaded(hashtbl/prolog/nb_hashtbl).

:- dynamic rootnode/1.

% Policy: [state,action,{#child_visit_count/#parent_visit_count}] triples
% Value: [state, {value/visit_count}] pairs
mc_training_data(NodeHash, ChildHash, Value, Policy):-
    
    findall(Id, rootnode(Id), BigstepNodes),
    sort(BigstepNodes, BigstepNodes2),
    length(BigstepNodes2,L),
    format("Bigstep Nodes: ~d, ~w\n",[L,BigstepNodes2]),
    mc_training_data(BigstepNodes2, NodeHash, ChildHash, [], [], Value, Policy).

% We iterate over bigstep nodes
mc_training_data([], _NodeHash, _ChildHash, Value, Policy, Value, Policy).
mc_training_data([Id|Ids], NodeHash, ChildHash, ValueAcc, PolicyAcc, Value, Policy):-

    % -NodeHash: StateId -> [State,Prob,VisitCount,Value,ChildProbs]
    nb_hashtbl_get(NodeHash,Id,[State,_,VC,_Val,_]),

    %% value data
    %% AvgVal is Val / VC,
    Discount = 0.99,
    SuccValue = 1,
    FailValue = 0,
    NoValue = 0,
    training_collect_value(Id, NodeHash, ChildHash, Discount, SuccValue, FailValue, NoValue, Val0),
    ( Val0 =:= 1 -> Val1 = 3
    ; Val0 =:= 0 -> Val1 = -3
    ; Val1 is min(3,max(-3, log(Val0 / (1-Val0))))
    ),
    ValueAcc1 = [[State,Val1]|ValueAcc],

    %% policy data
    action_count(State, ActionCount),
    ActionCount1 is ActionCount - 1,
    mc_child_list(Id, NodeHash, ChildHash, ChildPairs),
    training_collect_policy(ActionCount1, ChildPairs, State, ActionCount, VC, NodeHash, [], CurrPolicy),
    append(CurrPolicy,PolicyAcc,PolicyAcc1),
    
    mc_training_data(Ids, NodeHash, ChildHash, ValueAcc1, PolicyAcc1, Value, Policy).


training_collect_policy(-1, _, _, _, _, _, Acc, Acc).
training_collect_policy(ActionId, ChildPairs, State, ActionCount, VC, NodeHash, Acc, Policy):-
    ( member(ActionId-ChildId, ChildPairs) ->
      nb_hashtbl_get(NodeHash,ChildId,[_,_,VC_child,_,_]),
      Frequency is VC_child / (VC-1) * ActionCount,
      LogFrequency is max(-6, log(Frequency)),
      Acc1 = [[State, ActionId, LogFrequency]|Acc]
    ; Acc1 = Acc % [[State, ActionId, -6]|Acc] % TODO no training data on this branch
    ),
    ActionId1 is ActionId - 1,
    training_collect_policy(ActionId1, ChildPairs, State, ActionCount, VC, NodeHash, Acc1, Policy).


% Training Value:
%   WIN     : 1
%   LOOSE   : -1
%   NON-LEAF: Discount ** Path_to_leaf
%   NO PATHS: 0
%
% For non-leafs, the value is calculated recursively by funding the shortest paths
training_collect_value(Id, NodeHash, ChildHash, Discount, SuccValue, FailValue, NoValue, Value):-
    nb_hashtbl_get(NodeHash,Id,[State,_,_,_,_]),
    State=state(_,_,_,_,_,_,Result),
    (  Result ==  1 -> Value = SuccValue
    ; Result == -1 -> Value = FailValue
    ;  SuccValue1 is SuccValue * Discount,
       FailValue1 is FailValue * Discount,
       NoValue1 is NoValue *  Discount,
       mc_child_list(Id, NodeHash, ChildHash, ChildPairs),
       findall(ChildValue, (
                            member(_ActionId-ChildId, ChildPairs),
                            training_collect_value(ChildId, NodeHash, ChildHash, Discount, SuccValue1, FailValue1, NoValue1, ChildValue)
                           ), ChildValues
              ),
       ( max_list(ChildValues, Value) -> true
       ; Value = NoValue
       )
    ).