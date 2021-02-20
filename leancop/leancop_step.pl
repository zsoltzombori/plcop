%% Simple interactive environment to explore leanCoP
%% Given a problem in tptp format in File, simple call
%%
%% init(File).
%%
%% You can observe the current state as well as the list of valid actions
%% Select the index (starting from 0) I of the action you want to make
%%
%% step(I).
%%
%% You can now observe the resulting state and repeatedly perform more steps.
%%
%% Goal: current goal to prove
%% Path: list of open goals (anestors of the current goal)
%% Lem: list of lemmas (literals that we have already proven with a prefix of the current path)
%% Result: 0 (there are valid moves), 1 (success), 2 (failure)
%% Todos: list of triples of Goal, Path, Lem on the stack


:- dynamic(lit/4).
:- dynamic(option/1).
:- dynamic(state/6).

:- [leancop_tptp2].  % load program for TPTP input syntax
:- [def_mm].  % load program for clausal form translation
:- [leancop21_swi]. % load program for asserting clauses

embed_init(File,Settings,[EGoal,EPath,ELem],EActions,Result):-
    init(File,Settings,[Goal,Path,Lem],Actions,Result),
    embed(Goal,EGoal),
    embed(Path,EPath),
    embed(Lem,ELem),
    findall(EAction, (member(Action,Actions), embed(Action,EAction)), EActions).
embed_step(ActionIndex,[EGoal,EPath,ELem],EActions,Result):-
    step(ActionIndex,[Goal,Path,Lem],Actions,Result),
    embed(Goal,EGoal),
    embed(Path,EPath),
    embed(Lem,ELem),
    findall(EAction, (member(Action,Actions), embed(Action,EAction)), EActions).

init:-
    %% init('theorems/robinson/robinson_1m1__1/robinson_1m1__1.p', Settings).
    init('theorems/m2np/t108_zfmisc_1.p').
init(File):-
    Settings = [conj,nodef,comp(10),verbose,print_proof],
    init(File, Settings).
init(File,Settings):-
    init(File,Settings,_,_,_).
init(File,Settings,[Goal,Path,Lem],Actions,Result):-
    init_pure(File,Settings,NewState),
    NewState = state(Goal,Path,Lem,Actions,Todos,Proof,Result),
    set_state(Goal,Path,Lem,Actions,Todos,Proof),
    log(Goal,Path,Lem,Actions,Todos,Proof,Result,start).

% init_pure(+File,+Settings,-NewState)
init_pure(File,Settings,NewState):-
    NewState = state(Goal,Path,Lem,Actions,Todos,Proof,Result),
    %% NewState = state(Goal,Path,Lem,Actions,Todos,Result),

    retractall(option(_)),
    findall(_, ( member(S,Settings), assert(option(S)) ), _ ),

    AxNames=[_],
    %% AxPath='',
    file_directory_name(File, AxPath0),
    name(AxPath0, N0), name("/", N1), append(N0, N1, N), name(AxPath, N),
    format("Trying to open file ~w...\n", [File]),
    leancop_tptp2(File,AxPath,AxNames,Problem,Conj), !,
    format("Successfully opened file ~w\n", [File]),
    ( Conj\=[] -> Problem1=Problem ; Problem1=(~Problem) ),
    leancop_equal(Problem1,Problem2),
    %% leancop_equal_reflexivity(Problem1,Problem2), % TODO
    make_matrix(Problem2,Matrix,Settings),
    ( option(verbose) ->
	  writeln(["Problem ", Problem2]),
	  writeln(["Matrix ", Matrix])
     ; true
    ),
    b_setval(matrix, Matrix), %TODO super ugly
    retractall(lit(_,_,_,_)),
    (member([-(#)],Matrix) -> S=conj ; S=pos),
    assert_clauses(Matrix,S),
    det_steps([-(#)],[],[],[],[init((-#)-(-#))],Goal,Path,Lem,Todos,Proof,Result0),
    valid_actions_filter(Goal,Path,Actions),
    (  length(Actions,0), Result0 < 1 -> Result = -1
     ; Result = Result0
    ).

    
:- dynamic(alternative/6).
step(ActionIndex):-
    step(ActionIndex,_,_,_).
step(ActionIndex,[Goal,Path,Lem],Actions,Result):-
    state(Goal0,Path0,Lem0,Actions0,Todos0,Proof0),
    State = state(Goal0,Path0,Lem0,Actions0,Todos0,Proof0,_Result0),
    step_pure(ActionIndex,State,NewState,Action0),
    NewState = state(Goal,Path,Lem,Actions,Todos,Proof,Result),
					 
    set_state(Goal,Path,Lem,Actions,Todos,Proof),
    log(Goal,Path,Lem,Actions,Todos,Proof,Result,Action0).


% step_pure(+ActionIndex,+State,-NewState,-SelectedAction))
step_pure(ActionIndex,State,NewState,Action0):-
    ( State = state(Goal0,Path0,Lem0,Actions0,Todos0,Proof0,_Result0) ->
      NewState = state(Goal,Path,Lem,Actions,Todos,Proof,Result)
    ; State = state(Goal0,Path0,Lem0,Actions0,Todos0,_Result0) ->
      NewState = state(Goal,Path,Lem,Actions,Todos,Result)
    ),

    nth0(ActionIndex,Actions0,Action0),

    % if there were other alternative actions, store them as alternatives
    (option(backtrack), Actions0=[_,_|_] ->
	 select_nounif(Action0, Actions0, RemActions0), !,
	 asserta(alternative(Goal0,Path0,Lem0,RemActions0,Todos0,Proof0))
     ; true
    ),
    
    nondet_step(Action0,Goal0,Path0,Lem0,Todos0,Proof0,Goal1,Path1,Lem1,Todos1,Proof1,Result1),
    ( Result1 == -1, option(backtrack), pop_alternative(Goal,Path,Lem,Actions,Todos,Proof) ->
	  Result=0,
	  log(Goal,Path,Lem,Actions,Todos,Proof,Result,Action0)
												   
     ; [Goal,Path,Lem,Todos,Proof,Result] = [Goal1,Path1,Lem1,Todos1,Proof1,Result1],
       valid_actions_filter(Goal,Path,Actions)
    ).

pop_alternative(Goal,Path,Lem,Actions,Todos,Proof):-
    alternative(Goal,Path,Lem,Actions,Todos,Proof),
    retract(alternative(Goal,Path,Lem,Actions,Todos,Proof)), !.

:- dynamic(state/6).
% save the current state
set_state(Goal,Path,Lem,Actions,Todos,Proof):-
    retractall(state(_,_,_,_,_,_)),
    assert(state(Goal,Path,Lem,Actions,Todos,Proof)).
% log exploration
log(Goal,Path,Lem,Actions,Todos,Proof,Result,Selected):-
    ( option(verbose) ->
	  write("Selected "), print_term(Selected, [indent_arguments(false)]), nl,
	  write("Goal     "), print_term(Goal, [indent_arguments(false)]), nl,
	  write("Path     "), print_term(Path, [indent_arguments(false)]), nl,
	  write("Lem      "), print_term(Lem, [indent_arguments(false)]), nl,
      nl,
      writeln("Actions:"),
      foreach(member(A,Actions), (print_term(A,[indent_arguments(false)]), nl)), 
      nl,
	  write("Result   "), print_term(Result, [indent_arguments(false)]), nl,
	  write("Todos    "), print_term(Todos, [indent_arguments(false)]), nl
     ; true
    ),

    ( option(print_proof), Result == 1 ->
	  writeln("Proof found:"),
	  reverse(Proof,ProofRev),
	  print_my_proof(ProofRev, orig)
     ; true
    ).


% goal and path share an identical literal
has_loop(Goal,Path):-
    (member(LitC,Goal), member(LitP,Path), LitC==LitP), !.
% Lit is the negation of NegLit
neg_lit(Lit, NegLit):-
    (-NegLit=Lit;-Lit=NegLit), !.
select_nounif(E,Xs,Rem):-
    select_nounif(Xs,E,[],Rem).
select_nounif([X|Xs],E,Acc,Rem):-
    ( X == E -> reverse(Acc,RevAcc), append(RevAcc,Xs,Rem)
     ;select_nounif(Xs,E,[X|Acc],Rem)
    ).


%%% make a single proof step from a choice point
% nondet_step(Action,Goal,Path,Lem,Todos,Proof,NewGoal,NewPath,NewLem,NewTodos,NewProof,Result)
nondet_step(red(NegL), [Lit|Cla],Path,Lem,Todos,Proof,NewGoal,NewPath,NewLem,NewTodos,NewProof,Result):- % reduction step
    Ext = [Lit, NegL],
    copy_term(Ext,Ext_orig),
    neg_lit(Lit,NegL),
    Proof2 = [red(Ext_orig-Ext)|Proof],
    det_steps(Cla,Path,Lem,Todos,Proof2,NewGoal,NewPath,NewLem,NewTodos,NewProof,Result).
nondet_step(ext(NegLit,Cla1,_Grnd1), [Lit|Cla],Path,Lem,Todos,Proof,NewGoal,NewPath,NewLem,NewTodos,NewProof,Result):- % extension step
    Ext = [Lit, [NegLit|Cla1]],
    copy_term(Ext, Ext_orig),
    neg_lit(Lit, NegLit),
    ( Cla=[_|_] ->
	  Todos2 = [[Cla,Path,[Lit|Lem]]|Todos]
     ; Todos2 = Todos
    ),
    Proof2=[ext(Ext_orig-Ext)|Proof],
    det_steps(Cla1,[Lit|Path],Lem,Todos2,Proof2,NewGoal,NewPath,NewLem,NewTodos,NewProof,Result).
nondet_step(para(Pos, LHS, RHS, Cla1, Dir), [Lit|Cla],Path,Lem,Todos,Proof,NewGoal,NewPath,NewLem,NewTodos,NewProof,Result):- % paramodulation
    position(Lit, Pos, Term), !,
    Para = [Lit, Pos, LHS, RHS, Cla1, Dir],
    copy_term(Para, Para_orig),
    ( Dir = l2r -> LHS = Term, RHS = To
    ; LHS = To, RHS = Term
    ),
    replace_term_in_pos(Lit, Pos,To,Lit2),
    ( Cla=[_|_] ->
	  Todos2 = [[Cla,Path,[Lit|Lem]]|Todos]
     ; Todos2 = Todos
    ),
    Proof2=[para(Para_orig-Para)|Proof],
    det_steps([Lit2|Cla1],[Lit|Path],Lem,Todos2,Proof2,NewGoal,NewPath,NewLem,NewTodos,NewProof,Result).

% perform steps until the next choice point (or end of proof)
det_steps([],_Path,_Lem,Todos,Proof,NewGoal,NewPath,NewLem,NewTodos,NewProof,Result):-
    !,
    ( Todos = [] -> % nothing to prove, nothing todo on the stack
	  [NewGoal,NewPath,NewLem,NewTodos,NewProof,Result] = [[success],[],[],[],Proof,1]
     ; Todos = [[Goal2,Path2,Lem2]|Todos2] -> % nothing to prove, something on the stack
	   det_steps(Goal2,Path2,Lem2,Todos2,Proof,NewGoal,NewPath,NewLem,NewTodos,NewProof,Result)
    ).
% det_steps([Lit|_Cla],Path,_Lem,_Todos,Proof,NewGoal,NewPath,NewLem,NewTodos,NewProof,Result):-
%     member(P,Path), Lit == P, !, % loop elimination
det_steps(Cla,Path,_Lem,_Todos,Proof,NewGoal,NewPath,NewLem,NewTodos,NewProof,Result):-
    member(Lit,Cla), member(P,Path), Lit == P, !, % loop elimination
    [NewGoal,NewPath,NewLem,NewTodos,NewProof,Result] = [[failure],[],[],[],Proof,-1].    
det_steps([Lit|Cla],Path,Lem,Todos,Proof,NewGoal,NewPath,NewLem,NewTodos,NewProof,Result):-
    member(LitL,Lem), Lit==LitL, !, % perform lemma step
    Proof2 = [lem(Lit)|Proof],
    det_steps(Cla,Path,Lem,Todos,Proof2,NewGoal,NewPath,NewLem,NewTodos,NewProof,Result).
det_steps([Lit|Cla],Path,Lem,Todos,Proof,NewGoal,NewPath,NewLem,NewTodos,NewProof,Result):-
    neg_lit(Lit,NegLit),
    ( option(eager_reduction(1)) -> member(NegL,Path), unify_with_occurs_check(NegL, NegLit), ! % eager reduction
    ; member(NegL,Path), NegL == NegLit, ! % reduction step without unification can be performed eagerly
    ),
    Ext = [Lit, NegLit],
    Proof2 = [red(Ext-Ext)|Proof],
    det_steps(Cla,Path,Lem,Todos,Proof2,NewGoal,NewPath,NewLem,NewTodos,NewProof,Result).
det_steps(Goal,Path,Lem,Todos,Proof,NewGoal,NewPath,NewLem,NewTodos,NewProof,Result):-
    valid_actions_filter(Goal,Path,Actions),
    ( option(single_action_optim),  Actions==[A] -> % only a single action is available, so perform it
	  nondet_step(A,Goal,Path,Lem,Todos,Proof,NewGoal,NewPath,NewLem,NewTodos,NewProof,Result)
    ;Actions==[] ->             % proof failed
	  [NewGoal,NewPath,NewLem,NewTodos,NewProof,Result] = [[failure],[],[],[],Proof,-1]
    ; option(comp(PathLim)), \+ ground(Goal), length(Path,PLen), PLen > PathLim -> % reached path limit
      [NewGoal,NewPath,NewLem,NewTodos,NewProof,Result] = [[failure],[],[],[],Proof,-1]
    ;[NewGoal,NewPath,NewLem,NewTodos,NewProof,Result] = [Goal,Path,Lem,Todos,Proof,0]
    ).

valid_actions_filter(Goal,Path,Actions):-
    valid_actions2(Goal,Path,Actions0),
    ( option(paramodulation(0)) ->
      filter_top_pred(Actions0, para, Actions)
    ; Actions = Actions0
    ).

filter_top_pred([], _, []).
filter_top_pred([A|As], TopPred, Bs):-
    ( A =.. [TopPred|_] -> filter_top_pred(As, TopPred, Bs)
    ; Bs = [A|Bs1], filter_top_pred(As, TopPred, Bs1)
    ).

% embed formulas into sequences of ints
% THIS IS A VERY SIMPLE, VERY PRELIMINARY VERSION
% variables are marked with 0
% other symbols are marked with a unique index
:- dynamic(atomlist/1).

embed(X,Emb):-
    ( atomlist(AtomL0) -> true
     ;AtomL0=[]
    ),
    embed(X,AtomL0,[],AtomL,Emb),
    retractall(atomlist(_)),
    assert(atomlist(AtomL)).
embed(X,AtomL0,Emb0,AtomL,Emb):-
    ( var(X) -> Name = var
     ;atom(X) -> Name = X
    ), !,
    add_to_embedding(Name,AtomL0,Emb0,AtomL,Emb).
embed(X,AtomL0,Emb0,AtomL,Emb):-
    is_list(X), !,
    embed_list(X,AtomL0,Emb0,AtomL,Emb).
embed(X,AtomL0,Emb0,AtomL,Emb):-
    X=..[Name|Args],
    add_to_embedding(Name,AtomL0,Emb0,AtomL1,Emb1),
    embed_list(Args,AtomL1,Emb1,AtomL,Emb).

embed_list([],AtomL,Emb,AtomL,Emb).
embed_list([X|Xs],AtomL0,Emb0,AtomL,Emb):-
    embed(X,AtomL0,Emb0,AtomL1,Emb1),
    embed_list(Xs,AtomL1,Emb1,AtomL,Emb).
		 
add_to_embedding(Name,AtomL0,Emb0,AtomL,Emb):-
    ( nth0(I,AtomL0,Name) -> AtomL=AtomL0
     ;append(AtomL0,[Name],AtomL),
      nth0(I,AtomL,Name)
    ),
    Emb=[I|Emb0].

%% print proofs
%% print_my_proof(+Proof, +Type):- Type in {orig, substituted, both}
print_my_proof([], _).
print_my_proof([lem(Lit)|Proof], Type):- !,
    format('   ~w: ~t', ['Lemma    ']),
    print_term(Lit, [indent_arguments(false)]),
    nl,
    print_my_proof(Proof, Type).
print_my_proof([P|Proof], Type):-
    P =.. [Head, Orig-Substituted],
    ( Head = init -> Name = "Init"
    ; Head = red -> Name = "Reduction"
    ; Head = ext -> Name = "Extension"
    ; Head = para -> Name = "Paramodulation"
    ),
    write('   '), write(Name), write(': \t'),

    ( Type == orig -> print_term(Orig, [indent_arguments(false)])
    ; Type == substituted -> print_term(Substituted, [indent_arguments(false)])
    ; Type == both -> print_term(Orig, [indent_arguments(false)]), nl, write('\t\t -> '), print_term(Substituted, [indent_arguments(false)])
    ),
    nl,
    print_my_proof(Proof, Type).



print_kb():-
    findall(Ax, (
                 lit(_E,NegL,Cla,_),
                 Ax = lit([NegL|Cla]),
                 print_term(Ax, [indent_arguments(false)]), nl
               ), Axs
           ),
    length(Axs, L),
    format("Kb contains ~d axioms \n\n", [L]).




proof_clauses([], _).
proof_clauses([init(_)|Proof], Stream):- !,
    format(Stream, '\ninit.\n', []),
    proof_clauses(Proof, Stream).
proof_clauses([lem(_)|Proof], Stream):- !,
    format(Stream, '\nlemma.\n', []),
    proof_clauses(Proof, Stream).
proof_clauses([red(_)|Proof], Stream):- !,
    format(Stream, '\nreduction.\n', []),
    proof_clauses(Proof, Stream).
proof_clauses([para(Orig-_Substituted)|Proof], Stream):- !,
    Orig = [Goal, Pos, LHS, RHS, Cla, Dir],
    format(Stream, '\nparamodulation.\n', []),
    rewrite_for_print([Goal], [Goal1]),
    copy_term(Goal1, Goal2), numbervars(Goal2, 0, _),
    format(Stream, "~w.\n", [Goal2]),
    format(Stream, "~w.\n", [Pos]),
    format(Stream, "~w.\n", [Dir]),
    print_clause([neg(eq(LHS,RHS))|Cla], Stream),
    proof_clauses(Proof, Stream).
proof_clauses([ext(Orig-_Substituted)|Proof], Stream):- !,
    Orig = [Goal, OrigC],
    format(Stream, '\nextension.\n', []),
    rewrite_for_print([Goal], [Goal1]),
    copy_term(Goal1, Goal2), numbervars(Goal2, 0, _),
    format(Stream, "~w.\n", [Goal2]),
    print_clause(OrigC, Stream),
    proof_clauses(Proof, Stream).

print_clause(Clause, Stream):-
    rewrite_for_print(Clause, Clause0),
    copy_term(Clause0, Clause1), numbervars(Clause1, 0, _),
    Clause1 = [NegHead|Body],
    ( NegHead = neg(Head) -> true
    ; Head = neg(NegHead)
    ),
    format(Stream, '~w', [Head]),
    length(Body, BLen),
    ( BLen > 0 -> Body = [B0 | Brest],
      format(Stream, ":-\n\t~w",[B0]),
      findall(B, (
                  member(B, Brest),
                  format(Stream, ', ~w', [B])
                 ), _
             )
    ; true
    ),
    format(Stream, '.\n', []).


rewrite_for_print(A, B):-
    ( var(A) -> B=A
    ; A = (#) -> B = hashMark
    ; atomic(A) -> B=A
    ; A = [_|_] -> maplist(rewrite_for_print,A,B)             
    ; A =.. [Head|Args],
      maplist(rewrite_for_print, Args, Args2),
      ( Head == (=) -> Head2 = eq
      ; Head == (-) -> Head2 = neg
      ; Head2 = Head
      ),
      B =.. [Head2|Args2]
    ).

