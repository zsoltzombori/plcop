%------------------------------------------------------------------------------
% File     : zfmisc_1__l50_zfmisc_1

% Syntax   : Number of formulae    :    8 (   4 unit)
%            Number of atoms       :   15 (   1 equality)
%            Maximal formula depth :    8 (   4 average)
%            Number of connectives :    9 (   2 ~  ;   0  |;   1  &)
%                                         (   3 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    5 (   1 propositional; 0-2 arity)
%            Number of functors    :    1 (   0 constant; 1-1 arity)
%            Number of variables   :   15 (   1 singleton;  12 !;   3 ?)
%            Maximal term depth    :    2 (   1 average)
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

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

fof(dt_k3_tarski,axiom,(
    $true )).

fof(l50_zfmisc_1,conjecture,(
    ! [A,B] : 
      ( in(A,B)
     => subset(A,union(B)) ) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).
%------------------------------------------------------------------------------
