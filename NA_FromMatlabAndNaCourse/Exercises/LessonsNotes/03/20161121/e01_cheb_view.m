% Visualizzare i nodi di Chebychev
close all
clear
clc

%% plot nodi
n=20;
t=cos((2*(0:n)+1)/(n+1)*pi/2);  % basta qst istruzione per costrire i nodi
                                % notazione vettoriale -> no ciclo for!
plot(t,0*t, '*r', 'Markersize', 6)  % come ascisse ho i nodi e come ordina.
                                    % 0*t questo e' un trucco per avere un 
                                    % vettore di 0 lungo quanto t 
                                    % -> metteremo tutti i punti sull'asse
                                    %    dell'ascisse xke' le ordin. sono 0
grid on
% non sono equispaziati e sono piu' addensati lungo gli estremi
% dell'intervallo

%% vediamo invece che sono equispaziati sulla circonferenza goniometrica
% quindi diamo come ordinate il seno degli angoli dati in pasto alle
% ascisse (cioe' al coseno)
hold on
axis equal
ts=sin((2*(0:n)+1)/(n+1)*pi/2);
plot(t, ts, 'ob', 'Markersize', 6)