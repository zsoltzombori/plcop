%------------------------------------------------------------------------------
% File     : zfmisc_1__t99_zfmisc_1

% Syntax   : Number of formulae    :   14 (   7 unit)
%            Number of atoms       :   27 (   6 equality)
%            Maximal formula depth :    8 (   4 average)
%            Number of connectives :   15 (   2 ~  ;   0  |;   1  &)
%                                         (   9 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    5 (   1 propositional; 0-2 arity)
%            Number of functors    :    3 (   0 constant; 1-1 arity)
%            Number of variables   :   25 (   1 singleton;  22 !;   3 ?)
%            Maximal term depth    :    3 (   1 average)
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

fof(d3_tarski,axiom,(
    ! [A,B] : 
      ( subset(A,B)
    <=> ! [C] : 
          ( in(C,A)
         => in(C,B) ) ) )).

fof(d4_tarski,axiom,(
    ! [A,B] : 
      ( B = union(A)
    <=> ! [C] : 
          ( in(C,B)
        <=> ? [D] : 
              ( in(C,D)
              & in(D,A) ) ) ) )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_k3_tarski,axiom,(
    $true )).

fof(l2_zfmisc_1,axiom,(
    ! [A,B] : 
      ( subset(singleton(A),B)
    <=> in(A,B) ) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(t2_tarski,axiom,(
    ! [A,B] : 
      ( ! [C] : 
          ( in(C,A)
        <=> in(C,B) )
     => A = B ) )).

fof(t99_zfmisc_1,conjecture,(
    ! [A] : union(powerset(A)) = A )).
%------------------------------------------------------------------------------
