function [x,k] = jacobi(A,b,x0,itermax,toll)
n = length(b);
D = diag(diag(A));
C = A-D;
B = eye(n)-inv(D)*A;
rho = max(abs(eig(B)))
for k = 1:itermax
    x = D\(b-C*x0);
    if norm(x-x0,inf) <= toll*norm(x,inf)
       return
    end   
    x0 = x;
end    