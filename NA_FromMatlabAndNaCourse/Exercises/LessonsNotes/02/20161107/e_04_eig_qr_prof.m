% esempi di convergenza del metodo QR
%   per il calcolo di TUTTI gli autovalori
clear all
close all
clc

n=3; 
AA=gallery(n)  % e' una matrice di default in matlab
% n=7; AA=matrix(n); AA=hess(AA);
% n=6; AA=tridiag(-3,0,3,n) 

% per questa matrice non simmetrica si generano: 
%   blocchetti 2x2 a cavallo della diagonale da cui si calcolano gli 
%   autovalori complessi coniugati
tol=1.e-8;
res=1; passo=0;  % res=1, ad cazzum...giusto per far partire il ciclo
A=AA;
pause
% osserva cosa accade sulla diagonale e sotto:
while res > tol
    [Q R]=qr(A);  % fattorizzazione QR di A
    A=R*Q         % la nuova matrice sara' R*Q
    pause
    B=tril(A)-diag(diag(A));  % matrice costituita dalla parte sottodiagon.
    res=norm(B);              % ne fo la norma
    passo=passo+1
end
% -> se A e' non simmetrica, questo metodo ci da' delle matrici che a poco
%    a poco tendono a diventare triangolari superiori e sulla diagonale
%    ci saranno TUTTI gli autovalori della matrice
% -> vedi pag. 27 metodo QR

% per confronto, si calcolano gli autovalori di AA
eigAA=eig(A)