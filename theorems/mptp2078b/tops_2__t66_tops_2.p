% Mizar problem: t66_tops_2,tops_2,1186,68 
fof(t66_tops_2, conjecture,  (! [A] :  (l1_struct_0(A) =>  (! [B] :  ( ( ~ (v2_struct_0(B))  & l1_struct_0(B))  =>  (! [C] :  ( ( ~ (v2_struct_0(C))  & l1_struct_0(C))  =>  (! [D] :  ( (v1_funct_1(D) &  (v1_funct_2(D, u1_struct_0(A), u1_struct_0(B)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) )  =>  (! [E] :  ( (v1_funct_1(E) &  (v1_funct_2(E, u1_struct_0(B), u1_struct_0(C)) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B), u1_struct_0(C))))) )  =>  ( (k2_relset_1(u1_struct_0(A), u1_struct_0(B), D)=k2_struct_0(B) &  (v2_funct_1(D) &  (k1_relset_1(u1_struct_0(B), u1_struct_0(C), E)=k2_struct_0(B) &  (k2_relset_1(u1_struct_0(B), u1_struct_0(C), E)=k2_struct_0(C) & v2_funct_1(E)) ) ) )  => r2_funct_2(u1_struct_0(C), u1_struct_0(A), k2_tops_2(u1_struct_0(A), u1_struct_0(C), k1_partfun1(u1_struct_0(A), u1_struct_0(B), u1_struct_0(B), u1_struct_0(C), D, E)), k1_partfun1(u1_struct_0(C), u1_struct_0(B), u1_struct_0(B), u1_struct_0(A), k2_tops_2(u1_struct_0(B), u1_struct_0(C), E), k2_tops_2(u1_struct_0(A), u1_struct_0(B), D)))) ) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(d3_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => k2_struct_0(A)=u1_struct_0(A)) ) ).
fof(d4_tops_2, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  ( (k2_relset_1(A, B, C)=B & v2_funct_1(C))  => k2_tops_2(A, B, C)=k2_funct_1(C)) ) ) ) ) ).
fof(dt_k1_partfun1, axiom,  (! [A, B, C, D, E, F] :  ( ( (v1_funct_1(E) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B))))  &  (v1_funct_1(F) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(C, D)))) )  =>  (v1_funct_1(k1_partfun1(A, B, C, D, E, F)) & m1_subset_1(k1_partfun1(A, B, C, D, E, F), k1_zfmisc_1(k2_zfmisc_1(A, D)))) ) ) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k1_relset_1(A, B, C), k1_zfmisc_1(A))) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_relat_1(k2_funct_1(A)) & v1_funct_1(k2_funct_1(A))) ) ) ).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => m1_subset_1(k2_relset_1(A, B, C), k1_zfmisc_1(B))) ) ).
fof(dt_k2_struct_0, axiom,  (! [A] :  (l1_struct_0(A) => m1_subset_1(k2_struct_0(A), k1_zfmisc_1(u1_struct_0(A)))) ) ).
fof(dt_k2_tops_2, axiom,  (! [A, B, C] :  ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  =>  (v1_funct_1(k2_tops_2(A, B, C)) &  (v1_funct_2(k2_tops_2(A, B, C), B, A) & m1_subset_1(k2_tops_2(A, B, C), k1_zfmisc_1(k2_zfmisc_1(B, A)))) ) ) ) ).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k5_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_relat_1(B))  => v1_relat_1(k5_relat_1(A, B))) ) ).
fof(dt_l1_struct_0, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_u1_struct_0, axiom, $true).
fof(existence_l1_struct_0, axiom,  (? [A] : l1_struct_0(A)) ).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(redefinition_k1_partfun1, axiom,  (! [A, B, C, D, E, F] :  ( ( (v1_funct_1(E) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B))))  &  (v1_funct_1(F) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(C, D)))) )  => k1_partfun1(A, B, C, D, E, F)=k5_relat_1(E, F)) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k1_relset_1(A, B, C)=k1_relat_1(C)) ) ).
fof(redefinition_k2_relset_1, axiom,  (! [A, B, C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => k2_relset_1(A, B, C)=k2_relat_1(C)) ) ).
fof(redefinition_r2_funct_2, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) )  =>  (r2_funct_2(A, B, C, D) <=> C=D) ) ) ).
fof(reflexivity_r2_funct_2, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) )  => r2_funct_2(A, B, C, C)) ) ).
fof(symmetry_r2_funct_2, axiom,  (! [A, B, C, D] :  ( ( (v1_funct_1(C) &  (v1_funct_2(C, A, B) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) )  &  (v1_funct_1(D) &  (v1_funct_2(D, A, B) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) ) )  =>  (r2_funct_2(A, B, C, D) => r2_funct_2(A, B, D, C)) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t46_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  ( (v2_funct_1(A) & v2_funct_1(B))  => v2_funct_1(k5_relat_1(A, B))) ) ) ) ) ).
fof(t47_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(k1_relat_1(A), k2_relat_1(B)) => k2_relat_1(k5_relat_1(B, A))=k2_relat_1(A)) ) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t66_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  ( (v2_funct_1(A) & v2_funct_1(B))  => k2_funct_1(k5_relat_1(A, B))=k5_relat_1(k2_funct_1(B), k2_funct_1(A))) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
