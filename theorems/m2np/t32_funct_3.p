fof(t32_funct_3, conjecture,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (v2_funct_1(A) => r1_tarski(k7_relat_1(k1_funct_3(A), B), k8_relat_1(k3_funct_3(A), B))) ) ) ) ).
fof(d1_funct_3, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (B=k1_funct_3(A) <=>  (k9_xtuple_0(B)=k1_zfmisc_1(k9_xtuple_0(A)) &  (! [C] :  (r1_tarski(C, k9_xtuple_0(A)) => k1_funct_1(B, C)=k7_relat_1(A, C)) ) ) ) ) ) ) ) ).
fof(d2_funct_3, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (B=k3_funct_3(A) <=>  (k9_xtuple_0(B)=k1_zfmisc_1(k10_xtuple_0(A)) &  (! [C] :  (r1_tarski(C, k10_xtuple_0(A)) => k1_funct_1(B, C)=k8_relat_1(A, C)) ) ) ) ) ) ) ) ).
fof(dt_k1_funct_3, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_relat_1(k1_funct_3(A)) & v1_funct_1(k1_funct_3(A))) ) ) ).
fof(dt_k3_funct_3, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_relat_1(k3_funct_3(A)) & v1_funct_1(k3_funct_3(A))) ) ) ).
fof(dt_k3_relat_1, axiom,  (! [A, B] : v1_relat_1(k3_relat_1(A, B))) ).
fof(fc2_funct_1, axiom,  (! [A, B] :  ( ( (v1_relat_1(A) & v1_funct_1(A))  &  (v1_relat_1(B) & v1_funct_1(B)) )  =>  (v1_relat_1(k3_relat_1(A, B)) & v1_funct_1(k3_relat_1(A, B))) ) ) ).
fof(reflexivity_r1_tarski, axiom,  (! [A, B] : r1_tarski(A, A)) ).
fof(t10_funct_3, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  => r1_tarski(k7_relat_1(k1_funct_3(B), A), k1_zfmisc_1(k10_xtuple_0(B)))) ) ) ).
fof(t113_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => k7_relat_1(A, k9_xtuple_0(A))=k10_xtuple_0(A)) ) ).
fof(t126_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) => k7_relat_1(k3_relat_1(B, C), A)=k7_relat_1(C, k7_relat_1(B, A))) ) ) ) ) ).
fof(t132_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) => r1_tarski(k8_relat_1(B, A), k9_xtuple_0(B))) ) ) ).
fof(t134_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => k8_relat_1(A, k10_xtuple_0(A))=k9_xtuple_0(A)) ) ).
fof(t146_relat_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) => k8_relat_1(k3_relat_1(B, C), A)=k8_relat_1(B, k8_relat_1(C, A))) ) ) ) ) ).
fof(t147_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) => k9_xtuple_0(k3_relat_1(A, B))=k8_relat_1(A, k9_xtuple_0(B))) ) ) ) ).
fof(t19_funct_3, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v1_funct_1(k1_funct_3(A)) &  (v1_funct_2(k1_funct_3(A), k1_zfmisc_1(k9_xtuple_0(A)), k1_zfmisc_1(k10_xtuple_0(A))) & m1_subset_1(k1_funct_3(A), k1_zfmisc_1(k2_zfmisc_1(k1_zfmisc_1(k9_xtuple_0(A)), k1_zfmisc_1(k10_xtuple_0(A)))))) ) ) ) ).
fof(t26_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  ( (v2_funct_1(k3_relat_1(B, A)) & k10_xtuple_0(B)=k9_xtuple_0(A))  =>  (v2_funct_1(B) & v2_funct_1(A)) ) ) ) ) ) ).
fof(t27_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (v2_funct_1(A) <=>  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  ( (r1_tarski(k10_xtuple_0(B), k9_xtuple_0(A)) &  (r1_tarski(k10_xtuple_0(C), k9_xtuple_0(A)) &  (k9_xtuple_0(B)=k9_xtuple_0(C) & k3_relat_1(B, A)=k3_relat_1(C, A)) ) )  => B=C) ) ) ) ) ) ) ) ).
fof(t27_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (r1_tarski(k10_xtuple_0(A), k9_xtuple_0(B)) => k9_xtuple_0(k3_relat_1(A, B))=k9_xtuple_0(A)) ) ) ) ) ).
fof(t30_funct_3, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (v2_funct_1(B) => k7_relat_1(k3_funct_3(B), A)=k8_relat_1(k1_funct_3(B), A)) ) ) ) ).
fof(t31_funct_3, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  (! [B] :  (r1_tarski(B, k1_zfmisc_1(k9_xtuple_0(A))) => r1_tarski(k8_relat_1(k3_funct_3(A), B), k7_relat_1(k1_funct_3(A), B))) ) ) ) ).
fof(t75_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  => r1_tarski(k7_relat_1(B, k8_relat_1(B, A)), A)) ) ) ).
fof(t77_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (r1_tarski(A, k10_xtuple_0(B)) => k7_relat_1(B, k8_relat_1(B, A))=A) ) ) ) ).
fof(t82_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  (v2_funct_1(B) => r1_tarski(k8_relat_1(B, k7_relat_1(B, A)), A)) ) ) ) ).
fof(t83_funct_1, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  =>  ( (! [B] : r1_tarski(k8_relat_1(A, k7_relat_1(A, B)), B))  => v2_funct_1(A)) ) ) ).
fof(t93_funct_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (v1_relat_1(C) & v1_funct_1(C))  =>  ( (r1_tarski(A, k9_xtuple_0(C)) & r1_tarski(k7_relat_1(C, A), B))  => r1_tarski(A, k8_relat_1(C, B))) ) ) ) ) ).
fof(t94_funct_1, axiom,  (! [A] :  (! [B] :  ( (v1_relat_1(B) & v1_funct_1(B))  =>  ( (r1_tarski(A, k9_xtuple_0(B)) & v2_funct_1(B))  => k8_relat_1(B, k7_relat_1(B, A))=A) ) ) ) ).
fof(t9_funct_3, axiom,  (! [A] :  ( (v1_relat_1(A) & v1_funct_1(A))  => r1_tarski(k10_xtuple_0(k1_funct_3(A)), k1_zfmisc_1(k10_xtuple_0(A)))) ) ).
