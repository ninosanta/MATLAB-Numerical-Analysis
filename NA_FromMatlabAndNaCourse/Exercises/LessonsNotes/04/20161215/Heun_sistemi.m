function [x,y] = Heun_sistemi(f,x0,xN,y0,N)
%Metodo di Heun per sistemi di eq. differenziali
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

  x=linspace(x0,xN,N+1);  % nodi del reticolo equispaziato
  h=(xN-x0)/N;  % passo
  L=length(y0);  % numero righe della matrice y
  y=zeros(L,N+1);  % matrice di tutte le approssimazioni
  y(:,1)=y0;  % approssimazione associata al primo nodo del reticolo
  for n=2:N+1
    K1=feval(f,x(n-1), y(:,n-1));  % usa feval perche' f e' definita mediante 
                                   % function esterna 
    K2=feval(f,x(n-1), y(:,n-1)+h*K1);
    y(:,n)=y(:,n-1)+h/2*(K1+K2);
  end
end