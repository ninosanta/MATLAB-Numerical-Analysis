% Esercitazione 3 - es.1 + es.2
clear
close all
clc

%% es.1)
n=5;
A1=zeros(n,n);
A2=zeros(n,n);
A3=zeros(n,n);

% definisce una matrice quadrata di ordine n
% per fare esperimenti numerici 
for i=1:n
  for j=1:n
    A1(i,j)=max(i,j);
    A2(i,j)=j*max(i,j);
    A3(i,j)=min(i,j-1);
  end
end

A1, A2, A3
pause

%% es.2
%a)
D = diag(diag(A1))  % potevo fare tril(triu(A))
pause

%b)
L=tril(A1)
pause

%c)
d=det(A1)
r=rank(A1)
pause

%d)
a=eig(A1)
pause

%e)
R=inv(A1)
pause

%f)
eig(inv(A1))==1./eig(A1)
pause

%h)
a1=norm(A1,1)
a2=norm(A1)
ainf=norm(A1, inf)
pause

%i)
if(det(A1)~=0)
  cond(A1, 2)
end