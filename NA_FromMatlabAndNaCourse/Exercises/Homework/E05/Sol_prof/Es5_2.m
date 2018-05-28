% costruzione e salvataggio della matrice A 
for i=1:10
    for j=1:10
        A(i,j)=max(i^2,j^2);
    end
end
AA=A;
% riduzione a forma di Hessemberg
A=hess(AA);
% calcolo della norma euclidea della prima sottodiagonale 
dm1=diag(A,-1);
ndm1=norm(dm1);
iter=0;
% ciclo QR
while ndm1 >= 1.e-6
    [Q R]=qr(A);
    A=R*Q;
    dm1=diag(A,-1);
    ndm1=norm(dm1);
    iter=iter+1;
end
% numero di iterazioni
iter
% autovalori approssimati in ordine crescente
autov_appr=sort(diag(A));
% autovalori 'esatti'
autov=eig(AA);
% massimo errore
norm(autov_appr-autov, inf)

