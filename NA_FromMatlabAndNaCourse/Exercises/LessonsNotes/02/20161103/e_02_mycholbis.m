function mycholbis(A)
% Cholesky, mia implementazione:
%   qui non distinguo i casi i=1 e cioe' dove ho un vettore vuoto
n=size(A,1);  % dimensione matrice
R=zeros(5);   % alloco una zona di memoria per la matrice R -> ciò permette
              % di questa "ottimizzazione"

% prima riga della matrice R
% R(1,1)=sqrt(A(1,1));
% R(1,2:n)=A(1,2:n)/R(1,1);

% Tutte le righe della matrice R:
for i=1:n
  % elemento r_(ii): diagonale
  R(i,i)=sqrt(A(i,i)-R(1:i-1,i)'*R(1:i-1,i));
  % i<j
  for j=i+1:n
    R(i,j)=(A(i,j)-R(1:i-1,i)'*R(1:i-1,j))/R(i,i);
  end
end

R
RR=chol(A)