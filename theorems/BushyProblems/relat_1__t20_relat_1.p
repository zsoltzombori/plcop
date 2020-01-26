%------------------------------------------------------------------------------
% File     : relat_1__t20_relat_1

% Syntax   : Number of formulae    :   34 (  19 unit)
%            Number of atoms       :   60 (   6 equality)
%            Maximal formula depth :    8 (   4 average)
%            Number of connectives :   38 (  12 ~  ;   1  |;  10  &)
%                                         (   5 <=>;  10 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    7 (   1 propositional; 0-2 arity)
%            Number of functors    :    7 (   1 constant; 0-2 arity)
%            Number of variables   :   51 (   1 singleton;  43 !;   8 ?)
%            Maximal term depth    :    3 (   1 average)
%------------------------------------------------------------------------------
fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(commutativity_k2_tarski,axiom,(
    ! [A,B] : unordered_pair(A,B) = unordered_pair(B,A) )).

fof(existence_m1_subset_1,axiom,(
    ! [A] : 
    ? [B] : element(B,A) )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_k2_tarski,axiom,(
    $true )).

fof(dt_m1_subset_1,axiom,(
    $true )).

fof(fc1_subset_1,axiom,(
    ! [A] : ~ empty(powerset(A)) )).

fof(fc2_subset_1,axiom,(
    ! [A] : ~ empty(singleton(A)) )).

fof(fc3_subset_1,axiom,(
    ! [A,B] : ~ empty(unordered_pair(A,B)) )).

fof(t2_subset,axiom,(
    ! [A,B] : 
      ( element(A,B)
     => ( empty(B)
        | in(A,B) ) ) )).

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

fof(t8_boole,axiom,(
    ! [A,B] : 
      ~ ( empty(A)
        & A != B
        & empty(B) ) )).

fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(dt_k1_relat_1,axiom,(
    $true )).

fof(dt_k2_relat_1,axiom,(
    $true )).

fof(dt_k4_tarski,axiom,(
    $true )).

fof(rc1_relat_1,axiom,(
    ? [A] : 
      ( empty(A)
      & relation(A) ) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(rc1_subset_1,axiom,(
    ! [A] : 
      ( ~ empty(A)
     => ? [B] : 
          ( element(B,powerset(A))
          & ~ empty(B) ) ) )).

fof(rc2_subset_1,axiom,(
    ! [A] : 
    ? [B] : 
      ( element(B,powerset(A))
      & empty(B) ) )).

fof(fc1_zfmisc_1,axiom,(
    ! [A,B] : ~ empty(ordered_pair(A,B)) )).

fof(t1_subset,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => element(A,B) ) )).

fof(t7_boole,axiom,(
    ! [A,B] : 
      ~ ( in(A,B)
        & empty(B) ) )).

fof(d5_tarski,axiom,(
    ! [A,B] : ordered_pair(A,B) = unordered_pair(unordered_pair(A,B),singleton(A)) )).

fof(t20_relat_1,conjecture,(
    ! [A,B,C] : 
      ( relation(C)
     => ( in(ordered_pair(A,B),C)
       => ( in(A,relation_dom(C))
          & in(B,relation_rng(C)) ) ) ) )).

fof(d4_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( B = relation_dom(A)
        <=> ! [C] : 
              ( in(C,B)
            <=> ? [D] : in(ordered_pair(C,D),A) ) ) ) )).

fof(d5_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( B = relation_rng(A)
        <=> ! [C] : 
              ( in(C,B)
            <=> ? [D] : in(ordered_pair(D,C),A) ) ) ) )).
%------------------------------------------------------------------------------
