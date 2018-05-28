function [x,y] = Trapezi(x0,xN,y0,N);
%Metodo dei Trapezi.
%  Non passo la funzione perche' risolve solamente il problema proposto nei
%  fogli. Non tutti! Nel nostro caso f(x,y)=y -> ricavo la y_(n+1) a mano e
%  adatto il problema
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
for n=2:N+1
  y(n)=(1+h/2)/(1-h/2)*y(n-1);  % ~ ((1+h/2)/(1-h/2)^(n-1)*y(1))
                                % ricavata a pag. 3 negli appunti
end
end

