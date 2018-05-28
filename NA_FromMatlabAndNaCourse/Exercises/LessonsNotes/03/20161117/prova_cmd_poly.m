% esempio comandi polyfit e polyval

clear
close all
clc

x=0:2;  % nodi
y=[7 4 pi];  % dati
aa=polyfit(x,y,2)  % tre nodi -> grado 2

xx=linspace(0,4);
yy=polyval(aa, xx);
plot(xx, yy)
grid on