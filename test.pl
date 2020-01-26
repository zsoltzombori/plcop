:- [leancop_main].

%%% call leanCoP core prover
t(Result):-
    File = 'theorems/pelletier21.p',
    % File = 'theorems/a.p',
    Settings = [cut,comp(7)],
    leancop_main(File,Settings,Result).
