function [x,k]= newton(f,f1,x0,toll)
%Funzione che approssima la radice di una funzione con il metodo di Newton
%   %    Parametri di ingresso:
%       -f: funzione di cui vogliamo trovare lo zero
%       -f1: derivata di f
%       -x0: punto iniziale di partenza
%       -toll: tolleranza da usare per il criterio di arresto
%    Parametri di uscita:
%       -x: approssimazione della soluzione
%       -k: passi necessari per arrivare ad x
  x=x0;  % variabile di lavoro e che ritorno come parametro soluzione
  for k=1:100  % 100 = numero cautelativo
    fx=f(x);
    if abs(fx)<=toll  % soddisfo il criterio di arresto
      disp('soddisfatto criterio di arresto al passo:')
      disp(k);
      break;
    else
      f1x=f1(x);  % check: verifico se la derivata in x e' nulla
      if f1x==0  % se e' nulla il metodo si arresta
        disp('Errore: derivata nulla nel''iterata numero:');
        disp(k)
        break;
      else
        x=x-fx/f1x;  % aggiorno x con x+1 praticamente
      end
    end
  end
end