fof(t114_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (r1_tarski(k2_zfmisc_1(A, B), k2_zfmisc_1(C, D)) =>  (k2_zfmisc_1(A, B)=k1_xboole_0 |  (r1_tarski(A, C) & r1_tarski(B, D)) ) ) ) ) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(t100_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k2_zfmisc_1(k3_xboole_0(A, B), k3_xboole_0(C, D))=k3_xboole_0(k2_zfmisc_1(A, C), k2_zfmisc_1(B, D))) ) ) ) ).
fof(t110_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (k2_zfmisc_1(A, B)=k2_zfmisc_1(C, D) =>  (A=k1_xboole_0 |  (B=k1_xboole_0 |  (A=C & B=D) ) ) ) ) ) ) ) ).
fof(t17_xboole_1, axiom,  (! [A] :  (! [B] : r1_tarski(k3_xboole_0(A, B), A)) ) ).
fof(t28_xboole_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(A, B) => k3_xboole_0(A, B)=A) ) ) ).
fof(t90_zfmisc_1, axiom,  (! [A] :  (! [B] :  (k2_zfmisc_1(A, B)=k1_xboole_0 <=>  (A=k1_xboole_0 | B=k1_xboole_0) ) ) ) ).
