% Risoluzione dell'e03 mediante nodi di Chebichev

clear all
close all
clc

a=-5; b=5;  % intervallo != da quello di default di Chebichev
            % -> formula con riscalamento (b-a)/2 e traslazione (a+2)/2

f=@(x) 1./(1+x.^2);  % oppure f=inline('1./(1+x.^2)');
ic=0;
colori='rbkmcg';

for n=[4 8 12]
  ic=ic+1;
  % x=linspace(a,b,n); NON piu' nodi equispa ma:
  t=cos((2*(0:n)+1)/(n+1)*pi/2);  % nodi di Chebichev: con notazione 
                                  % vettoriale 
  x=(b-a)/2*t+(a+b)/2;  % riscalo e traslo per adattarli al mio intervallo
  y=f(x);  % vettore dei dati
  % aa=polyfit(x,y,n-1); quella giusta sara':
  aa=polyfit(x,y,n);  % n perche' in t divido per n+1
  xx=linspace(a,b);  % vettore con piu' punti per fare il grafico
  yy=polyval(aa,xx);  % valuto il polinomio che mi e' stato restituito, 
                      % in corrispondenza del vettore xx
  plot(xx,yy,colori(ic))
  hold on
  pause
end
plot(xx,f(xx),'k')  % grafico di f in corrispondenza di xx
legend('n=4', 'n=8', 'n=12', 'f(x)');  % f(x) = funzione vera