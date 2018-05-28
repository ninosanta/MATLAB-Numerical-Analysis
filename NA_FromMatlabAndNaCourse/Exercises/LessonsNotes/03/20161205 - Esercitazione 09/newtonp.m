function [x,k,p]= newtonp(f,f1,x0,toll)
%Funzione che approssima la radice di una funzione con il metodo di Newton,
%in piu' calcola l'ordine di convergenza
%    Parametri di ingresso:
%       -f: funzione di cui vogliamo trovare lo zero
%       -f1: derivata di f
%       -x0: punto iniziale di partenza
%       -toll: tolleranza da usare per il criterio di arresto
%    Parametri di uscita:
%       -x: approssimazione della soluzione
%       -k: passi necessari per arrivare ad x
%       -p: ordine di convergenza

% Per il calcolo dell'ordine devo conservare le varie iterate
  x(1)=x0;  % variabile di lavoro
  for k=1:100  % 100 = numero cautelativo
    fx=f(x(k));
    if abs(fx)<=toll % soddisfo il criterio di arresto
      disp('soddisfatto criterio di arresto al passo')
      disp(k);
      break;
    else
      f1x=f1(x(k));  % check: verifico se la derivata in x e' nulla
      if f1x==0  % se e' nulla il metodo si arresta
        disp('Errore: derivata nulla nel''iterata numero:');
        break;
      else
        x(k+1)=x(k)-fx/f1x;
      end
    end
    % Controllo ordine convergenza (sono necessarie almeno 4 iterate):
    if k>=3
      p=log(abs(x(k+1)-x(k))/abs(x(k)-x(k-1))) / ...
        log(abs(x(k)-x(k-1))/abs(x(k-1)-x(k-2)));
    end
  end
end