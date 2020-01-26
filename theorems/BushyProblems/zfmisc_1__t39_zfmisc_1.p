%------------------------------------------------------------------------------
% File     : zfmisc_1__t39_zfmisc_1

% Syntax   : Number of formulae    :    8 (   6 unit)
%            Number of atoms       :   12 (   4 equality)
%            Maximal formula depth :    5 (   3 average)
%            Number of connectives :    5 (   1 ~  ;   2  |;   0  &)
%                                         (   2 <=>;   0 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    4 (   1 propositional; 0-2 arity)
%            Number of functors    :    2 (   1 constant; 0-1 arity)
%            Number of variables   :    8 (   1 singleton;   6 !;   2 ?)
%            Maximal term depth    :    2 (   1 average)
%------------------------------------------------------------------------------
fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(t39_zfmisc_1,conjecture,(
    ! [A,B] : 
      ( subset(A,singleton(B))
    <=> ( A = empty_set
        | A = singleton(B) ) ) )).

fof(l4_zfmisc_1,axiom,(
    ! [A,B] : 
      ( subset(A,singleton(B))
    <=> ( A = empty_set
        | A = singleton(B) ) ) )).
%------------------------------------------------------------------------------
