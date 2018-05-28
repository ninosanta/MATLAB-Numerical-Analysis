% Visualizzare i nodi di Chebichev
close all
clear
n=20;
t=cos((2*(0:n)+1)/(n+1)*pi/2);
plot(t,0*t,'*r','Markersize',6)
grid on
hold
ts=sin((2*(0:n)+1)/(n+1)*pi/2);
plot(t,ts,'ob','Markersize',6)