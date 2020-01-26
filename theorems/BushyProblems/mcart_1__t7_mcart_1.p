%------------------------------------------------------------------------------
% File     : mcart_1__t7_mcart_1

% Syntax   : Number of formulae    :   19 (  10 unit)
%            Number of atoms       :   34 (  12 equality)
%            Maximal formula depth :    8 (   4 average)
%            Number of connectives :   21 (   6 ~  ;   1  |;   4  &)
%                                         (   2 <=>;   8 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    5 (   1 propositional; 0-2 arity)
%            Number of functors    :    4 (   1 constant; 0-2 arity)
%            Number of variables   :   31 (   0 singleton;  24 !;   7 ?)
%            Maximal term depth    :    3 (   1 average)
%------------------------------------------------------------------------------
fof(existence_m1_subset_1,axiom,(
    ! [A] : 
    ? [B] : element(B,A) )).

fof(dt_m1_subset_1,axiom,(
    $true )).

fof(t2_subset,axiom,(
    ! [A,B] : 
      ( element(A,B)
     => ( empty(B)
        | in(A,B) ) ) )).

fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(dt_k1_xboole_0,axiom,(
    $true )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(t1_subset,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => element(A,B) ) )).

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

fof(dt_k1_mcart_1,axiom,(
    $true )).

fof(dt_k2_mcart_1,axiom,(
    $true )).

fof(dt_k4_tarski,axiom,(
    $true )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(fc1_zfmisc_1,axiom,(
    ! [A,B] : ~ empty(ordered_pair(A,B)) )).

fof(t7_mcart_1,conjecture,(
    ! [A,B] : 
      ( pair_first(ordered_pair(A,B)) = A
      & pair_second(ordered_pair(A,B)) = B ) )).

fof(d1_mcart_1,axiom,(
    ! [A] : 
      ( ? [B,C] : A = ordered_pair(B,C)
     => ! [B] : 
          ( B = pair_first(A)
        <=> ! [C,D] : 
              ( A = ordered_pair(C,D)
             => B = C ) ) ) )).

fof(d2_mcart_1,axiom,(
    ! [A] : 
      ( ? [B,C] : A = ordered_pair(B,C)
     => ! [B] : 
          ( B = pair_second(A)
        <=> ! [C,D] : 
              ( A = ordered_pair(C,D)
             => B = D ) ) ) )).
%------------------------------------------------------------------------------
