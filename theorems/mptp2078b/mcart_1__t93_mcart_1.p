% Mizar problem: t93_mcart_1,mcart_1,1901,31 
fof(t93_mcart_1, conjecture,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r2_hidden(B, A) => r2_hidden(k2_mcart_1(B), k11_relat_1(A, k1_mcart_1(B)))) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d16_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] : k11_relat_1(A, B)=k9_relat_1(A, k1_tarski(B))) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(dt_k11_relat_1, axiom, $true).
fof(dt_k1_mcart_1, axiom, $true).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_mcart_1, axiom, $true).
fof(dt_k9_relat_1, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(fraenkel_a_2_0_mcart_1, axiom,  (! [A, B, C] :  ( ( ~ (v1_xboole_0(B))  & v1_relat_1(B))  =>  (r2_hidden(A, a_2_0_mcart_1(B, C)) <=>  (? [D] :  (m1_subset_1(D, B) &  (A=k2_mcart_1(D) & k1_mcart_1(D)=C) ) ) ) ) ) ).
fof(fraenkel_a_2_1_mcart_1, axiom,  (! [A, B, C] :  (v1_relat_1(B) =>  (r2_hidden(A, a_2_1_mcart_1(B, C)) <=>  (? [D] :  (m1_subset_1(D, B) &  (A=k2_mcart_1(D) & k1_mcart_1(D)=k1_mcart_1(C)) ) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t2_tarski, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) <=> r2_hidden(C, B)) )  => A=B) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t92_mcart_1, axiom,  (! [A] :  ( ( ~ (v1_xboole_0(A))  & v1_relat_1(A))  =>  (! [B] : k11_relat_1(A, B)=a_2_0_mcart_1(A, B)) ) ) ).
