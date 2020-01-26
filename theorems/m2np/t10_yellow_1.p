fof(t10_yellow_1, conjecture,  (! [A] :  (l1_orders_2(A) =>  ( (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r1_orders_2(A, B, C) <=> r1_tarski(B, C)) ) ) ) )  => r2_relset_1(u1_struct_0(A), u1_struct_0(A), u1_orders_2(A), k1_yellow_1(u1_struct_0(A)))) ) ) ).
fof(cc1_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => v1_relat_1(C)) ) ) ).
fof(cc2_relset_1, axiom,  (! [A, B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ).
fof(d1_wellord2, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (B=k1_wellord2(A) <=>  (k1_relat_1(B)=A &  (! [C] :  (! [D] :  ( (r2_hidden(C, A) & r2_hidden(D, A))  =>  (r2_hidden(k4_tarski(C, D), B) <=> r1_tarski(C, D)) ) ) ) ) ) ) ) ) ).
fof(d3_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) | r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d5_orders_2, axiom,  (! [A] :  (l1_orders_2(A) =>  (! [B] :  (m1_subset_1(B, u1_struct_0(A)) =>  (! [C] :  (m1_subset_1(C, u1_struct_0(A)) =>  (r1_orders_2(A, B, C) <=> r2_hidden(k4_tarski(B, C), u1_orders_2(A))) ) ) ) ) ) ) ).
fof(d6_relat_1, axiom,  (! [A] :  (v1_relat_1(A) => k1_relat_1(A)=k2_xboole_0(k9_xtuple_0(A), k10_xtuple_0(A))) ) ).
fof(dt_u1_orders_2, axiom,  (! [A] :  (l1_orders_2(A) => m1_subset_1(u1_orders_2(A), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(A))))) ) ).
fof(rc1_relset_1, axiom,  (! [A, B] :  (? [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) &  (v1_xboole_0(C) &  (v1_relat_1(C) &  (v4_relat_1(C, A) & v5_relat_1(C, B)) ) ) ) ) ) ).
fof(redefinition_k1_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v4_relat_1(B, A))  => k1_relset_1(A, B)=k9_xtuple_0(B)) ) ).
fof(redefinition_k1_yellow_1, axiom,  (! [A] : k1_yellow_1(A)=k1_wellord2(A)) ).
fof(redefinition_k2_relset_1, axiom,  (! [A, B] :  ( (v1_relat_1(B) & v5_relat_1(B, A))  => k2_relset_1(A, B)=k10_xtuple_0(B)) ) ).
fof(reflexivity_r1_tarski, axiom,  (! [A, B] : r1_tarski(A, A)) ).
fof(reflexivity_r2_relset_1, axiom,  (! [A, B, C, D] :  ( (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B))))  => r2_relset_1(A, B, C, C)) ) ).
fof(t10_relset_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) =>  ( (! [D] :  ~ ( (r2_hidden(D, B) &  (! [E] :  ~ (r2_hidden(k4_tarski(E, D), C)) ) ) ) )  <=> k2_relset_1(B, C)=B) ) ) ) ) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t9_relset_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(B, A))) =>  ( (! [D] :  ~ ( (r2_hidden(D, B) &  (! [E] :  ~ (r2_hidden(k4_tarski(D, E), C)) ) ) ) )  <=> k1_relset_1(B, C)=B) ) ) ) ) ).
