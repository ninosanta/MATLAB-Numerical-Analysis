% Esercizio 2, pag 47 slides
% Si considerino i seguenti problemi di punto fisso equivalenti:
%             x^3-5;          phi=(2x^3+5)/(3x^2-1)
% Si applichi il metodo delle iterate di punto fisso calcolando
% sperimentalmente l'ordine di convergenza. Si verifichi poi
% teoricamente l'ordine di convergenza.

% OSS:
    % Qeulle due funzioni sono la riformulazione di x^3-x-5=0 come problema
    % di punto fisso:
    %   phi=x^3-5
    %   phi=(2x^3+5)/(3x^2-1)
    % Per questo sono equivalenti; cioe' quelle due phi hanno lo stesso
    % punto fisso
clear 
close all
clc

%% 1) phi=x^3-5
phi=@(x) x.^3-5;
x=linspace(1,2);
figure
plot(x, phi(x), 'b')  % plotta la funzione phi(x)
hold on
plot(x, x, 'b'), grid on  % bisettrice y=x
axis equal
% dal plot si vede che non c'e' convergenza perchè la derivata e' >1 nel 
% punto fisso (la bisettrice ha pendenza 1)

%% 2) phi=(2x^3+5)/(3x^2-1)
phi=@(x) (2*x.^3+5)./(3*x.^2-1);
x=linspace(1,3); 
figure
plot(x,phi(x), 'b')
hold on
axis equal
plot(x,x, 'b'), grid on  % bisettrice y=x
% dal plot si vede che la derivata nel punto fisso e' minore di 1

% Versione che conserva tutte le iterate perche' sono necessarie per il
% calcolo di p
tol=1.0e-5;  % tolleranza per il criterio di arresto
xk(1)=1;  % punto iniziale, scelto da noi
p(1)=0;
for k=1:100
  xk(k+1)=phi(xk(k));  
  plot(xk(k),xk(k+1),'r*')
  % calcolo ordine di convergenza:
  if k>=3  % per calcolare p servono alemno 4 iterate
    p(k+1)=log(abs(xk(k+1)-xk(k))/abs(xk(k)-xk(k-1)))/...
           log(abs(xk(k)-xk(k-1))/abs(xk(k-1)-xk(k-2)));
  end
  %pause
  % criterio di arresto: ci fermiamo quando siamo vicini alla soluzione
  if abs(xk(k)-xk(k+1))<=tol
    disp('Verificato criterio di arresto all''iterata numero: ')
    disp(k)
    break;
  end
end
sol=xk(k+1)
ord=p(k+1)
