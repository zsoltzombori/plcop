%------------------------------------------------------------------------------
% File     : finset_1__t18_finset_1

% Syntax   : Number of formulae    :  123 (  32 unit)
%            Number of atoms       :  403 (  40 equality)
%            Maximal formula depth :   22 (   5 average)
%            Number of connectives :  338 (  58 ~  ;   5  |; 168  &)
%                                         (  17 <=>;  90 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   22 (   1 propositional; 0-2 arity)
%            Number of functors    :   12 (   3 constant; 0-2 arity)
%            Number of variables   :  196 (   2 singleton; 166 !;  30 ?)
%            Maximal term depth    :    4 (   1 average)
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(cc1_arytm_3,axiom,(
    ! [A] : 
      ( ordinal(A)
     => ! [B] : 
          ( element(B,A)
         => ( epsilon_transitive(B)
            & epsilon_connected(B)
            & ordinal(B) ) ) ) )).

fof(cc1_finset_1,axiom,(
    ! [A] : 
      ( empty(A)
     => finite(A) ) )).

fof(cc1_funct_1,axiom,(
    ! [A] : 
      ( empty(A)
     => function(A) ) )).

fof(cc1_ordinal1,axiom,(
    ! [A] : 
      ( ordinal(A)
     => ( epsilon_transitive(A)
        & epsilon_connected(A) ) ) )).

fof(cc1_relat_1,axiom,(
    ! [A] : 
      ( empty(A)
     => relation(A) ) )).

fof(cc2_arytm_3,axiom,(
    ! [A] : 
      ( ( empty(A)
        & ordinal(A) )
     => ( epsilon_transitive(A)
        & epsilon_connected(A)
        & ordinal(A)
        & natural(A) ) ) )).

fof(cc2_finset_1,axiom,(
    ! [A] : 
      ( finite(A)
     => ! [B] : 
          ( element(B,powerset(A))
         => finite(B) ) ) )).

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

fof(cc3_arytm_3,axiom,(
    ! [A] : 
      ( element(A,omega)
     => ( epsilon_transitive(A)
        & epsilon_connected(A)
        & ordinal(A)
        & natural(A) ) ) )).

fof(cc3_ordinal1,axiom,(
    ! [A] : 
      ( empty(A)
     => ( epsilon_transitive(A)
        & epsilon_connected(A)
        & ordinal(A) ) ) )).

fof(cc4_arytm_3,axiom,(
    ! [A] : 
      ( element(A,positive_rationals)
     => ( ordinal(A)
       => ( epsilon_transitive(A)
          & epsilon_connected(A)
          & ordinal(A)
          & natural(A) ) ) ) )).

fof(commutativity_k2_xboole_0,axiom,(
    ! [A,B] : set_union2(A,B) = set_union2(B,A) )).

fof(connectedness_r1_ordinal1,axiom,(
    ! [A,B] : 
      ( ( ordinal(A)
        & ordinal(B) )
     => ( ordinal_subset(A,B)
        | ordinal_subset(B,A) ) ) )).

fof(d1_finset_1,axiom,(
    ! [A] : 
      ( finite(A)
    <=> ? [B] : 
          ( relation(B)
          & function(B)
          & relation_rng(B) = A
          & in(relation_dom(B),omega) ) ) )).

fof(d1_ordinal1,axiom,(
    ! [A] : succ(A) = set_union2(A,singleton(A)) )).

fof(d1_tarski,axiom,(
    ! [A,B] : 
      ( B = singleton(A)
    <=> ! [C] : 
          ( in(C,B)
        <=> C = A ) ) )).

fof(d2_ordinal1,axiom,(
    ! [A] : 
      ( epsilon_transitive(A)
    <=> ! [B] : 
          ( in(B,A)
         => subset(B,A) ) ) )).

fof(d2_xboole_0,axiom,(
    ! [A,B,C] : 
      ( C = set_union2(A,B)
    <=> ! [D] : 
          ( in(D,C)
        <=> ( in(D,A)
            | in(D,B) ) ) ) )).

fof(d3_tarski,axiom,(
    ! [A,B] : 
      ( subset(A,B)
    <=> ! [C] : 
          ( in(C,A)
         => in(C,B) ) ) )).

fof(d4_xboole_0,axiom,(
    ! [A,B,C] : 
      ( C = set_difference(A,B)
    <=> ! [D] : 
          ( in(D,C)
        <=> ( in(D,A)
            & ~ in(D,B) ) ) ) )).

fof(d5_ordinal2,axiom,(
    ! [A] : 
      ( A = omega
    <=> ( in(empty_set,A)
        & being_limit_ordinal(A)
        & ordinal(A)
        & ! [B] : 
            ( ordinal(B)
           => ( ( in(empty_set,B)
                & being_limit_ordinal(B) )
             => subset(A,B) ) ) ) ) )).

fof(dt_k10_relat_1,axiom,(
    $true )).

fof(dt_k1_ordinal1,axiom,(
    $true )).

fof(dt_k1_relat_1,axiom,(
    $true )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(dt_k1_zfmisc_1,axiom,(
    $true )).

fof(dt_k2_relat_1,axiom,(
    $true )).

fof(dt_k2_xboole_0,axiom,(
    $true )).

fof(dt_k4_xboole_0,axiom,(
    $true )).

fof(dt_k5_ordinal2,axiom,(
    $true )).

fof(dt_k6_arytm_3,axiom,(
    $true )).

fof(dt_k9_relat_1,axiom,(
    $true )).

fof(dt_m1_subset_1,axiom,(
    $true )).

fof(existence_m1_subset_1,axiom,(
    ! [A] : 
    ? [B] : element(B,A) )).

fof(fc12_finset_1,axiom,(
    ! [A,B] : 
      ( finite(A)
     => finite(set_difference(A,B)) ) )).

fof(fc12_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set)
    & relation_empty_yielding(empty_set) )).

fof(fc13_finset_1,axiom,(
    ! [A,B] : 
      ( ( relation(A)
        & function(A)
        & finite(B) )
     => finite(relation_image(A,B)) ) )).

fof(fc1_finset_1,axiom,(
    ! [A] : 
      ( ~ empty(singleton(A))
      & finite(singleton(A)) ) )).

fof(fc1_ordinal1,axiom,(
    ! [A] : ~ empty(succ(A)) )).

fof(fc1_ordinal2,axiom,
    ( epsilon_transitive(omega)
    & epsilon_connected(omega)
    & ordinal(omega)
    & ~ empty(omega) )).

fof(fc1_subset_1,axiom,(
    ! [A] : ~ empty(powerset(A)) )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(fc2_arytm_3,axiom,(
    ! [A] : 
      ( ( ordinal(A)
        & natural(A) )
     => ( ~ empty(succ(A))
        & epsilon_transitive(succ(A))
        & epsilon_connected(succ(A))
        & ordinal(succ(A))
        & natural(succ(A)) ) ) )).

fof(fc2_ordinal1,axiom,
    ( relation(empty_set)
    & relation_empty_yielding(empty_set)
    & function(empty_set)
    & one_to_one(empty_set)
    & empty(empty_set)
    & epsilon_transitive(empty_set)
    & epsilon_connected(empty_set)
    & ordinal(empty_set) )).

fof(fc2_relat_1,axiom,(
    ! [A,B] : 
      ( ( relation(A)
        & relation(B) )
     => relation(set_union2(A,B)) ) )).

fof(fc2_subset_1,axiom,(
    ! [A] : ~ empty(singleton(A)) )).

fof(fc2_xboole_0,axiom,(
    ! [A,B] : 
      ( ~ empty(A)
     => ~ empty(set_union2(A,B)) ) )).

fof(fc3_ordinal1,axiom,(
    ! [A] : 
      ( ordinal(A)
     => ( ~ empty(succ(A))
        & epsilon_transitive(succ(A))
        & epsilon_connected(succ(A))
        & ordinal(succ(A)) ) ) )).

fof(fc3_relat_1,axiom,(
    ! [A,B] : 
      ( ( relation(A)
        & relation(B) )
     => relation(set_difference(A,B)) ) )).

fof(fc3_xboole_0,axiom,(
    ! [A,B] : 
      ( ~ empty(A)
     => ~ empty(set_union2(B,A)) ) )).

fof(fc4_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set) )).

fof(fc5_ordinal1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & function(A)
        & transfinite_sequence(A) )
     => ( epsilon_transitive(relation_dom(A))
        & epsilon_connected(relation_dom(A))
        & ordinal(relation_dom(A)) ) ) )).

fof(fc5_relat_1,axiom,(
    ! [A] : 
      ( ( ~ empty(A)
        & relation(A) )
     => ~ empty(relation_dom(A)) ) )).

fof(fc6_funct_1,axiom,(
    ! [A] : 
      ( ( relation(A)
        & relation_non_empty(A)
        & function(A) )
     => with_non_empty_elements(relation_rng(A)) ) )).

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

fof(fc8_arytm_3,axiom,(
    ~ empty(positive_rationals) )).

fof(fc8_relat_1,axiom,(
    ! [A] : 
      ( empty(A)
     => ( empty(relation_rng(A))
        & relation(relation_rng(A)) ) ) )).

fof(fc9_finset_1,axiom,(
    ! [A,B] : 
      ( ( finite(A)
        & finite(B) )
     => finite(set_union2(A,B)) ) )).

fof(idempotence_k2_xboole_0,axiom,(
    ! [A,B] : set_union2(A,A) = A )).

fof(rc1_arytm_3,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A)
      & natural(A) ) )).

fof(rc1_finset_1,axiom,(
    ? [A] : 
      ( ~ empty(A)
      & finite(A) ) )).

fof(rc1_funcop_1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A)
      & function_yielding(A) ) )).

fof(rc1_funct_1,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A) ) )).

fof(rc1_ordinal1,axiom,(
    ? [A] : 
      ( epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A) ) )).

fof(rc1_ordinal2,axiom,(
    ? [A] : 
      ( epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A)
      & being_limit_ordinal(A) ) )).

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

fof(rc2_arytm_3,axiom,(
    ? [A] : 
      ( element(A,positive_rationals)
      & ~ empty(A)
      & epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A) ) )).

fof(rc2_finset_1,axiom,(
    ! [A] : 
    ? [B] : 
      ( element(B,powerset(A))
      & empty(B)
      & relation(B)
      & function(B)
      & one_to_one(B)
      & epsilon_transitive(B)
      & epsilon_connected(B)
      & ordinal(B)
      & natural(B)
      & finite(B) ) )).

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

fof(rc2_ordinal2,axiom,(
    ? [A] : 
      ( relation(A)
      & function(A)
      & transfinite_sequence(A)
      & ordinal_yielding(A) ) )).

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

fof(rc3_arytm_3,axiom,(
    ? [A] : 
      ( element(A,positive_rationals)
      & empty(A)
      & epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A)
      & natural(A) ) )).

fof(rc3_finset_1,axiom,(
    ! [A] : 
      ( ~ empty(A)
     => ? [B] : 
          ( element(B,powerset(A))
          & ~ empty(B)
          & finite(B) ) ) )).

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

fof(rc3_relat_1,axiom,(
    ? [A] : 
      ( relation(A)
      & relation_empty_yielding(A) ) )).

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

fof(redefinition_r1_ordinal1,axiom,(
    ! [A,B] : 
      ( ( ordinal(A)
        & ordinal(B) )
     => ( ordinal_subset(A,B)
      <=> subset(A,B) ) ) )).

fof(reflexivity_r1_ordinal1,axiom,(
    ! [A,B] : 
      ( ( ordinal(A)
        & ordinal(B) )
     => ordinal_subset(A,A) ) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(s1_ordinal2__e18_27__finset_1,axiom,
    ( ( ( in(empty_set,omega)
       => ! [A] : 
            ( element(A,powerset(powerset(empty_set)))
           => ~ ( A != empty_set
                & ! [B] : 
                    ~ ( in(B,A)
                      & ! [C] : 
                          ( ( in(C,A)
                            & subset(B,C) )
                         => C = B ) ) ) ) )
      & ! [D] : 
          ( ordinal(D)
         => ( ( in(D,omega)
             => ! [E] : 
                  ( element(E,powerset(powerset(D)))
                 => ~ ( E != empty_set
                      & ! [F] : 
                          ~ ( in(F,E)
                            & ! [G] : 
                                ( ( in(G,E)
                                  & subset(F,G) )
                               => G = F ) ) ) ) )
           => ( in(succ(D),omega)
             => ! [H] : 
                  ( element(H,powerset(powerset(succ(D))))
                 => ~ ( H != empty_set
                      & ! [I] : 
                          ~ ( in(I,H)
                            & ! [J] : 
                                ( ( in(J,H)
                                  & subset(I,J) )
                               => J = I ) ) ) ) ) ) )
      & ! [D] : 
          ( ordinal(D)
         => ( ( being_limit_ordinal(D)
              & ! [K] : 
                  ( ordinal(K)
                 => ( in(K,D)
                   => ( in(K,omega)
                     => ! [L] : 
                          ( element(L,powerset(powerset(K)))
                         => ~ ( L != empty_set
                              & ! [M] : 
                                  ~ ( in(M,L)
                                    & ! [N] : 
                                        ( ( in(N,L)
                                          & subset(M,N) )
                                       => N = M ) ) ) ) ) ) ) )
           => ( D = empty_set
              | ( in(D,omega)
               => ! [O] : 
                    ( element(O,powerset(powerset(D)))
                   => ~ ( O != empty_set
                        & ! [P] : 
                            ~ ( in(P,O)
                              & ! [Q] : 
                                  ( ( in(Q,O)
                                    & subset(P,Q) )
                                 => Q = P ) ) ) ) ) ) ) ) )
   => ! [D] : 
        ( ordinal(D)
       => ( in(D,omega)
         => ! [R] : 
              ( element(R,powerset(powerset(D)))
             => ~ ( R != empty_set
                  & ! [S] : 
                      ~ ( in(S,R)
                        & ! [T] : 
                            ( ( in(T,R)
                              & subset(S,T) )
                           => T = S ) ) ) ) ) ) )).

fof(s1_xboole_0__e4_27_3_1__finset_1,axiom,(
    ! [A,B] : 
      ( ( ordinal(A)
        & element(B,powerset(powerset(succ(A)))) )
     => ? [C] : 
        ! [D] : 
          ( in(D,C)
        <=> ( in(D,powerset(A))
            & ? [E] : 
                ( in(E,B)
                & D = set_difference(E,singleton(A)) ) ) ) ) )).

fof(s1_xboole_0__e6_27__finset_1,axiom,(
    ! [A,B,C] : 
      ( ( element(B,powerset(powerset(A)))
        & relation(C)
        & function(C) )
     => ? [D] : 
        ! [E] : 
          ( in(E,D)
        <=> ( in(E,powerset(relation_dom(C)))
            & in(relation_image(C,E),B) ) ) ) )).

fof(t10_ordinal1,axiom,(
    ! [A] : in(A,succ(A)) )).

fof(t146_funct_1,axiom,(
    ! [A,B] : 
      ( relation(B)
     => ( subset(A,relation_dom(B))
       => subset(A,relation_inverse_image(B,relation_image(B,A))) ) ) )).

fof(t147_funct_1,axiom,(
    ! [A,B] : 
      ( ( relation(B)
        & function(B) )
     => ( subset(A,relation_rng(B))
       => relation_image(B,relation_inverse_image(B,A)) = A ) ) )).

fof(t167_relat_1,axiom,(
    ! [A,B] : 
      ( relation(B)
     => subset(relation_inverse_image(B,A),relation_dom(B)) ) )).

fof(t178_relat_1,axiom,(
    ! [A,B,C] : 
      ( relation(C)
     => ( subset(A,B)
       => subset(relation_inverse_image(C,A),relation_inverse_image(C,B)) ) ) )).

fof(t18_finset_1,conjecture,(
    ! [A] : 
      ( finite(A)
     => ! [B] : 
          ( element(B,powerset(powerset(A)))
         => ~ ( B != empty_set
              & ! [C] : 
                  ~ ( in(C,B)
                    & ! [D] : 
                        ( ( in(D,B)
                          & subset(C,D) )
                       => D = C ) ) ) ) ) )).

fof(t1_boole,axiom,(
    ! [A] : set_union2(A,empty_set) = A )).

fof(t1_subset,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => element(A,B) ) )).

fof(t1_xboole_1,axiom,(
    ! [A,B,C] : 
      ( ( subset(A,B)
        & subset(B,C) )
     => subset(A,C) ) )).

fof(t1_zfmisc_1,axiom,(
    powerset(empty_set) = singleton(empty_set) )).

fof(t23_ordinal1,axiom,(
    ! [A,B] : 
      ( ordinal(B)
     => ( in(A,B)
       => ordinal(A) ) ) )).

fof(t24_ordinal1,axiom,(
    ! [A] : 
      ( ordinal(A)
     => ! [B] : 
          ( ordinal(B)
         => ~ ( ~ in(A,B)
              & A != B
              & ~ in(B,A) ) ) ) )).

fof(t2_subset,axiom,(
    ! [A,B] : 
      ( element(A,B)
     => ( empty(B)
        | in(A,B) ) ) )).

fof(t33_xboole_1,axiom,(
    ! [A,B,C] : 
      ( subset(A,B)
     => subset(set_difference(A,C),set_difference(B,C)) ) )).

fof(t37_zfmisc_1,axiom,(
    ! [A,B] : 
      ( subset(singleton(A),B)
    <=> in(A,B) ) )).

fof(t39_xboole_1,axiom,(
    ! [A,B] : set_union2(A,set_difference(B,A)) = set_union2(A,B) )).

fof(t39_zfmisc_1,axiom,(
    ! [A,B] : 
      ( subset(A,singleton(B))
    <=> ( A = empty_set
        | A = singleton(B) ) ) )).

fof(t3_boole,axiom,(
    ! [A] : set_difference(A,empty_set) = A )).

fof(t3_subset,axiom,(
    ! [A,B] : 
      ( element(A,powerset(B))
    <=> subset(A,B) ) )).

fof(t40_xboole_1,axiom,(
    ! [A,B] : set_difference(set_union2(A,B),B) = set_difference(A,B) )).

fof(t45_xboole_1,axiom,(
    ! [A,B] : 
      ( subset(A,B)
     => B = set_union2(A,set_difference(B,A)) ) )).

fof(t46_zfmisc_1,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => set_union2(singleton(A),B) = B ) )).

fof(t4_boole,axiom,(
    ! [A] : set_difference(empty_set,A) = empty_set )).

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

fof(t65_zfmisc_1,axiom,(
    ! [A,B] : 
      ( set_difference(A,singleton(B)) = A
    <=> ~ in(B,A) ) )).

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
