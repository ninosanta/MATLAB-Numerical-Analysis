% Risoluzione di un sistema sovradimensionato con i minimi quadrati
%  -> il vettore soluzione e' quello che minimizza il residuo ed e' la
%     soluzione con la piu' piccola norma euclidea

clear all
close all
clc

% sistema di 9 equazioni in 6 incognite
A=[2 -1 4 0 -1 1; 0 1 0 -2 0 1; 0 0 4 -5 1 0; 0 7 0 0 -8 7];
A=[A;1 0 0 0 -1 1; 0 0 1 0 4 0; 0 0 2 6 -1 0; -1 -1 0 9 0 -2];
A=[A;3 -3 6 0 -1 0]
b=[3 -2 0 2 0 -8 1 6 -1]';  % ricorda che deve essere un vettore colonna!
x=A\b    % vettore soluzione:
         %  dara' un warning sul rango ed esplichera' la tolleranza
size(A)
rank(A)  % infatti il rango e' 5

[U S V]=svd(A)  % si vedranno 5 valori singolari significativamente !=0

% OSS/NOTA:
%   La souzione trovata rende minimo il residuo.
norm(A*x-b)    % residuo
xx=randn(6,1)  % vettore generato a cazzo
norm(A*xx-b)   % calcolo il residuo sul vettore e verifico che sia maggiore
               % di quello calcolato con x

z=V(:,6)  % prendo un vettore che stia nel Ker(A)
A*z       % verifico che stia nel nucleo: ~0
norm(A*(x+z)-b)  % residuo: uguale a quello fatto con la sola x senza 
                 % sommarle z. Cio' perche' z sta nel nucleo di A

% oltre a rendere minimo il residuo, la soluzione trovata rende minima
% anche la norma euclidea:  
norm(x)    % >0
norm(x+z)  % strettamente poitivi -> nella retta di soluzioni del sistema
           % quella che da' matlab ha la piu' piccola norma euclidea :)
