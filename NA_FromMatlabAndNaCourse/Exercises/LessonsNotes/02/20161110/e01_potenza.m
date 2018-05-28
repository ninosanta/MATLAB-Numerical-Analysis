% metodo della potenza: 
%   genera una successione di numeri che converge verso l'autovalore
%   massimo e una successione di vettori che converge verso il
%   corrispondente autovettore

clear all
close all 
clc 

n=10;
A=tridiag(-1,2,-1,n);
z=randn(10,1);  % matrice 10x1 contenete valori pseudocasuali presi dalla 
                % distribuzione normale standard
x=z/norm(z);  % normalizzo z
for i=1:1000
    z=A*x;
    lambda=x'*z  % autovalore che al passo i-esimo approssima l'autovalore 
                 % massimo di A
                 % quoziente di Rayleight    
    x=z/norm(z); % serve per il passo successivo
    %pause
end

eig(9)/eig(10)  % circa 1
err=abs(lambda - max(eig(A)))  % ~eps