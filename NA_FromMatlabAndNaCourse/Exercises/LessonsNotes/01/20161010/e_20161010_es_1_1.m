% Esercitazione 1 es. 1

x = [1:-0.1:0]  % spaziatura negativa

% a)
x([1 4 3])  % salvo le componenti in posizione 1 4 3 e li salvo in ans
            % nell'ordine che voglio

% b)
% x(end) = variabile -> accede all'ultima componente del vettore e la
%                       modifica
% length(x) restituisce la dimensione del vettore
% x(length(x)) = varibile -> modifica l'ultimo elemento del vettore x
% size è proprio per le matrici ma size(x) va bien anche al posto di length
x([1:2:7 10]) = zeros(1,5)  % [1:2:7 10] -> vettore = 1,3,5,7 && 10
                            % x([1:2:7 10]) -> accedo alle componenti
                            % 1,3,5,7 && 10 del vettore x tramite un
                            % vettore di indici. Pongo i valori del vettore
                            % x nelle posizione degli indici uguali a zero.
                            % Grazie al vettore 1x5 di zeri dato da zeros
                            
% c) 
x([1 2 5]) = [0.5*ones(1,2) -0.3]  % estraggo gli elementi 1,2,5 da x e
                                   % assegno loro il valore a destra
                                   % dell'uguaglianza -> in posizione 1,2
                                   % metto 0.5 e in posizione 5 -0.3
                                   
% d)
y = x(end:-1:1)  % y = vettore con prima enetrata pari all'ultima
                 % componente di x e ultima che è la prima comp. di x
                 % -> sovrascrivo su y i valori di x in ordine invertito