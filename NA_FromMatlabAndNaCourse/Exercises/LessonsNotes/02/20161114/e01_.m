% decomposizione ai valori singolari SVD

clear all
close all
clc 

%% SVD
format short
A=matrix(6)  % simm. e definita positiva
s=svd(A);  % mi aspetto il vettore dei valori singolari di A
           % essendo A simm e def positiva, i valori singolari e gli
           % autovalori coincidono
disp([eig(A), s])  % eig usa l'ordine crescente, in S sono in ordine dec.

[U S V]=svd(A)  % comando completo: 
                % genera tre matrici (anche S) e i valori singolari sono in
                % ordine decrescente sulla diagonale della matrice S
                % V, ortogonale, contiene gli autovettori di A'A
                % U, ortogonnale, contiene gli autovettori di AA'
                % OSS: qua A'A=AA'=A^2 perche' simm def pos
diag(S)  % da' l'elenco dei valori singolari; estratti dalla diagonale di S
U*S*V'  % pari ad A, numericamente permettendo

%% prova di ortogonalita'
U'*U  % mi aspetto sia ~la matrice identita'; poiche' U è ortogonale
norm(U'*U-eye(6))  % mi aspetto un valore piccolissimo ~ ordine macchina
norm(U-V) % anche qua; perché essendo A simm e def pos U=V

%% B non quadrata
B=randn(6,3);  % numeri pseudo casuali con distribuzione gaussiana
%eig(B)  % mi aspetto un errore, perche' chiedo gli autovalori di una 
         % matrice rettangolare
         % non ha senso di parlare di autovalori per questa matrice 
         %  -> intervengono i valori singolari
[U S V]=svd(B)  % U=6x6 ortogonale, S=6x3 e V=3x3 ortogonale
                % -> rango 3 -> autovalori diversi da 0
diag(S)  % valori singolari estratti da S
rank(B)  % cvd
% OSS - condizionamento: 
%  -> ben condizionata se i valori singolari hanno circa lo stesso ordine
%     di grandezza