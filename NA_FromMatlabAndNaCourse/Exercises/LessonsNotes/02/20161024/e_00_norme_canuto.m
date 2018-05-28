clear
close all
clc


%% norma vettore:
x=[1 4 7]
p=inf;
norm(x,p)  % con p indice di cui voglio calcolare la norma. Tipo così 
           % calcola la norma ifinito. Di default calcola la norma 2
           % (euclidea) se non specifico nulla

%% norma matrice:
A=[ 1 3 5; -2 0 1]

norm(A,1)

norm(A,2)

norm(A, inf)