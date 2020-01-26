% Mizar problem: t25_wellord2,wellord2,762,69 
fof(t25_wellord2, conjecture,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r2_wellord1(B, A) =>  (k3_relat_1(k2_wellord1(B, A))=A & v2_wellord1(k2_wellord1(B, A))) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d10_xboole_0, axiom,  (! [A] :  (! [B] :  (A=B <=>  (r1_tarski(A, B) & r1_tarski(B, A)) ) ) ) ).
fof(d1_relat_2, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r1_relat_2(A, B) <=>  (! [C] :  (r2_hidden(C, B) => r2_hidden(k4_tarski(C, C), A)) ) ) ) ) ) ).
fof(d1_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (! [C] :  (C=k1_wellord1(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  ( ~ (D=B)  & r2_hidden(k4_tarski(D, B), A)) ) ) ) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(d3_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r1_wellord1(A, B) <=>  (! [C] :  ~ ( (r1_tarski(C, B) &  ( ~ (C=k1_xboole_0)  &  (! [D] :  ~ ( (r2_hidden(D, C) & r1_xboole_0(k1_wellord1(A, D), C)) ) ) ) ) ) ) ) ) ) ) ).
fof(d4_relat_2, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r4_relat_2(A, B) <=>  (! [C] :  (! [D] :  ( (r2_hidden(C, B) &  (r2_hidden(D, B) &  (r2_hidden(k4_tarski(C, D), A) & r2_hidden(k4_tarski(D, C), A)) ) )  => C=D) ) ) ) ) ) ) ).
fof(d4_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k3_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) & r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d5_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r2_wellord1(A, B) <=>  (r1_relat_2(A, B) &  (r8_relat_2(A, B) &  (r4_relat_2(A, B) &  (r6_relat_2(A, B) & r1_wellord1(A, B)) ) ) ) ) ) ) ) ).
fof(d6_relat_2, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r6_relat_2(A, B) <=>  (! [C] :  (! [D] :  ~ ( (r2_hidden(C, B) &  (r2_hidden(D, B) &  ( ~ (C=D)  &  ( ~ (r2_hidden(k4_tarski(C, D), A))  &  ~ (r2_hidden(k4_tarski(D, C), A)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d6_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] : k2_wellord1(A, B)=k3_xboole_0(A, k2_zfmisc_1(B, B))) ) ) ).
fof(d8_relat_2, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r8_relat_2(A, B) <=>  (! [C] :  (! [D] :  (! [E] :  ( (r2_hidden(C, B) &  (r2_hidden(D, B) &  (r2_hidden(E, B) &  (r2_hidden(k4_tarski(C, D), A) & r2_hidden(k4_tarski(D, E), A)) ) ) )  => r2_hidden(k4_tarski(C, E), A)) ) ) ) ) ) ) ) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_wellord1, axiom, $true).
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
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(t106_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(A, B), k2_zfmisc_1(C, D)) <=>  (r2_hidden(A, C) & r2_hidden(B, D)) ) ) ) ) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t20_wellord1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(k3_relat_1(k2_wellord1(B, A)), k3_relat_1(B)) & r1_tarski(k3_relat_1(k2_wellord1(B, A)), A)) ) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t30_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r2_hidden(k4_tarski(A, B), C) =>  (r2_hidden(A, k3_relat_1(C)) & r2_hidden(B, k3_relat_1(C))) ) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t3_xboole_0, axiom,  (! [A] :  (! [B] :  ( ~ ( ( ~ (r1_xboole_0(A, B))  &  (! [C] :  ~ ( (r2_hidden(C, A) & r2_hidden(C, B)) ) ) ) )  &  ~ ( ( (? [C] :  (r2_hidden(C, A) & r2_hidden(C, B)) )  & r1_xboole_0(A, B)) ) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t8_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (r2_wellord1(A, k3_relat_1(A)) <=> v2_wellord1(A)) ) ) ).
