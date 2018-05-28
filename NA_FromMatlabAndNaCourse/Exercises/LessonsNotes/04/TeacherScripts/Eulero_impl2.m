function [x,y] = Eulero_impl2(x0,xN,y0,N)
x = linspace(x0,xN,N+1);
h = (xN-x0)/N;
y = zeros(1,N+1);
y(1)=y0;
for n=1:N
    y(n+1) = y(n)/(1+10^3*h);
end


end

