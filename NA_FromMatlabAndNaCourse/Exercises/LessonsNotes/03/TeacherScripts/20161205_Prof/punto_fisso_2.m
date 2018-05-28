% Riformulazione di x^3-x-5=0 come problema di punto fisso
%phi=x^3-5
%phi=(2x.^3+5)./(3*x.^2-1)
clear
close all
phi=inline('(2*x.^3+5)./(3*x.^2-1)');
x=linspace(1,3);
figure
plot(x,phi(x),'b');
hold on
plot(x,x,'b');
% Versione che conserva tutte le iterate
% Punto iniziale
xk(1)=1;
tol=1.0e-5;
% Metodo delle iterate di punto fisso
for k=1:300   
    xk(k+1)=phi(xk(k));
    plot(xk(k),xk(k+1),'*r')
    if k>=3
        % Verifica sperimentale dell'ordine di convergenza
        p=log(abs(xk(k+1)-xk(k))/abs(xk(k)-xk(k-1)))/...
          log(abs(xk(k)-xk(k-1))/abs(xk(k-1)-xk(k-2)))
    end
    pause
    % criterio di arresto
    if abs(xk(k)-xk(k+1))<=tol
        disp('Verificato criterio di arresto')
        k
        break
    end
end