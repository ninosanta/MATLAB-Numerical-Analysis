clear
close all
%phi=inline('log(x-1)+3');
phi=inline('sin(x)');
x=linspace(-pi,pi);
figure
plot(x,phi(x),'b');
hold on
plot(x,x,'b');
% Punto iniziale
xk=1;
tol=1.0e-5;
% Metodo delle iterate di punto fisso
for k=1:300
    xkm1=xk;
    xk=phi(xkm1);
    plot(xkm1,xk,'*r')
    pause
    % criterio di arresto relativo
    if abs(xkm1-xk)<=tol% *abs(xk)
        disp('Verificato criterio di arresto')
        k
        break
    end
end