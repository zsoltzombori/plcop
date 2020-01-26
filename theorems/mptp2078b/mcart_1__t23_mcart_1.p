% Mizar problem: t23_mcart_1,mcart_1,608,29 
fof(t23_mcart_1, conjecture,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r2_hidden(A, B) => A=k4_tarski(k1_mcart_1(A), k2_mcart_1(A))) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d1_relat_1, axiom,  (! [A] :  (v1_relat_1(A) <=>  (! [B] :  ~ ( (r2_hidden(B, A) &  (! [C] :  (! [D] :  ~ (B=k4_tarski(C, D)) ) ) ) ) ) ) ) ).
fof(dt_k1_mcart_1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_mcart_1, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t8_mcart_1, axiom,  (! [A] :  ( (? [B] :  (? [C] : A=k4_tarski(B, C)) )  => k4_tarski(k1_mcart_1(A), k2_mcart_1(A))=A) ) ).
