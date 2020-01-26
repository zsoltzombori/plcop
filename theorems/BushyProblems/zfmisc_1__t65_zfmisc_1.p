%------------------------------------------------------------------------------
% File     : zfmisc_1__t65_zfmisc_1

% Syntax   : Number of formulae    :   10 (   4 unit)
%            Number of atoms       :   16 (   2 equality)
%            Maximal formula depth :    5 (   4 average)
%            Number of connectives :   11 (   5 ~  ;   0  |;   1  &)
%                                         (   2 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    5 (   1 propositional; 0-2 arity)
%            Number of functors    :    2 (   0 constant; 1-2 arity)
%            Number of variables   :   14 (   0 singleton;  12 !;   2 ?)
%            Maximal term depth    :    3 (   1 average)
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(dt_k1_tarski,axiom,(
    $true )).

fof(dt_k4_xboole_0,axiom,(
    $true )).

fof(l25_zfmisc_1,axiom,(
    ! [A,B] : 
      ~ ( disjoint(singleton(A),B)
        & in(A,B) ) )).

fof(l28_zfmisc_1,axiom,(
    ! [A,B] : 
      ( ~ in(A,B)
     => disjoint(singleton(A),B) ) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(symmetry_r1_xboole_0,axiom,(
    ! [A,B] : 
      ( disjoint(A,B)
     => disjoint(B,A) ) )).

fof(t65_zfmisc_1,conjecture,(
    ! [A,B] : 
      ( set_difference(A,singleton(B)) = A
    <=> ~ in(B,A) ) )).

fof(t83_xboole_1,axiom,(
    ! [A,B] : 
      ( disjoint(A,B)
    <=> set_difference(A,B) = A ) )).
%------------------------------------------------------------------------------
