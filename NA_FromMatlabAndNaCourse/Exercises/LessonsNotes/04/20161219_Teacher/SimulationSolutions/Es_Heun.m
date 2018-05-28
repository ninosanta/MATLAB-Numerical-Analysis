%%%% Eq diff Heun
t0=0;
tN=1;
N=100;
y0=[1;1];

[t,y]=Heun('f_sist',t0,tN,N,y0);
t(51)

y(1,51)