fof(t1_relset_2, conjecture,  (! [A] :  (! [B] :  (r2_hidden(A, k10_eqrel_1(B)) <=>  (? [C] :  (A=k1_tarski(C) & r2_hidden(C, B)) ) ) ) ) ).
fof(d1_xboole_0, axiom,  (! [A] :  (v1_xboole_0(A) <=>  (! [B] :  ~ (r2_hidden(B, A)) ) ) ) ).
fof(d3_eqrel_1, axiom,  (! [A] :  (! [B] :  ( (v3_relat_2(B) &  (v8_relat_2(B) &  (v1_partfun1(B, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) )  =>  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k1_zfmisc_1(A))) =>  (C=k7_eqrel_1(A, B) <=>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(A)) =>  (r2_hidden(D, C) <=>  (? [E] :  (r2_hidden(E, A) & D=k6_eqrel_1(A, A, B, E)) ) ) ) ) ) ) ) ) ) ) ).
fof(d5_eqrel_1, axiom,  (! [A] : k10_eqrel_1(A)=k8_eqrel_1(A, k6_partfun1(A))) ).
fof(dt_k6_partfun1, axiom,  (! [A] :  (v1_partfun1(k6_partfun1(A), A) & m1_subset_1(k6_partfun1(A), k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) ).
fof(fc3_partfun1, axiom,  (! [A] :  (v1_relat_1(k4_relat_1(A)) &  (v3_relat_2(k4_relat_1(A)) &  (v4_relat_2(k4_relat_1(A)) & v8_relat_2(k4_relat_1(A))) ) ) ) ).
fof(fraenkel_a_1_0_eqrel_1, axiom,  (! [A, B] :  ( ~ (v1_xboole_0(B))  =>  (r2_hidden(A, a_1_0_eqrel_1(B)) <=>  (? [C] :  (m1_subset_1(C, B) & A=k6_domain_1(B, C)) ) ) ) ) ).
fof(rc2_subset_1, axiom,  (! [A] :  (? [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) & v1_xboole_0(B)) ) ) ).
fof(redefinition_k6_domain_1, axiom,  (! [A, B] :  ( ( ~ (v1_xboole_0(A))  & m1_subset_1(B, A))  => k6_domain_1(A, B)=k1_tarski(B)) ) ).
fof(redefinition_k6_partfun1, axiom,  (! [A] : k6_partfun1(A)=k4_relat_1(A)) ).
fof(redefinition_k8_eqrel_1, axiom,  (! [A, B] :  ( (v3_relat_2(B) &  (v8_relat_2(B) &  (v1_partfun1(B, A) & m1_subset_1(B, k1_zfmisc_1(k2_zfmisc_1(A, A)))) ) )  => k8_eqrel_1(A, B)=k7_eqrel_1(A, B)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t31_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(k1_tarski(A), B) <=> r2_hidden(A, B)) ) ) ).
fof(t37_eqrel_1, axiom,  (! [A] :  ( ~ (v1_xboole_0(A))  => k10_eqrel_1(A)=a_1_0_eqrel_1(A)) ) ).
