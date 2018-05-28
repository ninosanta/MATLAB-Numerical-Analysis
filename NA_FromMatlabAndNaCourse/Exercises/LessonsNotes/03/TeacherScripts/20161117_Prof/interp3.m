clear
close all

a=-5;
b=5;

f=inline('1./(1+x.^2)');

for n=[3 6 12 24]
    x=linspace(a,b,n);
    y=f(x);
    aa=polyfit(x,y,n-1);
    xx=linspace(a,b);
    yy=polyval(aa,xx);
    plot(xx,yy,'r')
    hold on
    plot(xx,f(xx),'k'); % grafico di f in corrispondenza di xx
    legend('polinomio interpolante','f(x)');
    pause
end