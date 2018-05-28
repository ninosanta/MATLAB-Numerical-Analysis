% Esercitazione 1 - Esercizio 8

clear all 
close all 
clc

format long
a=1.483593;
b=1.484111;
t=5; % cifre riservate alla mantissa
a_=chop(a,t) % a_ (=a_segnato=a numero macchina con t cifre in antissa)
b_=chop(b,t)

s_=chop(a_-b_, t) % differenza con numeri macchina
c=a-b % differenza numeri non macchina
err = abs(s_-c)/abs(c) % errore relativo associato alla sottrazione
                       % con numeri macchina

disp([a_;b_;c;s_;err])