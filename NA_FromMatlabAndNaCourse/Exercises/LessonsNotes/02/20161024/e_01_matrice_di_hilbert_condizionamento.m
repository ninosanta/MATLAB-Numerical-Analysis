%% Studio del condizionamento della matrice di Hilbert
clear
close all
clc

hilb(4)  % matrice di Hilbert 4x4
cond(hilb(4),2)  % studia il condizionamento della matrice di Hilbert di 
                 % ordine 4 in norma 2, di default se non specifico il tipo
                 % di norma usa la 2
disp('eig:')
eig(hilb(4))  % calcola gli autovalori della matrice (quadrata) di Hilbert 
              % di ordine quattro
              
%% voglio vedere come cresce il numo di cond in questa particolare matrice
disp('condizionamenti delle matrici di Hilbert di ordine da 1 a 10:')
c=zeros(1,10);  % vettore in cui metto i numeri di cond
for n=1:10
    c(n)=cond(hilb(n));
end
disp(c')
% plotto con scala semilogaritmica perche' cresce in modo esponenziale:
semilogy(1:10,c, 'r', 'LineWidth', 2), grid on  
title('Crescita del numero di condizionamento delle Hilbert con l''ordine')

%% Esempio di malcodizionamento:
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%')
close all
clear
clc
% per avere idea del cattivo condizionamento:
%   prendiamo la matrice, ne facciamo l'inversa e vediamo come le
%   approssimazioni si riperquotono e si amplificano sui calcoli necessari 
%   al calcolo dell'inversa.
%   Normalmente, in precisione infinita, calcolando la matrice per la sua
%   inversa ci aspettiamo la matrice identità. Qua non sarà così:
format short e
for n=1:10
    A=hilb(n);
    B=inv(A);
    E=eye(n)-A*B;  % matrice dell'errore, tipo. Perché è data il risultato
                   % in precisione infinita di calcolo di A*inv(A), cioè 
                   % l'identità (eye(n)), meno il riultato ottenuto qui in  
                   % precisione finita con le approssimazioni varie
    ne=norm(E);    % norma 2 della matrice E: indica quanto è grande la 
                   % matrice dell'errore
    disp([n cond(A) ne])   % "stampa"
    pause
end 