% Mizar problem: t22_wellord2,wellord2,749,68 
fof(t22_wellord2, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( (r2_wellord2(A, B) & r2_wellord2(B, C))  => r2_wellord2(A, C)) ) ) ) ).
fof(d4_wellord2, axiom,  (! [A] :  (! [B] :  (r2_wellord2(A, B) <=>  (? [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  &  (v2_funct_1(C) &  (k1_relat_1(C)=A & k2_relat_1(C)=B) ) ) ) ) ) ) ).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k5_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_relat_1(B))  => v1_relat_1(k5_relat_1(A, B))) ) ).
fof(dt_m1_subset_1, axiom, $true).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(redefinition_r2_wellord2, axiom,  (! [A, B] :  (r2_wellord2(A, B) <=> r2_tarski(A, B)) ) ).
fof(reflexivity_r2_wellord2, axiom,  (! [A, B] : r2_wellord2(A, A)) ).
fof(symmetry_r2_wellord2, axiom,  (! [A, B] :  (r2_wellord2(A, B) => r2_wellord2(B, A)) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t46_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(k2_relat_1(A), k1_relat_1(B)) => k1_relat_1(k5_relat_1(A, B))=k1_relat_1(A)) ) ) ) ) ).
fof(t47_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(k1_relat_1(A), k2_relat_1(B)) => k2_relat_1(k5_relat_1(B, A))=k2_relat_1(A)) ) ) ) ) ).
fof(fc2_funct_1, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) & v1_funct_1(A))  &  (v1_relat_1(B) & v1_funct_1(B)) )  =>  (v1_relat_1(k5_relat_1(A, B)) & v1_funct_1(k5_relat_1(A, B))) ) ) ).
fof(fc7_funct_1, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) &  (v1_funct_1(A) & v2_funct_1(A)) )  &  (v1_relat_1(B) &  (v1_funct_1(B) & v2_funct_1(B)) ) )  =>  (v1_relat_1(k5_relat_1(A, B)) & v2_funct_1(k5_relat_1(A, B))) ) ) ).
