
for i=1:100
    for j=1:100
         b(i,j)=(i+j)/(i^2+j^2);
    end
end
a=b+eye(100);
R=chol(a);
prod(diag(R))
