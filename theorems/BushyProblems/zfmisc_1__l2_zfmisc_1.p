%------------------------------------------------------------------------------
% File     : zfmisc_1__l2_zfmisc_1

% Syntax   : Number of formulae    :    8 (   4 unit)
%            Number of atoms       :   14 (   2 equality)
%            Maximal formula depth :    6 (   4 average)
%            Number of connectives :    8 (   2 ~  ;   0  |;   0  &)
%                                         (   4 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    5 (   1 propositional; 0-2 arity)
%            Number of functors    :    1 (   0 constant; 1-1 arity)
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

fof(d3_tarski,axiom,(
    ! [A,B] : 
      ( subset(A,B)
    <=> ! [C] : 
          ( in(C,A)
         => in(C,B) ) ) )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(l2_zfmisc_1,conjecture,(
    ! [A,B] : 
      ( subset(singleton(A),B)
    <=> in(A,B) ) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).
%------------------------------------------------------------------------------
