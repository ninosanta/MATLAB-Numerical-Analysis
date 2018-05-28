disp('***********************************************')
disp('*****************fac_4_1***********************')
disp('***********************************************')
close all
clear all
toll = 1.0e-12;
v = 1000;
M = 6000;
n = 5;
f = @(I) M-v*(1+I)./I.*((1+I).^n-1);
fd = @(I) -v*((-1)./I.^2.*((1+I).^n-1)+n*(1+I)./I.*(1+I).^(n-1));

xg = linspace(0,0.1);
plot(xg,f(xg),'b',[xg(1),xg(end)],[0 0],'r')
x0 = input('fornisci il valore iniziale: x0=')
pause
x = x0-f(x0)/fd(x0);
iter = 1;
while abs(x-x0) >= toll
    x0 = x;
    x = x0-f(x0)/fd(x0);
    iter = iter+1;
end
iter,x
%Il tasso d'interesse è pari al 6.14%

disp('***********************************************')
disp('*****************fac_4_2***********************')
disp('***********************************************')
close all
clear all
toll = 1.0e-12;
a = 0.401;
b = 42.7*10^(-6);
N = 1000;
T = 300;
p= 3.5*10^7;
k = 1.3806503*10^(-23);
f = @(V) (p+a*(N./V).^2).*(V-N*b)-k*N*T;
fd = @(V) a*(-2)*N^2./(V.^3).*(V-N*b)+(p+a*(N/V).^2);
%uno studio grafico rivela che f(V) presenta uno zero semplice 
%fra 0.01 e 0.06
xg = linspace(0.01,0.06);
plot(xg,f(xg),'b',[xg(1),xg(end)],[0 0],'r')
x0 = input('fornisci il valore iniziale: x0=')
x = x0-f(x0)/fd(x0);
iter = 1;
while abs(x-x0) >= toll
    x0 = x;
    x = x0-f(x0)/fd(x0)
    iter = iter+1;
end
iter
%[matzero,matiter]=fzero(f,0.1)
%Il volume occupato dalle 1000 molecole è pari a circa 0.0427m^3

