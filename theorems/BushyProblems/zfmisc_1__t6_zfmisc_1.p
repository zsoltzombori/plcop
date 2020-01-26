%------------------------------------------------------------------------------
% File     : zfmisc_1__t6_zfmisc_1

% Syntax   : Number of formulae    :   11 (   7 unit)
%            Number of atoms       :   17 (   6 equality)
%            Maximal formula depth :    6 (   3 average)
%            Number of connectives :    9 (   3 ~  ;   1  |;   0  &)
%                                         (   3 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    5 (   1 propositional; 0-2 arity)
%            Number of functors    :    2 (   1 constant; 0-1 arity)
%            Number of variables   :   14 (   1 singleton;  12 !;   2 ?)
%            Maximal term depth    :    2 (   1 average)
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(d1_tarski,axiom,(
    ! [A,B] : 
      ( B = singleton(A)
    <=> ! [C] : 
          ( in(C,B)
        <=> C = A ) ) )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(l1_zfmisc_1,axiom,(
    ! [A] : singleton(A) != empty_set )).

fof(l4_zfmisc_1,axiom,(
    ! [A,B] : 
      ( subset(A,singleton(B))
    <=> ( A = empty_set
        | A = singleton(B) ) ) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(t6_zfmisc_1,conjecture,(
    ! [A,B] : 
      ( subset(singleton(A),singleton(B))
     => A = B ) )).
%------------------------------------------------------------------------------
