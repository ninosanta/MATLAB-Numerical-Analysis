% Calcolo integrale definito con SimpsonC e TrapeziC e confronto
%   l'integrale e' quello dell'esercizio 2 il cui risultato esatto e' pi

clear all
close all
clc

ic=0;
for N=[2 4 8 16 32]  % raddoppiando il numero di nodi di volta in volta h 
                     % si dimezza
  ic=ic+1;
  IT(ic)=trapezic(@effe2,0,1,N);
  IS(ic)=simpsonc(@effe2,0,1,N);
  erroreT(ic)=pi-IT(ic);  % pi ->  valore a cui converge l'
                          % integrale in precisione infinita
  erroreS(ic)=pi-IS(ic);
end

format short e
disp([IT' erroreT' IS' erroreS'])
% vediamo quanto cala velocemente l'errore tra un certo h e il precedente
(erroreT(2:5)./erroreT(1:4))'  % mi aspetto che asintoticamente si divida
                               % almeno per 4 l'errore, passando da h a h/2
                               % perché l'errore decresce come h^2
                               % -> infatti tende a 1/4
(erroreS(2:5)./erroreS(1:4))'  % con Simpson per 16
% infatti:
(erroreT(1:4)./erroreT(2:5))'  
(erroreS(1:4)./erroreS(2:5))'  % superconvergenza perche' si divide per 64
                               % ancora piu' di quanto mi aspettassi con la
                               % teoria :)