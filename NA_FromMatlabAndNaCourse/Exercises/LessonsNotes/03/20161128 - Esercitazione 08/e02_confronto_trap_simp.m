% Calcolo integrale definito con SimpsonC e TrapeziC e confronto
%   l'integrale e' quello dell'esercizio 2 il cui risultato esatto e'
%   log(2)

clear all
close all
clc

ic=0;
for N=[2 4 8 16 32]  % raddoppiando il numero di nodi di volta in volta h 
                     % si dimezza
  ic=ic+1;
  IT(ic)=trapezic(@effe,1,2,N);
  IS(ic)=simpsonc(@effe,1,2,N);
  erroreT(ic)=log(2)-IT(ic);  % log(2) ->  valore a cui converge l'
                              % integrale in precisione infinita
  erroreS(ic)=log(2)-IS(ic);
end

format short e
disp([IT', erroreT', IS', erroreS'])
% vediamo quanto cala velocemente l'errore tra un certo h e il precedente
(erroreT(2:5)./erroreT(1:4))'  %  ~1/4
(erroreS(2:5)./erroreS(1:4))'  %  ~1/16
(erroreT(1:4)./erroreT(2:5))'  %  ~4
(erroreS(1:4)./erroreS(2:5))'  %  ~16