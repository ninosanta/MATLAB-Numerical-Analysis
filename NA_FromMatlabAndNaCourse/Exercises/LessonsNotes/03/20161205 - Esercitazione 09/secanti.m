function [xk,k]= secanti(f,x0,x1,toll)
%Funzione che approssima la radice di una funzione con il metodo delle
%Secanti
%     Parametri di ingresso:
%       -f: funzione di cui vogliamo trovare lo zero
%       -x0: prima stima iniziale
%       -x1: seconda stima iniziale
%       -toll: tolleranza da usare per il criterio di arresto
%    Parametri di uscita:
%       -x: approssimazione della soluzione
%       -k: passi necessari per arrivare ad x
  xk=x1;  % variabile di lavoro x_k, ritornata come soluzione
  xkm1=x0;  % x_(k-1)
  fxk=f(xk);
  fxkm1=f(xkm1);
  
  for k=1:100  % 100 = numero cautelativo
    if abs(fxk)<=toll  % soddisfo il criterio di arresto
      disp('soddisfatto criterio di arresto al passo:')
      disp(k);
      break;
    else
      % Rapporto incrementale
      fpxk=(fxk-fxkm1)/(xk-xkm1);  % derivata prima approssimata in x_k
      % Nuova iterata
      xkp1=xk-fxk/fpxk;  %x_(k+1)
% aggiorno iterate per il nuovo passo:
      % shift -> chi adesso e' x con k-1 mi deve diventare x_k
      xkm1=xk;
      fxkm1=fxk;
      % chi e' x_k mi deve diventare x_(k+1)
      xk=xkp1;
      fxk=f(xk);  % non dimeticare di fare questa valutazione f(xk)
    end
  end
end