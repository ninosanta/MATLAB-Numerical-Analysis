function mycholbis(a)
% come mychol.m 
% ma senza trattare a parte il calcolo della prima riga di r

n=size(a,1)

r=zeros(n);

for i=1:n
    r(i,i)=sqrt(a(i,i)-r(1:i-1,i)'*r(1:i-1,i));
    for j=i+1:n
        r(i,j)=(a(i,j)-r(1:i-1,i)'*r(1:i-1,j))/r(i,i);
    end
end

r
R=chol(a);
norm(r-R)
