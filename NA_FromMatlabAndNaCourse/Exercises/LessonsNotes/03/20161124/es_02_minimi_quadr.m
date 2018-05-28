% Approssimare i dati dell'esempio sull'Ossido di Azoto nel senso dei
% minimi quadrati con le seguenti funzioni modello:
%     f_m(x)=c_0+c_1x  retta
%     f_m(x)=c_0+c_1x+c_2x^2  parabola
%     f_m(x)=c_0+c_1x+c_2sin(2pix/20)+c_3cos(2pix/20)
% rappresentando il grafico sovrapposto ai dati
clear all
close all
clc

x=1:20;  % nodi interpolazione
y=[243 209 181 179 180 166 163 157 187 192 138 95 56 32 21 12 11 61 ...
   146 186];  % vettore dati
%% le prime due richieste sono di tipo polinomiale
for n=1:3
  a=polyfit(x,y,n);  % chiedo una retta, polinomio grado 1
                     % poi una parabola, polinomio di grado 2
                     % poi un polinomio di grado 3
  xx=linspace(1,20,200); % punti in cui valutare l'approssimazione dei dati
  yy1=polyval(a,xx);
  plot(xx,yy1,'b','LineWidth',2), grid on
  hold on
  plot(x,y,'rd','Markersize',6)  % plot dati
  hold off
  pause
end

%% la terza funzione la fo a mano perche' polinomiale e trigonometrica:
%  -> costruisco a mano la soluzione impostando il sistema delle equazioni 
%     normali A'*Ac=A'y:

% nella prima colonna devo metterci la funzione base, che e' uno
% nella seconda colonna devo metterci la funzione x valutata nei nodi x_i
% che e' la seconda funzionebase. Esso e' semplicemnte il vettore dei nodi
% la terza colonna sara' il sin(2pix/20)
% infine la quarta sara' l'incognita che moltiplica c_2: cos(2pix/20)
%   NB: noi x e y li abbiamo creati come vettori riga, servono come colonna
A=[ones(length(y),1), x', sin(2*pi/20*x'), cos(2*pi/20*x')];
        % ora posso gia' scrivere la formula che risolve il sistema lineare
c=(A'*A)\(A'*y');  % cio'da'il vettore dei coefficienti,li posso usare per
                   % rappresentare graficamente l'approssimazione con il
                   % metodo dei minquad
% OSS: c=A\y';  -> dava lo stesso risultato per trovare c                   
hold on
% ora che ho i coefficienti posso completare la valutazione nel senso dei 
% minimi quadrati:
yymq=c(1)+c(2)*xx+c(3)*sin(2*pi/20*xx)+c(4)*cos(2*pi/20*xx);  % per il plot
                                                              % non occorre 
                                                              % trasporre 
                                                              % xx                                                              
plot(xx,yymq, 'k-.')
