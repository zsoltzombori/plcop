% Mizar problem: t163_funct_1,funct_1,2484,77 
fof(t163_funct_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  ( (r1_tarski(A, k1_relat_1(C)) & r1_tarski(k9_relat_1(C, A), B))  => r1_tarski(A, k10_relat_1(C, B))) ) ) ) ) ).
fof(dt_k10_relat_1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k9_relat_1, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(t146_funct_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(A, k1_relat_1(B)) => r1_tarski(A, k10_relat_1(B, k9_relat_1(B, A)))) ) ) ) ).
fof(t178_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r1_tarski(A, B) => r1_tarski(k10_relat_1(C, A), k10_relat_1(C, B))) ) ) ) ) ).
fof(t1_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(B, C))  => r1_tarski(A, C)) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
