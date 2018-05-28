% Esercitazione 2 - Es. 5

close all 
clear all
clc

A=rand(6,6); 
det(A)

[L,U,P]=lu(A); %decomposizione  PA=LU

b=sum(A,2);
x=zeros(6,4); %serve per salvare le soluzionje di quattro sistemi lineari che andrò a risolvere
              %su ciascuna colonna sarà effettuato il salvataggio
% A x = b --> P A x = P b --> L U x = P b
% Ly = Pb , Ux = y -> entrambi i sistemi hanno la matrice tridiagonale (sup
% e inf) e possono essewre risolti in modo efficiente

y=L\(P*b);
x(:,1)=U\y;

%soluzioni successive
i=2;
b=b/i; %aggiorno b
y=L\(P*b);
x(:,i)=U\y; %riempo la seconda colonna

for i=2:1:4 %ciclo con i=2,3,4
    b=b/i;  %aggiorno b dal precedente
    y=L\(P*b);
    x(:,i)=U\y; %soluzione nella i-esima colonna
end
disp(x)