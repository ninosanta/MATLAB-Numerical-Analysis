% Esercitazione 1 - Esercizio 5

close all %chiude tutte le immagini 
clear all 
clc

x1=linspace(0,pi/4); %se non do il terzo parametro prende di default 100 punti
f1=tan(x1);
plot(x1,f1)

x2=linspace(pi/4,pi/2); %nulla in pi/2, perché vale inf
f2=tan(x2);
%plot(x2,f2)
semilogy(x2,f2) %plot logaritmico su asse y più conveniente del plot 
                %in quanto, in questo caso, mostra di più
pause
                
x3=linspace(0.1,100,500);
f3=sqrt((100*(1-0.01*x3.^2).^2+0.02*x3.^2)...
    ./((1-x3.^2).^2+0.1*x3.^2));
figure
%plot(x3,f3)
loglog(x3,f3) %su entrambi gli assi, si vedono max e min
