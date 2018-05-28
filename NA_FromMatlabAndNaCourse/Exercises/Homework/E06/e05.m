% Esercitazione 6 - es.04
%   Valori singolari

clear
close all
clc

A=[3 -2 1 2; -1 0 2 1; 0 5 -6 -1; 1 1 -1 1; 1 -1 -1 -1; 8 -1 -5 2];
m=size(A,1); n=size(A,2);  % ordine
b=[1 -3 7 0 -6 2]';

% (a) Calcolare il rango della matrice A del sistema
rank(A)

% (b) calcolare la soluzione del sistema, nel senso dei minimiquadrati, 
%     avente norma euclidea minimale
x=A\b

% (c) individuare tutte le soluzioni del sistema nel senso dei minimi 
%     quadrati
% NOTA:
%   Ogni altra soluzione y del sistema si scrive come y = x + z, 
%   con z in Ker(A)
dimKer=n-rank(A)  % dimensione del Nucleo ricavata tramite il 
                  % teorema del Rango
% essendo che il rango e' pari a n-1 il nucleo sara' generato dal quarto 
% vettore colonna della matrice V della decomposizione SVD
[U S V]=svd(A);
v=V(:,4)

% y=x+const*v rappresenta qualsiasi soluzione del sistema
