function confronto_luqr(n,sigma)
% confronta le fattorizzazioni LU e QR 
% nella soluzione di un sistema lineare
% n = ordine della matrice
% sigma = parametro, piu' e' piccolo 
%         piu' la matrice e' malcondizionata

%A=matrix(n);
A=randn(n);
x=randn(n,1);
b=A*x;
m=floor(n/2);

B=A; B(m,:)=sigma*A(m,:)+A(1,:);
c=b; c(m)=sigma*c(m)+c(1);

tic
[L U P]=lu(B);
ylu=L\(P*c); xlu=U\ylu;
toc
err_lu= norm(x-xlu)/norm(x);



tic
[Q R]=qr(B);
xqr=R\(Q'*c);
toc
err_qr= norm(x-xqr)/norm(x);


[cond(B) err_lu err_qr]



