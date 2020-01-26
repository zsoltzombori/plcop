% Mizar problem: t4_ordinal1,ordinal1,43,46 
fof(t4_ordinal1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ~ ( (r2_hidden(A, B) &  (r2_hidden(B, C) &  (r2_hidden(C, D) & r2_hidden(D, A)) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d2_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (E=k2_enumset1(A, B, C, D) <=>  (! [F] :  (r2_hidden(F, E) <=>  ~ ( ( ~ (F=A)  &  ( ~ (F=B)  &  ( ~ (F=C)  &  ~ (F=D) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_enumset1, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t7_tarski, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) &  (! [C] :  ~ ( (r2_hidden(C, B) &  (! [D] :  ~ ( (r2_hidden(D, B) & r2_hidden(D, C)) ) ) ) ) ) ) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
