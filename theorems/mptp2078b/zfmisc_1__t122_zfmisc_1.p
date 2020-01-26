% Mizar problem: t122_zfmisc_1,zfmisc_1,1553,79 
fof(t122_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (k2_zfmisc_1(k3_xboole_0(A, B), C)=k3_xboole_0(k2_zfmisc_1(A, C), k2_zfmisc_1(B, C)) & k2_zfmisc_1(C, k3_xboole_0(A, B))=k3_xboole_0(k2_zfmisc_1(C, A), k2_zfmisc_1(C, B))) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d4_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k3_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) & r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_k4_tarski, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(l130_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  (! [F] :  ( (r1_tarski(A, k2_zfmisc_1(B, C)) &  (r1_tarski(D, k2_zfmisc_1(E, F)) &  (! [G] :  (! [H] :  (r2_hidden(k4_tarski(G, H), A) <=> r2_hidden(k4_tarski(G, H), D)) ) ) ) )  => A=D) ) ) ) ) ) ) ).
fof(l54_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(A, B), k2_zfmisc_1(C, D)) <=>  (r2_hidden(A, C) & r2_hidden(B, D)) ) ) ) ) ) ).
fof(t107_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (r2_hidden(k4_tarski(A, B), k2_zfmisc_1(C, D)) => r2_hidden(k4_tarski(B, A), k2_zfmisc_1(D, C))) ) ) ) ) ).
fof(t17_xboole_1, axiom,  (! [A] :  (! [B] : r1_tarski(k3_xboole_0(A, B), A)) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
