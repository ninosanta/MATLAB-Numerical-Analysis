% Esercitazione 2 - es.3
% valutazione di espressioni numeriche

clear all
close all
clc

format short e

% devo valutare tutte le espressioni in x = 10^(−n) per n = 1, 2, ..., 16
x=10.^(-[1:16]);  % trasformo ogni entrate del vettore in 10 elevato -il 
                  % numero all'interno

%% 1) 
f1=(1-cos(x))./x.^2;  % cancellazione numerica per x~0
f1_equiv=(sin(x).^2)./(x.^2.*(1+cos(x)));  % forma equivalente ma senza 
                                           % cancellazione numerica
                                           % ottenuta moltiplicando e
                                           % dividendo f1 per (1+cos(x))

disp('x:            f1:           f1_equiv:');
disp([x' f1' f1_equiv'])

err_rel=abs(f1-f1_equiv)./abs(f1_equiv);
err_rel'
loglog(x,err_rel, 'r', 'LineWidth',2), grid on
ylabel('errore relativo')
title('Leggi da dx verso dx: per valori decrescenti di x l err cresce')
% noi partiamo da x=10^-1 fino x=10^-16
  
%% 2)
f2=(1-exp(x))./x;  
f2_equiv=-(1+1/2*x+1/6*x.^2+1/24*x.^3);

disp('x:            f2:           f2_equiv:');
disp([x' f2' f2_equiv'])
 
err_rel=abs(f2-f2_equiv)./abs(f2_equiv);
err_rel'
loglog(x,err_rel, 'r', 'LineWidth',2), grid on
title('errore relativo')

%% 3)
f3=1-sqrt(1-x.^2);
f3_equiv=(x.^2)./(1+sqrt(1-x.^2));  % razionalizzo.
                                    % no problem perché ho tolto la
                                    % cancellazione per x~0, qua ce
                                    % l'avrei per x~1
disp('x:            f3:           f3_equiv:');
disp([x' f3' f3_equiv'])  % nonostante il limite in aritmetica esatta venga 
                          % zero io qui lo sto facendo per x~0 e non x=0; 
                          % Quindi f3 nonostante dopo un tot diventi 0 non 
                          % è corretto per questo x scelto ma è più esatta 
                          % la forma equivalente
err_rel=abs(f3-f3_equiv)./abs(f3_equiv);
err_rel'
loglog(x,err_rel, 'r', 'LineWidth',2), grid on
title('errore relativo')

%% 4) fatto da solo... boh
f4=((x+1).^2-1)./x;
f4_equiv=((x+1).^4+1)./(x.*((x+1).^2+1));

disp('x:            f4:           f4_equiv:');
disp([x' f4' f4_equiv'])

err_rel=abs(f4-f4_equiv)./abs(f4_equiv);
disp(err_rel')
loglog(x, err_rel, 'r', 'linewidth', 2), grid on
title('errore relativo f4')

%% 5) fatto dalla prof
f5=1-(1-x.^2);
f5_equiv=x.^2;
[x' f5' f5_equiv']  % come prima. Qui si nota meglio che non vale la
                    % proprietà associativa