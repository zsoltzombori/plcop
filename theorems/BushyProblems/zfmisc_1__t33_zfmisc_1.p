%------------------------------------------------------------------------------
% File     : zfmisc_1__t33_zfmisc_1

% Syntax   : Number of formulae    :   15 (  10 unit)
%            Number of atoms       :   22 (  14 equality)
%            Maximal formula depth :    9 (   4 average)
%            Number of connectives :   12 (   5 ~  ;   0  |;   3  &)
%                                         (   0 <=>;   4 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    4 (   1 propositional; 0-2 arity)
%            Number of functors    :    3 (   0 constant; 1-2 arity)
%            Number of variables   :   27 (   1 singleton;  25 !;   2 ?)
%            Maximal term depth    :    3 (   2 average)
%------------------------------------------------------------------------------
fof(commutativity_k2_tarski,axiom,(
    ! [A,B] : unordered_pair(A,B) = unordered_pair(B,A) )).

fof(d5_tarski,axiom,(
    ! [A,B] : ordered_pair(A,B) = unordered_pair(unordered_pair(A,B),singleton(A)) )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(dt_k2_tarski,axiom,(
    $true )).

fof(dt_k4_tarski,axiom,(
    $true )).

fof(fc1_zfmisc_1,axiom,(
    ! [A,B] : ~ empty(ordered_pair(A,B)) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(t10_zfmisc_1,axiom,(
    ! [A,B,C,D] : 
      ~ ( unordered_pair(A,B) = unordered_pair(C,D)
        & A != C
        & A != D ) )).

fof(t33_zfmisc_1,conjecture,(
    ! [A,B,C,D] : 
      ( ordered_pair(A,B) = ordered_pair(C,D)
     => ( A = C
        & B = D ) ) )).

fof(t69_enumset1,axiom,(
    ! [A] : unordered_pair(A,A) = singleton(A) )).

fof(t6_zfmisc_1,axiom,(
    ! [A,B] : 
      ( subset(singleton(A),singleton(B))
     => A = B ) )).

fof(t8_zfmisc_1,axiom,(
    ! [A,B,C] : 
      ( singleton(A) = unordered_pair(B,C)
     => A = B ) )).

fof(t9_zfmisc_1,axiom,(
    ! [A,B,C] : 
      ( singleton(A) = unordered_pair(B,C)
     => B = C ) )).
%------------------------------------------------------------------------------
