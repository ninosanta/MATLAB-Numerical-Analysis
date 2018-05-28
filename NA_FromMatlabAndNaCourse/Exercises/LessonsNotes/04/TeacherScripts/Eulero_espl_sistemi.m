function [x,y] = Eulero_espl_sistemi(f,x0,xN,y0,N)

x = linspace(x0,xN,N+1);
h = (xN-x0)/N;
L = length(y0);
y = zeros(L,N+1);
y(:,1) = y0;
for n = 2:N+1
    y(:,n) = y(:,n-1) + h*feval(f,x(n-1),y(:,n-1));
end
end

