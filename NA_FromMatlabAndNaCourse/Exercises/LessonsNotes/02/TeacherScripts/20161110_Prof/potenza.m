n=10;

z=randn(10,1);
x=z/norm(z);

for i=1:100
    z=A*x;
    lambda=z'*x
    
    x=z/norm(z);
    pause
end

err=abs(lambda - max(eig(A)))