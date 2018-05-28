% esercizitazione 1 es. 3 
% questa variante utilizza il comando diag ed evita l'utilizzo del for

% v = [5 5 5]
% diag(v,0)  % diagonale principale
% diag(v,1)  % codiagonale superiore
% diag(v,-1)  % codiagonale inferiore
 
n=10;
d=5*ones(1,n); % vettore che finirà sulla diag. pricipale
cs=3*ones(1,n-1);  % vett. che finirò sulla codiagonale superiore
ci=-ones(1,n-1);  % vett. che fonirà sulla codiagonale inferiore
B=diag(d,0)+diag(cs,1)+diag(ci,-1);  % somma puntuale
disp(B)

% pongo uguale a 2  tutti gli elementi delle colonne 6 e 9 
% e delle righe 5 e 8
B(:,[6 9]) = 2;
B([5 8],:) = 2 ;
disp(B)