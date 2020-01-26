% Mizar problem: t6_tmap_1,tmap_1,160,64 
fof(t6_tmap_1, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  ( ( ~ (v1_xboole_0(C))  & m1_subset_1(C, k1_zfmisc_1(A)))  =>  (! [D] :  ( ( ~ (v1_xboole_0(D))  & m1_subset_1(D, k1_zfmisc_1(A)))  =>  (r1_subset_1(C, D) =>  (! [E] :  ( (v1_funct_1(E) &  (v1_funct_2(E, C, B) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(C, B)))) )  =>  (! [F] :  ( (v1_funct_1(F) &  (v1_funct_2(F, D, B) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(D, B)))) )  =>  (k2_partfun1(C, B, E, k9_subset_1(A, C, D))=k2_partfun1(D, B, F, k9_subset_1(A, C, D)) &  (k2_partfun1(k4_subset_1(A, C, D), B, k1_tmap_1(A, B, C, D, E, F), C)=E & k2_partfun1(k4_subset_1(A, C, D), B, k1_tmap_1(A, B, C, D, E, F), D)=F) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(commutativity_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, C)=k4_subset_1(A, C, B)) ) ).
fof(commutativity_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k9_subset_1(A, C, B)) ) ).
fof(d1_tmap_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  ( ( ~ (v1_xboole_0(C))  & m1_subset_1(C, k1_zfmisc_1(A)))  =>  (! [D] :  ( ( ~ (v1_xboole_0(D))  & m1_subset_1(D, k1_zfmisc_1(A)))  =>  (! [E] :  ( (v1_funct_1(E) &  (v1_funct_2(E, C, B) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(C, B)))) )  =>  (! [F] :  ( (v1_funct_1(F) &  (v1_funct_2(F, D, B) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(D, B)))) )  =>  (k2_partfun1(C, B, E, k9_subset_1(A, C, D))=k2_partfun1(D, B, F, k9_subset_1(A, C, D)) =>  (! [G] :  ( (v1_funct_1(G) &  (v1_funct_2(G, k4_subset_1(A, C, D), B) & m1_subset_1(G, k1_zfmisc_1(k2_zfmisc_1(k4_subset_1(A, C, D), B)))) )  =>  (G=k1_tmap_1(A, B, C, D, E, F) <=>  (k2_partfun1(k4_subset_1(A, C, D), B, G, C)=E & k2_partfun1(k4_subset_1(A, C, D), B, G, D)=F) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d7_xboole_0, axiom,  (! [A] :  (! [B] :  (r1_xboole_0(A, B) <=> k3_xboole_0(A, B)=k1_xboole_0) ) ) ).
fof(dt_k1_tmap_1, axiom,  (! [A, B, C, D, E, F] :  ( ( ~ (v1_xboole_0(A))  &  ( ~ (v1_xboole_0(B))  &  ( ( ~ (v1_xboole_0(C))  & m1_subset_1(C, k1_zfmisc_1(A)))  &  ( ( ~ (v1_xboole_0(D))  & m1_subset_1(D, k1_zfmisc_1(A)))  &  ( (v1_funct_1(E) &  (v1_funct_2(E, C, B) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(C, B)))) )  &  (v1_funct_1(F) &  (v1_funct_2(F, D, B) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(D, B)))) ) ) ) ) ) )  =>  (v1_funct_1(k1_tmap_1(A, B, C, D, E, F)) &  (v1_funct_2(k1_tmap_1(A, B, C, D, E, F), k4_subset_1(A, C, D), B) & m1_subset_1(k1_tmap_1(A, B, C, D, E, F), k1_zfmisc_1(k2_zfmisc_1(k4_subset_1(A, C, D), B)))) ) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_partfun1, axiom,  (! [A, B, C, D] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (v1_funct_1(k2_partfun1(A, B, C, D)) & m1_subset_1(k2_partfun1(A, B, C, D), k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) ) ).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => m1_subset_1(k4_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k7_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k7_relat_1(A, B))) ) ).
fof(dt_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => m1_subset_1(k9_subset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(idempotence_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, B)=B) ) ).
fof(idempotence_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, B)=B) ) ).
fof(irreflexivity_r1_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  ~ (r1_subset_1(A, A)) ) ) ).
fof(redefinition_k2_partfun1, axiom,  (! [A, B, C, D] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  => k2_partfun1(A, B, C, D)=k7_relat_1(C, D)) ) ).
fof(redefinition_k4_subset_1, axiom,  (! [A, B, C] :  ( (m1_subset_1(B, k1_zfmisc_1(A)) & m1_subset_1(C, k1_zfmisc_1(A)))  => k4_subset_1(A, B, C)=k2_xboole_0(B, C)) ) ).
fof(redefinition_k9_subset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(A)) => k9_subset_1(A, B, C)=k3_xboole_0(B, C)) ) ).
fof(redefinition_r1_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  (r1_subset_1(A, B) <=> r1_xboole_0(A, B)) ) ) ).
fof(redefinition_r2_funct_2, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) )  =>  (r2_funct_2(A, B, C, D) <=> C=D) ) ) ).
fof(reflexivity_r2_funct_2, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) )  => r2_funct_2(A, B, C, C)) ) ).
fof(symmetry_r1_subset_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  &  ~ (v1_xboole_0(B)) )  =>  (r1_subset_1(A, B) => r1_subset_1(B, A)) ) ) ).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(symmetry_r2_funct_2, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) )  =>  (r2_funct_2(A, B, C, D) => r2_funct_2(A, B, D, C)) ) ) ).
fof(t17_xboole_1, axiom,  (! [A] :  (! [B] : r1_tarski(k3_xboole_0(A, B), A)) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t38_funct_2, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  (r1_tarski(C, A) =>  ( (B=k1_xboole_0 &  ~ (A=k1_xboole_0) )  |  (v1_funct_1(k2_partfun1(A, B, D, C)) &  (v1_funct_2(k2_partfun1(A, B, D, C), C, B) & m1_subset_1(k2_partfun1(A, B, D, C), k1_zfmisc_1(k2_zfmisc_1(C, B)))) ) ) ) ) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc3_relset_1, axiom,  (! [A, B] :  (v1_xboole_0(A) =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_xboole_0(C)) ) ) ) ).
fof(rc1_relat_1, axiom,  (? [A] :  ( ~ (v1_xboole_0(A))  & v1_relat_1(A)) ) ).
fof(rc1_subset_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) &  ~ (v1_xboole_0(B)) ) ) ) ) ).
