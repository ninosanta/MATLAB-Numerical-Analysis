% esercitazione 1 es.3
% versione pogo elegante che utilizza un ciclo for (in modo elegante)

n = 10;  % dimensione matrice
B = zeros(n,n);  % equivalente a B = zeros(10)
for i = 1:10
    B(i,i) = 5;  % metto 5 sulla diagonale principale di B
    if i<n 
        B(i,i+1) = 3;  % mette dei tre sulla diagonale principale
        B(i+1,i) = -1;  % più elegante della soluzione di sotto con if.
                        % mette dei -1 sotto la diagonale principale
    end
%    if i>1
%        B(i,i-1) = -1;
%    end
end
disp(B)

% manca l'estrazione, vedi la seconda verisone