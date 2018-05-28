% Esercizio a pag. 3 negli appunti: risoluzione mediante Euleri e Trapezi

clear 
close all
clc

f=@(x,y) y;
esatta=@(x) exp(x);
x0=0; y0=1;
xN=1;  % estremo destro
for N=2:2:128 
  x_plot=linspace(x0,xN,200); % serve per il grafico della soluzione esatta
  [x,yEE] = Eulero_esp(f,x0,xN,y0,N);
  [x,yEI] = Eulero_imp(x0,xN,y0,N);
  [x,yT] = Trapezi(x0,xN,y0,N);
  plot(x_plot,esatta(x_plot),'r',x, yEE, 'ob', x, yEI, '*g', x, yT, 'ks')
  grid on
  errEE=abs(esatta(xN)-yEE(N+1))  % errore che diminuisce piu' lentamente
                                  % -> convergenza un po' lentina
  errEI=abs(esatta(xN)-yEI(N+1))  % non cambia molto dall'Esplicito
  errT=abs(esatta(xN)-yT(N+1))    % molto piu' veloce
  % mi aspetto che ad ogni iterate l'errore diminuisca
  pause
end
% -> conviene di gran lunga il metodo dei trapezi