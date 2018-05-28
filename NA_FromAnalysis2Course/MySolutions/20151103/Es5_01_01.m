% Esercitazione 5 - Es. 1

clear all
close all 
clc

f=@(x) 1./(1+x.^2);
a=-5;
b=5;
sol=2*atan(5);

% Inizializzazione per evitare di trasporre gli output:
%   m=zeros(10,1);
%   t=zeros(10,1); % da Traapezi
%   err=zeros(10,1); %errore con Trapezi
%   t2=zeros(10,1); % da Simpson
%   err2=zeros(10,1); % errore con Simpson
for n=1:10
   m(n)=2^n; % salvataggio dei valori in vettore per stampa finale
   t(n)=trapezi(f,a,b,m(n));
   err(n)=abs(t(n)-sol)/abs(sol);
   t2(n)=simpson(f,a,b,m(n));
   err2(n)=abs(t2(n)-sol)/abs(sol);
end

format long e
disp('Trapezi:')
disp([m' t' err'])
disp('Simpson:')
disp([m' t2' err2'])
figure % evitabile poiché devo stampare una sola figura
       % evita di sovrascrivere 
loglog(m, err, 'ro', m, err2, 'b*')
legend('Trapezi', 'Simpson')