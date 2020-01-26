% Mizar problem: t26_wellord2,wellord2,903,29 
fof(t26_wellord2, conjecture,  (! [A] :  (? [B] :  (v1_relat_1(B) & r2_wellord1(B, A)) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(connectedness_r1_ordinal1, axiom,  (! [A, B] :  ( (v3_ordinal1(A) & v3_ordinal1(B))  =>  (r1_ordinal1(A, B) | r1_ordinal1(B, A)) ) ) ).
fof(d1_tarski, axiom,  (! [A] :  (! [B] :  (B=k1_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=> C=A) ) ) ) ) ).
fof(d1_wellord2, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (B=k1_wellord2(A) <=>  (k3_relat_1(B)=A &  (! [C] :  (! [D] :  ( (r2_hidden(C, A) & r2_hidden(D, A))  =>  (r2_hidden(k4_tarski(C, D), B) <=> r1_tarski(C, D)) ) ) ) ) ) ) ) ) ).
fof(d2_ordinal1, axiom,  (! [A] :  (v1_ordinal1(A) <=>  (! [B] :  (r2_hidden(B, A) => r1_tarski(B, A)) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(d4_wellord2, axiom,  (! [A] :  (! [B] :  (r2_wellord2(A, B) <=>  (? [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  &  (v2_funct_1(C) &  (k1_relat_1(C)=A & k2_relat_1(C)=B) ) ) ) ) ) ) ).
fof(d5_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (B=k2_relat_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(D, k1_relat_1(A)) & C=k1_funct_1(A, D)) ) ) ) ) ) ) ) ).
fof(d8_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v2_funct_1(A) <=>  (! [B] :  (! [C] :  ( (r2_hidden(B, k1_relat_1(A)) &  (r2_hidden(C, k1_relat_1(A)) & k1_funct_1(A, B)=k1_funct_1(A, C)) )  => B=C) ) ) ) ) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_tarski, axiom, $true).
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
fof(l30_wellord2, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  ~ ( (v2_wellord1(B) &  (r2_wellord2(A, k3_relat_1(B)) &  (! [C] :  (v1_relat_1(C) =>  ~ (r2_wellord1(C, A)) ) ) ) ) ) ) ) ) ).
fof(redefinition_r1_ordinal1, axiom,  (! [A, B] :  ( (v3_ordinal1(A) & v3_ordinal1(B))  =>  (r1_ordinal1(A, B) <=> r1_tarski(A, B)) ) ) ).
fof(redefinition_r2_wellord2, axiom,  (! [A, B] :  (r2_wellord2(A, B) <=> r2_tarski(A, B)) ) ).
fof(reflexivity_r1_ordinal1, axiom,  (! [A, B] :  ( (v3_ordinal1(A) & v3_ordinal1(B))  => r1_ordinal1(A, A)) ) ).
fof(reflexivity_r2_wellord2, axiom,  (! [A, B] : r2_wellord2(A, A)) ).
fof(s1_xboole_0__e6_31__wellord2, axiom,  (! [A] :  (? [B] :  (! [C] :  (r2_hidden(C, B) <=>  (r2_hidden(C, A) & v3_ordinal1(C)) ) ) ) ) ).
fof(s3_funct_1__e15_31__wellord2, axiom,  (! [A] :  (? [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  &  (k1_relat_1(B)=A &  (! [C] :  (r2_hidden(C, A) => k1_funct_1(B, C)=k1_tarski(C)) ) ) ) ) ) ).
fof(symmetry_r2_wellord2, axiom,  (! [A, B] :  (r2_wellord2(A, B) => r2_wellord2(B, A)) ) ).
fof(t136_zfmisc_1, axiom,  (! [A] :  (? [B] :  (r2_hidden(A, B) &  ( (! [C] :  (! [D] :  ( (r2_hidden(C, B) & r1_tarski(D, C))  => r2_hidden(D, B)) ) )  &  ( (! [C] :  (r2_hidden(C, B) => r2_hidden(k1_zfmisc_1(C), B)) )  &  (! [C] :  ~ ( (r1_tarski(C, B) &  ( ~ (r2_tarski(C, B))  &  ~ (r2_hidden(C, B)) ) ) ) ) ) ) ) ) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t25_wellord2, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r2_wellord1(B, A) =>  (k3_relat_1(k2_wellord1(B, A))=A & v2_wellord1(k2_wellord1(B, A))) ) ) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t31_ordinal1, axiom,  (! [A] :  ( (! [B] :  (r2_hidden(B, A) =>  (v3_ordinal1(B) & r1_tarski(B, A)) ) )  => v3_ordinal1(A)) ) ).
fof(t32_wellord1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (v2_wellord1(B) => v2_wellord1(k2_wellord1(B, A))) ) ) ) ).
fof(t39_wellord1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  ( (v2_wellord1(B) & r1_tarski(A, k3_relat_1(B)))  => k3_relat_1(k2_wellord1(B, A))=A) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t6_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(k1_tarski(A), k1_tarski(B)) => A=B) ) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t7_wellord2, axiom,  (! [A] :  (v3_ordinal1(A) => v2_wellord1(k1_wellord2(A))) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc1_ordinal1, axiom,  (! [A] :  (v3_ordinal1(A) =>  (v1_ordinal1(A) & v2_ordinal1(A)) ) ) ).
fof(cc5_ordinal1, axiom,  (! [A] :  (v3_ordinal1(A) =>  (! [B] :  (m1_subset_1(B, A) => v3_ordinal1(B)) ) ) ) ).
