% Esercitazione 2 - esercizio 1

clear all
close all
clc 

format long 
t=5;  % numero cifre mantissa 
a=1.483593;
b=1.484111;
f1_a=chop(a,t)  % arrotondo a alla t-esima cifra
f1_b=chop(b,t)  % arrotondo a alla t-esima cifra

format short e

s=chop(f1_a-f1_b,t);
s_esatta = a - b;
err_re1 = abs(s-s_esatta)/abs(s_esatta)
precisione_macchina=1/2*10^(1-t)  % dove 10 è la base
err_rel_a = abs(a-f1_a)/abs(a)
err_rel_b = abs(b-f1_b)/abs(b)

% eps = precisione macchina di matlab