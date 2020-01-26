% Mizar problem: t63_wellord1,wellord1,1545,42 
fof(t63_wellord1, conjecture,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  ~ ( (v2_wellord1(A) &  (v2_wellord1(B) &  ( ~ (r4_wellord1(A, B))  &  ( (! [C] :  ~ ( (r2_hidden(C, k3_relat_1(A)) & r4_wellord1(k2_wellord1(A, k1_wellord1(A, C)), B)) ) )  &  (! [C] :  ~ ( (r2_hidden(C, k3_relat_1(B)) & r4_wellord1(A, k2_wellord1(B, k1_wellord1(B, C)))) ) ) ) ) ) ) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d10_xboole_0, axiom,  (! [A] :  (! [B] :  (A=B <=>  (r1_tarski(A, B) & r1_tarski(B, A)) ) ) ) ).
fof(d1_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (! [C] :  (C=k1_wellord1(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  ( ~ (D=B)  & r2_hidden(k4_tarski(D, B), A)) ) ) ) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(d4_relat_1, axiom,  (! [A] :  (! [B] :  (B=k1_relat_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] : r2_hidden(k4_tarski(C, D), A)) ) ) ) ) ) ).
fof(d4_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (v2_wellord1(A) <=>  (v1_relat_2(A) &  (v8_relat_2(A) &  (v4_relat_2(A) &  (v6_relat_2(A) & v1_wellord1(A)) ) ) ) ) ) ) ).
fof(d4_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k3_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) & r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d5_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (B=k2_relat_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(D, k1_relat_1(A)) & C=k1_funct_1(A, D)) ) ) ) ) ) ) ) ).
fof(d6_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] : k2_wellord1(A, B)=k3_xboole_0(A, k2_zfmisc_1(B, B))) ) ) ).
fof(d7_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (r3_wellord1(A, B, C) <=>  (k1_relat_1(C)=k3_relat_1(A) &  (k2_relat_1(C)=k3_relat_1(B) &  (v2_funct_1(C) &  (! [D] :  (! [E] :  (r2_hidden(k4_tarski(D, E), A) <=>  (r2_hidden(D, k3_relat_1(A)) &  (r2_hidden(E, k3_relat_1(A)) & r2_hidden(k4_tarski(k1_funct_1(C, D), k1_funct_1(C, E)), B)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(d8_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v2_funct_1(A) <=>  (! [B] :  (! [C] :  ( (r2_hidden(B, k1_relat_1(A)) &  (r2_hidden(C, k1_relat_1(A)) & k1_funct_1(A, B)=k1_funct_1(A, C)) )  => B=C) ) ) ) ) ) ).
fof(d8_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (r4_wellord1(A, B) <=>  (? [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  & r3_wellord1(A, B, C)) ) ) ) ) ) ) ).
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
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(l1_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (v1_relat_2(A) <=>  (! [B] :  (r2_hidden(B, k3_relat_1(A)) => r2_hidden(k4_tarski(B, B), A)) ) ) ) ) ).
fof(l3_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (v4_relat_2(A) <=>  (! [B] :  (! [C] :  ( (r2_hidden(k4_tarski(B, C), A) & r2_hidden(k4_tarski(C, B), A))  => B=C) ) ) ) ) ) ).
fof(l4_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (v6_relat_2(A) <=>  (! [B] :  (! [C] :  ~ ( (r2_hidden(B, k3_relat_1(A)) &  (r2_hidden(C, k3_relat_1(A)) &  ( ~ (B=C)  &  ( ~ (r2_hidden(k4_tarski(B, C), A))  &  ~ (r2_hidden(k4_tarski(C, B), A)) ) ) ) ) ) ) ) ) ) ) ).
fof(s1_funct_1__e10_74__wellord1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_relat_1(B))  =>  ( (! [C] :  (! [D] :  (! [E] :  ( ( (r2_hidden(D, k3_relat_1(B)) & r4_wellord1(k2_wellord1(A, k1_wellord1(A, C)), k2_wellord1(B, k1_wellord1(B, D))))  &  (r2_hidden(E, k3_relat_1(B)) & r4_wellord1(k2_wellord1(A, k1_wellord1(A, C)), k2_wellord1(B, k1_wellord1(B, E)))) )  => D=E) ) ) )  =>  (? [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  &  (! [D] :  (! [E] :  (r2_hidden(k4_tarski(D, E), C) <=>  (r2_hidden(D, k3_relat_1(A)) &  (r2_hidden(E, k3_relat_1(B)) & r4_wellord1(k2_wellord1(A, k1_wellord1(A, D)), k2_wellord1(B, k1_wellord1(B, E)))) ) ) ) ) ) ) ) ) ) ).
fof(s1_xboole_0__e6_74__wellord1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_relat_1(B))  =>  (? [C] :  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, k3_relat_1(A)) &  (? [E] :  (r2_hidden(E, k3_relat_1(B)) & r4_wellord1(k2_wellord1(A, k1_wellord1(A, D)), k2_wellord1(B, k1_wellord1(B, E)))) ) ) ) ) ) ) ) ).
fof(t106_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(A, B), k2_zfmisc_1(C, D)) <=>  (r2_hidden(A, C) & r2_hidden(B, D)) ) ) ) ) ) ).
fof(t19_wellord1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r2_hidden(A, k3_relat_1(k2_wellord1(C, B))) =>  (r2_hidden(A, k3_relat_1(C)) & r2_hidden(A, B)) ) ) ) ) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t29_wellord1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r1_tarski(A, B) => k2_wellord1(k2_wellord1(C, B), A)=k2_wellord1(C, A)) ) ) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t30_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (r2_hidden(k4_tarski(A, B), C) =>  (r2_hidden(A, k3_relat_1(C)) & r2_hidden(B, k3_relat_1(C))) ) ) ) ) ) ).
fof(t30_wellord1, axiom,  (! [A] :  (v1_relat_1(A) => k2_wellord1(A, k3_relat_1(A))=A) ) ).
fof(t32_wellord1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (v2_wellord1(B) => v2_wellord1(k2_wellord1(B, A))) ) ) ) ).
fof(t35_wellord1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  ( (v2_wellord1(C) & r2_hidden(A, k1_wellord1(C, B)))  => k1_wellord1(k2_wellord1(C, k1_wellord1(C, B)), A)=k1_wellord1(C, A)) ) ) ) ) ).
fof(t36_wellord1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  ( (v2_wellord1(B) & r1_tarski(A, k3_relat_1(B)))  =>  ( ~ ( ( ~ (A=k3_relat_1(B))  &  (! [C] :  ~ ( (r2_hidden(C, k3_relat_1(B)) & A=k1_wellord1(B, C)) ) ) ) )  <=>  (! [C] :  (r2_hidden(C, A) =>  (! [D] :  (r2_hidden(k4_tarski(D, C), B) => r2_hidden(D, A)) ) ) ) ) ) ) ) ) ).
fof(t37_wellord1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  ( (v2_wellord1(C) &  (r2_hidden(A, k3_relat_1(C)) & r2_hidden(B, k3_relat_1(C))) )  =>  (r2_hidden(k4_tarski(A, B), C) <=> r1_tarski(k1_wellord1(C, A), k1_wellord1(C, B))) ) ) ) ) ) ).
fof(t38_wellord1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  ( (v2_wellord1(C) &  (r2_hidden(A, k3_relat_1(C)) & r2_hidden(B, k3_relat_1(C))) )  =>  (r1_tarski(k1_wellord1(C, A), k1_wellord1(C, B)) <=>  (A=B | r2_hidden(A, k1_wellord1(C, B))) ) ) ) ) ) ) ).
fof(t39_wellord1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  ( (v2_wellord1(B) & r1_tarski(A, k3_relat_1(B)))  => k3_relat_1(k2_wellord1(B, A))=A) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t40_wellord1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (v2_wellord1(B) => k3_relat_1(k2_wellord1(B, k1_wellord1(B, A)))=k1_wellord1(B, A)) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t50_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (r4_wellord1(A, B) => r4_wellord1(B, A)) ) ) ) ) ).
fof(t52_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) =>  ( (r4_wellord1(A, B) & r4_wellord1(B, C))  => r4_wellord1(A, C)) ) ) ) ) ) ) ).
fof(t58_wellord1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  ~ ( (v2_wellord1(C) &  (r2_hidden(A, k3_relat_1(C)) &  (r2_hidden(B, k3_relat_1(C)) &  ( ~ (A=B)  & r4_wellord1(k2_wellord1(C, k1_wellord1(C, A)), k2_wellord1(C, k1_wellord1(C, B)))) ) ) ) ) ) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t61_wellord1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  ( (v2_wellord1(A) & r3_wellord1(A, B, C))  =>  (! [D] :  ~ ( (r2_hidden(D, k3_relat_1(A)) &  (! [E] :  ~ ( (r2_hidden(E, k3_relat_1(B)) & r4_wellord1(k2_wellord1(A, k1_wellord1(A, D)), k2_wellord1(B, k1_wellord1(B, E)))) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(t62_wellord1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (v1_relat_1(D) =>  (! [E] :  (v1_relat_1(E) =>  ( (v2_wellord1(D) &  (v2_wellord1(E) &  (r2_hidden(A, k3_relat_1(D)) &  (r2_hidden(B, k3_relat_1(E)) &  (r2_hidden(C, k3_relat_1(E)) &  (r4_wellord1(D, k2_wellord1(E, k1_wellord1(E, B))) & r4_wellord1(k2_wellord1(D, k1_wellord1(D, A)), k2_wellord1(E, k1_wellord1(E, C)))) ) ) ) ) )  =>  (r1_tarski(k1_wellord1(E, C), k1_wellord1(E, B)) & r2_hidden(k4_tarski(C, B), E)) ) ) ) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t8_funct_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (r2_hidden(k4_tarski(A, B), C) <=>  (r2_hidden(A, k1_relat_1(C)) & B=k1_funct_1(C, A)) ) ) ) ) ) ).
