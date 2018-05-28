% Esercitazione 3 - Es. 6

close all 
clear all
clc

x=0:5;
y=2.^x; %vettore con potenze di 2

%disp(y');

n=1; %retta regressione
c=polyfit(x,y,n);
z=[-1 6];
p=polyval(c,z);

plot(x,y,'g*',z,p,'b')
p1=polyval(c,x);
residuo1=sum((p1-y).^2);

n=2; %parabola
c=polyfit(x,y,n);
z=linspace(-1,6);
p=polyval(c,z);

hold on
plot(z,p,'r')
p2=polyval(c,x);
residuo2=sum((p2-y).^2);

n=2; %somma esponenziale di ordine 2
c=polyfit(exp(x), y, n);
z=linspace(-1,6);
p=polyval(c,exp(z));
plot(z,p, 'k')
pexp=polyval(c, exp(x));
residuoexp=sum((pexp-y).^2);

disp([[1 2 exp(1)]' [residuo1 residuo2 residuoexp]'])