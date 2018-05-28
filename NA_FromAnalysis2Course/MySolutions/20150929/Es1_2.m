% Esercitazione 1 - Esercizio 2

clear all
close all
clc

A=[1 2 3 4; 5 6 7 8; 9 10 11 12]; % 3x4
% a)
size(A) %dice la dimensione di A 
% b)
B=A.*A % moltiplica ogni entrata di A per se stessa (fa il quadrato delle entrate)
% c)
B=A*A % moltiplica A per A, ma il numero delle colonne è diverso dal numero delle righe!
% d)
B=A'*A % moltiplica la trasposta di A per A
% e)
B=A*A' % moltiplica A per la sua trasposta
% f)
A(1:2,4) % mostra le entrate in colonna 4 nelle righe dalla 1 alla 2
A(:,3) % tutte le entrate della terza colonna
A(1:2,:) % tutte le entrate delle righe 1 e 2 
A(:,[2 4]) % tutte le entrate delle righe in posizione 2 4 delle colonne 
A([2 3],:) % stesso discorso di sopra ma per le colonne
% g)
A(3,2)=A(1,1) % eguaglia l'entrata (3,2) di A all'entrata (1,1)
% h)
A(1:2,4)=zeros(2,1) % pone uguale a 0 le entrate delle righe 1,2 nella colonna 4
                    % ->vettore delle componenti di A v[(1,2),(2,4)]=z[0,0]
% i)
A(2,:)=A(2,:)-A(2,1)/A(1,1)*A(1,:) %entrata (2,1) / entrata (1,1) cioè 5/1=5
                                   %5*riga1, cioè vettore per scalare
                                   %riga2-5*riga1

