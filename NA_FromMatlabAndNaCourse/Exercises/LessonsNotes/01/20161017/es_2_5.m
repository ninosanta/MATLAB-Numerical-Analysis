% Esercitazione 2 - es.5
close all 
clear all
clc

f=@(x) exp(x);  % funzione inline
f1=@(x) exp(x);  % derivata di f
k=[1:32];
h=2.^-k;

x=1;  % punto in cui voglio approssimare la derivata prima
r=(f(x+h)-f(x-h))./(2*h);  % rapporto incrementale

err_rel=abs(f1(x)-r)./abs(f1(x));
disp([k' err_rel'])

loglog(h,err_rel), grid on
ylabel('errore relativo')
xlabel('h')
title('Va letto da dx verso sx')