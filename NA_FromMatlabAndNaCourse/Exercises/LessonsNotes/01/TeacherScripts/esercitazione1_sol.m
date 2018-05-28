
%%%%%%%%  ES 1

x = [1:-0.1:0];
% a)
x([1 4 3])
% b)
x([1:2:7 10]) = zeros(1,5)
%c)
x([1 2 5]) = [0.5*ones(1,2) -0.3]
%d)
y = x(end:-1:1)

%%%%%%%%  ES 2

A = [1 2 3 4;5 6 7 8;9 10 11 12]
%a)
size(A)
%b)
B = A.*A
%c)
%B = A*A  % non si puo' fare!
%d)
B = A'*A
%e)
B = A*A'
%f)
A(1:2,4)
A(:,3)  % equivalente A(1:3,3)
A(1:2,:)  % equivalente A(1:2,1:4)

%g)
A(3,2) = A(1,1)
%%% finire i punti h) e i)

%%%%%%%%  ES 3

n = 40;
B = zeros(n,n); % uquivalenet a B = zeros(10)
for i = 1:n
    B(i,i)=5;
    if i<n
       B(i,i+1) = 3;
       B(i+1,i) = -1;
    end
end

B
size(B)


%%%%%%%%  ES 3 - seconda versione

n = 10;
d = 5*ones(1,n);
cs = 3*ones(1,n-1);
ci = -ones(1,n-1);
B=diag(d,0) + diag(cs,1) + diag(ci,-1);

B(:,[6 9]) = 2;
B([5 8],:) = 2;
B

%%%%%%%%  ES 4

A = [1:6;5:10;9:14;15:20]
%a)
B = A(:,end:-1:1)
%b)
C = A(:,[2:2:end])
%c) fare
%d)
E = A([1 4 3],[5 2])
%e)
v = zeros(1,4);
for k=1:4
    v(k) = A(k,k);
end
v
v2 = diag(A)

%%%%%%%%  ES 5

%a)
close all
x = linspace(-pi,pi,200);
y = sin(x);
plot(x,y,'--g','LineWidth',6)
%b)
figure
x=linspace(-1,1,444);
y = exp(x);  %%% NO e^x!!!!!!!!
plot(x,y,':m','LineWidth',3)
%c)
figure
x = linspace(-5,5); % linspace(-5,5,100)
y = exp(-x.^2);
plot(x,y,'-c','LineWidth',3)

%%%%%%%%  ES 6


close all
teta = linspace(0,2*pi,200);
rho = 1+1/2*cos(16*teta);
x = rho.*cos(teta);
y = rho.*sin(teta);
plot(x,y)
axis equal


%%%%%%%%  ES 7

close all
t = linspace(0,40*pi,800);
a=1;
b=-2;
x = a*cos(t);
y = a*sin(t);
z = b*t;
plot3(x,y,z)


%%%%%%%%  ES 8

close all
x = linspace(0,1,200);
y = linspace(0,1,200);

[X,Y] = meshgrid(x,y);
f = X.*(X-1).*Y.*(Y-1);

mesh(X,Y,f)

figure

f = X.*(X-1).*sin(8*X).*Y.*(Y-1).*cos(8*Y);
surf(X,Y,f)