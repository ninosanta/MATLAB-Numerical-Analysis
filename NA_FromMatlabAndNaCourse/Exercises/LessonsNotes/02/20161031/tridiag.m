function mat=tridiag(a,b,c,n)
% Costruisce una matrice tridiagonale di ordine n 
% con i valori costanti a,b,c sulle tre diagonali
d0=ones(n,1);
d1=ones(n-1,1);  % NOTA la dimensione della sopra/sottodiagonale
% diag prende un vettore e lo ietta sulla diagonale della matrice
% passata come secondo parametro:
%   0 indica la diag. princip (default), -1 indica la prima sottodiagonale, 
%   1 indica la seconda diagonale
mat=a*diag(d1,-1)+b*diag(d0)+c*diag(d1,1);

% A=tridiag(-1,2,-1,5) e' un Laplaciana: l'elemento sulla diagonale è pari 
%                                        alla somma degli elementi
%                                        adiacenti non diagonali, cambiata
%                                        di segno