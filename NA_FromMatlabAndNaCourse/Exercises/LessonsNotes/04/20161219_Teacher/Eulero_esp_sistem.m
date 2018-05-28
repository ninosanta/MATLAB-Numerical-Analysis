  function [x,y] = Eulero_esp_sistem(f,x0,xN,y0,N)
%Metodo di Eulero Esplicito per sistemi di eq. differenziali
%  Input:
%     -f: funzione dell'EDO scritta in forma canonica
%     -x0: condizione iniziale, estremo sinistro di integrazione
%     -xN: estremo destro integrazione
%     -y0: condizione iniziale, e' un vettore colonna
%     -N: numero punti dell'intervallo/sottointervalli
%  Output:
%     -x: vettore contenente i nodi (equispaziati) del reticolo. Serve per
%         plottare
%     -y: matrice delle approssimazioni dei nodi del reticolo. 
%         Ha numero di righe pari all'ordine dell'EDO: length(y0)
%         Numero di colonne pari al numero di nodi (N+1)

  x=linspace(x0,xN,N+1);
  h=(xN-x0)/N;  % passo
  L=length(y0);  % numero righe della matrice y
  y=zeros(L,N+1);  % matrice delle L soluzioni (L righe) e delle 2*(N+1) sol.
  y(:,1)=y0;  % metto sulla prima colonna il vettore dei dati iniziali
  for n=2:N+1
    y(:,n)=y(:, n-1)+h*feval(f,x(n-1),y(:, n-1));  % usa feval perche' f e' 
                                                   % definita mediante
                                                   % function esterna
  end
end
