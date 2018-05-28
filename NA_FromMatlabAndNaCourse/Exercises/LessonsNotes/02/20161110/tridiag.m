function mat=tridiag(a,b,c,n)
% costruisce una matrice tridiagonale di ordine n
% con i valori costanti a, b, c sulle tre diagonali
d0=ones(n,1);
d1=ones(n-1,1);
mat=a*diag(d1,-1)+b*diag(d0)+c*diag(d1,1);

