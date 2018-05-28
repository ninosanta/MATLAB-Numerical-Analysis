% Esercizio pag. 5 appunti
%   Con Eulero esplicito, fino ad un certo N l'errore e' mostruoso e va 
%   ad aumentare...poi, per un h sufficientemente piccolo, 
%   diminuisce e converge
%   Eulero implicito invece fa impressione!
%-> problema di tipo STIFF

close all
clear
clc

f=@(x,y) -10^3*y;
x0=0; y0=1;
xN=1; 
N=16;
[x,yEE] = Eulero_esp(f,x0,xN,y0,N);  % mi serve yEE per l'errEE
[x,yEI] = Eulero_imp2(x0,xN,y0,N);

% confronto ora ilrisultato ottenuto con la soluzione esatta: exp(-10^3*x)
xplot=linspace(x0,xN,200);
% Il plot dell'EE si vede solamente per h sufficientemente piccolo tale che
% il metodo converga e quindi per N sufficientemente grande. e.g. N=1200
% EI converge anche per N=16
semilogy(xplot, exp(-10^3*xplot), 'r', x,yEI,'b', x,yEE, 'c')
legend('soluzione esatta: exp(-10^3*x)', 'Eulero I', 'Eulero E', ...
       'Location', 'southwest')
grid on
err_Ee = abs(yEE(end)-exp(-10^3*xN))  % errore Eulero Esplicito
err_Ei = abs(yEI(end)-exp(-10^3*xN))  % errore Eulero Implicito
% c'e' una differenza di ordini di grandezza che e' Bestiale
