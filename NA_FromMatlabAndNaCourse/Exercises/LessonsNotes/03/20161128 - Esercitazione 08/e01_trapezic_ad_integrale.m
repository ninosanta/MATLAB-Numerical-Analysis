% La funzione integranda nella function effe e' 1/x il cui integrale 
% definito in [1,2] fa log(2) -> voglio vedere quanto lo approssimo bene
% con la formula dei trapezi composita
clear all 
close all
clc

ic=0; 
for N=[5:5:60]  % per vari sottointervallini, crescenti
  ic=ic+1;
  I(ic)=trapezic(@effe,1,2,N); % vettore delle approssimazioni per N cresc.
  errore(ic)=log(2)-I(ic);     % vettore dell'errore commesso per N crec.
end

format short e
disp([(5:5:60)', I', errore']) % NB: che l'errore commesso e' sempre negat.
                               % ->  l'integr. appross. e' maggiore dell'
                               %     integrale effettivo