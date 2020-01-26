%------------------------------------------------------------------------------
% File     : wellord2__t7_wellord2

% Syntax   : Number of formulae    :   35 (  10 unit)
%            Number of atoms       :   94 (   2 equality)
%            Maximal formula depth :    8 (   4 average)
%            Number of connectives :   65 (   6 ~  ;   1  |;  44  &)
%                                         (   1 <=>;  13 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   1 propositional; 0-2 arity)
%            Number of functors    :    2 (   1 constant; 0-1 arity)
%            Number of variables   :   37 (   0 singleton;  25 !;  12 ?)
%            Maximal term depth    :    2 (   1 average)
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(cc1_funct_1,axiom,(
    ! [A] : 
      ( empty(A)
     => function(A) ) )).

fof(cc1_ordinal1,axiom,(
    ! [A] : 
      ( ordinal(A)
     => ( epsilon_transitive(A)
        & epsilon_connected(A) ) ) )).

fof(cc2_funct_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & empty(A)
        & function(A) )
     => ( relation(A)
        & function(A)
        & one_to_one(A) ) ) )).

fof(cc2_ordinal1,axiom,(
    ! [A] : 
      ( ( epsilon_transitive(A)
        & epsilon_connected(A) )
     => ordinal(A) ) )).

fof(cc3_ordinal1,axiom,(
    ! [A] : 
      ( empty(A)
     => ( epsilon_transitive(A)
        & epsilon_connected(A)
        & ordinal(A) ) ) )).

fof(d4_wellord1,axiom,(
    ! [A] : 
      ( relation(A)
     => ( well_ordering(A)
      <=> ( reflexive(A)
          & transitive(A)
          & antisymmetric(A)
          & connected(A)
          & well_founded_relation(A) ) ) ) )).

fof(dt_k1_wellord2,axiom,(
    ! [A] : relation(inclusion_relation(A)) )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_m1_subset_1,axiom,(
    $true )).

fof(existence_m1_subset_1,axiom,(
    ! [A] : 
    ? [B] : element(B,A) )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(fc2_ordinal1,axiom,
    ( relation(empty_set)
    & relation_empty_yielding(empty_set)
    & function(empty_set)
    & one_to_one(empty_set)
    & empty(empty_set)
    & epsilon_transitive(empty_set)
    & epsilon_connected(empty_set)
    & ordinal(empty_set) )).

fof(rc1_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A) ) )).

fof(rc1_ordinal1,axiom,(
    ? [A] : 
      ( epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A) ) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & empty(A)
      & function(A) ) )).

fof(rc2_ordinal1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A)
      & one_to_one(A)
      & empty(A)
      & epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A) ) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(rc3_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A)
      & one_to_one(A) ) )).

fof(rc3_ordinal1,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A) ) )).

fof(rc4_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & relation_empty_yielding(A)
      & function(A) ) )).

fof(rc4_ordinal1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A)
      & transfinite_sequence(A) ) )).

fof(rc5_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & relation_non_empty(A)
      & function(A) ) )).

fof(t1_subset,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => element(A,B) ) )).

fof(t2_subset,axiom,(
    ! [A,B] : 
      ( element(A,B)
     => ( empty(B)
        | in(A,B) ) ) )).

fof(t2_wellord2,axiom,(
    ! [A] : reflexive(inclusion_relation(A)) )).

fof(t3_wellord2,axiom,(
    ! [A] : transitive(inclusion_relation(A)) )).

fof(t4_wellord2,axiom,(
    ! [A] : 
      ( ordinal(A)
     => connected(inclusion_relation(A)) ) )).

fof(t5_wellord2,axiom,(
    ! [A] : antisymmetric(inclusion_relation(A)) )).

fof(t6_boole,axiom,(
    ! [A] : 
      ( empty(A)
     => A = empty_set ) )).

fof(t6_wellord2,axiom,(
    ! [A] : 
      ( ordinal(A)
     => well_founded_relation(inclusion_relation(A)) ) )).

fof(t7_boole,axiom,(
    ! [A,B] : 
      ~ ( in(A,B)
        & empty(B) ) )).

fof(t7_wellord2,conjecture,(
    ! [A] : 
      ( ordinal(A)
     => well_ordering(inclusion_relation(A)) ) )).

fof(t8_boole,axiom,(
    ! [A,B] : 
      ~ ( empty(A)
        & A != B
        & empty(B) ) )).
%------------------------------------------------------------------------------
