%% Caclulate the UCB score in the Monte Carlo Tree Search
%%
%% UCT(i) =   r_i / n_i    +   cp * p_i * sqrt( ln(N)/n_i )
%%          \_ EXPLOIT _/     \_         EXPLROE         _/
%%
%% r_i = total reward
%% n_i = number of visits
%% p_i = prior probability (see policy function)
%% N   = number of visits for parent
%% cp  = hyperparameter describing balance between 
%%       exploitation and exploration


:- ensure_loaded(hashtbl/prolog/nb_hashtbl).

:- dynamic mc_param/2.


% action_count(+State,-ActionCount).
action_count(state(_Goal,_Path,_Lem,Actions,_Todos,_Proof,_Result),AC):-
        length(Actions,AC).

%% +VisitCount
%% +ExpandedIdPairs: ActionId-StateId pair list
%% +NodeHash
%% -SelectedId: StateId from ExpandedIdPairs having the highest ucb score
%% -SelectedScore: the largest ucb score
mc_ucb_select_child(VisitCount,ExpandedIdPairs,NodeHash,SelectedId,SelectedScore):-
    findall(ChildId-ChildScore, (
                member(_-ChildId,ExpandedIdPairs),
                nb_hashtbl_get(NodeHash,ChildId,[_,ChildProb,ChildVisitCount,ChildValue,_]),
                mc_ucb_score(VisitCount,ChildProb,ChildVisitCount,ChildValue,ChildScore)
            ), Scores
           ),
    mc_select_largest_score(Scores,SelectedId,SelectedScore).


% select_largest_score(+Scores,-SelectedId,-SelectedScore)
% +Score: StateId-Score pair list
% -SelectedId: StateId with the largest Score, as well as the Score
% fails if Scores is empty
mc_select_largest_score([Id-Score|Scores],SelectedId,SelectedScore):-
    mc_select_largest_score(Scores,Id,Score,SelectedId,SelectedScore).
mc_select_largest_score([],AccId,AccScore,AccId, AccScore).
mc_select_largest_score([Id-Score|Scores],AccId,AccScore,SelectedId, SelectedScore):-
    (  Score > AccScore -> mc_select_largest_score(Scores,Id,Score,SelectedId,SelectedScore)
    ;  Score = AccScore ->
       ( random(2) =:= 0 -> mc_select_largest_score(Scores,Id,Score,SelectedId,SelectedScore)
       ; mc_select_largest_score(Scores,AccId,AccScore,SelectedId,SelectedScore)
       )
     ; mc_select_largest_score(Scores,AccId,AccScore,SelectedId,SelectedScore)
    ).
                         
% +AC: ActionCount
% +Actions: already explored ActionId-ChildId pairs
% -Missing: list of ActionId
missing_actions(AC,Actions,Missing):-
    AC1 is AC-1,
    findall(M, (
                between(0,AC1,M),
                \+member(M-_,Actions)
            ), Missing
           ).

% upper confidence bounds for trees
% mc_ucb_score(+ParentVisitCount,+ChildProb,+VisitCount,+Value,-Score)
mc_ucb_score(ParentVisitCount, ChildProb, VisitCount, Value, Score):-
    mc_param(cp, Cp),
    Score is Value / VisitCount + Cp * ChildProb * sqrt(log(ParentVisitCount-1)/VisitCount).

mc_ucb_score_unexplored(1, _ActionCount, 10000):- !.
mc_ucb_score_unexplored(_, 0, 0):- !.
mc_ucb_score_unexplored(ParentVisitCount, ActionCount, Score):-
    mc_param(cp,Cp),
    Score is Cp / ActionCount * sqrt(log(ParentVisitCount-1)).

% mc_child_list(+Id,+NodeHash,+ChildHash,-ChildPairs).
% ChildPairs is ActionId-ChildId pair list
mc_child_list(Id,NodeHash,ChildHash,ChildPairs):-
    nb_hashtbl_get(NodeHash,Id,[State,_,_,_,_]),
    action_count(State,AC),
    AC1 is AC-1,
    findall(ActionId-ChildId, (
                between(0,AC1,ActionId),
                nb_hashtbl_get(ChildHash,Id-ActionId,ChildId)
            ), ChildPairs
           ).


% mc_select_most_visited(+ChildPairs,+NodeHash,-TopPair).
% +ChildPairs is a list of ActionId-ChildId
% -TopPairs is a list containing a single member of ChildPairs with the highest visit count.
% If ChildPairs is empty, ToPairs is []
mc_select_most_visited([],_,[]).
mc_select_most_visited([ActionId-ChildId|ChildPairs],NodeHash,TopPairs):-
    nb_hashtbl_get(NodeHash,ChildId,[_,_,VC,_,_]),
    mc_select_most_visited(ChildPairs,NodeHash,ActionId-ChildId,VC,TopPairs).

mc_select_most_visited([],_,Top,_,[Top]).
mc_select_most_visited([ActionId-ChildId|ChildPairs],NodeHash,TopPairAcc,TopVCAcc,TopPairs):-
    nb_hashtbl_get(NodeHash,ChildId,[_,_,VC,_,_]),
    (  VC > TopVCAcc -> mc_select_most_visited(ChildPairs,NodeHash,ActionId-ChildId,VC,TopPairs)
     ; mc_select_most_visited(ChildPairs,NodeHash,TopPairAcc,TopVCAcc,TopPairs)
    ).