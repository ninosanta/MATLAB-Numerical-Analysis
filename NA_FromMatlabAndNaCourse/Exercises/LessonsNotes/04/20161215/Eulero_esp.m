function [x,y] = Eulero_esp(f,x0,xN,y0,N)
%Funzione che implementa il Metodo di Eulero Esplicito
%  Input:
%     -f: funzione dell'EDO scritta in forma canonica
%     -x0: iniziale
%     -xN: estremo destro integrazione
%     -y0: iniziale
%     -N: numero punti dell'intervallo/sottointervalli
%  Output:
%     -x: vettore contenente i nodi (equispaziati) del reticolo. Serve per
%         plottare
%     -y: vettore delle approssimazioni dei nodi del reticolo

  x=linspace(x0,xN,N+1);  % nodi del reticolo equispaziato - attento: N+1
  h=(xN-x0)/N;  % passo tra due nodi consecutivi
  y=zeros(1,N+1);  % vettore di tutte le approssimazioni associate ai nodi 
                   % della partizione: grande quanto ai nodi
  y(1)=y0;  % approssimazione associata al primo nodo del reticolo
  for n=2:N+1
    y(n)=y(n-1)+h*f(x(n-1),y(n-1));
  end
end

