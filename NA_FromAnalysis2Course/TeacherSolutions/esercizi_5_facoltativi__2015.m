disp('***********************************************')
disp('*****************fac_5_1***********************')
disp('***********************************************')
clear all
format long e
f = @(x) exp(-x.^2);
x = input('digitare x:=');
n = input('digitare il numero dei termini dello sviluppo n:=');
% Maclaurin
sp = 0;
sn = 0;
p=1;
for k = 0:n
    if p==0     %sommo i termini dello sviluppo con coeff negativo
       sn = sn+x^(2*k+1)/(factorial(k)*(2*k+1));
       p=1;
    elseif p==1 %sommo i termini dello sviluppo con coeff positivo
       sp = sp+x^(2*k+1)/(factorial(k)*(2*k+1));
       p=0;
    end
end
sviluppo = 2/sqrt(pi)*(sp-sn)

m = input('digitare il numero dei sottointervalli per la formula dei trapezi m:=');
z = linspace(0,x,m+1);
y = f(z);
trapezi = 2/sqrt(pi)*(x-0)/(2*m)*(y(1)+2*sum(y(2:m))+y(m+1))

built_in_function_matlab=erf(x) 
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('***********************************************')
disp('*****************fac_5_2***********************')
disp('***********************************************')
clear all
format long e
massa = 10;
v_0 = 10;
v_t = 5;
f = @(v) massa./(-v.*sqrt(v));
m = input('digitare il numero di sottointervalli m:='); 
zt = linspace(v_t,v_0,m+1);
yt = f(zt);
trapezi = (v_t-v_0)/(2*m)*(yt(1)+2*sum(yt(2:m))+yt(m+1))

zs = linspace(v_t,v_0,2*m+1);
ys = f(zs);
simpson = (v_t-v_0)/(6*m)*(ys(1)+4*sum(ys(2:2:2*m))+2*sum(ys(3:2:2*m-1))+ys(2*m+1))

valore_esatto = 20/sqrt(5)-20/sqrt(10);
errore_assoluto_trapezi = abs(trapezi-valore_esatto)
errore_assoluto_simpson = abs(simpson-valore_esatto)