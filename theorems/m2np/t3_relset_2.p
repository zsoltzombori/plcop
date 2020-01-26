fof(t3_relset_2, conjecture,  (! [A] :  (! [B] : k10_eqrel_1(k2_xboole_0(A, B))=k2_xboole_0(k10_eqrel_1(A), k10_eqrel_1(B))) ) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(d3_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) | r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d5_eqrel_1, axiom,  (! [A] : k10_eqrel_1(A)=k8_eqrel_1(A, k6_partfun1(A))) ).
fof(dt_k6_partfun1, axiom,  (! [A] :  (v1_partfun1(k6_partfun1(A), A) & m1_subset_1(k6_partfun1(A), k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) ).
fof(fc3_partfun1, axiom,  (! [A] :  (v1_relat_1(k4_relat_1(A)) &  (v3_relat_2(k4_relat_1(A)) &  (v4_relat_2(k4_relat_1(A)) & v8_relat_2(k4_relat_1(A))) ) ) ) ).
fof(redefinition_k6_partfun1, axiom,  (! [A] : k6_partfun1(A)=k4_relat_1(A)) ).
fof(redefinition_k8_eqrel_1, axiom,  (! [A, B] :  ( (v3_relat_2(B) &  (v8_relat_2(B) &  (v1_partfun1(B, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) )  => k8_eqrel_1(A, B)=k7_eqrel_1(A, B)) ) ).
fof(t1_relset_2, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, k10_eqrel_1(B)) <=>  (? [C] :  (A=k1_tarski(C) & r2_hidden(C, B)) ) ) ) ) ).
