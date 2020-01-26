% Mizar problem: t150_relat_1,relat_1,2126,12 
fof(t150_relat_1, conjecture,  (! [A] : k9_relat_1(k1_xboole_0, A)=k1_xboole_0) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d13_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (! [C] :  (C=k9_relat_1(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (? [E] :  (r2_hidden(k4_tarski(E, D), A) & r2_hidden(E, B)) ) ) ) ) ) ) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(dt_k9_relat_1, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_o_1_3_relat_1, axiom,  (! [A] : m1_subset_1(o_1_3_relat_1(A), k9_relat_1(k1_xboole_0, A))) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc1_relat_1, axiom,  (! [A] :  (v1_xboole_0(A) => v1_relat_1(A)) ) ).
fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0)).
