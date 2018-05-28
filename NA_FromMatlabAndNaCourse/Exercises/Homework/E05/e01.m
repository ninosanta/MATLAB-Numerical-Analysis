% Esercitazione 5 - es.01
%   minimi quadrati

clear 
close all
clc

P = @(x) 2+1/3*cos(x)-2/5*sin(x)-7/100*cos(2*x)+3/200*sin(2*x)- ...
         9/1000*cos(3*x)+11/3000*sin(3*x);

% Calcolare i suoi valori nei 128 punti equispaziati x_j=pi/128, 0≤j≤ 127 
% contenuti nell'intervallo [0, pi].
x=(pi/128)*[0:127]';
p=P(x);
plot(x, p), grid on, hold on

% Usare questi valori per costruire un polinomio trigonometrico della forma
%    Q(x) = c0*+c1*cos(x)+c2*sin(x)+c3*cos(2x)+c4*sin(2x)
% che approssima i dati sopra calcolati nel senso dei minimi quadrati
n=length(p);
A=[ones(n,1), cos(x), sin(x), cos(2*x), sin(2*x)];
b=p;
c=A\b;  % vettore dei coefficienti ricavato tramite soluzione del sistema 
        % tramite minimi quadrati Ac=b
Q=c(1)+c(2)*cos(x)+c(3)*sin(x)+c(4)*cos(2*x)+ ...
  c(5)*sin(2*x);

% Stimare l’errore tra i polinomi P(x) e Q(x) sull’intervallo [0, pi]
err1=norm(p-Q)
err2=norm(p-Q, inf)
plot(x, Q, 'r')
legend('polinomio trigonometrico', 'approssimazione min. quad.')
