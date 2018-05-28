close all
clear all
clc

f = @(x) sin(x);

a=0;
b=pi;
z=linspace(a,b);
fz=f(z);

plot(z,fz)

n=9;

xEQ=linspace(a,b,n+1);
yEQ=f(xEQ);

hold on
plot(xEQ,yEQ,'g*')

cEQ=polyfit(xEQ,yEQ,n);
pEQ=polyval(cEQ,z);

plot(z,pEQ,'g')

disp(norm(pEQ-fz,'inf'))

%nodi di Chebyshev su [-1 1]
t=-cos((2*(1:n+1)-1)/(n+1)*pi/2);
%shiftiamo i nodi in [a b]
xC=(b-a)/2*t+(b+a)/2;

yC=f(xC);

plot(xC,yC,'ro')

cC=polyfit(xC,yC,n);
pC=polyval(cC,z);

plot(z,pC,'r')

disp(norm(pC-fz,'inf'))

errEQ=abs(pEQ-fz);
errC=abs(pC-fz);

figure
plot(z,errEQ,'m')
hold on
plot(z,errC,'k')
legend('nodi equispaziati','nodi di Chebyshev')