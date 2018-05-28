%%%%%%%%%% es 3
close all
x0 = 0;
y0 = [1;1];
xN = 1;
N = 8;

[x,y] = Eulero_espl_sistemi('funzione_es3',x0,xN,y0,N);
[x,yH] = Heun_sistemi('funzione_es3',x0,xN,y0,N);
xplot = linspace(x0,xN,200);
esatta = exp(xplot);
plot(xplot,esatta,'r',x,y(1,:),'ob',x,yH,'*g')