fof(t71_zfmisc_1, conjecture,  (! [A] :  (! [B] : k1_zfmisc_1(k3_xboole_0(A, B))=k3_xboole_0(k1_zfmisc_1(A), k1_zfmisc_1(B))) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d1_zfmisc_1, axiom,  (! [A] :  (! [B] :  (B=k1_zfmisc_1(A) <=>  (! [C] :  (r2_hidden(C, B) <=> r1_tarski(C, A)) ) ) ) ) ).
fof(d3_tarski, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) <=>  (! [C] :  (r2_hidden(C, A) => r2_hidden(C, B)) ) ) ) ) ).
fof(d4_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k3_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) & r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(d7_xboole_0, axiom,  (! [A] :  (! [B] :  (r1_xboole_0(A, B) <=> k3_xboole_0(A, B)=k1_xboole_0) ) ) ).
fof(l20_zfmisc_1, axiom,  (! [A] :  (! [B] :  ( ~ (r2_hidden(A, B))  => r1_xboole_0(k1_tarski(A), B)) ) ) ).
fof(reflexivity_r1_tarski, axiom,  (! [A, B] : r1_tarski(A, A)) ).
fof(t19_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ( (r1_tarski(A, B) & r1_tarski(A, C))  => r1_tarski(A, k3_xboole_0(B, C))) ) ) ) ).
fof(t22_xboole_1, axiom,  (! [A] :  (! [B] : k2_xboole_0(A, k3_xboole_0(A, B))=A) ) ).
fof(t23_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] : k3_xboole_0(A, k2_xboole_0(B, C))=k2_xboole_0(k3_xboole_0(A, B), k3_xboole_0(A, C))) ) ) ).
fof(t28_xboole_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) => k3_xboole_0(A, B)=A) ) ) ).
fof(t29_enumset1, axiom,  (! [A] : k2_tarski(A, A)=k1_tarski(A)) ).
fof(t31_xboole_1, axiom,  (! [A] :  (! [B] :  (! [C] : r1_tarski(k2_xboole_0(k3_xboole_0(A, B), k3_xboole_0(A, C)), k2_xboole_0(B, C))) ) ) ).
fof(t4_xboole_0, axiom,  (! [A] :  (! [B] :  ( ~ ( ( ~ (r1_xboole_0(A, B))  &  (! [C] :  ~ (r2_hidden(C, k3_xboole_0(A, B))) ) ) )  &  ~ ( ( (? [C] : r2_hidden(C, k3_xboole_0(A, B)))  & r1_xboole_0(A, B)) ) ) ) ) ).
fof(t67_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) => r1_tarski(k1_zfmisc_1(A), k1_zfmisc_1(B))) ) ) ).
