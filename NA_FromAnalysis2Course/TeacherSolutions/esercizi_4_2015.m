%
disp('***********************************************')
disp('*****************esercizio_4_1*****************')
disp('***********************************************')

close all
clear all
nmax = 100;
toll = 1.0e-10;
%
disp('****************funzione 1****************') 
f = inline('x.^2-2');
fd = inline('2*x');
figure
x = linspace(-2,2);
plot(x,f(x),'b',x,0*x,'r')
grid on
x0 = input('scegli x0=')
[alpha,n] = newton(f,fd,x0,nmax,toll)
pause
%
disp('****************funzione 2****************')
f = inline('x.^3-x-1');
fd = inline('3*x.^2-1');
figure
x = linspace(-2,2);
plot(x,f(x),'b',x,0*x,'r')
grid on
x0 = input('scegli x0=')
[alpha,n] = newton(f,fd,x0,nmax,toll)
pause
%
disp('****************funzione 3****************')
f = inline('(x-2.^(-x)).^3');
fd = inline('3*(x-2.^(-x)).^2*(1+2.^(-x).*log(2))');
figure
x = linspace(-2,2);
plot(x,f(x),'b',x,0*x,'r')
grid on
x0 = input('scegli x0=')
[alpha,n] = newton(f,fd,x0,nmax,toll)
pause
%
disp('****************funzione 4****************')
f = inline('exp(x)-2*x.^2');
fd = inline('exp(x)-4*x');
figure
x = linspace(-2,2);
plot(x,f(x),'b',x,0*x,'r')
grid on
x0 = input('scegli x0=')
[alpha,n] = newton(f,fd,x0,nmax,toll)
pause

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('***********************************************')
disp('*****************esercizio_4_2*****************')
disp('***********************************************')

close all
clear all

nmax = 100;
toll = 1.0e-10;
disp('****************funzione 1****************')
g = inline('-sqrt(exp(x)/2)');
figure
x = linspace(-2,2);
plot(x,g(x),'b',x,x,'r')
grid on
x0 = input('scegli x0=')
[alpha,n] = punto_fisso(g,x0,nmax,toll)
pause
%
disp('****************funzione 2****************')
g = inline('(2*x.^3+4*x.^2+10)./(3*x.^2+8*x)');
figure
x = linspace(1,2);
plot(x,g(x),'b',x,x,'r')
grid on
x0 = input('scegli x0=')
[alpha,n] = punto_fisso(g,x0,nmax,toll)
pause

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('***********************************************')
disp('*****************esercizio_4_3*****************')
disp('***********************************************')

close all
clear all
nmax = 100;
toll = 1.0e-10;
%
disp('****************funzione 1****************')
g = inline('-log(x)');
figure
x = linspace(0.2,0.8);
plot(x,g(x),'b',x,x,'r')
grid on
x0 = input('scegli x0=')
[alpha,n] = punto_fisso(g,x0,nmax,toll)
pause
%
disp('****************funzione 2****************')
g = inline('exp(-x)');
figure
x = linspace(0.2,0.8);
plot(x,g(x),'b',x,x,'r')
grid on
x0 = input('scegli x0=')
[alpha,n] = punto_fisso(g,x0,nmax,toll)
pause
%
disp('****************funzione 3****************')
g = inline('(x+exp(-x))/2');
figure
x = linspace(0.2,0.8);
plot(x,g(x),'b',x,x,'r')
grid on
x0 = input('scegli x0=')
[alpha,n] = punto_fisso(g,x0,nmax,toll)
pause
%
disp('****************funzione 4****************')
f = inline('x+log(x)');
fd = inline('1+(1/x)');
figure
x = linspace(0.2,0.8);
plot(x,f(x),'b',x,0*x,'r')
grid on
x0 = input('scegli x0=')
[alpha,n] = newton(f,fd,x0,nmax,toll)
pause
%
disp('****************funzione 5****************')
g = inline('x-(x-exp(-x))/(3/2)');
figure
x = linspace(0.2,0.8);
plot(x,g(x),'b',x,x,'r')
grid on
x0 = input('scegli x0=')
[alpha,n] = punto_fisso(g,x0,nmax,toll)
