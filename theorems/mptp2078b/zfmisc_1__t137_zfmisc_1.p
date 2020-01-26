% Mizar problem: t137_zfmisc_1,zfmisc_1,1954,64 
fof(t137_zfmisc_1, conjecture,  (! [A] :  (! [B] :  (! [C] :  (! [D] :  (! [E] :  ( (r2_hidden(A, k2_zfmisc_1(B, C)) & r2_hidden(A, k2_zfmisc_1(D, E)))  => r2_hidden(A, k2_zfmisc_1(k3_xboole_0(B, D), k3_xboole_0(C, E)))) ) ) ) ) ) ).
fof(antisymmetry_r2_hidden, axiom,  (! [A, B] :  (r2_hidden(A, B) =>  ~ (r2_hidden(B, A)) ) ) ).
fof(commutativity_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, B)=k3_xboole_0(B, A)) ).
fof(d4_xboole_0, axiom,  (! [A] :  (! [B] :  (! [C] :  (C=k3_xboole_0(A, B) <=>  (! [D] :  (r2_hidden(D, C) <=>  (r2_hidden(D, A) & r2_hidden(D, B)) ) ) ) ) ) ) ).
fof(dt_k1_xboole_0, axiom, $true).
fof(dt_k2_zfmisc_1, axiom, $true).
fof(dt_k3_xboole_0, axiom, $true).
fof(dt_o_0_0_xboole_0, axiom, v1_xboole_0(o_0_0_xboole_0)).
fof(idempotence_k3_xboole_0, axiom,  (! [A, B] : k3_xboole_0(A, A)=A) ).
fof(t123_zfmisc_1, axiom,  (! [A] :  (! [B] :  (! [C] :  (! [D] : k2_zfmisc_1(k3_xboole_0(A, B), k3_xboole_0(C, D))=k3_xboole_0(k2_zfmisc_1(A, C), k2_zfmisc_1(B, D))) ) ) ) ).
fof(t2_boole, axiom,  (! [A] : k3_xboole_0(A, k1_xboole_0)=k1_xboole_0) ).
fof(t6_boole, axiom,  (! [A] :  (v1_xboole_0(A) => A=k1_xboole_0) ) ).
fof(t7_boole, axiom,  (! [A] :  (! [B] :  ~ ( (r2_hidden(A, B) & v1_xboole_0(B)) ) ) ) ).
fof(t8_boole, axiom,  (! [A] :  (! [B] :  ~ ( (v1_xboole_0(A) &  ( ~ (A=B)  & v1_xboole_0(B)) ) ) ) ) ).
