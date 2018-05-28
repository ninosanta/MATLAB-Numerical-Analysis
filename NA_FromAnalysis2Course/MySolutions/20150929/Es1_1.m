% Esercizio 1
% Definire il vettore x=[1:-0.1:0] e comprendere il significato dei seguenti comandi MATLAB:
% a) x([1 4 3]);
% b) x([1:2:7 10])=zeros(1,5);
% c) x([1 2 5])=[0.5*ones(1,2) -0.3];
% d) y=x(end:-1:1).

x=[1:-0.1:0]; % vettore riga con entrate da 1 a 0 di passo -0.1
disp(x)

% a)
x([1 4 3])% mostra le entrate 1 4 3 del vettore x
% b)
x([1:2:7 10])=zeros(1,5) % sostituire le 5 entrate: 1 3 5 7 10 con degli 
                         % gli zeri del vettore riga zeros 1x5
% c)
x([1 2 5])=[0.5*ones(1,2) -0.3] % il vettore x nelle entrate 1 2 5 viene
                                % posto =0.5*1; nell'entrata 4 =-0.3
%d)
y=x(end:-1:2) % y=vettore formato dai numeri di x a partire dall'ultimo(end) 
              % risalendo -1 alla volta fino alla posizione 2 