%------------------------------------------------------------------------------
% File     : wellord1__l3_wellord1

% Syntax   : Number of formulae    :   40 (  19 unit)
%            Number of atoms       :   84 (  10 equality)
%            Maximal formula depth :   11 (   4 average)
%            Number of connectives :   54 (  10 ~  ;   1  |;  23  &)
%                                         (   3 <=>;  17 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   13 (   1 propositional; 0-2 arity)
%            Number of functors    :    8 (   1 constant; 0-2 arity)
%            Number of variables   :   50 (   1 singleton;  42 !;   8 ?)
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

fof(commutativity_k2_tarski,axiom,(
    ! [A,B] : unordered_pair(A,B) = unordered_pair(B,A) )).

fof(commutativity_k2_xboole_0,axiom,(
    ! [A,B] : set_union2(A,B) = set_union2(B,A) )).

fof(d12_relat_2,axiom,(
    ! [A] : 
      ( relation(A)
     => ( antisymmetric(A)
      <=> is_antisymmetric_in(A,relation_field(A)) ) ) )).

fof(d4_relat_2,axiom,(
    ! [A] : 
      ( relation(A)
     => ! [B] : 
          ( is_antisymmetric_in(A,B)
        <=> ! [C,D] : 
              ( ( in(C,B)
                & in(D,B)
                & in(ordered_pair(C,D),A)
                & in(ordered_pair(D,C),A) )
             => C = D ) ) ) )).

fof(d5_tarski,axiom,(
    ! [A,B] : ordered_pair(A,B) = unordered_pair(unordered_pair(A,B),singleton(A)) )).

fof(d6_relat_1,axiom,(
    ! [A] : 
      ( relation(A)
     => relation_field(A) = set_union2(relation_dom(A),relation_rng(A)) ) )).

fof(dt_k1_relat_1,axiom,(
    $true )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k2_relat_1,axiom,(
    $true )).

fof(dt_k2_tarski,axiom,(
    $true )).

fof(dt_k2_xboole_0,axiom,(
    $true )).

fof(dt_k3_relat_1,axiom,(
    $true )).

fof(dt_k4_tarski,axiom,(
    $true )).

fof(dt_m1_subset_1,axiom,(
    $true )).

fof(existence_m1_subset_1,axiom,(
    ! [A] : 
    ? [B] : element(B,A) )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(fc1_zfmisc_1,axiom,(
    ! [A,B] : ~ empty(ordered_pair(A,B)) )).

fof(fc2_xboole_0,axiom,(
    ! [A,B] : 
      ( ~ empty(A)
     => ~ empty(set_union2(A,B)) ) )).

fof(fc3_xboole_0,axiom,(
    ! [A,B] : 
      ( ~ empty(A)
     => ~ empty(set_union2(B,A)) ) )).

fof(fc6_funct_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & relation_non_empty(A)
        & function(A) )
     => with_non_empty_elements(relation_rng(A)) ) )).

fof(idempotence_k2_xboole_0,axiom,(
    ! [A,B] : set_union2(A,A) = A )).

fof(l3_wellord1,conjecture,(
    ! [A] : 
      ( relation(A)
     => ( antisymmetric(A)
      <=> ! [B,C] : 
            ( ( in(ordered_pair(B,C),A)
              & in(ordered_pair(C,B),A) )
           => B = C ) ) ) )).

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

fof(t1_boole,axiom,(
    ! [A] : set_union2(A,empty_set) = A )).

fof(t1_subset,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => element(A,B) ) )).

fof(t2_subset,axiom,(
    ! [A,B] : 
      ( element(A,B)
     => ( empty(B)
        | in(A,B) ) ) )).

fof(t30_relat_1,axiom,(
    ! [A,B,C] : 
      ( relation(C)
     => ( in(ordered_pair(A,B),C)
       => ( in(A,relation_field(C))
          & in(B,relation_field(C)) ) ) ) )).

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
