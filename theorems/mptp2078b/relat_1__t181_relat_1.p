% Mizar problem: t181_relat_1,relat_1,2610,17 
fof(t181_relat_1, conjecture,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) => k10_relat_1(k5_relat_1(B, C), A)=k10_relat_1(B, k10_relat_1(C, A))) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d14_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (! [C] :  (C=k10_relat_1(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (? [E] :  (r2_hidden(k4_tarski(D, E), A) & r2_hidden(E, B)) ) ) ) ) ) ) ) ) ).
fof(d8_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) =>  (C=k5_relat_1(A, B) <=>  (! [D] :  (! [E] :  (r2_hidden(k4_tarski(D, E), C) <=>  (? [F] :  (r2_hidden(k4_tarski(D, F), A) & r2_hidden(k4_tarski(F, E), B)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_k10_relat_1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(dt_k5_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_relat_1(B))  => v1_relat_1(k5_relat_1(A, B))) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t2_tarski, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) <=> r2_hidden(C, B)) )  => A=B) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
