function y2 = serie_armonica(m)
%Serie sum_(k=1)^(oo) 1/k^2 convergente a pi/6
%   Dato in input il numero intero positivo m, calcola un output simulando 
%   una aritmetica di macchina in virgola mobile normalizzata a t = 4 cifre
%   decimali per la mantissa (tecnica di arrotondamento (ii)). 
%   Calcoli la somma y=sum_(k=1)^(m) 1/k^2 e l'errore relativo
  s=pi^2/6;  % valore esatto a cui converge
  t=4;  % t=4=numero cifre decimali per la mantissa
  mostra=zeros(m,1);
  mostra2=zeros(m,1);
  count=zeros(m,1);
  
  % Tecnica a)
  y=0;
  for k=1:m
      y=chop(y+chop(1/chop(k^2,t),t),t);  % chop inutile su k^2 -> intero^2
                                          % rimane intero
      mostra(k)=y;
      count(k)=k;
  end
  err_rel1=abs(y-s)/abs(s)
  
  % b)
  % partiamo a sommare numeri più piccoli in quanto k parte dal valore
  % massimo ed è al denominatore. Così facendo le somme crescono in modo
  % più graduale
  y2=0;
  for k=m:-1:1  
      y2=chop(y2+chop(1/chop(k^2,t),t),t);
      mostra2(k)=y2;  % riempo il vettore dalla fine
  end
  err_rel2=abs(y2-s)/abs(s)
  
  mostra2=mostra2([m:-1:1],1);  % giro il vettore risultato per un miglior
                                % confronto con mostra1
  disp([count mostra mostra2])
    % se eseguo la somma al contrario prima valuto i numeri 
    % piccoli ottenendo somme che crescono in modo più graduale
    % -> è importante l'ordine in cui eseguo le somme perchè non vale la
    % proprietà associativa
end