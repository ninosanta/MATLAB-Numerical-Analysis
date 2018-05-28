% Esercitazione 4 - Punto Fisso

function [x,n]=punto_fisso(g,x0,nmax,toll)
% [x,n]=punto_fisso(g,x0,nmax,toll)
% calcola il punto fisso x=g(x)

for n=1:nmax
    x=g(x0); %metodo punto fisso
    e(n)=abs(x-x0); %errore al passo n
    if abs(x-x0)<toll*abs(x)
        break;
    end
    x0=x;
end

figure
semilogy(1:n,e)
% ordine sperimentale di convergenza
osc=log(e(2:n))./log(e(1:n-1));
figure
plot(2:n, osc)