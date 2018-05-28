% Esercitazione 2 - Es. 1

close all 
clear all
clc

format long e

n=20;
A=hilb(n); %matrice di Hilbert di ordine n
x_sol=ones(n,1);
b=A*x_sol;

x=A\b; %risolve il sistema lineare AX=B

condizionamento=cond(A);

err=norm(x-x_sol)/norm(x,2); %errore in norma 2 o euclidea

disp([n condizionamento err])