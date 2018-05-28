% Esercitazione 6 - es.03
%   valori singolari

clear
close all
clc

p=[0.2 -0.6 0.4 1.3 -0.8]';
q=[-0.5 0.1 -0.1 0.05 0.2]';
r=[0.74 -0.54 0.4 0.85 -0.8]';

A=[p q r];
[U S V]=svd(A);
% due valori singolari diversi da 0 il terzo e' nullo -> rango di A pari a 2
% -> 2 vettori linearmente indipendenti su 3
s=diag(S)

v=V(:,3)  % terzo vettore colonna di V=matrice degli Autovettori di A'*A
          % esso appartiene al nucleo di A -> A*v=0
%A*v  % ~zeros(length(v),1) -> cvd
%         A*v=v(1)*p+v(2)*q+v(3)*r=0 ma v(1), v(2), v(3) sono tutti ~=0
%         -> posso esprimere uno qualunque tra p,q,r in funzione degli
%           altri due vettori
r=-v(1)/v(3)*p-v(2)/v(3)*q