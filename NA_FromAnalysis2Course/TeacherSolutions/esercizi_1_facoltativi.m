disp('***********************************************')
disp('*****************fac_1_1***********************')
disp('***********************************************')
clear all
close all
clc
format short e
m = 100;
x = zeros(m,1);
z = zeros(m,1);
y = zeros(m,1);
u = zeros(m,1);
%algoritmo 1 (instabile, a causa della cancellazione numerica)
x(1) = 1;
x(2) = 2;
for i = 2:m-1
    x(i+1) = 2^(i-1/2)*sqrt(1-sqrt(1-4^(1-i)*x(i)^2));
end
errore_relativo_x = abs(pi-x)/abs(pi);

%algoritmo 2 (ottenuto dal precedente mediante razionalizzazione, stabile)
z(1) = 1;
z(2) = 2;
for i = 2:m-1
    z(i+1) = 2^(i-1/2)*sqrt(4^(1-i)*z(i)^2)/sqrt(1+sqrt(1-4^(1-i)*z(i)^2));
end
errore_relativo_z = abs(pi-z)/abs(pi);

%algoritmo 3 (stabile, ma con convergenza più lenta rispetto al precedente)
y(1) = 1;
y(2) = 1+1/4;
u(1) = 1;
u(2) = 1+1/4;
for i = 2:m-1
    y(i+1) = y(i)+1/(i+1)^2;
    u(i+1) = sqrt(6*y(i+1));
end
errore_relativo_u = abs(pi-u)/abs(pi);

semilogy(1:m,errore_relativo_x,1:m,errore_relativo_z,1:m,errore_relativo_u,'linewidth',2)
legend('alg. 1','alg. 2','alg. 3')

pause

disp('***********************************************')
disp('*****************fac_1_2***********************')
disp('***********************************************')

clear all
close all
clc
m = 15;
h = 10.^(-[1:m]);
app = (exp(1+h)-exp(1))./h;
errore_assoluto = abs(exp(1)-app);
%semilogy(1:m,errore_assoluto)
loglog(h,errore_assoluto)

pause

disp('***********************************************')
disp('*****************fac_1_3***********************')
disp('***********************************************')

clear all
close all
clc
format long e
m = 100;
q = 1/3;

exact = (1-q^(m+1))/(1-q);
nc = 4;

s1=zeros(1,m+1);

s1(1) = 1;
i=1;
for esp = 1:m
    s1(i+1) = chop(s1(i)+chop(q^esp,nc),nc);
    i=i+1;
end

s2=zeros(1,m+1);
s2(1) = q^m;
i=1;
for esp = m-1:-1:0
    s2(i+1) = chop(s2(i)+chop(q^esp,nc),nc);
    i=i+1;
end

[s1' s2']
errore_assoluto_1 = abs(exact-s1(m+1))
errore_assoluto_2 = abs(exact-s2(m+1))

% Il secondo algoritmo fornisce un risultato più preciso del primo,
% perchè gli elementi sono in ordine decrescente e sommando al contrario,
% cioè dal più piccolo al più grande, anche i valori più piccoli danno 
% contributo alla somma. 

pause

disp('***********************************************')
disp('*****************fac_1_4***********************')
disp('***********************************************')

clear all
close all
clc

t = linspace(0,2*pi);
moto_x = 2*cos(t);
moto_y = -4*sin(t);
plot(moto_x,moto_y,'k','linewidth',3)
axis('equal')
hold on
p = linspace(0,2*pi,20);
punto_x = 2*cos(p);
punto_y = -4*sin(p);
vel_moto_x = -2*sin(p);
vel_moto_y = -4*cos(p);
acc_moto_x = -2*cos(p);
acc_moto_y = 4*sin(p);

% l'istruzione quiver(x,y,u,v) crea il grafico dei vettori di componenti
% (u(i),v(i)) a partire dal punto di componenti (x(i),y(i)). La function 
% quiver scala in modo automatico le frecce dei vettori in modo da occupare
% la finestra del grafico. Si può specificare il fattore scalare s mediante
% l'istruzione quiver(x,y,u,v,s) (di default s = 0.2); se s=0 non viene 
% effettuata nessuna scalatura.
s=1;
quiver(punto_x,punto_y,vel_moto_x,vel_moto_y,s,'r','linewidth',2)
quiver(punto_x,punto_y,acc_moto_x,acc_moto_y,s,'b','linewidth',2)


