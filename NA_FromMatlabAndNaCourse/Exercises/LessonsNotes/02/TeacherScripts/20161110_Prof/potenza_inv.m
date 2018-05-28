n=10;
A=tridiag(-1,2,-1,n);
z=randn(10,1);
x=z/norm(z);

for i=1:20
    z=A\x;
    lambda=1/(z'*x)
    x=z/norm(z);
    pause
end

err=abs(lambda-min(eig(A)))