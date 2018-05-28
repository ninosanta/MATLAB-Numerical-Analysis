% Esercitazione 4 - es. 1
% -> forma matriciale del procedimento di ortonormalizzazione di 
%    Gram-Schmidt di tre vettori casuali e lin. indip.
%   Trovare tre combinazioni lineari di tali vettori
%       w1 = c11*v1 + c21*v2 + c31*v3
%       w2 = c12*v1 + c22*v2 + c32*v3
%       w3 = c13*v1 + c23*v2 + c33*v3
%   che formino un sistema ortonormale.
%   -> W=V*C con C matrice incognita dei coefficienti
%      Occorre ottenere W ortogonale, cioe' tale che:
%         W'*W=I cioe' C'*V'*V*C = I -> associativa: C'*(V'*V)*C = I
%         chiamo A=(V'*V) e sara' simm def pos e ammette fattorizzazione di
%         Cholesky
%         -> C'*A*C = C'*R'*R*C = C'*R'*R*C = (R*C)'*(R*C)=I
%         -> e' sufficiente imporre R*C=I e cioe' C=inv(R)
%   Si noti che C e' triangolare superiore in quanto inversa della 
%   triangolare superiore R, dunque w1 e' un multiplo di v1, w2 e' una 
%   combinazione lineare di v1 e v2, mentre w3 e una combinazione lineare 
%   di tutti e tre i vettori v_i

clear
close all
clc

m=7; n=3;  % ordine matrice
v1 = randn(m, 1);
v2 = randn(m, 1);
v3 = randn(m, 1);

V=[v1 v2 v3];

if rank(V)==n  % i tre vettori sono linearmente indipendenti
  A=V'*V;  % A sara' di ordine n, simmetrica e definita positiva
           % grazie all'indipendenza dei tre vettori
  R=chol(A);  
  C=inv(R);   % matrice dei coefficienti

  W=V*C;
  
  norm(W'*W-eye(n))  %  verifico che sia ortonormale: W'*W~eye(n)
  cond(W)  % ortonormale: condizionamento pari a 1
else
  disp('i tre vettori sono linearmente dipendenti')
end