% punto fisso
phi=inline('log(x.^2+1)+1');
x=0;
for k=1:1000
    x_n=phi(x);
    if abs(x_n-x)<=1.0e-6
        k
        break
    else
        x=x_n;
    end
end