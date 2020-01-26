fof(t11_setfam_1, conjecture,  (! [A] :  (! [B] : k1_setfam_1(k2_tarski(A, B))=k3_xboole_0(A, B)) ) ).
fof(idempotence_k2_xboole_0, axiom,  (! [A, B] : k2_xboole_0(A, A)=A) ).
fof(t10_setfam_1, axiom,  (! [A] : k1_setfam_1(k1_tarski(A))=A) ).
fof(t1_enumset1, axiom,  (! [A] :  (! [B] : k2_tarski(A, B)=k2_xboole_0(k1_tarski(A), k1_tarski(B))) ) ).
fof(t29_enumset1, axiom,  (! [A] : k2_tarski(A, A)=k1_tarski(A)) ).
fof(t44_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  ~ (k2_xboole_0(k2_tarski(A, B), C)=k1_xboole_0) ) ) ) ).
fof(t9_setfam_1, axiom,  (! [A] :  (! [B] :  ~ ( ( ~ (A=k1_xboole_0)  &  ( ~ (B=k1_xboole_0)  &  ~ (k1_setfam_1(k2_xboole_0(A, B))=k3_xboole_0(k1_setfam_1(A), k1_setfam_1(B))) ) ) ) ) ) ).
