disp('***********************************************')
disp('*****************esercizio_1_3*****************')
disp('***********************************************')

clear all
D = diag(5*ones(10,1));
CS = diag(3*ones(9,1),1);
CI = diag(-1*ones(9,1),-1);
B = D+CS+CI
B([5 8],[6 9]) = 2

%
pause
%

disp('***********************************************')
disp('*****************esercizio_1_4*****************')
disp('***********************************************')

clear all
A = [1:4;2:5;3:6;4:7];
lambda = 10;
P1 = eye(4);
P1(2,2) = lambda;
L1 = P1*A
R1 = A*P1
%
P2 = eye(4);
P2([2 4],:) = P2([4 2],:)
L2 = P2*A
R2 = A*P2
%
P3 = eye(4);
P3(4,2) = lambda;
L3 = P3*A
R3 = A*P3
%
L1 = A;
L1(2,:) = lambda*L1(2,:)
R1 = A;
L1(:,2) = lambda*L1(:,2)
%
L2 = A;
L2([2 4],:) = L2([4 2],:)
R2 = A;
R2(:,[2 4]) = R2(:,[4 2])
%
L3 = A;
L3(4,:) = L3(4,:)+lambda*L3(2,:)
R3 = A;
R3(:,2) = R3(:,2)+lambda*R3(:,4)

%
pause
%

disp('***********************************************')
disp('*****************esercizio_1_5*****************')
disp('***********************************************')

clear all
x = linspace(0,pi/4);
y = tan(x);
figure
plot(x,y)
%
x = linspace(pi/4,pi/2-eps);
y = tan(x);
figure
semilogy(x,y)
%
x = linspace(0.1,100,1000);
y = sqrt((100*(1-0.01*x.^2).^2+0.02*x.^2)./((1-x.^2).^2+0.1*x.^2));
figure
loglog(x,y)

%
pause
%

disp('***********************************************')
disp('*****************esercizio_1_6*****************')
disp('***********************************************')

close all
clear all
t = linspace(0,10*pi,500);
a = 1;
b = -0.1;
x = a*cos(t);
y = a*sin(t);
z = b*t;
figure
plot3(x,y,z)
%
pause
%
t = linspace(0,20*pi,500);
a = 1;
b = 0.1;
x = a*cos(t);
y = a*sin(t);
z = b*t;
figure
plot3(x,y,z)

%
pause
%

disp('***********************************************')
disp('*****************esercizio_1_7*****************')
disp('***********************************************')

close all
clear all
x = linspace(0,1);
y = linspace(0,1);
[X,Y] = meshgrid(x,y);
f1 = X.*(X-1).*Y.*(Y-1);
figure
mesh(f1)
%
pause
%
figure
surf(f1)
%
pause
%
%
f2 = X.*(X-1).*sin(8*X).*Y.*(Y-1).*cos(8*Y);
figure
mesh(f2)
%
pause
%
figure
surf(f2)

%
pause
%

disp('***********************************************')
disp('*****************esercizio_1_8*****************')
disp('***********************************************')

clear all
close all
a = 1.483597;
b = 1.484111;
t = 5;
s = a-b
s_ = chop(chop(a,t)-chop(b,t),t)
er = abs(s-s_)/abs(s)

%
pause
%

disp('***********************************************')
disp('*****************esercizio_1_9*****************')
disp('***********************************************')

clear all
close all
format long e
n = 1:16;
x = 10.^(-n);
%
f1 = (1-cos(x))./x.^2;
f1_ex = 1/2*(sin(x/2)./(x/2)).^2;
er1 = abs(f1-f1_ex)./abs(f1_ex);
[x' er1']
figure
loglog(x,er1)

%
pause
%

f2 = (1-exp(x))./x;
s = 0;
for i = 1:16
    s = s+x.^(i-1)/factorial(i);
end    
f2_ex = -s;
er2 = abs(f2-f2_ex)./abs(f2_ex);
[x' er2']
figure
loglog(x,er2)

%
pause
%

f3 = (1-sqrt(1-x.^2));
f3_ex = x.^2./(1+sqrt(1-x.^2));
er3 = abs(f3-f3_ex)./abs(f3_ex);
[x' er3']
figure
loglog(x,er3)

%
pause
%

f4 = ((x+1).^2-1)./x;
f4_ex = x+2;
er4 = abs(f4-f4_ex)./abs(f4_ex);
[x' er4']
figure
loglog(x,er4)
