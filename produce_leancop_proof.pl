
:- [leancop_proof].  % load program for proof presentation
:- [leancop21_swi].

produce_leancop_proof(PLP, ProofFile, Result):-
    PLP = [init((-#)-(-#))|PLP1],
    Set = [], % [cut],

    b_getval(matrix, Matrix-MatSource), %TODO super ugly
    b_getval(file, File),     %TODO super ugly

    copy_term(PLP1, PLP2),
    replace_lemmata(PLP2, PLP3),

    ( prove([-(#)],[],[],Set,PLP3,_,[Proof0]) ->
      remove_unknown_lemmata(Proof0, Proof),

      current_output(Orig),     % save current output
      open(ProofFile, write, ProofStream),
      set_output(ProofStream),
      write('% Start of proof for '), write(File), nl,
      ( leancop_proof(Matrix,MatSource,Proof) ->
        write('% End of proof for '), write(File), nl,
        close(ProofStream),
        set_output(Orig),
        writeln("Created leancop proof"),
        Result=1
      ; close(ProofStream),
        set_output(Orig),
        writeln("Failed proof writing"),
        Result=0
      )
    ; writeln("Failed to create proof for problem"),
      Result = 0
    ).    



%%% leanCoP core prover guided by a plcop proof (two extra arguments PLPin, PLPout)
%%% pathlim has been removed

prove([],_,_,_,PLP,PLP,[]).
prove([Lit|Cla],Path,Lem,Set,PLPin,PLPout,Proof) :-
    % format("\nGoal: ~w\n", [Lit]),

    PLPin = [Next|PLP1],
    ( Next=para(ParaOrig-_) ->
      Proof=[[[paramodulation(Lit, Lit2, Dir, LHS, RHS, Cla11)|Cla1]|Proof1]|Proof2]
    ; Proof=[[[NegLit|Cla1]|Proof1]|Proof2]
    ),
    \+ (member(LitC,[Lit|Cla]), member(LitP,Path), LitC==LitP),
    neg_lit(Lit, NegLit),

    ( Next=lem(_),
      ( member(LitL,Lem), Lit==LitL -> Cla1=[], Proof1=[] % regular lemma step
      ; Cla1 = [], Proof1 = [unknown_lemma] % lemma step using an unknown lemma
      ),
      PLP2=PLP1
    ;
      Next=red([Lit, NegLit]-_),
      member(NegL,Path), unify_with_occurs_check(NegL,NegLit),
      Cla1=[], Proof1=[],
      PLP2=PLP1
    ;
      Next=ext(ExtOrig-Ext),
      ExtOrig = [Lit, [NegLit|Cla1]],
      Ext = [LitSubst|_], \+ \+ LitSubst = Lit,
      lit(NegLit,NegL,Cla1,_Grnd1, _, _, _),
      unify_with_occurs_check(NegL,NegLit),
      prove(Cla1,[Lit|Path],Lem,Set,PLP1,PLP2,Proof1)
    ;
      Next=para(ParaOrig-_),
      ParaOrig = [Lit, Pos, LHS, RHS, Cla11, Dir],
      ( Dir = l2r -> LHS = From, RHS = To
      ; LHS = To, RHS = From
      ),

      lit(_, -(LHS=RHS), Cla11, _, _, _, _),

      position(Lit,Pos,From),
      replace_term_in_pos(Lit,Pos,To,Lit2),
      Cla1 = [Lit2|Cla11],
      prove(Cla1,[Lit|Path],Lem,Set,PLP1,PLP2,Proof1)
    ),
    ( member(cut,Set) -> ! ; true ),
    prove(Cla,Path,[Lit|Lem],Set,PLP2,PLPout,Proof2).

remove_unknown_lemmata(ProofIn, ProofOut):-
    position(ProofIn, Pos, [[NegLit], UL]), UL == unknown_lemma, !,
    position(ProofIn, _, [[NegLitLem|ClaLem]|ProofLem]),
    NegLit == NegLitLem, !,
    replace_term_in_pos(ProofIn, Pos, [[NegLitLem|ClaLem]|ProofLem], Proof2),
    remove_unknown_lemmata(Proof2, ProofOut).
remove_unknown_lemmata(Proof, Proof).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

preprocess_proof([], _, []).
preprocess_proof([para(ParaOrig-_)|Xs], Counter, Ys):-
    ParaOrig = [Lit, Pos, LHS, RHS, Cla, Dir],

    ( Lit=(_=_) -> 
      para_descent(Pos, Lit, LHS, RHS, Cla,  Dir, Counter, Steps)
    ; congruence_axiom(Lit, [NegLit|Cla1]),
      Ext1 = [Lit, [NegLit|Cla1]],
      Steps = [ext(Ext1-Ext1, Counter)|Steps0],
      Pos = [P|Pos2],
      Cla1 = [_|Cla2],
      func_subst_substeps(Cla2, P, Pos2, LHS, RHS, Cla, Dir, 1, Counter, Steps0)
    ),

    append(Steps, Steps2, Ys),
    Counter1 is Counter + 1, 
    preprocess_proof(Xs, Counter1, Steps2).
preprocess_proof([ext(A)|Xs], Counter, [ext(A,0)|Ys]):-
    !,
    preprocess_proof(Xs, Counter, Ys).
preprocess_proof([X|Xs], Counter, [X|Ys]):-
    preprocess_proof(Xs, Counter, Ys).


para_descent([1|Pos], Lit, LHS ,RHS, Cla, Dir, Counter, Steps):-
    !,
    %% Lit = (A=B),
    
    %% symmetry step
    symmetry_axiom([NegLit|Cla1]),
    copy_term([Lit,NegLit,Cla1], [LitC, NegLitC,Cla1C]),
    neg_lit(LitC,NegLitC),
    Ext1 = [Lit, [NegLit|Cla1]],
    Ext1C = [LitC, [NegLitC|Cla1C]],
    Steps = [ext(Ext1-Ext1C, Counter)|Steps2],
    Cla1C = [Lit2|_], 

    %% reversed symmetry step
    LitR= (_=_), %TODO can I do something better?
    symmetry_axiom([NegLitR|ClaR]),
    copy_term([LitR,NegLitR,ClaR], [LitRC, NegLitRC,ClaRC]),
    neg_lit(LitRC,NegLitRC),
    ExtR = [LitR, [NegLitR|ClaR]],
    ExtRC = [LitRC, [NegLitRC|ClaRC]],
    StepR = ext(ExtR-ExtRC, Counter),
    Cla1C = [Lit2|_], 

    para_descent([0|Pos], Lit2, LHS, RHS, Cla, Dir, Counter, StepsRest),
    append(StepsRest,[StepR], Steps2).
    

para_descent([0], Lit, LHS, RHS, Cla, Dir, Counter, Steps):-
    !,
    Lit = (_A=B),

    ( var(B) ->                 % no need for a transitivity step
      Lit2 = Lit,
      Steps2 = Steps
    ;
      %% transitivity step
      transitivity_axiom([NegLit|Cla1]),
      copy_term([Lit,NegLit,Cla1], [LitC, NegLitC,Cla1C]),
      neg_lit(LitC,NegLitC),
      Ext1 = [Lit, [NegLit|Cla1]],
      Ext1C = [LitC, [NegLitC|Cla1C]],
      Steps = [ext(Ext1-Ext1C, Counter)|Steps2],
      Cla1C = [Lit2|_]
    ),

    NegLit3 = -(LHS=RHS),
    ( Dir = r2l,
      %% symmetry step
      symmetry_axiom([NegLit2|Cla2]),
      copy_term([Lit2,NegLit2,Cla2], [Lit2C, NegLit2C,Cla2C]),
      neg_lit(Lit2C,NegLit2C),
      
      Ext2 = [Lit2, [NegLit2|Cla2]],
      Ext2C = [Lit2C, [NegLit2C|Cla2C]],
      Steps2 = [ext(Ext2-Ext2C, Counter)|Steps3],
      Cla2C = [Lit3|_]
    ;
      Steps3 = Steps2,
      Lit3 = Lit2
    ),

    %% use the equality
    Cla3 = Cla,
    lit(NegLit3, NegLit3, Cla3, _, _, _, _),
    copy_term([Lit3,NegLit3,Cla3], [Lit3C, NegLit3C,Cla3C]),
    neg_lit(Lit3C,NegLit3C),
    Ext3 = [Lit3, [NegLit3|Cla3]],
    Ext3C = [Lit3C, [NegLit3C|Cla3C]],
    Steps3 = [ext(Ext3-Ext3C, Counter)].

para_descent([0, P|Pos], Lit, LHS, RHS, Cla, Dir, Counter, Steps):-
    !,
    Lit = (A=B),

    %% transitivity step
    ( var(B) ->
      Lit2 = Lit,
      Steps2 = Steps
    ;
      transitivity_axiom([NegLit|Cla1]),
      copy_term([Lit,NegLit,Cla1], [LitC, NegLitC,Cla1C]),
      neg_lit(LitC,NegLitC),
      Ext1 = [Lit, [NegLit|Cla1]],
      Ext1C = [LitC, [NegLitC|Cla1C]],
      Steps = [ext(Ext1-Ext1C, Counter)|Steps2],
      Cla1C = [Lit2|_]
    ),

    %% congruence step
    func_subst_axiom(A, [NegLit2|Cla2]),
    neg_lit(Lit2,NegLit2),
    Ext2 = [Lit2, [NegLit2|Cla2]],
    Steps2 = [ext(Ext2-Ext2, Counter)|Steps3],

    func_subst_substeps(Cla2, P, Pos, LHS, RHS, Cla, Dir, 0, Counter, Steps3).

%% func_subst_substeps(Children, P, Pos, LHS, RHS, Cla, Dir, PosPrefix, Counter, Steps)
func_subst_substeps([], _, _, _, _, _, _, _, _, []).
func_subst_substeps([Lit|Children], 0, Pos, LHS, RHS, Cla, Dir, PosPrefix, Counter, Steps):-
    !,
    para_descent([PosPrefix|Pos], Lit, LHS, RHS, Cla, Dir, Counter, Steps0),
    append(Steps0, Steps1, Steps),
    func_subst_substeps(Children, -1, Pos, LHS, RHS, Cla, Dir, PosPrefix, Counter, Steps1).
func_subst_substeps([Lit|Children], P, Pos, LHS, RHS, Cla, Dir, PosPrefix, Counter, [S|Steps]):-
    P =\= 0,
    P1 is P-1,
    reflexivity_axiom([NegLitR|ClaR]),
    ExtR = [Lit, [NegLitR|ClaR]],
    S = ext(ExtR-ExtR, Counter),
    func_subst_substeps(Children, P1, Pos, LHS, RHS, Cla, Dir, PosPrefix, Counter, Steps).
    


reflexivity_axiom(Cla):-
    Cla = [-(A=A)].
symmetry_axiom(Cla):-
    Cla = [-(A=B), B=A].
    
transitivity_axiom([NegL|Cla]):-
    lit(_, NegL, Cla, _, _, _, _),
    NegL= -L,
    length(Cla,2),
    only_equal([L|Cla]), !.

func_subst_axiom(Term, [NegL|Cla]):-
    Term =.. [H|Args],
    length(Args, Arity),
    length(A1, Arity),
    length(A2, Arity),
    F1 =.. [H|A1],
    F2 =.. [H|A2],
    NegL = -(F1=F2),
    lit(_, NegL, Cla, _, _, _, _),
    length(Cla, Arity),
    only_equal(Cla).
    
congruence_axiom(Lit, [NegLitX,LitX|ClaX]):-    
    ( Lit= -Base, Sign=neg
    ; Base=Lit, Sign=pos
    ),

    Base =.. [Head|Args],
    length(Args, Arity),
    length(A1, Arity),
    length(A2, Arity),
    BaseXpos =.. [Head|A1],
    BaseXneg0 =.. [Head|A2],
    BaseXneg = -BaseXneg0,

    
    ( Sign = pos -> NegLitX = BaseXneg, LitX = BaseXpos
    ; Sign = neg -> NegLitX = BaseXpos, LitX = BaseXneg
    ),

    lit(_, NegLitX, [LitX|ClaX], _, _, _, _),
    only_equal(ClaX).


only_equal([]).
only_equal([A=B|Cla]):-
    var(A), var(B),
    only_equal(Cla).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

replace_lemmata(ProofIn, ProofOut):-
    %% parse pl file for extra axioms
    option(extra_axioms_plfile(InputPlFile)),
    exists_file(InputPlFile),
    open(InputPlFile, read, InputPlStream),
    read_lemmata(InputPlStream, InputLemmata),
    close(InputPlStream),
    !,
    %% writeln("Lemmata used:"),
    %% findall(A, (member(A, InputLemmata), writeln(A)), _), nl,
    replace_lemmata(ProofIn, InputLemmata, ProofOut).    
replace_lemmata(Proof, Proof).

replace_lemmata([], _, []).
replace_lemmata([Next|ProofIn], Lemmata, ProofOut):-
    Next = ext(ExtOrig-_Ext),
    ExtOrig = [Lit, Clause],
    copy_term(Clause, Clause1), numbervars(Clause1),
    member([_, _, _, StepList, Clause1], Lemmata), !,
    insert_proof_steps(StepList, [Lit], ProofSteps),

    %% nl, writeln(replacing),
    %% writeln(lit-Lit),
    %% writeln(clause-Clause1),
    %% writeln(proofsteps-ProofSteps),
    %% writeln(aaa),
    %% findall(_, (member(ext(EO-_), ProofSteps), writeln(EO)), _),
    %% writeln(bbb),
    
    append(ProofSteps, ProofRest, ProofOut),
    replace_lemmata(ProofIn, Lemmata, ProofRest).
replace_lemmata([Next|ProofIn], Lemmata, [Next|ProofOut]):-
    replace_lemmata(ProofIn, Lemmata, ProofOut).

insert_proof_steps([], _, []).
insert_proof_steps([Clause|StepList], [Lit|Goals], [ext(ExtOrig-Ext)|ProofSteps]):-
    Ext = [Lit, Clause],
    copy_term(Ext, ExtOrig),
    Clause = [_|ClauseRest],
    append(ClauseRest, Goals, Goals2),
    insert_proof_steps(StepList, Goals2, ProofSteps).

                   
read_lemmata(Stream, Lemmata):-
    read_clause_silent(Stream, Lemma, []),
    ( Lemma == end_of_file -> Lemmata = []
    ; read_clause(Stream, statistics(Benefit, Size, Freq), []),
      read_clause(Stream, steps(StepList), []),
      numbervars(Lemma),
      clause2list(Lemma, Lemma1),
      restore_eq(Lemma1, Lemma2),
      findall(Step2, (
                  member(Step, StepList),
                  clause2list(Step, Step1),
                  restore_eq(Step1, Step2)
              ), StepList2
             ),
    
      Lemmata = [[Benefit, Size, Freq, StepList2, Lemma2]|Rest],
      read_lemmata(Stream, Rest)
    ).

restore_eq(A, B):-
    ( var(A) -> B=A
    ; atomic(A) -> B=A
    ; A =.. [Head|Args],
      maplist(restore_eq, Args, Args2),
      ( Head == eq -> Head2 = (=)
      ; Head2 = Head
      ),
      B =.. [Head2|Args2]
    ).

clause2list(Clause, List):-
    ( Clause = ( Head :- Body) ->
      neg_lit(Head, NegHead),
      List = [NegHead|BodyList],
      body2list(Body, BodyList)
    ; neg_lit(Clause, NegHead),
      List = [NegHead]
    ).

body2list(true, []):- !.
body2list((A, B), [A|List]):- !,              
    body2list(B, List).
body2list(A, [A]).

read_clause_silent(Stream, Term, Options):-
    style_check(-singleton),
    read_clause(Stream, Term, Options),
    style_check(+singleton).

clause_parts(Clause, Head, Body):-
    ( Body == true -> Head = Clause
    ; Clause = (Head :- Body) -> true
    ; Head = Clause, Body=true
    ).
