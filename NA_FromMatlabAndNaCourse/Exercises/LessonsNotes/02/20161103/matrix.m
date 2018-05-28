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