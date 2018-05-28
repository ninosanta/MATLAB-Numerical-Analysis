% esempi di convergenza del metodo qr
% per il calcolo di tutti gli autovalori
clear all

 n=3; AA=gallery(n);
% n=7; AA=matrix(n); AA=hess(AA);
% n=6; AA=tridiag(-3,0,3,n) % per questa matrice non simmetrica si generano 
%   blocchetti 2x2 a cavallo della diagonale da cui si calcolano gli autovalori 
%   complessi coniugati

tol=1.e-8;

res=1; k=0;
A=AA;
%pause

while res > tol
    [Q R]=qr(A);
    A=R*Q
    pause
    B=tril(A)-diag(diag(A));
    res=norm(B)
    k=k+1
end

% per confronto, si calcolano gli autovalori di AA

eigAA=eig(A)

