% Esercitazione 3 - Es. 4

% f(x) = c_1 exp{n*x} + c_2*exp{(n-1)*x} + ...
%      + c_{n} exp{x} + c_{n+1}
%      = sum_k*c_k*exp{ (n+1-k)*x}
%   x = log(t)  -->  t = exp{x}
%f(log(t)) = c_1 t^n + c_2 * t^{n-1} + ...
%          + c_n*t + c_{n+1}

close all 
clear all 
clc

%ordine somma exp che voglio approssimare
n=3;

%nodi: (0,1),  (3,16)
x=0:3;
y=[1 4 8 16];

z=linspace(0,3);

%coefficienti ricordano la sostituzione t=exp(x)
c=polyfit(exp(x),y,n);
p=polyval(c,exp(z));


plot(x,y, 'g*')
hold on
plot(z, p, 'b')