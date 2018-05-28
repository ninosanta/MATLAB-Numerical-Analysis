%Minimi quadrati
x=linspace(-3,3,31);
%Trasformo x in vettore colonna:
x=x';
f=inline('exp(sin(log(x.^2+1)))');
y=f(x);
A=[ones(31,1) sin(x) cos(x)];
B=A'*A;
d=A'*y;
a=B\d
