%%%% es lezione
close all
f = @(x,y) y;
x0 = 0;
y0 = 1;
xN = 0.2;
for k = 1:6
    N=2^k;
    x_plot = linspace(x0,xN,200);
    esatta = @(x)exp(x);
    [x,y] = Eulero_espl(f,x0,xN,y0,N);
    [x,yEI] = Eulero_impl(x0,xN,y0,N);
    [x,yT] = Trapezi(x0,xN,y0,N);
    [x,yH] = Heun(f,x0,xN,y0,N);
    [x,yRK4] = RK4(f,x0,xN,y0,N);
    plot(x_plot,esatta(x_plot),'r',x,y,'ob',...
        x,yEI,'*g',x,yT,'sk',x,yH,'+c',x,yRK4,'dm','linewidth',3)
    err = abs(esatta(xN) - y(end));
    errEI = abs(esatta(xN) - yEI(end));
    errT = abs(esatta(xN) - yT(end));
    errH = abs(esatta(xN) - yH(end));
    errRK4 = abs(esatta(xN) - yRK4(end));
    disp('   Eespl     Eimpl     Trap    Heun     RK4')
    [err errEI errT errH errRK4]
    pause
end