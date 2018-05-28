% Esercitazione 2 - Es. 7

close all 
clear all
clc

toll=1e-7;
itermax=100;

A1=[1 -2 2; -1 1 -1; -2 -2 1]
b1=sum(A1, 2);

n=length(b1);
x0=zeros(n,1); 

disp('jacobi')
tic %fa partire un contatore di tempo
[x,iter]=jacobi(A1,b1,itermax,toll,x0)
toc % interrompe il contatore
dis('gauss_seidel')
tic
[x,iter]=gauss_seidel(A1,b1,itermax,toll,x0)
toc