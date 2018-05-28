% Cholesky

clear all
close all
clc

%% esempio 1
A=matrix(4)    % simmetrica def pos
  % verifiche:
  norm(A-A')     % testo se è simmetrica
  eig(A)         % mostra autovalori, devono essere tutti positivi
  [L U P]=lu(A)  % si vede che P==I
% cholesky
R=chol(A)     % ottengo la matrice R triangolare superiore
norm(A-R'*R)  % ~eps

%% esempio 2
A=tridiag(-1,2,-1,5)  % Laplaciana, simmetrica def pos
[L U P]=lu(A)  % L avra' solamente la diagonale e la prima sottodiagonale
               % diverse da 0
               % U avra' i soli elementi della diagonale e della 
               % prima sopradiagonale !=0
               % -> cio' perche' e'una matrice a banda di ampiezza 3
R=chol(A)  % anch'esso con la sola prima sopradiagonale e la diagonale non
           % nulle