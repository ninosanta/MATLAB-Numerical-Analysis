% e_04 modificato per legibilita' -> sempre Runge

clear all
close all
clc

%a=2; b=3;  % primo intervallo
a=-5; b=5;  % secondo intervallo

f=@(x) 1./(1+x.^2);  % oppure f=inline('1./(1+x.^2)');
ic=0;
colori='rbkmcg';  % stringa con caratteri validi per colori
for n=[4 8 12]  %  numero nodi
  ic=ic+1;
  x=linspace(a,b,n);  % nodi equidistante nell'intervallo [a,b] 
  y=f(x);  % vettore dei dati
  aa=polyfit(x,y,n-1);  % aa e' il vettore dei coeff. del polinomio 
                        % interpolante e deve avere grado n-1 perche' uso
                        % n nodi -> ottengo n coefficienti
  xx=linspace(a,b);  % vettore piu' lungo per fare il grafico
  yy=polyval(aa,xx);  % valuto il polinomio che mi e' stato restituito, 
                      % in corrispondenza del vettore xx
  plot(xx,yy,colori(ic)), grid on
  hold on
  pause
end
plot(xx,f(xx),'k')  % grafico di f in corrispondenza di xx
legend('n=4', 'n=8', 'n=12', 'f(x)');  % f(x) = funzione vera