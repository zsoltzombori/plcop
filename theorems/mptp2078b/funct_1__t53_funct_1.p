% Mizar problem: t53_funct_1,funct_1,971,50 
fof(t53_funct_1, conjecture,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  ( (? [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  & k5_relat_1(A, B)=k6_relat_1(k1_relat_1(A))) )  => v2_funct_1(A)) ) ) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k5_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_relat_1(B))  => v1_relat_1(k5_relat_1(A, B))) ) ).
fof(dt_k6_relat_1, axiom,  (! [A] : v1_relat_1(k6_relat_1(A))) ).
fof(dt_m1_subset_1, axiom, $true).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t27_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (k1_relat_1(k5_relat_1(B, A))=k1_relat_1(B) => r1_tarski(k2_relat_1(B), k1_relat_1(A))) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t47_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  ( (v2_funct_1(k5_relat_1(B, A)) & r1_tarski(k2_relat_1(B), k1_relat_1(A)))  => v2_funct_1(B)) ) ) ) ) ).
fof(t71_relat_1, axiom,  (! [A] :  (k1_relat_1(k6_relat_1(A))=A & k2_relat_1(k6_relat_1(A))=A) ) ).
fof(fc4_funct_1, axiom,  (! [A] :  (v1_relat_1(k6_relat_1(A)) & v2_funct_1(k6_relat_1(A))) ) ).
