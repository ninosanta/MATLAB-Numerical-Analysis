% Esercitazione 3 - Es. 5

clear all
close all
clc

f=@(x) (1-x.^2).^(5/2);
fd=@(x) 5/2*(1-x.^2).^(5/2-1).*(-2*x); %derivata di f
a=-1;
b=1;
f0=fd(a);
fn=fd(b);

z=linspace(a,b); %100 punti equispaziati su [a,b]
fz=f(z);

%
err=zeros(4,1);
err1=zeros(4,1);
for k=2:5
    n=2.^k;
    x=-1+2*(0:n)/n;
    y=f(x);
    %spline not a knot
    s=spline(x,y,z);
    % spline  con condizioni sulla derivata
    s1=spline(x,[f0 y fn],z);
    
    figure(1)
    plot(z, fz, 'r', x,y,'*g',z,s,'b',z,s1,'k')
    figure(2)
    plot(z,abs(s-fz),'b',z, abs(s1-fz),'k')
    
    err(k-1)=norm(s-fz, 'inf');
    err1(k-1)=norm(s1-fz, 'inf');
    
    pause
end

disp([(2:5)' err err1])