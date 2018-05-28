function x = pi_greco(N)
%Esercitazione 2 - esercizio 4
%Successione 2^(n-1/2)*sqrt(1-sqrt(1-4^(1-n)*x(n-1)^2)) che converge a pi
%   richiede in input il numero di successioni che si vigliono generare
%   esempio: v=pi_greco(4) genera i primi quattro termini/somme parziali
%   della successione
x=zeros(1,N);  % inizializzazione vettore per ridurre complessita' for
x(1)=2;  % prima somma parziale = 2 (presa dal lucido)
lim_succ=pi;  % voglio calcolare l'errore -> questo e' il valore a cui
              % converge la successione
err=zeros(1,N);  % inizializzazione vettore per ridurre complessita' for
err(1) = abs(x(1)-lim_succ)/abs(lim_succ);
for n=2:N
    % funzione presa dal testo
    y=4^(1-n)*x(n-1)^2;
    x(n)=2^(n-1/2)*sqrt(1-sqrt(1-y));
    err(n)=abs(x(n)-lim_succ)/abs(lim_succ);
end
disp([x' err'])
semilogy([1:N],err,'LineWidth',3)
end

