function [I]=trapezic(f,a,b,N)
x=linspace(a,b,N+1);
h=(b-a)/N;
% Valuto l'integranda f nei nodi contenuti in x
y=feval(f,x);
I=h/2*(y(1)+2*sum(y(2:N))+y(N+1));