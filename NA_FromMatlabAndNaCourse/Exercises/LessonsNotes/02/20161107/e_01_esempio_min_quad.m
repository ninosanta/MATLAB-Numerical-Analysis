% esempio min quad:
% prendiamo una parabola e aggiungiamo ad essa delle perturbazioni random
% quindi non sara' piu' una parabola con andamento paraboloide
% famo finta di non sapere come fosse la  parabola dall'inizio e la 
% ricostruiamo nel senso dei minimi quadrati

clear 
close all 
clc


%% risoluzione con il comando \
% generazione e grafico della parabola "benchmark"
f=inline('3*x.^2-6*x+5');  % funzione della parabola
x=3.e-2*(0:100);           % 100 punti nell'intervallo [0,3] passo 0.03
y=f(x);                    % calcolo della funzione nell'ntervallo
plot(x,y,'b'); hold on
pause

% creazione di valori lievemente perturbati
sigma=2.e-0;      % serve per perturbare
xr=3*rand(30,1);  % vettore col di 30 elementi con distribuzione in 3*(0,1)
                  % rappresenta il vettore dei punti dell'intervallo x in
                  % cui andrò ad effettuare le misure
yr=f(xr);
yr=yr+sigma*(rand(30,1)-0.5);
plot(xr, yr, 'r+ '); hold on  % rappresento le perturbazioni
pause

% sistema dei minimi quadrati come:
A=[xr.^2, xr, ones(30,1)];  % matrice che contiene nella prima colonna i 
                            % quadrati delle ascisse perturbate al quadrato
                            % et cetera... che sarebbero tipo le incognite
                            % della parabola c1*x^2+c2*x+c3
                            % nella terza colonna ho degli 1 perche' c3 e'
                            % moltiplicato per 1
b=yr;  % ordinate perturbate, tipo

% risoluzione
coeff=A\b  % trovo i coefficienti
yc=coeff(1)*x.^2+coeff(2)*x+coeff(3);  % ricostruisco la parabola
plot(x,yc,'m', 'LineWidth', 2)  % plotto la parabola trovata 
                                % nell'intervallo iniziale
pause

%% risoluzione delle equazioni normali
% A va sempre impostata prima!
coeff_norm=(A'*A)\(A'*b)
pause

%% risoluzione con il metodo QR
% A va sempre impostata prima!
[Q R]=qr(A,0);  % fattorizzazione QR economica: Q di n colonne ed R di n 
                % righe, che tanto solo quelle usiamo va
coeff_qr=R\(Q'*b)