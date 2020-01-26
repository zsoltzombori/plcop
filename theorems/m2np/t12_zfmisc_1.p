fof(t12_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (k3_xboole_0(k1_tarski(A), k1_tarski(B))=k1_tarski(A) => A=B) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d1_tarski, axiom,  (! [A] :  (! [B] :  (B=k1_tarski(A) <=>  (! [C] :  (r2_hidden(C, B) <=> C=A) ) ) ) ) ).
fof(l22_zfmisc_1, axiom,  (! [A] :  (! [B] :  (k3_xboole_0(A, k1_tarski(B))=k1_tarski(B) => r2_hidden(B, A)) ) ) ).
