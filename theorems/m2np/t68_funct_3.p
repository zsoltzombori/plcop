fof(t68_funct_3, conjecture,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  ( (k9_xtuple_0(B)=A & k9_xtuple_0(C)=A)  => k13_funct_3(B, C)=k3_relat_1(k12_funct_3(A), k15_funct_3(B, C))) ) ) ) ) ) ).
fof(d1_binop_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (! [C] : k1_binop_1(A, B, C)=k1_funct_1(A, k4_tarski(B, C))) ) ) ) ).
fof(d6_funct_3, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (B=k11_funct_3(A) <=>  (k9_xtuple_0(B)=A &  (! [C] :  (r2_hidden(C, A) => k1_funct_1(B, C)=k4_tarski(C, C)) ) ) ) ) ) ) ).
fof(d7_funct_3, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (C=k13_funct_3(A, B) <=>  (k9_xtuple_0(C)=k3_xboole_0(k9_xtuple_0(A), k9_xtuple_0(B)) &  (! [D] :  (r2_hidden(D, k9_xtuple_0(C)) => k1_funct_1(C, D)=k4_tarski(k1_funct_1(A, D), k1_funct_1(B, D))) ) ) ) ) ) ) ) ) ) ).
fof(d8_funct_3, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (C=k15_funct_3(A, B) <=>  (k9_xtuple_0(C)=k2_zfmisc_1(k9_xtuple_0(A), k9_xtuple_0(B)) &  (! [D] :  (! [E] :  ( (r2_hidden(D, k9_xtuple_0(A)) & r2_hidden(E, k9_xtuple_0(B)))  => k1_binop_1(C, D, E)=k4_tarski(k1_funct_1(A, D), k1_funct_1(B, E))) ) ) ) ) ) ) ) ) ) ) ).
fof(dt_k11_funct_3, axiom,  (! [A] :  (v1_relat_1(k11_funct_3(A)) & v1_funct_1(k11_funct_3(A))) ) ).
fof(dt_k12_funct_3, axiom,  (! [A] :  (v1_funct_1(k12_funct_3(A)) &  (v1_funct_2(k12_funct_3(A), A, k2_zfmisc_1(A, A)) & m1_subset_1(k12_funct_3(A), k1_zfmisc_1(k2_zfmisc_1(A, k2_zfmisc_1(A, A))))) ) ) ).
fof(dt_k13_funct_3, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) & v1_funct_1(A))  &  (v1_relat_1(B) & v1_funct_1(B)) )  =>  (v1_relat_1(k13_funct_3(A, B)) & v1_funct_1(k13_funct_3(A, B))) ) ) ).
fof(dt_k15_funct_3, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) & v1_funct_1(A))  &  (v1_relat_1(B) & v1_funct_1(B)) )  =>  (v1_relat_1(k15_funct_3(A, B)) & v1_funct_1(k15_funct_3(A, B))) ) ) ).
fof(dt_k3_relat_1, axiom,  (! [A, B] : v1_relat_1(k3_relat_1(A, B))) ).
fof(fc2_funct_1, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) & v1_funct_1(A))  &  (v1_relat_1(B) & v1_funct_1(B)) )  =>  (v1_relat_1(k3_relat_1(A, B)) & v1_funct_1(k3_relat_1(A, B))) ) ) ).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(redefinition_k12_funct_3, axiom,  (! [A] : k12_funct_3(A)=k11_funct_3(A)) ).
fof(t12_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  (r2_hidden(A, k9_xtuple_0(k3_relat_1(C, B))) => k1_funct_1(k3_relat_1(C, B), A)=k1_funct_1(B, k1_funct_1(C, A))) ) ) ) ) ) ).
fof(t27_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(k10_xtuple_0(A), k9_xtuple_0(B)) => k9_xtuple_0(k3_relat_1(A, B))=k9_xtuple_0(A)) ) ) ) ) ).
fof(t2_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  ( (k9_xtuple_0(A)=k9_xtuple_0(B) &  (! [C] :  (r2_hidden(C, k9_xtuple_0(A)) => k1_funct_1(A, C)=k1_funct_1(B, C)) ) )  => A=B) ) ) ) ) ).
fof(t47_funct_3, axiom,  (! [A] : r1_tarski(k10_xtuple_0(k11_funct_3(A)), k2_zfmisc_1(A, A))) ).
