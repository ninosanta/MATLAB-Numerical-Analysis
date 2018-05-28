function [x,n] = punto_fisso(g,x0,nmax,toll)
for n = 1:nmax
    x = g(x0);
    e(n) = abs(x-x0);
    if e(n) <= toll*abs(x)
        break
    end
    x0 = x;
end
figure
semilogy([1:n],e)
osc = log(e(2:n))./log(e(1:n-1));
figure
plot([2:n],osc)
[e' [0; osc']]
