% SVD - ragioniamo sull'indipendenza lineare dei vettori:
%   per decidere se una famiglia di vettori sono l.i. li metto una matrice
%   e poi uso la SVD

clear all
close all
clc

% generiamo 3 vettori colonna di lunghezza 10
v1=rand(10,1);
v2=rand(10,1);
v3=rand(10,1);
% vogliamo vedere se sono linearmente indipipendenti:
A=[v1, v2, v3];  % 10x3
rank(A)  % deve venire 3 se sono l.i.
svd(A)   % nell'ambito della svd:
         % contiamo per vedere quanto sono i vettori l.i. vedendo i valori 
         % singolari della matrice, che devono essere 3 e !=0

% generiamo ora vettori linearmente dipendenti:
B=[v1, 2*v2-v3, v3+v1, v2-v3, v2, -v3];
rank(B)  
svd(B)  % ottengo rank(B) valori singolari diversi da 0
% IMPORTANTE: dove trovo i vettori l.i. nella SVD?
[U S V]=svd(B)  % U=10x10 ortog., S=diag dei val. sing., V=6x6 ortog.
                % i PRIMI TRE vettori di U sono quelli l.i.
                % poiche' U e' una base ortonormale dell'immagine di A
UU=U(:,1:3)  % matrice 10x3 con vettori comb.lin. della matrice originale,
             % linearmente indipendenti e ortogonali tra di loro
rank(UU)     % cvd
UU'*UU  % verifico l'ortogonalita' dei tre vettori-> il prodotto = I
% mettendo in UU 4 colonne di U il rango sara' sempre 3 -> solo i primi tre 
% sono linearmente indipendenti

%% se volessi scrivere v1, v2, v3 come comb.l. dei vettori che formano UU?
% ragioniamo su una cosa con carta e penna -> vedi foglio
b=S*V'*eye(6,1)  % vettore BETA:
                 %  tre componenti diverse da 0, altre 3 ~ nulle e quattro
                 %  nulle perche' al di sotto della riga 6 
v1-UU*b(1:3)  % solo le prime tre componenti di b (perche' le altre sono 
              % nulle) -> ottengo ~eps perché UU*b(1:3)~v1
v1-U*b  % ~stesso risultato dell'istruzione sopra