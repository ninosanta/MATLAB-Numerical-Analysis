% Esercitazione 2 - Gauss-Seidel

function [x,iter]=gauss_seidel(A,b,itermax,toll,x0)
% function [x,iter]=gauss_seidel(A,b,itermax,toll,x0)
% Input:
%   A matrice sistema lineare
%   b vettore termine noto
%   itermax numero massimo di iterazioni
%   toll tolleranza richiesta
%   x0 soluzione iniziale
% Output:
%   x soluzione sistema lineare
%   iter numero di iterazioni effettuate

% questi metodi risolvono il sistema lineare: 
% A x = b --> (D+C)x=b --> Dx = b - Cx
D=tril((A)); % tridiagonale inferiore
C=A-D;
%B = -invD * C = -invD * (A-D) = -invD * A + I
n=length(b);
B=-inv(D)*A+eye(n); % matrice di iterazione
rho=max(abs(eig(B))); %raggio spettrale
disp(rho)

%ciclo che aggiorna soluzione
for iter=1:itermax
    x=D\(b-C*x0);
    if norm(x-x0,'inf') <= toll*norm(x0, 'inf')
        break;
    end
    x0=x;
end