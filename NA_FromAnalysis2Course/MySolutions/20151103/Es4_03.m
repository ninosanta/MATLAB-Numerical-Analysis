% Esercitazione 4 - Es. 3

clear all
close all
clc

nmax=100;
toll=1e-10;

x0=0.5;

f=@(x) x + log(x);

%i) x + log(x) = 0 -> x = -log(x)
g=@(x) -log(x);
% g'(x) = -1/x
% |g'(0.5)| = 1/0.5 = 2 > 1 -> mi paspetto che il metodo non converga
[x,n]=punto_fisso(g,x0,nmax,toll)

pause

%ii)
% x = -log(x) -> log(x) = -x -> x = exp(-x)
g=@(x) exp(-x);
% g'(x) = -exp(-x) -> |g'(0.5)| = exp(-0.5) < 1 -> mi aspetto che converga
[x,n]=punto_fisso(g,x0,nmax,toll)
disp(f(x))

pause

%iii)
% x+x = x+exp(-x)
% 2x = x+ exp(-x) -> x = (x + exp(-x))/2
g=@(x) (x+exp(-x))/2;
% g'(x) = (1-exp(-x))/2
%|g'(0.5)| = (1-exp(-x))/2 = 0.1967 < 1 -> converge
[x,n]=punto_fisso(g,x0,nmax,toll)
disp(f(x))

pause

%iv) 
% 3/2x + x = 3/2x+exp(-x)
% 3/2x = 3/2x - x + exp(-x)
% x = x - (x - exp(-x))/(3/2)
g=@(x) x-(x-exp(-x))/(3/2);
% g'(x) = 1 - (1 + exp(-x)) / (3/2)
% |g'(0.5)| = abs(1- (1 + exp(-0.5))/(3/2) ) = 0.0710 
[x,n]=punto_fisso(g,x0,nmax,toll)
disp(f(x))

pause