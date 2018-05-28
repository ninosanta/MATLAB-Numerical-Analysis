function [xk,k,p]= secantip(f,x0,x1,toll)
%Funzione che approssima la radice di una funzione con il metodo delle
%Secanti, in piu' calcola l'ordine di convergenza
%     Parametri di ingresso:
%       -f: funzione di cui vogliamo trovare lo zero
%       -x0: prima stima iniziale
%       -x1: seconda stima iniziale
%       -toll: tolleranza da usare per il criterio di arresto
%    Parametri di uscita:
%       -x: approssimazione della soluzione
%       -k: passi necessari per arrivare ad x
%       -p: ordine di convergenza

% Per il calcolo dell'ordine devo conservare le varie iterate
  xk(2)=x1;  % variabile di lavoro x_k, ritornata come soluzione
  xk(1)=x0;
  fxk=f(xk(2));
  fxkm1=f(xk(1));
  
  for k=1:100  % 100 = numero cautelativo
    if abs(fxk)<=toll  % soddisfo il criterio di arresto
      disp('soddisfatto criterio di arresto al passo:')
      disp(k);
      break;
    else
      % Rapporto incrementale
      fpxk=(fxk-fxkm1)/(xk(k+1)-xk(k)); % derivata prima approssim. in x_k
      % Nuova iterata
      xk(k+2)=xk(k+1)-fxk/fpxk;
% aggiorno iterate per il nuovo passo:
      fxkm1=fxk;
      fxk=f(xk(k+2));
    end
    if k>=3  % per il calcolo di p (sono necessarie almeno 4 iterate)
      p=log(abs(xk(k+1)-xk(k))/abs(xk(k)-xk(k-1)))/...
        log(abs(xk(k)-xk(k-1))/abs(xk(k-1)-xk(k-2)));
    end
  end
end