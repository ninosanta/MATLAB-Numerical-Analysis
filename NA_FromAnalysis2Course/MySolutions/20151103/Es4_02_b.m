% Esercitazione 4 - Es. 2_b

clear all
close all
clc

nmax=100;
toll=1e-10;

g = @(x) (2*x.^3+4*x.^2+10)./(3*x.^2+8*x);
% risolve: x = (2x^3+4x^2+10)/(3x^2+8x)
% 3x^3+8x^2 = 2x^3+ 4x^2+10
% x^3+4x^2-10 = 0
f=@(x) x.^3 + 4*x.^2 - 10;

z=linspace(1,2);
figure
plot(z,g(z))
hold on
plot(z,z), grid on
x0=input('Scegli x0 = ');

[x,n]=punto_fisso(g,x0,nmax,toll)
disp(f(x))