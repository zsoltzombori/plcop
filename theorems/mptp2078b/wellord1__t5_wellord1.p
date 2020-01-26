% Mizar problem: t5_wellord1,wellord1,138,50 
fof(t5_wellord1, conjecture,  (! [A] :  (v1_relat_1(A) =>  (v1_wellord1(A) <=> r1_wellord1(A, k3_relat_1(A))) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(d2_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (v1_wellord1(A) <=>  (! [B] :  ~ ( (r1_tarski(B, k3_relat_1(A)) &  ( ~ (B=k1_xboole_0)  &  (! [C] :  ~ ( (r2_hidden(C, B) & r1_xboole_0(k1_wellord1(A, C), B)) ) ) ) ) ) ) ) ) ) ).
fof(d3_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r1_wellord1(A, B) <=>  (! [C] :  ~ ( (r1_tarski(C, B) &  ( ~ (C=k1_xboole_0)  &  (! [D] :  ~ ( (r2_hidden(D, C) & r1_xboole_0(k1_wellord1(A, D), C)) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_wellord1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k3_relat_1, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
