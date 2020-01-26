% Mizar problem: t153_zfmisc_1,zfmisc_1,2360,24 
fof(t153_zfmisc_1, conjecture,  (! [A] : r2_hidden(k4_tarski(A, k1_tarski(A)), k2_zfmisc_1(k1_tarski(A), k4_tarski(A, k1_tarski(A))))) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k2_tarski, axiom,  (! [A, B] : k2_tarski(A, B)=k2_tarski(B, A)) ).
fof(d2_tarski, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k2_tarski(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (D=A | D=B) ) ) ) ) ) ) ).
fof(dt_k1_tarski, axiom, $true).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_tarski, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(t36_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (k2_zfmisc_1(k1_tarski(A), k2_tarski(B, C))=k2_tarski(k4_tarski(A, B), k4_tarski(A, C)) & k2_zfmisc_1(k2_tarski(A, B), k1_tarski(C))=k2_tarski(k4_tarski(A, C), k4_tarski(B, C))) ) ) ) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
