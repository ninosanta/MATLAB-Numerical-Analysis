% Esercitazione 3 - es.6
clear
close all
clc

format short
A=vander([1:20]);
b=rand(20,1);
det(A)  % controllo che non sia singolare

[L,U,P] = lu(A);

format short e
val=norm(P*A-L*U)/norm(A);
[cond(A), val]
% si nota che  l’accuratezza della fattorizzazione appare praticamente
% insensibile al condizionamento della matrice

y = L\P*b;
xx = U\y;
x = A\b;
format long e
[xx, x]

format short e
err_x=norm(x-xx)/norm(x)  % si vede anche qua scarsa sensibilità al 
                          % condizionamento -> powa