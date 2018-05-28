% Esercitazione 4 - Newton

function [x,n]=newton(f, fd, x0, nmax, toll)

% [x,n]=newton(f, fd, x0, nmax, toll)
% Input:
%   f funzione
%   fd derivata di f
%   x0 approssimazione iniziale
%   nmax numero massimo iterazioni possibili
%   toll tolleranza criterio di arresto
% Output:
%   x soluzione
%   n iterazione raggiunta

for n=1:nmax
    x = x0 - f(x0)/fd(x0); %metodo di newton
    e(n)=abs(x-x0);
    if abs(x-x0)<toll*abs(x)
        break;
    end
    %aggiornamento del passo precedente
    x0=x;

end

% lim_{n->inf} |alpha-x_{n+1}|/|alpha-x_{n}|^p = c
% per n grande:
% |alpha-x_{n+1}| ~ c*|alpha - x_n|^p
% log(|alpha - x_{n+1}|) ~ log(c) + p*log(|alpha-x_n|)
% p ~ log(|alpha-x_n{n+1}|)/log(|alpha-x_n|) ...
%       - log(c)/log(|alpha-x_n|)
% x_n -> alpha  ==>     alpha-x_n -> 0
%               ==>     log(|alpha-x_n|) -> -inf
%               ==>     log(c)/log(|alpha-x_n|) -> 0
% p ~ log(|alpha-x_{n+1}|)/log(|alpha-x_n|)
% p ~ log(|x_{n+2}-x_{n+1}|)/log(|x_{n+1}-x_n|)

figure
semilogy(1:n,e)
% ordine sperimentale di convergenza
osc=log(e(2:n))./log(e(1:n-1));
figure
plot(2:n, osc)
disp([e(2:n)' osc'])