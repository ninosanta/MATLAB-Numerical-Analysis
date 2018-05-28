% esempio uso minimi quadrati
clear all

% generazione e grafico della parabola "benchmark"
f=inline('3*x.^2-6*x+5');
x=3.e-2*(0:100)';
y=f(x);
plot(x,y,'b'); hold on
pause

% creazione di valori lievemente perturbati
sigma=2.e-0;
xr=3*rand(30,1);
yr=f(xr);
yr=yr+sigma*(rand(30,1)-0.5);
plot(xr,yr,'r+ '); hold on
pause

% sistema dei minimi quadrati
A=[xr.^2 xr ones(30,1)];
b=yr;

% risoluzione con il comando \
coeff=A\b
yc=coeff(1)*x.^2+coeff(2)*x + coeff(3);
plot(x,yc,'m')
pause

% risoluzione delle equazioni normali
coeff_norm=(A'*A)\(A'*b)
pause

% risoluzione con il metodo QR
[Q R]=qr(A,0);
coeff_qr=R\(Q'*b)
