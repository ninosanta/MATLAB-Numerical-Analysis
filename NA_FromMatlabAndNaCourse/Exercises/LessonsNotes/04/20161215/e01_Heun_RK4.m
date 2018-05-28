% Esercizio a cui applico Heun e Runge-Kutta a 4 stadi
%    L'esercizio e' sempre quello a pag.3 degli appunti e della scorsa
%    lezione

close all
clear
clc

esatta=@(x) exp(x);  % soluzione
f=@(x,y) y;
x0=0; y0=1;
xN=0.2;  % estremo dx

for k=1:6
  % OSS: sull'ordine di convergenza
  N=2^k;  % numero sottointervalli -> raddoppiano ad ogni intervallo e 
          % dunque il passo h si dimezzera'
          % si puo' osservare che rispetto al caso con N=k gli errori nel
          % caso degli Euleri si dimezza, con i trapezzi diventa tipo 1/4,
          % con Heun 1/4 con RK4 1/16
          % -> i primi due errori sono O(n), gli altri due O(n^2), 
          %    RK4 e' O(n^4)
  x_plot=linspace(x0,xN,200); % serve per il grafico della soluzione esatta
  [x,yEE] = Eulero_esp(f,x0,xN,y0,N);
  [x,yEI] = Eulero_imp(x0,xN,y0,N);
  [x,yT] = Trapezi(x0,xN,y0,N);
  [x,yH] = Heun(f,x0,xN,y0,N);
  [x,yRK4] = RK4(f,x0,xN,y0,N);
  
  plot(x_plot, esatta(x_plot), 'r', x, yEE, 'ob', x, yEI, '*g', x, yT, ...
       'ks', x, yH, 'c+', x, yRK4, 'dm')
  legend('soluzione: e^x', 'Eulero-E', 'Eulero-I', 'Trapezi', 'Heun', ... 
         'RK4', 'Location', 'northwest')
  grid on
  
  % errore reltivo all'ultimo estremo di integrazione
  errEE=abs(esatta(xN)-yEE(N+1));
  errEI=abs(esatta(xN)-yEI(N+1));
  errT=abs(esatta(xN)-yT(N+1)); 
  errH=abs(esatta(xN)-yH(N+1));
  errRK4=abs(esatta(xN)-yRK4(end));
  
  disp('E-espl         E-impl         Trap         Heun        RK4')
  [errEE errEI errT errH errRK4]
  pause
end
% -> si vede che RK4 e' il piu' veloce di tutti a convergere