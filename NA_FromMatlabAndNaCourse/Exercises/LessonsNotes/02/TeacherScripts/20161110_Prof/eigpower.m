

% determina l'autovalore di una matrice A piu' vicino a 2.1 mediante potenza inversa con
% shift; si prescrive la tolleranza tol dell'errore tra due iterate
% successive; si controlla il residuo finale

tol=1.e-10

n=100;
A=tridiag(-1,2,-1,n);
z=rand(n,1); x=z/norm(z);
err=1; lambda_old=0;

AA=A-2.1*eye(n);

while abs(err) > tol
z=AA\x; mu=x'*z; x=z/norm(z); lambda_new=1/mu+2.1

err=(lambda_old-lambda_new)/lambda_new
lambda_old=lambda_new;
end

lambda=lambda_old
res=norm(A*x-lambda*x)

% per confronto, si possono calcolare gli autovalori di A
eigA=eig(A);

