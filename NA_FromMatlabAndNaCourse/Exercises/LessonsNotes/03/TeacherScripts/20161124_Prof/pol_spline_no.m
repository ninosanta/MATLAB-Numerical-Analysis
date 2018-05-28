clear
close all
x=1:20;
NO=[243 209 181 179 180 166 163 157 187 192 138 95 56 32 21 12 11 61 146 186];

a=polyfit(x,NO,length(x)-1);
xx=linspace(1,20,200);
yy=polyval(a,xx);
plot(xx,yy,'b')
hold on
plot(x,NO,'rs')
yys=spline(x,NO,xx);
plot(xx,yys,'k')
legend('pol interp','dati dell''interpolazione','spline interp')
