%%%% es 1
f = @(x,y) -y+x+1;
x0 = 0;
y0 = 1;
xN = 1;
for N = [4:4:128]
    x_plot = linspace(x0,xN,200);
    esatta = @(x)x+exp(-x);
    [x,y] = Eulero_espl(f,x0,xN,y0,N);
    plot(x_plot,esatta(x_plot),'r',x,y,'ob','linewidth',3)
    pause
end