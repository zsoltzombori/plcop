
:- ensure_loaded(leancop/leancop_proof).  % load program for proof presentation

produce_leancop_proof(PLP, ProofFile):-
    PLP = [init((-#)-(-#))|PLP1],
    Set = [], % [cut],
    
    %% preprocess_proof(PLP1, 1, PLP2), TODO
    copy_term(PLP1, PLP2),
    % PLP2 = PLP1,

    % nl, nl,
    % ( member(P, PLP2), writeln(P), fail ; nl ),

    ( prove([-(#)],[],[],Set,PLP2,_,[Proof]) ->
      b_getval(matrix, Matrix), %TODO super ugly
      b_getval(file, File),     %TODO super ugly
      
      current_output(Orig),     % save current output
      open(ProofFile, write, ProofStream),
      set_output(ProofStream),
      write('Start of proof for '), write(File), nl,
      
      leancop_proof(Matrix,Proof),
      write('End of proof for '), write(File), nl,
      close(ProofStream),
      set_output(Orig),         % restore current output
      writeln("Created leancop proof")
    ; writeln("Failed to create proof for problem")
    ).
    

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
    lit(NegLit3, NegLit3, Cla3, _),
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
    


%%% leanCoP core prover guided by a plcop proof (two extra arguments PLPin, PLPout)
%%% pathlim has been removed

prove([],_,_,_,PLP,PLP,[]).
prove([Lit|Cla],Path,Lem,Set,PLPin,PLPout,Proof) :-
    %% format("\nGoal: ~w\n", [Lit]),

    PLPin = [Next|PLP1],
    ( Next=para(ParaOrig-_) ->
      Proof=[[[paramodulation(Lit, Lit2, Dir, LHS, RHS, Cla11)|Cla1]|Proof1]|Proof2]
    ; Proof=[[[NegLit|Cla1]|Proof1]|Proof2]
    ),
    \+ (member(LitC,[Lit|Cla]), member(LitP,Path), LitC==LitP),
    neg_lit(Lit, NegLit),

    
    % ( PLPin = [Next|PLP1]
    % ; select(Next, PLPin, PLP1), \+ (Next = ext(_,N), N>0)
    % ; append(Before, [LastPrev,Next|After], PLPin),
    %   LastPrev = ext(_,N), N>0, \+ Next = ext(_,N), % Next is the first of its kind
    %   append(Before, [LastPrev|After], PLP1)
    % ),
    % select(Next, PLPin, PLP1),

    %% format("Next: ~w\n", [Next]),
    ( Next=lem(_),
      member(LitL,Lem), Lit==LitL, Cla1=[], Proof1=[],
      PLP2=PLP1
    ;
      Next=red([Lit, NegLit]-_),
      member(NegL,Path), unify_with_occurs_check(NegL,NegLit),
      Cla1=[], Proof1=[],
      PLP2=PLP1
    ;
      Next=ext(ExtOrig-Ext),
      %% Next=ext(ExtOrig-Ext, _),
      ExtOrig = [Lit, [NegLit|Cla1]],
      Ext = [LitSubst|_], \+ \+ LitSubst = Lit,
      lit(NegLit,NegL,Cla1,_Grnd1),      
      unify_with_occurs_check(NegL,NegLit),
      prove(Cla1,[Lit|Path],Lem,Set,PLP1,PLP2,Proof1)
    ;
      Next=para(ParaOrig-_),
      ParaOrig = [Lit, Pos, LHS, RHS, Cla11, Dir],
      ( Dir = l2r -> LHS = From, RHS = To
      ; LHS = To, RHS = From
      ),

      lit(_, -(LHS=RHS), Cla11, _),

      position(Lit,Pos,From),
      replace_term_in_pos(Lit,Pos,To,Lit2),
      Cla1 = [Lit2|Cla11],
      prove(Cla1,[Lit|Path],Lem,Set,PLP1,PLP2,Proof1)
    ),
    ( member(cut,Set) -> ! ; true ),
    prove(Cla,Path,[Lit|Lem],Set,PLP2,PLPout,Proof2).


reflexivity_axiom(Cla):-
    Cla = [-(A=A)].
symmetry_axiom(Cla):-
    Cla = [-(A=B), B=A].
    
transitivity_axiom([NegL|Cla]):-
    lit(_, NegL, Cla, _),
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
    lit(_, NegL, Cla, _),
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

    lit(_, NegLitX, [LitX|ClaX], _),
    only_equal(ClaX).


only_equal([]).
only_equal([A=B|Cla]):-
    var(A), var(B),
    only_equal(Cla).

