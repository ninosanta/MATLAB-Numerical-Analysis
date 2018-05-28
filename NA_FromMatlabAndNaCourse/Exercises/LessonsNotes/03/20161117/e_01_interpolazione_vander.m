% interpolazione polinomiale con Vandermonde:
%   dimostrazione dell'inefficienza del metodo con base monomiale

clear all
close all
clc

% dati sull'ossido di azoto
y=[243 209 181 179 180 166 163 157 187 192 138 95 56 32 21 12 11 61 ...
   146 186]';  % dati
x=1:length(y);  % nodi

% costruzione matrice Vandermonde prendendo un numero di nodi che cresce
% gradualmente:
for n=2:20
  n
  A=vander(x(1:n));  % x(1:n) dal vettore x estrae le entrate da 1 a n
  cond(A) % condizionamento in norma 2 -> si nota che piu' sono i nodi 
          % piu' A diventa mal condizionata
  pause
end
% non risoluzione sistema Ac=y per trovare i coefficienti in quanto la
% matrice di Vandermonde e' troppo mal condizionata -> NO: c=A\y