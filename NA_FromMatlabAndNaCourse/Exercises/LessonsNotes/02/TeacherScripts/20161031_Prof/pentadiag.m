function mat=pentadiag(a,b,c,d,e,n)
% costruisce una matrice pentadiagonale di ordine n
% con i valori costanti a, b, c, d, e sulle cinque diagonali
d0=ones(n,1);
d1=ones(n-1,1);
d2=ones(n-2,1);
mat=a*diag(d2,-2)+b*diag(d1,-1)+c*diag(d0)+d*diag(d1,1)+e*diag(d2,2);

