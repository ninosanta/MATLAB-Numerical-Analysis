% Verifica fenomeno di Runge
% esercizio su cattivo condizionamento dei nodi equidistanti:
%   Vogliamo interpolare dei dati su nodi equidistanti e verificare il
%   comportamento dei polinomi con un numero di nodi crescente: 3, 6, 12,
%   24. E vogliamo farlo su due intervalli [a, b] diversi

clear all
close all
clc

%a=2; b=3;  % primo intervallo
a=-5; b=5;  % secondo intervallo

f=@(x) 1./(1+x.^2);  % oppure f=inline('1./(1+x.^2)');
for n=[3 6 12 24]  % raddoppio il numero di nodi ad ogni ciclo
  x=linspace(a,b,n);  % nodi equidistanti nell'intervallo [a,b] 
  y=f(x);  % vettore dei dati
  aa=polyfit(x,y,n-1);  % n-1 grado perche' uso n nodi il polinomio deve
                        % essere di grado n-1
  
  xx=linspace(a,b);  % vettore piu' lungo per fare il grafico
  yy=polyval(aa,xx);  % valuto il polinomio che mi e' stato restituito, 
                      % in corrispondenza del vettore xx
  plot(xx,yy,'r')  % polinomio interpolante
  hold on
  grid on
  plot(xx, f(xx), 'k')  % grafico di f in corrispondenza di xx
  legend('polinomio interpolante','funzione vera f(x)', 'Location', ...
         'south');
  pause
end

% nel secondo intervallo si vede particolarmente bene che man mano che
% aumento il numero di nodi, anziché aumentare la bontà dell'approssimaz.,
% a partire dagli estremi dell'intervallo iniziano a sorgere dei picchi
% di valori tipo sinusoidi e l'approssimazione peggiora...
% -> cio' e' dovuto al fatto che si stanno usando nodi equispaziati