% forma matriciale del
% procedimento di ortonormalizzazione di Gram-Schmidt
% di tre vettori

n=100;
v1=randn(100,1);
v2=randn(100,1);
v3=randn(100,1);
V=[v1 v2 v3];
rank(V)

A=V'*V;
R=chol(A);
C=inv(R);

W=V*C;
norm(W'*W-eye(3))
