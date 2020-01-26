fof(t22_mcart_1, conjecture,  (! [A] :  (! [B] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ~ ( (! [C] :  (m1_subset_1(C, k2_zfmisc_1(A, B)) => C=k4_tarski(k1_xtuple_0(C), k2_xtuple_0(C))) ) ) ) ) ) ) ) ).
fof(d5_tarski, axiom,  (! [A] :  (! [B] : k4_tarski(A, B)=k2_tarski(k2_tarski(A, B), k1_tarski(A))) ) ).
fof(fc6_relat_1, axiom,  (! [A, B] : v1_relat_1(k2_zfmisc_1(A, B))) ).
fof(t21_mcart_1, axiom,  (! [A] :  (! [B] :  (v1_relat_1(B) =>  (r2_hidden(A, B) => A=k4_tarski(k1_xtuple_0(A), k2_xtuple_0(A))) ) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t90_zfmisc_1, axiom,  (! [A] :  (! [B] :  (k2_zfmisc_1(A, B)=k1_xboole_0 <=>  (A=k1_xboole_0 | B=k1_xboole_0) ) ) ) ).
