%------------------------------------------------------------------------------
% File     : zfmisc_1__t119_zfmisc_1

% Syntax   : Number of formulae    :    7 (   4 unit)
%            Number of atoms       :   13 (   0 equality)
%            Maximal formula depth :    7 (   4 average)
%            Number of connectives :    7 (   1 ~  ;   0  |;   3  &)
%                                         (   0 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   1 propositional; 0-2 arity)
%            Number of functors    :    1 (   0 constant; 2-2 arity)
%            Number of variables   :   14 (   1 singleton;  12 !;   2 ?)
%            Maximal term depth    :    2 (   1 average)
%------------------------------------------------------------------------------
fof(dt_k2_zfmisc_1,axiom,(
    $true )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(t118_zfmisc_1,axiom,(
    ! [A,B,C] : 
      ( subset(A,B)
     => ( subset(cartesian_product2(A,C),cartesian_product2(B,C))
        & subset(cartesian_product2(C,A),cartesian_product2(C,B)) ) ) )).

fof(t119_zfmisc_1,conjecture,(
    ! [A,B,C,D] : 
      ( ( subset(A,B)
        & subset(C,D) )
     => subset(cartesian_product2(A,C),cartesian_product2(B,D)) ) )).

fof(t1_xboole_1,axiom,(
    ! [A,B,C] : 
      ( ( subset(A,B)
        & subset(B,C) )
     => subset(A,C) ) )).
%------------------------------------------------------------------------------
