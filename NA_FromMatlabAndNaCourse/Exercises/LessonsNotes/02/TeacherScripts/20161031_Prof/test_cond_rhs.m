function test_cond_rhs(n)
% mostra l'effetto del condizionamento
% quando si perturba il secondo membro di un sistema lineare

x=(1:n)';
A=matrix(n);
%A=hilb(n);
b=A*x;
x=A\b;
bb=b;
n2=floor(n/2);
bb(n2)=bb(n2)+10^(-5);
xx=A\bb;
errb=norm(b-bb)/norm(b)
errx=norm(x-xx)/norm(x)
ratio=errx/errb
condA=cond(A)
