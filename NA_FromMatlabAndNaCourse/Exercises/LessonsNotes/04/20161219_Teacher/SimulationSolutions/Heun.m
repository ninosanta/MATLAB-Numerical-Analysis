function [t,y] = Heun(f,t0,tN,N,y0)
h = (tN-t0)/N;
t=linspace(t0,tN,N+1);
m=length(y0);
y=zeros(m,N+1);
y(:,1)=y0;
for n=1:N
    K1=feval(f,t(n),y(:,n));
    K2=feval(f,t(n+1),y(:,n)+h*K1);
    y(:,n+1) = y(:,n)+h/2*(K1+K2);
end

