%% Provides an step-by-step interface for the leancop solver

:- ensure_loaded(leancop/leancop_step).


% calls leancop_step.pl
logic_init(File,Settings,NextState):-
    % set_flag(logic_steps,0),
    init_pure(File,Settings,NextState).
logic_step(State,ActionIndex,NextState):-
    step_pure(ActionIndex,State,NextState,_), !.
    % flag(logic_steps,Steps,Steps+1),
    % (  NextState=state([success],_Path,_Lem,_Actions,_Todos,_Proof,_Result) ->
    %        format("Found proof in ~d steps\n", [Steps])
    %  ; true
    % ).