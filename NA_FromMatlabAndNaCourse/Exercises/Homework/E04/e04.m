% Se A e una matrice a banda (per esempio tridiagonale, pentadiagonale), 
% che struttura hanno i suoi fattori Q ed R?

clear 
close all
clc

format short

% tridiagonale:
n=2;
A=zeros(n);
A=diag(-n:n) + diag(ones(2*n,1),1) + diag(ones(2*n,1),-1);

[Q R]=qr(A)
% Q risulta avere forma di Hessemberg (tutte le sottodiagonali nulle tranne
% la prima) mentre R ha tre diagonali non nulle (la diagonale principale e 
% le prime due sopradiagonali).

% pentadiagonale:
n=3;
A=zeros(n);
A=diag(-n:n) + diag(ones(2*n,1),1) + diag(ones(2*n,1),-1) + ...
  diag(ones(2*n-1,1),2) + diag(ones(2*n-1,1),-2);
[Q R]=qr(A)

% Q risulta avere tutte le sottodiagonali nulle tranne la prima e 
% la seconda, mentre R ha cinque diagonali non nulle (la diagonale
% principale e le prime quattro sopradiagonali).