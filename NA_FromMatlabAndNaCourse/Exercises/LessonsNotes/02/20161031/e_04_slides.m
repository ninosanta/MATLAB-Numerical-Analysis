% Esempio delle slides pag. 50 
clear 
close all
clc

A=[1 0 -2 1; 0 2 0 -1; 2 -1 1 -2; 0 2 1 1];
b=[0 1 0 4]';   % deve essere un vettore colonna!

%% risoluzione rapida Gauss + Pivoting
x=A\b

%% risoluzione con fattorizzazione PA=LU
[L U P] = lu(A)
P*A-L*U  % dovrebbe dare 0
% slide 35: 
pb=P*b  % vettore
y=L\pb  % forward sost.
x=U\y   % backward sost.

%% con termine noto ad cazzum
c=[5 -3 2 -1]';
B=[b c];  % genera una matrice contenente i due vettori dei termini noti
X=A\B     % matrice che conterrà la soluzione di prima e quella nuova 
          % corrispondente al nuovo vettore dei termini noti
  % OSS: e' un ottimo metodo perché fattorizza la matrice A una sola volta 
  
%% OSS: inversa
I=eye(4)
Z=A\I   % risolve tanti sistemi lineari Ax=b con b=I e cioè con vettori dei
        % termini noti le colonne della matrice identità -> trovo l'inversa
inv(A)  % comando Matlab di default: fa Z=A\I tenendo conto degli zeri