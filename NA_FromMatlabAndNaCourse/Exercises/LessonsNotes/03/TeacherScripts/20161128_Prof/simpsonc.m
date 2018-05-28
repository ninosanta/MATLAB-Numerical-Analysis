function [I]=simpsonc(f,a,b,N)
x=linspace(a,b,2*N+1);
h=(b-a)/N;
% Valuto l'integranda f nei nodi contenuti in x
y=feval(f,x);
I=h/6*(y(1)+2*sum(y(3:2:2*N-1))+4*sum(y(2:2:2*N))+y(2*N+1));