:- [leancop_tptp2].  % load program for TPTP input syntax
:- [def_mm].  % load program for clausal form translation

convert:-
    InFile = "theorems/m2np/l115_zfmisc_1.p",
    OutFile = "theorems/m2np_converted2/l115_zfmisc_1.p",
    convert(InFile, OutFile).

convert_dir(InDir, OutDir):-

    ( exists_directory(OutDir) -> true ; make_directory(OutDir) ),
    
    directory_files(InDir, Files),
    findall(_, (
                member(File, Files),
                sub_string(File, _Before, 2, 0, ".p"),
                format(atom(InFile), "~w/~w", [InDir, File]),
                format(atom(OutFile), "~w/~w", [OutDir, File]),
                convert(InFile, OutFile)
               ), _
           ).
    

convert(File, OutFile):-
    Settings = [conj,nodef,comp(1000)],
    AxNames=[_],
    %% AxPath='',
    file_directory_name(File, AxPath0),
    name(AxPath0, N0), name("/", N1), append(N0, N1, N), name(AxPath, N),
    format("Trying to open file ~w...\n", [File]),
    leancop_tptp2(File,AxPath,AxNames,Problem,Conj), !,
    format("Successfully opened file ~w\n", [File]),
    ( Conj\=[] -> Problem1=Problem ; Problem1=(~Problem) ),
    %% Problem2 = Problem1,
    leancop_equal(Problem1,Problem2),
    make_matrix(Problem2,Matrix,Settings),
    
    ( select([-(#)], Matrix, Matrix2) ; Matrix2 = Matrix ), !,
    convert_tptp(Matrix2, Matrix3),
    open(OutFile, write, OutStream),

    findall(Con, member([#|Con], Matrix3), Conjectures),
    findall(Ax, (
                 member(Ax, Matrix3), \+ Ax = [#|_]
                ), Axioms
           ),

    %% conjectures
    copy_term(Conjectures, Conjectures2),
    term_variables(Conjectures2, ConjVars),
    numbervars(Conjectures2),
    dnf_to_string(Conjectures2, ConjectureString),    
    ( ConjVars = [] -> 
      format(OutStream, "fof(conjecture, conjecture, ~w).\n", [ConjectureString])
    ; format(OutStream, "fof(conjecture, conjecture, ?~w: (~w)).\n", [ConjVars, ConjectureString])
    ),
                   
    %% axioms
    convert_axiom_list(Axioms, AxiomStrings),
    forall(member(T,AxiomStrings), format(OutStream, "~w\n", [T])),

    close(OutStream).

%% replace N^Args with skN(Args)
%% replace - with ~
%% replace = with eq
convert_tptp(X,X):-
    var(X), !.
convert_tptp(A, A):-
    atomic(A), !.
convert_tptp([],[]):-
    !.
convert_tptp([A|As],[B|Bs]):-
    !,
    convert_tptp(A,B),
    convert_tptp(As,Bs).
convert_tptp(N^Args, Result):-
    !,
    format(atom(Sk), "sk~w", [N]),
    Result =..[Sk|Args].
%%    Result =..[sk,N|Args].
convert_tptp(-(A), ~(B)):-
    !,
    convert_tptp(A,B).
convert_tptp(A1=A2,eq(B1,B2)):-
    !,
    convert_tptp(A1,B1),
    convert_tptp(A2,B2).
convert_tptp(A, B):-
    A =.. [H|Args],
    length(Args, Len),
    length(Args2, Len),
    B =.. [H|Args2],
    convert_tptp(Args, Args2).


dnf_to_string([],"").
dnf_to_string([A|As], String):-
    clause_to_string(A, "&", AString),
    dnf_to_string(As, AString, String).
dnf_to_string([],Acc, Acc).
dnf_to_string([A|As], Acc, String):-
    clause_to_string(A, "&", AString),
    format(atom(Acc2), "~w | ~w", [Acc, AString]),
    dnf_to_string(As, Acc2, String).


display_matrix([]).
display_matrix([Cla|Matrix]):-
    writeln(Cla),
    display_matrix(Matrix).

convert_axiom_list([], []).
convert_axiom_list([A|As], [S|Ss]):-
    convert_axiom(A,S),
    convert_axiom_list(As, Ss).

convert_axiom(Axiom, S):-
    \+ Axiom = [#|_],
    negate_list(Axiom, Axiom1),
    copy_term(Axiom1, Axiom2),
    term_variables(Axiom2, Vars),
    numbervars(Axiom2),
    clause_to_string(Axiom2, "|", ClauseString),

    ( Vars = [] -> 
      format(atom(S), "fof(axiom, axiom, ~w).", [ClauseString])
    ; format(atom(S), "fof(axiom, axiom, !~w: (~w)).", [Vars, ClauseString])
    ).

negate_list([], []).
negate_list([A|As], [NegA|Bs]):-
    ( A = ~(NegA) ; NegA = ~(A) ), !,
    negate_list(As, Bs).

clause_to_string([], _,  "").
clause_to_string([A|Axioms], Conn, ClauseString):-
    format(atom(Acc),"~w", [A]),
    clause_to_string(Axioms, Conn, Acc, ClauseString).

clause_to_string([], _, Acc, Acc).
clause_to_string([A|Axioms], Conn, Acc, ClauseString):-
    format(atom(Acc2), "~w ~w ~w", [Acc, Conn, A]),
    clause_to_string(Axioms, Conn, Acc2, ClauseString).