% Esercitazione 1 - Esercizio 6

close all %chiude tutte le immagini 
clear all 
clc

t=linspace(0, 10*pi); %intervallo
a=1; %raggio cerchio
b=-0.1; %densità passi

%equazione parametrica dell'elica
x=a*cos(t);
y=a*sin(t);
z=b*t;

subplot(1,2,1)
plot3(x,y,z) , grid on %plot 3D

%=============================

t=linspace(0, 20*pi); %intervallo
a=2;%1 %raggio cerchio
b=-0.2; %-0.1; %densità passi

%equazione parametrica dell'elica
x2=a*cos(t);
y2=a*sin(t);
z2=b*t;

subplot(1,2,2)
plot3(x2,y2,z2)
grid on