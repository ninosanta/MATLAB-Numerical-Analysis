% Si compone di due cicli, dopodiche' la definizione puo' cambiare.
% La matrice è simmetrica e si possono avere tre possibili definizioni:
%   1) con i reciproci del massimo tra i e j
%   2) con i reciproci del massimo tra i e j
%   3) a(i,j)=j/min(i,j)
% Sono tutte matrici non singolari

function a=matrix(n)
% definisce una matrice quadrata di ordine n
% per fare esperimenti numerici
for i=1:n
    for j=1:n
         a(i,j)=1/max(i,j);
%         a(i,j)=1/min(i,j);
%          a(i,j)=j/min(i,j);
        
    end
end