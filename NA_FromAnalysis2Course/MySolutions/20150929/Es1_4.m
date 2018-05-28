% Esercitazione 1 - Esercizio 4

clear all 
close all 
clc

A = [1:4; 2:5; 3:6; 4:7]; % definizione matrice come vettori riga incolonnati
                          % colonna1: numeri da 1 a 4 ecc...
lambda = 10;
p1 = eye(4,4); % matrice identità 4x4
p1(2,2) = lambda; % sostituiamo lambda alla matrice identità in posizione (2,2)
p2 = eye(4,4);
p2(: , [2 4]) = p2(: , [4 2]); % p2 matrice identità con righe 2 e 4 scambiate
p3=eye(4,4) ;
p3(4,2) = lambda ; % matrice identità con lambda in (4,2)

% a)
L1=p1*A ;
disp(L1)

R1=A*p1;
disp(R1)

% b)
L2=p2*A;
disp(L2)

R2=A*p2;
disp(R2)

% c)
L3=p3*A;
disp(L3)

R3=A*p3;
disp(R3)

% d)
L1a=A; % definiamo L1 a partire da A
L1a(2, :) = lambda*A(2,:); % sostituiamo alla seconda riga lambda*seconda riga
disp(L1a)
disp(isequal(L1,L1a)) % 1 true 0 false

R1a=A;
R1a(: , 2) = lamda*A( : , 2) ; % sostituiamo alla seconda colonna lambda*seconda colonna
disp(R1a)
disp(isequal(R1, R1a) )

L2a=A;
L2a([2 4], :) =  L2a( [4 2], :) ; % ottenuta da A sostituendo righe 2 e 4
disp( isequal(L2, L2a) )

R2a=A;
R2a(: , [2 4]) = R2a(:, [4 2]) ; % ottenuta da A scambiando colonne 2 e 4
disp(isequal(R2,R2a) )

L3a=A ;
L3a(4,:)=lambda*A(2, :)+ A(4, :); % ottenuta sostituendo alla quarta riga lambda*seconda+quarta

R3a=A;
R3a( : , 2) = 1*A( : , 2) + lambda  * A(:,4); % ottenuta sostituendo alla seconda colonna, seconda+lambda*quarta
disp(isequal(R3, R3a))