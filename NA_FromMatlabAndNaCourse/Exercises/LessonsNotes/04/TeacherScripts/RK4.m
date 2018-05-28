function [x,y] = RK4(f,x0,xN,y0,N)

x = linspace(x0,xN,N+1);
h = (xN-x0)/N;
y = zeros(1,N+1);
y(1) = y0;
for n = 2:N+1
    K1 = f(x(n-1),y(n-1));
    K2 = f(x(n-1)+h/2,y(n-1)+h/2*K1);
    K3 = f(x(n-1)+h/2,y(n-1)+h/2*K2);
    K4 = f(x(n-1)+h,y(n-1)+h*K3);
    y(n) = y(n-1) + h/6*(K1+2*K2+2*K3+K4);
end
end

