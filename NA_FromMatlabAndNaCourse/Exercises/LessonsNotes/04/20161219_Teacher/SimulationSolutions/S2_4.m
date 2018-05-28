A=[2 -3 4 -1 8 6; 6 2 1 1 1 7; 4 5 -3 2 -7 1]
z=[0.9341 1.0549 0.1208]'

% z ha ordine 3 quindi puo' essere solo appartenente all'immagine oppure
% ortogonale ad essa

[U S V]=svd(A)

% dall'ispezione di S, si vede che im(A) e' generata da U(:,1) e U(:,2)
% mentre U(:,3) e' ortogonale all'immagine

U(:,3)'*z

% dunque z appartiene all'immagine.
% Infatti:

c1=U(:,1)'*z
c2=U(:,2)'*z

norm(z-(c1*U(:,1)+c2*U(:,2)))