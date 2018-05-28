% esercizitazione 1 es. 4
clear all
close all
clc

A = [1:6; 5:10; 9:14; 15:20]
size(A)

% a)
B = A(:,[end:-1:1])  % B = matrice A con colonne invertite

% b)
C = A(:,2:2:end)  % C = matrice fatta dalle colonne pari di a

% c) -> salta

% d)
E = A([1 4 3], [5 2])  % matrice formata dalle righe 1,4,3 
                       % e dalle colonne 5,2 di A

% e)
% Costruire il vettore formato dagli elementi diagonali a_(k,k)
% con k = 1,...,4 di A

% 1) Con for
v = zeros(1,4)  % lo inizializzo per risparmiare tempo nel for
for k=1:4
    v(k) = A(k,k);
end
disp(v)
% 2) Con il comando diag
v2 = diag(A)  % OSS: diag con input una matrice ti torna il vettore con le 
              %      entrate che sono quelle della sua diagonale.
              %      Con in input un vettore ti fa una matrice diagonale
              %      con entrate nulle e quel vettore sulla diagonale