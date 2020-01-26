%------------------------------------------------------------------------------
% File     : relat_1__t145_relat_1

% Syntax   : Number of formulae    :   46 (  23 unit)
%            Number of atoms       :   86 (  11 equality)
%            Maximal formula depth :   10 (   4 average)
%            Number of connectives :   55 (  15 ~  ;   1  |;  18  &)
%                                         (   7 <=>;  14 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    7 (   1 propositional; 0-2 arity)
%            Number of functors    :    8 (   1 constant; 0-2 arity)
%            Number of variables   :   69 (   2 singleton;  60 !;   9 ?)
%            Maximal term depth    :    4 (   1 average)
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(cc1_relat_1,axiom,(
    ! [A] : 
      ( empty(A)
     => relation(A) ) )).

fof(commutativity_k2_tarski,axiom,(
    ! [A,B] : unordered_pair(A,B) = unordered_pair(B,A) )).

fof(commutativity_k3_xboole_0,axiom,(
    ! [A,B] : set_intersection2(A,B) = set_intersection2(B,A) )).

fof(d13_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B,C] : 
          ( C = relation_image(A,B)
        <=> ! [D] : 
              ( in(D,C)
            <=> ? [E] : 
                  ( in(ordered_pair(E,D),A)
                  & in(E,B) ) ) ) ) )).

fof(d3_xboole_0,axiom,(
    ! [A,B,C] : 
      ( C = set_intersection2(A,B)
    <=> ! [D] : 
          ( in(D,C)
        <=> ( in(D,A)
            & in(D,B) ) ) ) )).

fof(d5_tarski,axiom,(
    ! [A,B] : ordered_pair(A,B) = unordered_pair(unordered_pair(A,B),singleton(A)) )).

fof(dt_k1_relat_1,axiom,(
    $true )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_k2_tarski,axiom,(
    $true )).

fof(dt_k3_xboole_0,axiom,(
    $true )).

fof(dt_k4_tarski,axiom,(
    $true )).

fof(dt_k9_relat_1,axiom,(
    $true )).

fof(dt_m1_subset_1,axiom,(
    $true )).

fof(existence_m1_subset_1,axiom,(
    ! [A] : 
    ? [B] : element(B,A) )).

fof(fc1_relat_1,axiom,(
    ! [A,B] : 
      ( ( relation(A)
        & relation(B) )
     => relation(set_intersection2(A,B)) ) )).

fof(fc1_subset_1,axiom,(
    ! [A] : ~ empty(powerset(A)) )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(fc1_zfmisc_1,axiom,(
    ! [A,B] : ~ empty(ordered_pair(A,B)) )).

fof(fc2_subset_1,axiom,(
    ! [A] : ~ empty(singleton(A)) )).

fof(fc3_subset_1,axiom,(
    ! [A,B] : ~ empty(unordered_pair(A,B)) )).

fof(fc4_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set) )).

fof(fc5_relat_1,axiom,(
    ! [A] : 
      ( ( ~ empty(A)
        & relation(A) )
     => ~ empty(relation_dom(A)) ) )).

fof(fc7_relat_1,axiom,(
    ! [A] : 
      ( empty(A)
     => ( empty(relation_dom(A))
        & relation(relation_dom(A)) ) ) )).

fof(idempotence_k3_xboole_0,axiom,(
    ! [A,B] : set_intersection2(A,A) = A )).

fof(rc1_relat_1,axiom,(
    ? [A] : 
      ( empty(A)
      & relation(A) ) )).

fof(rc1_subset_1,axiom,(
    ! [A] : 
      ( ~ empty(A)
     => ? [B] : 
          ( element(B,powerset(A))
          & ~ empty(B) ) ) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_relat_1,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & relation(A) ) )).

fof(rc2_subset_1,axiom,(
    ! [A] : 
    ? [B] : 
      ( element(B,powerset(A))
      & empty(B) ) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(t143_relat_1,axiom,(
    ! [A,B,C] : 
      ( relation(C)
     => ( in(A,relation_image(C,B))
      <=> ? [D] : 
            ( in(D,relation_dom(C))
            & in(ordered_pair(D,A),C)
            & in(D,B) ) ) ) )).

fof(t145_relat_1,conjecture,(
    ! [A,B] : 
      ( relation(B)
     => relation_image(B,A) = relation_image(B,set_intersection2(relation_dom(B),A)) ) )).

fof(t1_subset,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => element(A,B) ) )).

fof(t2_boole,axiom,(
    ! [A] : set_intersection2(A,empty_set) = empty_set )).

fof(t2_subset,axiom,(
    ! [A,B] : 
      ( element(A,B)
     => ( empty(B)
        | in(A,B) ) ) )).

fof(t2_tarski,axiom,(
    ! [A,B] : 
      ( ! [C] : 
          ( in(C,A)
        <=> in(C,B) )
     => A = B ) )).

fof(t3_subset,axiom,(
    ! [A,B] : 
      ( element(A,powerset(B))
    <=> subset(A,B) ) )).

fof(t4_subset,axiom,(
    ! [A,B,C] : 
      ( ( in(A,B)
        & element(B,powerset(C)) )
     => element(A,C) ) )).

fof(t5_subset,axiom,(
    ! [A,B,C] : 
      ~ ( in(A,B)
        & element(B,powerset(C))
        & empty(C) ) )).

fof(t6_boole,axiom,(
    ! [A] : 
      ( empty(A)
     => A = empty_set ) )).

fof(t7_boole,axiom,(
    ! [A,B] : 
      ~ ( in(A,B)
        & empty(B) ) )).

fof(t8_boole,axiom,(
    ! [A,B] : 
      ~ ( empty(A)
        & A != B
        & empty(B) ) )).
%------------------------------------------------------------------------------
