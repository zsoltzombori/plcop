fof(l3_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (r1_tarski(A, k1_tarski(B)) <=>  (A=k1_xboole_0 | A=k1_tarski(B)) ) ) ) ).
fof(d10_xboole_0, axiom,  (! [A] :  (! [B] :  (A=B <=>  (r1_tarski(A, B) & r1_tarski(B, A)) ) ) ) ).
fof(l1_zfmisc_1, axiom,  (! [A] :  (! [B] :  (r1_tarski(k1_tarski(A), B) <=> r2_hidden(A, B)) ) ) ).
fof(l2_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (r1_tarski(A, B) =>  (r2_hidden(C, A) | r1_tarski(A, k4_xboole_0(B, k1_tarski(C)))) ) ) ) ) ).
fof(reflexivity_r1_tarski, axiom,  (! [A, B] : r1_tarski(A, A)) ).
fof(t2_xboole_1, axiom,  (! [A] : r1_tarski(k1_xboole_0, A)) ).
fof(t37_xboole_1, axiom,  (! [A] :  (! [B] :  (k4_xboole_0(A, B)=k1_xboole_0 <=> r1_tarski(A, B)) ) ) ).
