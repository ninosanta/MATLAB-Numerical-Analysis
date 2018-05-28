% Esercitazione 3 - es.5
clear
close all
clc

% Costruire la matrice A di ordine n = 10 i cui elementi sono aij = |i − j|
% Trovare per quali valori del parametro reale p la matrice B = A + p*I 
% risulta simmetrica e definita positiva.


n=10;
A=zeros(n,n);
I=eye(n,n);

for i=1:n
  for j=1:n
    A(i,j)=abs(i-j);
  end
end
format short
A  % simmetrica

% Prove:
p=1;
B=A+p*I;
B
[eig(A),eig(B)]
% Noto che gli autovalori di B sono quelli di A piu' quelli sulla diagonale
% della matrice p*I

% Evidenzio l'autovalore minimo di A
min(eig(A))  % -20.431729094530702

% Per far si' che B sia definita positiva p deve essere minimo >
% min(eig(A)))
p=abs(min(eig(A)))+eps;
B=A+p*I;
B
format long
[eig(A),eig(B)]