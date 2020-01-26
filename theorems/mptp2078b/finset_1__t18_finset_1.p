% Mizar problem: t18_finset_1,finset_1,370,54 
fof(t18_finset_1, conjecture,  (! [A] :  (v1_finset_1(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) =>  ~ ( ( ~ (B=k1_xboole_0)  &  (! [C] :  ~ ( (r2_hidden(C, B) &  (! [D] :  ( (r2_hidden(D, B) & r1_tarski(C, D))  => D=C) ) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(connectedness_r1_ordinal1, axiom,  (! [A, B] :  ( (v3_ordinal1(A) & v3_ordinal1(B))  =>  (r1_ordinal1(A, B) | r1_ordinal1(B, A)) ) ) ).
fof(d12_ordinal1, axiom,  (! [A] :  (A=k4_ordinal1 <=>  (r2_hidden(k1_xboole_0, A) &  (v4_ordinal1(A) &  (v3_ordinal1(A) &  (! [B] :  (v3_ordinal1(B) =>  ( (r2_hidden(k1_xboole_0, B) & v4_ordinal1(B))  => r1_tarski(A, B)) ) ) ) ) ) ) ) ).
fof(d1_finset_1, axiom,  (! [A] :  (v1_finset_1(A) <=>  (? [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  &  (k2_relat_1(B)=A & r2_hidden(k1_relat_1(B), k4_ordinal1)) ) ) ) ) ).
fof(d1_ordinal1, axiom,  (! [A] : k1_ordinal1(A)=k2_xboole_0(A, k1_tarski(A))) ).
fof(d1_tarski, axiom,  (! [A] :  (! [B] :  (B=k1_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=> C=A) ) ) ) ) ).
fof(d2_ordinal1, axiom,  (! [A] :  (v1_ordinal1(A) <=>  (! [B] :  (r2_hidden(B, A) => r1_tarski(B, A)) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(d3_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) | r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d5_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k4_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) &  ~ (r2_hidden(D, B)) ) ) ) ) ) ) ) ).
fof(dt_k10_relat_1, axiom, $true).
fof(dt_k1_ordinal1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k4_ordinal1, axiom, $true).
fof(dt_k4_xboole_0, axiom, $true).
fof(dt_k6_subset_1, axiom,  (! [A, B] : m1_subset_1(k6_subset_1(A, B), k1_zfmisc_1(A))) ).
fof(dt_k9_relat_1, axiom, $true).
fof(dt_k9_setfam_1, axiom,  (! [A] : m1_subset_1(k9_setfam_1(A), k1_zfmisc_1(k1_zfmisc_1(A)))) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(dt_o_2_0_finset_1, axiom,  (! [A, B] :  (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) => m1_subset_1(o_2_0_finset_1(A, B), B)) ) ).
fof(dt_o_2_1_finset_1, axiom,  (! [A, B] :  ( (v3_ordinal1(A) & m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(k1_ordinal1(A)))))  => m1_subset_1(o_2_1_finset_1(A, B), B)) ) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(redefinition_k6_subset_1, axiom,  (! [A, B] : k6_subset_1(A, B)=k4_xboole_0(A, B)) ).
fof(redefinition_k9_setfam_1, axiom,  (! [A] : k9_setfam_1(A)=k1_zfmisc_1(A)) ).
fof(redefinition_r1_ordinal1, axiom,  (! [A, B] :  ( (v3_ordinal1(A) & v3_ordinal1(B))  =>  (r1_ordinal1(A, B) <=> r1_tarski(A, B)) ) ) ).
fof(reflexivity_r1_ordinal1, axiom,  (! [A, B] :  ( (v3_ordinal1(A) & v3_ordinal1(B))  => r1_ordinal1(A, A)) ) ).
fof(s1_ordinal2__e17_33__finset_1, axiom,  ( ( (r2_hidden(k1_xboole_0, k4_ordinal1) =>  (! [A] :  (m1_subset_1(A, k1_zfmisc_1(k1_zfmisc_1(k1_xboole_0))) =>  ~ ( ( ~ (A=k1_xboole_0)  &  (! [B] :  ~ ( (r2_hidden(B, A) &  (! [C] :  ( (r2_hidden(C, A) & r1_tarski(B, C))  => C=B) ) ) ) ) ) ) ) ) )  &  ( (! [D] :  (v3_ordinal1(D) =>  ( (r2_hidden(D, k4_ordinal1) =>  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(k1_zfmisc_1(D))) =>  ~ ( ( ~ (E=k1_xboole_0)  &  (! [F] :  ~ ( (r2_hidden(F, E) &  (! [G] :  ( (r2_hidden(G, E) & r1_tarski(F, G))  => G=F) ) ) ) ) ) ) ) ) )  =>  (r2_hidden(k1_ordinal1(D), k4_ordinal1) =>  (! [H] :  (m1_subset_1(H, k1_zfmisc_1(k1_zfmisc_1(k1_ordinal1(D)))) =>  ~ ( ( ~ (H=k1_xboole_0)  &  (! [I] :  ~ ( (r2_hidden(I, H) &  (! [J] :  ( (r2_hidden(J, H) & r1_tarski(I, J))  => J=I) ) ) ) ) ) ) ) ) ) ) ) )  &  (! [D] :  (v3_ordinal1(D) =>  ( (v4_ordinal1(D) &  (! [K] :  (v3_ordinal1(K) =>  (r2_hidden(K, D) =>  (r2_hidden(K, k4_ordinal1) =>  (! [L] :  (m1_subset_1(L, k1_zfmisc_1(k1_zfmisc_1(K))) =>  ~ ( ( ~ (L=k1_xboole_0)  &  (! [M] :  ~ ( (r2_hidden(M, L) &  (! [N] :  ( (r2_hidden(N, L) & r1_tarski(M, N))  => N=M) ) ) ) ) ) ) ) ) ) ) ) ) )  =>  (D=k1_xboole_0 |  (r2_hidden(D, k4_ordinal1) =>  (! [O] :  (m1_subset_1(O, k1_zfmisc_1(k1_zfmisc_1(D))) =>  ~ ( ( ~ (O=k1_xboole_0)  &  (! [P] :  ~ ( (r2_hidden(P, O) &  (! [Q] :  ( (r2_hidden(Q, O) & r1_tarski(P, Q))  => Q=P) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )  =>  (! [D] :  (v3_ordinal1(D) =>  (r2_hidden(D, k4_ordinal1) =>  (! [R] :  (m1_subset_1(R, k1_zfmisc_1(k1_zfmisc_1(D))) =>  ~ ( ( ~ (R=k1_xboole_0)  &  (! [S] :  ~ ( (r2_hidden(S, R) &  (! [T] :  ( (r2_hidden(T, R) & r1_tarski(S, T))  => T=S) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(s1_xboole_0__e4_33_3_1__finset_1, axiom,  (! [A, B] :  ( (v3_ordinal1(A) & m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(k1_ordinal1(A)))))  =>  (? [C] :  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, k9_setfam_1(A)) &  (? [E] :  (r2_hidden(E, B) & D=k6_subset_1(E, k1_tarski(A))) ) ) ) ) ) ) ) ).
fof(s1_xboole_0__e6_33__finset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(A))) &  (v1_relat_1(C) & v1_funct_1(C)) )  =>  (? [D] :  (! [E] :  (r2_hidden(E, D) <=>  (r2_hidden(E, k9_setfam_1(k1_relat_1(C))) & r2_hidden(k9_relat_1(C, E), B)) ) ) ) ) ) ).
fof(t10_ordinal1, axiom,  (! [A] : r2_hidden(A, k1_ordinal1(A))) ).
fof(t146_funct_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(A, k1_relat_1(B)) => r1_tarski(A, k10_relat_1(B, k9_relat_1(B, A)))) ) ) ) ).
fof(t147_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (r1_tarski(A, k2_relat_1(B)) => k9_relat_1(B, k10_relat_1(B, A))=A) ) ) ) ).
fof(t167_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => r1_tarski(k10_relat_1(B, A), k1_relat_1(B))) ) ) ).
fof(t178_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r1_tarski(A, B) => r1_tarski(k10_relat_1(C, A), k10_relat_1(C, B))) ) ) ) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_numerals, axiom, m1_subset_1(k1_xboole_0, k4_ordinal1)).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t1_zfmisc_1, axiom, k1_zfmisc_1(k1_xboole_0)=k1_tarski(k1_xboole_0)).
fof(t24_ordinal1, axiom,  (! [A] :  (v3_ordinal1(A) =>  (! [B] :  (v3_ordinal1(B) =>  ~ ( ( ~ (r2_hidden(A, B))  &  ( ~ (A=B)  &  ~ (r2_hidden(B, A)) ) ) ) ) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t33_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (r1_tarski(A, B) => r1_tarski(k4_xboole_0(A, C), k4_xboole_0(B, C))) ) ) ) ).
fof(t37_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(k1_tarski(A), B) <=> r2_hidden(A, B)) ) ) ).
fof(t39_xboole_1, axiom,  (! [A] :  (! [B] : k2_xboole_0(A, k4_xboole_0(B, A))=k2_xboole_0(A, B)) ) ).
fof(t39_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, k1_tarski(B)) <=>  (A=k1_xboole_0 | A=k1_tarski(B)) ) ) ) ).
fof(t3_boole, axiom,  (! [A] : k4_xboole_0(A, k1_xboole_0)=A) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t40_xboole_1, axiom,  (! [A] :  (! [B] : k4_xboole_0(k2_xboole_0(A, B), B)=k4_xboole_0(A, B)) ) ).
fof(t45_xboole_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) => B=k2_xboole_0(A, k4_xboole_0(B, A))) ) ) ).
fof(t46_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => k2_xboole_0(k1_tarski(A), B)=B) ) ) ).
fof(t4_boole, axiom,  (! [A] : k4_xboole_0(k1_xboole_0, A)=k1_xboole_0) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t65_zfmisc_1, axiom,  (! [A] :  (! [B] :  (k4_xboole_0(A, k1_tarski(B))=A <=>  ~ (r2_hidden(B, A)) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc1_ordinal1, axiom,  (! [A] :  (v3_ordinal1(A) =>  (v1_ordinal1(A) & v2_ordinal1(A)) ) ) ).
fof(cc2_ordinal2, axiom,  (! [A] :  (v3_ordinal1(A) =>  (! [B] :  (m1_subset_1(B, A) => v3_ordinal1(B)) ) ) ) ).
fof(cc6_ordinal1, axiom,  (! [A] :  (v7_ordinal1(A) => v3_ordinal1(A)) ) ).
fof(cc7_ordinal1, axiom,  (! [A] :  (v1_xboole_0(A) => v7_ordinal1(A)) ) ).
fof(fc1_subset_1, axiom,  (! [A] :  ~ (v1_xboole_0(k1_zfmisc_1(A))) ) ).
fof(fc6_ordinal1, axiom,  ( ~ (v1_xboole_0(k4_ordinal1))  & v3_ordinal1(k4_ordinal1)) ).
