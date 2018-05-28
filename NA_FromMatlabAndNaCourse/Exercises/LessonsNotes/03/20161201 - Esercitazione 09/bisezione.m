function [x,k]= bisezione(f,a,b,toll)
%Funzione che implementa il metodo di bisezione per trovare lo zero di f
%    Parametri di ingresso:
%       -f: funzione di cui vogliamo trovare lo zero
%       -a,b: due estremi dell'intervallo di partenza
%       -toll: tolleranza da usare per il criterio di arresto
%    Parametri di uscita:
%       -x: approssimazione della soluzione
%       -k: passi necessari per arrivare ad x
  x=(a+b)/2;  % prima stima soluzione. Presa come punto medio di [a,b]
  fa=f(a);
  fb=f(b);
  fm=f(x);  % valutazione nel punto medio
  for k=1:100  % 100 = numero cautelativo
    if abs(fm)<=toll  % soddisfo il criterio di arresto, ho trovato lo zero
                      % e cioe' la radice
      disp('soddisfatto criterio di arresto al passo:')
      disp(k);
      break;
    else 
      if fm*fa<0  % devo spostare il secondo estremo nel punto medio
        b=x;  % aggiorno il secondo estremo
        fb=fm;  % aggiorno la valutazione del secondo estremo
        % calcolo il nuovo punto medio per la prossima iterazione
        x=(a+b)/2;
        fm=f(x);  % funzione nel nuovo punto medio
      else
        % come su ma con il primo estremo
        a=x; 
        fa=fm;
        x=(a+b)/2;
        fm=f(x);
      end
    end
  end
end