% Esercitazione 3 - es.3
clear
close all
clc

% %a) modo sbagliato
% n=100;
% v=zeros(n,1);
% 
% 
% for k=1:n
%   if mod(k,2)==0  % se k è pari
%     v(k)=k/2;
%   else
%     v(k)=k+1;
%   end
% end
% v

%a) modo migliore
v(1:2:100)=(1:2:100)+1;
v(2:2:100)=1:50;
v=v';

%b)
norm(v)

%c)
u=v./norm(v);  % vettore n,1: versore=vettore normalizzato

%d)
G=u.*u';  % matrice 100x100: proiezione ortogonale sulla "retta" u

%e)
G1=G*G;  % proiezione della proiezione: deve coincidere con la proiezione 

% verifica
norm(G1-G)  % ~eps -> vero


