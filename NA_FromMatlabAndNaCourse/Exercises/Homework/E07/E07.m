%% 1
% interpolazione polinomiale con Vandermonde:
%   -> dimostrazione dell'inefficienza del metodo con base monomiale

clear all
close all
clc

% dati sull'ossido di azoto
y=[243 209 181 179 180 166 163 157 187 192 138 95 56 32 21 12 11 61 ...
   146 186]';   % dati: vettore colonna
x=1:length(y);    % nodi

% studio della matrice Vandermonde prendendo un numero di nodi che cresce
% gradualmente:
for n=2:size(y)
  n
  A=vander(x(1:n));  % x(1:n) dal vettore x estrae le entrate da 1 a n
  cond(A) % condizionamento in norma 2 -> si nota che piu' sono i nodi 
          % piu' A diventa mal condizionata
end
c=A\y

% Normalmente:
%     non risoluzione sistema Ac=y per trovare i coefficienti in quanto la
%     matrice di Vandermonde e' troppo mal condizionata -> NO: c=A\y

%% 2 
%  Grafico polinomi di Lagrange 
clear all
close all
clc

x=[0 1 4 8 9 12];  % scelgo N nodi a piacere
N=length(x);       % numero nodi
xx=linspace(x(1),x(N)); % vettore di 100 punti tra il primo e l'ultimo nodo
                        % in cui valuteremo il polinomio di Lagrange 
                        % per plottarlo
                        % xx e' un vettore riga
i=4;  % voglio calcolare l'i-esimo polinomio, relativo al nodo x(i)
li=1; % inizializzazione dell'i-esimo polinomio
for k=1:N 
  if k~=i  % ~= significa diverso
    li=li.*(xx-x(k))/(x(i)-x(k));  % vettore del polinomio
  end
end
plot(xx, li, 'LineWidth', 2), grid on
hold on  % sovrappongo grafici sulla stessa finestra
y=zeros(1,N);  % vettore 1xN di zeri
y(i)=1;        % nel nodo i-esimo il polinomio deve valere 1
plot(x, y, 'or')
legend('polinomio di Lagrange', 'nodo i-esimo', 'Location', 'southWest')

%% 3
% Verifica fenomeno di Runge con nodi equispaziati e interpolazione
% polinomiale
clear
close all
clc

f=@(x) log(25.*x.^2+1);
a=-1; b=1;
% provo su un numero di nodi crescente
for n=[3 6 12 24]  % raddoppio il numero di nodi ad ogni ciclo
  x=linspace(a,b,n);  % nodi equidistante nell'intervallo [a,b] 
  y=f(x);  % vettore dei dati
  aa=polyfit(x,y,n-1);  % n-1 grado perche' uso n nodi: vettore dei coeff. 
                        % del polinomio di gradi n-1
  xx=linspace(a,b);  % vettore piu' lungo per fare il grafico
  yy=polyval(aa,xx);  % valuto il polinomio che mi e' stato restituito, 
                      % in corrispondenza del vettore xx
  plot(xx,yy, 'r')  % polinomio interpolante
  hold on
  grid on
  plot(xx, f(xx), 'k')  % grafico di f in corrispondenza di xx
  legend('polinomio interpolante','funzione vera f(x)');
  pause
end

%% 4
% Interpolare i dati dell'esercizio 1 usando i comandi polyfit e polyval
clear all
close all
clc

% dati sull'ossido di azoto
y=[243 209 181 179 180 166 163 157 187 192 138 95 56 32 21 12 11 61 ...
   146 186];   % dati: vettore colonna
x=1:length(y);    % nodi
n=length(x);

aa=polyfit(x,y,n-1);
xx=linspace(min(x),max(x));
yy=polyval(aa,xx);  % valuto il polinomio che mi e' stato restituito, 
                    % in corrispondenza del vettore xx
plot(xx,yy, 'r'), grid on  % polinomio interpolante
hold on
plot(x, y, 'cs')
legend('polinomio interpolante','dati raccolti');

%% 5
clear all
close all
clc

y=[243 209 181 179 180 166 163 157 187 192 138 95 56 32 21 12 11 61 ...
   146 186];   % dati: vettore colonna
x=1:length(y);    % nodi
n=length(x);

xx=linspace(min(x),max(x));
yys = spline(x,y,xx);  % nodi, dati e vettore in cui voglio valutare 
                       % l'interpolazione -> stiamo usando la spline NaK
plot(xx,yys,'k')
axis([0.5 20.5 0 250])  % nel vettore prima asse x da ... a ...
                        % poi l'asse y d ... a ...
hold on, grid on
plot(x, y, 'cs')
legend('Spline interp','Dati dell''interpolazione')

% OSS:
spline(x,y,19.5) % mostra il valore dell'Ossido di azoto alle 19.30 di sera

%% 6
% interpolare i dati dell'esercizio 1 con una spline
% cubica vincolata, imponendo le condizioni s_3'(x_0) = 3 e s_3'(x_n) = 2
clear all
close all
clc

% basta creare il vettore dei dati con due dati in piu' all'inizio e alla
% fine
y=[3 243 209 181 179 180 166 163 157 187 192 138 95 56 32 21 12 11 61 ...
   146 186 2]';   % dati: vettore colonna
x=1:(length(y)-2);    % nodi
n=length(x);

xx=linspace(min(x),max(x));
yys = spline(x,y,xx);  % nodi, dati e vettore in cui voglio valutare 
                       % l'interpolazione -> stiamo usando la spline NaK
plot(xx,yys,'r')
axis([0.5 20.5 0 250])  % nel vettore prima asse x da ... a ...
                        % poi l'asse y d ... a ...
hold on, grid on
plot(x, y(2:(end-1)), 'cs')
legend('Spline interp','Dati dell''interpolazione')

%% 7
% Approssimare i dati dell'esercizio 1 nel senso dei minimi quadrati con le
% seguenti funzioni modello:
%     f_m(x)=c_0+c_1x  retta
%     f_m(x)=c_0+c_1x+c_2x^2  parabola
%     f_m(x)=c_0+c_1x+c_2sin(2pix/20)+c_3cos(2pix/20)

clear all
close all
clc

y=[243 209 181 179 180 166 163 157 187 192 138 95 56 32 21 12 11 61 ...
   146 186];   % dati: vettore colonna
x=1:length(y);    % nodi
n=length(x);

%le prime due richieste sono di tipo polinomiale
for n=1:2
  a=polyfit(x',y,n);  % chiedo una retta, polinomio grado 1
                     % poi una parabola, polinomio di grado 2
  xx=linspace(1,20,200); % punti in cui valutare l'approssimazione dei dati
  yy1=polyval(a,xx);
  plot(xx,yy1,'b','LineWidth',2), grid on
  hold on
  plot(x,y,'rd','Markersize',6)  % plot dati
  hold off
  pause
end

%la terza funzione la fo a mano perche' polinomiale e trigonometrica:

% nella prima colonna devo metterci la funzione base, che e' uno
% nella seconda colonna devo metterci la funzione x valutata nei nodi x_i
% che e' la seconda funzionebase. Esso e' semplicemnte il vettore dei nodi
% la terza colonna sara' il sin(2pix/20)
% infine la quarta sara' l'incognita che moltiplica c_2: cos(2pix/20)
%   NB: noi x e y li abbiamo creati come vettori riga, servono come colonna
A=[ones(length(x),1), x', sin(2*pi/20*x'), cos(2*pi/20*x')];
        % ora posso gia' scrivere la formula che risolve il sistema lineare
c=A\y';  % coefficienti                   
hold on
% ora che ho i coefficienti posso completare la valutazione nel senso dei 
% minimi quadrati:
yymq=c(1)+c(2)*xx+c(3)*sin(2*pi/20*xx)+c(4)*cos(2*pi/20*xx);  % per il plot
                                                              % non occorre 
                                                              % trasporre 
                                                              % xx                                                              
plot(xx,yymq, 'k-.')