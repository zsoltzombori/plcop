% Mizar problem: t14_wellord2,wellord2,518,47 
fof(t14_wellord2, conjecture,  (! [A] :  (v1_relat_1(A) =>  ~ ( (v2_wellord1(A) &  (! [B] :  (v3_ordinal1(B) =>  ~ (r4_wellord1(A, k1_wellord2(B))) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d1_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (! [C] :  (C=k1_wellord1(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  ( ~ (D=B)  & r2_hidden(k4_tarski(D, B), A)) ) ) ) ) ) ) ) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_wellord1, axiom, $true).
fof(dt_k1_wellord2, axiom,  (! [A] : v1_relat_1(k1_wellord2(A))) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_wellord1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k2_wellord1(A, B))) ) ).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_relat_1, axiom, $true).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(s1_xboole_0__e2_15__wellord2, axiom,  (! [A] :  (v1_relat_1(A) =>  (? [B] :  (! [C] :  (r2_hidden(C, B) <=>  (r2_hidden(C, k3_relat_1(A)) &  (? [D] :  (v3_ordinal1(D) & r4_wellord1(k2_wellord1(A, k1_wellord1(A, C)), k1_wellord2(D))) ) ) ) ) ) ) ) ).
fof(t13_wellord2, axiom,  (! [A] :  (v1_relat_1(A) =>  ~ ( (v2_wellord1(A) &  ( (! [B] :  ~ ( (r2_hidden(B, k3_relat_1(A)) &  (! [C] :  (v3_ordinal1(C) =>  ~ (r4_wellord1(k2_wellord1(A, k1_wellord1(A, B)), k1_wellord2(C))) ) ) ) ) )  &  (! [B] :  (v3_ordinal1(B) =>  ~ (r4_wellord1(A, k1_wellord2(B))) ) ) ) ) ) ) ) ).
fof(t19_wellord1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r2_hidden(A, k3_relat_1(k2_wellord1(C, B))) =>  (r2_hidden(A, k3_relat_1(C)) & r2_hidden(A, B)) ) ) ) ) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t29_wellord1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r1_tarski(A, B) => k2_wellord1(k2_wellord1(C, B), A)=k2_wellord1(C, A)) ) ) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t32_wellord1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (v2_wellord1(B) => v2_wellord1(k2_wellord1(B, A))) ) ) ) ).
fof(t35_wellord1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  ( (v2_wellord1(C) & r2_hidden(A, k1_wellord1(C, B)))  => k1_wellord1(k2_wellord1(C, k1_wellord1(C, B)), A)=k1_wellord1(C, A)) ) ) ) ) ).
fof(t37_wellord1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  ( (v2_wellord1(C) &  (r2_hidden(A, k3_relat_1(C)) & r2_hidden(B, k3_relat_1(C))) )  =>  (r2_hidden(k4_tarski(A, B), C) <=> r1_tarski(k1_wellord1(C, A), k1_wellord1(C, B))) ) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t41_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (v2_wellord1(A) =>  (! [B] :  ( (! [C] :  ( (r2_hidden(C, k3_relat_1(A)) & r1_tarski(k1_wellord1(A, C), B))  => r2_hidden(C, B)) )  => r1_tarski(k3_relat_1(A), B)) ) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
