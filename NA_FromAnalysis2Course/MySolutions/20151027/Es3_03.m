% Esercitazione 3 - Es. 3

clear all
close all
clc

f=@(x) 1./(1+x.^2); %funzione di Runge

a=-5;
b=5;
z=linspace(a,b); %100 punti equispaziati su [a,b]
fz=f(z);

plot(z, fz, 'r')

for n=[6 10 14]

x=linspace(a,b,n);
y=f(x);

%spline cubica not a knot
s=spline(x,y,z);

hold on
plot(x,y,'g*', z, s, 'b'), grid on

err=norm(s-fz, 'inf');
disp(err)

pause
end