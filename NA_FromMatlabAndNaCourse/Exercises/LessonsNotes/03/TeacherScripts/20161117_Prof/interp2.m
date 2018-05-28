% Rappresentazione grafica dei polinomi di Lagrange
clear
close all

% Scegliamo a piacere N nodi
x=1:20;
N=length(x);

xx=linspace(x(1),x(N));
i=4;
% i-esimo polinomio, relativo al nodo x(i)
l=1;
for k=1:N
   if k~=i
      l=l.*(xx-x(k))/(x(i)-x(k));
   end
end
plot(xx,l)
grid on
hold on
y=zeros(1,N);
y(i)=1;
plot(x,y,'or');