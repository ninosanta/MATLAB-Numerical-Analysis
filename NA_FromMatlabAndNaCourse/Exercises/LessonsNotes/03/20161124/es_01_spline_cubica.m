% Interpolare i dati relativi all'Ossido di Azoto con una spline cubica 
% usando il comando spline

clear all
close all
clc

x=1:20;  % nodi interpolazione
y=[243 209 181 179 180 166 163 157 187 192 138 95 56 32 21 12 11 61 ...
   146 186];  % vettore dati

%% con interpolazione polinomiale polyfit polyval
a = polyfit(x,y,length(x)-1);  % costruisce i coefficienti del polinomio
                                % interpolante usando:
                                % come nodi gli elementi di x, come dati
                                % quelli contenuti in y e come grado del
                                % polinimio
                                %   i dati sono 20 -> grado 19 -> 20 coeff.
xx=linspace(1,20,200);  % per il disegno
yy = polyval(a,xx);  % valuto il polinomio calcolato con polyfit 
                     % (e restituito in a) nei punti xx
plot(xx,yy,'b'), grid on
hold on
% vediamo i dati dell'interpolazione
plot(x,y,'rs')  % s sta per square
                % agli estrmi dell'intervallo di interpolazione si vedranno
                % mega errori numerici dovuti a Runge

%% con spline                
% vediamo con la spline cosa viene fuori, sovrapponendolo al grafico del
% polinomio interpolante
yys = spline(x,y,xx);  % nodi, dati e vettore in cui voglio valutare 
                       % l'interpolazione -> stiamo usando la spline NaK
plot(xx,yys,'k')
axis([0.5 20.5 0 250])  % nel vettore prima asse x da ... a ...
                        % poi l'asse y d ... a ...
legend('Polinomio interpolan.','Dati dell''interpolazione','Spline interp')

% OSS:
spline(x,y,19.5) % mostra il valore dell'Ossido di azoto alle 19.30 di sera
polyval(a,19.5)  % il polinomio interpolante invece in corrispondenza di 
                 % quell'orario da' un dato senza senso