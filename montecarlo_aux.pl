%% Inspired by https://arxiv.org/pdf/2007.12509.pdf
%% Monte-Carlo tree search as regularized policy optimization

p_bar(0, _, _, _, _, _, []):- !.
p_bar(ActionCount, ParentVC, Cp, MaxError, ChildProbs, ChildValues, Probs):-
    lambda(ActionCount, ParentVC, Cp, Lambda),
    alpha_min_max(Lambda, ChildProbs, ChildValues, Amin, Amax),
    find_alpha(Lambda, ChildProbs, ChildValues, Amin, Amax, MaxError, Alpha),
    findall(X, (
                nth0(N, ChildProbs, P),
                nth0(N, ChildValues, V),
                X is Lambda * P / (Alpha - V)
            ), Probs
           ).


empirical_visit_prob(ActionCount, ParentVC, VC, Prob):-
    Total is ParentVC - 1 + ActionCount,
    Prob is (1+VC) / Total.

lambda(ActionCount, ParentVC, Cp, Lambda):-
    Lambda is Cp * sqrt(ParentVC - 1) / (ActionCount + ParentVC - 1).

child_score(ActionCount, ParentVC, VC, Cp, ChildProb, Value, Score):-
    lambda(ActionCount, ParentVC, Cp, Lambda),
    empirical_visit_prob(ActionCount, ParentVC, VC, EmpProb),
    Score is Value + Lambda * ChildProb / EmpProb.

alpha_min_max(Lambda, ChildProbs, ChildValues, Amin, Amax):-
    max_list(ChildValues, MaxValue),
    Amax is MaxValue + Lambda,
    findall(X, (
                nth0(N, ChildProbs, P),
                nth0(N, ChildValues, V),
                X is V + Lambda * P
            ), Amins
           ),
    max_list(Amins, Amin).

p_bar_sum(Lambda, ChildProbs, ChildValues, Alpha, Sum):-
    findall(X, (
                nth0(N, ChildProbs, P),
                nth0(N, ChildValues, V),
                X is P / (Alpha - V)
            ), Xs
           ),
    sum_list(Xs, XsSum),
    Sum is Lambda * XsSum.

find_alpha(Lambda, ChildProbs, ChildValues, Amin, Amax, MaxError, Alpha):-
    p_bar_sum(Lambda, ChildProbs, ChildValues, Amin, Sum),
    ( abs(1 - Sum) < MaxError -> Alpha = Amax
    ; Aavg is (Amin + Amax) / 2,
      p_bar_sum(Lambda, ChildProbs, ChildValues, Aavg, SumAvg),
      ( SumAvg > 1 -> find_alpha(Lambda, ChildProbs, ChildValues, Aavg, Amax, MaxError, Alpha)
      ; find_alpha(Lambda, ChildProbs, ChildValues, Amin, Aavg, MaxError, Alpha)
      )
    ).

    
           
