% Effetto del condizionamento di una matrice nella risoluzione di un
% sistema lineare.
%   Partiamo da un vettore che sarà la soluzione esatta del sistema
%   Ho la matrice e ne costruisco il termine noto a partire dalla matrice
%   Con Matlab uso il \ per risolvere il sistema 
%   -> in aritmetica infinita dovrei trovare quel termine noto
%   -> se non trovo lo stesso vettore di partenza mi fo un idea di quanto
%      sia mal condizionata la matrice
clear all
close all
clc

n=100;
x=rand(n,1);  % vettore (colonna) soluzione di numeri pseudocasuali
              % nell'intervallo uniforme e compresi tra 0 e 1
% Ax=b
A=matrix(n);  % occhio che matrix è la funzione del prof.
b=A*x;
% voglio riottenere x usando \
xx=A\b;
disp([x xx])
err=norm(x-xx)/norm(x);  % errore relativo

% L'opzione piu' efficiente di matlab per calcolare il condizionamento
% e' la seguente poiché meno dispendiosa a livello di costo computazionale:
c=1/rcond(A);  % rcond=reciproco condizionament 
               % ->  tipo se rcond=1/2 allora il numero di cond = 2
[err c]


% con n=10 ottengo qualcosa di confrontabile con eps, ~10^(-15)
% con n=100 già perdo tre cifre decimali nella precisione perché ottengo 
% ~10^(-12)
% -> ciò si vede anche perché il numero di condizionamento cresce al
%    crescere di n