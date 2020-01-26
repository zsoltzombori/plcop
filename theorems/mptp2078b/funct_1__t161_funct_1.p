% Mizar problem: t161_funct_1,funct_1,2351,75 
fof(t161_funct_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  ( (k10_relat_1(C, A)=k10_relat_1(C, B) &  (r1_tarski(A, k2_relat_1(C)) & r1_tarski(B, k2_relat_1(C))) )  => A=B) ) ) ) ) ).
fof(d10_xboole_0, axiom,  (! [A] :  (! [B] :  (A=B <=>  (r1_tarski(A, B) & r1_tarski(B, A)) ) ) ) ).
fof(dt_k10_relat_1, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t158_funct_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  ( (r1_tarski(k10_relat_1(C, A), k10_relat_1(C, B)) & r1_tarski(A, k2_relat_1(C)))  => r1_tarski(A, B)) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
