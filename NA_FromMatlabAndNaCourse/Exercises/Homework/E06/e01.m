% Esercitazione 6 - es.01
%   metodo della potenza

clear
close all
clc

A=[4 -2 1; -2 2 -1; 1 -1 -5];
z=[2 0 -1]';

% calcolare l'approssimazione dell'autovalore di modulo massimo di A
% mediante 20 iterazioni del metodo della potenza.

for k=1:20
  x=z/norm(z);
  z=A*x;
end

lambda1=x'*z 