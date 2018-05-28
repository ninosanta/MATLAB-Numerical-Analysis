% Esercitazione 6 - es.04
%   valori singolari: esercizio praticamente inutile va'

clear
close all
clc

m=8; n=4;

A=zeros(m,n)+ [diag(3*ones(n,1),0); zeros(m-n,n)] + ...
              [diag(-1*ones(n-1,1),1); zeros(m-n,n)] + ...
              [diag(-1*ones(n-1,1),-1); [0*(1:n-1) -1]; zeros(m-n-1,n)]

[U S V]=svd(A);

rank(A)

sigma=diag(S)  % valori singolari: sono 4 diversi da zero -> come il rango
condA=sigma(1)/sigma(end)  % numero di condizionamento in norma 2