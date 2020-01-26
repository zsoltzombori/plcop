%------------------------------------------------------------------------------
% File     : zfmisc_1__t9_zfmisc_1

% Syntax   : Number of formulae    :    7 (   5 unit)
%            Number of atoms       :    9 (   5 equality)
%            Maximal formula depth :    5 (   3 average)
%            Number of connectives :    3 (   1 ~  ;   0  |;   0  &)
%                                         (   0 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   1 propositional; 0-2 arity)
%            Number of functors    :    2 (   0 constant; 1-2 arity)
%            Number of variables   :   10 (   0 singleton;   8 !;   2 ?)
%            Maximal term depth    :    2 (   2 average)
%------------------------------------------------------------------------------
fof(commutativity_k2_tarski,axiom,(
    ! [A,B] : unordered_pair(A,B) = unordered_pair(B,A) )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(dt_k2_tarski,axiom,(
    $true )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(t8_zfmisc_1,axiom,(
    ! [A,B,C] : 
      ( singleton(A) = unordered_pair(B,C)
     => A = B ) )).

fof(t9_zfmisc_1,conjecture,(
    ! [A,B,C] : 
      ( singleton(A) = unordered_pair(B,C)
     => B = C ) )).
%------------------------------------------------------------------------------
