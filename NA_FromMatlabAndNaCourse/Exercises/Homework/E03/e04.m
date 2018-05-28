% Esercitazione 3 - es.4
clear
close all
clc

% a)
n=10;
A=zeros(n,n);

for i=1:n
  for j=1:n
    A(i,j)=1/max(i,j);
  end
end
A

% b)
z=ones(n,1);

% c)
b=A*z;

% d)
x=b\A;

% e)
norm(z-x)

% f)
    % r = a + (b-a).*rand(N,1) -> genera un vettore nx1 con valori compresi
    % in (a,b)
bb = -10e-4 + (10e-4+10e-4).*rand(n,1);

% g)
xx = bb\A;

% h) 
err_x=norm(x-xx)/norm(x);
err_b=norm(b-bb)/norm(b);
c=1/rcond(A);
disp([err_x err_b c])

%% 
% RIPETERE LO STUDIO PER A DI ORDINE 10 I CUI ELEMENTI SONO a_(i,j)=1/(i+j)

% a)
n=10;
A=zeros(n,n);

for i=1:n
  for j=1:n
    A(i,j)=1/(i+j);
  end
end
A

% b)
z=ones(n,1);

% c)
b=A*z;

% d)
x=b\A;

% e)
norm(z-x)

% f)
    % r = a + (b-a).*rand(N,1) -> genera un vettore nx1 con valori compresi
    % in (a,b)
bb = -10e-4 + (10e-4+10e-4).*rand(n,1);

% g)
xx = bb\A;

% h) 
err_x=norm(x-xx)/norm(x);
err_b=norm(b-bb)/norm(b);
c=1/rcond(A);
disp([err_x err_b c])