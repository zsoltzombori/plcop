% Mizar problem: t62_wellord1,wellord1,1508,68 
fof(t62_wellord1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (v1_relat_1(D) =>  (! [E] :  (v1_relat_1(E) =>  ( (v2_wellord1(D) &  (v2_wellord1(E) &  (r2_hidden(A, k3_relat_1(D)) &  (r2_hidden(B, k3_relat_1(E)) &  (r2_hidden(C, k3_relat_1(E)) &  (r4_wellord1(D, k2_wellord1(E, k1_wellord1(E, B))) & r4_wellord1(k2_wellord1(D, k1_wellord1(D, A)), k2_wellord1(E, k1_wellord1(E, C)))) ) ) ) ) )  =>  (r1_tarski(k1_wellord1(E, C), k1_wellord1(E, B)) & r2_hidden(k4_tarski(C, B), E)) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d7_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (r3_wellord1(A, B, C) <=>  (k1_relat_1(C)=k3_relat_1(A) &  (k2_relat_1(C)=k3_relat_1(B) &  (v2_funct_1(C) &  (! [D] :  (! [E] :  (r2_hidden(k4_tarski(D, E), A) <=>  (r2_hidden(D, k3_relat_1(A)) &  (r2_hidden(E, k3_relat_1(A)) & r2_hidden(k4_tarski(k1_funct_1(C, D), k1_funct_1(C, E)), B)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d9_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  ( (v2_wellord1(A) & r4_wellord1(A, B))  =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (C=k3_wellord1(A, B) <=> r3_wellord1(A, B, C)) ) ) ) ) ) ) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_wellord1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k2_wellord1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k2_wellord1(A, B))) ) ).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_relat_1, axiom, $true).
fof(dt_k3_wellord1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_relat_1(B))  =>  (v1_relat_1(k3_wellord1(A, B)) & v1_funct_1(k3_wellord1(A, B))) ) ) ).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(dt_k7_relat_1, axiom,  (! [A, B] :  (v1_relat_1(A) => v1_relat_1(k7_relat_1(A, B))) ) ).
fof(dt_k9_relat_1, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(t13_wellord1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => r1_tarski(k1_wellord1(B, A), k3_relat_1(B))) ) ) ).
fof(t144_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => r1_tarski(k9_relat_1(B, A), k2_relat_1(B))) ) ) ).
fof(t19_wellord1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r2_hidden(A, k3_relat_1(k2_wellord1(C, B))) =>  (r2_hidden(A, k3_relat_1(C)) & r2_hidden(A, B)) ) ) ) ) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t29_wellord1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r1_tarski(A, B) => k2_wellord1(k2_wellord1(C, B), A)=k2_wellord1(C, A)) ) ) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t35_wellord1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  ( (v2_wellord1(C) & r2_hidden(A, k1_wellord1(C, B)))  => k1_wellord1(k2_wellord1(C, k1_wellord1(C, B)), A)=k1_wellord1(C, A)) ) ) ) ) ).
fof(t37_wellord1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  ( (v2_wellord1(C) &  (r2_hidden(A, k3_relat_1(C)) & r2_hidden(B, k3_relat_1(C))) )  =>  (r2_hidden(k4_tarski(A, B), C) <=> r1_tarski(k1_wellord1(C, A), k1_wellord1(C, B))) ) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t40_wellord1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (v2_wellord1(B) => k3_relat_1(k2_wellord1(B, k1_wellord1(B, A)))=k1_wellord1(B, A)) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t50_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (r4_wellord1(A, B) => r4_wellord1(B, A)) ) ) ) ) ).
fof(t52_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) =>  ( (r4_wellord1(A, B) & r4_wellord1(B, C))  => r4_wellord1(A, C)) ) ) ) ) ) ) ).
fof(t58_wellord1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  ~ ( (v2_wellord1(C) &  (r2_hidden(A, k3_relat_1(C)) &  (r2_hidden(B, k3_relat_1(C)) &  ( ~ (A=B)  & r4_wellord1(k2_wellord1(C, k1_wellord1(C, A)), k2_wellord1(C, k1_wellord1(C, B)))) ) ) ) ) ) ) ) ) ).
fof(t59_wellord1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) =>  (! [D] :  ( (v1_relat_1(D) & v1_funct_1(D))  =>  ( (v2_wellord1(B) &  (r1_tarski(A, k3_relat_1(B)) & r3_wellord1(B, C, D)) )  =>  (r3_wellord1(k2_wellord1(B, A), k2_wellord1(C, k9_relat_1(D, A)), k7_relat_1(D, A)) & r4_wellord1(k2_wellord1(B, A), k2_wellord1(C, k9_relat_1(D, A)))) ) ) ) ) ) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t60_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (r3_wellord1(A, B, C) =>  (! [D] :  ~ ( (r2_hidden(D, k3_relat_1(A)) &  (! [E] :  ~ ( (r2_hidden(E, k3_relat_1(B)) & k9_relat_1(C, k1_wellord1(A, D))=k1_wellord1(B, E)) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
