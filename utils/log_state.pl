%% Contains logging functions for the training process.

:- ensure_loaded(core/embedding).
:- ensure_loaded(hashtbl/prolog/nb_hashtbl).
:- ensure_loaded(utils/filenames).


save_training_data(File, FHash, ValueDir, PolicyDir, Value, Policy):-
    get_time(T), T2 is round(T), set_random(seed(T2)),
    
    ( ( mc_param(save_all_value, SaveProbV), random(RandV), RandV < SaveProbV
      ; proof_found(_)
      ) -> 
      get_output_file(ValueDir,File,ValueFile),
      open(ValueFile, write, VStream),
      ( mc_param(output_format, svmlight) -> 
        write_svmlight_list(Value, FHash, VStream)
      ; mc_param(output_format, string) ->
        write_string_list(Value, VStream)
      ),
      close(VStream),
      writeln("Value data saved")
    ; true
    ),
    
    ( ( mc_param(save_all_policy, SaveProbP), random(RandP), RandP < SaveProbP
      ; proof_found(_)
      ) -> 
      get_output_file(PolicyDir,File,PolicyFile),
      open(PolicyFile,write,PStream),
      ( mc_param(output_format, svmlight) ->
        write_svmlight_list(Policy, FHash, PStream)
      ; mc_param(output_format, string) ->
        write_string_list(Policy, PStream)
      ),
      close(PStream),
      writeln("Policy data saved")
    ; true
    ).


%%%%%%%%%%%%%%%%%%%
%% SVMLight Version
%%%%%%%%%%%%%%%%%%%

write_svmlight_list([], _, _).
write_svmlight_list([L|Ls], FHash, Stream):-
    write_svmlight(L, FHash, Stream),
    write_svmlight_list(Ls, FHash, Stream).

write_svmlight([State, Target], FHash, Stream):-
    !,
    logic_embed(State, FHash, state_only, _EmbStateP, EmbStateV, _EmbActions),
    
    format(Stream,"~w ",[Target]),
    (  member([Key,Value], EmbStateV),
       format(Stream, "~d:~1f ", [Key, Value]),
       fail
    ; true
    ),
    writeln(Stream,"").

write_svmlight([State, ActionId, Target], FHash, Stream):-
    logic_embed(State, FHash, both, EmbStateP, _EmbStateV, EmbActions),
    nth0(ActionId, EmbActions, EmbAction),
    append(EmbStateP, EmbAction, EmbState2),
    
    format(Stream,"~w ",[Target]),
    (  member([Key,Value], EmbState2),
       format(Stream, "~d:~1f ", [Key, Value]),
       fail
    ; true
    ),
    writeln(Stream,"").


%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Readable String Version
%%%%%%%%%%%%%%%%%%%%%%%%%%

write_string_list([], _).
write_string_list([L|Ls], Stream):-
    write_string(L, Stream),
    write_string_list(Ls, Stream).

write_string(Data, Stream):-
    Data = [State| Rest],
    State=state(Goal, Path, Lem, Actions, Todos, _Proof, _Result),
    term_string(Goal, GoalS),
    term_string(Path, PathS),
    term_string(Lem, LemS),
    term_string(Todos, TodosS),
    
    format(Stream, "GOAL ~w\n",[GoalS]),
    format(Stream, "PATH ~w\n",[PathS]),
    format(Stream, "LEM ~w\n",[LemS]),
    format(Stream, "TODOS ~w\n",[TodosS]),

    ( Rest = [ActionId, Target] ->
      nth0(ActionId, Actions, Action),
      term_string(Action, ActionS),
      format(Stream, "ACTION ~w\n",[ActionS])
    ; Rest = [Target]
    ),
    
    format(Stream, "TARGET ~w\n\n",[Target]).