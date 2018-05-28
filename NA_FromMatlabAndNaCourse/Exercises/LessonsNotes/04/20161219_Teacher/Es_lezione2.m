% Usa comandi strani matlab tipo ode15s


close all
x0 = 0;
y0 = 1;
xN = 1;
f = @(x,y) -10^3*y;
N = 8;
[x,y] = Eulero_espl(f,x0,xN,y0,N);
[x,yEI] = Eulero_impl2(x0,xN,y0,N);
[x15s,y15s] = ode15s(f,[x0,xN],y0);
xplot=linspace(x0,xN,200);
plot(xplot,exp(-10^3*xplot),'r',x,y,'b','linewidth',3)
figure
semilogy(xplot,exp(-10^3*xplot),'r',x,yEI,'b','linewidth',3)
err_Ee = abs(y(end)-exp(-10^3*xN))
err_Ei = abs(yEI(end)-exp(-10^3*xN))
figure
plot(x15s,y15s,'g','linewidth',3)
err_Ei = abs(y15s(end)-exp(-10^3*xN))
n_nodi15s = length(x15s)