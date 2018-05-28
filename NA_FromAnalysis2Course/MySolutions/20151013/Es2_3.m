% Esercitazione 2 - Es. 3

close all 
clear all
clc

A=rand(3,3); %matrice pseudocasuale
disp(A)
det(A); %se det diverso da 0 non è singolare
eig(A)  %calcola gli autovalori, utile per vedere com'è definita (pos,neg,semi)

[L,U,P]=lu(A); %fattorizzazione matrice: PA=LU
%PA=LU  ->  A=invP*L*U  => invA = invU * invL * P
invA=inv(U)*invL(L)*P %calcolare l'inversa tramite fattorizzazione è più efficiente
inv(A)
isequal(invA, inv(A)) %dovrebbe dare 0 in output poiché l'iversa ottenuta dalla fattorizzazione non è propio uguale all'inversa di A
max(max(invA-inv(A)))