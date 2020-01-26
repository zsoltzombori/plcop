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
    Settings = [conj,nodef,comp(10),verbose,print_proof],
    init('theorems/robinson/robinson_1m1__1/robinson_1m1__1.p', Settings).
%%    init('theorems/m2np/l115_zfmisc_1.p', Settings).
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
	  writeln(["Selected ", Selected]),
	  writeln(["Goal: ", Goal]),
      writeln(["Path: ", Path]),
      writeln(["Lem:  ", Lem]),
      nl,
      foreach(member(A,Actions), format("Action ~w\n",[A])),
      nl,
	  % writeln(["Actions ", Actions]),
	  writeln(["Result ", Result]),
	  writeln(["Todos ", Todos])
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
nondet_step(para(Pos, From, To, Cla1, Dir), [Lit|Cla],Path,Lem,Todos,Proof,NewGoal,NewPath,NewLem,NewTodos,NewProof,Result):- % paramodulation
    position(Lit, Pos, Term), !,
    Para = [Lit, Pos, From, To, Cla1, Dir],
    copy_term(Para, Para_orig),
    Term = From,
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
det_steps([Lit|_Cla],Path,_Lem,_Todos,Proof,NewGoal,NewPath,NewLem,NewTodos,NewProof,Result):-
    member(P,Path), Lit == P, !, % loop elimination
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
    format('   ~w: ~t ~w\n', ['Lemma    ', Lit]),
    print_my_proof(Proof, Type).
print_my_proof([P|Proof], Type):-
    P =.. [Head, Orig-Substituted],
    ( Head = init -> Name = "Init"
    ; Head = red -> Name = "Reduction"
    ; Head = ext -> Name = "Extension"
    ; Head = para -> Name = "Paramodulation"
    ),
    write('   '), write(Name), write(': \t'),

    ( Type == orig -> write(Orig)
    ; Type == substituted -> write(Substituted)
    ; Type == both -> write(Orig), nl, write('\t\t -> '), write(Substituted)
    ),
    nl,
    print_my_proof(Proof, Type).



print_kb():-
    findall(Ax, (
                 lit(_E,NegL,Cla,_),
                 Ax = lit([NegL|Cla]),
                 writeln(Ax)
               ), Axs
           ),
    length(Axs, L),
    format("Kb contains ~d axioms \n\n", [L]).




proof_clauses([], _).
proof_clauses([init(_)|Proof], Stream):- !,
    proof_clauses(Proof, Stream).
proof_clauses([lem(_)|Proof], Stream):- !,
    proof_clauses(Proof, Stream).
proof_clauses([red(_)|Proof], Stream):- !,
    proof_clauses(Proof, Stream).
proof_clauses([para(Orig-_Substituted)|Proof], Stream):- !,
    Orig = [Goal, Pos,  From ,To, Cla, _Dir], % TODO maybe include Dir
    %% Substituted = [_, FromC ,ToC, ClaC],
    rewrite_neg([Goal], [Goal1]),
    format(Stream, "\nparamodulation(~w).\n", [Goal1]),
    print_clause([neg(eq(From,To))|Cla], Stream),
    %% print_clause([neg(eq(FromC,ToC))|ClaC], Stream),
    format(Stream, "~w.\n", [Pos]),
    proof_clauses(Proof, Stream).
proof_clauses([ext(Orig-Substituted)|Proof], Stream):- !,
    Orig = [Goal, OrigC],
    Substituted = [_, SubstitutedC],
    rewrite_neg([Goal], [Goal1]),
    format(Stream, "\n~w.\n", [Goal1]),
    print_clause(OrigC, Stream),
    print_clause(SubstitutedC, Stream),
    proof_clauses(Proof, Stream).

print_clause(Clause, Stream):-
    rewrite_neg(Clause, Clause0),
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

rewrite_neg([], []).
rewrite_neg([C|Cs], [RC|RCs]):-
    ( C = -X -> RC = neg(X)
    ; RC = C
    ),
    rewrite_neg(Cs, RCs).

           
