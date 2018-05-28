% Alcune fattorizzazioni QR
clear 
close all
clc

%% calcolo una matrice di riflessione H (o di Householder)
v=ones(4,1);  % vettore che sara' usato per la riflessione
              % deve essere normalizzato
u=v/norm(v);  % normalizzo v e ottengo il versore u
Pu=u*u';       % matrice di Proiezione: simmetrica, singolare con rank 1 
H=eye(4)-2*Pu; % matrice di Householder -> simmetrica e ortogonale
H*H            % cvd: ottengo l'identità


%% proviamo a fare una semplice riflessione:
x=[1:4];
x=x';
y=H*x  % componenti girate e cambiate di segno -> vettore riflesso
H*y    % cvd: riottengo il vettore di partenza

%% dalle slides pag.63
sigma=-norm(x)    % segno <0 perche'? perche' x(1)>0
z=sigma*eye(4,1)  % la colonna 1 della matrice iden. mi da' il valore del
                  % vettore malefico con prima entrata 1 e le altre nulle
v=x-z  % voglio riflettere x in z                   
w=v/norm(v)       % normalizzo il vettore v
format short
Hh=eye(4)-2*w*w'    % matrice di riflessione
Hh*Hh               % si ha 1 sulla diagonale e 0 fuori dalla diagonale
Hh*x  % cvd: 
      %   ottengo z come riflessione di x
      %   vettore multiplo del primo vettore della base canonica ed ha come 
      %   prima componente la norma del vettore x cambiata di segno (sigma)
      %   e le altre nulle  
%% ulteriore prova
A=matrix(10)
[Q R]=qr(A)  % Q ortogonale ed R triangolare superiore
Q*Q'  % ottengo l'identita'