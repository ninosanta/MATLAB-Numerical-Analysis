% Esercitazione 5 - es.03
%   metodo QR

clear 
close all
clc

n=10;  % ordine
A = diag(4*ones(n,1))+diag(ones(n-1,1),1)+diag(ones(n-1,1),-1);
disp('potenza inversa con Shift->matrice di interesse del tipo A-sigma*I')
sigma=3;
%% (a) 
%     Partendo da un vettore z di ordine 10 pseudo-casuale, applicare ad A 
%     il metodo della potenza inversa CON SHIFT per calcolare l'autovalore 
%     piu' vicino al numero sigma = 3
disp('(a):')
z=randn(n,1);
lambda_old=2;
lambda_new=1;
iter=0;

% potenza inversa con shift
while abs((lambda_old-lambda_new)/lambda_new)>=1.e-08  % mi interessano le
                                                       % prime 8 cifre
  x=z/norm(z);
  z=(A-sigma*eye(n))\x;
  lambda_old=lambda_new;
  lambda_new=sigma+1/(x'*z);  % shifto di +sigma per ricentrare ? SI'
                              % perche' altrimenti trovo l'autovalore di
                              % (A-sigma*eye(n)) usando la potenza inversa
                              % senza shift in questo passaggio e quindi 
                              % solo 1/(x'*z)
  iter=iter+1;
end
disp('numero iterazioni:')
iter
lambda=lambda_new
[V D]=eigs(A, 1, sigma);
D
format long e

%% (b) 
%     Ripetere l’esperimento numerico con diversi vettori iniziali 
%     pseudo-casuali, e stimare quante iterazioni in media sono necessarie 
%     per stabilizzare le prime 8 cifre decimali dell’approssimazione
disp('(b):')
for k=1:1000
  z=randn(n,1);
  lambda_old=2;
  lambda_new=1;
  iter(k)=0;
  while abs((lambda_old-lambda_new)/lambda_new)>=1.e-08 % mi interessano le
                                                        % prime 8 cifre
    x=z/norm(z);
    z=(A-sigma*eye(n))\x;
    lambda_old=lambda_new;
    lambda_new=sigma+1/(x'*z);
    iter(k)=iter(k)+1;
  end 
end
disp('numero iterazioni medio:')
sum(iter)/k
format short


%% (c) 
%     Ripetere l’esperimento numerico partendo dal vettore iniziale z i cui 
%     elementi sono z_i =(−1)^i. Quante iterazioni sono ora necessarie per 
%     stabilizzare le prime 8 cifre decimali dell’approssimazione?
disp('(c):')
z=-1*ones(n,1);
z(2:2:n)=1;
lambda_old=2;
lambda_new=1;
iter=0;
while abs((lambda_old-lambda_new)/lambda_new)>=1.e-08  % mi interessano le
                                                       % prime 8 cifre
  x=z/norm(z);
  z=(A-sigma*eye(n))\x;
  lambda_old=lambda_new;
  lambda_new=sigma+1/(x'*z);
  iter=iter+1;
end
disp('numero iterazioni:')
iter
lambda=lambda_new
[V D]=eigs(A, 1, sigma);
D
format long e

% apparentemente l’algoritmo sembra convergere dopo 12 iterazioni verso 
% lambda3= 2.6902785..., ma se si eseguono circa 80 iterazioni si converge
% verso lambda4=3.1691699...risultato corretto

lambda_old=2;
lambda_new=1;
iter=0;
while abs((lambda_old-D)/D)>=1.e-09  % mi interessano le prime 8 cifre
                                     % ma essendo D troppo vicino a lambda
                                     % metto 9 per avere le prime 8
  x=z/norm(z);
  z=(A-sigma*eye(n))\x;
  lambda_old=lambda_new;
  lambda_new=sigma+1/(x'*z);
  iter=iter+1;
end
disp('convergenza al valore "esatto" all''iterazione:')
iter
lambda=lambda_new
D

% Il motivo e' che il vettore z e' ortogonale all’autovettore w4 relativo 
% all’autovalore lambda4, e dunque in aritmetica esatta il metodo iterativo 
% convergerebbe verso l'autovalore piu' vicino a 3, ma diverso da lambda4, 
% e dunque lambda3 . Ma gli errori di arrotondamento introducono a poco a 
% poco in z una componente secondo l'autovettore w4 , che si amplifica e 
% porta alla convergenza verso lambda4 .

