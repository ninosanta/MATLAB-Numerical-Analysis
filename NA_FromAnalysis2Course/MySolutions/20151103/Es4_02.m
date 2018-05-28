% Esercitazione 4 - Es. 2

clear all
close all
clc

nmax=100;
toll=1e-10;

% f(x) = exp(x) - 2x^2 = 0
f = @(x) exp(x) - 2*x.^2;
% 2x^2 = exp(x) -> x^2 = exp(x)/2
% -> x = -sqrt(exp(x)/2)
g = @(x) -sqrt(exp(x)/2);

z=linspace(-2,2);
figure
plot(z,g(z))
hold on
plot(z,z), grid on
%x0=input('Scegli x0 = ');
x0=-1;

[x,n]=punto_fisso(g,x0,nmax,toll)
disp(f(x))