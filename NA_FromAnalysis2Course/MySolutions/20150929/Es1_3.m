% Esercitazione 1 - Esercizio 3

clear all % cancella tutte le variabili
close all
clc % pulire linea di comando
% f9 per eseguirlo sotto

d = ones(10,1) % vettore di 1 di lunghezza 10
B1 = diag(5*d) % mettiamo sulla diagonale un vettore di 5
d(end) = [] % eliminiamo un elemento da d -> d=9x1 
B2 = diag(-1*d, -1) % matrice di 0 e -1 sulla diagonale inferiore
B3 = diag(3*d, 1) % matrice di 0 e 3 sulla diagonale superiore
B = B1+B2+B3 % la matrice B ottenuta come somma dei termini calcolati
disp(B) % mostra il risultato

B([5 8],[6 9]) = 2 % cambiamo le componenti (5,6) (8,6) (5,9) e (8,9)
                   % cioè nelle righe [5,8] e nelle colonne [6,9]
disp(B) % mostra B finale