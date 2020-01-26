% Mizar problem: t25_mcart_1,mcart_1,642,56 
fof(t25_mcart_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k2_zfmisc_1(k2_tarski(A, B), k2_tarski(C, D))=k2_enumset1(k4_tarski(A, C), k4_tarski(A, D), k4_tarski(B, C), k4_tarski(B, D))) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(commutativity_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, B)=k2_xboole_0(B, A)) ).
fof(d2_xboole_0, axiom, k1_xboole_0=o_0_0_xboole_0).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_enumset1, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k2_xboole_0, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(dt_m1_subset_1, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(existence_m1_subset_1, axiom,  (! [A] :  (? [B] : m1_subset_1(B, A)) ) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(t132_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (k2_zfmisc_1(k2_tarski(A, B), C)=k2_xboole_0(k2_zfmisc_1(k1_tarski(A), C), k2_zfmisc_1(k1_tarski(B), C)) & k2_zfmisc_1(C, k2_tarski(A, B))=k2_xboole_0(k2_zfmisc_1(C, k1_tarski(A)), k2_zfmisc_1(C, k1_tarski(B)))) ) ) ) ).
fof(t1_boole, axiom,  (! [A] : k2_xboole_0(A, k1_xboole_0)=A) ).
fof(t1_subset, axiom,  (! [A] :  (! [B] :  (r2_hidden(A, B) => m1_subset_1(A, B)) ) ) ).
fof(t2_subset, axiom,  (! [A] :  (! [B] :  (m1_subset_1(A, B) =>  (v1_xboole_0(B) | r2_hidden(A, B)) ) ) ) ).
fof(t36_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (k2_zfmisc_1(k1_tarski(A), k2_tarski(B, C))=k2_tarski(k4_tarski(A, B), k4_tarski(A, C)) & k2_zfmisc_1(k2_tarski(A, B), k1_tarski(C))=k2_tarski(k4_tarski(A, C), k4_tarski(B, C))) ) ) ) ).
fof(t45_enumset1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k2_enumset1(A, B, C, D)=k2_xboole_0(k2_tarski(A, B), k2_tarski(C, D))) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
