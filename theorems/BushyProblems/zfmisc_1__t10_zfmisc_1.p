%------------------------------------------------------------------------------
% File     : zfmisc_1__t10_zfmisc_1

% Syntax   : Number of formulae    :    7 (   4 unit)
%            Number of atoms       :   13 (   7 equality)
%            Maximal formula depth :    9 (   4 average)
%            Number of connectives :   11 (   5 ~  ;   1  |;   2  &)
%                                         (   2 <=>;   1 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    4 (   1 propositional; 0-2 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :   14 (   0 singleton;  12 !;   2 ?)
%            Maximal term depth    :    2 (   1 average)
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(commutativity_k2_tarski,axiom,(
    ! [A,B] : unordered_pair(A,B) = unordered_pair(B,A) )).

fof(d2_tarski,axiom,(
    ! [A,B,C] : 
      ( C = unordered_pair(A,B)
    <=> ! [D] : 
          ( in(D,C)
        <=> ( D = A
            | D = B ) ) ) )).

fof(dt_k2_tarski,axiom,(
    $true )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(t10_zfmisc_1,conjecture,(
    ! [A,B,C,D] : 
      ~ ( unordered_pair(A,B) = unordered_pair(C,D)
        & A != C
        & A != D ) )).
%------------------------------------------------------------------------------
