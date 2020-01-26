%------------------------------------------------------------------------------
% File     : relat_1__t65_relat_1

% Syntax   : Number of formulae    :   33 (  11 unit)
%            Number of atoms       :   67 (   9 equality)
%            Maximal formula depth :    7 (   4 average)
%            Number of connectives :   48 (  14 ~  ;   2  |;  16  &)
%                                         (   2 <=>;  14 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    7 (   1 propositional; 0-2 arity)
%            Number of functors    :    4 (   1 constant; 0-1 arity)
%            Number of variables   :   39 (   1 singleton;  32 !;   7 ?)
%            Maximal term depth    :    2 (   1 average)
%------------------------------------------------------------------------------
fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(t1_subset,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => element(A,B) ) )).

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

fof(existence_m1_subset_1,axiom,(
    ! [A] : 
    ? [B] : element(B,A) )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_m1_subset_1,axiom,(
    $true )).

fof(fc5_relat_1,axiom,(
    ! [A] : 
      ( ( ~ empty(A)
        & relation(A) )
     => ~ empty(relation_dom(A)) ) )).

fof(fc6_relat_1,axiom,(
    ! [A] : 
      ( ( ~ empty(A)
        & relation(A) )
     => ~ empty(relation_rng(A)) ) )).

fof(fc7_relat_1,axiom,(
    ! [A] : 
      ( empty(A)
     => ( empty(relation_dom(A))
        & relation(relation_dom(A)) ) ) )).

fof(fc8_relat_1,axiom,(
    ! [A] : 
      ( empty(A)
     => ( empty(relation_rng(A))
        & relation(relation_rng(A)) ) ) )).

fof(cc1_relat_1,axiom,(
    ! [A] : 
      ( empty(A)
     => relation(A) ) )).

fof(fc1_subset_1,axiom,(
    ! [A] : ~ empty(powerset(A)) )).

fof(t2_subset,axiom,(
    ! [A,B] : 
      ( element(A,B)
     => ( empty(B)
        | in(A,B) ) ) )).

fof(t3_subset,axiom,(
    ! [A,B] : 
      ( element(A,powerset(B))
    <=> subset(A,B) ) )).

fof(t7_boole,axiom,(
    ! [A,B] : 
      ~ ( in(A,B)
        & empty(B) ) )).

fof(t8_boole,axiom,(
    ! [A,B] : 
      ~ ( empty(A)
        & A != B
        & empty(B) ) )).

fof(dt_k1_relat_1,axiom,(
    $true )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k2_relat_1,axiom,(
    $true )).

fof(fc4_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set) )).

fof(rc1_relat_1,axiom,(
    ? [A] : 
      ( empty(A)
      & relation(A) ) )).

fof(rc2_relat_1,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & relation(A) ) )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

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

fof(t6_boole,axiom,(
    ! [A] : 
      ( empty(A)
     => A = empty_set ) )).

fof(t65_relat_1,conjecture,(
    ! [A] : 
      ( relation(A)
     => ( relation_dom(A) = empty_set
      <=> relation_rng(A) = empty_set ) ) )).

fof(t60_relat_1,axiom,
    ( relation_dom(empty_set) = empty_set
    & relation_rng(empty_set) = empty_set )).

fof(t64_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => ( ( relation_dom(A) = empty_set
          | relation_rng(A) = empty_set )
       => A = empty_set ) ) )).
%------------------------------------------------------------------------------
