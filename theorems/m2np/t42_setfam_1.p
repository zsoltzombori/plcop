fof(t42_setfam_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(C, k3_tarski(k2_xboole_0(A, B))) &  (! [D] :  (r2_hidden(D, B) => r1_xboole_0(D, C)) ) )  => r1_tarski(C, k3_tarski(A))) ) ) ) ).
fof(symmetry_r1_xboole_0, axiom,  (! [A, B] :  (r1_xboole_0(A, B) => r1_xboole_0(B, A)) ) ).
fof(t73_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, k2_xboole_0(B, C)) & r1_xboole_0(A, C))  => r1_tarski(A, B)) ) ) ) ).
fof(t78_zfmisc_1, axiom,  (! [A] :  (! [B] : k3_tarski(k2_xboole_0(A, B))=k2_xboole_0(k3_tarski(A), k3_tarski(B))) ) ).
fof(t80_zfmisc_1, axiom,  (! [A] :  (! [B] :  ( (! [C] :  (r2_hidden(C, A) => r1_xboole_0(C, B)) )  => r1_xboole_0(k3_tarski(A), B)) ) ) ).
