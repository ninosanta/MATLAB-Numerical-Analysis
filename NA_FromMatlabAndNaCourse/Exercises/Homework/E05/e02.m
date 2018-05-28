% Esercitazione 5 - es.02
%   metodo QR

clear 
close all
clc

n=10;  % ordine
A=zeros(n);

for i=1:n
  for j=1:n
    A(i,j)=max(i^2, j^2);
  end
end
AA=A;  % e' simmetrica

% Ridurre la matrice a forma di Hessemberg:
A=hess(AA);  % -> e' tridiagonale perche' A simmetrica

% Eseguire le iterazioni del metodo QR per il calcolo degli autovalori di 
% tale matrice, generando la successione di matrici A_k.
% Arrestare le iterazioni quando la norma euclidea della prima 
% sottodiagonale di A_k diventa < 10^(−6)
iter=0;
while(norm(diag(A,-1))>=1.e-06)  % criterio d'arresto
  [Q R]=qr(A);
  A=R*Q;
  iter=iter+1;
end
disp('soddisfatto il criterio d''arresto all''iterata:')
iter  % numero iterazioni

% calcolare l'errore massimo tra gli autovalori approssimati cosi'
% calcolati e quelli "esatti" di A
err=norm(sort(diag(A))-eig(AA), inf)