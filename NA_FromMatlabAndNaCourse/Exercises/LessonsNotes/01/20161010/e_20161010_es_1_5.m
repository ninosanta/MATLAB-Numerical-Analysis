% esercitazione 1 es. 5

% a)
close all  % chiude tutte le finestre
clc

x=[-pi -pi/2 0 pi/2 pi];  % vettore delle x: equispaziato
y=sin(x);  % vettore delle y
plot(x,y)  % riceve in input il vettore delle ascisse 
           % e quello delle ordinate
           % -> il grafico viene una ciofeca perchè si vedono cose
           % spigolose

% NOTA: più x è fitto, meno ci accorgiamo delle spezzate
%       ovviamente dipende dalla funzione eh! Il valore assoluto quello è e
%       quello rimane
x=linspace(-pi,pi,200);
y=sin(x);
figure  % non chiude l'immagine precedente per fare quella nuova
plot(x,y, '--g','LineWidth',2)  % anche *,o modificano il tratto
                                % LineWidth = spessore figura

% b)
figure
x=linspace(-1,1,444);
y=exp(x);
plot(x,y, ':m','LineWidth',2) 

% c)
x=linspace(-5,5);  % linspace di default è 100 
                   % -> equivale a linspace(-5,5,100)
y=exp(-x.^2);  % x è un vettore, serve il maledetto punto per elevare ogni 
               % elemento di x al quadrato
plot(x,y, '-c','LineWidth',6)