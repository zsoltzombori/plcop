%------------------------------------------------------------------------------
% File     : funct_1__t35_funct_1

% Syntax   : Number of formulae    :   36 (  12 unit)
%            Number of atoms       :   72 (   6 equality)
%            Maximal formula depth :    8 (   4 average)
%            Number of connectives :   48 (  12 ~  ;   1  |;  20  &)
%                                         (   2 <=>;  13 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    9 (   1 propositional; 0-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :   45 (   1 singleton;  36 !;   9 ?)
%            Maximal term depth    :    3 (   1 average)
%------------------------------------------------------------------------------
fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(fc4_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set) )).

fof(fc12_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set)
    & relation_empty_yielding(empty_set) )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(existence_m1_subset_1,axiom,(
    ! [A] : 
    ? [B] : element(B,A) )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_m1_subset_1,axiom,(
    $true )).

fof(cc1_funct_1,axiom,(
    ! [A] : 
      ( empty(A)
     => function(A) ) )).

fof(fc1_subset_1,axiom,(
    ! [A] : ~ empty(powerset(A)) )).

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

fof(cc1_relat_1,axiom,(
    ! [A] : 
      ( empty(A)
     => relation(A) ) )).

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

fof(dt_k1_funct_1,axiom,(
    $true )).

fof(dt_k1_relat_1,axiom,(
    $true )).

fof(dt_k6_relat_1,axiom,(
    ! [A] : relation(identity_relation(A)) )).

fof(fc2_funct_1,axiom,(
    ! [A] : 
      ( relation(identity_relation(A))
      & function(identity_relation(A)) ) )).

fof(rc1_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A) ) )).

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

fof(rc1_relat_1,axiom,(
    ? [A] : 
      ( empty(A)
      & relation(A) ) )).

fof(rc2_relat_1,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & relation(A) ) )).

fof(rc3_relat_1,axiom,(
    ? [A] : 
      ( relation(A)
      & relation_empty_yielding(A) ) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(t1_subset,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => element(A,B) ) )).

fof(t7_boole,axiom,(
    ! [A,B] : 
      ~ ( in(A,B)
        & empty(B) ) )).

fof(t35_funct_1,conjecture,(
    ! [A,B] : 
      ( in(B,A)
     => apply(identity_relation(A),B) = B ) )).

fof(t34_funct_1,axiom,(
    ! [A,B] : 
      ( ( relation(B)
        & function(B) )
     => ( B = identity_relation(A)
      <=> ( relation_dom(B) = A
          & ! [C] : 
              ( in(C,A)
             => apply(B,C) = C ) ) ) ) )).
%------------------------------------------------------------------------------
