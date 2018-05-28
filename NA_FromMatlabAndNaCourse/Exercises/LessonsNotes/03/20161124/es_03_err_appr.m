% Errore approssimazione:
% supponiamo di voler calcolare l'errore che commetto approssimando dei
% dati in un modo o in un altro -> ce lo dice la norma2 di Ac-y
clear all
close all
clc

x=1:20;  % nodi interpolazione
y=[243 209 181 179 180 166 163 157 187 192 138 95 56 32 21 12 11 61 ...
   146 186];  % vettore dati
% Li approssimiamo con:
%   una retta
%   una parabola
%   un polinomio di grado 3 trigonometrico
% Calcoleremo le soluzioni con un sistema di equazioni normali perche' per
% capire l'errore che commettiamo serve calcolare il quadrato degli scarti
% e cio' lo da la norm(Ac-y)

% rispetto alla A dell'esercizio es_02, aggiungo coefficienti quadratici 
% in A e un duplicato dei sin e cos con frequenza doppia (dimezzando 
% il periodo)

% Sia quindi:
% y=c1 + c2*x + c3*x^2 + c4*sin(2pi/20x) + c5*cos(2pi/20x) + c6*sin(pi/20x)
%      + c7*cos(pi/20*x)
A=[ones(length(x),1), x', (x').^2, sin(2*pi/20*x'), cos(2*pi/20*x'), ... 
   sin(pi/20*x'), cos(pi/20*x')];
 
% Ora, praricamente ogni volta:
%  -Decidi che tipo di approssimazione vuoi analizzare prendendo ad esempio
%   le prime tre colonne di A -> approssimazione con parabola
%  -Calcoli lo scarto
%  -Ricorda di usare soltanto i primi tre elementi di yymq 
%  -Plotti 

% qua considero tutti e 7 i coefficienti di A: 

% c=A\y'; corrisponde a c=A(:,[1:7])\y' e da' l'approssimazione completa
% c=A(:,[1:2])\y'  % da' la RETTA che approssima nel senso dei mq
c=A(:,[1:7])\y';
% valuto ora lo scarto/errore:
% scarto=norm(A(:,[1:2])*c-y')^2 prendo le prime 2 colonne di A 
%   approssimo con la retta e per plottare devo fermarmi a 
%   yymq=c(1)+c(2)*xx e cosi' via...
% NB: anche in c devi fare attenzione alle colonne di A se decidi di fare
%     come sopra scritto
scarto=norm(A(:,[1:7])*c-y')^2  % valuto tutta A

% voglio graficare
xx=linspace(1,20,200);  % intervallo di rappresentazione
yymq=c(1)+c(2)*xx+c(3)*xx.^2+c(4)*sin(2*pi/20*xx)+c(5)*cos(2*pi/20*xx)+...
     c(6)*sin(pi/20*xx)+c(7)*cos(pi/20*xx); 
plot(xx,yymq, 'k-.', 'LineWidth', 2), grid on  % plot approssimazione
hold on
plot(x,y,'ro','Markersize',6)  % plot dei dati