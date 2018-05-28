% calcolo della matrice A
A=tridiag(1,4,1,10);
% inizializzazione
z=randn(10,1);
z(1:2:10)=-1; % vettore iniziale per punto c)
z(2:2:10)=+1  % vettore iniziale per punto c)
lambda_old=2;
lambda_new=1;
iter=0;
% ciclo di potenza inversa
reldiff=1;
while abs(reldiff)>=1.e-8
 x=z/norm(z);
 z=(A-3*eye(10))\x;
 mu=x'*z;
 
 lambda_new=3+1/mu;
 reldiff=(lambda_old-lambda_new)/lambda_new;
 iter=iter+1;
end
lambda=lambda_new
iter
    