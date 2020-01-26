fof(t28_relset_1, conjecture,  (! [A] :  ( ~ (v1_xboole_0(A))  =>  (! [B] :  ( ~ (v1_xboole_0(B))  =>  (! [C] :  ( ~ (v1_xboole_0(C))  =>  (! [D] :  (m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (! [E] :  (m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(B, C))) =>  (! [F] :  (! [G] :  (r2_hidden(k4_tarski(F, G), k4_relset_1(A, B, B, C, D, E)) <=>  (? [H] :  (m1_subset_1(H, B) &  (r2_hidden(k4_tarski(F, H), D) & r2_hidden(k4_tarski(H, G), E)) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
fof(cc1_subset_1, axiom,  (! [A] :  (v1_xboole_0(A) =>  (! [B] :  (m1_subset_1(B, k1_zfmisc_1(A)) => v1_xboole_0(B)) ) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(d5_tarski, axiom,  (! [A] :  (! [B] : k4_tarski(A, B)=k2_tarski(k2_tarski(A, B), k1_tarski(A))) ) ).
fof(d8_relat_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (v1_relat_1(C) =>  (C=k3_relat_1(A, B) <=>  (! [D] :  (! [E] :  (r2_hidden(k4_tarski(D, E), C) <=>  (? [F] :  (r2_hidden(k4_tarski(D, F), A) & r2_hidden(k4_tarski(F, E), B)) ) ) ) ) ) ) ) ) ) ).
fof(dt_k3_relat_1, axiom,  (! [A, B] : v1_relat_1(k3_relat_1(A, B))) ).
fof(redefinition_k4_relset_1, axiom,  (! [A, B, C, D, E, F] :  ( (m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B))) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(C, D))))  => k4_relset_1(A, B, C, D, E, F)=k3_relat_1(E, F)) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t4_subset, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r2_hidden(A, B) & m1_subset_1(B, k1_zfmisc_1(C)))  => m1_subset_1(A, C)) ) ) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t87_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(A, B), k2_zfmisc_1(C, D)) <=>  (r2_hidden(A, C) & r2_hidden(B, D)) ) ) ) ) ) ).
