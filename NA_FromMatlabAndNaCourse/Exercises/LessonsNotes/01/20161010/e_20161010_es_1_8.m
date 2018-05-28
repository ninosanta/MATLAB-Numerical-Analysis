% esercitazione 1 es. 8
close all
clear 
clc

x = linspace(0,1,200); % definisco l'asse delle ascisse
y = linspace(0,1,200); % asse ordinate

[X,Y] = meshgrid(x,y); % costruisco il reticolo di punti sul quadrato 
                       % -> definendo due matrici X e Y che sono le ascisse
                       % e le ordinate dei punti che giacciono all'interno 
                       % del quadrato.

% per capire meglio cosa fanno vedi pag. 1 appunti e fai
% x=linspace(0,1,3)
% y=linspace(0,1,3)
% [X, Y]=meshgrid(x,y)

f1 = X.*(X-1).*Y.*(Y-1);  % deve essere una matrice
subplot(1,3,1)
mesh(X,Y,f1)  % ascisse, ordinate, valore che la funzione f assume
              % mesh fa solo le righe colorate e vuole delle matrici

f2 = X.*(X-1).*sin(8*X).*Y.*(Y-1).*cos(8*Y);
subplot(1,3,2)
surf(X,Y,f2)  % colora anche il pezzo interno e vuole delle matrici

x = linspace(-pi,pi,200);
y = linspace(-pi,pi,200);
f3 = sin(X.*Y);
[X,Y] = meshgrid(x,y);
subplot(1,3,3)
mesh(X,Y,f3)