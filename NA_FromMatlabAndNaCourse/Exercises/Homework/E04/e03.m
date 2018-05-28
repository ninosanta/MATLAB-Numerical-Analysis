% Esercitazione 4 - es.03
% (a) Generare una matrice pseudo-casuale A di ordine n;
% (b) calcolare la fattorizzazione QR della matrice A;
% (c) usare i fattori Q ed R per risolvere un sistema lineare Ax = b;
% (d) facendo variare l'ordine della matrice, valutare la differenza di 
%     costo computazionale tra il calcolo della fattorizzazione LU di A e 
%     quello della fattorizzazione QR.

clear 
close all
clc

for n=2:2:100  % ordine matrice crescente
  sigma=2/n;  % parametro che piu' e' piccolo piu' rende la matrice mal 
              % mal condizionata. Ad ogni passo decresce
  % costruzione sistema
  A=randn(n);
  x=randn(n,1);
  b=A*x;  % costruzione termine noto
  m=floor(n/2);  % approssima per difetto
  B=A; B(m,:)=sigma*A(m,:)+A(1,:);
  c=b; c(m)=sigma*c(m)+c(1);
  
  
  tic
  disp('LU:')
  [L U P]=lu(B);
  ylu=L\(P*c); xlu=U\ylu;
  toc
  err_lu= norm(x-xlu)/norm(x);



  tic
  disp('QR:')
  [Q R]=qr(B);
  xqr=R\(Q'*c);
  toc
  err_qr= norm(x-xqr)/norm(x);


  [cond(B) err_lu err_qr]
end