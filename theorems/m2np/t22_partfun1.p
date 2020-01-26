fof(t22_partfun1, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  => r1_relset_1(A, B, k3_partfun1(C, A, B), C)) ) ) ) ).
fof(d1_partfun1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (! [C] : k3_partfun1(A, B, C)=k5_relat_1(k6_relat_1(C, A), B)) ) ) ) ).
fof(dt_k3_partfun1, axiom,  (! [A, B, C] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_funct_1(k3_partfun1(A, B, C)) & m1_subset_1(k3_partfun1(A, B, C), k1_zfmisc_1(k2_zfmisc_1(B, C)))) ) ) ).
fof(dt_k6_relat_1, axiom,  (! [A, B] :  (v1_relat_1(B) => v1_relat_1(k6_relat_1(A, B))) ) ).
fof(redefinition_r1_relset_1, axiom,  (! [A, B, C, D] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (r1_relset_1(A, B, C, D) <=> r1_tarski(C, D)) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t59_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => r1_tarski(k5_relat_1(B, A), B)) ) ) ).
fof(t86_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => r1_tarski(k6_relat_1(A, B), B)) ) ) ).
