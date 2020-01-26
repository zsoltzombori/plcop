%------------------------------------------------------------------------------
% File     : zfmisc_1__l23_zfmisc_1

% Syntax   : Number of formulae    :   13 (   7 unit)
%            Number of atoms       :   19 (   4 equality)
%            Maximal formula depth :    5 (   3 average)
%            Number of connectives :   12 (   6 ~  ;   0  |;   0  &)
%                                         (   1 <=>;   5 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    5 (   1 propositional; 0-2 arity)
%            Number of functors    :    2 (   0 constant; 1-2 arity)
%            Number of variables   :   20 (   2 singleton;  18 !;   2 ?)
%            Maximal term depth    :    3 (   1 average)
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(commutativity_k2_xboole_0,axiom,(
    ! [A,B] : set_union2(A,B) = set_union2(B,A) )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(dt_k2_xboole_0,axiom,(
    $true )).

fof(fc2_xboole_0,axiom,(
    ! [A,B] : 
      ( ~ empty(A)
     => ~ empty(set_union2(A,B)) ) )).

fof(fc3_xboole_0,axiom,(
    ! [A,B] : 
      ( ~ empty(A)
     => ~ empty(set_union2(B,A)) ) )).

fof(idempotence_k2_xboole_0,axiom,(
    ! [A,B] : set_union2(A,A) = A )).

fof(l23_zfmisc_1,conjecture,(
    ! [A,B] : 
      ( in(A,B)
     => set_union2(singleton(A),B) = B ) )).

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

fof(t12_xboole_1,axiom,(
    ! [A,B] : 
      ( subset(A,B)
     => set_union2(A,B) = B ) )).
%------------------------------------------------------------------------------
