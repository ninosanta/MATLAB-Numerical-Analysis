% Esercitazione 5 - Simpson

function t=simpson(f,a,b,m)
% t=simpson(f,a,b,m)
% calcola l'integrale definito
%con il metodo di Simpson
% % Input:
%   f = funzione integranda
%   a,b = estremi di integrazione
%   m = numero sottointervalli
% Output:
%   t = valore dell'integrale

x=linspace(a,b,2*m+1); % 2m+1 per il calcolo dei nodi di integrazione
t=(b-a)/(6*m)*(f(x(1)) + 4*sum(f(x(2:2:2*m))) + ... 
   2*sum(f(x(3:2:(2*m-1)))) + f(x(2*m+1)));