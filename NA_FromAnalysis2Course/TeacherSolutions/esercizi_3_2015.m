disp('***********************************************')
disp('*****************esercizio_3_1*****************')
disp('***********************************************')

close all
clear all
a = -5;
b = 5;
f = inline('1./(1+x.^2)');  %oppure f = @(x) 1./(1+x.^2); 
z = linspace(a,b);
fz = f(z);
for n = 5:4:13
   %x=linspace(a,b,n+1); %nodi equisp
   t = -cos((2*(1:n+1)-1)*pi/(2*(n+1))); x = (b-a)/2*t+(b+a)/2; %nodi cheb. shiftati
   y = f(x);
   c = polyfit(x,y,n);
   p = polyval(c,z);
   plot(z,p,'b',z,fz,'r',x,y,'g*')
   hold on
   err = norm(p-fz)
   pause
end 

%
pause
%

disp('***********************************************')
disp('*****************esercizio_3_2*****************')
disp('***********************************************')

close all
clear all
hold on
n = 9;
%
a = -5; b = 5;  f = inline('log(1+x.^2)');   %oppure f =@(x) 1./(1+x.^2) 
%a = 0; b = pi; f = inline('sin(x)');        %oppure f = @sin
%
%x = linspace(a,b,n+1); %nodi equisp
t = -cos((2*(1:n+1)-1)*pi/(2*(n+1))); x=(b-a)/2*t+(b+a)/2; %nodi cheb. shiftati
%
y = f(x);
c = polyfit(x,y,n);
z = linspace(a,b);
p = polyval(c,z);
fz = f(z);
figure(1)
plot(z,p,'b',z,fz,'r',x,y,'g*')
figure(2)
plot(z,abs(p-fz),'m')
err = norm(p-fz,inf)

%
pause
%

disp('***********************************************')
disp('*****************esercizio_3_3*****************')
disp('***********************************************')

close all
clear all
a = -5;
b = 5;
f = inline('1./(1+x.^2)');
z = linspace(a,b);
fz = f(z);
for n = 6:4:14
    x = linspace(a,b,n);
    y = f(x);
    s = spline(x,y,z);
    plot(x,y,'g*',z,fz,'r',z,s,'b')
    hold on
    err = norm(s-fz,inf)
    pause
end    

%
pause
%

disp('***********************************************')
disp('*****************esercizio_3_4*****************')
disp('***********************************************')

close all
clear all
x = 0:3;
y = [1 4 8 16];
z = linspace(0,3);
c = polyfit(exp(x),y,3);
e = polyval(c,exp(z));
plot(x,y,'g*',z,e)

%
pause
%

disp('***********************************************')
disp('*****************esercizio_3_5*****************')
disp('***********************************************')

close all
clear all
f = inline('(1-x.^2).^(5/2)');
fd = inline('(5/2)*(1-x.^2).^(5/2-1).*(-2*x)');
f0 = fd(-1);
fn = fd(1);
z = linspace(-1,1);
fz = f(z);
for k = 2:5
    n = 2^k;
    x = -1+2*(0:n)/n;
    y = f(x);
    s = spline(x,y,z);
    s1 = spline(x,[f0 y fn],z);
    figure(1)
    plot(x,y,'g*',z,fz,'r',z,s,'b',z,s1,'k')
    hold on
    figure(2)
    plot(z,abs(s-fz),'r',z,abs(s1-fz),'b')
    hold on
    pause
end    

%
pause
%

disp('***********************************************')
disp('*****************esercizio_3_6*****************')
disp('***********************************************')

clear all
close all
x = [0:5];
y = 2.^x;
n = 1; %retta di regressione lineare
c = polyfit(x,y,n);
z = [-1 6]; %retta
p = polyval(c,z);
plot(x,y,'g*',z,p,'b')
p1 = polyval(c,x);
residuo1 = sum((y-p1).^2)
%
hold on
n = 2; %parabola
c = polyfit(x,y,n);
z = linspace(-1,6); %parabola
p = polyval(c,z);
plot(x,y,'g*',z,p,'k')
p2 = polyval(c,x);
residuo2 = sum((y-p2).^2)
%
n = 2; %somma esp.
c = polyfit(exp(x),y,n);
z = linspace(-1,6); %somma esp
p = polyval(c,exp(z));
plot(x,y,'g*',z,p,'m')
pe = polyval(c,exp(x));
residuoe = sum((y-pe).^2)
