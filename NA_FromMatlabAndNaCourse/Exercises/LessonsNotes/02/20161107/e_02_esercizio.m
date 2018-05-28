% Determinare i coefficienti c1, c2, c3 tramite il metodo dei minimi
% quadrati

clear all
close all
clc

%% svolgimento
% funzione da ottenere, del tipo: f=@(x) c1*exp(x) + c2*exp(-x) + c3; 
x=[0:0.1:1]';  % 11 misurazioni
b=[1, 0.83, 0.72, 0.66, 0.65, 0.71, 0.84, 1.02, 1.25, 1.55, 1.91]';  %dati
plot(x, b, 'ro')
A=[exp(x), exp(-x), ones(length(b))];  % matrice del sistema dei minimi
                                       % quadrati. In ogni colonna si trova
                                       % ciò che moltiplica i coefficienti
c=A\b  % trovo il VETTORE dei coefficienti

%% cose in piu'
% residuo (minimo) asociato alla soluzione del problema
res=b-A*c;
norm(res)

% grafico
f=@(x) c(1)*exp(x)+c(2)*exp(-x)+c(3);
y=f(x);
hold on
plot(x,y), grid on