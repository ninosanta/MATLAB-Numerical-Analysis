% Esercizio 3 - esecitazione ODE - pag.6 appunti

close all
clear 
clc

x0=0;
y0=[1 1]';  % vettore colonna delle condizioni iniziali
xN=1;  % estremo destro di integrazione
N=8;

% f deve essere vettoriale -> devo definirla in una function che
% restituisce un valore f
[x,yEE] = Eulero_esp_sistem('funzione_e03',x0,xN,y0,N);
[x,yH] = Heun_sistemi('funzione_e03',x0,xN,y0,N);
xplot=linspace(x0,xN,200);  % perché la x ritornata ha N=8 intervalli=pochi
                            % per plottare
esatta=exp(xplot);
plot(xplot, esatta, 'r', x, yEE(1,:), 'ob', ...
     x, yH, '*g') % solo prima riga perche' la seconda contiene le
                  % approssimazioni della derivata prima di y z(2)
                  % -> la soluzione e' solamente nella prima riga
legend('sol. esatta', 'sol. appr. Eulero E.', 'sol. appr. Heun', ...
       'Location', 'northwest')
grid on

% raffinando i modi mi aspetto la convergenza....
% se mi serve la derivata basta guardare la seconda riga della matrice y
