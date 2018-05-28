% REC 1h.07m
clear all
close all 
clc 

n=10;
A=tridiag(-1,2,-1,n);
z=randn(10,1);  % matrice 10x1 contenete valori pseudocasuali presi dalla 
                % distribuzione normale standard
x=z/norm(z);  % normalizzo z
for i=1:1000
    z=A\x;  % non molto powa  
    % poiche' definisco il reciproco dell'autovalore, per ricavarlo devo
    % fare:
    lambda=1/(x'*z)
    x=z/norm(z);
    %pause
end

err=abs(lambda-min(eig(A)))  % ~eps