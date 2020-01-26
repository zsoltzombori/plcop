%------------------------------------------------------------------------------
% File     : relset_1__t16_relset_1

% Syntax   : Number of formulae    :   30 (  14 unit)
%            Number of atoms       :   54 (   2 equality)
%            Maximal formula depth :    7 (   4 average)
%            Number of connectives :   30 (   6 ~  ;   1  |;   8  &)
%                                         (   2 <=>;  13 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    9 (   1 propositional; 0-3 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :   54 (   1 singleton;  49 !;   5 ?)
%            Maximal term depth    :    3 (   1 average)
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(cc1_relset_1,axiom,(
    ! [A,B,C] : 
      ( element(C,powerset(cartesian_product2(A,B)))
     => relation(C) ) )).

fof(dt_k1_relat_1,axiom,(
    $true )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_k2_relat_1,axiom,(
    $true )).

fof(dt_k2_zfmisc_1,axiom,(
    $true )).

fof(dt_m1_relset_1,axiom,(
    $true )).

fof(dt_m1_subset_1,axiom,(
    $true )).

fof(dt_m2_relset_1,axiom,(
    ! [A,B,C] : 
      ( relation_of2_as_subset(C,A,B)
     => element(C,powerset(cartesian_product2(A,B))) ) )).

fof(existence_m1_relset_1,axiom,(
    ! [A,B] : 
    ? [C] : relation_of2(C,A,B) )).

fof(existence_m1_subset_1,axiom,(
    ! [A] : 
    ? [B] : element(B,A) )).

fof(existence_m2_relset_1,axiom,(
    ! [A,B] : 
    ? [C] : relation_of2_as_subset(C,A,B) )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(redefinition_m2_relset_1,axiom,(
    ! [A,B,C] : 
      ( relation_of2_as_subset(C,A,B)
    <=> relation_of2(C,A,B) ) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(t12_relset_1,axiom,(
    ! [A,B,C] : 
      ( relation_of2_as_subset(C,A,B)
     => ( subset(relation_dom(C),A)
        & subset(relation_rng(C),B) ) ) )).

fof(t14_relset_1,axiom,(
    ! [A,B,C,D] : 
      ( relation_of2_as_subset(D,C,A)
     => ( subset(relation_rng(D),B)
       => relation_of2_as_subset(D,C,B) ) ) )).

fof(t16_relset_1,conjecture,(
    ! [A,B,C,D] : 
      ( relation_of2_as_subset(D,C,A)
     => ( subset(A,B)
       => relation_of2_as_subset(D,C,B) ) ) )).

fof(t1_subset,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => element(A,B) ) )).

fof(t1_xboole_1,axiom,(
    ! [A,B,C] : 
      ( ( subset(A,B)
        & subset(B,C) )
     => subset(A,C) ) )).

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
