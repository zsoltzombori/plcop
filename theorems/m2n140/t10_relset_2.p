fof(t10_relset_2, conjecture,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) => k9_relat_1(k2_xboole_0(B, C), A)=k2_xboole_0(k9_relat_1(B, A), k9_relat_1(C, A))) ) ) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(d16_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] : k9_relat_1(A, B)=k7_relat_1(A, k1_tarski(B))) ) ) ).
fof(fc3_relat_1, axiom,  (! [A, B] :  ( (v1_relat_1(A) & v1_relat_1(B))  => v1_relat_1(k2_xboole_0(A, B))) ) ).
fof(fc8_finseq_1, axiom,  (! [A, B] :  (v1_relat_1(k10_finseq_1(A, B)) & v1_funct_1(k10_finseq_1(A, B))) ) ).
fof(t127_finseq_2, axiom,  (! [A] :  (! [B] : k10_xtuple_0(k10_finseq_1(A, B))=k2_tarski(A, B)) ) ).
fof(t127_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) => k10_xtuple_0(k3_relat_1(A, B))=k7_relat_1(B, k10_xtuple_0(A))) ) ) ) ).
fof(t27_xtuple_0, axiom,  (! [A] :  (! [B] : k10_xtuple_0(k2_xboole_0(A, B))=k2_xboole_0(k10_xtuple_0(A), k10_xtuple_0(B))) ) ).
fof(t29_enumset1, axiom,  (! [A] : k2_tarski(A, A)=k1_tarski(A)) ).
fof(t32_relat_1, axiom,  (! [A] :  (v1_relat_1(A) =>  (! [B] :  (v1_relat_1(B) =>  (! [C] :  (v1_relat_1(C) => k3_relat_1(A, k2_xboole_0(B, C))=k2_xboole_0(k3_relat_1(A, B), k3_relat_1(A, C))) ) ) ) ) ) ).
fof(t75_zfmisc_1, axiom,  (! [A] :  (! [B] : k3_tarski(k2_tarski(A, B))=k2_xboole_0(A, B)) ) ).
