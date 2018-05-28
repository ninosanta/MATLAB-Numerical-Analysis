% Implementare il metodo di bisezione in una function, arrestando
% le iterazioni quando il residuo e sceso sotto una tolleranza fissata.
% Applicarlo agli zeri della funzione f(x)=sqrt(x^2+1) + x^3 + 4x^2 +1
clear
close all
clc

f=@(x)sqrt(x.^2+1)+x.^3+4*x.^2+1;
% studio la funzione:
ezplot(f), grid on % siccome non so che a e b mettere, plotto con questo
                   % comando e vedo. 
                   % explot di default mostra in ascisse tra -2pi e 2pi. 
                   % Si vede che la funzione ha un solo zero tra -5 e -4
a=-5; b=-4;
toll=1.0e-8;
[x]=bisezione(f,a,b,toll)  % se voglio k in una variabile lo passo come
                           % secondo parametro
hold on
plot(x,f(x),'o','MarkerSize',2)