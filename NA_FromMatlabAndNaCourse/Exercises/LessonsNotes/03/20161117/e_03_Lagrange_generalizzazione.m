% generalizzazione dell'e_02:
%  -> calcolo del k-esimo polinomio di Lagrange
clear all
close all
clc

x=[0 1 4 8 9 12];  % scelgo N nodi a piacere
N=length(x);       % numero nodi
xx=linspace(x(1),x(N)); % vettore di 100 punti tra il primo e l'ultimo nodo
                        % in cui valuteremo il polinomio di Lagrange 
                        % per plottarlo
                        % xx e' un vettore riga
i=4;  % voglio calcolare l'i-esimo polinomio, relativo al nodo x(i)
li=1; % inizializzazione dell'i-esimo polinomio
for k=1:N 
  if k~=i  % ~= significa diverso
    li=li.*(xx-x(k))/(x(i)-x(k));  % vettore del polinomio
  end
end
plot(xx, li, 'LineWidth', 2), grid on
hold on  % sovrappongo grafici sulla stessa finestra
y=zeros(1,N);  % vettore 1xN di zeri
y(i)=1         % nel nodo i-esimo il polinomio deve valere 1
plot(x, y, 'or')