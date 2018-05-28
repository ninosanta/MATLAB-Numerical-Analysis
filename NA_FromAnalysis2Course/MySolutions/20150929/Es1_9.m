% Esercitazione 1 - Esercizio 9

clear all 
close all 
clc

format long e
% help inline % metodo equivalente a quello usato sotto per creare la funzione
f3 = @(x) 1 - sqrt(1-x.^2); % ci va il .^ per vettori, è una funzine
n=1:16; % esponenti
x=10.^(-n); % vettore che va da 10^(-1) a 10^(-16)
y=f3(x) % calcolo affetto da cancellazione numerica, la y chiama f3 ed opera
        % sul vettore x

f3a = @(x) (x.^2)./(1+sqrt(1-x.^2)) % razionalizzazione onde evitare cancellazione numerica
ya=f3a(x)

disp([y' ya']) % mostriamo insieme i risultati