fof(t67_partfun1, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( (v1_funct_1(C) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (! [D] :  ( (v1_funct_1(D) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  (! [E] :  ( (v1_funct_1(E) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B))))  =>  ( (r1_partfun1(C, E) &  (r1_partfun1(D, E) & v1_partfun1(E, A)) )  => r1_partfun1(C, D)) ) ) ) ) ) ) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(d2_partfun1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  =>  (v1_partfun1(B, A) <=> k1_relset_1(A, B)=A) ) ) ) ).
fof(dt_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => m1_subset_1(k1_relset_1(A, B), k1_zfmisc_1(A))) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => k1_relset_1(A, B)=k9_xtuple_0(B)) ) ).
fof(t1_grfunc_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (r1_tarski(B, A) =>  (v1_relat_1(B) & v1_funct_1(B)) ) ) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t2_grfunc_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (r1_tarski(A, B) <=>  (r1_tarski(k9_xtuple_0(A), k9_xtuple_0(B)) &  (! [C] :  (r2_hidden(C, k9_xtuple_0(A)) => k1_funct_1(A, C)=k1_funct_1(B, C)) ) ) ) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t52_partfun1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (r1_partfun1(A, B) <=>  (? [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  &  (r1_tarski(A, C) & r1_tarski(B, C)) ) ) ) ) ) ) ) ).
fof(t53_partfun1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (r1_tarski(k9_xtuple_0(A), k9_xtuple_0(B)) =>  (r1_partfun1(A, B) <=>  (! [C] :  (r2_hidden(C, k9_xtuple_0(A)) => k1_funct_1(A, C)=k1_funct_1(B, C)) ) ) ) ) ) ) ) ).
