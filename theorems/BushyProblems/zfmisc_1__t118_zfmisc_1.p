%------------------------------------------------------------------------------
% File     : zfmisc_1__t118_zfmisc_1

% Syntax   : Number of formulae    :   14 (  10 unit)
%            Number of atoms       :   23 (   4 equality)
%            Maximal formula depth :   11 (   4 average)
%            Number of connectives :   12 (   3 ~  ;   0  |;   3  &)
%                                         (   3 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    5 (   1 propositional; 0-2 arity)
%            Number of functors    :    4 (   0 constant; 1-2 arity)
%            Number of variables   :   24 (   1 singleton;  20 !;   4 ?)
%            Maximal term depth    :    3 (   1 average)
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(commutativity_k2_tarski,axiom,(
    ! [A,B] : unordered_pair(A,B) = unordered_pair(B,A) )).

fof(d2_zfmisc_1,axiom,(
    ! [A,B,C] : 
      ( C = cartesian_product2(A,B)
    <=> ! [D] : 
          ( in(D,C)
        <=> ? [E,F] : 
              ( in(E,A)
              & in(F,B)
              & D = ordered_pair(E,F) ) ) ) )).

fof(d3_tarski,axiom,(
    ! [A,B] : 
      ( subset(A,B)
    <=> ! [C] : 
          ( in(C,A)
         => in(C,B) ) ) )).

fof(d5_tarski,axiom,(
    ! [A,B] : ordered_pair(A,B) = unordered_pair(unordered_pair(A,B),singleton(A)) )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(dt_k2_tarski,axiom,(
    $true )).

fof(dt_k2_zfmisc_1,axiom,(
    $true )).

fof(dt_k4_tarski,axiom,(
    $true )).

fof(fc1_zfmisc_1,axiom,(
    ! [A,B] : ~ empty(ordered_pair(A,B)) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(t118_zfmisc_1,conjecture,(
    ! [A,B,C] : 
      ( subset(A,B)
     => ( subset(cartesian_product2(A,C),cartesian_product2(B,C))
        & subset(cartesian_product2(C,A),cartesian_product2(C,B)) ) ) )).
%------------------------------------------------------------------------------
