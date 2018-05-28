% Implementare il metodo di Newton in una function, arrestando le
% iterazioni quando il residuo e sceso sotto una tolleranza fissata.
% Applicarlo alla funzione f (x) = x^2-7 per trovarne la radice
% positiva. Confrontare con il risultato prodotto dal metodo di
% bisezione, e con il risultato esatto sqrt(7)
clear
close all 
clc

f=@(x) x.^2-7;  % funzione
ezplot(f), grid on

x0=2; 
x1=3;

x=secanti(f,x0,x1,1.0e-8)

% -> un po' peggio di Newton mamolto meglio di Bisezione
