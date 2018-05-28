% mostra l'effetto del condizionamento
% nella risoluzione di un sistema lineare

for i=1:3
n=10^i;
% n=2+2^i;
x=rand(n,1);
A=matrix(n);
% A=hilb(n);
b=A*x;
xx=A\b;
err=norm(x-xx)/norm(x);
c=1/rcond(A);
[err c]
end