% Implementare il metodo di Newton in una function, arrestando le
% iterazioni quando il residuo e sceso sotto una tolleranza fissata.
% Applicarlo alla funzione f (x) = x^2-7 per trovarne la radice
% positiva. Confrontare con il risultato prodotto dal metodo di
% bisezione, e con il risultato esatto sqrt(7)
clear
close all 
clc

f=@(x) x.^2-7;  % funzione
f1=@(x) 2.*x;   % derivata prima

ezplot(f), grid on
x0=2;   % punto di partenza del metodo di Newton
toll=1.e-08;

% confronto Newton vs Bisezione
disp('Newton')
[x1,k1]=newton(f,f1,x0,toll)
scarto1=abs(x1-sqrt(7))  % quanto sono andato lontano dalla soluzione
disp('Bisezione')
[x2,k2]=bisezione(f, 2, 3, toll)
scarto2=abs(x2-sqrt(7))