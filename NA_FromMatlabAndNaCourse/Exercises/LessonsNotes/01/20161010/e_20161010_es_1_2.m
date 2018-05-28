% esercitzione 1 es.2

A = [1 2 3 4; 5 6 7 8; 9 10 11 12]  % definisco la matrice A

% a)
size(A)  % darà due numeri: quello delle righe e quello delle colonne

% b)
B = A.*A  % ha moltiplicato ogni elemento di A per se stesso. E' una 
          % operazione di molt. puntuale -> effettuata elemento per
          % elemento

% c)
B = A*A  % viola la regola di prodotto matriciale

% d)
B = A'*A  % B = matrice data dal prodotto matriciale A'*A. E avrà 
          % numero righe pari a quello di A' numero di colonne pari a 
          % quello di A

% e) 
B = A*A'  % vedi su

% f)
A(1:2, 4)  % 1:2 = vettore [1 2] degli indici riga -> chiedo di estrarre 
           % gli elementi delle righe 1,2 in posizione colonna 4
A(:,3)  % : -> tutte le righe; 3 -> terza colonna
        % -> "estraggo" la terza colonna della matrica
        % equivale, in questo caso, a-. A(1:3,3)
A(1:2,:)  % "estraggo" prima e seconda riga della matrice A
          % equivale, in questo caso, a: A(1:2,1:4)

% g)
A(3,2) = A(1,1)  % copio in posizione (3,2) l'elemento in pos. (1,1) 

% finire i punti h) e i)