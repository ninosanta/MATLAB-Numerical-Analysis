% Vediamo i vari casi di convergenza, o meno, del metodo di punto fisso

% Esercizio slides: pag. 42 
% Applicare il metodo delle iterate di punto fisso al problema di
% punto fissophi(x) = x con le funzioni phi di seguito indicate,
% illustrando graficamente la bisettrice I-III quadrante, la funzione 
% e l'andamento delle iterazioni (si usi il comando pause per inserire
% le iterate una per volta nel grafico).
%   1) phi(x) = exp(-(x^2/3))
%   2) phi(x) = log(x - 1) + 3,  x > 1 (per entrambi i punti fissi)
%   3) phi(x) = sin(x)
clear 
close all
clc

%% 1) phi(x) = exp(-(x^2/3))
% iniziamo a stimare ad occhio dove si trova il punto fisso: cioe'
% l'intersezione tra la funzione e la bisettrice del I e III quadrante
phi=@(x) exp(-x.^2/3);
x=linspace(0,2);
figure  % apre una nuova finestra per plottare
plot(x,phi(x), 'b')  % plotta la funzione phi(x)
hold on
plot(x,x, 'g'), grid on  % plotta la bisettrice
legend('phi(x)', 'bisettrice y=x')
% Metodo delle iterate di punto fisso
tol=1.0e-5;  % tolleranza per il criterio di arresto
xk=1;  % punto iniziale vicino al punto fisso, scelto da noi
plot(xk, phi(xk), 'r*'), grid on  % plotto il punto iniziale sulla funzione
for k=1:100
  xkm1=xk;   % x_(k-1)=x_k
             % prima di aggiornare il valore, salviamo il valore vecchio
  xk=phi(xkm1);  
  plot(xkm1,xk,'r*')  % plotto il punto [x_(k-1), x_k=f(x_(k-1)]
  pause
  % criterio di arresto: ci fermiamo quando siamo vicini alla soluzione
  if abs(xkm1-xk)<=tol*abs(xk)  % x_(k-1) molto vicino a x_k
    disp('Verificato criterio di arresto all''iterata numero: ')
    disp(k)
    break;
  end
end
xk
% si puo' verificare che |phi'(xk)| e' <1 
% -> convergenza garantita

%% 2) log(x - 1) + 3 con x>1
% NB: ha due punti fissi
phi=@(x) log(x-1)+3;
x=linspace(1.000001,6);
figure
plot(x,phi(x), 'b')  % plotta la funzione phi(x)
hold on
plot(x,x, 'g')  % plotta la bisettrice
legend('phi(x)', 'bisettrice y=x')
tol=1.0e-5;  % tolleranza per il criterio di arresto
xk=4;  % punto iniziale, scelto da noi
plot(xk, phi(xk), 'r*'), grid on
for k=1:100
  xkm1=xk;  % prima di aggiornare il valore, salviamo il valore vecchio
  xk=phi(xkm1);  
  plot(xkm1,xk,'r*')
  % pause
  % criterio di arresto: ci fermiamo quando siamo vicini alla soluzione
  if abs(xkm1-xk)<=tol*abs(xk)
    disp('Verificato criterio di arresto all''iterata numero: ')
    disp(k)
    break;
  end
end
xk
% Si vede che ha due punti fissi (uno vicino a 1 e l'altro vicno a 4) ma da
% qualsiasi punto io parta convergo sempre a quello in quattro. Questo 
% perche' la derivata di phi(x) e' 1/(x-1) che in x~1 e' molto grande e 
% maggiore di 1 e diventa minore di 1 solamente passato x=2

%% 3) phi(x) = sin(x)
phi=@(x) sin(x);
x=linspace(-2*pi,2*pi);
figure
plot(x,phi(x), 'b')  % plotta la funzione phi(x)
hold on
plot(x,x, 'g'), grid on  % plotta la bisettrice
legend('phi(x)', 'bisettrice y=x')
tol=1.0e-5;  % tolleranza per il criterio di arresto
xk=2;  % punto iniziale, scelto ad occhio -> non convergera'
%xk=pi;  % punto fisso per farla convergere
plot(xk, phi(xk), 'r*'), grid on
for k=1:10^3
  xkm1=xk;  % prima di aggiornare il valore, salviamo il valore vecchio
  xk=phi(xkm1);  
  plot(xkm1,xk,'r*')
  % pause
  % criterio di arresto: ci fermiamo quando siamo vicini alla soluzione
  if abs(xkm1-xk)<=tol
    disp('Verificato criterio di arresto all''iterata numero: ')
    disp(k)
    break;
  end
end
xk
% Partendo da un valore ad cazzum diverso da pi, sembra convergere al punto
% fisso che e' in 0, ma non ci arriva mai. Perche' questo e' il caso in cui
% la derivata di sin e' cos e, nel punto fisso 0, vale 1->puo' convergere o
% meno! Tutto dipende da dove si parte. Partendo da pi converge in due
% iterate...