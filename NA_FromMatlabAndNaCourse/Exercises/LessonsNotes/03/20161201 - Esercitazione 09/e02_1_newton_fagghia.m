% Esercizio che dimostra come il metodo di Newton dipenda dal punto
% iniziale x0 e come con diversi x0 esso giunga a soluzioni differenti

% In questo caso la soluzione dovrebbe essere 0 perche' li' si annulla
% l'arcotangente

clear
close all
clc

f=@(x) atan(x);  
f1=@(x) 1./(x.^2+1);  % derivata prima

% Il metodo di Newton dipende dal punto in cui parte:
x0=[1, 1.3917, 1.46];
i=0;

for k=1:3
  i=i+1;
  x=newton(f,f1,x0(i),1.e-08) 
  pause
end
