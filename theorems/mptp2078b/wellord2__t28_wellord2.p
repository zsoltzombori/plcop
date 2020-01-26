% Mizar problem: t28_wellord2,wellord2,1082,51 
fof(t28_wellord2, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  ~ ( ( (! [B] :  ~ ( (r2_hidden(B, A) & B=k1_xboole_0) ) )  &  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  ~ ( (k1_relat_1(B)=A &  (! [C] :  (r2_hidden(C, A) => r2_hidden(k1_funct_1(B, C), C)) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d1_relat_2, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r1_relat_2(A, B) <=>  (! [C] :  (r2_hidden(C, B) => r2_hidden(k4_tarski(C, C), A)) ) ) ) ) ) ).
fof(d1_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (! [C] :  (C=k1_wellord1(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  ( ~ (D=B)  & r2_hidden(k4_tarski(D, B), A)) ) ) ) ) ) ) ) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(d3_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r1_wellord1(A, B) <=>  (! [C] :  ~ ( (r1_tarski(C, B) &  ( ~ (C=k1_xboole_0)  &  (! [D] :  ~ ( (r2_hidden(D, C) & r1_xboole_0(k1_wellord1(A, D), C)) ) ) ) ) ) ) ) ) ) ) ).
fof(d4_relat_2, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r4_relat_2(A, B) <=>  (! [C] :  (! [D] :  ( (r2_hidden(C, B) &  (r2_hidden(D, B) &  (r2_hidden(k4_tarski(C, D), A) & r2_hidden(k4_tarski(D, C), A)) ) )  => C=D) ) ) ) ) ) ) ).
fof(d4_tarski, axiom,  (! [A] :  (! [B] :  (B=k3_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(C, D) & r2_hidden(D, A)) ) ) ) ) ) ) ).
fof(d4_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k3_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) & r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d5_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r2_wellord1(A, B) <=>  (r1_relat_2(A, B) &  (r8_relat_2(A, B) &  (r4_relat_2(A, B) &  (r6_relat_2(A, B) & r1_wellord1(A, B)) ) ) ) ) ) ) ) ).
fof(d6_relat_2, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (r6_relat_2(A, B) <=>  (! [C] :  (! [D] :  ~ ( (r2_hidden(C, B) &  (r2_hidden(D, B) &  ( ~ (C=D)  &  ( ~ (r2_hidden(k4_tarski(C, D), A))  &  ~ (r2_hidden(k4_tarski(D, C), A)) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d7_xboole_0, axiom,  (! [A] :  (! [B] :  (r1_xboole_0(A, B) <=> k3_xboole_0(A, B)=k1_xboole_0) ) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_wellord1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k3_tarski, axiom, $true).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(s2_funct_1__e10_33__wellord2, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & v1_relat_1(B))  =>  ( ( (! [C] :  (! [D] :  (! [E] :  ( (r2_hidden(C, A) &  ( (r2_hidden(D, C) &  (! [F] :  (r2_hidden(F, C) => r2_hidden(k4_tarski(D, F), B)) ) )  &  (r2_hidden(E, C) &  (! [G] :  (r2_hidden(G, C) => r2_hidden(k4_tarski(E, G), B)) ) ) ) )  => D=E) ) ) )  &  (! [C] :  ~ ( (r2_hidden(C, A) &  (! [D] :  ~ ( (r2_hidden(D, C) &  (! [H] :  (r2_hidden(H, C) => r2_hidden(k4_tarski(D, H), B)) ) ) ) ) ) ) ) )  =>  (? [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  &  (k1_relat_1(C)=A &  (! [D] :  (r2_hidden(D, A) =>  (r2_hidden(k1_funct_1(C, D), D) &  (! [I] :  (r2_hidden(I, D) => r2_hidden(k4_tarski(k1_funct_1(C, D), I), B)) ) ) ) ) ) ) ) ) ) ) ).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t26_wellord2, axiom,  (! [A] :  (? [B] :  (v1_relat_1(B) & r2_wellord1(B, A)) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t92_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => r1_tarski(A, k3_tarski(B))) ) ) ).
fof(rc5_ordinal1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v7_ordinal1(A)) ) ).
