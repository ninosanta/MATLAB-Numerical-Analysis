disp('*****************************************************')
disp('*****************esercizio_5_1***********************')
disp('*****************************************************')
close all
clear all
format long e
disp('****************funzione 1****************')
f = inline('1./(1+x.^2)');        a = -5;    b = 5;    ex = 2*atan(5);
for n = 1:10
    m(n) = 2^n;
    t(n) = trapezi(f,a,b,m(n));
    err(n) = abs(t(n)-ex)/abs(ex);
    t2(n) = simpson(f,a,b,m(n));
    err2(n) = abs(t2(n)-ex)/abs(ex);
end
disp('formula dei trapezi')
[(m+1)' t' err']
disp('formula di Simpson composta')
[(2*m+1)' t2' err2']
loglog(m+1,err,'r*',2*m+1,err2,'bo')
legend('trapezi','simpson')
pause
%
disp('****************funzione 2****************')
f = inline('x.^2.*exp(-x)');      a = 0;    b = 2;    ex = 2-10*exp(-2);
for n = 1:10
    m(n) = 2^n;
    t(n) = trapezi(f,a,b,m(n));
    err(n) = abs(t(n)-ex)/abs(ex);
    t2(n) = simpson(f,a,b,m(n));
    err2(n) = abs(t2(n)-ex)/abs(ex);
end
disp('formula dei trapezi')
[(m+1)' t' err']
disp('formula di Simpson composta')
[(2*m+1)' t2' err2']
loglog(m+1,err,'r*',2*m+1,err2,'bo')
legend('trapezi','simpson')
pause
%
disp('****************funzione 3****************')
f = inline('log(x)');             a = 1;    b = 3;    ex = 3*log(3)-2;
for n = 1:10
    m(n) = 2^n;
    t(n) = trapezi(f,a,b,m(n));
    err(n) = abs(t(n)-ex)/abs(ex);
    t2(n) = simpson(f,a,b,m(n));
    err2(n) = abs(t2(n)-ex)/abs(ex);
end
disp('formula dei trapezi')
[(m+1)' t' err']
disp('formula di Simpson composta')
[(2*m+1)' t2' err2']
loglog(m+1,err,'r*',2*m+1,err2,'bo')
legend('trapezi','simpson')
pause
%
disp('****************funzione 4****************')
f = inline('exp(-x).*sin(4*x)');  a = 0;    b = pi;   ex = 4/17*(1-exp(-pi));
for n = 1:10
    m(n) = 2^n;
    t(n) = trapezi(f,a,b,m(n));
    err(n) = abs(t(n)-ex)/abs(ex);
    t2(n) = simpson(f,a,b,m(n));
    err2(n) = abs(t2(n)-ex)/abs(ex);
end
disp('formula dei trapezi')
[(m+1)' t' err']
disp('formula di Simpson composta')
[(2*m+1)' t2' err2']
loglog(m+1,err,'r*',2*m+1,err2,'bo')
legend('trapezi','simpson')
pause
%
disp('****************funzione 5****************')
f = inline('sqrt(1-x.^2)');       a = -1;   b = 1;    ex = pi/2;
for n = 1:10
    m(n) = 2^n;
    t(n) = trapezi(f,a,b,m(n));
    err(n) = abs(t(n)-ex)/abs(ex);
    t2(n) = simpson(f,a,b,m(n));
    err2(n) = abs(t2(n)-ex)/abs(ex);
end
disp('formula dei trapezi')
[(m+1)' t' err']
disp('formula di Simpson composta')
[(2*m+1)' t2' err2']
loglog(m+1,err,'r*',2*m+1,err2,'bo')
legend('trapezi','simpson')
pause
%
disp('****************funzione 6****************')
f = inline('sqrt(1-x.^2)');       a = -1/2; b = 1/2;  ex = sqrt(3)/4+pi/6;
for n = 1:10
    m(n) = 2^n;
    t(n) = trapezi(f,a,b,m(n));
    err(n) = abs(t(n)-ex)/abs(ex);
    t2(n) = simpson(f,a,b,m(n));
    err2(n) = abs(t2(n)-ex)/abs(ex);
end
disp('formula dei trapezi')
[(m+1)' t' err']
disp('formula di Simpson composta')
[(2*m+1)' t2' err2']
loglog(m+1,err,'r*',2*m+1,err2,'bo')
legend('trapezi','simpson')
pause

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('*****************************************************')
disp('*****************esercizio_5_2***********************')
disp('*****************************************************')
close all
clear all
format long e
f = inline('x.*exp(-x).*cos(2*x)');      a = 0;    b = 2*pi;    ex = -0.122122604618968;
for n = 1:12
    m(n) = 2^n;
    t(n) = trapezi(f,a,b,m(n));
    err(n) = abs(t(n)-ex)/abs(ex);
end
[(m+1)' t' err']
loglog(m+1,err,'r*')
legend('trapezi')
