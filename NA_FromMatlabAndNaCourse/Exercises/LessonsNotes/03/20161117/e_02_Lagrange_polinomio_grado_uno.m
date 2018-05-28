% esempio interpolazione con base di Lagrange:
%   visualizziamo i polinomi di Lagrange, costruiti su 5 nodi distinti
%   presi a scelta
%   -> dobbiamo costruire un vettore con il valore dei polinomi di Lagrange
clear all
close all
clc

N=5;    % 5 nodi
x=1:5;  % ~ x=linspace(1, 5, 5): scelgo N nodi equispaziati (non per forza) 
        %   tra 1 e 5 -> nodi della base di Lagrange 
xx=linspace(x(1),x(N)); % vettore di 100 punti tra il primo e l'ultimo nodo
                        % in cui valuteremo il polinomio di Lagrange 
                        % per plottarlo
                        % xx e' un vettore riga


%% primo polinomio, relativo al nodo x(1) 
l1=1; 
%   -> dopo il primo passo del ciclo for diventera' un vettore
for k=2:N
  l1=l1.*(xx-x(k))/(x(1)-x(k));  % Lagangia
end
plot(xx, l1, 'LineWidth', 2), grid on
hold on  % sovrappongo grafici sulla stessa finestra
plot(x,[1 0 0 0 0], 'or')  % voglio vedere quanto vale il polinomio nei 
                           % nodi -> devo vedere che vale 1 in x(1) e 0 
                           %         negli altri nodi