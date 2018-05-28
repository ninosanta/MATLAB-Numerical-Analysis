% Esercitazione 2 - Es. 4

close all 
clear all
clc

B=rand(5,5);
det(B)

A=B'*B;
isequal(A,A') %boolean output; 0 false; 1 true
det(A) %det != 0 -> non singolare -> invertibile -> no righe nulle o colonne
eig(A) %autovalori > 0 -> definita positiva
R=chol(A) %decomposizione di Choleski: A= R'*R
max(max(R'*R-A))

%inv(A) = inv(R'*R)
%       = inv(R)*inv(R')
%       = inv(R)*inv(R)'
invR=inv(R); %salvo invR per fare solo una volta inv(R)
invA=invR*invR'
inv(A)
max(max(invA-inv(A)))

%risoluzione sistema lineare Ax=b con b=A*ones(5,1)
b=sum(A,2);
%Choleski: Ax=b -> R'Rx=b
%->R' y = b , Rx=y
y=R'\b;
x=R\y;
disp(x)%se è unitario Choleski ha risolto bene 