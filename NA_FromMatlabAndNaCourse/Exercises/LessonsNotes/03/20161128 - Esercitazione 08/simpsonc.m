function [I]=simpsonc(f,a,b,N)  % va passata con la @ la f
%funzione che implementa la formula di quadratura di Simpson Composita
%   riceva in ingresso:
%     l'integranda: f
%     gli estemi di integrazione: a, b
%     il numero di sottointevalli/nodi: N
%   E restituisca in uscita l'approssimazione dell'integrale
  h=(b-a)/N;
  x=linspace(a,b,2*N+1);  % richiede 2*N+1 nodi! Perche' oltre agli N+1 
                          % nodi che partizionano l'intervallo (a,b) negli
                          % intervallini, necessito anche degli N dei punti
                          % medi
  y=f(x);  % valuto l'integranda f negli 2*N+1 nodi contenuti in x
  I=h/6*(y(1)+2*sum(y(3:2:2*N-1))+4*sum(y(2:2:2*N))+y(2*N+1)); % punti medi
                                                               % -> indici
                                                               %    pari
                                                                   
end

