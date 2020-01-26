%------------------------------------------------------------------------------
% File     : zfmisc_1__t1_zfmisc_1

% Syntax   : Number of formulae    :   13 (   8 unit)
%            Number of atoms       :   21 (   6 equality)
%            Maximal formula depth :    6 (   3 average)
%            Number of connectives :   10 (   2 ~  ;   0  |;   0  &)
%                                         (   5 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    5 (   1 propositional; 0-2 arity)
%            Number of functors    :    3 (   1 constant; 0-1 arity)
%            Number of variables   :   16 (   1 singleton;  14 !;   2 ?)
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

fof(d1_zfmisc_1,axiom,(
    ! [A,B] : 
      ( B = powerset(A)
    <=> ! [C] : 
          ( in(C,B)
        <=> subset(C,A) ) ) )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(t1_zfmisc_1,conjecture,(
    powerset(empty_set) = singleton(empty_set) )).

fof(t2_tarski,axiom,(
    ! [A,B] : 
      ( ! [C] : 
          ( in(C,A)
        <=> in(C,B) )
     => A = B ) )).

fof(t3_xboole_1,axiom,(
    ! [A] : 
      ( subset(A,empty_set)
     => A = empty_set ) )).
%------------------------------------------------------------------------------
