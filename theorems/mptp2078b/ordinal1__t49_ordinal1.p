% Mizar problem: t49_ordinal1,ordinal1,1057,23 
fof(t49_ordinal1, conjecture,  (! [A] :  ( ( (! [B] :  (r2_hidden(B, A) =>  (v1_relat_1(B) &  (v1_funct_1(B) & v5_ordinal1(B)) ) ) )  & v6_ordinal1(A))  =>  (v1_relat_1(k3_tarski(A)) &  (v1_funct_1(k3_tarski(A)) & v5_ordinal1(k3_tarski(A))) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(connectedness_r1_ordinal1, axiom,  (! [A, B] :  ( (v3_ordinal1(A) & v3_ordinal1(B))  =>  (r1_ordinal1(A, B) | r1_ordinal1(B, A)) ) ) ).
fof(d10_xboole_0, axiom,  (! [A] :  (! [B] :  (A=B <=>  (r1_tarski(A, B) & r1_tarski(B, A)) ) ) ) ).
fof(d1_funct_1, axiom,  (! [A] :  (v1_funct_1(A) <=>  (! [B] :  (! [C] :  (! [D] :  ( (r2_hidden(k4_tarski(B, C), A) & r2_hidden(k4_tarski(B, D), A))  => C=D) ) ) ) ) ) ).
fof(d1_relat_1, axiom,  (! [A] :  (v1_relat_1(A) <=>  (! [B] :  ~ ( (r2_hidden(B, A) &  (! [C] :  (! [D] :  ~ (B=k4_tarski(C, D)) ) ) ) ) ) ) ) ).
fof(d2_ordinal1, axiom,  (! [A] :  (v1_ordinal1(A) <=>  (! [B] :  (r2_hidden(B, A) => r1_tarski(B, A)) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(d4_relat_1, axiom,  (! [A] :  (! [B] :  (B=k1_relat_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] : r2_hidden(k4_tarski(C, D), A)) ) ) ) ) ) ).
fof(d4_tarski, axiom,  (! [A] :  (! [B] :  (B=k3_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(C, D) & r2_hidden(D, A)) ) ) ) ) ) ) ).
fof(d5_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (B=k2_relat_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=>  (? [D] :  (r2_hidden(D, k1_relat_1(A)) & C=k1_funct_1(A, D)) ) ) ) ) ) ) ) ).
fof(d7_ordinal1, axiom,  (! [A] :  (v5_ordinal1(A) <=> v3_ordinal1(k1_relat_1(A))) ) ).
fof(d9_ordinal1, axiom,  (! [A] :  (v6_ordinal1(A) <=>  (! [B] :  (! [C] :  ( (r2_hidden(B, A) & r2_hidden(C, A))  => r3_xboole_0(B, C)) ) ) ) ) ).
fof(d9_xboole_0, axiom,  (! [A] :  (! [B] :  (r3_xboole_0(A, B) <=>  (r1_tarski(A, B) | r1_tarski(B, A)) ) ) ) ).
fof(dt_k1_funct_1, axiom, $true).
fof(dt_k1_relat_1, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k1_zfmisc_1, axiom, $true).
fof(dt_k2_relat_1, axiom, $true).
fof(dt_k3_tarski, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(redefinition_r1_ordinal1, axiom,  (! [A, B] :  ( (v3_ordinal1(A) & v3_ordinal1(B))  =>  (r1_ordinal1(A, B) <=> r1_tarski(A, B)) ) ) ).
fof(reflexivity_r1_ordinal1, axiom,  (! [A, B] :  ( (v3_ordinal1(A) & v3_ordinal1(B))  => r1_ordinal1(A, A)) ) ).
fof(reflexivity_r3_xboole_0, axiom,  (! [A, B] : r3_xboole_0(A, A)) ).
fof(s1_funct_1__e6_71__ordinal1, axiom,  (! [A] :  ( (! [B] :  (! [C] :  (! [D] :  ( ( (r2_hidden(B, A) &  (! [E] :  ( (v1_relat_1(E) &  (v1_funct_1(E) & v5_ordinal1(E)) )  =>  (E=B => k1_relat_1(E)=C) ) ) )  &  (r2_hidden(B, A) &  (! [F] :  ( (v1_relat_1(F) &  (v1_funct_1(F) & v5_ordinal1(F)) )  =>  (F=B => k1_relat_1(F)=D) ) ) ) )  => C=D) ) ) )  =>  (? [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  &  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(C, D), B) <=>  (r2_hidden(C, A) &  (r2_hidden(C, A) &  (! [G] :  ( (v1_relat_1(G) &  (v1_funct_1(G) & v5_ordinal1(G)) )  =>  (G=C => k1_relat_1(G)=D) ) ) ) ) ) ) ) ) ) ) ) ).
fof(s1_ordinal1__e14_71__ordinal1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  ( (? [B] :  (v3_ordinal1(B) &  (! [C] :  (v3_ordinal1(C) =>  (r2_hidden(C, k2_relat_1(A)) => r1_ordinal1(C, B)) ) ) ) )  =>  (? [B] :  (v3_ordinal1(B) &  ( (! [D] :  (v3_ordinal1(D) =>  (r2_hidden(D, k2_relat_1(A)) => r1_ordinal1(D, B)) ) )  &  (! [E] :  (v3_ordinal1(E) =>  ( (! [F] :  (v3_ordinal1(F) =>  (r2_hidden(F, k2_relat_1(A)) => r1_ordinal1(F, E)) ) )  => r1_ordinal1(B, E)) ) ) ) ) ) ) ) ) ).
fof(symmetry_r3_xboole_0, axiom,  (! [A, B] :  (r3_xboole_0(A, B) => r3_xboole_0(B, A)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t23_ordinal1, axiom,  (! [A] :  (! [B] :  (v3_ordinal1(B) =>  (r2_hidden(A, B) => v3_ordinal1(A)) ) ) ) ).
fof(t26_ordinal1, axiom,  (! [A] :  (v3_ordinal1(A) =>  (! [B] :  (v3_ordinal1(B) =>  (r1_ordinal1(A, B) | r2_hidden(B, A)) ) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t36_ordinal1, axiom,  (! [A] :  ~ ( ( (! [B] :  (r2_hidden(B, A) => v3_ordinal1(B)) )  &  (! [B] :  (v3_ordinal1(B) =>  ~ (r1_tarski(A, B)) ) ) ) ) ) ).
fof(t3_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B)) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t5_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ ( (r2_hidden(A, B) &  (m1_subset_1(B, k1_zfmisc_1(C)) & v1_xboole_0(C)) ) ) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
fof(t8_funct_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (r2_hidden(k4_tarski(A, B), C) <=>  (r2_hidden(A, k1_relat_1(C)) & B=k1_funct_1(C, A)) ) ) ) ) ) ).
fof(t92_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => r1_tarski(A, k3_tarski(B))) ) ) ).
fof(cc1_ordinal1, axiom,  (! [A] :  (v3_ordinal1(A) =>  (v1_ordinal1(A) & v2_ordinal1(A)) ) ) ).
fof(fc4_ordinal1, axiom,  (! [A] :  ( (v1_relat_1(A) &  (v1_funct_1(A) & v5_ordinal1(A)) )  => v3_ordinal1(k1_relat_1(A))) ) ).
