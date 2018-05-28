%% 01 - Eulero Esplicito ed Heun
close all
clear 
clc

f=@(x,y) -y+x+1;
f_esatta=@(x) x+exp(-x);
x0=0; y0=1; xN=1;

for k=1:3
  N=10^k;
  [x,yEE] = eulero_esp(f,x0,xN,y0,N);
  errEE=abs(f_esatta(xN)-yEE(N+1))
  [x,yHE] = heun(f,x0,xN,y0,N);
  errEE=abs(f_esatta(xN)-yHE(N+1))
  plot(x, f_esatta(x), 'k', x, yEE, 'rd', x, yHE, 'co'), grid on
  legend('Soluzione esatta', 'Eulero Esplicito', 'Heun', 'Location', ...
         'northWest')
  pause
end

%% 03
close all
clear 
clc

% Trasformare il seguente problema
%       y''-3y'+2y = 0; y(0) = 1; y'(0) = 1;
% la cui soluzione e y(x) = ex, in un sistema di due equazioni 
% differenziali del primo ordine ed applicare ad esso il metodo di Eulero
% Esplicito

% f deve essere vettoriale -> devo definirla in una function che
% restituisce un valore f
f_esatta=@(x) exp(x);
xN=1; x0=0; z0=[1 1]';

for k=1:3
  N=10^k;
  [x, yEE]=eulero_esp_sistemi('e03_funzione',x0,xN,z0, N);
  errEE=abs(f_esatta(xN)-yEE(1,N+1))  % potevo prendereanche la derivata di 
                                      % yEE e cioe' yEE(2,N+1) perche'
                                      % tanto essendo che approssima l'exp
                                      % sono uguali, ma la soluzione e'
                                      % sempre yEE(1,N+1)
  plot(x, f_esatta(x), 'r', x, yEE(1,:), 'db') 
  legend('sol. esatta', 'sol. appr. Eulero E.', ...
         'Location', 'northwest')
  grid on
  pause
end

%% 4
close all
clear 
clc

x0=0; z0=[1 1]'; xN=10; N=800;
[x, yEE]=eulero_esp_sistemi('e04_funzione',x0,xN,z0,N);
[x, yHE]=heun_sistemi('e04_funzione',x0,xN,z0,N);
yEE(:,N+1)
yHE(:,N+1)
%%% grafico della soluzione
plot(x,yEE(1,:), x,yHE(1,:), 'g','linewidth',3)
grid on
title('Soluzione')
legend('Eulero Esplicito', 'Heun', 'Location', 'north')
%%% grafico della derivata prima della soluzione
figure
plot(x,yEE(2,:), x,yHE(2,:),'linewidth',3), grid on
title('Derivata prima della soluzione')
legend('Eulero Esplicito', 'Heun')

%% 5
close all
clear 
clc

%%% es.1
f=@(x,y) -y+x+1;
x0=0; y0=1; xN=1;
[x45,y45] = ode45(f,[x0,xN],y0);
[x23,y23] = ode23(f,[x0,xN],y0);
y45(end)
y23(end)
n_nodi45=length(x45)
n_nodi23=length(x23)

xN=1; x0=0; z0=[1 1]';
[x45,y45] = ode45('e03_funzione',[x0,xN],z0);
[x23,y23] = ode23('e03_funzione',[x0,xN],z0);
y45(end, 1)  % li mette in colonna non in riga, per questo (end, 1)
y23(end, 1)
n_nodi45=length(x45)
n_nodi23=length(x23)

%% 6
% Applicare i metodi di Eulero esplicito e implicito passo di integrazione
%               h = 10^-1; 10^-2; 10^-3
close all
clear 
clc

f=@(x,y) -10^3*y;

x0=0; y0=1; xN=1;
for k=1:3
  N=10^k;
  [x, yEE] = eulero_esp(f, x0, xN, y0, N);
  [x, yEI] = eulero_imp(f, x0, xN, y0, N);
  yEE(N+1) 
  yEI(N+1)
  pause 
end 

%% 7

f=@(x,y) -10^3*(y-cos(x))-sin(x);
f_esatta=@(x) exp(-10^3*x)+cos(x);

x0=0; y0=2; xN=1;
for k=1:4
  N=10^k;
  [x, yHE] = heun(f, x0, xN, y0, N);
  semilogx(x, f_esatta(x), 'r', x, yHE, 'c*')
  grid on 
  err=abs(f_esatta(x(end))-yHE(end))
  pause 
end 
%%% -> per h abbastanza piccolo (cioe' per N abbastanza grande), inizia a
%%%    convergerere per bene
