function mychol(A)
% funzione che applica l'algorimo di cholesky:
%   equivale alla funzione chol() di Matlab
n=size(A,1);  % ricavo la dimensione della matrice A. 
             % E' quadrata -> mi serve solo un numero dei due che da' il
             % comando size

% prima riga della matrice R
R(1,1)=sqrt(A(1,1));
R(1,2:n)=A(1,2:n)/R(1,1);

% Righe successive della matrice R
for i=2:n
  % i=j -> elemento r_(ii): diagonale
  R(i,i)=sqrt(A(i,i)-R(1:i-1,i)'*R(1:i-1,i));
  % i<j
  for j=i+1:n
    R(i,j)=(A(i,j)-R(1:i-1,i)'*R(1:i-1,j))/R(i,i);
  end
end

R                % mia matrice R
RR=chol(A)       % mtrice R ricavata con la funzione matlab di libreria