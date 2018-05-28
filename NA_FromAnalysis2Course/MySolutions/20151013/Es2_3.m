% Esercitazione 2 - Es. 3

close all 
clear all
clc

A=rand(3,3); %matrice pseudocasuale
disp(A)
det(A); %se det diverso da 0 non � singolare
eig(A)  %calcola gli autovalori, utile per vedere com'� definita (pos,neg,semi)

[L,U,P]=lu(A); %fattorizzazione matrice: PA=LU
%PA=LU  ->  A=invP*L*U  => invA = invU * invL * P
invA=inv(U)*invL(L)*P %calcolare l'inversa tramite fattorizzazione � pi� efficiente
inv(A)
isequal(invA, inv(A)) %dovrebbe dare 0 in output poich� l'iversa ottenuta dalla fattorizzazione non � propio uguale all'inversa di A
max(max(invA-inv(A)))