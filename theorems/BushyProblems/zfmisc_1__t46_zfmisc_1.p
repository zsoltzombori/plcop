%------------------------------------------------------------------------------
% File     : zfmisc_1__t46_zfmisc_1

% Syntax   : Number of formulae    :   11 (   6 unit)
%            Number of atoms       :   16 (   4 equality)
%            Maximal formula depth :    5 (   3 average)
%            Number of connectives :   11 (   6 ~  ;   0  |;   0  &)
%                                         (   0 <=>;   5 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    4 (   1 propositional; 0-2 arity)
%            Number of functors    :    2 (   0 constant; 1-2 arity)
%            Number of variables   :   16 (   1 singleton;  14 !;   2 ?)
%            Maximal term depth    :    3 (   1 average)
%------------------------------------------------------------------------------
fof(fc2_xboole_0,axiom,(
    ! [A,B] : 
      ( ~ empty(A)
     => ~ empty(set_union2(A,B)) ) )).

fof(fc3_xboole_0,axiom,(
    ! [A,B] : 
      ( ~ empty(A)
     => ~ empty(set_union2(B,A)) ) )).

fof(commutativity_k2_xboole_0,axiom,(
    ! [A,B] : set_union2(A,B) = set_union2(B,A) )).

fof(idempotence_k2_xboole_0,axiom,(
    ! [A,B] : set_union2(A,A) = A )).

fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(dt_k2_xboole_0,axiom,(
    $true )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(t46_zfmisc_1,conjecture,(
    ! [A,B] : 
      ( in(A,B)
     => set_union2(singleton(A),B) = B ) )).

fof(l23_zfmisc_1,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => set_union2(singleton(A),B) = B ) )).
%------------------------------------------------------------------------------
