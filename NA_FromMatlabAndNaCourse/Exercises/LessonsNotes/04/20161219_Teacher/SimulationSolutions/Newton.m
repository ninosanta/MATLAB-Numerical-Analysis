%Newton
f=inline('x.*log(x.^2+3)+sqrt(x.^2+4)-1');
df=inline('log(x.^2+3)+2*x.^2./(x.^2+3)+x./sqrt(x.^2+4)');
x=10;
for k=1:3
    x=x-f(x)./df(x)
end