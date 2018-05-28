% comportamento convergenza spline cubiche
% prende una funzione e ne costruisce la spline interpolante in un numero 
% Nint di nodi
% poi vedo laa differenza tra la spline che sto rappresentando e la
% funzione. Vedro' poi la differenza con le derivate prima e seconda

Nint=6;
f=@(x) sin(x);
df=@(x) cos(x);
ddf=@(x) -sin(x);
dddf=@(x) -cos(x);

x=linspace(-5,5)
y=f(x);

