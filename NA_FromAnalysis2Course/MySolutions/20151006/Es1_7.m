% Esercitazione 1 - Esercizio 7

clear all 
close all
clc

x=linspace(0,1);
y=linspace(0,1);
[X,Y]=meshgrid(x,y); %griglia quadrata a partire dai vettori x e y

f1=X.*(X-1).*Y.*(Y-1);
subplot(1,2,1)
mesh(X,Y,f1)
subplot(1,2,2)
surf(X,Y,f1) %riempe anche l'interno

pause

f2=X.*(X-1).*sin(8*X).*Y.*(Y-1).*cos(8*Y);
figure
mesh(X,Y,f2)
figure
surf(X,Y,f2)