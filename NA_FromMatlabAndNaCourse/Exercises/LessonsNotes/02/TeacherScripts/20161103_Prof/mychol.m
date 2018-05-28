function mychol(a)
% effettua il calcolo del fattore r triangolare superiore
% nella fattorizzazione di Choleski a=r'*r 
% di una matrice simmetrica e definita positiva,
% e confronta con il risultato del comando chol

n=size(a,1)

r(1,1)=sqrt(a(1,1));
r(1,2:n)=a(1,2:n)/r(1,1);

for i=2:n
    r(i,i)=sqrt(a(i,i)-r(1:i-1,i)'*r(1:i-1,i));
    for j=i+1:n
        r(i,j)=(a(i,j)-r(1:i-1,i)'*r(1:i-1,j))/r(i,i);
    end
end

r
R=chol(a);
norm(r-R)
