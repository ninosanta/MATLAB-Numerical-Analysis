% Esercitazione 3 - Es. 1

clear all
close all
clc

%definisco la fz di Runge
f = @ (x) 1./(1+x.^2);

%definizione intervallo rappresentazione
a=-5; %estremo inf
b=5;  %estremo superiore
%a=1;
%b=2; %errore ordine 10^(-5)
z=linspace(a,b); %vettore con 100 valori compresi tra a e b

%rappresento
fz=f(z); %valutiamo la funzione di Runge
plot(z,fz) %grafico di runghe

n=5; %grado polinomio interpolante

for n=[5 9 13]; 

% nodi di interpolazione equispaziati
%x=linspace(a,b,n+1); 

%nodi Chebyshev su [-1,1]
t=-cos((2*(1:n+1)-1)/(n+1)*pi/2); %no punti alle operazioni in quanto il vettore è unico e gli altri sono scalari
%shiftiamo i nodi in [a b]
x=(b-a)/2*t+(b+a)/2

y=f(x); 

hold on
plot(x,y,'g*')

%costruzione il polinomio interpolante i nodi verde
c=polyfit(x,y,n); %coefficienti del polinomio
p=polyval(c,z); % valutazione polinomio in z (100 punti)

plot(z,p,'r') %rappresentazione polinomio di grado 5 passante per i nodi x y

disp(norm(p-fz, 'inf')) %errore approssimazione: calcolo e stampa errore massimo con norma inf

pause
end