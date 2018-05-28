% Esercitazione 5 - Trapezi

function t=trapezi(f,a,b,m)
% t=trapezi(f,a,b,m)
% calcola l'integrale definito di f tra a e b
% Input:
%   f = funzione integranda
%   a,b = estremi di integrazione
%   m = numero sottointervalli
% Output:
%   t = valore dell'integrale

x=linspace(a,b,m+1); % m+1 perché vogliamo m sottointervalli
t=(b-a)/(2*m)*(f(x(1)) + 2*sum(f(x(2:m))) + f(x(m+1)));