
%%%%%%%%  ES 1

t=5;
a=1.483593;
b=1.484111;
fl_a = chop(a,t)
fl_b = chop(b,t)

s = chop(fl_a - fl_b,t);

s_esatta = a - b;

err_rel = abs(s-s_esatta)/abs(s_esatta)

precisione_macchina = 1/2*10^(1-t)

err_rel_a = abs(a-fl_a)/abs(a)


%%%%%%%%  ES 2

function y = serie_armonica(m)

s = pi^2/6;
t = 4;
%% a) 
y = 0;
for k = 1:m
    y = chop(y + chop(1/chop(k^2,t),t),t);
end

err_rel = abs(y-s)/abs(s)

%% b)
y2 = 0;
for k = m:-1:1
    y2 = chop(y2 + chop(1/chop(k^2,t),t),t);
end

err_rel2 = abs(y2-s)/abs(s)


%%%%%%%%  ES 3

close all
x = 10.^(-[1:16]);
f1 = (1-cos(x))./(x.^2);
f1_equiv = sin(x).^2./(x.^2.*(1+cos(x)));
[x' f1' f1_equiv']

err_rel = abs(f1-f1_equiv)./abs(f1_equiv);
err_rel'
loglog(x,err_rel)

pause

%%%%%%%%%%%%%%%%%
f2 = (1-exp(x))./x;
f2_equiv = -(1+1/2*x+1/6*x.^2+1/24*x.^3);
[x' f2' f2_equiv']


f3 = 1-sqrt(1-x.^2);
f3_equiv = (x.^2)./(1+sqrt(1-x.^2));

[x' f3' f3_equiv']

%%%%%%%%%%%%%%%%%%%%%

f5 = 1-(1-x.^2);  % anche es proprietà assoc.
f5_equiv = x.^2;
[x' f5' f5_equiv']


%%%%%%%%  ES 4

function x = pi_greco(N)
close all
% successione che approssima pi
x = zeros(1,N);
errore = zeros(1,N);
x2 = zeros(1,N);
errore2 = zeros(1,N);

x(1)=2;
x2(1)=2;
lim_succ = pi;
errore(1) = abs(x(1)-lim_succ)/abs(lim_succ);
errore2(1) = abs(x2(1)-lim_succ)/abs(lim_succ);
for n=2:N
    y = 4^(1-n)*x(n-1)^2;
    y2 = 4^(1-n)*x2(n-1)^2;
    x(n) = 2^(n-1/2)*sqrt(1-sqrt(1-y));
    x2(n) = sqrt(4^(n-1/2)*y2/(1+sqrt(1-y2)));
    errore(n) = abs(x(n)-lim_succ)/abs(lim_succ);
    errore2(n) = abs(x2(n)-lim_succ)/abs(lim_succ);
end

%errore'
semilogy([1:N],errore,'LineWidth',3)
hold on
semilogy([1:N],errore2,'g','LineWidth',3)

%%%% oppure
%semilogy([1:N],errore,'b',[1:N],errore2,'g','LineWidth',3)



end



%%%%%%%%  ES 5

close all
f = @(x)exp(x);
df = @(x)exp(x);
k = [1:32];
h = 2.^(-k);

x = 1;
r = (f(x+h) - f(x-h))./(2*h);
r'
err_rel = abs(df(x)-r)./abs(df(x));

loglog(h,err_rel)