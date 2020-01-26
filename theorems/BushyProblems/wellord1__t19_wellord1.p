%------------------------------------------------------------------------------
% File     : wellord1__t19_wellord1

% Syntax   : Number of formulae    :   55 (  20 unit)
%            Number of atoms       :  114 (  16 equality)
%            Maximal formula depth :    8 (   4 average)
%            Number of connectives :   69 (  10 ~  ;   2  |;  27  &)
%                                         (   5 <=>;  25 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   12 (   1 propositional; 0-2 arity)
%            Number of functors    :   11 (   1 constant; 0-2 arity)
%            Number of variables   :   83 (   3 singleton;  75 !;   8 ?)
%            Maximal term depth    :    3 (   1 average)
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(cc1_funct_1,axiom,(
    ! [A] : 
      ( empty(A)
     => function(A) ) )).

fof(cc2_funct_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & empty(A)
        & function(A) )
     => ( relation(A)
        & function(A)
        & one_to_one(A) ) ) )).

fof(commutativity_k2_xboole_0,axiom,(
    ! [A,B] : set_union2(A,B) = set_union2(B,A) )).

fof(commutativity_k3_xboole_0,axiom,(
    ! [A,B] : set_intersection2(A,B) = set_intersection2(B,A) )).

fof(d2_xboole_0,axiom,(
    ! [A,B,C] : 
      ( C = set_union2(A,B)
    <=> ! [D] : 
          ( in(D,C)
        <=> ( in(D,A)
            | in(D,B) ) ) ) )).

fof(d3_xboole_0,axiom,(
    ! [A,B,C] : 
      ( C = set_intersection2(A,B)
    <=> ! [D] : 
          ( in(D,C)
        <=> ( in(D,A)
            & in(D,B) ) ) ) )).

fof(d6_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => relation_field(A) = set_union2(relation_dom(A),relation_rng(A)) ) )).

fof(d6_wellord1,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : relation_restriction(A,B) = set_intersection2(A,cartesian_product2(B,B)) ) )).

fof(dt_k1_relat_1,axiom,(
    $true )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_k2_relat_1,axiom,(
    $true )).

fof(dt_k2_wellord1,axiom,(
    ! [A,B] : 
      ( relation(A)
     => relation(relation_restriction(A,B)) ) )).

fof(dt_k2_xboole_0,axiom,(
    $true )).

fof(dt_k2_zfmisc_1,axiom,(
    $true )).

fof(dt_k3_relat_1,axiom,(
    $true )).

fof(dt_k3_xboole_0,axiom,(
    $true )).

fof(dt_k7_relat_1,axiom,(
    ! [A,B] : 
      ( relation(A)
     => relation(relation_dom_restriction(A,B)) ) )).

fof(dt_k8_relat_1,axiom,(
    ! [A,B] : 
      ( relation(B)
     => relation(relation_rng_restriction(A,B)) ) )).

fof(dt_m1_subset_1,axiom,(
    $true )).

fof(existence_m1_subset_1,axiom,(
    ! [A] : 
    ? [B] : element(B,A) )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(fc2_xboole_0,axiom,(
    ! [A,B] : 
      ( ~ empty(A)
     => ~ empty(set_union2(A,B)) ) )).

fof(fc3_xboole_0,axiom,(
    ! [A,B] : 
      ( ~ empty(A)
     => ~ empty(set_union2(B,A)) ) )).

fof(fc4_funct_1,axiom,(
    ! [A,B] : 
      ( ( relation(A)
        & function(A) )
     => ( relation(relation_dom_restriction(A,B))
        & function(relation_dom_restriction(A,B)) ) ) )).

fof(fc5_funct_1,axiom,(
    ! [A,B] : 
      ( ( relation(B)
        & function(B) )
     => ( relation(relation_rng_restriction(A,B))
        & function(relation_rng_restriction(A,B)) ) ) )).

fof(fc6_funct_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & relation_non_empty(A)
        & function(A) )
     => with_non_empty_elements(relation_rng(A)) ) )).

fof(idempotence_k2_xboole_0,axiom,(
    ! [A,B] : set_union2(A,A) = A )).

fof(idempotence_k3_xboole_0,axiom,(
    ! [A,B] : set_intersection2(A,A) = A )).

fof(l29_wellord1,axiom,(
    ! [A,B] : 
      ( relation(B)
     => subset(relation_dom(relation_rng_restriction(A,B)),relation_dom(B)) ) )).

fof(rc1_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A) ) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & empty(A)
      & function(A) ) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(rc3_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A)
      & one_to_one(A) ) )).

fof(rc4_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & relation_empty_yielding(A)
      & function(A) ) )).

fof(rc5_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & relation_non_empty(A)
      & function(A) ) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(t119_relat_1,axiom,(
    ! [A,B] : 
      ( relation(B)
     => relation_rng(relation_rng_restriction(A,B)) = set_intersection2(relation_rng(B),A) ) )).

fof(t17_wellord1,axiom,(
    ! [A,B] : 
      ( relation(B)
     => relation_restriction(B,A) = relation_dom_restriction(relation_rng_restriction(A,B),A) ) )).

fof(t18_wellord1,axiom,(
    ! [A,B] : 
      ( relation(B)
     => relation_restriction(B,A) = relation_rng_restriction(A,relation_dom_restriction(B,A)) ) )).

fof(t19_wellord1,conjecture,(
    ! [A,B,C] : 
      ( relation(C)
     => ( in(A,relation_field(relation_restriction(C,B)))
       => ( in(A,relation_field(C))
          & in(A,B) ) ) ) )).

fof(t1_boole,axiom,(
    ! [A] : set_union2(A,empty_set) = A )).

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

fof(t90_relat_1,axiom,(
    ! [A,B] : 
      ( relation(B)
     => relation_dom(relation_dom_restriction(B,A)) = set_intersection2(relation_dom(B),A) ) )).

fof(t99_relat_1,axiom,(
    ! [A,B] : 
      ( relation(B)
     => subset(relation_rng(relation_dom_restriction(B,A)),relation_rng(B)) ) )).
%------------------------------------------------------------------------------
