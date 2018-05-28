% Esercitazione 4 - Es. 1

clear all
close all 
clc

nmax=100; %numero massimo di iterazioni
toll=1e-10; %tolleranza
x=linspace(-2,2);

%1.
a=2;
f = @(x)  x.^2 - a;
fd = @(x) 2*x;
plot(x,f(x))
hold on 
%fo pure una retta y=0 per regolarmi
plot(x,zeros(size(x))), grid on

x0=input('Scegli x0 = ');
[alpha,n]=newton(f, fd, x0, nmax, toll)

%2.
f = @(x)  x.^3 - x - 1;
fd = @(x) 3*x.^2 - 1;
plot(x,f(x))
hold on 
%fo pure una retta y=0 per regolarmi
plot(x,zeros(size(x))), grid on

x0=input('Scegli x0 = ');
[alpha,n]=newton(f, fd, x0, nmax, toll)