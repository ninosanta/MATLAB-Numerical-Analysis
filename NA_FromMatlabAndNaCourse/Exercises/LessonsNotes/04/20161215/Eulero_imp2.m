function [x,y] = Eulero_imp2(x0,xN,y0,N);
%Metodo di Eulero implicito che risolve il problema a pag. 5 negli appunti
%Nel nostro caso f(x,y)=-10^3*y(x) -> ricavo la y_(n+1) a mano e
%adatto il problema
%  Input:
%     -x0: iniziale
%     -xN: estremo destro integrazione
%     -y0: iniziale
%     -N: numero punti dell'intervallo/sottointervalli
%  Output:
%     -x: vettore contenente i nodi (equispaziati) del reticolo. Serve per
%         plottare
%     -y: vettore delle approssimazioni dei nodi del reticolo
x=linspace(x0,xN,N+1);  % nodi del reticolo equispaziato
h=(xN-x0)/N;  % passo
y=zeros(1,N+1);  % vettore di tutte le approssimazioni
y(1)=y0;  % contiene l'approssimazione associata al primo nodo del reticolo
for n=1:N
  y(n+1)=y(n)/(1+10^3*h);  % ricavata a pag.5 degli appunti
end
end

