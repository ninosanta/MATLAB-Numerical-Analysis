% Metodo di Eulero esplicito
%   Esercitazione 10 - es.1
clear 
close all
clc

f=@(x,y) -y+x+1;
esatta=@(x) x+exp(-x);
x0=0; y0=1;
xN=1;  % estremo destro
for N=[4:4:128]  % numero sottointervalli -> piu' sono, meglio viene la 
                 %                           discretizzazione
  x_plot=linspace(x0,xN,200);  % serve per plottare la soluzione esatta
  [x,y] = Eulero_esp(f,x0,xN,y0,N);
  plot(x_plot, esatta(x_plot), 'r', x, y, 'ob', 'lineWidth', 2)
  pause
end
