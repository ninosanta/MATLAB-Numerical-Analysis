%%%% Eq ode45
close all
t0=0;
tN=2;
y0=[1;1;1];

[t,y]=ode45('f_sist2',[t0,tN],y0);

plot(t,y(:,1),'r',t,y(:,2),'b',t,y(:,3),'c')
legend('y1','y2','y3')