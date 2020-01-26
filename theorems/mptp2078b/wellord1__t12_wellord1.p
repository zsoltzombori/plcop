% Mizar problem: t12_wellord1,wellord1,245,43 
fof(t12_wellord1, conjecture,  (! [A] :  (v1_relat_1(A) =>  (v2_wellord1(A) =>  (! [B] :  ~ ( (r2_hidden(B, k3_relat_1(A)) &  ( (? [C] :  (r2_hidden(C, k3_relat_1(A)) &  ~ (r2_hidden(k4_tarski(C, B), A)) ) )  &  (! [C] :  ~ ( (r2_hidden(C, k3_relat_1(A)) &  (r2_hidden(k4_tarski(B, C), A) &  (! [D] :  ~ ( (r2_hidden(D, k3_relat_1(A)) &  (r2_hidden(k4_tarski(B, D), A) &  ( ~ (D=B)  &  ~ (r2_hidden(k4_tarski(C, D), A)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(d4_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (v2_wellord1(A) <=>  (v1_relat_2(A) &  (v8_relat_2(A) &  (v4_relat_2(A) &  (v6_relat_2(A) & v1_wellord1(A)) ) ) ) ) ) ) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k3_relat_1, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(l3_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (v4_relat_2(A) <=>  (! [B] :  (! [C] :  ( (r2_hidden(k4_tarski(B, C), A) & r2_hidden(k4_tarski(C, B), A))  => B=C) ) ) ) ) ) ).
fof(l4_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (v6_relat_2(A) <=>  (! [B] :  (! [C] :  ~ ( (r2_hidden(B, k3_relat_1(A)) &  (r2_hidden(C, k3_relat_1(A)) &  ( ~ (B=C)  &  ( ~ (r2_hidden(k4_tarski(B, C), A))  &  ~ (r2_hidden(k4_tarski(C, B), A)) ) ) ) ) ) ) ) ) ) ) ).
fof(s1_xboole_0__e7_18__wellord1, axiom,  (! [A, B] :  (v1_relat_1(A) =>  (? [C] :  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, k3_relat_1(A)) &  ~ (r2_hidden(k4_tarski(D, B), A)) ) ) ) ) ) ) ).
fof(t10_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (v2_wellord1(A) =>  (! [B] :  ~ ( (r1_tarski(B, k3_relat_1(A)) &  ( ~ (B=k1_xboole_0)  &  (! [C] :  ~ ( (r2_hidden(C, B) &  (! [D] :  (r2_hidden(D, B) => r2_hidden(k4_tarski(C, D), A)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
