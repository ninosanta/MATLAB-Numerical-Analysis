% non trattato in aula:
% -> pag. 22 dovrebbe mostrare che il condizionamento del problema del
%    calcolo degli autovalori non dipende dal numero di condizionamento
%    della matrice ma da quello della matrice degli autovettori

clear all
close all
clc

A=hilb(10);
format compact
cond(A)
b=rand(10,1);
x=A\b;
norm(A*x-b);
[W D]=eig(A);  % W contiene autovettori, D autovalori
norm(A*W-W*D)
B=A+0.2*rand(10,10);
[W D]=eig(B);
norm(B*W-W*D)