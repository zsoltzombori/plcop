% Mizar problem: t5_ordinal1,ordinal1,56,57 
fof(t5_ordinal1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  ~ ( (r2_hidden(A, B) &  (r2_hidden(B, C) &  (r2_hidden(C, D) &  (r2_hidden(D, E) & r2_hidden(E, A)) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d3_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  (F=k3_enumset1(A, B, C, D, E) <=>  (! [G] :  (r2_hidden(G, F) <=>  ~ ( ( ~ (G=A)  &  ( ~ (G=B)  &  ( ~ (G=C)  &  ( ~ (G=D)  &  ~ (G=E) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k3_enumset1, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t7_tarski, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) &  (! [C] :  ~ ( (r2_hidden(C, B) &  (! [D] :  ~ ( (r2_hidden(D, B) & r2_hidden(D, C)) ) ) ) ) ) ) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
