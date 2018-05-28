%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                 BUILT IN FUNCTION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
3+5
whos % dice le variabili in gioco elecherà
     % solamente la variabile predefinita ans
a = 3+5 
whos % elencherà ans e a

clear ans % elimino la variaile ans
whos % elencherà solamente a

clear all % elimina tutte le variabili
whos % elencherà il nulla cosmico

% Il campo size di whose indica:
% la dimensione della matrice della variabile, 
% se scalare sarà una matrice 1x1

s=3+5-128*56+6/7
%s=-7.1591e+03 =-7.1591*10^3 in format short

format long % maggior numero di cifre dopo virgola
format rat % rat = rational => risultato sotto
           % forma di frazione irriducibile
format short % ritorna al formato di default

p=3^9 % elevazione a potenza
sqrt(4) % radice quadrata
log(10) % logaritmo in base e
sin(3)
help log % mi dice che è il logaritmo naturale
log10(10)   % logaritmo in base 10
; % nasconde i risultati

%           VARIABILI PREDEFINITE
pi % pi greco
pi = 7 % tolgo il valore predefinito :O
clear pi % torna al valore predefinito

i % è l'unità immaginaria
j % anch'essa

help % e poi elfun ci sono le funzioni elementari