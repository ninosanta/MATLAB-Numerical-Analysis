function [x,y] = Eulero_impl(x0,xN,y0,N)

x = linspace(x0,xN,N+1);
h = (xN-x0)/N;
y = zeros(1,N+1);
y(1) = y0;
for n = 2:N+1
    y(n) = y(n-1)/(1-h);
end
end

