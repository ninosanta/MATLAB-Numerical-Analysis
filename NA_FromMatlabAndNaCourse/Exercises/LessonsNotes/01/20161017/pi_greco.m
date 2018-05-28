function x = pi_greco(N)
close all
%Esercitazione 2 - esercizio 4
%Successione 2^(n-1/2)*sqrt(1-sqrt(1-4^(1-n)*x(n-1)^2)) che converge a pi
%razionalizzata e non.
%   richiede in input il numero di successioni che si vigliono generare
%   esempio: v=pi_greco(4) genera i primi quattro termini/somme parziali
%   della successione
x=zeros(1,N);  % inizializzazione vettore per ridurre complessità for
               % è il vettore riga per l'output
x2=zeros(1,N);

x(1)=2;  % prima somma parziale = 2 (presa dal lucido)
x2(1)=2;

lim_succ=pi;  % voglio calcolare l'errore -> questo è il valore a cui
              % converge la successione
err=zeros(1,N);  % inizializzazione vettore per ridurre complessità for
err2=zeros(1,N);
err(1) = abs(x(1)-lim_succ)/abs(lim_succ);
err2(1) = abs(x2(1)-lim_succ)/abs(lim_succ);
for n=2:N
    % funzione presa dal testo
    y=4^(1-n)*x(n-1)^2;  % per semplicità di lettura
    y2=4^(1-n)*x2(n-1)^2; 
    x(n)=2^(n-1/2)*sqrt(1-sqrt(1-y));
    % funzione razionalizzata
    x2(n)=sqrt((4^(n-1/2)*y2)/(1+sqrt(1-y2)));
    err(n)=abs(x(n)-lim_succ)/abs(lim_succ);
    err2(n)=abs(x2(n)-lim_succ)/abs(lim_succ);
end
disp('              x:            err:        x2:          err2:');
disp([[1:N]' x' err' x2' err2'])

% Grafici errore
%semilogy([1:N],err, 'r', 'LineWidth',2), grid on
%hold on
%semilogy([1:N],err2, 'c', 'LineWidth',2), grid on
% oppure
semilogy([1:N],err,'b',[1:N],err2, 'g','LineWidth',2), grid on
legend('err', 'err2')

end
